Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_band?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bandGBTRF:bb.a
.loopexit:                                        ; preds = %.lr.ph170, %middle.block, %bb.h
  %i.di = add nuw i64 %.0121172, 1
  %exitcond191.not = icmp eq i64 %.0121172, %smin190
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond191.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !42

._crit_edge175:                                   ; preds = %.loopexit, %._crit_edge164
  %i.dj = getelementptr inbounds nuw i8, ptr %.0127176, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %exitcond192.not = icmp eq i64 %i.aw, %i.ag
  br i1 %exitcond192.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !43

._crit_edge180:                                   ; preds = %._crit_edge175, %.loopexit144
  %.0127.lcssa = phi ptr [ %5, %.loopexit144 ], [ %i.dj, %._crit_edge175 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !29
  %i.dk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !24
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %4
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !26
  %i.do = fcmp oeq double %i.dn, 0.000000e+00
  %.142 = select i1 %i.do, i64 %1, i64 0
  br label %.loopexit143

.loopexit143:                                     ; preds = %._crit_edge158, %._crit_edge180
  %.0128 = phi i64 [ %.142, %._crit_edge180 ], [ %i.aw, %._crit_edge158 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = add i64 %i.d, -1                         ; 5 uses
  %i.j = icmp sgt i64 %i.d, 1
  br i1 %i.j, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph68.i.preheader:                             ; preds = %bb.a
  %i.k = shl i64 %i.f, 3                          ; 2 uses
  br label %.lr.ph68.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %i.ah, %i.i
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph73.i.preheader, label %bandGBTRS.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.m = xor i64 %i.f, -1
  %i.n = add i64 %i.d, %i.m
  %i.o = shl i64 %i.d, 3
  %i.p = add i64 %i.o, -8
  %i.q = shl nsw i64 %i.f, 3
  %invariant.op = sub i64 1, %i.d
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.h, %.lr.ph68.i.preheader ] ; 3 uses
  %.05967.i = phi i64 [ %i.ah, %.loopexit.i ], [ 0, %.lr.ph68.i.preheader ] ; 14 uses
  %i.r = shl i64 %.05967.i, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.s, i64 8
  %i.t = getelementptr i8, ptr %2, i64 %i.r
  %scevgep7 = getelementptr i8, ptr %i.t, i64 16
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.u = xor i64 %.05967.i, -1
  %i.v = add i64 %smin, %i.u
  %i.w = shl i64 %i.v, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.w
  %smin.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i) ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05967.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !26 ; 5 uses
  %.not.i = icmp eq i64 %i.y, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !26
  store double %i.ac, ptr %i.z, align 8, !tbaa !26
  store double %i.aa, ptr %i.ab, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05967.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.f ; 4 uses
  %i.ag = add nsw i64 %.05967.i, %i.h
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.i)
  %i.ah = add nuw nsw i64 %.05967.i, 1            ; 6 uses
  %.not6465.not.i = icmp slt i64 %.05967.i, %..i
  br i1 %.not6465.not.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ai = sub i64 %smin.i, %.05967.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.k
  %scevgep9 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = getelementptr i8, ptr %i.ae, i64 %i.k
  %scevgep10 = getelementptr i8, ptr %i.ak, i64 16
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.w
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.al = add i64 %i.ah, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = add nuw i64 %i.ah, %index               ; 2 uses
  %i.an = sub nuw nsw i64 %i.am, %.05967.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !26, !alias.scope !56
  %wide.load12 = load <2 x double>, ptr %i.ap, align 8, !tbaa !26, !alias.scope !56
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.aq, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %wide.load14 = load <2 x double>, ptr %i.ar, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load13)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load12, <2 x double> %wide.load14)
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader40

