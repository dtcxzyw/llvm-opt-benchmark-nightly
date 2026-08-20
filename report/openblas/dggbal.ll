inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dggbal_:bb.a
  %.promoted772 = phi i32 [ %.lcssa742, %._crit_edge747 ], [ %.lcssa790, %bb.bq ]
  %.0581 = phi i32 [ 1, %._crit_edge747 ], [ %i.yb, %bb.bq ] ; 3 uses
  %.0579 = phi double [ undef, %._crit_edge747 ], [ %i.mx, %bb.bq ]
  %i.ke = load i32, ptr %6, align 4, !tbaa !8
  %i.kf = load i32, ptr %1, align 4, !tbaa !8
  %i.kg = shl i32 %i.kf, 2
  %i.kh = add nsw i32 %i.kg, %i.ke
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ki ; 2 uses
  %i.kk = call double @ddot_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.kj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.kj, ptr noundef nonnull @c__1) #8
  %i.kl = load i32, ptr %6, align 4, !tbaa !8
  %i.km = load i32, ptr %1, align 4, !tbaa !8
  %i.kn = mul nsw i32 %i.km, 5
  %i.ko = add nsw i32 %i.kn, %i.kl
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.kp ; 2 uses
  %i.kr = call double @ddot_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.kq, ptr noundef nonnull @c__1, ptr noundef nonnull %i.kq, ptr noundef nonnull @c__1) #8
  %i.ks = fadd double %i.kk, %i.kr
  %i.kt = load i32, ptr %7, align 4, !tbaa !8     ; 4 uses
  store i32 %i.kt, ptr %i.c, align 4, !tbaa !8
  %i.ku = load i32, ptr %6, align 4, !tbaa !8     ; 5 uses
  %.not644749 = icmp sgt i32 %i.ku, %i.kt
  br i1 %.not644749, label %._crit_edge755, label %.lr.ph754

.lr.ph754:                                        ; preds = %bb.aq
  %i.kv = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.kw = shl i32 %i.kv, 2
  %i.kx = mul nsw i32 %i.kv, 5
  %i.ky = sext i32 %i.ku to i64                   ; 2 uses
  %i.kz = sext i32 %i.kw to i64
  %i.la = sext i32 %i.kx to i64
  %i.lb = add i32 %i.kt, 1                        ; 2 uses
  %invariant.gep1052 = getelementptr [8 x i8], ptr %i.r, i64 %i.kz ; 9 uses
  %invariant.gep1054 = getelementptr [8 x i8], ptr %i.r, i64 %i.la ; 9 uses
  %i.lc = sub i32 %i.lb, %i.ku
  %i.ld = sub i32 %i.kt, %i.ku
  %xtraiter1207 = and i32 %i.lc, 7                ; 2 uses
  %lcmp.mod1208.not = icmp eq i32 %xtraiter1207, 0
  br i1 %lcmp.mod1208.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph754, %.prol.preheader
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %.prol.preheader ], [ %i.ky, %.lr.ph754 ] ; 3 uses
  %.0578752.prol = phi double [ %i.lh, %.prol.preheader ], [ 0.000000e+00, %.lr.ph754 ]
  %.0580751.prol = phi double [ %i.lf, %.prol.preheader ], [ 0.000000e+00, %.lr.ph754 ]
  %prol.iter1209 = phi i32 [ %prol.iter1209.next, %.prol.preheader ], [ 0, %.lr.ph754 ]
  %gep1053.prol = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv905.prol
  %i.le = load double, ptr %gep1053.prol, align 8, !tbaa !9
  %i.lf = fadd double %.0580751.prol, %i.le       ; 3 uses
  %gep1055.prol = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv905.prol
  %i.lg = load double, ptr %gep1055.prol, align 8, !tbaa !9
  %i.lh = fadd double %.0578752.prol, %i.lg       ; 3 uses
  %indvars.iv.next906.prol = add nsw i64 %indvars.iv905.prol, 1 ; 2 uses
  %prol.iter1209.next = add i32 %prol.iter1209, 1 ; 2 uses
  %prol.iter1209.cmp.not = icmp eq i32 %prol.iter1209.next, %xtraiter1207
  br i1 %prol.iter1209.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph754
  %.lcssa1175.unr = phi double [ poison, %.lr.ph754 ], [ %i.lf, %.prol.preheader ]
  %.lcssa.unr = phi double [ poison, %.lr.ph754 ], [ %i.lh, %.prol.preheader ]
  %indvars.iv905.unr = phi i64 [ %i.ky, %.lr.ph754 ], [ %indvars.iv.next906.prol, %.prol.preheader ]
  %.0578752.unr = phi double [ 0.000000e+00, %.lr.ph754 ], [ %i.lh, %.prol.preheader ]
  %.0580751.unr = phi double [ 0.000000e+00, %.lr.ph754 ], [ %i.lf, %.prol.preheader ]
  %i.li = icmp ult i32 %i.ld, 7
  br i1 %i.li, label %._crit_edge755, label %.lr.ph754.new

