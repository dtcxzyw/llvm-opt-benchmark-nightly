Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_mesh_squared_distance?download=true
inline.NumInlined: 12093
inline.NumDeleted: 4173
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNSt19__shrink_to_fit_auxISt6vectorIPKSt4pairIN4CGAL7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS5_EES0_ISA_SaISA_EEEEESaISH_EELb1EE8_S_do_itERSJ_:bb.a

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEESaISH_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 3 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !391

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EEC2ISt13move_iteratorINS7_IPSG_SI_EEEvEET_SO_RKSH_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EEC2ISt13move_iteratorINS7_IPSG_SI_EEEvEET_SO_RKSH_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !561
  store ptr %i.m, ptr %i.i, align 8, !tbaa !561
  br label %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EEC2ISt13move_iteratorINS7_IPSG_SI_EEEvEET_SO_RKSH_.exit

_ZNSt12_Vector_baseIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEESaISH_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEESaISH_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.n, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %.09) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EED2Ev.exit unwind label %bb.g

_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EEC2ISt13move_iteratorINS7_IPSG_SI_EEEvEET_SO_RKSH_.exit: ; preds = %bb.e, %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !546    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !547
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !546
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !569
  store ptr %.sroa.12.0, ptr %i.q, align 8, !tbaa !547
  %.not.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EEC2ISt13move_iteratorINS7_IPSG_SI_EEEvEET_SO_RKSH_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #36
  br label %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EED2Ev.exit

_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EEC2ISt13move_iteratorINS7_IPSG_SI_EEEvEET_SO_RKSH_.exit, %_ZNSt12_Vector_baseIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEESaISH_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEESaISH_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EEC2ISt13move_iteratorINS7_IPSG_SI_EEEvEET_SO_RKSH_.exit ], [ true, %bb.f ]
  ret i1 %.0

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEESaISH_EED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEEC2ERKS11_RKS6_jdbRKSU_b(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, double noundef %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext %7) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8                         ; 2 uses
  store i32 0, ptr %0, align 8, !tbaa !615
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !616
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !617
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i8 %i.a, ptr %i.d, align 4, !tbaa !3283
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 4 uses
  %i.f = load i16, ptr %6, align 1
  store i16 %i.f, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = fadd double %4, 1.000000e+00             ; 2 uses
  %i.i = fmul double %i.h, %i.h
  store double %i.i, ptr %i.g, align 8, !tbaa !618
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !619
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = icmp slt i32 %3, 0
  br i1 %i.n, label %.noexc.i.i, label %_ZNSt6vectorISt4pairIPKS0_IN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEEdESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #37
  unreachable

_ZNSt6vectorISt4pairIPKS0_IN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEEdESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZNSt6vectorISt4pairIPKS0_IN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEEdESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i.i
  %i.o = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.o, i1 false)
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.p, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKS0_IN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEEdESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i.i
  %.sink.i = phi ptr [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt4pairIPKS0_IN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEEdESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt4pairIPKS0_IN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEEdESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt4pairIPKS0_IN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEEdESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i.i ]
  store ptr %.sink.i, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.s, align 8, !tbaa !505
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !620
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.a, ptr %i.t, align 8, !tbaa !229
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.e, ptr %i.u, align 8, !tbaa !3284
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.e, ptr %i.v, align 8, !tbaa !3284
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.w, align 8, !tbaa !3285
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.e, ptr %i.x, align 8, !tbaa !3284
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.z, align 8, !tbaa !3286
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !561
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !561
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.j, ptr %i.af, align 8, !tbaa !628
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 3, ptr %i.ag, align 8, !tbaa !3287
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 3)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit unwind label %bb.v

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !3287 ; 2 uses
  %i.ah = icmp sgt i32 %.pre, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !501
  %i.aj = zext nneg i32 %.pre to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.ak, i1 false), !tbaa !192
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.al = load i8, ptr %i.d, align 4, !tbaa !3283, !range !74, !noundef !75
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 7 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !544, !range !74, !noundef !75
  %i.ap = trunc nuw i8 %i.ao to i1                ; 2 uses
  br i1 %i.am, label %bb.d, label %bb.x

