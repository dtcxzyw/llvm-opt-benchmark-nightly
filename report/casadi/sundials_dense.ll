Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_dense?download=true
inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@denseGETRF:bb.a
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bn ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !20
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bp, double %i.br)
  store double %i.bs, ptr %i.bq, align 8, !tbaa !20
  %i.bt = add nuw nsw i64 %.385.us, 2             ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %i.bt, %1
  br i1 %exitcond101.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !28

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88.split.us
  %i.bu = add nuw nsw i64 %.06787.us, 1           ; 2 uses
  %exitcond102.not = icmp eq i64 %i.bu, %2
  br i1 %exitcond102.not, label %.loopexit75, label %.lr.ph88.split.us, !llvm.loop !29

.preheader.us:                                    ; preds = %.lr.ph88.split.us
  %i.bv = fneg double %i.bg                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.h
  %scevgep114 = getelementptr i8, ptr %i.be, i64 %i.b
  %bound0 = icmp ult ptr %scevgep, %scevgep116
  %bound1 = icmp ult ptr %scevgep115, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = add nuw i64 %i.k, %index                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load = load <2 x double>, ptr %i.bx, align 8, !tbaa !20, !alias.scope !30
  %wide.load117 = load <2 x double>, ptr %i.by, align 8, !tbaa !20, !alias.scope !30
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bw ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load118 = load <2 x double>, ptr %i.bz, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %wide.load119 = load <2 x double>, ptr %i.ca, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load118)
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load117, <2 x double> %wide.load119)
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  store <2 x double> %i.cc, ptr %i.ca, align 8, !tbaa !20, !alias.scope !33, !noalias !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %.385.us.ph = phi i64 [ %i.k, %vector.memcheck ], [ %i.k, %.preheader.us ], [ %i.bc, %middle.block ] ; 6 uses
  %i.ce = sub i64 %1, %.385.us.ph
  %.neg = add i64 %.385.us.ph, 1
  %xtraiter136 = and i64 %i.ce, 1
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.385.us.ph
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.385.us.ph ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !20
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.cg, double %i.ci)
  store double %i.cj, ptr %i.ch, align 8, !tbaa !20
  %i.ck = add nuw nsw i64 %.385.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.385.us.unr = phi i64 [ %.385.us.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %i.cl = icmp eq i64 %1, %.neg
  br i1 %i.cl, label %..loopexit_crit_edge.us, label %scalar.ph

.lr.ph84:                                         ; preds = %.lr.ph84.preheader134, %.lr.ph84
  %.282 = phi i64 [ %i.cp, %.lr.ph84 ], [ %.282.ph, %.lr.ph84.preheader134 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.282 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !20
  %i.co = fmul double %i.au, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !20
  %i.cp = add nuw nsw i64 %.282, 1                ; 2 uses
  %exitcond100.not = icmp eq i64 %i.cp, %1
  br i1 %exitcond100.not, label %.preheader74, label %.lr.ph84, !llvm.loop !36

._crit_edge92:                                    ; preds = %._crit_edge, %.loopexit75, %bb.a
  %.070 = phi i64 [ 0, %bb.a ], [ 0, %.loopexit75 ], [ %i.k, %._crit_edge ]
  ret i64 %.070
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @DenseGETRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 12 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.preheader, label %denseGETRS.exit

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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i.epil = icmp eq i64 %i.h, %.056.i.epil.init
  br i1 %.not.i.epil, label %.preheader55.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i.epil.init ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !20
  store double %i.l, ptr %i.i, align 8, !tbaa !20
  store double %i.j, ptr %i.k, align 8, !tbaa !20
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph.i.epil.preheader, %bb.b, %.preheader55.i.unr-lcssa
  %i.m = add nsw i64 %i.d, -1                     ; 3 uses
  %.not71.i = icmp eq i64 %i.d, 1
  br i1 %.not71.i, label %denseGETRS.exit, label %.lr.ph58.i.preheader

.lr.ph58.i.preheader:                             ; preds = %.preheader55.i
  %i.n = shl i64 %i.d, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %2, i64 %i.n
  br label %.lr.ph58.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i.preheader.new
  %.056.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ab, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.056.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq i64 %i.p, %.056.i
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !20
  store double %i.t, ptr %i.q, align 8, !tbaa !20
  store double %i.r, ptr %i.s, align 8, !tbaa !20
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %i.u = or disjoint i64 %.056.i, 1               ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %.not.i.1 = icmp eq i64 %i.w, %i.u
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !20
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !20
  store double %i.aa, ptr %i.x, align 8, !tbaa !20
  store double %i.y, ptr %i.z, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %i.ab = add nuw nsw i64 %.056.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader55.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond65.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond65.not.i, label %.lr.ph63.i.preheader, label %.lr.ph58.i, !llvm.loop !38

.lr.ph63.i.preheader:                             ; preds = %.loopexit.i
  %i.ac = add nsw i64 %i.d, -2
  br label %.lr.ph63.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.preheader, %.loopexit.i
  %.159.i = phi i64 [ %i.ag, %.loopexit.i ], [ 0, %.lr.ph58.i.preheader ] ; 5 uses
  %i.ad = sub i64 %i.m, %.159.i                   ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.159.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 6 uses
  %i.ag = add nuw nsw i64 %.159.i, 1              ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.159.i ; 4 uses
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.i
  %i.ai = shl i64 %.159.i, 3
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.aj
  %scevgep9 = getelementptr nuw i8, ptr %i.af, i64 %i.aj
  %scevgep10 = getelementptr i8, ptr %i.af, i64 %i.n
  %bound0 = icmp ult ptr %scevgep, %scevgep10
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -4                      ; 3 uses
  %i.ak = add i64 %i.ag, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add nuw i64 %i.ag, %index               ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !20, !alias.scope !39
  %wide.load11 = load <2 x double>, ptr %i.an, align 8, !tbaa !20, !alias.scope !39
  %i.ao = load double, ptr %i.ah, align 8, !tbaa !20, !alias.scope !42
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.al ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load12 = load <2 x double>, ptr %i.ap, align 8, !tbaa !20, !alias.scope !44, !noalias !39
  %wide.load13 = load <2 x double>, ptr %i.aq, align 8, !tbaa !20, !alias.scope !44, !noalias !39
  %i.ar = fneg <2 x double> %wide.load
  %i.as = fneg <2 x double> %wide.load11
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %broadcast.splat, <2 x double> %wide.load12)
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %broadcast.splat, <2 x double> %wide.load13)
  store <2 x double> %i.at, ptr %i.ap, align 8, !tbaa !20, !alias.scope !44, !noalias !39
  store <2 x double> %i.au, ptr %i.aq, align 8, !tbaa !20, !alias.scope !44, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph58.i, %middle.block
  %.05057.i.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph58.i ], [ %i.ak, %middle.block ] ; 6 uses
  %i.aw = sub i64 %i.d, %.05057.i.ph
  %.neg = add i64 %.05057.i.ph, 1
  %xtraiter35 = and i64 %i.aw, 1
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.05057.i.ph
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !20
  %i.az = load double, ptr %i.ah, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05057.i.ph ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !20
  %i.bc = fneg double %i.ay
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.az, double %i.bb)
  store double %i.bd, ptr %i.ba, align 8, !tbaa !20
  %i.be = add nuw nsw i64 %.05057.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05057.i.unr = phi i64 [ %.05057.i.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = icmp eq i64 %i.d, %.neg
  br i1 %i.bf, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05057.i = phi i64 [ %i.bv, %scalar.ph ], [ %.05057.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.05057.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = load double, ptr %i.ah, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05057.i ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20
  %i.bl = fneg double %i.bh
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bi, double %i.bk)
  store double %i.bm, ptr %i.bj, align 8, !tbaa !20
  %i.bn = add nuw nsw i64 %.05057.i, 1            ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  %i.bq = load double, ptr %i.ah, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bn ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !20
  %i.bt = fneg double %i.bp
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bq, double %i.bs)
  store double %i.bu, ptr %i.br, align 8, !tbaa !20
  %i.bv = add nuw nsw i64 %.05057.i, 2            ; 2 uses
  %exitcond64.not.i.1 = icmp eq i64 %i.bv, %i.d
  br i1 %exitcond64.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !47

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph63.i.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.262.i = phi i64 [ %i.m, %.lr.ph63.i.preheader ], [ %i.dn, %.loopexit ] ; 10 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.262.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !19 ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.262.i ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.262.i ; 7 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !20
  %i.cc = fdiv double %i.cb, %i.bz
  store double %i.cc, ptr %i.ca, align 8, !tbaa !20
  %min.iters.check19 = icmp ult i64 %.262.i, 4
  br i1 %min.iters.check19, label %scalar.ph18.preheader, label %vector.memcheck14

