Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_eigen?download=true
inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi6ELi3EEEE5solveEv:bb.a
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !435 ; 3 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = ashr exact i64 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !433
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !435 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %.not21.i = icmp eq i64 %i.cl, %i.ct
  br i1 %.not21.i, label %.preheader27.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE3addERS4_.exit

.preheader27.i:                                   ; preds = %bb.g
  %.not32.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not32.i, label %.preheader.i, label %.lr.ph.i73

bb.h:                                             ; preds = %.lr.ph.i73
  %i.cu = add nuw i64 %.01829.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cu, %i.by
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i73, !llvm.loop !2316

.preheader.i:                                     ; preds = %bb.h, %.preheader27.i
  %.not33.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph31.i

.lr.ph.i73:                                       ; preds = %.preheader27.i, %bb.h
  %.01829.i = phi i64 [ %i.cu, %bb.h ], [ 0, %.preheader27.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.01829.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.01829.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !32
  %.not22.i = icmp eq i32 %i.cw, %i.cy
  br i1 %.not22.i, label %bb.h, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE3addERS4_.exit

bb.i:                                             ; preds = %.lr.ph31.i
  %i.cz = add nuw i64 %.030.i, 1                  ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.cz, %i.cm
  br i1 %exitcond36.not.i, label %._crit_edge.i, label %.lr.ph31.i, !llvm.loop !2317

.lr.ph31.i:                                       ; preds = %.preheader.i, %bb.i
  %.030.i = phi i64 [ %i.cz, %bb.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.030.i
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.030.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !32
  %.not23.i = icmp eq i32 %i.db, %i.dd
  br i1 %.not23.i, label %bb.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE3addERS4_.exit

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  tail call void @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12add_internalERS4_(ptr noundef nonnull align 8 dereferenceable(73) %i.bo, ptr noundef nonnull align 8 dereferenceable(73) %i.bm)
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE3addERS4_.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE3addERS4_.exit: ; preds = %.lr.ph.i73, %.lr.ph31.i, %_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE5clearEb.exit, %bb.f, %bb.g, %._crit_edge.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !553
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !2273
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %i.dj, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1758 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1779
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !1782 ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 48
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE3addERS4_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0182.8..sroa_idx262.a = getelementptr inbounds nuw i8, ptr %.sroa.0182, i64 8
  %.sroa.0182.16..sroa_idx264.a = getelementptr inbounds nuw i8, ptr %.sroa.0182, i64 16
  %.sroa.0182.8..sroa_idx263 = getelementptr inbounds nuw i8, ptr %.sroa.0182, i64 8
  %.sroa.0182.16..sroa_idx265 = getelementptr inbounds nuw i8, ptr %.sroa.0182, i64 16
  %.sroa.0182.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0182, i64 8
  %.sroa.0182.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0182, i64 16
  %.sroa.0182.8..sroa_idx261 = getelementptr inbounds nuw i8, ptr %.sroa.0182, i64 8
  br label %bb.j

._crit_edge146:                                   ; preds = %._crit_edge143, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE3addERS4_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !553
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !858
  %i.ee = load i32, ptr %i.dg, align 8, !tbaa !2273
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i64 %i.ef, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.eb, ptr align 8 %i.ed, i64 %i.eg, i1 false)
  %i.eh = load i32, ptr %i.dg, align 8, !tbaa !2273 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph149, label %._crit_edge150

.lr.ph149:                                        ; preds = %._crit_edge146
  %i.ej = load ptr, ptr %i.de, align 8, !tbaa !553 ; 8 uses
  %i.ek = load ptr, ptr %i.ea, align 8, !tbaa !553 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.eh to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.eh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph149
  %i.el = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.el
  %scevgep233 = getelementptr i8, ptr %i.ej, i64 %i.el
  %bound0 = icmp ult ptr %i.ek, %scevgep233
  %bound1 = icmp ult ptr %i.ej, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <2 x double>, ptr %i.em, align 8, !tbaa !399, !alias.scope !2318
  %wide.load234.a = load <2 x double>, ptr %i.en, align 8, !tbaa !399, !alias.scope !2318
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %index ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load235.a = load <2 x double>, ptr %i.eo, align 8, !tbaa !399, !alias.scope !2321, !noalias !2318
  %wide.load236 = load <2 x double>, ptr %i.ep, align 8, !tbaa !399, !alias.scope !2321, !noalias !2318
  %i.eq = fsub <2 x double> %wide.load235.a, %wide.load
  %i.er = fsub <2 x double> %wide.load236, %wide.load234.a
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !399, !alias.scope !2321, !noalias !2318
  store <2 x double> %i.er, ptr %i.ep, align 8, !tbaa !399, !alias.scope !2321, !noalias !2318
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !2323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge150, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph149, %middle.block
  %indvars.iv161.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph149 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv161.prol = phi i64 [ %indvars.iv.next162.prol, %scalar.ph.prol ], [ %indvars.iv161.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv161.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !399
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv161.prol ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !399
  %i.ex = fsub double %i.ew, %i.eu
  store double %i.ex, ptr %i.ev, align 8, !tbaa !399
  %indvars.iv.next162.prol = add nuw nsw i64 %indvars.iv161.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2324

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv161.unr = phi i64 [ %indvars.iv161.ph, %scalar.ph.preheader ], [ %indvars.iv.next162.prol, %scalar.ph.prol ]
  %i.ey = sub nsw i64 %indvars.iv161.ph, %wide.trip.count
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge150, label %scalar.ph

bb.j:                                             ; preds = %.lr.ph145, %._crit_edge143
  %indvars.iv = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next, %._crit_edge143 ] ; 6 uses
  %i.fa = phi ptr [ %i.dp, %.lr.ph145 ], [ %i.kq, %._crit_edge143 ]
  %i.fb = phi ptr [ %i.dl, %.lr.ph145 ], [ %i.km, %._crit_edge143 ]
  %i.fc = getelementptr inbounds nuw [48 x i8], ptr %i.fa, i64 %indvars.iv
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !340
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !1797 ; 9 uses
  %i.fh = load ptr, ptr %i.dw, align 8, !tbaa !2255
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !2256
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.fj, i64 %indvars.iv ; 11 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !399 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 40 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 3 uses
  %i.fq = fneg double %i.fm
  %i.fr = load <2 x double>, ptr %i.fg, align 8   ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fu = extractelement <2 x double> %i.fr, i64 1
  %i.fv = extractelement <2 x double> %i.fr, i64 0 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 56 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 40 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 64 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.gd = load double, ptr %i.fo, align 8, !tbaa !399 ; 3 uses
  %i.ge = load <4 x double>, ptr %i.fn, align 8, !tbaa !399 ; 6 uses
  %i.gf = shufflevector <4 x double> %i.ge, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  %i.gg = load <2 x double>, ptr %i.fs, align 8, !tbaa !399 ; 2 uses
  %i.gh = load double, ptr %i.fp, align 8, !tbaa !399
  %i.gi = shufflevector <2 x double> %i.gg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gj = shufflevector <4 x double> %i.ge, <4 x double> %i.gi, <4 x i32> <i32 0, i32 3, i32 4, i32 5>
  %i.gk = fneg <4 x double> %i.gj
  %i.gl = shufflevector <2 x double> %i.fr, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.gm = shufflevector <2 x double> %i.fr, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gn = shufflevector <4 x double> %i.ge, <4 x double> %i.gm, <4 x i32> <i32 2, i32 5, i32 poison, i32 3>
  %i.go = insertelement <4 x double> %i.gn, double %i.fm, i64 2 ; 2 uses
  %i.gp = fmul <4 x double> %i.go, %i.gk
  %i.gq = shufflevector <4 x double> %i.go, <4 x double> %i.gi, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.gr = shufflevector <4 x double> %i.gq, <4 x double> %i.gl, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.gs = shufflevector <4 x double> %i.gr, <4 x double> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gs, <4 x double> %i.gf, <4 x double> %i.gp) ; 2 uses
  %i.gu = shufflevector <4 x double> %i.gt, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.gv = fmul double %i.gd, %i.fq
  %i.gw = extractelement <4 x double> %i.ge, i64 2 ; 2 uses
  %i.gx = tail call noundef double @llvm.fmuladd.f64(double %i.gh, double %i.gw, double %i.gv) ; 2 uses
  %i.gy = fmul <2 x double> %i.fr, %i.gu          ; 2 uses
  %shift = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.gy, %shift
  %i.gz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ha = extractelement <2 x double> %i.gg, i64 0 ; 2 uses
  %i.hb = fmul double %i.gx, %i.ha
  %i.hc = fadd double %i.hb, %i.gz
  %i.hd = fdiv double 1.000000e+00, %i.hc         ; 6 uses
  %i.he = fneg double %i.gd
  %i.hf = fmul double %i.ha, %i.he
  %i.hg = extractelement <4 x double> %i.ge, i64 3
  %i.hh = tail call noundef double @llvm.fmuladd.f64(double %i.hg, double %i.fv, double %i.hf)
  %i.hi = fmul double %i.hh, %i.hd
  %i.hj = fneg double %i.gw
  %i.hk = fmul double %i.fv, %i.hj
  %i.hl = tail call noundef double @llvm.fmuladd.f64(double %i.gd, double %i.fu, double %i.hk)
  %i.hm = fmul double %i.hl, %i.hd
  store double %i.hm, ptr %i.fx, align 8, !tbaa !399
  %i.hn = load double, ptr %i.fs, align 8, !tbaa !399
  %i.ho = load double, ptr %i.fp, align 8, !tbaa !399
  %i.hp = load double, ptr %i.fn, align 8, !tbaa !399
  %i.hq = load double, ptr %i.fg, align 8, !tbaa !399
  %i.hr = fneg double %i.hq
  %i.hs = fmul double %i.hp, %i.hr
  %i.ht = tail call noundef double @llvm.fmuladd.f64(double %i.hn, double %i.ho, double %i.hs)
  %i.hu = fmul double %i.hd, %i.ht                ; 2 uses
  store double %i.hu, ptr %i.fz, align 8, !tbaa !399
  %i.hv = load double, ptr %i.fg, align 8, !tbaa !399
  %i.hw = load double, ptr %i.fl, align 8, !tbaa !399
  %i.hx = load double, ptr %i.fp, align 8, !tbaa !399
  %i.hy = load double, ptr %i.ft, align 8, !tbaa !399
  %i.hz = fneg double %i.hy
  %i.ia = fmul double %i.hx, %i.hz
  %i.ib = tail call noundef double @llvm.fmuladd.f64(double %i.hv, double %i.hw, double %i.ia)
  %i.ic = fmul double %i.hd, %i.ib                ; 2 uses
  store double %i.ic, ptr %i.ga, align 8, !tbaa !399
  store double %i.hi, ptr %i.gb, align 8, !tbaa !399
  %i.id = insertelement <4 x double> poison, double %i.hd, i64 0
  %i.ie = shufflevector <4 x double> %i.id, <4 x double> poison, <4 x i32> zeroinitializer
  %i.if = fmul <4 x double> %i.gt, %i.ie          ; 2 uses
  store <4 x double> %i.if, ptr %i.fk, align 8, !tbaa !399
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fk, i64 48 ; 3 uses
  %i.ih = fmul double %i.gx, %i.hd
  store double %i.ih, ptr %i.ig, align 8, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0182)
  %i.ii = load ptr, ptr %i.dx, align 8, !tbaa !858 ; 6 uses
  %.not.i74 = icmp eq i64 %indvars.iv, 0
  %i.ij = load i32, ptr %i.dg, align 8, !tbaa !2273 ; 4 uses
  br i1 %.not.i74, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.us.preheader, label %.split

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.us.preheader: ; preds = %bb.j
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !399
  store double %i.im, ptr %.sroa.0182, align 16, !tbaa !399
  %i.in = add i32 %i.ij, 1
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !399
  store double %i.iq, ptr %.sroa.0182.8..sroa_idx263, align 8, !tbaa !399
  %i.ir = add i32 %i.ij, 2
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !399
  store double %i.iu, ptr %.sroa.0182.16..sroa_idx265, align 16, !tbaa !399
  br label %.split135.us

