Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_line?download=true
inline.NumInlined: 9139
inline.NumDeleted: 4977
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3igl17unproject_on_lineIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEES6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERNS8_6ScalarE:_ZN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEC2INS_5SolveINS_7SVDBaseINS_9JacobiSVDINS0_IdLi2ELi1ELi0ELi2ELi1EEELi2EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS6_EEEEEERKNS_9EigenBaseIT_EE.exit

declare void @_ZN3igl21projection_constraintIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi2ELi3ELi0ELi2ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS1_15PlainObjectBaseIT2_EERNSK_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 16 dereferenceable(48), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl21projection_constraintIN5Eigen6MatrixIdLin1ELi1ELi0ELi3ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi2ELi3ELi0ELi2ELi3EEENS2_IdLi2ELi1ELi0ELi2ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 16 dereferenceable(48), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(272) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::HouseholderSequence", align 8 ; 8 uses
  %4 = alloca %"class.Eigen::HouseholderSequence", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !225, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 2
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
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
  br label %bb.x

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
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 3 uses
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
  %.056194.us = phi i64 [ 0, %.preheader187.us ], [ %i.gt, %bb.o ] ; 6 uses
  %.2193.us = phi i1 [ %.1197.us, %.preheader187.us ], [ %.3.us, %bb.o ]
  %.2173192.us = phi double [ %.1172196.us, %.preheader187.us ], [ %.3174.us, %bb.o ] ; 4 uses
  %i.cm = fmul double %.2173192.us, f0x3CC0000000000000 ; 2 uses
  %i.cn = fcmp ogt double %i.cm, f0x0010000000000000
  %.sroa.speculated135.us = select i1 %i.cn, double %i.cm, double f0x0010000000000000
  %i.co = getelementptr [8 x i8], ptr %i.gv, i64 %.056194.us
  %i.cp = load double, ptr %i.co, align 8, !tbaa !49 ; 7 uses
  %i.cq = call noundef double @llvm.fabs.f64(double %i.cp) ; 2 uses
  %i.cr = fcmp ogt double %i.cq, %.sroa.speculated135.us
  br i1 %i.cr, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cs = load double, ptr %i.gw, align 8, !tbaa !49 ; 3 uses
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
  %5 = fneg double %i.dk
  %i.dm = fmul double %i.cp, %i.dk
  %i.dn = call double @llvm.fmuladd.f64(double %i.di, double %i.cs, double %i.dm)
  %6 = fmul double %i.cv, %i.dk
  %7 = call double @llvm.fmuladd.f64(double %i.di, double %i.cp, double %6) ; 2 uses
  %8 = fmul double %i.cv, %i.di
  %9 = call double @llvm.fmuladd.f64(double %5, double %i.cp, double %8)
  %.pre209 = call noundef double @llvm.fabs.f64(double %7)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.m
  %.pre-phi = phi double [ %.pre209, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cq, %bb.m ] ; 2 uses
  %.sroa.13.0.i.us = phi double [ %9, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cv, %bb.m ]
  %.sroa.9.0.i.us = phi double [ %7, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cp, %bb.m ]
  %.sroa.0.0.i.us = phi double [ %i.dn, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cs, %bb.m ]
  %i.do = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.dp = fcmp uge double %i.do, f0x0010000000000000
  br i1 %i.dp, label %bb.n, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.n:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %10 = fsub double %.sroa.0.0.i.us, %.sroa.13.0.i.us
  %i.dq = fdiv double %10, %i.do                  ; 4 uses
  %i.dr = fmul double %i.dq, %i.dq
  %i.ds = fadd double %i.dr, 1.000000e+00
  %sqrt19.i.i.i.us = call double @llvm.sqrt.f64(double %i.ds) ; 2 uses
  %i.dt = fcmp ogt double %i.dq, 0.000000e+00
  %i.du = fneg double %sqrt19.i.i.i.us
  %.pn.p.i.i.i.us = select i1 %i.dt, double %sqrt19.i.i.i.us, double %i.du
  %.pn.i.i.i.us = fadd double %i.dq, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.dv = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.dw = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.dx = fadd double %i.dw, 1.000000e+00
  %sqrt.i.i.i.us = call double @llvm.sqrt.f64(double %i.dx)
  %i.dy = fdiv double 1.000000e+00, %sqrt.i.i.i.us ; 2 uses
  %i.dz = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.ea = fneg double %i.dz
  %i.eb = select i1 %i.dv, double %i.ea, double %i.dz
  %i.ec = call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.ed = fmul double %i.ec, %i.eb
  %i.ee = fmul double %i.ed, %i.dy
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.n, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink20.i.i.i.us = phi double [ %i.ee, %bb.n ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 5 uses
  %.sink.i.i.i.us = phi double [ %i.dy, %bb.n ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 7 uses
  %i.ef = fneg double %.sink20.i.i.i.us           ; 3 uses
  %i.eg = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = insertelement <2 x double> poison, double %.sink20.i.i.i.us, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %.sink.i.i.i.us, i64 1
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.el = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ef, i64 1
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.em, <2 x double> %i.ej) ; 7 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0
  %i.ep = fcmp une double %i.eo, 1.000000e+00
  %i.eq = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.er = fcmp une double %i.eq, 0.000000e+00
  %or.cond.i.i.us.not222 = or i1 %i.ep, %i.er
  br i1 %or.cond.i.i.us.not222, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.es = load double, ptr %i.gv, align 8, !tbaa !49
  %i.et = load double, ptr %i.ct, align 8, !tbaa !49
  %i.eu = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.en, %i.ev
  %i.ex = fneg <2 x double> %i.en
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ez = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.ew) ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 1
  store double %i.fc, ptr %i.gv, align 8, !tbaa !49
  %i.fd = extractelement <2 x double> %i.fb, i64 0
  store double %i.fd, ptr %i.ct, align 8, !tbaa !49
  %i.fe = load i8, ptr %i.cf, align 1, !tbaa !230, !range !50, !noundef !51
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = load i8, ptr %i.cg, align 8, !range !50
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = select i1 %i.ff, i1 true, i1 %i.fh
  br i1 %i.fi, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fj = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fk = fneg double %i.eq
  %.idx.i.i.i.i3.i.us = shl nuw nsw i64 %.056194.us, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i3.i.us ; 2 uses
  %i.fm = load <2 x double>, ptr %i.fl, align 16, !tbaa !49 ; 2 uses
  %i.fn = load <2 x double>, ptr %i.gx, align 16, !tbaa !49 ; 2 uses
  %i.fo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = fmul <2 x double> %i.fo, %i.fm
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.fn, <2 x double> %i.fp)
  store <2 x double> %i.fq, ptr %i.gx, align 16, !tbaa !49
  %i.fr = fmul <2 x double> %i.fj, %i.fm
  %i.fs = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.fn, <2 x double> %i.fr)
  store <2 x double> %i.fu, ptr %i.fl, align 16, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fv = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.fw = fcmp oeq double %.sink20.i.i.i.us, 0.000000e+00
  %or.cond.i.i66.us = and i1 %i.fw, %i.fv
  br i1 %or.cond.i.i66.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fx = load double, ptr %i.gv, align 8, !tbaa !49 ; 2 uses
  %i.fy = load double, ptr %i.ct, align 8, !tbaa !49 ; 2 uses
  %i.fz = fmul double %i.fy, %i.ef
  %i.ga = call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.fx, double %i.fz)
  store double %i.ga, ptr %i.gv, align 8, !tbaa !49
  %i.gb = fmul double %.sink.i.i.i.us, %i.fy
  %i.gc = call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.fx, double %i.gb)
  store double %i.gc, ptr %i.ct, align 8, !tbaa !49
  %i.gd = load i8, ptr %i.ci, align 2, !range !50
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = select i1 %i.ca, i1 true, i1 %i.ge
  br i1 %i.gf, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.056194.us ; 2 uses
  %i.gh = load double, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !49 ; 2 uses
  %i.gj = fmul double %i.gi, %i.ef
  %i.gk = call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.gh, double %i.gj)
  store double %i.gk, ptr %i.gy, align 8, !tbaa !49
  %i.gl = fmul double %.sink.i.i.i.us, %i.gi
  %i.gm = call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.gh, double %i.gl)
  store double %i.gm, ptr %i.gg, align 8, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.gn = load double, ptr %i.gw, align 8, !tbaa !49
  %i.go = call noundef double @llvm.fabs.f64(double %i.gn) ; 2 uses
  %i.gp = load double, ptr %i.cu, align 8, !tbaa !49
  %i.gq = call noundef double @llvm.fabs.f64(double %i.gp) ; 2 uses
  %i.gr = fcmp olt double %i.go, %i.gq
  %.sroa.speculated.us = select i1 %i.gr, double %i.gq, double %i.go ; 2 uses
  %i.gs = fcmp olt double %.2173192.us, %.sroa.speculated.us
  %.sroa.speculated121.us = select i1 %i.gs, double %.sroa.speculated.us, double %.2173192.us
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us
  %.3174.us = phi double [ %.sroa.speculated121.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us ], [ %.2173192.us, %bb.j ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us ], [ %.2193.us, %bb.j ] ; 3 uses
  %i.gt = add nuw nsw i64 %.056194.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.gt, %.057198.us
  br i1 %exitcond.not, label %bb.p, label %bb.j, !llvm.loop !220

