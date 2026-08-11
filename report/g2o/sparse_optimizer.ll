inline.NumInlined: 1577
inline.NumDeleted: 738
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE17_M_default_appendEm:bb.a
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.01013.i.i.i = phi i64 [ %i.p, %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i ], [ %1, %bb.b ]
  invoke void @_ZN3g2o18G2OBatchStatisticsC1Ev(ptr noundef nonnull align 8 dereferenceable(160) %.014.i.i.i)
          to label %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i64 %.01013.i.i.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !285

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #23 ; 0 uses
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.an, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !218
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.n, %1
  br i1 %i.x, label %bb.h, label %_ZNKSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE12_M_check_lenEmPKc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNKSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.y = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 57646075230342348) ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 160               ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #25 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i33
  %.014.i.i.i31 = phi ptr [ %i.ae, %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %i.ac, %_ZNKSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.01013.i.i.i32 = phi i64 [ %i.ad, %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %1, %_ZNKSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE12_M_check_lenEmPKc.exit ]
  invoke void @_ZN3g2o18G2OBatchStatisticsC1Ev(ptr noundef nonnull align 8 dereferenceable(160) %.014.i.i.i31)
          to label %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i33 unwind label %bb.i

_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i33: ; preds = %.lr.ph.i.i.i30
  %i.ad = add nsw i64 %.01013.i.i.i32, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i31, i64 160
  %.not.i.i.i34 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i34, label %_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit36, label %.lr.ph.i.i.i30, !llvm.loop !285

bb.i:                                             ; preds = %.lr.ph.i.i.i30
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #23 ; 0 uses
  invoke void @__cxa_rethrow() #26
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

.body:                                            ; preds = %bb.j
  %i.al = extractvalue { ptr, i32 } %i.ai, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aa) #22
  invoke void @__cxa_rethrow() #26
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.p

_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit36: ; preds = %_ZSt10_ConstructIN3g2o18G2OBatchStatisticsEJEEvPT_DpOT0_.exit.i.i.i33
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit36, %.lr.ph.i.i.i38
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i38 ], [ %i.ab, %_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit36 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i38 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit36 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0911.i.i.i, i64 160, i1 false), !tbaa.struct !286, !alias.scope !288
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 160 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 160
  %.not.i.i.i39 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i38, !llvm.loop !292

_ZNSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i38, %_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit36
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN3g2o18G2OBatchStatisticsESaIS1_EE13_M_deallocateEPS1_m.exit42, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #22
  br label %_ZNSt12_Vector_baseIN3g2o18G2OBatchStatisticsESaIS1_EE13_M_deallocateEPS1_m.exit42

_ZNSt12_Vector_baseIN3g2o18G2OBatchStatisticsESaIS1_EE13_M_deallocateEPS1_m.exit42: ; preds = %_ZNSt6vectorIN3g2o18G2OBatchStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.n
  store ptr %i.ab, ptr %0, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw [160 x i8], ptr %i.ac, i64 %1
  store ptr %i.at, ptr %i.a, align 8, !tbaa !218
  %i.au = getelementptr inbounds nuw [160 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.au, ptr %i.h, align 8, !tbaa !81
  br label %bb.o

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3g2o18G2OBatchStatisticsEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3g2o18G2OBatchStatisticsESaIS1_EE13_M_deallocateEPS1_m.exit42, %bb.a
  ret void

bb.p:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #21
  unreachable

bb.q:                                             ; preds = %.body
  unreachable
}

