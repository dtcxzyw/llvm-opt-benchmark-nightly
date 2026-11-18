Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/learner?download=true
inline.NumInlined: 7339
inline.NumDeleted: 2449
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIN7xgboost4JsonESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  invoke void @__cxa_rethrow() #41
          to label %bb.u unwind label %bb.r

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %i.cr

bb.t:                                             ; preds = %bb.r
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #40
  unreachable

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE13_M_deallocateEPS1_m.exit42
  unreachable
}

declare void @_ZN7xgboost6common7Monitor5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost17LearnerTrainParamC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i8, ptr %1, align 8
  store i8 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !139, !range !217, !noundef !218
  store i8 %i.f, ptr %i.d, align 1, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !122
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !106  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.l, ptr %i.b, align 8, !tbaa !82
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !69
  %i.o = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.o, ptr %i.i, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !62
  store i8 %i.q, ptr %i.p, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !106
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !122
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !82
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !69
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !62
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = phi ptr [ %i.ac, %.noexc ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.aa, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i7
  %i.af = load i8, ptr %i.y, align 1, !tbaa !62
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i7
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !106
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !140
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !140
  ret void

bb.g:                                             ; preds = %.noexc.i8
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !69  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !62
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost7Context18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEEESC_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.174") align 8 %0, ptr noundef nonnull align 8 dereferenceable(5084) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.a = load i8, ptr %1, align 8, !tbaa !232, !range !217, !noalias !840, !noundef !218
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !842
  %i.c = invoke noundef ptr @_ZN7xgboost7Context11__MANAGER__Ev()
          to label %bb.c unwind label %common.resume, !noalias !842

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !230, !noalias !842
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !230, !noalias !842
  invoke void @_ZNK4dmlc9parameter12ParamManager9RunUpdateIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_NS0_15ParamInitOptionEPSH_PSt3setIPNS0_16FieldAccessEntryESt4lessISP_ESaISP_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.d, ptr %i.f, i32 noundef 0, ptr noundef nonnull align 8 %0, ptr noundef null)
          to label %_ZN7xgboost16XGBoostParameterINS_7ContextEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EEEESE_RKT_.exit unwind label %common.resume

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !844
  %i.g = invoke noundef ptr @_ZN7xgboost7Context11__MANAGER__Ev()
          to label %bb.e unwind label %common.resume, !noalias !844

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %2, align 8, !tbaa !230, !noalias !844
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !230, !noalias !844
  invoke void @_ZNK4dmlc9parameter12ParamManager7RunInitIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_PSH_NS0_15ParamInitOptionE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.h, ptr %i.j, ptr noundef nonnull align 8 %0, i32 noundef 0)
          to label %_ZN4dmlc9ParameterIN7xgboost7ContextEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit.i unwind label %common.resume

_ZN4dmlc9ParameterIN7xgboost7ContextEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit.i: ; preds = %bb.e
  store i8 1, ptr %1, align 8, !tbaa !232, !noalias !840
  br label %_ZN7xgboost16XGBoostParameterINS_7ContextEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EEEESE_RKT_.exit

_ZN7xgboost16XGBoostParameterINS_7ContextEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EEEESE_RKT_.exit: ; preds = %bb.c, %_ZN4dmlc9ParameterIN7xgboost7ContextEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit.i
  invoke void @_ZN7xgboost7Context16SetDeviceOrdinalERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(5084) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZN7xgboost16XGBoostParameterINS_7ContextEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EEEESE_RKT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #17
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %_ZN7xgboost16XGBoostParameterINS_7ContextEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EEEESE_RKT_.exit
  ret void
}

declare void @_ZN7xgboost13ConsoleLogger9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost20LearnerConfiguration20ConfigureNumFeaturesEv(ptr noundef nonnull align 8 dereferenceable(5848) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::linalg::TensorView.276", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %5 = alloca %"class.std::unique_ptr.19", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5208 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5640 ; 4 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(184) %i.f) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #41
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.b
  invoke void @_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE12ClearExpiredEv(ptr noundef nonnull align 8 dereferenceable(184) %i.f)
          to label %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9ContainerEv.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.p, %bb.u, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn15.pn, %bb.p ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(184) %i.f) #17 ; 0 uses
  br label %common.resume

