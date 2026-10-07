Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZNK6casadi17Feasiblesqpmethod24anderson_acc_step_updateEPvx:bb.a
  %i.bn = fsub <2 x double> %wide.load508, %wide.load506
  %i.bo = fsub <2 x double> %wide.load509, %wide.load507
  store <2 x double> %i.bn, ptr %next.gep504, align 8, !tbaa !155, !alias.scope !493, !noalias !492
  store <2 x double> %i.bo, ptr %i.bm, align 8, !tbaa !155, !alias.scope !493, !noalias !492
  %index.next510 = add nuw i64 %index503, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next510, %n.vec501
  br i1 %i.bp, label %middle.block511, label %vector.body502, !llvm.loop !412

middle.block511:                                  ; preds = %vector.body502
  %cmp.n512 = icmp eq i64 %i.h, %n.vec501
  br i1 %cmp.n512, label %.lr.ph.i60.preheader, label %.lr.ph.i58.preheader683

.lr.ph.i58.preheader683:                          ; preds = %vector.memcheck496, %.lr.ph.i58.preheader, %middle.block511
  %.014.i.ph = phi i64 [ 0, %vector.memcheck496 ], [ 0, %.lr.ph.i58.preheader ], [ %n.vec501, %middle.block511 ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.j, %vector.memcheck496 ], [ %i.j, %.lr.ph.i58.preheader ], [ %i.bi, %middle.block511 ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.bd, %vector.memcheck496 ], [ %i.bd, %.lr.ph.i58.preheader ], [ %i.bj, %middle.block511 ] ; 2 uses
  %xtraiter718 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod719.not = icmp eq i64 %xtraiter718, 0
  br i1 %lcmp.mod719.not, label %.lr.ph.i58.prol.loopexit, label %.lr.ph.i58.prol

.lr.ph.i58.prol:                                  ; preds = %.lr.ph.i58.preheader683, %.lr.ph.i58.prol
  %.014.i.prol = phi i64 [ %i.bv, %.lr.ph.i58.prol ], [ %.014.i.ph, %.lr.ph.i58.preheader683 ]
  %.0813.i.prol = phi ptr [ %i.bs, %.lr.ph.i58.prol ], [ %.0813.i.ph, %.lr.ph.i58.preheader683 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.bq, %.lr.ph.i58.prol ], [ %.0912.i.ph, %.lr.ph.i58.preheader683 ] ; 2 uses
  %prol.iter720 = phi i64 [ %prol.iter720.next, %.lr.ph.i58.prol ], [ 0, %.lr.ph.i58.preheader683 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.br = load double, ptr %.0912.i.prol, align 8, !tbaa !155
  %i.bs = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.bt = load double, ptr %.0813.i.prol, align 8, !tbaa !155
  %i.bu = fsub double %i.bt, %i.br
  store double %i.bu, ptr %.0813.i.prol, align 8, !tbaa !155
  %i.bv = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter720.next = add i64 %prol.iter720, 1   ; 2 uses
  %prol.iter720.cmp.not = icmp eq i64 %prol.iter720.next, %xtraiter718
  br i1 %prol.iter720.cmp.not, label %.lr.ph.i58.prol.loopexit, label %.lr.ph.i58.prol, !llvm.loop !413

.lr.ph.i58.prol.loopexit:                         ; preds = %.lr.ph.i58.prol, %.lr.ph.i58.preheader683
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i58.preheader683 ], [ %i.bv, %.lr.ph.i58.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i58.preheader683 ], [ %i.bs, %.lr.ph.i58.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i58.preheader683 ], [ %i.bq, %.lr.ph.i58.prol ]
  %i.bw = sub i64 %.014.i.ph, %i.h
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %.lr.ph.i60.preheader, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.prol.loopexit, %.lr.ph.i58
  %.014.i = phi i64 [ %i.cs, %.lr.ph.i58 ], [ %.014.i.unr, %.lr.ph.i58.prol.loopexit ]
  %.0813.i = phi ptr [ %i.cp, %.lr.ph.i58 ], [ %.0813.i.unr, %.lr.ph.i58.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.cn, %.lr.ph.i58 ], [ %.0912.i.unr, %.lr.ph.i58.prol.loopexit ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.bz = load double, ptr %.0912.i, align 8, !tbaa !155
  %i.ca = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.cb = load double, ptr %.0813.i, align 8, !tbaa !155
  %i.cc = fsub double %i.cb, %i.bz
  store double %i.cc, ptr %.0813.i, align 8, !tbaa !155
  %i.cd = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.ce = load double, ptr %i.by, align 8, !tbaa !155
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.cg = load double, ptr %i.ca, align 8, !tbaa !155
  %i.ch = fsub double %i.cg, %i.ce
  store double %i.ch, ptr %i.ca, align 8, !tbaa !155
  %i.ci = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.cj = load double, ptr %i.cd, align 8, !tbaa !155
  %i.ck = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.cl = load double, ptr %i.cf, align 8, !tbaa !155
  %i.cm = fsub double %i.cl, %i.cj
  store double %i.cm, ptr %i.cf, align 8, !tbaa !155
  %i.cn = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.co = load double, ptr %i.ci, align 8, !tbaa !155
  %i.cp = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.cq = load double, ptr %i.ck, align 8, !tbaa !155
  %i.cr = fsub double %i.cq, %i.co
  store double %i.cr, ptr %i.ck, align 8, !tbaa !155
  %i.cs = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i59.3 = icmp eq i64 %i.cs, %i.h
  br i1 %exitcond.not.i59.3, label %.lr.ph.i60.preheader, label %.lr.ph.i58, !llvm.loop !414

.lr.ph.i60.preheader:                             ; preds = %.lr.ph.i58.prol.loopexit, %.lr.ph.i58, %middle.block511, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.ct = add i64 %i.h, -1                        ; 2 uses
  %xtraiter721 = and i64 %i.h, 3                  ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 3
  br i1 %i.cu, label %.lr.ph.i60.epil.preheader, label %.lr.ph.i60.preheader.new

.lr.ph.i60.preheader.new:                         ; preds = %.lr.ph.i60.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.i60.preheader.new
  %.012.i = phi double [ 0.000000e+00, %.lr.ph.i60.preheader.new ], [ %i.do, %.lr.ph.i60 ]
  %.0710.i = phi ptr [ %i.j, %.lr.ph.i60.preheader.new ], [ %i.dm, %.lr.ph.i60 ] ; 5 uses
  %.089.i = phi ptr [ %i.e, %.lr.ph.i60.preheader.new ], [ %i.dk, %.lr.ph.i60 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i60.preheader.new ], [ %niter.next.3, %.lr.ph.i60 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.089.i, i64 8
  %i.cw = load double, ptr %.089.i, align 8, !tbaa !155
  %i.cx = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.cy = load double, ptr %.0710.i, align 8, !tbaa !155
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cy, double %.012.i)
  %i.da = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.db = load double, ptr %i.cv, align 8, !tbaa !155
  %i.dc = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.dd = load double, ptr %i.cx, align 8, !tbaa !155
  %i.de = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dd, double %i.cz)
  %i.df = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.dg = load double, ptr %i.da, align 8, !tbaa !155
  %i.dh = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.di = load double, ptr %i.dc, align 8, !tbaa !155
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.di, double %i.de)
  %i.dk = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.dl = load double, ptr %i.df, align 8, !tbaa !155
  %i.dm = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.dn = load double, ptr %i.dh, align 8, !tbaa !155
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dn, double %i.dj) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i63.preheader.unr-lcssa, label %.lr.ph.i60, !llvm.loop !4

.lr.ph.i63.preheader.unr-lcssa:                   ; preds = %.lr.ph.i60
  %lcmp.mod722.not = icmp eq i64 %xtraiter721, 0
  br i1 %lcmp.mod722.not, label %.lr.ph.i63.preheader, label %.lr.ph.i60.epil.preheader

.lr.ph.i60.epil.preheader:                        ; preds = %.lr.ph.i63.preheader.unr-lcssa, %.lr.ph.i60.preheader
  %.012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i60.preheader ], [ %i.do, %.lr.ph.i63.preheader.unr-lcssa ]
  %.0710.i.epil.init = phi ptr [ %i.j, %.lr.ph.i60.preheader ], [ %i.dm, %.lr.ph.i63.preheader.unr-lcssa ]
  %.089.i.epil.init = phi ptr [ %i.e, %.lr.ph.i60.preheader ], [ %i.dk, %.lr.ph.i63.preheader.unr-lcssa ]
  %lcmp.mod724 = icmp ne i64 %xtraiter721, 0
  tail call void @llvm.assume(i1 %lcmp.mod724)
  br label %.lr.ph.i60.epil

