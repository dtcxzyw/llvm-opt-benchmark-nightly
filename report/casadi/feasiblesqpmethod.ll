Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
  call void @llvm.assume(i1 %lcmp.mod240)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader237
  %.1137.epil = phi i64 [ %.1137.epil.init, %.epil.preheader237 ], [ %i.bc, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader237 ], [ %epil.iter.next, %bb.j ]
  %i.ay = mul i64 %.1137.epil, %i.ab
  %i.az = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1137.epil
  store double %i.ba, ptr %i.bb, align 8, !tbaa !155
  %i.bc = add nuw nsw i64 %.1137.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter238
  br i1 %epil.iter.cmp.not, label %._crit_edge139, label %bb.j, !llvm.loop !1300

._crit_edge139:                                   ; preds = %bb.j, %._crit_edge139.unr-lcssa
  store double %i.z, ptr %i.aa, align 8, !tbaa !155
  %i.bd = icmp samesign ugt i64 %0, 2
  br i1 %i.bd, label %.lr.ph142.preheader, label %._crit_edge143

.lr.ph142.preheader:                              ; preds = %._crit_edge139
  %i.be = add nsw i64 %0, -3
  %xtraiter243 = and i64 %i.ac, 3                 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 3
  br i1 %i.bf, label %.lr.ph142.epil.preheader, label %.lr.ph142.preheader.new

.lr.ph142.preheader.new:                          ; preds = %.lr.ph142.preheader
  %unroll_iter247 = and i64 %i.ac, -4
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142, %.lr.ph142.preheader.new
  %.2140 = phi i64 [ 1, %.lr.ph142.preheader.new ], [ %i.by, %.lr.ph142 ] ; 6 uses
  %niter248 = phi i64 [ 0, %.lr.ph142.preheader.new ], [ %niter248.next.3, %.lr.ph142 ]
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
  %niter248.next.3 = add nuw i64 %niter248, 4     ; 2 uses
  %niter248.ncmp.3 = icmp eq i64 %niter248.next.3, %unroll_iter247
  br i1 %niter248.ncmp.3, label %._crit_edge143.loopexit.unr-lcssa, label %.lr.ph142, !llvm.loop !1301

._crit_edge143.loopexit.unr-lcssa:                ; preds = %.lr.ph142
  %lcmp.mod245.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod245.not, label %._crit_edge143, label %.lr.ph142.epil.preheader

.lr.ph142.epil.preheader:                         ; preds = %._crit_edge143.loopexit.unr-lcssa, %.lr.ph142.preheader
  %.2140.epil.init = phi i64 [ 1, %.lr.ph142.preheader ], [ %i.by, %._crit_edge143.loopexit.unr-lcssa ]
  %lcmp.mod246 = icmp ne i64 %xtraiter243, 0
  call void @llvm.assume(i1 %lcmp.mod246)
  br label %.lr.ph142.epil

.lr.ph142.epil:                                   ; preds = %.lr.ph142.epil, %.lr.ph142.epil.preheader
  %.2140.epil = phi i64 [ %i.ce, %.lr.ph142.epil ], [ %.2140.epil.init, %.lr.ph142.epil.preheader ] ; 3 uses
  %epil.iter244 = phi i64 [ %epil.iter244.next, %.lr.ph142.epil ], [ 0, %.lr.ph142.epil.preheader ]
  %i.ce = add nuw nsw i64 %.2140.epil, 1          ; 2 uses
  %i.cf = mul nuw nsw i64 %.2140.epil, %0
  %i.cg = getelementptr [8 x i8], ptr %1, i64 %i.ce
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !155
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.2140.epil
  store double %i.ci, ptr %i.cj, align 8, !tbaa !155
  %epil.iter244.next = add i64 %epil.iter244, 1   ; 2 uses
  %epil.iter244.cmp.not = icmp eq i64 %epil.iter244.next, %xtraiter243
  br i1 %epil.iter244.cmp.not, label %._crit_edge143, label %.lr.ph142.epil, !llvm.loop !1302

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
  %xtraiter249 = and i64 %0, 1
  %i.cr = icmp eq i64 %0, 1
  br i1 %i.cr, label %.lr.ph150.epil.preheader, label %.lr.ph150.preheader.new

.lr.ph150.preheader.new:                          ; preds = %.lr.ph150.preheader
  %unroll_iter253 = and i64 %0, 9223372036854775806
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
  %niter254.next.1 = add nuw nsw i64 %niter254, 2 ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %._crit_edge151.loopexit.unr-lcssa, label %.lr.ph150, !llvm.loop !1304

