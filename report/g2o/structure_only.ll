Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/structure_only?download=true
inline.NumInlined: 5418
inline.NumDeleted: 3298
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN3g2o19StructureOnlySolverILi3EE4calcERSt6vectorIPNS_16OptimizableGraph6VertexESaIS5_EEii:bb.a
  %or.cond238 = and i1 %i.is, %i.iu
  %i.iv = load ptr, ptr %i.s, align 8, !tbaa !28  ; 2 uses
  br i1 %or.cond238, label %bb.bf, label %bb.bg

bb.av:                                            ; preds = %.preheader243
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %.noexc, %bb.au, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph287:                                        ; preds = %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit, %bb.be
  %.0286 = phi double [ %.1, %bb.be ], [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ]
  %.sroa.0156.0285 = phi ptr [ %i.ju, %bb.be ], [ %i.ir, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0156.0285, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !73, !nonnull !68, !noundef !68
  %i.ja = call ptr @__dynamic_cast(ptr nonnull %i.iz, ptr nonnull @_ZTIN3g2o10HyperGraph4EdgeE, ptr nonnull @_ZTIN3g2o16OptimizableGraph4EdgeE, i64 0) #23 ; 7 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !28
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(176) %i.ja)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %.lr.ph287
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !99 ; 3 uses
  %.not125 = icmp eq ptr %i.jf, null
  br i1 %.not125, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !28
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 112
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = invoke noundef double %i.ji(ptr noundef nonnull align 8 dereferenceable(176) %i.ja)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.jk = load ptr, ptr %i.jf, align 8, !tbaa !28
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, double noundef %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jn = load double, ptr %9, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.be

bb.bb:                                            ; preds = %bb.bd, %.lr.ph287
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %bb.az, %bb.ay
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  %i.jq = load ptr, ptr %i.ja, align 8, !tbaa !28
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 112
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef double %i.js(ptr noundef nonnull align 8 dereferenceable(176) %i.ja)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn132 = phi double [ %i.jn, %bb.ba ], [ %i.jt, %bb.bd ]
  %.1 = fadd double %.0286, %.pn132               ; 2 uses
  %i.ju = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0156.0285) #28 ; 2 uses
  %.not242 = icmp eq ptr %i.ju, %i.v
  br i1 %.not242, label %._crit_edge288, label %.lr.ph287, !llvm.loop !199