bb.d:                                             ; preds = %._crit_edge
  br i1 %i.ap, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.ar = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, label %.invoke

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i:     ; preds = %bb.e
  %i.as = load i8, ptr %i.an, align 8, !tbaa !544, !range !74, !noundef !75
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  invoke void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E5buildINS_14Sequential_tagEEEvv(ptr noundef nonnull align 8 dereferenceable(336) %1)
          to label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i:        ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #21 ; 0 uses
  br label %.body

_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i: ; preds = %bb.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  %i.aw = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !545 ; 6 uses
  %i.az = load ptr, ptr %i.y, align 8             ; 6 uses
  %i.ba = load double, ptr %2, align 8, !tbaa !192 ; 4 uses
  %i.bb = load double, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.bc = fcmp olt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = fsub double %i.bb, %i.ba                ; 3 uses
  store double %i.bd, ptr %i.az, align 8, !tbaa !192
  %8 = fmul double %i.bd, %i.bd
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !192 ; 2 uses
  %i.bg = fcmp ogt double %i.ba, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = fsub double %i.ba, %i.bf                ; 3 uses
  store double %i.bh, ptr %i.az, align 8, !tbaa !192
  %9 = fmul double %i.bh, %i.bh
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.1.i.i = phi double [ %8, %bb.h ], [ %9, %bb.j ], [ 0.000000e+00, %bb.i ] ; 3 uses
  %.033.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load double, ptr %.033.ptr.1.i.i, align 8, !tbaa !192 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !192 ; 2 uses
  %i.bl = fcmp olt double %i.bi, %i.bk
  br i1 %i.bl, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !192 ; 2 uses
  %i.bo = fcmp ogt double %i.bi, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = fsub double %i.bi, %i.bn                ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store double %i.bp, ptr %i.bq, align 8, !tbaa !192
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %.1.i.i)
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bs = fsub double %i.bk, %i.bi                ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store double %i.bs, ptr %i.bt, align 8, !tbaa !192
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %.1.i.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1.1.i.i = phi double [ %i.bu, %bb.n ], [ %i.br, %bb.m ], [ %.1.i.i, %bb.l ] ; 3 uses
  %.033.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load double, ptr %.033.ptr.2.i.i, align 8, !tbaa !192 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !192 ; 2 uses
  %i.by = fcmp olt double %i.bv, %i.bx
  br i1 %i.by, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !192 ; 2 uses
  %i.cb = fcmp ogt double %i.bv, %i.ca
  br i1 %i.cb, label %bb.q, label %_ZNK4CGAL16Distance_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_18Euclidean_distanceINS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE25min_distance_to_rectangleIdNS_13Dimension_tagILi3EEEEET_RKS5_RKNS_17Kd_tree_rectangleISV_T0_EERSB_ISV_SaISV_EE.exit

bb.q:                                             ; preds = %bb.p
  %i.cc = fsub double %i.bv, %i.ca                ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store double %i.cc, ptr %i.cd, align 8, !tbaa !192
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %.1.1.i.i)
  br label %_ZNK4CGAL16Distance_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_18Euclidean_distanceINS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE25min_distance_to_rectangleIdNS_13Dimension_tagILi3EEEEET_RKS5_RKNS_17Kd_tree_rectangleISV_T0_EERSB_ISV_SaISV_EE.exit

bb.r:                                             ; preds = %bb.o
  %i.cf = fsub double %i.bx, %i.bv                ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store double %i.cf, ptr %i.cg, align 8, !tbaa !192
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %.1.1.i.i)
  br label %_ZNK4CGAL16Distance_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_18Euclidean_distanceINS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE25min_distance_to_rectangleIdNS_13Dimension_tagILi3EEEEET_RKS5_RKNS_17Kd_tree_rectangleISV_T0_EERSB_ISV_SaISV_EE.exit