vector.memcheck14:                                ; preds = %.lr.ph63.i
  %bound015 = icmp ult ptr %2, %i.by
  %bound116 = icmp ult ptr %i.bx, %i.ca
  %found.conflict17 = and i1 %bound015, %bound116
  br i1 %found.conflict17, label %scalar.ph18.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck14
  %n.vec21 = and i64 %.262.i, -4                  ; 3 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next30, %vector.body22 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index23 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load24 = load <2 x double>, ptr %i.cd, align 8, !tbaa !20, !alias.scope !48
  %wide.load25 = load <2 x double>, ptr %i.ce, align 8, !tbaa !20, !alias.scope !48
  %i.cf = load double, ptr %i.ca, align 8, !tbaa !20, !alias.scope !51
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index23 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load26 = load <2 x double>, ptr %i.cg, align 8, !tbaa !20, !alias.scope !53, !noalias !48
  %wide.load27 = load <2 x double>, ptr %i.ch, align 8, !tbaa !20, !alias.scope !53, !noalias !48
  %i.ci = fneg <2 x double> %wide.load24
  %i.cj = fneg <2 x double> %wide.load25
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %broadcast.splat29, <2 x double> %wide.load26)
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %broadcast.splat29, <2 x double> %wide.load27)
  store <2 x double> %i.ck, ptr %i.cg, align 8, !tbaa !20, !alias.scope !53, !noalias !48
  store <2 x double> %i.cl, ptr %i.ch, align 8, !tbaa !20, !alias.scope !53, !noalias !48
  %index.next30 = add nuw i64 %index23, 4         ; 2 uses
  %i.cm = icmp eq i64 %index.next30, %n.vec21
  br i1 %i.cm, label %middle.block31, label %vector.body22, !llvm.loop !55

middle.block31:                                   ; preds = %vector.body22
  %cmp.n32 = icmp eq i64 %.262.i, %n.vec21
  br i1 %cmp.n32, label %.loopexit, label %scalar.ph18.preheader

scalar.ph18.preheader:                            ; preds = %vector.memcheck14, %.lr.ph63.i, %middle.block31
  %.15161.i.ph = phi i64 [ 0, %vector.memcheck14 ], [ 0, %.lr.ph63.i ], [ %n.vec21, %middle.block31 ] ; 5 uses
  %i.cn = add i64 %indvar, %.15161.i.ph
  %xtraiter37 = and i64 %.262.i, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %scalar.ph18.prol.loopexit, label %scalar.ph18.prol

scalar.ph18.prol:                                 ; preds = %scalar.ph18.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.15161.i.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !20
  %i.cq = load double, ptr %i.ca, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15161.i.ph ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !20
  %i.ct = fneg double %i.cp
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cq, double %i.cs)
  store double %i.cu, ptr %i.cr, align 8, !tbaa !20
  %i.cv = or disjoint i64 %.15161.i.ph, 1
  br label %scalar.ph18.prol.loopexit

scalar.ph18.prol.loopexit:                        ; preds = %scalar.ph18.prol, %scalar.ph18.preheader
  %.15161.i.unr = phi i64 [ %.15161.i.ph, %scalar.ph18.preheader ], [ %i.cv, %scalar.ph18.prol ]
  %i.cw = icmp eq i64 %i.ac, %i.cn
  br i1 %i.cw, label %.loopexit, label %scalar.ph18

scalar.ph18:                                      ; preds = %scalar.ph18.prol.loopexit, %scalar.ph18
  %.15161.i = phi i64 [ %i.dm, %scalar.ph18 ], [ %.15161.i.unr, %scalar.ph18.prol.loopexit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.15161.i
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !20
  %i.cz = load double, ptr %i.ca, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15161.i ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !20
  %i.dc = fneg double %i.cy
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cz, double %i.db)
  store double %i.dd, ptr %i.da, align 8, !tbaa !20
  %i.de = add nuw nsw i64 %.15161.i, 1            ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !20
  %i.dh = load double, ptr %i.ca, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.de ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !20
  %i.dk = fneg double %i.dg
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dh, double %i.dj)
  store double %i.dl, ptr %i.di, align 8, !tbaa !20
  %i.dm = add nuw nsw i64 %.15161.i, 2            ; 2 uses
  %exitcond66.not.i.1 = icmp eq i64 %i.dm, %.262.i
  br i1 %exitcond66.not.i.1, label %.loopexit, label %scalar.ph18, !llvm.loop !56

.loopexit:                                        ; preds = %scalar.ph18.prol.loopexit, %scalar.ph18, %middle.block31
  %i.dn = add nsw i64 %.262.i, -1
  %i.do = icmp sgt i64 %.262.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.do, label %.lr.ph63.i, label %denseGETRS.exit, !llvm.loop !57

