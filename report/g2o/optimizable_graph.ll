Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseERKS2_:bb.a
bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %.0.i, %bb.e ] ; 7 uses
  %.02243.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !194  ; 2 uses
  %i.f = icmp ult ptr %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult ptr %i.c, %i.e
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !223  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %.lr.ph.i.i ], [ %.044.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194
  %i.n = icmp ult ptr %i.m, %i.c                  ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 2 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, label %.lr.ph.i.i, !llvm.loop !410

_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.08.lcssa.i.i = phi ptr [ %.044.i, %bb.d ], [ %.19.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not10.i24.i = icmp eq ptr %i.k, null
  br i1 %.not10.i24.i, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, %.lr.ph.i25.i
  %.012.i26.i = phi ptr [ %.1.i31.i, %.lr.ph.i25.i ], [ %i.k, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ] ; 3 uses
  %.0811.i27.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !194
  %i.q = icmp ult ptr %i.c, %i.p                  ; 2 uses
  %.19.i28.i = select i1 %i.q, ptr %.012.i26.i, ptr %.0811.i27.i ; 2 uses
  %.1.in.v.i29.i = select i1 %i.q, i64 16, i64 24
  %.1.in.i30.i = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 %.1.in.v.i29.i
  %.1.i31.i = load ptr, ptr %.1.in.i30.i, align 8, !tbaa !171 ; 2 uses
  %.not.i32.i = icmp eq ptr %.1.i31.i, null
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit, label %.lr.ph.i25.i, !llvm.loop !411

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !171 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit, label %bb.b, !llvm.loop !412

_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105
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
  store ptr null, ptr %i.a, align 8, !tbaa !104
  store ptr %i.b, ptr %i.u, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !106
  store i64 0, ptr %i.s, align 8, !tbaa !107
  br label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit
  %.not8.i = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.09.i = phi ptr [ %i.ab, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #44 ; 2 uses
  %i.ac = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #42
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 40) #41
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !107
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !107
  %.not.i3 = icmp eq ptr %i.ab, %.sroa.3.0.i
  br i1 %.not.i3, label %_ZNSt8_Rb_treeIPN3g2o16HyperGraphActionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2, !llvm.loop !413

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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !218
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !211
  tail call void @free(ptr noundef %i.i) #42
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #46 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !211
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EENS_15ComputationInfoERT0_RT1_lbRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218  ; 11 uses
  %i.c = add i64 %i.b, -1                         ; 5 uses
  %i.d = icmp sgt i64 %i.b, 1
  br i1 %i.d, label %.preheader96.lr.ph, label %.critedge.thread.thread

.preheader96.lr.ph:                               ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 5 uses
  %i.f = mul i64 %i.b, %2                         ; 2 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = load ptr, ptr %4, align 8
  %smax = tail call i64 @llvm.smax.i64(i64 %i.f, i64 0) ; 2 uses
  %5 = add nuw i64 %smax, 1
  %spec.select = select i1 %3, ptr %i.h, ptr null ; 3 uses
  %.not.i = icmp eq ptr %spec.select, null
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %n.vec = and i64 %i.b, 9223372036854775806      ; 4 uses
  %i.j = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader96.backedge, %.preheader96.lr.ph
  %.065103 = phi i64 [ 0, %.preheader96.lr.ph ], [ %i.ae, %.preheader96.backedge ] ; 4 uses
  %.066102 = phi i64 [ 0, %.preheader96.lr.ph ], [ %.167.lcssa, %.preheader96.backedge ] ; 2 uses
  %.068101 = phi i64 [ %i.c, %.preheader96.lr.ph ], [ %.169142, %.preheader96.backedge ] ; 4 uses
  %i.k = icmp slt i64 %.066102, %.068101
  br i1 %i.k, label %.lr.ph, label %.preheader95

.preheader95:                                     ; preds = %bb.c, %.preheader96
  %i.l = icmp sgt i64 %.068101, 0
  br i1 %i.l, label %.lr.ph143, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader96, %bb.c
  %.064100 = phi i64 [ %i.y, %bb.c ], [ %.066102, %.preheader96 ] ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.064100 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !210 ; 2 uses
  %i.o = tail call noundef double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp olt double %i.o, f0x0010000000000000
  br i1 %i.p, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = fmul double %i.n, f0x4330000000000000    ; 2 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !211
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %.064100
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !210
  %i.v = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.u) ; 2 uses
  %shift = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.v, %shift
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.x = fcmp ugt double %i.r, %i.w
  br i1 %i.x, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.lr.ph
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.y = add nsw i64 %.064100, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.068101
  br i1 %exitcond.not, label %.preheader95, label %.lr.ph, !llvm.loop !414

bb.d:                                             ; preds = %.lr.ph143
  %i.z = icmp sgt i64 %.169142, 1
  br i1 %i.z, label %.lr.ph143, label %.critedge.thread, !llvm.loop !415

.lr.ph143:                                        ; preds = %.preheader95, %bb.d
  %.169142 = phi i64 [ %i.aa, %bb.d ], [ %.068101, %.preheader95 ] ; 7 uses
  %i.aa = add nsw i64 %.169142, -1                ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !210
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %.critedge, !llvm.loop !415

.critedge:                                        ; preds = %.lr.ph143
  %i.ae = add nuw i64 %.065103, 1
  %exitcond110.not = icmp eq i64 %.065103, %smax
  br i1 %exitcond110.not, label %.critedge.thread, label %.preheader94.preheader

.preheader94.preheader:                           ; preds = %.critedge
  %i.af = icmp samesign ugt i64 %.169142, 1
  br i1 %i.af, label %.lr.ph146, label %.critedge2

.preheader94:                                     ; preds = %.lr.ph146
  %i.ag = icmp sgt i64 %.167.in145, 2
  br i1 %i.ag, label %.lr.ph146, label %.critedge2, !llvm.loop !416

.lr.ph146:                                        ; preds = %.preheader94.preheader, %.preheader94
  %.167.in145 = phi i64 [ %.167, %.preheader94 ], [ %.169142, %.preheader94.preheader ] ; 3 uses
  %.167 = add nsw i64 %.167.in145, -1             ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.i, i64 %.167.in145
  %i.ai = getelementptr i8, ptr %i.ah, i64 -16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !210
  %i.ak = fcmp une double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.preheader94, label %..critedge2_crit_edge, !llvm.loop !416

..critedge2_crit_edge:                            ; preds = %.lr.ph146
  br label %.critedge2, !llvm.loop !416

.critedge2:                                       ; preds = %.preheader94, %..critedge2_crit_edge, %.preheader94.preheader
  %.167.lcssa = phi i64 [ 0, %.preheader94.preheader ], [ %.167, %..critedge2_crit_edge ], [ 0, %.preheader94 ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.aa
  %i.am = load double, ptr %i.al, align 8, !tbaa !210
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.169142
  %i.ao = load double, ptr %i.an, align 8, !tbaa !210 ; 4 uses
  %i.ap = fsub double %i.am, %i.ao
  %i.aq = fmul double %i.ap, 5.000000e-01         ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.aa
  %i.as = load double, ptr %i.ar, align 8, !tbaa !210 ; 7 uses
  %i.at = fcmp oeq double %i.aq, 0.000000e+00
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  %i.au = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.av = fsub double %i.ao, %i.au
  br label %bb.j

bb.f:                                             ; preds = %.critedge2
  %i.aw = fcmp une double %i.as, 0.000000e+00
  br i1 %i.aw, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ax = fmul double %i.as, %i.as                ; 2 uses
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.aq) ; 5 uses
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.as) ; 5 uses
  %i.ba = fcmp oeq double %i.ay, +inf
  %i.bb = fcmp oeq double %i.az, +inf
  %or.cond.i.i.i = or i1 %i.bb, %i.ba
  br i1 %or.cond.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond.i.i.i.i = fcmp uno double %i.ay, %i.az
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = fcmp olt double %i.ay, %i.az            ; 2 uses
  %i.bd = select i1 %i.bc, double %i.az, double %i.ay ; 2 uses
  %i.be = select i1 %i.bc, double %i.ay, double %i.az
  %i.bf = fdiv double %i.be, %i.bd                ; 2 uses
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double 1.000000e+00)
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bg)
  %i.bh = fmul double %i.bd, %sqrt.i.i.i.i
  br label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i

