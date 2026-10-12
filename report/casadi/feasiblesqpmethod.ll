Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a

.lr.ph142:                                        ; preds = %.lr.ph142, %.lr.ph142.preheader.new
  %.2140 = phi i64 [ 1, %.lr.ph142.preheader.new ], [ %i.by, %.lr.ph142 ] ; 6 uses
  %niter237 = phi i64 [ 0, %.lr.ph142.preheader.new ], [ %niter237.next.3, %.lr.ph142 ]
  %i.bg = add nuw nsw i64 %.2140, 1               ; 3 uses
  %i.bh = mul nuw nsw i64 %.2140, %0
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !155
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.2140
  store double %i.bk, ptr %i.bl, align 8, !tbaa !155
  %i.bm = add nuw nsw i64 %.2140, 2               ; 3 uses
  %i.bn = mul nuw nsw i64 %i.bg, %0
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %i.bm
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !155
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bg
  store double %i.bq, ptr %i.br, align 8, !tbaa !155
  %i.bs = add nuw nsw i64 %.2140, 3               ; 3 uses
  %i.bt = mul nuw nsw i64 %i.bm, %0
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %i.bs
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !155
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bm
  store double %i.bw, ptr %i.bx, align 8, !tbaa !155
  %i.by = add nuw nsw i64 %.2140, 4               ; 3 uses
  %i.bz = mul nuw nsw i64 %i.bs, %0
  %i.ca = getelementptr [8 x i8], ptr %1, i64 %i.by
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !155
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bs
  store double %i.cc, ptr %i.cd, align 8, !tbaa !155
  %niter237.next.3 = add nuw i64 %niter237, 4     ; 2 uses
  %niter237.ncmp.3 = icmp eq i64 %niter237.next.3, %unroll_iter236
  br i1 %niter237.ncmp.3, label %._crit_edge143.loopexit.unr-lcssa, label %.lr.ph142, !llvm.loop !1301

._crit_edge143.loopexit.unr-lcssa:                ; preds = %.lr.ph142
  %lcmp.mod234.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod234.not, label %._crit_edge143, label %.lr.ph142.epil.preheader

.lr.ph142.epil.preheader:                         ; preds = %._crit_edge143.loopexit.unr-lcssa, %.lr.ph142.preheader
  %.2140.epil.init = phi i64 [ 1, %.lr.ph142.preheader ], [ %i.by, %._crit_edge143.loopexit.unr-lcssa ]
  %lcmp.mod235 = icmp ne i64 %xtraiter232, 0
  call void @llvm.assume(i1 %lcmp.mod235)
  br label %.lr.ph142.epil

.lr.ph142.epil:                                   ; preds = %.lr.ph142.epil, %.lr.ph142.epil.preheader
  %.2140.epil = phi i64 [ %i.ce, %.lr.ph142.epil ], [ %.2140.epil.init, %.lr.ph142.epil.preheader ] ; 3 uses
  %epil.iter233 = phi i64 [ %epil.iter233.next, %.lr.ph142.epil ], [ 0, %.lr.ph142.epil.preheader ]
  %i.ce = add nuw nsw i64 %.2140.epil, 1          ; 2 uses
  %i.cf = mul nuw nsw i64 %.2140.epil, %0
  %i.cg = getelementptr [8 x i8], ptr %1, i64 %i.ce
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !155
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.2140.epil
  store double %i.ci, ptr %i.cj, align 8, !tbaa !155
  %epil.iter233.next = add i64 %epil.iter233, 1   ; 2 uses
  %epil.iter233.cmp.not = icmp eq i64 %epil.iter233.next, %xtraiter232
  br i1 %epil.iter233.cmp.not, label %._crit_edge143, label %.lr.ph142.epil, !llvm.loop !1302

._crit_edge143:                                   ; preds = %._crit_edge143.loopexit.unr-lcssa, %.lr.ph142.epil, %._crit_edge139.thread, %._crit_edge139
  %i.ck = phi i1 [ false, %._crit_edge139.thread ], [ false, %._crit_edge139 ], [ true, %.lr.ph142.epil ], [ true, %._crit_edge143.loopexit.unr-lcssa ]
  %i.cl = phi ptr [ %.ph, %._crit_edge139.thread ], [ %i.aa, %._crit_edge139 ], [ %i.aa, %.lr.ph142.epil ], [ %i.aa, %._crit_edge143.loopexit.unr-lcssa ]
  %i.cm = call noundef i32 @_ZN6casadi21casadi_cvx_symm_schurIdEEixPT_S2_S1_xPxS2_(i64 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.cl, double noundef %3, i64 noundef %5, ptr noundef %7, ptr noundef %6)
  %.not = icmp eq i32 %i.cm, 0
  br i1 %.not, label %.preheader132, label %.loopexit

.preheader132:                                    ; preds = %._crit_edge143
  br i1 %i.f, label %.lr.ph145, label %._crit_edge151

.lr.ph145:                                        ; preds = %.preheader132
  %.not.i128 = icmp eq i64 %4, 0
  %i.cn = add nuw i64 %0, 1
  br label %bb.k

.lr.ph150.preheader:                              ; preds = %bb.k
  %i.co = shl i64 %0, 3                           ; 2 uses
  %i.cp = add i64 %i.co, 8                        ; 3 uses
  %i.cq = add i64 %i.co, -8                       ; 3 uses
  %xtraiter238 = and i64 %0, 1
  %i.cr = icmp eq i64 %0, 1
  br i1 %i.cr, label %.lr.ph150.epil.preheader, label %.lr.ph150.preheader.new

.lr.ph150.preheader.new:                          ; preds = %.lr.ph150.preheader
  %unroll_iter242 = and i64 %0, 9223372036854775806
  br label %.lr.ph150

bb.k:                                             ; preds = %.lr.ph145, %bb.k
  %.3144 = phi i64 [ 0, %.lr.ph145 ], [ %i.cz, %bb.k ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.3144
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !155 ; 2 uses
  %i.cu = call nsz double @llvm.fabs.f64(double %i.ct)
  %i.cv = select nsz i1 %.not.i128, double %i.ct, double %i.cu
  %i.cw = call nsz noundef double @llvm.maxnum.f64(double %2, double %i.cv)
  %i.cx = mul i64 %.3144, %i.cn
  %i.cy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cx
  store double %i.cw, ptr %i.cy, align 8, !tbaa !155
  %i.cz = add nuw nsw i64 %.3144, 1               ; 2 uses
  %exitcond169.not = icmp eq i64 %i.cz, %0
  br i1 %exitcond169.not, label %.lr.ph150.preheader, label %bb.k, !llvm.loop !1303

.loopexit131:                                     ; preds = %.lr.ph148, %.lr.ph150
  %i.da = add nuw nsw i64 %.4149, 2               ; 3 uses
  %i.db = icmp slt i64 %i.da, %0
  br i1 %i.db, label %.lr.ph148.1, label %.loopexit131.1

.lr.ph148.1:                                      ; preds = %.loopexit131
  %i.dc = shl i64 %i.dg, 3
  %i.dd = sub i64 %i.cq, %i.dc
  %i.de = mul i64 %i.cp, %i.dg
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %scevgep.1 = getelementptr i8, ptr %i.df, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.1, i8 0, i64 %i.dd, i1 false), !tbaa !155
  br label %.loopexit131.1

.loopexit131.1:                                   ; preds = %.lr.ph148.1, %.loopexit131
  %niter243.next.1 = add nuw nsw i64 %niter243, 2 ; 2 uses
  %niter243.ncmp.1 = icmp eq i64 %niter243.next.1, %unroll_iter242
  br i1 %niter243.ncmp.1, label %._crit_edge151.loopexit.unr-lcssa, label %.lr.ph150, !llvm.loop !1304

