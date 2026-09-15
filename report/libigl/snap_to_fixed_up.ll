Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 157
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn143.pn = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.dq, %bb.ab ], [ %i.eb, %bb.ah ], [ %i.do, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dr, %bb.ac ], [ %i.ec, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %i.ag, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ae) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188: ; preds = %bb.aj, %bb.ak, %bb.p, %bb.o
  %.pn143.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.bm, %bb.p ], [ %.pn143.pn, %bb.ak ], [ %.pn143.pn, %bb.aj ]
  br i1 %i.s, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit189

bb.al:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188
  call void @free(ptr noundef %i.q) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit189

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit189: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188, %bb.al
  resume { ptr, i32 } %.pn143.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(560) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 133 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1044, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 2
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16
  %i.i = icmp eq i64 %i.h, 3
  %or.cond16.i = select i1 %or.cond.i, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %2, %i.k
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.l, i1 false
  br i1 %or.cond19.i, label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !tbaa !1045
  store i64 3, ptr %i.g, align 16, !tbaa !1046
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.m, align 16, !tbaa !1047
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.n, align 4, !tbaa !1048
  store i8 1, ptr %i.a, align 1, !tbaa !1044
  store i32 %2, ptr %i.j, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.p = trunc i32 %2 to i8                       ; 4 uses
  %i.q = lshr i8 %i.p, 2
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 1, !tbaa !306
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = lshr i8 %i.p, 3
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8, !tbaa !1049
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.w = lshr i8 %i.p, 4
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !307
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.z = lshr i8 %i.p, 5
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.y, align 2, !tbaa !308
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 2, ptr %i.ab, align 8, !tbaa !33
  br label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit

_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit: ; preds = %bb.a, %bb.b
  %i.ac = load <2 x i64>, ptr %1, align 16        ; 2 uses
  %i.ad = and <2 x i64> %i.ac, splat (i64 9223372036854775807)
  %i.ae = bitcast <2 x i64> %i.ad to <2 x double> ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 16, !tbaa !13
  %i.ah = and <2 x i64> %i.ag, splat (i64 9223372036854775807)
  %i.ai = bitcast <2 x i64> %i.ah to <2 x double> ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 16, !tbaa !13
  %i.al = and <2 x i64> %i.ak, splat (i64 9223372036854775807)
  %i.am = bitcast <2 x i64> %i.al to <2 x double>
  %i.an = fcmp uno <2 x double> %i.ai, zeroinitializer
  %i.ao = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.am, <2 x double> %i.ai) #22, !srcloc !1050
  %i.ap = select <2 x i1> %i.an, <2 x double> %i.ai, <2 x double> %i.ao
  %i.aq = fcmp uno <2 x double> %i.ae, zeroinitializer
  %i.ar = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ap, <2 x double> %i.ae) #22, !srcloc !1050
  %i.as = select <2 x i1> %i.aq, <2 x double> %i.ae, <2 x double> %i.ar ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.as, i64 0 ; 3 uses
  %i.at = fcmp uno double %.sroa.0.0.vec.extract.i.i.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.as, i64 1 ; 3 uses
  %i.au = fcmp ord double %.sroa.0.8.vec.extract.i.i.i.i.i, 0.000000e+00
  %i.av = fcmp uge double %.sroa.0.0.vec.extract.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i
  %.not3.i.i.i.i.i.i = and i1 %i.au, %i.av
  %i.aw = select i1 %i.at, i1 true, i1 %.not3.i.i.i.i.i.i
  %i.ax = select i1 %i.aw, double %.sroa.0.0.vec.extract.i.i.i.i.i, double %.sroa.0.8.vec.extract.i.i.i.i.i ; 3 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ueq double %i.ay, +inf
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 1, ptr %i.ba, align 4, !tbaa !1048
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 3, ptr %i.bb, align 16, !tbaa !1047
  br label %bb.t

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit
  %i.bc = bitcast <2 x i64> %i.ac to <2 x double>
  %i.bd = fcmp oeq double %i.ax, 0.000000e+00
  %.0181 = select i1 %i.bd, double 1.000000e+00, double %i.ax ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.sroa.7.16.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0181, i64 0
  %i.bf = shufflevector <2 x double> %.sroa.7.16.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = fdiv <2 x double> %i.bc, %i.bf
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bi = load <2 x double>, ptr %i.af, align 16, !tbaa !13
  %i.bj = fdiv <2 x double> %i.bi, %i.bf
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bl = load <2 x double>, ptr %i.aj, align 16, !tbaa !13
  %i.bm = fdiv <2 x double> %i.bl, %i.bf
  store <2 x double> %i.bm, ptr %i.bk, align 16, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bo = tail call noundef zeroext i1 @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_(ptr noundef nonnull align 16 dereferenceable(264) %i.bn, ptr noundef nonnull align 16 dereferenceable(560) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.be) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !33 ; 5 uses
  %i.bs = icmp sgt i64 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.bs, label %.preheader199.us.preheader, label %.preheader

