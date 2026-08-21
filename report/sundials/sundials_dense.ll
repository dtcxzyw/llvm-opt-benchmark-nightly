inline.NumInlined: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@SUNDlsMat_denseGETRF:bb.a
  %.385.us = phi i64 [ %i.ck, %scalar.ph ], [ %.385.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.385.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.385.us ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !18
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.ca, double %i.cc)
  store double %i.cd, ptr %i.cb, align 8, !tbaa !18
  %i.ce = add nuw nsw i64 %.385.us, 1             ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ce ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !18
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cg, double %i.ci)
  store double %i.cj, ptr %i.ch, align 8, !tbaa !18
  %i.ck = add nuw nsw i64 %.385.us, 2             ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %i.ck, %1
  br i1 %exitcond101.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !33

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88.split.us
  %i.cl = add nuw nsw i64 %.06787.us, 1           ; 2 uses
  %exitcond102.not = icmp eq i64 %i.cl, %2
  br i1 %exitcond102.not, label %.loopexit75, label %.lr.ph88.split.us

.preheader.us:                                    ; preds = %.lr.ph88.split.us
  %i.cm = fneg double %i.bx                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %i.bv, i64 %i.i
  %scevgep113 = getelementptr i8, ptr %i.bv, i64 %i.b
  %bound0 = icmp ult ptr %scevgep, %scevgep115
  %bound1 = icmp ult ptr %scevgep114, %scevgep113
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = add nuw i64 %i.l, %index                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load = load <2 x double>, ptr %i.co, align 8, !tbaa !18, !alias.scope !34
  %wide.load116 = load <2 x double>, ptr %i.cp, align 8, !tbaa !18, !alias.scope !34
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cn ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.cq, align 8, !tbaa !18, !alias.scope !37, !noalias !34
  %wide.load118 = load <2 x double>, ptr %i.cr, align 8, !tbaa !18, !alias.scope !37, !noalias !34
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load117)
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load116, <2 x double> %wide.load118)
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !18, !alias.scope !37, !noalias !34
  store <2 x double> %i.ct, ptr %i.cr, align 8, !tbaa !18, !alias.scope !37, !noalias !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %.385.us.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.preheader.us ], [ %i.bt, %middle.block ] ; 6 uses
  %i.cv = sub i64 %1, %.385.us.ph
  %.neg = add i64 %.385.us.ph, 1
  %xtraiter137 = and i64 %i.cv, 1
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.385.us.ph
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.385.us.ph ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !18
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cx, double %i.cz)
  store double %i.da, ptr %i.cy, align 8, !tbaa !18
  %i.db = add nuw nsw i64 %.385.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.385.us.unr = phi i64 [ %.385.us.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %1, %.neg
  br i1 %i.dc, label %..loopexit_crit_edge.us, label %scalar.ph

.lr.ph84:                                         ; preds = %.lr.ph84.preheader133, %.lr.ph84
  %.282 = phi i64 [ %i.dg, %.lr.ph84 ], [ %.282.ph, %.lr.ph84.preheader133 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.282 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !18
  %i.df = fmul double %i.bl, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !18
  %i.dg = add nuw nsw i64 %.282, 1                ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dg, %1
  br i1 %exitcond100.not, label %.preheader74, label %.lr.ph84, !llvm.loop !40

._crit_edge92:                                    ; preds = %._crit_edge, %.loopexit75, %bb.a
  %.070 = phi i64 [ 0, %bb.a ], [ 0, %.loopexit75 ], [ %i.l, %._crit_edge ]
  ret i64 %.070
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_DenseGETRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 12 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.preheader, label %SUNDlsMat_denseGETRS.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 9223372036854775806
  br label %.lr.ph.i

.preheader55.i.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader55.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader55.i.unr-lcssa, %.lr.ph.i.preheader
  %.056.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ab, %.preheader55.i.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.056.i.epil.init
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i.epil = icmp eq i64 %i.h, %.056.i.epil.init
  br i1 %.not.i.epil, label %.preheader55.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i.epil.init ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !18
  store double %i.l, ptr %i.i, align 8, !tbaa !18
  store double %i.j, ptr %i.k, align 8, !tbaa !18
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph.i.epil.preheader, %bb.b, %.preheader55.i.unr-lcssa
  %i.m = add nsw i64 %i.d, -1                     ; 3 uses
  %.not71.i = icmp eq i64 %i.d, 1
  br i1 %.not71.i, label %SUNDlsMat_denseGETRS.exit, label %.lr.ph58.i.preheader

.lr.ph58.i.preheader:                             ; preds = %.preheader55.i
  %i.n = shl i64 %i.d, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %2, i64 %i.n
  br label %.lr.ph58.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i.preheader.new
  %.056.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ab, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.056.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq i64 %i.p, %.056.i
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !18
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !18
  store double %i.t, ptr %i.q, align 8, !tbaa !18
  store double %i.r, ptr %i.s, align 8, !tbaa !18
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %i.u = or disjoint i64 %.056.i, 1               ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %.not.i.1 = icmp eq i64 %i.w, %i.u
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !18
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !18
  store double %i.aa, ptr %i.x, align 8, !tbaa !18
  store double %i.y, ptr %i.z, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %i.ab = add nuw nsw i64 %.056.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader55.i.unr-lcssa, label %.lr.ph.i

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond65.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond65.not.i, label %.lr.ph63.i.preheader, label %.lr.ph58.i

.lr.ph63.i.preheader:                             ; preds = %.loopexit.i
  %i.ac = add nsw i64 %i.d, -2
  br label %.lr.ph63.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.preheader, %.loopexit.i
  %.159.i = phi i64 [ %i.af, %.loopexit.i ], [ 0, %.lr.ph58.i.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.159.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 6 uses
  %i.af = add nuw nsw i64 %.159.i, 1              ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.159.i ; 4 uses
  %3 = sub i64 %i.m, %.159.i                      ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.i
  %i.ah = shl i64 %.159.i, 3
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ai
  %scevgep9 = getelementptr nuw i8, ptr %i.ae, i64 %i.ai
  %scevgep10 = getelementptr i8, ptr %i.ae, i64 %i.n
  %bound0 = icmp ult ptr %scevgep, %scevgep10
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.aj = add i64 %i.af, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add nuw i64 %i.af, %index               ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !18, !alias.scope !41
  %wide.load11 = load <2 x double>, ptr %i.am, align 8, !tbaa !18, !alias.scope !41
  %i.an = load double, ptr %i.ag, align 8, !tbaa !18, !alias.scope !44
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.an, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load12 = load <2 x double>, ptr %i.ao, align 8, !tbaa !18, !alias.scope !46, !noalias !41
  %wide.load13 = load <2 x double>, ptr %i.ap, align 8, !tbaa !18, !alias.scope !46, !noalias !41
  %i.aq = fneg <2 x double> %wide.load
  %i.ar = fneg <2 x double> %wide.load11
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %broadcast.splat, <2 x double> %wide.load12)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %broadcast.splat, <2 x double> %wide.load13)
  store <2 x double> %i.as, ptr %i.ao, align 8, !tbaa !18, !alias.scope !46, !noalias !41
  store <2 x double> %i.at, ptr %i.ap, align 8, !tbaa !18, !alias.scope !46, !noalias !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph58.i, %middle.block
  %.05057.i.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph58.i ], [ %i.aj, %middle.block ] ; 6 uses
  %i.av = sub i64 %i.d, %.05057.i.ph
  %.neg = add i64 %.05057.i.ph, 1
  %xtraiter35 = and i64 %i.av, 1
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05057.i.ph
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  %i.ay = load double, ptr %i.ag, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05057.i.ph ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !18
  %i.bb = fneg double %i.ax
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ay, double %i.ba)
  store double %i.bc, ptr %i.az, align 8, !tbaa !18
  %i.bd = add nuw nsw i64 %.05057.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05057.i.unr = phi i64 [ %.05057.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = icmp eq i64 %i.d, %.neg
  br i1 %i.be, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05057.i = phi i64 [ %i.bu, %scalar.ph ], [ %.05057.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05057.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bh = load double, ptr %i.ag, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05057.i ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bk = fneg double %i.bg
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bh, double %i.bj)
  store double %i.bl, ptr %i.bi, align 8, !tbaa !18
  %i.bm = add nuw nsw i64 %.05057.i, 1            ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  %i.bp = load double, ptr %i.ag, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bm ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !18
  %i.bs = fneg double %i.bo
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bp, double %i.br)
  store double %i.bt, ptr %i.bq, align 8, !tbaa !18
  %i.bu = add nuw nsw i64 %.05057.i, 2            ; 2 uses
  %exitcond64.not.i.1 = icmp eq i64 %i.bu, %i.d
  br i1 %exitcond64.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !49

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph63.i.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.262.i = phi i64 [ %i.m, %.lr.ph63.i.preheader ], [ %i.dm, %.loopexit ] ; 10 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.262.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17 ; 6 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.262.i ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.262.i ; 7 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18
  %i.cb = fdiv double %i.ca, %i.by
  store double %i.cb, ptr %i.bz, align 8, !tbaa !18
  %min.iters.check19 = icmp ult i64 %.262.i, 4
  br i1 %min.iters.check19, label %scalar.ph18.preheader, label %vector.memcheck14

