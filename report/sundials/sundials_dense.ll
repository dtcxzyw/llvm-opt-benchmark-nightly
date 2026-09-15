Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_dense?download=true
inline.NumInlined: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@SUNDlsMat_denseGEQRF:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol, !llvm.loop !110

.lr.ph127.prol.loopexit:                          ; preds = %.lr.ph127.prol, %.lr.ph127.preheader179
  %.4126.unr = phi i64 [ %.4126.ph, %.lr.ph127.preheader179 ], [ %i.ei, %.lr.ph127.prol ]
  %i.ej = icmp ult i64 %i.ef, 3
  br i1 %i.ej, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127
  %.4126 = phi i64 [ %i.ev, %.lr.ph127 ], [ %.4126.unr, %.lr.ph127.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4126
  %i.el = load double, ptr %i.ek, align 8, !tbaa !19
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.4126
  store double %i.el, ptr %gep125, align 8, !tbaa !19
  %i.em = add nuw nsw i64 %.4126, 1               ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !19
  %gep125.1 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.em
  store double %i.eo, ptr %gep125.1, align 8, !tbaa !19
  %i.ep = add nuw nsw i64 %.4126, 2               ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !19
  %gep125.2 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ep
  store double %i.er, ptr %gep125.2, align 8, !tbaa !19
  %i.es = add nuw nsw i64 %.4126, 3               ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !19
  %gep125.3 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.es
  store double %i.eu, ptr %gep125.3, align 8, !tbaa !19
  %i.ev = add nuw nsw i64 %.4126, 4               ; 2 uses
  %exitcond138.not.3 = icmp eq i64 %i.ev, %indvars.iv
  br i1 %exitcond138.not.3, label %.loopexit, label %.lr.ph127, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127, %middle.block, %._crit_edge123
  %i.ew = add nuw nsw i64 %.090128, 1             ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond139.not = icmp eq i64 %i.ew, %2
  br i1 %exitcond139.not, label %._crit_edge131, label %bb.b

._crit_edge131:                                   ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_DenseORMQR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 15 uses
  %i.g = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %i.f, 8
  %i.j = sub i64 %i.i, %i.h
  %diff.check = icmp ugt i64 %i.j, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !19
  %wide.load9 = load <2 x double>, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !19
  store <2 x double> %wide.load9, ptr %i.n, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader53.i, label %.lr.ph.i.preheader26

.lr.ph.i.preheader26:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.04854.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader26, %.lr.ph.i.prol
  %.04854.i.prol = phi i64 [ %i.s, %.lr.ph.i.prol ], [ %.04854.i.ph, %.lr.ph.i.preheader26 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader26 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i.prol
  %i.q = load double, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !19
  %i.s = add nuw nsw i64 %.04854.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !115

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader26
  %.04854.i.unr = phi i64 [ %.04854.i.ph, %.lr.ph.i.preheader26 ], [ %i.s, %.lr.ph.i.prol ]
  %i.t = sub nsw i64 %.04854.i.ph, %i.f
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.preheader53.i, label %.lr.ph.i

.preheader53.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %i.v = icmp slt i64 %i.f, %i.d
  br i1 %i.v, label %.lr.ph56.preheader.i, label %.preheader.i

.lr.ph56.preheader.i:                             ; preds = %.preheader53.i
  %i.w = shl i64 %i.f, 3
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.w
  %i.x = sub i64 %i.d, %i.f
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !19
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04854.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.04854.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = add nuw nsw i64 %.04854.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !tbaa !19
  %i.ag = add nuw nsw i64 %.04854.i, 2            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  store double %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = add nuw nsw i64 %.04854.i, 3            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ao = add nuw nsw i64 %.04854.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond.not.i.3, label %.preheader53.i, label %.lr.ph.i, !llvm.loop !116

.preheader.i:                                     ; preds = %.lr.ph56.preheader.i, %.preheader53.i
  br i1 %i.g, label %.lr.ph66.preheader.i, label %SUNDlsMat_denseORMQR.exit

.lr.ph66.preheader.i:                             ; preds = %.preheader.i
  %i.ap = add i64 %i.d, 1
  %i.aq = sub i64 %i.ap, %i.f
  %i.ar = shl i64 %i.d, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ar
  %i.as = add i64 %i.ar, 8
  %i.at = shl i64 %i.f, 3
  %i.au = sub i64 %i.as, %i.at
  %i.av = sub i64 %i.d, %i.f
  %i.aw = getelementptr i8, ptr %4, i64 %i.au
  %i.ax = sub i64 %i.f, %i.d
  %bound1 = icmp ult ptr %4, %scevgep
  br label %.lr.ph66.i

.loopexit.i:                                      ; preds = %scalar.ph12.prol.loopexit, %scalar.ph12, %middle.block23, %._crit_edge.i
  %i.ay = icmp samesign ugt i64 %.065.in.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ay, label %.lr.ph66.i, label %SUNDlsMat_denseORMQR.exit

.lr.ph66.i:                                       ; preds = %.loopexit.i, %.lr.ph66.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph66.preheader.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.aq, %.lr.ph66.preheader.i ] ; 6 uses
  %.065.in.i = phi i64 [ %.065.i, %.loopexit.i ], [ %i.f, %.lr.ph66.preheader.i ] ; 3 uses
  %i.az = add i64 %i.av, %indvar                  ; 4 uses
  %i.ba = shl i64 %indvar, 3
  %scevgep11 = getelementptr i8, ptr %i.aw, i64 %i.ba
  %.065.i = add nsw i64 %.065.in.i, -1            ; 7 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.065.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !19
  %i.bd = getelementptr [8 x i8], ptr %3, i64 %.065.i ; 6 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !19 ; 3 uses
  %i.bf = sub nsw i64 %i.d, %.065.i               ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %.lr.ph59.i.preheader, label %._crit_edge.i

.lr.ph59.i.preheader:                             ; preds = %.lr.ph66.i
  %xtraiter27 = and i64 %i.az, 1
  %i.bh = add i64 %indvar, -1
  %i.bi = icmp eq i64 %i.ax, %i.bh
  br i1 %i.bi, label %.lr.ph59.i.epil.preheader, label %.lr.ph59.i.preheader.new

.lr.ph59.i.preheader.new:                         ; preds = %.lr.ph59.i.preheader
  %unroll_iter = and i64 %i.az, -2
  br label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.lr.ph59.i, %.lr.ph59.i.preheader.new
  %.258.i = phi i64 [ 1, %.lr.ph59.i.preheader.new ], [ %i.by, %.lr.ph59.i ] ; 5 uses
  %.04957.i = phi double [ %i.be, %.lr.ph59.i.preheader.new ], [ %i.bx, %.lr.ph59.i ]
  %niter = phi i64 [ 0, %.lr.ph59.i.preheader.new ], [ %niter.next.1, %.lr.ph59.i ]
  %i.bj = add nuw nsw i64 %.258.i, %.065.i        ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.258.i
  store double %i.bl, ptr %i.bm, align 8, !tbaa !19
  %i.bn = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bj
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !19
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bo, double %.04957.i)
  %i.bq = add nuw i64 %.258.i, %.065.in.i         ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !19 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.258.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store double %i.bs, ptr %i.bu, align 8, !tbaa !19
  %i.bv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bq
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !19
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bw, double %i.bp) ; 3 uses
  %i.by = add nuw nsw i64 %.258.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph63.i.loopexit.unr-lcssa, label %.lr.ph59.i

