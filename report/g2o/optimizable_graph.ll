Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4117
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseERKS2_:bb.a
_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !99   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = icmp eq ptr %.sroa.037.0.i, %i.v
  %i.x = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit
  invoke void @_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.041.i)
          to label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i: ; preds = %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !96
  store ptr %i.b, ptr %i.u, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !98
  store i64 0, ptr %i.s, align 8, !tbaa !99
  br label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit
  %.not8.i = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.09.i = phi ptr [ %i.ab, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #44 ; 2 uses
  %i.ac = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #42
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 40) #41
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !99
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !99
  %.not.i3 = icmp eq ptr %i.ab, %.sroa.3.0.i
  br i1 %.not.i3, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2, !llvm.loop !330

_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit: ; preds = %.lr.ph.i2, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i, %.critedge.i
  %i.af = phi i64 [ %i.t, %.critedge.i ], [ 0, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i ], [ %i.ae, %.lr.ph.i2 ]
  %i.ag = sub i64 %i.t, %i.af
  ret i64 %i.ag
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #20

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !271
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !246
  tail call void @free(ptr noundef %i.i) #42
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #46 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !246
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EENS_15ComputationInfoERT0_RT1_lbRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !271  ; 11 uses
  %i.c = add i64 %i.b, -1                         ; 5 uses
  %i.d = icmp sgt i64 %i.b, 1
  br i1 %i.d, label %.preheader96.lr.ph, label %.critedge.thread.thread

.preheader96.lr.ph:                               ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 5 uses
  %i.f = mul i64 %i.b, %2                         ; 2 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = load ptr, ptr %4, align 8
  %smax = tail call i64 @llvm.smax.i64(i64 %i.f, i64 0) ; 2 uses
  %i.i = add nuw i64 %smax, 1
  %spec.select = select i1 %3, ptr %i.h, ptr null ; 3 uses
  %.not.i = icmp eq ptr %spec.select, null
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %n.vec = and i64 %i.b, 9223372036854775806      ; 4 uses
  %i.k = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader96.backedge, %.preheader96.lr.ph
  %.065103 = phi i64 [ 0, %.preheader96.lr.ph ], [ %i.af, %.preheader96.backedge ] ; 4 uses
  %.066102 = phi i64 [ 0, %.preheader96.lr.ph ], [ %.167.lcssa, %.preheader96.backedge ] ; 2 uses
  %.068101 = phi i64 [ %i.c, %.preheader96.lr.ph ], [ %.169141, %.preheader96.backedge ] ; 4 uses
  %i.l = icmp slt i64 %.066102, %.068101
  br i1 %i.l, label %.lr.ph, label %.preheader95

.preheader95:                                     ; preds = %bb.c, %.preheader96
  %i.m = icmp sgt i64 %.068101, 0
  br i1 %i.m, label %.lr.ph142, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader96, %bb.c
  %.064100 = phi i64 [ %i.z, %bb.c ], [ %.066102, %.preheader96 ] ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.064100 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !242 ; 2 uses
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, f0x0010000000000000
  br i1 %i.q, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = fmul double %i.o, f0x4330000000000000    ; 2 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = load ptr, ptr %0, align 8, !tbaa !246
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %.064100
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !242
  %i.w = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v) ; 2 uses
  %shift = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.w, %shift
  %i.x = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.y = fcmp ugt double %i.s, %i.x
  br i1 %i.y, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.lr.ph
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !242
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.z = add nsw i64 %.064100, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %.068101
  br i1 %exitcond.not, label %.preheader95, label %.lr.ph, !llvm.loop !331

bb.d:                                             ; preds = %.lr.ph142
  %i.aa = icmp sgt i64 %.169141, 1
  br i1 %i.aa, label %.lr.ph142, label %.critedge.thread, !llvm.loop !332

.lr.ph142:                                        ; preds = %.preheader95, %bb.d
  %.169141 = phi i64 [ %i.ab, %bb.d ], [ %.068101, %.preheader95 ] ; 8 uses
  %i.ab = add nsw i64 %.169141, -1                ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !242
  %i.ae = fcmp oeq double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.d, label %.critedge, !llvm.loop !332

.critedge:                                        ; preds = %.lr.ph142
  %i.af = add nuw i64 %.065103, 1
  %exitcond110.not = icmp eq i64 %.065103, %smax
  br i1 %exitcond110.not, label %.critedge.thread, label %.preheader94.preheader

.preheader94.preheader:                           ; preds = %.critedge
  %i.ag = icmp samesign ugt i64 %.169141, 1
  br i1 %i.ag, label %.lr.ph145, label %.critedge2

