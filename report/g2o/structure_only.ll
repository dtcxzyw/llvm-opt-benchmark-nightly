Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/structure_only?download=true
inline.NumInlined: 5419
inline.NumDeleted: 3298
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3g2o19StructureOnlySolverILi3EE4calcERSt6vectorIPNS_16OptimizableGraph6VertexESaIS5_EEii:bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 216
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(128) %i.r)
          to label %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit:  ; preds = %.noexc
  %i.im = load ptr, ptr %i.s, align 8, !tbaa !70  ; 2 uses
  %.not242293 = icmp eq ptr %i.im, %i.u
  br i1 %.not242293, label %._crit_edge297, label %.lr.ph296

._crit_edge297:                                   ; preds = %bb.ax, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit
  %.0.lcssa = phi double [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ], [ %.1, %bb.ax ] ; 3 uses
  %i.in = fcmp ogt double %.288301, %.0.lcssa
  %i.io = call double @llvm.fabs.f64(double %.0.lcssa)
  %i.ip = fcmp one double %i.io, +inf
  %or.cond238 = and i1 %i.in, %i.ip
  %i.iq = load ptr, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  br i1 %or.cond238, label %bb.ay, label %bb.az

bb.aq:                                            ; preds = %.preheader243
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph296:                                        ; preds = %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit, %bb.ax
  %.0295 = phi double [ %.1, %bb.ax ], [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ]
  %.sroa.0156.0294 = phi ptr [ %i.jn, %bb.ax ], [ %i.im, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0156.0294, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !73, !nonnull !68, !noundef !68
  %i.iu = call ptr @__dynamic_cast(ptr nonnull %i.it, ptr nonnull @_ZTIN3g2o10HyperGraph4EdgeE, ptr nonnull @_ZTIN3g2o16OptimizableGraph4EdgeE, i64 0) #23 ; 7 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !28
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8
  invoke void %i.ix(ptr noundef nonnull align 8 dereferenceable(176) %i.iu)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %.lr.ph296
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !99 ; 3 uses
  %.not125 = icmp eq ptr %i.iz, null
  br i1 %.not125, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !28
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 112
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = invoke noundef double %i.jc(ptr noundef nonnull align 8 dereferenceable(176) %i.iu)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !28
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  invoke void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, double noundef %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jh = load double, ptr %9, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ax

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.ar
  %i.jj = load ptr, ptr %i.iu, align 8, !tbaa !28
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 112
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef double %i.jl(ptr noundef nonnull align 8 dereferenceable(176) %i.iu)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.pn132 = phi double [ %i.jh, %bb.au ], [ %i.jm, %bb.aw ]
  %.1 = fadd double %.0295, %.pn132               ; 2 uses
  %i.jn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0156.0294) #28 ; 2 uses
  %.not242 = icmp eq ptr %i.jn, %i.u
  br i1 %.not242, label %._crit_edge297, label %.lr.ph296, !llvm.loop !189