vector.memcheck14:                                ; preds = %.lr.ph63.i
  %bound015 = icmp ult ptr %2, %i.bx
  %bound116 = icmp ult ptr %i.bw, %i.bz
  %found.conflict17 = and i1 %bound015, %bound116
  br i1 %found.conflict17, label %scalar.ph18.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck14
  %n.vec21 = and i64 %.262.i, -4                  ; 3 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next30, %vector.body22 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index23 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load24 = load <2 x double>, ptr %i.cc, align 8, !tbaa !18, !alias.scope !50
  %wide.load25 = load <2 x double>, ptr %i.cd, align 8, !tbaa !18, !alias.scope !50
  %i.ce = load double, ptr %i.bz, align 8, !tbaa !18, !alias.scope !53
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index23 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load26 = load <2 x double>, ptr %i.cf, align 8, !tbaa !18, !alias.scope !55, !noalias !50
  %wide.load27 = load <2 x double>, ptr %i.cg, align 8, !tbaa !18, !alias.scope !55, !noalias !50
  %i.ch = fneg <2 x double> %wide.load24
  %i.ci = fneg <2 x double> %wide.load25
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %broadcast.splat29, <2 x double> %wide.load26)
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %broadcast.splat29, <2 x double> %wide.load27)
  store <2 x double> %i.cj, ptr %i.cf, align 8, !tbaa !18, !alias.scope !55, !noalias !50
  store <2 x double> %i.ck, ptr %i.cg, align 8, !tbaa !18, !alias.scope !55, !noalias !50
  %index.next30 = add nuw i64 %index23, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next30, %n.vec21
  br i1 %i.cl, label %middle.block31, label %vector.body22, !llvm.loop !57

