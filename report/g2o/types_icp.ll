Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_icp?download=true
inline.NumInlined: 15255
inline.NumDeleted: 8449
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE11solveDirectEd:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.09.0.copyload, ptr %i.b, align 8, !tbaa !152
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %1, ptr %i.c, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %7, ptr %4, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %4, ptr %5, align 8, !tbaa !390
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.d, align 8, !tbaa !391
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.e, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %7, ptr %i.f, align 8, !tbaa !162
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEKNS7_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_identity_opIdEES5_EEKNSH_INS0_18scalar_constant_opIdEEKS5_EEEEEEEENS0_9assign_opIddEELi0EEELi0ELi1EE3runERSX_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 336
  store double 0.000000e+00, ptr %i.g, align 16, !tbaa !147, !alias.scope !392
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !148, !alias.scope !392
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 345
  store i8 0, ptr %i.i, align 1, !tbaa !149, !alias.scope !392
  %i.j = load <2 x double>, ptr %7, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.j, ptr %2, align 16, !tbaa !20, !alias.scope !392
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.m, ptr %i.k, align 16, !tbaa !20, !alias.scope !392
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.p, ptr %i.n, align 16, !tbaa !20, !alias.scope !392
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.s, ptr %i.q, align 16, !tbaa !20, !alias.scope !392
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.v, ptr %i.t, align 16, !tbaa !20, !alias.scope !392
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.y = load <2 x double>, ptr %i.x, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.y, ptr %i.w, align 16, !tbaa !20, !alias.scope !392
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !20, !alias.scope !392
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.ae, ptr %i.ac, align 16, !tbaa !20, !alias.scope !392
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.ah = load <2 x double>, ptr %i.ag, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.ah, ptr %i.af, align 16, !tbaa !20, !alias.scope !392
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.aj, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.ak, ptr %i.ai, align 16, !tbaa !20, !alias.scope !392
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.an, ptr %i.al, align 16, !tbaa !20, !alias.scope !392
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 2 uses
  %i.aq = load <2 x double>, ptr %i.ap, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.aq, ptr %i.ao, align 16, !tbaa !20, !alias.scope !392
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.at, ptr %i.ar, align 16, !tbaa !20, !alias.scope !392
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.aw, ptr %i.au, align 16, !tbaa !20, !alias.scope !392
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 224 ; 2 uses
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.az, ptr %i.ax, align 16, !tbaa !20, !alias.scope !392
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 2 uses
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.bc, ptr %i.ba, align 16, !tbaa !20, !alias.scope !392
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !20, !alias.scope !392
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !20, !noalias !392
  store <2 x double> %i.bi, ptr %i.bg, align 16, !tbaa !20, !alias.scope !392
  call void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7computeEv(ptr noundef nonnull align 16 dereferenceable(346) %2)
  %i.bj = load i8, ptr %i.h, align 8, !tbaa !148
  %i.bk = sitofp i8 %i.bj to double
  %i.bl = load double, ptr %2, align 16, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !32
  %i.bo = load double, ptr %i.ac, align 16, !tbaa !32
  %i.bp = fmul double %i.bn, %i.bo
  %i.bq = fmul double %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bs = load double, ptr %i.br, align 8, !tbaa !32
  %i.bt = load double, ptr %i.ax, align 16, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !32
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = fmul double %i.bs, %i.bw
  %i.by = fmul double %i.bq, %i.bx
  %i.bz = fmul double %i.by, %i.bk                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ca = fcmp uno double %i.bz, 0.000000e+00
  %i.cb = fcmp olt double %i.bz, f0x3CB0000000000000
  %or.cond = or i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 296 ; 2 uses
  store i8 0, ptr %i.cc, align 8, !tbaa !395, !alias.scope !396
  %i.cd = load <2 x double>, ptr %7, align 16, !tbaa !20
  store <2 x double> %i.cd, ptr %9, align 16, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cf = load <2 x double>, ptr %i.l, align 16, !tbaa !20
  store <2 x double> %i.cf, ptr %i.ce, align 16, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ch = load <2 x double>, ptr %i.o, align 16, !tbaa !20 ; 2 uses
  store <2 x double> %i.ch, ptr %i.cg, align 16, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.cj = load <2 x double>, ptr %i.r, align 16, !tbaa !20
  store <2 x double> %i.cj, ptr %i.ci, align 16, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.cl = load <2 x double>, ptr %i.u, align 16, !tbaa !20
  store <2 x double> %i.cl, ptr %i.ck, align 16, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.cn = load <2 x double>, ptr %i.x, align 16, !tbaa !20
  store <2 x double> %i.cn, ptr %i.cm, align 16, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cp = load <2 x double>, ptr %i.aa, align 16, !tbaa !20
  store <2 x double> %i.cp, ptr %i.co, align 16, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.cr = load <2 x double>, ptr %i.ad, align 16, !tbaa !20
  store <2 x double> %i.cr, ptr %i.cq, align 16, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.ct = load <2 x double>, ptr %i.ag, align 16, !tbaa !20
  store <2 x double> %i.ct, ptr %i.cs, align 16, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.cv = load <2 x double>, ptr %i.aj, align 16, !tbaa !20
  store <2 x double> %i.cv, ptr %i.cu, align 16, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.cx = load <2 x double>, ptr %i.am, align 16, !tbaa !20
  store <2 x double> %i.cx, ptr %i.cw, align 16, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.cz = load <2 x double>, ptr %i.ap, align 16, !tbaa !20
  store <2 x double> %i.cz, ptr %i.cy, align 16, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.db = load <2 x double>, ptr %i.as, align 16, !tbaa !20
  store <2 x double> %i.db, ptr %i.da, align 16, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.dd = load <2 x double>, ptr %i.av, align 16, !tbaa !20
  store <2 x double> %i.dd, ptr %i.dc, align 16, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 2 uses
  %i.df = load <2 x double>, ptr %i.ay, align 16, !tbaa !20
  store <2 x double> %i.df, ptr %i.de, align 16, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.dh = load <2 x double>, ptr %i.bb, align 16, !tbaa !20
  store <2 x double> %i.dh, ptr %i.dg, align 16, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.dj = load <2 x double>, ptr %i.be, align 16, !tbaa !20
  store <2 x double> %i.dj, ptr %i.di, align 16, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 272
  %i.dl = load <2 x double>, ptr %i.bh, align 16, !tbaa !20
  store <2 x double> %i.dl, ptr %i.dk, align 16, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 288 ; 2 uses
  store double 0.000000e+00, ptr %i.dm, align 16, !tbaa !397
  %i.dn = extractelement <2 x double> %i.ch, i64 1
  %i.do = call double @llvm.fabs.f64(double %i.dn)
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.049.i = phi i64 [ 0, %bb.b ], [ %i.ha, %bb.i ] ; 14 uses
  %i.dp = phi double [ 0.000000e+00, %bb.b ], [ %i.gz, %bb.i ] ; 2 uses
  %i.dq = add nsw i64 %.049.i, -1                 ; 2 uses
  %i.dr = add nsw i64 %.049.i, -2
  %i.ds = sub nsw i64 6, %.049.i                  ; 2 uses
  %i.dt = and i64 %i.ds, -2
  %i.du = and i64 %i.ds, 1                        ; 2 uses
  %i.dv = add i64 %.049.i, %i.dt
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.049.i, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i.i.i.i.i
  %i.dx = sub nuw nsw i64 6, %.049.i              ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.049.i ; 9 uses
  %10 = and i64 %i.dx, 4                          ; 2 uses
  %i.dz = and i64 %i.dx, 6                        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.049.i, 5
  br i1 %.not.i.i.i.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ea = load <2 x double>, ptr %i.dy, align 8, !tbaa !20
  %i.eb = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ea) ; 2 uses
  %11 = icmp samesign ult i64 %.049.i, 3
  br i1 %11, label %._crit_edge.i.i.i.i.i.i, label %bb.f

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ed = load <2 x double>, ptr %i.ec, align 8, !tbaa !20
  %i.ee = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ed)
  %i.ef = fadd <2 x double> %i.eb, %i.ee          ; 2 uses
  %i.eg = icmp samesign ugt i64 %i.dz, %10
  br i1 %i.eg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %10
  %i.eh = load <2 x double>, ptr %12, align 8, !tbaa !20
  %i.ei = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eh)
  %i.ej = fadd <2 x double> %i.ef, %i.ei
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i, %bb.d
  %.274.i.i.i.i.i.i = phi <2 x double> [ %i.eb, %bb.d ], [ %i.ej, %bb.e ], [ %i.ef, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i, %shift
  %i.ek = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %.not.i = icmp eq i64 %i.dz, %i.dx
  br i1 %.not.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %i.du, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.dz, %.lr.ph85.i.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.prol = phi double [ %i.eo, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.ek, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.05283.i.i.i.i.i.i.prol
  %i.em = load double, ptr %i.el, align 8, !tbaa !32
  %i.en = call noundef double @llvm.fabs.f64(double %i.em)
  %i.eo = fadd double %.182.i.i.i.i.i.i.prol, %i.en ; 3 uses
  %i.ep = add nuw nsw i64 %.05283.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.du
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol, !llvm.loop !385

.lr.ph85.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph85.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.eo, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.unr = phi i64 [ %i.dz, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.ep, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.unr = phi double [ %i.ek, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.eo, %.lr.ph85.i.i.i.i.i.i.prol ]
  %i.eq = add i64 %i.dv, -3
  %i.er = icmp ult i64 %i.eq, 3
  br i1 %i.er, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i = phi i64 [ %i.fl, %.lr.ph85.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i = phi double [ %i.fk, %.lr.ph85.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.05283.i.i.i.i.i.i
  %i.et = load double, ptr %i.es, align 8, !tbaa !32
  %i.eu = call noundef double @llvm.fabs.f64(double %i.et)
  %i.ev = fadd double %.182.i.i.i.i.i.i, %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.05283.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !32
  %i.ez = call noundef double @llvm.fabs.f64(double %i.ey)
  %i.fa = fadd double %i.ev, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.05283.i.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !32
  %i.fe = call noundef double @llvm.fabs.f64(double %i.fd)
  %i.ff = fadd double %i.fa, %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.05283.i.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !32
  %i.fj = call noundef double @llvm.fabs.f64(double %i.fi)
  %i.fk = fadd double %i.ff, %i.fj                ; 2 uses
  %i.fl = add nuw nsw i64 %.05283.i.i.i.i.i.i, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.fl, %i.dx
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !386

.thread.i:                                        ; preds = %bb.c
  %i.fm = load double, ptr %i.dy, align 8, !tbaa !32
  %i.fn = call noundef double @llvm.fabs.f64(double %i.fm)
  br label %.lr.ph.i.i.i.i.i20.preheader.i

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i, %bb.f
  %.0.i.i.i.i = phi double [ %i.ek, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ], [ %i.fk, %.lr.ph85.i.i.i.i.i.i ] ; 3 uses
  %i.fo = icmp eq i64 %.049.i, 0
  br i1 %i.fo, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.049.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !32
  %i.fr = call noundef double @llvm.fabs.f64(double %i.fq) ; 2 uses
  %.not47.i = icmp eq i64 %.049.i, 1
  br i1 %.not47.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.preheader.i

.lr.ph.i.i.i.i.i20.preheader.i:                   ; preds = %bb.g, %.thread.i
  %i.fs = phi double [ %i.do, %.thread.i ], [ %i.fr, %bb.g ] ; 2 uses
  %.0.i.i.i5963.i = phi double [ %i.fn, %.thread.i ], [ %.0.i.i.i.i, %bb.g ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.049.i ; 5 uses
  %xtraiter37 = and i64 %i.dq, 3                  ; 3 uses
  %i.fu = icmp ult i64 %i.dr, 3
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i20.i.epil.preheader, label %.lr.ph.i.i.i.i.i20.preheader.i.new

.lr.ph.i.i.i.i.i20.preheader.i.new:               ; preds = %.lr.ph.i.i.i.i.i20.preheader.i
  %unroll_iter = and i64 %i.dq, -4
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.i.i.i.i.i20.preheader.i.new
  %.01725.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %i.gr, %.lr.ph.i.i.i.i.i20.i ] ; 5 uses
  %.02324.i.i.i.i.i.i = phi double [ %i.fs, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %i.gq, %.lr.ph.i.i.i.i.i20.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i20.i ]
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.01725.i.i.i.i.i.i, 48
  %i.fv = getelementptr i8, ptr %i.ft, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !32
  %i.fx = call noundef double @llvm.fabs.f64(double %i.fw)
  %i.fy = fadd double %.02324.i.i.i.i.i.i, %i.fx
  %i.fz = mul nuw i64 %.01725.i.i.i.i.i.i, 48
  %i.ga = getelementptr i8, ptr %i.ft, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 48
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !32
  %i.gd = call noundef double @llvm.fabs.f64(double %i.gc)
  %i.ge = fadd double %i.fy, %i.gd
  %i.gf = mul nuw i64 %.01725.i.i.i.i.i.i, 48
  %i.gg = getelementptr i8, ptr %i.ft, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 96
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !32
  %i.gj = call noundef double @llvm.fabs.f64(double %i.gi)
  %i.gk = fadd double %i.ge, %i.gj
  %i.gl = mul nuw i64 %.01725.i.i.i.i.i.i, 48
  %i.gm = getelementptr i8, ptr %i.ft, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 144
  %i.go = load double, ptr %i.gn, align 8, !tbaa !32
  %i.gp = call noundef double @llvm.fabs.f64(double %i.go)
  %i.gq = fadd double %i.gk, %i.gp                ; 3 uses
  %i.gr = add nuw nsw i64 %.01725.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i20.i, !llvm.loop !387

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i20.i
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.i.epil.preheader

.lr.ph.i.i.i.i.i20.i.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.preheader.i
  %.01725.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader.i ], [ %i.gr, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i.i.epil.init = phi double [ %i.fs, %.lr.ph.i.i.i.i.i20.preheader.i ], [ %i.gq, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter37, 0
  call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i.i.i.i20.i.epil

.lr.ph.i.i.i.i.i20.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i20.i.epil, %.lr.ph.i.i.i.i.i20.i.epil.preheader
  %.01725.i.i.i.i.i.i.epil = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.01725.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.i.epil = phi double [ %i.gv, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.02324.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i20.i.epil ], [ 0, %.lr.ph.i.i.i.i.i20.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.01725.i.i.i.i.i.i.epil, 48
  %i.gs = getelementptr i8, ptr %i.ft, i64 %.idx.i.i.i.i.i.i.i.i.i.epil
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !32
  %i.gu = call noundef double @llvm.fabs.f64(double %i.gt)
  %i.gv = fadd double %.02324.i.i.i.i.i.i.epil, %i.gu ; 2 uses
  %i.gw = add nuw nsw i64 %.01725.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter37
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.i.epil, !llvm.loop !388

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.i.epil, %bb.g, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %.0.i.i.i60.i = phi double [ %.0.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i ], [ %.0.i.i.i.i, %bb.g ], [ %.0.i.i.i5963.i, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.0.i.i.i5963.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %.0.i.i.i19.i = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi6ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i ], [ %i.fr, %bb.g ], [ %i.gq, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ], [ %i.gv, %.lr.ph.i.i.i.i.i20.i.epil ]
  %i.gx = fadd double %.0.i.i.i60.i, %.0.i.i.i19.i ; 3 uses
  %i.gy = fcmp ogt double %i.gx, %i.dp
  br i1 %i.gy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i
  store double %i.gx, ptr %i.dm, align 16, !tbaa !397
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %i.gz = phi double [ %i.gx, %bb.h ], [ %i.dp, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi1ELi6ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i ]
  %i.ha = add nuw nsw i64 %.049.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ha, 6
  br i1 %exitcond.not.i, label %bb.j, label %bb.c, !llvm.loop !389

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.cc, align 8, !tbaa !395
  %i.hb = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEElRT_(ptr noundef nonnull align 16 dereferenceable(304) %9)
  %i.hc = icmp ne i64 %i.hb, -1
  %i.hd = zext i1 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 300
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !398
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hg = load <2 x double>, ptr %i.hf, align 16, !tbaa !20 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hj = load <2 x double>, ptr %i.hi, align 16, !tbaa !20 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hm = load <2 x double>, ptr %i.hl, align 16, !tbaa !20 ; 2 uses
  %i.hn = load double, ptr %9, align 16, !tbaa !32 ; 2 uses
  %i.ho = extractelement <2 x double> %i.hg, i64 0
  %i.hp = fdiv double %i.ho, %i.hn                ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !32
  %i.hs = fmul double %i.hp, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hu = extractelement <2 x double> %i.hg, i64 1
  %i.hv = fsub double %i.hu, %i.hs
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !32 ; 2 uses
  %i.hy = fdiv double %i.hv, %i.hx                ; 5 uses
  %i.hz = load double, ptr %i.ce, align 16, !tbaa !32
  %i.ia = fmul double %i.hp, %i.hz
  %i.ib = load double, ptr %i.ck, align 16, !tbaa !32
  %i.ic = fmul double %i.hy, %i.ib
  %i.id = fadd double %i.ia, %i.ic
  %i.ie = extractelement <2 x double> %i.hj, i64 0
  %i.if = fsub double %i.ie, %i.id
end_hunk_0
