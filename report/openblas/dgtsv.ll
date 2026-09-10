Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgtsv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dgtsv_:bb.a
  %i.kc = load double, ptr %gep585.1, align 8, !tbaa !50
  %gep587.1 = getelementptr [8 x i8], ptr %invariant.gep586, i64 %i.kb ; 2 uses
  %i.kd = load double, ptr %gep587.1, align 8, !tbaa !50
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.id, double %i.kc, double %i.kd)
  store double %i.ke, ptr %gep587.1, align 8, !tbaa !50
  %indvars.iv.next534.1 = add nuw nsw i64 %indvars.iv533, 2
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
  %i.nf = sext i32 %i.mz to i64                   ; 15 uses
  %i.ng = zext nneg i32 %i.nb to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %invariant.gep608 = getelementptr [8 x i8], ptr %i.g, i64 %i.mv ; 2 uses
  %invariant.gep610 = getelementptr [8 x i8], ptr %i.g, i64 %i.ng ; 2 uses
  %8 = icmp ne i32 %i.mz, 0
  %umin724.neg = sext i1 %8 to i64
  %i.nh = add nsw i64 %umin724.neg, %i.nf         ; 4 uses
  %i.ni = sext i32 %i.e to i35                    ; 2 uses
  %i.nj = sext i32 %i.mz to i35
  %i.nk = add nsw i35 %i.ni, %i.nj                ; 2 uses
  %i.nl = shl i35 %i.nk, 3
  %i.nm = add i35 %i.nl, 8                        ; 3 uses
  %i.nn = shl nsw i35 %i.ni, 3                    ; 2 uses
  %i.no = shl i35 %i.nk, 3
  %i.np = add i35 %i.no, 16                       ; 3 uses
  %9 = icmp ne i32 %i.mz, 0                       ; 2 uses
  %umin731 = zext i1 %9 to i64
  %10 = add nsw i64 %umin731, %i.my
  %11 = add nsw i64 %10, %i.f
  %12 = shl nsw i64 %11, 3
  %scevgep732.a = getelementptr i8, ptr %5, i64 %12 ; 10 uses
  %i.nq = zext nneg i32 %smax to i64
  %i.nr = mul nsw i64 %i.my, %i.nq
  %i.ns = shl nsw i64 %i.f, 3                     ; 2 uses
  %i.nt = add i64 %i.nr, %i.f
  %i.nu = shl nsw i64 %i.nf, 3                    ; 4 uses
  %i.nv = add i64 %i.nt, %i.nf
  %i.nw = shl i64 %i.nv, 3
  %13 = getelementptr i8, ptr %5, i64 %i.nw
  %scevgep733.a = getelementptr i8, ptr %13, i64 8 ; 10 uses
  %14 = select i1 %9, i64 8, i64 0                ; 2 uses
  %15 = add nsw i64 %14, -8                       ; 3 uses
  %scevgep734.a = getelementptr i8, ptr %4, i64 %15 ; 2 uses
  %scevgep735.a = getelementptr i8, ptr %4, i64 %i.nu ; 2 uses
  %i.nx = add nsw i64 %14, %i.ns
  %i.ny = sub nsw i64 %i.nx, %i.nu                ; 2 uses
  %scevgep736.a = getelementptr i8, ptr %5, i64 %i.ny ; 2 uses
  %i.nz = sext i32 %i.e to i35                    ; 3 uses
  %i.oa = sext i32 %i.mz to i35                   ; 2 uses
  %i.ob = add nsw i35 %i.nz, %i.oa
  %i.oc = shl i35 %i.ob, 3
  %i.od = add i35 %i.oc, 8                        ; 2 uses
  %i.oe = shl nsw i35 %i.nz, 3                    ; 2 uses
  %i.of = add nsw i64 %i.ns, 8                    ; 2 uses
  %scevgep738 = getelementptr i8, ptr %5, i64 %i.of ; 2 uses
  %scevgep740 = getelementptr i8, ptr %2, i64 %15 ; 2 uses
  %scevgep741 = getelementptr i8, ptr %2, i64 %i.nu ; 2 uses
  %scevgep742 = getelementptr i8, ptr %5, i64 %i.ny ; 2 uses
  %i.og = add nsw i35 %i.nz, %i.oa
  %i.oh = shl i35 %i.og, 3
  %i.oi = add i35 %i.oh, 16                       ; 2 uses
  %scevgep744 = getelementptr i8, ptr %5, i64 %i.of ; 2 uses
  %scevgep746 = getelementptr i8, ptr %3, i64 %15 ; 2 uses
  %scevgep747 = getelementptr i8, ptr %3, i64 %i.nu ; 2 uses
  %i.oj = sext i35 %i.od to i64                   ; 2 uses
  %scevgep737.a = getelementptr i8, ptr %scevgep736.a, i64 %i.oj
  %scevgep739 = getelementptr i8, ptr %scevgep738, i64 %i.oj
  %i.ok = sext i35 %i.oi to i64                   ; 2 uses
  %scevgep743 = getelementptr i8, ptr %scevgep742, i64 %i.ok
  %scevgep745 = getelementptr i8, ptr %scevgep744, i64 %i.ok
  %i.ol = load double, ptr %i.mw, align 8, !tbaa !50
  %gep609 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.my ; 2 uses
  %i.om = load double, ptr %gep609, align 8, !tbaa !50
  %i.on = fdiv double %i.om, %i.ol                ; 2 uses
  store double %i.on, ptr %gep609, align 8, !tbaa !50
  br i1 %i.mx, label %bb.af, label %._crit_edge517