middle.block31:                                   ; preds = %vector.body22
  %cmp.n32 = icmp eq i64 %.262.i, %n.vec21
  br i1 %cmp.n32, label %.loopexit, label %scalar.ph18.preheader

scalar.ph18.preheader:                            ; preds = %vector.memcheck14, %.lr.ph63.i, %middle.block31
  %.15161.i.ph = phi i64 [ 0, %vector.memcheck14 ], [ 0, %.lr.ph63.i ], [ %n.vec21, %middle.block31 ] ; 5 uses
  %i.cm = add i64 %indvar, %.15161.i.ph
  %xtraiter37 = and i64 %.262.i, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %scalar.ph18.prol.loopexit, label %scalar.ph18.prol

scalar.ph18.prol:                                 ; preds = %scalar.ph18.preheader
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.15161.i.ph
  %i.co = load double, ptr %i.cn, align 8, !tbaa !18
  %i.cp = load double, ptr %i.bz, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15161.i.ph ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !18
  %i.cs = fneg double %i.co
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cp, double %i.cr)
  store double %i.ct, ptr %i.cq, align 8, !tbaa !18
  %i.cu = or disjoint i64 %.15161.i.ph, 1
  br label %scalar.ph18.prol.loopexit

scalar.ph18.prol.loopexit:                        ; preds = %scalar.ph18.prol, %scalar.ph18.preheader
  %.15161.i.unr = phi i64 [ %.15161.i.ph, %scalar.ph18.preheader ], [ %i.cu, %scalar.ph18.prol ]
  %i.cv = icmp eq i64 %i.ac, %i.cm
  br i1 %i.cv, label %.loopexit, label %scalar.ph18

scalar.ph18:                                      ; preds = %scalar.ph18.prol.loopexit, %scalar.ph18
  %.15161.i = phi i64 [ %i.dl, %scalar.ph18 ], [ %.15161.i.unr, %scalar.ph18.prol.loopexit ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.15161.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  %i.cy = load double, ptr %i.bz, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15161.i ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !18
  %i.db = fneg double %i.cx
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double %i.cy, double %i.da)
  store double %i.dc, ptr %i.cz, align 8, !tbaa !18
  %i.dd = add nuw nsw i64 %.15161.i, 1            ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !18
  %i.dg = load double, ptr %i.bz, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dd ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !18
  %i.dj = fneg double %i.df
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dg, double %i.di)
  store double %i.dk, ptr %i.dh, align 8, !tbaa !18
  %i.dl = add nuw nsw i64 %.15161.i, 2            ; 2 uses
  %exitcond66.not.i.1 = icmp eq i64 %i.dl, %.262.i
  br i1 %exitcond66.not.i.1, label %.loopexit, label %scalar.ph18, !llvm.loop !58

.loopexit:                                        ; preds = %scalar.ph18.prol.loopexit, %scalar.ph18, %middle.block31
  %i.dm = add nsw i64 %.262.i, -1
  %i.dn = icmp sgt i64 %.262.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dn, label %.lr.ph63.i, label %SUNDlsMat_denseGETRS.exit

SUNDlsMat_denseGETRS.exit:                        ; preds = %.loopexit, %bb.a, %.preheader55.i
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.dp = load double, ptr %i.do, align 8, !tbaa !18
  %i.dq = load double, ptr %2, align 8, !tbaa !18
  %i.dr = fdiv double %i.dq, %i.dp
  store double %i.dr, ptr %2, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_denseGETRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph

.preheader55.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader55, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader55.unr-lcssa, %.lr.ph.preheader
  %.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.x, %.preheader55.unr-lcssa ] ; 3 uses
  %lcmp.mod99 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.epil.init
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not.epil = icmp eq i64 %i.d, %.056.epil.init
  br i1 %.not.epil, label %.preheader55, label %bb.b

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.056.epil.init ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !18
  store double %i.h, ptr %i.e, align 8, !tbaa !18
  store double %i.f, ptr %i.g, align 8, !tbaa !18
  br label %.preheader55