_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.1.i.i.i.i = phi double [ +qnan, %bb.h ], [ +inf, %bb.g ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bi = fcmp oeq double %i.ax, 0.000000e+00
  %i.bj = fcmp ogt double %i.aq, 0.000000e+00
  %i.bk = fneg double %.1.i.i.i.i
  %i.bl = select i1 %i.bj, double %.1.i.i.i.i, double %i.bk
  %i.bm = fadd double %i.aq, %i.bl                ; 2 uses
  %i.bn = fdiv double %i.bm, %i.as
  %i.bo = fdiv double %i.as, %i.bn
  %i.bp = fdiv double %i.ax, %i.bm
  %.pn.i = select i1 %i.bi, double %i.bo, double %i.bp
  %.073.i = fsub double %i.ao, %.pn.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, %bb.f, %bb.e
  %.1.i = phi double [ %i.av, %bb.e ], [ %.073.i, %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i ], [ %i.ao, %bb.f ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.167.lcssa
  %i.br = load double, ptr %i.bq, align 8, !tbaa !210 ; 2 uses
  %i.bs = fcmp une double %i.br, 0.000000e+00
  br i1 %i.bs, label %.lr.ph.i, label %.preheader96.backedge

.preheader96.backedge:                            ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, %bb.j
  br label %.preheader96

.lr.ph.i:                                         ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.167.lcssa
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !210
  %i.bv = fsub double %i.bu, %.1.i
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, %.lr.ph.i
  %.0112.i = phi i64 [ %.167.lcssa, %.lr.ph.i ], [ %i.da, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 6 uses
  %.0107111.i = phi double [ %i.br, %.lr.ph.i ], [ %.1108.i, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 7 uses
  %.0109110.i = phi double [ %i.bv, %.lr.ph.i ], [ %i.ds, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 5 uses
  %i.bw = fcmp oeq double %.0109110.i, 0.000000e+00
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = fcmp olt double %.0107111.i, 0.000000e+00
  %i.by = select i1 %i.bx, double 1.000000e+00, double -1.000000e+00
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bz = tail call noundef double @llvm.fabs.f64(double %.0109110.i)
  %i.ca = tail call noundef double @llvm.fabs.f64(double %.0107111.i)
  %i.cb = fcmp ogt double %i.bz, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = fdiv double %.0107111.i, %.0109110.i    ; 3 uses
  %i.cd = fmul double %i.cc, %i.cc
  %i.ce = fadd double %i.cd, 1.000000e+00
  %i.cf = tail call double @sqrt(double noundef %i.ce) #42 ; 2 uses
  %i.cg = fcmp olt double %.0109110.i, 0.000000e+00
  %i.ch = fneg double %i.cf
  %spec.select.i.i.i = select i1 %i.cg, double %i.ch, double %i.cf
  %i.ci = fdiv double 1.000000e+00, %spec.select.i.i.i ; 2 uses
  %i.cj = fneg double %i.cc
  %i.ck = fmul double %i.ci, %i.cj
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cl = fdiv double %.0109110.i, %.0107111.i    ; 3 uses
  %i.cm = fmul double %i.cl, %i.cl
  %i.cn = fadd double %i.cm, 1.000000e+00
  %i.co = tail call double @sqrt(double noundef %i.cn) #42 ; 2 uses
  %i.cp = fcmp olt double %.0107111.i, 0.000000e+00
  %i.cq = fneg double %i.co
  %spec.select37.i.i.i = select i1 %i.cp, double %i.cq, double %i.co
  %i.cr = fdiv double -1.000000e+00, %spec.select37.i.i.i ; 2 uses
  %i.cs = fneg double %i.cl
  %i.ct = fmul double %i.cr, %i.cs
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i: ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.16.0.i = phi double [ %i.cr, %bb.o ], [ %i.by, %bb.l ], [ %i.ck, %bb.n ] ; 13 uses
  %.sroa.077.0.i = phi double [ %i.ct, %bb.o ], [ 0.000000e+00, %bb.l ], [ %i.ci, %bb.n ] ; 13 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0112.i ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !210 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.0112.i ; 3 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !210 ; 4 uses
  %i.cy = fmul double %.sroa.077.0.i, %i.cx
  %i.cz = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cv, double %i.cy) ; 2 uses
  %i.da = add nuw nsw i64 %.0112.i, 1             ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.da ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !210 ; 2 uses
  %i.dd = fmul double %.sroa.077.0.i, %i.dc
  %i.de = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cx, double %i.dd) ; 2 uses
  %i.df = fneg double %i.cx
  %i.dg = fmul double %.sroa.16.0.i, %i.df
  %i.dh = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cv, double %i.dg)
  %i.di = fneg double %i.dc
  %i.dj = fmul double %.sroa.16.0.i, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cx, double %i.dj)
  %i.dl = fneg double %i.dk
  %i.dm = fmul double %.sroa.16.0.i, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.dh, double %i.dm)
  store double %i.dn, ptr %i.cu, align 8, !tbaa !210
  %i.do = fmul double %.sroa.077.0.i, %i.de
  %i.dp = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cz, double %i.do)
  store double %i.dp, ptr %i.db, align 8, !tbaa !210
  %i.dq = fneg double %i.de
  %i.dr = fmul double %.sroa.16.0.i, %i.dq
  %i.ds = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cz, double %i.dr) ; 2 uses
  store double %i.ds, ptr %i.cw, align 8, !tbaa !210
  %i.dt = icmp samesign ugt i64 %.0112.i, %.167.lcssa
  br i1 %i.dt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i
  %i.du = getelementptr i8, ptr %i.cw, i64 -8     ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !210
  %i.dw = fneg double %.0107111.i
  %i.dx = fmul double %.sroa.16.0.i, %i.dw
  %i.dy = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.dv, double %i.dx)
  store double %i.dy, ptr %i.du, align 8, !tbaa !210
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i
  %i.dz = icmp samesign ult i64 %.0112.i, %i.aa
  br i1 %i.dz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ea = fneg double %.sroa.16.0.i
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.da ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !210 ; 2 uses
  %i.ed = fmul double %i.ec, %i.ea
  %i.ee = fmul double %.sroa.077.0.i, %i.ec
  store double %i.ee, ptr %i.eb, align 8, !tbaa !210
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1108.i = phi double [ %i.ed, %bb.r ], [ %.0107111.i, %bb.q ] ; 2 uses
  br i1 %.not.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = fneg double %.sroa.16.0.i               ; 2 uses
  %i.eg = fcmp une double %.sroa.077.0.i, 1.000000e+00
  %i.eh = fcmp une double %.sroa.16.0.i, 0.000000e+00
  %or.cond.not18.i.i.i = or i1 %i.eh, %i.eg
  br i1 %or.cond.not18.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.t
  %i.ei = mul nuw nsw i64 %i.da, %i.b
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.ei ; 2 uses
  %i.ek = mul nuw nsw i64 %.0112.i, %i.b
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 %i.j
  %i.en = getelementptr i8, ptr %i.ej, i64 %i.j
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ef, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %.sroa.077.0.i, i64 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %.sroa.16.0.i, i64 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i.i.preheader.i.i
  %index = phi i64 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.eo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.el, i64 %i.eo ; 2 uses
  %next.gep153 = getelementptr i8, ptr %i.ej, i64 %i.eo ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !210 ; 2 uses
  %wide.load154 = load <2 x double>, ptr %next.gep153, align 8, !tbaa !210 ; 2 uses
  %i.ep = fmul <2 x double> %wide.load154, %broadcast.splat
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat150, <2 x double> %wide.load, <2 x double> %i.ep)
  store <2 x double> %i.eq, ptr %next.gep, align 8, !tbaa !210
  %i.er = fmul <2 x double> %broadcast.splat150, %wide.load154
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load, <2 x double> %i.er)
  store <2 x double> %i.es, ptr %next.gep153, align 8, !tbaa !210
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %middle.block, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i ], [ %i.em, %middle.block ] ; 3 uses
  %.01420.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i ], [ %i.en, %middle.block ] ; 3 uses
  %.01519.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ]
  %i.eu = load double, ptr %.021.i.i.i.i, align 8, !tbaa !210 ; 2 uses
  %i.ev = load double, ptr %.01420.i.i.i.i, align 8, !tbaa !210 ; 2 uses
  %i.ew = fmul double %i.ev, %i.ef
  %i.ex = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.eu, double %i.ew)
  store double %i.ex, ptr %.021.i.i.i.i, align 8, !tbaa !210
  %i.ey = fmul double %.sroa.077.0.i, %i.ev
  %i.ez = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.eu, double %i.ey)
  store double %i.ez, ptr %.01420.i.i.i.i, align 8, !tbaa !210
  %i.fa = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.01420.i.i.i.i, i64 8
  %i.fc = add nuw nsw i64 %.01519.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fc, %i.b
  br i1 %exitcond.not.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !418

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.t, %bb.s
  %i.fd = icmp samesign ult i64 %i.da, %.169142
  %i.fe = fcmp une double %.1108.i, 0.000000e+00
  %i.ff = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %i.ff, label %bb.k, label %.preheader96.backedge, !llvm.loop !419