.lr.ph150:                                        ; preds = %.loopexit131.1, %.lr.ph150.preheader.new
  %.4149 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %i.da, %.loopexit131.1 ] ; 4 uses
  %niter243 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %niter243.next.1, %.loopexit131.1 ]
  %i.dg = or disjoint i64 %.4149, 1               ; 3 uses
  %i.dh = icmp slt i64 %i.dg, %0
  br i1 %i.dh, label %.lr.ph148, label %.loopexit131

.lr.ph148:                                        ; preds = %.lr.ph150
  %i.di = shl i64 %.4149, 3
  %i.dj = sub i64 %i.cq, %i.di
  %i.dk = mul i64 %i.cp, %.4149
  %i.dl = getelementptr i8, ptr %1, i64 %i.dk
  %scevgep = getelementptr i8, ptr %i.dl, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.dj, i1 false), !tbaa !155
  br label %.loopexit131

._crit_edge151.loopexit.unr-lcssa:                ; preds = %.loopexit131.1
  %lcmp.mod240.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod240.not, label %._crit_edge151, label %.lr.ph150.epil.preheader

.lr.ph150.epil.preheader:                         ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph150.preheader
  %.4149.epil.init = phi i64 [ 0, %.lr.ph150.preheader ], [ %i.da, %._crit_edge151.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod241 = trunc i64 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod241)
  %i.dm = add nuw nsw i64 %.4149.epil.init, 1
  %i.dn = icmp slt i64 %i.dm, %0
  br i1 %i.dn, label %.lr.ph148.epil, label %._crit_edge151