.preheader55:                                     ; preds = %.lr.ph.epil.preheader, %bb.b, %.preheader55.unr-lcssa
  %i.i = add nsw i64 %1, -1                       ; 3 uses
  %.not71 = icmp eq i64 %1, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %.preheader55
  %i.j = shl i64 %1, 3                            ; 2 uses
  %scevgep72 = getelementptr i8, ptr %3, i64 %i.j
  br label %.lr.ph58

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.x, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq i64 %i.l, %.056
  br i1 %.not, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.056 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds [8 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  store double %i.p, ptr %i.m, align 8, !tbaa !18
  store double %i.n, ptr %i.o, align 8, !tbaa !18
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %i.q = or disjoint i64 %.056, 1                 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %.not.1 = icmp eq i64 %i.s, %i.q
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds [8 x i8], ptr %3, i64 %i.s ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !18
  store double %i.w, ptr %i.t, align 8, !tbaa !18
  store double %i.u, ptr %i.v, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.x = add nuw nsw i64 %.056, 2                 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader55.unr-lcssa, label %.lr.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond65.not = icmp eq i64 %i.ab, %i.i
  br i1 %exitcond65.not, label %.lr.ph63.preheader, label %.lr.ph58

.lr.ph63.preheader:                               ; preds = %.loopexit
  %i.y = add nsw i64 %1, -2
  br label %.lr.ph63

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.loopexit
  %.159 = phi i64 [ %i.ab, %.loopexit ], [ 0, %.lr.ph58.preheader ] ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.159
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 6 uses
  %i.ab = add nuw nsw i64 %.159, 1                ; 6 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.159 ; 4 uses
  %4 = sub i64 %i.i, %.159                        ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58
  %i.ad = shl i64 %.159, 3
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ae
  %scevgep73 = getelementptr nuw i8, ptr %i.aa, i64 %i.ae
  %scevgep74 = getelementptr i8, ptr %i.aa, i64 %i.j
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.af = add i64 %i.ab, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = add nuw i64 %i.ab, %index               ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !18, !alias.scope !59
  %wide.load75 = load <2 x double>, ptr %i.ai, align 8, !tbaa !18, !alias.scope !59
  %i.aj = load double, ptr %i.ac, align 8, !tbaa !18, !alias.scope !62
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.ak, align 8, !tbaa !18, !alias.scope !64, !noalias !59
  %wide.load77 = load <2 x double>, ptr %i.al, align 8, !tbaa !18, !alias.scope !64, !noalias !59
  %i.am = fneg <2 x double> %wide.load
  %i.an = fneg <2 x double> %wide.load75
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %broadcast.splat, <2 x double> %wide.load76)
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %broadcast.splat, <2 x double> %wide.load77)
  store <2 x double> %i.ao, ptr %i.ak, align 8, !tbaa !18, !alias.scope !64, !noalias !59
  store <2 x double> %i.ap, ptr %i.al, align 8, !tbaa !18, !alias.scope !64, !noalias !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph58, %middle.block
  %.05057.ph = phi i64 [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph58 ], [ %i.af, %middle.block ] ; 6 uses
  %i.ar = sub i64 %1, %.05057.ph
  %.neg = add i64 %.05057.ph, 1
  %xtraiter100 = and i64 %i.ar, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.05057.ph
  %i.at = load double, ptr %i.as, align 8, !tbaa !18
  %i.au = load double, ptr %i.ac, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057.ph ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18
  %i.ax = fneg double %i.at
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.au, double %i.aw)
  store double %i.ay, ptr %i.av, align 8, !tbaa !18
  %i.az = add nuw nsw i64 %.05057.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05057.unr = phi i64 [ %.05057.ph, %scalar.ph.preheader ], [ %i.az, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %1, %.neg
  br i1 %i.ba, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05057 = phi i64 [ %i.bq, %scalar.ph ], [ %.05057.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.05057
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !18
  %i.bd = load double, ptr %i.ac, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !18
  %i.bg = fneg double %i.bc
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bd, double %i.bf)
  store double %i.bh, ptr %i.be, align 8, !tbaa !18
  %i.bi = add nuw nsw i64 %.05057, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bl = load double, ptr %i.ac, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bi ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !18
  %i.bo = fneg double %i.bk
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bl, double %i.bn)
  store double %i.bp, ptr %i.bm, align 8, !tbaa !18
  %i.bq = add nuw nsw i64 %.05057, 2              ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.bq, %1
  br i1 %exitcond64.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !67

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.loopexit98
  %indvar = phi i64 [ 0, %.lr.ph63.preheader ], [ %indvar.next, %.loopexit98 ] ; 2 uses
  %.262 = phi i64 [ %i.i, %.lr.ph63.preheader ], [ %i.di, %.loopexit98 ] ; 10 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.262
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17 ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.262 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.262 ; 7 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !18
  %i.bx = fdiv double %i.bw, %i.bu
  store double %i.bx, ptr %i.bv, align 8, !tbaa !18
  %min.iters.check83 = icmp ult i64 %.262, 4
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph63
  %bound079 = icmp ult ptr %3, %i.bt
  %bound180 = icmp ult ptr %i.bs, %i.bv
  %found.conflict81 = and i1 %bound079, %bound180
  br i1 %found.conflict81, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck78
  %n.vec85 = and i64 %.262, -4                    ; 3 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body86 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index87 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load88 = load <2 x double>, ptr %i.by, align 8, !tbaa !18, !alias.scope !68
  %wide.load89 = load <2 x double>, ptr %i.bz, align 8, !tbaa !18, !alias.scope !68
  %i.ca = load double, ptr %i.bv, align 8, !tbaa !18, !alias.scope !71
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index87 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load90 = load <2 x double>, ptr %i.cb, align 8, !tbaa !18, !alias.scope !73, !noalias !68
  %wide.load91 = load <2 x double>, ptr %i.cc, align 8, !tbaa !18, !alias.scope !73, !noalias !68
  %i.cd = fneg <2 x double> %wide.load88
  %i.ce = fneg <2 x double> %wide.load89
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %broadcast.splat93, <2 x double> %wide.load90)
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat93, <2 x double> %wide.load91)
  store <2 x double> %i.cf, ptr %i.cb, align 8, !tbaa !18, !alias.scope !73, !noalias !68
  store <2 x double> %i.cg, ptr %i.cc, align 8, !tbaa !18, !alias.scope !73, !noalias !68
  %index.next94 = add nuw i64 %index87, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.ch, label %middle.block95, label %vector.body86, !llvm.loop !75