_ZNK4CGAL16Distance_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_18Euclidean_distanceINS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE25min_distance_to_rectangleIdNS_13Dimension_tagILi3EEEEET_RKS5_RKNS_17Kd_tree_rectangleISV_T0_EERSB_ISV_SaISV_EE.exit: ; preds = %bb.r, %bb.q, %bb.p
  %.1.2.i.i = phi double [ %i.ch, %bb.r ], [ %i.ce, %bb.q ], [ %.1.1.i.i, %bb.p ]
  %i.ci = load i8, ptr %i.an, align 8, !tbaa !544, !range !74, !noundef !75
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNK4CGAL16Distance_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_18Euclidean_distanceINS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE25min_distance_to_rectangleIdNS_13Dimension_tagILi3EEEEET_RKS5_RKNS_17Kd_tree_rectangleISV_T0_EERSB_ISV_SaISV_EE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.cl = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #21 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i29, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i30, label %.invoke

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i30:   ; preds = %bb.s
  %i.cm = load i8, ptr %i.an, align 8, !tbaa !544, !range !74, !noundef !75
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i32, label %bb.t

bb.t:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i30
  invoke void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E5buildINS_14Sequential_tagEEEvv(ptr noundef nonnull align 8 dereferenceable(336) %1)
          to label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i32 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i31

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i31:      ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #21 ; 0 uses
  br label %.body

_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i32: ; preds = %bb.t, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i30
  %i.cq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #21 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i32, %_ZNK4CGAL16Distance_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_18Euclidean_distanceINS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE25min_distance_to_rectangleIdNS_13Dimension_tagILi3EEEEET_RKS5_RKNS_17Kd_tree_rectangleISV_T0_EERSB_ISV_SaISV_EE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !562
  invoke void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE38compute_nearest_neighbors_orthogonallyEPKNS_12Kd_tree_nodeISQ_SY_S10_SM_EEd(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %i.cs, double noundef %.1.2.i.i)
          to label %bb.ak unwind label %bb.v

bb.v:                                             ; preds = %.invoke, %bb.c, %bb.al, %bb.aj, %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i31, %bb.v, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i49, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i38, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i ], [ %i.co, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i31 ], [ %i.de, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i38 ], [ %i.ct, %bb.v ], [ %i.eo, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i49 ]
  %i.cu = load ptr, ptr %i.y, align 8, !tbaa !501 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.body
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !502
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #36
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.x:                                             ; preds = %._crit_edge
  br i1 %i.ap, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.db = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.da) #21 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i.i.i36, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i37, label %.invoke

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i37:   ; preds = %bb.y
  %i.dc = load i8, ptr %i.an, align 8, !tbaa !544, !range !74, !noundef !75
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i39, label %bb.z

bb.z:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i37
  invoke void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E5buildINS_14Sequential_tagEEEvv(ptr noundef nonnull align 8 dereferenceable(336) %1)
          to label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i39 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i38

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i38:      ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.da) #21 ; 0 uses
  br label %.body