._crit_edge.i:                                    ; preds = %.lr.ph66.i
  %i.bz = icmp eq i64 %i.bf, 1
  br i1 %i.bz, label %.lr.ph63.i, label %.loopexit.i

.lr.ph63.i.loopexit.unr-lcssa:                    ; preds = %.lr.ph59.i
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph63.i, label %.lr.ph59.i.epil.preheader

.lr.ph59.i.epil.preheader:                        ; preds = %.lr.ph63.i.loopexit.unr-lcssa, %.lr.ph59.i.preheader
  %.258.i.epil.init = phi i64 [ 1, %.lr.ph59.i.preheader ], [ %i.by, %.lr.ph63.i.loopexit.unr-lcssa ] ; 2 uses
  %.04957.i.epil.init = phi double [ %i.be, %.lr.ph59.i.preheader ], [ %i.bx, %.lr.ph63.i.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ca = add nuw nsw i64 %.258.i.epil.init, %.065.i ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !19 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.258.i.epil.init
  store double %i.cc, ptr %i.cd, align 8, !tbaa !19
  %i.ce = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ca
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !19
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cf, double %.04957.i.epil.init)
  br label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph59.i.epil.preheader, %.lr.ph63.i.loopexit.unr-lcssa, %._crit_edge.i
  %.049.lcssa73.i = phi double [ %i.be, %._crit_edge.i ], [ %i.bx, %.lr.ph63.i.loopexit.unr-lcssa ], [ %i.cg, %.lr.ph59.i.epil.preheader ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.065.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !19
  %i.cj = fneg double %i.ci
  %i.ck = fmul double %.049.lcssa73.i, %i.cj      ; 4 uses
  %min.iters.check13 = icmp ult i64 %indvars.iv.i, 4
  %bound0 = icmp ult ptr %i.bd, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  %or.cond37 = select i1 %min.iters.check13, i1 true, i1 %found.conflict
  br i1 %or.cond37, label %scalar.ph12.preheader, label %vector.ph14

vector.ph14:                                      ; preds = %.lr.ph63.i
  %n.vec15 = and i64 %indvars.iv.i, -4            ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph14
  %index17 = phi i64 [ 0, %vector.ph14 ], [ %index.next22, %vector.body16 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index17 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load18 = load <2 x double>, ptr %i.cl, align 8, !tbaa !19, !alias.scope !122
  %wide.load19 = load <2 x double>, ptr %i.cm, align 8, !tbaa !19, !alias.scope !122
  %i.cn = getelementptr [8 x i8], ptr %i.bd, i64 %index17 ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16     ; 2 uses
  %wide.load20 = load <2 x double>, ptr %i.cn, align 8, !tbaa !19, !alias.scope !123, !noalias !122
  %wide.load21 = load <2 x double>, ptr %i.co, align 8, !tbaa !19, !alias.scope !123, !noalias !122
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load18, <2 x double> %wide.load20)
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load19, <2 x double> %wide.load21)
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !19, !alias.scope !123, !noalias !122
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !19, !alias.scope !123, !noalias !122
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.cr = icmp eq i64 %index.next22, %n.vec15
  br i1 %i.cr, label %middle.block23, label %vector.body16, !llvm.loop !120

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %indvars.iv.i, %n.vec15
  br i1 %cmp.n24, label %.loopexit.i, label %scalar.ph12.preheader