middle.block95:                                   ; preds = %vector.body86
  %cmp.n96 = icmp eq i64 %.262, %n.vec85
  br i1 %cmp.n96, label %.loopexit98, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck78, %.lr.ph63, %middle.block95
  %.15161.ph = phi i64 [ 0, %vector.memcheck78 ], [ 0, %.lr.ph63 ], [ %n.vec85, %middle.block95 ] ; 5 uses
  %i.ci = add i64 %indvar, %.15161.ph
  %xtraiter102 = and i64 %.262, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.15161.ph
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !18
  %i.cl = load double, ptr %i.bv, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161.ph ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !18
  %i.co = fneg double %i.ck
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cl, double %i.cn)
  store double %i.cp, ptr %i.cm, align 8, !tbaa !18
  %i.cq = or disjoint i64 %.15161.ph, 1
  br label %scalar.ph82.prol.loopexit

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.15161.unr = phi i64 [ %.15161.ph, %scalar.ph82.preheader ], [ %i.cq, %scalar.ph82.prol ]
  %i.cr = icmp eq i64 %i.y, %i.ci
  br i1 %i.cr, label %.loopexit98, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.15161 = phi i64 [ %i.dh, %scalar.ph82 ], [ %.15161.unr, %scalar.ph82.prol.loopexit ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.15161
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !18
  %i.cu = load double, ptr %i.bv, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !18
  %i.cx = fneg double %i.ct
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cu, double %i.cw)
  store double %i.cy, ptr %i.cv, align 8, !tbaa !18
  %i.cz = add nuw nsw i64 %.15161, 1              ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !18
  %i.dc = load double, ptr %i.bv, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cz ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !18
  %i.df = fneg double %i.db
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dc, double %i.de)
  store double %i.dg, ptr %i.dd, align 8, !tbaa !18
  %i.dh = add nuw nsw i64 %.15161, 2              ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.dh, %.262
  br i1 %exitcond66.not.1, label %.loopexit98, label %scalar.ph82, !llvm.loop !76

.loopexit98:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block95
  %i.di = add nsw i64 %.262, -1
  %i.dj = icmp sgt i64 %.262, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dj, label %.lr.ph63, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit98, %bb.a, %.preheader55
