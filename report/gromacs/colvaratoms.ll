Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvaratoms?download=true
inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12colvarmodule10atom_group18calc_fit_gradientsEv:bb.a
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !837
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.r = load double, ptr %i.q, align 8, !tbaa !217, !noalias !839
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.v = load double, ptr %i.u, align 8, !tbaa !210, !noalias !839
  %i.w = fneg double %i.v
  store double %i.r, ptr %9, align 8, !tbaa !217, !alias.scope !838, !noalias !837
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = load <2 x double>, ptr %i.s, align 8, !tbaa !109, !noalias !839
  %i.z = fneg <2 x double> %i.y
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !109, !alias.scope !838, !noalias !837
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double %i.w, ptr %i.aa, align 8, !tbaa !210, !alias.scope !838, !noalias !837
  call void @_ZN12colvarmodule8rotationC1ERKNS_10quaternionE(ptr noundef nonnull align 8 dereferenceable(568) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !837
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 496
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 512
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !109, !noalias !840 ; 9 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.af = extractelement <2 x double> %i.ad, i64 1 ; 4 uses
  %i.ag = fmul double %i.af, %i.af
  %i.ah = extractelement <2 x double> %i.ad, i64 0 ; 4 uses
  %i.ai = call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.ag)
  %i.aj = load <2 x double>, ptr %i.ac, align 8, !tbaa !109, !noalias !840 ; 9 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 5 uses
  %i.al = fneg double %i.ak                       ; 3 uses
  %i.am = call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double %i.ai)
  %i.an = extractelement <2 x double> %i.aj, i64 1 ; 5 uses
  %i.ao = fneg double %i.an                       ; 3 uses
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %i.an, double %i.am)
  %i.aq = fneg double %i.af                       ; 2 uses
  %i.ar = fmul double %i.af, %i.aq
  %i.as = call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.ar) ; 2 uses
  %i.at = call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.as)
  %i.au = call double @llvm.fmuladd.f64(double %i.ao, double %i.an, double %i.at)
  %i.av = call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double %i.as)
  %i.aw = call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.av)
  %i.ax = insertelement <2 x double> %i.aj, double %i.aq, i64 0
  %i.ay = fmul <2 x double> %i.ad, %i.ax
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = shufflevector <2 x double> %i.ad, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.bb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.aj, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bd = insertelement <2 x double> %i.bc, double %i.ao, i64 0
  %i.be = fmul <2 x double> %i.ad, %i.bd
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.aj, <2 x double> %i.be)
  %i.bg = fmul <2 x double> %i.bf, splat (double 2.000000e+00) ; 2 uses
  %i.bh = fmul <2 x double> %i.bb, splat (double 2.000000e+00)
  %i.bi = shufflevector <2 x double> %i.aj, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x double> %i.bc, double %i.al, i64 1
  %i.bk = fmul <2 x double> %i.bi, %i.bj
  %i.bl = shufflevector <2 x double> %i.ad, <2 x double> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.bl, <2 x double> %i.bk)
  %i.bn = fmul <2 x double> %i.bm, splat (double 2.000000e+00) ; 2 uses
  call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !108 ; 5 uses
  %.not115.i = icmp eq i64 %i.bp, 0
  br i1 %.not115.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.val.val25.i = load ptr, ptr %i.bq, align 8, !tbaa !114
  %.idx.i.i.i = shl i64 %i.bp, 4                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !114
  br label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %.sroa.054.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.hh, %bb.f ]
  %.sroa.18.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.he, %bb.f ] ; 2 uses
  %.sroa.1178.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.hd, %bb.f ] ; 2 uses
  %.sroa.074.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.hc, %bb.f ] ; 2 uses
  %i.bt = phi <8 x double> [ zeroinitializer, %bb.e ], [ %i.hu, %bb.f ] ; 10 uses
  %i.bu = extractelement <8 x double> %i.bt, i64 7
  %i.bv = fneg double %i.bu                       ; 2 uses
  %i.bw = load <2 x double>, ptr %i.t, align 8, !tbaa !109, !noalias !841 ; 5 uses
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.by = load <2 x double>, ptr %i.q, align 8, !tbaa !109, !noalias !841 ; 5 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.ca = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 poison, i32 7>
  %i.cb = insertelement <2 x double> %i.ca, double %i.bv, i64 0
  %i.cc = fmul <2 x double> %i.bx, %i.cb
  %i.cd = insertelement <2 x double> poison, double %.sroa.054.0.lcssa.i, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ce, <2 x double> %i.cc)
  %i.cg = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.cg, <2 x double> %i.cf)
  %i.ci = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ci, <2 x double> %i.ch)
  %i.ck = fneg <2 x double> %i.bz                 ; 2 uses
  %i.cl = shufflevector <2 x double> %i.by, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cm = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cm, <2 x double> %i.cj)
  %i.co = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.cp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.co, <2 x double> %i.cn)
  %i.cq = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.cr = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.cs = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 6, i32 6> ; 2 uses
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ct = fneg <2 x double> %i.bw                 ; 3 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cq, <2 x double> %i.cp)
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cr, <2 x double> %i.cv)
  %i.cx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cs, <2 x double> %i.cw)
  %i.cy = fmul <2 x double> %i.cx, splat (double 2.000000e+00)
  %i.cz = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 7, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %i.bv, i64 1
  %i.db = fmul <2 x double> %i.da, %i.bz
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.ce, <2 x double> %i.db)
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.cg, <2 x double> %i.dc)
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ci, <2 x double> %i.dd)
  %i.df = shufflevector <2 x double> %i.bw, <2 x double> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cm, <2 x double> %i.de)
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.co, <2 x double> %i.dg)
  %i.di = fneg <2 x double> %i.bz
  %i.dj = shufflevector <2 x double> %i.by, <2 x double> %i.di, <2 x i32> <i32 3, i32 1>
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.cq, <2 x double> %i.dh)
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.cr, <2 x double> %i.dk)
  %i.dm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cs, <2 x double> %i.dl)
  %i.dn = fmul <2 x double> %i.dm, splat (double 2.000000e+00)
  store <2 x double> %i.cy, ptr %11, align 16
  store <2 x double> %i.dn, ptr %.sroa.539.0..sroa_idx.i, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select, i64 1144 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !108
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !136
  call void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %i.dr, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !136
  call void @_ZNK19rotation_derivative28project_force_to_C_from_dxdqISt5arrayIdLm4EEEEN12colvarmodule7rmatrixERKT_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rmatrix") align 8 %12, ptr noundef nonnull align 8 dereferenceable(712) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dt = load <4 x double>, ptr %12, align 8, !tbaa !109 ; 7 uses
  %i.du = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !109 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.11.0.copyload.i = load double, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !109 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  %.sroa.12.0.copyload.i = load double, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !109 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  %.sroa.13.0.copyload.i = load double, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !109 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.dv = load i64, ptr %i.do, align 8, !tbaa !108 ; 5 uses
  %.not116.i = icmp eq i64 %i.dv, 0
  br i1 %.not116.i, label %.loopexit137, label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %._crit_edge.i
  %i.dw = extractelement <2 x double> %i.bn, i64 0
  %i.dx = fmul double %i.dw, %.sroa.1178.0.lcssa.i
  %i.dy = extractelement <2 x double> %i.bn, i64 1
  %i.dz = call double @llvm.fmuladd.f64(double %i.dy, double %.sroa.074.0.lcssa.i, double %i.dx)
  %i.ea = call double @llvm.fmuladd.f64(double %i.aw, double %.sroa.18.0.lcssa.i, double %i.dz)
  %i.eb = uitofp i64 %i.dp to double
  %i.ec = fdiv double -1.000000e+00, %i.eb        ; 2 uses
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = insertelement <2 x double> %i.bg, double %i.au, i64 1
  %i.ef = insertelement <2 x double> poison, double %.sroa.1178.0.lcssa.i, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.ee, %i.eg
  %i.ei = insertelement <2 x double> %i.bg, double %i.ap, i64 0
  %i.ej = insertelement <2 x double> poison, double %.sroa.074.0.lcssa.i, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ek, <2 x double> %i.eh)
  %i.em = insertelement <2 x double> poison, double %.sroa.18.0.lcssa.i, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.en, <2 x double> %i.el)
  %i.ep = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.eo, %i.eq
  %i.es = fadd <2 x double> %i.er, zeroinitializer ; 3 uses
  %i.et = fadd double %i.ed, 0.000000e+00         ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !136 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !218, !noalias !842 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !218, !noalias !842 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !218, !noalias !842 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %spec.select, i64 512
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fc, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %spec.select, ptr %i.fc ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 1096
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !114 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 1144
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !108 ; 4 uses
  %.idx.i.i32.i = shl i64 %i.fg, 4                ; 4 uses
  %min.iters.check = icmp ult i64 %i.dv, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph113.i
  %i.fh = ptrtoaddr ptr %i.fe to i64              ; 5 uses
  %i.fi = ptrtoaddr ptr %i.fa to i64
  %i.fj = ptrtoaddr ptr %i.ey to i64              ; 3 uses
  %i.fk = ptrtoaddr ptr %i.ew to i64              ; 3 uses
  %i.fl = shl i64 %i.fg, 3                        ; 3 uses
  %i.fm = add i64 %i.fl, -1
  %diff.check = icmp ult i64 %i.fm, 15
  %i.fn = sub i64 %i.fk, %i.fh
  %diff.check185 = icmp ugt i64 %i.fn, -16
  %conflict.rdx186 = or i1 %diff.check, %diff.check185
  %i.fo = sub i64 %i.fj, %i.fh
  %diff.check187 = icmp ugt i64 %i.fo, -16
  %conflict.rdx188 = or i1 %conflict.rdx186, %diff.check187
  %i.fp = sub i64 %i.fi, %i.fh                    ; 3 uses
  %diff.check189 = icmp ugt i64 %i.fp, -16
  %conflict.rdx190 = or i1 %conflict.rdx188, %diff.check189
  %i.fq = add i64 %i.fl, %i.fh                    ; 2 uses
  %i.fr = sub i64 %i.fk, %i.fq
  %diff.check191 = icmp ugt i64 %i.fr, -16
  %conflict.rdx192 = or i1 %conflict.rdx190, %diff.check191
  %i.fs = sub i64 %i.fj, %i.fq
  %diff.check193 = icmp ugt i64 %i.fs, -16
  %conflict.rdx194 = or i1 %conflict.rdx192, %diff.check193
  %i.ft = sub i64 %i.fp, %i.fl
  %diff.check195 = icmp ugt i64 %i.ft, -16
  %conflict.rdx196 = or i1 %conflict.rdx194, %diff.check195
  %i.fu = add i64 %.idx.i.i32.i, %i.fh            ; 2 uses
  %i.fv = sub i64 %i.fk, %i.fu
  %diff.check197 = icmp ugt i64 %i.fv, -16
  %conflict.rdx198 = or i1 %conflict.rdx196, %diff.check197
  %i.fw = sub i64 %i.fj, %i.fu
  %diff.check199 = icmp ugt i64 %i.fw, -16
  %conflict.rdx200 = or i1 %conflict.rdx198, %diff.check199
  %i.fx = sub i64 %i.fp, %.idx.i.i32.i
  %diff.check201 = icmp ugt i64 %i.fx, -16
  %conflict.rdx202 = or i1 %conflict.rdx200, %diff.check201
  br i1 %conflict.rdx202, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dv, -2                      ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat204 = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert205 = insertelement <2 x double> poison, double %i.et, i64 0
  %broadcast.splat206 = shufflevector <2 x double> %broadcast.splatinsert205, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat208 = shufflevector <4 x double> %i.dt, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat210 = shufflevector <4 x double> %i.dt, <4 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat212 = shufflevector <4 x double> %i.dt, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat214 = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat216 = shufflevector <4 x double> %i.dt, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat218 = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert219 = insertelement <2 x double> poison, double %.sroa.12.0.copyload.i, i64 0
  %broadcast.splat220 = shufflevector <2 x double> %broadcast.splatinsert219, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <2 x double> poison, double %.sroa.11.0.copyload.i, i64 0
  %broadcast.splat222 = shufflevector <2 x double> %broadcast.splatinsert221, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %.sroa.13.0.copyload.i, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %index
  %wide.load = load <2 x double>, ptr %i.fy, align 8, !tbaa !109, !noalias !842 ; 3 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %index
  %wide.load225 = load <2 x double>, ptr %i.fz, align 8, !tbaa !109, !noalias !842 ; 3 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %index
  %wide.load226 = load <2 x double>, ptr %i.ga, align 8, !tbaa !109, !noalias !842 ; 3 uses
  %i.gb = fmul <2 x double> %broadcast.splat208, %wide.load225
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat210, <2 x double> %wide.load, <2 x double> %i.gb)
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat212, <2 x double> %wide.load226, <2 x double> %i.gc)
  %i.ge = fmul <2 x double> %broadcast.splat214, %wide.load225
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat216, <2 x double> %wide.load, <2 x double> %i.ge)
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat218, <2 x double> %wide.load226, <2 x double> %i.gf)
  %i.gh = fmul <2 x double> %broadcast.splat220, %wide.load225
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat222, <2 x double> %wide.load, <2 x double> %i.gh)
  %i.gj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat224, <2 x double> %wide.load226, <2 x double> %i.gi)
  %i.gk = fadd <2 x double> %broadcast.splat, %i.gd
  %i.gl = fadd <2 x double> %broadcast.splat204, %i.gg
  %i.gm = fadd <2 x double> %broadcast.splat206, %i.gj
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %index ; 3 uses
  store <2 x double> %i.gk, ptr %i.gn, align 8, !tbaa !109
  %i.go = getelementptr [8 x i8], ptr %i.gn, i64 %i.fg
  store <2 x double> %i.gl, ptr %i.go, align 8, !tbaa !109
  %i.gp = getelementptr i8, ptr %i.gn, i64 %.idx.i.i32.i
  store <2 x double> %i.gm, ptr %i.gp, align 8, !tbaa !109
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !806

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.loopexit137, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph113.i, %middle.block
  %.0111.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph113.i ], [ %n.vec, %middle.block ]
  %i.gr = shufflevector <2 x double> %i.du, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gs = shufflevector <4 x double> %i.dt, <4 x double> %i.gr, <2 x i32> <i32 1, i32 4>
  %i.gt = shufflevector <4 x double> %i.dt, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.gu = shufflevector <4 x double> %i.dt, <4 x double> %i.gr, <2 x i32> <i32 2, i32 5>
  br label %scalar.ph

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.02099.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hv, %bb.f ] ; 3 uses
  %.sroa.074.098.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.hc, %bb.f ]
  %.sroa.1178.097.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.hd, %bb.f ]
  %.sroa.18.096.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.he, %bb.f ]
  %.sroa.054.095.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.hh, %bb.f ]
  %i.gv = phi <8 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.hu, %bb.f ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.val.val25.i, i64 %.02099.i ; 3 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !109, !noalias !843 ; 3 uses
  %i.gy = getelementptr [8 x i8], ptr %i.gw, i64 %i.bp
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !109, !noalias !843 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gw, i64 %.idx.i.i.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !109, !noalias !843 ; 2 uses
  %i.hc = fadd double %.sroa.074.098.i, %i.gx     ; 2 uses
  %i.hd = fadd double %.sroa.1178.097.i, %i.gz    ; 2 uses
  %i.he = fadd double %.sroa.18.096.i, %i.hb      ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.02099.i ; 3 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !109 ; 2 uses
  %i.hh = call double @llvm.fmuladd.f64(double %i.gx, double %i.hg, double %.sroa.054.095.i) ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hf, i64 %i.bp
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !109
  %i.hk = getelementptr i8, ptr %i.hf, i64 %.idx.i.i.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !109
  %i.hm = insertelement <8 x double> poison, double %i.gx, i64 0
  %i.hn = insertelement <8 x double> %i.hm, double %i.gz, i64 1
  %i.ho = insertelement <8 x double> %i.hn, double %i.hb, i64 2
  %i.hp = shufflevector <8 x double> %i.ho, <8 x double> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 0>
  %i.hq = insertelement <8 x double> poison, double %i.hj, i64 0
  %i.hr = insertelement <8 x double> %i.hq, double %i.hl, i64 1
  %i.hs = insertelement <8 x double> %i.hr, double %i.hg, i64 2
  %i.ht = shufflevector <8 x double> %i.hs, <8 x double> poison, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 0>
  %i.hu = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.hp, <8 x double> %i.ht, <8 x double> %i.gv) ; 2 uses
  %i.hv = add nuw i64 %.02099.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hv, %i.bp
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !809

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0111.i = phi i64 [ %i.iv, %scalar.ph ], [ %.0111.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %.0111.i
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !109, !noalias !842 ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %.0111.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !109, !noalias !842 ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.0111.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !109, !noalias !842 ; 2 uses
  %i.ic = fmul double %.sroa.12.0.copyload.i, %i.hz
  %i.id = call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload.i, double %i.hx, double %i.ic)
  %i.ie = call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload.i, double %i.ib, double %i.id)
  %i.if = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.gs, %i.ig
  %i.ii = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.ij, <2 x double> %i.ih)
  %i.il = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.im, <2 x double> %i.ik)
  %i.io = fadd <2 x double> %i.es, %i.in          ; 2 uses
  %i.ip = fadd double %i.et, %i.ie
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.0111.i ; 3 uses
  %i.ir = extractelement <2 x double> %i.io, i64 0
  store double %i.ir, ptr %i.iq, align 8, !tbaa !109
  %i.is = getelementptr [8 x i8], ptr %i.iq, i64 %i.fg
  %i.it = extractelement <2 x double> %i.io, i64 1
  store double %i.it, ptr %i.is, align 8, !tbaa !109
  %i.iu = getelementptr i8, ptr %i.iq, i64 %.idx.i.i32.i
  store double %i.ip, ptr %i.iu, align 8, !tbaa !109
  %i.iv = add nuw i64 %.0111.i, 1                 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %i.iv, %i.dv
  br i1 %exitcond128.not.i, label %.loopexit137, label %scalar.ph, !llvm.loop !810

