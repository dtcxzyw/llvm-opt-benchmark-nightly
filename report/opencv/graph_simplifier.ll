Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_simplifier?download=true
inline.NumInlined: 1552
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !43
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.h, ptr %i.a, align 8, !tbaa !45
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !27
  %i.k = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.k, ptr %i.e, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !28
  store i8 %i.m, ptr %i.l, align 1, !tbaa !28
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #22
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !44
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.v, align 8, !tbaa !109
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !93 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !93  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !248

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !27
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #23 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph65

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEET_SO_SO_T0_.exit"
  %i.h = icmp eq i64 %i.cz, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph65, !llvm.loop !249

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dx, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 2           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.035.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.035.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !40
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !40
  %i.ac = icmp sgt i32 %i.aa, %i.ab
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %.035.i.us.i.i.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !40
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !250

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, %i.t
  br i1 %i.aj, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !40
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.us.i.i.i", !llvm.loop !251

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store i32 %i.t, ptr %i.am, align 4, !tbaa !40
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.an = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !252

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bm, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !40 ; 2 uses
  %i.aq = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %i.au
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !40
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !40
  %i.ay = icmp sgt i32 %i.aw, %i.ax
  %spec.select.i.i.i.i = select i1 %i.ay, i64 %i.au, i64 %i.as ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %.035.i.i.i.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !40
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !250

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i32, ptr %i.q, align 4, !tbaa !40
  store i32 %i.be, ptr %i.r, align 4, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !40 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, %i.ap
  br i1 %i.bi, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !40
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.i.i.i", !llvm.loop !251

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.ap, ptr %i.bl, align 4, !tbaa !40
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bm = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !252

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_T0_SP_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_RT0_.exit.i.i" ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40 ; 2 uses
  %i.bp = load i32, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !40
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 2                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = icmp sgt i64 %i.bs, 2
  br i1 %i.bv, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i17.i
  %.035.i.i.i18.i = phi i64 [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bw = shl i64 %.035.i.i.i18.i, 1              ; 2 uses
  %i.bx = add i64 %i.bw, 2                        ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %i.bx
  %i.bz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %i.bz
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !40
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cd = icmp sgt i32 %i.cb, %i.cc
  %spec.select.i.i.i19.i = select i1 %i.cd, i64 %i.bz, i64 %i.bx ; 4 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %spec.select.i.i.i19.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40
  %i.cg = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %.035.i.i.i18.i
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !40
  %i.ch = icmp slt i64 %spec.select.i.i.i19.i, %i.bu
  br i1 %i.ch, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i, !llvm.loop !250

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i17.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ] ; 5 uses
  %i.ci = and i64 %i.br, 4
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ck = add nsw i64 %i.bs, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cl
  br i1 %i.cm, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !40
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !40
  br label %.lr.ph.i.i.i.i13.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i.preheader