bb.af:                                            ; preds = %.preheader
  %gep611 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.my ; 2 uses
  %i.oo = load double, ptr %gep611, align 8, !tbaa !50
  %i.op = load double, ptr %i.nd, align 8, !tbaa !50
  %i.oq = fneg double %i.op
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oq, double %i.on, double %i.oo)
  %i.os = load double, ptr %i.ne, align 8, !tbaa !50
  %i.ot = fdiv double %i.or, %i.os
  store double %i.ot, ptr %gep611, align 8, !tbaa !50
  br i1 %i.na, label %.lr.ph516, label %._crit_edge517

.lr.ph516:                                        ; preds = %bb.af
  %i.ou = add nsw i64 %i.my, 1                    ; 2 uses
  %i.ov = add nsw i64 %i.my, 2                    ; 2 uses
  %invariant.gep606 = getelementptr [8 x i8], ptr %i.g, i64 %i.my ; 2 uses
  %16 = icmp ne i32 %i.mz, 0
  %.neg806 = sext i1 %16 to i64
  %17 = add nsw i64 %i.nf, 1
  %18 = add nsw i64 %17, %.neg806                 ; 3 uses
  %min.iters.check773 = icmp ult i64 %18, 16
  br i1 %min.iters.check773, label %scalar.ph772.preheader, label %vector.scevcheck723

vector.scevcheck723:                              ; preds = %.lr.ph516
  %i.ow = trunc nsw i64 %i.nh to i35
  %mul.result728 = shl i35 %i.ow, 3               ; 2 uses
  %mul.overflow729 = icmp ugt i64 %i.nh, 4294967295
  %i.ox = sub i35 %i.nm, %mul.result728
  %i.oy = icmp sgt i35 %i.ox, %i.nm
  %i.oz = sub i35 %i.np, %mul.result728
  %i.pa = icmp sgt i35 %i.oz, %i.np
  %i.pb = or i1 %i.pa, %mul.overflow729
  %i.pc = or i1 %i.oy, %i.pb
  br i1 %i.pc, label %scalar.ph772.preheader, label %vector.memcheck730

vector.memcheck730:                               ; preds = %vector.scevcheck723
  %bound0748.a = icmp ult ptr %scevgep732.a, %scevgep735.a
  %bound1749.a = icmp ult ptr %scevgep734.a, %scevgep733.a
  %found.conflict750.a = and i1 %bound0748.a, %bound1749.a
  %bound0752 = icmp ult ptr %scevgep732.a, %scevgep739
  %bound1753 = icmp ult ptr %scevgep737.a, %scevgep733.a
  %found.conflict754 = and i1 %bound0752, %bound1753
  %stride.check755 = icmp slt i32 %i.e, 0
  %i.pd = or i1 %found.conflict754, %stride.check755
  %conflict.rdx756 = or i1 %found.conflict750.a, %i.pd
  %bound0757 = icmp ult ptr %scevgep732.a, %scevgep741
  %bound1758 = icmp ult ptr %scevgep740, %scevgep733.a
  %found.conflict759 = and i1 %bound0757, %bound1758
  %conflict.rdx761 = or i1 %found.conflict759, %conflict.rdx756
  %bound0762 = icmp ult ptr %scevgep732.a, %scevgep745
  %bound1763 = icmp ult ptr %scevgep743, %scevgep733.a
  %found.conflict764 = and i1 %bound0762, %bound1763
  %conflict.rdx766 = or i1 %found.conflict764, %conflict.rdx761
  %bound0767 = icmp ult ptr %scevgep732.a, %scevgep747
  %bound1768 = icmp ult ptr %scevgep746, %scevgep733.a
  %found.conflict769 = and i1 %bound0767, %bound1768
  %conflict.rdx771 = or i1 %found.conflict769, %conflict.rdx766
  br i1 %conflict.rdx771, label %scalar.ph772.preheader, label %vector.ph774

vector.ph774:                                     ; preds = %vector.memcheck730
  %n.vec775 = and i64 %18, -4                     ; 3 uses
  %19 = sub nsw i64 %i.nf, %n.vec775
  br label %vector.body776