end_hunk_0
begin_hunk_1_@SUNDlsMat_DensePOTRF:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !18
  %i.au = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.144.i.ph = phi i64 [ %.03445.i, %.lr.ph.preheader.i ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.144.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.144.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.144.i ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  %i.ay = fdiv double %i.ax, %i.aq
  store double %i.ay, ptr %i.aw, align 8, !tbaa !18
  %i.az = add nuw nsw i64 %.144.i, 1              ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.az, %i.d
  br i1 %exitcond50.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !78

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %i.ba = add nuw nsw i64 %.03445.i, 1            ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.ba, %i.d
  br i1 %exitcond51.not.i, label %SUNDlsMat_densePOTRF.exit, label %.lr.ph47.i

SUNDlsMat_densePOTRF.exit:                        ; preds = %._crit_edge.i, %bb.a, %bb.c
  %.036.i = phi i64 [ %i.ap, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  ret i64 %.036.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_densePOTRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph47, label %.loopexit40

.lr.ph47:                                         ; preds = %bb.a, %._crit_edge
  %.03445 = phi i64 [ %i.aw, %._crit_edge ], [ 0, %bb.a ] ; 17 uses
  %i.b = sub nsw i64 %1, %.03445                  ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03445
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 4 uses
  %.not.not = icmp eq i64 %.03445, 0
  br i1 %.not.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph47
  %xtraiter = and i64 %.03445, 1
  %i.e = icmp eq i64 %.03445, 1
  %unroll_iter = and i64 %.03445, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod59 = trunc i64 %.03445 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.b
  %.03543 = phi i64 [ %i.ah, %bb.b ], [ %.03445, %.preheader.preheader ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03543 ; 4 uses
  %.promoted = load double, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.042 = phi i64 [ %i.y, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %i.g = phi double [ %i.x, %.preheader.new ], [ %.promoted, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.03543
  %i.k = load double, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.03445
  %i.m = load double, ptr %i.l, align 8, !tbaa !18
  %i.n = fneg double %i.k
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.m, double %i.g) ; 2 uses
  store double %i.o, ptr %i.f, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03543
  %i.t = load double, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03445
  %i.v = load double, ptr %i.u, align 8, !tbaa !18
  %i.w = fneg double %i.t
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.v, double %i.o) ; 3 uses
  store double %i.x, ptr %i.f, align 8, !tbaa !18
  %i.y = add nuw nsw i64 %.042, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.042.epil.init = phi i64 [ 0, %.preheader ], [ %i.y, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.preheader ], [ %i.x, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042.epil.init
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03543
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03445
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = fneg double %i.ac
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ae, double %.epil.init)
  store double %i.ag, ptr %i.f, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ah = add nuw nsw i64 %.03543, 1              ; 2 uses
  %exitcond49.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond49.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.b, %.lr.ph47
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03445
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !18 ; 2 uses
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.al = add nuw nsw i64 %.03445, 1
  br label %.loopexit40

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.am = tail call double @sqrt(double noundef %i.aj) #6 ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 2
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %i.an = add i64 %.03445, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03445
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !18
  %i.aq = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block
  %.144.ph = phi i64 [ %.03445, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %.144 = phi i64 [ %i.av, %.lr.ph ], [ %.144.ph, %.lr.ph.preheader57 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.144 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !18
  %i.au = fdiv double %i.at, %i.am
  store double %i.au, ptr %i.as, align 8, !tbaa !18
  %i.av = add nuw nsw i64 %.144, 1                ; 2 uses
  %exitcond50.not = icmp eq i64 %i.av, %1
  br i1 %exitcond50.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.aw = add nuw nsw i64 %.03445, 1              ; 2 uses
  %exitcond51.not = icmp eq i64 %i.aw, %1
  br i1 %exitcond51.not, label %.loopexit40, label %.lr.ph47

.loopexit40:                                      ; preds = %._crit_edge, %bb.a, %bb.c
  %.036 = phi i64 [ %i.al, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  ret i64 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_DensePOTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 9 uses
  %i.e = add i64 %i.d, -1                         ; 5 uses
  %i.f = icmp sgt i64 %i.d, 1                     ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i.preheader, label %._crit_edge.i

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %i.g = shl i64 %i.d, 3                          ; 2 uses
  %scevgep4 = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %exitcond64.not.i = icmp eq i64 %i.o, %i.e
  br i1 %exitcond64.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %.loopexit.i
  %.053.i = phi i64 [ %i.o, %.loopexit.i ], [ 0, %.lr.ph.preheader.i.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.053.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.053.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.053.i ; 6 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !18
  %i.n = fdiv double %i.m, %i.k
  store double %i.n, ptr %i.l, align 8, !tbaa !18
  %i.o = add nuw nsw i64 %.053.i, 1               ; 6 uses
  %2 = sub i64 %i.e, %.053.i                      ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.p = shl i64 %.053.i, 3
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.q
  %scevgep5 = getelementptr nuw i8, ptr %i.i, i64 %i.q
  %scevgep6 = getelementptr i8, ptr %i.i, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep6
  %bound1 = icmp ult ptr %scevgep5, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  %i.r = add i64 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add nuw i64 %i.o, %index                 ; 2 uses
  %i.t = load double, ptr %i.l, align 8, !tbaa !18, !alias.scope !81
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !18, !alias.scope !84
  %wide.load7 = load <2 x double>, ptr %i.v, align 8, !tbaa !18, !alias.scope !84
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load8 = load <2 x double>, ptr %i.w, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  %wide.load9 = load <2 x double>, ptr %i.x, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  %.scalar = fneg double %i.t
  %i.y = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %wide.load, <2 x double> %wide.load8)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %wide.load7, <2 x double> %wide.load9)
  store <2 x double> %i.aa, ptr %i.w, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  store <2 x double> %i.ab, ptr %i.x, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.04952.i.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.preheader.i ], [ %i.r, %middle.block ] ; 6 uses
  %i.ad = sub i64 %i.d, %.04952.i.ph
  %.neg = add i64 %.04952.i.ph, 1
  %xtraiter = and i64 %i.ad, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ae = load double, ptr %i.l, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04952.i.ph
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i.ph ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !18
  %i.aj = fneg double %i.ae
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ag, double %i.ai)
  store double %i.ak, ptr %i.ah, align 8, !tbaa !18
  %i.al = add nuw nsw i64 %.04952.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.04952.i.unr = phi i64 [ %.04952.i.ph, %.lr.ph.i.preheader ], [ %i.al, %.lr.ph.i.prol ]
  %i.am = icmp eq i64 %i.d, %.neg
  br i1 %i.am, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04952.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %.04952.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.an = load double, ptr %i.l, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04952.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !18
  %i.as = fneg double %i.an
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ap, double %i.ar)
  store double %i.at, ptr %i.aq, align 8, !tbaa !18
  %i.au = add nuw nsw i64 %.04952.i, 1            ; 2 uses
  %i.av = load double, ptr %i.l, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !18
  %i.ba = fneg double %i.av
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ax, double %i.az)
  store double %i.bb, ptr %i.ay, align 8, !tbaa !18
  %i.bc = add nuw nsw i64 %.04952.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bc, %i.d
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !89

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.a
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.e ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bj = fdiv double %i.bi, %i.bg                ; 2 uses
  store double %i.bj, ptr %i.bh, align 8, !tbaa !18
  %i.bk = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bl = fdiv double %i.bj, %i.bk
  store double %i.bl, ptr %i.bh, align 8, !tbaa !18
  br i1 %i.f, label %.lr.ph62.preheader.i, label %SUNDlsMat_densePOTRS.exit

.lr.ph62.preheader.i:                             ; preds = %._crit_edge.i
  %i.bm = add nsw i64 %i.d, -2
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge59.i, %.lr.ph62.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge59.i ], [ 0, %.lr.ph62.preheader.i ] ; 3 uses
  %.15060.i = phi i64 [ %i.cq, %._crit_edge59.i ], [ %i.bm, %.lr.ph62.preheader.i ] ; 7 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.15060.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 4 uses
  %.155.i = add nuw nsw i64 %.15060.i, 1          ; 4 uses
  %i.bp = icmp slt i64 %.155.i, %i.d
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.15060.i ; 5 uses
  %.promoted.i = load double, ptr %i.bq, align 8, !tbaa !18 ; 3 uses
  br i1 %i.bp, label %.lr.ph58.i.preheader, label %._crit_edge59.i