.loopexit137:                                     ; preds = %scalar.ph, %middle.block, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 33
  %.pre124 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !53, !range !55
  %i.iw = trunc nuw i8 %.pre124 to i1
  br i1 %i.iw, label %.thread, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit"

.thread:                                          ; preds = %bb.d, %.loopexit137
  %i.ix = phi ptr [ %.pre, %.loopexit137 ], [ %i.e, %bb.d ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 97
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !53, !range !55, !noundef !56
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %bb.g

bb.g:                                             ; preds = %.thread
  %i.jb = load ptr, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %.not.i22 = icmp eq ptr %i.jb, null
  %spec.select.i23 = select i1 %.not.i22, ptr %0, ptr %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !844
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !217, !noalias !846
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !210, !noalias !846
  %i.jh = fneg double %i.jg
  store double %i.jd, ptr %7, align 8, !tbaa !217, !alias.scope !845, !noalias !844
  %i.ji = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jj = load <2 x double>, ptr %i.je, align 8, !tbaa !109, !noalias !846
  %i.jk = fneg <2 x double> %i.jj
  store <2 x double> %i.jk, ptr %i.ji, align 8, !tbaa !109, !alias.scope !845, !noalias !844
  %i.jl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %i.jh, ptr %i.jl, align 8, !tbaa !210, !alias.scope !845, !noalias !844
  call void @_ZN12colvarmodule8rotationC1ERKNS_10quaternionE(ptr noundef nonnull align 8 dereferenceable(568) %8, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !844
  call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !108 ; 9 uses
  %.not45.i = icmp eq i64 %i.jn, 0
  br i1 %.not45.i, label %._crit_edge.i28, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.g
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.val.val15.i = load ptr, ptr %i.jo, align 8, !tbaa !114 ; 3 uses
  %.idx.i.i.i26 = shl i64 %i.jn, 4                ; 3 uses
  %xtraiter = and i64 %i.jn, 1
  %i.jp = icmp eq i64 %i.jn, 1
  br i1 %i.jp, label %.epil.preheader, label %.lr.ph.i24.new

.lr.ph.i24.new:                                   ; preds = %.lr.ph.i24
  %unroll_iter = and i64 %i.jn, -2
  br label %bb.h

._crit_edge.i28.loopexit.unr-lcssa:               ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i28, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i28.loopexit.unr-lcssa, %.lr.ph.i24
  %.01038.i.epil.init = phi i64 [ 0, %.lr.ph.i24 ], [ %i.lx, %._crit_edge.i28.loopexit.unr-lcssa ]
  %.sroa.025.037.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i24 ], [ %i.lu, %._crit_edge.i28.loopexit.unr-lcssa ]
  %.sroa.928.036.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i24 ], [ %i.lv, %._crit_edge.i28.loopexit.unr-lcssa ]
