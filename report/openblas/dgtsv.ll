Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgtsv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dgtsv_:bb.a
  %i.kf = mul nsw i64 %indvars.iv.next534.1, %i.if ; 2 uses
  %gep585.2 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %i.kf
  %i.kg = load double, ptr %gep585.2, align 8, !tbaa !50
  %gep587.2 = getelementptr [8 x i8], ptr %invariant.gep586, i64 %i.kf ; 2 uses
  %i.kh = load double, ptr %gep587.2, align 8, !tbaa !50
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.id, double %i.kg, double %i.kh)
  store double %i.ki, ptr %gep587.2, align 8, !tbaa !50
  %indvars.iv.next534.2 = add nuw nsw i64 %indvars.iv533, 3
  %i.kj = mul nsw i64 %indvars.iv.next534.2, %i.if ; 2 uses
  %gep585.3 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %i.kj
  %i.kk = load double, ptr %gep585.3, align 8, !tbaa !50
  %gep587.3 = getelementptr [8 x i8], ptr %invariant.gep586, i64 %i.kj ; 2 uses
  %i.kl = load double, ptr %gep587.3, align 8, !tbaa !50
  %i.km = tail call double @llvm.fmuladd.f64(double %i.id, double %i.kk, double %i.kl)
  store double %i.km, ptr %gep587.3, align 8, !tbaa !50
  %indvars.iv.next534.3 = add nuw nsw i64 %indvars.iv533, 4 ; 2 uses
  %exitcond537.not.3 = icmp eq i64 %indvars.iv.next534.3, %wide.trip.count536
  br i1 %exitcond537.not.3, label %.loopexit479, label %.lr.ph499, !llvm.loop !22

bb.ab:                                            ; preds = %bb.z
  store i32 %i.hn, ptr %7, align 4, !tbaa !48
  br label %.loopexit

bb.ac:                                            ; preds = %bb.y
  store double %i.ht, ptr %i.hp, align 8, !tbaa !50
  %i.kn = zext nneg i32 %i.h to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kn ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !50 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ho ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !50
  %i.ks = fneg double %i.hq
  %i.kt = fdiv double %i.ks, %i.ht                ; 7 uses
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.kp, double %i.kr)
  store double %i.ku, ptr %i.ko, align 8, !tbaa !50
  store double %i.kp, ptr %i.kq, align 8, !tbaa !50
  %.not471500 = icmp eq i32 %i.j, 0
  br i1 %.not471500, label %.loopexit479, label %.lr.ph503.preheader

.lr.ph503.preheader:                              ; preds = %bb.ac
  %i.kv = sext i32 %i.e to i64                    ; 5 uses
  %i.kw = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.kx = zext nneg i32 %i.h to i64               ; 2 uses
  %i.ky = add nuw i32 %i.j, 1
  %wide.trip.count541 = zext i32 %i.ky to i64     ; 3 uses
  %invariant.gep588 = getelementptr [8 x i8], ptr %i.g, i64 %i.kw ; 6 uses
  %invariant.gep590 = getelementptr [8 x i8], ptr %i.g, i64 %i.kx ; 6 uses
  %i.kz = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check646 = icmp ugt i32 %i.j, 19
  %ident.check637.not = icmp eq i32 %i.e, 1
  %or.cond807 = select i1 %min.iters.check646, i1 %ident.check637.not, i1 false
  br i1 %or.cond807, label %vector.memcheck638, label %.lr.ph503.preheader810

vector.memcheck638:                               ; preds = %.lr.ph503.preheader
  %i.la = shl nuw nsw i64 %i.kw, 3                ; 2 uses
  %i.lb = getelementptr i8, ptr %5, i64 %i.la
  %scevgep639 = getelementptr i8, ptr %i.lb, i64 -8
  %i.lc = shl nuw nsw i64 %wide.trip.count541, 3  ; 2 uses
  %i.ld = getelementptr i8, ptr %5, i64 %i.la
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.lc
  %scevgep640 = getelementptr i8, ptr %i.le, i64 -16
  %i.lf = shl nuw nsw i64 %i.kx, 3                ; 2 uses
  %i.lg = getelementptr i8, ptr %5, i64 %i.lf
  %scevgep641 = getelementptr i8, ptr %i.lg, i64 -8
  %i.lh = getelementptr i8, ptr %5, i64 %i.lf
  %i.li = getelementptr i8, ptr %i.lh, i64 %i.lc
  %scevgep642 = getelementptr i8, ptr %i.li, i64 -16
  %bound0643 = icmp ult ptr %scevgep639, %scevgep642
  %bound1644 = icmp ult ptr %scevgep641, %scevgep640
  %found.conflict645 = and i1 %bound0643, %bound1644
  br i1 %found.conflict645, label %.lr.ph503.preheader810, label %vector.ph647

vector.ph647:                                     ; preds = %vector.memcheck638
  %n.vec648 = and i64 %i.kz, 2147483640           ; 3 uses
  %i.lj = or disjoint i64 %n.vec648, 1
  %broadcast.splatinsert649 = insertelement <4 x double> poison, double %i.kt, i64 0
  %broadcast.splat650 = shufflevector <4 x double> %broadcast.splatinsert649, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body651

vector.body651:                                   ; preds = %vector.body651, %vector.ph647
  %index652 = phi i64 [ 0, %vector.ph647 ], [ %index.next657, %vector.body651 ] ; 2 uses
  %i.lk = or disjoint i64 %index652, 1            ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.lk ; 3 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 32     ; 2 uses
  %wide.load653 = load <4 x double>, ptr %i.ll, align 8, !tbaa !50, !alias.scope !58, !noalias !59
  %wide.load654 = load <4 x double>, ptr %i.lm, align 8, !tbaa !50, !alias.scope !58, !noalias !59
  %i.ln = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.lk ; 3 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 32     ; 2 uses
  %wide.load655 = load <4 x double>, ptr %i.ln, align 8, !tbaa !50, !alias.scope !59 ; 2 uses
  %wide.load656 = load <4 x double>, ptr %i.lo, align 8, !tbaa !50, !alias.scope !59 ; 2 uses
  store <4 x double> %wide.load655, ptr %i.ll, align 8, !tbaa !50, !alias.scope !58, !noalias !59
  store <4 x double> %wide.load656, ptr %i.lm, align 8, !tbaa !50, !alias.scope !58, !noalias !59
  %i.lp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat650, <4 x double> %wide.load655, <4 x double> %wide.load653)
  %i.lq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat650, <4 x double> %wide.load656, <4 x double> %wide.load654)
  store <4 x double> %i.lp, ptr %i.ln, align 8, !tbaa !50, !alias.scope !59
  store <4 x double> %i.lq, ptr %i.lo, align 8, !tbaa !50, !alias.scope !59
  %index.next657 = add nuw i64 %index652, 8       ; 2 uses
  %i.lr = icmp eq i64 %index.next657, %n.vec648
  br i1 %i.lr, label %middle.block658, label %vector.body651, !llvm.loop !26