.lr.ph.i.preheader40:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.066.i.ph = phi i64 [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.preheader ], [ %i.al, %middle.block ] ; 6 uses
  %i.av = add i64 %smin.i, %.066.i.ph
  %i.aw = and i64 %i.av, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader40
  %i.ax = sub nuw nsw i64 %.066.i.ph, %.05967.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !26
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !26
  %i.bd = add nuw i64 %.066.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader40
  %.066.i.unr = phi i64 [ %.066.i.ph, %.lr.ph.i.preheader40 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = icmp eq i64 %smin.i, %.066.i.ph
  br i1 %i.be, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.066.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.066.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bf = sub nuw nsw i64 %.066.i, %.05967.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !26
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bh, double %i.bj)
  store double %i.bk, ptr %i.bi, align 8, !tbaa !26
  %i.bl = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bm = sub nuw nsw i64 %i.bl, %.05967.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bl ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !26
  %i.br = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bo, double %i.bq)
  store double %i.br, ptr %i.bp, align 8, !tbaa !26
  %i.bs = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bl, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph73.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 4 uses
  %.16072.i = phi i64 [ %i.i, %.lr.ph73.i.preheader ], [ %i.db, %._crit_edge.i ] ; 10 uses
  %i.bt = sub i64 %i.n, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0) ; 2 uses
  %i.bu = shl nuw i64 %smax, 3
  %scevgep16 = getelementptr i8, ptr %2, i64 %i.bu
  %i.bv = shl i64 %indvar, 3
  %i.bw = sub i64 %i.p, %i.bv
  %scevgep17 = getelementptr i8, ptr %2, i64 %i.bw
  %.reass = add i64 %indvar, %invariant.op
  %i.bx = add i64 %smax, %.reass
  %i.by = shl i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16072.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.f ; 4 uses
  %i.cc = sub nsw i64 %.16072.i, %i.f
  %i.cd = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 0) ; 5 uses
  %i.ce = load double, ptr %i.cb, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16072.i ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !26
  %i.ch = fdiv double %i.cg, %i.ce                ; 2 uses
  store double %i.ch, ptr %i.cf, align 8, !tbaa !26
  %i.ci = fneg double %i.ch                       ; 2 uses
  %.not.not69.i = icmp samesign ult i64 %i.cd, %.16072.i
  br i1 %.not.not69.i, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.lr.ph73.i
  %i.cj = tail call i64 @llvm.smin.i64(i64 %.16072.i, i64 %i.f) ; 3 uses
  %min.iters.check24 = icmp ult i64 %i.cj, 4
  br i1 %min.iters.check24, label %.lr.ph71.i.preheader39, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.lr.ph71.i.preheader
  %scevgep18 = getelementptr i8, ptr %i.ca, i64 %i.q
  %scevgep19 = getelementptr i8, ptr %scevgep18, i64 %i.by
  %bound020 = icmp ult ptr %scevgep16, %i.cb
  %bound121 = icmp ult ptr %scevgep19, %scevgep17
  %found.conflict22 = and i1 %bound020, %bound121
  br i1 %found.conflict22, label %.lr.ph71.i.preheader39, label %vector.ph25

vector.ph25:                                      ; preds = %vector.memcheck15
  %n.vec26 = and i64 %i.cj, -4                    ; 3 uses
  %i.ck = add i64 %i.cd, %n.vec26
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next35, %vector.body29 ] ; 2 uses
  %i.cl = add nuw i64 %i.cd, %index30             ; 2 uses
  %i.cm = sub nsw i64 %i.cl, %.16072.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load31 = load <2 x double>, ptr %i.cn, align 8, !tbaa !26, !alias.scope !58
  %wide.load32 = load <2 x double>, ptr %i.co, align 8, !tbaa !26, !alias.scope !58
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cl ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load33 = load <2 x double>, ptr %i.cp, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %wide.load34 = load <2 x double>, ptr %i.cq, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load31, <2 x double> %wide.load33)
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load32, <2 x double> %wide.load34)
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %index.next35 = add nuw i64 %index30, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next35, %n.vec26
  br i1 %i.ct, label %middle.block36, label %vector.body29, !llvm.loop !54