denseGETRS.exit:                                  ; preds = %.loopexit, %bb.a, %.preheader55.i
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !20
  %i.dr = load double, ptr %2, align 8, !tbaa !20
  %i.ds = fdiv double %i.dr, %i.dq
  store double %i.ds, ptr %2, align 8, !tbaa !20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @denseGETRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.epil = icmp eq i64 %i.d, %.056.epil.init
  br i1 %.not.epil, label %.preheader55, label %bb.b

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.056.epil.init ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !20
  store double %i.h, ptr %i.e, align 8, !tbaa !20
  store double %i.f, ptr %i.g, align 8, !tbaa !20
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
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq i64 %i.l, %.056
  br i1 %.not, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.056 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds [8 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !20
  store double %i.p, ptr %i.m, align 8, !tbaa !20
  store double %i.n, ptr %i.o, align 8, !tbaa !20
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %i.q = or disjoint i64 %.056, 1                 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %.not.1 = icmp eq i64 %i.s, %i.q
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds [8 x i8], ptr %3, i64 %i.s ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !20
  store double %i.w, ptr %i.t, align 8, !tbaa !20
  store double %i.u, ptr %i.v, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.x = add nuw nsw i64 %.056, 2                 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader55.unr-lcssa, label %.lr.ph, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond65.not = icmp eq i64 %i.ac, %i.i
  br i1 %exitcond65.not, label %.lr.ph63.preheader, label %.lr.ph58, !llvm.loop !38

.lr.ph63.preheader:                               ; preds = %.loopexit
  %i.y = add nsw i64 %1, -2
  br label %.lr.ph63

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.loopexit
  %.159 = phi i64 [ %i.ac, %.loopexit ], [ 0, %.lr.ph58.preheader ] ; 5 uses
  %i.z = sub i64 %i.i, %.159                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.159
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 6 uses
  %i.ac = add nuw nsw i64 %.159, 1                ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.159 ; 4 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58
  %i.ae = shl i64 %.159, 3
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.af
  %scevgep73 = getelementptr nuw i8, ptr %i.ab, i64 %i.af
  %scevgep74 = getelementptr i8, ptr %i.ab, i64 %i.j
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ag = add i64 %i.ac, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i64 %i.ac, %index               ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !20, !alias.scope !58
  %wide.load75 = load <2 x double>, ptr %i.aj, align 8, !tbaa !20, !alias.scope !58
  %i.ak = load double, ptr %i.ad, align 8, !tbaa !20, !alias.scope !61
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ah ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.al, align 8, !tbaa !20, !alias.scope !63, !noalias !58
  %wide.load77 = load <2 x double>, ptr %i.am, align 8, !tbaa !20, !alias.scope !63, !noalias !58
  %i.an = fneg <2 x double> %wide.load
  %i.ao = fneg <2 x double> %wide.load75
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %broadcast.splat, <2 x double> %wide.load76)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %broadcast.splat, <2 x double> %wide.load77)
  store <2 x double> %i.ap, ptr %i.al, align 8, !tbaa !20, !alias.scope !63, !noalias !58
  store <2 x double> %i.aq, ptr %i.am, align 8, !tbaa !20, !alias.scope !63, !noalias !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph58, %middle.block
  %.05057.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph58 ], [ %i.ag, %middle.block ] ; 6 uses
  %i.as = sub i64 %1, %.05057.ph
  %.neg = add i64 %.05057.ph, 1
  %xtraiter100 = and i64 %i.as, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.05057.ph
  %i.au = load double, ptr %i.at, align 8, !tbaa !20
  %i.av = load double, ptr %i.ad, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057.ph ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !20
  %i.ay = fneg double %i.au
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.av, double %i.ax)
  store double %i.az, ptr %i.aw, align 8, !tbaa !20
  %i.ba = add nuw nsw i64 %.05057.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05057.unr = phi i64 [ %.05057.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bb = icmp eq i64 %1, %.neg
  br i1 %i.bb, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05057 = phi i64 [ %i.br, %scalar.ph ], [ %.05057.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.05057
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !20
  %i.be = load double, ptr %i.ad, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  %i.bh = fneg double %i.bd
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.be, double %i.bg)
  store double %i.bi, ptr %i.bf, align 8, !tbaa !20
  %i.bj = add nuw nsw i64 %.05057, 1              ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !20
  %i.bm = load double, ptr %i.ad, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !20
  %i.bp = fneg double %i.bl
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bm, double %i.bo)
  store double %i.bq, ptr %i.bn, align 8, !tbaa !20
  %i.br = add nuw nsw i64 %.05057, 2              ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.br, %1
  br i1 %exitcond64.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !66

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.loopexit98
  %indvar = phi i64 [ 0, %.lr.ph63.preheader ], [ %indvar.next, %.loopexit98 ] ; 2 uses
  %.262 = phi i64 [ %i.i, %.lr.ph63.preheader ], [ %i.dj, %.loopexit98 ] ; 10 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.262
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.262 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.262 ; 7 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !20
  %i.by = fdiv double %i.bx, %i.bv
  store double %i.by, ptr %i.bw, align 8, !tbaa !20
  %min.iters.check83 = icmp ult i64 %.262, 4
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph63
  %bound079 = icmp ult ptr %3, %i.bu
  %bound180 = icmp ult ptr %i.bt, %i.bw
  %found.conflict81 = and i1 %bound079, %bound180
  br i1 %found.conflict81, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck78
  %n.vec85 = and i64 %.262, -4                    ; 3 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body86 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index87 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load88 = load <2 x double>, ptr %i.bz, align 8, !tbaa !20, !alias.scope !67
  %wide.load89 = load <2 x double>, ptr %i.ca, align 8, !tbaa !20, !alias.scope !67
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !20, !alias.scope !70
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index87 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %wide.load90 = load <2 x double>, ptr %i.cc, align 8, !tbaa !20, !alias.scope !72, !noalias !67
  %wide.load91 = load <2 x double>, ptr %i.cd, align 8, !tbaa !20, !alias.scope !72, !noalias !67
  %i.ce = fneg <2 x double> %wide.load88
  %i.cf = fneg <2 x double> %wide.load89
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat93, <2 x double> %wide.load90)
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %broadcast.splat93, <2 x double> %wide.load91)
  store <2 x double> %i.cg, ptr %i.cc, align 8, !tbaa !20, !alias.scope !72, !noalias !67
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !20, !alias.scope !72, !noalias !67
  %index.next94 = add nuw i64 %index87, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.ci, label %middle.block95, label %vector.body86, !llvm.loop !74

middle.block95:                                   ; preds = %vector.body86
  %cmp.n96 = icmp eq i64 %.262, %n.vec85
  br i1 %cmp.n96, label %.loopexit98, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck78, %.lr.ph63, %middle.block95
  %.15161.ph = phi i64 [ 0, %vector.memcheck78 ], [ 0, %.lr.ph63 ], [ %n.vec85, %middle.block95 ] ; 5 uses
  %i.cj = add i64 %indvar, %.15161.ph
  %xtraiter102 = and i64 %.262, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.15161.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !20
  %i.cm = load double, ptr %i.bw, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161.ph ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !20
  %i.cp = fneg double %i.cl
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cm, double %i.co)
  store double %i.cq, ptr %i.cn, align 8, !tbaa !20
  %i.cr = or disjoint i64 %.15161.ph, 1
  br label %scalar.ph82.prol.loopexit

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.15161.unr = phi i64 [ %.15161.ph, %scalar.ph82.preheader ], [ %i.cr, %scalar.ph82.prol ]
  %i.cs = icmp eq i64 %i.y, %i.cj
  br i1 %i.cs, label %.loopexit98, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.15161 = phi i64 [ %i.di, %scalar.ph82 ], [ %.15161.unr, %scalar.ph82.prol.loopexit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.15161
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !20
  %i.cv = load double, ptr %i.bw, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !20
  %i.cy = fneg double %i.cu
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cv, double %i.cx)
  store double %i.cz, ptr %i.cw, align 8, !tbaa !20
  %i.da = add nuw nsw i64 %.15161, 1              ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !20
  %i.dd = load double, ptr %i.bw, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !20
  %i.dg = fneg double %i.dc
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dd, double %i.df)
  store double %i.dh, ptr %i.de, align 8, !tbaa !20
  %i.di = add nuw nsw i64 %.15161, 2              ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.di, %.262
  br i1 %exitcond66.not.1, label %.loopexit98, label %scalar.ph82, !llvm.loop !75

.loopexit98:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block95
  %i.dj = add nsw i64 %.262, -1
  %i.dk = icmp sgt i64 %.262, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph63, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.loopexit98, %bb.a, %.preheader55
  %i.dl = load ptr, ptr %0, align 8, !tbaa !19
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !20
  %i.dn = load double, ptr %3, align 8, !tbaa !20
  %i.do = fdiv double %i.dn, %i.dm
  store double %i.do, ptr %3, align 8, !tbaa !20
  ret void