bb.ay:                                            ; preds = %._crit_edge297
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iq, i64 184
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(128) %i.r)
          to label %.thread219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph296, %bb.aw, %.noexc, %bb.ap, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit, %bb.az, %bb.ay
  %lpad.loopexit.split-lp434 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %._crit_edge297
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iq, i64 176
  %i.jr = load ptr, ptr %i.jq, align 8
  invoke void %i.jr(ptr noundef nonnull align 8 dereferenceable(128) %i.r)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ji, %bb.av ], [ %lpad.loopexit.split-lp434, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread

.thread219:                                       ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.js = fmul double %.1194, f0x3FD5555555555555
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.jt = trunc nuw i8 %.191 to i1
  br label %.loopexit247

.thread:                                          ; preds = %bb.ab, %bb.ba
  %i.ju = fmul double %.1194, %.185               ; 2 uses
  %i.jv = fmul double %.185, 2.000000e+00         ; 2 uses
  %i.jw = add nuw nsw i32 %.079, 1                ; 2 uses
  %.not = icmp sge i32 %i.jw, %3                  ; 2 uses
  %.191. = select i1 %.not, i8 1, i8 %.191        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.jx = trunc nuw i8 %.191. to i1               ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %i.jx
  br i1 %or.cond, label %.loopexit247, label %.preheader243, !llvm.loop !190

bb.bb:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.aq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ir, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

.loopexit247:                                     ; preds = %.thread, %.thread219
  %i.jy = phi i1 [ %i.jt, %.thread219 ], [ %i.jx, %.thread ]
  %.2230 = phi double [ 2.000000e+00, %.thread219 ], [ %i.jv, %.thread ]
  %.292229 = phi i8 [ %.191, %.thread219 ], [ %.191., %.thread ]
  %.2195228 = phi double [ %i.js, %.thread219 ], [ %i.ju, %.thread ]
  %.5213227 = phi double [ %.0.lcssa, %.thread219 ], [ %.288301, %.thread ]
  %i.jz = add nuw nsw i32 %.083303, 1             ; 2 uses
  %i.ka = icmp sge i32 %i.jz, %2
  %or.cond312.not = select i1 %i.jy, i1 true, i1 %i.ka
  br i1 %or.cond312.not, label %.loopexit251, label %.lr.ph304, !llvm.loop !191

.loopexit251:                                     ; preds = %.loopexit247, %bb.aa, %.preheader250
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bc

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp, %bb.bb, %bb.w, %bb.z
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bb ], [ %i.dp, %bb.w ], [ %i.dp, %bb.z ], [ %lpad.loopexit.split-lp440, %.loopexit.split-lp.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.loopexit.split-lp256

bb.bc:                                            ; preds = %.loopexit251, %._crit_edge
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0190.0307, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not239 = icmp eq ptr %i.kb, %i.kc
  br i1 %.not239, label %._crit_edge310, label %bb.d, !llvm.loop !192

.loopexit.split-lp256:                            ; preds = %.loopexit.split-lp256.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %bb.i
  %.pn142.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %.pn135.pn.pn.pn.pn, %.body ], [ %lpad.loopexit.split-lp443, %.loopexit.split-lp256.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %.backedge ] ; 3 uses
  %.0116447 = phi i64 [ 0, %bb.a ], [ %.pre-phi, %.backedge ] ; 22 uses
  %.0118446 = phi i8 [ 1, %bb.a ], [ %.3, %.backedge ] ; 6 uses
  %.0120445 = phi i1 [ false, %bb.a ], [ %.1121, %.backedge ] ; 2 uses
  %i.p = sub i64 2, %indvar                       ; 3 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.0116447, 5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 4 uses
  %.not404 = icmp ne i64 %.0116447, 2             ; 4 uses
  br i1 %.not404, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0116447
  store i32 2, ptr %i.r, align 4, !tbaa !29
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.s = load double, ptr %i.q, align 8, !tbaa !101
  %i.t = call noundef double @llvm.fabs.f64(double %i.s) ; 2 uses
  %xtraiter = and i64 %i.p, 1
  %i.u = icmp eq i64 %indvar, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.p, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02126.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ah, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.v = phi double [ %i.t, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ag, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.02126.i.i.i.i, 5
  %i.w = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !101
  %i.y = call noundef double @llvm.fabs.f64(double %i.x) ; 2 uses
  %i.z = fcmp ogt double %i.y, %i.v               ; 2 uses
  %.sroa.0.1.i.i = select i1 %i.z, i64 %.02126.i.i.i.i, i64 %.sroa.0.0.i.i
  %i.aa = select i1 %i.z, double %i.y, double %i.v ; 2 uses
  %i.ab = add nuw nsw i64 %.02126.i.i.i.i, 1      ; 2 uses
  %.idx.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.ab, 5
  %i.ac = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i.1
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !101
  %i.ae = call noundef double @llvm.fabs.f64(double %i.ad) ; 2 uses
  %i.af = fcmp ogt double %i.ae, %i.aa            ; 2 uses
  %.sroa.0.1.i.i.1 = select i1 %i.af, i64 %i.ab, i64 %.sroa.0.1.i.i ; 3 uses
  %i.ag = select i1 %i.af, double %i.ae, double %i.aa ; 2 uses
  %i.ah = add nuw nsw i64 %.02126.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !211

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02126.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod488 = trunc i64 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod488)
  %.idx.i.i.i.i.i.i.i.epil = shl nuw nsw i64 %.02126.i.i.i.i.epil.init, 5
  %i.ai = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !101
  %i.ak = call noundef double @llvm.fabs.f64(double %i.aj)
  %i.al = fcmp ogt double %i.ak, %.epil.init
  %.sroa.0.1.i.i.epil = select i1 %i.al, i64 %.02126.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 6 uses
  %i.am = add i64 %.sroa.0.1.i.i.lcssa, %.0116447 ; 6 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0116447
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !29
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, label %bb.c

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.pre = add nuw nsw i64 %.0116447, 1
  %.pre418 = mul nuw nsw i64 %.0116447, 24
  br label %.loopexit

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.ap = sub i64 2, %i.am                        ; 4 uses
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %.0116447 ; 4 uses
  %i.ar = getelementptr [8 x i8], ptr %0, i64 %i.am ; 5 uses
  %.not405 = icmp eq i64 %.0116447, 0
  br i1 %.not405, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.as = load double, ptr %i.aq, align 8, !tbaa !101
  %i.at = load double, ptr %i.ar, align 8, !tbaa !101
  store double %i.at, ptr %i.aq, align 8, !tbaa !101
  store double %i.as, ptr %i.ar, align 8, !tbaa !101
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.0116447, 1
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.aw = load double, ptr %i.au, align 8, !tbaa !101
  %i.ax = load double, ptr %i.av, align 8, !tbaa !101
  store double %i.ax, ptr %i.au, align 8, !tbaa !101
  store double %i.aw, ptr %i.av, align 8, !tbaa !101
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %bb.c
  %.idx.i.i.i.i = mul nuw nsw i64 %.0116447, 24   ; 6 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i ; 2 uses
  %i.az = add i64 %i.am, 1                        ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az ; 6 uses
  %.idx.i.i.i.i134 = mul i64 %i.am, 24            ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i134
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.az ; 5 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = lshr exact i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1
  %i.bg = call i64 @llvm.smin.i64(i64 %i.bf, i64 %i.ap) ; 6 uses
  %i.bh = sub i64 %i.ap, %i.bg                    ; 3 uses
  %i.bi = and i64 %i.bh, -2                       ; 2 uses
  %i.bj = add nsw i64 %i.bi, %i.bg                ; 6 uses
  %i.bk = icmp sgt i64 %i.bg, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.bl = load double, ptr %i.ba, align 8, !tbaa !101
  %i.bm = load double, ptr %i.bc, align 8, !tbaa !101
  store double %i.bm, ptr %i.ba, align 8, !tbaa !101
  store double %i.bl, ptr %i.bc, align 8, !tbaa !101
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.bn = icmp sgt i64 %i.bh, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i135, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bo = icmp slt i64 %i.bj, %i.ap
  br i1 %i.bo, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bp = add i64 %.0116447, %.sroa.0.1.i.i.lcssa
  %i.bq = add i64 %i.bp, %i.bg
  %i.br = add i64 %i.bq, %i.bi
  %i.bs = sub i64 2, %i.br                        ; 3 uses
  %min.iters.check467 = icmp ult i64 %i.bs, 12
  br i1 %min.iters.check467, label %.lr.ph.i17.i.i.i.i.i.i.preheader485, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.bt = shl i64 %i.bh, 3
  %i.bu = and i64 %i.bt, -16                      ; 2 uses
  %i.bv = shl i64 %i.bg, 3                        ; 2 uses
  %i.bw = shl i64 %i.az, 3
  %9 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i
  %10 = getelementptr i8, ptr %9, i64 %i.bu
  %i.bx = getelementptr i8, ptr %10, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bw
  %11 = add nuw i64 %.idx.i.i.i.i, 24             ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %0, i64 %11
  %12 = shl nuw nsw i64 %.0116447, 5
  %i.bz = shl i64 %.sroa.0.1.i.i.lcssa, 5
  %13 = getelementptr i8, ptr %0, i64 %12
  %14 = getelementptr i8, ptr %13, i64 8
  %i.ca = getelementptr i8, ptr %14, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bu
  %scevgep464 = getelementptr i8, ptr %i.cb, i64 %i.bv
  %i.cc = mul i64 %.sroa.0.1.i.i.lcssa, 24
  %15 = getelementptr i8, ptr %0, i64 %11
  %scevgep465 = getelementptr i8, ptr %15, i64 %i.cc
  %bound0 = icmp ult ptr %i.by, %scevgep465
  %bound1 = icmp ult ptr %scevgep464, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader485, label %vector.ph468

