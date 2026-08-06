begin_hunk_0_@dgtsv_:bb.a
  %indvars.iv.next534.2 = add nuw nsw i64 %indvars.iv533, 3
  %i.ki = mul nsw i64 %indvars.iv.next534.2, %i.if ; 2 uses
  %gep585.3 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %i.ki
  %i.kj = load double, ptr %gep585.3, align 8, !tbaa !9
  %gep587.3 = getelementptr [8 x i8], ptr %invariant.gep586, i64 %i.ki ; 2 uses
  %i.kk = load double, ptr %gep587.3, align 8, !tbaa !9
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.id, double %i.kj, double %i.kk)
  store double %i.kl, ptr %gep587.3, align 8, !tbaa !9
  %indvars.iv.next534.3 = add nuw nsw i64 %indvars.iv533, 4 ; 2 uses
  %exitcond537.not.3 = icmp eq i64 %indvars.iv.next534.3, %wide.trip.count536
  br i1 %exitcond537.not.3, label %.loopexit479, label %.lr.ph499, !llvm.loop !32

bb.ab:                                            ; preds = %bb.z
  store i32 %i.hn, ptr %7, align 4, !tbaa !8
  br label %.loopexit

bb.ac:                                            ; preds = %bb.y
  store double %i.ht, ptr %i.hp, align 8, !tbaa !9
  %i.km = zext nneg i32 %i.h to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.km ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !9 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ho ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !9
  %i.kr = fneg double %i.hq
  %i.ks = fdiv double %i.kr, %i.ht                ; 7 uses
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.ko, double %i.kq)
  store double %i.kt, ptr %i.kn, align 8, !tbaa !9
  store double %i.ko, ptr %i.kp, align 8, !tbaa !9
  %.not471500 = icmp eq i32 %i.j, 0
  br i1 %.not471500, label %.loopexit479, label %.lr.ph503.preheader

.lr.ph503.preheader:                              ; preds = %bb.ac
  %i.ku = sext i32 %i.e to i64                    ; 5 uses
  %i.kv = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.kw = zext nneg i32 %i.h to i64               ; 2 uses
  %i.kx = add nuw i32 %i.j, 1
  %wide.trip.count541 = zext i32 %i.kx to i64     ; 3 uses
  %invariant.gep588 = getelementptr [8 x i8], ptr %i.g, i64 %i.kv ; 6 uses
  %invariant.gep590 = getelementptr [8 x i8], ptr %i.g, i64 %i.kw ; 6 uses
  %i.ky = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check647 = icmp ugt i32 %i.j, 19
  %ident.check638.not = icmp eq i32 %i.e, 1
  %or.cond817 = select i1 %min.iters.check647, i1 %ident.check638.not, i1 false
  br i1 %or.cond817, label %vector.memcheck639, label %.lr.ph503.preheader820

vector.memcheck639:                               ; preds = %.lr.ph503.preheader
  %i.kz = shl nuw nsw i64 %i.kv, 3                ; 2 uses
  %i.la = getelementptr i8, ptr %5, i64 %i.kz
  %scevgep640 = getelementptr i8, ptr %i.la, i64 -8
  %i.lb = shl nuw nsw i64 %wide.trip.count541, 3  ; 2 uses
  %i.lc = getelementptr i8, ptr %5, i64 %i.kz
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.lb
  %scevgep641 = getelementptr i8, ptr %i.ld, i64 -16
  %i.le = shl nuw nsw i64 %i.kw, 3                ; 2 uses
  %i.lf = getelementptr i8, ptr %5, i64 %i.le
  %scevgep642 = getelementptr i8, ptr %i.lf, i64 -8
  %i.lg = getelementptr i8, ptr %5, i64 %i.le
  %i.lh = getelementptr i8, ptr %i.lg, i64 %i.lb
  %scevgep643 = getelementptr i8, ptr %i.lh, i64 -16
  %bound0644 = icmp ult ptr %scevgep640, %scevgep643
  %bound1645 = icmp ult ptr %scevgep642, %scevgep641
  %found.conflict646 = and i1 %bound0644, %bound1645
  br i1 %found.conflict646, label %.lr.ph503.preheader820, label %vector.ph648

vector.ph648:                                     ; preds = %vector.memcheck639
  %n.vec650 = and i64 %i.ky, 2147483640           ; 3 uses
  %i.li = or disjoint i64 %n.vec650, 1
  %broadcast.splatinsert651 = insertelement <4 x double> poison, double %i.ks, i64 0
  %broadcast.splat652 = shufflevector <4 x double> %broadcast.splatinsert651, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph648
  %index654 = phi i64 [ 0, %vector.ph648 ], [ %index.next659, %vector.body653 ] ; 2 uses
  %i.lj = or disjoint i64 %index654, 1            ; 2 uses
  %i.lk = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.lj ; 3 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 32     ; 2 uses
  %wide.load655 = load <4 x double>, ptr %i.lk, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %wide.load656 = load <4 x double>, ptr %i.ll, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %i.lm = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.lj ; 3 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 32     ; 2 uses
  %wide.load657 = load <4 x double>, ptr %i.lm, align 8, !tbaa !9, !alias.scope !36 ; 2 uses
  %wide.load658 = load <4 x double>, ptr %i.ln, align 8, !tbaa !9, !alias.scope !36 ; 2 uses
  store <4 x double> %wide.load657, ptr %i.lk, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  store <4 x double> %wide.load658, ptr %i.ll, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %i.lo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat652, <4 x double> %wide.load657, <4 x double> %wide.load655)
  %i.lp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat652, <4 x double> %wide.load658, <4 x double> %wide.load656)
  store <4 x double> %i.lo, ptr %i.lm, align 8, !tbaa !9, !alias.scope !36
  store <4 x double> %i.lp, ptr %i.ln, align 8, !tbaa !9, !alias.scope !36
  %index.next659 = add nuw i64 %index654, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next659, %n.vec650
  br i1 %i.lq, label %middle.block660, label %vector.body653, !llvm.loop !38

middle.block660:                                  ; preds = %vector.body653
  %cmp.n661 = icmp eq i64 %n.vec650, %i.ky
  br i1 %cmp.n661, label %.loopexit479, label %.lr.ph503.preheader820

.lr.ph503.preheader820:                           ; preds = %vector.memcheck639, %.lr.ph503.preheader, %middle.block660
  %indvars.iv538.ph = phi i64 [ 1, %vector.memcheck639 ], [ 1, %.lr.ph503.preheader ], [ %i.li, %middle.block660 ] ; 4 uses
  %i.lr = sub nsw i64 %wide.trip.count541, %indvars.iv538.ph
  %i.ls = zext nneg i32 %i.j to i64
  %i.lt = sub nsw i64 %i.ls, %indvars.iv538.ph
  %xtraiter846 = and i64 %i.lr, 3                 ; 2 uses
  %lcmp.mod847.not = icmp eq i64 %xtraiter846, 0
  br i1 %lcmp.mod847.not, label %.lr.ph503.prol.loopexit, label %.lr.ph503.prol