.lr.ph.i60.epil:                                  ; preds = %.lr.ph.i60.epil, %.lr.ph.i60.epil.preheader
  %.012.i.epil = phi double [ %i.dt, %.lr.ph.i60.epil ], [ %.012.i.epil.init, %.lr.ph.i60.epil.preheader ]
  %.0710.i.epil = phi ptr [ %i.dr, %.lr.ph.i60.epil ], [ %.0710.i.epil.init, %.lr.ph.i60.epil.preheader ] ; 2 uses
  %.089.i.epil = phi ptr [ %i.dp, %.lr.ph.i60.epil ], [ %.089.i.epil.init, %.lr.ph.i60.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i60.epil ], [ 0, %.lr.ph.i60.epil.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.089.i.epil, i64 8
  %i.dq = load double, ptr %.089.i.epil, align 8, !tbaa !155
  %i.dr = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.ds = load double, ptr %.0710.i.epil, align 8, !tbaa !155
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.ds, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter721
  br i1 %epil.iter.cmp.not, label %.lr.ph.i63.preheader, label %.lr.ph.i60.epil, !llvm.loop !415

.lr.ph.i63.preheader:                             ; preds = %.lr.ph.i60.epil, %.lr.ph.i63.preheader.unr-lcssa
  %.lcssa682 = phi double [ %i.do, %.lr.ph.i63.preheader.unr-lcssa ], [ %i.dt, %.lr.ph.i60.epil ]
  %xtraiter725 = and i64 %i.h, 3                  ; 3 uses
  %i.du = icmp ult i64 %i.ct, 3
  br i1 %i.du, label %.lr.ph.i63.epil.preheader, label %.lr.ph.i63.preheader.new

.lr.ph.i63.preheader.new:                         ; preds = %.lr.ph.i63.preheader
  %unroll_iter730 = and i64 %i.h, -4
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63, %.lr.ph.i63.preheader.new
  %.012.i64 = phi double [ 0.000000e+00, %.lr.ph.i63.preheader.new ], [ %i.eg, %.lr.ph.i63 ]
  %.0710.i66 = phi ptr [ %i.j, %.lr.ph.i63.preheader.new ], [ %i.ee, %.lr.ph.i63 ] ; 5 uses
  %niter731 = phi i64 [ 0, %.lr.ph.i63.preheader.new ], [ %niter731.next.3, %.lr.ph.i63 ]
  %i.dv = getelementptr i8, ptr %.0710.i66, i64 8
  %i.dw = load double, ptr %.0710.i66, align 8, !tbaa !155 ; 2 uses
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %.012.i64)
  %i.dy = getelementptr i8, ptr %.0710.i66, i64 16
  %i.dz = load double, ptr %i.dv, align 8, !tbaa !155 ; 2 uses
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.dx)
  %i.eb = getelementptr i8, ptr %.0710.i66, i64 24
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !155 ; 2 uses
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double %i.ea)
  %i.ee = getelementptr i8, ptr %.0710.i66, i64 32 ; 2 uses
  %i.ef = load double, ptr %i.eb, align 8, !tbaa !155 ; 2 uses
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.ed) ; 3 uses
  %niter731.next.3 = add i64 %niter731, 4         ; 2 uses
  %niter731.ncmp.3 = icmp eq i64 %niter731.next.3, %unroll_iter730
  br i1 %niter731.ncmp.3, label %.unr-lcssa, label %.lr.ph.i63, !llvm.loop !4

.unr-lcssa:                                       ; preds = %.lr.ph.i63
  %lcmp.mod727.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod727.not, label %.epilog-lcssa, label %.lr.ph.i63.epil.preheader

.lr.ph.i63.epil.preheader:                        ; preds = %.unr-lcssa, %.lr.ph.i63.preheader
  %.012.i64.epil.init = phi double [ 0.000000e+00, %.lr.ph.i63.preheader ], [ %i.eg, %.unr-lcssa ]
  %.0710.i66.epil.init = phi ptr [ %i.j, %.lr.ph.i63.preheader ], [ %i.ee, %.unr-lcssa ]
  %lcmp.mod729 = icmp ne i64 %xtraiter725, 0
  tail call void @llvm.assume(i1 %lcmp.mod729)
  br label %.lr.ph.i63.epil

.lr.ph.i63.epil:                                  ; preds = %.lr.ph.i63.epil, %.lr.ph.i63.epil.preheader
  %.012.i64.epil = phi double [ %i.ej, %.lr.ph.i63.epil ], [ %.012.i64.epil.init, %.lr.ph.i63.epil.preheader ]
  %.0710.i66.epil = phi ptr [ %i.eh, %.lr.ph.i63.epil ], [ %.0710.i66.epil.init, %.lr.ph.i63.epil.preheader ] ; 2 uses
  %epil.iter726 = phi i64 [ %epil.iter726.next, %.lr.ph.i63.epil ], [ 0, %.lr.ph.i63.epil.preheader ]
  %i.eh = getelementptr i8, ptr %.0710.i66.epil, i64 8
  %i.ei = load double, ptr %.0710.i66.epil, align 8, !tbaa !155 ; 2 uses
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %.012.i64.epil) ; 2 uses
  %epil.iter726.next = add i64 %epil.iter726, 1   ; 2 uses
  %epil.iter726.cmp.not = icmp eq i64 %epil.iter726.next, %xtraiter725
  br i1 %epil.iter726.cmp.not, label %.epilog-lcssa, label %.lr.ph.i63.epil, !llvm.loop !416

.epilog-lcssa:                                    ; preds = %.lr.ph.i63.epil, %.unr-lcssa
  %.lcssa = phi double [ %i.eg, %.unr-lcssa ], [ %i.ej, %.lr.ph.i63.epil ]
  %i.ek = fdiv double %.lcssa682, %.lcssa
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 5 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !259
  store double %i.ek, ptr %i.em, align 8, !tbaa !155
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 5 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !248 ; 9 uses
  %.not15.i71 = icmp eq ptr %i.eo, null
  br i1 %.not15.i71, label %.lr.ph23.preheader.i79, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %.epilog-lcssa
  %i.ep = ptrtoaddr ptr %i.eo to i64
  %min.iters.check519 = icmp ult i64 %i.h, 8
  %i.eq = sub i64 %i.ep, %i.k
  %diff.check517 = icmp ugt i64 %i.eq, -32
  %or.cond671 = or i1 %min.iters.check519, %diff.check517
  br i1 %or.cond671, label %.lr.ph.i73.preheader681, label %vector.ph520

vector.ph520:                                     ; preds = %.lr.ph.i73.preheader
  %n.vec521 = and i64 %i.h, -4                    ; 4 uses
  %i.er = shl i64 %n.vec521, 3                    ; 2 uses
  %i.es = getelementptr i8, ptr %i.j, i64 %i.er
  %i.et = getelementptr i8, ptr %i.eo, i64 %i.er
  br label %vector.body522

vector.body522:                                   ; preds = %vector.body522, %vector.ph520
  %index523 = phi i64 [ 0, %vector.ph520 ], [ %index.next528, %vector.body522 ] ; 2 uses
  %i.eu = shl i64 %index523, 3                    ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.j, i64 %i.eu ; 2 uses
  %next.gep525 = getelementptr i8, ptr %i.eo, i64 %i.eu ; 2 uses
  %i.ev = getelementptr i8, ptr %next.gep525, i64 16
  %wide.load526 = load <2 x double>, ptr %next.gep525, align 8, !tbaa !155
  %wide.load527 = load <2 x double>, ptr %i.ev, align 8, !tbaa !155
  %i.ew = getelementptr i8, ptr %next.gep524, i64 16
  store <2 x double> %wide.load526, ptr %next.gep524, align 8, !tbaa !155
  store <2 x double> %wide.load527, ptr %i.ew, align 8, !tbaa !155
  %index.next528 = add nuw i64 %index523, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next528, %n.vec521
  br i1 %i.ex, label %middle.block529, label %vector.body522, !llvm.loop !417

middle.block529:                                  ; preds = %vector.body522
  %cmp.n530 = icmp eq i64 %i.h, %n.vec521
  br i1 %cmp.n530, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit80, label %.lr.ph.i73.preheader681