.lr.ph.i.i.i.i13.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i14.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.co, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %.lr.ph.i.i.i.i13.i.preheader, %bb.i
  %.010.i.i.i.i14.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i14.i.ph, %.lr.ph.i.i.i.i13.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %.0911.i.i56.i.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !40 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, %i.bo
  br i1 %i.cu, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.cv = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %.010.i.i.i.i14.i
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !40
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i, !llvm.loop !251

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i13.i, %bb.h
  %.0.lcssa.i.i.i.i16.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i14.i, %.lr.ph.i.i.i.i13.i ], [ 0, %bb.i ]
  %i.cw = getelementptr inbounds [4 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i16.i
  store i32 %i.bo, ptr %i.cw, align 4, !tbaa !40
  %i.cx = icmp sgt i64 %i.br, 4
  br i1 %i.cx, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !253

.lr.ph65:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2664 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02763 = phi i64 [ %i.cz, %bb.b ], [ %2, %.lr.ph ]
  %i.cy = phi i64 [ %i.dy, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cz = add nsw i64 %.02763, -1                 ; 3 uses
  %i.da = lshr i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.fr29, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %storemerge2664, i64 -4 ; 3 uses
  %i.dd = load i32, ptr %i.f, align 4, !tbaa !40  ; 5 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !40 ; 5 uses
  %i.df = icmp sgt i32 %i.dd, %i.de
  %i.dg = load i32, ptr %i.dc, align 4, !tbaa !40 ; 6 uses
  br i1 %i.df, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph65
  %i.dh = icmp sgt i32 %i.de, %i.dg
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.di = load i32, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.de, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.di, ptr %i.db, align 4, !tbaa !40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dj = icmp sgt i32 %i.dd, %i.dg
  %i.dk = load i32, ptr %.fr29, align 4, !tbaa !40 ; 2 uses
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.dg, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.dk, ptr %i.dc, align 4, !tbaa !40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %i.dd, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.dk, ptr %i.f, align 4, !tbaa !40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph65
  %i.dl = icmp sgt i32 %i.dd, %i.dg
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = load i32, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.dd, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.dm, ptr %i.f, align 4, !tbaa !40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dn = icmp sgt i32 %i.de, %i.dg
  %i.do = load i32, ptr %.fr29, align 4, !tbaa !40 ; 2 uses
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.dg, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.do, ptr %i.dc, align 4, !tbaa !40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i32 %i.de, ptr %.fr29, align 4, !tbaa !40
  store i32 %i.do, ptr %i.db, align 4, !tbaa !40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader", %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.ds, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2664, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader" ]
  %i.dp = load i32, ptr %.fr29, align 4, !tbaa !40 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i" ], [ %i.ds, %bb.t ] ; 8 uses
  %i.dq = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !40 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.dr, label %bb.t, label %.preheader.i.i, !llvm.loop !254

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.dt = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !40 ; 2 uses
  %i.du = icmp sgt i32 %i.dp, %i.dt
  br i1 %i.du, label %.preheader.i.i, label %bb.u, !llvm.loop !255

bb.u:                                             ; preds = %.preheader.i.i
  %i.dv = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dv, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEET_SO_SO_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i32 %i.dt, ptr %.sroa.010.1.i.i, align 4, !tbaa !40
  store i32 %i.dq, ptr %.sroa.0.1.i.i, align 4, !tbaa !40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_SO_T0_.exit.i", !llvm.loop !256

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEET_SO_SO_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2664, i64 noundef %i.cz)
  %i.dw = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dx = sub i64 %i.dw, %i.a                     ; 2 uses
  %i.dy = ashr exact i64 %i.dx, 2                 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 16
  br i1 %i.dz, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !249

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEET_SO_SO_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN2cv3dnn17simplifySubgraphsERKNS9_3PtrINSA_18ImportGraphWrapperEEERKS3_INSB_INSA_8SubgraphEEESaISH_EEE3$_0EEEvT_SO_SO_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEESaIS9_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{null, null}
!6 = distinct !{!6, !33}
!7 = distinct !{!7, !33}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 int", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 16}
!23 = !{!"p1 omnipotent char", !18, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"long", !12, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 8, !12, i64 16}
!27 = !{!26, !23, i64 0}
!28 = !{!12, !12, i64 0}
!29 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !18, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !29, i64 8}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!30, !29, i64 16}
!35 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 8}
!39 = !{!36, !35, i64 16}
!40 = !{!13, !13, i64 0}
!41 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!42 = !{!20, !19, i64 8}
!43 = !{!24, !23, i64 0}
!44 = !{!26, !25, i64 8}
!45 = !{!25, !25, i64 0}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!19, !19, i64 0}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!"p1 _ZTSN2cv3dnn17ImportNodeWrapperE", !18, i64 0}
!50 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!51 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0}
!52 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0, !51, i64 8}
!53 = !{!52, !49, i64 0}
!54 = !{!"p1 _ZTSN2cv3dnn18ImportGraphWrapperE", !18, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn18ImportGraphWrapperELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !51, i64 8}
!56 = !{!55, !54, i64 0}
!57 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!58 = !{!57, !13, i64 8}
!59 = !{!57, !13, i64 12}
!60 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!61 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!62 = !{!"_ZTSSt18_Rb_tree_node_base", !60, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!63 = !{!"_ZTSSt15_Rb_tree_header", !62, i64 0, !25, i64 32}
!64 = !{!63, !61, i64 16}
!65 = !{!63, !61, i64 24}
!66 = !{!63, !25, i64 32}
!67 = !{!"p1 _ZTSSt3mapIiiSt4lessIiESaISt4pairIKiiEEE", !18, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !51, i64 8}
!69 = !{!68, !67, i64 0}
!70 = !{!51, !50, i64 0}
!71 = !{!"p1 _ZTSSt10shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEE", !18, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEESaIS9_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 8}
!74 = !{!72, !71, i64 16}
!75 = !{!"any p2 pointer", !18, i64 0}
!76 = !{!"p2 _ZTSZN2cv3dnn8Subgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEEE5State", !75, i64 0}
!77 = !{!"p1 _ZTSZN2cv3dnn8Subgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEEE5State", !18, i64 0}
!78 = !{!"_ZTSSt15_Deque_iteratorIZN2cv3dnn8Subgraph5matchERKNS0_3PtrINS1_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEEE5StateRSC_PSC_E", !77, i64 0, !77, i64 8, !77, i64 16, !76, i64 24}
!79 = !{!"_ZTSNSt11_Deque_baseIZN2cv3dnn8Subgraph5matchERKNS0_3PtrINS1_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEEE5StateSaISC_EE16_Deque_impl_dataE", !76, i64 0, !25, i64 8, !78, i64 16, !78, i64 48}
!80 = !{!79, !25, i64 8}
!81 = !{!79, !76, i64 0}
!82 = !{!77, !77, i64 0}
!83 = !{!78, !76, i64 24}
!84 = !{!78, !77, i64 8}
!85 = !{!78, !77, i64 16}
!86 = !{!79, !77, i64 48}
!87 = !{!72, !71, i64 0}
!88 = !{!71, !71, i64 0}
!89 = !{!18, !18, i64 0}
!90 = !{!78, !77, i64 0}
!91 = !{!79, !76, i64 40}
!92 = !{!63, !61, i64 8}
!93 = !{!61, !61, i64 0}
!94 = !{!63, !60, i64 0}
!95 = !{!62, !61, i64 16}
!96 = !{!62, !61, i64 24}
!97 = !{!79, !76, i64 72}
!98 = !{!"p1 _ZTSN2cv3PtrINS_3dnn17ImportNodeWrapperEEE", !18, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN2cv3PtrINS0_3dnn17ImportNodeWrapperEEESaIS4_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!99, !98, i64 0}
!101 = !{!99, !98, i64 16}
!102 = !{!99, !98, i64 8}
!103 = !{!35, !35, i64 0}
!104 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !18, i64 0}
!105 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE", !18, i64 0}
!106 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !104, i64 0, !105, i64 8}
!107 = !{!106, !105, i64 8}
!108 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !26, i64 0, !13, i64 32}
!109 = !{!108, !13, i64 32}
!110 = distinct !{!110, !33}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !"_ZN2cvL7makePtrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJEEENS_3PtrIT_EEDpRKT0_"}
!115 = distinct !{!115, !114, !"_ZN2cvL7makePtrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!116 = distinct !{!116, !"_ZSt11make_sharedISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!117 = distinct !{!117, !116, !"_ZSt11make_sharedISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!118 = distinct !{ptr @_ZNSt12__shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!119 = distinct !{!119, !33}
!120 = distinct !{ptr @_ZZN2cv3dnn8Subgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEEEN5StateD2Ev, ptr @_ZNSt6vectorISt10shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEESaIS9_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!121 = distinct !{null, null, ptr @_ZZN2cv3dnn8Subgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEEEN5StateD2Ev, ptr @_ZNSt6vectorISt10shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEESaIS9_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!122 = distinct !{null, null, null, ptr @_ZZN2cv3dnn8Subgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEEEN5StateD2Ev, ptr @_ZNSt6vectorISt10shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEESaIS9_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !"_ZN2cvL7makePtrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJS8_EEENS_3PtrIT_EEDpRKT0_"}
!125 = distinct !{!125, !124, !"_ZN2cvL7makePtrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJS8_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!126 = distinct !{!126, !"_ZSt11make_sharedISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJRKS7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!127 = distinct !{!127, !126, !"_ZSt11make_sharedISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJRKS7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33}
!130 = distinct !{null, ptr @_ZNSt12__shared_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!131 = distinct !{!131, !"_ZN2cvL7makePtrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJS8_EEENS_3PtrIT_EEDpRKT0_"}
!132 = distinct !{!132, !131, !"_ZN2cvL7makePtrISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJS8_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!133 = distinct !{!133, !"_ZSt11make_sharedISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJRKS7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!134 = distinct !{!134, !133, !"_ZSt11make_sharedISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJRKS7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!135 = distinct !{null, null, null, null, null}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = !{!115}
!139 = !{!117, !115}
end_hunk_0
