Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonFunctions?download=true
inline.NumInlined: 16949
inline.NumDeleted: 7026
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.afl = shl nuw nsw i64 1, %i.afj
  %i.afm = and i64 %i.afk, %i.afl
  %.not.i126.i129 = icmp eq i64 %i.afm, 0
  br i1 %.not.i126.i129, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129.i127, label %bb.ep, !llvm.loop !95

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129.i127: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125.i128, %bb.er
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i122.i126, ptr nonnull %i.aez)
  br i1 %.sroa.0477.0734.i124, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread188, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread: ; preds = %bb.co, %bb.cm, %bb.ce, %bb.cc, %bb.dy, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i143, %bb.cj, %bb.bx, %bb.bz, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129.i127, %bb.dv, %.thread627.i103, %.critedge.i80.i122, %bb.en, %.thread729.i112, %bb.eg, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i100
  %.4.i29.ph = phi i32 [ 17, %.thread729.i112 ], [ 5, %bb.dy ], [ 17, %bb.en ], [ 17, %.critedge.i80.i122 ], [ 28, %bb.ce ], [ 28, %bb.cm ], [ 28, %bb.cc ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i100 ], [ 17, %.thread627.i103 ], [ 31, %bb.dv ], [ 8, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129.i127 ], [ 17, %bb.bz ], [ 17, %bb.bx ], [ 17, %bb.cj ], [ 17, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit113.i143 ], [ 17, %bb.eg ], [ 28, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ev

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread188: ; preds = %bb.dz, %bb.ei, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.es

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit: ; preds = %bb.ch, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i161, %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27, %.thread629.i105
  %.4.i29 = phi i32 [ %.sroa.6401.1.i28, %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27 ], [ %.mux638.i107, %.thread629.i105 ], [ %i.tk, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i161 ], [ %i.rs, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not15 = icmp eq i32 %.4.i29, 0
  br i1 %.not15, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread188, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread180, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.val = load ptr, ptr %i.afn, align 8, !tbaa !833
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val17 = load ptr, ptr %i.afo, align 8, !tbaa !833
  %i.afp = icmp eq ptr %.val, %.val17
  br i1 %i.afp, label %bb.eu, label %bb.et, !prof !142

bb.et:                                            ; preds = %bb.es
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmbE18veloxCheckFailArgs) #50
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.afq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !119
  %i.afs = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !125 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afw = load i32, ptr %i.afv, align 8, !tbaa !134
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %i.afy = zext i32 %i.afw to i64
  %i.afz = load ptr, ptr %i.afx, align 8, !tbaa !135
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.afy
  %i.agb = icmp eq ptr %i.afr, %i.aga
  %. = select i1 %i.agb, i32 0, i32 31
  br label %bb.ev

bb.ev:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread299, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread296, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, %bb.eu, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit
  %.2 = phi i32 [ %.4.i29, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit ], [ %., %bb.eu ], [ %.4.i, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit ], [ %.4.i.ph, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread ], [ %.4.i29.ph, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread ], [ 31, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread296 ], [ 31, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread299 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ew

bb.ew:                                            ; preds = %bb.a, %bb.ev
  %.3 = phi i32 [ %.2, %bb.ev ], [ %i.j, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i32 %.3
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #15

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #15

declare void @_ZN8facebook5velox10BaseVector14wrapInConstantEiiSt10shared_ptrIS1_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.142") align 8, i32 noundef, i32 noundef, ptr noundef align 8) local_unnamed_addr #3

declare void @_ZN8facebook5velox10BaseVector13flattenVectorERSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_E14call_once_slowIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.std::lock_guard", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !2739
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = load atomic i32, ptr %i.c acquire, align 4 ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !117
  %i.e = and i32 %i.d, -1312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 128
  %i.h = cmpxchg ptr %i.c, i32 %i.d, i32 %i.g seq_cst seq_cst, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, !prof !383

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  store i32 %i.j, ptr %i.b, align 4
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit: ; preds = %bb.b, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.l = load atomic i8, ptr %0 monotonic, align 4, !range !121, !noundef !122
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %.val = load ptr, ptr %1, align 8, !tbaa !787
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_ZN8facebook5velox26simdjsonErrorsToExceptionsEPNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %i.n)
          to label %_ZNK5folly9invoke_fnclIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS3_17SelectivityVectorERKSt10shared_ptrINS3_10BaseVectorEERKSA_IKNS3_4TypeEERNS3_4exec7EvalCtxERSC_bEUlvE_JEEEDTclscT_fp_spscT0_fp0_EEOSP_DpOSQ_.exit unwind label %bb.g

_ZNK5folly9invoke_fnclIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS3_17SelectivityVectorERKSt10shared_ptrINS3_10BaseVectorEERKSA_IKNS3_4TypeEERNS3_4exec7EvalCtxERSC_bEUlvE_JEEEDTclscT_fp_spscT0_fp0_EEOSP_DpOSQ_.exit: ; preds = %bb.c
  store atomic i8 1, ptr %0 release, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, %_ZNK5folly9invoke_fnclIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS3_17SelectivityVectorERKSt10shared_ptrINS3_10BaseVectorEERKSA_IKNS3_4TypeEERNS3_4exec7EvalCtxERSC_bEUlvE_JEEEDTclscT_fp_spscT0_fp0_EEOSP_DpOSQ_.exit
  %i.o = load ptr, ptr %3, align 8, !tbaa !835, !nonnull !122, !align !414 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.p = atomicrmw and ptr %i.o, i32 -401 seq_cst, align 4 ; 2 uses
  %i.q = and i32 %i.p, -401
  store i32 %i.q, ptr %i.a, align 4, !tbaa !117
  %i.r = and i32 %i.p, 15
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.e, !prof !142

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #49
  unreachable

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !835, !nonnull !122, !align !414 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = atomicrmw and ptr %i.b, i32 -401 seq_cst, align 4 ; 2 uses
  %i.d = and i32 %i.c, -401
  store i32 %i.d, ptr %i.a, align 4, !tbaa !117
  %i.e = and i32 %i.c, 15
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #49
  unreachable
}

declare void @_ZN8facebook5velox26simdjsonErrorsToExceptionsEPNSt15__exception_ptr13exception_ptrE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx.ptestz.256(<4 x i64>, <4 x i64>) #30

declare noundef i64 @_ZN8facebook5velox21normalizeForJsonParseEPKcmPc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl22generateViewsFromArrayILb1EEEN8simdjson10error_codeENS5_8fallback8ondemand5arrayE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::array") align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_114addOrMergeCharERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull @.str.160)
  %.sroa.077.0.copyload = load ptr, ptr %1, align 8, !tbaa !140, !noalias !2746 ; 7 uses
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.478.0.copyload = load i32, ptr %.sroa.478.0..sroa_idx, align 8, !tbaa !117, !noalias !2746 ; 13 uses
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.679.0.copyload = load ptr, ptr %.sroa.679.0..sroa_idx, align 8, !tbaa !135, !noalias !2746 ; 3 uses
  %.not = icmp eq ptr %.sroa.077.0.copyload, null
  br i1 %.not, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 36 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 8 ; 6 uses
  %i.e = add nuw nsw i32 %.sroa.478.0.copyload, 1 ; 3 uses
  %i.f = icmp sgt i32 %.sroa.478.0.copyload, 0
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 16 ; 2 uses
  %or.cond.i.i = icmp samesign ult i32 %.sroa.478.0.copyload, 2147483646
  %i.h = add nsw i32 %.sroa.478.0.copyload, -1
  %or.cond.i4.i = icmp ne i32 %.sroa.478.0.copyload, 2147483647
  %i.i = load i32, ptr %i.b, align 4, !tbaa !136  ; 2 uses
  %.not157186 = icmp slt i32 %i.i, %.sroa.478.0.copyload
  br i1 %.not157186, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit, label %.lr.ph188

.lr.ph188:                                        ; preds = %.split.lr.ph, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit
  %i.j = phi i32 [ %i.bp, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %i.i, %.split.lr.ph ]
  %.022160187 = phi i1 [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ true, %.split.lr.ph ]
  %i.k = load i32, ptr %i.c, align 8, !tbaa !137, !noalias !2747 ; 2 uses
  %.not.i31 = icmp eq i32 %i.k, 0
  br i1 %.not.i31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph188
  store ptr null, ptr %i.g, align 8, !tbaa !123, !noalias !2747
  store i32 0, ptr %i.b, align 4, !tbaa !136, !noalias !2747
  br label %.thread154

bb.c:                                             ; preds = %.lr.ph188
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !138, !noalias !2748 ; 2 uses
  %i.m = icmp ugt ptr %i.l, %.sroa.679.0.copyload
  tail call void @llvm.assume(i1 %i.m), !noalias !2748
  %i.n = icmp eq i32 %i.j, %i.e
  tail call void @llvm.assume(i1 %i.n), !noalias !2748
  tail call void @llvm.assume(i1 %i.f), !noalias !2748
  br i1 %.022160187, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_114addOrMergeCharERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull @.str.224)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %.sroa.077.0.copyload, ptr %2, align 8, !tbaa !140
  store i32 %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8, !tbaa !117
  store i32 0, ptr %.sroa.08.sroa.5.0..sroa_idx, align 4
  store ptr %i.l, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.o = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::value") align 8 %2) ; 2 uses
  %.not29 = icmp eq i32 %i.o, 0
  br i1 %.not29, label %bb.f, label %.thread154

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.c, align 8, !tbaa !137
  %.not.i32 = icmp eq i32 %i.p, 0
  br i1 %.not.i32, label %bb.g, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !138  ; 5 uses
  %i.r = icmp ugt ptr %i.q, %.sroa.679.0.copyload
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i32, ptr %i.b, align 4, !tbaa !136  ; 10 uses
  %i.t = icmp sge i32 %i.s, %.sroa.478.0.copyload
  tail call void @llvm.assume(i1 %i.t)
  %.not.i33 = icmp sgt i32 %i.s, %.sroa.478.0.copyload
  %.pre = load ptr, ptr %.sroa.077.0.copyload, align 8, !tbaa !116 ; 4 uses
  br i1 %.not.i33, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 10 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !119
  %i.v = load i32, ptr %i.q, align 4, !tbaa !117
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !118
  switch i8 %i.y, label %bb.l [
    i8 91, label %bb.m
    i8 123, label %bb.m
    i8 58, label %bb.m
    i8 44, label %bb.m
    i8 93, label %bb.i
    i8 125, label %bb.i
    i8 34, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.z = add nsw i32 %i.s, -1                     ; 4 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !136
  %.not6.i = icmp samesign ugt i32 %i.z, %.sroa.478.0.copyload
  br i1 %.not6.i, label %bb.m, label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !117
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !118
  %i.ae = icmp eq i8 %i.ad, 58
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8, !tbaa !119
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.ag = add nsw i32 %i.s, -1                    ; 4 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !136
  %.not7.i = icmp samesign ugt i32 %i.ag, %.sroa.478.0.copyload
  br i1 %.not7.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.l, %bb.k, %bb.i
  %i.ah = phi i32 [ %i.s, %bb.h ], [ %i.s, %bb.h ], [ %i.s, %bb.h ], [ %i.s, %bb.h ], [ %i.ag, %bb.l ], [ %i.s, %bb.k ], [ %i.z, %bb.i ]
  %i.ai = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.l ], [ %i.af, %bb.k ], [ %i.u, %bb.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ap = zext i32 %i.an to i64                   ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !135
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = icmp ult ptr %i.ai, %i.ar
  br i1 %i.as, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit

.lr.ph:                                           ; preds = %bb.m, %bb.p
  %i.at = phi i32 [ %i.bc, %bb.p ], [ %i.ah, %bb.m ] ; 3 uses
  %i.au = phi ptr [ %i.av, %bb.p ], [ %i.ai, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 4 uses
  store ptr %i.av, ptr %i.d, align 8, !tbaa !119
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !117
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !118
  switch i8 %i.az, label %bb.p [
    i8 91, label %bb.n
    i8 123, label %bb.n
    i8 93, label %bb.o
    i8 125, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ba = add nuw nsw i32 %i.at, 1                ; 2 uses
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !136
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bb = add nsw i32 %i.at, -1                   ; 4 uses
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !136
  %.not8.i = icmp sgt i32 %i.bb, %.sroa.478.0.copyload
  br i1 %.not8.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph, %bb.o, %bb.n
  %i.bc = phi i32 [ %i.at, %.lr.ph ], [ %i.bb, %bb.o ], [ %i.ba, %bb.n ]
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !135
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ap
  %i.bf = icmp ult ptr %i.av, %i.be
  br i1 %i.bf, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !0

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.p, %bb.m
  store i32 3, ptr %i.c, align 8, !tbaa !137
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit:                                        ; preds = %bb.o, %bb.g, %bb.i, %bb.l
  %i.bg = phi i32 [ %i.ag, %bb.l ], [ %i.s, %bb.g ], [ %i.z, %bb.i ], [ %i.bb, %bb.o ]
  %i.bh = phi ptr [ %i.u, %bb.l ], [ %i.q, %bb.g ], [ %i.u, %bb.i ], [ %i.av, %bb.o ] ; 3 uses
  %i.bi = icmp ugt ptr %i.bh, %.sroa.679.0.copyload
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i32 %i.bg, %.sroa.478.0.copyload
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bk, ptr %i.d, align 8, !tbaa !119
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !117
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !118
  switch i8 %i.bo, label %bb.s [
    i8 93, label %bb.q
    i8 44, label %bb.r
  ]

bb.q:                                             ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i4.i)
  store i32 %i.h, ptr %i.b, align 4, !tbaa !136
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.r:                                             ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i.i)
  store i32 %i.e, ptr %i.b, align 4, !tbaa !136
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_:bb.a

bb.h:                                             ; preds = %bb.g
  store i64 %1, ptr %i.c, align 8, !tbaa !145
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %.sroa.6.0..sroa_idx29, align 8, !tbaa !146
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.w, ptr %i.b, align 8, !tbaa !815
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.c to i64
  %i.y = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.j, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i10

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #50
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.i
  %i.ab = ashr exact i64 %i.z, 4
  %i.ac = ashr exact i64 %i.z, 3                  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %i.af = select i1 %i.ad, i64 576460752303423487, i64 %i.ae ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #47 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i64 %1, ptr %i.ai, align 8, !tbaa !145
  %.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %2, ptr %.sroa.6.0..sroa_idx31, align 8, !tbaa !146
  br label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i10, %.lr.ph.i.i.i.i.i14
  %.012.i.i.i.i.i15 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i14 ], [ %i.ah, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i10 ] ; 3 uses
  %.0911.i.i.i.i.i16 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i14 ], [ %i.a, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i16, i64 16, i1 false), !tbaa.struct !814, !alias.scope !2786
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i16, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i15, i64 16
  %.not.i.i.i.i.i17 = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i.i17, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i18, label %.lr.ph.i.i.i.i.i14, !llvm.loop !91

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i18: ; preds = %.lr.ph.i.i.i.i.i14
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i15, i64 32
  %.not.i23.i.i20 = icmp eq ptr %i.a, null
  br i1 %.not.i23.i.i20, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i21, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i18
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !784
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ao) #48
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i21

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i21: ; preds = %bb.k, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i18
  store ptr %i.ah, ptr %0, align 8, !tbaa !783
  store ptr %i.al, ptr %i.b, align 8, !tbaa !815
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !784
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i21, %bb.h, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_114addOrMergeCharERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !797    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !797  ; 12 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !784
  %.not.i = icmp eq ptr %i.a, %i.f
  br i1 %.not.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.c, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.b, align 8, !tbaa !815
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  store i64 1, ptr %i.h, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx26, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !784
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.m) #48
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.h, ptr %0, align 8, !tbaa !783
  store ptr %i.i, ptr %i.b, align 8, !tbaa !815
  store ptr %i.i, ptr %i.e, align 8, !tbaa !784
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !152
  %i.q = load i64, ptr %i.n, align 8, !tbaa !151  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !118
  %i.t = load i8, ptr %1, align 1, !tbaa !118
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.q, 1
  store i64 %i.v, ptr %i.n, align 8, !tbaa !145
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !784
  %.not.i8 = icmp eq ptr %i.c, %i.x
  br i1 %.not.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %i.c, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx28, align 8, !tbaa !146
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.y, ptr %i.b, align 8, !tbaa !815
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = ptrtoint ptr %i.c to i64
  %i.aa = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775792
  br i1 %i.ac, label %bb.j, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i9

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #50
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i9: ; preds = %bb.i
  %i.ad = ashr exact i64 %i.ab, 4
  %i.ae = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 576460752303423487)
  %i.ah = select i1 %i.af, i64 576460752303423487, i64 %i.ag ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #47 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store i64 1, ptr %i.ak, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !146
  br label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i9, %.lr.ph.i.i.i.i.i13
  %.012.i.i.i.i.i14 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i13 ], [ %i.aj, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i9 ] ; 3 uses
  %.0911.i.i.i.i.i15 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i13 ], [ %i.a, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i9 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i14, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i15, i64 16, i1 false), !tbaa.struct !814, !alias.scope !2790
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i15, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i14, i64 16
  %.not.i.i.i.i.i16 = icmp eq ptr %i.al, %i.c
  br i1 %.not.i.i.i.i.i16, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i17, label %.lr.ph.i.i.i.i.i13, !llvm.loop !91

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i17: ; preds = %.lr.ph.i.i.i.i.i13
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i14, i64 32
  %.not.i23.i.i19 = icmp eq ptr %i.a, null
  br i1 %.not.i23.i.i19, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i20, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i17
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !784
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.aq) #48
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i20

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i20: ; preds = %bb.k, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i17
  store ptr %i.aj, ptr %0, align 8, !tbaa !783
  store ptr %i.an, ptr %i.b, align 8, !tbaa !815
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !784
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i20, %bb.h, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::array", align 8 ; 5 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::object", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !224    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225  ; 13 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !116  ; 7 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !117  ; 4 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 8 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !118
  switch i8 %i.h, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit [
    i8 123, label %bb.g
    i8 91, label %bb.b
    i8 34, label %bb.ai
    i8 110, label %bb.au
    i8 116, label %bb.ao
    i8 102, label %bb.ao
    i8 45, label %bb.k
    i8 48, label %bb.k
    i8 49, label %bb.k
    i8 50, label %bb.k
    i8 51, label %bb.k
    i8 52, label %bb.k
    i8 53, label %bb.k
    i8 54, label %bb.k
    i8 55, label %bb.k
    i8 56, label %bb.k
    i8 57, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119, !noalias !2801 ; 4 uses
  %i.l = icmp eq ptr %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !136, !noalias !2801 ; 3 uses
  %i.o = load i32, ptr %i.i, align 8, !tbaa !226, !noalias !2801 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.l, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.p), !noalias !2801
  %i.q = icmp sgt i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q), !noalias !2801
  %i.r = load i32, ptr %i.k, align 4, !tbaa !117, !noalias !2801
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !118, !noalias !2801
  %.not8.i.i = icmp eq i8 %i.u, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.j, align 8, !tbaa !119, !noalias !2801
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.w = phi i32 [ %i.n, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = icmp eq ptr %i.x, %i.y
  tail call void @llvm.assume(i1 %i.z), !noalias !2801
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ab = icmp sgt i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.ab), !noalias !2801
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !117, !noalias !2801
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !118, !noalias !2801
  %i.ag = icmp eq i8 %i.af, 93
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !119, !noalias !2801
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sink = phi i32 [ -1, %bb.e ], [ 1, %._crit_edge ]
  %i.ai = add nsw i32 %i.w, %.sink
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !136, !noalias !2801
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0166.sroa.5.0.copyload = load i32, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 4, !noalias !2801
  store ptr %i.a, ptr %2, align 8, !tbaa !140
  %.sroa.023.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.w, ptr %.sroa.023.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.023.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.sroa.0166.sroa.5.0.copyload, ptr %.sroa.023.sroa.5.0..sroa_idx, align 4
  %.sroa.023.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %.sroa.023.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.aj = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl22generateViewsFromArrayILb1EEEN8simdjson10error_codeENS5_8fallback8ondemand5arrayE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::array") align 8 %2)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119, !noalias !2802 ; 4 uses
  %i.an = icmp eq ptr %i.am, %i.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !136, !noalias !2802 ; 3 uses
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !226, !noalias !2802 ; 2 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.an, label %bb.h, label %._crit_edge465

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ar), !noalias !2802
  %i.as = icmp sgt i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.as), !noalias !2802
  %i.at = load i32, ptr %i.am, align 4, !tbaa !117, !noalias !2802
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !118, !noalias !2802
  %.not8.i.i43 = icmp eq i8 %i.aw, 123
  br i1 %.not8.i.i43, label %bb.i, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !119, !noalias !2802
  br label %._crit_edge465

