Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_line?download=true
inline.NumInlined: 9139
inline.NumDeleted: 4977
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3igl17unproject_on_lineIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEENS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEES6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERNS8_6ScalarE:_ZN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEC2INS_5SolveINS_7SVDBaseINS_9JacobiSVDINS0_IdLi2ELi1ELi0ELi2ELi1EEELi2EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS6_EEEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !214
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !10, !noalias !214
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 60
  store i32 0, ptr %i.ae, align 4, !tbaa !24, !alias.scope !214
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.ad, i8 0, i64 11, i1 false), !alias.scope !214
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 -1, i64 16, i1 false), !alias.scope !214
  store i64 0, ptr %i.ag, align 8, !tbaa !25, !alias.scope !214
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 192
  store i8 0, ptr %i.ah, align 16, !tbaa !44, !alias.scope !214
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 193
  store i8 0, ptr %i.ai, align 1, !tbaa !45, !alias.scope !214
  %i.aj = call noundef nonnull align 16 dereferenceable(272) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(272) %11, ptr noundef nonnull align 16 dereferenceable(16) %6, i32 noundef 20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %9, ptr %12, align 8, !tbaa !48, !alias.scope !215
  call void @_ZNK5Eigen7SVDBaseINS_9JacobiSVDINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EENS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(9) %12, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ak = load double, ptr %10, align 8, !tbaa !49
  store double %i.ak, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void
}

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
  %.056194.us = phi i64 [ 0, %.preheader187.us ], [ %i.gx, %bb.o ] ; 6 uses
  %.2193.us = phi i1 [ %.1197.us, %.preheader187.us ], [ %.3.us, %bb.o ]
  %.2173192.us = phi double [ %.1172196.us, %.preheader187.us ], [ %.3174.us, %bb.o ] ; 4 uses
  %i.cm = fmul double %.2173192.us, f0x3CC0000000000000 ; 2 uses
  %i.cn = fcmp ogt double %i.cm, f0x0010000000000000
  %.sroa.speculated135.us = select i1 %i.cn, double %i.cm, double f0x0010000000000000
  %i.co = getelementptr [8 x i8], ptr %i.gz, i64 %.056194.us
  %i.cp = load double, ptr %i.co, align 8, !tbaa !49 ; 7 uses
  %i.cq = call noundef double @llvm.fabs.f64(double %i.cp) ; 2 uses
  %i.cr = fcmp ogt double %i.cq, %.sroa.speculated135.us
  br i1 %i.cr, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cs = load double, ptr %i.ha, align 8, !tbaa !49 ; 3 uses
  %5 = getelementptr [8 x i8], ptr %i.cb, i64 %.056194.us ; 5 uses
  %6 = getelementptr [8 x i8], ptr %5, i64 %.056194.us ; 2 uses
  %i.ct = load double, ptr %6, align 8, !tbaa !49 ; 4 uses
  %i.cu = fsub double %i.cp, %i.cp                ; 2 uses
  %i.cv = call noundef double @llvm.fabs.f64(double %i.cu)
  %i.cw = fcmp olt double %i.cv, f0x0010000000000000
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = fadd double %i.cs, %i.ct
  %i.cy = fdiv double %i.cx, %i.cu                ; 3 uses
  %i.cz = fmul double %i.cy, %i.cy
  %i.da = fadd double %i.cz, 1.000000e+00
  %sqrt.i.us = call double @llvm.sqrt.f64(double %i.da)
  %i.db = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.cy, i64 1
  %i.dc = insertelement <2 x double> poison, double %sqrt.i.us, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.db, %i.dd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.df = phi <2 x double> [ %i.de, %bb.l ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.k ] ; 4 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1 ; 4 uses
  %i.dh = fcmp oeq double %i.dg, 1.000000e+00
  %i.di = extractelement <2 x double> %i.df, i64 0 ; 4 uses
  %i.dj = fcmp oeq double %i.di, 0.000000e+00
  %or.cond.i.i.i.us = and i1 %i.dj, %i.dh
  br i1 %or.cond.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us: ; preds = %bb.m
  %i.dk = fneg double %i.di
  %i.dl = fmul double %i.cp, %i.di
  %i.dm = call double @llvm.fmuladd.f64(double %i.dg, double %i.cs, double %i.dl)
  %i.dn = fmul double %i.ct, %i.di
  %i.do = call double @llvm.fmuladd.f64(double %i.dg, double %i.cp, double %i.dn) ; 2 uses
  %i.dp = fmul double %i.ct, %i.dg
  %i.dq = call double @llvm.fmuladd.f64(double %i.dk, double %i.cp, double %i.dp)
  %.pre209 = call noundef double @llvm.fabs.f64(double %i.do)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.m
  %.pre-phi = phi double [ %.pre209, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cq, %bb.m ] ; 2 uses
  %.sroa.13.0.i.us = phi double [ %i.dq, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.ct, %bb.m ]
  %.sroa.9.0.i.us = phi double [ %i.do, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cp, %bb.m ]
  %.sroa.0.0.i.us = phi double [ %i.dm, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cs, %bb.m ]
  %i.dr = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.ds = fcmp uge double %i.dr, f0x0010000000000000
  br i1 %i.ds, label %bb.n, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.n:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %i.dt = fsub double %.sroa.0.0.i.us, %.sroa.13.0.i.us
  %i.du = fdiv double %i.dt, %i.dr                ; 4 uses
  %i.dv = fmul double %i.du, %i.du
  %i.dw = fadd double %i.dv, 1.000000e+00
  %sqrt19.i.i.i.us = call double @llvm.sqrt.f64(double %i.dw) ; 2 uses
  %i.dx = fcmp ogt double %i.du, 0.000000e+00
  %i.dy = fneg double %sqrt19.i.i.i.us
  %.pn.p.i.i.i.us = select i1 %i.dx, double %sqrt19.i.i.i.us, double %i.dy
  %.pn.i.i.i.us = fadd double %i.du, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.dz = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.ea = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.eb = fadd double %i.ea, 1.000000e+00
  %sqrt.i.i.i.us = call double @llvm.sqrt.f64(double %i.eb)
  %i.ec = fdiv double 1.000000e+00, %sqrt.i.i.i.us ; 2 uses
  %i.ed = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.ee = fneg double %i.ed
  %i.ef = select i1 %i.dz, double %i.ee, double %i.ed
  %i.eg = call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.eh = fmul double %i.eg, %i.ef
  %i.ei = fmul double %i.eh, %i.ec
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.n, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink20.i.i.i.us = phi double [ %i.ei, %bb.n ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 5 uses
  %.sink.i.i.i.us = phi double [ %i.ec, %bb.n ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 7 uses
  %i.ej = fneg double %.sink20.i.i.i.us           ; 3 uses
  %i.ek = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = insertelement <2 x double> poison, double %.sink20.i.i.i.us, i64 0
  %i.em = insertelement <2 x double> %i.el, double %.sink.i.i.i.us, i64 1
  %i.en = fmul <2 x double> %i.ek, %i.em
  %i.eo = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ej, i64 1
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.eq, <2 x double> %i.en) ; 7 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  %i.et = fcmp une double %i.es, 1.000000e+00
  %i.eu = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.ev = fcmp une double %i.eu, 0.000000e+00
  %or.cond.i.i.us.not222 = or i1 %i.et, %i.ev
  br i1 %or.cond.i.i.us.not222, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.ew = load double, ptr %i.gz, align 8, !tbaa !49
  %i.ex = load double, ptr %5, align 8, !tbaa !49
  %i.ey = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.er, %i.ez
  %i.fb = fneg <2 x double> %i.er
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> %i.er, <2 x i32> <i32 1, i32 2>
  %i.fd = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %i.fe, <2 x double> %i.fa) ; 2 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 1
  store double %i.fg, ptr %i.gz, align 8, !tbaa !49
  %i.fh = extractelement <2 x double> %i.ff, i64 0
  store double %i.fh, ptr %5, align 8, !tbaa !49
  %i.fi = load i8, ptr %i.cf, align 1, !tbaa !230, !range !50, !noundef !51
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = load i8, ptr %i.cg, align 8, !range !50
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = select i1 %i.fj, i1 true, i1 %i.fl
  br i1 %i.fm, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fn = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fneg double %i.eu
  %.idx.i.i.i.i3.i.us = shl nuw nsw i64 %.056194.us, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i3.i.us ; 2 uses
  %i.fq = load <2 x double>, ptr %i.fp, align 16, !tbaa !49 ; 2 uses
  %i.fr = load <2 x double>, ptr %i.hb, align 16, !tbaa !49 ; 2 uses
  %i.fs = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fmul <2 x double> %i.fs, %i.fq
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fr, <2 x double> %i.ft)
  store <2 x double> %i.fu, ptr %i.hb, align 16, !tbaa !49
  %i.fv = fmul <2 x double> %i.fn, %i.fq
  %i.fw = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fr, <2 x double> %i.fv)
  store <2 x double> %i.fy, ptr %i.fp, align 16, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fz = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.ga = fcmp oeq double %.sink20.i.i.i.us, 0.000000e+00
  %or.cond.i.i66.us = and i1 %i.ga, %i.fz
  br i1 %or.cond.i.i66.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.gb = load double, ptr %i.gz, align 8, !tbaa !49 ; 2 uses
  %i.gc = load double, ptr %5, align 8, !tbaa !49 ; 2 uses
  %i.gd = fmul double %i.gc, %i.ej
  %i.ge = call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.gb, double %i.gd)
  store double %i.ge, ptr %i.gz, align 8, !tbaa !49
  %i.gf = fmul double %.sink.i.i.i.us, %i.gc
  %i.gg = call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.gb, double %i.gf)
  store double %i.gg, ptr %5, align 8, !tbaa !49
  %i.gh = load i8, ptr %i.ci, align 2, !range !50
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = select i1 %i.ca, i1 true, i1 %i.gi
  br i1 %i.gj, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.056194.us ; 2 uses
  %i.gl = load double, ptr %i.hc, align 8, !tbaa !49 ; 2 uses
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !49 ; 2 uses
  %i.gn = fmul double %i.gm, %i.ej
  %i.go = call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.gl, double %i.gn)
  store double %i.go, ptr %i.hc, align 8, !tbaa !49
  %i.gp = fmul double %.sink.i.i.i.us, %i.gm
  %i.gq = call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.gl, double %i.gp)
  store double %i.gq, ptr %i.gk, align 8, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi1ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i69.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.gr = load double, ptr %i.ha, align 8, !tbaa !49
  %i.gs = call noundef double @llvm.fabs.f64(double %i.gr) ; 2 uses
  %i.gt = load double, ptr %6, align 8, !tbaa !49
  %i.gu = call noundef double @llvm.fabs.f64(double %i.gt) ; 2 uses
  %i.gv = fcmp olt double %i.gs, %i.gu
  %.sroa.speculated.us = select i1 %i.gv, double %i.gu, double %i.gs ; 2 uses
  %i.gw = fcmp olt double %.2173192.us, %.sroa.speculated.us
  %.sroa.speculated121.us = select i1 %i.gw, double %.sroa.speculated.us, double %.2173192.us
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us
  %.3174.us = phi double [ %.sroa.speculated121.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us ], [ %.2173192.us, %bb.j ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit70.us ], [ %.2193.us, %bb.j ] ; 3 uses
  %i.gx = add nuw nsw i64 %.056194.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.gx, %.057198.us
  br i1 %exitcond.not, label %bb.p, label %bb.j, !llvm.loop !220