.lr.ph150:                                        ; preds = %.loopexit131.1, %.lr.ph150.preheader.new
  %.4149 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %i.da, %.loopexit131.1 ] ; 4 uses
  %niter254 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %niter254.next.1, %.loopexit131.1 ]
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
  %lcmp.mod251.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod251.not, label %._crit_edge151, label %.lr.ph150.epil.preheader

.lr.ph150.epil.preheader:                         ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph150.preheader
  %.4149.epil.init = phi i64 [ 0, %.lr.ph150.preheader ], [ %i.da, %._crit_edge151.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod252 = trunc i64 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod252)
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
  %i.dw = shl i64 %0, 3                           ; 2 uses
  %i.dx = sub nuw nsw i64 -8, %i.dw
  %i.dy = mul i64 %0, -8
  %i.dz = shl i64 %0, 3
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge156
  %.5158 = phi i64 [ %i.jb, %._crit_edge156 ], [ 0, %.lr.ph160.preheader ]
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
  %i.ek = mul i64 %i.dw, %i.ei
  %i.el = add i64 %i.ea, %i.eh
  %i.em = add nuw i64 %i.ea, 2305843009213693950
  %i.en = add i64 %i.em, %i.eh
  %i.eo = mul i64 %0, %i.en
  %i.ep = add i64 %i.el, %i.eo
  %i.eq = add i64 %0, %i.ep
  %i.er = shl i64 %i.eq, 3
  %i.es = add nsw i64 %i.ea, -1
  %i.et = add i64 %i.es, %i.eh
  %i.eu = mul i64 %i.dz, %i.et
  %i.ev = add nsw i64 %i.ea, -3
  %i.ew = add i64 %i.ev, %i.eh
  %i.ex = add i64 %i.ea, %i.eh
  %i.ey = sub i64 %0, %i.ex
  %i.ez = getelementptr i8, ptr %1, i64 %i.eu
  %i.fa = getelementptr i8, ptr %1, i64 %i.er
  %i.fb = getelementptr i8, ptr %1, i64 %i.ek
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit
  %.0121153 = phi ptr [ %i.ef, %.lr.ph155 ], [ %i.fd, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 2 uses
  %.2126152 = phi i64 [ 0, %.lr.ph155 ], [ %i.ja, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 7 uses
  %i.fc = getelementptr inbounds i8, ptr %.0121153, i64 -8
  %i.fd = getelementptr inbounds i8, ptr %.0121153, i64 -16 ; 2 uses
  %i.fe = load double, ptr %i.fc, align 8, !tbaa !155 ; 7 uses
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !155 ; 8 uses
  %i.fg = sub i64 %i.ei, %.2126152                ; 5 uses
  %i.fh = add i64 %i.fg, -2                       ; 4 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fh ; 3 uses
  %i.fj = icmp sgt i64 %i.fg, 2
  br i1 %i.fj, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter255 = and i64 %i.fg, 1
  %i.fk = icmp eq i64 %i.ew, %.2126152
  br i1 %i.fk, label %.lr.ph.i.epil.preheader.a, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter260 = and i64 %i.fh, -2
  %i.fl = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i.preheader.new
  %.080.i.a = phi ptr [ %i.fi, %.lr.ph.i.preheader.new ], [ %i.ge, %.lr.ph.i.a ] ; 3 uses
  %niter261 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter261.next.1, %.lr.ph.i.a ]
  %i.ft = load <2 x double>, ptr %.080.i.a, align 8, !tbaa !155 ; 3 uses
  %i.fu = fneg <2 x double> %i.ft
  %i.fv = shufflevector <2 x double> %i.ft, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.fw = fmul <2 x double> %i.fm, %i.fv
  %i.fx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.ft, <2 x double> %i.fw)
  store <2 x double> %i.fx, ptr %.080.i.a, align 8, !tbaa !155
  %i.fy = getelementptr inbounds [8 x i8], ptr %.080.i.a, i64 %0 ; 3 uses
  %i.fz = load <2 x double>, ptr %i.fy, align 8, !tbaa !155 ; 3 uses
  %i.ga = fneg <2 x double> %i.fz
  %i.gb = shufflevector <2 x double> %i.fz, <2 x double> %i.ga, <2 x i32> <i32 1, i32 2>
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fz, <2 x double> %i.gc)
  store <2 x double> %i.gd, ptr %i.fy, align 8, !tbaa !155
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %0 ; 3 uses
  %niter261.next.1 = add i64 %niter261, 2         ; 2 uses
  %niter261.ncmp.1 = icmp eq i64 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa.a, label %.lr.ph.i.a, !llvm.loop !1305

