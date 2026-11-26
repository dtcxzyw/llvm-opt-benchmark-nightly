Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_:bb.a
  %i.ac = load double, ptr %i.n, align 8, !tbaa !154
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !154
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1350

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !1351

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
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !154
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !154
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !154
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !154
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !154
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !154
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !154
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

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
  %i.bi = load double, ptr %.089.i.epil, align 8, !tbaa !154
  %i.bj = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.bk = load double, ptr %.0710.i.epil, align 8, !tbaa !154
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !1352

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
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !154, !alias.scope !1367
  %wide.load113 = load <2 x double>, ptr %i.by, align 8, !tbaa !154, !alias.scope !1367
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !154, !alias.scope !1368, !noalias !1367
  %wide.load115 = load <2 x double>, ptr %i.bz, align 8, !tbaa !154, !alias.scope !1368, !noalias !1367
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.ca, ptr %next.gep, align 8, !tbaa !154, !alias.scope !1368, !noalias !1367
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !154, !alias.scope !1368, !noalias !1367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1356

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
  %i.ce = load double, ptr %.0912.i, align 8, !tbaa !154
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.cg = load double, ptr %.0813.i, align 8, !tbaa !154
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ce, double %i.cg)
  store double %i.ch, ptr %.0813.i, align 8, !tbaa !154
  %i.ci = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !1357

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
  %i.cp = load double, ptr %i.co, align 8, !tbaa !154
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !154
  %i.cs = load double, ptr %.298, align 8, !tbaa !154
  %i.ct = fmul double %i.cp, -2.000000e+00
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cr, double %i.cs)
  store double %i.cu, ptr %.298, align 8, !tbaa !154
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
  %bound1143 = icmp ult ptr %i.df, %i.dc
  %bound1145 = icmp ult ptr %4, %i.dc
  %found.conflict146174 = or i1 %bound1143, %bound1145
  %conflict.rdx = and i1 %bound0142, %found.conflict146174
  %bound0147 = icmp ult ptr %i.cz, %scevgep
  %bound1148 = icmp ult ptr %3, %i.dc
  %bound1151 = icmp ult ptr %i.dg, %i.dc
  %i.dh = or i1 %bound1148, %bound1151
  %i.di = and i1 %bound0147, %i.dh
  %conflict.rdx153 = or i1 %conflict.rdx, %i.di
  br i1 %conflict.rdx153, label %.lr.ph94.preheader175, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck141
  %n.vec155 = and i64 %i.cy, -4                   ; 4 uses
  %i.dj = shl i64 %n.vec155, 3
  %i.dk = getelementptr i8, ptr %.298, i64 %i.dj  ; 2 uses
  %i.dl = add i64 %i.cv, %n.vec155
  %i.dm = load double, ptr %i.co, align 8, !tbaa !154, !alias.scope !1369
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %i.dm, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = load double, ptr %i.cq, align 8, !tbaa !154, !alias.scope !1370
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
  %wide.load159 = load <2 x double>, ptr %i.dr, align 8, !tbaa !154, !alias.scope !1371
  %wide.load160 = load <2 x double>, ptr %i.ds, align 8, !tbaa !154, !alias.scope !1371
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dp ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load161 = load <2 x double>, ptr %i.dt, align 8, !tbaa !154, !alias.scope !1372
  %wide.load162 = load <2 x double>, ptr %i.du, align 8, !tbaa !154, !alias.scope !1372
  %i.dv = fmul <2 x double> %wide.load161, %broadcast.splat164
  %i.dw = fmul <2 x double> %wide.load162, %broadcast.splat164
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat166, <2 x double> %wide.load159, <2 x double> %i.dv)
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat166, <2 x double> %wide.load160, <2 x double> %i.dw)
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep158, i64 24 ; 2 uses
  %wide.load167 = load <2 x double>, ptr %i.dq, align 8, !tbaa !154, !alias.scope !1373, !noalias !1374
  %wide.load168 = load <2 x double>, ptr %i.dz, align 8, !tbaa !154, !alias.scope !1373, !noalias !1374
  %i.ea = fsub <2 x double> %wide.load167, %i.dx
  %i.eb = fsub <2 x double> %wide.load168, %i.dy
  store <2 x double> %i.ea, ptr %i.dq, align 8, !tbaa !154, !alias.scope !1373, !noalias !1374
  store <2 x double> %i.eb, ptr %i.dz, align 8, !tbaa !154, !alias.scope !1373, !noalias !1374
  %index.next169 = add nuw i64 %index157, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next169, %n.vec155
  br i1 %i.ec, label %middle.block170, label %vector.body156, !llvm.loop !1364

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
  %i.ed = load double, ptr %i.co, align 8, !tbaa !154
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !154
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !154
  %i.ei = load double, ptr %i.cq, align 8, !tbaa !154
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ef, double %i.ej)
  %i.el = load double, ptr %.392, align 8, !tbaa !154
  %i.em = fsub double %i.el, %i.ek
  store double %i.em, ptr %.392, align 8, !tbaa !154
  %i.en = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.en, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !1365

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block170, %.lr.ph99
  %i.eo = phi ptr [ %.298, %.lr.ph99 ], [ %i.dk, %middle.block170 ], [ %.392, %.lr.ph94 ]
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %i.a
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %.17497
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %exitcond103.not = icmp eq i64 %i.cv, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1366

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !154
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !154 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !154 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.m)
  %i.n = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %sqrt, double %i.h)
  %i.o = fdiv double %i.k, %i.n
  %i.p = fsub double %i.f, %i.o
  %i.q = load double, ptr %1, align 8, !tbaa !154 ; 3 uses
  %i.r = fsub double %i.q, %i.p                   ; 3 uses
  %i.s = load double, ptr %2, align 8, !tbaa !154 ; 7 uses
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
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !154 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !154
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
  store double %i.bf, ptr %1, align 8, !tbaa !154
  %i.bg = extractelement <2 x double> %i.be, i64 0
  store double %i.bg, ptr %2, align 8, !tbaa !154
  %i.bh = fmul double %.076.peel, %i.q
  %i.bi = fmul double %.076.peel, 2.000000e+00
  %i.bj = fmul double %i.bi, %i.s
  %i.bk = fmul double %.077.peel, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %.076.peel, double %i.bk)
  %i.bm = fmul double %.077.peel, %i.aj
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %.077.peel, double %i.bl)
  store double %i.bn, ptr %i.ai, align 8, !tbaa !154
  %i.bo = load double, ptr %i.ak, align 8, !tbaa !154
  %i.bp = fmul double %.077.peel, %i.bo
  store double %i.bp, ptr %i.ak, align 8, !tbaa !154
  %i.bq = load double, ptr %2, align 8, !tbaa !154
  %i.br = fmul double %i.al, %i.am
  %.not66.peel = icmp eq ptr %3, null
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.077.peel, ptr %3, align 8, !tbaa !154
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.076.peel, ptr %i.bs, align 8, !tbaa !154
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.peel = phi ptr [ %i.bt, %bb.f ], [ null, %bb.e ]
  %exitcond.peel.not = icmp eq i64 %i.d, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fadd.v2f64