scalar.ph12.preheader:                            ; preds = %.lr.ph63.i, %middle.block23
  %.361.i.ph = phi i64 [ %n.vec15, %middle.block23 ], [ 0, %.lr.ph63.i ] ; 5 uses
  %xtraiter31 = and i64 %indvars.iv.i, 1
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %scalar.ph12.prol.loopexit, label %scalar.ph12.prol

scalar.ph12.prol:                                 ; preds = %scalar.ph12.preheader
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.361.i.ph
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !19
  %gep.i.prol = getelementptr [8 x i8], ptr %i.bd, i64 %.361.i.ph ; 2 uses
  %i.cu = load double, ptr %gep.i.prol, align 8, !tbaa !19
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.ct, double %i.cu)
  store double %i.cv, ptr %gep.i.prol, align 8, !tbaa !19
  %i.cw = or disjoint i64 %.361.i.ph, 1
  br label %scalar.ph12.prol.loopexit

scalar.ph12.prol.loopexit:                        ; preds = %scalar.ph12.prol, %scalar.ph12.preheader
  %.361.i.unr = phi i64 [ %.361.i.ph, %scalar.ph12.preheader ], [ %i.cw, %scalar.ph12.prol ]
  %i.cx = icmp eq i64 %i.az, %.361.i.ph
  br i1 %i.cx, label %.loopexit.i, label %scalar.ph12

scalar.ph12:                                      ; preds = %scalar.ph12.prol.loopexit, %scalar.ph12
  %.361.i = phi i64 [ %i.dh, %scalar.ph12 ], [ %.361.i.unr, %scalar.ph12.prol.loopexit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.361.i
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !19
  %gep.i = getelementptr [8 x i8], ptr %i.bd, i64 %.361.i ; 2 uses
  %i.da = load double, ptr %gep.i, align 8, !tbaa !19
  %i.db = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cz, double %i.da)
  store double %i.db, ptr %gep.i, align 8, !tbaa !19
  %i.dc = add nuw nsw i64 %.361.i, 1              ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !19
  %gep.i.1 = getelementptr [8 x i8], ptr %i.bd, i64 %i.dc ; 2 uses
  %i.df = load double, ptr %gep.i.1, align 8, !tbaa !19
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.de, double %i.df)
  store double %i.dg, ptr %gep.i.1, align 8, !tbaa !19
  %i.dh = add nuw nsw i64 %.361.i, 2              ; 2 uses
  %exitcond70.not.i.1 = icmp eq i64 %i.dh, %indvars.iv.i
  br i1 %exitcond70.not.i.1, label %.loopexit.i, label %scalar.ph12, !llvm.loop !121