.lr.ph148.epil:                                   ; preds = %.lr.ph150.epil.preheader
  %i.do = shl i64 %.4149.epil.init, 3
  %i.dp = sub i64 %i.cq, %i.do
  %i.dq = mul i64 %i.cp, %.4149.epil.init
  %i.dr = getelementptr i8, ptr %1, i64 %i.dq
  %scevgep.epil = getelementptr i8, ptr %i.dr, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.dp, i1 false), !tbaa !155
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph148.epil, %.lr.ph150.epil.preheader, %.preheader132
  %i.ds = load i64, ptr %7, align 8, !tbaa !210   ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph160.preheader, label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %._crit_edge151
  %.idx = mul i64 %i.ds, 24
  %i.du = getelementptr i8, ptr %7, i64 %.idx
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  %i.dw = shl i64 %0, 3
  %i.dx = mul i64 %0, -8
  %i.dy = shl nsw i64 %0, 3
  %i.dz = sub nuw nsw i64 -8, %i.dy
  %i.ea = shl i64 %0, 3
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge156
  %.5158 = phi i64 [ %i.it, %._crit_edge156 ], [ 0, %.lr.ph160.preheader ]
  %.0122157 = phi ptr [ %i.ec, %._crit_edge156 ], [ %i.dv, %.lr.ph160.preheader ] ; 4 uses
  %i.eb = load i64, ptr %.0122157, align 8, !tbaa !210 ; 8 uses
  %i.ec = getelementptr inbounds i8, ptr %.0122157, i64 -24
  %i.ed = icmp sgt i64 %i.eb, 1
  br i1 %i.ed, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph160
  %i.ee = getelementptr inbounds nuw i8, ptr %.0122157, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !210
  %i.eg = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.0122157, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !210 ; 6 uses
  %i.ej = add nsw i64 %i.ei, %i.eb                ; 2 uses
  %i.ek = add nsw i64 %i.eb, -2
  %i.el = add nsw i64 %i.eb, -1
  %i.em = add i64 %i.el, %i.ei
  %i.en = mul i64 %i.dw, %i.em
  %i.eo = add i64 %i.eb, %i.ei
  %i.ep = add nuw i64 %i.eb, 2305843009213693950
  %i.eq = add i64 %i.ep, %i.ei
  %i.er = mul i64 %0, %i.eq
  %i.es = add i64 %i.eo, %i.er
  %i.et = add i64 %0, %i.es
  %i.eu = shl i64 %i.et, 3
  %i.ev = mul i64 %i.ea, %i.ej
  %i.ew = add i64 %i.eb, %i.ei
  %8 = sub i64 %0, %i.ew
  %9 = add nsw i64 %i.eb, -3
  %10 = add i64 %9, %i.ei
  %i.ex = getelementptr i8, ptr %1, i64 %i.en
  %11 = getelementptr i8, ptr %1, i64 %i.eu
  %12 = getelementptr i8, ptr %1, i64 %i.ev
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit
  %.0121153 = phi ptr [ %i.eg, %.lr.ph155 ], [ %i.fb, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 2 uses
  %.2126152 = phi i64 [ 0, %.lr.ph155 ], [ %i.is, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 7 uses
  %13 = add i64 %8, %.2126152                     ; 3 uses
  %i.ey = mul i64 %i.dx, %.2126152                ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.ex, i64 %i.ey
  %i.ez = mul i64 %i.dz, %.2126152
  %scevgep189 = getelementptr i8, ptr %11, i64 %i.ez
  %scevgep190 = getelementptr i8, ptr %12, i64 %i.ey
  %i.fa = getelementptr inbounds i8, ptr %.0121153, i64 -8
  %i.fb = getelementptr inbounds i8, ptr %.0121153, i64 -16 ; 2 uses
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !155 ; 9 uses
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !155 ; 8 uses
  %i.fe = sub i64 %i.ej, %.2126152                ; 5 uses
  %i.ff = add i64 %i.fe, -2                       ; 4 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ff ; 3 uses
  %i.fh = icmp sgt i64 %i.fe, 2
  br i1 %i.fh, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter244 = and i64 %i.fe, 1
  %i.fi = icmp eq i64 %10, %.2126152
  br i1 %i.fi, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter249 = and i64 %i.ff, -2
  %i.fj = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.080.i = phi ptr [ %i.fg, %.lr.ph.i.preheader.new ], [ %i.gc, %.lr.ph.i ] ; 3 uses
  %niter250 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter250.next.1, %.lr.ph.i ]
  %i.fr = load <2 x double>, ptr %.080.i, align 8, !tbaa !155 ; 3 uses
  %i.fs = fneg <2 x double> %i.fr
  %i.ft = shufflevector <2 x double> %i.fr, <2 x double> %i.fs, <2 x i32> <i32 1, i32 2>
  %i.fu = fmul <2 x double> %i.fk, %i.ft
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fr, <2 x double> %i.fu)
  store <2 x double> %i.fv, ptr %.080.i, align 8, !tbaa !155
  %i.fw = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %0 ; 3 uses
  %i.fx = load <2 x double>, ptr %i.fw, align 8, !tbaa !155 ; 3 uses
  %i.fy = fneg <2 x double> %i.fx
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> %i.fy, <2 x i32> <i32 1, i32 2>
  %i.ga = fmul <2 x double> %i.fo, %i.fz
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fx, <2 x double> %i.ga)
  store <2 x double> %i.gb, ptr %i.fw, align 8, !tbaa !155
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %0 ; 3 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1305

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod246.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod246.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fg, %.lr.ph.i.preheader ], [ %i.gc, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod248 = trunc i64 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod248)
  %i.gd = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !155 ; 3 uses
  %i.ge = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fneg <2 x double> %i.gd
  %i.gh = shufflevector <2 x double> %i.gd, <2 x double> %i.gg, <2 x i32> <i32 1, i32 2>
  %i.gi = fmul <2 x double> %i.gf, %i.gh
  %i.gj = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gd, <2 x double> %i.gi)
  store <2 x double> %i.gl, ptr %.080.i.epil.init, align 8, !tbaa !155
  %i.gm = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fg, %bb.l ], [ %i.gc, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gm, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gn = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.go = getelementptr i8, ptr %i.gn, i64 8      ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !155 ; 2 uses
  %i.gq = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !155 ; 3 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 1 ; 2 uses
  %i.gs = fmul double %i.fc, %i.gr                ; 2 uses
  %i.gt = fmul double %i.fc, %i.gp
  %i.gu = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gw = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gt, i64 1
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.gq, <2 x double> %i.gx) ; 3 uses
  %i.gz = extractelement <2 x double> %i.gq, i64 0
  %i.ha = fneg double %i.gz
  %i.hb = fmul double %i.fc, %i.ha
  %i.hc = call double @llvm.fmuladd.f64(double %i.fd, double %i.gr, double %i.hb)
  %i.hd = fneg double %i.gs
  %i.he = call double @llvm.fmuladd.f64(double %i.fd, double %i.gp, double %i.hd)
  %i.hf = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = fneg <2 x double> %i.gy
  %i.hi = shufflevector <2 x double> %i.gy, <2 x double> %i.hh, <2 x i32> <i32 1, i32 2>
  %i.hj = fmul <2 x double> %i.hg, %i.hi
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.gy, <2 x double> %i.hj)
  store <2 x double> %i.hk, ptr %.0.lcssa.i, align 8, !tbaa !155
  %i.hl = fneg double %i.hc
  %i.hm = fmul double %i.fc, %i.hl
  %i.hn = call double @llvm.fmuladd.f64(double %i.fd, double %i.he, double %i.hm)
  store double %i.hn, ptr %i.go, align 8, !tbaa !155
  %i.ho = sub i64 %0, %i.fe                       ; 2 uses
  %i.hp = icmp sgt i64 %i.ho, 0
  br i1 %i.hp, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.hq = mul i64 %i.ff, %0
  %i.hr = getelementptr [8 x i8], ptr %1, i64 %i.hq
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.ff
  %i.ht = getelementptr i8, ptr %i.hs, i64 16     ; 5 uses
  %min.iters.check = icmp ult i64 %13, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %i.ht, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %13, -2                        ; 4 uses
  %i.hu = shl i64 %n.vec, 3
  %i.hv = getelementptr i8, ptr %i.ht, i64 %i.hu
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %i.fd, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ht, i64 %i.hw ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325 ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.hx, align 8, !tbaa !155, !alias.scope !1325 ; 2 uses
  %i.hy = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.hy)
  store <2 x double> %i.hz, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325
  %i.ia = fneg <2 x double> %wide.load
  %i.ib = fmul <2 x double> %broadcast.splat, %i.ia
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.ib)
  store <2 x double> %i.ic, ptr %i.hx, align 8, !tbaa !155, !alias.scope !1325
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !1309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.ht, %vector.memcheck ], [ %i.ht, %.lr.ph84.preheader.i ], [ %i.hv, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.iq, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.ir, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.ie = load double, ptr %.182.i, align 8, !tbaa !155 ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !155 ; 2 uses
  %i.ih = fneg double %i.ie
  %i.ii = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.ih, i64 1
  %i.ik = fmul <2 x double> %i.hg, %i.ij
  %i.il = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.ig, i64 1
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.im, <2 x double> %i.ik) ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 0
  store double %i.io, ptr %.182.i, align 8, !tbaa !155
  %i.ip = extractelement <2 x double> %i.in, i64 1
  store double %i.ip, ptr %i.if, align 8, !tbaa !155
  %i.iq = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.ir = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.ir, %i.ho
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !1310

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.is = add nuw nsw i64 %.2126152, 1
  %exitcond171.not = icmp eq i64 %.2126152, %i.ek
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.l, !llvm.loop !1311

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.it = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.it, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !1312

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.iu = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.iv = shl nsw i64 %0, 3                       ; 3 uses
  %i.iw = add i64 %i.iv, -16                      ; 2 uses
  %i.ix = mul i64 %0, %i.iw
  %i.iy = mul i64 %0, -8
  %i.iz = shl i64 %0, 4                           ; 2 uses
  %i.ja = shl i64 %0, 3
  %i.jb = add i64 %i.iv, 8
  %i.jc = add i64 %0, -2
  %i.jd = getelementptr i8, ptr %1, i64 %i.iv
  %i.je = getelementptr i8, ptr %i.jd, i64 -8
  %i.jf = getelementptr i8, ptr %1, i64 %i.ix
  %i.jg = getelementptr i8, ptr %1, i64 %i.iz
  %i.jh = getelementptr i8, ptr %i.jg, i64 8
  %i.ji = getelementptr i8, ptr %1, i64 %i.iz
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  %i.jk = getelementptr i8, ptr %6, i64 %i.iw
  %stride.check207 = icmp slt i64 %0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 10 uses
  %.0123162 = phi i64 [ %i.iu, %.lr.ph164 ], [ %i.ov, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.jl = add i64 %indvar, 1                      ; 3 uses
  %i.jm = sub i64 %i.jc, %indvar                  ; 5 uses
  %14 = add i64 %indvar, 1                        ; 3 uses
  %i.jn = mul i64 %indvar, -8                     ; 2 uses
  %scevgep196 = getelementptr i8, ptr %i.je, i64 %i.jn ; 2 uses
  %i.jo = mul i64 %i.iy, %indvar
  %scevgep197 = getelementptr i8, ptr %i.jf, i64 %i.jo ; 2 uses
  %i.jp = mul i64 %i.ja, %indvar
  %scevgep198 = getelementptr i8, ptr %i.jh, i64 %i.jp
  %i.jq = mul i64 %i.jb, %indvar
  %scevgep199 = getelementptr i8, ptr %i.jj, i64 %i.jq
  %scevgep200 = getelementptr i8, ptr %i.jk, i64 %i.jn
  %i.jr = xor i64 %.0123162, -1
  %i.js = add i64 %0, %i.jr                       ; 3 uses
  %i.jt = mul nsw i64 %i.js, %0
  %i.ju = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jt ; 8 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.ju, double noundef %i.jw)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 6 uses
  %i.jz = load double, ptr %i.jv, align 8, !tbaa !155 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.ka = shl nuw nsw i64 %.0123162, 3
  %i.kb = add nuw nsw i64 %i.ka, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.kb, i1 false), !tbaa !155
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %i.kc = icmp sgt i64 %i.js, 1
  br i1 %i.kc, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter251 = and i64 %i.jm, 1
  %i.kd = icmp eq i64 %.0123162, 0
  br i1 %i.kd, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter255 = and i64 %i.jm, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.ke = icmp eq i64 %indvar, 0
  %unroll_iter268 = and i64 %i.jl, -2
  %i.kf = and i64 %indvar, 1
  %lcmp.mod266.not.not = icmp eq i64 %i.kf, 0
  %lcmp.mod267 = trunc i64 %i.jl to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.lf, %._crit_edge.us.i ], [ %i.jy, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.lg, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.kg = load double, ptr %.046.us.i, align 8, !tbaa !155
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !155
  %i.kj = call double @llvm.fmuladd.f64(double %i.jz, double %i.kg, double %i.ki) ; 3 uses
  store double %i.kj, ptr %i.kh, align 8, !tbaa !155
  br i1 %i.ke, label %.epil.preheader263, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kk = phi double [ %i.kx, %.lr.ph.us.i.new ], [ %i.kj, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.ky, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter269 = phi i64 [ %niter269.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.km = load double, ptr %i.kl, align 8, !tbaa !155
  %i.kn = fmul double %i.jz, %i.km
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.03944.us.i
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !155
  %i.kq = call double @llvm.fmuladd.f64(double %i.kn, double %i.kp, double %i.kk) ; 2 uses
  store double %i.kq, ptr %i.kh, align 8, !tbaa !155
  %i.kr = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.kr
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !155
  %i.ku = fmul double %i.jz, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.kr
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !155
  %i.kx = call double @llvm.fmuladd.f64(double %i.ku, double %i.kw, double %i.kq) ; 3 uses
  store double %i.kx, ptr %i.kh, align 8, !tbaa !155
  %i.ky = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter269.next.1 = add nuw i64 %niter269, 2     ; 2 uses
  %niter269.ncmp.1 = icmp eq i64 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !1313

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod266.not.not, label %.epil.preheader263, label %._crit_edge.us.i

.epil.preheader263:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.kj, %.lr.ph.us.i ], [ %i.kx, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.ky, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.la = load double, ptr %i.kz, align 8, !tbaa !155
  %i.lb = fmul double %i.jz, %i.la
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.03944.us.i.epil.init
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !155
  %i.le = call double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %.epil.init)
  store double %i.le, ptr %i.kh, align 8, !tbaa !155
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader263
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.lg = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !1314

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %min.iters.check209 = icmp ult i64 %14, 6
  %bound0201 = icmp ult ptr %scevgep196, %scevgep199
  %bound1202 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict203 = and i1 %bound0201, %bound1202
  %bound0204 = icmp ult ptr %scevgep196, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197
  %found.conflict206 = and i1 %bound0204, %bound1205
  %i.lh = or i1 %found.conflict206, %stride.check207
  %conflict.rdx = or i1 %found.conflict203, %i.lh
  %n.vec211 = and i64 %14, -4                     ; 3 uses
  %i.li = or disjoint i64 %n.vec211, 1
  %cmp.n222 = icmp eq i64 %14, %n.vec211
  %i.lj = sub i64 %0, %.0123162
  %xtraiter270 = and i64 %i.lj, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %i.my, %._crit_edge.us54.i ], [ %i.jy, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %i.mz, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !155
  %i.lm = load double, ptr %.150.us.i, align 8, !tbaa !155
  %i.ln = fsub double %i.lm, %i.ll
  store double %i.ln, ptr %.150.us.i, align 8, !tbaa !155
  %brmerge = select i1 %min.iters.check209, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph208.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph.us53.i
  %i.lo = load double, ptr %i.lk, align 8, !tbaa !155, !alias.scope !1326
  %broadcast.splatinsert218 = insertelement <2 x double> poison, double %i.lo, i64 0
  %broadcast.splat219 = shufflevector <2 x double> %broadcast.splatinsert218, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next220, %vector.body212 ] ; 2 uses
  %i.lp = or disjoint i64 %index213, 1            ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load214 = load <2 x double>, ptr %i.lq, align 8, !tbaa !155, !alias.scope !1327
  %wide.load215 = load <2 x double>, ptr %i.lr, align 8, !tbaa !155, !alias.scope !1327
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.lp ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %wide.load216 = load <2 x double>, ptr %i.ls, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %wide.load217 = load <2 x double>, ptr %i.lt, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %i.lu = fneg <2 x double> %wide.load214
  %i.lv = fneg <2 x double> %wide.load215
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %broadcast.splat219, <2 x double> %wide.load216)
  %i.lx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %broadcast.splat219, <2 x double> %wide.load217)
  store <2 x double> %i.lw, ptr %i.ls, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  store <2 x double> %i.lx, ptr %i.lt, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %index.next220 = add nuw i64 %index213, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next220, %n.vec211
  br i1 %i.ly, label %middle.block221, label %vector.body212, !llvm.loop !1319

