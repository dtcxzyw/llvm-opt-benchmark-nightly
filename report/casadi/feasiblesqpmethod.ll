Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a

.epil.preheader225:                               ; preds = %._crit_edge139.unr-lcssa, %.lr.ph
  %.1137.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.ax, %._crit_edge139.unr-lcssa ]
  %lcmp.mod228 = icmp ne i64 %xtraiter226, 0
  call void @llvm.assume(i1 %lcmp.mod228)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader225
  %.1137.epil = phi i64 [ %.1137.epil.init, %.epil.preheader225 ], [ %i.bc, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader225 ], [ %epil.iter.next, %bb.j ]
  %i.ay = mul i64 %.1137.epil, %i.ab
  %i.az = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1137.epil
  store double %i.ba, ptr %i.bb, align 8, !tbaa !155
  %i.bc = add nuw nsw i64 %.1137.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter226
  br i1 %epil.iter.cmp.not, label %._crit_edge139, label %bb.j, !llvm.loop !1300

._crit_edge139:                                   ; preds = %bb.j, %._crit_edge139.unr-lcssa
  store double %i.z, ptr %i.aa, align 8, !tbaa !155
  %i.bd = icmp samesign ugt i64 %0, 2
  br i1 %i.bd, label %.lr.ph142.preheader, label %._crit_edge143

.lr.ph142.preheader:                              ; preds = %._crit_edge139
  %i.be = add nsw i64 %0, -3
  %xtraiter231 = and i64 %i.ac, 3                 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 3
  br i1 %i.bf, label %.lr.ph142.epil.preheader, label %.lr.ph142.preheader.new

.lr.ph142.preheader.new:                          ; preds = %.lr.ph142.preheader
  %unroll_iter235 = and i64 %i.ac, -4
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142, %.lr.ph142.preheader.new
  %.2140 = phi i64 [ 1, %.lr.ph142.preheader.new ], [ %i.by, %.lr.ph142 ] ; 6 uses
  %niter236 = phi i64 [ 0, %.lr.ph142.preheader.new ], [ %niter236.next.3, %.lr.ph142 ]
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
  %niter236.next.3 = add nuw i64 %niter236, 4     ; 2 uses
  %niter236.ncmp.3 = icmp eq i64 %niter236.next.3, %unroll_iter235
  br i1 %niter236.ncmp.3, label %._crit_edge143.loopexit.unr-lcssa, label %.lr.ph142, !llvm.loop !1301

._crit_edge143.loopexit.unr-lcssa:                ; preds = %.lr.ph142
  %lcmp.mod233.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod233.not, label %._crit_edge143, label %.lr.ph142.epil.preheader

.lr.ph142.epil.preheader:                         ; preds = %._crit_edge143.loopexit.unr-lcssa, %.lr.ph142.preheader
  %.2140.epil.init = phi i64 [ 1, %.lr.ph142.preheader ], [ %i.by, %._crit_edge143.loopexit.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %.lr.ph142.epil

.lr.ph142.epil:                                   ; preds = %.lr.ph142.epil, %.lr.ph142.epil.preheader
  %.2140.epil = phi i64 [ %i.ce, %.lr.ph142.epil ], [ %.2140.epil.init, %.lr.ph142.epil.preheader ] ; 3 uses
  %epil.iter232 = phi i64 [ %epil.iter232.next, %.lr.ph142.epil ], [ 0, %.lr.ph142.epil.preheader ]
  %i.ce = add nuw nsw i64 %.2140.epil, 1          ; 2 uses
  %i.cf = mul nuw nsw i64 %.2140.epil, %0
  %i.cg = getelementptr [8 x i8], ptr %1, i64 %i.ce
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !155
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.2140.epil
  store double %i.ci, ptr %i.cj, align 8, !tbaa !155
  %epil.iter232.next = add i64 %epil.iter232, 1   ; 2 uses
  %epil.iter232.cmp.not = icmp eq i64 %epil.iter232.next, %xtraiter231
  br i1 %epil.iter232.cmp.not, label %._crit_edge143, label %.lr.ph142.epil, !llvm.loop !1302

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
  %xtraiter237 = and i64 %0, 1
  %i.cr = icmp eq i64 %0, 1
  br i1 %i.cr, label %.lr.ph150.epil.preheader, label %.lr.ph150.preheader.new

.lr.ph150.preheader.new:                          ; preds = %.lr.ph150.preheader
  %unroll_iter241 = and i64 %0, 9223372036854775806
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
  %niter242.next.1 = add nuw nsw i64 %niter242, 2 ; 2 uses
  %niter242.ncmp.1 = icmp eq i64 %niter242.next.1, %unroll_iter241
  br i1 %niter242.ncmp.1, label %._crit_edge151.loopexit.unr-lcssa, label %.lr.ph150, !llvm.loop !1304

.lr.ph150:                                        ; preds = %.loopexit131.1, %.lr.ph150.preheader.new
  %.4149 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %i.da, %.loopexit131.1 ] ; 4 uses
  %niter242 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %niter242.next.1, %.loopexit131.1 ]
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
  %lcmp.mod239.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod239.not, label %._crit_edge151, label %.lr.ph150.epil.preheader

