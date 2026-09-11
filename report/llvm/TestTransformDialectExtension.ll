Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestTransformDialectExtension?download=true
inline.NumInlined: 30158
inline.NumDeleted: 11507
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6insertIPS3_vEES6_S6_T_S7_:bb.a
  %i.dj = add i64 %.04057, -8                     ; 2 uses
  %.not45.7 = icmp eq i64 %i.dj, 0
  br i1 %.not45.7, label %._crit_edge, label %.lr.ph, !llvm.loop !1510

_ZSt4copyIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit: ; preds = %bb.s, %._crit_edge, %bb.q, %bb.p, %bb.o, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendIPS3_vEEvT_S7_.exit
  %.1 = phi ptr [ %i.z, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendIPS3_vEEvT_S7_.exit ], [ %i.ak, %bb.q ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %._crit_edge ], [ %i.ak, %bb.s ]
  ret ptr %.1
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_13OperationNameE(ptr noundef nonnull align 8 dereferenceable(192), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6insertINS_20filter_iterator_implIPKS3_ZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEEvEEPS3_SF_T_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef byval(%"class.llvm::filter_iterator_impl") align 8 %2, ptr noundef byval(%"class.llvm::filter_iterator_impl") align 8 %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %.sroa.043.0.copyload = load ptr, ptr %2, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 12 uses
  %.sroa.046.0.copyload = load ptr, ptr %3, align 8 ; 7 uses
  %.not5.i.i = icmp eq ptr %.sroa.043.0.copyload, %.sroa.046.0.copyload ; 4 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not5.i.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i, label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %bb.b, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i
  %.06.i.i = phi i64 [ %i.q, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i ], [ 0, %bb.b ]
  %i.j = phi ptr [ %i.p, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i ], [ %.sroa.043.0.copyload, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %.not2.i.i.i.i = icmp eq ptr %i.k, %.sroa.2.0.copyload
  br i1 %.not2.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph7.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %.not1.i.i2.i.i = icmp eq ptr %i.l, null
  br i1 %.not1.i.i2.i.i, label %.lr.ph.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.m = load ptr, ptr %i.o, align 8, !tbaa !64
  %.not1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %i.n = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.k, %.lr.ph.i.i.preheader.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %.sroa.2.0.copyload
  br i1 %.not.i.i.i.i, label %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i, !llvm.loop !1

_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i, %.lr.ph7.i.i
  %i.p = phi ptr [ %i.k, %.lr.ph7.i.i ], [ %i.o, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i ], [ %i.k, %.lr.ph.i.i.preheader.i.i ], [ %i.o, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.q = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %.sroa.046.0.copyload
  br i1 %.not.i.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i, label %.lr.ph7.i.i, !llvm.loop !3

_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i: ; preds = %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i ] ; 2 uses
  %i.r = add i64 %.0.lcssa.i.i, %i.g              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  %i.u = zext i32 %i.t to i64
  %i.v = icmp ugt i64 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i

bb.c:                                             ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w, i64 noundef %i.r, i64 noundef 8) #31
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !73 ; 2 uses
  %.pre35.i = zext i32 %.pre.i to i64
  %.pre131.pre = load ptr, ptr %0, align 8, !tbaa !72
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i: ; preds = %bb.c, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i
  %.pre131 = phi ptr [ %i.a, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i ], [ %.pre131.pre, %bb.c ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.g, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i ], [ %.pre35.i, %bb.c ]
  %i.x = phi i32 [ %i.f, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i ], [ %.pre.i, %bb.c ]
  br i1 %.not5.i.i, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_20filter_iterator_implIPKS3_ZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEEvEEvT_SF_.exit, label %.lr.ph8.i.i.i.i.i.i.i.i.preheader.i

.lr.ph8.i.i.i.i.i.i.i.i.preheader.i:              ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre131, i64 %.pre-phi.i
  br label %.lr.ph8.i.i.i.i.i.i.i.i.i

.lr.ph8.i.i.i.i.i.i.i.i.i:                        ; preds = %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph8.i.i.i.i.i.i.i.i.preheader.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.y, %.lr.ph8.i.i.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.z = phi ptr [ %i.ah, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.043.0.copyload, %.lr.ph8.i.i.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  store ptr %i.aa, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  %.not2.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %.sroa.2.0.copyload
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph8.i.i.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64
  %.not1.i.i3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not1.i.i3.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ae = load ptr, ptr %i.ag, align 8, !tbaa !64
  %.not1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %.sroa.2.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph8.i.i.i.i.i.i.i.i.i
  %i.ah = phi ptr [ %i.ac, %.lr.ph8.i.i.i.i.i.i.i.i.i ], [ %i.ag, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %.sroa.046.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_20filter_iterator_implIPKS3_ZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEEvEEvT_SF_.exit, label %.lr.ph8.i.i.i.i.i.i.i.i.i, !llvm.loop !28

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_20filter_iterator_implIPKS3_ZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEEvEEvT_SF_.exit: ; preds = %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i
  %i.ai = trunc i64 %.0.lcssa.i.i to i32
  %i.aj = add i32 %i.x, %i.ai
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre131, i64 %i.d
  br label %_ZSt4copyIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEPS4_ET0_T_SF_SE_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %.not5.i.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %bb.d, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i
  %.06.i = phi i64 [ %i.as, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i ], [ 0, %bb.d ]
  %i.al = phi ptr [ %i.ar, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i ], [ %.sroa.043.0.copyload, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  %.not2.i.i.i = icmp eq ptr %i.am, %.sroa.2.0.copyload
  br i1 %.not2.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph7.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %.not1.i.i2.i = icmp eq ptr %i.an, null
  br i1 %.not1.i.i2.i, label %.lr.ph.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i
  %i.ao = load ptr, ptr %i.aq, align 8, !tbaa !64
  %.not1.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not1.i.i.i, label %.lr.ph.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %i.ap = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.am, %.lr.ph.i.i.preheader.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %.sroa.2.0.copyload
  br i1 %.not.i.i.i, label %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i, label %.lr.ph.i.i.i, !llvm.loop !1

._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i, !llvm.loop !1

_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i: ; preds = %.lr.ph.i.i.i, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i, %.lr.ph.i.i.preheader.i, %.lr.ph7.i
  %i.ar = phi ptr [ %i.am, %.lr.ph7.i ], [ %i.aq, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i ], [ %i.am, %.lr.ph.i.i.preheader.i ], [ %i.aq, %.lr.ph.i.i.i ] ; 2 uses
  %i.as = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %.sroa.046.0.copyload
  br i1 %.not.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit, label %.lr.ph7.i, !llvm.loop !3

_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit: ; preds = %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.as, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i ] ; 9 uses
  %i.at = add i64 %.0.lcssa.i, %i.g               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !74
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp ugt i64 %i.at, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit

bb.e:                                             ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ay, i64 noundef %i.at, i64 noundef 8) #31
  %.pre = load ptr, ptr %0, align 8, !tbaa !72
  %.pre129 = load i32, ptr %i.e, align 8, !tbaa !73 ; 2 uses
  %.pre133 = zext i32 %.pre129 to i64
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit: ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit, %bb.e
  %.pre-phi = phi i64 [ %i.g, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit ], [ %.pre133, %bb.e ] ; 3 uses
  %i.az = phi i32 [ %i.f, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit ], [ %.pre129, %bb.e ] ; 2 uses
  %i.ba = phi ptr [ %i.a, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit ], [ %.pre, %bb.e ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.d ; 9 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.bd = ashr exact i64 %gepdiff, 3              ; 3 uses
  %.not = icmp ult i64 %i.bd, %.0.lcssa.i
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit
  %.neg = mul i64 %.0.lcssa.i, -8                 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %.neg ; 2 uses
  %.idx88.neg = shl nsw i64 %.0.lcssa.i, 3
  %i.bf = add nsw i64 %.0.lcssa.i, %.pre-phi      ; 2 uses
  %i.bg = load i32, ptr %i.au, align 4, !tbaa !74
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp ugt i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i33

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.bj, i64 noundef %i.bf, i64 noundef 8) #31
  %.pre.i35 = load i32, ptr %i.e, align 8, !tbaa !73 ; 2 uses
  %.pre12.i = zext i32 %.pre.i35 to i64
  %.pre130 = load ptr, ptr %0, align 8, !tbaa !72
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i33

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i33: ; preds = %bb.g, %bb.f
  %i.bk = phi ptr [ %i.ba, %bb.f ], [ %.pre130, %bb.g ]
  %.pre-phi.i34 = phi i64 [ %.pre-phi, %bb.f ], [ %.pre12.i, %bb.g ]
  %i.bl = phi i32 [ %i.az, %bb.f ], [ %.pre.i35, %bb.g ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.pre-phi.i34 ; 2 uses
  %i.bn = icmp sgt i64 %.0.lcssa.i, 1
  br i1 %i.bn, label %bb.h, label %bb.i, !prof !131

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i33
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bm, ptr nonnull align 8 %i.be, i64 %.idx88.neg, i1 false)
  %.pre11.i = load i32, ptr %i.e, align 8, !tbaa !73
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit.i33
  %i.bo = icmp eq i64 %.0.lcssa.i, 1
  br i1 %i.bo, label %bb.j, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !64
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !64
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.bq = phi i32 [ %.pre11.i, %bb.h ], [ %i.bl, %bb.i ], [ %i.bl, %bb.j ]
  %i.br = trunc i64 %.0.lcssa.i to i32
  %i.bs = add i32 %i.bq, %i.br
  store i32 %i.bs, ptr %i.e, align 8, !tbaa !73
  %i.bt = sub i64 %.neg, %i.d
  %gepdiff91 = add i64 %i.bt, %.idx               ; 3 uses
  %i.bu = ashr exact i64 %gepdiff91, 3            ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1
  br i1 %i.bv, label %bb.k, label %bb.l, !prof !131

bb.k:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit
  %i.bw = sub nsw i64 0, %i.bu
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.bb, i64 %gepdiff91, i1 false)
  br label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendISt13move_iteratorIPS3_EvEEvT_S9_.exit
  %i.by = icmp eq i64 %gepdiff91, 8
  br i1 %i.by, label %bb.m, label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !64
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !64
  br label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit: ; preds = %bb.k, %bb.l, %bb.m
  br i1 %.not5.i.i, label %_ZSt4copyIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEPS4_ET0_T_SF_SE_.exit, label %.lr.ph8.i.i.i.i.i

.lr.ph8.i.i.i.i.i:                                ; preds = %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.cd, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i ], [ %i.bb, %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %i.cb = phi ptr [ %i.cj, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i ], [ %.sroa.043.0.copyload, %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !64
  store ptr %i.cc, ptr %.07.i.i.i.i.i, align 8, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 5 uses
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %.sroa.2.0.copyload
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i:                   ; preds = %.lr.ph8.i.i.i.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !64
  %.not1.i.i3.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not1.i.i3.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cg = load ptr, ptr %i.ci, align 8, !tbaa !64
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not1.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ce, %.lr.ph.i.i.preheader.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %.sroa.2.0.copyload
  br i1 %.not.i.i.i.i.i.i.i, label %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i, !llvm.loop !1

_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i, %.lr.ph8.i.i.i.i.i
  %i.cj = phi ptr [ %i.ce, %.lr.ph8.i.i.i.i.i ], [ %i.ci, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i ], [ %i.ce, %.lr.ph.i.i.preheader.i.i.i.i.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %.sroa.046.0.copyload
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEPS4_ET0_T_SF_SE_.exit, label %.lr.ph8.i.i.i.i.i, !llvm.loop !28

bb.n:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit
  %i.ck = trunc i64 %.0.lcssa.i to i32
  %i.cl = add i32 %i.az, %i.ck                    ; 2 uses
  store i32 %i.cl, ptr %i.e, align 8, !tbaa !73
  %.not.i.i36 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i36, label %._crit_edge, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.n
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cm
  %i.co = sub nsw i64 0, %i.bd
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 8 %i.bb, i64 %gepdiff, i1 false)
  br label %.lr.ph112

._crit_edge:                                      ; preds = %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit, %bb.n
  %.lcssa108 = phi ptr [ %.sroa.043.0.copyload, %bb.n ], [ %i.dh, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit ] ; 3 uses
  store ptr %.lcssa108, ptr %2, align 8
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %.lcssa108, %.sroa.046.0.copyload
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt4copyIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEPS4_ET0_T_SF_SE_.exit, label %.lr.ph8.i.i.i.i.i.i.i.i

.lr.ph8.i.i.i.i.i.i.i.i:                          ; preds = %._crit_edge, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.cq = phi ptr [ %i.cy, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i ], [ %.lcssa108, %._crit_edge ] ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !64
  store ptr %i.cr, ptr %.07.i.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 5 uses
  %.not2.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %.sroa.2.0.copyload
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph8.i.i.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !64
  %.not1.i.i3.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not1.i.i3.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cv = load ptr, ptr %i.cx, align 8, !tbaa !64
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cw = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %.sroa.2.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  br label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i, %.lr.ph8.i.i.i.i.i.i.i.i
  %i.cy = phi ptr [ %i.ct, %.lr.ph8.i.i.i.i.i.i.i.i ], [ %i.cx, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge.i.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %.sroa.046.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt4copyIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEPS4_ET0_T_SF_SE_.exit, label %.lr.ph8.i.i.i.i.i.i.i.i, !llvm.loop !28

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit
  %.0111 = phi ptr [ %i.db, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit ], [ %i.bb, %.lr.ph112.preheader ] ; 2 uses
  %.028110 = phi i64 [ %i.di, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit ], [ %i.bd, %.lr.ph112.preheader ]
  %i.cz = phi ptr [ %i.dh, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.043.0.copyload, %.lr.ph112.preheader ] ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !64
  store ptr %i.da, ptr %.0111, align 8, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 5 uses
  %.not2.i.i = icmp eq ptr %i.dc, %.sroa.2.0.copyload
  br i1 %.not2.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %.lr.ph112
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !64
  %.not1.i.i105 = icmp eq ptr %i.dd, null
  br i1 %.not1.i.i105, label %.lr.ph, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit

.lr.ph.i.i39:                                     ; preds = %.lr.ph
  %i.de = load ptr, ptr %i.dg, align 8, !tbaa !64
  %.not1.i.i = icmp eq ptr %i.de, null
  br i1 %.not1.i.i, label %.lr.ph, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.i39.preheader, %.lr.ph.i.i39
  %i.df = phi ptr [ %i.dg, %.lr.ph.i.i39 ], [ %i.dc, %.lr.ph.i.i39.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 5 uses
  %.not.i.i40 = icmp eq ptr %i.dg, %.sroa.2.0.copyload
  br i1 %.not.i.i40, label %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge, label %.lr.ph.i.i39, !llvm.loop !1

._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit, !llvm.loop !1

_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i39, %.lr.ph.i.i39.preheader, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge, %.lr.ph112
  %i.dh = phi ptr [ %i.dc, %.lr.ph112 ], [ %i.dg, %._ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.loopexit_crit_edge ], [ %i.dc, %.lr.ph.i.i39.preheader ], [ %i.dg, %.lr.ph.i.i39 ] ; 2 uses
  %i.di = add i64 %.028110, -1                    ; 2 uses
  %.not32 = icmp eq i64 %i.di, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph112, !llvm.loop !1511

_ZSt4copyIN4llvm20filter_iterator_implIPKPN4mlir9OperationEZNKS2_9transform14TransformState13getPayloadOpsENS2_5ValueEEUlS4_E_St26bidirectional_iterator_tagEEPS4_ET0_T_SF_SE_.exit: ; preds = %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i, %._crit_edge, %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_20filter_iterator_implIPKS3_ZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEEvEEvT_SF_.exit
  %.1 = phi ptr [ %i.ak, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_20filter_iterator_implIPKS3_ZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEEvEEvT_SF_.exit ], [ %i.bb, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i.i.i ], [ %i.bb, %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit ], [ %i.bb, %._crit_edge ], [ %i.bb, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_4test43TestReportNumberOfTrackedHandlesNestedUnder5applyERNS1_9transform17TransformRewriterERNS9_16TransformResultsERNS9_14TransformStateEE3$_0EEvlS3_"(i64 noundef %0, ptr noundef %1) #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.29", align 8 ; 8 uses
end_hunk_0