middle.block658:                                  ; preds = %vector.body651
  %cmp.n659 = icmp eq i64 %n.vec648, %i.kz
  br i1 %cmp.n659, label %.loopexit479, label %.lr.ph503.preheader810

.lr.ph503.preheader810:                           ; preds = %vector.memcheck638, %.lr.ph503.preheader, %middle.block658
  %indvars.iv538.ph = phi i64 [ 1, %vector.memcheck638 ], [ 1, %.lr.ph503.preheader ], [ %i.lj, %middle.block658 ] ; 4 uses
  %i.ls = sub nsw i64 %wide.trip.count541, %indvars.iv538.ph
  %i.lt = zext nneg i32 %i.j to i64
  %i.lu = sub nsw i64 %i.lt, %indvars.iv538.ph
  %xtraiter836 = and i64 %i.ls, 3                 ; 2 uses
  %lcmp.mod837.not = icmp eq i64 %xtraiter836, 0
  br i1 %lcmp.mod837.not, label %.lr.ph503.prol.loopexit, label %.lr.ph503.prol

.lr.ph503.prol:                                   ; preds = %.lr.ph503.preheader810, %.lr.ph503.prol
  %indvars.iv538.prol = phi i64 [ %indvars.iv.next539.prol, %.lr.ph503.prol ], [ %indvars.iv538.ph, %.lr.ph503.preheader810 ] ; 2 uses
  %prol.iter838 = phi i64 [ %prol.iter838.next, %.lr.ph503.prol ], [ 0, %.lr.ph503.preheader810 ]
  %i.lv = mul nsw i64 %indvars.iv538.prol, %i.kv  ; 2 uses
  %gep589.prol = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.lv ; 2 uses
  %i.lw = load double, ptr %gep589.prol, align 8, !tbaa !50
  %gep591.prol = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.lv ; 2 uses
  %i.lx = load double, ptr %gep591.prol, align 8, !tbaa !50 ; 2 uses
  store double %i.lx, ptr %gep589.prol, align 8, !tbaa !50
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.lx, double %i.lw)
  store double %i.ly, ptr %gep591.prol, align 8, !tbaa !50
  %indvars.iv.next539.prol = add nuw nsw i64 %indvars.iv538.prol, 1 ; 2 uses
  %prol.iter838.next = add i64 %prol.iter838, 1   ; 2 uses
  %prol.iter838.cmp.not = icmp eq i64 %prol.iter838.next, %xtraiter836
  br i1 %prol.iter838.cmp.not, label %.lr.ph503.prol.loopexit, label %.lr.ph503.prol, !llvm.loop !27

.lr.ph503.prol.loopexit:                          ; preds = %.lr.ph503.prol, %.lr.ph503.preheader810
  %indvars.iv538.unr = phi i64 [ %indvars.iv538.ph, %.lr.ph503.preheader810 ], [ %indvars.iv.next539.prol, %.lr.ph503.prol ]
  %i.lz = icmp ult i64 %i.lu, 3
  br i1 %i.lz, label %.loopexit479, label %.lr.ph503

.lr.ph503:                                        ; preds = %.lr.ph503.prol.loopexit, %.lr.ph503
  %indvars.iv538 = phi i64 [ %indvars.iv.next539.3, %.lr.ph503 ], [ %indvars.iv538.unr, %.lr.ph503.prol.loopexit ] ; 5 uses
  %i.ma = mul nsw i64 %indvars.iv538, %i.kv       ; 2 uses
  %gep589 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.ma ; 2 uses
  %i.mb = load double, ptr %gep589, align 8, !tbaa !50
  %gep591 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.ma ; 2 uses
  %i.mc = load double, ptr %gep591, align 8, !tbaa !50 ; 2 uses
  store double %i.mc, ptr %gep589, align 8, !tbaa !50
  %i.md = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.mc, double %i.mb)
  store double %i.md, ptr %gep591, align 8, !tbaa !50
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1
  %i.me = mul nsw i64 %indvars.iv.next539, %i.kv  ; 2 uses
  %gep589.1 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.me ; 2 uses
  %i.mf = load double, ptr %gep589.1, align 8, !tbaa !50
  %gep591.1 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.me ; 2 uses
  %i.mg = load double, ptr %gep591.1, align 8, !tbaa !50 ; 2 uses
  store double %i.mg, ptr %gep589.1, align 8, !tbaa !50
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.mg, double %i.mf)
  store double %i.mh, ptr %gep591.1, align 8, !tbaa !50
  %indvars.iv.next539.1 = add nuw nsw i64 %indvars.iv538, 2
  %i.mi = mul nsw i64 %indvars.iv.next539.1, %i.kv ; 2 uses
  %gep589.2 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.mi ; 2 uses
  %i.mj = load double, ptr %gep589.2, align 8, !tbaa !50
  %gep591.2 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.mi ; 2 uses
  %i.mk = load double, ptr %gep591.2, align 8, !tbaa !50 ; 2 uses
  store double %i.mk, ptr %gep589.2, align 8, !tbaa !50
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.mk, double %i.mj)
  store double %i.ml, ptr %gep591.2, align 8, !tbaa !50
  %indvars.iv.next539.2 = add nuw nsw i64 %indvars.iv538, 3
  %i.mm = mul nsw i64 %indvars.iv.next539.2, %i.kv ; 2 uses
  %gep589.3 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.mm ; 2 uses
  %i.mn = load double, ptr %gep589.3, align 8, !tbaa !50
  %gep591.3 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.mm ; 2 uses
  %i.mo = load double, ptr %gep591.3, align 8, !tbaa !50 ; 2 uses
  store double %i.mo, ptr %gep589.3, align 8, !tbaa !50
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.mo, double %i.mn)
  store double %i.mp, ptr %gep591.3, align 8, !tbaa !50
  %indvars.iv.next539.3 = add nuw nsw i64 %indvars.iv538, 4 ; 2 uses
  %exitcond542.not.3 = icmp eq i64 %indvars.iv.next539.3, %wide.trip.count541
  br i1 %exitcond542.not.3, label %.loopexit479, label %.lr.ph503, !llvm.loop !28

.loopexit479:                                     ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499, %.lr.ph503.prol.loopexit, %.lr.ph503, %middle.block, %vec.epilog.middle.block, %middle.block658, %bb.aa, %bb.ac, %._crit_edge495
  %i.mq = zext nneg i32 %i.h to i64
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !50
  %i.mt = fcmp oeq double %i.ms, 0.000000e+00
  br i1 %i.mt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.loopexit479
  store i32 %i.h, ptr %7, align 4, !tbaa !48
  br label %.loopexit