.lr.ph503.prol:                                   ; preds = %.lr.ph503.preheader820, %.lr.ph503.prol
  %indvars.iv538.prol = phi i64 [ %indvars.iv.next539.prol, %.lr.ph503.prol ], [ %indvars.iv538.ph, %.lr.ph503.preheader820 ] ; 2 uses
  %prol.iter848 = phi i64 [ %prol.iter848.next, %.lr.ph503.prol ], [ 0, %.lr.ph503.preheader820 ]
  %i.lu = mul nsw i64 %indvars.iv538.prol, %i.ku  ; 2 uses
  %gep589.prol = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.lu ; 2 uses
  %i.lv = load double, ptr %gep589.prol, align 8, !tbaa !9
  %gep591.prol = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.lu ; 2 uses
  %i.lw = load double, ptr %gep591.prol, align 8, !tbaa !9 ; 2 uses
  store double %i.lw, ptr %gep589.prol, align 8, !tbaa !9
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.lw, double %i.lv)
  store double %i.lx, ptr %gep591.prol, align 8, !tbaa !9
  %indvars.iv.next539.prol = add nuw nsw i64 %indvars.iv538.prol, 1 ; 2 uses
  %prol.iter848.next = add i64 %prol.iter848, 1   ; 2 uses
  %prol.iter848.cmp.not = icmp eq i64 %prol.iter848.next, %xtraiter846
  br i1 %prol.iter848.cmp.not, label %.lr.ph503.prol.loopexit, label %.lr.ph503.prol, !llvm.loop !39

.lr.ph503.prol.loopexit:                          ; preds = %.lr.ph503.prol, %.lr.ph503.preheader820
  %indvars.iv538.unr = phi i64 [ %indvars.iv538.ph, %.lr.ph503.preheader820 ], [ %indvars.iv.next539.prol, %.lr.ph503.prol ]
  %i.ly = icmp ult i64 %i.lt, 3
  br i1 %i.ly, label %.loopexit479, label %.lr.ph503

.lr.ph503:                                        ; preds = %.lr.ph503.prol.loopexit, %.lr.ph503
  %indvars.iv538 = phi i64 [ %indvars.iv.next539.3, %.lr.ph503 ], [ %indvars.iv538.unr, %.lr.ph503.prol.loopexit ] ; 5 uses
  %i.lz = mul nsw i64 %indvars.iv538, %i.ku       ; 2 uses
  %gep589 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.lz ; 2 uses
  %i.ma = load double, ptr %gep589, align 8, !tbaa !9
  %gep591 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.lz ; 2 uses
  %i.mb = load double, ptr %gep591, align 8, !tbaa !9 ; 2 uses
  store double %i.mb, ptr %gep589, align 8, !tbaa !9
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.mb, double %i.ma)
  store double %i.mc, ptr %gep591, align 8, !tbaa !9
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1
  %i.md = mul nsw i64 %indvars.iv.next539, %i.ku  ; 2 uses
  %gep589.1 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.md ; 2 uses
  %i.me = load double, ptr %gep589.1, align 8, !tbaa !9
  %gep591.1 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.md ; 2 uses
  %i.mf = load double, ptr %gep591.1, align 8, !tbaa !9 ; 2 uses
  store double %i.mf, ptr %gep589.1, align 8, !tbaa !9
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.mf, double %i.me)
  store double %i.mg, ptr %gep591.1, align 8, !tbaa !9
  %indvars.iv.next539.1 = add nuw nsw i64 %indvars.iv538, 2
  %i.mh = mul nsw i64 %indvars.iv.next539.1, %i.ku ; 2 uses
  %gep589.2 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.mh ; 2 uses
  %i.mi = load double, ptr %gep589.2, align 8, !tbaa !9
  %gep591.2 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.mh ; 2 uses
  %i.mj = load double, ptr %gep591.2, align 8, !tbaa !9 ; 2 uses
  store double %i.mj, ptr %gep589.2, align 8, !tbaa !9
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.mj, double %i.mi)
  store double %i.mk, ptr %gep591.2, align 8, !tbaa !9
  %indvars.iv.next539.2 = add nuw nsw i64 %indvars.iv538, 3
  %i.ml = mul nsw i64 %indvars.iv.next539.2, %i.ku ; 2 uses
  %gep589.3 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.ml ; 2 uses
  %i.mm = load double, ptr %gep589.3, align 8, !tbaa !9
  %gep591.3 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.ml ; 2 uses
  %i.mn = load double, ptr %gep591.3, align 8, !tbaa !9 ; 2 uses
  store double %i.mn, ptr %gep589.3, align 8, !tbaa !9
  %i.mo = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.mn, double %i.mm)
  store double %i.mo, ptr %gep591.3, align 8, !tbaa !9
  %indvars.iv.next539.3 = add nuw nsw i64 %indvars.iv538, 4 ; 2 uses
  %exitcond542.not.3 = icmp eq i64 %indvars.iv.next539.3, %wide.trip.count541
  br i1 %exitcond542.not.3, label %.loopexit479, label %.lr.ph503, !llvm.loop !40

.loopexit479:                                     ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499, %.lr.ph503.prol.loopexit, %.lr.ph503, %middle.block, %vec.epilog.middle.block, %middle.block660, %bb.aa, %bb.ac, %._crit_edge495
  %i.mp = zext nneg i32 %i.h to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !9
  %i.ms = fcmp oeq double %i.mr, 0.000000e+00
  br i1 %i.ms, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.loopexit479
  store i32 %i.h, ptr %7, align 4, !tbaa !8
  br label %.loopexit