end_hunk_0
begin_hunk_1_@DensePOTRF:bb.a
.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.143.i.ph = phi i64 [ %.03344.i, %.lr.ph.preheader.i ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.143.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.143.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.143.i ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !20
  %i.ay = fdiv double %i.ax, %i.aq
  store double %i.ay, ptr %i.aw, align 8, !tbaa !20
  %i.az = add nuw nsw i64 %.143.i, 1              ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.az, %i.d
  br i1 %exitcond49.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %i.ba = add nuw nsw i64 %.03344.i, 1            ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.ba, %i.d
  br i1 %exitcond50.not.i, label %densePOTRF.exit, label %.lr.ph46.i, !llvm.loop !80

densePOTRF.exit:                                  ; preds = %._crit_edge.i, %bb.a, %bb.c
  %.035.i = phi i64 [ %i.ap, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  ret i64 %.035.i
}

; Function Attrs: nounwind uwtable
define i64 @densePOTRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph46, label %.loopexit39

.lr.ph46:                                         ; preds = %bb.a, %._crit_edge
  %.03344 = phi i64 [ %i.aw, %._crit_edge ], [ 0, %bb.a ] ; 17 uses
  %i.b = sub nsw i64 %1, %.03344                  ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %.not.not = icmp eq i64 %.03344, 0
  br i1 %.not.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph46
  %xtraiter = and i64 %.03344, 1
  %i.e = icmp eq i64 %.03344, 1
  %unroll_iter = and i64 %.03344, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod58 = trunc i64 %.03344 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.b
  %.03442 = phi i64 [ %i.ah, %bb.b ], [ %.03344, %.preheader.preheader ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03442 ; 4 uses
  %.promoted = load double, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.041 = phi i64 [ %i.y, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %i.g = phi double [ %i.x, %.preheader.new ], [ %.promoted, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.03442
  %i.k = load double, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.03344
  %i.m = load double, ptr %i.l, align 8, !tbaa !20
  %i.n = fneg double %i.k
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.m, double %i.g) ; 2 uses
  store double %i.o, ptr %i.f, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03442
  %i.t = load double, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03344
  %i.v = load double, ptr %i.u, align 8, !tbaa !20
  %i.w = fneg double %i.t
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.v, double %i.o) ; 3 uses
  store double %i.x, ptr %i.f, align 8, !tbaa !20
  %i.y = add nuw nsw i64 %.041, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !76

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.041.epil.init = phi i64 [ 0, %.preheader ], [ %i.y, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.preheader ], [ %i.x, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041.epil.init
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03442
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03344
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !20
  %i.af = fneg double %i.ac
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ae, double %.epil.init)
  store double %i.ag, ptr %i.f, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ah = add nuw nsw i64 %.03442, 1              ; 2 uses
  %exitcond48.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond48.not, label %.loopexit, label %.preheader, !llvm.loop !77

.loopexit:                                        ; preds = %bb.b, %.lr.ph46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03344
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.al = add nuw nsw i64 %.03344, 1
  br label %.loopexit39

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.am = tail call double @SUNRsqrt(double noundef %i.aj) #7 ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 2
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %i.an = add i64 %.03344, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03344
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !20
  %i.aq = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %.lr.ph.preheader, %middle.block
  %.143.ph = phi i64 [ %.03344, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %.lr.ph
  %.143 = phi i64 [ %i.av, %.lr.ph ], [ %.143.ph, %.lr.ph.preheader56 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.143 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !20
  %i.au = fdiv double %i.at, %i.am
  store double %i.au, ptr %i.as, align 8, !tbaa !20
  %i.av = add nuw nsw i64 %.143, 1                ; 2 uses
  %exitcond49.not = icmp eq i64 %i.av, %1
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.aw = add nuw nsw i64 %.03344, 1              ; 2 uses
  %exitcond50.not = icmp eq i64 %i.aw, %1
  br i1 %exitcond50.not, label %.loopexit39, label %.lr.ph46, !llvm.loop !80

.loopexit39:                                      ; preds = %._crit_edge, %bb.a, %bb.c
  %.035 = phi i64 [ %i.al, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  ret i64 %.035
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @DensePOTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
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
  %exitcond64.not.i = icmp eq i64 %i.p, %i.e
  br i1 %exitcond64.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i, !llvm.loop !83

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %.loopexit.i
  %.053.i = phi i64 [ %i.p, %.loopexit.i ], [ 0, %.lr.ph.preheader.i.preheader ] ; 6 uses
  %i.h = sub i64 %i.e, %.053.i                    ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.053.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 7 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.053.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.053.i ; 6 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !20
  %i.o = fdiv double %i.n, %i.l
  store double %i.o, ptr %i.m, align 8, !tbaa !20
  %i.p = add nuw nsw i64 %.053.i, 1               ; 6 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.q = shl i64 %.053.i, 3
  %i.r = add i64 %i.q, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.r
  %scevgep5 = getelementptr nuw i8, ptr %i.j, i64 %i.r
  %scevgep6 = getelementptr i8, ptr %i.j, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep6
  %bound1 = icmp ult ptr %scevgep5, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.s = add i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add nuw i64 %i.p, %index                 ; 2 uses
  %i.u = load double, ptr %i.m, align 8, !tbaa !20, !alias.scope !84
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !20, !alias.scope !87
  %wide.load7 = load <2 x double>, ptr %i.w, align 8, !tbaa !20, !alias.scope !87
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load8 = load <2 x double>, ptr %i.x, align 8, !tbaa !20, !alias.scope !89, !noalias !87
  %wide.load9 = load <2 x double>, ptr %i.y, align 8, !tbaa !20, !alias.scope !89, !noalias !87
  %.scalar = fneg double %i.u
  %i.z = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load, <2 x double> %wide.load8)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load7, <2 x double> %wide.load9)
  store <2 x double> %i.ab, ptr %i.x, align 8, !tbaa !20, !alias.scope !89, !noalias !87
  store <2 x double> %i.ac, ptr %i.y, align 8, !tbaa !20, !alias.scope !89, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.04952.i.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader.i ], [ %i.s, %middle.block ] ; 6 uses
  %i.ae = sub i64 %i.d, %.04952.i.ph
  %.neg = add i64 %.04952.i.ph, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.af = load double, ptr %i.m, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.04952.i.ph
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i.ph ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !20
  %i.ak = fneg double %i.af
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ah, double %i.aj)
  store double %i.al, ptr %i.ai, align 8, !tbaa !20
  %i.am = add nuw nsw i64 %.04952.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.04952.i.unr = phi i64 [ %.04952.i.ph, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.an = icmp eq i64 %i.d, %.neg
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04952.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.04952.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ao = load double, ptr %i.m, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.04952.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !20
  %i.at = fneg double %i.ao
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aq, double %i.as)
  store double %i.au, ptr %i.ar, align 8, !tbaa !20
  %i.av = add nuw nsw i64 %.04952.i, 1            ; 2 uses
  %i.aw = load double, ptr %i.m, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20
  %i.bb = fneg double %i.aw
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ay, double %i.ba)
  store double %i.bc, ptr %i.az, align 8, !tbaa !20
  %i.bd = add nuw nsw i64 %.04952.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bd, %i.d
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !92

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.a
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.e ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !20
  %i.bk = fdiv double %i.bj, %i.bh                ; 2 uses
  store double %i.bk, ptr %i.bi, align 8, !tbaa !20
  %i.bl = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bm = fdiv double %i.bk, %i.bl
  store double %i.bm, ptr %i.bi, align 8, !tbaa !20
  br i1 %i.f, label %.lr.ph62.preheader.i, label %densePOTRS.exit