end_hunk_0
begin_hunk_1_@_ZN12colvarmodule10atom_group18calc_fit_gradientsEv:bb.a
scalar.ph231.prol.loopexit:                       ; preds = %scalar.ph231.prol, %scalar.ph231.preheader
  %.041.i.unr = phi i64 [ %.041.i.ph, %scalar.ph231.preheader ], [ %i.lc, %scalar.ph231.prol ]
  %i.ld = icmp eq i64 %i.ka, %.neg
  br i1 %i.ld, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %scalar.ph231

bb.h:                                             ; preds = %bb.h, %.lr.ph.i24.new
  %.01038.i = phi i64 [ 0, %.lr.ph.i24.new ], [ %i.lx, %bb.h ] ; 3 uses
  %.sroa.025.037.i = phi double [ 0.000000e+00, %.lr.ph.i24.new ], [ %i.lu, %bb.h ]
  %.sroa.928.036.i = phi double [ 0.000000e+00, %.lr.ph.i24.new ], [ %i.lv, %bb.h ]
  %.sroa.14.035.i = phi double [ 0.000000e+00, %.lr.ph.i24.new ], [ %i.lw, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i24.new ], [ %niter.next.1, %bb.h ]
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val.val15.i, i64 %.01038.i ; 3 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !109, !noalias !847
  %i.lg = getelementptr [8 x i8], ptr %i.le, i64 %i.jn
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !109, !noalias !847
  %i.li = getelementptr i8, ptr %i.le, i64 %.idx.i.i.i26
  %i.lj = load double, ptr %i.li, align 8, !tbaa !109, !noalias !847
  %i.lk = fadd double %.sroa.025.037.i, %i.lf
  %i.ll = fadd double %.sroa.928.036.i, %i.lh
  %i.lm = fadd double %.sroa.14.035.i, %i.lj
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.val.val15.i, i64 %.01038.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 3 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !109, !noalias !847
  %i.lq = getelementptr [8 x i8], ptr %i.lo, i64 %i.jn
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !109, !noalias !847
  %i.ls = getelementptr i8, ptr %i.lo, i64 %.idx.i.i.i26
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !109, !noalias !847
  %i.lu = fadd double %i.lk, %i.lp                ; 3 uses
  %i.lv = fadd double %i.ll, %i.lr                ; 3 uses
  %i.lw = fadd double %i.lm, %i.lt                ; 3 uses
  %i.lx = add nuw i64 %.01038.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i28.loopexit.unr-lcssa, label %bb.h, !llvm.loop !818