middle.block36:                                   ; preds = %vector.body29
  %cmp.n37 = icmp eq i64 %i.cj, %n.vec26
  br i1 %cmp.n37, label %._crit_edge.i, label %.lr.ph71.i.preheader39

.lr.ph71.i.preheader39:                           ; preds = %vector.memcheck15, %.lr.ph71.i.preheader, %middle.block36
  %.170.i.ph = phi i64 [ %i.cd, %vector.memcheck15 ], [ %i.cd, %.lr.ph71.i.preheader ], [ %i.ck, %middle.block36 ]
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader39, %.lr.ph71.i
  %.170.i = phi i64 [ %i.da, %.lr.ph71.i ], [ %.170.i.ph, %.lr.ph71.i.preheader39 ] ; 3 uses
  %i.cu = sub nsw i64 %.170.i, %.16072.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.170.i ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !26
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cw, double %i.cy)
  store double %i.cz, ptr %i.cx, align 8, !tbaa !26
  %i.da = add nuw nsw i64 %.170.i, 1              ; 2 uses
  %.not.not.i = icmp slt i64 %i.da, %.16072.i
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block36, %.lr.ph73.i
  %i.db = add nsw i64 %.16072.i, -1
  %i.dc = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dc, label %.lr.ph73.i, label %bandGBTRS.exit, !llvm.loop !1

bandGBTRS.exit:                                   ; preds = %._crit_edge.i, %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandGBTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 5 uses
  %i.b = icmp sgt i64 %1, 1
  br i1 %i.b, label %.lr.ph68.preheader, label %.preheader

.lr.ph68.preheader:                               ; preds = %bb.a
  %i.c = shl i64 %2, 3                            ; 2 uses
  br label %.lr.ph68

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond75.not = icmp eq i64 %i.z, %i.a
  br i1 %exitcond75.not, label %.preheader, label %.lr.ph68, !llvm.loop !0

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph73.preheader, label %._crit_edge74

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.e = xor i64 %2, -1
  %i.f = add i64 %1, %i.e
  %i.g = shl i64 %1, 3
  %i.h = add i64 %i.g, -8
  %i.i = shl nsw i64 %2, 3
  %invariant.op = sub i64 1, %1
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %3, %.lr.ph68.preheader ] ; 3 uses
  %.05967 = phi i64 [ %i.z, %.loopexit ], [ 0, %.lr.ph68.preheader ] ; 14 uses
  %i.j = shl i64 %.05967, 3                       ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 8
  %i.l = getelementptr i8, ptr %5, i64 %i.j
  %scevgep77 = getelementptr i8, ptr %i.l, i64 16
  %smin78 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.m = xor i64 %.05967, -1
  %i.n = add i64 %smin78, %i.m
  %i.o = shl i64 %i.n, 3                          ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep77, i64 %i.o
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a) ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05967
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %5, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !26 ; 5 uses
  %.not = icmp eq i64 %i.q, %.05967
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.05967 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !26
  store double %i.u, ptr %i.r, align 8, !tbaa !26
  store double %i.s, ptr %i.t, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05967
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 3 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %2 ; 4 uses
  %i.y = add nsw i64 %.05967, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %i.a)
  %i.z = add nuw nsw i64 %.05967, 1               ; 6 uses
  %.not6465.not = icmp slt i64 %.05967, %.
  br i1 %.not6465.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aa = sub i64 %smin, %.05967                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph.preheader111, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.c
  %scevgep80 = getelementptr i8, ptr %i.ab, i64 8
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.c
  %scevgep81 = getelementptr i8, ptr %i.ac, i64 16
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.o
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ad = add i64 %i.z, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %i.z, %index                ; 2 uses
  %i.af = sub nuw nsw i64 %i.ae, %.05967
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !26, !alias.scope !70
  %wide.load83 = load <2 x double>, ptr %i.ah, align 8, !tbaa !26, !alias.scope !70
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load84 = load <2 x double>, ptr %i.ai, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %wide.load85 = load <2 x double>, ptr %i.aj, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load84)
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load83, <2 x double> %wide.load85)
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader111

