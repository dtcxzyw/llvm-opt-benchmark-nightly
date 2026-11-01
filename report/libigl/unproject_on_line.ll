Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_line?download=true
inline.NumInlined: 9139
inline.NumDeleted: 4977
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE7computeERKS2_j:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16
  %i.i = icmp eq i64 %i.h, 1
  %or.cond16.i = select i1 %or.cond.i, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %2, %i.k
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.l, i1 false
  br i1 %or.cond19.i, label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE8allocateEllj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !tbaa !226
  store i64 1, ptr %i.g, align 16, !tbaa !227
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.m, align 16, !tbaa !228
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.n, align 4, !tbaa !229
  store i8 1, ptr %i.a, align 1, !tbaa !225
  store i32 %2, ptr %i.j, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.p = trunc i32 %2 to i8                       ; 4 uses
  %i.q = lshr i8 %i.p, 2
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 1, !tbaa !230
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = lshr i8 %i.p, 3
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8, !tbaa !231
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.w = lshr i8 %i.p, 4
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !232
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.z = lshr i8 %i.p, 5
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.y, align 2, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %i.ab, align 8, !tbaa !25
  br label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE8allocateEllj.exit

_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE8allocateEllj.exit: ; preds = %bb.a, %bb.b
  %i.ac = load <2 x double>, ptr %1, align 16     ; 2 uses
  %i.ad = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ac) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.ad, i64 0 ; 3 uses
  %i.ae = fcmp uno double %.sroa.0.0.vec.extract.i.i.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.ad, i64 1 ; 3 uses
  %i.af = fcmp ord double %.sroa.0.8.vec.extract.i.i.i.i.i, 0.000000e+00
  %i.ag = fcmp uge double %.sroa.0.0.vec.extract.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i
  %.not3.i.i.i.i.i.i = and i1 %i.af, %i.ag
  %i.ah = or i1 %i.ae, %.not3.i.i.i.i.i.i
  %i.ai = select i1 %i.ah, double %.sroa.0.0.vec.extract.i.i.i.i.i, double %.sroa.0.8.vec.extract.i.i.i.i.i ; 3 uses
  %i.aj = fcmp ueq double %i.ai, +inf
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE8allocateEllj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 1, ptr %i.ak, align 4, !tbaa !229
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.al, align 16, !tbaa !228
  br label %bb.y

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE8allocateEllj.exit
  %i.am = fcmp oeq double %i.ai, 0.000000e+00
  %.0170 = select i1 %i.am, double 1.000000e+00, double %i.ai ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.5.16.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0170, i64 0
  %i.ao = shufflevector <2 x double> %.sroa.5.16.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x double> %i.ac, %i.ao          ; 2 uses
  store <2 x double> %i.ap, ptr %i.an, align 16, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store <2 x double> %i.ap, ptr %i.aq, align 16, !tbaa !10
  tail call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(128) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load double, ptr %i.aq, align 16, !tbaa !49
  store double %i.as, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.au = load i8, ptr %i.at, align 1, !tbaa !230, !range !50, !noundef !51
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.aq, ptr %3, align 8, !tbaa !48, !alias.scope !234
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !53, !alias.scope !234
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ay, align 8, !tbaa !55, !alias.scope !234
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.az, align 8, !tbaa !56, !alias.scope !234
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.ba, align 8, !tbaa !57, !alias.scope !234
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS1_IdLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToINS1_IdLi2ELi2ELi0ELi2ELi2EEES2_EEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !231, !range !50, !noundef !51
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %0, align 16, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.bg, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.aq, ptr %4, align 8, !tbaa !48, !alias.scope !235
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !53, !alias.scope !235
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.bj, align 8, !tbaa !55, !alias.scope !235
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.bk, align 8, !tbaa !56, !alias.scope !235
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.bl, align 8, !tbaa !57, !alias.scope !235
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS1_IdLi1ELi1ELi0ELi1ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi2ELi2ELi0ELi2ELi2EEES2_EEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.bm, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !232, !range !50, !noundef !51 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.br = load i8, ptr %i.bq, align 2, !range !50
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = select i1 %i.bp, i1 true, i1 %i.bs
  br i1 %i.bt, label %bb.i, label %_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_.exit

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.bv, align 16, !tbaa !49
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !58
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bv, i64 %i.bx
  store double 1.000000e+00, ptr %i.by, align 8, !tbaa !49
  %i.bz = trunc nuw i8 %i.bo to i1
  br label %_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_.exit

