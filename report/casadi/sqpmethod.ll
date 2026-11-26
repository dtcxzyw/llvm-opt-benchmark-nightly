Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sqpmethod?download=true
inline.NumInlined: 4990
inline.NumDeleted: 680
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_:bb.a
  %i.ac = load double, ptr %i.n, align 8, !tbaa !145
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !145
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !981

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !982

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
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !145
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !145
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !145
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !145
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !145
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !145
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !145
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

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
  %i.bi = load double, ptr %.089.i.epil, align 8, !tbaa !145
  %i.bj = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.bk = load double, ptr %.0710.i.epil, align 8, !tbaa !145
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !983

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
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !145, !alias.scope !998
  %wide.load113 = load <2 x double>, ptr %i.by, align 8, !tbaa !145, !alias.scope !998
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  %wide.load115 = load <2 x double>, ptr %i.bz, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.ca, ptr %next.gep, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !987

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
  %i.ce = load double, ptr %.0912.i, align 8, !tbaa !145
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.cg = load double, ptr %.0813.i, align 8, !tbaa !145
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ce, double %i.cg)
  store double %i.ch, ptr %.0813.i, align 8, !tbaa !145
  %i.ci = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !988

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
  %i.cp = load double, ptr %i.co, align 8, !tbaa !145
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !145
  %i.cs = load double, ptr %.298, align 8, !tbaa !145
  %i.ct = fmul double %i.cp, -2.000000e+00
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cr, double %i.cs)
  store double %i.cu, ptr %.298, align 8, !tbaa !145
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
  %i.dm = load double, ptr %i.co, align 8, !tbaa !145, !alias.scope !1000
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %i.dm, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = load double, ptr %i.cq, align 8, !tbaa !145, !alias.scope !1001
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
  %wide.load159 = load <2 x double>, ptr %i.dr, align 8, !tbaa !145, !alias.scope !1002
  %wide.load160 = load <2 x double>, ptr %i.ds, align 8, !tbaa !145, !alias.scope !1002
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dp ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load161 = load <2 x double>, ptr %i.dt, align 8, !tbaa !145, !alias.scope !1003
  %wide.load162 = load <2 x double>, ptr %i.du, align 8, !tbaa !145, !alias.scope !1003
  %i.dv = fmul <2 x double> %wide.load161, %broadcast.splat164
  %i.dw = fmul <2 x double> %wide.load162, %broadcast.splat164
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat166, <2 x double> %wide.load159, <2 x double> %i.dv)
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat166, <2 x double> %wide.load160, <2 x double> %i.dw)
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep158, i64 24 ; 2 uses
  %wide.load167 = load <2 x double>, ptr %i.dq, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  %wide.load168 = load <2 x double>, ptr %i.dz, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  %i.ea = fsub <2 x double> %wide.load167, %i.dx
  %i.eb = fsub <2 x double> %wide.load168, %i.dy
  store <2 x double> %i.ea, ptr %i.dq, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  store <2 x double> %i.eb, ptr %i.dz, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  %index.next169 = add nuw i64 %index157, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next169, %n.vec155
  br i1 %i.ec, label %middle.block170, label %vector.body156, !llvm.loop !995

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
  %i.ed = load double, ptr %i.co, align 8, !tbaa !145
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !145
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !145
  %i.ei = load double, ptr %i.cq, align 8, !tbaa !145
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ef, double %i.ej)
  %i.el = load double, ptr %.392, align 8, !tbaa !145
  %i.em = fsub double %i.el, %i.ek
  store double %i.em, ptr %.392, align 8, !tbaa !145
  %i.en = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.en, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !996

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block170, %.lr.ph99
  %i.eo = phi ptr [ %.298, %.lr.ph99 ], [ %i.dk, %middle.block170 ], [ %.392, %.lr.ph94 ]
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %i.a
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %.17497
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %exitcond103.not = icmp eq i64 %i.cv, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !997

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !145
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !145 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !145 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.m)
  %i.n = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %sqrt, double %i.h)
  %i.o = fdiv double %i.k, %i.n
  %i.p = fsub double %i.f, %i.o
  %i.q = load double, ptr %1, align 8, !tbaa !145 ; 3 uses
  %i.r = fsub double %i.q, %i.p                   ; 3 uses
  %i.s = load double, ptr %2, align 8, !tbaa !145 ; 7 uses
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
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !145 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !145
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
  store double %i.bf, ptr %1, align 8, !tbaa !145
  %i.bg = extractelement <2 x double> %i.be, i64 0
  store double %i.bg, ptr %2, align 8, !tbaa !145
  %i.bh = fmul double %.076.peel, %i.q
  %i.bi = fmul double %.076.peel, 2.000000e+00
  %i.bj = fmul double %i.bi, %i.s
  %i.bk = fmul double %.077.peel, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %.076.peel, double %i.bk)
  %i.bm = fmul double %.077.peel, %i.aj
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %.077.peel, double %i.bl)
  store double %i.bn, ptr %i.ai, align 8, !tbaa !145
  %i.bo = load double, ptr %i.ak, align 8, !tbaa !145
  %i.bp = fmul double %.077.peel, %i.bo
  store double %i.bp, ptr %i.ak, align 8, !tbaa !145
  %i.bq = load double, ptr %2, align 8, !tbaa !145
  %i.br = fmul double %i.al, %i.am
  %.not66.peel = icmp eq ptr %3, null
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.077.peel, ptr %3, align 8, !tbaa !145
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.076.peel, ptr %i.bs, align 8, !tbaa !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.peel = phi ptr [ %i.bt, %bb.f ], [ null, %bb.e ]
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fadd.v2f64
!805 = !{!802, !800}
!806 = distinct !{!806, !32}
!807 = distinct !{!807, !32}
!808 = distinct !{!808, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!809 = distinct !{!809, !808, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!810 = distinct !{!810, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!811 = distinct !{!811, !810, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!812 = !{!809}
!813 = !{!811}
!814 = !{!811, !809}
!815 = distinct !{!815, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!816 = distinct !{!816, !815, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!817 = distinct !{!817, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!818 = distinct !{!818, !817, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!819 = !{!816}
!820 = !{!818}
!821 = !{!818, !816}
!822 = distinct !{!822, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!823 = distinct !{!823, !822, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!824 = distinct !{!824, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!825 = distinct !{!825, !824, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!826 = distinct !{!826, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!827 = distinct !{!827, !826, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!828 = distinct !{!828, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!829 = distinct !{!829, !828, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!830 = !{!823}
!831 = !{!825}
!832 = !{!827}
!833 = !{!829}
!834 = distinct !{!834, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!835 = distinct !{!835, !834, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!836 = distinct !{!836, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!837 = distinct !{!837, !836, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!838 = !{!835}
!839 = !{!837}
!840 = !{!837, !835}
!841 = distinct !{!841, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!842 = distinct !{!842, !841, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!843 = distinct !{!843, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!844 = distinct !{!844, !843, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!845 = !{!842}
!846 = !{!844}
!847 = !{!844, !842}
!848 = distinct !{!848, !32}
!849 = distinct !{!849, !32}
!850 = distinct !{!850, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!851 = distinct !{!851, !850, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!852 = !{!851}
!853 = distinct !{!853, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!854 = distinct !{!854, !853, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!855 = !{!854}
!856 = distinct !{!856, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!857 = distinct !{!857, !856, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!858 = !{!857}
!859 = distinct !{!859, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!860 = distinct !{!860, !859, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!861 = !{!860}
!862 = distinct !{!862, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!863 = distinct !{!863, !862, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!864 = !{!863}
!865 = distinct !{!865, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!866 = distinct !{!866, !865, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!867 = !{!866}
!868 = distinct !{!868, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!869 = distinct !{!869, !868, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!870 = !{!869}
!871 = distinct !{!871, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!872 = distinct !{!872, !871, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!873 = !{!872}
!874 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !83, i64 0, !22, i64 8, !85, i64 16, !22, i64 24, !87, i64 32, !84, i64 48}
!875 = !{!"_ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !874, i64 0}
!876 = !{!"p1 _ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !18, i64 0}
!877 = !{!"p1 _ZTSSo", !18, i64 0}
!878 = !{!"_ZTSN6casadi17SerializingStreamE", !875, i64 0, !876, i64 56, !877, i64 64, !44, i64 72}
!879 = !{!878, !44, i64 72}
!880 = !{!44, !44, i64 0}
!881 = !{!187, !44, i64 56}
!882 = distinct !{!882, !32, !224, !225}
!883 = distinct !{!883, !32, !225, !224}
!884 = distinct !{!884, !32, !224, !225}
!885 = distinct !{!885, !32, !225, !224}
!886 = distinct !{!886, !32}
!887 = distinct !{!887, !32}
!888 = distinct !{!888, !32}
!889 = distinct !{!889, !32}
!890 = !{ptr @_ZN6casadi15CasadiExceptionD2Ev}
!891 = distinct !{!891, !32}
!892 = distinct !{!892, !32}
!893 = distinct !{!893, !32}
!894 = distinct !{!894, !32}
!895 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !169, i64 0}
!896 = !{!895, !169, i64 0}
!897 = !{!274, !274, i64 0}
!898 = distinct !{!898, !32}
!899 = distinct !{!899, !32}
!900 = distinct !{!900, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!901 = distinct !{!901, !900, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!902 = !{!901}
!903 = !{!18, !18, i64 0}
!904 = !{!15, !15, i64 0}
!905 = !{i64 0, i64 8, !903, i64 8, i64 8, !278, i64 16, i64 8, !278, i64 24, i64 4, !904, i64 32, i64 8, !279, i64 40, i64 8, !903}
!906 = distinct !{!906, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!907 = distinct !{!907, !906, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!908 = !{!907}
!909 = distinct !{!909, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!910 = distinct !{!910, !909, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!911 = distinct !{!911, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!912 = distinct !{!912, !911, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!913 = !{!910}
!914 = !{!912}
!915 = !{!912, !910}
!916 = distinct !{!916, i1 true, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!917 = distinct !{!917, !916, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!918 = !{!917}
!919 = !{!280, !280, i64 0}
!920 = distinct !{!920, !32}
!921 = distinct !{!921, !32}
!922 = distinct !{!922, !32}
!923 = distinct !{!923, !32}
!924 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8SparsityEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !167, i64 0}
!925 = !{!924, !167, i64 0}
!926 = distinct !{!926, !32}
!927 = distinct !{!927, !32}
!928 = distinct !{!928, !32}
!929 = distinct !{!929, !32}
!930 = distinct !{!930, !226}
!931 = distinct !{!931, !32}
!932 = distinct !{!932, !226}
!933 = distinct !{!933, !32}
!934 = distinct !{!934, !32}
!935 = distinct !{!935, !32}
!936 = distinct !{!936, i1 false, !"LVerDomain"}
!937 = distinct !{!937, !936}
!938 = distinct !{!938, !936}
!939 = distinct !{!939, !32, !224, !225}
!940 = distinct !{!940, !32, !224}
!941 = distinct !{!941, !32}
!942 = distinct !{!942, !32}
!943 = distinct !{!943, !32}
!944 = distinct !{!944, !32}
!945 = distinct !{!945, i1 false, !"LVerDomain"}
!946 = distinct !{!946, !945}
!947 = distinct !{!947, !945}
!948 = distinct !{!948, !945}
!949 = distinct !{!949, !32, !224, !225}
!950 = distinct !{!950, !32, !224}
!951 = distinct !{!951, !32}
!952 = distinct !{!952, !226}
!953 = distinct !{!953, !32}
!954 = !{!937}
!955 = !{!938}
!956 = !{!946}
!957 = !{!947}
!958 = !{!948}
!959 = !{!947, !946}
!960 = distinct !{!960, i1 false, !"LVerDomain"}
!961 = distinct !{!961, !960}
!962 = distinct !{!962, !960}
!963 = distinct !{!963, !32, !224, !225}
!964 = distinct !{!964, !226}
!965 = distinct !{!965, !32, !224}
!966 = distinct !{!966, !32}
!967 = distinct !{!967, !226}
!968 = distinct !{!968, !32, !224, !225}
!969 = distinct !{!969, !32, !225, !224}
!970 = distinct !{!970, !32}
!971 = !{!961}
!972 = !{!962}
!973 = distinct !{!973, i1 false, !"LVerDomain"}
!974 = distinct !{!974, !973}
!975 = distinct !{!975, !973}
!976 = distinct !{!976, !32, !224, !225}
!977 = distinct !{!977, !32, !224}
!978 = distinct !{!978, !32}
!979 = !{!974}
!980 = !{!975}
!981 = distinct !{!981, !32}
!982 = distinct !{!982, !32}
!983 = distinct !{!983, !226}
!984 = distinct !{!984, i1 false, !"LVerDomain"}
!985 = distinct !{!985, !984}
!986 = distinct !{!986, !984}
!987 = distinct !{!987, !32, !224, !225}
!988 = distinct !{!988, !32, !224}
!989 = distinct !{!989, i1 false, !"LVerDomain"}
!990 = distinct !{!990, !989}
!991 = distinct !{!991, !989}
!992 = distinct !{!992, !989}
!993 = distinct !{!993, !989}
!994 = distinct !{!994, !989}
!995 = distinct !{!995, !32, !224, !225}
!996 = distinct !{!996, !32, !224}
!997 = distinct !{!997, !32}
!998 = !{!985}
!999 = !{!986}
!1000 = !{!990}
!1001 = !{!991}
!1002 = !{!992}
!1003 = !{!993}
!1004 = !{!994}
!1005 = !{!990, !993, !992, !991}
!1006 = distinct !{!1006, !32, !1007}
!1007 = !{!"llvm.loop.peeled.count", i32 1}
!1008 = !{!139, !138, i64 8}
end_hunk_1