.lr.ph58.i.preheader:                             ; preds = %.lr.ph62.i
  %i.br = and i64 %indvar, 1
  %lcmp.mod11.not.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod11.not.not, label %.lr.ph58.i.prol, label %.lr.ph58.i.prol.loopexit

.lr.ph58.i.prol:                                  ; preds = %.lr.ph58.i.preheader
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.155.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.155.i
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !18
  %i.bw = fneg double %i.bt
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bv, double %.promoted.i) ; 3 uses
  store double %i.bx, ptr %i.bq, align 8, !tbaa !18
  %.1.i.prol = add nuw nsw i64 %.15060.i, 2
  br label %.lr.ph58.i.prol.loopexit

.lr.ph58.i.prol.loopexit:                         ; preds = %.lr.ph58.i.prol, %.lr.ph58.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph58.i.preheader ], [ %i.bx, %.lr.ph58.i.prol ]
  %.unr = phi double [ %.promoted.i, %.lr.ph58.i.preheader ], [ %i.bx, %.lr.ph58.i.prol ]
  %.156.i.unr = phi i64 [ %.155.i, %.lr.ph58.i.preheader ], [ %.1.i.prol, %.lr.ph58.i.prol ]
  %i.by = icmp eq i64 %indvar, 0
  br i1 %i.by, label %._crit_edge59.i, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i
  %i.bz = phi double [ %i.cl, %.lr.ph58.i ], [ %.unr, %.lr.ph58.i.prol.loopexit ]
  %.156.i = phi i64 [ %.1.i.1, %.lr.ph58.i ], [ %.156.i.unr, %.lr.ph58.i.prol.loopexit ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.156.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.156.i
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !18
  %i.ce = fneg double %i.cb
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cd, double %i.bz) ; 2 uses
  store double %i.cf, ptr %i.bq, align 8, !tbaa !18
  %.1.i = add nuw nsw i64 %.156.i, 1              ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.1.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !18
  %i.ck = fneg double %i.ch
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cj, double %i.cf) ; 3 uses
  store double %i.cl, ptr %i.bq, align 8, !tbaa !18
  %.1.i.1 = add nuw nsw i64 %.156.i, 2            ; 2 uses
  %exitcond65.not.i.1 = icmp eq i64 %.1.i.1, %i.d
  br i1 %exitcond65.not.i.1, label %._crit_edge59.i, label %.lr.ph58.i

._crit_edge59.i:                                  ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i, %.lr.ph62.i
  %i.cm = phi double [ %.promoted.i, %.lr.ph62.i ], [ %.lcssa.unr, %.lr.ph58.i.prol.loopexit ], [ %i.cl, %.lr.ph58.i ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.15060.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !18
  %i.cp = fdiv double %i.cm, %i.co
  store double %i.cp, ptr %i.bq, align 8, !tbaa !18
  %i.cq = add nsw i64 %.15060.i, -1
  %i.cr = icmp sgt i64 %.15060.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cr, label %.lr.ph62.i, label %SUNDlsMat_densePOTRS.exit

SUNDlsMat_densePOTRS.exit:                        ; preds = %._crit_edge59.i, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_densePOTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 5 uses
  %i.b = icmp sgt i64 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader.preheader, label %._crit_edge

.lr.ph.preheader.preheader:                       ; preds = %bb.a
  %i.c = shl i64 %1, 3                            ; 2 uses
  %scevgep67 = getelementptr i8, ptr %2, i64 %i.c
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %exitcond64.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.preheader, %.loopexit
  %.053 = phi i64 [ %i.k, %.loopexit ], [ 0, %.lr.ph.preheader.preheader ] ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.053
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 7 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.053
  %i.g = load double, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.053 ; 6 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !18
  %i.j = fdiv double %i.i, %i.g
  store double %i.j, ptr %i.h, align 8, !tbaa !18
  %i.k = add nuw nsw i64 %.053, 1                 ; 6 uses
  %3 = sub i64 %i.a, %.053                        ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = shl i64 %.053, 3
  %i.m = add i64 %i.l, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.m
  %scevgep68 = getelementptr nuw i8, ptr %i.e, i64 %i.m
  %scevgep69 = getelementptr i8, ptr %i.e, i64 %i.c
  %bound0 = icmp ult ptr %scevgep, %scevgep69
  %bound1 = icmp ult ptr %scevgep68, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.n = add i64 %i.k, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = add nuw i64 %i.k, %index                 ; 2 uses
  %i.p = load double, ptr %i.h, align 8, !tbaa !18, !alias.scope !90
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !18, !alias.scope !93
  %wide.load70 = load <2 x double>, ptr %i.r, align 8, !tbaa !18, !alias.scope !93
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.s, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  %wide.load72 = load <2 x double>, ptr %i.t, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  %.scalar = fneg double %i.p
  %i.u = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %wide.load, <2 x double> %wide.load71)
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %wide.load70, <2 x double> %wide.load72)
  store <2 x double> %i.w, ptr %i.s, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader73