bb.ae:                                            ; preds = %.loopexit479, %bb.q
  %i.mt = icmp slt i32 %i.j, 3
  %i.mu = zext nneg i32 %i.h to i64               ; 3 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mu ; 3 uses
  %i.mw = icmp sgt i32 %i.h, 1                    ; 3 uses
  %i.mx = sext i32 %i.e to i64                    ; 11 uses
  br i1 %i.mt, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.ae
  %i.my = add nsw i32 %i.h, -2                    ; 7 uses
  %i.mz = icmp sgt i32 %i.h, 2                    ; 2 uses
  %i.na = add nsw i32 %i.h, -1                    ; 2 uses
  %i.nb = zext nneg i32 %i.na to i64              ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.nb ; 2 uses
  %i.ne = sext i32 %i.my to i64                   ; 15 uses
  %i.nf = zext nneg i32 %i.na to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %invariant.gep608 = getelementptr [8 x i8], ptr %i.g, i64 %i.mu ; 2 uses
  %invariant.gep610 = getelementptr [8 x i8], ptr %i.g, i64 %i.nf ; 2 uses
  %i.ng = icmp ne i32 %i.my, 0
  %umin730.neg = sext i1 %i.ng to i64
  %i.nh = add nsw i64 %umin730.neg, %i.ne         ; 6 uses
  %i.ni = sext i32 %i.e to i35                    ; 2 uses
  %i.nj = sext i32 %i.my to i35
  %i.nk = add nsw i35 %i.ni, %i.nj                ; 2 uses
  %i.nl = shl i35 %i.nk, 3
  %i.nm = add i35 %i.nl, 8                        ; 3 uses
  %i.nn = shl nsw i35 %i.ni, 3                    ; 2 uses
  %i.no = shl i35 %i.nk, 3
  %i.np = add i35 %i.no, 16                       ; 3 uses
  %i.nq = icmp ne i32 %i.my, 0                    ; 2 uses
  %umin740 = zext i1 %i.nq to i64
  %i.nr = add nsw i64 %umin740, %i.mx
  %i.ns = add nsw i64 %i.nr, %i.f
  %i.nt = shl nsw i64 %i.ns, 3
  %scevgep741.a = getelementptr i8, ptr %5, i64 %i.nt ; 10 uses
  %i.nu = zext nneg i32 %smax to i64
  %i.nv = mul nsw i64 %i.mx, %i.nu
  %i.nw = shl nsw i64 %i.f, 3                     ; 2 uses
  %i.nx = add i64 %i.nv, %i.f
  %i.ny = shl nsw i64 %i.ne, 3                    ; 4 uses
  %i.nz = add i64 %i.nx, %i.ne
  %i.oa = shl i64 %i.nz, 3
  %i.ob = getelementptr i8, ptr %5, i64 %i.oa
  %scevgep742.a = getelementptr i8, ptr %i.ob, i64 8 ; 10 uses
  %i.oc = select i1 %i.nq, i64 8, i64 0           ; 2 uses
  %i.od = add nsw i64 %i.oc, -8                   ; 3 uses
  %scevgep743.a = getelementptr i8, ptr %4, i64 %i.od ; 2 uses
  %scevgep744.a = getelementptr i8, ptr %4, i64 %i.ny ; 2 uses
  %i.oe = add nsw i64 %i.oc, %i.nw
  %i.of = sub nsw i64 %i.oe, %i.ny                ; 2 uses
  %scevgep745.a = getelementptr i8, ptr %5, i64 %i.of ; 2 uses
  %i.og = sext i32 %i.e to i35                    ; 3 uses
  %i.oh = sext i32 %i.my to i35                   ; 2 uses
  %i.oi = add nsw i35 %i.og, %i.oh
  %i.oj = shl i35 %i.oi, 3
  %i.ok = add i35 %i.oj, 8                        ; 2 uses
  %i.ol = shl nsw i35 %i.og, 3                    ; 2 uses
  %i.om = add nsw i64 %i.nw, 8                    ; 2 uses
  %scevgep747.a = getelementptr i8, ptr %5, i64 %i.om ; 2 uses
  %scevgep749.a = getelementptr i8, ptr %2, i64 %i.od ; 2 uses
  %scevgep750.a = getelementptr i8, ptr %2, i64 %i.ny ; 2 uses
  %scevgep751 = getelementptr i8, ptr %5, i64 %i.of ; 2 uses
  %i.on = add nsw i35 %i.og, %i.oh
  %i.oo = shl i35 %i.on, 3
  %i.op = add i35 %i.oo, 16                       ; 2 uses
  %scevgep753 = getelementptr i8, ptr %5, i64 %i.om ; 2 uses
  %scevgep755 = getelementptr i8, ptr %3, i64 %i.od ; 2 uses
  %scevgep756 = getelementptr i8, ptr %3, i64 %i.ny ; 2 uses
  %i.oq = sext i35 %i.ok to i64                   ; 2 uses
  %scevgep746.a = getelementptr i8, ptr %scevgep745.a, i64 %i.oq
  %scevgep748.a = getelementptr i8, ptr %scevgep747.a, i64 %i.oq
  %i.or = sext i35 %i.op to i64                   ; 2 uses
  %scevgep752 = getelementptr i8, ptr %scevgep751, i64 %i.or
  %scevgep754 = getelementptr i8, ptr %scevgep753, i64 %i.or
  %i.os = load double, ptr %i.mv, align 8, !tbaa !9
  %gep609 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.mx ; 2 uses
  %i.ot = load double, ptr %gep609, align 8, !tbaa !9
  %i.ou = fdiv double %i.ot, %i.os                ; 2 uses
  store double %i.ou, ptr %gep609, align 8, !tbaa !9
  br i1 %i.mw, label %bb.af, label %._crit_edge517

bb.af:                                            ; preds = %.preheader
  %gep611 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.mx ; 2 uses
  %i.ov = load double, ptr %gep611, align 8, !tbaa !9
  %i.ow = load double, ptr %i.nc, align 8, !tbaa !9
  %i.ox = fneg double %i.ow
  %i.oy = tail call double @llvm.fmuladd.f64(double %i.ox, double %i.ou, double %i.ov)
  %i.oz = load double, ptr %i.nd, align 8, !tbaa !9
  %i.pa = fdiv double %i.oy, %i.oz
  store double %i.pa, ptr %gep611, align 8, !tbaa !9
  br i1 %i.mz, label %.lr.ph516, label %._crit_edge517

.lr.ph516:                                        ; preds = %bb.af
  %i.pb = add nsw i64 %i.mx, 1                    ; 2 uses
  %i.pc = add nsw i64 %i.mx, 2                    ; 2 uses
  %invariant.gep606 = getelementptr [8 x i8], ptr %i.g, i64 %i.mx ; 2 uses
  %i.pd = icmp ne i32 %i.my, 0
  %.neg816 = sext i1 %i.pd to i64
  %i.pe = add nsw i64 %.neg816, %i.ne
  %i.pf = add nsw i64 %i.pe, 1                    ; 3 uses
  %min.iters.check782 = icmp ult i64 %i.pf, 20
  br i1 %min.iters.check782, label %scalar.ph781.preheader, label %vector.scevcheck729

vector.scevcheck729:                              ; preds = %.lr.ph516
  %i.pg = trunc nsw i64 %i.nh to i35
  %mul.result734 = shl i35 %i.pg, 3
  %8 = sub i35 %i.nm, %mul.result734
  %9 = icmp sgt i35 %8, %i.nm
  %10 = trunc nsw i64 %i.nh to i35
  %mul.result737 = shl i35 %10, 3
  %mul.overflow738 = icmp ugt i64 %i.nh, 4294967295
  %i.ph = sub i35 %i.np, %mul.result737
  %i.pi = icmp sgt i35 %i.ph, %i.np
  %i.pj = or i1 %i.pi, %mul.overflow738
  %i.pk = or i1 %9, %i.pj
  br i1 %i.pk, label %scalar.ph781.preheader, label %vector.memcheck739