.critedge.thread:                                 ; preds = %.critedge, %.preheader95, %bb.d
  %.1 = phi i64 [ %.065103, %bb.d ], [ %5, %.critedge ], [ %.065103, %.preheader95 ]
  %.not73.not = icmp sgt i64 %.1, %i.f            ; 2 uses
  %.mux = select i1 %.not73.not, i32 2, i32 0
  br i1 %.not73.not, label %.loopexit, label %.lr.ph.i.i.i.i74.preheader.lr.ph

.critedge.thread.thread:                          ; preds = %bb.a
  %.pre = mul nsw i64 %i.b, %2
  %.not73.not130 = icmp slt i64 %.pre, 0
  %spec.select136 = select i1 %.not73.not130, i32 2, i32 0
  br label %.loopexit

.lr.ph.i.i.i.i74.preheader.lr.ph:                 ; preds = %.critedge.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %3, label %.lr.ph.i.i.i.i74.preheader.us.preheader, label %.lr.ph.i.i.i.i74.preheader.preheader

.lr.ph.i.i.i.i74.preheader.us.preheader:          ; preds = %.lr.ph.i.i.i.i74.preheader.lr.ph
  %i.fh = add nsw i64 %i.b, -2
  br label %.lr.ph.i.i.i.i74.preheader.us