.lr.ph62.preheader.i:                             ; preds = %._crit_edge.i
  %i.bn = add nsw i64 %i.d, -2
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge59.i, %.lr.ph62.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge59.i ], [ 0, %.lr.ph62.preheader.i ] ; 3 uses
  %.15060.i = phi i64 [ %i.cr, %._crit_edge59.i ], [ %i.bn, %.lr.ph62.preheader.i ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.15060.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19 ; 4 uses
  %.155.i = add nuw nsw i64 %.15060.i, 1          ; 4 uses
  %i.bq = icmp slt i64 %.155.i, %i.d
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.15060.i ; 5 uses
  %.promoted.i = load double, ptr %i.br, align 8, !tbaa !20 ; 3 uses
  br i1 %i.bq, label %.lr.ph58.i.preheader, label %._crit_edge59.i

.lr.ph58.i.preheader:                             ; preds = %.lr.ph62.i
  %i.bs = and i64 %indvar, 1
  %lcmp.mod11.not.not = icmp eq i64 %i.bs, 0
  br i1 %lcmp.mod11.not.not, label %.lr.ph58.i.prol, label %.lr.ph58.i.prol.loopexit

.lr.ph58.i.prol:                                  ; preds = %.lr.ph58.i.preheader
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.155.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.155.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !20
  %i.bx = fneg double %i.bu
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bw, double %.promoted.i) ; 3 uses
  store double %i.by, ptr %i.br, align 8, !tbaa !20
  %.1.i.prol = add nuw nsw i64 %.15060.i, 2
  br label %.lr.ph58.i.prol.loopexit

.lr.ph58.i.prol.loopexit:                         ; preds = %.lr.ph58.i.prol, %.lr.ph58.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph58.i.preheader ], [ %i.by, %.lr.ph58.i.prol ]
  %.unr = phi double [ %.promoted.i, %.lr.ph58.i.preheader ], [ %i.by, %.lr.ph58.i.prol ]
  %.156.i.unr = phi i64 [ %.155.i, %.lr.ph58.i.preheader ], [ %.1.i.prol, %.lr.ph58.i.prol ]
  %i.bz = icmp eq i64 %indvar, 0
  br i1 %i.bz, label %._crit_edge59.i, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i
  %i.ca = phi double [ %i.cm, %.lr.ph58.i ], [ %.unr, %.lr.ph58.i.prol.loopexit ]
  %.156.i = phi i64 [ %.1.i.1, %.lr.ph58.i ], [ %.156.i.unr, %.lr.ph58.i.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.156.i
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.156.i
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20
  %i.cf = fneg double %i.cc
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double %i.ca) ; 2 uses
  store double %i.cg, ptr %i.br, align 8, !tbaa !20
  %.1.i = add nuw nsw i64 %.156.i, 1              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.1.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1.i
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !20
  %i.cl = fneg double %i.ci
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ck, double %i.cg) ; 3 uses
  store double %i.cm, ptr %i.br, align 8, !tbaa !20
  %.1.i.1 = add nuw nsw i64 %.156.i, 2            ; 2 uses
  %exitcond65.not.i.1 = icmp eq i64 %.1.i.1, %i.d
  br i1 %exitcond65.not.i.1, label %._crit_edge59.i, label %.lr.ph58.i, !llvm.loop !93

._crit_edge59.i:                                  ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i, %.lr.ph62.i
  %i.cn = phi double [ %.promoted.i, %.lr.ph62.i ], [ %.lcssa.unr, %.lr.ph58.i.prol.loopexit ], [ %i.cm, %.lr.ph58.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.15060.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !20
  %i.cq = fdiv double %i.cn, %i.cp
  store double %i.cq, ptr %i.br, align 8, !tbaa !20
  %i.cr = add nsw i64 %.15060.i, -1
  %i.cs = icmp sgt i64 %.15060.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cs, label %.lr.ph62.i, label %densePOTRS.exit, !llvm.loop !94

densePOTRS.exit:                                  ; preds = %._crit_edge59.i, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @densePOTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 5 uses
  %i.b = icmp sgt i64 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader.preheader, label %._crit_edge

.lr.ph.preheader.preheader:                       ; preds = %bb.a
  %i.c = shl i64 %1, 3                            ; 2 uses
  %scevgep68 = getelementptr i8, ptr %2, i64 %i.c
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %exitcond64.not = icmp eq i64 %i.l, %i.a
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !83

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.preheader, %.loopexit
  %.053 = phi i64 [ %i.l, %.loopexit ], [ 0, %.lr.ph.preheader.preheader ] ; 6 uses
  %i.d = sub i64 %i.a, %.053                      ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.053
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 7 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.053
  %i.h = load double, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.053 ; 6 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !20
  %i.k = fdiv double %i.j, %i.h
  store double %i.k, ptr %i.i, align 8, !tbaa !20
  %i.l = add nuw nsw i64 %.053, 1                 ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = shl i64 %.053, 3
  %i.n = add i64 %i.m, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.n
  %scevgep69 = getelementptr nuw i8, ptr %i.f, i64 %i.n
  %scevgep70 = getelementptr i8, ptr %i.f, i64 %i.c
  %bound0 = icmp ult ptr %scevgep, %scevgep70
  %bound1 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  %i.o = add i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add nuw i64 %i.l, %index                 ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !20, !alias.scope !95
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !20, !alias.scope !98
  %wide.load71 = load <2 x double>, ptr %i.s, align 8, !tbaa !20, !alias.scope !98
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.t, align 8, !tbaa !20, !alias.scope !100, !noalias !98
  %wide.load73 = load <2 x double>, ptr %i.u, align 8, !tbaa !20, !alias.scope !100, !noalias !98
  %.scalar = fneg double %i.q
  %i.v = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load, <2 x double> %wide.load72)
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load71, <2 x double> %wide.load73)
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !20, !alias.scope !100, !noalias !98
  store <2 x double> %i.y, ptr %i.u, align 8, !tbaa !20, !alias.scope !100, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader74

