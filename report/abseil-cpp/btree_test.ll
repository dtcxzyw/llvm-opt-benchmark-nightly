Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 644
loop-unroll.NumUnrolled: 782
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISD_ESaISD_ESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSD_PSN_EESQ_EENS_15AssertionResultEPKcST_RKT_RKT0_:bb.a
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISC_ESaISC_ESt17integral_constantIiLi256EESG_IbLb1EEEEEEERKSC_PSM_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISC_ESaISC_ESt17integral_constantIiLi256EESG_IbLb1EEEEEEERKSC_PSM_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISD_ESaISD_ESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSD_PSN_EESQ_EESD_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISD_ESaISD_ESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSD_PSN_EESQ_EESD_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISD_ESaISD_ESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSD_PSN_EESQ_EESD_RKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !23
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.f = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISD_ESaISD_ESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSD_PSN_EESQ_EESD_RKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.r = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11equal_rangeIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EESQ_ERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.647") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noalias !4154 ; 6 uses
  %i.c = load ptr, ptr %2, align 8, !noalias !4154 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.07.0.in.i.i = phi ptr [ %1, %bb.a ], [ %i.ac, %bb.d ]
  %.0.i.i = phi i1 [ false, %bb.a ], [ %i.z, %bb.d ] ; 3 uses
  %.sroa.07.0.i.i = load ptr, ptr %.sroa.07.0.in.i.i, align 8, !tbaa !3916, !noalias !4154 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23, !noalias !4154 ; 3 uses
  %.not26.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not26.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i ] ; 2 uses
  %.01928.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i ], [ %.120.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i ] ; 2 uses
  %.02127.i.i.i.i.i = phi i8 [ 1, %.lr.ph.i.i.i.i.i ], [ %.122.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i ]
  %i.h = add i64 %.01928.i.i.i.i.i, %.029.i.i.i.i.i
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !4154 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.l) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !4154
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.c, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #37, !noalias !4154 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c
  %i.q = sub i64 %i.l, %i.b
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %i.s = add nuw i64 %i.i, 1
  %.not25.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i, 0
  %.122.i.i.i.i.i = select i1 %.not25.i.i.i.i.i, i8 0, i8 %.02127.i.i.i.i.i ; 3 uses
  %.120.i.i.i.i.i = select i1 %i.r, i64 %.01928.i.i.i.i.i, i64 %i.i ; 4 uses
  %.1.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %.029.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, %.120.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i, label %bb.c, !llvm.loop !3917

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23, !noalias !4154
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23, !noalias !4154
  %.not18.i.i = icmp eq i8 %i.w, 0
  br i1 %.not18.i.i, label %bb.d, label %.thread.i.i.preheader

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.x = phi i64 [ 0, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i ], [ %.120.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i ]
  %.021.lcssa.i.i.i15.i.i = phi i8 [ 1, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i ], [ %.122.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i ]
  %i.y = icmp eq i8 %.021.lcssa.i.i.i15.i.i, 0
  %i.z = select i1 %.0.i.i, i1 true, i1 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 240
  %i.ab = and i64 %i.x, 255
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  br label %bb.b, !llvm.loop !3930

bb.e:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.ad = trunc i64 %.120.i.i.i.i.i to i32        ; 2 uses
  %i.ae = icmp eq i8 %.122.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit.thread, label %.thread.i.i.preheader