_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i39: ; preds = %bb.z, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i37
  %i.dg = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.da) #21 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i39, %bb.x
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %11 = load ptr, ptr %10, align 8, !tbaa !545    ; 6 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %i.y, align 8               ; 3 uses
  %14 = load double, ptr %2, align 8, !tbaa !192  ; 3 uses
  %15 = load double, ptr %11, align 8, !tbaa !192 ; 2 uses
  %16 = load double, ptr %12, align 8, !tbaa !192 ; 2 uses
  %17 = fadd double %15, %16
  %18 = fmul double %17, 5.000000e-01
  %19 = fcmp ugt double %14, %18                  ; 2 uses
  %20 = fsub double %14, %15                      ; 3 uses
  %21 = fmul double %20, %20
  %22 = fsub double %16, %14                      ; 3 uses
  %23 = fmul double %22, %22
  %.sink.i.i = select i1 %19, double %20, double %22
  %.1.i.i44 = select i1 %19, double %21, double %23 ; 2 uses
  store double %.sink.i.i, ptr %13, align 8, !tbaa !192
  %.032.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load double, ptr %.032.ptr.1.i.i, align 8, !tbaa !192 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dj = load double, ptr %i.di, align 8, !tbaa !192 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !192 ; 2 uses
  %i.dm = fadd double %i.dj, %i.dl
  %i.dn = fmul double %i.dm, 5.000000e-01
  %i.do = fcmp ugt double %i.dh, %i.dn
  br i1 %i.do, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = fsub double %i.dl, %i.dh                ; 3 uses
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dp, double %.1.i.i44)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dr = fsub double %i.dh, %i.dj                ; 3 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %.1.i.i44)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink38.i.i = phi double [ %i.dr, %bb.ac ], [ %i.dp, %bb.ab ]
  %.1.1.i.i45 = phi double [ %i.ds, %bb.ac ], [ %i.dq, %bb.ab ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double %.sink38.i.i, ptr %i.dt, align 8, !tbaa !192
  %.032.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = load double, ptr %.032.ptr.2.i.i, align 8, !tbaa !192 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !192 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !192 ; 2 uses
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = fmul double %i.dz, 5.000000e-01
  %i.eb = fcmp ugt double %i.du, %i.ea
  br i1 %i.eb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = fsub double %i.dy, %i.du                ; 3 uses
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double %.1.1.i.i45)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ee = fsub double %i.du, %i.dw                ; 3 uses
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %.1.1.i.i45)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink39.i.i = phi double [ %i.ee, %bb.af ], [ %i.ec, %bb.ae ]
  %.1.2.i.i46 = phi double [ %i.ef, %bb.af ], [ %i.ed, %bb.ae ]
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 16
  store double %.sink39.i.i, ptr %i.eg, align 8, !tbaa !192
  %i.eh = load i8, ptr %i.an, align 8, !tbaa !544, !range !74, !noundef !75
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.ek = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ej) #21 ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i.i.i.i47, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i48, label %.invoke

.invoke:                                          ; preds = %bb.s, %bb.e, %bb.ah, %bb.y
  %i.el = phi i32 [ %i.db, %bb.y ], [ %i.ek, %bb.ah ], [ %i.ar, %bb.e ], [ %i.cl, %bb.s ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.el) #37
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i48:   ; preds = %bb.ah
  %i.em = load i8, ptr %i.an, align 8, !tbaa !544, !range !74, !noundef !75
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i50, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i48
  invoke void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E5buildINS_14Sequential_tagEEEvv(ptr noundef nonnull align 8 dereferenceable(336) %1)
          to label %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i50 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i49

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i49:      ; preds = %bb.ai
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ej) #21 ; 0 uses
  br label %.body

_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i50: ; preds = %bb.ai, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i48
  %i.eq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ej) #21 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E11const_buildEv.exit.i50, %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !562
  invoke void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE39compute_furthest_neighbors_orthogonallyEPKNS_12Kd_tree_nodeISQ_SY_S10_SM_EEd(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %i.es, double noundef %.1.2.i.i46)
          to label %bb.ak unwind label %bb.v

bb.ak:                                            ; preds = %bb.aj, %bb.u
  br i1 %7, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4CGAL8internal22bounded_priority_queueISt4pairIPKS2_INS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEEdENS0_17K_neighbor_searchINS_21Search_traits_adapterISG_NS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SN_NS_18Euclidean_distanceISU_EEEENS_16Sliding_midpointISV_NS_15Plane_separatorIdEEEENS_7Kd_treeISV_S13_SQ_IbLb1EESR_EEE15Distance_largerEE4sortEv(ptr noundef nonnull align 8 dereferenceable(33) %i.k)
          to label %bb.am unwind label %bb.v

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.b
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.w, %.body
  %i.et = load ptr, ptr %i.l, align 8, !tbaa !504 ; 3 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i55, label %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.eu = load ptr, ptr %i.s, align 8, !tbaa !505
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  tail call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #36
  br label %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEED2Ev.exit