declare void @_ZN3g2o18G2OBatchStatisticsC1Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEET_SF_SF_T0_.exit
  %i.h = icmp eq i64 %i.bb, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !293

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_RT0_(ptr %0, ptr %storemerge23.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_RT0_.exit.i.i ], [ %storemerge23.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !154
  store ptr %i.k, ptr %i.i, align 8, !tbaa !154
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !236
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !236
  %i.ab = icmp slt i32 %i.y, %i.aa
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.t, i64 %i.r ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !154
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !294

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ag = and i64 %i.m, 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = add nsw i64 %i.n, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i.i, %i.aj
  br i1 %i.ak, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.al = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !154
  br label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.am, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !236
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i910.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !154 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !236
  %i.aw = icmp slt i32 %i.av, %i.ar
  br i1 %i.aw, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_RT0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !154
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_RT0_.exit.i.i, label %bb.e, !llvm.loop !295

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.ay, align 8, !tbaa !154
  %i.az = icmp sgt i64 %i.m, 8
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_T0_.exit, !llvm.loop !296

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.bb, %bb.b ], [ %2, %.lr.ph ]
  %i.ba = phi i64 [ %i.cm, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bb = add nsw i64 %.02444, -1                 ; 3 uses
  %i.bc = lshr i64 %i.ba, 1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %storemerge2345, i64 -8 ; 3 uses
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !154 ; 3 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !154 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !236 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !236 ; 3 uses
  %i.bl = icmp slt i32 %i.bi, %i.bk
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !154 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !236 ; 4 uses
  br i1 %i.bl, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph46
  %i.bp = icmp slt i32 %i.bk, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %0, align 8, !tbaa !154
  store ptr %i.bg, ptr %0, align 8, !tbaa !154
  store ptr %i.bq, ptr %i.bd, align 8, !tbaa !154
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.br = icmp slt i32 %i.bi, %i.bo
  %i.bs = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !154
  store ptr %i.bs, ptr %i.be, align 8, !tbaa !154
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store ptr %i.bf, ptr %0, align 8, !tbaa !154
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !154
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph46
  %i.bt = icmp slt i32 %i.bi, %i.bo
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %0, align 8, !tbaa !154
  store ptr %i.bf, ptr %0, align 8, !tbaa !154
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !154
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.bv = icmp slt i32 %i.bk, %i.bo
  %i.bw = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bm, ptr %0, align 8, !tbaa !154
  store ptr %i.bw, ptr %i.be, align 8, !tbaa !154
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  store ptr %i.bg, ptr %0, align 8, !tbaa !154
  store ptr %i.bw, ptr %i.bd, align 8, !tbaa !154
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.s
  %.sroa.010.0.i.i = phi ptr [ %i.ce, %bb.s ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.s ], [ %storemerge2345, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !154
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !236 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i ], [ %i.ce, %bb.q ] ; 8 uses
  %i.ca = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !154 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !236
  %i.cd = icmp slt i32 %i.cc, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.q, label %.preheader.i.i, !llvm.loop !297

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.q ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.cf = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !154 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !236
  %i.ci = icmp slt i32 %i.bz, %i.ch
  br i1 %i.ci, label %.preheader.i.i, label %bb.r, !llvm.loop !298

bb.r:                                             ; preds = %.preheader.i.i
  %i.cj = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cj, label %bb.s, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEET_SF_SF_T0_.exit

bb.s:                                             ; preds = %bb.r
  store ptr %i.cf, ptr %.sroa.010.1.i.i, align 8, !tbaa !154
  store ptr %i.ca, ptr %.sroa.0.1.i.i, align 8, !tbaa !154
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !299

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEET_SF_SF_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2345, i64 noundef %i.bb)
  %i.ck = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cl = sub i64 %i.ck, %i.a
  %i.cm = ashr exact i64 %i.cl, 3                 ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 16
  br i1 %i.cn, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_T0_.exit, !llvm.loop !293

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_SF_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.019.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 4 uses
  %i.e = load ptr, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !154 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !236  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !236
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %.sroa.0.019.i.idx, 8
  br i1 %i.l, label %bb.d, label %bb.e, !prof !300

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !154
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.pn18.i, align 8, !tbaa !154 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !236
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_SF_RT0_:bb.a
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.at, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !154
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !236
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !236
  %i.ad = icmp slt i32 %i.aa, %i.ac
  %spec.select.i.us = select i1 %i.ad, i64 %i.v, i64 %i.t ; 6 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !154
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.us
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !154
  %i.ah = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ah, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !294

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ai = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !236
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.d ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !154 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !236
  %i.ap = icmp slt i32 %i.ao, %i.ak
  br i1 %i.ap, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !154
  %i.ar = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ar, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us, !llvm.loop !295

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.c ], [ %.0920.i.i.us, %bb.d ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store ptr %i.q, ptr %i.as, align 8, !tbaa !154
  %.not.us = icmp eq i64 %.09.us, 0
  %i.at = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !304

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit
  %.09 = phi i64 [ %i.ca, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154 ; 2 uses
  %i.aw = icmp slt i64 %.09, %i.i
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.ax = shl i64 %.034.i, 1                      ; 2 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  %i.ba = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !154
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !236
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !236
  %i.bi = icmp slt i32 %i.bf, %i.bh
  %spec.select.i = select i1 %i.bi, i64 %i.ba, i64 %i.ay ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !154
  %i.bl = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !154
  %i.bm = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !294

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bn = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !154
  store ptr %i.bo, ptr %i.o, align 8, !tbaa !154
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bp = icmp sgt i64 %.1.i, %.09
  br i1 %i.bp, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !236
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !154 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !236
  %i.bw = icmp slt i32 %i.bv, %i.br
  br i1 %i.bw, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !154
  %i.by = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.by, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit, !llvm.loop !295

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.0920.i.i, %bb.h ], [ %.019.i.i, %bb.g ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store ptr %i.av, ptr %i.bz, align 8, !tbaa !154
  %.not = icmp eq i64 %.09, 0
  %i.ca = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !304

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph6VertexESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_15VertexIDCompareEEEEvT_T0_SG_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.181", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEET_SF_SF_T0_.exit
  %i.h = icmp eq i64 %i.bb, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !305

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_RT0_(ptr %0, ptr %storemerge23.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_RT0_.exit.i.i ], [ %storemerge23.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %i.k, ptr %i.i, align 8, !tbaa !94
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !238
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !238
  %i.ab = icmp slt i64 %i.y, %i.aa
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.t, i64 %i.r ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !94
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !306

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ag = and i64 %i.m, 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = add nsw i64 %i.n, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i.i, %i.aj
  br i1 %i.ak, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.al = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !94
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !94
  br label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.am, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !238
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i910.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !94 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !238
  %i.aw = icmp slt i64 %i.av, %i.ar
  br i1 %i.aw, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_RT0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !94
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_RT0_.exit.i.i, label %bb.e, !llvm.loop !307

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.ay, align 8, !tbaa !94
  %i.az = icmp sgt i64 %i.m, 8
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_T0_.exit, !llvm.loop !308

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.bb, %bb.b ], [ %2, %.lr.ph ]
  %i.ba = phi i64 [ %i.cm, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bb = add nsw i64 %.02444, -1                 ; 3 uses
  %i.bc = lshr i64 %i.ba, 1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %storemerge2345, i64 -8 ; 3 uses
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !94  ; 3 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !94 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !238 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !238 ; 3 uses
  %i.bl = icmp slt i64 %i.bi, %i.bk
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !94 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !238 ; 4 uses
  br i1 %i.bl, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph46
  %i.bp = icmp slt i64 %i.bk, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %i.bg, ptr %0, align 8, !tbaa !94
  store ptr %i.bq, ptr %i.bd, align 8, !tbaa !94
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.br = icmp slt i64 %i.bi, %i.bo
  %i.bs = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !94
  store ptr %i.bs, ptr %i.be, align 8, !tbaa !94
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store ptr %i.bf, ptr %0, align 8, !tbaa !94
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !94
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph46
  %i.bt = icmp slt i64 %i.bi, %i.bo
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %i.bf, ptr %0, align 8, !tbaa !94
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !94
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.bv = icmp slt i64 %i.bk, %i.bo
  %i.bw = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bm, ptr %0, align 8, !tbaa !94
  store ptr %i.bw, ptr %i.be, align 8, !tbaa !94
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  store ptr %i.bg, ptr %0, align 8, !tbaa !94
  store ptr %i.bw, ptr %i.bd, align 8, !tbaa !94
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.s
  %.sroa.010.0.i.i = phi ptr [ %i.ce, %bb.s ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.s ], [ %storemerge2345, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !94
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !238 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i ], [ %i.ce, %bb.q ] ; 8 uses
  %i.ca = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !94 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !238
  %i.cd = icmp slt i64 %i.cc, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.q, label %.preheader.i.i, !llvm.loop !309

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.q ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.cf = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !94 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !238
  %i.ci = icmp slt i64 %i.bz, %i.ch
  br i1 %i.ci, label %.preheader.i.i, label %bb.r, !llvm.loop !310

bb.r:                                             ; preds = %.preheader.i.i
  %i.cj = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cj, label %bb.s, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEET_SF_SF_T0_.exit

bb.s:                                             ; preds = %bb.r
  store ptr %i.cf, ptr %.sroa.010.1.i.i, align 8, !tbaa !94
  store ptr %i.ca, ptr %.sroa.0.1.i.i, align 8, !tbaa !94
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !311

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEET_SF_SF_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2345, i64 noundef %i.bb)
  %i.ck = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cl = sub i64 %i.ck, %i.a
  %i.cm = ashr exact i64 %i.cl, 3                 ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 16
  br i1 %i.cn, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_T0_.exit, !llvm.loop !305

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_SF_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_13EdgeIDCompareEEEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.019.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 4 uses
  %i.e = load ptr, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !94 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !238  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !238
  %i.k = icmp slt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %.sroa.0.019.i.idx, 8
  br i1 %i.l, label %bb.d, label %bb.e, !prof !300

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !94
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN3g2o16OptimizableGraph4EdgeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.pn18.i, align 8, !tbaa !94 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !238
end_hunk_1