_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9ContainerEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(184) %i.f) #17 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5696
  %.sroa.039.049 = load ptr, ptr %i.k, align 8, !tbaa !259 ; 2 uses
  %.not4750 = icmp eq ptr %.sroa.039.049, null
  br i1 %.not4750, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9ContainerEv.exit
  %.lcssa = phi i32 [ 0, %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9ContainerEv.exit ], [ %.sroa.speculated, %bb.k ]
  store i32 %.lcssa, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 1, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 -65536, ptr %.sroa.7.0..sroa_idx, align 8
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost10collective15GlobalCommGroupEv(), !noalias !849
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !368, !noalias !849
  call void @_ZN7xgboost10collective9AllreduceIjLi1EEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %4, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.276") align 8 %1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i32 noundef 813)
          to label %bb.l unwind label %bb.n

.lr.ph:                                           ; preds = %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9ContainerEv.exit, %bb.k
  %.sroa.039.053 = phi ptr [ %.sroa.039.0, %bb.k ], [ %.sroa.039.049, %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9ContainerEv.exit ] ; 3 uses
  %7 = phi i32 [ %.sroa.speculated, %bb.k ], [ 0, %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9ContainerEv.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.039.053, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !272
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.h, !prof !64

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.q = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.q, ptr noundef nonnull @.str, i32 noundef 804)
  %i.r = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.86, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i32 %7, ptr %i.a, align 4
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.039.053, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !336  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit, !prof !850

_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit: ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %bb.k, !prof !851

_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread: ; preds = %bb.h, %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.aa = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aa, ptr noundef nonnull @.str, i32 noundef 805)
  %i.ab = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit20 unwind label %bb.i ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit20: ; preds = %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.87, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit20
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit20, %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i32 %7, ptr %i.a, align 4
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !272 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef nonnull align 8 dereferenceable(248) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !852 ; 2 uses
  call void @_ZN7xgboost5error14MaxFeatureSizeEm(i64 noundef %i.al)
  %i.am = trunc i64 %i.al to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %7, i32 %i.am) ; 2 uses
  %.sroa.039.0 = load ptr, ptr %.sroa.039.053, align 8, !tbaa !259 ; 2 uses
  %.not47 = icmp eq ptr %.sroa.039.0, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge
  %i.an = load i32, ptr %i.a, align 4, !tbaa !63  ; 3 uses
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !853 ; 2 uses
  %i.ap = icmp ugt i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store i32 %i.an, ptr %i.c, align 8, !tbaa !853
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %.pr53 = phi i32 [ %i.an, %bb.m ], [ %i.ao, %bb.l ]
  %i.ar = load ptr, ptr %4, align 8, !tbaa !382   ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i23, label %bb.q, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %bb.o
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ar) #17, !inline_history !37
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 56) #39, !inline_history !37
  %.pr.pre = load i32, ptr %i.c, align 8, !tbaa !63, !noalias !854
  br label %bb.q

bb.p:                                             ; preds = %bb.g, %bb.j, %bb.n
  %.pn15.pn = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %i.ae, %bb.j ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %common.resume

bb.q:                                             ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i, %bb.o
  %.pr = phi i32 [ %.pr.pre, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i ], [ %.pr53, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !63
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.q, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.q
  call void @_ZN4dmlc14LogCheckFormatIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.19") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr43 = load ptr, ptr %5, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %.not48 = icmp eq ptr %.pr43, null
  br i1 %.not48, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.as = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.as, ptr noundef nonnull @.str, i32 noundef 818)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.s

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.at = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit26 unwind label %bb.t ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit26: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit26
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.88, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.aw = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !106
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.ax, i64 noundef %i.az)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.89, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.v unwind label %bb.s

bb.s:                                             ; preds = %.noexc, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit26, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.be, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %common.resume

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.pr44 = load ptr, ptr %5, align 8, !tbaa !119  ; 4 uses
  %.not.i36 = icmp eq ptr %.pr44, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr %.pr44, align 8, !tbaa !69 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pr44, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !62
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr44, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.x:                                             ; preds = %bb.t, %bb.i, %bb.f
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost20LearnerConfiguration18ConfigureObjectiveERKNS_17LearnerTrainParamEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(5848) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::vector.174", align 16 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5320 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 1 dereferenceable(9) @.str.63, i64 9, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.d, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.e, align 1, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5336 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5328 ; 11 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.g, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.h, %._crit_edge.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !106  ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.j, i64 9)
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef nonnull %i.c, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #17 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

end_hunk_0