.lr.ph754.new:                                    ; preds = %.prol.loopexit, %.lr.ph754.new
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.7, %.lr.ph754.new ], [ %indvars.iv905.unr, %.prol.loopexit ] ; 10 uses
  %.0578752 = phi double [ %i.mo, %.lr.ph754.new ], [ %.0578752.unr, %.prol.loopexit ]
  %.0580751 = phi double [ %i.mm, %.lr.ph754.new ], [ %.0580751.unr, %.prol.loopexit ]
  %gep1053 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv905
  %i.lj = load double, ptr %gep1053, align 8, !tbaa !9
  %i.lk = fadd double %.0580751, %i.lj
  %gep1055 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv905
  %i.ll = load double, ptr %gep1055, align 8, !tbaa !9
  %i.lm = fadd double %.0578752, %i.ll
  %indvars.iv.next906 = add nsw i64 %indvars.iv905, 1 ; 2 uses
  %gep1053.1 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv.next906
  %i.ln = load double, ptr %gep1053.1, align 8, !tbaa !9
  %i.lo = fadd double %i.lk, %i.ln
  %gep1055.1 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv.next906
  %i.lp = load double, ptr %gep1055.1, align 8, !tbaa !9
  %i.lq = fadd double %i.lm, %i.lp
  %indvars.iv.next906.1 = add nsw i64 %indvars.iv905, 2 ; 2 uses
  %gep1053.2 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv.next906.1
  %i.lr = load double, ptr %gep1053.2, align 8, !tbaa !9
  %i.ls = fadd double %i.lo, %i.lr
  %gep1055.2 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv.next906.1
  %i.lt = load double, ptr %gep1055.2, align 8, !tbaa !9
  %i.lu = fadd double %i.lq, %i.lt
  %indvars.iv.next906.2 = add nsw i64 %indvars.iv905, 3 ; 2 uses
  %gep1053.3 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv.next906.2
  %i.lv = load double, ptr %gep1053.3, align 8, !tbaa !9
  %i.lw = fadd double %i.ls, %i.lv
  %gep1055.3 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv.next906.2
  %i.lx = load double, ptr %gep1055.3, align 8, !tbaa !9
  %i.ly = fadd double %i.lu, %i.lx
  %indvars.iv.next906.3 = add nsw i64 %indvars.iv905, 4 ; 2 uses
  %gep1053.4 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv.next906.3
  %i.lz = load double, ptr %gep1053.4, align 8, !tbaa !9
  %i.ma = fadd double %i.lw, %i.lz
  %gep1055.4 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv.next906.3
  %i.mb = load double, ptr %gep1055.4, align 8, !tbaa !9
  %i.mc = fadd double %i.ly, %i.mb
  %indvars.iv.next906.4 = add nsw i64 %indvars.iv905, 5 ; 2 uses
  %gep1053.5 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv.next906.4
  %i.md = load double, ptr %gep1053.5, align 8, !tbaa !9
  %i.me = fadd double %i.ma, %i.md
  %gep1055.5 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv.next906.4
  %i.mf = load double, ptr %gep1055.5, align 8, !tbaa !9
  %i.mg = fadd double %i.mc, %i.mf
  %indvars.iv.next906.5 = add nsw i64 %indvars.iv905, 6 ; 2 uses
  %gep1053.6 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv.next906.5
  %i.mh = load double, ptr %gep1053.6, align 8, !tbaa !9
  %i.mi = fadd double %i.me, %i.mh
  %gep1055.6 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv.next906.5
  %i.mj = load double, ptr %gep1055.6, align 8, !tbaa !9
  %i.mk = fadd double %i.mg, %i.mj
  %indvars.iv.next906.6 = add nsw i64 %indvars.iv905, 7 ; 2 uses
  %gep1053.7 = getelementptr [8 x i8], ptr %invariant.gep1052, i64 %indvars.iv.next906.6
  %i.ml = load double, ptr %gep1053.7, align 8, !tbaa !9
  %i.mm = fadd double %i.mi, %i.ml                ; 2 uses
  %gep1055.7 = getelementptr [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv.next906.6
  %i.mn = load double, ptr %gep1055.7, align 8, !tbaa !9
  %i.mo = fadd double %i.mk, %i.mn                ; 2 uses
  %indvars.iv.next906.7 = add nsw i64 %indvars.iv905, 8 ; 2 uses
  %lftr.wideiv908.7 = trunc i64 %indvars.iv.next906.7 to i32
  %exitcond909.not.7 = icmp eq i32 %i.lb, %lftr.wideiv908.7
  br i1 %exitcond909.not.7, label %._crit_edge755, label %.lr.ph754.new, !llvm.loop !34

._crit_edge755:                                   ; preds = %.prol.loopexit, %.lr.ph754.new, %bb.aq
  %.0580.lcssa = phi double [ 0.000000e+00, %bb.aq ], [ %.lcssa1175.unr, %.prol.loopexit ], [ %i.mm, %.lr.ph754.new ] ; 6 uses
  %.0578.lcssa = phi double [ 0.000000e+00, %bb.aq ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.mo, %.lr.ph754.new ] ; 5 uses
  store double %.0580.lcssa, ptr %i.e, align 8, !tbaa !9
  %i.mp = fsub double %.0580.lcssa, %.0578.lcssa  ; 2 uses
  %i.mq = load double, ptr %i.g, align 8, !tbaa !9
  %i.mr = fmul double %.0578.lcssa, %.0578.lcssa
  %i.ms = call double @llvm.fmuladd.f64(double %.0580.lcssa, double %.0580.lcssa, double %i.mr)
  %i.mt = fneg double %i.ms
  %i.mu = fmul double %i.jy, %i.mt
  %i.mv = call double @llvm.fmuladd.f64(double %i.mq, double %i.ks, double %i.mu)
  %i.mw = fmul double %i.mp, %i.mp
  %i.mx = call double @llvm.fmuladd.f64(double %i.kb, double %i.mw, double %i.mv) ; 4 uses
  %i.my = fcmp oeq double %i.mx, 0.000000e+00
  br i1 %i.my, label %._crit_edge802.thread, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge755
  %.not645 = icmp eq i32 %.0581, 1
  br i1 %.not645, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mz = fdiv double %i.mx, %.0579
  store double %i.mz, ptr %i.f, align 8, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.na = fneg double %.0580.lcssa
  %i.nb = call double @llvm.fmuladd.f64(double %i.na, double 3.000000e+00, double %.0578.lcssa)
  %i.nc = fmul double %i.jz, %i.nb                ; 6 uses
  %i.nd = fneg double %.0578.lcssa
  %i.ne = call double @llvm.fmuladd.f64(double %i.nd, double 3.000000e+00, double %.0580.lcssa)
  %i.nf = fmul double %i.jz, %i.ne                ; 6 uses
  %i.ng = sext i32 %i.ku to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ng
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.nh, ptr noundef nonnull @c__1) #8
  %i.ni = load i32, ptr %6, align 4, !tbaa !8
  %i.nj = load i32, ptr %1, align 4, !tbaa !8
  %i.nk = add nsw i32 %i.nj, %i.ni
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.nl
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.nm, ptr noundef nonnull @c__1) #8
  %i.nn = load i32, ptr %6, align 4, !tbaa !8     ; 2 uses
  %i.no = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.np = shl i32 %i.no, 2
  %i.nq = add nsw i32 %i.np, %i.nn
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.nr
  %i.nt = add nsw i32 %i.no, %i.nn
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.nu
  call void @daxpy_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ns, ptr noundef nonnull @c__1, ptr noundef nonnull %i.nv, ptr noundef nonnull @c__1) #8
  %i.nw = load i32, ptr %6, align 4, !tbaa !8     ; 2 uses
  %i.nx = load i32, ptr %1, align 4, !tbaa !8
  %i.ny = mul nsw i32 %i.nx, 5
  %i.nz = add nsw i32 %i.ny, %i.nw
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.oa
  %i.oc = sext i32 %i.nw to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.oc
  call void @daxpy_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ob, ptr noundef nonnull @c__1, ptr noundef nonnull %i.od, ptr noundef nonnull @c__1) #8
  %i.oe = load i32, ptr %7, align 4, !tbaa !8     ; 13 uses
  %i.of = load i32, ptr %6, align 4, !tbaa !8     ; 11 uses
  %.not646758 = icmp sgt i32 %i.of, %i.oe
  %.pre957.pre.pre = load i32, ptr %1, align 4, !tbaa !8 ; 8 uses
  br i1 %.not646758, label %._crit_edge778.thread, label %.lr.ph761