._crit_edge465:                                   ; preds = %bb.g, %bb.i
  %i.ay = phi i32 [ %i.ap, %bb.i ], [ %i.aq, %bb.g ] ; 4 uses
  %i.az = phi ptr [ %i.ax, %bb.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bb = icmp eq ptr %i.az, %i.ba
  tail call void @llvm.assume(i1 %i.bb), !noalias !2802
  %i.bc = icmp sgt i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.bc), !noalias !2802
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !117, !noalias !2802
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !118, !noalias !2802
  %i.bh = icmp eq i8 %i.bg, 125
  br i1 %i.bh, label %bb.j, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

bb.j:                                             ; preds = %._crit_edge465
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bj, ptr %i.al, align 8, !tbaa !119, !noalias !2802
  %i.bk = add nsw i32 %i.ay, -1
  %or.cond.i.i44 = icmp ne i32 %i.ay, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i44), !noalias !2802
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !136, !noalias !2802
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread: ; preds = %._crit_edge465, %bb.j
  %.sroa.0193.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0193.sroa.5.0.copyload = load i32, ptr %.sroa.0193.sroa.5.0..sroa_idx, align 4
  store ptr %i.a, ptr %3, align 8, !tbaa !140
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ay, ptr %.sroa.019.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0193.sroa.5.0.copyload, ptr %.sroa.019.sroa.5.0..sroa_idx, align 4
  %.sroa.019.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %.sroa.019.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.bl = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl23generateViewsFromObjectILb1EEEN8simdjson10error_codeENS5_8fallback8ondemand6objectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::object") align 8 %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !117
  %i.bp = sub i32 %i.bo, %i.e
  %i.bq = zext i32 %i.bp to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, %bb.k
  %.0.i110 = phi i64 [ %i.bq, %bb.k ], [ %i.br, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i ] ; 2 uses
  %i.br = add i64 %.0.i110, -1                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !118 ; 2 uses
  %i.bu = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n, !prof !832

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i114 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i114, label %bb.n, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.bx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i, %bb.m, %bb.l
  %i.by = icmp ult i8 %i.bt, 33
  br i1 %i.by, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i: ; preds = %bb.n
  %i.bz = zext nneg i8 %i.bt to i64
  %i.ca = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.cb = shl nuw nsw i64 1, %i.bz
  %i.cc = and i64 %i.ca, %i.cb
  %.not.i113 = icmp eq i64 %i.cc, 0
  br i1 %.not.i113, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.l, !llvm.loop !95