SUNDlsMat_denseORMQR.exit:                        ; preds = %.loopexit.i, %.preheader.i
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_denseORMQR(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %2, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader53

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %4 to i64
  %min.iters.check = icmp ult i64 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x double>, ptr %i.e, align 8, !tbaa !19
  %wide.load74 = load <2 x double>, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <2 x double> %wide.load, ptr %i.g, align 8, !tbaa !19
  store <2 x double> %wide.load74, ptr %i.h, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader53, label %.lr.ph.preheader92

.lr.ph.preheader92:                               ; preds = %.lr.ph.preheader, %middle.block
  %.04854.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader92, %.lr.ph.prol
  %.04854.prol = phi i64 [ %i.m, %.lr.ph.prol ], [ %.04854.ph, %.lr.ph.preheader92 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader92 ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04854.prol
  %i.k = load double, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.04854.prol
  store double %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = add nuw nsw i64 %.04854.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !125

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader92
  %.04854.unr = phi i64 [ %.04854.ph, %.lr.ph.preheader92 ], [ %i.m, %.lr.ph.prol ]
  %i.n = sub nsw i64 %.04854.ph, %2
  %i.o = icmp ugt i64 %i.n, -4
  br i1 %i.o, label %.preheader53, label %.lr.ph

.preheader53:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.p = icmp slt i64 %2, %1
  br i1 %i.p, label %.lr.ph56.preheader, label %.preheader

.lr.ph56.preheader:                               ; preds = %.preheader53
  %i.q = shl i64 %2, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.q
  %i.r = sub i64 %1, %2
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !19
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04854 = phi i64 [ %i.ai, %.lr.ph ], [ %.04854.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04854
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.04854
  store double %i.u, ptr %i.v, align 8, !tbaa !19
  %i.w = add nuw nsw i64 %.04854, 1               ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.w
  store double %i.y, ptr %i.z, align 8, !tbaa !19
  %i.aa = add nuw nsw i64 %.04854, 2              ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aa
  store double %i.ac, ptr %i.ad, align 8, !tbaa !19
  %i.ae = add nuw nsw i64 %.04854, 3              ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  store double %i.ag, ptr %i.ah, align 8, !tbaa !19
  %i.ai = add nuw nsw i64 %.04854, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.3, label %.preheader53, label %.lr.ph, !llvm.loop !126

.preheader:                                       ; preds = %.lr.ph56.preheader, %.preheader53
  br i1 %i.a, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %.preheader
  %i.aj = add i64 %1, 1
  %i.ak = sub i64 %i.aj, %2
  %i.al = shl i64 %1, 3                           ; 2 uses
  %scevgep76 = getelementptr i8, ptr %5, i64 %i.al
  %i.am = add i64 %i.al, 8
  %i.an = shl i64 %2, 3
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sub i64 %1, %2
  %i.aq = getelementptr i8, ptr %6, i64 %i.ao
  %i.ar = sub i64 %2, %1
  %bound1 = icmp ult ptr %6, %scevgep76
  br label %.lr.ph66

.loopexit:                                        ; preds = %scalar.ph78.prol.loopexit, %scalar.ph78, %middle.block89, %._crit_edge
  %i.as = icmp samesign ugt i64 %.065.in, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.as, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph66.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph66.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %.065.in = phi i64 [ %2, %.lr.ph66.preheader ], [ %.065, %.loopexit ] ; 3 uses
  %i.at = add i64 %i.ap, %indvar                  ; 4 uses
  %i.au = shl i64 %indvar, 3
  %scevgep77 = getelementptr i8, ptr %i.aq, i64 %i.au
  %.065 = add nsw i64 %.065.in, -1                ; 7 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.065
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 3 uses
  store double 1.000000e+00, ptr %6, align 8, !tbaa !19
  %i.ax = getelementptr [8 x i8], ptr %5, i64 %.065 ; 6 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !19 ; 3 uses
  %i.az = sub nsw i64 %1, %.065                   ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %.lr.ph59.preheader, label %._crit_edge

.lr.ph59.preheader:                               ; preds = %.lr.ph66
  %xtraiter93 = and i64 %i.at, 1
  %i.bb = add i64 %indvar, -1
  %i.bc = icmp eq i64 %i.ar, %i.bb
  br i1 %i.bc, label %.lr.ph59.epil.preheader, label %.lr.ph59.preheader.new

.lr.ph59.preheader.new:                           ; preds = %.lr.ph59.preheader
  %unroll_iter = and i64 %i.at, -2
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59, %.lr.ph59.preheader.new
  %.258 = phi i64 [ 1, %.lr.ph59.preheader.new ], [ %i.bs, %.lr.ph59 ] ; 5 uses
  %.04957 = phi double [ %i.ay, %.lr.ph59.preheader.new ], [ %i.br, %.lr.ph59 ]
  %niter = phi i64 [ 0, %.lr.ph59.preheader.new ], [ %niter.next.1, %.lr.ph59 ]
  %i.bd = add nuw nsw i64 %.258, %.065            ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.258
  store double %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bd
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bi, double %.04957)
  %i.bk = add nuw i64 %.258, %.065.in             ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.258
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %i.bm, ptr %i.bo, align 8, !tbaa !19
  %i.bp = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bk
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !19
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bq, double %i.bj) ; 3 uses
  %i.bs = add nuw nsw i64 %.258, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph63.loopexit.unr-lcssa, label %.lr.ph59

._crit_edge:                                      ; preds = %.lr.ph66
  %i.bt = icmp eq i64 %i.az, 1
  br i1 %i.bt, label %.lr.ph63, label %.loopexit

.lr.ph63.loopexit.unr-lcssa:                      ; preds = %.lr.ph59
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.lr.ph63, label %.lr.ph59.epil.preheader

.lr.ph59.epil.preheader:                          ; preds = %.lr.ph63.loopexit.unr-lcssa, %.lr.ph59.preheader
  %.258.epil.init = phi i64 [ 1, %.lr.ph59.preheader ], [ %i.bs, %.lr.ph63.loopexit.unr-lcssa ] ; 2 uses
  %.04957.epil.init = phi double [ %i.ay, %.lr.ph59.preheader ], [ %i.br, %.lr.ph63.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.bu = add nuw nsw i64 %.258.epil.init, %.065  ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !19 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.258.epil.init
  store double %i.bw, ptr %i.bx, align 8, !tbaa !19
  %i.by = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bu
  %i.bz = load double, ptr %i.by, align 8, !tbaa !19
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bz, double %.04957.epil.init)
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph59.epil.preheader, %.lr.ph63.loopexit.unr-lcssa, %._crit_edge
  %.049.lcssa73 = phi double [ %i.ay, %._crit_edge ], [ %i.br, %.lr.ph63.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph59.epil.preheader ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.065
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !19
  %i.cd = fneg double %i.cc
  %i.ce = fmul double %.049.lcssa73, %i.cd        ; 4 uses
  %min.iters.check79 = icmp ult i64 %indvars.iv, 4
  %bound0 = icmp ult ptr %i.ax, %scevgep77
  %found.conflict = and i1 %bound0, %bound1
  %or.cond103 = select i1 %min.iters.check79, i1 true, i1 %found.conflict
  br i1 %or.cond103, label %scalar.ph78.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph63
  %n.vec81 = and i64 %indvars.iv, -4              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index83 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load84 = load <2 x double>, ptr %i.cf, align 8, !tbaa !19, !alias.scope !132
  %wide.load85 = load <2 x double>, ptr %i.cg, align 8, !tbaa !19, !alias.scope !132
  %i.ch = getelementptr [8 x i8], ptr %i.ax, i64 %index83 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16     ; 2 uses
  %wide.load86 = load <2 x double>, ptr %i.ch, align 8, !tbaa !19, !alias.scope !133, !noalias !132
  %wide.load87 = load <2 x double>, ptr %i.ci, align 8, !tbaa !19, !alias.scope !133, !noalias !132
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load84, <2 x double> %wide.load86)
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load85, <2 x double> %wide.load87)
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !19, !alias.scope !133, !noalias !132
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !19, !alias.scope !133, !noalias !132
  %index.next88 = add nuw i64 %index83, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.cl, label %middle.block89, label %vector.body82, !llvm.loop !130

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %indvars.iv, %n.vec81
  br i1 %cmp.n90, label %.loopexit, label %scalar.ph78.preheader