bb.ae:                                            ; preds = %.loopexit479, %bb.q
  %i.mu = icmp slt i32 %i.j, 3
  %i.mv = zext nneg i32 %i.h to i64               ; 3 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mv ; 3 uses
  %i.mx = icmp sgt i32 %i.h, 1                    ; 3 uses
  %i.my = sext i32 %i.e to i64                    ; 11 uses
  br i1 %i.mu, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.ae
  %i.mz = add nsw i32 %i.h, -2                    ; 7 uses
  %i.na = icmp samesign ugt i32 %i.h, 2           ; 2 uses
  %i.nb = add nsw i32 %i.h, -1                    ; 2 uses
  %i.nc = zext nneg i32 %i.nb to i64              ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nc ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.nc ; 2 uses
  %i.nf = sext i32 %i.mz to i64                   ; 17 uses
  %i.ng = zext nneg i32 %i.nb to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %invariant.gep608 = getelementptr [8 x i8], ptr %i.g, i64 %i.mv ; 2 uses
  %invariant.gep610 = getelementptr [8 x i8], ptr %i.g, i64 %i.ng ; 2 uses
  %i.nh = icmp ne i32 %i.mz, 0
  %umin724.neg = sext i1 %i.nh to i64
  %i.ni = add nsw i64 %umin724.neg, %i.nf         ; 4 uses
  %i.nj = sext i32 %i.e to i35                    ; 2 uses
  %i.nk = sext i32 %i.mz to i35
  %i.nl = add nsw i35 %i.nj, %i.nk                ; 2 uses
  %i.nm = shl i35 %i.nl, 3
  %i.nn = add i35 %i.nm, 8                        ; 3 uses
  %i.no = shl nsw i35 %i.nj, 3                    ; 2 uses
  %i.np = shl i35 %i.nl, 3
  %i.nq = add i35 %i.np, 16                       ; 3 uses
  %i.nr = icmp ne i32 %i.mz, 0                    ; 2 uses
  %umin731 = zext i1 %i.nr to i64
  %i.ns = add nsw i64 %umin731, %i.my
  %i.nt = add nsw i64 %i.ns, %i.f
  %i.nu = shl nsw i64 %i.nt, 3
  %scevgep732 = getelementptr i8, ptr %5, i64 %i.nu ; 10 uses
  %i.nv = zext nneg i32 %smax to i64
  %i.nw = mul nsw i64 %i.my, %i.nv
  %i.nx = shl nsw i64 %i.f, 3                     ; 2 uses
  %i.ny = add i64 %i.nw, %i.f
  %i.nz = shl nsw i64 %i.nf, 3                    ; 4 uses
  %i.oa = add i64 %i.ny, %i.nf
  %i.ob = shl i64 %i.oa, 3
  %i.oc = getelementptr i8, ptr %5, i64 %i.ob
  %scevgep733 = getelementptr i8, ptr %i.oc, i64 8 ; 10 uses
  %i.od = select i1 %i.nr, i64 8, i64 0           ; 2 uses
  %i.oe = add nsw i64 %i.od, -8                   ; 3 uses
  %scevgep734 = getelementptr i8, ptr %4, i64 %i.oe ; 2 uses
  %scevgep735 = getelementptr i8, ptr %4, i64 %i.nz ; 2 uses
  %i.of = add nsw i64 %i.od, %i.nx
  %i.og = sub nsw i64 %i.of, %i.nz                ; 2 uses
  %scevgep736 = getelementptr i8, ptr %5, i64 %i.og ; 2 uses
  %i.oh = sext i32 %i.e to i35                    ; 3 uses
  %i.oi = sext i32 %i.mz to i35                   ; 2 uses
  %i.oj = add nsw i35 %i.oh, %i.oi
  %i.ok = shl i35 %i.oj, 3
  %i.ol = add i35 %i.ok, 8                        ; 2 uses
  %i.om = shl nsw i35 %i.oh, 3                    ; 2 uses
  %i.on = add nsw i64 %i.nx, 8                    ; 2 uses
  %scevgep738 = getelementptr i8, ptr %5, i64 %i.on ; 2 uses
  %scevgep740 = getelementptr i8, ptr %2, i64 %i.oe ; 2 uses
  %scevgep741 = getelementptr i8, ptr %2, i64 %i.nz ; 2 uses
  %scevgep742 = getelementptr i8, ptr %5, i64 %i.og ; 2 uses
  %i.oo = add nsw i35 %i.oh, %i.oi
  %i.op = shl i35 %i.oo, 3
  %i.oq = add i35 %i.op, 16                       ; 2 uses
  %scevgep744 = getelementptr i8, ptr %5, i64 %i.on ; 2 uses
  %scevgep746 = getelementptr i8, ptr %3, i64 %i.oe ; 2 uses
  %scevgep747 = getelementptr i8, ptr %3, i64 %i.nz ; 2 uses
  %i.or = sext i35 %i.ol to i64                   ; 2 uses
  %scevgep737 = getelementptr i8, ptr %scevgep736, i64 %i.or
  %scevgep739 = getelementptr i8, ptr %scevgep738, i64 %i.or
  %i.os = sext i35 %i.oq to i64                   ; 2 uses
  %scevgep743 = getelementptr i8, ptr %scevgep742, i64 %i.os
  %scevgep745 = getelementptr i8, ptr %scevgep744, i64 %i.os
  %i.ot = load double, ptr %i.mw, align 8, !tbaa !50
  %gep609 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.my ; 2 uses
  %i.ou = load double, ptr %gep609, align 8, !tbaa !50
  %i.ov = fdiv double %i.ou, %i.ot                ; 2 uses
  store double %i.ov, ptr %gep609, align 8, !tbaa !50
  br i1 %i.mx, label %bb.af, label %._crit_edge517

bb.af:                                            ; preds = %.preheader
  %gep611 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.my ; 2 uses
  %i.ow = load double, ptr %gep611, align 8, !tbaa !50
  %i.ox = load double, ptr %i.nd, align 8, !tbaa !50
  %i.oy = fneg double %i.ox
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.oy, double %i.ov, double %i.ow)
  %i.pa = load double, ptr %i.ne, align 8, !tbaa !50
  %i.pb = fdiv double %i.oz, %i.pa
  store double %i.pb, ptr %gep611, align 8, !tbaa !50
  br i1 %i.na, label %.lr.ph516, label %._crit_edge517

.lr.ph516:                                        ; preds = %bb.af
  %i.pc = add nsw i64 %i.my, 1                    ; 2 uses
  %i.pd = add nsw i64 %i.my, 2                    ; 2 uses
  %invariant.gep606 = getelementptr [8 x i8], ptr %i.g, i64 %i.my ; 2 uses
  %min.iters.check773 = icmp ult i32 %i.mz, 16
  br i1 %min.iters.check773, label %scalar.ph772.preheader, label %vector.scevcheck723