end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_T0_T1_:bb.a
  store i32 %i.dy, ptr %.fr24, align 4, !tbaa !117
  store i32 %i.dx, ptr %i.cz, align 4, !tbaa !117
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.dz = load i32, ptr %i.f, align 4, !tbaa !117
  store i32 %i.dz, ptr %.fr24, align 4, !tbaa !117
  store i32 %i.dx, ptr %i.f, align 4, !tbaa !117
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph40
  %i.ea = load i32, ptr %i.f, align 4, !tbaa !117
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [24 x i8], ptr %.val28.val.i.i, i64 %i.eb
  %i.ed = tail call noundef zeroext i1 @_ZN8facebook5velox20lessThanForJsonParseERKSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.dj)
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ee = load <2 x i32>, ptr %.fr24, align 4, !tbaa !117
  %i.ef = shufflevector <2 x i32> %i.ee, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ef, ptr %.fr24, align 4, !tbaa !117
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.val.val.i.i = load ptr, ptr %3, align 8, !tbaa !833 ; 2 uses
  %i.eg = load i32, ptr %i.cy, align 4, !tbaa !117
  %i.eh = load i32, ptr %i.cz, align 4, !tbaa !117
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds [24 x i8], ptr %.val.val.i.i, i64 %i.ei
  %i.ek = sext i32 %i.eh to i64
  %i.el = getelementptr inbounds [24 x i8], ptr %.val.val.i.i, i64 %i.ek
  %i.em = tail call noundef zeroext i1 @_ZN8facebook5velox20lessThanForJsonParseERKSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.el)
  %i.en = load i32, ptr %.fr24, align 4, !tbaa !117 ; 2 uses
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eo = load i32, ptr %i.cz, align 4, !tbaa !117
  store i32 %i.eo, ptr %.fr24, align 4, !tbaa !117
  store i32 %i.en, ptr %i.cz, align 4, !tbaa !117
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %i.ep = load i32, ptr %i.cy, align 4, !tbaa !117
  store i32 %i.ep, ptr %.fr24, align 4, !tbaa !117
  store i32 %i.en, ptr %i.cy, align 4, !tbaa !117
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader, %bb.x
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.x ], [ %storemerge2139, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.ex, %bb.x ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i.preheader ]
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i ], [ %i.ex, %bb.v ] ; 9 uses
  %.val10.val.i.i = load ptr, ptr %3, align 8, !tbaa !833 ; 2 uses
  %i.eq = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !117
  %i.er = load i32, ptr %.fr24, align 4, !tbaa !117
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [24 x i8], ptr %.val10.val.i.i, i64 %i.es
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds [24 x i8], ptr %.val10.val.i.i, i64 %i.eu
  %i.ew = tail call noundef zeroext i1 @_ZN8facebook5velox20lessThanForJsonParseERKSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.ev)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.ew, label %bb.v, label %.preheader.i.i, !llvm.loop !2815

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.v ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 6 uses
  %.val.val.i12.i = load ptr, ptr %3, align 8, !tbaa !833 ; 2 uses
  %i.ey = load i32, ptr %.fr24, align 4, !tbaa !117
  %i.ez = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !117
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [24 x i8], ptr %.val.val.i12.i, i64 %i.fa
  %i.fc = sext i32 %i.ez to i64
  %i.fd = getelementptr inbounds [24 x i8], ptr %.val.val.i12.i, i64 %i.fc
  %i.fe = tail call noundef zeroext i1 @_ZN8facebook5velox20lessThanForJsonParseERKSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
  br i1 %i.fe, label %.preheader.i.i, label %bb.w, !llvm.loop !2816