vector.body776:                                   ; preds = %vector.body776, %vector.ph774
  %index777 = phi i64 [ 0, %vector.ph774 ], [ %index.next791, %vector.body776 ] ; 2 uses
  %i.pe = sub i64 %i.nf, %index777                ; 6 uses
  %i.pf = getelementptr [8 x i8], ptr %invariant.gep606, i64 %i.pe
  %i.pg = getelementptr i8, ptr %i.pf, i64 -24    ; 2 uses
  %wide.load778 = load <4 x double>, ptr %i.pg, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pe
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 -24
  %wide.load780 = load <4 x double>, ptr %i.pi, align 8, !tbaa !50, !alias.scope !62
  %i.pj = add i64 %i.ou, %i.pe
  %i.pk = shl i64 %i.pj, 32
  %i.pl = ashr exact i64 %i.pk, 29
  %i.pm = getelementptr inbounds i8, ptr %i.g, i64 %i.pl
  %i.pn = getelementptr inbounds i8, ptr %i.pm, i64 -24
  %wide.load781 = load <4 x double>, ptr %i.pn, align 8, !tbaa !50, !alias.scope !63
  %i.po = fneg <4 x double> %wide.load780
  %i.pp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.po, <4 x double> %wide.load781, <4 x double> %wide.load778)
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pe
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 -24
  %wide.load784 = load <4 x double>, ptr %i.pr, align 8, !tbaa !50, !alias.scope !64
  %i.ps = add i64 %i.ov, %i.pe
  %i.pt = shl i64 %i.ps, 32
  %i.pu = ashr exact i64 %i.pt, 29
  %i.pv = getelementptr inbounds i8, ptr %i.g, i64 %i.pu
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 -24
  %wide.load785 = load <4 x double>, ptr %i.pw, align 8, !tbaa !50, !alias.scope !65
  %i.px = fneg <4 x double> %wide.load784
  %i.py = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.px, <4 x double> %wide.load785, <4 x double> %i.pp)
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pe
  %i.qa = getelementptr inbounds i8, ptr %i.pz, i64 -24
  %wide.load788 = load <4 x double>, ptr %i.qa, align 8, !tbaa !50, !alias.scope !66
  %i.qb = fdiv <4 x double> %i.py, %wide.load788
  store <4 x double> %i.qb, ptr %i.pg, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %index.next791 = add nuw i64 %index777, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next791, %n.vec775
  br i1 %i.qc, label %middle.block792, label %vector.body776, !llvm.loop !36

middle.block792:                                  ; preds = %vector.body776
  %cmp.n793 = icmp eq i64 %18, %n.vec775
  br i1 %cmp.n793, label %._crit_edge517, label %scalar.ph772.preheader

scalar.ph772.preheader:                           ; preds = %vector.memcheck730, %vector.scevcheck723, %.lr.ph516, %middle.block792
  %indvars.iv556.ph = phi i64 [ %i.nf, %vector.memcheck730 ], [ %i.nf, %vector.scevcheck723 ], [ %i.nf, %.lr.ph516 ], [ %19, %middle.block792 ]
  br label %scalar.ph772

scalar.ph772:                                     ; preds = %scalar.ph772.preheader, %scalar.ph772
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %scalar.ph772 ], [ %indvars.iv556.ph, %scalar.ph772.preheader ] ; 8 uses
  %gep607 = getelementptr [8 x i8], ptr %invariant.gep606, i64 %indvars.iv556 ; 2 uses
  %i.qd = load double, ptr %gep607, align 8, !tbaa !50
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !50
  %i.qg = add i64 %i.ou, %indvars.iv556
  %sext570 = shl i64 %i.qg, 32
  %i.qh = ashr exact i64 %sext570, 29
  %i.qi = getelementptr inbounds i8, ptr %i.g, i64 %i.qh
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !50
  %i.qk = fneg double %i.qf
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qk, double %i.qj, double %i.qd)
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !50
  %i.qo = add i64 %i.ov, %indvars.iv556
  %sext571 = shl i64 %i.qo, 32
  %i.qp = ashr exact i64 %sext571, 29
  %i.qq = getelementptr inbounds i8, ptr %i.g, i64 %i.qp
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !50
  %i.qs = fneg double %i.qn
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qr, double %i.ql)
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !50
  %i.qw = fdiv double %i.qt, %i.qv
  store double %i.qw, ptr %gep607, align 8, !tbaa !50
  %indvars.iv.next557 = add nsw i64 %indvars.iv556, -1
  %i.qx = icmp samesign ugt i64 %indvars.iv556, 1
  br i1 %i.qx, label %scalar.ph772, label %._crit_edge517, !llvm.loop !37