.lr.ph.i.i.i.i74.preheader.preheader:             ; preds = %.lr.ph.i.i.i.i74.preheader.lr.ph
  %.pre115 = load ptr, ptr %0, align 8, !tbaa !211, !noalias !439 ; 2 uses
  %i.fi = add nsw i64 %i.b, -2
  br label %.lr.ph.i.i.i.i74.preheader

.lr.ph.i.i.i.i74.preheader.us:                    ; preds = %.lr.ph.i.i.i.i74.preheader.us.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit.us
  %.0105.us = phi i64 [ %i.kg, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit.us ], [ 0, %.lr.ph.i.i.i.i74.preheader.us.preheader ] ; 9 uses
  %i.fj = sub i64 %i.c, %.0105.us                 ; 2 uses
  %i.fk = sub i64 %i.fh, %.0105.us
  %i.fl = shl i64 %.0105.us, 3
  %i.fm = shl i64 %.0105.us, 3                    ; 2 uses
  %i.fn = add i64 %i.fm, 8
  %i.fo = add nuw i64 %.0105.us, 1
  %i.fp = load ptr, ptr %0, align 8, !tbaa !211, !noalias !439 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.0105.us ; 7 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !210 ; 3 uses
  %xtraiter207 = and i64 %i.fj, 3                 ; 3 uses
  %i.fs = icmp ult i64 %i.fk, 3
  br i1 %i.fs, label %.lr.ph.i.i.i.i74.us.epil.preheader, label %.lr.ph.i.i.i.i74.preheader.us.new