_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_.exit: ; preds = %bb.i, %bb.h
  %i.ca = phi i1 [ %i.bz, %bb.i ], [ false, %bb.h ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !25 ; 5 uses
  %i.ce = icmp sgt i64 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.ce, label %.preheader188.us.preheader, label %.preheader

.preheader188.us.preheader:                       ; preds = %_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_.exit
  %i.ck = load double, ptr %i.cb, align 8, !tbaa !49
  %i.cl = call noundef double @llvm.fabs.f64(double %i.ck)
  br label %.preheader187.us

bb.j:                                             ; preds = %.preheader187.us, %bb.o
  %.056194.us = phi i64 [ 0, %.preheader187.us ], [ %i.gv, %bb.o ] ; 6 uses
  %.2193.us = phi i1 [ %.1197.us, %.preheader187.us ], [ %.3.us, %bb.o ]
  %.2173192.us = phi double [ %.1172196.us, %.preheader187.us ], [ %.3174.us, %bb.o ] ; 4 uses
  %i.cm = fmul double %.2173192.us, f0x3CC0000000000000 ; 2 uses
  %i.cn = fcmp ogt double %i.cm, f0x0010000000000000
  %.sroa.speculated135.us = select i1 %i.cn, double %i.cm, double f0x0010000000000000
  %i.co = getelementptr [8 x i8], ptr %i.gx, i64 %.056194.us
  %i.cp = load double, ptr %i.co, align 8, !tbaa !49 ; 7 uses
  %i.cq = call noundef double @llvm.fabs.f64(double %i.cp) ; 2 uses
  %i.cr = fcmp ogt double %i.cq, %.sroa.speculated135.us
  br i1 %i.cr, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cs = load double, ptr %i.gy, align 8, !tbaa !49 ; 3 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.056194.us ; 5 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %.056194.us ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !49 ; 4 uses
  %i.cw = fsub double %i.cp, %i.cp                ; 2 uses
  %i.cx = call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp olt double %i.cx, f0x0010000000000000
  br i1 %i.cy, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = fadd double %i.cs, %i.cv
  %i.da = fdiv double %i.cz, %i.cw                ; 3 uses
  %i.db = fmul double %i.da, %i.da
  %i.dc = fadd double %i.db, 1.000000e+00
  %sqrt.i.us = call double @llvm.sqrt.f64(double %i.dc)
  %i.dd = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.da, i64 1
  %i.de = insertelement <2 x double> poison, double %sqrt.i.us, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv <2 x double> %i.dd, %i.df
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dh = phi <2 x double> [ %i.dg, %bb.l ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.k ] ; 4 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1 ; 4 uses
  %i.dj = fcmp oeq double %i.di, 1.000000e+00
  %i.dk = extractelement <2 x double> %i.dh, i64 0 ; 4 uses
  %i.dl = fcmp oeq double %i.dk, 0.000000e+00
  %or.cond.i.i.i.us = and i1 %i.dl, %i.dj
  br i1 %or.cond.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us: ; preds = %bb.m
  %i.dm = fneg double %i.dk
  %5 = fmul double %i.cp, %i.dk
  %6 = call double @llvm.fmuladd.f64(double %i.di, double %i.cs, double %5)
  %7 = fmul double %i.cv, %i.dk
  %8 = call double @llvm.fmuladd.f64(double %i.di, double %i.cp, double %7) ; 2 uses
  %i.dn = fmul double %i.cv, %i.di
  %i.do = call double @llvm.fmuladd.f64(double %i.dm, double %i.cp, double %i.dn)
  %.pre211 = call noundef double @llvm.fabs.f64(double %8)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.m
  %.pre-phi = phi double [ %.pre211, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cq, %bb.m ] ; 2 uses
  %.sroa.13.0.i.us = phi double [ %i.do, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cv, %bb.m ]
  %.sroa.9.0.i.us = phi double [ %8, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cp, %bb.m ]
  %.sroa.0.0.i.us = phi double [ %6, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cs, %bb.m ]
  %i.dp = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.dq = fcmp uge double %i.dp, f0x0010000000000000
  br i1 %i.dq, label %bb.n, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.n:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %i.dr = fsub double %.sroa.0.0.i.us, %.sroa.13.0.i.us
  %i.ds = fdiv double %i.dr, %i.dp                ; 4 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = fadd double %i.dt, 1.000000e+00
  %sqrt19.i.i.i.us = call double @llvm.sqrt.f64(double %i.du) ; 2 uses
  %i.dv = fcmp ogt double %i.ds, 0.000000e+00
  %i.dw = fneg double %sqrt19.i.i.i.us
  %.pn.p.i.i.i.us = select i1 %i.dv, double %sqrt19.i.i.i.us, double %i.dw
  %.pn.i.i.i.us = fadd double %i.ds, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.dx = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.dy = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.dz = fadd double %i.dy, 1.000000e+00
  %sqrt.i.i.i.us = call double @llvm.sqrt.f64(double %i.dz)
  %i.ea = fdiv double 1.000000e+00, %sqrt.i.i.i.us ; 2 uses
  %i.eb = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.ec = fneg double %i.eb
  %i.ed = select i1 %i.dx, double %i.ec, double %i.eb
  %i.ee = call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.ef = fmul double %i.ee, %i.ed
  %i.eg = fmul double %i.ef, %i.ea
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.n, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink20.i.i.i.us = phi double [ %i.eg, %bb.n ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 5 uses
  %.sink.i.i.i.us = phi double [ %i.ea, %bb.n ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 7 uses
  %i.eh = fneg double %.sink20.i.i.i.us           ; 3 uses
  %i.ei = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = insertelement <2 x double> poison, double %.sink20.i.i.i.us, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %.sink.i.i.i.us, i64 1
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.en = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.eh, i64 1
  %i.ep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.eo, <2 x double> %i.el) ; 7 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = fcmp une double %i.eq, 1.000000e+00
  %i.es = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.et = fcmp une double %i.es, 0.000000e+00
  %or.cond.i.i.us.not224 = or i1 %i.er, %i.et
  br i1 %or.cond.i.i.us.not224, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.eu = load double, ptr %i.gx, align 8, !tbaa !49
  %i.ev = load double, ptr %i.ct, align 8, !tbaa !49
  %i.ew = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.ep, %i.ex
  %i.ez = fneg <2 x double> %i.ep
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> %i.ep, <2 x i32> <i32 1, i32 2>
  %i.fb = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fc, <2 x double> %i.ey) ; 2 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 1
  store double %i.fe, ptr %i.gx, align 8, !tbaa !49
  %i.ff = extractelement <2 x double> %i.fd, i64 0
  store double %i.ff, ptr %i.ct, align 8, !tbaa !49
  %i.fg = load i8, ptr %i.cf, align 1, !tbaa !230, !range !50, !noundef !51
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = load i8, ptr %i.cg, align 8, !range !50
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = select i1 %i.fh, i1 true, i1 %i.fj
  br i1 %i.fk, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fl = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fm = fneg double %i.es
  %.idx.i.i.i.i3.i.us = shl nuw nsw i64 %.056194.us, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i3.i.us ; 2 uses
  %i.fo = load <2 x double>, ptr %i.fn, align 16, !tbaa !49 ; 2 uses
  %i.fp = load <2 x double>, ptr %i.gz, align 16, !tbaa !49 ; 2 uses
  %i.fq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = fmul <2 x double> %i.fq, %i.fo
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fp, <2 x double> %i.fr)
  store <2 x double> %i.fs, ptr %i.gz, align 16, !tbaa !49
  %i.ft = fmul <2 x double> %i.fl, %i.fo
  %i.fu = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fp, <2 x double> %i.ft)
  store <2 x double> %i.fw, ptr %i.fn, align 16, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fx = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.fy = fcmp oeq double %.sink20.i.i.i.us, 0.000000e+00
  %or.cond.i.i66.us = and i1 %i.fy, %i.fx
  br i1 %or.cond.i.i66.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fz = load double, ptr %i.gx, align 8, !tbaa !49 ; 2 uses
  %i.ga = load double, ptr %i.ct, align 8, !tbaa !49 ; 2 uses
  %i.gb = fmul double %i.ga, %i.eh
  %i.gc = call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.fz, double %i.gb)
  store double %i.gc, ptr %i.gx, align 8, !tbaa !49
  %i.gd = fmul double %.sink.i.i.i.us, %i.ga
  %i.ge = call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.fz, double %i.gd)
  store double %i.ge, ptr %i.ct, align 8, !tbaa !49
  %i.gf = load i8, ptr %i.ci, align 2, !range !50
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = select i1 %i.ca, i1 true, i1 %i.gg
  br i1 %i.gh, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.056194.us ; 2 uses
  %i.gj = load double, ptr %i.ha, align 8, !tbaa !49 ; 2 uses
  %i.gk = load double, ptr %i.gi, align 8, !tbaa !49 ; 2 uses
  %i.gl = fmul double %i.gk, %i.eh
  %i.gm = call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.gj, double %i.gl)
  store double %i.gm, ptr %i.ha, align 8, !tbaa !49
  %i.gn = fmul double %.sink.i.i.i.us, %i.gk
  %i.go = call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.gj, double %i.gn)
  store double %i.go, ptr %i.gi, align 8, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.gp = load double, ptr %i.gy, align 8, !tbaa !49
  %i.gq = call noundef double @llvm.fabs.f64(double %i.gp) ; 2 uses
  %i.gr = load double, ptr %i.cu, align 8, !tbaa !49
  %i.gs = call noundef double @llvm.fabs.f64(double %i.gr) ; 2 uses
  %i.gt = fcmp olt double %i.gq, %i.gs
  %.sroa.speculated.us = select i1 %i.gt, double %i.gs, double %i.gq ; 2 uses
  %i.gu = fcmp olt double %.2173192.us, %.sroa.speculated.us
  %.sroa.speculated121.us = select i1 %i.gu, double %.sroa.speculated.us, double %.2173192.us
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us
  %.3174.us = phi double [ %.sroa.speculated121.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us ], [ %.2173192.us, %bb.j ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us ], [ %.2193.us, %bb.j ] ; 3 uses
  %i.gv = add nuw nsw i64 %.056194.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.gv, %.057198.us
  br i1 %exitcond.not, label %bb.p, label %bb.j, !llvm.loop !220

