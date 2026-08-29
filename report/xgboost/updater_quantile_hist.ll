Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS4_19MultiTargetTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE_S7_EEvSA_RKT0_RKNS0_16RowSetCollectionESM_SB_ENKUlSB_E_clImEEDaSB_:bb.a
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS2_4tree20CommonRowPartitioner13LeafPartitionINS7_19MultiTargetTreeViewEEEvPKNS2_7ContextERKT_NS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS3_4SpanIiLm18446744073709551615EEEEUlmE_SA_EEvSD_RKT0_RKNS3_16RowSetCollectionESP_SE_EUlSE_E_JmEEEvSE_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.786) align 8 %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  invoke void @_ZZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS4_19MultiTargetTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE_S7_EEvSA_RKT0_RKNS0_16RowSetCollectionESM_SB_ENKUlSB_E_clImEEDaSB_(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.a, 1        ; 2 uses
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #11
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__cxa_begin_catch(ptr %i.b) #11 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #37
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !988
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.j = load ptr, ptr %6, align 8, !tbaa !988
  store ptr null, ptr %6, align 8, !tbaa !988
  %i.k = load ptr, ptr %0, align 8, !tbaa !988    ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !988
  store ptr %i.j, ptr %0, align 8, !tbaa !988
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %.pr = load ptr, ptr %6, align 8, !tbaa !988
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #11
  %i.m = icmp eq i32 %i.c, %i.l
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @__cxa_begin_catch(ptr %i.b) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #11 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #37
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !988
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.r = load ptr, ptr %5, align 8, !tbaa !988
  store ptr null, ptr %5, align 8, !tbaa !988
  %i.s = load ptr, ptr %0, align 8, !tbaa !988    ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !988
  store ptr %i.r, ptr %0, align 8, !tbaa !988
  %.not.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i12, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %.pr18 = load ptr, ptr %5, align 8, !tbaa !988
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.not.i14 = icmp eq ptr %.pr18, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #11 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #40
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK7xgboost4tree20CommonRowPartitioner13LeafPartitionINS0_19MultiTargetTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS_6common4SpanIiLm18446744073709551615EEEENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2892, !nonnull !198, !align !968 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !2894
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36, !noalias !2894 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36, !noalias !2894
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !283, !noalias !2894 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 0, i64 %i.c          ; 3 uses
  %.not8.i.i = icmp ugt i64 %i.k, %i.i
  br i1 %.not8.i.i, label %bb.b, label %bb.c, !prof !176

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #40, !noalias !2894
  unreachable

bb.c:                                             ; preds = %bb.a
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %.in.i.i, align 8, !tbaa !286, !noalias !2894 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp eq i64 %i.i, %i.k                   ; 2 uses
  %i.o = or i1 %i.n, %i.m
  br i1 %i.o, label %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.d, !prof !218

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #40, !noalias !2894
  unreachable

_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 7 uses
  %.sink.i.i.i = select i1 %i.n, i64 0, i64 %i.g  ; 5 uses
  %i.q = lshr i64 %.sink.i.i.i, 2                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %2 = and i64 %.sink.i.i.i, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.071.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.i ] ; 2 uses
  %.sroa.046.070.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.i ] ; 6 uses
  %i.r = mul i64 %.sroa.046.070.i.i.i.i, %i.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !2897
  %i.v = fcmp une float %i.u, 0.000000e+00
  br i1 %i.v, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i64 %.sroa.046.070.i.i.i.i, 1 ; 2 uses
  %i.x = mul i64 %i.w, %i.e
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !2897
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = or disjoint i64 %.sroa.046.070.i.i.i.i, 2 ; 2 uses
  %i.ad = mul i64 %i.ac, %i.e
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !2897
  %i.ah = fcmp une float %i.ag, 0.000000e+00
  br i1 %i.ah, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = or disjoint i64 %.sroa.046.070.i.i.i.i, 3 ; 2 uses
  %i.aj = mul i64 %i.ai, %i.e
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !2897
  %i.an = fcmp une float %i.am, 0.000000e+00
  br i1 %i.an, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nuw i64 %.sroa.046.070.i.i.i.i, 4
  %i.ap = add nsw i64 %.071.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.071.i.i.i.i, 1
  br i1 %i.aq, label %bb.e, label %._crit_edge.i.i.i.i, !llvm.loop !2899

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %.sroa.046.0.lcssa.i.i.i.i = phi i64 [ 0, %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit ], [ %2, %bb.i ] ; 6 uses
  %i.ar = sub i64 %.sink.i.i.i, %.sroa.046.0.lcssa.i.i.i.i
  switch i64 %i.ar, label %bb.m [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge73.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = mul i64 %.sroa.046.0.lcssa.i.i.i.i, %i.e
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !2897
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %3 = or disjoint i64 %.sroa.046.0.lcssa.i.i.i.i, 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.k
  %.sroa.046.1.i.i.i.i = phi i64 [ %3, %bb.k ], [ %.sroa.046.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ax = mul i64 %.sroa.046.1.i.i.i.i, %i.e
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !2897
  %i.bb = fcmp une float %i.ba, 0.000000e+00
  br i1 %i.bb, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bc = add nuw i64 %.sroa.046.1.i.i.i.i, 1
  br label %._crit_edge._crit_edge73.i.i.i.i

._crit_edge._crit_edge73.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.l
  %.sroa.046.2.i.i.i.i = phi i64 [ %i.bc, %bb.l ], [ %.sroa.046.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bd = mul i64 %.sroa.046.2.i.i.i.i, %i.e
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !2897
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge._crit_edge73.i.i.i.i, %._crit_edge.i.i.i.i
  br label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit

_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_19MultiTargetTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge73.i.i.i.i, %bb.m
  %.sroa.014.0.in.sroa.speculated.i.i.i.i = phi i64 [ %.sroa.046.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.sink.i.i.i, %bb.m ], [ %.sroa.046.2.i.i.i.i, %._crit_edge._crit_edge73.i.i.i.i ], [ %.sroa.046.0.lcssa.i.i.i.i, %bb.j ], [ %i.ai, %bb.h ], [ %i.ac, %bb.g ], [ %i.w, %bb.f ], [ %.sroa.046.070.i.i.i.i, %bb.e ]
  %i.bi = icmp eq i64 %.sink.i.i.i, %.sroa.014.0.in.sroa.speculated.i.i.i.i
  ret i1 %i.bi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNKS0_16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS5_19MultiTargetTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE0_S8_EEvSB_RKT0_RKNS0_16RowSetCollectionESN_SC_EUlSC_E_EEvSC_iNS0_5SchedEOSP_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not102 = icmp eq i64 %0, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader, %.lr.ph95
  %.04994 = phi i64 [ %i.d, %.lr.ph95 ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS4_19MultiTargetTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE0_S7_EEvSA_RKT0_RKNS0_16RowSetCollectionESM_SB_ENKUlSB_E_clImEEDaSB_(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %.04994)
  %i.d = add nuw i64 %.04994, 1                   ; 2 uses
  %exitcond113.not = icmp eq i64 %i.d, %0
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph95, !llvm.loop !2900

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !54, !noalias !2901
  store i32 1, ptr %i.b, align 4, !tbaa !54, !noalias !2901
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.b
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %6, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.45, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.d

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.e ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.46, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %6, align 8, !tbaa !55     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.f unwind label %bb.ac

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.ab

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.pr69 = load ptr, ptr %6, align 8, !tbaa !55   ; 4 uses
  %.not.i63 = icmp eq ptr %.pr69, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %.pr69, align 8, !tbaa !57 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr69, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !59
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr69, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.g, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  switch i32 %2, label %.thread [
    i32 0, label %.preheader72
    i32 1, label %bb.k
    i32 2, label %bb.p
    i32 3, label %.preheader81
  ]

.thread:                                          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit

.preheader81:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not96 = icmp eq i64 %0, 0
  br i1 %.not96, label %bb.w, label %.lr.ph

.preheader72:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not101 = icmp eq i64 %0, 0
  br i1 %.not101, label %bb.w, label %.lr.ph93

.lr.ph93:                                         ; preds = %.preheader72, %bb.i
  %.04492 = phi i64 [ %i.v, %bb.i ], [ 0, %.preheader72 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS2_4tree20CommonRowPartitioner13LeafPartitionINS7_19MultiTargetTreeViewEEEvPKNS2_7ContextERKT_NS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS3_4SpanIiLm18446744073709551615EEEEUlmE0_SA_EEvSD_RKT0_RKNS3_16RowSetCollectionESP_SE_EUlSE_E_JmEEEvSE_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.792) align 8 %4, i64 noundef %.04492)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph93
  %i.v = add nuw i64 %.04492, 1                   ; 2 uses
  %exitcond112.not = icmp eq i64 %i.v, %0
  br i1 %exitcond112.not, label %thread-pre-split125, label %.lr.ph93, !llvm.loop !2904

bb.j:                                             ; preds = %.lr.ph93
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.x = icmp eq i64 %3, 0
  %.not100 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.x, label %.preheader73, label %.preheader75

.preheader75:                                     ; preds = %bb.k
  br i1 %.not100, label %bb.w, label %.lr.ph89

.preheader73:                                     ; preds = %bb.k
  br i1 %.not100, label %bb.w, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader73, %bb.l
  %.04390 = phi i64 [ %i.y, %bb.l ], [ 0, %.preheader73 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS2_4tree20CommonRowPartitioner13LeafPartitionINS7_19MultiTargetTreeViewEEEvPKNS2_7ContextERKT_NS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS3_4SpanIiLm18446744073709551615EEEEUlmE0_SA_EEvSD_RKT0_RKNS3_16RowSetCollectionESP_SE_EUlSE_E_JmEEEvSE_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.792) align 8 %4, i64 noundef %.04390)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph91
  %i.y = add nuw i64 %.04390, 1                   ; 2 uses
  %exitcond111.not = icmp eq i64 %i.y, %0
  br i1 %exitcond111.not, label %thread-pre-split125, label %.lr.ph91, !llvm.loop !2905
end_hunk_0
begin_hunk_1_@_ZZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS4_14ScalarTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE_S7_EEvSA_RKT0_RKNS0_16RowSetCollectionESM_SB_ENKUlSB_E_clImEEDaSB_:bb.a
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS2_4tree20CommonRowPartitioner13LeafPartitionINS7_14ScalarTreeViewEEEvPKNS2_7ContextERKT_NS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS3_4SpanIiLm18446744073709551615EEEEUlmE_SA_EEvSD_RKT0_RKNS3_16RowSetCollectionESP_SE_EUlSE_E_JmEEEvSE_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.949) align 8 %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  invoke void @_ZZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS4_14ScalarTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE_S7_EEvSA_RKT0_RKNS0_16RowSetCollectionESM_SB_ENKUlSB_E_clImEEDaSB_(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.a, 1        ; 2 uses
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #11
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__cxa_begin_catch(ptr %i.b) #11 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #37
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !988
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.j = load ptr, ptr %6, align 8, !tbaa !988
  store ptr null, ptr %6, align 8, !tbaa !988
  %i.k = load ptr, ptr %0, align 8, !tbaa !988    ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !988
  store ptr %i.j, ptr %0, align 8, !tbaa !988
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %.pr = load ptr, ptr %6, align 8, !tbaa !988
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #11
  %i.m = icmp eq i32 %i.c, %i.l
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @__cxa_begin_catch(ptr %i.b) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #11 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #37
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !988
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.r = load ptr, ptr %5, align 8, !tbaa !988
  store ptr null, ptr %5, align 8, !tbaa !988
  %i.s = load ptr, ptr %0, align 8, !tbaa !988    ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !988
  store ptr %i.r, ptr %0, align 8, !tbaa !988
  %.not.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i12, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %.pr18 = load ptr, ptr %5, align 8, !tbaa !988
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.not.i14 = icmp eq ptr %.pr18, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #11 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #40
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK7xgboost4tree20CommonRowPartitioner13LeafPartitionINS0_14ScalarTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS_6common4SpanIiLm18446744073709551615EEEENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4083, !nonnull !198, !align !968 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !4085
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36, !noalias !4085 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36, !noalias !4085
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !283, !noalias !4085 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 0, i64 %i.c          ; 3 uses
  %.not8.i.i = icmp ugt i64 %i.k, %i.i
  br i1 %.not8.i.i, label %bb.b, label %bb.c, !prof !176

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #40, !noalias !4085
  unreachable

bb.c:                                             ; preds = %bb.a
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %.in.i.i, align 8, !tbaa !286, !noalias !4085 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp eq i64 %i.i, %i.k                   ; 2 uses
  %i.o = or i1 %i.n, %i.m
  br i1 %i.o, label %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.d, !prof !218

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #40, !noalias !4085
  unreachable

_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 7 uses
  %.sink.i.i.i = select i1 %i.n, i64 0, i64 %i.g  ; 5 uses
  %i.q = lshr i64 %.sink.i.i.i, 2                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %2 = and i64 %.sink.i.i.i, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.071.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.i ] ; 2 uses
  %.sroa.046.070.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.i ] ; 6 uses
  %i.r = mul i64 %.sroa.046.070.i.i.i.i, %i.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !2897
  %i.v = fcmp une float %i.u, 0.000000e+00
  br i1 %i.v, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i64 %.sroa.046.070.i.i.i.i, 1 ; 2 uses
  %i.x = mul i64 %i.w, %i.e
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !2897
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = or disjoint i64 %.sroa.046.070.i.i.i.i, 2 ; 2 uses
  %i.ad = mul i64 %i.ac, %i.e
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !2897
  %i.ah = fcmp une float %i.ag, 0.000000e+00
  br i1 %i.ah, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = or disjoint i64 %.sroa.046.070.i.i.i.i, 3 ; 2 uses
  %i.aj = mul i64 %i.ai, %i.e
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !2897
  %i.an = fcmp une float %i.am, 0.000000e+00
  br i1 %i.an, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nuw i64 %.sroa.046.070.i.i.i.i, 4
  %i.ap = add nsw i64 %.071.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.071.i.i.i.i, 1
  br i1 %i.aq, label %bb.e, label %._crit_edge.i.i.i.i, !llvm.loop !4088

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %.sroa.046.0.lcssa.i.i.i.i = phi i64 [ 0, %_ZNK7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit ], [ %2, %bb.i ] ; 6 uses
  %i.ar = sub i64 %.sink.i.i.i, %.sroa.046.0.lcssa.i.i.i.i
  switch i64 %i.ar, label %bb.m [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge73.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = mul i64 %.sroa.046.0.lcssa.i.i.i.i, %i.e
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !2897
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %3 = or disjoint i64 %.sroa.046.0.lcssa.i.i.i.i, 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.k
  %.sroa.046.1.i.i.i.i = phi i64 [ %3, %bb.k ], [ %.sroa.046.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ax = mul i64 %.sroa.046.1.i.i.i.i, %i.e
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !2897
  %i.bb = fcmp une float %i.ba, 0.000000e+00
  br i1 %i.bb, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bc = add nuw i64 %.sroa.046.1.i.i.i.i, 1
  br label %._crit_edge._crit_edge73.i.i.i.i

._crit_edge._crit_edge73.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.l
  %.sroa.046.2.i.i.i.i = phi i64 [ %i.bc, %bb.l ], [ %.sroa.046.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bd = mul i64 %.sroa.046.2.i.i.i.i, %i.e
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !2897
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge._crit_edge73.i.i.i.i, %._crit_edge.i.i.i.i
  br label %_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit

_ZSt6all_ofIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIKNS0_6detail20GradientPairInternalIfEELi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEZZNKS0_4tree20CommonRowPartitioner13LeafPartitionINSG_14ScalarTreeViewEEEvPKNS0_7ContextERKSA_NS9_IS8_Li2EEENS1_4SpanIiLm18446744073709551615EEEENKUlmE_clEmEUlRS8_E_EbSA_SA_T0_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge73.i.i.i.i, %bb.m
  %.sroa.014.0.in.sroa.speculated.i.i.i.i = phi i64 [ %.sroa.046.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.sink.i.i.i, %bb.m ], [ %.sroa.046.2.i.i.i.i, %._crit_edge._crit_edge73.i.i.i.i ], [ %.sroa.046.0.lcssa.i.i.i.i, %bb.j ], [ %i.ai, %bb.h ], [ %i.ac, %bb.g ], [ %i.w, %bb.f ], [ %.sroa.046.070.i.i.i.i, %bb.e ]
  %i.bi = icmp eq i64 %.sink.i.i.i, %.sroa.014.0.in.sroa.speculated.i.i.i.i
  ret i1 %i.bi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNKS0_16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS5_14ScalarTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE0_S8_EEvSB_RKT0_RKNS0_16RowSetCollectionESN_SC_EUlSC_E_EEvSC_iNS0_5SchedEOSP_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not102 = icmp eq i64 %0, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader, %.lr.ph95
  %.04994 = phi i64 [ %i.d, %.lr.ph95 ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS_4tree20CommonRowPartitioner13LeafPartitionINS4_14ScalarTreeViewEEEvPKNS_7ContextERKT_NS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS0_4SpanIiLm18446744073709551615EEEEUlmE0_S7_EEvSA_RKT0_RKNS0_16RowSetCollectionESM_SB_ENKUlSB_E_clImEEDaSB_(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %.04994)
  %i.d = add nuw i64 %.04994, 1                   ; 2 uses
  %exitcond113.not = icmp eq i64 %i.d, %0
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph95, !llvm.loop !4089

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !54, !noalias !4090
  store i32 1, ptr %i.b, align 4, !tbaa !54, !noalias !4090
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.b
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %6, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.45, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.d

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.e ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.46, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %6, align 8, !tbaa !55     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.f unwind label %bb.ac

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.ab

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.pr69 = load ptr, ptr %6, align 8, !tbaa !55   ; 4 uses
  %.not.i63 = icmp eq ptr %.pr69, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %.pr69, align 8, !tbaa !57 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr69, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !59
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr69, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.g, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  switch i32 %2, label %.thread [
    i32 0, label %.preheader72
    i32 1, label %bb.k
    i32 2, label %bb.p
    i32 3, label %.preheader81
  ]

.thread:                                          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit

.preheader81:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not96 = icmp eq i64 %0, 0
  br i1 %.not96, label %bb.w, label %.lr.ph

.preheader72:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not101 = icmp eq i64 %0, 0
  br i1 %.not101, label %bb.w, label %.lr.ph93

.lr.ph93:                                         ; preds = %.preheader72, %bb.i
  %.04492 = phi i64 [ %i.v, %bb.i ], [ 0, %.preheader72 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS2_4tree20CommonRowPartitioner13LeafPartitionINS7_14ScalarTreeViewEEEvPKNS2_7ContextERKT_NS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS3_4SpanIiLm18446744073709551615EEEEUlmE0_SA_EEvSD_RKT0_RKNS3_16RowSetCollectionESP_SE_EUlSE_E_JmEEEvSE_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.954) align 8 %4, i64 noundef %.04492)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph93
  %i.v = add nuw i64 %.04492, 1                   ; 2 uses
  %exitcond112.not = icmp eq i64 %i.v, %0
  br i1 %exitcond112.not, label %thread-pre-split125, label %.lr.ph93, !llvm.loop !4093

bb.j:                                             ; preds = %.lr.ph93
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.x = icmp eq i64 %3, 0
  %.not100 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.x, label %.preheader73, label %.preheader75

.preheader75:                                     ; preds = %bb.k
  br i1 %.not100, label %bb.w, label %.lr.ph89

.preheader73:                                     ; preds = %bb.k
  br i1 %.not100, label %bb.w, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader73, %bb.l
  %.04390 = phi i64 [ %i.y, %bb.l ], [ 0, %.preheader73 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common16PartitionBuilderILm2048EE13LeafPartitionIZNKS2_4tree20CommonRowPartitioner13LeafPartitionINS7_14ScalarTreeViewEEEvPKNS2_7ContextERKT_NS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS3_4SpanIiLm18446744073709551615EEEEUlmE0_SA_EEvSD_RKT0_RKNS3_16RowSetCollectionESP_SE_EUlSE_E_JmEEEvSE_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.954) align 8 %4, i64 noundef %.04390)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph91
  %i.y = add nuw i64 %.04390, 1                   ; 2 uses
  %exitcond111.not = icmp eq i64 %i.y, %0
  br i1 %exitcond111.not, label %thread-pre-split125, label %.lr.ph91, !llvm.loop !4094
end_hunk_1