_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.an
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE38compute_nearest_neighbors_orthogonallyEPKNS_12Kd_tree_nodeISQ_SY_S10_SM_EEd(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !571, !range !74, !noundef !75
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !616
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !616
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !574
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE22search_nearest_in_leafEPKNS_17Kd_tree_leaf_nodeISQ_SY_S10_SM_EESM_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !615
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %0, align 8, !tbaa !615
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !597
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !628
  %i.n = sext i32 %i.k to i64                     ; 3 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !192 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !600
  %i.s = fsub double %i.p, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load double, ptr %i.t, align 8, !tbaa !599
  %i.v = fsub double %i.p, %i.u                   ; 2 uses
  %i.w = fadd double %i.s, %i.v
  %i.x = fcmp olt double %i.w, 0.000000e+00       ; 3 uses
  %.034.in.v = select i1 %i.x, i64 16, i64 24
  %.034.in = getelementptr inbounds nuw i8, ptr %1, i64 %.034.in.v
  %.033.in.v = select i1 %i.x, i64 24, i64 16
  %.033.in = getelementptr inbounds nuw i8, ptr %1, i64 %.033.in.v
  %.0 = select i1 %i.x, double %i.s, double %i.v  ; 3 uses
  %.033 = load ptr, ptr %.033.in, align 8, !tbaa !629
  %.034 = load ptr, ptr %.034.in, align 8, !tbaa !629
  tail call void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE38compute_nearest_neighbors_orthogonallyEPKNS_12Kd_tree_nodeISQ_SY_S10_SM_EEd(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %.034, double noundef %2)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !501  ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.n ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !192 ; 3 uses
  %i.ac = fneg double %i.ab
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %.0, double %.0, double %i.ad)
  %i.af = fadd double %2, %i.ae                   ; 2 uses
  store double %.0, ptr %i.aa, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !619
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !620
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !504 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4
  %i.ar = icmp eq i64 %i.aq, %i.ai
  br i1 %i.ar, label %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit, label %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit.thread

_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load double, ptr %i.as, align 8, !tbaa !618
  %i.au = fmul double %i.af, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !630
  %i.ax = fcmp olt double %i.au, %i.aw
  br i1 %i.ax, label %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit.thread, label %bb.e