.preheader199.us.preheader:                       ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre = load double, ptr %.phi.trans.insert, align 16, !tbaa !15
  %i.by = tail call noundef double @llvm.fabs.f64(double %.pre) ; 2 uses
  %.phi.trans.insert219 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.pre220 = load double, ptr %.phi.trans.insert219, align 8, !tbaa !15
  %i.bz = tail call noundef double @llvm.fabs.f64(double %.pre220) ; 2 uses
  %i.ca = fcmp olt double %i.by, %i.bz
  %i.cb = select i1 %i.ca, double %i.bz, double %i.by
  br label %.preheader198.us

bb.e:                                             ; preds = %.preheader198.us, %bb.k
  %.056205.us = phi i64 [ 0, %.preheader198.us ], [ %i.hn, %bb.k ] ; 6 uses
  %.2204.us = phi i1 [ %.1208.us, %.preheader198.us ], [ %.3.us, %bb.k ]
  %.2184203.us = phi double [ %.1183207.us, %.preheader198.us ], [ %.3185.us, %bb.k ] ; 4 uses
  %i.cc = fmul double %.2184203.us, f0x3CC0000000000000 ; 2 uses
  %i.cd = fcmp ogt double %i.cc, f0x0010000000000000
  %.sroa.speculated146.us = select i1 %i.cd, double %i.cc, double f0x0010000000000000 ; 2 uses
  %.idx.i.us = shl i64 %.056205.us, 4             ; 4 uses
  %i.ce = getelementptr i8, ptr %i.hp, i64 %.idx.i.us
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !15 ; 5 uses
  %i.cg = tail call noundef double @llvm.fabs.f64(double %i.cf) ; 2 uses
  %i.ch = fcmp ogt double %i.cg, %.sroa.speculated146.us
  br i1 %i.ch, label %._crit_edge221, label %bb.f

._crit_edge221:                                   ; preds = %bb.e
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.056205.us
  %.pre224 = load double, ptr %gep, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.056205.us
  %i.ci = load double, ptr %gep.us, align 8, !tbaa !15 ; 2 uses
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ogt double %i.cj, %.sroa.speculated146.us
  br i1 %i.ck, label %bb.g, label %bb.k