bb.bf:                                            ; preds = %._crit_edge288
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iv, i64 184
  %i.jw = load ptr, ptr %i.jv, align 8
  invoke void %i.jw(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %.thread219 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge288
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iv, i64 176
  %i.jy = load ptr, ptr %i.jx, align 8
  invoke void %i.jy(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.bi unwind label %.loopexit

bb.bh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb, %bb.bc, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.bb ], [ %i.ix, %bb.aw ], [ %i.jp, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread

.thread219:                                       ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.jz = fmul double %.1194, f0x3FD5555555555555
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ka = trunc nuw i8 %.191 to i1
  br label %.loopexit244

.thread:                                          ; preds = %bb.ag, %bb.bi
  %i.kb = fmul double %.1194, %.185               ; 2 uses
  %i.kc = fmul double %.185, 2.000000e+00         ; 2 uses
  %i.kd = add nuw nsw i32 %.079, 1                ; 2 uses
  %.not = icmp sge i32 %i.kd, %3                  ; 2 uses
  %.191. = select i1 %.not, i8 1, i8 %.191        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ke = trunc nuw i8 %.191. to i1               ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %i.ke
  br i1 %or.cond, label %.loopexit244, label %.preheader243, !llvm.loop !200

bb.bj:                                            ; preds = %bb.bh, %bb.av
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bh ], [ %i.iw, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

.loopexit244:                                     ; preds = %.thread, %.thread219
  %i.kf = phi i1 [ %i.ka, %.thread219 ], [ %i.ke, %.thread ]
  %.2230 = phi double [ 2.000000e+00, %.thread219 ], [ %i.kc, %.thread ]
  %.292229 = phi i8 [ %.191, %.thread219 ], [ %.191., %.thread ]
  %.2195228 = phi double [ %i.jz, %.thread219 ], [ %i.kb, %.thread ]
  %.5213227 = phi double [ %.0.lcssa, %.thread219 ], [ %.288292, %.thread ]
  %i.kg = add nuw nsw i32 %.083294, 1             ; 2 uses
  %i.kh = icmp sge i32 %i.kg, %2
  %or.cond303.not = select i1 %i.kf, i1 true, i1 %i.kh
  br i1 %or.cond303.not, label %.loopexit246, label %.lr.ph295, !llvm.loop !201

.loopexit246:                                     ; preds = %.loopexit244, %bb.ae, %.preheader245
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bk

.body:                                            ; preds = %bb.af, %bb.bj, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i, %bb.aa, %bb.ad, %bb.q, %bb.o
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.bi, %bb.q ], [ %i.du, %bb.aa ], [ %i.ca, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i ], [ %i.du, %bb.ad ], [ %.pn.pn.pn.pn, %bb.bj ], [ %i.ex, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bl

bb.bk:                                            ; preds = %.loopexit246, %._crit_edge
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0190.0298, i64 8 ; 2 uses
  %i.kj = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not239 = icmp eq ptr %i.ki, %i.kj
  br i1 %.not239, label %._crit_edge301, label %bb.e, !llvm.loop !202

bb.bl:                                            ; preds = %.body, %bb.k, %bb.j, %bb.d
  %.pn142.pn.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn135.pn.pn.pn.pn, %.body ], [ %i.aq, %bb.k ], [ %i.ap, %bb.j ]
  call void @_ZN3g2o17JacobianWorkspaceD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn142.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.1202", align 8 ; 18 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.1214", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1222", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.1013", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.0220.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5222.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5222.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.5222.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8224.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.10226.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.11227.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.13229.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %.backedge ] ; 6 uses
  %.0116456 = phi i64 [ 0, %bb.a ], [ %.pre-phi, %.backedge ] ; 21 uses
  %.0118455 = phi i8 [ 1, %bb.a ], [ %.3, %.backedge ] ; 6 uses
  %.0120454 = phi i1 [ false, %bb.a ], [ %.1121, %.backedge ] ; 2 uses
  %i.p = sub i64 2, %indvar                       ; 3 uses
  %i.q = mul nuw nsw i64 %indvar, 24
  %i.r = getelementptr nuw i8, ptr %0, i64 %i.q
  %scevgep471 = getelementptr nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.s = shl nuw nsw i64 %indvar, 5
  %i.t = getelementptr nuw i8, ptr %0, i64 %i.s
  %scevgep472 = getelementptr nuw i8, ptr %i.t, i64 8
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.0116456, 5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 4 uses
  %.not404 = icmp eq i64 %.0116456, 2             ; 2 uses
  br i1 %.not404, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0116456
  store i32 2, ptr %i.v, align 4, !tbaa !29
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.w = load double, ptr %i.u, align 8, !tbaa !101
  %i.x = call noundef double @llvm.fabs.f64(double %i.w) ; 2 uses
  %xtraiter = and i64 %i.p, 1
  %i.y = icmp eq i64 %indvar, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.p, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02126.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.z = phi double [ %i.x, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl i64 %.02126.i.i.i.i, 5
  %i.aa = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !101
  %i.ac = call noundef double @llvm.fabs.f64(double %i.ab) ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %i.z             ; 2 uses
  %.sroa.0.1.i.i = select i1 %i.ad, i64 %.02126.i.i.i.i, i64 %.sroa.0.0.i.i
  %i.ae = select i1 %i.ad, double %i.ac, double %i.z ; 2 uses
  %i.af = add nuw nsw i64 %.02126.i.i.i.i, 1      ; 2 uses
  %.idx.i.i.i.i.i.i.i.1 = shl i64 %i.af, 5
  %i.ag = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i.1
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !101
  %i.ai = call noundef double @llvm.fabs.f64(double %i.ah) ; 2 uses
  %i.aj = fcmp ogt double %i.ai, %i.ae            ; 2 uses
  %.sroa.0.1.i.i.1 = select i1 %i.aj, i64 %i.af, i64 %.sroa.0.1.i.i ; 3 uses
  %i.ak = select i1 %i.aj, double %i.ai, double %i.ae ; 2 uses
  %i.al = add nuw nsw i64 %.02126.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !221

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02126.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod497 = trunc i64 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod497)
  %.idx.i.i.i.i.i.i.i.epil = shl i64 %.02126.i.i.i.i.epil.init, 5
  %i.am = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.an = load double, ptr %i.am, align 8, !tbaa !101
  %i.ao = call noundef double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp ogt double %i.ao, %.epil.init
  %.sroa.0.1.i.i.epil = select i1 %i.ap, i64 %.02126.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 6 uses
  %i.aq = add i64 %.sroa.0.1.i.i.lcssa, %.0116456 ; 6 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0116456
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !29
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, label %bb.c

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.pre = add nuw nsw i64 %.0116456, 1
  %.pre419 = mul nuw nsw i64 %.0116456, 24
  br label %.loopexit

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.at = sub i64 2, %i.aq                        ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.0116456 ; 4 uses
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.aq ; 5 uses
  %.not405 = icmp eq i64 %.0116456, 0
  br i1 %.not405, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.aw = load double, ptr %i.au, align 8, !tbaa !101
  %i.ax = load double, ptr %i.av, align 8, !tbaa !101
  store double %i.ax, ptr %i.au, align 8, !tbaa !101
  store double %i.aw, ptr %i.av, align 8, !tbaa !101
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.0116456, 1
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !101
  %i.bb = load double, ptr %i.az, align 8, !tbaa !101
  store double %i.bb, ptr %i.ay, align 8, !tbaa !101
  store double %i.ba, ptr %i.az, align 8, !tbaa !101
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %bb.c
  %.idx.i.i.i.i = mul nuw nsw i64 %.0116456, 24   ; 4 uses
  %i.bc = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i ; 3 uses
  %i.bd = add i64 %i.aq, 1                        ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd ; 6 uses
  %.idx.i.i.i.i134 = mul i64 %i.aq, 24            ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i134
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bd ; 5 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = lshr exact i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1
  %i.bk = call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.at) ; 6 uses
  %i.bl = sub i64 %i.at, %i.bk                    ; 3 uses
  %i.bm = and i64 %i.bl, -2                       ; 2 uses
  %i.bn = add nsw i64 %i.bm, %i.bk                ; 6 uses
  %i.bo = icmp sgt i64 %i.bk, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.bp = load double, ptr %i.be, align 8, !tbaa !101
  %i.bq = load double, ptr %i.bg, align 8, !tbaa !101
  store double %i.bq, ptr %i.be, align 8, !tbaa !101
  store double %i.bp, ptr %i.bg, align 8, !tbaa !101
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.br = icmp sgt i64 %i.bl, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i135, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bs = icmp slt i64 %i.bn, %i.at
  br i1 %i.bs, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bt = add i64 %indvar, %.sroa.0.1.i.i.lcssa
  %i.bu = add i64 %i.bt, %i.bk
  %i.bv = add i64 %i.bu, %i.bm
  %i.bw = sub i64 2, %i.bv                        ; 3 uses
  %min.iters.check476 = icmp ult i64 %i.bw, 12
  br i1 %min.iters.check476, label %.lr.ph.i17.i.i.i.i.i.i.preheader494, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.bx = shl i64 %i.bl, 3
  %i.by = and i64 %i.bx, -16                      ; 2 uses
  %i.bz = shl i64 %i.bk, 3                        ; 2 uses
  %i.ca = shl i64 %i.bd, 3
  %i.cb = getelementptr i8, ptr %i.bc, i64 %i.by
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.cc, i64 %i.ca
  %i.cd = shl i64 %.sroa.0.1.i.i.lcssa, 5
  %i.ce = getelementptr i8, ptr %scevgep472, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.by
  %scevgep473 = getelementptr i8, ptr %i.cf, i64 %i.bz
  %i.cg = mul i64 %.sroa.0.1.i.i.lcssa, 24
  %scevgep474 = getelementptr i8, ptr %scevgep471, i64 %i.cg
  %bound0 = icmp ult ptr %scevgep, %scevgep474
  %bound1 = icmp ult ptr %scevgep473, %scevgep471
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader494, label %vector.ph477