.lr.ph150.epil.preheader:                         ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph150.preheader
  %.4149.epil.init = phi i64 [ 0, %.lr.ph150.preheader ], [ %i.da, %._crit_edge151.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod240 = trunc i64 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod240)
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
  %8 = shl nsw i64 %0, 3
  %i.dy = sub nuw nsw i64 -8, %8
  %i.dz = shl i64 %0, 3
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge156
  %.5158 = phi i64 [ %i.iy, %._crit_edge156 ], [ 0, %.lr.ph160.preheader ]
  %.0122157 = phi ptr [ %i.eb, %._crit_edge156 ], [ %i.dv, %.lr.ph160.preheader ] ; 4 uses
  %i.ea = load i64, ptr %.0122157, align 8, !tbaa !210 ; 8 uses
  %i.eb = getelementptr inbounds i8, ptr %.0122157, i64 -24
  %i.ec = icmp sgt i64 %i.ea, 1
  br i1 %i.ec, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph160
  %i.ed = getelementptr inbounds nuw i8, ptr %.0122157, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !210
  %i.ef = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.0122157, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !210 ; 6 uses
  %i.ei = add nsw i64 %i.eh, %i.ea                ; 2 uses
  %i.ej = add nsw i64 %i.ea, -2
  %i.ek = add nsw i64 %i.ea, -1
  %i.el = add i64 %i.ek, %i.eh
  %i.em = mul i64 %i.dw, %i.el
  %i.en = add i64 %i.ea, %i.eh
  %i.eo = add nuw i64 %i.ea, 2305843009213693950
  %i.ep = add i64 %i.eo, %i.eh
  %i.eq = mul i64 %0, %i.ep
  %i.er = add i64 %i.en, %i.eq
  %i.es = add i64 %0, %i.er
  %i.et = shl i64 %i.es, 3
  %i.eu = mul i64 %i.dz, %i.ei
  %i.ev = add nsw i64 %i.ea, -3
  %i.ew = add i64 %i.ev, %i.eh
  %i.ex = getelementptr i8, ptr %1, i64 %i.em
  %i.ey = getelementptr i8, ptr %1, i64 %i.et
  %i.ez = getelementptr i8, ptr %1, i64 %i.eu
  %i.fa = add i64 %i.ea, %i.eh
  %i.fb = sub i64 %0, %i.fa
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit
  %.0121153 = phi ptr [ %i.ef, %.lr.ph155 ], [ %i.ff, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 2 uses
  %.2126152 = phi i64 [ 0, %.lr.ph155 ], [ %i.ix, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 7 uses
  %i.fc = mul i64 %i.dx, %.2126152                ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.ex, i64 %i.fc
  %i.fd = mul i64 %i.dy, %.2126152
  %scevgep189 = getelementptr i8, ptr %i.ey, i64 %i.fd
  %scevgep190 = getelementptr i8, ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds i8, ptr %.0121153, i64 -8
  %i.ff = getelementptr inbounds i8, ptr %.0121153, i64 -16 ; 2 uses
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !155 ; 7 uses
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !155 ; 8 uses
  %i.fi = sub i64 %i.ei, %.2126152                ; 5 uses
  %i.fj = add i64 %i.fi, -2                       ; 4 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fj ; 3 uses
  %i.fl = icmp sgt i64 %i.fi, 2
  br i1 %i.fl, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter243 = and i64 %i.fi, 1
  %i.fm = icmp eq i64 %i.ew, %.2126152
  br i1 %i.fm, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter248 = and i64 %i.fj, -2
  %i.fn = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.080.i = phi ptr [ %i.fk, %.lr.ph.i.preheader.new ], [ %i.gg, %.lr.ph.i ] ; 3 uses
  %niter249 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter249.next.1, %.lr.ph.i ]
  %i.fv = load <2 x double>, ptr %.080.i, align 8, !tbaa !155 ; 3 uses
  %i.fw = fneg <2 x double> %i.fv
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.fy = fmul <2 x double> %i.fo, %i.fx
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fv, <2 x double> %i.fy)
  store <2 x double> %i.fz, ptr %.080.i, align 8, !tbaa !155
  %i.ga = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %0 ; 3 uses
  %i.gb = load <2 x double>, ptr %i.ga, align 8, !tbaa !155 ; 3 uses
  %i.gc = fneg <2 x double> %i.gb
  %i.gd = shufflevector <2 x double> %i.gb, <2 x double> %i.gc, <2 x i32> <i32 1, i32 2>
  %i.ge = fmul <2 x double> %i.fs, %i.gd
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.gb, <2 x double> %i.ge)
  store <2 x double> %i.gf, ptr %i.ga, align 8, !tbaa !155
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %0 ; 3 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1305

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod245.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod245.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fk, %.lr.ph.i.preheader ], [ %i.gg, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod247 = trunc i64 %i.fi to i1
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.gh = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !155 ; 3 uses
  %i.gi = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = fneg <2 x double> %i.gh
  %i.gl = shufflevector <2 x double> %i.gh, <2 x double> %i.gk, <2 x i32> <i32 1, i32 2>
  %i.gm = fmul <2 x double> %i.gj, %i.gl
  %i.gn = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gh, <2 x double> %i.gm)
  store <2 x double> %i.gp, ptr %.080.i.epil.init, align 8, !tbaa !155
  %i.gq = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fk, %bb.l ], [ %i.gg, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gq, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gr = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.gs = getelementptr i8, ptr %i.gr, i64 8      ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !155 ; 2 uses
  %i.gu = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !155 ; 4 uses
  %i.gv = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gx = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x double> %i.gx, double %i.gt, i64 1
  %i.gz = fmul <2 x double> %i.gw, %i.gy          ; 2 uses
  %i.ha = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.gu, <2 x double> %i.gz) ; 3 uses
  %i.hd = extractelement <2 x double> %i.gu, i64 0
  %i.he = fneg double %i.hd
  %i.hf = fmul double %i.fg, %i.he
  %i.hg = extractelement <2 x double> %i.gu, i64 1
  %i.hh = call double @llvm.fmuladd.f64(double %i.fh, double %i.hg, double %i.hf)
  %i.hi = extractelement <2 x double> %i.gz, i64 0
  %i.hj = fneg double %i.hi
  %i.hk = call double @llvm.fmuladd.f64(double %i.fh, double %i.gt, double %i.hj)
  %i.hl = fneg <2 x double> %i.hc
  %i.hm = shufflevector <2 x double> %i.hc, <2 x double> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.hn = fmul <2 x double> %i.gw, %i.hm
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hc, <2 x double> %i.hn)
  store <2 x double> %i.ho, ptr %.0.lcssa.i, align 8, !tbaa !155
  %i.hp = fneg double %i.hh
  %i.hq = fmul double %i.fg, %i.hp
  %i.hr = call double @llvm.fmuladd.f64(double %i.fh, double %i.hk, double %i.hq)
  store double %i.hr, ptr %i.gs, align 8, !tbaa !155
  %i.hs = sub i64 %0, %i.fi                       ; 2 uses
  %i.ht = icmp sgt i64 %i.hs, 0
  br i1 %i.ht, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.hu = mul i64 %i.fj, %0
  %i.hv = getelementptr [8 x i8], ptr %1, i64 %i.hu
  %i.hw = getelementptr [8 x i8], ptr %i.hv, i64 %i.fj
  %i.hx = getelementptr i8, ptr %i.hw, i64 16     ; 5 uses
  %i.hy = add i64 %i.fb, %.2126152                ; 3 uses
  %min.iters.check = icmp ult i64 %i.hy, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %i.hx, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, -2                      ; 4 uses
  %i.hz = shl i64 %n.vec, 3
  %i.ia = getelementptr i8, ptr %i.hx, i64 %i.hz
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ib = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hx, i64 %i.ib ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325 ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.ic, align 8, !tbaa !155, !alias.scope !1325 ; 2 uses
  %i.id = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.id)
  store <2 x double> %i.ie, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325
  %i.if = fneg <2 x double> %wide.load
  %i.ig = fmul <2 x double> %broadcast.splat, %i.if
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.ig)
  store <2 x double> %i.ih, ptr %i.ic, align 8, !tbaa !155, !alias.scope !1325
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !1309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.hx, %vector.memcheck ], [ %i.hx, %.lr.ph84.preheader.i ], [ %i.ia, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.iv, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.iw, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.ij = load double, ptr %.182.i, align 8, !tbaa !155 ; 2 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !155 ; 2 uses
  %i.im = fneg double %i.ij
  %i.in = insertelement <2 x double> poison, double %i.il, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.im, i64 1
  %i.ip = fmul <2 x double> %i.gw, %i.io
  %i.iq = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.il, i64 1
  %i.is = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.ir, <2 x double> %i.ip) ; 2 uses
  %i.it = extractelement <2 x double> %i.is, i64 0
  store double %i.it, ptr %.182.i, align 8, !tbaa !155
  %i.iu = extractelement <2 x double> %i.is, i64 1
  store double %i.iu, ptr %i.ik, align 8, !tbaa !155
  %i.iv = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.iw = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.iw, %i.hs
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !1310

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.ix = add nuw nsw i64 %.2126152, 1
  %exitcond171.not = icmp eq i64 %.2126152, %i.ej
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.l, !llvm.loop !1311

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.iy = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.iy, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !1312

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.iz = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.ja = shl nsw i64 %0, 3                       ; 3 uses
  %i.jb = add i64 %i.ja, -16                      ; 2 uses
  %i.jc = mul i64 %0, %i.jb
  %i.jd = mul i64 %0, -8
  %i.je = shl i64 %0, 4                           ; 2 uses
  %i.jf = shl i64 %0, 3
  %i.jg = add i64 %i.ja, 8
  %i.jh = add i64 %0, -2
  %i.ji = getelementptr i8, ptr %1, i64 %i.ja
  %i.jj = getelementptr i8, ptr %i.ji, i64 -8
  %i.jk = getelementptr i8, ptr %1, i64 %i.jc
  %i.jl = getelementptr i8, ptr %1, i64 %i.je
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  %i.jn = getelementptr i8, ptr %1, i64 %i.je
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %i.jp = getelementptr i8, ptr %6, i64 %i.jb
  %stride.check = icmp slt i64 %0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 11 uses
  %.0123162 = phi i64 [ %i.iz, %.lr.ph164 ], [ %i.pb, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.jq = add i64 %indvar, 1                      ; 3 uses
  %i.jr = sub i64 %i.jh, %indvar                  ; 5 uses
  %i.js = mul i64 %indvar, -8                     ; 2 uses
  %scevgep196 = getelementptr i8, ptr %i.jj, i64 %i.js ; 2 uses
  %i.jt = mul i64 %i.jd, %indvar
  %scevgep197 = getelementptr i8, ptr %i.jk, i64 %i.jt ; 2 uses
  %i.ju = mul i64 %i.jf, %indvar
  %scevgep198 = getelementptr i8, ptr %i.jm, i64 %i.ju
  %i.jv = mul i64 %i.jg, %indvar
  %scevgep199 = getelementptr i8, ptr %i.jo, i64 %i.jv
  %scevgep200 = getelementptr i8, ptr %i.jp, i64 %i.js
  %i.jw = xor i64 %.0123162, -1
  %i.jx = add i64 %0, %i.jw                       ; 3 uses
  %i.jy = mul nsw i64 %i.jx, %0
  %i.jz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jy ; 8 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.jz, double noundef %i.kb)
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 6 uses
  %i.ke = load double, ptr %i.ka, align 8, !tbaa !155 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.kf = shl nuw nsw i64 %.0123162, 3
  %i.kg = add nuw nsw i64 %i.kf, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.kg, i1 false), !tbaa !155
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %i.kh = icmp sgt i64 %i.jx, 1
  br i1 %i.kh, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter250 = and i64 %i.jr, 1
  %i.ki = icmp eq i64 %.0123162, 0
  br i1 %i.ki, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter254 = and i64 %i.jr, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.kj = icmp eq i64 %indvar, 0
  %unroll_iter267 = and i64 %i.jq, -2
  %i.kk = and i64 %indvar, 1
  %lcmp.mod265.not.not = icmp eq i64 %i.kk, 0
  %lcmp.mod266 = trunc i64 %i.jq to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.lk, %._crit_edge.us.i ], [ %i.kd, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.ll, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.kl = load double, ptr %.046.us.i, align 8, !tbaa !155
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !155
  %i.ko = call double @llvm.fmuladd.f64(double %i.ke, double %i.kl, double %i.kn) ; 3 uses
  store double %i.ko, ptr %i.km, align 8, !tbaa !155
  br i1 %i.kj, label %.epil.preheader262, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kp = phi double [ %i.lc, %.lr.ph.us.i.new ], [ %i.ko, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.ld, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter268 = phi i64 [ %niter268.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !155
  %i.ks = fmul double %i.ke, %i.kr
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.03944.us.i
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !155
  %i.kv = call double @llvm.fmuladd.f64(double %i.ks, double %i.ku, double %i.kp) ; 2 uses
  store double %i.kv, ptr %i.km, align 8, !tbaa !155
  %i.kw = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !155
  %i.kz = fmul double %i.ke, %i.ky
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kw
  %i.lb = load double, ptr %i.la, align 8, !tbaa !155
  %i.lc = call double @llvm.fmuladd.f64(double %i.kz, double %i.lb, double %i.kv) ; 3 uses
  store double %i.lc, ptr %i.km, align 8, !tbaa !155
  %i.ld = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter268.next.1 = add nuw i64 %niter268, 2     ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !1313

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod265.not.not, label %.epil.preheader262, label %._crit_edge.us.i

.epil.preheader262:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.ko, %.lr.ph.us.i ], [ %i.lc, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.ld, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.lf = load double, ptr %i.le, align 8, !tbaa !155
  %i.lg = fmul double %i.ke, %i.lf
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.03944.us.i.epil.init
  %i.li = load double, ptr %i.lh, align 8, !tbaa !155
  %i.lj = call double @llvm.fmuladd.f64(double %i.lg, double %i.li, double %.epil.init)
  store double %i.lj, ptr %i.km, align 8, !tbaa !155
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader262
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.ll = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !1314

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %i.lm = add nuw i64 %indvar, 1                  ; 2 uses
  %min.iters.check208 = icmp ult i64 %indvar, 3
  %bound0201 = icmp ult ptr %scevgep196, %scevgep199
  %bound1202 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict203 = and i1 %bound0201, %bound1202
  %i.ln = or i1 %found.conflict203, %stride.check
  %bound0204 = icmp ult ptr %scevgep196, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx = or i1 %i.ln, %found.conflict206
  %n.vec210 = and i64 %i.lm, -4                   ; 3 uses
  %i.lo = or disjoint i64 %n.vec210, 1
  %cmp.n221 = icmp eq i64 %i.lm, %n.vec210
  %i.lp = sub i64 %0, %.0123162
  %xtraiter269 = and i64 %i.lp, 1
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %i.ne, %._crit_edge.us54.i ], [ %i.kd, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %i.nf, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !155
  %i.ls = load double, ptr %.150.us.i, align 8, !tbaa !155
  %i.lt = fsub double %i.ls, %i.lr
  store double %i.lt, ptr %.150.us.i, align 8, !tbaa !155
  %brmerge = select i1 %min.iters.check208, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph207.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.us53.i
  %i.lu = load double, ptr %i.lq, align 8, !tbaa !155, !alias.scope !1326
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.lu, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next219, %vector.body211 ] ; 2 uses
  %i.lv = or disjoint i64 %index212, 1            ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load213 = load <2 x double>, ptr %i.lw, align 8, !tbaa !155, !alias.scope !1327
  %wide.load214 = load <2 x double>, ptr %i.lx, align 8, !tbaa !155, !alias.scope !1327
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.lv ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.ly, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %wide.load216 = load <2 x double>, ptr %i.lz, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %i.ma = fneg <2 x double> %wide.load213
  %i.mb = fneg <2 x double> %wide.load214
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %broadcast.splat218, <2 x double> %wide.load215)
  %i.md = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %broadcast.splat218, <2 x double> %wide.load216)
  store <2 x double> %i.mc, ptr %i.ly, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  store <2 x double> %i.md, ptr %i.lz, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %index.next219 = add nuw i64 %index212, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next219, %n.vec210
  br i1 %i.me, label %middle.block220, label %vector.body211, !llvm.loop !1319