vector.scevcheck723:                              ; preds = %.lr.ph516
  %i.pe = trunc nsw i64 %i.ni to i35
  %mul.result728 = shl i35 %i.pe, 3               ; 2 uses
  %mul.overflow729 = icmp ugt i64 %i.ni, 4294967295
  %i.pf = sub i35 %i.nn, %mul.result728
  %i.pg = icmp sgt i35 %i.pf, %i.nn
  %i.ph = sub i35 %i.nq, %mul.result728
  %i.pi = icmp sgt i35 %i.ph, %i.nq
  %i.pj = or i1 %i.pi, %mul.overflow729
  %i.pk = or i1 %i.pg, %i.pj
  br i1 %i.pk, label %scalar.ph772.preheader, label %vector.memcheck730

vector.memcheck730:                               ; preds = %vector.scevcheck723
  %bound0748 = icmp ult ptr %scevgep732, %scevgep735
  %bound1749 = icmp ult ptr %scevgep734, %scevgep733
  %found.conflict750 = and i1 %bound0748, %bound1749
  %bound0752 = icmp ult ptr %scevgep732, %scevgep739
  %bound1753 = icmp ult ptr %scevgep737, %scevgep733
  %found.conflict754 = and i1 %bound0752, %bound1753
  %stride.check755 = icmp slt i32 %i.e, 0
  %i.pl = or i1 %found.conflict754, %stride.check755
  %conflict.rdx756 = or i1 %found.conflict750, %i.pl
  %bound0757 = icmp ult ptr %scevgep732, %scevgep741
  %bound1758 = icmp ult ptr %scevgep740, %scevgep733
  %found.conflict759 = and i1 %bound0757, %bound1758
  %conflict.rdx761 = or i1 %found.conflict759, %conflict.rdx756
  %bound0762 = icmp ult ptr %scevgep732, %scevgep745
  %bound1763 = icmp ult ptr %scevgep743, %scevgep733
  %found.conflict764 = and i1 %bound0762, %bound1763
  %conflict.rdx766 = or i1 %found.conflict764, %conflict.rdx761
  %bound0767 = icmp ult ptr %scevgep732, %scevgep747
  %bound1768 = icmp ult ptr %scevgep746, %scevgep733
  %found.conflict769 = and i1 %bound0767, %bound1768
  %conflict.rdx771 = or i1 %found.conflict769, %conflict.rdx766
  br i1 %conflict.rdx771, label %scalar.ph772.preheader, label %vector.ph774

vector.ph774:                                     ; preds = %vector.memcheck730
  %n.vec775 = and i64 %i.nf, -4                   ; 2 uses
  %8 = and i64 %i.nf, 3
  br label %vector.body776

vector.body776:                                   ; preds = %vector.body776, %vector.ph774
  %index777 = phi i64 [ 0, %vector.ph774 ], [ %index.next791, %vector.body776 ] ; 2 uses
  %i.pm = sub i64 %i.nf, %index777                ; 6 uses
  %i.pn = getelementptr [8 x i8], ptr %invariant.gep606, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 -24    ; 2 uses
  %wide.load778 = load <4 x double>, ptr %i.po, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pm
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 -24
  %wide.load780 = load <4 x double>, ptr %i.pq, align 8, !tbaa !50, !alias.scope !62
  %i.pr = add i64 %i.pc, %i.pm
  %i.ps = shl i64 %i.pr, 32
  %i.pt = ashr exact i64 %i.ps, 29
  %i.pu = getelementptr inbounds i8, ptr %i.g, i64 %i.pt
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -24
  %wide.load781 = load <4 x double>, ptr %i.pv, align 8, !tbaa !50, !alias.scope !63
  %i.pw = fneg <4 x double> %wide.load780
  %i.px = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pw, <4 x double> %wide.load781, <4 x double> %wide.load778)
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pm
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -24
  %wide.load784 = load <4 x double>, ptr %i.pz, align 8, !tbaa !50, !alias.scope !64
  %i.qa = add i64 %i.pd, %i.pm
  %i.qb = shl i64 %i.qa, 32
  %i.qc = ashr exact i64 %i.qb, 29
  %i.qd = getelementptr inbounds i8, ptr %i.g, i64 %i.qc
  %i.qe = getelementptr inbounds i8, ptr %i.qd, i64 -24
  %wide.load785 = load <4 x double>, ptr %i.qe, align 8, !tbaa !50, !alias.scope !65
  %i.qf = fneg <4 x double> %wide.load784
  %i.qg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qf, <4 x double> %wide.load785, <4 x double> %i.px)
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pm
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -24
  %wide.load788 = load <4 x double>, ptr %i.qi, align 8, !tbaa !50, !alias.scope !66
  %i.qj = fdiv <4 x double> %i.qg, %wide.load788
  store <4 x double> %i.qj, ptr %i.po, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %index.next791 = add nuw i64 %index777, 4       ; 2 uses
  %i.qk = icmp eq i64 %index.next791, %n.vec775
  br i1 %i.qk, label %middle.block792, label %vector.body776, !llvm.loop !36

middle.block792:                                  ; preds = %vector.body776
  %cmp.n793 = icmp eq i64 %n.vec775, %i.nf
  br i1 %cmp.n793, label %._crit_edge517, label %scalar.ph772.preheader

scalar.ph772.preheader:                           ; preds = %vector.memcheck730, %vector.scevcheck723, %.lr.ph516, %middle.block792
  %indvars.iv556.ph = phi i64 [ %i.nf, %vector.memcheck730 ], [ %i.nf, %vector.scevcheck723 ], [ %i.nf, %.lr.ph516 ], [ %8, %middle.block792 ]
  br label %scalar.ph772

scalar.ph772:                                     ; preds = %scalar.ph772.preheader, %scalar.ph772
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %scalar.ph772 ], [ %indvars.iv556.ph, %scalar.ph772.preheader ] ; 8 uses
  %gep607 = getelementptr [8 x i8], ptr %invariant.gep606, i64 %indvars.iv556 ; 2 uses
  %i.ql = load double, ptr %gep607, align 8, !tbaa !50
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !50
  %i.qo = add i64 %i.pc, %indvars.iv556
  %sext570 = shl i64 %i.qo, 32
  %i.qp = ashr exact i64 %sext570, 29
  %i.qq = getelementptr inbounds i8, ptr %i.g, i64 %i.qp
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !50
  %i.qs = fneg double %i.qn
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qr, double %i.ql)
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !50
  %i.qw = add i64 %i.pd, %indvars.iv556
  %sext571 = shl i64 %i.qw, 32
  %i.qx = ashr exact i64 %sext571, 29
  %i.qy = getelementptr inbounds i8, ptr %i.g, i64 %i.qx
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !50
  %i.ra = fneg double %i.qv
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.ra, double %i.qz, double %i.qt)
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !50
  %i.re = fdiv double %i.rb, %i.rd
  store double %i.re, ptr %gep607, align 8, !tbaa !50
  %indvars.iv.next557 = add nsw i64 %indvars.iv556, -1
  %i.rf = icmp samesign ugt i64 %indvars.iv556, 1
  br i1 %i.rf, label %scalar.ph772, label %._crit_edge517, !llvm.loop !37