._crit_edge778.thread:                            ; preds = %bb.at
  store i32 %i.oe, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge795

.lr.ph761:                                        ; preds = %bb.at
  %i.og = sext i32 %i.of to i64                   ; 6 uses
  %i.oh = sext i32 %.pre957.pre.pre to i64        ; 2 uses
  %i.oi = add i32 %i.oe, 1
  %invariant.gep1056 = getelementptr [8 x i8], ptr %i.r, i64 %i.oh ; 6 uses
  %i.oj = sub i32 %i.oe, %i.of                    ; 2 uses
  %i.ok = zext i32 %i.oj to i64
  %i.ol = add nuw nsw i64 %i.ok, 1                ; 2 uses
  %min.iters.check1161 = icmp ult i32 %i.oj, 7
  br i1 %min.iters.check1161, label %scalar.ph.preheader, label %vector.memcheck1154

vector.memcheck1154:                              ; preds = %.lr.ph761
  %i.om = shl nsw i64 %i.og, 3                    ; 2 uses
  %scevgep1156 = getelementptr i8, ptr %scevgep1155, i64 %i.om
  %i.on = sub i32 %i.oe, %i.of
  %i.oo = zext i32 %i.on to i64
  %i.op = shl nuw nsw i64 %i.oo, 3                ; 2 uses
  %i.oq = getelementptr i8, ptr %10, i64 %i.om
  %scevgep1157 = getelementptr i8, ptr %i.oq, i64 %i.op
  %12 = add nsw i64 %i.oh, %i.og
  %13 = shl nsw i64 %12, 3                        ; 2 uses
  %scevgep1159.a = getelementptr i8, ptr %scevgep1158, i64 %13
  %i.or = getelementptr i8, ptr %10, i64 %13
  %scevgep1160 = getelementptr i8, ptr %i.or, i64 %i.op
  %bound0 = icmp ult ptr %scevgep1156, %scevgep1160
  %bound1 = icmp ult ptr %scevgep1159.a, %scevgep1157
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph1162