middle.block221:                                  ; preds = %vector.body212
  br i1 %cmp.n222, label %._crit_edge.us54.i, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block221
  %.14048.us.i.ph = phi i64 [ %i.li, %middle.block221 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod271.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol

scalar.ph208.prol:                                ; preds = %scalar.ph208.preheader
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.14048.us.i.ph
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !155
  %i.mb = load double, ptr %i.lk, align 8, !tbaa !155
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !155
  %i.me = fneg double %i.ma
  %i.mf = call double @llvm.fmuladd.f64(double %i.me, double %i.mb, double %i.md)
  store double %i.mf, ptr %i.mc, align 8, !tbaa !155
  %i.mg = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph208.prol.loopexit

scalar.ph208.prol.loopexit:                       ; preds = %scalar.ph208.prol, %scalar.ph208.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph208.preheader ], [ %i.mg, %scalar.ph208.prol ]
  %i.mh = icmp eq i64 %i.jl, %.14048.us.i.ph
  br i1 %i.mh, label %._crit_edge.us54.i, label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208
  %.14048.us.i = phi i64 [ %i.mx, %scalar.ph208 ], [ %.14048.us.i.unr, %scalar.ph208.prol.loopexit ] ; 4 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.14048.us.i
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !155
  %i.mk = load double, ptr %i.lk, align 8, !tbaa !155
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !155
  %i.mn = fneg double %i.mj
  %i.mo = call double @llvm.fmuladd.f64(double %i.mn, double %i.mk, double %i.mm)
  store double %i.mo, ptr %i.ml, align 8, !tbaa !155
  %i.mp = add nuw nsw i64 %.14048.us.i, 1         ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !155
  %i.ms = load double, ptr %i.lk, align 8, !tbaa !155
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.mp ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !155
  %i.mv = fneg double %i.mr
  %i.mw = call double @llvm.fmuladd.f64(double %i.mv, double %i.ms, double %i.mu)
  store double %i.mw, ptr %i.mt, align 8, !tbaa !155
  %i.mx = add nuw nsw i64 %.14048.us.i, 2         ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %i.mx, %i.js
  br i1 %exitcond60.not.i.1, label %._crit_edge.us54.i, label %scalar.ph208, !llvm.loop !1320

._crit_edge.us54.i:                               ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208, %middle.block221
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %0
  %i.mz = add nuw nsw i64 %.14249.us.i, 1
  %exitcond61.not.i = icmp eq i64 %.14249.us.i, %.0123162
  br i1 %exitcond61.not.i, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph.us53.i, !llvm.loop !1321

.lr.ph47.split.i:                                 ; preds = %.lr.ph47.split.i, %.lr.ph47.split.i.preheader.new
  %.046.i = phi ptr [ %i.jy, %.lr.ph47.split.i.preheader.new ], [ %i.nk, %.lr.ph47.split.i ] ; 2 uses
  %.04145.i = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %i.nl, %.lr.ph47.split.i ] ; 3 uses
  %niter256 = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %niter256.next.1, %.lr.ph47.split.i ]
  %i.na = load double, ptr %.046.i, align 8, !tbaa !155
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !155
  %i.nd = call double @llvm.fmuladd.f64(double %i.jz, double %i.na, double %i.nc)
  store double %i.nd, ptr %i.nb, align 8, !tbaa !155
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %0 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !155
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !155
  %i.nj = call double @llvm.fmuladd.f64(double %i.jz, double %i.nf, double %i.ni)
  store double %i.nj, ptr %i.nh, align 8, !tbaa !155
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %0 ; 2 uses
  %i.nl = add nuw nsw i64 %.04145.i, 2            ; 2 uses
  %niter256.next.1 = add i64 %niter256, 2         ; 2 uses
  %niter256.ncmp.1 = icmp eq i64 %niter256.next.1, %unroll_iter255
  br i1 %niter256.ncmp.1, label %.lr.ph51.split.i.preheader.unr-lcssa, label %.lr.ph47.split.i, !llvm.loop !1314

.lr.ph51.split.i.preheader.unr-lcssa:             ; preds = %.lr.ph47.split.i
  %lcmp.mod253.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod253.not, label %.lr.ph51.split.i.preheader, label %.lr.ph47.split.i.epil.preheader