_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit.thread: ; preds = %bb.d, %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit
  tail call void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE38compute_nearest_neighbors_orthogonallyEPKNS_12Kd_tree_nodeISQ_SY_S10_SM_EEd(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %.033, double noundef %i.af)
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !501
  br label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit.thread, %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit
  %i.ay = phi ptr [ %.pre, %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit.thread ], [ %i.z, %_ZN4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS_26First_of_pair_property_mapISH_EENS_13AABB_traits_3IS6_NS_25AABB_triangle_primitive_3IS6_SG_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISH_SJ_NS_18Euclidean_distanceISQ_EEEENS_16Sliding_midpointISR_NS_15Plane_separatorIdEEEENS_7Kd_treeISR_SZ_SM_IbLb1EESN_EEE14branch_nearestEd.exit ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.n
  store double %i.ab, ptr %i.az, align 8, !tbaa !192
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE39compute_furthest_neighbors_orthogonallyEPKNS_12Kd_tree_nodeISQ_SY_S10_SM_EEd(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.896", align 8    ; 5 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !571, !range !74, !noundef !75
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !616
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !616
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !574  ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE23search_furthest_in_leafEPKNS_17Kd_tree_leaf_nodeISQ_SY_S10_SM_EESM_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !561 ; 2 uses
  %i.i = sext i32 %i.g to i64
  %.idx.i = shl nsw i64 %i.i, 5
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.idx.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.04.09.i = phi ptr [ %.sroa.0.0.copyload.i.i, %.lr.ph.i ], [ %i.ac, %bb.c ] ; 4 uses
  %i.p = load i32, ptr %i.k, align 8, !tbaa !617
end_hunk_0
begin_hunk_1_@_ZN4CGAL8internal22bounded_priority_queueISt4pairIPKS2_INS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEEdENS0_17K_neighbor_searchINS_21Search_traits_adapterISG_NS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SN_NS_18Euclidean_distanceISU_EEEENS_16Sliding_midpointISV_NS_15Plane_separatorIdEEEENS_7Kd_treeISV_S13_SQ_IbLb1EESR_EEE15Distance_largerEE4sortEv:_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEElEvRT_T0_St26random_access_iterator_tag.exit

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3290 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !501    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !502
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !192
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !192
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !3290
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #37
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #39 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !192
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !192
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !502
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #36
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !501
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !3290
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !502
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEENS_7Kd_treeISQ_SY_SL_IbLb1EESM_EEE22search_nearest_in_leafEPKNS_17Kd_tree_leaf_nodeISQ_SY_S10_SM_EESM_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.896", align 8    ; 5 uses
  %3 = alloca %"struct.std::pair.896", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !561 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !574  ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 5
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %.idx ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !619
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !504  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 4
  %i.q = icmp ne i64 %i.p, %i.j
  %i.r = icmp ne i32 %i.c, 0
  %or.cond21 = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond21, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.011.022 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.aj, %bb.b ] ; 4 uses
  %i.w = load i32, ptr %i.s, align 8, !tbaa !617
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.s, align 8, !tbaa !617
  %i.y = load <2 x double>, ptr %i.t, align 8, !tbaa !192
  %i.z = load <2 x double>, ptr %.sroa.011.022, align 8, !tbaa !192
  %i.aa = fsub <2 x double> %i.y, %i.z            ; 2 uses
  %i.ab = fmul <2 x double> %i.aa, %i.aa          ; 2 uses
  %shift = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ab, %shift
  %i.ac = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 16
  %i.ae = load double, ptr %i.u, align 8, !tbaa !192
  %i.af = load double, ptr %i.ad, align 8, !tbaa !192
  %i.ag = fsub double %i.ae, %i.af                ; 2 uses
  %i.ah = fmul double %i.ag, %i.ag
  %i.ai = fadd double %i.ac, %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %.sroa.011.022, ptr %2, align 8
  store double %i.ai, ptr %i.v, align 8
  call void @_ZN4CGAL8internal22bounded_priority_queueISt4pairIPKS2_INS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEEdENS0_17K_neighbor_searchINS_21Search_traits_adapterISG_NS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SN_NS_18Euclidean_distanceISU_EEEENS_16Sliding_midpointISV_NS_15Plane_separatorIdEEEENS_7Kd_treeISV_S13_SQ_IbLb1EESR_EEE15Distance_largerEE6insertERKSJ_(ptr noundef nonnull align 8 dereferenceable(33) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 32 ; 3 uses
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !619
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !620
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !504 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  %i.as = icmp ne i64 %i.ar, %i.al
  %i.at = icmp ne ptr %i.aj, %i.e
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !3291

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.011.0.lcssa = phi ptr [ %.sroa.0.0.copyload.i, %bb.a ], [ %i.aj, %bb.b ] ; 2 uses
  %.lcssa = phi ptr [ %i.l, %bb.a ], [ %i.an, %bb.b ]
  %.not25 = icmp eq ptr %.sroa.011.0.lcssa, %i.e
  br i1 %.not25, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !630
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.254.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.254.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph28, %bb.e
  %.027 = phi double [ %i.av, %.lr.ph28 ], [ %.1, %bb.e ] ; 2 uses
  %.sroa.011.126 = phi ptr [ %.sroa.011.0.lcssa, %.lr.ph28 ], [ %i.bs, %bb.e ] ; 5 uses
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !617
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.aw, align 8, !tbaa !617
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !192
  %i.bc = load double, ptr %.sroa.011.126, align 8, !tbaa !192
  %i.bd = fsub double %i.bb, %i.bc                ; 2 uses
  %4 = fmul double %i.bd, %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.126, i64 8
  %i.bf = load double, ptr %.254.ptr.1.i.i.i, align 8, !tbaa !192
  %i.bg = load double, ptr %i.be, align 8, !tbaa !192
  %i.bh = fsub double %i.bf, %i.bg                ; 2 uses
  %i.bi = call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %4)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.011.126, i64 16
  %i.bk = load double, ptr %.254.ptr.2.i.i.i, align 8, !tbaa !192
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !192
  %i.bm = fsub double %i.bk, %i.bl                ; 2 uses
  %i.bn = call noundef double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %i.bi) ; 2 uses
  %i.bo = fcmp olt double %i.bn, %.027
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %.sroa.011.126, ptr %3, align 8
  store double %i.bn, ptr %i.ay, align 8
  call void @_ZN4CGAL8internal22bounded_priority_queueISt4pairIPKS2_INS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEEdENS0_17K_neighbor_searchINS_21Search_traits_adapterISG_NS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SN_NS_18Euclidean_distanceISU_EEEENS_16Sliding_midpointISV_NS_15Plane_separatorIdEEEENS_7Kd_treeISV_S13_SQ_IbLb1EESR_EEE15Distance_largerEE6insertERKSJ_(ptr noundef nonnull align 8 dereferenceable(33) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !504
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !630
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi double [ %i.br, %bb.d ], [ %.027, %bb.c ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.011.126, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.e
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !3292

._crit_edge:                                      ; preds = %bb.e, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal22bounded_priority_queueISt4pairIPKS2_INS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEEdENS0_17K_neighbor_searchINS_21Search_traits_adapterISG_NS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SN_NS_18Euclidean_distanceISU_EEEENS_16Sliding_midpointISV_NS_15Plane_separatorIdEEEENS_7Kd_treeISV_S13_SQ_IbLb1EESR_EEE15Distance_largerEE6insertERKSJ_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !504  ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 11 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !619    ; 7 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !620
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !3293, !range !74, !noundef !75
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  %..i = select i1 %i.o, ptr %1, ptr %i.b
  %.10.i = select i1 %i.o, ptr %i.b, ptr %1
  %i.p = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !630
  %i.r = getelementptr inbounds nuw i8, ptr %.10.i, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !630
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.b
  %.not62 = icmp ult i32 %i.d, 2
  br i1 %.not62, label %.thread, label %.lr.ph65

.lr.ph65:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.o, label %.lr.ph65.split.us, label %.lr.ph65.split

.lr.ph65.split.us:                                ; preds = %.lr.ph65, %bb.e
  %.03864.us = phi i32 [ %i.ao, %bb.e ], [ 2, %.lr.ph65 ] ; 5 uses
  %.04163.us = phi i32 [ %.139.us, %bb.e ], [ 1, %.lr.ph65 ] ; 2 uses
  %i.v = zext i32 %.03864.us to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.v ; 4 uses
  %i.x = icmp ult i32 %.03864.us, %i.d
  br i1 %i.x, label %bb.c, label %._crit_edge76

._crit_edge76:                                    ; preds = %.lr.ph65.split.us
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre78 = load double, ptr %.phi.trans.insert77, align 8, !tbaa !630
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph65.split.us
  %i.y = or disjoint i32 %.03864.us, 1            ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !630 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !630 ; 2 uses
  %i.af = fcmp olt double %i.ac, %i.ae            ; 3 uses
  %spec.select.us = select i1 %i.af, i32 %i.y, i32 %.03864.us
  %spec.select45.us = select i1 %i.af, ptr %i.aa, ptr %i.w
  %i.ag = select i1 %i.af, double %i.ae, double %i.ac
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge76, %bb.c
  %i.ah = phi double [ %.pre78, %._crit_edge76 ], [ %i.ag, %bb.c ] ; 2 uses
  %.139.us = phi i32 [ %.03864.us, %._crit_edge76 ], [ %spec.select.us, %bb.c ] ; 3 uses
  %.037.us = phi ptr [ %i.w, %._crit_edge76 ], [ %spec.select45.us, %bb.c ]
  %i.ai = load double, ptr %i.u, align 8, !tbaa !630
  %i.aj = fcmp olt double %i.ah, %i.ai
  br i1 %i.aj, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = zext i32 %.04163.us to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %.037.us, align 8, !tbaa !499
  store ptr %i.am, ptr %i.al, align 8, !tbaa !499
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store double %i.ah, ptr %i.an, align 8, !tbaa !630
  %i.ao = shl i32 %.139.us, 1                     ; 2 uses
  %.not.us = icmp ugt i32 %i.ao, %i.d
  br i1 %.not.us, label %.thread, label %.lr.ph65.split.us

.lr.ph65.split:                                   ; preds = %.lr.ph65, %bb.h
  %.03864 = phi i32 [ %i.bi, %bb.h ], [ 2, %.lr.ph65 ] ; 5 uses
  %.04163 = phi i32 [ %.139, %bb.h ], [ 1, %.lr.ph65 ] ; 2 uses
  %i.ap = zext i32 %.03864 to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ap ; 4 uses
  %i.ar = icmp ult i32 %.03864, %i.d
  br i1 %i.ar, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph65.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !630
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph65.split
  %i.as = or disjoint i32 %.03864, 1              ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !630 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !630 ; 2 uses
  %i.az = fcmp olt double %i.aw, %i.ay            ; 3 uses
  %spec.select = select i1 %i.az, i32 %i.as, i32 %.03864
  %spec.select45 = select i1 %i.az, ptr %i.au, ptr %i.aq
  %i.ba = select i1 %i.az, double %i.aw, double %i.ay
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.bb = phi double [ %.pre, %._crit_edge ], [ %i.ba, %bb.f ] ; 2 uses
  %.139 = phi i32 [ %.03864, %._crit_edge ], [ %spec.select, %bb.f ] ; 3 uses
  %.037 = phi ptr [ %i.aq, %._crit_edge ], [ %spec.select45, %bb.f ]
  %i.bc = load double, ptr %i.u, align 8, !tbaa !630
  %i.bd = fcmp olt double %i.bc, %i.bb
  br i1 %i.bd, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = zext i32 %.04163 to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %.037, align 8, !tbaa !499
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !499
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store double %i.bb, ptr %i.bh, align 8, !tbaa !630
  %i.bi = shl i32 %.139, 1                        ; 2 uses
  %.not = icmp ugt i32 %i.bi, %i.d
  br i1 %.not, label %.thread, label %.lr.ph65.split

.thread:                                          ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %.preheader
  %.041.lcssa = phi i32 [ 1, %.preheader ], [ %.04163.us, %bb.d ], [ %.139.us, %bb.e ], [ %.04163, %bb.g ], [ %.139, %bb.h ]
  %i.bj = zext i32 %.041.lcssa to i64
  br label %.sink.split

bb.i:                                             ; preds = %bb.a
  %i.bk = add i32 %i.d, 1                         ; 5 uses
  store i32 %i.bk, ptr %0, align 8, !tbaa !619
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %.lr.ph, label %.thread55

.lr.ph:                                           ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !3293, !range !74, !noundef !75
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.bo, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.058.us = phi i32 [ %i.bq, %bb.j ], [ %i.bk, %.lr.ph ] ; 4 uses
  %i.bq = lshr i32 %.058.us, 1                    ; 3 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.br ; 2 uses
  %i.bt = load double, ptr %i.bp, align 8, !tbaa !630
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !630 ; 2 uses
  %i.bw = fcmp olt double %i.bt, %i.bv
  br i1 %i.bw, label %.thread55, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.bx = zext nneg i32 %.058.us to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !499
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !499
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store double %i.bv, ptr %i.ca, align 8, !tbaa !630
end_hunk_1