bb.w:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEET_SK_SK_T0_.exit

bb.x:                                             ; preds = %bb.w
  %i.ff = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !117
  %i.fg = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !117
  store i32 %i.fg, ptr %.sroa.014.1.i.i, align 4, !tbaa !117
  store i32 %i.ff, ptr %.sroa.011.1.i.i, align 4, !tbaa !117
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_SK_T0_.exit.i, !llvm.loop !2817

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEET_SK_SK_T0_.exit: ; preds = %bb.w
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2139, i64 noundef %i.cw, ptr nonnull %3)
  %i.fh = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fi = sub i64 %i.fh, %i.a                     ; 2 uses
  %i.fj = ashr exact i64 %i.fi, 2                 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, 16
  br i1 %i.fk, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_T0_.exit, !llvm.loop !2810

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEET_SK_SK_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_SK_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb1EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !815  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !783    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !784
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt17basic_string_viewIcSt11char_traitsIcEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt17basic_string_viewIcSt11char_traitsIcEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !815
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.272) #50
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #47 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !814, !alias.scope !2821
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !91

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !784
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #48
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !783
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !815
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !784
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt17basic_string_viewIcSt11char_traitsIcEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #41

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl22generateViewsFromArrayILb0EEEN8simdjson10error_codeENS5_8fallback8ondemand5arrayE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::array") align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_114addOrMergeCharERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull @.str.160)
  %.sroa.077.0.copyload = load ptr, ptr %1, align 8, !tbaa !140, !noalias !2828 ; 7 uses
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.478.0.copyload = load i32, ptr %.sroa.478.0..sroa_idx, align 8, !tbaa !117, !noalias !2828 ; 13 uses
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.679.0.copyload = load ptr, ptr %.sroa.679.0..sroa_idx, align 8, !tbaa !135, !noalias !2828 ; 3 uses
  %.not = icmp eq ptr %.sroa.077.0.copyload, null
  br i1 %.not, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 36 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 8 ; 6 uses
  %i.e = add nuw nsw i32 %.sroa.478.0.copyload, 1 ; 3 uses
  %i.f = icmp sgt i32 %.sroa.478.0.copyload, 0
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 16 ; 2 uses
  %or.cond.i.i = icmp samesign ult i32 %.sroa.478.0.copyload, 2147483646
  %i.h = add nsw i32 %.sroa.478.0.copyload, -1
  %or.cond.i4.i = icmp ne i32 %.sroa.478.0.copyload, 2147483647
  %i.i = load i32, ptr %i.b, align 4, !tbaa !136  ; 2 uses
  %.not157186 = icmp slt i32 %i.i, %.sroa.478.0.copyload
  br i1 %.not157186, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit, label %.lr.ph188