._crit_edge517:                                   ; preds = %scalar.ph772, %middle.block792, %.preheader, %bb.af
  %exitcond563.not.not = icmp eq i32 %i.j, 2
  br i1 %exitcond563.not.not, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %._crit_edge517
  %i.qy = add i35 %i.od, %i.oe
  %i.qz = sext i35 %i.qy to i64                   ; 2 uses
  %scevgep737.1.a = getelementptr i8, ptr %scevgep736.a, i64 %i.qz
  %scevgep739.1 = getelementptr i8, ptr %scevgep738, i64 %i.qz
  %i.ra = add i35 %i.oi, %i.oe
  %i.rb = sext i35 %i.ra to i64                   ; 2 uses
  %scevgep743.1 = getelementptr i8, ptr %scevgep742, i64 %i.rb
  %scevgep745.1 = getelementptr i8, ptr %scevgep744, i64 %i.rb
  %i.rc = add i35 %i.nm, %i.nn                    ; 2 uses
  %i.rd = add i35 %i.np, %i.nn                    ; 2 uses
  %i.re = load double, ptr %i.mw, align 8, !tbaa !50
  %i.rf = shl nsw i64 %i.my, 1                    ; 5 uses
  %gep609.1 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.rf ; 2 uses
  %i.rg = load double, ptr %gep609.1, align 8, !tbaa !50
  %i.rh = fdiv double %i.rg, %i.re                ; 2 uses
  store double %i.rh, ptr %gep609.1, align 8, !tbaa !50
  br i1 %i.mx, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %gep611.1 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.rf ; 2 uses
  %i.ri = load double, ptr %gep611.1, align 8, !tbaa !50
  %i.rj = load double, ptr %i.nd, align 8, !tbaa !50
  %i.rk = fneg double %i.rj
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.rk, double %i.rh, double %i.ri)
  %i.rm = load double, ptr %i.ne, align 8, !tbaa !50
  %i.rn = fdiv double %i.rl, %i.rm
  store double %i.rn, ptr %gep611.1, align 8, !tbaa !50
  br i1 %i.na, label %.lr.ph516.1, label %.loopexit

.lr.ph516.1:                                      ; preds = %bb.ah
  %i.ro = or disjoint i64 %i.rf, 1                ; 2 uses
  %i.rp = add nsw i64 %i.rf, 2                    ; 2 uses
  %invariant.gep606.1 = getelementptr [8 x i8], ptr %i.g, i64 %i.rf ; 2 uses
  %20 = icmp ne i32 %i.mz, 0
  %.neg806.1 = sext i1 %20 to i64
  %21 = add nsw i64 %i.nf, 1
  %22 = add nsw i64 %21, %.neg806.1               ; 3 uses
  %min.iters.check773.1 = icmp ult i64 %22, 16
  br i1 %min.iters.check773.1, label %scalar.ph772.preheader.1, label %vector.scevcheck723.1

vector.scevcheck723.1:                            ; preds = %.lr.ph516.1
  %i.rq = trunc nsw i64 %i.nh to i35
  %mul.result728.1 = shl i35 %i.rq, 3             ; 2 uses
  %mul.overflow729.1 = icmp ugt i64 %i.nh, 4294967295
  %i.rr = sub i35 %i.rc, %mul.result728.1
  %i.rs = icmp sgt i35 %i.rr, %i.rc
  %i.rt = sub i35 %i.rd, %mul.result728.1
  %i.ru = icmp sgt i35 %i.rt, %i.rd
  %i.rv = or i1 %i.ru, %mul.overflow729.1
  %i.rw = or i1 %i.rs, %i.rv
  br i1 %i.rw, label %scalar.ph772.preheader.1, label %vector.memcheck730.1

vector.memcheck730.1:                             ; preds = %vector.scevcheck723.1
  %bound0748.1.a = icmp ult ptr %scevgep732.a, %scevgep735.a
  %bound1749.1.a = icmp ult ptr %scevgep734.a, %scevgep733.a
  %found.conflict750.1.a = and i1 %bound0748.1.a, %bound1749.1.a
  %bound0752.1 = icmp ult ptr %scevgep732.a, %scevgep739.1
  %bound1753.1 = icmp ult ptr %scevgep737.1.a, %scevgep733.a
  %found.conflict754.1 = and i1 %bound0752.1, %bound1753.1
  %stride.check755.1 = icmp slt i32 %i.e, 0
  %i.rx = or i1 %found.conflict754.1, %stride.check755.1
  %conflict.rdx756.1 = or i1 %found.conflict750.1.a, %i.rx
  %bound0757.1 = icmp ult ptr %scevgep732.a, %scevgep741
  %bound1758.1 = icmp ult ptr %scevgep740, %scevgep733.a
  %found.conflict759.1 = and i1 %bound0757.1, %bound1758.1
  %conflict.rdx761.1 = or i1 %found.conflict759.1, %conflict.rdx756.1
  %bound0762.1 = icmp ult ptr %scevgep732.a, %scevgep745.1
  %bound1763.1 = icmp ult ptr %scevgep743.1, %scevgep733.a
  %found.conflict764.1 = and i1 %bound0762.1, %bound1763.1
  %conflict.rdx766.1 = or i1 %found.conflict764.1, %conflict.rdx761.1
  %bound0767.1 = icmp ult ptr %scevgep732.a, %scevgep747
  %bound1768.1 = icmp ult ptr %scevgep746, %scevgep733.a
  %found.conflict769.1 = and i1 %bound0767.1, %bound1768.1
  %conflict.rdx771.1 = or i1 %found.conflict769.1, %conflict.rdx766.1
  br i1 %conflict.rdx771.1, label %scalar.ph772.preheader.1, label %vector.ph774.1

vector.ph774.1:                                   ; preds = %vector.memcheck730.1
  %n.vec775.1 = and i64 %22, -4                   ; 3 uses
  %23 = sub nsw i64 %i.nf, %n.vec775.1
  br label %vector.body776.1

