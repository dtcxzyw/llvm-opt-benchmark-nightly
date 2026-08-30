Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FunctionRegistry?download=true
inline.NumInlined: 941
inline.NumDeleted: 585
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8facebook5velox21getFunctionSignaturesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.body

.body:                                            ; preds = %bb.x, %bb.u, %bb.w
  %.pn = phi { ptr, i32 } [ %i.by, %bb.w ], [ %i.bz, %bb.x ], [ %lpad.phi.i, %bb.u ]
  %i.ca = load ptr, ptr %0, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPKN8facebook5velox4exec17FunctionSignatureESaIS5_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.body
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !55
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIPKN8facebook5velox4exec17FunctionSignatureESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN8facebook5velox4exec17FunctionSignatureESaIS5_EED2Ev.exit: ; preds = %.body, %bb.y
  resume { ptr, i32 } %.pn
}

declare void @_ZNK8facebook5velox4exec22SimpleFunctionRegistry21getFunctionSignaturesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN8facebook5velox4exec23vectorFunctionFactoriesB5cxx11Ev() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox27getVectorFunctionSignaturesB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::unordered_map") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %0, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_132populateVectorFunctionSignaturesERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKNS0_4exec17FunctionSignatureESaISD_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SF_EEE(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN8facebook5velox4exec17FunctionSignatureESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #9
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox21clearFunctionRegistryEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %0 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %1 = alloca %class.anon.119, align 1            ; 3 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN8facebook5velox4exec22mutableSimpleFunctionsEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IN8facebook5velox4exec17FunctionSignatureESt6vectorISt10unique_ptrIKNSB_13FunctionEntryESt14default_deleteISG_EESaISJ_EESt4hashISC_ESt8equal_toISC_ESaISt4pairIKSC_SL_EEESM_IS8_ESO_IS8_ESaISQ_IKS8_SU_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withWLockIZNSB_22SimpleFunctionRegistry13clearRegistryEvEUlRT_E_EEDaOS1B_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.d = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN8facebook5velox4exec23vectorFunctionFactoriesB5cxx11Ev() ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9, !noalias !77
  %i.f = load atomic i32, ptr %i.e acquire, align 8, !noalias !77 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !42, !noalias !77
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge.i.i.i.i.i.i.i, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr %i.e, i32 %i.f, i32 %i.i seq_cst seq_cst, align 4, !noalias !77 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !80

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !77
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %0), !noalias !77 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9, !noalias !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec19VectorFunctionEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.q) #9
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 128) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !69

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = shl i64 %i.t, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.v = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.w = and i32 %i.v, -401
  store i32 %i.w, ptr %i.a, align 4, !tbaa !42
  %i.x = and i32 %i.v, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec19VectorFunctionEntryESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withWLockIZNSA_21clearFunctionRegistryEvE3$_0EEDaOT_.exit", label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec19VectorFunctionEntryESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withWLockIZNSA_21clearFunctionRegistryEvE3$_0EEDaOT_.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec19VectorFunctionEntryESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withWLockIZNSA_21clearFunctionRegistryEvE3$_0EEDaOT_.exit": ; preds = %.loopexit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN8facebook5velox4exec22mutableSimpleFunctionsEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i16 0, 258) i16 @_ZN8facebook5velox15isDeterministicERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.42", align 8    ; 9 uses
  %2 = alloca %"class.std::optional.47", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN8facebook5velox4exec15simpleFunctionsEv()
  call void @_ZNK8facebook5velox4exec22SimpleFunctionRegistry32getFunctionSignaturesAndMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.42") align 8 %1, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  invoke void @_ZN8facebook5velox4exec25getVectorFunctionMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.47") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !81     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 3 uses
  %i.e = icmp ne ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i8, ptr %i.f, align 8, !range !83
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %.critedge12, label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.k = load ptr, ptr %1, align 8, !tbaa !84     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 32 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %.critedge12, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.e
  %.sroa.017.026 = phi ptr [ %i.q, %bb.e ], [ %i.b, %.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87, !range !83, !noundef !92
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %.loopexit

.critedge12:                                      ; preds = %bb.e, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !83
  %or.cond25 = select i1 %i.h, i8 %i.w, i8 1
  %3 = zext nneg i8 %or.cond25 to i16
  %4 = or disjoint i16 %3, 256
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %.critedge12, %bb.b
  %.sroa.4.0 = phi i16 [ %4, %.critedge12 ], [ 0, %bb.b ], [ 256, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %.not.i.i.i13 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit14, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.b to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.ab) #23
  br label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit14

_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit14: ; preds = %.loopexit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i16 %.sroa.4.0
}