.lr.ph.preheader74:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04952.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.o, %middle.block ] ; 6 uses
  %i.aa = sub i64 %1, %.04952.ph
  %.neg = add i64 %.04952.ph, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader74
  %i.ab = load double, ptr %i.i, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04952.ph
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952.ph ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !20
  %i.ag = fneg double %i.ab
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !20
  %i.ai = add nuw nsw i64 %.04952.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader74
  %.04952.unr = phi i64 [ %.04952.ph, %.lr.ph.preheader74 ], [ %i.ai, %.lr.ph.prol ]
  %i.aj = icmp eq i64 %1, %.neg
  br i1 %i.aj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04952 = phi i64 [ %i.az, %.lr.ph ], [ %.04952.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ak = load double, ptr %i.i, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04952
  %i.am = load double, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !20
  %i.ap = fneg double %i.ak
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.am, double %i.ao)
  store double %i.aq, ptr %i.an, align 8, !tbaa !20
  %i.ar = add nuw nsw i64 %.04952, 1              ; 2 uses
  %i.as = load double, ptr %i.i, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.au = load double, ptr %i.at, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !20
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.au, double %i.aw)
  store double %i.ay, ptr %i.av, align 8, !tbaa !20
  %i.az = add nuw nsw i64 %.04952, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !103

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.a ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !20
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20
  %i.bg = fdiv double %i.bf, %i.bd                ; 2 uses
  store double %i.bg, ptr %i.be, align 8, !tbaa !20
  %i.bh = load double, ptr %i.bc, align 8, !tbaa !20
  %i.bi = fdiv double %i.bg, %i.bh
  store double %i.bi, ptr %i.be, align 8, !tbaa !20
  br i1 %i.b, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %._crit_edge
  %i.bj = add nsw i64 %1, -2
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge59
  %indvar = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvar.next, %._crit_edge59 ] ; 3 uses
  %.15060 = phi i64 [ %i.bj, %.lr.ph62.preheader ], [ %i.co, %._crit_edge59 ] ; 8 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.15060
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19 ; 4 uses
  %.155 = add nuw nsw i64 %.15060, 1              ; 4 uses
  %i.bm = icmp slt i64 %.155, %1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060 ; 4 uses
  %.promoted = load double, ptr %i.bn, align 8, !tbaa !20 ; 3 uses
  br i1 %i.bm, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.lr.ph62
  %i.bo = and i64 %indvar, 1
  %lcmp.mod76.not.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod76.not.not, label %.lr.ph58.prol, label %.lr.ph58.prol.loopexit

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.155
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.155
  %i.bs = load double, ptr %i.br, align 8, !tbaa !20
  %i.bt = fneg double %i.bq
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bs, double %.promoted) ; 3 uses
  store double %i.bu, ptr %i.bn, align 8, !tbaa !20
  %.1.prol = add nuw nsw i64 %.15060, 2
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph58.preheader ], [ %i.bu, %.lr.ph58.prol ]
  %.unr = phi double [ %.promoted, %.lr.ph58.preheader ], [ %i.bu, %.lr.ph58.prol ]
  %.156.unr = phi i64 [ %.155, %.lr.ph58.preheader ], [ %.1.prol, %.lr.ph58.prol ]
  %i.bv = icmp eq i64 %indvar, 0
  br i1 %i.bv, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %i.bw = phi double [ %i.ci, %.lr.ph58 ], [ %.unr, %.lr.ph58.prol.loopexit ]
  %.156 = phi i64 [ %.1.1, %.lr.ph58 ], [ %.156.unr, %.lr.ph58.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.156
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.156
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !20
  %i.cb = fneg double %i.by
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bw) ; 2 uses
  store double %i.cc, ptr %i.bn, align 8, !tbaa !20
  %.1 = add nuw nsw i64 %.156, 1                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !20
  %i.ch = fneg double %i.ce
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double %i.cc) ; 3 uses
  store double %i.ci, ptr %i.bn, align 8, !tbaa !20
  %.1.1 = add nuw nsw i64 %.156, 2                ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %.1.1, %1
  br i1 %exitcond65.not.1, label %._crit_edge59, label %.lr.ph58, !llvm.loop !93

._crit_edge59:                                    ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.lr.ph62
  %i.cj = phi double [ %.promoted, %.lr.ph62 ], [ %.lcssa.unr, %.lr.ph58.prol.loopexit ], [ %i.ci, %.lr.ph58 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.15060
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060
  %i.cn = fdiv double %i.cj, %i.cl
  store double %i.cn, ptr %i.cm, align 8, !tbaa !20
  %i.co = add nsw i64 %.15060, -1
  %i.cp = icmp sgt i64 %.15060, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cp, label %.lr.ph62, label %._crit_edge63, !llvm.loop !94

._crit_edge63:                                    ; preds = %._crit_edge59, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @DenseGEQRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call i32 @denseGEQRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %1, ptr noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @denseGEQRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %bb.a
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = add i64 %1, -1                           ; 4 uses
  %i.d = shl i64 %1, 3
  %i.e = add i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph126, %.loopexit
  %indvars.iv = phi i64 [ %1, %.lr.ph126 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %.087124 = phi i64 [ 0, %.lr.ph126 ], [ %i.et, %.loopexit ] ; 16 uses
  %5 = sub i64 %i.c, %.087124                     ; 5 uses
  %i.f = sub i64 %i.c, %.087124                   ; 4 uses
  %i.g = sub i64 %1, %.087124
  %i.h = shl i64 %i.g, 3
  %scevgep146 = getelementptr i8, ptr %4, i64 %i.h
  %i.i = sub i64 %i.c, %.087124                   ; 3 uses
  %i.j = shl i64 %.087124, 3
  %i.k = sub i64 %i.j, %i.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.087124
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.087124 ; 12 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !20 ; 5 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !20
  %i.q = sub nsw i64 %1, %.087124                 ; 2 uses
  %i.r = icmp slt i64 %i.q, 2                     ; 2 uses
  br i1 %i.r, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.s = sub i64 %i.e, %.087124
  %xtraiter = and i64 %5, 3                       ; 3 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %5, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08897 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 6 uses
  %.08996 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.08897
  %i.u = load double, ptr %gep, align 8, !tbaa !20 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897
  store double %i.u, ptr %i.v, align 8, !tbaa !20
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %.08996)
  %i.x = add nuw nsw i64 %.08897, 1               ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  %i.y = load double, ptr %gep.1, align 8, !tbaa !20 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  store double %i.y, ptr %i.z, align 8, !tbaa !20
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.w)
  %i.ab = add nuw nsw i64 %.08897, 2              ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  %i.ac = load double, ptr %gep.2, align 8, !tbaa !20 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ab
  store double %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.aa)
  %i.af = add nuw nsw i64 %.08897, 3              ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af
  %i.ag = load double, ptr %gep.3, align 8, !tbaa !20 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.af
  store double %i.ag, ptr %i.ah, align 8, !tbaa !20
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ae) ; 3 uses
  %i.aj = add nuw nsw i64 %.08897, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !104

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.08897.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %.08996.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.08897.epil = phi i64 [ %i.an, %.lr.ph.epil ], [ %.08897.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.08996.epil = phi double [ %i.am, %.lr.ph.epil ], [ %.08996.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.08897.epil
  %i.ak = load double, ptr %gep.epil, align 8, !tbaa !20 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897.epil
  store double %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %.08996.epil) ; 2 uses
  %i.an = add nuw nsw i64 %.08897.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.ai, %._crit_edge.unr-lcssa ], [ %i.am, %.lr.ph.epil ] ; 4 uses
  %i.ao = fcmp une double %.lcssa, 0.000000e+00
  br i1 %i.ao, label %.lr.ph101.preheader, label %._crit_edge.thread

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %.lcssa)
  %i.aq = tail call double @SUNRsqrt(double noundef %i.ap) #7 ; 2 uses
  %i.ar = fcmp ugt double %i.p, 0.000000e+00
  %i.as = fsub double %i.p, %i.aq
  %i.at = fneg double %.lcssa
  %i.au = fadd double %i.p, %i.aq
  %i.av = fdiv double %i.at, %i.au
  %i.aw = select i1 %i.ar, double %i.av, double %i.as ; 4 uses
  %i.ax = fmul double %i.aw, %i.aw                ; 2 uses
  %i.ay = fmul double %i.ax, 2.000000e+00
  %i.az = fadd double %.lcssa, %i.ax
  %i.ba = fdiv double %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double %i.ba, ptr %i.bb, align 8, !tbaa !20
  %min.iters.check162 = icmp ult i64 %i.f, 2
  br i1 %min.iters.check162, label %.lr.ph101.preheader175, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph101.preheader
  %n.vec164 = and i64 %i.f, -2                    ; 2 uses
  %i.bc = or i64 %i.f, 1
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph163
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body167 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index168
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %wide.load169 = load <2 x double>, ptr %i.be, align 8, !tbaa !20
  %i.bf = fdiv <2 x double> %wide.load169, %broadcast.splat166
  store <2 x double> %i.bf, ptr %i.be, align 8, !tbaa !20
  %index.next170 = add nuw i64 %index168, 2       ; 2 uses
  %i.bg = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.bg, label %middle.block171, label %vector.body167, !llvm.loop !107