.thread.i.i.preheader:                            ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i, %bb.e
  %.sroa.7.0.i.i.i.ph = phi i32 [ %i.ad, %bb.e ], [ 0, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i ]
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.preheader, %bb.f
  %.sroa.7.0.i.i.i = phi i32 [ %i.al, %bb.f ], [ %.sroa.7.0.i.i.i.ph, %.thread.i.i.preheader ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.am, %bb.f ], [ %.sroa.07.0.i.i, %.thread.i.i.preheader ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23, !noalias !4154 ; 2 uses
  %i.ah = zext i8 %i.ag to i32
  %i.ai = icmp eq i32 %.sroa.7.0.i.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit

bb.f:                                             ; preds = %.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23, !noalias !4154
  %i.al = zext i8 %i.ak to i32
  %i.am = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !3916, !noalias !4154 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23, !noalias !4154
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %.split, !llvm.loop !3931

.split:                                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3916, !noalias !4159 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23, !noalias !4159 ; 2 uses
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  br i1 %.0.i.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit.thread, label %.critedge

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit: ; preds = %.thread.i.i
  br i1 %.0.i.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit.thread, label %.critedge

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit.thread: ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit, %.split, %bb.e
  %i.au = phi i8 [ %i.as, %.split ], [ %i.ag, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit ], [ %i.e, %bb.e ]
  %.pn4.i.i67 = phi i32 [ %i.at, %.split ], [ %.sroa.7.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit ], [ %i.ad, %bb.e ] ; 6 uses
  %.pn6.i.i66 = phi ptr [ %i.aq, %.split ], [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit ], [ %.sroa.07.0.i.i, %bb.e ] ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pn6.i.i66, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23
  %.not.i.i.i14 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i14, label %.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit.thread
  %i.ax = add nsw i32 %.pn4.i.i67, 1              ; 3 uses
  %i.ay = zext i8 %i.au to i32
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.01521.i.i.i.i = phi ptr [ %i.ba, %bb.h ], [ %.pn6.i.i66, %bb.g ] ; 2 uses
  %i.ba = load ptr, ptr %.01521.i.i.i.i, align 8, !tbaa !3916 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %.not17.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not17.i.i.i.i, label %bb.h, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !23  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23
  %i.bh = icmp eq i8 %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %.critedge.loopexit23.i.i.i.i, !llvm.loop !4084

.thread.i.i.i:                                    ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn6.i.i66, i64 240
  %i.bj = add i32 %.pn4.i.i67, 1
  %i.bk = and i32 %i.bj, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bl
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.thread.i.i.i
  %.116.in.i.i.i.i = phi ptr [ %i.bm, %.thread.i.i.i ], [ %i.bp, %bb.i ]
  %.116.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i, align 8, !tbaa !3916 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !23
  %.not.i.i.i.i.i15 = icmp eq i8 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 240
  br i1 %.not.i.i.i.i.i15, label %bb.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i, !llvm.loop !4085

.critedge.loopexit23.i.i.i.i:                     ; preds = %bb.h
  %i.bq = zext i8 %i.be to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.i, %.critedge.loopexit23.i.i.i.i, %bb.g
  %.sroa.061.1 = phi ptr [ %.116.i.i.i.i, %bb.i ], [ %.pn6.i.i66, %bb.g ], [ %i.ba, %.critedge.loopexit23.i.i.i.i ], [ %.pn6.i.i66, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.662.0 = phi i32 [ 0, %bb.i ], [ %i.ax, %bb.g ], [ %i.bq, %.critedge.loopexit23.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !3916 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = icmp eq ptr %.sroa.061.1, %i.bs
  %i.bx = icmp eq i32 %.sroa.662.0, %i.bv
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i
  %i.bz = sext i32 %.sroa.662.0 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.061.1, i64 16
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.b) ; 2 uses
  %i.ce = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ce, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.j
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.cg = tail call i32 @memcmp(ptr noundef %i.c, ptr noundef %i.cf, i64 noundef %.sroa.speculated.i.i.i) #37 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.j
  %i.ci = sub i64 %i.b, %i.cd
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i4.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ %i.cg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %i.cj = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.cj, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit, %bb.l
  %.sroa.0.0.in.i.i = phi ptr [ %i.df, %bb.l ], [ %1, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !3916 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.preheader
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i20
  %.014.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i20 ], [ %.1.i.i.i.i.i21, %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i ] ; 2 uses
  %.01013.i.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i20 ], [ %.111.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i ] ; 2 uses
  %i.co = add i64 %.01013.i.i.i.i.i, %.014.i.i.i.i.i
  %i.cp = lshr i64 %i.co, 1                       ; 3 uses
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.b) ; 2 uses
  %i.ct = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ct, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.cv = tail call i32 @memcmp(ptr noundef %i.c, ptr noundef %i.cu, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #37 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.k
  %i.cx = sub i64 %i.b, %i.cs
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ], [ %i.cv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.cy = icmp sgt i32 %.0.i.i.i.i.i.i.i.i, -1    ; 2 uses
  %i.cz = add nuw i64 %i.cp, 1
  %.111.i.i.i.i.i = select i1 %i.cy, i64 %.01013.i.i.i.i.i, i64 %i.cp ; 3 uses
  %.1.i.i.i.i.i21 = select i1 %i.cy, i64 %i.cz, i64 %.014.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq i64 %.1.i.i.i.i.i21, %.111.i.i.i.i.i
  br i1 %.not.i.i.i.i.i22, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i, label %bb.k, !llvm.loop !3937

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i, %.preheader
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader ], [ %.111.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.db = load i8, ptr %i.da, align 1, !tbaa !23
  %.not.i.i23 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i23, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.dc = trunc i64 %.0.lcssa.i.i.i.i.i to i32
  br label %bb.m

bb.l:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 240
  %i.de = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  br label %.preheader, !llvm.loop !3938

bb.m:                                             ; preds = %bb.n, %.preheader.i.i
  %.sroa.7.0.i.i.i24 = phi i32 [ %i.dm, %bb.n ], [ %i.dc, %.preheader.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i25 = phi ptr [ %i.dn, %bb.n ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i25, i64 10
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !23
  %i.di = zext i8 %i.dh to i32
  %i.dj = icmp eq i32 %.sroa.7.0.i.i.i24, %i.di
  br i1 %i.dj, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i25, i64 8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !23
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load ptr, ptr %.sroa.0.0.i.i.i25, align 8, !tbaa !3916 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 11
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %.not.i.i.i28 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i28, label %bb.m, label %.critedge, !llvm.loop !3931

.critedge:                                        ; preds = %bb.m, %bb.n, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit, %.split
  %.pn6.i.i66.sink = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit ], [ %.pn6.i.i66, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.aq, %.split ], [ %.pn6.i.i66, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i ], [ %.pn6.i.i66, %bb.n ], [ %.pn6.i.i66, %bb.m ]
  %.pn4.i.i67.sink = phi i32 [ %.sroa.7.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit ], [ %.pn4.i.i67, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.at, %.split ], [ %.pn4.i.i67, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i ], [ %.pn4.i.i67, %bb.n ], [ %.pn4.i.i67, %bb.m ]
  %.sroa.061.1.sink = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit ], [ %.sroa.061.1, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.aq, %.split ], [ %.sroa.061.1, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i ], [ %.sroa.0.0.i.i.i25, %bb.m ], [ %i.bs, %bb.n ]
  %.sroa.662.0.sink = phi i32 [ %.sroa.7.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE17lower_bound_equalIS9_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeISG_EERKS9_PSN_EEbERKT_.exit ], [ %.sroa.662.0, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessIS9_ESaIS9_ESt17integral_constantIiLi256EESD_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.at, %.split ], [ %.sroa.662.0, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISA_ESaISA_ESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSA_PSJ_EppEv.exit.i ], [ %.sroa.7.0.i.i.i24, %bb.m ], [ %i.bv, %bb.n ]
  store ptr %.pn6.i.i66.sink, ptr %0, align 8
  %.sroa.8.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.pn4.i.i67.sink, ptr %.sroa.8.0..sroa_idx43, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.061.1.sink, ptr %i.dq, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.662.0.sink, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISD_ESaISD_ESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSD_PSM_EENS5_IKSL_SN_SO_EEEENS_15AssertionResultEPKcSU_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorINS3_10btree_nodeINS3_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISC_ESaISC_ESt17integral_constantIiLi256EESG_IbLb1EEEEEEERKSC_PSL_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISC_ESaISC_ESt17integral_constantIiLi256EESG_IbLb1EEEEEEERKSC_PSM_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt4lessISD_ESaISD_ESt17integral_constantIiLi256EESH_IbLb1EEEEEEERKSD_PSN_EENS5_ISL_SO_SP_EEEESD_RKT_RKT0_.exit unwind label %bb.c
end_hunk_0
begin_hunk_1_@_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_JSt4lessISD_ESaISt4pairIKSD_SD_EESt17integral_constantIiLi256EESK_IbLb1EEEEEEERKSI_PSQ_EEST_EENS_15AssertionResultEPKcSW_RKT_RKT0_:bb.a
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_JSt4lessISC_ESaISt4pairIKSC_SC_EESt17integral_constantIiLi256EESJ_IbLb1EEEEEEERKSH_PSP_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_JSt4lessISC_ESaISt4pairIKSC_SC_EESt17integral_constantIiLi256EESJ_IbLb1EEEEEEERKSH_PSP_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_JSt4lessISD_ESaISt4pairIKSD_SD_EESt17integral_constantIiLi256EESK_IbLb1EEEEEEERKSI_PSQ_EEST_EESD_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_JSt4lessISD_ESaISt4pairIKSD_SD_EESt17integral_constantIiLi256EESK_IbLb1EEEEEEERKSI_PSQ_EEST_EESD_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_JSt4lessISD_ESaISt4pairIKSD_SD_EESt17integral_constantIiLi256EESK_IbLb1EEEEEEERKSI_PSQ_EEST_EESD_RKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !23
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.f = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_JSt4lessISD_ESaISt4pairIKSD_SD_EESt17integral_constantIiLi256EESK_IbLb1EEEEEEERKSI_PSQ_EEST_EESD_RKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.r = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11equal_rangeIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EESR_ERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.764") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noalias !5456 ; 6 uses
  %i.c = load ptr, ptr %2, align 8, !noalias !5456 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.07.0.in.i.i = phi ptr [ %1, %bb.a ], [ %i.ac, %bb.d ]
  %.0.i.i = phi i1 [ false, %bb.a ], [ %i.z, %bb.d ] ; 3 uses
  %.sroa.07.0.i.i = load ptr, ptr %.sroa.07.0.in.i.i, align 8, !tbaa !5218, !noalias !5456 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23, !noalias !5456 ; 3 uses
  %.not26.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not26.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i ] ; 2 uses
  %.01928.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i ], [ %.120.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i ] ; 2 uses
  %.02127.i.i.i.i.i = phi i8 [ 1, %.lr.ph.i.i.i.i.i ], [ %.122.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i ]
  %i.h = add i64 %.01928.i.i.i.i.i, %.029.i.i.i.i.i
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !5456 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.l) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !5456
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.c, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #37, !noalias !5456 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c
  %i.q = sub i64 %i.l, %i.b
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %i.s = add nuw i64 %i.i, 1
  %.not25.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i, 0
  %.122.i.i.i.i.i = select i1 %.not25.i.i.i.i.i, i8 0, i8 %.02127.i.i.i.i.i ; 3 uses
  %.120.i.i.i.i.i = select i1 %i.r, i64 %.01928.i.i.i.i.i, i64 %i.i ; 4 uses
  %.1.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %.029.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, %.120.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i, label %bb.c, !llvm.loop !5219

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23, !noalias !5456
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23, !noalias !5456
  %.not18.i.i = icmp eq i8 %i.w, 0
  br i1 %.not18.i.i, label %bb.d, label %.thread.i.i.preheader

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.x = phi i64 [ 0, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i ], [ %.120.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i ]
  %.021.lcssa.i.i.i15.i.i = phi i8 [ 1, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i ], [ %.122.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i ]
  %i.y = icmp eq i8 %.021.lcssa.i.i.i15.i.i, 0
  %i.z = select i1 %.0.i.i, i1 true, i1 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 272
  %i.ab = and i64 %i.x, 255
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  br label %bb.b, !llvm.loop !5232