bb.p:                                             ; preds = %bb.o
  %i.gy = add nuw nsw i64 %.057198.us, 1          ; 2 uses
  %exitcond207.not = icmp eq i64 %i.gy, %i.cd     ; 3 uses
  %brmerge.not = select i1 %exitcond207.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond207.not, i64 1, i64 %i.gy
  %.3.us.mux = select i1 %exitcond207.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader187.us, !llvm.loop !221

.preheader187.us:                                 ; preds = %bb.p, %.preheader188.us.preheader
  %.057198.us = phi i64 [ %.mux, %bb.p ], [ 1, %.preheader188.us.preheader ] ; 6 uses
  %.1197.us = phi i1 [ %.3.us.mux, %bb.p ], [ true, %.preheader188.us.preheader ]
  %.1172196.us = phi double [ %.3174.us, %bb.p ], [ %i.cl, %.preheader188.us.preheader ]
  %i.gz = getelementptr [8 x i8], ptr %i.cb, i64 %.057198.us ; 6 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gz, i64 %.057198.us ; 2 uses
  %.idx.i.i.i.i.i.us = shl nuw nsw i64 %.057198.us, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i.us ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.057198.us ; 2 uses
  br label %bb.j

.preheader:                                       ; preds = %bb.p, %_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_.exit
  %i.hd = icmp sgt i64 %i.cd, 0
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %i.hd, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.hf = load double, ptr %i.he, align 8, !tbaa !49
  %i.hg = fmul double %.0170, %i.hf
  store double %i.hg, ptr %i.he, align 8, !tbaa !49
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cd, ptr %i.hh, align 16, !tbaa !60
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.r
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !49
  %i.hk = fmul double %.0170, %i.hj
  store double %i.hk, ptr %i.hi, align 8, !tbaa !49
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.ia, ptr %i.hl, align 16, !tbaa !60
  %i.hm = icmp sgt i64 %i.ia, 0
  br i1 %i.hm, label %.lr.ph204, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %i.hn = phi i64 [ %i.ia, %bb.r ], [ %i.cd, %.preheader ]
  %.055201 = phi i64 [ %i.ib, %bb.r ], [ 0, %.preheader ] ; 5 uses
  %7 = getelementptr [8 x i8], ptr %i.cb, i64 %.055201
  %8 = getelementptr [8 x i8], ptr %7, i64 %.055201
  %i.ho = load double, ptr %8, align 8, !tbaa !49 ; 2 uses
  %i.hp = call noundef double @llvm.fabs.f64(double %i.ho)
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.055201
  store double %i.hp, ptr %i.hq, align 8, !tbaa !49
  %i.hr = load i8, ptr %i.cf, align 1, !tbaa !230, !range !50, !noundef !51
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = load i8, ptr %i.cg, align 8, !range !50
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = select i1 %i.hs, i1 true, i1 %i.hu
  %i.hw = fcmp olt double %i.ho, 0.000000e+00
  %or.cond = and i1 %i.hw, %i.hv
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %.idx.i.i.i.i = shl nuw nsw i64 %.055201, 4
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 2 uses
  %i.hy = load <2 x double>, ptr %i.hx, align 16, !tbaa !10
  %i.hz = fneg <2 x double> %i.hy
  store <2 x double> %i.hz, ptr %i.hx, align 16, !tbaa !10
  %.pre = load i64, ptr %i.cc, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %i.ia = phi i64 [ %.pre, %bb.q ], [ %i.hn, %.lr.ph ] ; 5 uses
  %i.ib = add nuw nsw i64 %.055201, 1             ; 2 uses
  %i.ic = icmp slt i64 %i.ib, %i.ia
  br i1 %i.ic, label %.lr.ph, label %._crit_edge, !llvm.loop !222