scalar.ph231:                                     ; preds = %scalar.ph231.prol.loopexit, %scalar.ph231
  %.041.i = phi i64 [ %i.mf, %scalar.ph231 ], [ %.041.i.unr, %scalar.ph231.prol.loopexit ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.041.i ; 3 uses
  store double %i.kg, ptr %i.ly, align 8, !tbaa !109
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %i.ko
  store double %i.kh, ptr %i.lz, align 8, !tbaa !109
  %i.ma = getelementptr i8, ptr %i.ly, i64 %.idx.i.i20.i
  store double %i.ki, ptr %i.ma, align 8, !tbaa !109
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.041.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 3 uses
  store double %i.kg, ptr %i.mc, align 8, !tbaa !109
  %i.md = getelementptr [8 x i8], ptr %i.mc, i64 %i.ko
  store double %i.kh, ptr %i.md, align 8, !tbaa !109
  %i.me = getelementptr i8, ptr %i.mc, i64 %.idx.i.i20.i
  store double %i.ki, ptr %i.me, align 8, !tbaa !109
  %i.mf = add nuw i64 %.041.i, 2                  ; 2 uses
  %exitcond49.not.i.1 = icmp eq i64 %i.mf, %i.ka
  br i1 %exitcond49.not.i.1, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %scalar.ph231, !llvm.loop !819

"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit": ; preds = %scalar.ph231.prol.loopexit, %scalar.ph231, %middle.block244, %bb.c, %._crit_edge.i28, %.thread, %.loopexit137
  %i.mg = load ptr, ptr %i.d, align 8, !tbaa !46  ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 33
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !53, !range !55, !noundef !56
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %bb.i

bb.i:                                             ; preds = %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit"
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 97
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !53, !range !55, !noundef !56
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.j, label %.thread136

bb.j:                                             ; preds = %bb.i
  %i.mn = load ptr, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %.not.i31 = icmp eq ptr %i.mn, null
  %spec.select.i32 = select i1 %.not.i31, ptr %0, ptr %i.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !848
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !217, !noalias !850
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !210, !noalias !850
  %i.mu = fneg double %i.mt
  store double %i.mp, ptr %3, align 8, !tbaa !217, !alias.scope !849, !noalias !848
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mw = load <2 x double>, ptr %i.mq, align 8, !tbaa !109, !noalias !850
  %i.mx = fneg <2 x double> %i.mw
  store <2 x double> %i.mx, ptr %i.mv, align 8, !tbaa !109, !alias.scope !849, !noalias !848
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.mu, ptr %i.my, align 8, !tbaa !210, !alias.scope !849, !noalias !848
  call void @_ZN12colvarmodule8rotationC1ERKNS_10quaternionE(ptr noundef nonnull align 8 dereferenceable(568) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !848
  call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !108 ; 5 uses
  %.not93.i = icmp eq i64 %i.na, 0
  br i1 %.not93.i, label %._crit_edge.i38, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.j
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.val.val24.i = load ptr, ptr %i.nb, align 8, !tbaa !114
  %.idx.i.i.i35 = shl i64 %i.na, 4                ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !114
  br label %bb.k

._crit_edge.i38:                                  ; preds = %bb.k, %bb.j
  %.sroa.047.0.lcssa.i = phi double [ 0.000000e+00, %bb.j ], [ %i.rq, %bb.k ]
  %i.ne = phi <8 x double> [ zeroinitializer, %bb.j ], [ %i.sd, %bb.k ] ; 10 uses
  %i.nf = extractelement <8 x double> %i.ne, i64 7
  %i.ng = fneg double %i.nf                       ; 2 uses
  %i.nh = load <2 x double>, ptr %i.mr, align 8, !tbaa !109, !noalias !851 ; 5 uses
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.nj = load <2 x double>, ptr %i.mo, align 8, !tbaa !109, !noalias !851 ; 5 uses
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.nl = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 poison, i32 7>
  %i.nm = insertelement <2 x double> %i.nl, double %i.ng, i64 0
  %i.nn = fmul <2 x double> %i.ni, %i.nm
  %i.no = insertelement <2 x double> poison, double %.sroa.047.0.lcssa.i, i64 0
  %i.np = shufflevector <2 x double> %i.no, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.np, <2 x double> %i.nn)
  %i.nr = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.nr, <2 x double> %i.nq)
  %i.nt = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.nt, <2 x double> %i.ns)
  %i.nv = fneg <2 x double> %i.nk                 ; 2 uses
  %i.nw = shufflevector <2 x double> %i.nj, <2 x double> %i.nv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nx = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.nx, <2 x double> %i.nu)
  %i.nz = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.nz, <2 x double> %i.ny)
  %i.ob = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.oc = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.od = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 6, i32 6> ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.oe = fneg <2 x double> %i.nh                 ; 3 uses
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> %i.nh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.of, <2 x double> %i.ob, <2 x double> %i.oa)
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.oc, <2 x double> %i.og)
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.od, <2 x double> %i.oh)
  %i.oj = fmul <2 x double> %i.oi, splat (double 2.000000e+00)
  %i.ok = shufflevector <8 x double> %i.ne, <8 x double> poison, <2 x i32> <i32 7, i32 poison>
  %i.ol = insertelement <2 x double> %i.ok, double %i.ng, i64 1
  %i.om = fmul <2 x double> %i.ol, %i.nk
  %i.on = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.np, <2 x double> %i.om)
  %i.oo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.nr, <2 x double> %i.on)
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.nt, <2 x double> %i.oo)
  %i.oq = shufflevector <2 x double> %i.nh, <2 x double> %i.oe, <2 x i32> <i32 0, i32 3>
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.nx, <2 x double> %i.op)
  %i.os = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.nz, <2 x double> %i.or)
  %i.ot = fneg <2 x double> %i.nk
  %i.ou = shufflevector <2 x double> %i.nj, <2 x double> %i.ot, <2 x i32> <i32 3, i32 1>
  %i.ov = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.ob, <2 x double> %i.os)
  %i.ow = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.oc, <2 x double> %i.ov)
  %i.ox = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.of, <2 x double> %i.od, <2 x double> %i.ow)
  %i.oy = fmul <2 x double> %i.ox, splat (double 2.000000e+00)
  store <2 x double> %i.oj, ptr %5, align 16
  store <2 x double> %i.oy, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !136
  call void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %i.pa, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.pb = load ptr, ptr %i.oz, align 8, !tbaa !136
  call void @_ZNK19rotation_derivative28project_force_to_C_from_dxdqISt5arrayIdLm4EEEEN12colvarmodule7rmatrixERKT_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rmatrix") align 8 %6, ptr noundef nonnull align 8 dereferenceable(712) %i.pb, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.sroa.9.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.pc = load <4 x double>, ptr %6, align 8, !tbaa !109 ; 7 uses
  %i.pd = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i48, align 8, !tbaa !109 ; 3 uses
  %.sroa.11.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.11.0.copyload.i53 = load double, ptr %.sroa.11.0..sroa_idx.i52, align 8, !tbaa !109 ; 2 uses
  %.sroa.12.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.12.0.copyload.i55 = load double, ptr %.sroa.12.0..sroa_idx.i54, align 8, !tbaa !109 ; 2 uses
  %.sroa.13.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.sroa.13.0.copyload.i57 = load double, ptr %.sroa.13.0..sroa_idx.i56, align 8, !tbaa !109 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.pe = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 1144
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !108 ; 5 uses
  %.not94.i = icmp eq i64 %i.pf, 0
  br i1 %.not94.i, label %.loopexit, label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %._crit_edge.i38
  %i.pg = load ptr, ptr %i.oz, align 8, !tbaa !136 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !218, !noalias !852 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !218, !noalias !852 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !218, !noalias !852 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %spec.select, i64 512
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.po, null
  %spec.select.i.i.i59 = select i1 %.not.i.i.i58, ptr %spec.select, ptr %i.po ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i59, i64 1096
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !114 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i59, i64 1144
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !108 ; 4 uses
  %.idx.i.i31.i = shl i64 %i.ps, 4                ; 4 uses
  %min.iters.check270 = icmp ult i64 %i.pf, 12
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck247