bb.g:                                             ; preds = %._crit_edge221, %bb.f
  %i.cl = phi double [ %.pre224, %._crit_edge221 ], [ %i.ci, %bb.f ] ; 2 uses
  %i.cm = load double, ptr %i.hq, align 8, !tbaa !15 ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bp, i64 %.056205.us ; 4 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.us ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !15 ; 3 uses
  %i.cq = fsub double %i.cl, %i.cf                ; 2 uses
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp olt double %i.cr, f0x0010000000000000
  br i1 %i.cs, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = fadd double %i.cm, %i.cp
  %i.cu = fdiv double %i.ct, %i.cq                ; 3 uses
  %i.cv = fmul double %i.cu, %i.cu
  %i.cw = fadd double %i.cv, 1.000000e+00
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.cw)
  %i.cx = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.cu, i64 1
  %i.cy = insertelement <2 x double> poison, double %sqrt.i.us, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x double> %i.cx, %i.cz
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = phi <2 x double> [ %i.da, %bb.h ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.g ] ; 7 uses
  %i.dc = extractelement <2 x double> %i.db, i64 1 ; 2 uses
  %i.dd = fcmp oeq double %i.dc, 1.000000e+00
  %i.de = extractelement <2 x double> %i.db, i64 0 ; 2 uses
  %i.df = fcmp oeq double %i.de, 0.000000e+00
  %or.cond.i.i.i.us = and i1 %i.df, %i.dd
  %3 = insertelement <2 x double> poison, double %i.cm, i64 0
  %4 = insertelement <2 x double> %3, double %i.cp, i64 1 ; 3 uses
  br i1 %or.cond.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us: ; preds = %bb.i
  %i.dg = insertelement <2 x double> %4, double %i.cl, i64 0
  %5 = fmul <2 x double> %i.dg, %i.db
  %6 = fmul double %i.cp, %i.de
  %7 = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cf, double %6) ; 2 uses
  %8 = fneg <2 x double> %i.db
  %9 = shufflevector <2 x double> %i.db, <2 x double> %8, <2 x i32> <i32 1, i32 2>
  %i.dh = insertelement <2 x double> %4, double %i.cf, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.dh, <2 x double> %5)
  %.pre227 = tail call noundef double @llvm.fabs.f64(double %7)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.i
  %.pre-phi = phi double [ %.pre227, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cg, %bb.i ] ; 2 uses
  %.sroa.9.0.i.us = phi double [ %7, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.cf, %bb.i ]
  %10 = phi <2 x double> [ %i.di, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %4, %bb.i ] ; 2 uses
  %i.dj = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.dk = fcmp uge double %i.dj, f0x0010000000000000
  br i1 %i.dk, label %bb.j, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.j:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %shift = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %10, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dl = fdiv double %11, %i.dj                  ; 4 uses
  %i.dm = fmul double %i.dl, %i.dl
  %i.dn = fadd double %i.dm, 1.000000e+00
  %sqrt19.i.i.i.us = tail call double @llvm.sqrt.f64(double %i.dn) ; 2 uses
  %i.do = fcmp ogt double %i.dl, 0.000000e+00
  %i.dp = fneg double %sqrt19.i.i.i.us
  %.pn.p.i.i.i.us = select i1 %i.do, double %sqrt19.i.i.i.us, double %i.dp
  %.pn.i.i.i.us = fadd double %i.dl, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.dq = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.dr = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.ds = fadd double %i.dr, 1.000000e+00
  %sqrt.i.i.i.us = tail call double @llvm.sqrt.f64(double %i.ds)
  %i.dt = fdiv double 1.000000e+00, %sqrt.i.i.i.us ; 2 uses
  %i.du = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.dv = fneg double %i.du
  %i.dw = select i1 %i.dq, double %i.dv, double %i.du
  %i.dx = tail call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.dy = fmul double %i.dx, %i.dw
  %i.dz = fmul double %i.dy, %i.dt
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.j, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink20.i.i.i.us = phi double [ %i.dz, %bb.j ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 4 uses
  %.sink.i.i.i.us = phi double [ %i.dt, %bb.j ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 5 uses
  %i.ea = fneg double %.sink20.i.i.i.us           ; 3 uses
  %i.eb = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = insertelement <2 x double> poison, double %.sink20.i.i.i.us, i64 0 ; 2 uses
  %i.ed = insertelement <2 x double> %i.ec, double %.sink.i.i.i.us, i64 1
  %i.ee = fmul <2 x double> %i.eb, %i.ed
  %i.ef = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0 ; 2 uses
  %i.eh = insertelement <2 x double> %i.eg, double %i.ea, i64 1
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eh, <2 x double> %i.ee) ; 8 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = fcmp une double %i.ej, 1.000000e+00
  %i.el = extractelement <2 x double> %i.ei, i64 1 ; 2 uses
  %i.em = fcmp une double %i.el, 0.000000e+00
  %or.cond.i.i.us.not239 = or i1 %i.ek, %i.em
  br i1 %or.cond.i.i.us.not239, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.en = load double, ptr %i.hp, align 8, !tbaa !15
  %i.eo = load double, ptr %i.cn, align 8, !tbaa !15
  %i.ep = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.ei, %i.eq
  %i.es = fneg <2 x double> %i.ei
  %i.et = shufflevector <2 x double> %i.es, <2 x double> %i.ei, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eu = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.ev, <2 x double> %i.er) ; 2 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 1
  store double %i.ex, ptr %i.hp, align 8, !tbaa !15
  %i.ey = extractelement <2 x double> %i.ew, i64 0
  store double %i.ey, ptr %i.cn, align 8, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.fa = load double, ptr %i.hr, align 8, !tbaa !15
  %i.fb = load double, ptr %i.ez, align 8, !tbaa !15
  %i.fc = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fmul <2 x double> %i.ei, %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.fg, <2 x double> %i.fe) ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 1
  store double %i.fi, ptr %i.hr, align 8, !tbaa !15
  %i.fj = extractelement <2 x double> %i.fh, i64 0
  store double %i.fj, ptr %i.ez, align 8, !tbaa !15
  %i.fk = load i8, ptr %i.bt, align 1, !tbaa !306, !range !78, !noundef !79
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load i8, ptr %i.bu, align 8, !range !78
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %i.fo, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.fp = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = fneg double %i.el
  %i.fr = getelementptr inbounds i8, ptr %0, i64 %.idx.i.us ; 2 uses
  %i.fs = load <2 x double>, ptr %i.fr, align 16, !tbaa !15 ; 2 uses
  %i.ft = load <2 x double>, ptr %i.hs, align 16, !tbaa !15 ; 2 uses
  %i.fu = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = fmul <2 x double> %i.fu, %i.fs
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.ft, <2 x double> %i.fv)
  store <2 x double> %i.fw, ptr %i.hs, align 16, !tbaa !15
  %i.fx = fmul <2 x double> %i.fp, %i.fs
  %i.fy = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.ft, <2 x double> %i.fx)
  store <2 x double> %i.ga, ptr %i.fr, align 16, !tbaa !15
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.gb = fcmp oeq double %.sink.i.i.i.us, 1.000000e+00
  %i.gc = fcmp oeq double %.sink20.i.i.i.us, 0.000000e+00
  %or.cond.i.i67.us = and i1 %i.gc, %i.gb
  br i1 %or.cond.i.i67.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.gd = getelementptr inbounds i8, ptr %i.bp, i64 %.idx.i.us ; 2 uses
  %i.ge = load <2 x double>, ptr %i.gd, align 16, !tbaa !15 ; 2 uses
  %i.gf = load <2 x double>, ptr %invariant.gep.us, align 16, !tbaa !15 ; 2 uses
  %i.gg = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gi = fmul <2 x double> %i.ge, %i.gh
  %i.gj = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gf, <2 x double> %i.gi)
  store <2 x double> %i.gk, ptr %invariant.gep.us, align 16, !tbaa !15
  %i.gl = fmul <2 x double> %i.gj, %i.ge
  %i.gm = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gf, <2 x double> %i.gl)
  store <2 x double> %i.gn, ptr %i.gd, align 16, !tbaa !15
  %i.go = load i8, ptr %i.bv, align 1, !tbaa !307, !range !78, !noundef !79
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = load i8, ptr %i.bw, align 2, !range !78
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = select i1 %i.gp, i1 true, i1 %i.gr
  br i1 %i.gs, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us
  %.idx.i.i.i.i3.i73.us = mul nuw nsw i64 %.056205.us, 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i3.i73.us ; 3 uses
  %i.gu = load <2 x double>, ptr %i.gt, align 8, !tbaa !15 ; 2 uses
  %i.gv = load <2 x double>, ptr %i.ht, align 8, !tbaa !15 ; 2 uses
  %i.gw = fmul <2 x double> %i.gu, %i.gh
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gv, <2 x double> %i.gw)
  store <2 x double> %i.gx, ptr %i.ht, align 8, !tbaa !15
  %i.gy = fmul <2 x double> %i.gj, %i.gu
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gv, <2 x double> %i.gy)
  store <2 x double> %i.gz, ptr %i.gt, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.hb = load double, ptr %i.hu, align 8, !tbaa !15 ; 2 uses
  %i.hc = load double, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.hd = fmul double %i.hc, %i.ea
  %i.he = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.hb, double %i.hd)
  store double %i.he, ptr %i.hu, align 8, !tbaa !15
  %i.hf = fmul double %.sink.i.i.i.us, %i.hc
  %i.hg = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.hb, double %i.hf)
  store double %i.hg, ptr %i.ha, align 8, !tbaa !15
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.hh = load double, ptr %i.hq, align 8, !tbaa !15
  %i.hi = tail call noundef double @llvm.fabs.f64(double %i.hh) ; 2 uses
  %i.hj = load double, ptr %i.co, align 8, !tbaa !15
  %i.hk = tail call noundef double @llvm.fabs.f64(double %i.hj) ; 2 uses
  %i.hl = fcmp olt double %i.hi, %i.hk
  %.sroa.speculated.us = select i1 %i.hl, double %i.hk, double %i.hi ; 2 uses
  %i.hm = fcmp olt double %.2184203.us, %.sroa.speculated.us
  %.sroa.speculated132.us = select i1 %i.hm, double %.sroa.speculated.us, double %.2184203.us
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, %bb.f
  %.3185.us = phi double [ %.sroa.speculated132.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us ], [ %.2184203.us, %bb.f ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us ], [ %.2204.us, %bb.f ] ; 3 uses
  %i.hn = add nuw nsw i64 %.056205.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.hn, %.057209.us
  br i1 %exitcond.not, label %bb.l, label %bb.e, !llvm.loop !1039