.split:                                           ; preds = %bb.j
  %i.iv = load ptr, ptr %i.fb, align 8, !tbaa !435
  %i.iw = getelementptr [4 x i8], ptr %i.iv, i64 %indvars.iv
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !32
  %invariant.op = add i32 %i.iy, %i.ij            ; 3 uses
  %i.iz = sext i32 %invariant.op to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !399
  store double %i.jb, ptr %.sroa.0182, align 16, !tbaa !399
  %.reass.1 = add i32 %invariant.op, 1
  %i.jc = sext i32 %.reass.1 to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.jc
  %i.je = load double, ptr %i.jd, align 8, !tbaa !399
  store double %i.je, ptr %.sroa.0182.8..sroa_idx262.a, align 8, !tbaa !399
  %.reass.2 = add i32 %invariant.op, 2
  %i.jf = sext i32 %.reass.2 to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !399
  store double %i.jh, ptr %.sroa.0182.16..sroa_idx264.a, align 16, !tbaa !399
  br label %.split135.us

.split135.us:                                     ; preds = %.split, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.us.preheader
  %i.ji = load <2 x double>, ptr %i.fk, align 8, !tbaa !17
  %.sroa.0182.0..sroa.0182.0..sroa.0182.0. = load <2 x double>, ptr %.sroa.0182, align 16 ; 2 uses
  %i.jj = shufflevector <2 x double> %.sroa.0182.0..sroa.0182.0..sroa.0182.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x double> %i.ji, %i.jj
  %i.jl = load <2 x double>, ptr %i.gc, align 8, !tbaa !17
  %.sroa.0182.8..sroa.0182.8..sroa.0182.8. = load <2 x double>, ptr %.sroa.0182.8..sroa_idx, align 8 ; 4 uses
  %i.jm = shufflevector <2 x double> %.sroa.0182.8..sroa.0182.8..sroa.0182.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x double> %i.jl, %i.jm
  %i.jo = fadd <2 x double> %i.jk, %i.jn
  %i.jp = load <2 x double>, ptr %i.ig, align 8, !tbaa !17
  %i.jq = shufflevector <2 x double> %.sroa.0182.8..sroa.0182.8..sroa.0182.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jr = fmul <2 x double> %i.jp, %i.jq
  %i.js = fadd <2 x double> %i.jr, %i.jo          ; 2 uses
  %i.jt = extractelement <2 x double> %.sroa.0182.0..sroa.0182.0..sroa.0182.0., i64 0
  %i.ju = extractelement <4 x double> %i.if, i64 2
  %i.jv = fmul double %i.jt, %i.ju
  %i.jw = extractelement <2 x double> %.sroa.0182.8..sroa.0182.8..sroa.0182.8., i64 0
  %i.jx = fmul double %i.jw, %i.hu
  %i.jy = extractelement <2 x double> %.sroa.0182.8..sroa.0182.8..sroa.0182.8., i64 1
  %i.jz = fmul double %i.jy, %i.ic
  %i.ka = fadd double %i.jx, %i.jz
  %i.kb = fadd double %i.jv, %i.ka
  store <2 x double> %i.js, ptr %.sroa.0182, align 16, !tbaa !17
  store double %i.kb, ptr %.sroa.0182.16..sroa_idx, align 16, !tbaa !399
  %i.kc = load ptr, ptr %i.dy, align 8, !tbaa !2244
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !2245
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.ke, i64 %indvars.iv ; 3 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !2325 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !2325
  %.not128139 = icmp eq ptr %i.kg, %i.ki
  br i1 %.not128139, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %.split135.us
  %i.kj = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.sroa.0182.8..sroa.0182.8..sroa.0182.8.188 = load <2 x double>, ptr %.sroa.0182.8..sroa_idx261, align 8 ; 2 uses
  %i.kk = shufflevector <2 x double> %.sroa.0182.8..sroa.0182.8..sroa.0182.8.188, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kl = shufflevector <2 x double> %.sroa.0182.8..sroa.0182.8..sroa.0182.8.188, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  br label %bb.k