vector.memcheck247:                               ; preds = %.lr.ph91.i
  %i.pt = ptrtoaddr ptr %i.pq to i64              ; 5 uses
  %i.pu = ptrtoaddr ptr %i.pm to i64
  %i.pv = ptrtoaddr ptr %i.pk to i64              ; 3 uses
  %i.pw = ptrtoaddr ptr %i.pi to i64              ; 3 uses
  %i.px = shl i64 %i.ps, 3                        ; 3 uses
  %i.py = add i64 %i.px, -1
  %diff.check248 = icmp ult i64 %i.py, 15
  %i.pz = sub i64 %i.pw, %i.pt
  %diff.check251 = icmp ugt i64 %i.pz, -16
  %conflict.rdx252 = or i1 %diff.check248, %diff.check251
  %i.qa = sub i64 %i.pv, %i.pt
  %diff.check253 = icmp ugt i64 %i.qa, -16
  %conflict.rdx254 = or i1 %conflict.rdx252, %diff.check253
  %i.qb = sub i64 %i.pu, %i.pt                    ; 3 uses
  %diff.check255 = icmp ugt i64 %i.qb, -16
  %conflict.rdx256 = or i1 %conflict.rdx254, %diff.check255
  %i.qc = add i64 %i.px, %i.pt                    ; 2 uses
  %i.qd = sub i64 %i.pw, %i.qc
  %diff.check257 = icmp ugt i64 %i.qd, -16
  %conflict.rdx258 = or i1 %conflict.rdx256, %diff.check257
  %i.qe = sub i64 %i.pv, %i.qc
  %diff.check259 = icmp ugt i64 %i.qe, -16
  %conflict.rdx260 = or i1 %conflict.rdx258, %diff.check259
  %i.qf = sub i64 %i.qb, %i.px
  %diff.check261 = icmp ugt i64 %i.qf, -16
  %conflict.rdx262 = or i1 %conflict.rdx260, %diff.check261
  %i.qg = add i64 %.idx.i.i31.i, %i.pt            ; 2 uses
  %i.qh = sub i64 %i.pw, %i.qg
  %diff.check263 = icmp ugt i64 %i.qh, -16
  %conflict.rdx264 = or i1 %conflict.rdx262, %diff.check263
  %i.qi = sub i64 %i.pv, %i.qg
  %diff.check265 = icmp ugt i64 %i.qi, -16
  %conflict.rdx266 = or i1 %conflict.rdx264, %diff.check265
  %i.qj = sub i64 %i.qb, %.idx.i.i31.i
  %diff.check267 = icmp ugt i64 %i.qj, -16
  %conflict.rdx268 = or i1 %conflict.rdx266, %diff.check267
  br i1 %conflict.rdx268, label %scalar.ph269.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %vector.memcheck247
  %n.vec272 = and i64 %i.pf, -2                   ; 3 uses
  %broadcast.splat274 = shufflevector <4 x double> %i.pc, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat276 = shufflevector <4 x double> %i.pc, <4 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat278 = shufflevector <4 x double> %i.pc, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat280 = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat282 = shufflevector <4 x double> %i.pc, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat284 = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert285 = insertelement <2 x double> poison, double %.sroa.12.0.copyload.i55, i64 0
  %broadcast.splat286 = shufflevector <2 x double> %broadcast.splatinsert285, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <2 x double> poison, double %.sroa.11.0.copyload.i53, i64 0
  %broadcast.splat288 = shufflevector <2 x double> %broadcast.splatinsert287, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <2 x double> poison, double %.sroa.13.0.copyload.i57, i64 0
  %broadcast.splat290 = shufflevector <2 x double> %broadcast.splatinsert289, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph271
  %index292 = phi i64 [ 0, %vector.ph271 ], [ %index.next296, %vector.body291 ] ; 5 uses
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %index292
  %wide.load293 = load <2 x double>, ptr %i.qk, align 8, !tbaa !109, !noalias !852 ; 3 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %index292
  %wide.load294 = load <2 x double>, ptr %i.ql, align 8, !tbaa !109, !noalias !852 ; 3 uses
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %index292
  %wide.load295 = load <2 x double>, ptr %i.qm, align 8, !tbaa !109, !noalias !852 ; 3 uses
  %i.qn = fmul <2 x double> %broadcast.splat274, %wide.load294
  %i.qo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat276, <2 x double> %wide.load293, <2 x double> %i.qn)
  %i.qp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat278, <2 x double> %wide.load295, <2 x double> %i.qo)
  %i.qq = fmul <2 x double> %broadcast.splat280, %wide.load294
  %i.qr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat282, <2 x double> %wide.load293, <2 x double> %i.qq)
  %i.qs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat284, <2 x double> %wide.load295, <2 x double> %i.qr)
  %i.qt = fmul <2 x double> %broadcast.splat286, %wide.load294
  %i.qu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat288, <2 x double> %wide.load293, <2 x double> %i.qt)
  %i.qv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat290, <2 x double> %wide.load295, <2 x double> %i.qu)
  %i.qw = fadd <2 x double> %i.qp, zeroinitializer
  %i.qx = fadd <2 x double> %i.qs, zeroinitializer
  %i.qy = fadd <2 x double> %i.qv, zeroinitializer
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %index292 ; 3 uses
  store <2 x double> %i.qw, ptr %i.qz, align 8, !tbaa !109
  %i.ra = getelementptr [8 x i8], ptr %i.qz, i64 %i.ps
  store <2 x double> %i.qx, ptr %i.ra, align 8, !tbaa !109
  %i.rb = getelementptr i8, ptr %i.qz, i64 %.idx.i.i31.i
  store <2 x double> %i.qy, ptr %i.rb, align 8, !tbaa !109
  %index.next296 = add nuw i64 %index292, 2       ; 2 uses
  %i.rc = icmp eq i64 %index.next296, %n.vec272
  br i1 %i.rc, label %middle.block297, label %vector.body291, !llvm.loop !828