vector.body776.1:                                 ; preds = %vector.body776.1, %vector.ph774.1
  %index777.1 = phi i64 [ 0, %vector.ph774.1 ], [ %index.next791.1, %vector.body776.1 ] ; 2 uses
  %i.ry = sub i64 %i.nf, %index777.1              ; 6 uses
  %i.rz = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %i.ry
  %i.sa = getelementptr i8, ptr %i.rz, i64 -24    ; 2 uses
  %wide.load778.1 = load <4 x double>, ptr %i.sa, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ry
  %i.sc = getelementptr inbounds i8, ptr %i.sb, i64 -24
  %wide.load780.1 = load <4 x double>, ptr %i.sc, align 8, !tbaa !50, !alias.scope !62
  %i.sd = add i64 %i.ro, %i.ry
  %i.se = shl i64 %i.sd, 32
  %i.sf = ashr exact i64 %i.se, 29
  %i.sg = getelementptr inbounds i8, ptr %i.g, i64 %i.sf
  %i.sh = getelementptr inbounds i8, ptr %i.sg, i64 -24
  %wide.load781.1 = load <4 x double>, ptr %i.sh, align 8, !tbaa !50, !alias.scope !63
  %i.si = fneg <4 x double> %wide.load780.1
  %i.sj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.si, <4 x double> %wide.load781.1, <4 x double> %wide.load778.1)
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ry
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 -24
  %wide.load784.1 = load <4 x double>, ptr %i.sl, align 8, !tbaa !50, !alias.scope !64
  %i.sm = add i64 %i.rp, %i.ry
  %i.sn = shl i64 %i.sm, 32
  %i.so = ashr exact i64 %i.sn, 29
  %i.sp = getelementptr inbounds i8, ptr %i.g, i64 %i.so
  %i.sq = getelementptr inbounds i8, ptr %i.sp, i64 -24
  %wide.load785.1 = load <4 x double>, ptr %i.sq, align 8, !tbaa !50, !alias.scope !65
  %i.sr = fneg <4 x double> %wide.load784.1
  %i.ss = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sr, <4 x double> %wide.load785.1, <4 x double> %i.sj)
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ry
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 -24
  %wide.load788.1 = load <4 x double>, ptr %i.su, align 8, !tbaa !50, !alias.scope !66
  %i.sv = fdiv <4 x double> %i.ss, %wide.load788.1
  store <4 x double> %i.sv, ptr %i.sa, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %index.next791.1 = add nuw i64 %index777.1, 4   ; 2 uses
  %i.sw = icmp eq i64 %index.next791.1, %n.vec775.1
  br i1 %i.sw, label %middle.block792.1, label %vector.body776.1, !llvm.loop !36

middle.block792.1:                                ; preds = %vector.body776.1
  %cmp.n793.1 = icmp eq i64 %22, %n.vec775.1
  br i1 %cmp.n793.1, label %.loopexit, label %scalar.ph772.preheader.1

scalar.ph772.preheader.1:                         ; preds = %middle.block792.1, %vector.memcheck730.1, %vector.scevcheck723.1, %.lr.ph516.1
  %indvars.iv556.ph.1 = phi i64 [ %i.nf, %vector.memcheck730.1 ], [ %i.nf, %vector.scevcheck723.1 ], [ %i.nf, %.lr.ph516.1 ], [ %23, %middle.block792.1 ]
  br label %scalar.ph772.1

scalar.ph772.1:                                   ; preds = %scalar.ph772.1, %scalar.ph772.preheader.1
  %indvars.iv556.1 = phi i64 [ %indvars.iv.next557.1, %scalar.ph772.1 ], [ %indvars.iv556.ph.1, %scalar.ph772.preheader.1 ] ; 8 uses
  %gep607.1 = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %indvars.iv556.1 ; 2 uses
  %i.sx = load double, ptr %gep607.1, align 8, !tbaa !50
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556.1
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !50
  %i.ta = add i64 %i.ro, %indvars.iv556.1
  %sext570.1 = shl i64 %i.ta, 32
  %i.tb = ashr exact i64 %sext570.1, 29
  %i.tc = getelementptr inbounds i8, ptr %i.g, i64 %i.tb
  %i.td = load double, ptr %i.tc, align 8, !tbaa !50
  %i.te = fneg double %i.sz
  %i.tf = tail call double @llvm.fmuladd.f64(double %i.te, double %i.td, double %i.sx)
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556.1
  %i.th = load double, ptr %i.tg, align 8, !tbaa !50
  %i.ti = add i64 %i.rp, %indvars.iv556.1
  %sext571.1 = shl i64 %i.ti, 32
  %i.tj = ashr exact i64 %sext571.1, 29
  %i.tk = getelementptr inbounds i8, ptr %i.g, i64 %i.tj
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !50
  %i.tm = fneg double %i.th
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.tm, double %i.tl, double %i.tf)
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556.1
  %i.tp = load double, ptr %i.to, align 8, !tbaa !50
  %i.tq = fdiv double %i.tn, %i.tp
  store double %i.tq, ptr %gep607.1, align 8, !tbaa !50
  %indvars.iv.next557.1 = add nsw i64 %indvars.iv556.1, -1
  %i.tr = icmp samesign ugt i64 %indvars.iv556.1, 1
  br i1 %i.tr, label %scalar.ph772.1, label %.loopexit, !llvm.loop !37