vector.ph468:                                     ; preds = %vector.memcheck
  %n.vec469 = and i64 %i.bs, -4                   ; 3 uses
  %i.cd = add i64 %i.bj, %n.vec469
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph468
  %index471 = phi i64 [ 0, %vector.ph468 ], [ %index.next476, %vector.body470 ] ; 2 uses
  %i.ce = add i64 %i.bj, %index471                ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ce ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load472 = load <2 x double>, ptr %i.cf, align 8, !tbaa !101, !alias.scope !226, !noalias !227
  %wide.load473 = load <2 x double>, ptr %i.ch, align 8, !tbaa !101, !alias.scope !226, !noalias !227
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load474 = load <2 x double>, ptr %i.cg, align 8, !tbaa !101, !alias.scope !227
  %wide.load475 = load <2 x double>, ptr %i.ci, align 8, !tbaa !101, !alias.scope !227
  store <2 x double> %wide.load474, ptr %i.cf, align 8, !tbaa !101, !alias.scope !226, !noalias !227
  store <2 x double> %wide.load475, ptr %i.ch, align 8, !tbaa !101, !alias.scope !226, !noalias !227
  store <2 x double> %wide.load472, ptr %i.cg, align 8, !tbaa !101, !alias.scope !227
  store <2 x double> %wide.load473, ptr %i.ci, align 8, !tbaa !101, !alias.scope !227
  %index.next476 = add nuw i64 %index471, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next476, %n.vec469
  br i1 %i.cj, label %middle.block477, label %vector.body470, !llvm.loop !215

