Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_cubic_bezier?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN3igl16fit_cubic_bezierERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdRSt6vectorIS2_SaIS2_EE:bb.a
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %.invoke, %bb.l
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i32
  %i.kl = landingpad { ptr, i32 }
          cleanup
  %i.km = load ptr, ptr %6, align 8, !tbaa !27
  call void @free(ptr noundef %i.km) #20
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s
  %.pn23.pn = phi { ptr, i32 } [ %i.kk, %bb.r ], [ %i.kl, %bb.s ]
  %i.kn = load ptr, ptr %7, align 8, !tbaa !27
  call void @free(ptr noundef %i.kn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.w

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i45.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i45, %middle.block137, %._crit_edge.i.i.i.i.i.i.i.i44, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit
  %i.ko = phi i1 [ false, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit ], [ true, %._crit_edge.i.i.i.i.i.i.i.i44 ], [ true, %middle.block137 ], [ true, %.lr.ph.i.i.i.i.i.i.i.i.i45 ], [ true, %.lr.ph.i.i.i.i.i.i.i.i.i45.prol.loopexit ]
  %i.kp = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kr, %i.kp
  br i1 %.not.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i51

.lr.ph.i.i.i.i51:                                 ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, %.lr.ph.i.i.i.i51
  %.05.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i.i.i.i51 ], [ %i.kp, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit ] ; 2 uses
  %i.ks = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !21
  call void @free(ptr noundef %i.ks) #20
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kt, %i.kr
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i51, !llvm.loop !84

_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i51
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !42
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE5clearEv.exit: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i
  invoke void @_ZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, double noundef %1, i1 noundef zeroext %i.ko, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE5clearEv.exit
  %i.ku = load ptr, ptr %5, align 8, !tbaa !27
  call void @free(ptr noundef %i.ku) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.kv = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.kv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t
  ret void

bb.v:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i42, %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE5clearEv.exit
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.body
  %.pn26 = phi { ptr, i32 } [ %i.kw, %bb.v ], [ %.pn23.pn, %.body ]
  %i.kx = load ptr, ptr %5, align 8, !tbaa !27
  call void @free(ptr noundef %i.kx) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.w ], [ %i.kj, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ky = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.ky) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3igl16fit_cubic_bezierERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdRSt6vectorIS2_SaIS2_EEENK3$_0clES4_ii"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef range(i32 -2147483648, 2147483647) %2, i32 noundef range(i32 -1, 2) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::CwiseBinaryOp.331", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::Matrix.3", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.d = add nsw i32 %2, %3                       ; 3 uses
  %i.e = icmp sgt i32 %i.d, -1
  %.not25 = icmp slt i32 %i.d, %i.c
  %or.cond26 = and i1 %i.e, %.not25
  br i1 %or.cond26, label %.lr.ph, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = shl nsw i64 %i.g, 3
  br label %bb.f

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread._crit_edge: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22   ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread._crit_edge
  %i.m = sdiv i64 9223372036854775807, %i.k
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc.i.i unwind label %bb.e

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i: ; preds = %bb.b, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread._crit_edge
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %i.k)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.e

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.q, %i.k
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %i.k)
          to label %.noexc5.i.i unwind label %bb.e

.noexc5.i.i:                                      ; preds = %bb.d
  %.pr.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !28
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc5.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.r = phi i64 [ %i.k, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i, %.noexc5.i.i ] ; 2 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !27
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !24
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit

bb.e:                                             ; preds = %bb.d, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %0, align 8, !tbaa !27
  call void @free(ptr noundef %i.v) #20
  br label %.body

bb.f:                                             ; preds = %.lr.ph, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.ag, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge ] ; 2 uses
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge ]
  %i.y = phi i32 [ %i.d, %.lr.ph ], [ %i.ef, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge ] ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !21, !noalias !103 ; 3 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.g ; 4 uses
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !22, !noalias !104 ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, %i.ae
  br i1 %.not8.i.i.i.i.i.i.i.i, label %bb.g, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.f
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 1, i64 noundef %i.ae)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %.pre = load ptr, ptr %5, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.ag = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc ], [ %i.w, %bb.f ] ; 28 uses
  %i.ah = phi ptr [ %.pre, %.noexc ], [ %i.x, %bb.f ] ; 28 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = icmp sgt i64 %i.ag, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %i.ag, 7
  %ident.check.not = icmp eq i64 %i.af, 1
  %or.cond92 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond92, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.preheader95

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ak = sub i64 %i.ai, %i.ab                    ; 2 uses
  %i.al = sub i64 %i.i, %i.ak
  %diff.check = icmp ugt i64 %i.al, -32
  %6 = shl nuw nsw i64 %i.z, 3
  %i.am = sub i64 %6, %i.ak
  %diff.check88 = icmp ugt i64 %i.am, -32
  %conflict.rdx = or i1 %diff.check, %diff.check88
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !24
  %wide.load89 = load <2 x double>, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load90 = load <2 x double>, ptr %i.aq, align 8, !tbaa !24
  %wide.load91 = load <2 x double>, ptr %i.ar, align 8, !tbaa !24
  %i.as = fsub <2 x double> %wide.load, %wide.load90
  %i.at = fsub <2 x double> %wide.load89, %wide.load91
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %i.as, ptr %i.an, align 8, !tbaa !24
  store <2 x double> %i.at, ptr %i.au, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.preheader95