middle.block171:                                  ; preds = %vector.body167
  %cmp.n172 = icmp eq i64 %i.f, %n.vec164
  br i1 %cmp.n172, label %.lr.ph118, label %.lr.ph101.preheader175

.lr.ph101.preheader175:                           ; preds = %.lr.ph101.preheader, %middle.block171
  %.199.ph = phi i64 [ 1, %.lr.ph101.preheader ], [ %i.bc, %middle.block171 ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader175, %.lr.ph101
  %.199 = phi i64 [ %i.bk, %.lr.ph101 ], [ %.199.ph, %.lr.ph101.preheader175 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.199 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !20
  %i.bj = fdiv double %i.bi, %i.aw
  store double %i.bj, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add nuw nsw i64 %.199, 1                ; 2 uses
  %exitcond129.not = icmp eq i64 %i.bk, %indvars.iv
  br i1 %exitcond129.not, label %.lr.ph118, label %.lr.ph101, !llvm.loop !108

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double 0.000000e+00, ptr %i.bl, align 8, !tbaa !20
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph101, %middle.block171, %._crit_edge.thread
  %i.bm = icmp sgt i64 %i.q, 0
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  %xtraiter179 = and i64 %indvars.iv, 3           ; 3 uses
  %i.bo = icmp ult i64 %5, 3
  %unroll_iter184 = and i64 %indvars.iv, -4
  %lcmp.mod181.not = icmp eq i64 %xtraiter179, 0
  %lcmp.mod183 = icmp ne i64 %xtraiter179, 0
  %min.iters.check148 = icmp ult i64 %indvars.iv, 4
  %n.vec150 = and i64 %indvars.iv, -4             ; 3 uses
  %cmp.n159 = icmp eq i64 %indvars.iv, %n.vec150
  %xtraiter186 = and i64 %indvars.iv, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph118, %._crit_edge115
  %.0116 = phi i64 [ %.087124, %.lr.ph118 ], [ %i.dq, %._crit_edge115 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0116
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19 ; 2 uses
  %invariant.gep102 = getelementptr [8 x i8], ptr %i.bq, i64 %.087124 ; 10 uses
  br i1 %i.bm, label %.lr.ph107.preheader, label %._crit_edge115

.lr.ph107.preheader:                              ; preds = %bb.c
  br i1 %i.bo, label %.lr.ph107.epil.preheader, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %.2105 = phi i64 [ %i.ck, %.lr.ph107 ], [ 0, %.lr.ph107.preheader ] ; 6 uses
  %.190104 = phi double [ %i.cj, %.lr.ph107 ], [ 0.000000e+00, %.lr.ph107.preheader ]
  %niter185 = phi i64 [ %niter185.next.3, %.lr.ph107 ], [ 0, %.lr.ph107.preheader ]
  %gep103 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105
  %i.br = load double, ptr %gep103, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !20
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bt, double %.190104)
  %i.bv = or disjoint i64 %.2105, 1               ; 2 uses
  %gep103.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.bv
  %i.bw = load double, ptr %gep103.1, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bu)
  %i.ca = or disjoint i64 %.2105, 2               ; 2 uses
  %gep103.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.ca
  %i.cb = load double, ptr %gep103.2, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ca
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !20
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.bz)
  %i.cf = or disjoint i64 %.2105, 3               ; 2 uses
  %gep103.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.cf
  %i.cg = load double, ptr %gep103.3, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !20
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %i.ce) ; 3 uses
  %i.ck = add nuw nsw i64 %.2105, 4               ; 2 uses
  %niter185.next.3 = add i64 %niter185, 4         ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %.lr.ph114.unr-lcssa, label %.lr.ph107, !llvm.loop !109

.lr.ph114.unr-lcssa:                              ; preds = %.lr.ph107
  br i1 %lcmp.mod181.not, label %.lr.ph114, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.lr.ph114.unr-lcssa, %.lr.ph107.preheader
  %.2105.epil.init = phi i64 [ 0, %.lr.ph107.preheader ], [ %i.ck, %.lr.ph114.unr-lcssa ]
  %.190104.epil.init = phi double [ 0.000000e+00, %.lr.ph107.preheader ], [ %i.cj, %.lr.ph114.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %.2105.epil = phi i64 [ %i.cp, %.lr.ph107.epil ], [ %.2105.epil.init, %.lr.ph107.epil.preheader ] ; 3 uses
  %.190104.epil = phi double [ %i.co, %.lr.ph107.epil ], [ %.190104.epil.init, %.lr.ph107.epil.preheader ]
  %epil.iter180 = phi i64 [ %epil.iter180.next, %.lr.ph107.epil ], [ 0, %.lr.ph107.epil.preheader ]
  %gep103.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105.epil
  %i.cl = load double, ptr %gep103.epil, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105.epil
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !20
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cn, double %.190104.epil) ; 2 uses
  %i.cp = add nuw nsw i64 %.2105.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %.lr.ph114, label %.lr.ph107.epil, !llvm.loop !110

.lr.ph114:                                        ; preds = %.lr.ph107.epil, %.lr.ph114.unr-lcssa
  %.lcssa176 = phi double [ %i.cj, %.lr.ph114.unr-lcssa ], [ %i.co, %.lr.ph107.epil ]
  %i.cq = load double, ptr %i.bn, align 8, !tbaa !20
  %i.cr = fneg double %i.cq
  %i.cs = fmul double %.lcssa176, %i.cr           ; 4 uses
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph114
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.d
  %bound0 = icmp ult ptr %invariant.gep102, %scevgep146
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph147.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck145
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index152 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load153 = load <2 x double>, ptr %i.ct, align 8, !tbaa !20, !alias.scope !111
  %wide.load154 = load <2 x double>, ptr %i.cu, align 8, !tbaa !20, !alias.scope !111
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %index152 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load155 = load <2 x double>, ptr %i.cv, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  %wide.load156 = load <2 x double>, ptr %i.cw, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load153, <2 x double> %wide.load155)
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load154, <2 x double> %wide.load156)
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  store <2 x double> %i.cy, ptr %i.cw, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  %index.next157 = add nuw i64 %index152, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.cz, label %middle.block158, label %vector.body151, !llvm.loop !116

middle.block158:                                  ; preds = %vector.body151
  br i1 %cmp.n159, label %._crit_edge115, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck145, %.lr.ph114, %middle.block158
  %.3112.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph114 ], [ %n.vec150, %middle.block158 ] ; 5 uses
  br i1 %lcmp.mod187.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol

scalar.ph147.prol:                                ; preds = %scalar.ph147.preheader
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112.ph
  %i.db = load double, ptr %i.da, align 8, !tbaa !20
  %gep111.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112.ph ; 2 uses
  %i.dc = load double, ptr %gep111.prol, align 8, !tbaa !20
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.db, double %i.dc)
  store double %i.dd, ptr %gep111.prol, align 8, !tbaa !20
  %i.de = or disjoint i64 %.3112.ph, 1
  br label %scalar.ph147.prol.loopexit

scalar.ph147.prol.loopexit:                       ; preds = %scalar.ph147.prol, %scalar.ph147.preheader
  %.3112.unr = phi i64 [ %.3112.ph, %scalar.ph147.preheader ], [ %i.de, %scalar.ph147.prol ]
  %i.df = icmp eq i64 %5, %.3112.ph
  br i1 %i.df, label %._crit_edge115, label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147
  %.3112 = phi i64 [ %i.dp, %scalar.ph147 ], [ %.3112.unr, %scalar.ph147.prol.loopexit ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !20
  %gep111 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112 ; 2 uses
  %i.di = load double, ptr %gep111, align 8, !tbaa !20
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dh, double %i.di)
  store double %i.dj, ptr %gep111, align 8, !tbaa !20
  %i.dk = add nuw nsw i64 %.3112, 1               ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !20
  %gep111.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.dk ; 2 uses
  %i.dn = load double, ptr %gep111.1, align 8, !tbaa !20
  %i.do = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dm, double %i.dn)
  store double %i.do, ptr %gep111.1, align 8, !tbaa !20
  %i.dp = add nuw nsw i64 %.3112, 2               ; 2 uses
  %exitcond131.not.1 = icmp eq i64 %i.dp, %indvars.iv
  br i1 %exitcond131.not.1, label %._crit_edge115, label %scalar.ph147, !llvm.loop !117

._crit_edge115:                                   ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147, %middle.block158, %bb.c
  %i.dq = add nuw nsw i64 %.0116, 1               ; 2 uses
  %exitcond132.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond132.not, label %._crit_edge119, label %bb.c, !llvm.loop !118

._crit_edge119:                                   ; preds = %._crit_edge115
  %i.dr = icmp sge i64 %.087124, %i.c
  %brmerge = or i1 %i.dr, %i.r
  br i1 %brmerge, label %.loopexit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %._crit_edge119
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %.lr.ph123.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.preheader
  %i.ds = add i64 %i.k, %i.n
  %i.dt = add i64 %i.ds, -1
  %diff.check = icmp ult i64 %i.dt, 31
  br i1 %diff.check, label %.lr.ph123.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %i.du = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = or disjoint i64 %index, 1               ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !20
  %wide.load144 = load <2 x double>, ptr %i.dx, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dv ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x double> %wide.load, ptr %i.dy, align 8, !tbaa !20
  store <2 x double> %wide.load144, ptr %i.dz, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph123.preheader174

.lr.ph123.preheader174:                           ; preds = %vector.memcheck, %.lr.ph123.preheader, %middle.block
  %.4122.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph123.preheader ], [ %i.du, %middle.block ] ; 4 uses
  %i.eb = sub i64 %indvars.iv, %.4122.ph
  %i.ec = sub i64 %5, %.4122.ph
  %xtraiter188 = and i64 %i.eb, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol

.lr.ph123.prol:                                   ; preds = %.lr.ph123.preheader174, %.lr.ph123.prol
  %.4122.prol = phi i64 [ %i.ef, %.lr.ph123.prol ], [ %.4122.ph, %.lr.ph123.preheader174 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.prol ], [ 0, %.lr.ph123.preheader174 ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122.prol
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !20
  %gep121.prol = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4122.prol
  store double %i.ee, ptr %gep121.prol, align 8, !tbaa !20
  %i.ef = add nuw nsw i64 %.4122.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter188
  br i1 %prol.iter.cmp.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol, !llvm.loop !120

.lr.ph123.prol.loopexit:                          ; preds = %.lr.ph123.prol, %.lr.ph123.preheader174
  %.4122.unr = phi i64 [ %.4122.ph, %.lr.ph123.preheader174 ], [ %i.ef, %.lr.ph123.prol ]
  %i.eg = icmp ult i64 %i.ec, 3
  br i1 %i.eg, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123
  %.4122 = phi i64 [ %i.es, %.lr.ph123 ], [ %.4122.unr, %.lr.ph123.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !20
  %gep121 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4122
  store double %i.ei, ptr %gep121, align 8, !tbaa !20
  %i.ej = add nuw nsw i64 %.4122, 1               ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !20
  %gep121.1 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ej
  store double %i.el, ptr %gep121.1, align 8, !tbaa !20
  %i.em = add nuw nsw i64 %.4122, 2               ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !20
  %gep121.2 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.em
  store double %i.eo, ptr %gep121.2, align 8, !tbaa !20
  %i.ep = add nuw nsw i64 %.4122, 3               ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !20
  %gep121.3 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ep
  store double %i.er, ptr %gep121.3, align 8, !tbaa !20
  %i.es = add nuw nsw i64 %.4122, 4               ; 2 uses
  %exitcond134.not.3 = icmp eq i64 %i.es, %indvars.iv
  br i1 %exitcond134.not.3, label %.loopexit, label %.lr.ph123, !llvm.loop !121

.loopexit:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123, %middle.block, %._crit_edge119
  %i.et = add nuw nsw i64 %.087124, 1             ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond135.not = icmp eq i64 %i.et, %2
  br i1 %exitcond135.not, label %._crit_edge127, label %bb.b, !llvm.loop !122

._crit_edge127:                                   ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @DenseORMQR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
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
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !20
  %wide.load9 = load <2 x double>, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !20
  store <2 x double> %wide.load9, ptr %i.n, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !123

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
  %i.q = load double, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = add nuw nsw i64 %.04854.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !124

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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !20
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04854.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.04854.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = add nuw nsw i64 %.04854.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !tbaa !20
  %i.ag = add nuw nsw i64 %.04854.i, 2            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  store double %i.ai, ptr %i.aj, align 8, !tbaa !20
  %i.ak = add nuw nsw i64 %.04854.i, 3            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !20
  %i.ao = add nuw nsw i64 %.04854.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond.not.i.3, label %.preheader53.i, label %.lr.ph.i, !llvm.loop !125

.preheader.i:                                     ; preds = %.lr.ph56.preheader.i, %.preheader53.i
  br i1 %i.g, label %.lr.ph66.preheader.i, label %denseORMQR.exit

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
  br i1 %i.ay, label %.lr.ph66.i, label %denseORMQR.exit, !llvm.loop !126

.lr.ph66.i:                                       ; preds = %.loopexit.i, %.lr.ph66.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph66.preheader.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.aq, %.lr.ph66.preheader.i ] ; 6 uses
  %.065.in.i = phi i64 [ %.065.i, %.loopexit.i ], [ %i.f, %.lr.ph66.preheader.i ] ; 3 uses
  %i.az = add i64 %i.av, %indvar                  ; 4 uses
  %i.ba = shl i64 %indvar, 3
  %scevgep11 = getelementptr i8, ptr %i.aw, i64 %i.ba
  %.065.i = add nsw i64 %.065.in.i, -1            ; 7 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.065.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 3 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !20
  %i.bd = getelementptr [8 x i8], ptr %3, i64 %.065.i ; 6 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !20 ; 3 uses
  %i.bf = sub nsw i64 %i.d, %.065.i               ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %.lr.ph59.i.preheader, label %._crit_edge.i

end_hunk_1