.lr.ph.preheader73:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04952.ph = phi i64 [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.preheader ], [ %i.n, %middle.block ] ; 6 uses
  %i.z = sub i64 %1, %.04952.ph
  %.neg = add i64 %.04952.ph, 1
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader73
  %i.aa = load double, ptr %i.h, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04952.ph
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952.ph ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = fneg double %i.aa
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ac, double %i.ae)
  store double %i.ag, ptr %i.ad, align 8, !tbaa !18
  %i.ah = add nuw nsw i64 %.04952.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader73
  %.04952.unr = phi i64 [ %.04952.ph, %.lr.ph.preheader73 ], [ %i.ah, %.lr.ph.prol ]
  %i.ai = icmp eq i64 %1, %.neg
  br i1 %i.ai, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04952 = phi i64 [ %i.ay, %.lr.ph ], [ %.04952.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aj = load double, ptr %i.h, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04952
  %i.al = load double, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !18
  %i.ao = fneg double %i.aj
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.al, double %i.an)
  store double %i.ap, ptr %i.am, align 8, !tbaa !18
  %i.aq = add nuw nsw i64 %.04952, 1              ; 2 uses
  %i.ar = load double, ptr %i.h, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aq ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !18
  %i.aw = fneg double %i.ar
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.at, double %i.av)
  store double %i.ax, ptr %i.au, align 8, !tbaa !18
  %i.ay = add nuw nsw i64 %.04952, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ay, %1
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.a ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !18
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !18
  %i.bf = fdiv double %i.be, %i.bc                ; 2 uses
  store double %i.bf, ptr %i.bd, align 8, !tbaa !18
  %i.bg = load double, ptr %i.bb, align 8, !tbaa !18
  %i.bh = fdiv double %i.bf, %i.bg
  store double %i.bh, ptr %i.bd, align 8, !tbaa !18
  br i1 %i.b, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %._crit_edge
  %i.bi = add nsw i64 %1, -2
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge59
  %indvar = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvar.next, %._crit_edge59 ] ; 3 uses
  %.15060 = phi i64 [ %i.bi, %.lr.ph62.preheader ], [ %i.cn, %._crit_edge59 ] ; 8 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.15060
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17 ; 4 uses
  %.155 = add nuw nsw i64 %.15060, 1              ; 4 uses
  %i.bl = icmp slt i64 %.155, %1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060 ; 4 uses
  %.promoted = load double, ptr %i.bm, align 8, !tbaa !18 ; 3 uses
  br i1 %i.bl, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.lr.ph62
  %i.bn = and i64 %indvar, 1
  %lcmp.mod75.not.not = icmp eq i64 %i.bn, 0
  br i1 %lcmp.mod75.not.not, label %.lr.ph58.prol, label %.lr.ph58.prol.loopexit

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.155
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.155
  %i.br = load double, ptr %i.bq, align 8, !tbaa !18
  %i.bs = fneg double %i.bp
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.br, double %.promoted) ; 3 uses
  store double %i.bt, ptr %i.bm, align 8, !tbaa !18
  %.1.prol = add nuw nsw i64 %.15060, 2
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph58.preheader ], [ %i.bt, %.lr.ph58.prol ]
  %.unr = phi double [ %.promoted, %.lr.ph58.preheader ], [ %i.bt, %.lr.ph58.prol ]
  %.156.unr = phi i64 [ %.155, %.lr.ph58.preheader ], [ %.1.prol, %.lr.ph58.prol ]
  %i.bu = icmp eq i64 %indvar, 0
  br i1 %i.bu, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %i.bv = phi double [ %i.ch, %.lr.ph58 ], [ %.unr, %.lr.ph58.prol.loopexit ]
  %.156 = phi i64 [ %.1.1, %.lr.ph58 ], [ %.156.unr, %.lr.ph58.prol.loopexit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.156
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.156
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = fneg double %i.bx
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bz, double %i.bv) ; 2 uses
  store double %i.cb, ptr %i.bm, align 8, !tbaa !18
  %.1 = add nuw nsw i64 %.156, 1                  ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.1
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = fneg double %i.cd
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cf, double %i.cb) ; 3 uses
  store double %i.ch, ptr %i.bm, align 8, !tbaa !18
  %.1.1 = add nuw nsw i64 %.156, 2                ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %.1.1, %1
  br i1 %exitcond65.not.1, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.lr.ph62
  %i.ci = phi double [ %.promoted, %.lr.ph62 ], [ %.lcssa.unr, %.lr.ph58.prol.loopexit ], [ %i.ch, %.lr.ph58 ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.15060
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060
  %i.cm = fdiv double %i.ci, %i.ck
  store double %i.cm, ptr %i.cl, align 8, !tbaa !18
  %i.cn = add nsw i64 %.15060, -1
  %i.co = icmp sgt i64 %.15060, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.co, label %.lr.ph62, label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge59, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_DenseGEQRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call i32 @SUNDlsMat_denseGEQRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %1, ptr noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_denseGEQRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
end_hunk_1