bb.p:                                             ; preds = %bb.o
  %i.gw = add nuw nsw i64 %.057198.us, 1          ; 2 uses
  %exitcond207.not = icmp eq i64 %i.gw, %i.cd     ; 3 uses
  %brmerge.not = select i1 %exitcond207.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond207.not, i64 1, i64 %i.gw
  %.3.us.mux = select i1 %exitcond207.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader187.us, !llvm.loop !221

.preheader187.us:                                 ; preds = %bb.p, %.preheader188.us.preheader
  %.057198.us = phi i64 [ %.mux, %bb.p ], [ 1, %.preheader188.us.preheader ] ; 6 uses
  %.1197.us = phi i1 [ %.3.us.mux, %bb.p ], [ true, %.preheader188.us.preheader ]
  %.1172196.us = phi double [ %.3174.us, %bb.p ], [ %i.cl, %.preheader188.us.preheader ]
  %i.gx = getelementptr [8 x i8], ptr %i.cb, i64 %.057198.us ; 6 uses
  %i.gy = getelementptr [8 x i8], ptr %i.gx, i64 %.057198.us ; 2 uses
  %.idx.i.i.i.i.i.us = shl nuw nsw i64 %.057198.us, 4
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i.us ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.057198.us ; 2 uses
  br label %bb.j