.lr.ph.preheader111:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.066.ph = phi i64 [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.ad, %middle.block ] ; 6 uses
  %i.an = add i64 %smin, %.066.ph
  %i.ao = and i64 %i.an, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ao, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader111
  %i.ap = sub nuw nsw i64 %.066.ph, %.05967
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066.ph ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !26
  %i.au = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ar, double %i.at)
  store double %i.au, ptr %i.as, align 8, !tbaa !26
  %i.av = add nuw i64 %.066.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader111
  %.066.unr = phi i64 [ %.066.ph, %.lr.ph.preheader111 ], [ %i.av, %.lr.ph.prol ]
  %i.aw = icmp eq i64 %smin, %.066.ph
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi i64 [ %i.bk, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ax = sub nuw nsw i64 %.066, %.05967
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !26
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.s, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !26
  %i.bd = add nuw i64 %.066, 1                    ; 3 uses
  %i.be = sub nuw nsw i64 %i.bd, %.05967
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bd ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !26
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bg, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !26
  %i.bk = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bd, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !64

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %.16072 = phi i64 [ %i.a, %.lr.ph73.preheader ], [ %i.ct, %._crit_edge ] ; 10 uses
  %i.bl = sub i64 %i.f, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bl, i64 0) ; 2 uses
  %i.bm = shl nuw i64 %smax, 3
  %scevgep87 = getelementptr i8, ptr %5, i64 %i.bm
  %i.bn = shl i64 %indvar, 3
  %i.bo = sub i64 %i.h, %i.bn
  %scevgep88 = getelementptr i8, ptr %5, i64 %i.bo
  %.reass = add i64 %indvar, %invariant.op
  %i.bp = add i64 %smax, %.reass
  %i.bq = shl i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16072
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %2 ; 4 uses
  %i.bu = sub nsw i64 %.16072, %2
  %i.bv = tail call i64 @llvm.smax.i64(i64 %i.bu, i64 0) ; 5 uses
  %i.bw = load double, ptr %i.bt, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.16072 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !26
  %i.bz = fdiv double %i.by, %i.bw                ; 2 uses
  store double %i.bz, ptr %i.bx, align 8, !tbaa !26
  %i.ca = fneg double %i.bz                       ; 2 uses
  %.not.not69 = icmp samesign ult i64 %i.bv, %.16072
  br i1 %.not.not69, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.lr.ph73
  %i.cb = tail call i64 @llvm.smin.i64(i64 %.16072, i64 %2) ; 3 uses
  %min.iters.check95 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check95, label %.lr.ph71.preheader110, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.lr.ph71.preheader
  %scevgep89 = getelementptr i8, ptr %i.bs, i64 %i.i
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.bq
  %bound091 = icmp ult ptr %scevgep87, %i.bt
  %bound192 = icmp ult ptr %scevgep90, %scevgep88
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.lr.ph71.preheader110, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck86
  %n.vec97 = and i64 %i.cb, -4                    ; 3 uses
  %i.cc = add i64 %i.bv, %n.vec97
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph96
  %index101 = phi i64 [ 0, %vector.ph96 ], [ %index.next106, %vector.body100 ] ; 2 uses
  %i.cd = add nuw i64 %i.bv, %index101            ; 2 uses
  %i.ce = sub nsw i64 %i.cd, %.16072
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load102 = load <2 x double>, ptr %i.cf, align 8, !tbaa !26, !alias.scope !72
  %wide.load103 = load <2 x double>, ptr %i.cg, align 8, !tbaa !26, !alias.scope !72
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cd ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load104 = load <2 x double>, ptr %i.ch, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %wide.load105 = load <2 x double>, ptr %i.ci, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load102, <2 x double> %wide.load104)
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load103, <2 x double> %wide.load105)
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %index.next106 = add nuw i64 %index101, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next106, %n.vec97
  br i1 %i.cl, label %middle.block107, label %vector.body100, !llvm.loop !68