middle.block297:                                  ; preds = %vector.body291
  %cmp.n298 = icmp eq i64 %i.pf, %n.vec272
  br i1 %cmp.n298, label %.loopexit, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %vector.memcheck247, %.lr.ph91.i, %middle.block297
  %.089.i.ph = phi i64 [ 0, %vector.memcheck247 ], [ 0, %.lr.ph91.i ], [ %n.vec272, %middle.block297 ]
  %i.rd = shufflevector <2 x double> %i.pd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.re = shufflevector <4 x double> %i.pc, <4 x double> %i.rd, <2 x i32> <i32 1, i32 4>
  %i.rf = shufflevector <4 x double> %i.pc, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.rg = shufflevector <4 x double> %i.pc, <4 x double> %i.rd, <2 x i32> <i32 2, i32 5>
  br label %scalar.ph269

bb.k:                                             ; preds = %bb.k, %.lr.ph.i33
  %.01980.i = phi i64 [ 0, %.lr.ph.i33 ], [ %i.se, %bb.k ] ; 3 uses
  %.sroa.047.079.i = phi double [ 0.000000e+00, %.lr.ph.i33 ], [ %i.rq, %bb.k ]
  %i.rh = phi <8 x double> [ zeroinitializer, %.lr.ph.i33 ], [ %i.sd, %bb.k ]
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.val.val24.i, i64 %.01980.i ; 3 uses
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !109, !noalias !853 ; 2 uses
  %i.rk = getelementptr [8 x i8], ptr %i.ri, i64 %i.na
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !109, !noalias !853
  %i.rm = getelementptr i8, ptr %i.ri, i64 %.idx.i.i.i35
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !109, !noalias !853
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.01980.i ; 3 uses
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !109 ; 2 uses
  %i.rq = call double @llvm.fmuladd.f64(double %i.rj, double %i.rp, double %.sroa.047.079.i) ; 2 uses
  %i.rr = getelementptr [8 x i8], ptr %i.ro, i64 %i.na
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !109
  %i.rt = getelementptr i8, ptr %i.ro, i64 %.idx.i.i.i35
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !109
  %i.rv = insertelement <8 x double> poison, double %i.rj, i64 0
  %i.rw = insertelement <8 x double> %i.rv, double %i.rl, i64 1
  %i.rx = insertelement <8 x double> %i.rw, double %i.rn, i64 2
  %i.ry = shufflevector <8 x double> %i.rx, <8 x double> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 0>
  %i.rz = insertelement <8 x double> poison, double %i.rs, i64 0
  %i.sa = insertelement <8 x double> %i.rz, double %i.ru, i64 1
  %i.sb = insertelement <8 x double> %i.sa, double %i.rp, i64 2
  %i.sc = shufflevector <8 x double> %i.sb, <8 x double> poison, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 0>
  %i.sd = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ry, <8 x double> %i.sc, <8 x double> %i.rh) ; 2 uses
  %i.se = add nuw i64 %.01980.i, 1                ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.se, %i.na
  br i1 %exitcond.not.i37, label %._crit_edge.i38, label %bb.k, !llvm.loop !831

