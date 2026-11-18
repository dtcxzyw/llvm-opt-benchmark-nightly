Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/planarize_quad_mesh?download=true
inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  %i.cl = add i64 %i.bw, -40
  %scevgep295.4 = getelementptr i8, ptr %i.cd, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.4, ptr align 8 %scevgep295.4, i64 range(i64 0, 57) %i.cl, i1 false), !tbaa !59
  br label %.loopexit.4

.loopexit.4:                                      ; preds = %.lr.ph.4, %bb.t
  %exitcond.not.4 = icmp eq i64 %smin303, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.loopexit.4
  %i.cm = icmp sgt i64 %.sroa.speculated192, 6
  br i1 %i.cm, label %.lr.ph.5, label %.loopexit.5

.lr.ph.5:                                         ; preds = %bb.u
  %i.cn = add i64 %i.bw, -48
  %scevgep295.5 = getelementptr i8, ptr %i.cd, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.5, ptr align 8 %scevgep295.5, i64 range(i64 0, 57) %i.cn, i1 false), !tbaa !59
  br label %.loopexit.5

.loopexit.5:                                      ; preds = %.lr.ph.5, %bb.u
  %exitcond.not.5 = icmp ne i64 %smin303, 6
  %i.co = icmp sgt i64 %.sroa.speculated192, 7
  %or.cond = and i1 %exitcond.not.5, %i.co
  br i1 %or.cond, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.loopexit.5
  %i.cp = add i64 %i.bw, -56
  %scevgep295.6 = getelementptr i8, ptr %i.cd, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.6, ptr align 8 %scevgep295.6, i64 range(i64 0, 57) %i.cp, i1 false), !tbaa !59
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph280
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %i.cd, i64 range(i64 0, 57) %i.bx, i1 false), !tbaa !59
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.6, %.loopexit, %.loopexit.1, %.loopexit.2, %.loopexit.3, %.loopexit.4, %.loopexit.5, %.lr.ph283
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr %12, ptr %17, align 8, !tbaa !229
  store i64 8, ptr %i.ap, align 8, !tbaa !230
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated192, i64 noundef %.sroa.speculated192, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.cq = getelementptr [8 x i8], ptr %7, i64 %i.ca
  store ptr %i.cq, ptr %18, align 8
  store i64 %9, ptr %i.aq, align 8
  %i.cr = load double, ptr %10, align 8, !tbaa !59
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated192, i64 noundef %.sroa.speculated192, i64 noundef %1, double noundef %i.cr, i64 noundef %.sroa.speculated192, i64 noundef %smin302, i64 noundef 0, i64 noundef %.0119281)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.cs = icmp sgt i64 %i.bz, 0
  br i1 %i.cs, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ct = add nsw i64 %.sroa.speculated192, %i.ca ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.cu = mul nsw i64 %i.ca, %4
  %i.cv = getelementptr [8 x i8], ptr %3, i64 %i.ct
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu
  store ptr %i.cw, ptr %19, align 8
  store i64 %4, ptr %i.ar, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated192, i64 noundef %i.bz, i64 noundef 0, i64 noundef 0)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.cx = getelementptr [8 x i8], ptr %7, i64 %i.ct
  store ptr %i.cx, ptr %20, align 8
  store i64 %9, ptr %i.as, align 8
  %i.cy = load double, ptr %10, align 8, !tbaa !59
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.bz, i64 noundef %.sroa.speculated192, i64 noundef %1, double noundef %i.cy, i64 noundef %.sroa.speculated192, i64 noundef %smin302, i64 noundef 0, i64 noundef %.0119281)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.ae

bb.aa:                                            ; preds = %._crit_edge
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.ak

bb.ab:                                            ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.ak

bb.ac:                                            ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.ak

bb.ad:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.ak

bb.ae:                                            ; preds = %bb.z, %bb.w
  %i.dd = add nsw i64 %.0119281, %.sroa.speculated209 ; 2 uses
  %i.de = icmp slt i64 %i.dd, %smin302
  %indvar.next294 = add i64 %indvar293, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated209
  br i1 %i.de, label %.lr.ph283, label %.preheader, !llvm.loop !1550