._crit_edge143:                                   ; preds = %._crit_edge, %.split135.us
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0182)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.km = load ptr, ptr %i.dk, align 8, !tbaa !1758 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !1779
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !1782 ; 2 uses
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = sdiv exact i64 %i.kt, 48
  %sext = shl i64 %i.ku, 32
  %i.kv = ashr exact i64 %sext, 32
  %i.kw = icmp slt i64 %indvars.iv.next, %i.kv
  br i1 %i.kw, label %bb.j, label %._crit_edge146, !llvm.loop !2326

bb.k:                                             ; preds = %.lr.ph142, %._crit_edge
  %.sroa.0116.0140 = phi ptr [ %i.kg, %.lr.ph142 ], [ %i.acv, %._crit_edge ] ; 3 uses
  %i.kx = load i32, ptr %.sroa.0116.0140, align 8, !tbaa !2327 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0116.0140, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !2329 ; 9 uses
  %i.la = load <2 x double>, ptr %i.kz, align 16, !tbaa !17 ; 4 uses
  %i.lb = load <1 x double>, ptr %i.fk, align 8
  %i.lc = shufflevector <1 x double> %i.lb, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ld = fmul <2 x double> %i.la, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lf = load <2 x double>, ptr %i.le, align 16, !tbaa !17 ; 4 uses
  %i.lg = load <1 x double>, ptr %i.fw, align 8
  %i.lh = shufflevector <1 x double> %i.lg, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.li = fmul <2 x double> %i.lf, %i.lh
  %i.lj = fadd <2 x double> %i.ld, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 96
  %i.ll = load <2 x double>, ptr %i.lk, align 16, !tbaa !17 ; 4 uses
  %1 = load <2 x double>, ptr %i.fy, align 8      ; 2 uses
  %i.lm = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ln = fmul <2 x double> %i.ll, %i.lm
  %i.lo = fadd <2 x double> %i.lj, %i.ln          ; 6 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %i.lq = load <2 x double>, ptr %i.lp, align 16, !tbaa !17 ; 3 uses
  %i.lr = fmul <2 x double> %i.lq, %i.lc
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 64 ; 2 uses
  %i.lt = load <2 x double>, ptr %i.ls, align 16, !tbaa !17 ; 3 uses
  %i.lu = fmul <2 x double> %i.lt, %i.lh
  %i.lv = fadd <2 x double> %i.lr, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kz, i64 112 ; 2 uses
  %i.lx = load <2 x double>, ptr %i.lw, align 16, !tbaa !17 ; 3 uses
  %i.ly = fmul <2 x double> %i.lx, %i.lm
  %i.lz = fadd <2 x double> %i.lv, %i.ly          ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kz, i64 32 ; 2 uses
  %i.mb = load <2 x double>, ptr %i.ma, align 16, !tbaa !17 ; 3 uses
  %i.mc = fmul <2 x double> %i.mb, %i.lc
  %i.md = getelementptr inbounds nuw i8, ptr %i.kz, i64 80 ; 2 uses
  %i.me = load <2 x double>, ptr %i.md, align 16, !tbaa !17 ; 3 uses
  %i.mf = fmul <2 x double> %i.me, %i.lh
  %i.mg = fadd <2 x double> %i.mc, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kz, i64 128 ; 2 uses
  %i.mi = load <2 x double>, ptr %i.mh, align 16, !tbaa !17 ; 3 uses
  %i.mj = fmul <2 x double> %i.mi, %i.lm
  %i.mk = fadd <2 x double> %i.mg, %i.mj          ; 6 uses
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %3 = fmul <2 x double> %i.la, %2
  %4 = load double, ptr %i.gb, align 8, !tbaa !399
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %i.ml = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mm = fmul <2 x double> %i.lf, %i.ml
  %i.mn = fadd <2 x double> %3, %i.mm
  %6 = load double, ptr %i.fz, align 8, !tbaa !399
  %7 = insertelement <2 x double> poison, double %6, i64 0
  %i.mo = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mp = fmul <2 x double> %i.ll, %i.mo
  %i.mq = fadd <2 x double> %i.mn, %i.mp          ; 6 uses
  %i.mr = fmul <2 x double> %i.lq, %2
  %i.ms = fmul <2 x double> %i.lt, %i.ml
  %i.mt = fadd <2 x double> %i.mr, %i.ms
  %i.mu = fmul <2 x double> %i.lx, %i.mo
  %i.mv = fadd <2 x double> %i.mt, %i.mu          ; 6 uses
  %i.mw = fmul <2 x double> %i.mb, %2
  %i.mx = fmul <2 x double> %i.me, %i.ml
  %i.my = fadd <2 x double> %i.mw, %i.mx
  %i.mz = fmul <2 x double> %i.mi, %i.mo
  %i.na = fadd <2 x double> %i.my, %i.mz          ; 6 uses
  %8 = load double, ptr %i.ig, align 8, !tbaa !399
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %i.nb = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nc = fmul <2 x double> %i.la, %i.nb
  %10 = load double, ptr %i.fx, align 8, !tbaa !399
  %11 = insertelement <2 x double> poison, double %10, i64 0
  %i.nd = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ne = fmul <2 x double> %i.lf, %i.nd
  %i.nf = fadd <2 x double> %i.nc, %i.ne
  %12 = load double, ptr %i.ga, align 8, !tbaa !399
  %13 = insertelement <2 x double> poison, double %12, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ng = fmul <2 x double> %i.ll, %14
  %i.nh = fadd <2 x double> %i.nf, %i.ng          ; 6 uses
  %i.ni = fmul <2 x double> %i.lq, %i.nb
  %i.nj = fmul <2 x double> %i.lt, %i.nd
  %i.nk = fadd <2 x double> %i.ni, %i.nj
  %i.nl = fmul <2 x double> %i.lx, %14
  %i.nm = fadd <2 x double> %i.nk, %i.nl          ; 6 uses
  %i.nn = fmul <2 x double> %i.mb, %i.nb
  %i.no = fmul <2 x double> %i.me, %i.nd
  %i.np = fadd <2 x double> %i.nn, %i.no
  %i.nq = fmul <2 x double> %i.mi, %14
  %i.nr = fadd <2 x double> %i.np, %i.nq          ; 6 uses
  %.not.i77 = icmp eq i32 %i.kx, 0
  br i1 %.not.i77, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ns = load ptr, ptr %i.dy, align 8, !tbaa !2244
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !2330, !nonnull !432, !align !451
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !435
  %i.nv = sext i32 %i.kx to i64                   ; 2 uses
  %i.nw = getelementptr [4 x i8], ptr %i.nu, i64 %i.nv
  %i.nx = getelementptr i8, ptr %i.nw, i64 -4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !32
  %i.nz = sext i32 %i.ny to i64
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.k, %bb.l
  %.pre-phi = phi i64 [ %i.nv, %bb.l ], [ 0, %bb.k ]
  %i.oa = phi i64 [ %i.nz, %bb.l ], [ 0, %bb.k ]
  %i.ob = load ptr, ptr %i.de, align 8, !tbaa !553
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oa ; 4 uses
  %i.od = fmul <2 x double> %i.la, %i.kj
  %i.oe = fmul <2 x double> %i.lf, %i.kk
  %i.of = fadd <2 x double> %i.od, %i.oe
  %i.og = fmul <2 x double> %i.ll, %i.kl
  %i.oh = fadd <2 x double> %i.og, %i.of
  %i.oi = load <2 x double>, ptr %i.oc, align 1, !tbaa !17
  %i.oj = fadd <2 x double> %i.oi, %i.oh
  store <2 x double> %i.oj, ptr %i.oc, align 1, !tbaa !17
  %i.ok = getelementptr i8, ptr %i.oc, i64 16     ; 2 uses
  %i.ol = load <2 x double>, ptr %i.lp, align 16, !tbaa !17
  %i.om = fmul <2 x double> %i.ol, %i.kj
  %i.on = load <2 x double>, ptr %i.ls, align 16, !tbaa !17
  %i.oo = fmul <2 x double> %i.on, %i.kk
  %i.op = fadd <2 x double> %i.om, %i.oo
  %i.oq = load <2 x double>, ptr %i.lw, align 16, !tbaa !17
  %i.or = fmul <2 x double> %i.oq, %i.kl
  %i.os = fadd <2 x double> %i.or, %i.op
  %i.ot = load <2 x double>, ptr %i.ok, align 1, !tbaa !17
  %i.ou = fadd <2 x double> %i.ot, %i.os
  store <2 x double> %i.ou, ptr %i.ok, align 1, !tbaa !17
  %i.ov = getelementptr i8, ptr %i.oc, i64 32     ; 2 uses
  %i.ow = load <2 x double>, ptr %i.ma, align 16, !tbaa !17
  %i.ox = fmul <2 x double> %i.ow, %i.kj
  %i.oy = load <2 x double>, ptr %i.md, align 16, !tbaa !17
  %i.oz = fmul <2 x double> %i.oy, %i.kk
  %i.pa = fadd <2 x double> %i.ox, %i.oz
  %i.pb = load <2 x double>, ptr %i.mh, align 16, !tbaa !17
  %i.pc = fmul <2 x double> %i.pb, %i.kl
  %i.pd = fadd <2 x double> %i.pc, %i.pa
  %i.pe = load <2 x double>, ptr %i.ov, align 1, !tbaa !17
  %i.pf = fadd <2 x double> %i.pe, %i.pd
  store <2 x double> %i.pf, ptr %i.ov, align 1, !tbaa !17
  %i.pg = load ptr, ptr %i.dz, align 8, !tbaa !2243
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !2131
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %i.pi, i64 %.pre-phi
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !2160
  %i.pl = load ptr, ptr %i.kf, align 8, !tbaa !2325 ; 3 uses
  %i.pm = load ptr, ptr %i.kh, align 8, !tbaa !2325 ; 3 uses
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = ptrtoint ptr %i.pl to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = ashr exact i64 %i.pp, 4                 ; 2 uses
  %i.pr = icmp sgt i64 %i.pq, 0
  br i1 %i.pr, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.pq, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.pl, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit ] ; 2 uses
  %i.ps = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i, i64 %i.ps ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !2327
  %i.pv = icmp slt i32 %i.pu, %i.kx               ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.px = xor i64 %i.ps, -1
  %i.py = add nsw i64 %.016.i.i, %i.px
  %.sroa.011.1.i.i = select i1 %i.pv, ptr %i.pw, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.pv, i64 %i.py, i64 %i.ps ; 2 uses
  %i.pz = icmp sgt i64 %.1.i.i, 0
  br i1 %i.pz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit, !llvm.loop !2335

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.pl, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not129136 = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.pm
  br i1 %.not129136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit, %bb.n
  %.sroa.0105.0138 = phi ptr [ %.sroa.0105.1, %bb.n ], [ %i.pk, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit ]
  %.sroa.098.0137 = phi ptr [ %i.acs, %bb.n ], [ %.sroa.011.0.lcssa.i.i, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit ] ; 3 uses
  %i.qa = load i32, ptr %.sroa.098.0137, align 8, !tbaa !2327
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.098.0137, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !2329 ; 20 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph
  %.sroa.0105.1 = phi ptr [ %.sroa.0105.0138, %.lr.ph ], [ %i.qf, %bb.m ] ; 4 uses
  %i.qd = load i32, ptr %.sroa.0105.1, align 8, !tbaa !2166
  %i.qe = icmp slt i32 %i.qd, %i.qa
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0105.1, i64 16
  br i1 %i.qe, label %bb.m, label %bb.n, !llvm.loop !2336