middle.block220:                                  ; preds = %vector.body211
  br i1 %cmp.n221, label %._crit_edge.us54.i, label %scalar.ph207.preheader

scalar.ph207.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block220
  %.14048.us.i.ph = phi i64 [ %i.lo, %middle.block220 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod270.not, label %scalar.ph207.prol.loopexit, label %scalar.ph207.prol

scalar.ph207.prol:                                ; preds = %scalar.ph207.preheader
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.14048.us.i.ph
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !155
  %i.mh = load double, ptr %i.lq, align 8, !tbaa !155
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !155
  %i.mk = fneg double %i.mg
  %i.ml = call double @llvm.fmuladd.f64(double %i.mk, double %i.mh, double %i.mj)
  store double %i.ml, ptr %i.mi, align 8, !tbaa !155
  %i.mm = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph207.prol.loopexit

scalar.ph207.prol.loopexit:                       ; preds = %scalar.ph207.prol, %scalar.ph207.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph207.preheader ], [ %i.mm, %scalar.ph207.prol ]
  %i.mn = icmp eq i64 %i.jq, %.14048.us.i.ph
  br i1 %i.mn, label %._crit_edge.us54.i, label %scalar.ph207

scalar.ph207:                                     ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207
  %.14048.us.i = phi i64 [ %i.nd, %scalar.ph207 ], [ %.14048.us.i.unr, %scalar.ph207.prol.loopexit ] ; 4 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.14048.us.i
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !155
  %i.mq = load double, ptr %i.lq, align 8, !tbaa !155
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !155
  %i.mt = fneg double %i.mp
end_hunk_0