.lr.ph.i73.preheader681:                          ; preds = %.lr.ph.i73.preheader, %middle.block529
  %.020.i74.ph = phi i64 [ 0, %.lr.ph.i73.preheader ], [ %n.vec521, %middle.block529 ] ; 4 uses
  %.01019.i75.ph = phi ptr [ %i.j, %.lr.ph.i73.preheader ], [ %i.es, %middle.block529 ] ; 2 uses
  %.01218.i76.ph = phi ptr [ %i.eo, %.lr.ph.i73.preheader ], [ %i.et, %middle.block529 ] ; 2 uses
  %i.ey = sub i64 %i.h, %.020.i74.ph
  %xtraiter732 = and i64 %i.ey, 7                 ; 2 uses
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  br i1 %lcmp.mod733.not, label %.lr.ph.i73.prol.loopexit, label %.lr.ph.i73.prol

.lr.ph.i73.prol:                                  ; preds = %.lr.ph.i73.preheader681, %.lr.ph.i73.prol
  %.020.i74.prol = phi i64 [ %i.fc, %.lr.ph.i73.prol ], [ %.020.i74.ph, %.lr.ph.i73.preheader681 ]
  %.01019.i75.prol = phi ptr [ %i.fb, %.lr.ph.i73.prol ], [ %.01019.i75.ph, %.lr.ph.i73.preheader681 ] ; 2 uses
  %.01218.i76.prol = phi ptr [ %i.ez, %.lr.ph.i73.prol ], [ %.01218.i76.ph, %.lr.ph.i73.preheader681 ] ; 2 uses
  %prol.iter734 = phi i64 [ %prol.iter734.next, %.lr.ph.i73.prol ], [ 0, %.lr.ph.i73.preheader681 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.01218.i76.prol, i64 8 ; 2 uses
  %i.fa = load double, ptr %.01218.i76.prol, align 8, !tbaa !155
  %i.fb = getelementptr inbounds nuw i8, ptr %.01019.i75.prol, i64 8 ; 2 uses
  store double %i.fa, ptr %.01019.i75.prol, align 8, !tbaa !155
  %i.fc = add nuw nsw i64 %.020.i74.prol, 1       ; 2 uses
  %prol.iter734.next = add i64 %prol.iter734, 1   ; 2 uses
  %prol.iter734.cmp.not = icmp eq i64 %prol.iter734.next, %xtraiter732
  br i1 %prol.iter734.cmp.not, label %.lr.ph.i73.prol.loopexit, label %.lr.ph.i73.prol, !llvm.loop !418

.lr.ph.i73.prol.loopexit:                         ; preds = %.lr.ph.i73.prol, %.lr.ph.i73.preheader681
  %.020.i74.unr = phi i64 [ %.020.i74.ph, %.lr.ph.i73.preheader681 ], [ %i.fc, %.lr.ph.i73.prol ]
  %.01019.i75.unr = phi ptr [ %.01019.i75.ph, %.lr.ph.i73.preheader681 ], [ %i.fb, %.lr.ph.i73.prol ]
  %.01218.i76.unr = phi ptr [ %.01218.i76.ph, %.lr.ph.i73.preheader681 ], [ %i.ez, %.lr.ph.i73.prol ]
  %i.fd = sub i64 %.020.i74.ph, %i.h
  %i.fe = icmp ugt i64 %i.fd, -8
  br i1 %i.fe, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit80, label %.lr.ph.i73

.lr.ph23.preheader.i79:                           ; preds = %.epilog-lcssa
  %i.ff = shl nuw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.ff, i1 false), !tbaa !155
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit80

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.prol.loopexit, %.lr.ph.i73
  %.020.i74 = phi i64 [ %i.ge, %.lr.ph.i73 ], [ %.020.i74.unr, %.lr.ph.i73.prol.loopexit ]
  %.01019.i75 = phi ptr [ %i.gd, %.lr.ph.i73 ], [ %.01019.i75.unr, %.lr.ph.i73.prol.loopexit ] ; 9 uses
  %.01218.i76 = phi ptr [ %i.gb, %.lr.ph.i73 ], [ %.01218.i76.unr, %.lr.ph.i73.prol.loopexit ] ; 9 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 8
  %i.fh = load double, ptr %.01218.i76, align 8, !tbaa !155
  %i.fi = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 8
  store double %i.fh, ptr %.01019.i75, align 8, !tbaa !155
  %i.fj = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 16
  %i.fk = load double, ptr %i.fg, align 8, !tbaa !155
  %i.fl = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 16
  store double %i.fk, ptr %i.fi, align 8, !tbaa !155
  %i.fm = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 24
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !155
  %i.fo = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 24
  store double %i.fn, ptr %i.fl, align 8, !tbaa !155
  %i.fp = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 32
  %i.fq = load double, ptr %i.fm, align 8, !tbaa !155
  %i.fr = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 32
  store double %i.fq, ptr %i.fo, align 8, !tbaa !155
  %i.fs = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 40
  %i.ft = load double, ptr %i.fp, align 8, !tbaa !155
  %i.fu = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 40
  store double %i.ft, ptr %i.fr, align 8, !tbaa !155
  %i.fv = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 48
  %i.fw = load double, ptr %i.fs, align 8, !tbaa !155
  %i.fx = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 48
  store double %i.fw, ptr %i.fu, align 8, !tbaa !155
  %i.fy = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 56
  %i.fz = load double, ptr %i.fv, align 8, !tbaa !155
  %i.ga = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 56
  store double %i.fz, ptr %i.fx, align 8, !tbaa !155
  %i.gb = getelementptr inbounds nuw i8, ptr %.01218.i76, i64 64
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !155
  %i.gd = getelementptr inbounds nuw i8, ptr %.01019.i75, i64 64
  store double %i.gc, ptr %i.ga, align 8, !tbaa !155
  %i.ge = add nuw nsw i64 %.020.i74, 8            ; 2 uses
  %exitcond.not.i77.7 = icmp eq i64 %i.ge, %i.h
  br i1 %exitcond.not.i77.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit80, label %.lr.ph.i73, !llvm.loop !419

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit80:     ; preds = %.lr.ph.i73.prol.loopexit, %.lr.ph.i73, %middle.block529, %.lr.ph23.preheader.i79
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !258 ; 7 uses
  %.not236 = icmp eq ptr %i.gg, null
  br i1 %.not236, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit88, label %.lr.ph.i83.preheader

.lr.ph.i83.preheader:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit80
  %min.iters.check540 = icmp ult i64 %i.h, 6
  br i1 %min.iters.check540, label %.lr.ph.i83.preheader680, label %vector.memcheck541

vector.memcheck541:                               ; preds = %.lr.ph.i83.preheader
  %i.gh = shl i64 %i.h, 3                         ; 2 uses
  %i.gi = getelementptr i8, ptr %i.j, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gg, i64 %i.gh
  %bound0542 = icmp ult ptr %i.j, %i.gj
  %bound1543 = icmp ult ptr %i.gg, %i.gi
  %found.conflict544 = and i1 %bound0542, %bound1543
  br i1 %found.conflict544, label %.lr.ph.i83.preheader680, label %vector.ph545

vector.ph545:                                     ; preds = %vector.memcheck541
  %n.vec546 = and i64 %i.h, -4                    ; 4 uses
  %i.gk = shl i64 %n.vec546, 3                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.j, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gg, i64 %i.gk
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph545
  %index548 = phi i64 [ 0, %vector.ph545 ], [ %index.next555, %vector.body547 ] ; 2 uses
  %i.gn = shl i64 %index548, 3                    ; 2 uses
  %next.gep549 = getelementptr i8, ptr %i.j, i64 %i.gn ; 3 uses
  %next.gep550 = getelementptr i8, ptr %i.gg, i64 %i.gn ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep550, i64 16
  %wide.load551 = load <2 x double>, ptr %next.gep550, align 8, !tbaa !155, !alias.scope !494
  %wide.load552 = load <2 x double>, ptr %i.go, align 8, !tbaa !155, !alias.scope !494
  %i.gp = getelementptr i8, ptr %next.gep549, i64 16 ; 2 uses
  %wide.load553 = load <2 x double>, ptr %next.gep549, align 8, !tbaa !155, !alias.scope !495, !noalias !494
  %wide.load554 = load <2 x double>, ptr %i.gp, align 8, !tbaa !155, !alias.scope !495, !noalias !494
  %i.gq = fsub <2 x double> %wide.load553, %wide.load551
  %i.gr = fsub <2 x double> %wide.load554, %wide.load552
  store <2 x double> %i.gq, ptr %next.gep549, align 8, !tbaa !155, !alias.scope !495, !noalias !494
  store <2 x double> %i.gr, ptr %i.gp, align 8, !tbaa !155, !alias.scope !495, !noalias !494
  %index.next555 = add nuw i64 %index548, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next555, %n.vec546
  br i1 %i.gs, label %middle.block556, label %vector.body547, !llvm.loop !423