.lr.ph.i.i.i.i74.preheader.us.new:                ; preds = %.lr.ph.i.i.i.i74.preheader.us
  %unroll_iter214 = and i64 %i.fj, -4
  br label %.lr.ph.i.i.i.i74.us

.lr.ph.i.i.i.i74.us:                              ; preds = %.lr.ph.i.i.i.i74.us, %.lr.ph.i.i.i.i74.preheader.us.new
  %.sroa.0.0.i.i.us = phi i64 [ 0, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %.sroa.0.1.i.i.us.3, %.lr.ph.i.i.i.i74.us ]
  %.02123.i.i.i.i.us = phi i64 [ 1, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %i.gn, %.lr.ph.i.i.i.i74.us ] ; 6 uses
  %i.ft = phi double [ %i.fr, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %i.gm, %.lr.ph.i.i.i.i74.us ] ; 2 uses
  %niter215 = phi i64 [ 0, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %niter215.next.3, %.lr.ph.i.i.i.i74.us ]
  %i.fu = getelementptr [8 x i8], ptr %i.fq, i64 %.02123.i.i.i.i.us
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !210 ; 2 uses
  %i.fw = fcmp olt double %i.fv, %i.ft            ; 2 uses
  %.sroa.0.1.i.i.us = select i1 %i.fw, i64 %.02123.i.i.i.i.us, i64 %.sroa.0.0.i.i.us
  %i.fx = select i1 %i.fw, double %i.fv, double %i.ft ; 2 uses
  %i.fy = add nuw nsw i64 %.02123.i.i.i.i.us, 1   ; 2 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fq, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !210 ; 2 uses
  %i.gb = fcmp olt double %i.ga, %i.fx            ; 2 uses
  %.sroa.0.1.i.i.us.1 = select i1 %i.gb, i64 %i.fy, i64 %.sroa.0.1.i.i.us
  %i.gc = select i1 %i.gb, double %i.ga, double %i.fx ; 2 uses
  %i.gd = add nuw nsw i64 %.02123.i.i.i.i.us, 2   ; 2 uses
  %i.ge = getelementptr [8 x i8], ptr %i.fq, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !210 ; 2 uses
  %i.gg = fcmp olt double %i.gf, %i.gc            ; 2 uses
  %.sroa.0.1.i.i.us.2 = select i1 %i.gg, i64 %i.gd, i64 %.sroa.0.1.i.i.us.1
  %i.gh = select i1 %i.gg, double %i.gf, double %i.gc ; 2 uses
  %i.gi = add nuw nsw i64 %.02123.i.i.i.i.us, 3   ; 2 uses
  %i.gj = getelementptr [8 x i8], ptr %i.fq, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !210 ; 2 uses
  %i.gl = fcmp olt double %i.gk, %i.gh            ; 2 uses
  %.sroa.0.1.i.i.us.3 = select i1 %i.gl, i64 %i.gi, i64 %.sroa.0.1.i.i.us.2 ; 3 uses
  %i.gm = select i1 %i.gl, double %i.gk, double %i.gh ; 2 uses
  %i.gn = add nuw nsw i64 %.02123.i.i.i.i.us, 4   ; 2 uses
  %niter215.next.3 = add nuw i64 %niter215, 4     ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa, label %.lr.ph.i.i.i.i74.us, !llvm.loop !422

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i74.us
  %lcmp.mod211.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod211.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us, label %.lr.ph.i.i.i.i74.us.epil.preheader