.lr.ph47.split.i.epil.preheader:                  ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.preheader
  %.046.i.epil.init = phi ptr [ %i.jy, %.lr.ph47.split.i.preheader ], [ %i.nk, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %.04145.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.preheader ], [ %i.nl, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %lcmp.mod254 = trunc i64 %i.jm to i1
  call void @llvm.assume(i1 %lcmp.mod254)
  %i.nm = load double, ptr %.046.i.epil.init, align 8, !tbaa !155
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i.epil.init ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !155
  %i.np = call double @llvm.fmuladd.f64(double %i.jz, double %i.nm, double %i.no)
  store double %i.np, ptr %i.nn, align 8, !tbaa !155
  br label %.lr.ph51.split.i.preheader

.lr.ph51.split.i.preheader:                       ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.epil.preheader
  %xtraiter257 = and i64 %i.jm, 3                 ; 3 uses
  %i.nq = icmp ult i64 %.0123162, 3
  br i1 %i.nq, label %.lr.ph51.split.i.epil.preheader, label %.lr.ph51.split.i.preheader.new

.lr.ph51.split.i.preheader.new:                   ; preds = %.lr.ph51.split.i.preheader
  %unroll_iter261 = and i64 %i.jm, -4
  br label %.lr.ph51.split.i

.lr.ph51.split.i:                                 ; preds = %.lr.ph51.split.i, %.lr.ph51.split.i.preheader.new
  %.150.i = phi ptr [ %i.jy, %.lr.ph51.split.i.preheader.new ], [ %i.on, %.lr.ph51.split.i ] ; 3 uses
  %.14249.i = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %i.oo, %.lr.ph51.split.i ] ; 5 uses
  %niter262 = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %niter262.next.3, %.lr.ph51.split.i ]
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !155
  %i.nt = load double, ptr %.150.i, align 8, !tbaa !155
  %i.nu = fsub double %i.nt, %i.ns
  store double %i.nu, ptr %.150.i, align 8, !tbaa !155
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.150.i, i64 %0 ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !155
  %i.nz = load double, ptr %i.nv, align 8, !tbaa !155
  %i.oa = fsub double %i.nz, %i.ny
  store double %i.oa, ptr %i.nv, align 8, !tbaa !155
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %0 ; 3 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load double, ptr %i.od, align 8, !tbaa !155
  %i.of = load double, ptr %i.ob, align 8, !tbaa !155
  %i.og = fsub double %i.of, %i.oe
  store double %i.og, ptr %i.ob, align 8, !tbaa !155
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %0 ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !155
  %i.ol = load double, ptr %i.oh, align 8, !tbaa !155
  %i.om = fsub double %i.ol, %i.ok
  store double %i.om, ptr %i.oh, align 8, !tbaa !155
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %0 ; 2 uses
  %i.oo = add nuw nsw i64 %.14249.i, 4            ; 2 uses
  %niter262.next.3 = add i64 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i64 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, label %.lr.ph51.split.i, !llvm.loop !1321

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa: ; preds = %.lr.ph51.split.i
  %lcmp.mod259.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod259.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil.preheader

.lr.ph51.split.i.epil.preheader:                  ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, %.lr.ph51.split.i.preheader
  %.150.i.epil.init = phi ptr [ %i.jy, %.lr.ph51.split.i.preheader ], [ %i.on, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa ]
  %.14249.i.epil.init = phi i64 [ 0, %.lr.ph51.split.i.preheader ], [ %i.oo, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa ]
  %lcmp.mod260 = icmp ne i64 %xtraiter257, 0
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph51.split.i.epil

.lr.ph51.split.i.epil:                            ; preds = %.lr.ph51.split.i.epil, %.lr.ph51.split.i.epil.preheader
  %.150.i.epil = phi ptr [ %i.ot, %.lr.ph51.split.i.epil ], [ %.150.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 3 uses
  %.14249.i.epil = phi i64 [ %i.ou, %.lr.ph51.split.i.epil ], [ %.14249.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 2 uses
  %epil.iter258 = phi i64 [ %epil.iter258.next, %.lr.ph51.split.i.epil ], [ 0, %.lr.ph51.split.i.epil.preheader ]
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i.epil
  %i.oq = load double, ptr %i.op, align 8, !tbaa !155
  %i.or = load double, ptr %.150.i.epil, align 8, !tbaa !155
  %i.os = fsub double %i.or, %i.oq
  store double %i.os, ptr %.150.i.epil, align 8, !tbaa !155
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.150.i.epil, i64 %0
  %i.ou = add nuw nsw i64 %.14249.i.epil, 1
  %epil.iter258.next = add i64 %epil.iter258, 1   ; 2 uses
  %epil.iter258.cmp.not = icmp eq i64 %epil.iter258.next, %xtraiter257
  br i1 %epil.iter258.cmp.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil, !llvm.loop !1322

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit: ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, %.lr.ph51.split.i.epil, %._crit_edge.us54.i
  %i.ov = add nsw i64 %.0123162, -1
  %i.ow = icmp sgt i64 %.0123162, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ow, label %bb.m, label %.loopexit, !llvm.loop !1323

.loopexit:                                        ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, %._crit_edge161, %._crit_edge143, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %._crit_edge143 ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge161 ], [ 0, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [1000 x double], align 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = icmp sgt i64 %1, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  %i.c = add nsw i64 %1, -3                       ; 2 uses
  %4 = add nsw i64 %1, -2
  %i.d = mul i64 %1, %1
  %i.e = shl i64 %i.d, 3
  %i.f = shl i64 %1, 3                            ; 2 uses
  %i.g = sub nuw nsw i64 -8, %i.f
  %i.h = shl i64 %1, 3
  %i.i = add nsw i64 %1, -2
  %i.j = getelementptr i8, ptr %0, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = getelementptr i8, ptr %0, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit
  %.027 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit ] ; 12 uses
  %i.m = sub i64 %i.c, %.027
  %i.n = sub i64 %i.i, %.027                      ; 3 uses
  %i.o = mul i64 %i.g, %.027
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.o
  %i.p = mul i64 %i.h, %.027
  %scevgep30 = getelementptr i8, ptr %i.l, i64 %i.p
  %5 = sub i64 %4, %.027                          ; 4 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %.027
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = mul i64 %.027, %1
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 6 uses
  %i.u = xor i64 %.027, -1
  %i.v = add nsw i64 %1, %i.u                     ; 9 uses
  %i.w = mul i64 %i.v, %1
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w ; 17 uses
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp sgt i64 %i.v, 0
  br i1 %i.y, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check32 = icmp ult i64 %i.v, 4
  br i1 %min.iters.check32, label %.lr.ph.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %bound0 = icmp ult ptr %i.x, %scevgep30
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader47, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck
  %n.vec34 = and i64 %i.v, 9223372036854775804    ; 4 uses
  %i.z = shl i64 %n.vec34, 3                      ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.z
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body35 ] ; 2 uses
  %i.ac = shl i64 %index36, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ac ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <2 x double>, ptr %next.gep37, align 8, !tbaa !155, !alias.scope !1341
  %wide.load39 = load <2 x double>, ptr %i.ad, align 8, !tbaa !155, !alias.scope !1341
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load38, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1342, !noalias !1341
  store <2 x double> %wide.load39, ptr %i.ae, align 8, !tbaa !155, !alias.scope !1342, !noalias !1341
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.af, label %middle.block41, label %vector.body35, !llvm.loop !1333

middle.block41:                                   ; preds = %vector.body35
  %cmp.n42 = icmp eq i64 %i.v, %n.vec34
  br i1 %cmp.n42, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader47