scalar.ph269:                                     ; preds = %scalar.ph269.preheader, %scalar.ph269
  %.089.i = phi i64 [ %i.te, %scalar.ph269 ], [ %.089.i.ph, %scalar.ph269.preheader ] ; 5 uses
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %.089.i
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !109, !noalias !852 ; 2 uses
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %.089.i
  %i.si = load double, ptr %i.sh, align 8, !tbaa !109, !noalias !852 ; 2 uses
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %.089.i
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !109, !noalias !852 ; 2 uses
  %i.sl = fmul double %.sroa.12.0.copyload.i55, %i.si
  %i.sm = call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload.i53, double %i.sg, double %i.sl)
  %i.sn = call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload.i57, double %i.sk, double %i.sm)
  %i.so = insertelement <2 x double> poison, double %i.si, i64 0
  %i.sp = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sq = fmul <2 x double> %i.re, %i.sp
  %i.sr = insertelement <2 x double> poison, double %i.sg, i64 0
  %i.ss = shufflevector <2 x double> %i.sr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.st = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.ss, <2 x double> %i.sq)
  %i.su = insertelement <2 x double> poison, double %i.sk, i64 0
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rg, <2 x double> %i.sv, <2 x double> %i.st)
  %i.sx = fadd <2 x double> %i.sw, zeroinitializer ; 2 uses
  %i.sy = fadd double %i.sn, 0.000000e+00
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %.089.i ; 3 uses
  %i.ta = extractelement <2 x double> %i.sx, i64 0
  store double %i.ta, ptr %i.sz, align 8, !tbaa !109
  %i.tb = getelementptr [8 x i8], ptr %i.sz, i64 %i.ps
  %i.tc = extractelement <2 x double> %i.sx, i64 1
  store double %i.tc, ptr %i.tb, align 8, !tbaa !109
  %i.td = getelementptr i8, ptr %i.sz, i64 %.idx.i.i31.i
  store double %i.sy, ptr %i.td, align 8, !tbaa !109
  %i.te = add nuw i64 %.089.i, 1                  ; 2 uses
  %exitcond103.not.i = icmp eq i64 %i.te, %i.pf
  br i1 %exitcond103.not.i, label %.loopexit, label %scalar.ph269, !llvm.loop !832