middle.block556:                                  ; preds = %vector.body547
  %cmp.n557 = icmp eq i64 %i.h, %n.vec546
  br i1 %cmp.n557, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit88, label %.lr.ph.i83.preheader680

.lr.ph.i83.preheader680:                          ; preds = %vector.memcheck541, %.lr.ph.i83.preheader, %middle.block556
  %.014.i84.ph = phi i64 [ 0, %vector.memcheck541 ], [ 0, %.lr.ph.i83.preheader ], [ %n.vec546, %middle.block556 ] ; 3 uses
  %.0813.i85.ph = phi ptr [ %i.j, %vector.memcheck541 ], [ %i.j, %.lr.ph.i83.preheader ], [ %i.gl, %middle.block556 ] ; 2 uses
  %.0912.i86.ph = phi ptr [ %i.gg, %vector.memcheck541 ], [ %i.gg, %.lr.ph.i83.preheader ], [ %i.gm, %middle.block556 ] ; 2 uses
  %xtraiter735 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol

.lr.ph.i83.prol:                                  ; preds = %.lr.ph.i83.preheader680, %.lr.ph.i83.prol
  %.014.i84.prol = phi i64 [ %i.gy, %.lr.ph.i83.prol ], [ %.014.i84.ph, %.lr.ph.i83.preheader680 ]
  %.0813.i85.prol = phi ptr [ %i.gv, %.lr.ph.i83.prol ], [ %.0813.i85.ph, %.lr.ph.i83.preheader680 ] ; 3 uses
  %.0912.i86.prol = phi ptr [ %i.gt, %.lr.ph.i83.prol ], [ %.0912.i86.ph, %.lr.ph.i83.preheader680 ] ; 2 uses
  %prol.iter737 = phi i64 [ %prol.iter737.next, %.lr.ph.i83.prol ], [ 0, %.lr.ph.i83.preheader680 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.0912.i86.prol, i64 8 ; 2 uses
  %i.gu = load double, ptr %.0912.i86.prol, align 8, !tbaa !155
  %i.gv = getelementptr inbounds nuw i8, ptr %.0813.i85.prol, i64 8 ; 2 uses
  %i.gw = load double, ptr %.0813.i85.prol, align 8, !tbaa !155
  %i.gx = fsub double %i.gw, %i.gu
  store double %i.gx, ptr %.0813.i85.prol, align 8, !tbaa !155
  %i.gy = add nuw nsw i64 %.014.i84.prol, 1       ; 2 uses
  %prol.iter737.next = add i64 %prol.iter737, 1   ; 2 uses
  %prol.iter737.cmp.not = icmp eq i64 %prol.iter737.next, %xtraiter735
  br i1 %prol.iter737.cmp.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol, !llvm.loop !424

.lr.ph.i83.prol.loopexit:                         ; preds = %.lr.ph.i83.prol, %.lr.ph.i83.preheader680
  %.014.i84.unr = phi i64 [ %.014.i84.ph, %.lr.ph.i83.preheader680 ], [ %i.gy, %.lr.ph.i83.prol ]
  %.0813.i85.unr = phi ptr [ %.0813.i85.ph, %.lr.ph.i83.preheader680 ], [ %i.gv, %.lr.ph.i83.prol ]
  %.0912.i86.unr = phi ptr [ %.0912.i86.ph, %.lr.ph.i83.preheader680 ], [ %i.gt, %.lr.ph.i83.prol ]
  %i.gz = sub i64 %.014.i84.ph, %i.h
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit88, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.prol.loopexit, %.lr.ph.i83
  %.014.i84 = phi i64 [ %i.hv, %.lr.ph.i83 ], [ %.014.i84.unr, %.lr.ph.i83.prol.loopexit ]
  %.0813.i85 = phi ptr [ %i.hs, %.lr.ph.i83 ], [ %.0813.i85.unr, %.lr.ph.i83.prol.loopexit ] ; 6 uses
  %.0912.i86 = phi ptr [ %i.hq, %.lr.ph.i83 ], [ %.0912.i86.unr, %.lr.ph.i83.prol.loopexit ] ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0912.i86, i64 8
  %i.hc = load double, ptr %.0912.i86, align 8, !tbaa !155
  %i.hd = getelementptr inbounds nuw i8, ptr %.0813.i85, i64 8 ; 2 uses
  %i.he = load double, ptr %.0813.i85, align 8, !tbaa !155
  %i.hf = fsub double %i.he, %i.hc
  store double %i.hf, ptr %.0813.i85, align 8, !tbaa !155
  %i.hg = getelementptr inbounds nuw i8, ptr %.0912.i86, i64 16
  %i.hh = load double, ptr %i.hb, align 8, !tbaa !155
  %i.hi = getelementptr inbounds nuw i8, ptr %.0813.i85, i64 16 ; 2 uses
  %i.hj = load double, ptr %i.hd, align 8, !tbaa !155
  %i.hk = fsub double %i.hj, %i.hh
  store double %i.hk, ptr %i.hd, align 8, !tbaa !155
  %i.hl = getelementptr inbounds nuw i8, ptr %.0912.i86, i64 24
  %i.hm = load double, ptr %i.hg, align 8, !tbaa !155
  %i.hn = getelementptr inbounds nuw i8, ptr %.0813.i85, i64 24 ; 2 uses
  %i.ho = load double, ptr %i.hi, align 8, !tbaa !155
  %i.hp = fsub double %i.ho, %i.hm
  store double %i.hp, ptr %i.hi, align 8, !tbaa !155
  %i.hq = getelementptr inbounds nuw i8, ptr %.0912.i86, i64 32
  %i.hr = load double, ptr %i.hl, align 8, !tbaa !155
  %i.hs = getelementptr inbounds nuw i8, ptr %.0813.i85, i64 32
  %i.ht = load double, ptr %i.hn, align 8, !tbaa !155
  %i.hu = fsub double %i.ht, %i.hr
  store double %i.hu, ptr %i.hn, align 8, !tbaa !155
  %i.hv = add nuw nsw i64 %.014.i84, 4            ; 2 uses
  %exitcond.not.i87.3 = icmp eq i64 %i.hv, %i.h
  br i1 %exitcond.not.i87.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit88, label %.lr.ph.i83, !llvm.loop !425

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit88:  ; preds = %.lr.ph.i83.prol.loopexit, %.lr.ph.i83, %middle.block556, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit80
  br i1 %.not15.i, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit88
  %min.iters.check567 = icmp ult i64 %i.h, 6
  br i1 %min.iters.check567, label %.lr.ph.i91.preheader679, label %vector.memcheck568

vector.memcheck568:                               ; preds = %.lr.ph.i91.preheader
  %i.hw = shl i64 %i.h, 3                         ; 2 uses
  %i.hx = getelementptr i8, ptr %i.j, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.e, i64 %i.hw
  %bound0569 = icmp ult ptr %i.j, %i.hy
  %bound1570 = icmp ult ptr %i.e, %i.hx
  %found.conflict571 = and i1 %bound0569, %bound1570
  br i1 %found.conflict571, label %.lr.ph.i91.preheader679, label %vector.ph572

vector.ph572:                                     ; preds = %vector.memcheck568
  %n.vec573 = and i64 %i.h, -4                    ; 4 uses
  %i.hz = shl i64 %n.vec573, 3                    ; 2 uses
  %i.ia = getelementptr i8, ptr %i.j, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.e, i64 %i.hz
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph572
  %index575 = phi i64 [ 0, %vector.ph572 ], [ %index.next582, %vector.body574 ] ; 2 uses
  %i.ic = shl i64 %index575, 3                    ; 2 uses
  %next.gep576 = getelementptr i8, ptr %i.j, i64 %i.ic ; 3 uses
  %next.gep577 = getelementptr i8, ptr %i.e, i64 %i.ic ; 2 uses
  %i.id = getelementptr i8, ptr %next.gep577, i64 16
  %wide.load578 = load <2 x double>, ptr %next.gep577, align 8, !tbaa !155, !alias.scope !496
  %wide.load579 = load <2 x double>, ptr %i.id, align 8, !tbaa !155, !alias.scope !496
  %i.ie = getelementptr i8, ptr %next.gep576, i64 16 ; 2 uses
  %wide.load580 = load <2 x double>, ptr %next.gep576, align 8, !tbaa !155, !alias.scope !497, !noalias !496
  %wide.load581 = load <2 x double>, ptr %i.ie, align 8, !tbaa !155, !alias.scope !497, !noalias !496
  %i.if = fadd <2 x double> %wide.load578, %wide.load580
  %i.ig = fadd <2 x double> %wide.load579, %wide.load581
  store <2 x double> %i.if, ptr %next.gep576, align 8, !tbaa !155, !alias.scope !497, !noalias !496
  store <2 x double> %i.ig, ptr %i.ie, align 8, !tbaa !155, !alias.scope !497, !noalias !496
  %index.next582 = add nuw i64 %index575, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next582, %n.vec573
  br i1 %i.ih, label %middle.block583, label %vector.body574, !llvm.loop !429

middle.block583:                                  ; preds = %vector.body574
  %cmp.n584 = icmp eq i64 %i.h, %n.vec573
  br i1 %cmp.n584, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96, label %.lr.ph.i91.preheader679

.lr.ph.i91.preheader679:                          ; preds = %vector.memcheck568, %.lr.ph.i91.preheader, %middle.block583
  %.014.i92.ph = phi i64 [ 0, %vector.memcheck568 ], [ 0, %.lr.ph.i91.preheader ], [ %n.vec573, %middle.block583 ] ; 3 uses
  %.0813.i93.ph = phi ptr [ %i.j, %vector.memcheck568 ], [ %i.j, %.lr.ph.i91.preheader ], [ %i.ia, %middle.block583 ] ; 2 uses
  %.0912.i94.ph = phi ptr [ %i.e, %vector.memcheck568 ], [ %i.e, %.lr.ph.i91.preheader ], [ %i.ib, %middle.block583 ] ; 2 uses
  %xtraiter738 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %.lr.ph.i91.prol.loopexit, label %.lr.ph.i91.prol

.lr.ph.i91.prol:                                  ; preds = %.lr.ph.i91.preheader679, %.lr.ph.i91.prol
  %.014.i92.prol = phi i64 [ %i.in, %.lr.ph.i91.prol ], [ %.014.i92.ph, %.lr.ph.i91.preheader679 ]
  %.0813.i93.prol = phi ptr [ %i.ik, %.lr.ph.i91.prol ], [ %.0813.i93.ph, %.lr.ph.i91.preheader679 ] ; 3 uses
  %.0912.i94.prol = phi ptr [ %i.ii, %.lr.ph.i91.prol ], [ %.0912.i94.ph, %.lr.ph.i91.preheader679 ] ; 2 uses
  %prol.iter740 = phi i64 [ %prol.iter740.next, %.lr.ph.i91.prol ], [ 0, %.lr.ph.i91.preheader679 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.0912.i94.prol, i64 8 ; 2 uses
  %i.ij = load double, ptr %.0912.i94.prol, align 8, !tbaa !155
  %i.ik = getelementptr inbounds nuw i8, ptr %.0813.i93.prol, i64 8 ; 2 uses
  %i.il = load double, ptr %.0813.i93.prol, align 8, !tbaa !155
  %i.im = fadd double %i.ij, %i.il
  store double %i.im, ptr %.0813.i93.prol, align 8, !tbaa !155
  %i.in = add nuw nsw i64 %.014.i92.prol, 1       ; 2 uses
  %prol.iter740.next = add i64 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i64 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %.lr.ph.i91.prol.loopexit, label %.lr.ph.i91.prol, !llvm.loop !430

.lr.ph.i91.prol.loopexit:                         ; preds = %.lr.ph.i91.prol, %.lr.ph.i91.preheader679
  %.014.i92.unr = phi i64 [ %.014.i92.ph, %.lr.ph.i91.preheader679 ], [ %i.in, %.lr.ph.i91.prol ]
  %.0813.i93.unr = phi ptr [ %.0813.i93.ph, %.lr.ph.i91.preheader679 ], [ %i.ik, %.lr.ph.i91.prol ]
  %.0912.i94.unr = phi ptr [ %.0912.i94.ph, %.lr.ph.i91.preheader679 ], [ %i.ii, %.lr.ph.i91.prol ]
  %i.io = sub i64 %.014.i92.ph, %i.h
  %i.ip = icmp ugt i64 %i.io, -4
  br i1 %i.ip, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91
  %.014.i92 = phi i64 [ %i.jk, %.lr.ph.i91 ], [ %.014.i92.unr, %.lr.ph.i91.prol.loopexit ]
  %.0813.i93 = phi ptr [ %i.jh, %.lr.ph.i91 ], [ %.0813.i93.unr, %.lr.ph.i91.prol.loopexit ] ; 6 uses
  %.0912.i94 = phi ptr [ %i.jf, %.lr.ph.i91 ], [ %.0912.i94.unr, %.lr.ph.i91.prol.loopexit ] ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0912.i94, i64 8
  %i.ir = load double, ptr %.0912.i94, align 8, !tbaa !155
  %i.is = getelementptr inbounds nuw i8, ptr %.0813.i93, i64 8 ; 2 uses
  %i.it = load double, ptr %.0813.i93, align 8, !tbaa !155
  %i.iu = fadd double %i.ir, %i.it
  store double %i.iu, ptr %.0813.i93, align 8, !tbaa !155
  %i.iv = getelementptr inbounds nuw i8, ptr %.0912.i94, i64 16
  %i.iw = load double, ptr %i.iq, align 8, !tbaa !155
  %i.ix = getelementptr inbounds nuw i8, ptr %.0813.i93, i64 16 ; 2 uses
  %i.iy = load double, ptr %i.is, align 8, !tbaa !155
  %i.iz = fadd double %i.iw, %i.iy
  store double %i.iz, ptr %i.is, align 8, !tbaa !155
  %i.ja = getelementptr inbounds nuw i8, ptr %.0912.i94, i64 24
  %i.jb = load double, ptr %i.iv, align 8, !tbaa !155
  %i.jc = getelementptr inbounds nuw i8, ptr %.0813.i93, i64 24 ; 2 uses
  %i.jd = load double, ptr %i.ix, align 8, !tbaa !155
  %i.je = fadd double %i.jb, %i.jd
  store double %i.je, ptr %i.ix, align 8, !tbaa !155
  %i.jf = getelementptr inbounds nuw i8, ptr %.0912.i94, i64 32
  %i.jg = load double, ptr %i.ja, align 8, !tbaa !155
  %i.jh = getelementptr inbounds nuw i8, ptr %.0813.i93, i64 32
  %i.ji = load double, ptr %i.jc, align 8, !tbaa !155
  %i.jj = fadd double %i.jg, %i.ji
  store double %i.jj, ptr %i.jc, align 8, !tbaa !155
  %i.jk = add nuw nsw i64 %.014.i92, 4            ; 2 uses
  %exitcond.not.i95.3 = icmp eq i64 %i.jk, %i.h
  br i1 %exitcond.not.i95.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96, label %.lr.ph.i91, !llvm.loop !431

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96:  ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91, %middle.block583, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit88
  br i1 %.not.not, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104, label %.lr.ph.i99.preheader

.lr.ph.i99.preheader:                             ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96
  %min.iters.check594 = icmp ult i64 %i.h, 6
  br i1 %min.iters.check594, label %.lr.ph.i99.preheader678, label %vector.memcheck595

vector.memcheck595:                               ; preds = %.lr.ph.i99.preheader
  %i.jl = shl i64 %i.h, 3                         ; 2 uses
  %i.jm = getelementptr i8, ptr %i.j, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.bd, i64 %i.jl
  %bound0596 = icmp ult ptr %i.j, %i.jn
  %bound1597 = icmp ult ptr %i.bd, %i.jm
  %found.conflict598 = and i1 %bound0596, %bound1597
  br i1 %found.conflict598, label %.lr.ph.i99.preheader678, label %vector.ph599

vector.ph599:                                     ; preds = %vector.memcheck595
  %n.vec600 = and i64 %i.h, -4                    ; 4 uses
  %i.jo = shl i64 %n.vec600, 3                    ; 2 uses
  %i.jp = getelementptr i8, ptr %i.j, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.bd, i64 %i.jo
  br label %vector.body601

vector.body601:                                   ; preds = %vector.body601, %vector.ph599
  %index602 = phi i64 [ 0, %vector.ph599 ], [ %index.next609, %vector.body601 ] ; 2 uses
  %i.jr = shl i64 %index602, 3                    ; 2 uses
  %next.gep603 = getelementptr i8, ptr %i.j, i64 %i.jr ; 3 uses
  %next.gep604 = getelementptr i8, ptr %i.bd, i64 %i.jr ; 2 uses
  %i.js = getelementptr i8, ptr %next.gep604, i64 16
  %wide.load605 = load <2 x double>, ptr %next.gep604, align 8, !tbaa !155, !alias.scope !498
  %wide.load606 = load <2 x double>, ptr %i.js, align 8, !tbaa !155, !alias.scope !498
  %i.jt = getelementptr i8, ptr %next.gep603, i64 16 ; 2 uses
  %wide.load607 = load <2 x double>, ptr %next.gep603, align 8, !tbaa !155, !alias.scope !499, !noalias !498
  %wide.load608 = load <2 x double>, ptr %i.jt, align 8, !tbaa !155, !alias.scope !499, !noalias !498
  %i.ju = fsub <2 x double> %wide.load607, %wide.load605
  %i.jv = fsub <2 x double> %wide.load608, %wide.load606
  store <2 x double> %i.ju, ptr %next.gep603, align 8, !tbaa !155, !alias.scope !499, !noalias !498
  store <2 x double> %i.jv, ptr %i.jt, align 8, !tbaa !155, !alias.scope !499, !noalias !498
  %index.next609 = add nuw i64 %index602, 4       ; 2 uses
  %i.jw = icmp eq i64 %index.next609, %n.vec600
  br i1 %i.jw, label %middle.block610, label %vector.body601, !llvm.loop !435

middle.block610:                                  ; preds = %vector.body601
  %cmp.n611 = icmp eq i64 %i.h, %n.vec600
  br i1 %cmp.n611, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104, label %.lr.ph.i99.preheader678

.lr.ph.i99.preheader678:                          ; preds = %vector.memcheck595, %.lr.ph.i99.preheader, %middle.block610
  %.014.i100.ph = phi i64 [ 0, %vector.memcheck595 ], [ 0, %.lr.ph.i99.preheader ], [ %n.vec600, %middle.block610 ] ; 3 uses
  %.0813.i101.ph = phi ptr [ %i.j, %vector.memcheck595 ], [ %i.j, %.lr.ph.i99.preheader ], [ %i.jp, %middle.block610 ] ; 2 uses
  %.0912.i102.ph = phi ptr [ %i.bd, %vector.memcheck595 ], [ %i.bd, %.lr.ph.i99.preheader ], [ %i.jq, %middle.block610 ] ; 2 uses
  %xtraiter741 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod742.not = icmp eq i64 %xtraiter741, 0
  br i1 %lcmp.mod742.not, label %.lr.ph.i99.prol.loopexit, label %.lr.ph.i99.prol

.lr.ph.i99.prol:                                  ; preds = %.lr.ph.i99.preheader678, %.lr.ph.i99.prol
  %.014.i100.prol = phi i64 [ %i.kc, %.lr.ph.i99.prol ], [ %.014.i100.ph, %.lr.ph.i99.preheader678 ]
  %.0813.i101.prol = phi ptr [ %i.jz, %.lr.ph.i99.prol ], [ %.0813.i101.ph, %.lr.ph.i99.preheader678 ] ; 3 uses
  %.0912.i102.prol = phi ptr [ %i.jx, %.lr.ph.i99.prol ], [ %.0912.i102.ph, %.lr.ph.i99.preheader678 ] ; 2 uses
  %prol.iter743 = phi i64 [ %prol.iter743.next, %.lr.ph.i99.prol ], [ 0, %.lr.ph.i99.preheader678 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.0912.i102.prol, i64 8 ; 2 uses
  %i.jy = load double, ptr %.0912.i102.prol, align 8, !tbaa !155
  %i.jz = getelementptr inbounds nuw i8, ptr %.0813.i101.prol, i64 8 ; 2 uses
  %i.ka = load double, ptr %.0813.i101.prol, align 8, !tbaa !155
  %i.kb = fsub double %i.ka, %i.jy
  store double %i.kb, ptr %.0813.i101.prol, align 8, !tbaa !155
  %i.kc = add nuw nsw i64 %.014.i100.prol, 1      ; 2 uses
  %prol.iter743.next = add i64 %prol.iter743, 1   ; 2 uses
  %prol.iter743.cmp.not = icmp eq i64 %prol.iter743.next, %xtraiter741
  br i1 %prol.iter743.cmp.not, label %.lr.ph.i99.prol.loopexit, label %.lr.ph.i99.prol, !llvm.loop !436

.lr.ph.i99.prol.loopexit:                         ; preds = %.lr.ph.i99.prol, %.lr.ph.i99.preheader678
  %.014.i100.unr = phi i64 [ %.014.i100.ph, %.lr.ph.i99.preheader678 ], [ %i.kc, %.lr.ph.i99.prol ]
  %.0813.i101.unr = phi ptr [ %.0813.i101.ph, %.lr.ph.i99.preheader678 ], [ %i.jz, %.lr.ph.i99.prol ]
  %.0912.i102.unr = phi ptr [ %.0912.i102.ph, %.lr.ph.i99.preheader678 ], [ %i.jx, %.lr.ph.i99.prol ]
  %i.kd = sub i64 %.014.i100.ph, %i.h
  %i.ke = icmp ugt i64 %i.kd, -4
  br i1 %i.ke, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99
  %.014.i100 = phi i64 [ %i.kz, %.lr.ph.i99 ], [ %.014.i100.unr, %.lr.ph.i99.prol.loopexit ]
  %.0813.i101 = phi ptr [ %i.kw, %.lr.ph.i99 ], [ %.0813.i101.unr, %.lr.ph.i99.prol.loopexit ] ; 6 uses
  %.0912.i102 = phi ptr [ %i.ku, %.lr.ph.i99 ], [ %.0912.i102.unr, %.lr.ph.i99.prol.loopexit ] ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0912.i102, i64 8
  %i.kg = load double, ptr %.0912.i102, align 8, !tbaa !155
  %i.kh = getelementptr inbounds nuw i8, ptr %.0813.i101, i64 8 ; 2 uses
  %i.ki = load double, ptr %.0813.i101, align 8, !tbaa !155
  %i.kj = fsub double %i.ki, %i.kg
  store double %i.kj, ptr %.0813.i101, align 8, !tbaa !155
  %i.kk = getelementptr inbounds nuw i8, ptr %.0912.i102, i64 16
  %i.kl = load double, ptr %i.kf, align 8, !tbaa !155
  %i.km = getelementptr inbounds nuw i8, ptr %.0813.i101, i64 16 ; 2 uses
  %i.kn = load double, ptr %i.kh, align 8, !tbaa !155
  %i.ko = fsub double %i.kn, %i.kl
  store double %i.ko, ptr %i.kh, align 8, !tbaa !155
  %i.kp = getelementptr inbounds nuw i8, ptr %.0912.i102, i64 24
  %i.kq = load double, ptr %i.kk, align 8, !tbaa !155
  %i.kr = getelementptr inbounds nuw i8, ptr %.0813.i101, i64 24 ; 2 uses
  %i.ks = load double, ptr %i.km, align 8, !tbaa !155
  %i.kt = fsub double %i.ks, %i.kq
  store double %i.kt, ptr %i.km, align 8, !tbaa !155
  %i.ku = getelementptr inbounds nuw i8, ptr %.0912.i102, i64 32
  %i.kv = load double, ptr %i.kp, align 8, !tbaa !155
  %i.kw = getelementptr inbounds nuw i8, ptr %.0813.i101, i64 32
  %i.kx = load double, ptr %i.kr, align 8, !tbaa !155
  %i.ky = fsub double %i.kx, %i.kv
  store double %i.ky, ptr %i.kr, align 8, !tbaa !155
  %i.kz = add nuw nsw i64 %.014.i100, 4           ; 2 uses
  %exitcond.not.i103.3 = icmp eq i64 %i.kz, %i.h
  br i1 %exitcond.not.i103.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104, label %.lr.ph.i99, !llvm.loop !437

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104.sink.split: ; preds = %.preheader16.i, %.preheader.i, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !259
  store double +qnan, ptr %i.lb, align 8, !tbaa !155
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !248
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104: ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104.sink.split, %middle.block610, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96
  %i.le = phi ptr [ %i.la, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104.sink.split ], [ %i.el, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96 ], [ %i.el, %middle.block610 ], [ %i.el, %.lr.ph.i99 ], [ %i.el, %.lr.ph.i99.prol.loopexit ]
  %i.lf = phi ptr [ %i.lc, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104.sink.split ], [ %i.en, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96 ], [ %i.en, %middle.block610 ], [ %i.en, %.lr.ph.i99 ], [ %i.en, %.lr.ph.i99.prol.loopexit ]
  %i.lg = phi ptr [ %i.ld, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104.sink.split ], [ %i.eo, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit96 ], [ %i.eo, %middle.block610 ], [ %i.eo, %.lr.ph.i99 ], [ %i.eo, %.lr.ph.i99.prol.loopexit ]
  tail call void @_ZNK6casadi17Feasiblesqpmethod26anderson_acc_update_memoryEPvPdS2_(ptr noundef nonnull align 8 dereferenceable(2448) %0, ptr noundef nonnull %1, ptr noundef %i.e, ptr noundef %i.lg)
  %i.lh = load i64, ptr %i.g, align 8, !tbaa !158 ; 15 uses
  %i.li = load ptr, ptr %i.d, align 8, !tbaa !246 ; 7 uses
  %i.lj = load ptr, ptr %i.lf, align 8, !tbaa !248 ; 13 uses
  %i.lk = icmp ne ptr %i.li, null
  %i.ll = icmp ne ptr %i.lj, null                 ; 2 uses
  %or.cond.i105 = and i1 %i.lk, %i.ll
  %i.lm = icmp sgt i64 %i.lh, 0                   ; 2 uses
  %or.cond15.i106 = and i1 %i.lm, %or.cond.i105
  br i1 %or.cond15.i106, label %.lr.ph.i107.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112

.lr.ph.i107.preheader:                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104
  %min.iters.check621 = icmp ult i64 %i.lh, 6
  br i1 %min.iters.check621, label %.lr.ph.i107.preheader677, label %vector.memcheck622

vector.memcheck622:                               ; preds = %.lr.ph.i107.preheader
  %i.ln = shl i64 %i.lh, 3                        ; 2 uses
  %i.lo = getelementptr i8, ptr %i.lj, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.li, i64 %i.ln
  %bound0623 = icmp ult ptr %i.lj, %i.lp
  %bound1624 = icmp ult ptr %i.li, %i.lo
  %found.conflict625 = and i1 %bound0623, %bound1624
  br i1 %found.conflict625, label %.lr.ph.i107.preheader677, label %vector.ph626

vector.ph626:                                     ; preds = %vector.memcheck622
  %n.vec627 = and i64 %i.lh, 9223372036854775804  ; 4 uses
  %i.lq = shl i64 %n.vec627, 3                    ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lj, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.li, i64 %i.lq
  br label %vector.body628

vector.body628:                                   ; preds = %vector.body628, %vector.ph626
  %index629 = phi i64 [ 0, %vector.ph626 ], [ %index.next636, %vector.body628 ] ; 2 uses
  %i.lt = shl i64 %index629, 3                    ; 2 uses
  %next.gep630 = getelementptr i8, ptr %i.lj, i64 %i.lt ; 3 uses
  %next.gep631 = getelementptr i8, ptr %i.li, i64 %i.lt ; 2 uses
  %i.lu = getelementptr i8, ptr %next.gep631, i64 16
  %wide.load632 = load <2 x double>, ptr %next.gep631, align 8, !tbaa !155, !alias.scope !500
  %wide.load633 = load <2 x double>, ptr %i.lu, align 8, !tbaa !155, !alias.scope !500
  %i.lv = getelementptr i8, ptr %next.gep630, i64 16 ; 2 uses
  %wide.load634 = load <2 x double>, ptr %next.gep630, align 8, !tbaa !155, !alias.scope !501, !noalias !500
  %wide.load635 = load <2 x double>, ptr %i.lv, align 8, !tbaa !155, !alias.scope !501, !noalias !500
  %i.lw = fadd <2 x double> %wide.load632, %wide.load634
  %i.lx = fadd <2 x double> %wide.load633, %wide.load635
  store <2 x double> %i.lw, ptr %next.gep630, align 8, !tbaa !155, !alias.scope !501, !noalias !500
  store <2 x double> %i.lx, ptr %i.lv, align 8, !tbaa !155, !alias.scope !501, !noalias !500
  %index.next636 = add nuw i64 %index629, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next636, %n.vec627
  br i1 %i.ly, label %middle.block637, label %vector.body628, !llvm.loop !441

middle.block637:                                  ; preds = %vector.body628
  %cmp.n638 = icmp eq i64 %i.lh, %n.vec627
  br i1 %cmp.n638, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112, label %.lr.ph.i107.preheader677

.lr.ph.i107.preheader677:                         ; preds = %vector.memcheck622, %.lr.ph.i107.preheader, %middle.block637
  %.014.i108.ph = phi i64 [ 0, %vector.memcheck622 ], [ 0, %.lr.ph.i107.preheader ], [ %n.vec627, %middle.block637 ] ; 3 uses
  %.0813.i109.ph = phi ptr [ %i.lj, %vector.memcheck622 ], [ %i.lj, %.lr.ph.i107.preheader ], [ %i.lr, %middle.block637 ] ; 2 uses
  %.0912.i110.ph = phi ptr [ %i.li, %vector.memcheck622 ], [ %i.li, %.lr.ph.i107.preheader ], [ %i.ls, %middle.block637 ] ; 2 uses
  %xtraiter744 = and i64 %i.lh, 3                 ; 2 uses
  %lcmp.mod745.not = icmp eq i64 %xtraiter744, 0
  br i1 %lcmp.mod745.not, label %.lr.ph.i107.prol.loopexit, label %.lr.ph.i107.prol

.lr.ph.i107.prol:                                 ; preds = %.lr.ph.i107.preheader677, %.lr.ph.i107.prol
  %.014.i108.prol = phi i64 [ %i.me, %.lr.ph.i107.prol ], [ %.014.i108.ph, %.lr.ph.i107.preheader677 ]
  %.0813.i109.prol = phi ptr [ %i.mb, %.lr.ph.i107.prol ], [ %.0813.i109.ph, %.lr.ph.i107.preheader677 ] ; 3 uses
  %.0912.i110.prol = phi ptr [ %i.lz, %.lr.ph.i107.prol ], [ %.0912.i110.ph, %.lr.ph.i107.preheader677 ] ; 2 uses
  %prol.iter746 = phi i64 [ %prol.iter746.next, %.lr.ph.i107.prol ], [ 0, %.lr.ph.i107.preheader677 ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.0912.i110.prol, i64 8 ; 2 uses
  %i.ma = load double, ptr %.0912.i110.prol, align 8, !tbaa !155
  %i.mb = getelementptr inbounds nuw i8, ptr %.0813.i109.prol, i64 8 ; 2 uses
  %i.mc = load double, ptr %.0813.i109.prol, align 8, !tbaa !155
  %i.md = fadd double %i.ma, %i.mc
  store double %i.md, ptr %.0813.i109.prol, align 8, !tbaa !155
  %i.me = add nuw nsw i64 %.014.i108.prol, 1      ; 2 uses
  %prol.iter746.next = add i64 %prol.iter746, 1   ; 2 uses
  %prol.iter746.cmp.not = icmp eq i64 %prol.iter746.next, %xtraiter744
  br i1 %prol.iter746.cmp.not, label %.lr.ph.i107.prol.loopexit, label %.lr.ph.i107.prol, !llvm.loop !442

.lr.ph.i107.prol.loopexit:                        ; preds = %.lr.ph.i107.prol, %.lr.ph.i107.preheader677
  %.014.i108.unr = phi i64 [ %.014.i108.ph, %.lr.ph.i107.preheader677 ], [ %i.me, %.lr.ph.i107.prol ]
  %.0813.i109.unr = phi ptr [ %.0813.i109.ph, %.lr.ph.i107.preheader677 ], [ %i.mb, %.lr.ph.i107.prol ]
  %.0912.i110.unr = phi ptr [ %.0912.i110.ph, %.lr.ph.i107.preheader677 ], [ %i.lz, %.lr.ph.i107.prol ]
  %i.mf = sub nsw i64 %.014.i108.ph, %i.lh
  %i.mg = icmp ugt i64 %i.mf, -4
  br i1 %i.mg, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.prol.loopexit, %.lr.ph.i107
  %.014.i108 = phi i64 [ %i.nb, %.lr.ph.i107 ], [ %.014.i108.unr, %.lr.ph.i107.prol.loopexit ]
  %.0813.i109 = phi ptr [ %i.my, %.lr.ph.i107 ], [ %.0813.i109.unr, %.lr.ph.i107.prol.loopexit ] ; 6 uses
  %.0912.i110 = phi ptr [ %i.mw, %.lr.ph.i107 ], [ %.0912.i110.unr, %.lr.ph.i107.prol.loopexit ] ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 8
  %i.mi = load double, ptr %.0912.i110, align 8, !tbaa !155
  %i.mj = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 8 ; 2 uses
  %i.mk = load double, ptr %.0813.i109, align 8, !tbaa !155
  %i.ml = fadd double %i.mi, %i.mk
  store double %i.ml, ptr %.0813.i109, align 8, !tbaa !155
  %i.mm = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 16
  %i.mn = load double, ptr %i.mh, align 8, !tbaa !155
  %i.mo = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 16 ; 2 uses
  %i.mp = load double, ptr %i.mj, align 8, !tbaa !155
  %i.mq = fadd double %i.mn, %i.mp
  store double %i.mq, ptr %i.mj, align 8, !tbaa !155
  %i.mr = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 24
  %i.ms = load double, ptr %i.mm, align 8, !tbaa !155
  %i.mt = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 24 ; 2 uses
  %i.mu = load double, ptr %i.mo, align 8, !tbaa !155
  %i.mv = fadd double %i.ms, %i.mu
  store double %i.mv, ptr %i.mo, align 8, !tbaa !155
  %i.mw = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 32
  %i.mx = load double, ptr %i.mr, align 8, !tbaa !155
  %i.my = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 32
  %i.mz = load double, ptr %i.mt, align 8, !tbaa !155
  %i.na = fadd double %i.mx, %i.mz
  store double %i.na, ptr %i.mt, align 8, !tbaa !155
  %i.nb = add nuw nsw i64 %.014.i108, 4           ; 2 uses
  %exitcond.not.i111.3 = icmp eq i64 %i.nb, %i.lh
  br i1 %exitcond.not.i111.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112, label %.lr.ph.i107, !llvm.loop !443

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112: ; preds = %.lr.ph.i107.prol.loopexit, %.lr.ph.i107, %middle.block637, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104
  %i.nc = load ptr, ptr %i.le, align 8, !tbaa !259
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !155
  %i.ne = fneg double %i.nd                       ; 6 uses
  %i.nf = load ptr, ptr %i.i, align 8, !tbaa !252 ; 7 uses
  %i.ng = icmp ne ptr %i.nf, null
  %or.cond.i113 = and i1 %i.ll, %i.ng
  %or.cond15.i114 = and i1 %i.lm, %or.cond.i113
  br i1 %or.cond15.i114, label %.lr.ph.i115.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit120

.lr.ph.i115.preheader:                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112
  %min.iters.check648 = icmp ult i64 %i.lh, 6
  br i1 %min.iters.check648, label %.lr.ph.i115.preheader676, label %vector.memcheck649

vector.memcheck649:                               ; preds = %.lr.ph.i115.preheader
  %i.nh = shl i64 %i.lh, 3                        ; 2 uses
  %i.ni = getelementptr i8, ptr %i.lj, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.nf, i64 %i.nh
  %bound0650 = icmp ult ptr %i.lj, %i.nj
  %bound1651 = icmp ult ptr %i.nf, %i.ni
  %found.conflict652 = and i1 %bound0650, %bound1651
  br i1 %found.conflict652, label %.lr.ph.i115.preheader676, label %vector.ph653

vector.ph653:                                     ; preds = %vector.memcheck649
  %n.vec654 = and i64 %i.lh, 9223372036854775804  ; 4 uses
  %i.nk = shl i64 %n.vec654, 3                    ; 2 uses
  %i.nl = getelementptr i8, ptr %i.lj, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.nf, i64 %i.nk
  %broadcast.splatinsert655 = insertelement <2 x double> poison, double %i.ne, i64 0
  %broadcast.splat656 = shufflevector <2 x double> %broadcast.splatinsert655, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph653
  %index658 = phi i64 [ 0, %vector.ph653 ], [ %index.next665, %vector.body657 ] ; 2 uses
  %i.nn = shl i64 %index658, 3                    ; 2 uses
  %next.gep659 = getelementptr i8, ptr %i.lj, i64 %i.nn ; 3 uses
  %next.gep660 = getelementptr i8, ptr %i.nf, i64 %i.nn ; 2 uses
  %i.no = getelementptr i8, ptr %next.gep660, i64 16
  %wide.load661 = load <2 x double>, ptr %next.gep660, align 8, !tbaa !155, !alias.scope !502
  %wide.load662 = load <2 x double>, ptr %i.no, align 8, !tbaa !155, !alias.scope !502
  %i.np = getelementptr i8, ptr %next.gep659, i64 16 ; 2 uses
  %wide.load663 = load <2 x double>, ptr %next.gep659, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  %wide.load664 = load <2 x double>, ptr %i.np, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  %i.nq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat656, <2 x double> %wide.load661, <2 x double> %wide.load663)
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat656, <2 x double> %wide.load662, <2 x double> %wide.load664)
  store <2 x double> %i.nq, ptr %next.gep659, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  store <2 x double> %i.nr, ptr %i.np, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  %index.next665 = add nuw i64 %index658, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next665, %n.vec654
  br i1 %i.ns, label %middle.block666, label %vector.body657, !llvm.loop !447

middle.block666:                                  ; preds = %vector.body657
  %cmp.n667 = icmp eq i64 %i.lh, %n.vec654
  br i1 %cmp.n667, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit120, label %.lr.ph.i115.preheader676

.lr.ph.i115.preheader676:                         ; preds = %vector.memcheck649, %.lr.ph.i115.preheader, %middle.block666
  %.014.i116.ph = phi i64 [ 0, %vector.memcheck649 ], [ 0, %.lr.ph.i115.preheader ], [ %n.vec654, %middle.block666 ] ; 3 uses
  %.0813.i117.ph = phi ptr [ %i.lj, %vector.memcheck649 ], [ %i.lj, %.lr.ph.i115.preheader ], [ %i.nl, %middle.block666 ] ; 2 uses
  %.0912.i118.ph = phi ptr [ %i.nf, %vector.memcheck649 ], [ %i.nf, %.lr.ph.i115.preheader ], [ %i.nm, %middle.block666 ] ; 2 uses
  %xtraiter747 = and i64 %i.lh, 3                 ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  br i1 %lcmp.mod748.not, label %.lr.ph.i115.prol.loopexit, label %.lr.ph.i115.prol

.lr.ph.i115.prol:                                 ; preds = %.lr.ph.i115.preheader676, %.lr.ph.i115.prol
  %.014.i116.prol = phi i64 [ %i.ny, %.lr.ph.i115.prol ], [ %.014.i116.ph, %.lr.ph.i115.preheader676 ]
  %.0813.i117.prol = phi ptr [ %i.nv, %.lr.ph.i115.prol ], [ %.0813.i117.ph, %.lr.ph.i115.preheader676 ] ; 3 uses
  %.0912.i118.prol = phi ptr [ %i.nt, %.lr.ph.i115.prol ], [ %.0912.i118.ph, %.lr.ph.i115.preheader676 ] ; 2 uses
  %prol.iter749 = phi i64 [ %prol.iter749.next, %.lr.ph.i115.prol ], [ 0, %.lr.ph.i115.preheader676 ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.0912.i118.prol, i64 8 ; 2 uses
  %i.nu = load double, ptr %.0912.i118.prol, align 8, !tbaa !155
  %i.nv = getelementptr inbounds nuw i8, ptr %.0813.i117.prol, i64 8 ; 2 uses
  %i.nw = load double, ptr %.0813.i117.prol, align 8, !tbaa !155
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.nu, double %i.nw)
  store double %i.nx, ptr %.0813.i117.prol, align 8, !tbaa !155
  %i.ny = add nuw nsw i64 %.014.i116.prol, 1      ; 2 uses
  %prol.iter749.next = add i64 %prol.iter749, 1   ; 2 uses
  %prol.iter749.cmp.not = icmp eq i64 %prol.iter749.next, %xtraiter747
  br i1 %prol.iter749.cmp.not, label %.lr.ph.i115.prol.loopexit, label %.lr.ph.i115.prol, !llvm.loop !448

.lr.ph.i115.prol.loopexit:                        ; preds = %.lr.ph.i115.prol, %.lr.ph.i115.preheader676
  %.014.i116.unr = phi i64 [ %.014.i116.ph, %.lr.ph.i115.preheader676 ], [ %i.ny, %.lr.ph.i115.prol ]
  %.0813.i117.unr = phi ptr [ %.0813.i117.ph, %.lr.ph.i115.preheader676 ], [ %i.nv, %.lr.ph.i115.prol ]
end_hunk_0