scalar.ph78.preheader:                            ; preds = %.lr.ph63, %middle.block89
  %.361.ph = phi i64 [ %n.vec81, %middle.block89 ], [ 0, %.lr.ph63 ] ; 5 uses
  %xtraiter97 = and i64 %indvars.iv, 1
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %scalar.ph78.prol.loopexit, label %scalar.ph78.prol

scalar.ph78.prol:                                 ; preds = %scalar.ph78.preheader
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.361.ph
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !19
  %gep.prol = getelementptr [8 x i8], ptr %i.ax, i64 %.361.ph ; 2 uses
  %i.co = load double, ptr %gep.prol, align 8, !tbaa !19
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cn, double %i.co)
  store double %i.cp, ptr %gep.prol, align 8, !tbaa !19
  %i.cq = or disjoint i64 %.361.ph, 1
  br label %scalar.ph78.prol.loopexit

scalar.ph78.prol.loopexit:                        ; preds = %scalar.ph78.prol, %scalar.ph78.preheader
  %.361.unr = phi i64 [ %.361.ph, %scalar.ph78.preheader ], [ %i.cq, %scalar.ph78.prol ]
  %i.cr = icmp eq i64 %i.at, %.361.ph
  br i1 %i.cr, label %.loopexit, label %scalar.ph78