vector.memcheck739:                               ; preds = %vector.scevcheck729
  %bound0757 = icmp ult ptr %scevgep741.a, %scevgep744.a
  %bound1758 = icmp ult ptr %scevgep743.a, %scevgep742.a
  %found.conflict759 = and i1 %bound0757, %bound1758
  %bound0761 = icmp ult ptr %scevgep741.a, %scevgep748.a
  %bound1762 = icmp ult ptr %scevgep746.a, %scevgep742.a
  %found.conflict763 = and i1 %bound0761, %bound1762
  %stride.check764 = icmp slt i32 %i.e, 0
  %i.pl = or i1 %found.conflict763, %stride.check764
  %conflict.rdx765 = or i1 %found.conflict759, %i.pl
  %bound0766 = icmp ult ptr %scevgep741.a, %scevgep750.a
  %bound1767 = icmp ult ptr %scevgep749.a, %scevgep742.a
  %found.conflict768 = and i1 %bound0766, %bound1767
  %conflict.rdx770 = or i1 %found.conflict768, %conflict.rdx765
  %bound0771 = icmp ult ptr %scevgep741.a, %scevgep754
  %bound1772 = icmp ult ptr %scevgep752, %scevgep742.a
  %found.conflict773 = and i1 %bound0771, %bound1772
  %conflict.rdx775 = or i1 %found.conflict773, %conflict.rdx770
  %bound0776 = icmp ult ptr %scevgep741.a, %scevgep756
  %bound1777 = icmp ult ptr %scevgep755, %scevgep742.a
  %found.conflict778 = and i1 %bound0776, %bound1777
  %conflict.rdx780 = or i1 %found.conflict778, %conflict.rdx775
  br i1 %conflict.rdx780, label %scalar.ph781.preheader, label %vector.ph783

vector.ph783:                                     ; preds = %vector.memcheck739
  %n.vec785 = and i64 %i.pf, -4                   ; 3 uses
  %i.pm = sub nsw i64 %i.ne, %n.vec785
  br label %vector.body786

vector.body786:                                   ; preds = %vector.body786, %vector.ph783
  %index787 = phi i64 [ 0, %vector.ph783 ], [ %index.next801, %vector.body786 ] ; 2 uses
  %i.pn = sub i64 %i.ne, %index787                ; 6 uses
  %i.po = getelementptr [8 x i8], ptr %invariant.gep606, i64 %i.pn
  %i.pp = getelementptr i8, ptr %i.po, i64 -24    ; 2 uses
  %wide.load788.a = load <4 x double>, ptr %i.pp, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pn
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 -24
  %wide.load790 = load <4 x double>, ptr %i.pr, align 8, !tbaa !9, !alias.scope !50
  %i.ps = add i64 %i.pb, %i.pn
  %i.pt = shl i64 %i.ps, 32
  %i.pu = ashr exact i64 %i.pt, 29
  %i.pv = getelementptr inbounds i8, ptr %i.g, i64 %i.pu
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 -24
  %wide.load791 = load <4 x double>, ptr %i.pw, align 8, !tbaa !9, !alias.scope !51
  %i.px = fneg <4 x double> %wide.load790
  %i.py = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.px, <4 x double> %wide.load791, <4 x double> %wide.load788.a)
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pn
  %i.qa = getelementptr inbounds i8, ptr %i.pz, i64 -24
  %wide.load794 = load <4 x double>, ptr %i.qa, align 8, !tbaa !9, !alias.scope !52
  %i.qb = add i64 %i.pc, %i.pn
  %i.qc = shl i64 %i.qb, 32
  %i.qd = ashr exact i64 %i.qc, 29
  %i.qe = getelementptr inbounds i8, ptr %i.g, i64 %i.qd
  %i.qf = getelementptr inbounds i8, ptr %i.qe, i64 -24
  %wide.load795 = load <4 x double>, ptr %i.qf, align 8, !tbaa !9, !alias.scope !53
  %i.qg = fneg <4 x double> %wide.load794
  %i.qh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qg, <4 x double> %wide.load795, <4 x double> %i.py)
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pn
  %i.qj = getelementptr inbounds i8, ptr %i.qi, i64 -24
  %wide.load798 = load <4 x double>, ptr %i.qj, align 8, !tbaa !9, !alias.scope !54
  %i.qk = fdiv <4 x double> %i.qh, %wide.load798
  store <4 x double> %i.qk, ptr %i.pp, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  %index.next801 = add nuw i64 %index787, 4       ; 2 uses
  %i.ql = icmp eq i64 %index.next801, %n.vec785
  br i1 %i.ql, label %middle.block802, label %vector.body786, !llvm.loop !55

middle.block802:                                  ; preds = %vector.body786
  %cmp.n803 = icmp eq i64 %i.pf, %n.vec785
  br i1 %cmp.n803, label %._crit_edge517, label %scalar.ph781.preheader

scalar.ph781.preheader:                           ; preds = %vector.memcheck739, %vector.scevcheck729, %.lr.ph516, %middle.block802
  %indvars.iv556.ph = phi i64 [ %i.ne, %vector.memcheck739 ], [ %i.ne, %vector.scevcheck729 ], [ %i.ne, %.lr.ph516 ], [ %i.pm, %middle.block802 ]
  br label %scalar.ph781

scalar.ph781:                                     ; preds = %scalar.ph781.preheader, %scalar.ph781
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %scalar.ph781 ], [ %indvars.iv556.ph, %scalar.ph781.preheader ] ; 8 uses
  %gep607 = getelementptr [8 x i8], ptr %invariant.gep606, i64 %indvars.iv556 ; 2 uses
  %i.qm = load double, ptr %gep607, align 8, !tbaa !9
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !9
  %i.qp = add i64 %i.pb, %indvars.iv556
  %sext570 = shl i64 %i.qp, 32
  %i.qq = ashr exact i64 %sext570, 29
  %i.qr = getelementptr inbounds i8, ptr %i.g, i64 %i.qq
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !9
  %i.qt = fneg double %i.qo
  %i.qu = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.qs, double %i.qm)
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !9
  %i.qx = add i64 %i.pc, %indvars.iv556
  %sext571 = shl i64 %i.qx, 32
  %i.qy = ashr exact i64 %sext571, 29
  %i.qz = getelementptr inbounds i8, ptr %i.g, i64 %i.qy
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !9
  %i.rb = fneg double %i.qw
  %i.rc = tail call double @llvm.fmuladd.f64(double %i.rb, double %i.ra, double %i.qu)
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556
  %i.re = load double, ptr %i.rd, align 8, !tbaa !9
  %i.rf = fdiv double %i.rc, %i.re
  store double %i.rf, ptr %gep607, align 8, !tbaa !9
  %indvars.iv.next557 = add nsw i64 %indvars.iv556, -1
  %i.rg = icmp samesign ugt i64 %indvars.iv556, 1
  br i1 %i.rg, label %scalar.ph781, label %._crit_edge517, !llvm.loop !56