._crit_edge286:                                   ; preds = %bb.ah, %.preheader
  %i.df = sub nsw i64 %.0120289, %i.b             ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dg, label %bb.n, label %._crit_edge292, !llvm.loop !1551

bb.af:                                            ; preds = %.lr.ph285, %bb.ah
  %.0284 = phi i64 [ %.0120289, %.lr.ph285 ], [ %i.dh, %bb.ah ] ; 4 uses
  %i.dh = add nsw i64 %.0284, %.sroa.speculated215 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.dh)
  %i.di = sub nsw i64 %.sroa.speculated, %.0284   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %gep288 = getelementptr [8 x i8], ptr %invariant.gep287, i64 %.0284
  store ptr %gep288, ptr %22, align 8
  store i64 %4, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin302, i64 noundef %i.di, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.dj = getelementptr [8 x i8], ptr %7, i64 %.0284
  store ptr %i.dj, ptr %23, align 8
  store i64 %9, ptr %i.au, align 8
  %i.dk = load double, ptr %10, align 8, !tbaa !59
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.di, i64 noundef %smin302, i64 noundef %1, double noundef %i.dk, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.dl = icmp slt i64 %i.dh, %0
  br i1 %i.dl, label %bb.af, label %._crit_edge286, !llvm.loop !1552

bb.ai:                                            ; preds = %bb.af
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.aa, %bb.ab, %bb.ad, %bb.ac, %bb.p
  %.pn142.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.db, %bb.ac ], [ %i.dm, %bb.ai ], [ %i.cz, %bb.aa ], [ %i.da, %bb.ab ], [ %i.dc, %bb.ad ], [ %i.dn, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br i1 %i.af, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit186

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.ad) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit186

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit186: ; preds = %bb.al, %bb.ak, %bb.m
  %.pn142.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn142.pn, %bb.ak ], [ %.pn142.pn, %bb.al ]
  br i1 %i.s, label %bb.am, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit187

bb.am:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit186
  call void @free(ptr noundef %i.q) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit187

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit187: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit186, %bb.am
  resume { ptr, i32 } %.pn142.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15splitOffTwoRowsElbRKd(ptr noundef nonnull align 16 dereferenceable(320) %0, i64 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %1, -1                       ; 3 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %.idx.i = mul i64 %i.a, 24                      ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 %.idx.i  ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !59 ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %0, i64 %1   ; 2 uses
  %.idx.i44 = mul i64 %1, 24                      ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %.idx.i44 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !59 ; 2 uses
  %i.h = fsub double %i.d, %i.g
  %i.i = fmul double %i.h, 5.000000e-01           ; 5 uses
  %i.j = getelementptr i8, ptr %i.e, i64 %.idx.i  ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !59 ; 11 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %.idx.i44 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !59
  %i.n = fmul double %i.k, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.n) ; 2 uses
  %i.p = load double, ptr %3, align 8, !tbaa !59
  %i.q = fadd double %i.g, %i.p
  store double %i.q, ptr %i.f, align 8, !tbaa !59
  %i.r = load double, ptr %3, align 8, !tbaa !59
  %i.s = fadd double %i.d, %i.r
  store double %i.s, ptr %i.c, align 8, !tbaa !59
  %i.t = fcmp ult double %i.o, 0.000000e+00
  br i1 %i.t, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef double @llvm.fabs.f64(double %i.o)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.u) ; 2 uses
  %i.v = fcmp ult double %i.i, 0.000000e+00
  %i.w = fcmp oeq double %i.k, 0.000000e+00       ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = fadd double %i.i, %sqrt                  ; 4 uses
  br i1 %i.w, label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = fcmp olt double %i.k, 0.000000e+00
  %i.aa = select i1 %i.z, double 1.000000e+00, double -1.000000e+00
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.k)
  %i.ac = fcmp ogt double %i.x, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = fdiv double %i.k, %i.x                  ; 3 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = fadd double %i.ae, 1.000000e+00
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.ah = fneg double %i.ad
  %i.ai = fmul double %i.ag, %i.ah
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = fdiv double %i.x, %i.k                  ; 3 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = fadd double %i.ak, 1.000000e+00
  %sqrt40.i.i = tail call double @llvm.sqrt.f64(double %i.al) ; 2 uses
  %i.am = fcmp olt double %i.k, 0.000000e+00
  %i.an = fneg double %sqrt40.i.i
  %.0.i.i = select i1 %i.am, double %i.an, double %sqrt40.i.i
  %i.ao = fdiv double -1.000000e+00, %.0.i.i      ; 2 uses
  %i.ap = fneg double %i.aj
  %i.aq = fmul double %i.ao, %i.ap
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit

bb.i:                                             ; preds = %bb.b
  %i.ar = fsub double %i.i, %sqrt                 ; 5 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  %i.at = select i1 %i.as, double -1.000000e+00, double 1.000000e+00
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit

bb.k:                                             ; preds = %bb.i
  %i.au = tail call noundef double @llvm.fabs.f64(double %i.ar)
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.k)
  %i.aw = fcmp ogt double %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = fdiv double %i.k, %i.ar                 ; 3 uses
  %i.ay = fmul double %i.ax, %i.ax
  %i.az = fadd double %i.ay, 1.000000e+00
  %sqrt.i.i53 = tail call double @llvm.sqrt.f64(double %i.az) ; 2 uses
  %i.ba = fcmp olt double %i.ar, 0.000000e+00
  %i.bb = fneg double %sqrt.i.i53
  %.031.i.i54 = select i1 %i.ba, double %i.bb, double %sqrt.i.i53
  %i.bc = fdiv double 1.000000e+00, %.031.i.i54   ; 2 uses
  %i.bd = fneg double %i.ax
  %i.be = fmul double %i.bc, %i.bd
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = fdiv double %i.ar, %i.k                 ; 3 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = fadd double %i.bg, 1.000000e+00
  %sqrt40.i.i51 = tail call double @llvm.sqrt.f64(double %i.bh) ; 2 uses
  %i.bi = fcmp olt double %i.k, 0.000000e+00
  %i.bj = fneg double %sqrt40.i.i51
  %.0.i.i52 = select i1 %i.bi, double %i.bj, double %sqrt40.i.i51
  %i.bk = fdiv double -1.000000e+00, %.0.i.i52    ; 2 uses
  %i.bl = fneg double %i.bf
  %i.bm = fmul double %i.bk, %i.bl
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit

_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit: ; preds = %bb.c, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  %.sroa.077.0 = phi double [ %i.aq, %bb.h ], [ %i.bc, %bb.l ], [ 0.000000e+00, %bb.e ], [ %i.ag, %bb.g ], [ %i.at, %bb.j ], [ %i.bm, %bb.m ], [ 1.000000e+00, %bb.c ] ; 7 uses
  %.sroa.13.0 = phi double [ %i.ao, %bb.h ], [ %i.be, %bb.l ], [ %i.aa, %bb.e ], [ %i.ai, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.bk, %bb.m ], [ 0.000000e+00, %bb.c ] ; 6 uses
  %i.bn = sub i64 4, %1                           ; 4 uses
  %i.bo = fneg double %.sroa.13.0                 ; 4 uses
  %i.bp = fcmp une double %.sroa.077.0, 1.000000e+00 ; 2 uses
  %i.bq = fcmp une double %.sroa.13.0, 0.000000e+00 ; 2 uses
  %or.cond.not18.i.i = or i1 %i.bp, %i.bq         ; 2 uses
  %i.br = icmp sgt i64 %i.bn, 0
  %or.cond16.i.i = and i1 %i.br, %or.cond.not18.i.i
  br i1 %or.cond16.i.i, label %.lr.ph.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit
  %i.bs = getelementptr i8, ptr %0, i64 %.idx.i44
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24    ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %1 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.a ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %.sroa.077.0, i64 1 ; 3 uses
  %i.by = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %.sroa.13.0, i64 1 ; 3 uses
  %xtraiter = and i64 %i.bn, 1
  %i.ca = icmp eq i64 %1, 3
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.bn, 9223372036854775806
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.new
  %.021.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.new ], [ %i.cr, %bb.n ] ; 4 uses
  %.01420.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.new ], [ %i.cs, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.cb = load <2 x double>, ptr %.021.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x double> %i.cc, %i.bx
  %i.ce = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ce, <2 x double> %i.cd) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  store double %i.cg, ptr %.021.i.i.i, align 8, !tbaa !59
  %i.ch = extractelement <2 x double> %i.cf, i64 1
  store double %i.ch, ptr %.01420.i.i.i, align 8, !tbaa !59
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01420.i.i.i, i64 24
  %i.ck = load <2 x double>, ptr %i.ci, align 8, !tbaa !59 ; 2 uses
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = fmul <2 x double> %i.cl, %i.bx
  %i.cn = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cn, <2 x double> %i.cm) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0
  store double %i.cp, ptr %i.ci, align 8, !tbaa !59
  %i.cq = extractelement <2 x double> %i.co, i64 1
  store double %i.cq, ptr %i.cj, align 8, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 48 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01420.i.i.i, i64 48 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !1553

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %.021.i.i.i.epil.init = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %i.cr, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01420.i.i.i.epil.init = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %i.cs, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod90 = trunc i64 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.ct = load <2 x double>, ptr %.021.i.i.i.epil.init, align 8, !tbaa !59 ; 2 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x double> %i.cu, %i.bx
  %i.cw = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cw, <2 x double> %i.cv) ; 2 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0
  store double %i.cy, ptr %.021.i.i.i.epil.init, align 8, !tbaa !59
  %i.cz = extractelement <2 x double> %i.cx, i64 1
  store double %i.cz, ptr %.01420.i.i.i.epil.init, align 8, !tbaa !59
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit: ; preds = %.epil.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit
  %i.da = icmp sgt i64 %1, -1
  %or.cond16.i.i57 = and i1 %i.da, %or.cond.not18.i.i
  br i1 %or.cond16.i.i57, label %.lr.ph.i.i.preheader.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit

.lr.ph.i.i.preheader.i:                           ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit
  %i.db = getelementptr inbounds i8, ptr %0, i64 %.idx.i44 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %0, i64 %.idx.i ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.bo, i64 1 ; 3 uses
  %i.df = insertelement <2 x double> poison, double %.sroa.13.0, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %.sroa.077.0, i64 1 ; 3 uses
  %i.dh = add nuw i64 %1, 1                       ; 2 uses
  %i.di = icmp eq i64 %1, 0
  br i1 %i.di, label %.lr.ph.i.i.i58.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter94 = and i64 %i.dh, -2
  br label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %.lr.ph.i.i.i58, %.lr.ph.i.i.preheader.i.new
  %.021.i.i.i59 = phi ptr [ %i.dc, %.lr.ph.i.i.preheader.i.new ], [ %i.ef, %.lr.ph.i.i.i58 ] ; 4 uses
  %.01420.i.i.i60 = phi ptr [ %i.db, %.lr.ph.i.i.preheader.i.new ], [ %i.eg, %.lr.ph.i.i.i58 ] ; 4 uses
  %niter95 = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter95.next.1, %.lr.ph.i.i.i58 ]
  %i.dj = load double, ptr %.021.i.i.i59, align 8, !tbaa !59
  %i.dk = load double, ptr %.01420.i.i.i60, align 8, !tbaa !59
  %i.dl = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dm, %i.de
  %i.do = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.dp, <2 x double> %i.dn) ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1
  store double %i.dr, ptr %.021.i.i.i59, align 8, !tbaa !59
  %i.ds = extractelement <2 x double> %i.dq, i64 0
  store double %i.ds, ptr %.01420.i.i.i60, align 8, !tbaa !59
  %i.dt = getelementptr inbounds nuw i8, ptr %.021.i.i.i59, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.01420.i.i.i60, i64 8 ; 2 uses
  %i.dv = load double, ptr %i.dt, align 8, !tbaa !59
  %i.dw = load double, ptr %i.du, align 8, !tbaa !59
  %i.dx = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.dy, %i.de
  %i.ea = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.eb, <2 x double> %i.dz) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 1
  store double %i.ed, ptr %i.dt, align 8, !tbaa !59
  %i.ee = extractelement <2 x double> %i.ec, i64 0
  store double %i.ee, ptr %i.du, align 8, !tbaa !59
  %i.ef = getelementptr inbounds nuw i8, ptr %.021.i.i.i59, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01420.i.i.i60, i64 16 ; 2 uses
  %niter95.next.1 = add i64 %niter95, 2           ; 2 uses
  %niter95.ncmp.1 = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i58, !llvm.loop !1553

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i58
  %i.eh = and i64 %1, 1
  %lcmp.mod92.not.not = icmp eq i64 %i.eh, 0
  br i1 %lcmp.mod92.not.not, label %.lr.ph.i.i.i58.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit

.lr.ph.i.i.i58.epil.preheader:                    ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.021.i.i.i59.epil.init = phi ptr [ %i.dc, %.lr.ph.i.i.preheader.i ], [ %i.ef, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01420.i.i.i60.epil.init = phi ptr [ %i.db, %.lr.ph.i.i.preheader.i ], [ %i.eg, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i64 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.ei = load double, ptr %.021.i.i.i59.epil.init, align 8, !tbaa !59
  %i.ej = load double, ptr %.01420.i.i.i60.epil.init, align 8, !tbaa !59
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.el, %i.de
  %i.en = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.eo, <2 x double> %i.em) ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 1
  store double %i.eq, ptr %.021.i.i.i59.epil.init, align 8, !tbaa !59
  %i.er = extractelement <2 x double> %i.ep, i64 0
  store double %i.er, ptr %.01420.i.i.i60.epil.init, align 8, !tbaa !59
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit: ; preds = %.lr.ph.i.i.i58.epil.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !59
  %or.cond.i.i.demorgan = or i1 %i.bp, %i.bq
  %or.cond = and i1 %2, %or.cond.i.i.demorgan
  br i1 %or.cond, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi3ELb0EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %.idx.i44 ; 3 uses
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %.idx.i ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load <2 x double>, ptr %i.et, align 8, !tbaa !59 ; 3 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
  %i.ey = load <2 x double>, ptr %i.eu, align 8, !tbaa !59 ; 2 uses
  %i.ez = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x double> %i.ew, %i.fa
  %i.fc = insertelement <2 x double> poison, double %.sroa.077.0, i64 0 ; 2 uses
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.ey, <2 x double> %i.fb)
  store <2 x double> %i.fe, ptr %i.eu, align 8, !tbaa !59
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !59 ; 2 uses
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !59 ; 2 uses
  %i.fj = fmul double %.sroa.077.0, %i.ex
  %i.fk = fmul double %i.fi, %i.bo
  %i.fl = insertelement <2 x double> %i.fc, double %.sroa.13.0, i64 1
  %i.fm = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fn = insertelement <2 x double> %i.fm, double %i.fh, i64 0
  %i.fo = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fj, i64 1
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fn, <2 x double> %i.fp)
  store <2 x double> %i.fq, ptr %i.ff, align 8, !tbaa !59
  %i.fr = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fs = insertelement <2 x double> %i.fr, double %i.fi, i64 1
  %i.ft = fmul <2 x double> %i.fd, %i.fs
  %i.fu = insertelement <2 x double> poison, double %.sroa.13.0, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = insertelement <2 x double> %i.fm, double %i.fh, i64 1
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fw, <2 x double> %i.ft)
  store <2 x double> %i.fx, ptr %i.ev, align 8, !tbaa !59
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit

end_hunk_0