vector.ph477:                                     ; preds = %vector.memcheck
  %n.vec478 = and i64 %i.bw, -4                   ; 3 uses
  %i.ch = add i64 %i.bn, %n.vec478
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body479 ] ; 2 uses
  %i.ci = add i64 %i.bn, %index480                ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ci ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load481 = load <2 x double>, ptr %i.cj, align 8, !tbaa !101, !alias.scope !236, !noalias !237
  %wide.load482 = load <2 x double>, ptr %i.cl, align 8, !tbaa !101, !alias.scope !236, !noalias !237
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load483 = load <2 x double>, ptr %i.ck, align 8, !tbaa !101, !alias.scope !237
  %wide.load484 = load <2 x double>, ptr %i.cm, align 8, !tbaa !101, !alias.scope !237
  store <2 x double> %wide.load483, ptr %i.cj, align 8, !tbaa !101, !alias.scope !236, !noalias !237
  store <2 x double> %wide.load484, ptr %i.cl, align 8, !tbaa !101, !alias.scope !236, !noalias !237
  store <2 x double> %wide.load481, ptr %i.ck, align 8, !tbaa !101, !alias.scope !237
  store <2 x double> %wide.load482, ptr %i.cm, align 8, !tbaa !101, !alias.scope !237
  %index.next485 = add nuw i64 %index480, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.cn, label %middle.block486, label %vector.body479, !llvm.loop !225

middle.block486:                                  ; preds = %vector.body479
  %cmp.n487 = icmp eq i64 %i.bw, %n.vec478
  br i1 %cmp.n487, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader494

.lr.ph.i17.i.i.i.i.i.i.preheader494:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block486
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block486 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader494, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.cs, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader494 ] ; 3 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
end_hunk_0