._crit_edge517:                                   ; preds = %scalar.ph781, %middle.block802, %.preheader, %bb.af
  %exitcond563.not.not = icmp eq i32 %i.j, 2
  br i1 %exitcond563.not.not, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %._crit_edge517
  %i.rh = add i35 %i.ok, %i.ol
  %i.ri = sext i35 %i.rh to i64                   ; 2 uses
  %scevgep746.1.a = getelementptr i8, ptr %scevgep745.a, i64 %i.ri
  %scevgep748.1.a = getelementptr i8, ptr %scevgep747.a, i64 %i.ri
  %i.rj = add i35 %i.op, %i.ol
  %i.rk = sext i35 %i.rj to i64                   ; 2 uses
  %scevgep752.1 = getelementptr i8, ptr %scevgep751, i64 %i.rk
  %scevgep754.1 = getelementptr i8, ptr %scevgep753, i64 %i.rk
  %i.rl = add i35 %i.nm, %i.nn                    ; 2 uses
  %i.rm = add i35 %i.np, %i.nn                    ; 2 uses
  %i.rn = load double, ptr %i.mv, align 8, !tbaa !9
  %i.ro = shl nsw i64 %i.mx, 1                    ; 5 uses
  %gep609.1 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.ro ; 2 uses
  %i.rp = load double, ptr %gep609.1, align 8, !tbaa !9
  %i.rq = fdiv double %i.rp, %i.rn                ; 2 uses
  store double %i.rq, ptr %gep609.1, align 8, !tbaa !9
  br i1 %i.mw, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %gep611.1 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.ro ; 2 uses
  %i.rr = load double, ptr %gep611.1, align 8, !tbaa !9
  %i.rs = load double, ptr %i.nc, align 8, !tbaa !9
  %i.rt = fneg double %i.rs
  %i.ru = tail call double @llvm.fmuladd.f64(double %i.rt, double %i.rq, double %i.rr)
  %i.rv = load double, ptr %i.nd, align 8, !tbaa !9
  %i.rw = fdiv double %i.ru, %i.rv
  store double %i.rw, ptr %gep611.1, align 8, !tbaa !9
  br i1 %i.mz, label %.lr.ph516.1, label %.loopexit

.lr.ph516.1:                                      ; preds = %bb.ah
  %i.rx = or disjoint i64 %i.ro, 1                ; 2 uses
  %i.ry = add nsw i64 %i.ro, 2                    ; 2 uses
  %invariant.gep606.1 = getelementptr [8 x i8], ptr %i.g, i64 %i.ro ; 2 uses
  %i.rz = icmp ne i32 %i.my, 0
  %.neg816.1 = sext i1 %i.rz to i64
  %i.sa = add nsw i64 %.neg816.1, %i.ne
  %i.sb = add nsw i64 %i.sa, 1                    ; 3 uses
  %min.iters.check782.1 = icmp ult i64 %i.sb, 20
  br i1 %min.iters.check782.1, label %scalar.ph781.preheader.1, label %vector.scevcheck729.1

vector.scevcheck729.1:                            ; preds = %.lr.ph516.1
  %i.sc = trunc nsw i64 %i.nh to i35
  %mul.result734.1 = shl i35 %i.sc, 3
  %11 = sub i35 %i.rl, %mul.result734.1
  %12 = icmp sgt i35 %11, %i.rl
  %13 = trunc nsw i64 %i.nh to i35
  %mul.result737.1 = shl i35 %13, 3
  %mul.overflow738.1 = icmp ugt i64 %i.nh, 4294967295
  %i.sd = sub i35 %i.rm, %mul.result737.1
  %i.se = icmp sgt i35 %i.sd, %i.rm
  %i.sf = or i1 %i.se, %mul.overflow738.1
  %i.sg = or i1 %12, %i.sf
  br i1 %i.sg, label %scalar.ph781.preheader.1, label %vector.memcheck739.1

vector.memcheck739.1:                             ; preds = %vector.scevcheck729.1
  %bound0757.1 = icmp ult ptr %scevgep741.a, %scevgep744.a
  %bound1758.1 = icmp ult ptr %scevgep743.a, %scevgep742.a
  %found.conflict759.1 = and i1 %bound0757.1, %bound1758.1
  %bound0761.1 = icmp ult ptr %scevgep741.a, %scevgep748.1.a
  %bound1762.1 = icmp ult ptr %scevgep746.1.a, %scevgep742.a
  %found.conflict763.1 = and i1 %bound0761.1, %bound1762.1
  %stride.check764.1 = icmp slt i32 %i.e, 0
  %i.sh = or i1 %found.conflict763.1, %stride.check764.1
  %conflict.rdx765.1 = or i1 %found.conflict759.1, %i.sh
  %bound0766.1 = icmp ult ptr %scevgep741.a, %scevgep750.a
  %bound1767.1 = icmp ult ptr %scevgep749.a, %scevgep742.a
  %found.conflict768.1 = and i1 %bound0766.1, %bound1767.1
  %conflict.rdx770.1 = or i1 %found.conflict768.1, %conflict.rdx765.1
  %bound0771.1 = icmp ult ptr %scevgep741.a, %scevgep754.1
  %bound1772.1 = icmp ult ptr %scevgep752.1, %scevgep742.a
  %found.conflict773.1 = and i1 %bound0771.1, %bound1772.1
  %conflict.rdx775.1 = or i1 %found.conflict773.1, %conflict.rdx770.1
  %bound0776.1 = icmp ult ptr %scevgep741.a, %scevgep756
  %bound1777.1 = icmp ult ptr %scevgep755, %scevgep742.a
  %found.conflict778.1 = and i1 %bound0776.1, %bound1777.1
  %conflict.rdx780.1 = or i1 %found.conflict778.1, %conflict.rdx775.1
  br i1 %conflict.rdx780.1, label %scalar.ph781.preheader.1, label %vector.ph783.1

vector.ph783.1:                                   ; preds = %vector.memcheck739.1
  %n.vec785.1 = and i64 %i.sb, -4                 ; 3 uses
  %i.si = sub nsw i64 %i.ne, %n.vec785.1
  br label %vector.body786.1