bb.n:                                             ; preds = %bb.m
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0105.1, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !2163 ; 19 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 32 ; 2 uses
  %i.qk = load double, ptr %i.qc, align 8, !tbaa !399
  %i.ql = insertelement <2 x double> poison, double %i.qk, i64 0
  %i.qm = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qn = fmul <2 x double> %i.lo, %i.qm
  %i.qo = getelementptr i8, ptr %i.qc, i64 48     ; 3 uses
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !399
  %i.qq = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.qr = shufflevector <2 x double> %i.qq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qs = fmul <2 x double> %i.mq, %i.qr
  %i.qt = fadd <2 x double> %i.qn, %i.qs
  %i.qu = getelementptr i8, ptr %i.qc, i64 96     ; 3 uses
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !399
  %i.qw = insertelement <2 x double> poison, double %i.qv, i64 0
  %i.qx = shufflevector <2 x double> %i.qw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x double> %i.nh, %i.qx
  %i.qz = fadd <2 x double> %i.qt, %i.qy
  %i.ra = load <2 x double>, ptr %i.qh, align 16, !tbaa !17
  %i.rb = fsub <2 x double> %i.ra, %i.qz
  store <2 x double> %i.rb, ptr %i.qh, align 16, !tbaa !17
  %i.rc = load double, ptr %i.qc, align 8, !tbaa !399
  %i.rd = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x double> %i.lz, %i.re
  %i.rg = load double, ptr %i.qo, align 8, !tbaa !399
  %i.rh = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.ri = shufflevector <2 x double> %i.rh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rj = fmul <2 x double> %i.mv, %i.ri
  %i.rk = fadd <2 x double> %i.rf, %i.rj
  %i.rl = load double, ptr %i.qu, align 8, !tbaa !399
  %i.rm = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = fmul <2 x double> %i.nm, %i.rn
  %i.rp = fadd <2 x double> %i.rk, %i.ro
  %i.rq = load <2 x double>, ptr %i.qi, align 16, !tbaa !17
  %i.rr = fsub <2 x double> %i.rq, %i.rp
  store <2 x double> %i.rr, ptr %i.qi, align 16, !tbaa !17
  %i.rs = load double, ptr %i.qc, align 8, !tbaa !399
  %i.rt = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = fmul <2 x double> %i.mk, %i.ru
  %i.rw = load double, ptr %i.qo, align 8, !tbaa !399
  %i.rx = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.ry = shufflevector <2 x double> %i.rx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rz = fmul <2 x double> %i.na, %i.ry
  %i.sa = fadd <2 x double> %i.rv, %i.rz
  %i.sb = load double, ptr %i.qu, align 8, !tbaa !399
  %i.sc = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = fmul <2 x double> %i.nr, %i.sd
  %i.sf = fadd <2 x double> %i.sa, %i.se
  %i.sg = load <2 x double>, ptr %i.qj, align 16, !tbaa !17
  %i.sh = fsub <2 x double> %i.sg, %i.sf
  store <2 x double> %i.sh, ptr %i.qj, align 16, !tbaa !17
  %i.si = getelementptr inbounds nuw i8, ptr %i.qh, i64 48 ; 2 uses
  %i.sj = getelementptr i8, ptr %i.qc, i64 8      ; 3 uses
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !399
  %i.sl = insertelement <2 x double> poison, double %i.sk, i64 0
  %i.sm = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sn = fmul <2 x double> %i.lo, %i.sm
  %i.so = getelementptr i8, ptr %i.qc, i64 56     ; 3 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !399
  %i.sq = insertelement <2 x double> poison, double %i.sp, i64 0
  %i.sr = shufflevector <2 x double> %i.sq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ss = fmul <2 x double> %i.mq, %i.sr
  %i.st = fadd <2 x double> %i.sn, %i.ss
  %i.su = getelementptr i8, ptr %i.qc, i64 104    ; 3 uses
  %i.sv = load double, ptr %i.su, align 8, !tbaa !399
  %i.sw = insertelement <2 x double> poison, double %i.sv, i64 0
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = fmul <2 x double> %i.nh, %i.sx
  %i.sz = fadd <2 x double> %i.st, %i.sy
  %i.ta = load <2 x double>, ptr %i.si, align 16, !tbaa !17
  %i.tb = fsub <2 x double> %i.ta, %i.sz
  store <2 x double> %i.tb, ptr %i.si, align 16, !tbaa !17
  %i.tc = getelementptr inbounds nuw i8, ptr %i.qh, i64 64 ; 2 uses
  %i.td = load double, ptr %i.sj, align 8, !tbaa !399
  %i.te = insertelement <2 x double> poison, double %i.td, i64 0
  %i.tf = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tg = fmul <2 x double> %i.lz, %i.tf
  %i.th = load double, ptr %i.so, align 8, !tbaa !399
  %i.ti = insertelement <2 x double> poison, double %i.th, i64 0
  %i.tj = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tk = fmul <2 x double> %i.mv, %i.tj
  %i.tl = fadd <2 x double> %i.tg, %i.tk
  %i.tm = load double, ptr %i.su, align 8, !tbaa !399
  %i.tn = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.to = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tp = fmul <2 x double> %i.nm, %i.to
  %i.tq = fadd <2 x double> %i.tl, %i.tp
  %i.tr = load <2 x double>, ptr %i.tc, align 16, !tbaa !17
  %i.ts = fsub <2 x double> %i.tr, %i.tq
  store <2 x double> %i.ts, ptr %i.tc, align 16, !tbaa !17
  %i.tt = getelementptr inbounds nuw i8, ptr %i.qh, i64 80 ; 2 uses
  %i.tu = load double, ptr %i.sj, align 8, !tbaa !399
  %i.tv = insertelement <2 x double> poison, double %i.tu, i64 0
end_hunk_0