bb.ai:                                            ; preds = %bb.ae
  %i.ts = add nsw i32 %i.h, -1                    ; 2 uses
  %i.tt = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.tt
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.tt
  %i.tw = add nsw i32 %i.h, -2                    ; 6 uses
  %i.tx = icmp samesign ugt i32 %i.h, 2
  %i.ty = sext i32 %i.tw to i64                   ; 8 uses
  %i.tz = zext nneg i32 %i.ts to i64
  %i.ua = add nuw i32 %i.j, 1
  %wide.trip.count554 = zext i32 %i.ua to i64     ; 2 uses
  %invariant.gep602 = getelementptr [8 x i8], ptr %i.g, i64 %i.mv
  %invariant.gep604 = getelementptr [8 x i8], ptr %i.g, i64 %i.tz
  %24 = icmp ne i32 %i.tw, 0
  %umin.neg = sext i1 %24 to i64
  %i.ub = add nsw i64 %umin.neg, %i.ty            ; 2 uses
  %i.uc = sext i32 %i.e to i35                    ; 2 uses
  %i.ud = sext i32 %i.tw to i35
  %i.ue = add nsw i35 %i.uc, %i.ud                ; 2 uses
  %i.uf = shl i35 %i.ue, 3
  %i.ug = add i35 %i.uf, 8
  %i.uh = shl nsw i35 %i.uc, 3
  %i.ui = shl i35 %i.ue, 3
  %i.uj = add i35 %i.ui, 16
  %25 = icmp ne i32 %i.tw, 0                      ; 2 uses
  %umin662 = zext i1 %25 to i64
  %26 = add nsw i64 %umin662, %i.my
  %27 = add nsw i64 %26, %i.f
  %28 = shl nsw i64 %27, 3
  %scevgep663.a = getelementptr i8, ptr %5, i64 %28 ; 5 uses
  %i.uk = shl nuw nsw i64 %wide.trip.count554, 3
  %i.ul = add nsw i64 %i.uk, -8
  %i.um = mul i64 %i.ul, %i.my
  %i.un = shl nsw i64 %i.f, 3                     ; 3 uses
  %i.uo = shl nsw i64 %i.ty, 3                    ; 5 uses
  %29 = getelementptr i8, ptr %5, i64 %i.um
  %i.up = getelementptr i8, ptr %29, i64 %i.un
  %i.uq = getelementptr i8, ptr %i.up, i64 %i.uo
  %scevgep664.a = getelementptr i8, ptr %i.uq, i64 8 ; 5 uses
  %30 = select i1 %25, i64 8, i64 0               ; 2 uses
  %31 = add nsw i64 %30, -8                       ; 3 uses
  %scevgep665.a = getelementptr i8, ptr %4, i64 %31
  %scevgep666.a = getelementptr i8, ptr %4, i64 %i.uo
  %i.ur = add nsw i64 %30, %i.un
  %i.us = sub nsw i64 %i.ur, %i.uo                ; 2 uses
  %scevgep667.a = getelementptr i8, ptr %5, i64 %i.us
  %i.ut = sext i32 %i.e to i35                    ; 3 uses
  %i.uu = sext i32 %i.tw to i35                   ; 2 uses
  %i.uv = add nsw i35 %i.ut, %i.uu
  %i.uw = shl i35 %i.uv, 3
  %i.ux = add i35 %i.uw, 8
  %i.uy = shl nsw i35 %i.ut, 3
  %i.uz = add nsw i64 %i.un, 8                    ; 2 uses
  %scevgep669 = getelementptr i8, ptr %5, i64 %i.uz
  %scevgep671.a = getelementptr i8, ptr %2, i64 %31
  %scevgep672.a = getelementptr i8, ptr %2, i64 %i.uo
  %scevgep673.a = getelementptr i8, ptr %5, i64 %i.us
  %i.va = add nsw i35 %i.ut, %i.uu
  %i.vb = shl i35 %i.va, 3
  %i.vc = add i35 %i.vb, 16
  %scevgep675 = getelementptr i8, ptr %5, i64 %i.uz
  %scevgep677 = getelementptr i8, ptr %3, i64 %31
  %scevgep678 = getelementptr i8, ptr %3, i64 %i.uo
  %32 = icmp ne i32 %i.tw, 0
  %.neg805 = sext i1 %32 to i64
  %33 = add nsw i64 %i.ty, 1
  %34 = add nsw i64 %33, %.neg805                 ; 3 uses
  %min.iters.check702 = icmp ult i64 %34, 16
  %i.vd = trunc nsw i64 %i.ub to i35
  %mul.result = shl i35 %i.vd, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ub, 4294967295
  %bound0679 = icmp ult ptr %scevgep663.a, %scevgep666.a
  %bound1680 = icmp ult ptr %scevgep665.a, %scevgep664.a
  %found.conflict681 = and i1 %bound0679, %bound1680
  %stride.check685 = icmp slt i32 %i.e, 0
  %invariant.op = or i1 %stride.check685, %found.conflict681
  %bound0686 = icmp ult ptr %scevgep663.a, %scevgep672.a
  %bound1687 = icmp ult ptr %scevgep671.a, %scevgep664.a
  %found.conflict688 = and i1 %bound0686, %bound1687
  %invariant.op842 = or i1 %invariant.op, %found.conflict688
  %bound0696 = icmp ult ptr %scevgep663.a, %scevgep678
  %bound1697 = icmp ult ptr %scevgep677, %scevgep664.a
  %found.conflict698 = and i1 %bound0696, %bound1697
  %n.vec704 = and i64 %34, -4                     ; 3 uses
  %35 = sub nsw i64 %i.ty, %n.vec704
  %cmp.n721 = icmp eq i64 %34, %n.vec704
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge512
  %indvar = phi i35 [ 0, %bb.ai ], [ %indvar.next, %._crit_edge512 ] ; 3 uses
  %indvars.iv551 = phi i64 [ 1, %bb.ai ], [ %indvars.iv.next552, %._crit_edge512 ] ; 2 uses
  %i.ve = mul i35 %i.uy, %indvar                  ; 2 uses
  %i.vf = add i35 %i.ux, %i.ve
  %i.vg = sext i35 %i.vf to i64                   ; 2 uses
  %scevgep668.a = getelementptr i8, ptr %scevgep667.a, i64 %i.vg
  %scevgep670 = getelementptr i8, ptr %scevgep669, i64 %i.vg
  %i.vh = add i35 %i.vc, %i.ve
  %i.vi = sext i35 %i.vh to i64                   ; 2 uses
  %scevgep674 = getelementptr i8, ptr %scevgep673.a, i64 %i.vi
  %scevgep676 = getelementptr i8, ptr %scevgep675, i64 %i.vi
  %i.vj = mul i35 %i.uh, %indvar                  ; 2 uses
  %i.vk = add i35 %i.ug, %i.vj                    ; 2 uses
  %i.vl = add i35 %i.uj, %i.vj                    ; 2 uses
  %i.vm = load double, ptr %i.mw, align 8, !tbaa !50
  %i.vn = mul nsw i64 %indvars.iv551, %i.my       ; 5 uses
  %gep603 = getelementptr [8 x i8], ptr %invariant.gep602, i64 %i.vn ; 2 uses
  %i.vo = load double, ptr %gep603, align 8, !tbaa !50
  %i.vp = fdiv double %i.vo, %i.vm                ; 2 uses
  store double %i.vp, ptr %gep603, align 8, !tbaa !50
  br i1 %i.mx, label %bb.ak, label %._crit_edge512