.preheader94:                                     ; preds = %.lr.ph145
  %i.ah = icmp sgt i64 %.167.in144, 2
  br i1 %i.ah, label %.lr.ph145, label %.critedge2, !llvm.loop !333

.lr.ph145:                                        ; preds = %.preheader94.preheader, %.preheader94
  %.167.in144 = phi i64 [ %.167, %.preheader94 ], [ %.169141, %.preheader94.preheader ] ; 3 uses
  %.167 = add nsw i64 %.167.in144, -1             ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %.167.in144
  %i.aj = getelementptr i8, ptr %i.ai, i64 -16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !242
  %i.al = fcmp une double %i.ak, 0.000000e+00
  br i1 %i.al, label %.preheader94, label %..critedge2_crit_edge, !llvm.loop !333

..critedge2_crit_edge:                            ; preds = %.lr.ph145
  br label %.critedge2, !llvm.loop !333

.critedge2:                                       ; preds = %.preheader94, %..critedge2_crit_edge, %.preheader94.preheader
  %.167.lcssa = phi i64 [ 0, %.preheader94.preheader ], [ %.167, %..critedge2_crit_edge ], [ 0, %.preheader94 ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab
  %i.an = load double, ptr %i.am, align 8, !tbaa !242
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.169141
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !242 ; 4 uses
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = fmul double %i.aq, 5.000000e-01         ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ab
  %i.at = load double, ptr %i.as, align 8, !tbaa !242 ; 7 uses
  %i.au = fcmp oeq double %i.ar, 0.000000e+00
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.at)
  %i.aw = fsub double %i.ap, %i.av
  br label %bb.j

bb.f:                                             ; preds = %.critedge2
  %i.ax = fcmp une double %i.at, 0.000000e+00
  br i1 %i.ax, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ay = fmul double %i.at, %i.at                ; 2 uses
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ar) ; 5 uses
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.at) ; 5 uses
  %i.bb = fcmp oeq double %i.az, +inf
  %i.bc = fcmp oeq double %i.ba, +inf
  %or.cond.i.i.i = or i1 %i.bc, %i.bb
  br i1 %or.cond.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond.i.i.i.i = fcmp uno double %i.az, %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = fcmp olt double %i.az, %i.ba            ; 2 uses
  %i.be = select i1 %i.bd, double %i.ba, double %i.az ; 2 uses
  %i.bf = select i1 %i.bd, double %i.az, double %i.ba
  %i.bg = fdiv double %i.bf, %i.be                ; 2 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double 1.000000e+00)
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.be, %sqrt.i.i.i.i
  br label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i