middle.block107:                                  ; preds = %vector.body100
  %cmp.n108 = icmp eq i64 %i.cb, %n.vec97
  br i1 %cmp.n108, label %._crit_edge, label %.lr.ph71.preheader110

.lr.ph71.preheader110:                            ; preds = %vector.memcheck86, %.lr.ph71.preheader, %middle.block107
  %.170.ph = phi i64 [ %i.bv, %vector.memcheck86 ], [ %i.bv, %.lr.ph71.preheader ], [ %i.cc, %middle.block107 ]
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader110, %.lr.ph71
  %.170 = phi i64 [ %i.cs, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader110 ] ; 3 uses
  %i.cm = sub nsw i64 %.170, %.16072
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.170 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !26
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.co, double %i.cq)
  store double %i.cr, ptr %i.cp, align 8, !tbaa !26
  %i.cs = add nuw nsw i64 %.170, 1                ; 2 uses
  %.not.not = icmp slt i64 %i.cs, %.16072
  br i1 %.not.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph71, %middle.block107, %.lr.ph73
  %i.ct = add nsw i64 %.16072, -1
  %i.cu = icmp sgt i64 %.16072, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cu, label %.lr.ph73, label %._crit_edge74, !llvm.loop !1

._crit_edge74:                                    ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = add i64 %3, %2                           ; 2 uses
  %i.l = icmp sgt i64 %i.f, 0
  br i1 %i.l, label %.lr.ph24.i, label %bandCopy.exit