.preheader:                                       ; preds = %bb.p, %_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_.exit
  %i.hb = icmp sgt i64 %i.cd, 0
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %i.hb, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !49
  %i.he = fmul double %.0170, %i.hd
  store double %i.he, ptr %i.hc, align 8, !tbaa !49
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cd, ptr %i.hf, align 16, !tbaa !60
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %.pre209 = load i8, ptr %i.cf, align 1, !tbaa !230, !range !50
  br label %bb.q

._crit_edge:                                      ; preds = %bb.s
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !49
  %i.hi = fmul double %.0170, %i.hh
  store double %i.hi, ptr %i.hg, align 8, !tbaa !49
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.ia, ptr %i.hj, align 16, !tbaa !60
  %i.hk = icmp sgt i64 %i.ia, 0
  br i1 %i.hk, label %.lr.ph204, label %.loopexit

bb.q:                                             ; preds = %.lr.ph, %bb.s
  %i.hl = phi i64 [ %i.cd, %.lr.ph ], [ %i.ia, %bb.s ]
  %i.hm = phi i8 [ %.pre209, %.lr.ph ], [ %i.ib, %bb.s ] ; 2 uses
  %.055201 = phi i64 [ 0, %.lr.ph ], [ %i.ic, %bb.s ] ; 5 uses
  %i.hn = getelementptr [8 x i8], ptr %i.cb, i64 %.055201
  %i.ho = getelementptr [8 x i8], ptr %i.hn, i64 %.055201
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !49 ; 2 uses
  %i.hq = call noundef double @llvm.fabs.f64(double %i.hp)
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.055201
  store double %i.hq, ptr %i.hr, align 8, !tbaa !49
  %i.hs = trunc nuw i8 %i.hm to i1
  %i.ht = load i8, ptr %i.cg, align 8, !range !50
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = select i1 %i.hs, i1 true, i1 %i.hu
  %i.hw = fcmp olt double %i.hp, 0.000000e+00
  %or.cond = and i1 %i.hw, %i.hv
  br i1 %or.cond, label %bb.r, label %bb.s
end_hunk_0