.lr.ph.i.preheader47:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block41
  %.020.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec34, %middle.block41 ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.preheader ], [ %i.aa, %middle.block41 ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader ], [ %i.ab, %middle.block41 ] ; 2 uses
  %i.ag = sub nsw i64 %i.v, %.020.i.ph
  %i.ah = sub i64 %i.n, %.020.i.ph
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader47, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.al, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader47 ]
  %.01019.i.prol = phi ptr [ %i.ak, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader47 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.aj = load double, ptr %.01218.i.prol, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.aj, ptr %.01019.i.prol, align 8, !tbaa !155
  %i.al = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1334

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader47
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader47 ], [ %i.al, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader47 ], [ %i.ak, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader47 ], [ %i.ai, %.lr.ph.i.prol ]
  %i.am = icmp ult i64 %i.ah, 7
  br i1 %i.am, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %bb.c
  %i.an = load double, ptr %i.x, align 8, !tbaa !155
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ap = load double, ptr %.01218.i, align 8, !tbaa !155
  %i.aq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ap, ptr %.01019.i, align 8, !tbaa !155
  %i.ar = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.as = load double, ptr %i.ao, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.as, ptr %i.aq, align 8, !tbaa !155
  %i.au = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.av = load double, ptr %i.ar, align 8, !tbaa !155
  %i.aw = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.av, ptr %i.at, align 8, !tbaa !155
  %i.ax = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ay = load double, ptr %i.au, align 8, !tbaa !155
  %i.az = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ay, ptr %i.aw, align 8, !tbaa !155
  %i.ba = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !155
  %i.bc = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.bb, ptr %i.az, align 8, !tbaa !155
  %i.bd = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.be = load double, ptr %i.ba, align 8, !tbaa !155
  %i.bf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.be, ptr %i.bc, align 8, !tbaa !155
  %i.bg = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !155
  %i.bi = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.bh, ptr %i.bf, align 8, !tbaa !155
  %i.bj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bk = load double, ptr %i.bg, align 8, !tbaa !155
  %i.bl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bk, ptr %i.bi, align 8, !tbaa !155
  %i.bm = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bm, %i.v
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !1335

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block41, %bb.b
  %i.bn = load double, ptr %i.x, align 8, !tbaa !155 ; 3 uses
  %i.bo = icmp sgt i64 %i.v, 1
  br i1 %i.bo, label %.lr.ph.i25.preheader, label %._crit_edge.i

.lr.ph.i25.preheader:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %xtraiter48 = and i64 %i.n, 3                   ; 3 uses
  %i.bp = icmp ult i64 %i.m, 3
  br i1 %i.bp, label %.lr.ph.i25.epil.preheader, label %.lr.ph.i25.preheader.new