bb.e:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.ad = trunc i64 %.120.i.i.i.i.i to i32        ; 2 uses
  %i.ae = icmp eq i8 %.122.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit.thread, label %.thread.i.i.preheader

.thread.i.i.preheader:                            ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i, %bb.e
  %.sroa.7.0.i.i.i.ph = phi i32 [ %i.ad, %bb.e ], [ 0, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11lower_boundIS9_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i.i ]
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.preheader, %bb.f
  %.sroa.7.0.i.i.i = phi i32 [ %i.al, %bb.f ], [ %.sroa.7.0.i.i.i.ph, %.thread.i.i.preheader ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.am, %bb.f ], [ %.sroa.07.0.i.i, %.thread.i.i.preheader ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23, !noalias !5456 ; 2 uses
  %i.ah = zext i8 %i.ag to i32
  %i.ai = icmp eq i32 %.sroa.7.0.i.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit

bb.f:                                             ; preds = %.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23, !noalias !5456
  %i.al = zext i8 %i.ak to i32
  %i.am = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !5218, !noalias !5456 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23, !noalias !5456
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %.split, !llvm.loop !5233

.split:                                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !5218, !noalias !5461 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23, !noalias !5461 ; 2 uses
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  br i1 %.0.i.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit.thread, label %.critedge

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit: ; preds = %.thread.i.i
  br i1 %.0.i.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit.thread, label %.critedge

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit.thread: ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit, %.split, %bb.e
  %i.au = phi i8 [ %i.as, %.split ], [ %i.ag, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit ], [ %i.e, %bb.e ]
  %.pn4.i.i67 = phi i32 [ %i.at, %.split ], [ %.sroa.7.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit ], [ %i.ad, %bb.e ] ; 6 uses
  %.pn6.i.i66 = phi ptr [ %i.aq, %.split ], [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit ], [ %.sroa.07.0.i.i, %bb.e ] ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pn6.i.i66, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23
  %.not.i.i.i14 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i14, label %.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit.thread
  %i.ax = add nsw i32 %.pn4.i.i67, 1              ; 3 uses
  %i.ay = zext i8 %i.au to i32
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.01521.i.i.i.i = phi ptr [ %i.ba, %bb.h ], [ %.pn6.i.i66, %bb.g ] ; 2 uses
  %i.ba = load ptr, ptr %.01521.i.i.i.i, align 8, !tbaa !5218 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %.not17.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not17.i.i.i.i, label %bb.h, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !23  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23
  %i.bh = icmp eq i8 %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %.critedge.loopexit23.i.i.i.i, !llvm.loop !5386

.thread.i.i.i:                                    ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn6.i.i66, i64 272
  %i.bj = add i32 %.pn4.i.i67, 1
  %i.bk = and i32 %i.bj, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bl
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.thread.i.i.i
  %.116.in.i.i.i.i = phi ptr [ %i.bm, %.thread.i.i.i ], [ %i.bp, %bb.i ]
  %.116.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i, align 8, !tbaa !5218 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !23
  %.not.i.i.i.i.i15 = icmp eq i8 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 272
  br i1 %.not.i.i.i.i.i15, label %bb.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i, !llvm.loop !5387

.critedge.loopexit23.i.i.i.i:                     ; preds = %bb.h
  %i.bq = zext i8 %i.be to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.i, %.critedge.loopexit23.i.i.i.i, %bb.g
  %.sroa.061.1 = phi ptr [ %.116.i.i.i.i, %bb.i ], [ %.pn6.i.i66, %bb.g ], [ %i.ba, %.critedge.loopexit23.i.i.i.i ], [ %.pn6.i.i66, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.662.0 = phi i32 [ 0, %bb.i ], [ %i.ax, %bb.g ], [ %i.bq, %.critedge.loopexit23.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !5218 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = icmp eq ptr %.sroa.061.1, %i.bs
  %i.bx = icmp eq i32 %.sroa.662.0, %i.bv
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i
  %i.bz = sext i32 %.sroa.662.0 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.061.1, i64 16
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.b) ; 2 uses
  %i.ce = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ce, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.j
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.cg = tail call i32 @memcmp(ptr noundef %i.c, ptr noundef %i.cf, i64 noundef %.sroa.speculated.i.i.i) #37 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.j
  %i.ci = sub i64 %i.b, %i.cd
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i4.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ %i.cg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %i.cj = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.cj, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit, %bb.l
  %.sroa.0.0.in.i.i = phi ptr [ %i.df, %bb.l ], [ %1, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !5218 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.preheader
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i20
  %.014.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i20 ], [ %.1.i.i.i.i.i21, %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i ] ; 2 uses
  %.01013.i.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i20 ], [ %.111.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i ] ; 2 uses
  %i.co = add i64 %.01013.i.i.i.i.i, %.014.i.i.i.i.i
  %i.cp = lshr i64 %i.co, 1                       ; 3 uses
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %i.cn, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.b) ; 2 uses
  %i.ct = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ct, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.cv = tail call i32 @memcmp(ptr noundef %i.c, ptr noundef %i.cu, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #37 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.k
  %i.cx = sub i64 %i.b, %i.cs
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ], [ %i.cv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.cy = icmp sgt i32 %.0.i.i.i.i.i.i.i.i, -1    ; 2 uses
  %i.cz = add nuw i64 %i.cp, 1
  %.111.i.i.i.i.i = select i1 %i.cy, i64 %.01013.i.i.i.i.i, i64 %i.cp ; 3 uses
  %.1.i.i.i.i.i21 = select i1 %i.cy, i64 %i.cz, i64 %.014.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq i64 %.1.i.i.i.i.i21, %.111.i.i.i.i.i
  br i1 %.not.i.i.i.i.i22, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i, label %bb.k, !llvm.loop !5239

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i, %.preheader
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader ], [ %.111.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal19upper_bound_adapterINS1_22StringBtreeDefaultLessEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEbRKT_RKT0_.exit.i.i.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.db = load i8, ptr %i.da, align 1, !tbaa !23
  %.not.i.i23 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i23, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.dc = trunc i64 %.0.lcssa.i.i.i.i.i to i32
  br label %bb.m

bb.l:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE11upper_boundIS9_EEmRKT_RKNS1_22StringBtreeDefaultLessE.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 272
  %i.de = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  br label %.preheader, !llvm.loop !5240

bb.m:                                             ; preds = %bb.n, %.preheader.i.i
  %.sroa.7.0.i.i.i24 = phi i32 [ %i.dm, %bb.n ], [ %i.dc, %.preheader.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i25 = phi ptr [ %i.dn, %bb.n ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i25, i64 10
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !23
  %i.di = zext i8 %i.dh to i32
  %i.dj = icmp eq i32 %.sroa.7.0.i.i.i24, %i.di
  br i1 %i.dj, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i25, i64 8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !23
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load ptr, ptr %.sroa.0.0.i.i.i25, align 8, !tbaa !5218 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 11
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %.not.i.i.i28 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i28, label %bb.m, label %.critedge, !llvm.loop !5233

.critedge:                                        ; preds = %bb.m, %bb.n, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit, %.split
  %.pn6.i.i66.sink = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit ], [ %.pn6.i.i66, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.aq, %.split ], [ %.pn6.i.i66, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i ], [ %.pn6.i.i66, %bb.n ], [ %.pn6.i.i66, %bb.m ]
  %.pn4.i.i67.sink = phi i32 [ %.sroa.7.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit ], [ %.pn4.i.i67, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.at, %.split ], [ %.pn4.i.i67, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i ], [ %.pn4.i.i67, %bb.n ], [ %.pn4.i.i67, %bb.m ]
  %.sroa.061.1.sink = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit ], [ %.sroa.061.1, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.aq, %.split ], [ %.sroa.061.1, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i ], [ %.sroa.0.0.i.i.i25, %bb.m ], [ %i.bs, %bb.n ]
  %.sroa.662.0.sink = phi i32 [ %.sroa.7.0.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE17lower_bound_equalIS9_EESC_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSE_PSE_EEbERKT_.exit ], [ %.sroa.662.0, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEE12compare_keysIS9_S9_EEbRKT_RKT0_.exit ], [ %i.at, %.split ], [ %.sroa.662.0, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JSt4lessISA_ESaISt4pairIKSA_SA_EESt17integral_constantIiLi256EESH_IbLb1EEEEEEERSF_PSF_EppEv.exit.i ], [ %.sroa.7.0.i.i.i24, %bb.m ], [ %i.bv, %bb.n ]
  store ptr %.pn6.i.i66.sink, ptr %0, align 8
  %.sroa.8.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.pn4.i.i67.sink, ptr %.sroa.8.0..sroa_idx43, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.061.1.sink, ptr %i.dq, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.662.0.sink, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_JSt4lessISD_ESaISt4pairIKSD_SD_EESt17integral_constantIiLi256EESK_IbLb1EEEEEEERSI_PSI_EENS5_IKSO_RKSI_PST_EEEENS_15AssertionResultEPKcSZ_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorINS3_10btree_nodeINS3_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_JSt4lessISC_ESaISt4pairIKSC_SC_EESt17integral_constantIiLi256EESJ_IbLb1EEEEEEERSH_PSH_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_JSt4lessISC_ESaISt4pairIKSC_SC_EESt17integral_constantIiLi256EESJ_IbLb1EEEEEEERKSH_PSP_EEEESC_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_JSt4lessISD_ESaISt4pairIKSD_SD_EESt17integral_constantIiLi256EESK_IbLb1EEEEEEERKSI_PSQ_EENS5_ISO_RSI_PSI_EEEESD_RKT_RKT0_.exit unwind label %bb.c
end_hunk_1