middle.block477:                                  ; preds = %vector.body470
  %cmp.n478 = icmp eq i64 %i.bs, %n.vec469
  br i1 %cmp.n478, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader485

.lr.ph.i17.i.i.i.i.i.i.preheader485:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block477
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cd, %middle.block477 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader485, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader485 ] ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !101
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !101
  store double %i.cn, ptr %i.ck, align 8, !tbaa !101
  store double %i.cm, ptr %i.cl, align 8, !tbaa !101
  %i.co = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.co, %i.ap
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !216

.lr.ph.i.i.i.i.i.i135:                            ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i135
  %.021.i.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i135 ], [ %i.bg, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cq = load <2 x double>, ptr %i.cp, align 8, !tbaa !19
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cs = load <2 x double>, ptr %i.cr, align 16, !tbaa !19
  store <2 x double> %i.cs, ptr %i.cp, align 8, !tbaa !19
  store <2 x double> %i.cq, ptr %i.cr, align 16, !tbaa !19
  %i.ct = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.bj
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !217

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block477, %._crit_edge.i.i.i.i.i.i
  %i.cv = getelementptr i8, ptr %i.aq, i64 %.idx.i.i.i.i ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ar, i64 %.idx.i.i.i.i134 ; 2 uses
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !101
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !101
  store double %i.cy, ptr %i.cv, align 8, !tbaa !101
  store double %i.cx, ptr %i.cw, align 8, !tbaa !101
  %.0115409 = add nuw nsw i64 %.0116447, 1        ; 3 uses
  %.not442 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 1
  br i1 %.not442, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph
  %.0115410 = phi i64 [ %.0115, %.lr.ph ], [ %.0115409, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %i.ay, i64 %.0115410 ; 2 uses
  %i.cz = load double, ptr %gep, align 8, !tbaa !101
  %.idx.i138 = mul i64 %.0115410, 24
  %i.da = getelementptr i8, ptr %i.ar, i64 %.idx.i138 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !101
  store double %i.db, ptr %gep, align 8, !tbaa !101
  store double %i.cz, ptr %i.da, align 8, !tbaa !101
  %.0115 = add nuw nsw i64 %.0115410, 1           ; 2 uses
  %i.dc = icmp slt i64 %.0115, %i.am
  br i1 %i.dc, label %.lr.ph, label %.loopexit, !llvm.loop !218

.loopexit:                                        ; preds = %.lr.ph, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.idx.i.i.i.pre-phi = phi i64 [ %.pre418, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.idx.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.idx.i.i.i.i, %.lr.ph ] ; 5 uses
  %.pre-phi = phi i64 [ %.pre, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.0115409, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.0115409, %.lr.ph ] ; 5 uses
  %i.dd = sub nuw nsw i64 2, %.0116447            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i.i.i.pre-phi ; 2 uses
  store ptr %i.df, ptr %8, align 8, !tbaa !115
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !116
  store ptr %0, ptr %i.b, align 8, !tbaa !228
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !116
  store i64 %.0116447, ptr %i.d, align 8, !tbaa !116
  store i64 3, ptr %i.e, align 8, !tbaa !231
  %i.dg = getelementptr [8 x i8], ptr %0, i64 %.0116447 ; 8 uses
  %.not132.not = icmp eq i64 %.0116447, 0
  br i1 %.not132.not, label %bb.f, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.loopexit
  %i.dh = load double, ptr %0, align 8, !tbaa !101
  %i.di = load double, ptr %i.dg, align 8, !tbaa !101
  %i.dj = fmul double %i.dh, %i.di
  store double %i.dj, ptr %2, align 8, !tbaa !101
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0116447, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.dk = load double, ptr %i.o, align 8, !tbaa !101
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !101
  %i.dn = fmul double %i.dk, %i.dm
  store double %i.dn, ptr %i.n, align 8, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.do = load double, ptr %i.dg, align 8, !tbaa !101
  %i.dp = load double, ptr %2, align 8, !tbaa !101
  %i.dq = fmul double %i.do, %i.dp                ; 2 uses
  br i1 %.not404, label %bb.e, label %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit

_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit: ; preds = %bb.d
  %i.dr = getelementptr i8, ptr %i.dg, i64 24
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !101
  %i.dt = load double, ptr %i.m, align 8, !tbaa !101
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = fadd double %i.dq, %i.du
  %i.dw = getelementptr i8, ptr %i.dg, i64 %.idx.i.i.i.pre-phi ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !101
  %i.dy = fsub double %i.dx, %i.dv
  store double %i.dy, ptr %i.dw, align 8, !tbaa !101
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.dz = getelementptr i8, ptr %i.dg, i64 %.idx.i.i.i.pre-phi ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !101
  %i.eb = fsub double %i.ea, %i.dq
  store double %i.eb, ptr %i.dz, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.de, ptr %4, align 8
  store i64 %i.dd, ptr %.sroa.0220.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %.0116447, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %.pre-phi, ptr %.sroa.5222.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5222.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 3, ptr %.sroa.5222.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %2, ptr %i.f, align 8
  store i64 %.0116447, ptr %.sroa.8224.56..sroa_idx, align 8
  store ptr %2, ptr %.sroa.10226.56..sroa_idx, align 8
  store i64 0, ptr %.sroa.11227.56..sroa_idx, align 8
  store i64 3, ptr %.sroa.13229.56..sroa_idx, align 8
  store ptr %i.de, ptr %i.g, align 8, !tbaa !120
  store ptr %2, ptr %i.h, align 8, !tbaa !122
  store i64 %.0116447, ptr %i.i, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.df, ptr %5, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %5, ptr %6, align 8, !tbaa !232
  store ptr %4, ptr %i.j, align 8, !tbaa !233
  store ptr %7, ptr %i.k, align 8, !tbaa !234
  store ptr %8, ptr %i.l, align 8, !tbaa !235
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS4_INS5_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi0EEEE5valueEv.exit, %bb.e
  %i.ec = getelementptr i8, ptr %i.dg, i64 %.idx.i.i.i.pre-phi
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !101 ; 2 uses
  %i.ee = fcmp one double %i.ed, 0.000000e+00
  br label %bb.h

bb.f:                                             ; preds = %.loopexit
  %i.ef = getelementptr i8, ptr %i.dg, i64 %.idx.i.i.i.pre-phi
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !101 ; 2 uses
  %i.eh = fcmp ueq double %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %3, align 4, !tbaa !108
  store i32 0, ptr %1, align 4, !tbaa !29
  %i.ei = trunc nuw i8 %.0118446 to i1
  br i1 %i.ei, label %.preheader.us.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

.preheader.us.i.preheader:                        ; preds = %bb.g
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !101
  %i.el = fcmp oeq double %i.ek, 0.000000e+00
  br i1 %i.el, label %.preheader.us.i.1417, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

.preheader.us.i.1417:                             ; preds = %.preheader.us.i.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !101
  %i.eo = fcmp oeq double %i.en, 0.000000e+00
  br i1 %i.eo, label %.preheader.us.i.preheader.1, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

end_hunk_0