!1174 = distinct !{!1174, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1175 = distinct !{!1175, !1174, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1176 = !{!1175}
!1177 = distinct !{!1177, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1178 = distinct !{!1178, !1177, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1179 = !{!1178}
!1180 = distinct !{!1180, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1181 = distinct !{!1181, !1180, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1182 = !{!1181}
!1183 = distinct !{!1183, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1184 = distinct !{!1184, !1183, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1185 = !{!1184}
!1186 = distinct !{!1186, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1187 = distinct !{!1187, !1186, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1188 = !{!1187}
!1189 = distinct !{!1189, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1190 = distinct !{!1190, !1189, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1191 = !{!1190}
!1192 = distinct !{!1192, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1193 = distinct !{!1193, !1192, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1194 = !{!1193}
!1195 = distinct !{!1195, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1196 = distinct !{!1196, !1195, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1197 = !{!1196}
!1198 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !86, i64 0, !25, i64 8, !88, i64 16, !25, i64 24, !90, i64 32, !87, i64 48}
!1199 = !{!"_ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !1198, i64 0}
!1200 = !{!"p1 _ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !21, i64 0}
!1201 = !{!"_ZTSN6casadi17SerializingStreamE", !1199, i64 0, !1200, i64 56, !186, i64 64, !47, i64 72}
!1202 = !{!1201, !47, i64 72}
!1203 = !{!220, !47, i64 56}
!1204 = distinct !{!1204, !35, !158, !159}
!1205 = distinct !{!1205, !35, !159, !158}
!1206 = distinct !{!1206, !35, !158, !159}
!1207 = distinct !{!1207, !35, !159, !158}
!1208 = distinct !{!1208, !35}
!1209 = distinct !{!1209, !35}
!1210 = distinct !{!1210, !35}
!1211 = distinct !{!1211, !35}
!1212 = !{!81, !79, i64 0}
!1213 = distinct !{!1213, !35}
!1214 = distinct !{!1214, !35}
!1215 = !{ptr @_ZN6casadi15CasadiExceptionD2Ev}
!1216 = distinct !{!1216, !35}
!1217 = distinct !{!1217, !35}
!1218 = distinct !{!1218, !35}
!1219 = !{!306, !306, i64 0}
!1220 = distinct !{!1220, !35}
!1221 = distinct !{!1221, !35}
!1222 = distinct !{!1222, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1223 = distinct !{!1223, !1222, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1224 = !{!1223}
!1225 = !{!21, !21, i64 0}
!1226 = !{!18, !18, i64 0}
!1227 = !{i64 0, i64 8, !1225, i64 8, i64 8, !310, i64 16, i64 8, !310, i64 24, i64 4, !1226, i64 32, i64 8, !142, i64 40, i64 8, !1225}
!1228 = distinct !{!1228, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1229 = distinct !{!1229, !1228, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1230 = !{!1229}
!1231 = distinct !{!1231, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1232 = distinct !{!1232, !1231, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1233 = distinct !{!1233, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1234 = distinct !{!1234, !1233, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1235 = !{!1232}
!1236 = !{!1234}
!1237 = !{!1234, !1232}
!1238 = distinct !{!1238, i1 true, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!1239 = distinct !{!1239, !1238, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!1240 = !{!1239}
!1241 = !{!311, !311, i64 0}
!1242 = distinct !{!1242, !35}
!1243 = distinct !{!1243, !35}
!1244 = distinct !{!1244, !35}
!1245 = distinct !{!1245, !35}
!1246 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8SparsityEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !203, i64 0}
!1247 = !{!1246, !203, i64 0}
!1248 = distinct !{!1248, !35}
!1249 = distinct !{!1249, !35, !158, !159}
!1250 = distinct !{!1250, !261}
!1251 = distinct !{!1251, !35, !158}
!1252 = distinct !{!1252, !261}
!1253 = distinct !{!1253, !35, !158, !159}
!1254 = distinct !{!1254, !35, !159, !158}
!1255 = distinct !{!1255, !35}
!1256 = distinct !{!1256, !35}
!1257 = distinct !{!1257, !35}
!1258 = distinct !{!1258, !35}
!1259 = distinct !{!1259, !261}
!1260 = distinct !{!1260, !35, !158, !159}
!1261 = distinct !{!1261, !35, !159, !158}
!1262 = distinct !{!1262, !35, !158, !159}
!1263 = distinct !{!1263, !261}
!1264 = distinct !{!1264, !35, !158}
!1265 = distinct !{!1265, !35, !158, !159}
!1266 = distinct !{!1266, !35, !159, !158}
!1267 = distinct !{!1267, !261}
!1268 = distinct !{!1268, !35, !158, !159}
!1269 = distinct !{!1269, !35, !159, !158}
!1270 = distinct !{!1270, !35, !158, !159}
!1271 = distinct !{!1271, !35, !159, !158}
!1272 = distinct !{!1272, !261}
!1273 = distinct !{!1273, !35, !158, !159}
!1274 = distinct !{!1274, !35, !159, !158}
!1275 = distinct !{!1275, !35, !158, !159}
!1276 = distinct !{!1276, !35, !159, !158}
!1277 = distinct !{!1277, i1 false, !"LVerDomain"}
!1278 = distinct !{!1278, !1277}
!1279 = distinct !{!1279, !1277}
!1280 = distinct !{!1280, !35, !158, !159}
!1281 = distinct !{!1281, !35, !158}
!1282 = distinct !{!1282, i1 false, !"LVerDomain"}
!1283 = distinct !{!1283, !1282}
!1284 = distinct !{!1284, !1282}
!1285 = distinct !{!1285, !35, !158, !159}
!1286 = distinct !{!1286, !35, !158}
!1287 = distinct !{!1287, !261}
!1288 = distinct !{!1288, !35}
!1289 = distinct !{!1289, !35, !158, !159}
!1290 = distinct !{!1290, !261}
!1291 = distinct !{!1291, !35, !158}
!1292 = !{!1278}
!1293 = !{!1279}
!1294 = !{!1283}
!1295 = !{!1284}
!1296 = distinct !{!1296, !35}
!1297 = distinct !{!1297, !35}
!1298 = distinct !{!1298, !35}
!1299 = distinct !{!1299, !261}
!1300 = distinct !{!1300, !35}
!1301 = distinct !{!1301, !261}
!1302 = distinct !{!1302, !35}
!1303 = distinct !{!1303, !35}
!1304 = distinct !{!1304, !35}
!1305 = distinct !{!1305, i1 false, !"LVerDomain"}
!1306 = distinct !{!1306, !1305}
!1307 = distinct !{!1307, !1305}
!1308 = distinct !{!1308, !35, !158, !159}
!1309 = distinct !{!1309, !35, !158}
!1310 = distinct !{!1310, !35}
!1311 = distinct !{!1311, !35}
!1312 = distinct !{!1312, !35}
!1313 = distinct !{!1313, !35}
!1314 = distinct !{!1314, i1 false, !"LVerDomain"}
!1315 = distinct !{!1315, !1314}
!1316 = distinct !{!1316, !1314}
!1317 = distinct !{!1317, !1314}
!1318 = distinct !{!1318, !35, !158, !159}
!1319 = distinct !{!1319, !35, !158}
!1320 = distinct !{!1320, !35}
!1321 = distinct !{!1321, !261}
!1322 = distinct !{!1322, !35}
!1323 = !{!1306}
!1324 = !{!1307}
!1325 = !{!1315}
!1326 = !{!1316}
!1327 = !{!1317}
!1328 = !{!1316, !1315}
!1329 = distinct !{!1329, i1 false, !"LVerDomain"}
!1330 = distinct !{!1330, !1329}
!1331 = distinct !{!1331, !1329}
!1332 = distinct !{!1332, !35, !158, !159}
!1333 = distinct !{!1333, !261}
!1334 = distinct !{!1334, !35, !158}
!1335 = distinct !{!1335, !35}
!1336 = distinct !{!1336, !261}
!1337 = distinct !{!1337, !35, !158, !159}
!1338 = distinct !{!1338, !35, !159, !158}
!1339 = distinct !{!1339, !35}
!1340 = !{!1330}
!1341 = !{!1331}
!1342 = distinct !{!1342, i1 false, !"LVerDomain"}
!1343 = distinct !{!1343, !1342}
!1344 = distinct !{!1344, !1342}
!1345 = distinct !{!1345, !35, !158, !159}
!1346 = distinct !{!1346, !35, !158}
!1347 = distinct !{!1347, !35}
!1348 = !{!1343}
!1349 = !{!1344}
!1350 = distinct !{!1350, !35}
!1351 = distinct !{!1351, !35}
!1352 = distinct !{!1352, !261}
!1353 = distinct !{!1353, i1 false, !"LVerDomain"}
!1354 = distinct !{!1354, !1353}
!1355 = distinct !{!1355, !1353}
!1356 = distinct !{!1356, !35, !158, !159}
!1357 = distinct !{!1357, !35, !158}
!1358 = distinct !{!1358, i1 false, !"LVerDomain"}
!1359 = distinct !{!1359, !1358}
!1360 = distinct !{!1360, !1358}
!1361 = distinct !{!1361, !1358}
!1362 = distinct !{!1362, !1358}
!1363 = distinct !{!1363, !1358}
!1364 = distinct !{!1364, !35, !158, !159}
!1365 = distinct !{!1365, !35, !158}
!1366 = distinct !{!1366, !35}
!1367 = !{!1354}
!1368 = !{!1355}
!1369 = !{!1359}
!1370 = !{!1360}
!1371 = !{!1361}
!1372 = !{!1362}
!1373 = !{!1363}
!1374 = !{!1362, !1359, !1360, !1361}
!1375 = distinct !{!1375, !35, !1376}
!1376 = !{!"llvm.loop.peeled.count", i32 1}
!1377 = distinct !{!1377, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1378 = distinct !{!1378, !1377, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1379 = distinct !{!1379, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1380 = distinct !{!1380, !1379, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1381 = !{!1378}
!1382 = !{!1380}
!1383 = !{!1380, !1378}
end_hunk_1