.lr.ph188:                                        ; preds = %.split.lr.ph, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit
  %i.j = phi i32 [ %i.bp, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %i.i, %.split.lr.ph ]
  %.022160187 = phi i1 [ false, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ true, %.split.lr.ph ]
  %i.k = load i32, ptr %i.c, align 8, !tbaa !137, !noalias !2829 ; 2 uses
  %.not.i31 = icmp eq i32 %i.k, 0
  br i1 %.not.i31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph188
  store ptr null, ptr %i.g, align 8, !tbaa !123, !noalias !2829
  store i32 0, ptr %i.b, align 4, !tbaa !136, !noalias !2829
  br label %.thread154

bb.c:                                             ; preds = %.lr.ph188
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !138, !noalias !2830 ; 2 uses
  %i.m = icmp ugt ptr %i.l, %.sroa.679.0.copyload
  tail call void @llvm.assume(i1 %i.m), !noalias !2830
  %i.n = icmp eq i32 %i.j, %i.e
  tail call void @llvm.assume(i1 %i.n), !noalias !2830
  tail call void @llvm.assume(i1 %i.f), !noalias !2830
  br i1 %.022160187, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_114addOrMergeCharERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull @.str.224)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %.sroa.077.0.copyload, ptr %2, align 8, !tbaa !140
  store i32 %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8, !tbaa !117
  store i32 0, ptr %.sroa.08.sroa.5.0..sroa_idx, align 4
  store ptr %i.l, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.o = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::value") align 8 %2) ; 2 uses
  %.not29 = icmp eq i32 %i.o, 0
  br i1 %.not29, label %bb.f, label %.thread154

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.c, align 8, !tbaa !137
  %.not.i32 = icmp eq i32 %i.p, 0
  br i1 %.not.i32, label %bb.g, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !138  ; 5 uses
  %i.r = icmp ugt ptr %i.q, %.sroa.679.0.copyload
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i32, ptr %i.b, align 4, !tbaa !136  ; 10 uses
  %i.t = icmp sge i32 %i.s, %.sroa.478.0.copyload
  tail call void @llvm.assume(i1 %i.t)
  %.not.i33 = icmp sgt i32 %i.s, %.sroa.478.0.copyload
  %.pre = load ptr, ptr %.sroa.077.0.copyload, align 8, !tbaa !116 ; 4 uses
  br i1 %.not.i33, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 10 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !119
  %i.v = load i32, ptr %i.q, align 4, !tbaa !117
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !118
  switch i8 %i.y, label %bb.l [
    i8 91, label %bb.m
    i8 123, label %bb.m
    i8 58, label %bb.m
    i8 44, label %bb.m
    i8 93, label %bb.i
    i8 125, label %bb.i
    i8 34, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.z = add nsw i32 %i.s, -1                     ; 4 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !136
  %.not6.i = icmp samesign ugt i32 %i.z, %.sroa.478.0.copyload
  br i1 %.not6.i, label %bb.m, label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !117
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !118
  %i.ae = icmp eq i8 %i.ad, 58
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8, !tbaa !119
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.ag = add nsw i32 %i.s, -1                    ; 4 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !136
  %.not7.i = icmp samesign ugt i32 %i.ag, %.sroa.478.0.copyload
  br i1 %.not7.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.l, %bb.k, %bb.i
  %i.ah = phi i32 [ %i.s, %bb.h ], [ %i.s, %bb.h ], [ %i.s, %bb.h ], [ %i.s, %bb.h ], [ %i.ag, %bb.l ], [ %i.s, %bb.k ], [ %i.z, %bb.i ]
  %i.ai = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.l ], [ %i.af, %bb.k ], [ %i.u, %bb.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ap = zext i32 %i.an to i64                   ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !135
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = icmp ult ptr %i.ai, %i.ar
  br i1 %i.as, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit

.lr.ph:                                           ; preds = %bb.m, %bb.p
  %i.at = phi i32 [ %i.bc, %bb.p ], [ %i.ah, %bb.m ] ; 3 uses
  %i.au = phi ptr [ %i.av, %bb.p ], [ %i.ai, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 4 uses
  store ptr %i.av, ptr %i.d, align 8, !tbaa !119
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !117
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !118
  switch i8 %i.az, label %bb.p [
    i8 91, label %bb.n
    i8 123, label %bb.n
    i8 93, label %bb.o
    i8 125, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ba = add nuw nsw i32 %i.at, 1                ; 2 uses
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !136
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bb = add nsw i32 %i.at, -1                   ; 4 uses
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !136
  %.not8.i = icmp sgt i32 %i.bb, %.sroa.478.0.copyload
  br i1 %.not8.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph, %bb.o, %bb.n
  %i.bc = phi i32 [ %i.at, %.lr.ph ], [ %i.bb, %bb.o ], [ %i.ba, %bb.n ]
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !135
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ap
  %i.bf = icmp ult ptr %i.av, %i.be
  br i1 %i.bf, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !0

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.p, %bb.m
  store i32 3, ptr %i.c, align 8, !tbaa !137
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit:                                        ; preds = %bb.o, %bb.g, %bb.i, %bb.l
  %i.bg = phi i32 [ %i.ag, %bb.l ], [ %i.s, %bb.g ], [ %i.z, %bb.i ], [ %i.bb, %bb.o ]
  %i.bh = phi ptr [ %i.u, %bb.l ], [ %i.q, %bb.g ], [ %i.u, %bb.i ], [ %i.av, %bb.o ] ; 3 uses
  %i.bi = icmp ugt ptr %i.bh, %.sroa.679.0.copyload
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i32 %i.bg, %.sroa.478.0.copyload
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bk, ptr %i.d, align 8, !tbaa !119
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !117
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !118
  switch i8 %i.bo, label %bb.s [
    i8 93, label %bb.q
    i8 44, label %bb.r
  ]

bb.q:                                             ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i4.i)
  store i32 %i.h, ptr %i.b, align 4, !tbaa !136
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.r:                                             ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i.i)
  store i32 %i.e, ptr %i.b, align 4, !tbaa !136
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl23generateViewsFromObjectILb0EEEN8simdjson10error_codeENS5_8fallback8ondemand6objectE:bb.a
  %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !146
  %i.ow = tail call i32 @memcmp(ptr noundef %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i) #26 ; 2 uses
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS5_9JsonFieldEiiEUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ca
  %i.oy = sub i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.oy, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS5_9JsonFieldEiiEUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS5_9JsonFieldEiiEUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ow, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.oz = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.oz, label %bb.cb, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_T0_.exit.i.i.i.i.i.i

bb.cb:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS5_9JsonFieldEiiEUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i.i.i
  store i32 %i.os, ptr %.sroa.06.0.i.i.i.i.i.i.i, align 4, !tbaa !117
  br label %bb.ca, !llvm.loop !98

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_T0_.exit.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS5_9JsonFieldEiiEUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i.i.i
  store i32 %i.op, ptr %.sroa.06.0.i.i.i.i.i.i.i, align 4, !tbaa !117
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %.val23.i
  br i1 %i.pb, label %.lr.ph35.i, label %.lr.ph.i.i.i.i.i.i78, !llvm.loop !2857

bb.cc:                                            ; preds = %bb.by
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_SK_T0_(ptr %.val.i, ptr %.val23.i, ptr nonnull readonly %i.a)
  br label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNSC_9JsonFieldEiiEUliiE_EEEvT_T0_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i31.i.i.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNSC_9JsonFieldEiEUliiE_EEEvT_T0_.exit.i.i.i.i.i.i.i, %bb.cc, %bb.bz, %bb.bx, %bb.bw, %.preheader.i16.i.i.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNSC_9JsonFieldEiEUliiE_EEEvT_SJ_T0_.exit.i.i.i.i.i.i, %bb.as, %bb.ar
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  br label %bb.cg

._crit_edge36.i:                                  ; preds = %._crit_edge.i
  %i.pd = load ptr, ptr %i.i, align 8, !tbaa !815
  %i.pe = load ptr, ptr %i.b, align 8, !tbaa !783 ; 3 uses
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = ashr exact i64 %i.ph, 4
  %i.pj = sub nsw i64 %i.pi, %i.fr                ; 2 uses
  %i.pk = shl i64 %i.n, 28
  %i.pl = ashr i64 %i.pk, 32                      ; 2 uses
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.fq
  %i.po = shl i64 %i.pj, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pm, ptr nonnull align 8 %i.pn, i64 %i.po, i1 false)
  %i.pp = add nsw i64 %i.pj, %i.pl                ; 4 uses
  %i.pq = load ptr, ptr %i.i, align 8, !tbaa !815 ; 2 uses
  %i.pr = load ptr, ptr %i.b, align 8, !tbaa !783 ; 2 uses
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = ashr exact i64 %i.pu, 4                 ; 3 uses
  %i.pw = icmp ugt i64 %i.pp, %i.pv
  br i1 %i.pw, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %._crit_edge36.i
  %i.px = sub nuw nsw i64 %i.pp, %i.pv
  tail call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.px)
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS2_9JsonFieldEii.exit