vector.ph1162:                                    ; preds = %vector.memcheck1154
  %n.vec1163 = and i64 %i.ol, 8589934584          ; 3 uses
  %i.os = add nsw i64 %n.vec1163, %i.og
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.nf, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1164 = insertelement <4 x double> poison, double %i.nc, i64 0
  %broadcast.splat1165 = shufflevector <4 x double> %broadcast.splatinsert1164, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1162
  %index1167 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1171, %vector.body1166 ] ; 2 uses
  %i.ot = add i64 %index1167, %i.og               ; 2 uses
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ot ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ou, align 8, !tbaa !9, !alias.scope !35, !noalias !38
  %wide.load1168 = load <4 x double>, ptr %i.ov, align 8, !tbaa !9, !alias.scope !35, !noalias !38
  %i.ow = fadd <4 x double> %broadcast.splat, %wide.load
  %i.ox = fadd <4 x double> %broadcast.splat, %wide.load1168
  store <4 x double> %i.ow, ptr %i.ou, align 8, !tbaa !9, !alias.scope !35, !noalias !38
  store <4 x double> %i.ox, ptr %i.ov, align 8, !tbaa !9, !alias.scope !35, !noalias !38
  %i.oy = getelementptr [8 x i8], ptr %invariant.gep1056, i64 %i.ot ; 3 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 32     ; 2 uses
  %wide.load1169 = load <4 x double>, ptr %i.oy, align 8, !tbaa !9, !alias.scope !38
  %wide.load1170 = load <4 x double>, ptr %i.oz, align 8, !tbaa !9, !alias.scope !38
  %i.pa = fadd <4 x double> %broadcast.splat1165, %wide.load1169
  %i.pb = fadd <4 x double> %broadcast.splat1165, %wide.load1170
  store <4 x double> %i.pa, ptr %i.oy, align 8, !tbaa !9, !alias.scope !38
  store <4 x double> %i.pb, ptr %i.oz, align 8, !tbaa !9, !alias.scope !38
  %index.next1171 = add nuw i64 %index1167, 8     ; 2 uses
  %i.pc = icmp eq i64 %index.next1171, %n.vec1163
  br i1 %i.pc, label %middle.block1172, label %vector.body1166, !llvm.loop !40