._crit_edge.i.loopexit.unr-lcssa.a:               ; preds = %.lr.ph.i.a
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader.a

.lr.ph.i.epil.preheader.a:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa.a, %.lr.ph.i.preheader
  %.080.i.epil.init.a = phi ptr [ %i.fi, %.lr.ph.i.preheader ], [ %i.ge, %._crit_edge.i.loopexit.unr-lcssa.a ] ; 3 uses
  %lcmp.mod259 = trunc i64 %i.fg to i1
  call void @llvm.assume(i1 %lcmp.mod259)
  %i.gf = load <2 x double>, ptr %.080.i.epil.init.a, align 8, !tbaa !155 ; 3 uses
  %i.gg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = fneg <2 x double> %i.gf
  %i.gj = shufflevector <2 x double> %i.gf, <2 x double> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.gk = fmul <2 x double> %i.gh, %i.gj
  %i.gl = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gf, <2 x double> %i.gk)
  store <2 x double> %i.gn, ptr %.080.i.epil.init.a, align 8, !tbaa !155
  %i.go = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init.a, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader.a, %._crit_edge.i.loopexit.unr-lcssa.a, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fi, %bb.l ], [ %i.ge, %._crit_edge.i.loopexit.unr-lcssa.a ], [ %i.go, %.lr.ph.i.epil.preheader.a ] ; 3 uses
  %i.gp = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.gq = getelementptr i8, ptr %i.gp, i64 8      ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !155 ; 2 uses
  %i.gs = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !155 ; 4 uses
  %i.gt = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gv = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gw = insertelement <2 x double> %i.gv, double %i.gr, i64 1
  %i.gx = fmul <2 x double> %i.gu, %i.gw          ; 2 uses
  %i.gy = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.gs, <2 x double> %i.gx) ; 3 uses
  %i.hb = extractelement <2 x double> %i.gs, i64 0
  %i.hc = fneg double %i.hb
  %i.hd = fmul double %i.fe, %i.hc
  %i.he = extractelement <2 x double> %i.gs, i64 1
  %i.hf = call double @llvm.fmuladd.f64(double %i.ff, double %i.he, double %i.hd)
  %i.hg = extractelement <2 x double> %i.gx, i64 0
  %i.hh = fneg double %i.hg
  %i.hi = call double @llvm.fmuladd.f64(double %i.ff, double %i.gr, double %i.hh)
  %i.hj = fneg <2 x double> %i.ha
  %i.hk = shufflevector <2 x double> %i.ha, <2 x double> %i.hj, <2 x i32> <i32 1, i32 2>
  %i.hl = fmul <2 x double> %i.gu, %i.hk
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.ha, <2 x double> %i.hl)
  store <2 x double> %i.hm, ptr %.0.lcssa.i, align 8, !tbaa !155
  %i.hn = fneg double %i.hf
  %i.ho = fmul double %i.fe, %i.hn
  %i.hp = call double @llvm.fmuladd.f64(double %i.ff, double %i.hi, double %i.ho)
  store double %i.hp, ptr %i.gq, align 8, !tbaa !155
  %i.hq = sub i64 %0, %i.fg                       ; 2 uses
  %i.hr = icmp sgt i64 %i.hq, 0
  br i1 %i.hr, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.hs = mul i64 %i.fh, %0
  %i.ht = getelementptr [8 x i8], ptr %1, i64 %i.hs
  %i.hu = getelementptr [8 x i8], ptr %i.ht, i64 %i.fh
  %i.hv = getelementptr i8, ptr %i.hu, i64 16     ; 5 uses
  %i.hw = add i64 %i.ey, %.2126152                ; 3 uses
  %min.iters.check = icmp ult i64 %i.hw, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %i.hx = mul i64 %.2126152, %i.dy                ; 2 uses
  %i.hy = getelementptr i8, ptr %i.ez, i64 %i.hx
  %i.hz = mul i64 %.2126152, %i.dx
  %i.ia = getelementptr i8, ptr %i.fa, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.fb, i64 %i.hx
  %bound0 = icmp ult ptr %i.hv, %i.ib
  %bound1 = icmp ult ptr %i.ia, %i.hy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hw, -2                      ; 4 uses
  %i.ic = shl i64 %n.vec, 3
  %i.id = getelementptr i8, ptr %i.hv, i64 %i.ic
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fe, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %i.ff, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ie = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hv, i64 %i.ie ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325 ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.if, align 8, !tbaa !155, !alias.scope !1325 ; 2 uses
  %i.ig = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.ig)
  store <2 x double> %i.ih, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325
  %i.ii = fneg <2 x double> %wide.load
  %i.ij = fmul <2 x double> %broadcast.splat, %i.ii
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.ij)
  store <2 x double> %i.ik, ptr %i.if, align 8, !tbaa !155, !alias.scope !1325
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !1309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hw, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.hv, %vector.memcheck ], [ %i.hv, %.lr.ph84.preheader.i ], [ %i.id, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.iy, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.iz, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.im = load double, ptr %.182.i, align 8, !tbaa !155 ; 2 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !155 ; 2 uses
  %i.ip = fneg double %i.im
  %i.iq = insertelement <2 x double> poison, double %i.io, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.ip, i64 1
  %i.is = fmul <2 x double> %i.gu, %i.ir
  %i.it = insertelement <2 x double> poison, double %i.im, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.io, i64 1
  %i.iv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.iu, <2 x double> %i.is) ; 2 uses
  %i.iw = extractelement <2 x double> %i.iv, i64 0
  store double %i.iw, ptr %.182.i, align 8, !tbaa !155
  %i.ix = extractelement <2 x double> %i.iv, i64 1
  store double %i.ix, ptr %i.in, align 8, !tbaa !155
  %i.iy = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.iz = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.iz, %i.hq
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !1310

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.ja = add nuw nsw i64 %.2126152, 1
  %exitcond171.not = icmp eq i64 %.2126152, %i.ej
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.l, !llvm.loop !1311

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.jb = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.jb, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !1312

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.jc = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.jd = shl i64 %0, 3                           ; 4 uses
  %i.je = add i64 %i.jd, -16                      ; 2 uses
  %i.jf = shl i64 %0, 4                           ; 2 uses
  %i.jg = add i64 %i.jd, 8
  %i.jh = shl i64 %0, 3
  %i.ji = mul i64 %0, %i.je
  %i.jj = mul i64 %0, -8
  %i.jk = add i64 %0, -2
  %i.jl = getelementptr i8, ptr %6, i64 %i.je
  %i.jm = getelementptr i8, ptr %1, i64 %i.jf
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  %i.jo = getelementptr i8, ptr %1, i64 %i.jf
  %i.jp = getelementptr i8, ptr %i.jo, i64 8
  %i.jq = getelementptr i8, ptr %1, i64 %i.ji
  %i.jr = getelementptr i8, ptr %1, i64 %i.jd
  %i.js = getelementptr i8, ptr %i.jr, i64 -8
  %stride.check = icmp slt i64 %i.jd, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 11 uses
  %.0123162 = phi i64 [ %i.jc, %.lr.ph164 ], [ %i.pe, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.jt = add i64 %indvar, 1                      ; 3 uses
  %i.ju = sub i64 %i.jk, %indvar                  ; 5 uses
  %i.jv = mul i64 %indvar, -8                     ; 2 uses
  %scevgep207 = getelementptr i8, ptr %i.jl, i64 %i.jv
  %i.jw = mul i64 %i.jg, %indvar
  %scevgep208 = getelementptr i8, ptr %i.jn, i64 %i.jw
  %i.jx = mul i64 %i.jh, %indvar
  %scevgep209 = getelementptr i8, ptr %i.jp, i64 %i.jx
  %i.jy = mul i64 %i.jj, %indvar
  %scevgep210 = getelementptr i8, ptr %i.jq, i64 %i.jy ; 2 uses
  %scevgep211 = getelementptr i8, ptr %i.js, i64 %i.jv ; 2 uses
  %i.jz = xor i64 %.0123162, -1
  %i.ka = add i64 %0, %i.jz                       ; 3 uses
  %i.kb = mul nsw i64 %i.ka, %0
  %i.kc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kb ; 8 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.kc, double noundef %i.ke)
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 6 uses
  %i.kh = load double, ptr %i.kd, align 8, !tbaa !155 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.ki = shl nuw nsw i64 %.0123162, 3
  %i.kj = add nuw nsw i64 %i.ki, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.kj, i1 false), !tbaa !155
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %i.kk = icmp sgt i64 %i.ka, 1
  br i1 %i.kk, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter262 = and i64 %i.ju, 1
  %i.kl = icmp eq i64 %.0123162, 0
  br i1 %i.kl, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter266 = and i64 %i.ju, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.km = icmp eq i64 %indvar, 0
  %unroll_iter279 = and i64 %i.jt, -2
  %i.kn = and i64 %indvar, 1
  %lcmp.mod277.not.not = icmp eq i64 %i.kn, 0
  %lcmp.mod278 = trunc i64 %i.jt to i1
  br label %.lr.ph.us.i

end_hunk_0