bb.ce:                                            ; preds = %._crit_edge36.i
  %i.py = icmp ult i64 %i.pp, %i.pv
  br i1 %i.py, label %bb.cf, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS2_9JsonFieldEii.exit

bb.cf:                                            ; preds = %bb.ce
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.pp ; 2 uses
  %.not.i.i27.i = icmp eq ptr %i.pq, %i.pz
  br i1 %.not.i.i27.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS2_9JsonFieldEii.exit, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.cf
  store ptr %i.pz, ptr %i.i, align 8, !tbaa !815
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS2_9JsonFieldEii.exit

bb.cg:                                            ; preds = %._crit_edge.i, %.lr.ph35.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.not.i69 = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i69, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_114addOrMergeCharERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr nonnull @.str.224)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.qa = load ptr, ptr %i.fs, align 8, !tbaa !672
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.i
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !117
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [24 x i8], ptr %i.fk, i64 %i.qd ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 20 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !840
  %i.qh = icmp sgt i32 %i.qg, 0
  br i1 %i.qh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ci
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %.pre43.i = load ptr, ptr %i.b, align 8, !tbaa !783
  %.pre44.i = load ptr, ptr %i.i, align 8, !tbaa !815
  %.pre46.i = load ptr, ptr %i.pc, align 8, !tbaa !784
  br label %bb.cj

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i, %bb.ci
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ft
  br i1 %exitcond.not.i, label %._crit_edge36.i, label %bb.cg, !llvm.loop !2858