vector.body786.1:                                 ; preds = %vector.body786.1, %vector.ph783.1
  %index787.1 = phi i64 [ 0, %vector.ph783.1 ], [ %index.next801.1, %vector.body786.1 ] ; 2 uses
  %i.sj = sub i64 %i.ne, %index787.1              ; 6 uses
  %i.sk = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %i.sj
  %i.sl = getelementptr i8, ptr %i.sk, i64 -24    ; 2 uses
  %wide.load788.1.a = load <4 x double>, ptr %i.sl, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.sj
  %i.sn = getelementptr inbounds i8, ptr %i.sm, i64 -24
  %wide.load790.1 = load <4 x double>, ptr %i.sn, align 8, !tbaa !9, !alias.scope !50
  %i.so = add i64 %i.rx, %i.sj
  %i.sp = shl i64 %i.so, 32
  %i.sq = ashr exact i64 %i.sp, 29
  %i.sr = getelementptr inbounds i8, ptr %i.g, i64 %i.sq
  %i.ss = getelementptr inbounds i8, ptr %i.sr, i64 -24
  %wide.load791.1 = load <4 x double>, ptr %i.ss, align 8, !tbaa !9, !alias.scope !51
  %i.st = fneg <4 x double> %wide.load790.1
  %i.su = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.st, <4 x double> %wide.load791.1, <4 x double> %wide.load788.1.a)
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.sj
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 -24
  %wide.load794.1 = load <4 x double>, ptr %i.sw, align 8, !tbaa !9, !alias.scope !52
  %i.sx = add i64 %i.ry, %i.sj
  %i.sy = shl i64 %i.sx, 32
  %i.sz = ashr exact i64 %i.sy, 29
  %i.ta = getelementptr inbounds i8, ptr %i.g, i64 %i.sz
  %i.tb = getelementptr inbounds i8, ptr %i.ta, i64 -24
  %wide.load795.1 = load <4 x double>, ptr %i.tb, align 8, !tbaa !9, !alias.scope !53
  %i.tc = fneg <4 x double> %wide.load794.1
  %i.td = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tc, <4 x double> %wide.load795.1, <4 x double> %i.su)
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.sj
  %i.tf = getelementptr inbounds i8, ptr %i.te, i64 -24
  %wide.load798.1 = load <4 x double>, ptr %i.tf, align 8, !tbaa !9, !alias.scope !54
  %i.tg = fdiv <4 x double> %i.td, %wide.load798.1
  store <4 x double> %i.tg, ptr %i.sl, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  %index.next801.1 = add nuw i64 %index787.1, 4   ; 2 uses
  %i.th = icmp eq i64 %index.next801.1, %n.vec785.1
  br i1 %i.th, label %middle.block802.1, label %vector.body786.1, !llvm.loop !55

middle.block802.1:                                ; preds = %vector.body786.1
  %cmp.n803.1 = icmp eq i64 %i.sb, %n.vec785.1
  br i1 %cmp.n803.1, label %.loopexit, label %scalar.ph781.preheader.1

scalar.ph781.preheader.1:                         ; preds = %middle.block802.1, %vector.memcheck739.1, %vector.scevcheck729.1, %.lr.ph516.1
  %indvars.iv556.ph.1 = phi i64 [ %i.ne, %vector.memcheck739.1 ], [ %i.ne, %vector.scevcheck729.1 ], [ %i.ne, %.lr.ph516.1 ], [ %i.si, %middle.block802.1 ]
  br label %scalar.ph781.1

scalar.ph781.1:                                   ; preds = %scalar.ph781.1, %scalar.ph781.preheader.1
  %indvars.iv556.1 = phi i64 [ %indvars.iv.next557.1, %scalar.ph781.1 ], [ %indvars.iv556.ph.1, %scalar.ph781.preheader.1 ] ; 8 uses
  %gep607.1 = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %indvars.iv556.1 ; 2 uses
  %i.ti = load double, ptr %gep607.1, align 8, !tbaa !9
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556.1
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !9
  %i.tl = add i64 %i.rx, %indvars.iv556.1
  %sext570.1 = shl i64 %i.tl, 32
  %i.tm = ashr exact i64 %sext570.1, 29
  %i.tn = getelementptr inbounds i8, ptr %i.g, i64 %i.tm
  %i.to = load double, ptr %i.tn, align 8, !tbaa !9
  %i.tp = fneg double %i.tk
  %i.tq = tail call double @llvm.fmuladd.f64(double %i.tp, double %i.to, double %i.ti)
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556.1
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !9
  %i.tt = add i64 %i.ry, %indvars.iv556.1
  %sext571.1 = shl i64 %i.tt, 32
  %i.tu = ashr exact i64 %sext571.1, 29
  %i.tv = getelementptr inbounds i8, ptr %i.g, i64 %i.tu
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !9
  %i.tx = fneg double %i.ts
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.tx, double %i.tw, double %i.tq)
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556.1
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !9
  %i.ub = fdiv double %i.ty, %i.ua
  store double %i.ub, ptr %gep607.1, align 8, !tbaa !9
  %indvars.iv.next557.1 = add nsw i64 %indvars.iv556.1, -1
  %i.uc = icmp samesign ugt i64 %indvars.iv556.1, 1
  br i1 %i.uc, label %scalar.ph781.1, label %.loopexit, !llvm.loop !56