.lr.ph.i.i.i.i74.us.epil.preheader:               ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa, %.lr.ph.i.i.i.i74.preheader.us
  %.sroa.0.0.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i74.preheader.us ], [ %.sroa.0.1.i.i.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa ]
  %.02123.i.i.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i74.preheader.us ], [ %i.gn, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa ]
  %.epil.init210 = phi double [ %i.fr, %.lr.ph.i.i.i.i74.preheader.us ], [ %i.gm, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter207, 0
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.i.i.i.i74.us.epil

.lr.ph.i.i.i.i74.us.epil:                         ; preds = %.lr.ph.i.i.i.i74.us.epil, %.lr.ph.i.i.i.i74.us.epil.preheader
  %.sroa.0.0.i.i.us.epil = phi i64 [ %.sroa.0.1.i.i.us.epil, %.lr.ph.i.i.i.i74.us.epil ], [ %.sroa.0.0.i.i.us.epil.init, %.lr.ph.i.i.i.i74.us.epil.preheader ]
  %.02123.i.i.i.i.us.epil = phi i64 [ %i.gt, %.lr.ph.i.i.i.i74.us.epil ], [ %.02123.i.i.i.i.us.epil.init, %.lr.ph.i.i.i.i74.us.epil.preheader ] ; 3 uses
  %i.go = phi double [ %i.gs, %.lr.ph.i.i.i.i74.us.epil ], [ %.epil.init210, %.lr.ph.i.i.i.i74.us.epil.preheader ] ; 2 uses
  %epil.iter208 = phi i64 [ %epil.iter208.next, %.lr.ph.i.i.i.i74.us.epil ], [ 0, %.lr.ph.i.i.i.i74.us.epil.preheader ]
  %i.gp = getelementptr [8 x i8], ptr %i.fq, i64 %.02123.i.i.i.i.us.epil
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !210 ; 2 uses
  %i.gr = fcmp olt double %i.gq, %i.go            ; 2 uses
  %.sroa.0.1.i.i.us.epil = select i1 %i.gr, i64 %.02123.i.i.i.i.us.epil, i64 %.sroa.0.0.i.i.us.epil ; 2 uses
  %i.gs = select i1 %i.gr, double %i.gq, double %i.go
  %i.gt = add nuw nsw i64 %.02123.i.i.i.i.us.epil, 1
  %epil.iter208.next = add i64 %epil.iter208, 1   ; 2 uses
  %epil.iter208.cmp.not = icmp eq i64 %epil.iter208.next, %xtraiter207
  br i1 %epil.iter208.cmp.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us, label %.lr.ph.i.i.i.i74.us.epil, !llvm.loop !423

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us: ; preds = %.lr.ph.i.i.i.i74.us.epil, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa
  %.sroa.0.1.i.i.us.lcssa = phi i64 [ %.sroa.0.1.i.i.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us.unr-lcssa ], [ %.sroa.0.1.i.i.us.epil, %.lr.ph.i.i.i.i74.us.epil ] ; 3 uses
  %.not93.us = icmp eq i64 %.sroa.0.1.i.i.us.lcssa, 0
  br i1 %.not93.us, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit.us, label %bb.u

bb.u:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8minCoeffIlEEdPT_.exit.us
  %i.gu = add nuw nsw i64 %.sroa.0.1.i.i.us.lcssa, %.0105.us ; 4 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gu ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !210
  store double %i.gw, ptr %i.fq, align 8, !tbaa !210
  store double %i.fr, ptr %i.gv, align 8, !tbaa !210
  %i.gx = load ptr, ptr %4, align 8, !tbaa !212, !noalias !440 ; 8 uses
  %i.gy = load i64, ptr %i.fg, align 8, !tbaa !214, !noalias !440 ; 15 uses
  %i.gz = mul nsw i64 %i.gy, %.0105.us
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gz ; 11 uses
  %i.hb = mul i64 %i.gy, %i.gu
  %i.hc = getelementptr [8 x i8], ptr %i.gx, i64 %i.hb ; 10 uses
  %i.hd = ptrtoint ptr %i.ha to i64               ; 2 uses
  %i.he = and i64 %i.hd, 7
  %.not.i.i.i.i.i.i.i.us = icmp eq i64 %i.he, 0
  br i1 %.not.i.i.i.i.i.i.i.us, label %bb.v, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.us

bb.v:                                             ; preds = %bb.u
  %i.hf = lshr exact i64 %i.hd, 3
  %i.hg = and i64 %i.hf, 1
  %i.hh = tail call i64 @llvm.smin.i64(i64 %i.hg, i64 %i.gy)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.us

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.us: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.us = phi i64 [ %i.hh, %bb.v ], [ %i.gy, %bb.u ] ; 13 uses
  %i.hi = sub nsw i64 %i.gy, %.0.i.i.i.i.i.i.i.us ; 2 uses
  %i.hj = sdiv i64 %i.hi, 2                       ; 2 uses
  %i.hk = shl nsw i64 %i.hj, 1                    ; 2 uses
  %i.hl = add nsw i64 %i.hk, %.0.i.i.i.i.i.i.i.us ; 6 uses
  %i.hm = icmp sgt i64 %.0.i.i.i.i.i.i.i.us, 0
  br i1 %i.hm, label %.lr.ph.i.i.i.i.i.i.i.us.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.us.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.us
  %min.iters.check179 = icmp ult i64 %.0.i.i.i.i.i.i.i.us, 10
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i.i.i.us.preheader195, label %vector.memcheck171

vector.memcheck171:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader
  %i.hn = mul i64 %i.gy, %i.fl
  %i.ho = shl i64 %.0.i.i.i.i.i.i.i.us, 3         ; 2 uses
  %i.hp = getelementptr i8, ptr %i.gx, i64 %i.hn
  %scevgep172 = getelementptr i8, ptr %i.hp, i64 %i.ho
  %scevgep173 = getelementptr i8, ptr %i.gx, i64 %i.ho
  %i.hq = shl i64 %i.gy, 3
  %i.hr = mul i64 %i.hq, %i.gu
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.hr
  %bound0175 = icmp ult ptr %i.ha, %scevgep174
  %bound1176 = icmp ult ptr %i.hc, %scevgep172
  %found.conflict177 = and i1 %bound0175, %bound1176
  br i1 %found.conflict177, label %.lr.ph.i.i.i.i.i.i.i.us.preheader195, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck171
  %n.vec181 = and i64 %.0.i.i.i.i.i.i.i.us, 9223372036854775804 ; 3 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index183 ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %index183 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %wide.load184 = load <2 x double>, ptr %i.hs, align 8, !tbaa !210, !alias.scope !441, !noalias !442
  %wide.load185 = load <2 x double>, ptr %i.hu, align 8, !tbaa !210, !alias.scope !441, !noalias !442
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %wide.load186 = load <2 x double>, ptr %i.ht, align 8, !tbaa !210, !alias.scope !442
  %wide.load187 = load <2 x double>, ptr %i.hv, align 8, !tbaa !210, !alias.scope !442
  store <2 x double> %wide.load186, ptr %i.hs, align 8, !tbaa !210, !alias.scope !441, !noalias !442
  store <2 x double> %wide.load187, ptr %i.hu, align 8, !tbaa !210, !alias.scope !441, !noalias !442
  store <2 x double> %wide.load184, ptr %i.ht, align 8, !tbaa !210, !alias.scope !442
  store <2 x double> %wide.load185, ptr %i.hv, align 8, !tbaa !210, !alias.scope !442
  %index.next188 = add nuw i64 %index183, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.hw, label %middle.block189, label %vector.body182, !llvm.loop !429

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %.0.i.i.i.i.i.i.i.us, %n.vec181
  br i1 %cmp.n190, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us.preheader195

.lr.ph.i.i.i.i.i.i.i.us.preheader195:             ; preds = %vector.memcheck171, %.lr.ph.i.i.i.i.i.i.i.us.preheader, %middle.block189
  %.05.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck171 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.preheader ], [ %n.vec181, %middle.block189 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.us.ph, 1
  %xtraiter216 = and i64 %.0.i.i.i.i.i.i.i.us, 1
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.lr.ph.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.us.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader195
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.05.i.i.i.i.i.i.i.us.ph ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.05.i.i.i.i.i.i.i.us.ph ; 2 uses
  %i.hz = load double, ptr %i.hx, align 8, !tbaa !210
  %i.ia = load double, ptr %i.hy, align 8, !tbaa !210
  store double %i.ia, ptr %i.hx, align 8, !tbaa !210
  store double %i.hz, ptr %i.hy, align 8, !tbaa !210
  %i.ib = or disjoint i64 %.05.i.i.i.i.i.i.i.us.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.us.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.us.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.us.preheader195
  %.05.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.us.preheader195 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.us.prol ]
  %i.ic = icmp eq i64 %.0.i.i.i.i.i.i.i.us, %.neg
end_hunk_0