._crit_edge517:                                   ; preds = %scalar.ph772, %middle.block792, %.preheader, %bb.af
  %exitcond563.not.not = icmp eq i32 %i.j, 2
  br i1 %exitcond563.not.not, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %._crit_edge517
  %i.rg = add i35 %i.ol, %i.om
  %i.rh = sext i35 %i.rg to i64                   ; 2 uses
  %scevgep737.1 = getelementptr i8, ptr %scevgep736, i64 %i.rh
  %scevgep739.1 = getelementptr i8, ptr %scevgep738, i64 %i.rh
  %i.ri = add i35 %i.oq, %i.om
  %i.rj = sext i35 %i.ri to i64                   ; 2 uses
  %scevgep743.1 = getelementptr i8, ptr %scevgep742, i64 %i.rj
  %scevgep745.1 = getelementptr i8, ptr %scevgep744, i64 %i.rj
  %i.rk = add i35 %i.nn, %i.no                    ; 2 uses
  %i.rl = add i35 %i.nq, %i.no                    ; 2 uses
  %i.rm = load double, ptr %i.mw, align 8, !tbaa !50
  %i.rn = shl nsw i64 %i.my, 1                    ; 5 uses
  %gep609.1 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.rn ; 2 uses
  %i.ro = load double, ptr %gep609.1, align 8, !tbaa !50
  %i.rp = fdiv double %i.ro, %i.rm                ; 2 uses
  store double %i.rp, ptr %gep609.1, align 8, !tbaa !50
  br i1 %i.mx, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %gep611.1 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.rn ; 2 uses
  %i.rq = load double, ptr %gep611.1, align 8, !tbaa !50
  %i.rr = load double, ptr %i.nd, align 8, !tbaa !50
  %i.rs = fneg double %i.rr
  %i.rt = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.rp, double %i.rq)
  %i.ru = load double, ptr %i.ne, align 8, !tbaa !50
  %i.rv = fdiv double %i.rt, %i.ru
  store double %i.rv, ptr %gep611.1, align 8, !tbaa !50
  br i1 %i.na, label %.lr.ph516.1, label %.loopexit

.lr.ph516.1:                                      ; preds = %bb.ah
  %i.rw = or disjoint i64 %i.rn, 1                ; 2 uses
  %i.rx = add nsw i64 %i.rn, 2                    ; 2 uses
  %invariant.gep606.1 = getelementptr [8 x i8], ptr %i.g, i64 %i.rn ; 2 uses
  %min.iters.check773.1 = icmp ult i32 %i.mz, 16
  br i1 %min.iters.check773.1, label %scalar.ph772.preheader.1, label %vector.scevcheck723.1

vector.scevcheck723.1:                            ; preds = %.lr.ph516.1
  %i.ry = trunc nsw i64 %i.ni to i35
  %mul.result728.1 = shl i35 %i.ry, 3             ; 2 uses
  %mul.overflow729.1 = icmp ugt i64 %i.ni, 4294967295
  %i.rz = sub i35 %i.rk, %mul.result728.1
  %i.sa = icmp sgt i35 %i.rz, %i.rk
  %i.sb = sub i35 %i.rl, %mul.result728.1
  %i.sc = icmp sgt i35 %i.sb, %i.rl
  %i.sd = or i1 %i.sc, %mul.overflow729.1
  %i.se = or i1 %i.sa, %i.sd
  br i1 %i.se, label %scalar.ph772.preheader.1, label %vector.memcheck730.1

vector.memcheck730.1:                             ; preds = %vector.scevcheck723.1
  %bound0748.1 = icmp ult ptr %scevgep732, %scevgep735
  %bound1749.1 = icmp ult ptr %scevgep734, %scevgep733
  %found.conflict750.1 = and i1 %bound0748.1, %bound1749.1
  %bound0752.1 = icmp ult ptr %scevgep732, %scevgep739.1
  %bound1753.1 = icmp ult ptr %scevgep737.1, %scevgep733
  %found.conflict754.1 = and i1 %bound0752.1, %bound1753.1
  %stride.check755.1 = icmp slt i32 %i.e, 0
  %i.sf = or i1 %found.conflict754.1, %stride.check755.1
  %conflict.rdx756.1 = or i1 %found.conflict750.1, %i.sf
  %bound0757.1 = icmp ult ptr %scevgep732, %scevgep741
  %bound1758.1 = icmp ult ptr %scevgep740, %scevgep733
  %found.conflict759.1 = and i1 %bound0757.1, %bound1758.1
  %conflict.rdx761.1 = or i1 %found.conflict759.1, %conflict.rdx756.1
  %bound0762.1 = icmp ult ptr %scevgep732, %scevgep745.1
  %bound1763.1 = icmp ult ptr %scevgep743.1, %scevgep733
  %found.conflict764.1 = and i1 %bound0762.1, %bound1763.1
  %conflict.rdx766.1 = or i1 %found.conflict764.1, %conflict.rdx761.1
  %bound0767.1 = icmp ult ptr %scevgep732, %scevgep747
  %bound1768.1 = icmp ult ptr %scevgep746, %scevgep733
  %found.conflict769.1 = and i1 %bound0767.1, %bound1768.1
  %conflict.rdx771.1 = or i1 %found.conflict769.1, %conflict.rdx766.1
  br i1 %conflict.rdx771.1, label %scalar.ph772.preheader.1, label %vector.ph774.1

vector.ph774.1:                                   ; preds = %vector.memcheck730.1
  %n.vec775.1 = and i64 %i.nf, -4                 ; 2 uses
  %9 = and i64 %i.nf, 3
  br label %vector.body776.1