middle.block1172:                                 ; preds = %vector.body1166
  %cmp.n1173 = icmp eq i64 %i.ol, %n.vec1163
  br i1 %cmp.n1173, label %.lr.ph777, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck1154, %.lr.ph761, %middle.block1172
  %indvars.iv910.ph = phi i64 [ %i.og, %vector.memcheck1154 ], [ %i.og, %.lr.ph761 ], [ %i.os, %middle.block1172 ] ; 3 uses
  %i.pd = add i32 %i.oe, 1
  %i.pe = trunc i64 %indvars.iv910.ph to i32      ; 2 uses
  %i.pf = sub i32 %i.pd, %i.pe
  %i.pg = sub i32 %i.oe, %i.pe
  %xtraiter1210 = and i32 %i.pf, 3                ; 2 uses
  %lcmp.mod1211.not = icmp eq i32 %xtraiter1210, 0
  br i1 %lcmp.mod1211.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv910.prol = phi i64 [ %indvars.iv.next911.prol, %scalar.ph.prol ], [ %indvars.iv910.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1212 = phi i32 [ %prol.iter1212.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv910.prol ; 2 uses
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !9
  %i.pj = fadd double %i.nf, %i.pi
  store double %i.pj, ptr %i.ph, align 8, !tbaa !9
  %gep1057.prol = getelementptr [8 x i8], ptr %invariant.gep1056, i64 %indvars.iv910.prol ; 2 uses
  %i.pk = load double, ptr %gep1057.prol, align 8, !tbaa !9
  %i.pl = fadd double %i.nc, %i.pk
  store double %i.pl, ptr %gep1057.prol, align 8, !tbaa !9
  %indvars.iv.next911.prol = add nsw i64 %indvars.iv910.prol, 1 ; 2 uses
  %prol.iter1212.next = add i32 %prol.iter1212, 1 ; 2 uses
  %prol.iter1212.cmp.not = icmp eq i32 %prol.iter1212.next, %xtraiter1210
  br i1 %prol.iter1212.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !41

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv910.unr = phi i64 [ %indvars.iv910.ph, %scalar.ph.preheader ], [ %indvars.iv.next911.prol, %scalar.ph.prol ]
  %i.pm = icmp ult i32 %i.pg, 3
  br i1 %i.pm, label %.lr.ph777, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv910 = phi i64 [ %indvars.iv.next911.3, %scalar.ph ], [ %indvars.iv910.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv910 ; 2 uses
  %i.po = load double, ptr %i.pn, align 8, !tbaa !9
  %i.pp = fadd double %i.nf, %i.po
  store double %i.pp, ptr %i.pn, align 8, !tbaa !9
  %gep1057 = getelementptr [8 x i8], ptr %invariant.gep1056, i64 %indvars.iv910 ; 2 uses
  %i.pq = load double, ptr %gep1057, align 8, !tbaa !9
  %i.pr = fadd double %i.nc, %i.pq
  store double %i.pr, ptr %gep1057, align 8, !tbaa !9
  %i.ps = getelementptr [8 x i8], ptr %10, i64 %indvars.iv910 ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !9
  %i.pu = fadd double %i.nf, %i.pt
  store double %i.pu, ptr %i.ps, align 8, !tbaa !9
  %i.pv = getelementptr [8 x i8], ptr %invariant.gep1056, i64 %indvars.iv910
  %gep1057.1 = getelementptr i8, ptr %i.pv, i64 8 ; 2 uses
  %i.pw = load double, ptr %gep1057.1, align 8, !tbaa !9
  %i.px = fadd double %i.nc, %i.pw
  store double %i.px, ptr %gep1057.1, align 8, !tbaa !9
  %indvars.iv.next911.1 = add nsw i64 %indvars.iv910, 2 ; 2 uses
  %i.py = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv.next911.1 ; 2 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !9
  %i.qa = fadd double %i.nf, %i.pz
  store double %i.qa, ptr %i.py, align 8, !tbaa !9
  %gep1057.2 = getelementptr [8 x i8], ptr %invariant.gep1056, i64 %indvars.iv.next911.1 ; 2 uses
  %i.qb = load double, ptr %gep1057.2, align 8, !tbaa !9
  %i.qc = fadd double %i.nc, %i.qb
  store double %i.qc, ptr %gep1057.2, align 8, !tbaa !9
  %indvars.iv.next911.2 = add nsw i64 %indvars.iv910, 3 ; 2 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv.next911.2 ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !9
  %i.qf = fadd double %i.nf, %i.qe
  store double %i.qf, ptr %i.qd, align 8, !tbaa !9
  %gep1057.3 = getelementptr [8 x i8], ptr %invariant.gep1056, i64 %indvars.iv.next911.2 ; 2 uses
  %i.qg = load double, ptr %gep1057.3, align 8, !tbaa !9
  %i.qh = fadd double %i.nc, %i.qg
  store double %i.qh, ptr %gep1057.3, align 8, !tbaa !9
  %indvars.iv.next911.3 = add nsw i64 %indvars.iv910, 4 ; 2 uses
  %lftr.wideiv913.3 = trunc i64 %indvars.iv.next911.3 to i32
  %exitcond914.not.3 = icmp eq i32 %i.oi, %lftr.wideiv913.3
  br i1 %exitcond914.not.3, label %.lr.ph777, label %scalar.ph, !llvm.loop !42

.lr.ph777:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1172
  %i.qi = shl i32 %.pre957.pre.pre, 1
  %i.qj = sext i32 %i.of to i64                   ; 3 uses
  %i.qk = add i32 %i.oe, 1                        ; 2 uses
  %i.ql = sext i32 %.pre957.pre.pre to i64
  %i.qm = sext i32 %i.qi to i64
  %invariant.gep1062 = getelementptr [8 x i8], ptr %i.r, i64 %i.ql
  %invariant.gep1064 = getelementptr [8 x i8], ptr %i.r, i64 %i.qm
  %i.qn = sub i32 %i.qk, %i.of                    ; 6 uses
  %xtraiter1213 = and i32 %i.qn, 1
  %i.qo = icmp eq i32 %i.oe, %i.of
  %unroll_iter = and i32 %i.qn, -2
  %lcmp.mod1214.not = icmp eq i32 %xtraiter1213, 0
  %lcmp.mod1217 = trunc i32 %i.qn to i1
  br label %.lr.ph768

.lr.ph768:                                        ; preds = %.lr.ph777, %._crit_edge769
  %indvars.iv920 = phi i64 [ %i.qj, %.lr.ph777 ], [ %indvars.iv.next921, %._crit_edge769 ] ; 5 uses
  %invariant.gep1058 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv920 ; 3 uses
  %invariant.gep1060 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv920 ; 3 uses
  br i1 %i.qo, label %.epil.preheader, label %.lr.ph768.new

.lr.ph768.new:                                    ; preds = %.lr.ph768, %bb.bb
  %indvars.iv915 = phi i64 [ %indvars.iv.next916.1, %bb.bb ], [ %i.qj, %.lr.ph768 ] ; 8 uses
  %.0766 = phi double [ %.2.1, %bb.bb ], [ 0.000000e+00, %.lr.ph768 ] ; 2 uses
  %.0584765 = phi i32 [ %.2586.1, %bb.bb ], [ 0, %.lr.ph768 ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.bb ], [ 0, %.lr.ph768 ]
  %i.qp = mul nsw i64 %indvars.iv915, %i.kc
  %gep1059 = getelementptr [8 x i8], ptr %invariant.gep1058, i64 %i.qp
  %i.qq = load double, ptr %gep1059, align 8, !tbaa !9
  %i.qr = fcmp oeq double %i.qq, 0.000000e+00
  br i1 %i.qr, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph768.new
  %i.qs = add nsw i32 %.0584765, 1
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv915
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !9
  %i.qv = fadd double %.0766, %i.qu
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph768.new, %bb.au
  %.1585 = phi i32 [ %.0584765, %.lr.ph768.new ], [ %i.qs, %bb.au ] ; 2 uses
  %.1 = phi double [ %.0766, %.lr.ph768.new ], [ %i.qv, %bb.au ] ; 2 uses
  %i.qw = mul nsw i64 %indvars.iv915, %i.kd
  %gep1061 = getelementptr [8 x i8], ptr %invariant.gep1060, i64 %i.qw
  %i.qx = load double, ptr %gep1061, align 8, !tbaa !9
  %i.qy = fcmp oeq double %i.qx, 0.000000e+00
  br i1 %i.qy, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qz = add nsw i32 %.1585, 1
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv915
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !9
  %i.rc = fadd double %.1, %i.rb
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.2586 = phi i32 [ %.1585, %bb.av ], [ %i.qz, %bb.aw ] ; 2 uses
  %.2 = phi double [ %.1, %bb.av ], [ %i.rc, %bb.aw ] ; 2 uses
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, 1 ; 2 uses
  %i.rd = mul nsw i64 %indvars.iv.next916, %i.kc
  %gep1059.1 = getelementptr [8 x i8], ptr %invariant.gep1058, i64 %i.rd
  %i.re = load double, ptr %gep1059.1, align 8, !tbaa !9
  %i.rf = fcmp oeq double %i.re, 0.000000e+00
  br i1 %i.rf, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rg = add nsw i32 %.2586, 1
  %i.rh = getelementptr [8 x i8], ptr %10, i64 %indvars.iv915
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !9
  %i.rj = fadd double %.2, %i.ri
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1585.1 = phi i32 [ %.2586, %bb.ax ], [ %i.rg, %bb.ay ] ; 2 uses
  %.1.1 = phi double [ %.2, %bb.ax ], [ %i.rj, %bb.ay ] ; 2 uses
  %i.rk = mul nsw i64 %indvars.iv.next916, %i.kd
  %gep1061.1 = getelementptr [8 x i8], ptr %invariant.gep1060, i64 %i.rk
  %i.rl = load double, ptr %gep1061.1, align 8, !tbaa !9
  %i.rm = fcmp oeq double %i.rl, 0.000000e+00
  br i1 %i.rm, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rn = add nsw i32 %.1585.1, 1
  %i.ro = getelementptr [8 x i8], ptr %10, i64 %indvars.iv915
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !9
  %i.rq = fadd double %.1.1, %i.rp
  br label %bb.bb
end_hunk_0