_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.1.i.i.i.i = phi double [ +qnan, %bb.h ], [ +inf, %bb.g ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bj = fcmp oeq double %i.ay, 0.000000e+00
  %i.bk = fcmp ogt double %i.ar, 0.000000e+00
  %i.bl = fneg double %.1.i.i.i.i
  %i.bm = select i1 %i.bk, double %.1.i.i.i.i, double %i.bl
  %i.bn = fadd double %i.ar, %i.bm                ; 2 uses
  %i.bo = fdiv double %i.bn, %i.at
  %i.bp = fdiv double %i.at, %i.bo
  %i.bq = fdiv double %i.ay, %i.bn
  %.pn.i = select i1 %i.bj, double %i.bp, double %i.bq
  %.073.i = fsub double %i.ap, %.pn.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, %bb.f, %bb.e
  %.1.i = phi double [ %i.aw, %bb.e ], [ %.073.i, %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i ], [ %i.ap, %bb.f ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.167.lcssa
  %i.bs = load double, ptr %i.br, align 8, !tbaa !242 ; 2 uses
  %5 = icmp samesign ult i64 %.167.lcssa, %.169141
  %i.bt = fcmp une double %i.bs, 0.000000e+00
  %6 = select i1 %5, i1 %i.bt, i1 false
  br i1 %6, label %.lr.ph.i, label %.preheader96.backedge

.preheader96.backedge:                            ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, %bb.j
  br label %.preheader96

.lr.ph.i:                                         ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.167.lcssa
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !242
  %i.bw = fsub double %i.bv, %.1.i
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, %.lr.ph.i
  %.0112.i = phi i64 [ %.167.lcssa, %.lr.ph.i ], [ %i.cz, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 6 uses
  %.0107111.i = phi double [ %i.bs, %.lr.ph.i ], [ %.1108.i, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 7 uses
  %.0109110.i = phi double [ %i.bw, %.lr.ph.i ], [ %i.dr, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 5 uses
  %i.bx = fcmp oeq double %.0109110.i, 0.000000e+00
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = fcmp olt double %.0107111.i, 0.000000e+00
  %i.bz = select i1 %i.by, double 1.000000e+00, double -1.000000e+00
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ca = tail call noundef double @llvm.fabs.f64(double %.0109110.i)
  %i.cb = tail call noundef double @llvm.fabs.f64(double %.0107111.i)
  %i.cc = fcmp ogt double %i.ca, %i.cb
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = fdiv double %.0107111.i, %.0109110.i    ; 3 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = fadd double %i.ce, 1.000000e+00
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.cf) ; 2 uses
  %i.cg = fcmp olt double %.0109110.i, 0.000000e+00
  %i.ch = fneg double %sqrt.i.i.i
  %.031.i.i.i = select i1 %i.cg, double %i.ch, double %sqrt.i.i.i
  %i.ci = fdiv double 1.000000e+00, %.031.i.i.i   ; 2 uses
  %i.cj = fneg double %i.cd
  %i.ck = fmul double %i.ci, %i.cj
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cl = fdiv double %.0109110.i, %.0107111.i    ; 3 uses
  %i.cm = fmul double %i.cl, %i.cl
  %i.cn = fadd double %i.cm, 1.000000e+00
  %sqrt40.i.i.i = tail call double @llvm.sqrt.f64(double %i.cn) ; 2 uses
  %i.co = fcmp olt double %.0107111.i, 0.000000e+00
  %i.cp = fneg double %sqrt40.i.i.i
  %.0.i.i.i = select i1 %i.co, double %i.cp, double %sqrt40.i.i.i
  %i.cq = fdiv double -1.000000e+00, %.0.i.i.i    ; 2 uses
  %i.cr = fneg double %i.cl
  %i.cs = fmul double %i.cq, %i.cr
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i: ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.16.0.i = phi double [ %i.cq, %bb.o ], [ %i.bz, %bb.l ], [ %i.ck, %bb.n ] ; 13 uses
  %.sroa.077.0.i = phi double [ %i.cs, %bb.o ], [ 0.000000e+00, %bb.l ], [ %i.ci, %bb.n ] ; 13 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0112.i ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !242 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.0112.i ; 3 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !242 ; 4 uses
  %i.cx = fmul double %.sroa.077.0.i, %i.cw
  %i.cy = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cu, double %i.cx) ; 2 uses
  %i.cz = add nuw nsw i64 %.0112.i, 1             ; 5 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cz ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !242 ; 2 uses
  %i.dc = fmul double %.sroa.077.0.i, %i.db
  %i.dd = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cw, double %i.dc) ; 2 uses
  %i.de = fneg double %i.cw
  %i.df = fmul double %.sroa.16.0.i, %i.de
  %i.dg = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cu, double %i.df)
  %i.dh = fneg double %i.db
  %i.di = fmul double %.sroa.16.0.i, %i.dh
  %i.dj = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cw, double %i.di)
  %i.dk = fneg double %i.dj
  %i.dl = fmul double %.sroa.16.0.i, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.dg, double %i.dl)
  store double %i.dm, ptr %i.ct, align 8, !tbaa !242
  %i.dn = fmul double %.sroa.077.0.i, %i.dd
  %i.do = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cy, double %i.dn)
  store double %i.do, ptr %i.da, align 8, !tbaa !242
  %i.dp = fneg double %i.dd
  %i.dq = fmul double %.sroa.16.0.i, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cy, double %i.dq) ; 2 uses
  store double %i.dr, ptr %i.cv, align 8, !tbaa !242
  %i.ds = icmp samesign ugt i64 %.0112.i, %.167.lcssa
  br i1 %i.ds, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i
  %i.dt = getelementptr i8, ptr %i.cv, i64 -8     ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !242
  %i.dv = fneg double %.0107111.i
  %i.dw = fmul double %.sroa.16.0.i, %i.dv
  %i.dx = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.du, double %i.dw)
  store double %i.dx, ptr %i.dt, align 8, !tbaa !242
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i
  %i.dy = icmp samesign ult i64 %.0112.i, %i.ab
  br i1 %i.dy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dz = fneg double %.sroa.16.0.i
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cz ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !242 ; 2 uses
  %i.ec = fmul double %i.eb, %i.dz
  %i.ed = fmul double %.sroa.077.0.i, %i.eb
  store double %i.ed, ptr %i.ea, align 8, !tbaa !242
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1108.i = phi double [ %i.ec, %bb.r ], [ %.0107111.i, %bb.q ] ; 2 uses
  br i1 %.not.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = fneg double %.sroa.16.0.i               ; 2 uses
  %i.ef = fcmp une double %.sroa.077.0.i, 1.000000e+00
  %i.eg = fcmp une double %.sroa.16.0.i, 0.000000e+00
  %or.cond.not18.i.i.i = or i1 %i.eg, %i.ef
  br i1 %or.cond.not18.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.t
  %i.eh = mul nuw nsw i64 %i.cz, %i.b
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.eh ; 2 uses
  %i.ej = mul nuw nsw i64 %.0112.i, %i.b
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.ej ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.k
  %i.em = getelementptr i8, ptr %i.ei, i64 %i.k
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ee, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert148 = insertelement <2 x double> poison, double %.sroa.077.0.i, i64 0
  %broadcast.splat149 = shufflevector <2 x double> %broadcast.splatinsert148, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <2 x double> poison, double %.sroa.16.0.i, i64 0
  %broadcast.splat151 = shufflevector <2 x double> %broadcast.splatinsert150, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i.i.preheader.i.i
  %index = phi i64 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.en = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ek, i64 %i.en ; 2 uses
  %next.gep152 = getelementptr i8, ptr %i.ei, i64 %i.en ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !242 ; 2 uses
  %wide.load153 = load <2 x double>, ptr %next.gep152, align 8, !tbaa !242 ; 2 uses
  %i.eo = fmul <2 x double> %wide.load153, %broadcast.splat
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat149, <2 x double> %wide.load, <2 x double> %i.eo)
  store <2 x double> %i.ep, ptr %next.gep, align 8, !tbaa !242
  %i.eq = fmul <2 x double> %broadcast.splat149, %wide.load153
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat151, <2 x double> %wide.load, <2 x double> %i.eq)
  store <2 x double> %i.er, ptr %next.gep152, align 8, !tbaa !242
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %middle.block, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i ], [ %i.el, %middle.block ] ; 3 uses
  %.01420.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i ], [ %i.em, %middle.block ] ; 3 uses
  %.01519.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ]
  %i.et = load double, ptr %.021.i.i.i.i, align 8, !tbaa !242 ; 2 uses
  %i.eu = load double, ptr %.01420.i.i.i.i, align 8, !tbaa !242 ; 2 uses
  %i.ev = fmul double %i.eu, %i.ee
  %i.ew = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.et, double %i.ev)
  store double %i.ew, ptr %.021.i.i.i.i, align 8, !tbaa !242
  %i.ex = fmul double %.sroa.077.0.i, %i.eu
  %i.ey = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.et, double %i.ex)
  store double %i.ey, ptr %.01420.i.i.i.i, align 8, !tbaa !242
  %i.ez = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.01420.i.i.i.i, i64 8
  %i.fb = add nuw nsw i64 %.01519.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fb, %i.b
  br i1 %exitcond.not.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !335

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.t, %bb.s
  %i.fc = icmp samesign ult i64 %i.cz, %.169141
  %i.fd = fcmp une double %.1108.i, 0.000000e+00
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %bb.k, label %.preheader96.backedge, !llvm.loop !336