bb.cj:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i, %.lr.ph.i
  %i.qj = phi ptr [ %.pre46.i, %.lr.ph.i ], [ %i.rl, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i ] ; 4 uses
  %i.qk = phi ptr [ %.pre44.i, %.lr.ph.i ], [ %i.rm, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %i.ql = phi ptr [ %.pre43.i, %.lr.ph.i ], [ %i.rn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i ] ; 5 uses
  %.033.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ro, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %i.qm = load i32, ptr %i.qi, align 8, !tbaa !839
  %i.qn = add nsw i32 %i.qm, %.033.i
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qo ; 2 uses
  %.not.i28.i = icmp eq ptr %i.qk, %i.qj
  br i1 %.not.i28.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, ptr noundef nonnull align 8 dereferenceable(16) %i.qp, i64 16, i1 false), !tbaa.struct !814
  %i.qq = load ptr, ptr %i.i, align 8, !tbaa !815
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 2 uses
  store ptr %i.qr, ptr %i.i, align 8, !tbaa !815
  %.pre42.i = load ptr, ptr %i.b, align 8, !tbaa !783
  %.pre45.i = load ptr, ptr %i.pc, align 8, !tbaa !784
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.qs = ptrtoint ptr %i.qj to i64
  %i.qt = ptrtoint ptr %i.ql to i64               ; 2 uses
  %i.qu = sub i64 %i.qs, %i.qt                    ; 3 uses
  %i.qv = icmp eq i64 %i.qu, 9223372036854775792
  br i1 %i.qv, label %bb.cm, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i70

bb.cm:                                            ; preds = %bb.cl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #50
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i70: ; preds = %bb.cl
  %i.qw = ashr exact i64 %i.qu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.qw, i64 1)
  %i.qx = add nsw i64 %.sroa.speculated.i.i.i.i71, %i.qw ; 2 uses
  %i.qy = icmp ult i64 %i.qx, %i.qw
  %i.qz = tail call i64 @llvm.umin.i64(i64 %i.qx, i64 576460752303423487)
  %i.ra = select i1 %i.qy, i64 576460752303423487, i64 %i.qz ; 3 uses
  %.not.i.i.i.i72 = icmp ne i64 %i.ra, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i72)
  %i.rb = shl nuw nsw i64 %i.ra, 4
  %i.rc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #47 ; 6 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.qu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, ptr noundef nonnull align 8 dereferenceable(16) %i.qp, i64 16, i1 false), !tbaa.struct !814
  %.not10.i.i.i.i.i.i73 = icmp eq ptr %i.ql, %i.qj
  br i1 %.not10.i.i.i.i.i.i73, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i29.i