vector.body776.1:                                 ; preds = %vector.body776.1, %vector.ph774.1
  %index777.1 = phi i64 [ 0, %vector.ph774.1 ], [ %index.next791.1, %vector.body776.1 ] ; 2 uses
  %i.sg = sub i64 %i.nf, %index777.1              ; 6 uses
  %i.sh = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %i.sg
  %i.si = getelementptr i8, ptr %i.sh, i64 -24    ; 2 uses
  %wide.load778.1 = load <4 x double>, ptr %i.si, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.sg
  %i.sk = getelementptr inbounds i8, ptr %i.sj, i64 -24
  %wide.load780.1 = load <4 x double>, ptr %i.sk, align 8, !tbaa !50, !alias.scope !62
  %i.sl = add i64 %i.rw, %i.sg
  %i.sm = shl i64 %i.sl, 32
  %i.sn = ashr exact i64 %i.sm, 29
  %i.so = getelementptr inbounds i8, ptr %i.g, i64 %i.sn
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 -24
  %wide.load781.1 = load <4 x double>, ptr %i.sp, align 8, !tbaa !50, !alias.scope !63
  %i.sq = fneg <4 x double> %wide.load780.1
  %i.sr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sq, <4 x double> %wide.load781.1, <4 x double> %wide.load778.1)
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.sg
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 -24
  %wide.load784.1 = load <4 x double>, ptr %i.st, align 8, !tbaa !50, !alias.scope !64
  %i.su = add i64 %i.rx, %i.sg
  %i.sv = shl i64 %i.su, 32
  %i.sw = ashr exact i64 %i.sv, 29
  %i.sx = getelementptr inbounds i8, ptr %i.g, i64 %i.sw
  %i.sy = getelementptr inbounds i8, ptr %i.sx, i64 -24
  %wide.load785.1 = load <4 x double>, ptr %i.sy, align 8, !tbaa !50, !alias.scope !65
  %i.sz = fneg <4 x double> %wide.load784.1
  %i.ta = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sz, <4 x double> %wide.load785.1, <4 x double> %i.sr)
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.sg
  %i.tc = getelementptr inbounds i8, ptr %i.tb, i64 -24
  %wide.load788.1 = load <4 x double>, ptr %i.tc, align 8, !tbaa !50, !alias.scope !66
  %i.td = fdiv <4 x double> %i.ta, %wide.load788.1
  store <4 x double> %i.td, ptr %i.si, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %index.next791.1 = add nuw i64 %index777.1, 4   ; 2 uses
  %i.te = icmp eq i64 %index.next791.1, %n.vec775.1
  br i1 %i.te, label %middle.block792.1, label %vector.body776.1, !llvm.loop !36

middle.block792.1:                                ; preds = %vector.body776.1
  %cmp.n793.1 = icmp eq i64 %n.vec775.1, %i.nf
  br i1 %cmp.n793.1, label %.loopexit, label %scalar.ph772.preheader.1

scalar.ph772.preheader.1:                         ; preds = %middle.block792.1, %vector.memcheck730.1, %vector.scevcheck723.1, %.lr.ph516.1
  %indvars.iv556.ph.1 = phi i64 [ %i.nf, %vector.memcheck730.1 ], [ %i.nf, %vector.scevcheck723.1 ], [ %i.nf, %.lr.ph516.1 ], [ %9, %middle.block792.1 ]
  br label %scalar.ph772.1

scalar.ph772.1:                                   ; preds = %scalar.ph772.1, %scalar.ph772.preheader.1
  %indvars.iv556.1 = phi i64 [ %indvars.iv.next557.1, %scalar.ph772.1 ], [ %indvars.iv556.ph.1, %scalar.ph772.preheader.1 ] ; 8 uses
  %gep607.1 = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %indvars.iv556.1 ; 2 uses
  %i.tf = load double, ptr %gep607.1, align 8, !tbaa !50
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556.1
  %i.th = load double, ptr %i.tg, align 8, !tbaa !50
  %i.ti = add i64 %i.rw, %indvars.iv556.1
  %sext570.1 = shl i64 %i.ti, 32
  %i.tj = ashr exact i64 %sext570.1, 29
  %i.tk = getelementptr inbounds i8, ptr %i.g, i64 %i.tj
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !50
  %i.tm = fneg double %i.th
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.tm, double %i.tl, double %i.tf)
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556.1
  %i.tp = load double, ptr %i.to, align 8, !tbaa !50
  %i.tq = add i64 %i.rx, %indvars.iv556.1
  %sext571.1 = shl i64 %i.tq, 32
  %i.tr = ashr exact i64 %sext571.1, 29
  %i.ts = getelementptr inbounds i8, ptr %i.g, i64 %i.tr
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !50
  %i.tu = fneg double %i.tp
  %i.tv = tail call double @llvm.fmuladd.f64(double %i.tu, double %i.tt, double %i.tn)
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556.1
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !50
  %i.ty = fdiv double %i.tv, %i.tx
  store double %i.ty, ptr %gep607.1, align 8, !tbaa !50
  %indvars.iv.next557.1 = add nsw i64 %indvars.iv556.1, -1
  %i.tz = icmp samesign ugt i64 %indvars.iv556.1, 1
  br i1 %i.tz, label %scalar.ph772.1, label %.loopexit, !llvm.loop !37