bb.ak:                                            ; preds = %bb.aj
  %gep605 = getelementptr [8 x i8], ptr %invariant.gep604, i64 %i.vn ; 2 uses
  %i.vq = load double, ptr %gep605, align 8, !tbaa !50
  %i.vr = load double, ptr %i.tu, align 8, !tbaa !50
  %i.vs = fneg double %i.vr
  %i.vt = tail call double @llvm.fmuladd.f64(double %i.vs, double %i.vp, double %i.vq)
  %i.vu = load double, ptr %i.tv, align 8, !tbaa !50
  %i.vv = fdiv double %i.vt, %i.vu
  store double %i.vv, ptr %gep605, align 8, !tbaa !50
  br i1 %i.tx, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.ak
  %i.vw = add i64 %i.vn, 1                        ; 2 uses
  %i.vx = add i64 %i.vn, 2                        ; 2 uses
  %invariant.gep600 = getelementptr [8 x i8], ptr %i.g, i64 %i.vn ; 2 uses
  br i1 %min.iters.check702, label %scalar.ph701.preheader, label %vector.scevcheck660

vector.scevcheck660:                              ; preds = %.lr.ph511
  %i.vy = sub i35 %i.vk, %mul.result
  %i.vz = icmp sgt i35 %i.vy, %i.vk
  %i.wa = sub i35 %i.vl, %mul.result
  %i.wb = icmp sgt i35 %i.wa, %i.vl
  %i.wc = or i1 %i.wb, %mul.overflow
  %i.wd = or i1 %i.vz, %i.wc
  br i1 %i.wd, label %scalar.ph701.preheader, label %vector.memcheck661

vector.memcheck661:                               ; preds = %vector.scevcheck660
  %bound0682 = icmp ult ptr %scevgep663.a, %scevgep670
  %bound1683 = icmp ult ptr %scevgep668.a, %scevgep664.a
  %found.conflict684 = and i1 %bound0682, %bound1683
  %conflict.rdx690.reass = or i1 %found.conflict684, %invariant.op842
  %bound0691 = icmp ult ptr %scevgep663.a, %scevgep676
  %bound1692 = icmp ult ptr %scevgep674, %scevgep664.a
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx695 = or i1 %found.conflict693, %conflict.rdx690.reass
  %conflict.rdx700 = or i1 %found.conflict698, %conflict.rdx695
  br i1 %conflict.rdx700, label %scalar.ph701.preheader, label %vector.body705