bb.l:                                             ; preds = %bb.k
  %i.ho = add nuw nsw i64 %.057209.us, 1          ; 2 uses
  %exitcond218.not = icmp eq i64 %i.ho, %i.br     ; 3 uses
  %brmerge.not = select i1 %exitcond218.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond218.not, i64 1, i64 %i.ho
  %.3.us.mux = select i1 %exitcond218.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader198.us, !llvm.loop !1040

.preheader198.us:                                 ; preds = %bb.l, %.preheader199.us.preheader
  %.057209.us = phi i64 [ %.mux, %bb.l ], [ 1, %.preheader199.us.preheader ] ; 5 uses
  %.1208.us = phi i1 [ %.3.us.mux, %bb.l ], [ true, %.preheader199.us.preheader ]
  %.1183207.us = phi double [ %.3185.us, %bb.l ], [ %i.cb, %.preheader199.us.preheader ]
  %i.hp = getelementptr [8 x i8], ptr %i.bp, i64 %.057209.us ; 5 uses
  %.idx.i64.us = shl i64 %.057209.us, 4           ; 4 uses
  %invariant.gep.us = getelementptr i8, ptr %i.bp, i64 %.idx.i64.us ; 3 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 %.idx.i64.us ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %0, i64 %.idx.i64.us ; 2 uses
  %.idx.i.i.i.i.i74.us = mul nuw nsw i64 %.057209.us, 24
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i.i74.us ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.bp, i64 %.idx.i64.us
  br label %bb.e

.preheader:                                       ; preds = %bb.l, %bb.d
  %i.hv = icmp sgt i64 %i.br, 0
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  br i1 %i.hv, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.hx = insertelement <2 x double> poison, double %.0181, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = load <2 x double>, ptr %i.hw, align 16, !tbaa !13
  %i.ia = fmul <2 x double> %i.hy, %i.hz
  store <2 x double> %i.ia, ptr %i.hw, align 16, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.br, ptr %i.ib, align 16, !tbaa !1051
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.n
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
end_hunk_0