.critedge.thread:                                 ; preds = %.critedge, %.preheader95, %bb.d
  %.1 = phi i64 [ %.065103, %bb.d ], [ %i.i, %.critedge ], [ %.065103, %.preheader95 ]
  %.not73.not = icmp sgt i64 %.1, %i.f            ; 2 uses
  %.mux = select i1 %.not73.not, i32 2, i32 0
  br i1 %.not73.not, label %.loopexit, label %.lr.ph.i.i.i.i74.preheader.lr.ph

.critedge.thread.thread:                          ; preds = %bb.a
  %.pre = mul nsw i64 %i.b, %2
  %.not73.not129 = icmp slt i64 %.pre, 0
  %spec.select135 = select i1 %.not73.not129, i32 2, i32 0
  br label %.loopexit

.lr.ph.i.i.i.i74.preheader.lr.ph:                 ; preds = %.critedge.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %3, label %.lr.ph.i.i.i.i74.preheader.us.preheader, label %.lr.ph.i.i.i.i74.preheader.preheader

.lr.ph.i.i.i.i74.preheader.us.preheader:          ; preds = %.lr.ph.i.i.i.i74.preheader.lr.ph
  %i.fg = add nsw i64 %i.b, -2
  br label %.lr.ph.i.i.i.i74.preheader.us

end_hunk_0