.lr.ph.i25.preheader.new:                         ; preds = %.lr.ph.i25.preheader
  %unroll_iter = and i64 %i.n, -4
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.i25.preheader.new
  %.041.i = phi double [ 0.000000e+00, %.lr.ph.i25.preheader.new ], [ %i.ce, %.lr.ph.i25 ]
  %.03640.i = phi i64 [ 1, %.lr.ph.i25.preheader.new ], [ %i.cf, %.lr.ph.i25 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %niter.next.3, %.lr.ph.i25 ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03640.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !155 ; 2 uses
  %i.bs = call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %.041.i)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03640.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !155 ; 2 uses
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.bs)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03640.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !155 ; 2 uses
  %i.ca = call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double %i.bw)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03640.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !155 ; 2 uses
  %i.ce = call double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.ca) ; 3 uses
  %i.cf = add nuw nsw i64 %.03640.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i25, !llvm.loop !1336

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i25
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.i, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.preheader
  %.041.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i25.preheader ], [ %i.ce, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03640.i.epil.init = phi i64 [ 1, %.lr.ph.i25.preheader ], [ %i.cf, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i25.epil

.lr.ph.i25.epil:                                  ; preds = %.lr.ph.i25.epil, %.lr.ph.i25.epil.preheader
  %.041.i.epil = phi double [ %i.ci, %.lr.ph.i25.epil ], [ %.041.i.epil.init, %.lr.ph.i25.epil.preheader ]
  %.03640.i.epil = phi i64 [ %i.cj, %.lr.ph.i25.epil ], [ %.03640.i.epil.init, %.lr.ph.i25.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i25.epil ], [ 0, %.lr.ph.i25.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03640.i.epil
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !155 ; 2 uses
  %i.ci = call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %.041.i.epil) ; 2 uses
  %i.cj = add nuw nsw i64 %.03640.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i25.epil, !llvm.loop !1337

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.epil, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.ck = phi i1 [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ true, %.lr.ph.i25.epil ], [ true, %._crit_edge.i.loopexit.unr-lcssa ]
  %i.cl = phi double [ %i.bn, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %i.an, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.bn, %.lr.ph.i25.epil ], [ %i.bn, %._crit_edge.i.loopexit.unr-lcssa ] ; 6 uses
  %.0.lcssa.i = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.ce, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ci, %.lr.ph.i25.epil ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.027 ; 3 uses
  %i.cn = call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %.0.lcssa.i)
  %i.co = call double @sqrt(double noundef %i.cn) #29 ; 3 uses
  %i.cp = fcmp oeq double %.0.lcssa.i, 0.000000e+00
  br i1 %i.cp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.cq = fcmp olt double %i.cl, 0.000000e+00
  %i.cr = select i1 %i.cq, double 2.000000e+00, double 0.000000e+00
  store double %i.cr, ptr %i.cm, align 8, !tbaa !155
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !155
  br label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.cs = fcmp ugt double %i.cl, 0.000000e+00
  %i.ct = fsub double %i.cl, %i.co
  %i.cu = fneg double %.0.lcssa.i
  %i.cv = fadd double %i.cl, %i.co
  %i.cw = fdiv double %i.cu, %i.cv
  %.035.i = select i1 %i.cs, double %i.cw, double %i.ct ; 4 uses
  %i.cx = fmul double %.035.i, %.035.i            ; 2 uses
  %i.cy = fmul double %i.cx, 2.000000e+00
  %i.cz = fadd double %.0.lcssa.i, %i.cx
  %i.da = fdiv double %i.cy, %i.cz
  store double %i.da, ptr %i.cm, align 8, !tbaa !155
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !155
  br i1 %i.ck, label %.lr.ph44.i.preheader, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

.lr.ph44.i.preheader:                             ; preds = %bb.e
  %min.iters.check = icmp ult i64 %5, 2
  br i1 %min.iters.check, label %.lr.ph44.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %5, -2                         ; 2 uses
  %i.db = or i64 %5, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.035.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dd, align 8, !tbaa !155
  %i.de = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.de, ptr %i.dd, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i.preheader46

.lr.ph44.i.preheader46:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.142.i.ph = phi i64 [ 1, %.lr.ph44.i.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader46, %.lr.ph44.i
  %.142.i = phi i64 [ %i.dj, %.lr.ph44.i ], [ %.142.i.ph, %.lr.ph44.i.preheader46 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.142.i ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !155
  %i.di = fdiv double %i.dh, %.035.i
  store double %i.di, ptr %i.dg, align 8, !tbaa !155
  %i.dj = add nuw nsw i64 %.142.i, 1              ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.dj, %i.v
  br i1 %exitcond45.not.i, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i, !llvm.loop !1339

_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit:  ; preds = %.lr.ph44.i, %middle.block, %bb.d, %bb.e
  store double %i.co, ptr %i.t, align 8, !tbaa !155
  %i.dk = load double, ptr %i.cm, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %1, i64 noundef %.027, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.x, double noundef %i.dk)
  %i.dl = add nuw nsw i64 %.027, 1
  %exitcond.not = icmp eq i64 %.027, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1340

._crit_edge:                                      ; preds = %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi21casadi_cvx_symm_schurIdEEixPT_S2_S1_xPxS2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  store i64 0, ptr %5, align 8, !tbaa !210
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.a
  %i.b = add nsw i64 %0, -1                       ; 5 uses
  %.not94 = icmp eq i64 %0, 1
  %.not = icmp eq ptr %6, null
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %._crit_edge91, label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %.lr.ph90
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = shl i64 %0, 3                            ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 -8
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.e
  %min.iters.check = icmp ult i64 %0, 3
  %bound0 = icmp ult ptr %2, %scevgep104
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.lr.ph, %bb.f
  %.07187102 = phi ptr [ %i.d, %.preheader77.lr.ph ], [ %.172, %bb.f ] ; 5 uses
  %.088101 = phi i64 [ 0, %.preheader77.lr.ph ], [ %i.ba, %bb.f ] ; 2 uses
  br i1 %.not94, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader77
  %brmerge = or i1 %min.iters.check, %found.conflict
  br i1 %brmerge, label %.lr.ph.preheader109, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %pred.store.continue108
  %index = phi i64 [ %index.next, %pred.store.continue108 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  %i.h = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load105 = load <2 x double>, ptr %i.i, align 8, !tbaa !155, !alias.scope !1350
  %i.j = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load105)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load106 = load <2 x double>, ptr %i.l, align 8, !tbaa !155, !alias.scope !1350
  %i.m = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load106)
  %i.n = fadd <2 x double> %i.j, %i.m
  %i.o = fmul <2 x double> %broadcast.splat, %i.n
  %i.p = fcmp ole <2 x double> %i.h, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <2 x i1> %i.p, i64 1
  br i1 %i.r, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1346

middle.block:                                     ; preds = %pred.store.continue108
  br i1 %cmp.n, label %.lr.ph84.preheader, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block
  %.06878.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader109, %bb.c
  %.06878 = phi i64 [ %i.z, %bb.c ], [ %.06878.ph, %.lr.ph.preheader109 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06878 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !155
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06878
  %i.z = add nuw nsw i64 %.06878, 1               ; 2 uses
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !155
  %i.ab = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  %i.ac = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ab)
  %i.ad = fmul double %3, %i.ac
  %i.ae = fcmp ugt double %i.x, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !155
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %exitcond.not = icmp eq i64 %i.z, %i.b
  br i1 %exitcond.not, label %.lr.ph84.preheader, label %.lr.ph, !llvm.loop !1347

.lr.ph84.preheader:                               ; preds = %bb.c, %middle.block
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.05983 = phi i1 [ %or.cond, %.lr.ph84 ], [ true, %.lr.ph84.preheader ]
  %.06182 = phi i1 [ %or.cond3, %.lr.ph84 ], [ true, %.lr.ph84.preheader ]
  %.16481 = phi i64 [ %.3, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ]
  %.06580 = phi i64 [ %.267, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ]
  %.16979 = phi i64 [ %i.aq, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ] ; 3 uses
  %i.af = sub nsw i64 %0, %.16979
  %i.ag = getelementptr [8 x i8], ptr %2, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !155
  %i.aj = fcmp oeq double %i.ai, 0.000000e+00
  %or.cond = and i1 %.05983, %i.aj                ; 2 uses
  %i.ak = zext i1 %or.cond to i64
  %.2 = add nuw nsw i64 %.16481, %i.ak            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16979
  %i.am = load double, ptr %i.al, align 8, !tbaa !155
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  %or.cond3 = and i1 %.06182, %i.an               ; 2 uses
  %i.ao = zext i1 %or.cond3 to i64
  %.166 = add nsw i64 %.06580, %i.ao
  %i.ap = icmp eq i64 %.2, %i.b                   ; 2 uses
  %.267 = select i1 %i.ap, i64 0, i64 %.166       ; 2 uses
  %.3 = select i1 %i.ap, i64 %0, i64 %.2          ; 2 uses
  %i.aq = add nuw nsw i64 %.16979, 1              ; 2 uses
  %exitcond96.not = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph84, !llvm.loop !1348

._crit_edge:                                      ; preds = %.lr.ph84, %.preheader77
  %.065.lcssa = phi i64 [ 0, %.preheader77 ], [ %.267, %.lr.ph84 ] ; 4 uses
  %.164.lcssa = phi i64 [ 0, %.preheader77 ], [ %.3, %.lr.ph84 ] ; 2 uses
  %i.ar = add i64 %.065.lcssa, %.164.lcssa
  %i.as = sub i64 %0, %i.ar                       ; 3 uses
  %i.at = icmp slt i64 %.164.lcssa, %0
  br i1 %i.at, label %bb.d, label %._crit_edge91

bb.d:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %.065.lcssa
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %.065.lcssa
  %i.aw = getelementptr inbounds [8 x i8], ptr %6, i64 %.088101
  %i.ax = select i1 %.not, ptr null, ptr %i.aw
end_hunk_0
begin_hunk_1_@_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_:bb.a
  %.07386 = phi i64 [ %i.q, %._crit_edge ], [ 0, %.lr.ph88.preheader ] ; 4 uses
  %i.j = load double, ptr %.087, align 8, !tbaa !155
  %i.k = fmul double %5, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07386 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07386 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !155
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.o)
  store double %i.p, ptr %i.n, align 8, !tbaa !155
  %i.q = add nuw nsw i64 %.07386, 1               ; 4 uses
  %i.r = icmp slt i64 %i.q, %i.f
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph88, %.lr.ph
  %.185.pn = phi ptr [ %.185, %.lr.ph ], [ %.087, %.lr.ph88 ]
  %.07184 = phi i64 [ %i.ae, %.lr.ph ], [ %i.q, %.lr.ph88 ] ; 3 uses
  %.185 = getelementptr inbounds nuw i8, ptr %.185.pn, i64 8 ; 4 uses
  %i.s = load double, ptr %.185, align 8, !tbaa !155
  %i.t = fmul double %5, %i.s
  %i.u = load double, ptr %i.l, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07184 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !155
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !155
  %i.y = load double, ptr %.185, align 8, !tbaa !155
  %i.z = fmul double %5, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07184
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !155
  %i.ac = load double, ptr %i.n, align 8, !tbaa !155
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !155
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1351

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !1352

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
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !155
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !155
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !155
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !155
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !155
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !155
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
  %lcmp.mod163 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi double [ %i.bl, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0710.i.epil = phi ptr [ %i.bj, %.lr.ph.i.epil ], [ %.0710.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.089.i.epil = phi ptr [ %i.bh, %.lr.ph.i.epil ], [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.089.i.epil, i64 8
  %i.bi = load double, ptr %.089.i.epil, align 8, !tbaa !155
  %i.bj = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.bk = load double, ptr %.0710.i.epil, align 8, !tbaa !155
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !1353

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit:       ; preds = %.lr.ph.i.epil, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa
  %.lcssa = phi double [ %i.bg, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ], [ %i.bl, %.lr.ph.i.epil ]
  %i.bm = fmul double %.lcssa, %i.aj
  %i.bn = fmul double %i.bm, 5.000000e-01         ; 2 uses
  br i1 %.not.i, label %.lr.ph.i78.preheader, label %.lr.ph99.preheader

.lr.ph.i78.preheader:                             ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i78.preheader161, label %vector.memcheck

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
  br i1 %found.conflict, label %.lr.ph.i78.preheader161, label %vector.ph

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
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !155, !alias.scope !1368
  %wide.load113 = load <2 x double>, ptr %i.by, align 8, !tbaa !155, !alias.scope !1368
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %wide.load115 = load <2 x double>, ptr %i.bz, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.ca, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph99.preheader, label %.lr.ph.i78.preheader161

.lr.ph.i78.preheader161:                          ; preds = %vector.memcheck, %.lr.ph.i78.preheader, %middle.block
  %.014.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec, %middle.block ]
  %.0813.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i78.preheader ], [ %i.bv, %middle.block ]
  %.0912.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i78.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader161, %.lr.ph.i78
  %.014.i = phi i64 [ %i.ci, %.lr.ph.i78 ], [ %.014.i.ph, %.lr.ph.i78.preheader161 ]
  %.0813.i = phi ptr [ %i.cf, %.lr.ph.i78 ], [ %.0813.i.ph, %.lr.ph.i78.preheader161 ] ; 3 uses
  %.0912.i = phi ptr [ %i.cd, %.lr.ph.i78 ], [ %.0912.i.ph, %.lr.ph.i78.preheader161 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ce = load double, ptr %.0912.i, align 8, !tbaa !155
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.cg = load double, ptr %.0813.i, align 8, !tbaa !155
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ce, double %i.cg)
  store double %i.ch, ptr %.0813.i, align 8, !tbaa !155
  %i.ci = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !1358

.lr.ph99.preheader:                               ; preds = %.lr.ph.i78, %middle.block, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %i.cj = shl i64 %0, 3
  %i.ck = add i64 %i.cj, -8
  %i.cl = shl i64 %1, 3
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %scevgep121 = getelementptr i8, ptr %4, i64 %i.cm ; 2 uses
  %scevgep122 = getelementptr i8, ptr %3, i64 %i.cm ; 2 uses
  %i.cn = add i64 %0, -2
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %._crit_edge95
  %.298 = phi ptr [ %i.ej, %._crit_edge95 ], [ %i.i, %.lr.ph99.preheader ] ; 9 uses
  %.17497 = phi i64 [ %i.cz, %._crit_edge95 ], [ 0, %.lr.ph99.preheader ] ; 7 uses
  %6 = add i64 %1, %.17497
  %7 = sub i64 %i.cn, %6                          ; 3 uses
  %i.co = shl i64 %.17497, 3
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = shl i64 %.17497, 3
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %scevgep120 = getelementptr i8, ptr %4, i64 %i.cr
  %scevgep123 = getelementptr i8, ptr %3, i64 %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17497 ; 3 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !155
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !155
  %i.cw = load double, ptr %.298, align 8, !tbaa !155
  %i.cx = fmul double %i.ct, -2.000000e+00
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cv, double %i.cw)
  store double %i.cy, ptr %.298, align 8, !tbaa !155
  %i.cz = add nuw nsw i64 %.17497, 1              ; 7 uses
  %i.da = icmp slt i64 %i.cz, %i.f
  br i1 %i.da, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %.lr.ph99
  %min.iters.check139 = icmp ult i64 %7, 6
  br i1 %min.iters.check139, label %.lr.ph94.preheader160, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph94.preheader
  %scevgep = getelementptr i8, ptr %.298, i64 8   ; 4 uses
  %scevgep119 = getelementptr i8, ptr %.298, i64 %i.cp ; 4 uses
  %bound0124 = icmp ult ptr %scevgep, %scevgep121
  %bound1125 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict126 = and i1 %bound0124, %bound1125
  %bound0127 = icmp ult ptr %scevgep, %scevgep121
  %bound1128 = icmp ult ptr %4, %scevgep119
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx = or i1 %found.conflict126, %found.conflict129
  %bound0130 = icmp ult ptr %scevgep, %scevgep122
  %bound1131 = icmp ult ptr %3, %scevgep119
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx, %found.conflict132
  %bound0134 = icmp ult ptr %scevgep, %scevgep122
  %bound1135 = icmp ult ptr %scevgep123, %scevgep119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  br i1 %conflict.rdx137, label %.lr.ph94.preheader160, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck118
  %n.vec141 = and i64 %7, -4                      ; 4 uses
  %i.db = shl i64 %n.vec141, 3
  %i.dc = getelementptr i8, ptr %.298, i64 %i.db  ; 2 uses
  %i.dd = add i64 %i.cz, %n.vec141
  %i.de = load double, ptr %i.cs, align 8, !tbaa !155, !alias.scope !1370
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = load double, ptr %i.cu, align 8, !tbaa !155, !alias.scope !1371
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %i.df, i64 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next155, %vector.body142 ] ; 3 uses
  %i.dg = shl i64 %index143, 3
  %next.gep144 = getelementptr i8, ptr %.298, i64 %i.dg ; 2 uses
  %i.dh = add nuw i64 %i.cz, %index143            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep144, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dh ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load145 = load <2 x double>, ptr %i.dj, align 8, !tbaa !155, !alias.scope !1372
  %wide.load146 = load <2 x double>, ptr %i.dk, align 8, !tbaa !155, !alias.scope !1372
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dh ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load147 = load <2 x double>, ptr %i.dl, align 8, !tbaa !155, !alias.scope !1373
  %wide.load148 = load <2 x double>, ptr %i.dm, align 8, !tbaa !155, !alias.scope !1373
  %i.dn = fmul <2 x double> %wide.load147, %broadcast.splat150
  %i.do = fmul <2 x double> %wide.load148, %broadcast.splat150
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load145, <2 x double> %i.dn)
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load146, <2 x double> %i.do)
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep144, i64 24 ; 2 uses
  %wide.load153 = load <2 x double>, ptr %i.di, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %wide.load154 = load <2 x double>, ptr %i.dr, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %i.ds = fsub <2 x double> %wide.load153, %i.dp
  %i.dt = fsub <2 x double> %wide.load154, %i.dq
  store <2 x double> %i.ds, ptr %i.di, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %index.next155 = add nuw i64 %index143, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next155, %n.vec141
  br i1 %i.du, label %middle.block156, label %vector.body142, !llvm.loop !1365