bb.ai:                                            ; preds = %bb.ae
  %i.ua = add nsw i32 %i.h, -1                    ; 2 uses
  %i.ub = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ub
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ub
  %i.ue = add nsw i32 %i.h, -2                    ; 6 uses
  %i.uf = icmp samesign ugt i32 %i.h, 2
  %i.ug = sext i32 %i.ue to i64                   ; 9 uses
  %i.uh = zext nneg i32 %i.ua to i64
  %i.ui = add nuw i32 %i.j, 1
  %wide.trip.count554 = zext i32 %i.ui to i64     ; 2 uses
  %invariant.gep602 = getelementptr [8 x i8], ptr %i.g, i64 %i.mv
  %invariant.gep604 = getelementptr [8 x i8], ptr %i.g, i64 %i.uh
  %i.uj = icmp ne i32 %i.ue, 0
  %umin.neg = sext i1 %i.uj to i64
  %i.uk = add nsw i64 %umin.neg, %i.ug            ; 2 uses
  %i.ul = sext i32 %i.e to i35                    ; 2 uses
  %i.um = sext i32 %i.ue to i35
  %i.un = add nsw i35 %i.ul, %i.um                ; 2 uses
  %i.uo = shl i35 %i.un, 3
  %i.up = add i35 %i.uo, 8
  %i.uq = shl nsw i35 %i.ul, 3
  %i.ur = shl i35 %i.un, 3
  %i.us = add i35 %i.ur, 16
  %i.ut = icmp ne i32 %i.ue, 0                    ; 2 uses
  %umin662 = zext i1 %i.ut to i64
  %i.uu = add nsw i64 %umin662, %i.my
  %i.uv = add nsw i64 %i.uu, %i.f
  %i.uw = shl nsw i64 %i.uv, 3
  %scevgep663 = getelementptr i8, ptr %5, i64 %i.uw ; 5 uses
  %i.ux = shl nuw nsw i64 %wide.trip.count554, 3
  %i.uy = add nsw i64 %i.ux, -8
  %i.uz = mul i64 %i.uy, %i.my
  %i.va = shl nsw i64 %i.f, 3                     ; 3 uses
  %i.vb = shl nsw i64 %i.ug, 3                    ; 5 uses
  %i.vc = getelementptr i8, ptr %5, i64 %i.uz
  %i.vd = getelementptr i8, ptr %i.vc, i64 %i.va
  %i.ve = getelementptr i8, ptr %i.vd, i64 %i.vb
  %scevgep664 = getelementptr i8, ptr %i.ve, i64 8 ; 5 uses
  %i.vf = select i1 %i.ut, i64 8, i64 0           ; 2 uses
  %i.vg = add nsw i64 %i.vf, -8                   ; 3 uses
  %scevgep665 = getelementptr i8, ptr %4, i64 %i.vg
  %scevgep666 = getelementptr i8, ptr %4, i64 %i.vb
  %i.vh = add nsw i64 %i.vf, %i.va
  %i.vi = sub nsw i64 %i.vh, %i.vb                ; 2 uses
  %scevgep667 = getelementptr i8, ptr %5, i64 %i.vi
  %i.vj = sext i32 %i.e to i35                    ; 3 uses
  %i.vk = sext i32 %i.ue to i35                   ; 2 uses
  %i.vl = add nsw i35 %i.vj, %i.vk
  %i.vm = shl i35 %i.vl, 3
  %i.vn = add i35 %i.vm, 8
  %i.vo = shl nsw i35 %i.vj, 3
  %i.vp = add nsw i64 %i.va, 8                    ; 2 uses
  %scevgep669 = getelementptr i8, ptr %5, i64 %i.vp
  %scevgep671 = getelementptr i8, ptr %2, i64 %i.vg
  %scevgep672 = getelementptr i8, ptr %2, i64 %i.vb
  %scevgep673 = getelementptr i8, ptr %5, i64 %i.vi
  %i.vq = add nsw i35 %i.vj, %i.vk
  %i.vr = shl i35 %i.vq, 3
  %i.vs = add i35 %i.vr, 16
  %scevgep675 = getelementptr i8, ptr %5, i64 %i.vp
  %scevgep677 = getelementptr i8, ptr %3, i64 %i.vg
  %scevgep678 = getelementptr i8, ptr %3, i64 %i.vb
  %min.iters.check702 = icmp ult i32 %i.ue, 16
  %i.vt = trunc nsw i64 %i.uk to i35
  %mul.result = shl i35 %i.vt, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.uk, 4294967295
  %bound0679 = icmp ult ptr %scevgep663, %scevgep666
  %bound1680 = icmp ult ptr %scevgep665, %scevgep664
  %found.conflict681 = and i1 %bound0679, %bound1680
  %stride.check685 = icmp slt i32 %i.e, 0
  %invariant.op = or i1 %stride.check685, %found.conflict681
  %bound0686 = icmp ult ptr %scevgep663, %scevgep672
  %bound1687 = icmp ult ptr %scevgep671, %scevgep664
  %found.conflict688 = and i1 %bound0686, %bound1687
  %invariant.op842 = or i1 %invariant.op, %found.conflict688
  %bound0696 = icmp ult ptr %scevgep663, %scevgep678
  %bound1697 = icmp ult ptr %scevgep677, %scevgep664
  %found.conflict698 = and i1 %bound0696, %bound1697
  %n.vec704 = and i64 %i.ug, -4                   ; 2 uses
  %10 = and i64 %i.ug, 3
  %cmp.n721 = icmp eq i64 %n.vec704, %i.ug
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge512
  %indvar = phi i35 [ 0, %bb.ai ], [ %indvar.next, %._crit_edge512 ] ; 3 uses
  %indvars.iv551 = phi i64 [ 1, %bb.ai ], [ %indvars.iv.next552, %._crit_edge512 ] ; 2 uses
  %i.vu = mul i35 %i.vo, %indvar                  ; 2 uses
  %i.vv = add i35 %i.vn, %i.vu
  %i.vw = sext i35 %i.vv to i64                   ; 2 uses
  %scevgep668 = getelementptr i8, ptr %scevgep667, i64 %i.vw
  %scevgep670 = getelementptr i8, ptr %scevgep669, i64 %i.vw
  %i.vx = add i35 %i.vs, %i.vu
  %i.vy = sext i35 %i.vx to i64                   ; 2 uses
  %scevgep674 = getelementptr i8, ptr %scevgep673, i64 %i.vy
  %scevgep676 = getelementptr i8, ptr %scevgep675, i64 %i.vy
  %i.vz = mul i35 %i.uq, %indvar                  ; 2 uses
  %i.wa = add i35 %i.up, %i.vz                    ; 2 uses
  %i.wb = add i35 %i.us, %i.vz                    ; 2 uses
  %i.wc = load double, ptr %i.mw, align 8, !tbaa !50
  %i.wd = mul nsw i64 %indvars.iv551, %i.my       ; 5 uses
  %gep603 = getelementptr [8 x i8], ptr %invariant.gep602, i64 %i.wd ; 2 uses
  %i.we = load double, ptr %gep603, align 8, !tbaa !50
  %i.wf = fdiv double %i.we, %i.wc                ; 2 uses
  store double %i.wf, ptr %gep603, align 8, !tbaa !50
  br i1 %i.mx, label %bb.ak, label %._crit_edge512

bb.ak:                                            ; preds = %bb.aj
  %gep605 = getelementptr [8 x i8], ptr %invariant.gep604, i64 %i.wd ; 2 uses
  %i.wg = load double, ptr %gep605, align 8, !tbaa !50
  %i.wh = load double, ptr %i.uc, align 8, !tbaa !50
  %i.wi = fneg double %i.wh
  %i.wj = tail call double @llvm.fmuladd.f64(double %i.wi, double %i.wf, double %i.wg)
  %i.wk = load double, ptr %i.ud, align 8, !tbaa !50
  %i.wl = fdiv double %i.wj, %i.wk
  store double %i.wl, ptr %gep605, align 8, !tbaa !50
  br i1 %i.uf, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.ak
  %i.wm = add i64 %i.wd, 1                        ; 2 uses
  %i.wn = add i64 %i.wd, 2                        ; 2 uses
  %invariant.gep600 = getelementptr [8 x i8], ptr %i.g, i64 %i.wd ; 2 uses
  br i1 %min.iters.check702, label %scalar.ph701.preheader, label %vector.scevcheck660

vector.scevcheck660:                              ; preds = %.lr.ph511
  %i.wo = sub i35 %i.wa, %mul.result
  %i.wp = icmp sgt i35 %i.wo, %i.wa
  %i.wq = sub i35 %i.wb, %mul.result
  %i.wr = icmp sgt i35 %i.wq, %i.wb
  %i.ws = or i1 %i.wr, %mul.overflow
  %i.wt = or i1 %i.wp, %i.ws
  br i1 %i.wt, label %scalar.ph701.preheader, label %vector.memcheck661

vector.memcheck661:                               ; preds = %vector.scevcheck660
  %bound0682 = icmp ult ptr %scevgep663, %scevgep670
  %bound1683 = icmp ult ptr %scevgep668, %scevgep664
  %found.conflict684 = and i1 %bound0682, %bound1683
  %conflict.rdx690.reass = or i1 %found.conflict684, %invariant.op842
  %bound0691 = icmp ult ptr %scevgep663, %scevgep676
  %bound1692 = icmp ult ptr %scevgep674, %scevgep664
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx695 = or i1 %found.conflict693, %conflict.rdx690.reass
  %conflict.rdx700 = or i1 %found.conflict698, %conflict.rdx695
  br i1 %conflict.rdx700, label %scalar.ph701.preheader, label %vector.body705