bb.ai:                                            ; preds = %bb.ae
  %i.ud = add nsw i32 %i.h, -1                    ; 2 uses
  %i.ue = zext nneg i32 %i.ud to i64              ; 2 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ue
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ue
  %i.uh = add nsw i32 %i.h, -2                    ; 6 uses
  %i.ui = icmp sgt i32 %i.h, 2
  %i.uj = sext i32 %i.uh to i64                   ; 8 uses
  %i.uk = zext nneg i32 %i.ud to i64
  %i.ul = add nuw i32 %i.j, 1
  %wide.trip.count554 = zext i32 %i.ul to i64     ; 2 uses
  %invariant.gep602 = getelementptr [8 x i8], ptr %i.g, i64 %i.mu
  %invariant.gep604 = getelementptr [8 x i8], ptr %i.g, i64 %i.uk
  %i.um = icmp ne i32 %i.uh, 0
  %umin.neg = sext i1 %i.um to i64
  %i.un = add nsw i64 %umin.neg, %i.uj            ; 3 uses
  %i.uo = sext i32 %i.e to i35                    ; 2 uses
  %i.up = sext i32 %i.uh to i35
  %i.uq = add nsw i35 %i.uo, %i.up                ; 2 uses
  %i.ur = shl i35 %i.uq, 3
  %i.us = add i35 %i.ur, 8
  %i.ut = shl nsw i35 %i.uo, 3
  %i.uu = shl i35 %i.uq, 3
  %i.uv = add i35 %i.uu, 16
  %i.uw = icmp ne i32 %i.uh, 0                    ; 2 uses
  %umin667 = zext i1 %i.uw to i64
  %i.ux = add nsw i64 %umin667, %i.mx
  %i.uy = add nsw i64 %i.ux, %i.f
  %i.uz = shl nsw i64 %i.uy, 3
  %scevgep668.a = getelementptr i8, ptr %5, i64 %i.uz ; 5 uses
  %i.va = shl nuw nsw i64 %wide.trip.count554, 3
  %i.vb = add nsw i64 %i.va, -8
  %i.vc = mul i64 %i.vb, %i.mx
  %i.vd = shl nsw i64 %i.f, 3                     ; 3 uses
  %i.ve = shl nsw i64 %i.uj, 3                    ; 5 uses
  %i.vf = getelementptr i8, ptr %5, i64 %i.vc
  %i.vg = getelementptr i8, ptr %i.vf, i64 %i.vd
  %i.vh = getelementptr i8, ptr %i.vg, i64 %i.ve
  %scevgep669.a = getelementptr i8, ptr %i.vh, i64 8 ; 5 uses
  %i.vi = select i1 %i.uw, i64 8, i64 0           ; 2 uses
  %i.vj = add nsw i64 %i.vi, -8                   ; 3 uses
  %scevgep670.a = getelementptr i8, ptr %4, i64 %i.vj
  %scevgep671.a = getelementptr i8, ptr %4, i64 %i.ve
  %i.vk = add nsw i64 %i.vi, %i.vd
  %i.vl = sub nsw i64 %i.vk, %i.ve                ; 2 uses
  %scevgep672.a = getelementptr i8, ptr %5, i64 %i.vl
  %i.vm = sext i32 %i.e to i35                    ; 3 uses
  %i.vn = sext i32 %i.uh to i35                   ; 2 uses
  %i.vo = add nsw i35 %i.vm, %i.vn
  %i.vp = shl i35 %i.vo, 3
  %i.vq = add i35 %i.vp, 8
  %i.vr = shl nsw i35 %i.vm, 3
  %i.vs = add nsw i64 %i.vd, 8                    ; 2 uses
  %scevgep674.a = getelementptr i8, ptr %5, i64 %i.vs
  %scevgep676.a = getelementptr i8, ptr %2, i64 %i.vj
  %scevgep677.a = getelementptr i8, ptr %2, i64 %i.ve
  %scevgep678.a = getelementptr i8, ptr %5, i64 %i.vl
  %i.vt = add nsw i35 %i.vm, %i.vn
  %i.vu = shl i35 %i.vt, 3
  %i.vv = add i35 %i.vu, 16
  %scevgep680.a = getelementptr i8, ptr %5, i64 %i.vs
  %scevgep682 = getelementptr i8, ptr %3, i64 %i.vj
  %scevgep683 = getelementptr i8, ptr %3, i64 %i.ve
  %i.vw = icmp ne i32 %i.uh, 0
  %.neg815 = sext i1 %i.vw to i64
  %i.vx = add nsw i64 %.neg815, %i.uj
  %i.vy = add nsw i64 %i.vx, 1                    ; 3 uses
  %min.iters.check707 = icmp ult i64 %i.vy, 20
  %14 = trunc nsw i64 %i.un to i35
  %mul.result = shl i35 %14, 3
  %i.vz = trunc nsw i64 %i.un to i35
  %mul.result664 = shl i35 %i.vz, 3
  %mul.overflow665 = icmp ugt i64 %i.un, 4294967295
  %bound0684.a = icmp ult ptr %scevgep668.a, %scevgep671.a
  %bound1685.a = icmp ult ptr %scevgep670.a, %scevgep669.a
  %found.conflict686.a = and i1 %bound0684.a, %bound1685.a
  %stride.check690 = icmp slt i32 %i.e, 0
  %invariant.op = or i1 %stride.check690, %found.conflict686.a
  %bound0691 = icmp ult ptr %scevgep668.a, %scevgep677.a
  %bound1692 = icmp ult ptr %scevgep676.a, %scevgep669.a
  %found.conflict693 = and i1 %bound0691, %bound1692
  %invariant.op852 = or i1 %invariant.op, %found.conflict693
  %bound0701 = icmp ult ptr %scevgep668.a, %scevgep683
  %bound1702 = icmp ult ptr %scevgep682, %scevgep669.a
  %found.conflict703 = and i1 %bound0701, %bound1702
  %n.vec710 = and i64 %i.vy, -4                   ; 3 uses
  %i.wa = sub nsw i64 %i.uj, %n.vec710
  %cmp.n727 = icmp eq i64 %i.vy, %n.vec710
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge512
  %indvar = phi i35 [ 0, %bb.ai ], [ %indvar.next, %._crit_edge512 ] ; 3 uses
  %indvars.iv551 = phi i64 [ 1, %bb.ai ], [ %indvars.iv.next552, %._crit_edge512 ] ; 2 uses
  %i.wb = mul i35 %i.vr, %indvar                  ; 2 uses
  %i.wc = add i35 %i.vq, %i.wb
  %i.wd = sext i35 %i.wc to i64                   ; 2 uses
  %scevgep673 = getelementptr i8, ptr %scevgep672.a, i64 %i.wd
  %scevgep675 = getelementptr i8, ptr %scevgep674.a, i64 %i.wd
  %i.we = add i35 %i.vv, %i.wb
  %i.wf = sext i35 %i.we to i64                   ; 2 uses
  %scevgep679 = getelementptr i8, ptr %scevgep678.a, i64 %i.wf
  %scevgep681 = getelementptr i8, ptr %scevgep680.a, i64 %i.wf
  %i.wg = mul i35 %i.ut, %indvar                  ; 2 uses
  %i.wh = add i35 %i.us, %i.wg                    ; 2 uses
  %i.wi = add i35 %i.uv, %i.wg                    ; 2 uses
  %i.wj = load double, ptr %i.mv, align 8, !tbaa !9
  %i.wk = mul nsw i64 %indvars.iv551, %i.mx       ; 5 uses
  %gep603 = getelementptr [8 x i8], ptr %invariant.gep602, i64 %i.wk ; 2 uses
  %i.wl = load double, ptr %gep603, align 8, !tbaa !9
  %i.wm = fdiv double %i.wl, %i.wj                ; 2 uses
  store double %i.wm, ptr %gep603, align 8, !tbaa !9
  br i1 %i.mw, label %bb.ak, label %._crit_edge512

bb.ak:                                            ; preds = %bb.aj
  %gep605 = getelementptr [8 x i8], ptr %invariant.gep604, i64 %i.wk ; 2 uses
  %i.wn = load double, ptr %gep605, align 8, !tbaa !9
  %i.wo = load double, ptr %i.uf, align 8, !tbaa !9
  %i.wp = fneg double %i.wo
  %i.wq = tail call double @llvm.fmuladd.f64(double %i.wp, double %i.wm, double %i.wn)
  %i.wr = load double, ptr %i.ug, align 8, !tbaa !9
  %i.ws = fdiv double %i.wq, %i.wr
  store double %i.ws, ptr %gep605, align 8, !tbaa !9
  br i1 %i.ui, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.ak
  %i.wt = add i64 %i.wk, 1                        ; 2 uses
  %i.wu = add i64 %i.wk, 2                        ; 2 uses
  %invariant.gep600 = getelementptr [8 x i8], ptr %i.g, i64 %i.wk ; 2 uses
  br i1 %min.iters.check707, label %scalar.ph706.preheader, label %vector.scevcheck662

vector.scevcheck662:                              ; preds = %.lr.ph511
  %i.wv = sub i35 %i.wh, %mul.result
  %i.ww = icmp sgt i35 %i.wv, %i.wh
  %i.wx = sub i35 %i.wi, %mul.result664
  %i.wy = icmp sgt i35 %i.wx, %i.wi
  %i.wz = or i1 %i.wy, %mul.overflow665
  %i.xa = or i1 %i.ww, %i.wz
  br i1 %i.xa, label %scalar.ph706.preheader, label %vector.memcheck666

