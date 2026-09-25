Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_slam2d_linear?download=true
inline.NumInlined: 3205
inline.NumDeleted: 1582
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0
@.str.10 = private unnamed_addr constant [9 x i8] c"# rows: \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"# columns: \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN3g2o18G2OBatchStatistics12_globalStatsE = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3g2o18SolverSLAM2DLinearC1ESt10unique_ptrINS_6SolverESt14default_deleteIS2_EE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3g2o18SolverSLAM2DLinearC2ESt10unique_ptrINS_6SolverESt14default_deleteIS2_EE
@_ZN3g2o18SolverSLAM2DLinearD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o18SolverSLAM2DLinearD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o18SolverSLAM2DLinearC2ESt10unique_ptrINS_6SolverESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !193
  store i64 %i.a, ptr %2, align 8, !tbaa !193
  store ptr null, ptr %1, align 8, !tbaa !193
  invoke void @_ZN3g2o32OptimizationAlgorithmGaussNewtonC2ESt10unique_ptrINS_6SolverESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !193    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3g2o6SolverESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3g2o6SolverEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3g2o6SolverEEclEPS1_.exit.i: ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #30, !inline_history !192
  br label %_ZNSt10unique_ptrIN3g2o6SolverESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3g2o6SolverESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3g2o6SolverEEclEPS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3g2o18SolverSLAM2DLinearE, i64 16), ptr %0, align 8, !tbaa !18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !193    ; 3 uses
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN3g2o6SolverESt14default_deleteIS1_EED2Ev.exit4, label %_ZNKSt14default_deleteIN3g2o6SolverEEclEPS1_.exit.i3

_ZNKSt14default_deleteIN3g2o6SolverEEclEPS1_.exit.i3: ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #30, !inline_history !192
  br label %_ZNSt10unique_ptrIN3g2o6SolverESt14default_deleteIS1_EED2Ev.exit4

_ZNSt10unique_ptrIN3g2o6SolverESt14default_deleteIS1_EED2Ev.exit4: ; preds = %bb.c, %_ZNKSt14default_deleteIN3g2o6SolverEEclEPS1_.exit.i3
  resume { ptr, i32 } %i.f
}