middle.block156:                                  ; preds = %vector.body142
  %cmp.n157 = icmp eq i64 %7, %n.vec141
  br i1 %cmp.n157, label %._crit_edge95, label %.lr.ph94.preheader160

.lr.ph94.preheader160:                            ; preds = %vector.memcheck118, %.lr.ph94.preheader, %middle.block156
  %.392.pn.ph = phi ptr [ %.298, %vector.memcheck118 ], [ %.298, %.lr.ph94.preheader ], [ %i.dc, %middle.block156 ]
  %.17291.ph = phi i64 [ %i.cz, %vector.memcheck118 ], [ %i.cz, %.lr.ph94.preheader ], [ %i.dd, %middle.block156 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader160, %.lr.ph94
  %.392.pn = phi ptr [ %.392, %.lr.ph94 ], [ %.392.pn.ph, %.lr.ph94.preheader160 ]
  %.17291 = phi i64 [ %i.ef, %.lr.ph94 ], [ %.17291.ph, %.lr.ph94.preheader160 ] ; 3 uses
  %.392 = getelementptr inbounds nuw i8, ptr %.392.pn, i64 8 ; 4 uses
  %i.dv = load double, ptr %i.cs, align 8, !tbaa !155
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !155
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !155
  %i.ea = load double, ptr %i.cu, align 8, !tbaa !155
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dx, double %i.eb)
  %i.ed = load double, ptr %.392, align 8, !tbaa !155
  %i.ee = fsub double %i.ed, %i.ec
  store double %i.ee, ptr %.392, align 8, !tbaa !155
  %i.ef = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ef, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !1366

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block156, %.lr.ph99
  %i.eg = phi ptr [ %.298, %.lr.ph99 ], [ %i.dc, %middle.block156 ], [ %.392, %.lr.ph94 ]
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %i.a
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %.17497
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %exitcond103.not = icmp eq i64 %i.cz, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1367

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !155
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !155 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.m)
  %i.n = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %sqrt, double %i.h)
  %i.o = fdiv double %i.k, %i.n
  %i.p = fsub double %i.f, %i.o
  %i.q = load double, ptr %1, align 8, !tbaa !155 ; 3 uses
  %i.r = fsub double %i.q, %i.p                   ; 3 uses
  %i.s = load double, ptr %2, align 8, !tbaa !155 ; 7 uses
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
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !155 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !155
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
  store double %i.bf, ptr %1, align 8, !tbaa !155
  %i.bg = extractelement <2 x double> %i.be, i64 0
  store double %i.bg, ptr %2, align 8, !tbaa !155
  %i.bh = fmul double %.076.peel, %i.q
  %i.bi = fmul double %.076.peel, 2.000000e+00
  %i.bj = fmul double %i.bi, %i.s
  %i.bk = fmul double %.077.peel, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %.076.peel, double %i.bk)
  %i.bm = fmul double %.077.peel, %i.aj
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %.077.peel, double %i.bl)
  store double %i.bn, ptr %i.ai, align 8, !tbaa !155
  %i.bo = load double, ptr %i.ak, align 8, !tbaa !155
  %i.bp = fmul double %.077.peel, %i.bo
end_hunk_1