scalar.ph78:                                      ; preds = %scalar.ph78.prol.loopexit, %scalar.ph78
  %.361 = phi i64 [ %i.db, %scalar.ph78 ], [ %.361.unr, %scalar.ph78.prol.loopexit ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.361
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !19
  %gep = getelementptr [8 x i8], ptr %i.ax, i64 %.361 ; 2 uses
  %i.cu = load double, ptr %gep, align 8, !tbaa !19
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ct, double %i.cu)
  store double %i.cv, ptr %gep, align 8, !tbaa !19
  %i.cw = add nuw nsw i64 %.361, 1                ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !19
  %gep.1 = getelementptr [8 x i8], ptr %i.ax, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %gep.1, align 8, !tbaa !19
  %i.da = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cy, double %i.cz)
  store double %i.da, ptr %gep.1, align 8, !tbaa !19
  %i.db = add nuw nsw i64 %.361, 2                ; 2 uses
  %exitcond70.not.1 = icmp eq i64 %i.db, %indvars.iv
  br i1 %exitcond70.not.1, label %.loopexit, label %scalar.ph78, !llvm.loop !131

._crit_edge67:                                    ; preds = %.loopexit, %.preheader
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_DenseCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  %i.j = icmp sgt i64 %i.f, 0
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %SUNDlsMat_denseCopy.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.f, 4
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.015.i = phi i64 [ %i.as, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.015.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 7 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.015.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 7 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !19
  %wide.load6 = load <2 x double>, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %wide.load, ptr %i.t, align 8, !tbaa !19
  store <2 x double> %wide.load6, ptr %i.u, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01314.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01314.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.01314.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01314.i.prol
  %i.x = load double, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01314.i.prol
  store double %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = add nuw nsw i64 %.01314.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !135

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01314.i.unr = phi i64 [ %.01314.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.01314.i.ph, %i.f
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01314.i = phi i64 [ %i.ar, %scalar.ph ], [ %.01314.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01314.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01314.i
  store double %i.ad, ptr %i.ae, align 8, !tbaa !19
  %i.af = add nuw nsw i64 %.01314.i, 1            ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.af
  store double %i.ah, ptr %i.ai, align 8, !tbaa !19
  %i.aj = add nuw nsw i64 %.01314.i, 2            ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  store double %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = add nuw nsw i64 %.01314.i, 3            ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an
  store double %i.ap, ptr %i.aq, align 8, !tbaa !19
  %i.ar = add nuw nsw i64 %.01314.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !136

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.as, %i.h
  br i1 %exitcond19.not.i, label %SUNDlsMat_denseCopy.exit, label %.lr.ph.i

SUNDlsMat_denseCopy.exit:                         ; preds = %._crit_edge.i, %bb.a
end_hunk_0