.lr.ph24.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %2                            ; 2 uses
  %.not20.i = icmp slt i64 %i.k, 0
  br i1 %.not20.i, label %bandCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph24.i
  %i.n = sub i64 %i.j, %i.h
  %i.o = shl i64 %i.n, 3
  %i.p = add i64 %3, %2
  %i.q = add i64 %i.p, 1
  %i.r = add i64 %3, %2
  %i.s = add i64 %3, %2
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 6
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.022.i = phi i64 [ %i.bh, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.h
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.m ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.j
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.m ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = ptrtoaddr ptr %i.v to i64
  %i.ae = add i64 %i.o, %i.ac
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !26
  %wide.load8 = load <2 x double>, ptr %i.ah, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %wide.load, ptr %i.ai, align 8, !tbaa !26
  store <2 x double> %wide.load8, ptr %i.aj, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.01921.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.al = sub i64 %i.r, %.01921.i.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01921.i.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.01921.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01921.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01921.i.prol
  store double %i.an, ptr %i.ao, align 8, !tbaa !26
  %i.ap = add nuw i64 %.01921.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01921.i.unr = phi i64 [ %.01921.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp ult i64 %i.al, 3
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01921.i = phi i64 [ %i.bg, %scalar.ph ], [ %.01921.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01921.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01921.i
  store double %i.as, ptr %i.at, align 8, !tbaa !26
  %i.au = add nuw i64 %.01921.i, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.au
  store double %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = add nuw i64 %.01921.i, 2                ; 2 uses
end_hunk_0
begin_hunk_1_@bandCopy:bb.a
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  store double %i.aq, ptr %i.ar, align 8, !tbaa !26
  %i.as = add nuw i64 %.01921, 3                  ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.as
  store double %i.au, ptr %i.av, align 8, !tbaa !26
  %i.aw = add nuw i64 %.01921, 4
  %exitcond.not.3 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ax = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond26.not = icmp eq i64 %i.ax, %2
  br i1 %exitcond26.not, label %._crit_edge25.split, label %.lr.ph, !llvm.loop !2

._crit_edge25.split:                              ; preds = %._crit_edge, %.lr.ph24, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandScale(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = add i64 %i.h, %i.f                       ; 2 uses
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph19.i, label %bandScale.exit

.lr.ph19.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %i.f
  %.not15.i = icmp slt i64 %i.k, 0
  br i1 %.not15.i, label %bandScale.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph19.i
  %i.n = add i64 %i.h, %i.f
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 4
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.017.i = phi i64 [ %i.ac, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.017.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.j
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !26
  %wide.load8 = load <2 x double>, ptr %i.u, align 8, !tbaa !26
  %i.v = fmul <2 x double> %broadcast.splat, %wide.load
  %i.w = fmul <2 x double> %broadcast.splat, %wide.load8
  store <2 x double> %i.v, ptr %i.t, align 8, !tbaa !26
  store <2 x double> %i.w, ptr %i.u, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01416.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01416.i = phi i64 [ %i.ab, %scalar.ph ], [ %.01416.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.01416.i ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !26
  %i.aa = fmul double %0, %i.z
  store double %i.aa, ptr %i.y, align 8, !tbaa !26
  %i.ab = add nuw i64 %.01416.i, 1
  %exitcond.not.i = icmp eq i64 %.01416.i, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !81

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ac = add nuw nsw i64 %.017.i, 1              ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.ac, %i.d
  br i1 %exitcond21.not.i, label %bandScale.exit, label %.lr.ph.i, !llvm.loop !3

bandScale.exit:                                   ; preds = %._crit_edge.i, %bb.a, %.lr.ph19.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandScale(double noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %4, %3                           ; 2 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph19, label %._crit_edge20.split

.lr.ph19:                                         ; preds = %bb.a
  %i.c = sub i64 0, %3
  %.not15 = icmp slt i64 %i.a, 0
  br i1 %.not15, label %._crit_edge20.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph19
  %i.d = add i64 %4, %3
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.e, 4
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.017 = phi i64 [ %i.s, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %5
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.j, align 8, !tbaa !26
  %wide.load24 = load <2 x double>, ptr %i.k, align 8, !tbaa !26
  %i.l = fmul <2 x double> %broadcast.splat, %wide.load
  %i.m = fmul <2 x double> %broadcast.splat, %wide.load24
  store <2 x double> %i.l, ptr %i.j, align 8, !tbaa !26
  store <2 x double> %i.m, ptr %i.k, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01416.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01416 = phi i64 [ %i.r, %scalar.ph ], [ %.01416.ph, %scalar.ph.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01416 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !26
  %i.q = fmul double %0, %i.p
  store double %i.q, ptr %i.o, align 8, !tbaa !26
  %i.r = add nuw i64 %.01416, 1
  %exitcond.not = icmp eq i64 %.01416, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.s = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond21.not = icmp eq i64 %i.s, %2
  br i1 %exitcond21.not, label %._crit_edge20.split, label %.lr.ph, !llvm.loop !3

._crit_edge20.split:                              ; preds = %._crit_edge, %.lr.ph19, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandMatvec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.k = icmp sgt i64 %i.d, 0
  br i1 %i.k, label %.lr.ph43.i, label %bandMatvec.exit

.lr.ph43.i:                                       ; preds = %bb.a
  %i.l = shl nuw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.l, i1 false), !tbaa !26
  %i.m = add nsw i64 %i.d, -1                     ; 2 uses
  %scevgep10 = getelementptr i8, ptr %2, i64 8
  %i.n = shl i64 %i.j, 3
  %i.o = shl i64 %i.d, 3
  %scevgep16 = getelementptr i8, ptr %1, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph43.i
  %.042.i = phi i64 [ 0, %.lr.ph43.i ], [ %i.bb, %._crit_edge.i ] ; 11 uses
  %i.p = sub i64 %.042.i, %i.f
  %smax = tail call i64 @llvm.smax.i64(i64 %i.p, i64 0) ; 2 uses
  %i.q = shl nuw i64 %smax, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.q   ; 2 uses
  %i.r = add i64 %i.h, %.042.i
  %smin = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.m) ; 2 uses
  %i.s = shl i64 %smin, 3
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.s ; 2 uses
  %i.t = sub nsw i64 %smax, %.042.i
  %i.u = shl i64 %i.t, 3
  %i.v = sub i64 %i.j, %.042.i
  %i.w = add i64 %smin, %i.v
  %i.x = shl i64 %i.w, 3
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.042.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.j ; 2 uses
  %i.ab = sub nsw i64 %.042.i, %i.f
  %i.ac = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 0) ; 6 uses
  %i.ad = add nsw i64 %.042.i, %i.h
  %i.ae = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 %i.m) ; 3 uses
  %.not3739.i = icmp sgt i64 %i.ac, %i.ae
  br i1 %.not3739.i, label %._crit_edge.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %bb.b
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.042.i ; 2 uses
  %i.ag = add i64 %i.ae, 1
  %i.ah = sub i64 %i.ag, %i.ac                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph41.i
  %scevgep12 = getelementptr i8, ptr %i.z, i64 %i.n
  %scevgep13 = getelementptr i8, ptr %scevgep12, i64 %i.u
  %scevgep14 = getelementptr i8, ptr %i.z, i64 8
  %scevgep15 = getelementptr i8, ptr %scevgep14, i64 %i.x
  %bound0 = icmp ult ptr %scevgep, %scevgep15
  %bound1 = icmp ult ptr %scevgep13, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %scevgep, %scevgep16
  %bound118 = icmp ult ptr %1, %scevgep11
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.ai = add i64 %i.ac, %n.vec
  %i.aj = load double, ptr %i.af, align 8, !tbaa !26, !alias.scope !90
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add nuw i64 %i.ac, %index               ; 2 uses
  %i.al = sub nsw i64 %i.ak, %.042.i
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !26, !alias.scope !91
  %wide.load20 = load <2 x double>, ptr %i.an, align 8, !tbaa !26, !alias.scope !91
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load21 = load <2 x double>, ptr %i.ao, align 8, !tbaa !26, !alias.scope !92, !noalias !93
  %wide.load22 = load <2 x double>, ptr %i.ap, align 8, !tbaa !26, !alias.scope !92, !noalias !93
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat, <2 x double> %wide.load21)
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load20, <2 x double> %broadcast.splat, <2 x double> %wide.load22)
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !26, !alias.scope !92, !noalias !93
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !26, !alias.scope !92, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph41.i, %middle.block
  %.140.i.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph41.i ], [ %i.ai, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.140.i = phi i64 [ %i.ba, %scalar.ph ], [ %.140.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = sub nsw i64 %.140.i, %.042.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !26
  %i.aw = load double, ptr %i.af, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.140.i ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !26
  %i.az = tail call double @llvm.fmuladd.f64(double %i.av, double %i.aw, double %i.ay)
  store double %i.az, ptr %i.ax, align 8, !tbaa !26
  %i.ba = add nuw nsw i64 %.140.i, 1
  %.not37.not.i = icmp slt i64 %.140.i, %i.ae
  br i1 %.not37.not.i, label %scalar.ph, label %._crit_edge.i, !llvm.loop !89

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %bb.b
  %i.bb = add nuw nsw i64 %.042.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.d
  br i1 %exitcond.not.i, label %bandMatvec.exit, label %bb.b, !llvm.loop !4

bandMatvec.exit:                                  ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandMatvec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %bb.a
  %i.b = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.b, i1 false), !tbaa !26
  %i.c = add nsw i64 %3, -1                       ; 2 uses
  %scevgep48 = getelementptr i8, ptr %2, i64 8
  %i.d = shl i64 %6, 3
  %i.e = shl i64 %3, 3
  %scevgep54 = getelementptr i8, ptr %1, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph43, %._crit_edge
  %.042 = phi i64 [ 0, %.lr.ph43 ], [ %i.ar, %._crit_edge ] ; 11 uses
  %i.f = sub i64 %.042, %4
  %smax = tail call i64 @llvm.smax.i64(i64 %i.f, i64 0) ; 2 uses
  %i.g = shl nuw i64 %smax, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.g   ; 2 uses
  %i.h = add i64 %5, %.042
  %smin = tail call i64 @llvm.smin.i64(i64 %i.h, i64 %i.c) ; 2 uses
  %i.i = shl i64 %smin, 3
  %scevgep49 = getelementptr i8, ptr %scevgep48, i64 %i.i ; 2 uses
  %i.j = sub nsw i64 %smax, %.042
  %i.k = shl i64 %i.j, 3
  %i.l = sub i64 %6, %.042
  %i.m = add i64 %smin, %i.l
  %i.n = shl i64 %i.m, 3
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %6 ; 2 uses
  %i.r = sub nsw i64 %.042, %4
  %i.s = tail call i64 @llvm.smax.i64(i64 %i.r, i64 0) ; 6 uses
  %i.t = add nsw i64 %.042, %5
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.c) ; 3 uses
  %.not3739 = icmp sgt i64 %i.s, %i.u
  br i1 %.not3739, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.042 ; 2 uses
  %i.w = add i64 %i.u, 1
  %i.x = sub i64 %i.w, %i.s                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph41
  %scevgep50 = getelementptr i8, ptr %i.p, i64 %i.d
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 %i.k
  %scevgep52 = getelementptr i8, ptr %i.p, i64 8
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.n
  %bound0 = icmp ult ptr %scevgep, %scevgep53
  %bound1 = icmp ult ptr %scevgep51, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ult ptr %scevgep, %scevgep54
  %bound156 = icmp ult ptr %1, %scevgep49
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.y = add i64 %i.s, %n.vec
  %i.z = load double, ptr %i.v, align 8, !tbaa !26, !alias.scope !100
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.z, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add nuw i64 %i.s, %index                ; 2 uses
  %i.ab = sub nsw i64 %i.aa, %.042
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !26, !alias.scope !101
  %wide.load58 = load <2 x double>, ptr %i.ad, align 8, !tbaa !26, !alias.scope !101
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aa ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load59 = load <2 x double>, ptr %i.ae, align 8, !tbaa !26, !alias.scope !102, !noalias !103
  %wide.load60 = load <2 x double>, ptr %i.af, align 8, !tbaa !26, !alias.scope !102, !noalias !103
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat, <2 x double> %wide.load59)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load58, <2 x double> %broadcast.splat, <2 x double> %wide.load60)
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !26, !alias.scope !102, !noalias !103
  store <2 x double> %i.ah, ptr %i.af, align 8, !tbaa !26, !alias.scope !102, !noalias !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph41, %middle.block
  %.140.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph41 ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.140 = phi i64 [ %i.aq, %scalar.ph ], [ %.140.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = sub nsw i64 %.140, %.042
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !26
  %i.am = load double, ptr %i.v, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.140 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !26
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ao)
  store double %i.ap, ptr %i.an, align 8, !tbaa !26
  %i.aq = add nuw nsw i64 %.140, 1
  %.not37.not = icmp slt i64 %.140, %i.u
  br i1 %.not37.not, label %scalar.ph, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  %i.ar = add nuw nsw i64 %.042, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %3
  br i1 %exitcond.not, label %._crit_edge44, label %bb.b, !llvm.loop !4

._crit_edge44:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

declare double @SUNRabs(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandAddIdentity(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.b = icmp ult i64 %1, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !26
  %i.g = fadd double %i.f, 1.000000e+00
  store double %i.g, ptr %i.e, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %2 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !26
  %i.m = fadd double %i.l, 1.000000e+00
  store double %i.m, ptr %i.k, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %2 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !26
  %i.s = fadd double %i.r, 1.000000e+00
  store double %i.s, ptr %i.q, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %2 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !26
  %i.y = fadd double %i.x, 1.000000e+00
  store double %i.y, ptr %i.w, align 8, !tbaa !26
  %i.z = add nuw nsw i64 %.05, 4                  ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !104

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.05.epil = phi i64 [ %i.af, %.lr.ph.epil ], [ %.05.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05.epil
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %2 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !26
  %i.ae = fadd double %i.ad, 1.000000e+00
  store double %i.ae, ptr %i.ac, align 8, !tbaa !26
  %i.af = add nuw nsw i64 %.05.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !105

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