.lr.ph204:                                        ; preds = %._crit_edge, %.thread181
  %i.id = phi i64 [ %i.ka, %.thread181 ], [ %i.ia, %._crit_edge ] ; 3 uses
  %.0202 = phi i64 [ %i.jz, %.thread181 ], [ 0, %._crit_edge ] ; 9 uses
  %i.ie = sub nuw nsw i64 %i.id, %.0202           ; 2 uses
  %i.if = sub nsw i64 1, %i.ie
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.if ; 4 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !49 ; 5 uses
  %i.ii = icmp sgt i64 %i.ie, 1
  br i1 %i.ii, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread177

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph204
  %i.ij = xor i64 %.0202, -1
  %i.ik = add i64 %i.id, %i.ij                    ; 3 uses
  %reass.sub = sub i64 %i.id, %.0202
  %xtraiter = and i64 %i.ik, 1
  %i.il = icmp eq i64 %reass.sub, 2
  br i1 %i.il, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ik, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.ih, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.iw, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.im = phi double [ %i.ih, %.lr.ph.i.i.i.i.preheader.new ], [ %i.iv, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.in = getelementptr [8 x i8], ptr %i.ig, i64 %.02123.i.i.i.i
  %i.io = load double, ptr %i.in, align 8, !tbaa !49 ; 3 uses
  %i.ip = fcmp ogt double %i.io, %i.im            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.ip, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.ip, double %i.io, double %.sroa.7.0.i.i
  %i.iq = select i1 %i.ip, double %i.io, double %i.im ; 2 uses
  %i.ir = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.is = getelementptr [8 x i8], ptr %i.ig, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !49 ; 3 uses
  %i.iu = fcmp ogt double %i.it, %i.iq            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.iu, i64 %i.ir, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.iu, double %i.it, double %.sroa.7.1.i.i ; 3 uses
  %i.iv = select i1 %i.iu, double %i.it, double %i.iq ; 2 uses
  %i.iw = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !223

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.ih, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.iw, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.ih, %.lr.ph.i.i.i.i.preheader ], [ %i.iv, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod229 = trunc i64 %i.ik to i1
  call void @llvm.assume(i1 %lcmp.mod229)
  %i.ix = getelementptr [8 x i8], ptr %i.ig, i64 %.02123.i.i.i.i.epil.init
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !49 ; 2 uses
  %i.iz = fcmp ogt double %i.iy, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.iz, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.iz, double %i.iy, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ja = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.ja, label %bb.s, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread177: ; preds = %.lr.ph204
  %i.jb = fcmp une double %i.ih, 0.000000e+00
  br i1 %i.jb, label %.thread181, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.s:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread181, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jc = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0202 ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.0202 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.jc ; 2 uses
  %i.jf = load double, ptr %i.jd, align 8, !tbaa !49
  %i.jg = load double, ptr %i.je, align 8, !tbaa !49
  store double %i.jg, ptr %i.jd, align 8, !tbaa !49
  store double %i.jf, ptr %i.je, align 8, !tbaa !49
  %i.jh = load i8, ptr %i.cf, align 1, !tbaa !230, !range !50, !noundef !51
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = load i8, ptr %i.cg, align 8, !range !50
  %i.jk = trunc nuw i8 %i.jj to i1
  %i.jl = select i1 %i.ji, i1 true, i1 %i.jk
  br i1 %i.jl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.idx.i.i.i.i74 = shl nuw nsw i64 %i.jc, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i74 ; 2 uses
  %.idx.i.i.i.i75 = shl nuw nsw i64 %.0202, 4
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i75 ; 2 uses
  %i.jo = load <2 x double>, ptr %i.jn, align 16, !tbaa !10
  %i.jp = load <2 x double>, ptr %i.jm, align 16, !tbaa !10
  store <2 x double> %i.jp, ptr %i.jn, align 16, !tbaa !10
  store <2 x double> %i.jo, ptr %i.jm, align 16, !tbaa !10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.jq = load i8, ptr %i.ch, align 1, !tbaa !232, !range !50, !noundef !51
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = load i8, ptr %i.ci, align 2, !range !50
  %i.jt = trunc nuw i8 %i.js to i1
  %i.ju = select i1 %i.jr, i1 true, i1 %i.jt
  br i1 %i.ju, label %bb.w, label %.thread181

bb.w:                                             ; preds = %bb.v
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.jc ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.0202 ; 2 uses
  %i.jx = load double, ptr %i.jv, align 8, !tbaa !49
  %i.jy = load double, ptr %i.jw, align 8, !tbaa !49
  store double %i.jy, ptr %i.jv, align 8, !tbaa !49
  store double %i.jx, ptr %i.jw, align 8, !tbaa !49
  br label %.thread181

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread177
  store i64 %.0202, ptr %i.hl, align 16, !tbaa !60
  br label %.loopexit

.thread181:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread177, %bb.s, %bb.w, %bb.v
  %i.jz = add nuw nsw i64 %.0202, 1               ; 2 uses
  %i.ka = load i64, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.kb = icmp slt i64 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph204, label %.loopexit, !llvm.loop !224

.loopexit:                                        ; preds = %.thread181, %._crit_edge.thread, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 1, ptr %i.kc, align 4, !tbaa !229
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEENS1_IdLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToINS1_IdLi2ELi2ELi0ELi2ELi2EEES2_EEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.804", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Block.815", align 8  ; 8 uses
  %5 = alloca %"class.Eigen::Block.804", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::Block.815", align 8  ; 8 uses
  %7 = alloca %"class.Eigen::Block.804", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.815", align 8  ; 8 uses
  %9 = alloca %"class.Eigen::Block.804", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::Block.815", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !51, !align !62
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %1, align 16, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.e, align 16, !tbaa !49
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
end_hunk_0