vector.memcheck666:                               ; preds = %vector.scevcheck662
  %bound0687 = icmp ult ptr %scevgep668.a, %scevgep675
  %bound1688 = icmp ult ptr %scevgep673, %scevgep669.a
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx695.reass = or i1 %found.conflict689, %invariant.op852
  %bound0696 = icmp ult ptr %scevgep668.a, %scevgep681
  %bound1697 = icmp ult ptr %scevgep679, %scevgep669.a
  %found.conflict698 = and i1 %bound0696, %bound1697
  %conflict.rdx700 = or i1 %found.conflict698, %conflict.rdx695.reass
  %conflict.rdx705 = or i1 %found.conflict703, %conflict.rdx700
  br i1 %conflict.rdx705, label %scalar.ph706.preheader, label %vector.body711

vector.body711:                                   ; preds = %vector.memcheck666, %vector.body711
  %index712 = phi i64 [ %index.next725, %vector.body711 ], [ 0, %vector.memcheck666 ] ; 2 uses
  %i.xb = sub i64 %i.uj, %index712                ; 6 uses
  %i.xc = getelementptr [8 x i8], ptr %invariant.gep600, i64 %i.xb
  %i.xd = getelementptr i8, ptr %i.xc, i64 -24    ; 2 uses
  %wide.load713 = load <4 x double>, ptr %i.xd, align 8, !tbaa !9, !alias.scope !57, !noalias !60
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.xb
  %i.xf = getelementptr inbounds i8, ptr %i.xe, i64 -24
  %wide.load714 = load <4 x double>, ptr %i.xf, align 8, !tbaa !9, !alias.scope !66
  %i.xg = add i64 %i.wt, %i.xb
  %i.xh = shl i64 %i.xg, 32
  %i.xi = ashr exact i64 %i.xh, 29
  %i.xj = getelementptr inbounds i8, ptr %i.g, i64 %i.xi
  %i.xk = getelementptr inbounds i8, ptr %i.xj, i64 -24
  %wide.load715.a = load <4 x double>, ptr %i.xk, align 8, !tbaa !9, !alias.scope !67
  %i.xl = fneg <4 x double> %wide.load714
  %i.xm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xl, <4 x double> %wide.load715.a, <4 x double> %wide.load713)
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.xb
  %i.xo = getelementptr inbounds i8, ptr %i.xn, i64 -24
  %wide.load718 = load <4 x double>, ptr %i.xo, align 8, !tbaa !9, !alias.scope !68
  %i.xp = add i64 %i.wu, %i.xb
  %i.xq = shl i64 %i.xp, 32
  %i.xr = ashr exact i64 %i.xq, 29
  %i.xs = getelementptr inbounds i8, ptr %i.g, i64 %i.xr
  %i.xt = getelementptr inbounds i8, ptr %i.xs, i64 -24
  %wide.load719.a = load <4 x double>, ptr %i.xt, align 8, !tbaa !9, !alias.scope !69
  %i.xu = fneg <4 x double> %wide.load718
  %i.xv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xu, <4 x double> %wide.load719.a, <4 x double> %i.xm)
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.xb
  %i.xx = getelementptr inbounds i8, ptr %i.xw, i64 -24
  %wide.load722 = load <4 x double>, ptr %i.xx, align 8, !tbaa !9, !alias.scope !70
  %i.xy = fdiv <4 x double> %i.xv, %wide.load722
  store <4 x double> %i.xy, ptr %i.xd, align 8, !tbaa !9, !alias.scope !57, !noalias !60
  %index.next725 = add nuw i64 %index712, 4       ; 2 uses
  %i.xz = icmp eq i64 %index.next725, %n.vec710
  br i1 %i.xz, label %middle.block726, label %vector.body711, !llvm.loop !71

middle.block726:                                  ; preds = %vector.body711
  br i1 %cmp.n727, label %._crit_edge512, label %scalar.ph706.preheader

scalar.ph706.preheader:                           ; preds = %vector.memcheck666, %vector.scevcheck662, %.lr.ph511, %middle.block726
  %indvars.iv548.ph = phi i64 [ %i.uj, %vector.memcheck666 ], [ %i.uj, %vector.scevcheck662 ], [ %i.uj, %.lr.ph511 ], [ %i.wa, %middle.block726 ]
  br label %scalar.ph706

scalar.ph706:                                     ; preds = %scalar.ph706.preheader, %scalar.ph706
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %scalar.ph706 ], [ %indvars.iv548.ph, %scalar.ph706.preheader ] ; 8 uses
  %gep601 = getelementptr [8 x i8], ptr %invariant.gep600, i64 %indvars.iv548 ; 2 uses
  %i.ya = load double, ptr %gep601, align 8, !tbaa !9
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv548
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !9
  %i.yd = add i64 %i.wt, %indvars.iv548
  %sext = shl i64 %i.yd, 32
  %i.ye = ashr exact i64 %sext, 29
  %i.yf = getelementptr inbounds i8, ptr %i.g, i64 %i.ye
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !9
  %i.yh = fneg double %i.yc
  %i.yi = tail call double @llvm.fmuladd.f64(double %i.yh, double %i.yg, double %i.ya)
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv548
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !9
  %i.yl = add i64 %i.wu, %indvars.iv548
  %sext569 = shl i64 %i.yl, 32
  %i.ym = ashr exact i64 %sext569, 29
  %i.yn = getelementptr inbounds i8, ptr %i.g, i64 %i.ym
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !9
  %i.yp = fneg double %i.yk
  %i.yq = tail call double @llvm.fmuladd.f64(double %i.yp, double %i.yo, double %i.yi)
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv548
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !9
  %i.yt = fdiv double %i.yq, %i.ys
  store double %i.yt, ptr %gep601, align 8, !tbaa !9
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, -1
  %i.yu = icmp samesign ugt i64 %indvars.iv548, 1
  br i1 %i.yu, label %scalar.ph706, label %._crit_edge512, !llvm.loop !72

._crit_edge512:                                   ; preds = %scalar.ph706, %middle.block726, %bb.aj, %bb.ak
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond555.not, label %.loopexit, label %bb.aj, !llvm.loop !73

.loopexit:                                        ; preds = %._crit_edge512, %._crit_edge517, %scalar.ph781.1, %middle.block802.1, %bb.ah, %bb.ag, %bb.d, %bb.ad, %bb.ab, %bb.w, %bb.r, %bb.o, %bb.i, %.thread
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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !12}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !12, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 12}
!30 = distinct !{!30, !12, !27, !28}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !12, !27}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !12, !27, !28}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !12, !27}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45, !46, !47, !48, !49}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = !{!45}
!51 = !{!46}
!52 = !{!47}
!53 = !{!48}
!54 = !{!49}
!55 = distinct !{!55, !12, !27, !28}
!56 = distinct !{!56, !12, !27}
!57 = !{!58}
!58 = distinct !{!58, !59}
end_hunk_0