.loopexit:                                        ; preds = %scalar.ph269, %middle.block297, %._crit_edge.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pre125 = load ptr, ptr %i.d, align 8, !tbaa !46 ; 2 uses
  %.phi.trans.insert126 = getelementptr inbounds nuw i8, ptr %.pre125, i64 33
  %.pre127 = load i8, ptr %.phi.trans.insert126, align 1, !tbaa !53, !range !55
  %i.tf = trunc nuw i8 %.pre127 to i1
  br i1 %i.tf, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %.thread136

.thread136:                                       ; preds = %bb.i, %.loopexit
  %i.tg = phi ptr [ %.pre125, %.loopexit ], [ %i.mg, %bb.i ]
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 97
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !53, !range !55, !noundef !56
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %bb.l

bb.l:                                             ; preds = %.thread136
  %i.tk = load ptr, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !854
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !217, !noalias !856
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.tp = load double, ptr %i.to, align 8, !tbaa !210, !noalias !856
  %i.tq = fneg double %i.tp
  store double %i.tm, ptr %1, align 8, !tbaa !217, !alias.scope !855, !noalias !854
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ts = load <2 x double>, ptr %i.tn, align 8, !tbaa !109, !noalias !856
  %i.tt = fneg <2 x double> %i.ts
  store <2 x double> %i.tt, ptr %i.tr, align 8, !tbaa !109, !alias.scope !855, !noalias !854
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.tq, ptr %i.tu, align 8, !tbaa !210, !alias.scope !855, !noalias !854
  call void @_ZN12colvarmodule8rotationC1ERKNS_10quaternionE(ptr noundef nonnull align 8 dereferenceable(568) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !854
  call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not.i60 = icmp eq ptr %i.tk, null
  %spec.select.i61 = select i1 %.not.i60, ptr %0, ptr %i.tk
  %i.tv = getelementptr inbounds nuw i8, ptr %spec.select.i61, i64 1144
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !108 ; 2 uses
  %.not26.i = icmp eq i64 %i.tw, 0
  br i1 %.not26.i, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.l
  %i.tx = getelementptr inbounds nuw i8, ptr %spec.select, i64 512
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.ty, null
  %spec.select.i.i.i64 = select i1 %.not.i.i.i63, ptr %spec.select, ptr %i.ty ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i64, i64 1096
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !114 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i64, i64 1144
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !108 ; 2 uses
  %.idx.i.i19.i = shl i64 %i.uc, 4
  %i.ud = shl nuw i64 %i.tw, 3                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ua, i8 0, i64 %i.ud, i1 false), !tbaa !109
  %i.ue = shl i64 %i.uc, 3
  %scevgep.i = getelementptr i8, ptr %i.ua, i64 %i.ue
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ud, i1 false), !tbaa !109
  %scevgep27.i = getelementptr i8, ptr %i.ua, i64 %.idx.i.i19.i
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep27.i, i8 0, i64 %i.ud, i1 false), !tbaa !109
  br label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit"

"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit": ; preds = %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", %.lr.ph.i62, %bb.l, %.thread136, %.loopexit, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_1