bb.p:                                             ; preds = %bb.o
  %i.gu = add nuw nsw i64 %.057198.us, 1          ; 2 uses
  %exitcond207.not = icmp eq i64 %i.gu, %i.cd     ; 3 uses
  %brmerge.not = select i1 %exitcond207.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond207.not, i64 1, i64 %i.gu
  %.3.us.mux = select i1 %exitcond207.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader187.us, !llvm.loop !221

.preheader187.us:                                 ; preds = %bb.p, %.preheader188.us.preheader
  %.057198.us = phi i64 [ %.mux, %bb.p ], [ 1, %.preheader188.us.preheader ] ; 6 uses
  %.1197.us = phi i1 [ %.3.us.mux, %bb.p ], [ true, %.preheader188.us.preheader ]
  %.1172196.us = phi double [ %.3174.us, %bb.p ], [ %i.cl, %.preheader188.us.preheader ]
  %i.gv = getelementptr [8 x i8], ptr %i.cb, i64 %.057198.us ; 6 uses
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %.057198.us ; 2 uses
  %.idx.i.i.i.i.i.us = shl nuw nsw i64 %.057198.us, 4
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i.us ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.057198.us ; 2 uses
  br label %bb.j

.preheader:                                       ; preds = %bb.p, %_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_.exit
  %i.gz = icmp sgt i64 %i.cd, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %i.gz, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !49
  %i.hc = fmul double %.0170, %i.hb
  store double %i.hc, ptr %i.ha, align 8, !tbaa !49
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cd, ptr %i.hd, align 16, !tbaa !60
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.r
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !49
  %i.hg = fmul double %.0170, %i.hf
  store double %i.hg, ptr %i.he, align 8, !tbaa !49
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.hy, ptr %i.hh, align 16, !tbaa !60
  %i.hi = icmp sgt i64 %i.hy, 0
  br i1 %i.hi, label %.lr.ph204, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %i.hj = phi i64 [ %i.hy, %bb.r ], [ %i.cd, %.preheader ]
  %.055201 = phi i64 [ %i.hz, %bb.r ], [ 0, %.preheader ] ; 5 uses
  %i.hk = getelementptr [8 x i8], ptr %i.cb, i64 %.055201
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %.055201
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !49 ; 2 uses
  %i.hn = call noundef double @llvm.fabs.f64(double %i.hm)
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.055201
  store double %i.hn, ptr %i.ho, align 8, !tbaa !49
  %i.hp = load i8, ptr %i.cf, align 1, !tbaa !230, !range !50, !noundef !51
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = load i8, ptr %i.cg, align 8, !range !50
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = select i1 %i.hq, i1 true, i1 %i.hs
  %i.hu = fcmp olt double %i.hm, 0.000000e+00
  %or.cond = and i1 %i.hu, %i.ht
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %.idx.i.i.i.i = shl nuw nsw i64 %.055201, 4
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 2 uses
  %i.hw = load <2 x double>, ptr %i.hv, align 16, !tbaa !10
  %i.hx = fneg <2 x double> %i.hw
  store <2 x double> %i.hx, ptr %i.hv, align 16, !tbaa !10
  %.pre = load i64, ptr %i.cc, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
end_hunk_0