vector.body705:                                   ; preds = %vector.memcheck661, %vector.body705
  %index706 = phi i64 [ %index.next719, %vector.body705 ], [ 0, %vector.memcheck661 ] ; 2 uses
  %i.wu = sub i64 %i.ug, %index706                ; 6 uses
  %i.wv = getelementptr [8 x i8], ptr %invariant.gep600, i64 %i.wu
  %i.ww = getelementptr i8, ptr %i.wv, i64 -24    ; 2 uses
  %wide.load707 = load <4 x double>, ptr %i.ww, align 8, !tbaa !50, !alias.scope !67, !noalias !68
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.wu
  %i.wy = getelementptr inbounds i8, ptr %i.wx, i64 -24
  %wide.load708 = load <4 x double>, ptr %i.wy, align 8, !tbaa !50, !alias.scope !69
  %i.wz = add i64 %i.wm, %i.wu
  %i.xa = shl i64 %i.wz, 32
  %i.xb = ashr exact i64 %i.xa, 29
  %i.xc = getelementptr inbounds i8, ptr %i.g, i64 %i.xb
  %i.xd = getelementptr inbounds i8, ptr %i.xc, i64 -24
  %wide.load709 = load <4 x double>, ptr %i.xd, align 8, !tbaa !50, !alias.scope !70
  %i.xe = fneg <4 x double> %wide.load708
  %i.xf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xe, <4 x double> %wide.load709, <4 x double> %wide.load707)
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.wu
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 -24
  %wide.load712 = load <4 x double>, ptr %i.xh, align 8, !tbaa !50, !alias.scope !71
  %i.xi = add i64 %i.wn, %i.wu
  %i.xj = shl i64 %i.xi, 32
  %i.xk = ashr exact i64 %i.xj, 29
  %i.xl = getelementptr inbounds i8, ptr %i.g, i64 %i.xk
  %i.xm = getelementptr inbounds i8, ptr %i.xl, i64 -24
  %wide.load713 = load <4 x double>, ptr %i.xm, align 8, !tbaa !50, !alias.scope !72
  %i.xn = fneg <4 x double> %wide.load712
  %i.xo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xn, <4 x double> %wide.load713, <4 x double> %i.xf)
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.wu
  %i.xq = getelementptr inbounds i8, ptr %i.xp, i64 -24
  %wide.load716 = load <4 x double>, ptr %i.xq, align 8, !tbaa !50, !alias.scope !73
  %i.xr = fdiv <4 x double> %i.xo, %wide.load716
  store <4 x double> %i.xr, ptr %i.ww, align 8, !tbaa !50, !alias.scope !67, !noalias !68
  %index.next719 = add nuw i64 %index706, 4       ; 2 uses
  %i.xs = icmp eq i64 %index.next719, %n.vec704
  br i1 %i.xs, label %middle.block720, label %vector.body705, !llvm.loop !45

middle.block720:                                  ; preds = %vector.body705
  br i1 %cmp.n721, label %._crit_edge512, label %scalar.ph701.preheader

scalar.ph701.preheader:                           ; preds = %vector.memcheck661, %vector.scevcheck660, %.lr.ph511, %middle.block720
  %indvars.iv548.ph = phi i64 [ %i.ug, %vector.memcheck661 ], [ %i.ug, %vector.scevcheck660 ], [ %i.ug, %.lr.ph511 ], [ %10, %middle.block720 ]
  br label %scalar.ph701

scalar.ph701:                                     ; preds = %scalar.ph701.preheader, %scalar.ph701
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %scalar.ph701 ], [ %indvars.iv548.ph, %scalar.ph701.preheader ] ; 8 uses
  %gep601 = getelementptr [8 x i8], ptr %invariant.gep600, i64 %indvars.iv548 ; 2 uses
  %i.xt = load double, ptr %gep601, align 8, !tbaa !50
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv548
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !50
  %i.xw = add i64 %i.wm, %indvars.iv548
  %sext = shl i64 %i.xw, 32
  %i.xx = ashr exact i64 %sext, 29
  %i.xy = getelementptr inbounds i8, ptr %i.g, i64 %i.xx
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !50
  %i.ya = fneg double %i.xv
  %i.yb = tail call double @llvm.fmuladd.f64(double %i.ya, double %i.xz, double %i.xt)
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv548
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !50
  %i.ye = add i64 %i.wn, %indvars.iv548
  %sext569 = shl i64 %i.ye, 32
  %i.yf = ashr exact i64 %sext569, 29
  %i.yg = getelementptr inbounds i8, ptr %i.g, i64 %i.yf
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !50
  %i.yi = fneg double %i.yd
  %i.yj = tail call double @llvm.fmuladd.f64(double %i.yi, double %i.yh, double %i.yb)
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv548
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !50
  %i.ym = fdiv double %i.yj, %i.yl
  store double %i.ym, ptr %gep601, align 8, !tbaa !50
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, -1
  %i.yn = icmp samesign ugt i64 %indvars.iv548, 1
  br i1 %i.yn, label %scalar.ph701, label %._crit_edge512, !llvm.loop !46

._crit_edge512:                                   ; preds = %scalar.ph701, %middle.block720, %bb.aj, %bb.ak
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond555.not, label %.loopexit, label %bb.aj, !llvm.loop !47

.loopexit:                                        ; preds = %._crit_edge512, %._crit_edge517, %scalar.ph772.1, %middle.block792.1, %bb.ah, %bb.ag, %bb.d, %bb.ad, %bb.ab, %bb.w, %bb.r, %bb.o, %bb.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!8 = distinct !{!8, !51}
!9 = distinct !{!9, !51}
!10 = distinct !{!10, !52}
!11 = distinct !{!11, !52}
!12 = distinct !{!12, !51}
!13 = distinct !{!13, !52}
!14 = distinct !{!14, !52}
!15 = distinct !{!15, !51}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !51, !55, !56}
!20 = distinct !{!20, !51, !55, !56}
!21 = distinct !{!21, !52}
!22 = distinct !{!22, !51, !55}
!23 = distinct !{!23, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !51, !55, !56}
!27 = distinct !{!27, !52}
!28 = distinct !{!28, !51, !55}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !51, !55, !56}
!37 = distinct !{!37, !51, !55}
!38 = distinct !{!38, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !51, !55, !56}
!46 = distinct !{!46, !51, !55}
!47 = distinct !{!47, !51}
!48 = !{!5, !5, i64 0}
!49 = !{!"double", !4, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!17}
!54 = !{!18}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 4, i32 12}
!58 = !{!24}
!59 = !{!25}
!60 = !{!30}
!61 = !{!35, !34, !33, !32, !31}
!62 = !{!35}
!63 = !{!34}
!64 = !{!33}
!65 = !{!32}
!66 = !{!31}
!67 = !{!39}
!68 = !{!44, !43, !42, !41, !40}
!69 = !{!44}
!70 = !{!43}
!71 = !{!42}
!72 = !{!41}
!73 = !{!40}
end_hunk_0