vector.body705:                                   ; preds = %vector.memcheck661, %vector.body705
  %index706 = phi i64 [ %index.next719, %vector.body705 ], [ 0, %vector.memcheck661 ] ; 2 uses
  %i.we = sub i64 %i.ty, %index706                ; 6 uses
  %i.wf = getelementptr [8 x i8], ptr %invariant.gep600, i64 %i.we
  %i.wg = getelementptr i8, ptr %i.wf, i64 -24    ; 2 uses
  %wide.load707 = load <4 x double>, ptr %i.wg, align 8, !tbaa !50, !alias.scope !67, !noalias !68
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.we
  %i.wi = getelementptr inbounds i8, ptr %i.wh, i64 -24
  %wide.load708.a = load <4 x double>, ptr %i.wi, align 8, !tbaa !50, !alias.scope !69
  %i.wj = add i64 %i.vw, %i.we
  %i.wk = shl i64 %i.wj, 32
  %i.wl = ashr exact i64 %i.wk, 29
  %i.wm = getelementptr inbounds i8, ptr %i.g, i64 %i.wl
  %i.wn = getelementptr inbounds i8, ptr %i.wm, i64 -24
  %wide.load709.a = load <4 x double>, ptr %i.wn, align 8, !tbaa !50, !alias.scope !70
  %i.wo = fneg <4 x double> %wide.load708.a
  %i.wp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wo, <4 x double> %wide.load709.a, <4 x double> %wide.load707)
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.we
  %i.wr = getelementptr inbounds i8, ptr %i.wq, i64 -24
  %wide.load712.a = load <4 x double>, ptr %i.wr, align 8, !tbaa !50, !alias.scope !71
  %i.ws = add i64 %i.vx, %i.we
  %i.wt = shl i64 %i.ws, 32
  %i.wu = ashr exact i64 %i.wt, 29
  %i.wv = getelementptr inbounds i8, ptr %i.g, i64 %i.wu
  %i.ww = getelementptr inbounds i8, ptr %i.wv, i64 -24
  %wide.load713 = load <4 x double>, ptr %i.ww, align 8, !tbaa !50, !alias.scope !72
  %i.wx = fneg <4 x double> %wide.load712.a
  %i.wy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wx, <4 x double> %wide.load713, <4 x double> %i.wp)
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.we
  %i.xa = getelementptr inbounds i8, ptr %i.wz, i64 -24
  %wide.load716 = load <4 x double>, ptr %i.xa, align 8, !tbaa !50, !alias.scope !73
  %i.xb = fdiv <4 x double> %i.wy, %wide.load716
  store <4 x double> %i.xb, ptr %i.wg, align 8, !tbaa !50, !alias.scope !67, !noalias !68
  %index.next719 = add nuw i64 %index706, 4       ; 2 uses
  %i.xc = icmp eq i64 %index.next719, %n.vec704
  br i1 %i.xc, label %middle.block720, label %vector.body705, !llvm.loop !45

middle.block720:                                  ; preds = %vector.body705
  br i1 %cmp.n721, label %._crit_edge512, label %scalar.ph701.preheader

scalar.ph701.preheader:                           ; preds = %vector.memcheck661, %vector.scevcheck660, %.lr.ph511, %middle.block720
  %indvars.iv548.ph = phi i64 [ %i.ty, %vector.memcheck661 ], [ %i.ty, %vector.scevcheck660 ], [ %i.ty, %.lr.ph511 ], [ %35, %middle.block720 ]
  br label %scalar.ph701

scalar.ph701:                                     ; preds = %scalar.ph701.preheader, %scalar.ph701
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %scalar.ph701 ], [ %indvars.iv548.ph, %scalar.ph701.preheader ] ; 8 uses
  %gep601 = getelementptr [8 x i8], ptr %invariant.gep600, i64 %indvars.iv548 ; 2 uses
  %i.xd = load double, ptr %gep601, align 8, !tbaa !50
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv548
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !50
  %i.xg = add i64 %i.vw, %indvars.iv548
  %sext = shl i64 %i.xg, 32
  %i.xh = ashr exact i64 %sext, 29
  %i.xi = getelementptr inbounds i8, ptr %i.g, i64 %i.xh
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !50
  %i.xk = fneg double %i.xf
  %i.xl = tail call double @llvm.fmuladd.f64(double %i.xk, double %i.xj, double %i.xd)
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv548
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !50
  %i.xo = add i64 %i.vx, %indvars.iv548
  %sext569 = shl i64 %i.xo, 32
  %i.xp = ashr exact i64 %sext569, 29
  %i.xq = getelementptr inbounds i8, ptr %i.g, i64 %i.xp
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !50
  %i.xs = fneg double %i.xn
  %i.xt = tail call double @llvm.fmuladd.f64(double %i.xs, double %i.xr, double %i.xl)
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv548
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !50
  %i.xw = fdiv double %i.xt, %i.xv
  store double %i.xw, ptr %gep601, align 8, !tbaa !50
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, -1
  %i.xx = icmp samesign ugt i64 %indvars.iv548, 1
  br i1 %i.xx, label %scalar.ph701, label %._crit_edge512, !llvm.loop !46

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
