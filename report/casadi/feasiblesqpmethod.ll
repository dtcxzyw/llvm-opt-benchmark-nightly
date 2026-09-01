Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
  store double %i.bk, ptr %i.bl, align 8, !tbaa !152
  %i.bm = add nuw nsw i64 %.2140, 2               ; 3 uses
  %i.bn = mul nuw nsw i64 %i.bg, %0
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %i.bm
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !152
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bg
  store double %i.bq, ptr %i.br, align 8, !tbaa !152
  %i.bs = add nuw nsw i64 %.2140, 3               ; 3 uses
  %i.bt = mul nuw nsw i64 %i.bm, %0
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %i.bs
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !152
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bm
  store double %i.bw, ptr %i.bx, align 8, !tbaa !152
  %i.by = add nuw nsw i64 %.2140, 4               ; 3 uses
  %i.bz = mul nuw nsw i64 %i.bs, %0
  %i.ca = getelementptr [8 x i8], ptr %1, i64 %i.by
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !152
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bs
  store double %i.cc, ptr %i.cd, align 8, !tbaa !152
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
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !152
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.2140.epil
  store double %i.ci, ptr %i.cj, align 8, !tbaa !152
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
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !152 ; 2 uses
  %i.cu = call nsz double @llvm.fabs.f64(double %i.ct)
  %i.cv = select nsz i1 %.not.i128, double %i.ct, double %i.cu
  %i.cw = call nsz noundef double @llvm.maxnum.f64(double %2, double %i.cv)
  %i.cx = mul i64 %.3144, %i.cn
  %i.cy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cx
  store double %i.cw, ptr %i.cy, align 8, !tbaa !152
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
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.1, i8 0, i64 %i.dd, i1 false), !tbaa !152
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
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.dj, i1 false), !tbaa !152
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
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.dp, i1 false), !tbaa !152
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph148.epil, %.lr.ph150.epil.preheader, %.preheader132
  %i.ds = load i64, ptr %7, align 8, !tbaa !253   ; 3 uses
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
  %.5158 = phi i64 [ %i.ik, %._crit_edge156 ], [ 0, %.lr.ph160.preheader ]
  %.0122157 = phi ptr [ %i.ec, %._crit_edge156 ], [ %i.dv, %.lr.ph160.preheader ] ; 4 uses
  %i.eb = load i64, ptr %.0122157, align 8, !tbaa !253 ; 8 uses
  %i.ec = getelementptr inbounds i8, ptr %.0122157, i64 -24
  %i.ed = icmp sgt i64 %i.eb, 1
  br i1 %i.ed, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph160
  %i.ee = getelementptr inbounds nuw i8, ptr %.0122157, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !253
  %i.eg = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.0122157, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !253 ; 6 uses
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
  %i.ex = sub i64 %0, %i.ew
  %i.ey = add nsw i64 %i.eb, -3
  %i.ez = add i64 %i.ey, %i.ei
  %i.fa = getelementptr i8, ptr %1, i64 %i.en
  %i.fb = getelementptr i8, ptr %1, i64 %i.eu
  %i.fc = getelementptr i8, ptr %1, i64 %i.ev
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit
  %.0121153 = phi ptr [ %i.eg, %.lr.ph155 ], [ %9, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 2 uses
  %.2126152 = phi i64 [ 0, %.lr.ph155 ], [ %i.ij, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 7 uses
  %i.fd = add i64 %i.ex, %.2126152                ; 3 uses
  %i.fe = mul i64 %i.dx, %.2126152                ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.fa, i64 %i.fe
  %i.ff = mul i64 %i.dz, %.2126152
  %scevgep189 = getelementptr i8, ptr %i.fb, i64 %i.ff
  %scevgep190 = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.fg = getelementptr inbounds i8, ptr %.0121153, i64 -8
  %8 = load double, ptr %i.fg, align 8, !tbaa !152 ; 9 uses
  %9 = getelementptr inbounds i8, ptr %.0121153, i64 -16 ; 2 uses
  %10 = load double, ptr %9, align 8, !tbaa !152  ; 8 uses
  %i.fh = sub i64 %i.ej, %.2126152                ; 5 uses
  %i.fi = add i64 %i.fh, -2                       ; 4 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fi ; 3 uses
  %i.fk = icmp sgt i64 %i.fh, 2
  br i1 %i.fk, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter244 = and i64 %i.fh, 1
  %i.fl = icmp eq i64 %i.ez, %.2126152
  br i1 %i.fl, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter249 = and i64 %i.fi, -2
  %11 = insertelement <2 x double> poison, double %8, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x double> poison, double %10, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = insertelement <2 x double> poison, double %8, i64 0
  %i.fm = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x double> poison, double %10, i64 0
  %i.fn = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.080.i = phi ptr [ %i.fj, %.lr.ph.i.preheader.new ], [ %i.fz, %.lr.ph.i ] ; 3 uses
  %niter250 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter250.next.1, %.lr.ph.i ]
  %i.fo = load <2 x double>, ptr %.080.i, align 8, !tbaa !152 ; 3 uses
  %i.fp = fneg <2 x double> %i.fo
  %i.fq = shufflevector <2 x double> %i.fo, <2 x double> %i.fp, <2 x i32> <i32 1, i32 2>
  %i.fr = fmul <2 x double> %12, %i.fq
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %i.fo, <2 x double> %i.fr)
  store <2 x double> %i.fs, ptr %.080.i, align 8, !tbaa !152
  %i.ft = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %0 ; 3 uses
  %i.fu = load <2 x double>, ptr %i.ft, align 8, !tbaa !152 ; 3 uses
  %i.fv = fneg <2 x double> %i.fu
  %i.fw = shufflevector <2 x double> %i.fu, <2 x double> %i.fv, <2 x i32> <i32 1, i32 2>
  %i.fx = fmul <2 x double> %i.fm, %i.fw
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fu, <2 x double> %i.fx)
  store <2 x double> %i.fy, ptr %i.ft, align 8, !tbaa !152
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %0 ; 3 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1305

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod246.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod246.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fj, %.lr.ph.i.preheader ], [ %i.fz, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod248 = trunc i64 %i.fh to i1
  call void @llvm.assume(i1 %lcmp.mod248)
  %i.ga = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !152 ; 3 uses
  %17 = insertelement <2 x double> poison, double %8, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fneg <2 x double> %i.ga
  %i.gc = shufflevector <2 x double> %i.ga, <2 x double> %i.gb, <2 x i32> <i32 1, i32 2>
  %i.gd = fmul <2 x double> %18, %i.gc
  %19 = insertelement <2 x double> poison, double %10, i64 0
  %i.ge = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.ga, <2 x double> %i.gd)
  store <2 x double> %i.gf, ptr %.080.i.epil.init, align 8, !tbaa !152
  %i.gg = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fj, %bb.l ], [ %i.fz, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gg, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gh = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.gi = getelementptr i8, ptr %i.gh, i64 8      ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !152 ; 2 uses
  %i.gk = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !152 ; 3 uses
  %i.gl = fmul double %8, %i.gj
  %i.gm = extractelement <2 x double> %i.gk, i64 1 ; 2 uses
  %i.gn = fmul double %8, %i.gm                   ; 2 uses
  %20 = insertelement <2 x double> poison, double %10, i64 0
  %i.go = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gp = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.gl, i64 1
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gk, <2 x double> %i.gq) ; 3 uses
  %i.gs = extractelement <2 x double> %i.gk, i64 0
  %i.gt = fneg double %i.gs
  %i.gu = fmul double %8, %i.gt
  %i.gv = call double @llvm.fmuladd.f64(double %10, double %i.gm, double %i.gu)
  %i.gw = fneg double %i.gn
  %i.gx = call double @llvm.fmuladd.f64(double %10, double %i.gj, double %i.gw)
  %21 = insertelement <2 x double> poison, double %8, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = fneg <2 x double> %i.gr
  %i.gz = shufflevector <2 x double> %i.gr, <2 x double> %i.gy, <2 x i32> <i32 1, i32 2>
  %i.ha = fmul <2 x double> %22, %i.gz
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gr, <2 x double> %i.ha)
  store <2 x double> %i.hb, ptr %.0.lcssa.i, align 8, !tbaa !152
  %i.hc = fneg double %i.gv
  %i.hd = fmul double %8, %i.hc
  %i.he = call double @llvm.fmuladd.f64(double %10, double %i.gx, double %i.hd)
  store double %i.he, ptr %i.gi, align 8, !tbaa !152
  %i.hf = sub i64 %0, %i.fh                       ; 2 uses
  %i.hg = icmp sgt i64 %i.hf, 0
  br i1 %i.hg, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.hh = mul i64 %i.fi, %0
  %i.hi = getelementptr [8 x i8], ptr %1, i64 %i.hh
  %i.hj = getelementptr [8 x i8], ptr %i.hi, i64 %i.fi
  %i.hk = getelementptr i8, ptr %i.hj, i64 16     ; 5 uses
  %min.iters.check = icmp ult i64 %i.fd, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %i.hk, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fd, -2                      ; 4 uses
  %i.hl = shl i64 %n.vec, 3
  %i.hm = getelementptr i8, ptr %i.hk, i64 %i.hl
  %broadcast.splatinsert = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hn = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hk, i64 %i.hn ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !152, !alias.scope !1306, !noalias !1309 ; 2 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.ho, align 8, !tbaa !152, !alias.scope !1309 ; 2 uses
  %i.hp = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.hp)
  store <2 x double> %i.hq, ptr %next.gep, align 8, !tbaa !152, !alias.scope !1306, !noalias !1309
  %i.hr = fneg <2 x double> %wide.load
  %i.hs = fmul <2 x double> %broadcast.splat, %i.hr
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.hs)
  store <2 x double> %i.ht, ptr %i.ho, align 8, !tbaa !152, !alias.scope !1309
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !1311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fd, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.hk, %vector.memcheck ], [ %i.hk, %.lr.ph84.preheader.i ], [ %i.hm, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.ih, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.ii, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.hv = load double, ptr %.182.i, align 8, !tbaa !152 ; 2 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !152 ; 2 uses
  %i.hy = fneg double %i.hv
  %i.hz = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %i.hy, i64 1
  %i.ib = fmul <2 x double> %22, %i.ia
  %i.ic = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.id = insertelement <2 x double> %i.ic, double %i.hx, i64 1
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.id, <2 x double> %i.ib) ; 2 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0
  store double %i.if, ptr %.182.i, align 8, !tbaa !152
  %i.ig = extractelement <2 x double> %i.ie, i64 1
  store double %i.ig, ptr %i.hw, align 8, !tbaa !152
  %i.ih = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.ii = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.ii, %i.hf
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !1312

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.ij = add nuw nsw i64 %.2126152, 1
  %exitcond171.not = icmp eq i64 %.2126152, %i.ek
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.l, !llvm.loop !1313

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.ik = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.ik, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !1314

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.il = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.im = shl nsw i64 %0, 3                       ; 3 uses
  %i.in = add i64 %i.im, -16                      ; 2 uses
  %i.io = mul i64 %0, %i.in
  %i.ip = mul i64 %0, -8
  %i.iq = shl i64 %0, 4                           ; 2 uses
  %i.ir = shl i64 %0, 3
  %i.is = add i64 %i.im, 8
  %i.it = add i64 %0, -2
  %i.iu = getelementptr i8, ptr %1, i64 %i.im
  %i.iv = getelementptr i8, ptr %i.iu, i64 -8
  %i.iw = getelementptr i8, ptr %1, i64 %i.io
  %i.ix = getelementptr i8, ptr %1, i64 %i.iq
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %i.iz = getelementptr i8, ptr %1, i64 %i.iq
  %i.ja = getelementptr i8, ptr %i.iz, i64 16
  %i.jb = getelementptr i8, ptr %6, i64 %i.in
  %stride.check207 = icmp slt i64 %0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 10 uses
  %.0123162 = phi i64 [ %i.il, %.lr.ph164 ], [ %i.on, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.jc = add i64 %indvar, 1                      ; 3 uses
  %i.jd = sub i64 %i.it, %indvar                  ; 5 uses
  %i.je = add i64 %indvar, 1                      ; 3 uses
  %i.jf = mul i64 %indvar, -8                     ; 2 uses
  %scevgep196 = getelementptr i8, ptr %i.iv, i64 %i.jf ; 2 uses
  %i.jg = mul i64 %i.ip, %indvar
  %scevgep197 = getelementptr i8, ptr %i.iw, i64 %i.jg ; 2 uses
  %i.jh = mul i64 %i.ir, %indvar
  %scevgep198 = getelementptr i8, ptr %i.iy, i64 %i.jh
  %i.ji = mul i64 %i.is, %indvar
  %scevgep199 = getelementptr i8, ptr %i.ja, i64 %i.ji
  %scevgep200 = getelementptr i8, ptr %i.jb, i64 %i.jf
  %i.jj = xor i64 %.0123162, -1
  %i.jk = add i64 %0, %i.jj                       ; 3 uses
  %i.jl = mul nsw i64 %i.jk, %0
  %i.jm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jl ; 8 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !152
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.jm, double noundef %i.jo)
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 6 uses
  %i.jr = load double, ptr %i.jn, align 8, !tbaa !152 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.js = shl nuw nsw i64 %.0123162, 3
  %i.jt = add nuw i64 %i.js, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.jt, i1 false), !tbaa !152
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %i.ju = icmp sgt i64 %i.jk, 1
  br i1 %i.ju, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter251 = and i64 %i.jd, 1
  %i.jv = icmp eq i64 %.0123162, 0
  br i1 %i.jv, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter255 = and i64 %i.jd, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.jw = icmp eq i64 %indvar, 0
  %unroll_iter268 = and i64 %i.jc, -2
  %i.jx = and i64 %indvar, 1
  %lcmp.mod266.not.not = icmp eq i64 %i.jx, 0
  %lcmp.mod267 = trunc i64 %i.jc to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.kx, %._crit_edge.us.i ], [ %i.jq, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.ky, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.jy = load double, ptr %.046.us.i, align 8, !tbaa !152
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !152
  %i.kb = call double @llvm.fmuladd.f64(double %i.jr, double %i.jy, double %i.ka) ; 3 uses
  store double %i.kb, ptr %i.jz, align 8, !tbaa !152
  br i1 %i.jw, label %.epil.preheader263, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kc = phi double [ %i.kp, %.lr.ph.us.i.new ], [ %i.kb, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.kq, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter269 = phi i64 [ %niter269.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !152
  %i.kf = fmul double %i.jr, %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.03944.us.i
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !152
  %i.ki = call double @llvm.fmuladd.f64(double %i.kf, double %i.kh, double %i.kc) ; 2 uses
  store double %i.ki, ptr %i.jz, align 8, !tbaa !152
  %i.kj = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.kj
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !152
  %i.km = fmul double %i.jr, %i.kl
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.kj
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !152
  %i.kp = call double @llvm.fmuladd.f64(double %i.km, double %i.ko, double %i.ki) ; 3 uses
  store double %i.kp, ptr %i.jz, align 8, !tbaa !152
  %i.kq = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter269.next.1 = add nuw i64 %niter269, 2     ; 2 uses
  %niter269.ncmp.1 = icmp eq i64 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !1315

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod266.not.not, label %.epil.preheader263, label %._crit_edge.us.i

.epil.preheader263:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.kb, %.lr.ph.us.i ], [ %i.kp, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.kq, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !152
  %i.kt = fmul double %i.jr, %i.ks
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.03944.us.i.epil.init
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !152
  %i.kw = call double @llvm.fmuladd.f64(double %i.kt, double %i.kv, double %.epil.init)
  store double %i.kw, ptr %i.jz, align 8, !tbaa !152
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader263
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.ky = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !1316

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %min.iters.check209 = icmp ult i64 %i.je, 6
  %bound0201 = icmp ult ptr %scevgep196, %scevgep199
  %bound1202 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict203 = and i1 %bound0201, %bound1202
  %bound0204 = icmp ult ptr %scevgep196, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197
  %found.conflict206 = and i1 %bound0204, %bound1205
  %i.kz = or i1 %found.conflict206, %stride.check207
  %conflict.rdx = or i1 %found.conflict203, %i.kz
  %n.vec211 = and i64 %i.je, -4                   ; 3 uses
  %i.la = or disjoint i64 %n.vec211, 1
  %cmp.n222 = icmp eq i64 %i.je, %n.vec211
  %i.lb = sub i64 %0, %.0123162
  %xtraiter270 = and i64 %i.lb, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %i.mq, %._crit_edge.us54.i ], [ %i.jq, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %i.mr, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !152
  %i.le = load double, ptr %.150.us.i, align 8, !tbaa !152
  %i.lf = fsub double %i.le, %i.ld
  store double %i.lf, ptr %.150.us.i, align 8, !tbaa !152
  %brmerge = select i1 %min.iters.check209, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph208.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph.us53.i
  %i.lg = load double, ptr %i.lc, align 8, !tbaa !152, !alias.scope !1317
  %broadcast.splatinsert218 = insertelement <2 x double> poison, double %i.lg, i64 0
  %broadcast.splat219 = shufflevector <2 x double> %broadcast.splatinsert218, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next220, %vector.body212 ] ; 2 uses
  %i.lh = or disjoint i64 %index213, 1            ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load214 = load <2 x double>, ptr %i.li, align 8, !tbaa !152, !alias.scope !1320
  %wide.load215 = load <2 x double>, ptr %i.lj, align 8, !tbaa !152, !alias.scope !1320
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.lh ; 3 uses
end_hunk_0