.lr.ph.i.i.i.i.i29.i:                             ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i70, %.lr.ph.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i74 = phi ptr [ %i.rf, %.lr.ph.i.i.i.i.i29.i ], [ %i.rc, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i70 ] ; 2 uses
  %.0911.i.i.i.i.i.i75 = phi ptr [ %i.re, %.lr.ph.i.i.i.i.i29.i ], [ %i.ql, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i70 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i74, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i75, i64 16, i1 false), !tbaa.struct !814, !alias.scope !2871
  %i.re = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i75, i64 16 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i74, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i76 = icmp eq ptr %i.re, %i.qj
  br i1 %.not.i.i.i.i.i.i76, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i29.i, !llvm.loop !91

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i29.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i70
  %.0.lcssa.i.i.i.i.i.i77 = phi ptr [ %i.rc, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i70 ], [ %i.rf, %.lr.ph.i.i.i.i.i29.i ]
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i77, i64 16 ; 2 uses
  %i.rh = load ptr, ptr %i.pc, align 8, !tbaa !784
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = sub i64 %i.ri, %i.qt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.rj) #48
  store ptr %i.rc, ptr %i.b, align 8, !tbaa !783
  store ptr %i.rg, ptr %i.i, align 8, !tbaa !815
  %i.rk = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %i.ra ; 2 uses
  store ptr %i.rk, ptr %i.pc, align 8, !tbaa !784
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ck
  %i.rl = phi ptr [ %.pre45.i, %bb.ck ], [ %i.rk, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.rm = phi ptr [ %i.qr, %bb.ck ], [ %i.rg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.rn = phi ptr [ %.pre42.i, %bb.ck ], [ %i.rc, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.ro = add nuw nsw i32 %.033.i, 1              ; 2 uses
  %i.rp = load i32, ptr %i.qf, align 4, !tbaa !840
  %i.rq = icmp slt i32 %i.ro, %i.rp
  br i1 %i.rq, label %bb.cj, label %._crit_edge.i, !llvm.loop !2862

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS2_9JsonFieldEii.exit: ; preds = %.thread280, %bb.cd, %bb.ce, %bb.cf, %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.h)
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_114addOrMergeCharERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr nonnull @.str.275)
  br label %.thread284

.thread284:                                       ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit, %bb.d, %bb.b, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS2_9JsonFieldEii.exit
  %.4 = phi i32 [ 0, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl10sortFieldsILb0EEEvPKNS2_9JsonFieldEii.exit ], [ %i.ab, %bb.b ], [ 3, %bb.d ], [ %i.by, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::array", align 8 ; 5 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::object", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !224    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225  ; 13 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !116  ; 7 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !117  ; 4 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 8 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !118
  switch i8 %i.h, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit [
    i8 123, label %bb.g
    i8 91, label %bb.b
    i8 34, label %bb.ai
    i8 110, label %bb.au
    i8 116, label %bb.ao
    i8 102, label %bb.ao
    i8 45, label %bb.k
    i8 48, label %bb.k
    i8 49, label %bb.k
    i8 50, label %bb.k
    i8 51, label %bb.k
    i8 52, label %bb.k
    i8 53, label %bb.k
    i8 54, label %bb.k
    i8 55, label %bb.k
    i8 56, label %bb.k
    i8 57, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119, !noalias !2882 ; 4 uses
  %i.l = icmp eq ptr %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !136, !noalias !2882 ; 3 uses
  %i.o = load i32, ptr %i.i, align 8, !tbaa !226, !noalias !2882 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.l, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.p), !noalias !2882
  %i.q = icmp sgt i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q), !noalias !2882
  %i.r = load i32, ptr %i.k, align 4, !tbaa !117, !noalias !2882
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !118, !noalias !2882
  %.not8.i.i = icmp eq i8 %i.u, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.j, align 8, !tbaa !119, !noalias !2882
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.w = phi i32 [ %i.n, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = icmp eq ptr %i.x, %i.y
  tail call void @llvm.assume(i1 %i.z), !noalias !2882
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ab = icmp sgt i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.ab), !noalias !2882
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !117, !noalias !2882
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !118, !noalias !2882
  %i.ag = icmp eq i8 %i.af, 93
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !119, !noalias !2882
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sink = phi i32 [ -1, %bb.e ], [ 1, %._crit_edge ]
  %i.ai = add nsw i32 %i.w, %.sink
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !136, !noalias !2882
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0166.sroa.5.0.copyload = load i32, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 4, !noalias !2882
  store ptr %i.a, ptr %2, align 8, !tbaa !140
  %.sroa.023.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.w, ptr %.sroa.023.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.023.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.sroa.0166.sroa.5.0.copyload, ptr %.sroa.023.sroa.5.0..sroa_idx, align 4
  %.sroa.023.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %.sroa.023.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.aj = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl22generateViewsFromArrayILb0EEEN8simdjson10error_codeENS5_8fallback8ondemand5arrayE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::array") align 8 %2)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119, !noalias !2883 ; 4 uses
  %i.an = icmp eq ptr %i.am, %i.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !136, !noalias !2883 ; 3 uses
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !226, !noalias !2883 ; 2 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.an, label %bb.h, label %._crit_edge465

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ar), !noalias !2883
  %i.as = icmp sgt i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.as), !noalias !2883
  %i.at = load i32, ptr %i.am, align 4, !tbaa !117, !noalias !2883
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !118, !noalias !2883
  %.not8.i.i43 = icmp eq i8 %i.aw, 123
  br i1 %.not8.i.i43, label %bb.i, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !119, !noalias !2883
  br label %._crit_edge465

._crit_edge465:                                   ; preds = %bb.g, %bb.i
  %i.ay = phi i32 [ %i.ap, %bb.i ], [ %i.aq, %bb.g ] ; 4 uses
  %i.az = phi ptr [ %i.ax, %bb.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bb = icmp eq ptr %i.az, %i.ba
  tail call void @llvm.assume(i1 %i.bb), !noalias !2883
  %i.bc = icmp sgt i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.bc), !noalias !2883
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !117, !noalias !2883
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !118, !noalias !2883
  %i.bh = icmp eq i8 %i.bg, 125
  br i1 %i.bh, label %bb.j, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

bb.j:                                             ; preds = %._crit_edge465
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bj, ptr %i.al, align 8, !tbaa !119, !noalias !2883
  %i.bk = add nsw i32 %i.ay, -1
  %or.cond.i.i44 = icmp ne i32 %i.ay, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i44), !noalias !2883
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !136, !noalias !2883
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread: ; preds = %._crit_edge465, %bb.j
  %.sroa.0193.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0193.sroa.5.0.copyload = load i32, ptr %.sroa.0193.sroa.5.0..sroa_idx, align 4
  store ptr %i.a, ptr %3, align 8, !tbaa !140
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ay, ptr %.sroa.019.sroa.4.0..sroa_idx, align 8, !tbaa !117
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0193.sroa.5.0.copyload, ptr %.sroa.019.sroa.5.0..sroa_idx, align 4
  %.sroa.019.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %.sroa.019.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %i.bl = tail call fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl23generateViewsFromObjectILb0EEEN8simdjson10error_codeENS5_8fallback8ondemand6objectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::object") align 8 %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !117
  %i.bp = sub i32 %i.bo, %i.e
  %i.bq = zext i32 %i.bp to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, %bb.k
  %.0.i110 = phi i64 [ %i.bq, %bb.k ], [ %i.br, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i ] ; 2 uses
  %i.br = add i64 %.0.i110, -1                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !118 ; 2 uses
  %i.bu = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n, !prof !832

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i114 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i114, label %bb.n, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.bx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i, %bb.m, %bb.l
  %i.by = icmp ult i8 %i.bt, 33
  br i1 %i.by, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i: ; preds = %bb.n
  %i.bz = zext nneg i8 %i.bt to i64
  %i.ca = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !145
  %i.cb = shl nuw nsw i64 1, %i.bz
  %i.cc = and i64 %i.ca, %i.cb
  %.not.i113 = icmp eq i64 %i.cc, 0
  br i1 %.not.i113, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.l, !llvm.loop !95

end_hunk_3
