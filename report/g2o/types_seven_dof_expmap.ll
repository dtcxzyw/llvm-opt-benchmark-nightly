Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3g2o10BaseVertexILi7ENS_4Sim3EE11solveDirectEd:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.p, ptr %i.n, align 16, !tbaa !20, !alias.scope !476
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.s, ptr %i.q, align 16, !tbaa !20, !alias.scope !476
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.v, ptr %i.t, align 16, !tbaa !20, !alias.scope !476
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.y = load <2 x double>, ptr %i.x, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.y, ptr %i.w, align 16, !tbaa !20, !alias.scope !476
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !20, !alias.scope !476
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ae, ptr %i.ac, align 16, !tbaa !20, !alias.scope !476
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.ah = load <2 x double>, ptr %i.ag, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ah, ptr %i.af, align 16, !tbaa !20, !alias.scope !476
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.aj, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ak, ptr %i.ai, align 16, !tbaa !20, !alias.scope !476
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.an, ptr %i.al, align 16, !tbaa !20, !alias.scope !476
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 2 uses
  %i.aq = load <2 x double>, ptr %i.ap, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.aq, ptr %i.ao, align 16, !tbaa !20, !alias.scope !476
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.at, ptr %i.ar, align 16, !tbaa !20, !alias.scope !476
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.aw, ptr %i.au, align 16, !tbaa !20, !alias.scope !476
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 224 ; 2 uses
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.az, ptr %i.ax, align 16, !tbaa !20, !alias.scope !476
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 2 uses
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bc, ptr %i.ba, align 16, !tbaa !20, !alias.scope !476
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !20, !alias.scope !476
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bi, ptr %i.bg, align 16, !tbaa !20, !alias.scope !476
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bl, ptr %i.bj, align 16, !tbaa !20, !alias.scope !476
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 304 ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bo, ptr %i.bm, align 16, !tbaa !20, !alias.scope !476
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 320 ; 2 uses
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.br, ptr %i.bp, align 16, !tbaa !20, !alias.scope !476
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 336 ; 2 uses
  %i.bu = load <2 x double>, ptr %i.bt, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bu, ptr %i.bs, align 16, !tbaa !20, !alias.scope !476
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 352 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bw, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bx, ptr %i.bv, align 16, !tbaa !20, !alias.scope !476
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 368 ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ca, ptr %i.by, align 16, !tbaa !20, !alias.scope !476
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 384 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 16, !tbaa !36, !noalias !476
  store double %i.cd, ptr %i.cb, align 16, !tbaa !36, !alias.scope !476
  call void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7computeEv(ptr noundef nonnull align 8 dereferenceable(458) %2)
  %i.ce = load i8, ptr %i.h, align 8, !tbaa !156
  %i.cf = sitofp i8 %i.ce to double
  %i.cg = load double, ptr %2, align 16, !tbaa !36
  %i.ch = load double, ptr %i.t, align 16, !tbaa !36
  %i.ci = load double, ptr %i.af, align 16, !tbaa !36
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = fmul double %i.cg, %i.cj
  %i.cl = load double, ptr %i.ar, align 16, !tbaa !36
  %i.cm = load double, ptr %i.bd, align 16, !tbaa !36
  %i.cn = fmul double %i.cl, %i.cm
  %i.co = load double, ptr %i.bp, align 16, !tbaa !36
  %i.cp = load double, ptr %i.cb, align 16, !tbaa !36
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = fmul double %i.cn, %i.cq
  %i.cs = fmul double %i.ck, %i.cr
  %i.ct = fmul double %i.cs, %i.cf                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.cu = fcmp uno double %i.ct, 0.000000e+00
  %i.cv = fcmp olt double %i.ct, f0x3CB0000000000000
  %or.cond = or i1 %i.cu, %i.cv
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 400 ; 2 uses
  store i8 0, ptr %i.cw, align 16, !tbaa !479, !alias.scope !480
  %i.cx = load <2 x double>, ptr %7, align 16, !tbaa !20
  store <2 x double> %i.cx, ptr %9, align 16, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cz = load <2 x double>, ptr %i.l, align 16, !tbaa !20
  store <2 x double> %i.cz, ptr %i.cy, align 16, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.db = load <2 x double>, ptr %i.o, align 16, !tbaa !20
  store <2 x double> %i.db, ptr %i.da, align 16, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.dd = load <2 x double>, ptr %i.r, align 16, !tbaa !20 ; 2 uses
  store <2 x double> %i.dd, ptr %i.dc, align 16, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.df = load <2 x double>, ptr %i.u, align 16, !tbaa !20
  store <2 x double> %i.df, ptr %i.de, align 16, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.dh = load <2 x double>, ptr %i.x, align 16, !tbaa !20
  store <2 x double> %i.dh, ptr %i.dg, align 16, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.dj = load <2 x double>, ptr %i.aa, align 16, !tbaa !20
  store <2 x double> %i.dj, ptr %i.di, align 16, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.dl = load <2 x double>, ptr %i.ad, align 16, !tbaa !20
  store <2 x double> %i.dl, ptr %i.dk, align 16, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.dn = load <2 x double>, ptr %i.ag, align 16, !tbaa !20
  store <2 x double> %i.dn, ptr %i.dm, align 16, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.dp = load <2 x double>, ptr %i.aj, align 16, !tbaa !20
  store <2 x double> %i.dp, ptr %i.do, align 16, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.dr = load <2 x double>, ptr %i.am, align 16, !tbaa !20
  store <2 x double> %i.dr, ptr %i.dq, align 16, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.dt = load <2 x double>, ptr %i.ap, align 16, !tbaa !20
  store <2 x double> %i.dt, ptr %i.ds, align 16, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.dv = load <2 x double>, ptr %i.as, align 16, !tbaa !20
  store <2 x double> %i.dv, ptr %i.du, align 16, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 2 uses
  %i.dx = load <2 x double>, ptr %i.av, align 16, !tbaa !20
  store <2 x double> %i.dx, ptr %i.dw, align 16, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.dz = load <2 x double>, ptr %i.ay, align 16, !tbaa !20
  store <2 x double> %i.dz, ptr %i.dy, align 16, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.eb = load <2 x double>, ptr %i.bb, align 16, !tbaa !20
  store <2 x double> %i.eb, ptr %i.ea, align 16, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.ed = load <2 x double>, ptr %i.be, align 16, !tbaa !20
  store <2 x double> %i.ed, ptr %i.ec, align 16, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %i.ef = load <2 x double>, ptr %i.bh, align 16, !tbaa !20
  store <2 x double> %i.ef, ptr %i.ee, align 16, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.eh = load <2 x double>, ptr %i.bk, align 16, !tbaa !20
  store <2 x double> %i.eh, ptr %i.eg, align 16, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 304
  %i.ej = load <2 x double>, ptr %i.bn, align 16, !tbaa !20
  store <2 x double> %i.ej, ptr %i.ei, align 16, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.el = load <2 x double>, ptr %i.bq, align 16, !tbaa !20
  store <2 x double> %i.el, ptr %i.ek, align 16, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 336
  %i.en = load <2 x double>, ptr %i.bt, align 16, !tbaa !20
  store <2 x double> %i.en, ptr %i.em, align 16, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 352
  %i.ep = load <2 x double>, ptr %i.bw, align 16, !tbaa !20
  store <2 x double> %i.ep, ptr %i.eo, align 16, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.er = load <2 x double>, ptr %i.bz, align 16, !tbaa !20
  store <2 x double> %i.er, ptr %i.eq, align 16, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 384 ; 2 uses
  %i.et = load double, ptr %i.cc, align 16, !tbaa !36
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 392
  %i.ev = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.et, i64 0
  store <2 x double> %i.ev, ptr %i.es, align 16, !tbaa !36
  %i.ew = extractelement <2 x double> %i.dd, i64 0
  %i.ex = call double @llvm.fabs.f64(double %i.ew)
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.049.i = phi i64 [ 0, %bb.b ], [ %i.im, %bb.i ] ; 15 uses
  %i.ey = phi double [ 0.000000e+00, %bb.b ], [ %i.il, %bb.i ] ; 2 uses
  %i.ez = add nsw i64 %.049.i, -1                 ; 2 uses
  %i.fa = add nsw i64 %.049.i, -2
  %i.fb = sub nsw i64 7, %.049.i                  ; 2 uses
  %i.fc = and i64 %i.fb, -2
  %i.fd = and i64 %i.fb, 1                        ; 2 uses
  %i.fe = add i64 %.049.i, %i.fc
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.049.i, 56
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i.i.i.i.i
  %i.fg = sub nuw nsw i64 7, %.049.i              ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.049.i ; 9 uses
  %i.fi = and i64 %.049.i, 4
  %10 = xor i64 %i.fi, 4                          ; 2 uses
  %i.fj = and i64 %i.fg, 6                        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.049.i, 6
  br i1 %.not.i.i.i.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fk = load <2 x double>, ptr %i.fh, align 8, !tbaa !20
  %i.fl = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fk) ; 2 uses
  %i.fm = icmp samesign ult i64 %.049.i, 4
  br i1 %i.fm, label %._crit_edge.i.i.i.i.i.i, label %bb.f

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fo = load <2 x double>, ptr %i.fn, align 8, !tbaa !20
  %i.fp = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fo)
  %i.fq = fadd <2 x double> %i.fl, %i.fp          ; 2 uses
  %i.fr = icmp samesign ugt i64 %i.fj, %10
  br i1 %i.fr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %10
  %i.ft = load <2 x double>, ptr %i.fs, align 8, !tbaa !20
  %i.fu = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ft)
  %i.fv = fadd <2 x double> %i.fq, %i.fu
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i, %bb.d
  %.274.i.i.i.i.i.i = phi <2 x double> [ %i.fl, %bb.d ], [ %i.fv, %bb.e ], [ %i.fq, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i, %shift
  %i.fw = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %.not.i = icmp eq i64 %i.fj, %i.fg
  br i1 %.not.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %i.fd, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.prol = phi i64 [ %i.gb, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.fj, %.lr.ph85.i.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.prol = phi double [ %i.ga, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.fw, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i.prol
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !36
  %i.fz = call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = fadd double %.182.i.i.i.i.i.i.prol, %i.fz ; 3 uses
  %i.gb = add nuw nsw i64 %.05283.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.fd
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol, !llvm.loop !470

.lr.ph85.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph85.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.ga, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.unr = phi i64 [ %i.fj, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.gb, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.unr = phi double [ %i.fw, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.ga, %.lr.ph85.i.i.i.i.i.i.prol ]
  %i.gc = add i64 %i.fe, -4
  %i.gd = icmp ult i64 %i.gc, 3
  br i1 %i.gd, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i = phi i64 [ %i.gx, %.lr.ph85.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i = phi double [ %i.gw, %.lr.ph85.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !36
  %i.gg = call noundef double @llvm.fabs.f64(double %i.gf)
  %i.gh = fadd double %.182.i.i.i.i.i.i, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !36
  %i.gl = call noundef double @llvm.fabs.f64(double %i.gk)
  %i.gm = fadd double %i.gh, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load double, ptr %i.go, align 8, !tbaa !36
  %i.gq = call noundef double @llvm.fabs.f64(double %i.gp)
  %i.gr = fadd double %i.gm, %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !36
  %i.gv = call noundef double @llvm.fabs.f64(double %i.gu)
  %i.gw = fadd double %i.gr, %i.gv                ; 2 uses
  %i.gx = add nuw nsw i64 %.05283.i.i.i.i.i.i, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.gx, %i.fg
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !471

.thread.i:                                        ; preds = %bb.c
  %i.gy = load double, ptr %i.fh, align 16, !tbaa !36
  %i.gz = call noundef double @llvm.fabs.f64(double %i.gy)
  br label %.lr.ph.i.i.i.i.i20.preheader.i

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i, %bb.f
  %.0.i.i.i.i = phi double [ %i.fw, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ], [ %i.gw, %.lr.ph85.i.i.i.i.i.i ] ; 3 uses
  %i.ha = icmp eq i64 %.049.i, 0
  br i1 %i.ha, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.049.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !36
  %i.hd = call noundef double @llvm.fabs.f64(double %i.hc) ; 2 uses
  %.not47.i = icmp eq i64 %.049.i, 1
  br i1 %.not47.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.preheader.i

.lr.ph.i.i.i.i.i20.preheader.i:                   ; preds = %bb.g, %.thread.i
  %i.he = phi double [ %i.ex, %.thread.i ], [ %i.hd, %bb.g ] ; 2 uses
  %.0.i.i.i5963.i = phi double [ %i.gz, %.thread.i ], [ %.0.i.i.i.i, %bb.g ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.049.i ; 5 uses
  %xtraiter45 = and i64 %i.ez, 3                  ; 3 uses
  %i.hg = icmp ult i64 %i.fa, 3
  br i1 %i.hg, label %.lr.ph.i.i.i.i.i20.i.epil.preheader, label %.lr.ph.i.i.i.i.i20.preheader.i.new

.lr.ph.i.i.i.i.i20.preheader.i.new:               ; preds = %.lr.ph.i.i.i.i.i20.preheader.i
  %unroll_iter = and i64 %i.ez, -4
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.i.i.i.i.i20.preheader.i.new
  %.01725.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %i.id, %.lr.ph.i.i.i.i.i20.i ] ; 5 uses
  %.02324.i.i.i.i.i.i = phi double [ %i.he, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %i.ic, %.lr.ph.i.i.i.i.i20.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i20.i ]
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.01725.i.i.i.i.i.i, 56
  %i.hh = getelementptr i8, ptr %i.hf, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !36
  %i.hj = call noundef double @llvm.fabs.f64(double %i.hi)
  %i.hk = fadd double %.02324.i.i.i.i.i.i, %i.hj
  %i.hl = mul nuw i64 %.01725.i.i.i.i.i.i, 56
  %i.hm = getelementptr i8, ptr %i.hf, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 56
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !36
  %i.hp = call noundef double @llvm.fabs.f64(double %i.ho)
  %i.hq = fadd double %i.hk, %i.hp
  %i.hr = mul nuw i64 %.01725.i.i.i.i.i.i, 56
  %i.hs = getelementptr i8, ptr %i.hf, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 112
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !36
  %i.hv = call noundef double @llvm.fabs.f64(double %i.hu)
  %i.hw = fadd double %i.hq, %i.hv
  %i.hx = mul nuw i64 %.01725.i.i.i.i.i.i, 56
  %i.hy = getelementptr i8, ptr %i.hf, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 168
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !36
  %i.ib = call noundef double @llvm.fabs.f64(double %i.ia)
  %i.ic = fadd double %i.hw, %i.ib                ; 3 uses
  %i.id = add nuw nsw i64 %.01725.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i20.i, !llvm.loop !472

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i20.i
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.i.epil.preheader

.lr.ph.i.i.i.i.i20.i.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.preheader.i
  %.01725.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader.i ], [ %i.id, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i.i.epil.init = phi double [ %i.he, %.lr.ph.i.i.i.i.i20.preheader.i ], [ %i.ic, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter45, 0
  call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.i.i.i20.i.epil

.lr.ph.i.i.i.i.i20.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i20.i.epil, %.lr.ph.i.i.i.i.i20.i.epil.preheader
  %.01725.i.i.i.i.i.i.epil = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.01725.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.i.epil = phi double [ %i.ih, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.02324.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i20.i.epil ], [ 0, %.lr.ph.i.i.i.i.i20.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.01725.i.i.i.i.i.i.epil, 56
  %i.ie = getelementptr i8, ptr %i.hf, i64 %.idx.i.i.i.i.i.i.i.i.i.epil
  %i.if = load double, ptr %i.ie, align 8, !tbaa !36
  %i.ig = call noundef double @llvm.fabs.f64(double %i.if)
  %i.ih = fadd double %.02324.i.i.i.i.i.i.epil, %i.ig ; 2 uses
  %i.ii = add nuw nsw i64 %.01725.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter45
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.i.epil, !llvm.loop !473

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.i.epil, %bb.g, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %.0.i.i.i60.i = phi double [ %.0.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i ], [ %.0.i.i.i.i, %bb.g ], [ %.0.i.i.i5963.i, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.0.i.i.i5963.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %.0.i.i.i19.i = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i ], [ %i.hd, %bb.g ], [ %i.ic, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ], [ %i.ih, %.lr.ph.i.i.i.i.i20.i.epil ]
  %i.ij = fadd double %.0.i.i.i60.i, %.0.i.i.i19.i ; 3 uses
  %i.ik = fcmp ogt double %i.ij, %i.ey
  br i1 %i.ik, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i
  store double %i.ij, ptr %i.eu, align 8, !tbaa !481
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %i.il = phi double [ %i.ij, %bb.h ], [ %i.ey, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i ]
  %i.im = add nuw nsw i64 %.049.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.im, 7
  br i1 %exitcond.not.i, label %bb.j, label %bb.c, !llvm.loop !474

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.cw, align 16, !tbaa !479
  %i.in = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(408) %9)
  %i.io = icmp ne i64 %i.in, -1
  %i.ip = zext i1 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 404
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !482
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.is = load <2 x double>, ptr %i.ir, align 16, !tbaa !20 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.iv = load <2 x double>, ptr %i.iu, align 16, !tbaa !20 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.iy = load <2 x double>, ptr %i.ix, align 16, !tbaa !20 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jb = load double, ptr %i.ja, align 16, !tbaa !36
  %i.jc = load double, ptr %9, align 16, !tbaa !36 ; 2 uses
  %i.jd = extractelement <2 x double> %i.is, i64 0
  %i.je = fdiv double %i.jd, %i.jc                ; 7 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !36
  %i.jh = fmul double %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.jj = extractelement <2 x double> %i.is, i64 1
  %i.jk = fsub double %i.jj, %i.jh
  %i.jl = load double, ptr %i.de, align 16, !tbaa !36 ; 2 uses
  %i.jm = fdiv double %i.jk, %i.jl                ; 6 uses
  %i.jn = load double, ptr %i.cy, align 16, !tbaa !36
  %i.jo = fmul double %i.je, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !36
end_hunk_0
