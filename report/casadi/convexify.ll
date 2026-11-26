Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/convexify?download=true
inline.NumInlined: 1165
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_:bb.a
  %i.ac = load double, ptr %i.n, align 8, !tbaa !85
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !85
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !561

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !562

._crit_edge89:                                    ; preds = %._crit_edge
  %i.aj = fneg double %5
  br i1 %i.g, label %.lr.ph.i.preheader, label %._crit_edge100

.lr.ph.i.preheader:                               ; preds = %._crit_edge89
  %i.ak = add i64 %0, -2
  %i.al = sub i64 %i.ak, %1
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.f, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ]
  %.0710.i = phi ptr [ %4, %.lr.ph.i.preheader.new ], [ %i.be, %.lr.ph.i ] ; 5 uses
  %.089.i = phi ptr [ %3, %.lr.ph.i.preheader.new ], [ %i.bc, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.089.i, i64 8
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !85
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !85
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !85
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !85
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !563

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.bg, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %.0710.i.epil.init = phi ptr [ %4, %.lr.ph.i.preheader ], [ %i.be, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %.089.i.epil.init = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.bc, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi double [ %i.bl, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0710.i.epil = phi ptr [ %i.bj, %.lr.ph.i.epil ], [ %.0710.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.089.i.epil = phi ptr [ %i.bh, %.lr.ph.i.epil ], [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.089.i.epil, i64 8
  %i.bi = load double, ptr %.089.i.epil, align 8, !tbaa !85
  %i.bj = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.bk = load double, ptr %.0710.i.epil, align 8, !tbaa !85
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !564

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit:       ; preds = %.lr.ph.i.epil, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa
  %.lcssa = phi double [ %i.bg, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ], [ %i.bl, %.lr.ph.i.epil ]
  %i.bm = fmul double %.lcssa, %i.aj
  %i.bn = fmul double %i.bm, 5.000000e-01         ; 2 uses
  br i1 %.not.i, label %.lr.ph.i78.preheader, label %.lr.ph99.preheader

.lr.ph.i78.preheader:                             ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i78.preheader176, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i78.preheader
  %i.bo = shl i64 %0, 3
  %i.bp = shl i64 %1, 3
  %i.bq = add i64 %i.bo, -8
  %i.br = sub i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = getelementptr i8, ptr %3, i64 %i.br
  %i.bt = getelementptr i8, ptr %4, i64 %i.br
  %bound0 = icmp ult ptr %3, %i.bt
  %bound1 = icmp ult ptr %4, %i.bs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i78.preheader176, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 4 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %3, i64 %i.bu
  %i.bw = getelementptr i8, ptr %4, i64 %i.bu
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.bx ; 3 uses
  %next.gep112 = getelementptr i8, ptr %4, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !85, !alias.scope !579
  %wide.load113 = load <2 x double>, ptr %i.by, align 8, !tbaa !85, !alias.scope !579
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  %wide.load115 = load <2 x double>, ptr %i.bz, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.ca, ptr %next.gep, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph99.preheader, label %.lr.ph.i78.preheader176

.lr.ph.i78.preheader176:                          ; preds = %vector.memcheck, %.lr.ph.i78.preheader, %middle.block
  %.014.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec, %middle.block ]
  %.0813.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i78.preheader ], [ %i.bv, %middle.block ]
  %.0912.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i78.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader176, %.lr.ph.i78
  %.014.i = phi i64 [ %i.ci, %.lr.ph.i78 ], [ %.014.i.ph, %.lr.ph.i78.preheader176 ]
  %.0813.i = phi ptr [ %i.cf, %.lr.ph.i78 ], [ %.0813.i.ph, %.lr.ph.i78.preheader176 ] ; 3 uses
  %.0912.i = phi ptr [ %i.cd, %.lr.ph.i78 ], [ %.0912.i.ph, %.lr.ph.i78.preheader176 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ce = load double, ptr %.0912.i, align 8, !tbaa !85
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.cg = load double, ptr %.0813.i, align 8, !tbaa !85
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ce, double %i.cg)
  store double %i.ch, ptr %.0813.i, align 8, !tbaa !85
  %i.ci = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !569

.lr.ph99.preheader:                               ; preds = %.lr.ph.i78, %middle.block, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %i.cj = shl i64 %0, 3
  %i.ck = add i64 %i.cj, -8
  %i.cl = shl i64 %1, 3
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.cm
  %scevgep138 = getelementptr i8, ptr %4, i64 %i.cm
  %i.cn = add i64 %0, -2
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %._crit_edge95
  %.298 = phi ptr [ %i.er, %._crit_edge95 ], [ %i.i, %.lr.ph99.preheader ] ; 9 uses
  %.17497 = phi i64 [ %i.cv, %._crit_edge95 ], [ 0, %.lr.ph99.preheader ] ; 7 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17497 ; 3 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !85
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !85
  %i.cs = load double, ptr %.298, align 8, !tbaa !85
  %i.ct = fmul double %i.cp, -2.000000e+00
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cr, double %i.cs)
  store double %i.cu, ptr %.298, align 8, !tbaa !85
  %i.cv = add nuw nsw i64 %.17497, 1              ; 7 uses
  %i.cw = icmp slt i64 %i.cv, %i.f
  br i1 %i.cw, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %.lr.ph99
  %i.cx = add i64 %1, %.17497
  %i.cy = sub i64 %i.cn, %i.cx                    ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.cy, 6
  br i1 %min.iters.check140, label %.lr.ph94.preheader175, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph94.preheader
  %i.cz = getelementptr i8, ptr %.298, i64 8      ; 2 uses
  %i.da = shl i64 %.17497, 3
  %i.db = sub i64 %i.cm, %i.da
  %i.dc = getelementptr i8, ptr %.298, i64 %i.db  ; 4 uses
  %i.dd = shl nuw nsw i64 %.17497, 3
  %i.de = add nuw i64 %i.dd, 8                    ; 2 uses
  %i.df = getelementptr i8, ptr %4, i64 %i.de
  %i.dg = getelementptr i8, ptr %3, i64 %i.de
  %bound0142 = icmp ult ptr %i.cz, %scevgep138
  %bound1143 = icmp ult ptr %4, %i.dc
  %bound1145 = icmp ult ptr %i.df, %i.dc
  %found.conflict146174 = or i1 %bound1143, %bound1145
  %conflict.rdx = and i1 %bound0142, %found.conflict146174
  %bound0147 = icmp ult ptr %i.cz, %scevgep
  %bound1148 = icmp ult ptr %i.dg, %i.dc
  %bound1151 = icmp ult ptr %3, %i.dc
  %i.dh = or i1 %bound1148, %bound1151
  %i.di = and i1 %bound0147, %i.dh
  %conflict.rdx153 = or i1 %conflict.rdx, %i.di
  br i1 %conflict.rdx153, label %.lr.ph94.preheader175, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck141
  %n.vec155 = and i64 %i.cy, -4                   ; 4 uses
  %i.dj = shl i64 %n.vec155, 3
  %i.dk = getelementptr i8, ptr %.298, i64 %i.dj  ; 2 uses
  %i.dl = add i64 %i.cv, %n.vec155
  %i.dm = load double, ptr %i.co, align 8, !tbaa !85, !alias.scope !581
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %i.dm, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = load double, ptr %i.cq, align 8, !tbaa !85, !alias.scope !582
  %broadcast.splatinsert163 = insertelement <2 x double> poison, double %i.dn, i64 0
  %broadcast.splat164 = shufflevector <2 x double> %broadcast.splatinsert163, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next169, %vector.body156 ] ; 3 uses
  %i.do = shl i64 %index157, 3
  %next.gep158 = getelementptr i8, ptr %.298, i64 %i.do ; 2 uses
  %i.dp = add nuw i64 %i.cv, %index157            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep158, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dp ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load159 = load <2 x double>, ptr %i.dr, align 8, !tbaa !85, !alias.scope !583
  %wide.load160 = load <2 x double>, ptr %i.ds, align 8, !tbaa !85, !alias.scope !583
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dp ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load161 = load <2 x double>, ptr %i.dt, align 8, !tbaa !85, !alias.scope !584
  %wide.load162 = load <2 x double>, ptr %i.du, align 8, !tbaa !85, !alias.scope !584
  %i.dv = fmul <2 x double> %wide.load161, %broadcast.splat164
  %i.dw = fmul <2 x double> %wide.load162, %broadcast.splat164
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat166, <2 x double> %wide.load159, <2 x double> %i.dv)
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat166, <2 x double> %wide.load160, <2 x double> %i.dw)
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep158, i64 24 ; 2 uses
  %wide.load167 = load <2 x double>, ptr %i.dq, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  %wide.load168 = load <2 x double>, ptr %i.dz, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  %i.ea = fsub <2 x double> %wide.load167, %i.dx
  %i.eb = fsub <2 x double> %wide.load168, %i.dy
  store <2 x double> %i.ea, ptr %i.dq, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  store <2 x double> %i.eb, ptr %i.dz, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  %index.next169 = add nuw i64 %index157, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next169, %n.vec155
  br i1 %i.ec, label %middle.block170, label %vector.body156, !llvm.loop !576