declare void @_ZNK8facebook5velox4exec22SimpleFunctionRegistry32getFunctionSignaturesAndMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.42") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN8facebook5velox4exec25getVectorFunctionMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.47") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i16 0, 258) i16 @_ZN8facebook5velox21isDefaultNullBehaviorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.42", align 8    ; 9 uses
  %2 = alloca %"class.std::optional.47", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN8facebook5velox4exec15simpleFunctionsEv()
  call void @_ZNK8facebook5velox4exec22SimpleFunctionRegistry32getFunctionSignaturesAndMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.42") align 8 %1, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  invoke void @_ZN8facebook5velox4exec25getVectorFunctionMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.47") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !81     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 3 uses
  %i.e = icmp ne ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i8, ptr %i.f, align 8, !range !83
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %.critedge12, label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.k = load ptr, ptr %1, align 8, !tbaa !84     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 32 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %.critedge12, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.e
  %.sroa.017.026 = phi ptr [ %i.q, %bb.e ], [ %i.b, %.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 2
  %i.t = load i8, ptr %i.s, align 2, !tbaa !93, !range !83, !noundef !92
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %.loopexit

.critedge12:                                      ; preds = %bb.e, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.w = load i8, ptr %i.v, align 2, !range !83
  %or.cond25 = select i1 %i.h, i8 %i.w, i8 1
  %3 = zext nneg i8 %or.cond25 to i16
  %4 = or disjoint i16 %3, 256
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %.critedge12, %bb.b
  %.sroa.4.0 = phi i16 [ %4, %.critedge12 ], [ 0, %bb.b ], [ 256, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %.not.i.i.i13 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit14, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.b to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.ab) #23
  br label %_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit14

_ZNSt6vectorISt4pairIN8facebook5velox4exec22VectorFunctionMetadataEPKNS3_17FunctionSignatureEESaIS8_EED2Ev.exit14: ; preds = %.loopexit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i16 %.sroa.4.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox15resolveFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISD_EE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8facebook5velox21resolveSimpleFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISD_EE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !60
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #9, !inline_history !97
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #9, !inline_history !97
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %bb.i, !prof !64

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.d, %bb.b
  tail call void @_ZN8facebook5velox4exec21resolveVectorFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISE_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox21resolveSimpleFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISD_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.58", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN8facebook5velox4exec15simpleFunctionsEv()
  call void @_ZNK8facebook5velox4exec22SimpleFunctionRegistry15resolveFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISF_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.58") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !98, !range !83, !noundef !92
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !100
  store <2 x ptr> %i.h, ptr %0, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !42
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !42
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.thread

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.thread: ; preds = %bb.d, %bb.b
  store i8 0, ptr %i.b, align 8, !tbaa !98
  br label %bb.e

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr %i.b, align 8, !tbaa !98, !range !83
  %i.n = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.b, align 8, !tbaa !98
  br i1 %i.n, label %bb.e, label %_ZNSt14_Optional_baseIN8facebook5velox4exec22SimpleFunctionRegistry22ResolvedSimpleFunctionELb0ELb0EED2Ev.exit.thread

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.thread, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN8facebook5velox4exec22SimpleFunctionRegistry22ResolvedSimpleFunctionELb0ELb0EED2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !60
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #9, !inline_history !101
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #9, !inline_history !101
  br label %_ZNSt14_Optional_baseIN8facebook5velox4exec22SimpleFunctionRegistry22ResolvedSimpleFunctionELb0ELb0EED2Ev.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.k, label %_ZNSt14_Optional_baseIN8facebook5velox4exec22SimpleFunctionRegistry22ResolvedSimpleFunctionELb0ELb0EED2Ev.exit.thread, !prof !64

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #9
  br label %_ZNSt14_Optional_baseIN8facebook5velox4exec22SimpleFunctionRegistry22ResolvedSimpleFunctionELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseIN8facebook5velox4exec22SimpleFunctionRegistry22ResolvedSimpleFunctionELb0ELb0EED2Ev.exit.thread: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseIN8facebook5velox4exec22SimpleFunctionRegistry22ResolvedSimpleFunctionELb0ELb0EED2Ev.exit.thread, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox21resolveVectorFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISD_EE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN8facebook5velox4exec21resolveVectorFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISE_EE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox28resolveFunctionWithCoercionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISD_EERSF_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
end_hunk_0