declare void @_ZN3g2o32OptimizationAlgorithmGaussNewtonC2ESt10unique_ptrINS_6SolverESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef align 8) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN3g2o32OptimizationAlgorithmGaussNewtonD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3g2o18SolverSLAM2DLinearD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN3g2o32OptimizationAlgorithmGaussNewtonD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3g2o18SolverSLAM2DLinearD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN3g2o18SolverSLAM2DLinearD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #31
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3g2o18SolverSLAM2DLinear5solveEib(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN3g2o18SolverSLAM2DLinear16solveOrientationEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noundef i32 @_ZN3g2o32OptimizationAlgorithmGaussNewton5solveEib(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i1 noundef zeroext %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.c, %bb.c ], [ -1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o18SolverSLAM2DLinear16solveOrientationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.g2o::SparseBlockMatrix", align 8 ; 12 uses
  %2 = alloca %"class.std::set.68", align 8       ; 10 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 12 uses
  %4 = alloca %"struct.g2o::UniformCostFunction", align 8 ; 5 uses
  %5 = alloca %"struct.g2o::HyperDijkstra", align 8 ; 12 uses
  %6 = alloca %"class.g2o::ThetaTreeAction", align 8 ; 6 uses
  %7 = alloca %"class.g2o::LinearSolverEigen", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit128

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.b
  %calloc339 = tail call ptr @calloc(i64 1, i64 %i.i) ; 5 uses
  %i.l = icmp eq ptr %calloc339, null
  br i1 %i.l, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i125

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i125: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  %calloc338 = tail call ptr @calloc(i64 1, i64 %i.i) ; 4 uses
  %i.m = icmp eq ptr %calloc338, null
  br i1 %i.m, label %.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i125, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit128: ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #32
          to label %.noexc129 unwind label %bb.d

.noexc129:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit128
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i125
  %i.o = lshr exact i64 %i.i, 1
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33
          to label %.noexc130 unwind label %bb.d  ; 5 uses

.noexc130:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.j ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !33
  %i.r = add nsw i64 %i.j, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc130
  %i.t = getelementptr i8, ptr %i.p, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !33
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc130, %bb.a
  %.sroa.0203.1252260268 = phi ptr [ %calloc338, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %calloc338, %.noexc130 ], [ null, %bb.a ] ; 5 uses
  %.sroa.0210.2231234241262266 = phi ptr [ %calloc339, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %calloc339, %.noexc130 ], [ null, %bb.a ] ; 6 uses
  %.sroa.12.0 = phi ptr [ %i.q, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.q, %.noexc130 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0197.0 = phi ptr [ %i.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.p, %.noexc130 ], [ null, %bb.a ] ; 10 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !206  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !207  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 5 uses
  %.not306 = icmp eq ptr %i.x, %i.y
  br i1 %.not306, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.preheader360, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ac, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ad = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0197.0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %vec.ind, ptr %i.ae, align 4, !tbaa !33
  store <4 x i32> %i.ad, ptr %i.af, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader360

.lr.ph.preheader360:                              ; preds = %.lr.ph.preheader, %middle.block
  %.094288.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ah = trunc i64 %i.ac to i32                  ; 2 uses
  invoke void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef %.sroa.0197.0, ptr noundef %.sroa.0197.0, i32 noundef %i.ah, i32 noundef %i.ah, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !203 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 304
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 312
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !206
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !207 ; 2 uses
  %.not307 = icmp eq ptr %i.al, %i.am
  br i1 %.not307, label %._crit_edge291, label %.lr.ph290

bb.c:                                             ; preds = %.invoke
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit174

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit128
  %.sroa.0210.2231234241263 = phi ptr [ %calloc339, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit128 ]
  %.sroa.0203.1252261 = phi ptr [ %calloc338, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit128 ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit174

.lr.ph:                                           ; preds = %.lr.ph.preheader360, %.lr.ph
  %.094288 = phi i64 [ %i.ap, %.lr.ph ], [ %.094288.ph, %.lr.ph.preheader360 ] ; 2 uses
  %i.ap = add nuw i64 %.094288, 1                 ; 3 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0197.0, i64 %.094288
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !33
  %exitcond.not = icmp eq i64 %i.ap, %i.ac
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !195

._crit_edge291:                                   ; preds = %bb.f, %.preheader
  %i.as = phi ptr [ %i.ai, %.preheader ], [ %i.bk, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i32 0, ptr %i.at, align 8, !tbaa !208
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr null, ptr %i.au, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.at, ptr %i.av, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !210 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 360
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !210
  %.not293 = icmp eq ptr %i.az, %i.bb
  br i1 %.not293, label %._crit_edge297, label %.lr.ph296

bb.e:                                             ; preds = %._crit_edge
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.lr.ph290:                                        ; preds = %.preheader, %bb.f
  %i.bd = phi ptr [ %i.bo, %bb.f ], [ %i.am, %.preheader ]
  %.095289 = phi i64 [ %i.bj, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.095289
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !212
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !55 ; 2 uses
  %i.bi = invoke noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.bh, i32 noundef %i.bh, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph290
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !57
  %i.bj = add nuw i64 %.095289, 1                 ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !203 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 304
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 312
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !206
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !207 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ult i64 %i.bj, %i.bs
  br i1 %i.bt, label %.lr.ph290, label %._crit_edge291, !llvm.loop !196

bb.g:                                             ; preds = %.lr.ph290
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph296:                                        ; preds = %._crit_edge291, %bb.v
  %.sroa.0193.0294 = phi ptr [ %i.ds, %bb.v ], [ %i.az, %._crit_edge291 ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.0193.0294, align 8, !tbaa !214
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !62 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !55 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !55 ; 3 uses
  %i.cf = icmp eq i32 %i.cc, -1                   ; 2 uses
  %i.cg = icmp eq i32 %i.ce, -1                   ; 2 uses
  %or.cond = or i1 %i.cf, %i.cg
  br i1 %or.cond, label %bb.h, label %bb.t

bb.h:                                             ; preds = %.lr.ph296
  br i1 %i.cf, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.02022.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !63 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62 ; 2 uses
  %i.cj = icmp ult ptr %i.by, %i.ci               ; 2 uses
  %.in.v.i.i.i = select i1 %i.cj, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i131 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i131, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !197

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.cj, label %._crit_edge.thread.i.i.i, label %bb.k

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.at, %bb.i ] ; 4 uses
  %i.ck = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.cl = icmp eq ptr %.019.lcssa29.i.i.i, %i.ck
  br i1 %i.cl, label %select.unfold.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cm = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #34
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %i.cn = phi ptr [ %.pre.i.i, %bb.j ], [ %i.ci, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.j ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.co = icmp ult ptr %i.cn, %i.by
  br i1 %i.co, label %select.unfold.i.i, label %bb.n

select.unfold.i.i:                                ; preds = %bb.k, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.k ] ; 3 uses
  %i.cp = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.at
  br i1 %i.cp, label %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %select.unfold.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62
  %i.cs = icmp ult ptr %i.by, %i.cr
  br label %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.l, %select.unfold.i.i
  %i.ct = phi i1 [ %i.cs, %bb.l ], [ true, %select.unfold.i.i ]
  %i.cu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc132 unwind label %bb.m  ; 2 uses

.noexc132:                                        ; preds = %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.by, ptr %i.cv, align 8, !tbaa !62
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ct, ptr noundef nonnull %i.cu, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #30
  %i.cw = load i64, ptr %i.ax, align 8, !tbaa !40
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.ax, align 8, !tbaa !40
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.n:                                             ; preds = %bb.k, %.noexc132, %bb.h
  br i1 %i.cg, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %.02022.i.i.i133 = load ptr, ptr %i.au, align 8, !tbaa !63 ; 2 uses
  %.not23.i.i.i134 = icmp eq ptr %.02022.i.i.i133, null
  br i1 %.not23.i.i.i134, label %._crit_edge.thread.i.i.i151, label %.lr.ph.i.i.i135

.lr.ph.i.i.i135:                                  ; preds = %bb.o, %.lr.ph.i.i.i135
  %.02024.i.i.i136 = phi ptr [ %.020.i.i.i139, %.lr.ph.i.i.i135 ], [ %.02022.i.i.i133, %bb.o ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i136, i64 32
end_hunk_0