middle.block170:                                  ; preds = %vector.body156
  %cmp.n171 = icmp eq i64 %i.cy, %n.vec155
  br i1 %cmp.n171, label %._crit_edge95, label %.lr.ph94.preheader175

.lr.ph94.preheader175:                            ; preds = %vector.memcheck141, %.lr.ph94.preheader, %middle.block170
  %.392.pn.ph = phi ptr [ %.298, %vector.memcheck141 ], [ %.298, %.lr.ph94.preheader ], [ %i.dk, %middle.block170 ]
  %.17291.ph = phi i64 [ %i.cv, %vector.memcheck141 ], [ %i.cv, %.lr.ph94.preheader ], [ %i.dl, %middle.block170 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader175, %.lr.ph94
  %.392.pn = phi ptr [ %.392, %.lr.ph94 ], [ %.392.pn.ph, %.lr.ph94.preheader175 ]
  %.17291 = phi i64 [ %i.en, %.lr.ph94 ], [ %.17291.ph, %.lr.ph94.preheader175 ] ; 3 uses
  %.392 = getelementptr inbounds nuw i8, ptr %.392.pn, i64 8 ; 4 uses
  %i.ed = load double, ptr %i.co, align 8, !tbaa !85
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !85
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !85
  %i.ei = load double, ptr %i.cq, align 8, !tbaa !85
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ef, double %i.ej)
  %i.el = load double, ptr %.392, align 8, !tbaa !85
  %i.em = fsub double %i.el, %i.ek
  store double %i.em, ptr %.392, align 8, !tbaa !85
  %i.en = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.en, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !577

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block170, %.lr.ph99
  %i.eo = phi ptr [ %.298, %.lr.ph99 ], [ %i.dk, %middle.block170 ], [ %.392, %.lr.ph94 ]
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %i.a
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %.17497
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %exitcond103.not = icmp eq i64 %i.cv, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !578

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !85
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !85 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !85 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.m)
  %i.n = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %sqrt, double %i.h)
  %i.o = fdiv double %i.k, %i.n
  %i.p = fsub double %i.f, %i.o
  %i.q = load double, ptr %1, align 8, !tbaa !85  ; 3 uses
  %i.r = fsub double %i.q, %i.p                   ; 3 uses
  %i.s = load double, ptr %2, align 8, !tbaa !85  ; 7 uses
  %i.t = icmp sgt i64 %0, 1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.u = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.u, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.v = tail call double @llvm.fabs.f64(double %i.s)
  %i.w = tail call double @llvm.fabs.f64(double %i.r)
  %i.x = fcmp ogt double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = fneg double %i.s
  %i.z = fdiv double %i.y, %i.r                   ; 3 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double 1.000000e+00)
  %sqrt21.i.peel = tail call double @llvm.sqrt.f64(double %i.aa)
  %i.ab = fdiv double 1.000000e+00, %sqrt21.i.peel ; 2 uses
  %i.ac = fmul double %i.z, %i.ab
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = fneg double %i.r
  %i.ae = fdiv double %i.ad, %i.s                 ; 3 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double 1.000000e+00)
  %sqrt.i.peel = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.peel  ; 2 uses
  %i.ah = fmul double %i.ae, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader, %bb.c, %bb.d
  %.077.peel = phi double [ %i.ab, %bb.c ], [ %i.ah, %bb.d ], [ 1.000000e+00, %.lr.ph.preheader ] ; 7 uses
  %.076.peel = phi double [ %i.ac, %bb.c ], [ %i.ag, %bb.d ], [ 0.000000e+00, %.lr.ph.preheader ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !85
  %i.am = fneg double %.076.peel                  ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.aj, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.q, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.s, i64 1
  %i.au = insertelement <2 x double> poison, double %.077.peel, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.av, <2 x double> %i.ar) ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %.076.peel, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %.077.peel, i64 1 ; 2 uses
  %i.az = fneg <2 x double> %i.aw
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bd, <2 x double> %i.bc) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 1
  store double %i.bf, ptr %1, align 8, !tbaa !85
  %i.bg = extractelement <2 x double> %i.be, i64 0
  store double %i.bg, ptr %2, align 8, !tbaa !85
  %i.bh = fmul double %.076.peel, %i.q
  %i.bi = fmul double %.076.peel, 2.000000e+00
  %i.bj = fmul double %i.bi, %i.s
  %i.bk = fmul double %.077.peel, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %.076.peel, double %i.bk)
  %i.bm = fmul double %.077.peel, %i.aj
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %.077.peel, double %i.bl)
  store double %i.bn, ptr %i.ai, align 8, !tbaa !85
  %i.bo = load double, ptr %i.ak, align 8, !tbaa !85
  %i.bp = fmul double %.077.peel, %i.bo
  store double %i.bp, ptr %i.ak, align 8, !tbaa !85
  %i.bq = load double, ptr %2, align 8, !tbaa !85
  %i.br = fmul double %i.al, %i.am
  %.not66.peel = icmp eq ptr %3, null
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.077.peel, ptr %3, align 8, !tbaa !85
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fadd.v2f64
!386 = !{!351, !349}
!387 = distinct !{!387, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!388 = distinct !{!388, !387, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!389 = distinct !{!389, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!390 = distinct !{!390, !389, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!391 = distinct !{!391, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!392 = distinct !{!392, !391, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!393 = distinct !{!393, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!394 = distinct !{!394, !393, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!395 = distinct !{!395, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!396 = distinct !{!396, !395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!397 = distinct !{!397, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!398 = distinct !{!398, !397, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!399 = distinct !{!399, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!400 = distinct !{!400, !399, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!401 = distinct !{!401, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!402 = distinct !{!402, !401, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!403 = distinct !{!403, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!404 = distinct !{!404, !403, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!405 = distinct !{!405, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!406 = distinct !{!406, !405, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!407 = distinct !{!407, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!408 = distinct !{!408, !407, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!409 = distinct !{!409, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!410 = distinct !{!410, !409, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!411 = distinct !{!411, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!412 = distinct !{!412, !411, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!413 = distinct !{!413, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!414 = distinct !{!414, !413, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!415 = distinct !{!415, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!416 = distinct !{!416, !415, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!417 = distinct !{!417, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!418 = distinct !{!418, !417, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!419 = distinct !{!419, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!420 = distinct !{!420, !419, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!421 = distinct !{!421, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!422 = distinct !{!422, !421, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!423 = distinct !{!423, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!424 = distinct !{!424, !423, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!425 = distinct !{!425, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!426 = distinct !{!426, !425, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!427 = distinct !{!427, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!428 = distinct !{!428, !427, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!429 = distinct !{!429, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!430 = distinct !{!430, !429, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!431 = distinct !{!431, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!432 = distinct !{!432, !431, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!433 = distinct !{!433, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!434 = distinct !{!434, !433, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!435 = !{!388}
!436 = !{!390, !388}
!437 = !{!392}
!438 = !{!394, !392}
!439 = !{!396}
!440 = !{!398, !396}
!441 = !{!400}
!442 = !{!402, !400}
!443 = !{!404}
!444 = !{!406, !404}
!445 = !{!408}
!446 = !{!410, !408}
!447 = !{!412}
!448 = !{!414, !412}
!449 = !{!416}
!450 = !{!418, !416}
!451 = !{!420}
!452 = !{!422, !420}
!453 = !{!424}
!454 = !{!426, !424}
!455 = !{!428}
!456 = !{!430, !428}
!457 = !{!432}
!458 = !{!434, !432}
!459 = distinct !{!459, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!460 = distinct !{!460, !459, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!461 = !{!460}
!462 = distinct !{!462, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!463 = distinct !{!463, !462, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!464 = !{!463}
!465 = distinct !{!465, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!466 = distinct !{!466, !465, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!467 = !{!466}
!468 = distinct !{!468, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!469 = distinct !{!469, !468, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!470 = !{!469}
!471 = distinct !{!471, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!472 = distinct !{!472, !471, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!473 = !{!472}
!474 = distinct !{null}
!475 = !{!70, !69, i64 8}
!476 = !{!"p1 long", !9, i64 0}
!477 = !{!"_ZTSSt18_Bit_iterator_base", !476, i64 0, !6, i64 8}
!478 = !{!477, !476, i64 0}
!479 = distinct !{null, null, null, null, null}
!480 = !{!96, !13, i64 16}
!481 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!482 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!483 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!484 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!485 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !96, i64 0, !102, i64 216, !5, i64 224, !103, i64 225, !481, i64 232, !482, i64 240, !483, i64 248, !484, i64 256}
!486 = !{!485, !103, i64 225}
!487 = !{!485, !482, i64 240}
!488 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!489 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!490 = !{!"p1 int", !9, i64 0}
!491 = !{!"p1 short", !9, i64 0}
!492 = !{!"_ZTSSt5ctypeIcE", !488, i64 0, !489, i64 16, !103, i64 24, !490, i64 32, !490, i64 40, !491, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!493 = !{!492, !5, i64 56}
!494 = !{!485, !5, i64 224}
!495 = distinct !{!495, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!496 = distinct !{!496, !495, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!497 = distinct !{!497, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!498 = distinct !{!498, !497, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!499 = !{!496}
!500 = !{!498}
!501 = !{!498, !496}
!502 = distinct !{!502, !57}
!503 = !{!45, !44, i64 16}
!504 = !{ptr @_ZN6casadi15CasadiExceptionD2Ev}
!505 = !{!117, !117, i64 0}
!506 = distinct !{!506, !57}
!507 = distinct !{!507, !57}
!508 = distinct !{!508, !57}
!509 = distinct !{!509, !57}
!510 = distinct !{!510, !88}
!511 = distinct !{!511, !57}
!512 = distinct !{!512, !88}
!513 = distinct !{!513, !57}
!514 = distinct !{!514, !57}
!515 = distinct !{!515, !57}
!516 = distinct !{!516, i1 false, !"LVerDomain"}
!517 = distinct !{!517, !516}
!518 = distinct !{!518, !516}
!519 = distinct !{!519, !57, !86, !87}
!520 = distinct !{!520, !57, !86}
!521 = distinct !{!521, !57}
!522 = distinct !{!522, !57}
!523 = distinct !{!523, !57}
!524 = distinct !{!524, !57}
!525 = distinct !{!525, i1 false, !"LVerDomain"}
!526 = distinct !{!526, !525}
!527 = distinct !{!527, !525}
!528 = distinct !{!528, !525}
!529 = distinct !{!529, !57, !86, !87}
!530 = distinct !{!530, !57, !86}
!531 = distinct !{!531, !57}
!532 = distinct !{!532, !88}
!533 = distinct !{!533, !57}
!534 = !{!517}
!535 = !{!518}
!536 = !{!526}
!537 = !{!527}
!538 = !{!528}
!539 = !{!527, !526}
!540 = distinct !{!540, i1 false, !"LVerDomain"}
!541 = distinct !{!541, !540}
!542 = distinct !{!542, !540}
!543 = distinct !{!543, !57, !86, !87}
!544 = distinct !{!544, !88}
!545 = distinct !{!545, !57, !86}
!546 = distinct !{!546, !57}
!547 = distinct !{!547, !88}
!548 = distinct !{!548, !57, !86, !87}
!549 = distinct !{!549, !57, !87, !86}
!550 = distinct !{!550, !57}
!551 = !{!541}
!552 = !{!542}
!553 = distinct !{!553, i1 false, !"LVerDomain"}
!554 = distinct !{!554, !553}
!555 = distinct !{!555, !553}
!556 = distinct !{!556, !57, !86, !87}
!557 = distinct !{!557, !57, !86}
!558 = distinct !{!558, !57}
!559 = !{!554}
!560 = !{!555}
!561 = distinct !{!561, !57}
!562 = distinct !{!562, !57}
!563 = distinct !{!563, !57}
!564 = distinct !{!564, !88}
!565 = distinct !{!565, i1 false, !"LVerDomain"}
!566 = distinct !{!566, !565}
!567 = distinct !{!567, !565}
!568 = distinct !{!568, !57, !86, !87}
!569 = distinct !{!569, !57, !86}
!570 = distinct !{!570, i1 false, !"LVerDomain"}
!571 = distinct !{!571, !570}
!572 = distinct !{!572, !570}
!573 = distinct !{!573, !570}
!574 = distinct !{!574, !570}
!575 = distinct !{!575, !570}
!576 = distinct !{!576, !57, !86, !87}
!577 = distinct !{!577, !57, !86}
!578 = distinct !{!578, !57}
!579 = !{!566}
!580 = !{!567}
!581 = !{!571}
!582 = !{!572}
!583 = !{!573}
!584 = !{!574}
!585 = !{!575}
!586 = !{!571, !574, !573, !572}
!587 = distinct !{!587, !57, !588}
!588 = !{!"llvm.loop.peeled.count", i32 1}
!589 = distinct !{!589, !57}
end_hunk_1