.lr.ph.i.i.i.i.i.i.i.i.preheader95:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader95
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.05.i.i.i.i.i.i.i.i.ph
  %i.ax = mul nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.af ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !24
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ax
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !24
  %i.bc = fsub double %i.az, %i.bb
  store double %i.bc, ptr %i.aw, align 8, !tbaa !24
  %i.bd = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader95
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader95 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.be = icmp eq i64 %i.ag, %.neg
  br i1 %i.be, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.05.i.i.i.i.i.i.i.i
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.af ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !24
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bg
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24
  %i.bl = fsub double %i.bi, %i.bk
  store double %i.bl, ptr %i.bf, align 8, !tbaa !24
  %i.bm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bm
  %i.bo = mul nsw i64 %i.bm, %i.af                ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !24
  %i.br = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bo
  %i.bs = load double, ptr %i.br, align 8, !tbaa !24
  %i.bt = fsub double %i.bq, %i.bs
  store double %i.bt, ptr %i.bn, align 8, !tbaa !24
  %i.bu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bu, %i.ag
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !95

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.g
  %i.bv = icmp eq i64 %i.ag, 0
  br i1 %i.bv, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.bw = sdiv i64 %i.ag, 4
  %i.bx = shl nsw i64 %i.bw, 2                    ; 6 uses
  %i.by = sdiv i64 %i.ag, 2
  %i.bz = shl nsw i64 %i.by, 1                    ; 12 uses
  %.off.i.i.i.i = add i64 %i.ag, 1
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit.thread
  %i.ca = load <2 x double>, ptr %i.ah, align 16  ; 2 uses
  %i.cb = fmul <2 x double> %i.ca, %i.ca          ; 3 uses
  %i.cc = icmp sgt i64 %i.ag, 3
  br i1 %i.cc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !32 ; 2 uses
  %i.cf = fmul <2 x double> %i.ce, %i.ce          ; 2 uses
  %i.cg = icmp samesign ugt i64 %i.ag, 7
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.cf, %bb.i ], [ %i.cr, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.cb, %bb.i ], [ %i.cm, %.lr.ph.i.i.i.i ]
  %i.ch = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.ci = icmp sgt i64 %i.bz, %i.bx
  br i1 %i.ci, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.i ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.cm, %.lr.ph.i.i.i.i ], [ %i.cb, %bb.i ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.cf, %bb.i ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.05480.i.i.i.i
  %i.ck = load <2 x double>, ptr %i.cj, align 16, !tbaa !32 ; 2 uses
  %i.cl = fmul <2 x double> %i.ck, %i.ck
  %i.cm = fadd <2 x double> %.07278.i.i.i.i, %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.054.in79.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load <2 x double>, ptr %i.co, align 16, !tbaa !32 ; 2 uses
  %i.cq = fmul <2 x double> %i.cp, %i.cp
  %i.cr = fadd <2 x double> %.07577.i.i.i.i, %i.cq ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.cs = icmp slt i64 %.054.i.i.i.i, %i.bx
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bx
  %i.cu = load <2 x double>, ptr %i.ct, align 16, !tbaa !32 ; 2 uses
  %i.cv = fmul <2 x double> %i.cu, %i.cu
  %i.cw = fadd <2 x double> %i.ch, %i.cv
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.274.i.i.i.i = phi <2 x double> [ %i.cb, %bb.h ], [ %i.cw, %bb.j ], [ %i.ch, %._crit_edge.i.i.i.i ]
  %i.cx = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i) ; 3 uses
  %i.cy = icmp slt i64 %i.bz, %i.ag
  br i1 %i.cy, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.cz = sub i64 %i.ag, %i.bz
  %xtraiter111 = and i64 %i.cz, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.de, %.lr.ph85.i.i.i.i.prol ], [ %i.bz, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.dd, %.lr.ph85.i.i.i.i.prol ], [ %i.cx, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %.05283.i.i.i.i.prol
  %i.db = load double, ptr %i.da, align 8, !tbaa !24 ; 2 uses
  %i.dc = fmul double %i.db, %i.db
  %i.dd = fadd double %.182.i.i.i.i.prol, %i.dc   ; 3 uses
  %i.de = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter111
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !96

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa99.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.dd, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.bz, %.lr.ph85.i.i.i.i.preheader ], [ %i.de, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.cx, %.lr.ph85.i.i.i.i.preheader ], [ %i.dd, %.lr.ph85.i.i.i.i.prol ]
  %i.df = sub i64 %i.bz, %i.ag
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.ea, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.dz, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %.05283.i.i.i.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !24 ; 2 uses
  %i.dj = fmul double %i.di, %i.di
  %i.dk = fadd double %.182.i.i.i.i, %i.dj
  %i.dl = getelementptr [8 x i8], ptr %i.ah, i64 %.05283.i.i.i.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !24 ; 2 uses
  %i.do = fmul double %i.dn, %i.dn
  %i.dp = fadd double %i.dk, %i.do
  %i.dq = getelementptr [8 x i8], ptr %i.ah, i64 %.05283.i.i.i.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24 ; 2 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = fadd double %i.dp, %i.dt
  %i.dv = getelementptr [8 x i8], ptr %i.ah, i64 %.05283.i.i.i.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 24
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24 ; 2 uses
  %i.dy = fmul double %i.dx, %i.dx
  %i.dz = fadd double %i.du, %i.dy                ; 2 uses
  %i.ea = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ea, %i.ag
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !2

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.k
  %.0.i.i = phi double [ %i.cx, %bb.k ], [ %.lcssa99.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.dz, %.lr.ph85.i.i.i.i ]
  %i.eb = fcmp ogt double %.0.i.i, f0x3D06849B86A12B9B
  br i1 %i.eb, label %bb.l, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge
end_hunk_0
