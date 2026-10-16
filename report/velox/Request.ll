Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Request?download=true
inline.NumInlined: 3040
inline.NumDeleted: 1458
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5folly14RequestContextC2ERKS0_:bb.a
  %i.bx = and i32 %i.bu, 16
  %.not.i.i.i.i6 = icmp eq i32 %i.bx, 0
  %or.cond.i.i.i = or i1 %i.bw, %.not.i.i.i.i6
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.aa, !prof !78

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ae

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.ab:                                            ; preds = %bb.w
  %i.by = load i16, ptr %i.m, align 2, !tbaa !61
  %i.bz = zext i16 %i.by to i64
  %i.ca = ptrtoint ptr %i.bp to i64
  %.idx.i = shl nuw nsw i64 %i.bz, 5
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.cc = cmpxchg ptr %i.cb, i64 %i.ca, i64 0 seq_cst seq_cst, align 8
  %i.cd = extractvalue { i64, i1 } %i.cc, 1
  br i1 %i.cd, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ce = atomicrmw sub ptr %i.bp, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cf = add i32 %i.ce, -2048                    ; 2 uses
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !62
  %i.cg = icmp ugt i32 %i.cf, 2047
  %i.ch = and i32 %i.ce, 16
  %.not.i.i.i = icmp eq i32 %i.ch, 0
  %or.cond.i.i = or i1 %i.cg, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.ad, !prof !78

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ae

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad, %bb.aa, %bb.y
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #38
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.ab, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc7, %_ZN5folly14RequestContext5StateC2ERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !255
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14RequestContextC2ERKS0_NS0_3TagE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN5folly14RequestContextC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14RequestContext10copyAsRootERKS0_l(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  store ptr null, ptr %0, align 8, !tbaa !259, !alias.scope !599
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #42, !noalias !600 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !261, !noalias !599
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !262, !noalias !599
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !120, !noalias !599
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN5folly14RequestContextC1ERKS0_lNS0_3TagE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2)
          to label %_ZSt11make_sharedIN5folly14RequestContextEJRKS1_RlNS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !599

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44, !noalias !599
  resume { ptr, i32 } %i.e

_ZSt11make_sharedIN5folly14RequestContextEJRKS1_RlNS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !263, !alias.scope !599
  store ptr %i.d, ptr %0, align 8, !tbaa !44, !alias.scope !599
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5folly14RequestContextEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly14RequestContext5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(64) %i.a) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !602  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #12
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14RequestContextD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void @_ZN5folly14RequestContext5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14RequestContext11copyAsChildERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  store ptr null, ptr %0, align 8, !tbaa !259, !alias.scope !607
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #42, !noalias !608 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !261, !noalias !607
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !262, !noalias !607
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !120, !noalias !607
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN5folly14RequestContextC1ERKS0_NS0_3TagE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZSt11make_sharedIN5folly14RequestContextEJRKS1_NS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !607

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44, !noalias !607
  resume { ptr, i32 } %i.e

_ZSt11make_sharedIN5folly14RequestContextEJRKS1_NS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !263, !alias.scope !607
  store ptr %i.d, ptr %0, align 8, !tbaa !44, !alias.scope !607
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14RequestContext14setContextDataERKNS_12RequestTokenESt10unique_ptrINS_11RequestDataESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef align 8 captures(none) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::hazptr_obj_list", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"class.folly::RequestContext::State::LockGuard", align 8 ; 8 uses
  %6 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %0, ptr %5, align 8, !tbaa !215
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.f = load atomic i32, ptr %i.d acquire, align 8 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !62
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge.i.i.i.i.i, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr %i.d, i32 %i.f, i32 %i.i seq_cst seq_cst, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, !prof !70

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit

_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit: ; preds = %bb.b, %.critedge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  store i8 1, ptr %i.e, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.o, null
  br i1 %.not.i9, label %bb.c, label %.noexc

bb.c:                                             ; preds = %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %i.p = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #42
          to label %bb.d unwind label %bb.au      ; 9 uses

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 4, ptr %i.s, align 8, !tbaa !213
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 4, ptr %i.u, align 8, !tbaa !228
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  %i.w = ptrtoint ptr %0 to i64
  %i.x = or disjoint i64 %i.w, 1
  store i64 %i.x, ptr %i.r, align 8, !tbaa !151
  store atomic ptr %i.p, ptr %i.n release, align 8
  br label %.noexc

.noexc:                                           ; preds = %bb.d, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %.0.i10 = phi ptr [ %i.o, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit ], [ %i.p, %bb.d ] ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i10, i64 24 ; 8 uses
  %.sroa.06.0.copyload.i = load i32, ptr %1, align 4, !tbaa !62 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i10, i64 40 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !noalias !621
  %i.ab = icmp eq i64 %i.aa, 0
  %.pre130.a = load i64, ptr %i.y, align 8, !tbaa !213, !noalias !621 ; 4 uses
  br i1 %i.ab, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ac = add i64 %.pre130.a, -1                  ; 2 uses
  %.not.i.i.i122 = icmp eq i64 %.pre130.a, 0
  br i1 %.not.i.i.i122, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = zext i32 %.sroa.06.0.copyload.i to i64
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge.i.i.i.thread
  %.in = phi i64 [ %.pre130.a, %.lr.ph ], [ %i.ag, %.critedge.i.i.i.thread ]
  %.015.i.i.i123 = phi i64 [ %i.ae, %.lr.ph ], [ %i.an, %.critedge.i.i.i.thread ] ; 6 uses
  %i.ag = add i64 %.in, -1                        ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !204, !noalias !621
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.015.i.i.i123 ; 2 uses
  %i.aj = load atomic i8, ptr %i.ai acquire, align 1, !noalias !621
  switch i8 %i.aj, label %.critedge.i.i.i.thread [
    i8 1, label %bb.g
    i8 0, label %.thread105.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.0.0.copyload.i2.i.i = load i32, ptr %i.ak, align 4, !tbaa !62, !noalias !621
  %i.al = icmp eq i32 %.sroa.0.0.copyload.i2.i.i, %.sroa.06.0.copyload.i
  br i1 %i.al, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, label %.critedge.i.i.i.thread

.critedge.i.i.i.thread:                           ; preds = %bb.f, %bb.g
  %i.am = add i64 %.015.i.i.i123, 1
  %i.an = and i64 %i.am, %i.ac
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %.thread105.loopexit, label %bb.f

.thread105.loopexit:                              ; preds = %bb.f, %.critedge.i.i.i.thread
  %.pre = load i64, ptr %i.y, align 8, !tbaa !213, !noalias !621
  br label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread: ; preds = %.thread105.loopexit, %bb.e, %.noexc
  %.ph = phi i64 [ %.pre130.a, %.noexc ], [ 0, %bb.e ], [ %.pre, %.thread105.loopexit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48
  br label %.noexc5

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i: ; preds = %bb.g
  %.pre131.a = load i64, ptr %i.y, align 8, !tbaa !213 ; 5 uses
  %i.ap = icmp eq i64 %.015.i.i.i123, %.pre131.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = select i1 %i.ap, ptr null, ptr %i.ar    ; 2 uses
  %i.at = icmp ult i64 %.015.i.i.i123, %.pre131.a
  br i1 %i.at, label %.lr.ph.i, label %.noexc5

.lr.ph.i:                                         ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, %bb.h
  %.sroa.7.0 = phi i64 [ %i.ax, %bb.h ], [ %.015.i.i.i123, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.sroa.7.0
  %i.av = load atomic i8, ptr %i.au acquire, align 1
  %i.aw = icmp eq i8 %i.av, 1
  br i1 %i.aw, label %.noexc5.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ax = add i64 %.sroa.7.0, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %.pre131.a
  br i1 %exitcond.not, label %.noexc5.loopexit, label %.lr.ph.i, !llvm.loop !15

.noexc5.loopexit:                                 ; preds = %.lr.ph.i, %bb.h
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0, %.lr.ph.i ], [ %.pre131.a, %bb.h ]
  %.pre132.a = load i64, ptr %i.y, align 8, !tbaa !213, !noalias !622
  br label %.noexc5

.noexc5:                                          ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, %.noexc5.loopexit, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i
  %i.ay = phi ptr [ %i.as, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %i.ar, %.noexc5.loopexit ], [ null, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ]
  %i.az = phi ptr [ %i.aq, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %i.aq, %.noexc5.loopexit ], [ %i.ao, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 2 uses
  %i.ba = phi i64 [ %.pre131.a, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %.pre132.a, %.noexc5.loopexit ], [ %.ph, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 3 uses
  %.sroa.7.1 = phi i64 [ %.015.i.i.i123, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %.sroa.7.1.ph, %.noexc5.loopexit ], [ %.ph, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 2 uses
  %.not.not = icmp eq i64 %.sroa.7.1, %i.ba       ; 2 uses
  br i1 %.not.not, label %.noexc7, label %bb.i

bb.i:                                             ; preds = %.noexc5
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.7.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8 ; 7 uses
  %.not.i12 = icmp eq ptr %i.bd, null
  br i1 %.not.i12, label %.noexc17.thread108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !120
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.bd)
          to label %.noexc15 unwind label %bb.au, !inline_history !17

.noexc15:                                         ; preds = %bb.j
  br i1 %i.bh, label %bb.k, label %.noexc17.thread

bb.k:                                             ; preds = %.noexc15
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bd)
          to label %.noexc16 unwind label %bb.au, !inline_history !17

.noexc16:                                         ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i10, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i10, i64 72 ; 3 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  %.pre18.i.i = load i64, ptr %i.bl, align 8, !tbaa !228 ; 3 uses
  br i1 %i.bo, label %.noexc17.thread, label %bb.l

bb.l:                                             ; preds = %.noexc16
  %i.bp = add i64 %.pre18.i.i, -1                 ; 2 uses
  %.not.i14.i.i = icmp eq i64 %.pre18.i.i, 0
  br i1 %.not.i14.i.i, label %.noexc17.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.bq = ptrtoint ptr %i.bd to i64
  %i.br = and i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i10, i64 80 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.in.i.i = phi i64 [ %.pre18.i.i, %.lr.ph.i.i ], [ %i.bt, %bb.o ]
  %.015.i15.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ %i.cb, %bb.o ] ; 4 uses
  %i.bt = add i64 %.in.i.i, -1                    ; 2 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !202
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.015.i15.i.i ; 2 uses
  %i.bw = load atomic i8, ptr %i.bv acquire, align 1
  switch i8 %i.bw, label %bb.o [
end_hunk_0
begin_hunk_1_@_ZN5folly14RequestContext14setContextDataERKNS_12RequestTokenESt10unique_ptrINS_11RequestDataESt14default_deleteIS5_EE:bb.a
  %i.fo = add i64 %i.fn, -4
  %i.fp = icmp ult i64 %i.fo, %i.fj
  br i1 %i.fp, label %.noexc28.thread, label %.noexc30

.noexc28.thread:                                  ; preds = %.noexc7, %.noexc28
  %i.fq = invoke noundef ptr @_ZN5folly14RequestContext5State6expandEPNS1_8CombinedE(ptr nonnull align 8 poison, ptr noundef nonnull %.0.i10)
          to label %.noexc29 unwind label %bb.au  ; 11 uses

.noexc29:                                         ; preds = %.noexc28.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8, !noalias !625
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.noexc30, label %bb.ag

bb.ag:                                            ; preds = %.noexc29
  %i.fv = load i64, ptr %i.fr, align 8, !tbaa !213 ; 5 uses
  %i.fw = icmp eq i64 %i.fv, 0                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8            ; 3 uses
  %i.fz = select i1 %i.fw, ptr null, ptr %i.fy
  br i1 %i.fw, label %.noexc30, label %.lr.ph.i3.i63

.lr.ph.i3.i63:                                    ; preds = %bb.ag, %bb.ah
  %.sroa.13.5.i64 = phi i64 [ %i.gd, %bb.ah ], [ 0, %bb.ag ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %.sroa.13.5.i64
  %i.gb = load atomic i8, ptr %i.ga acquire, align 1
  %i.gc = icmp eq i8 %i.gb, 1
  br i1 %i.gc, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i3.i63
  %i.gd = add nuw i64 %.sroa.13.5.i64, 1          ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.gd, %i.fv
  br i1 %exitcond.not.i65, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66, label %.lr.ph.i3.i63, !llvm.loop !15

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66: ; preds = %bb.ah, %.lr.ph.i3.i63
  %.sroa.13.1.ph.i67 = phi i64 [ %.sroa.13.5.i64, %.lr.ph.i3.i63 ], [ %i.fv, %bb.ah ] ; 2 uses
  %.pre.i68 = load i64, ptr %i.fr, align 8, !tbaa !213, !noalias !626
  %i.ge = icmp eq i64 %.sroa.13.1.ph.i67, %.pre.i68
  br i1 %i.ge, label %.noexc30, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74
  %.sroa.13.023.i70 = phi i64 [ %.sroa.13.2.i73.lcssa, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74 ], [ %.sroa.13.1.ph.i67, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %.sroa.13.023.i70
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load atomic ptr, ptr %i.gg monotonic, align 8 ; 2 uses
  %.not.i71 = icmp eq ptr %i.gh, null
  br i1 %.not.i71, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i69
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = atomicrmw add ptr %i.gi, i32 4097 monotonic, align 4 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i69
  %.sroa.13.2.i73185.a = add i64 %.sroa.13.023.i70, 1 ; 3 uses
  %i.gk = icmp ult i64 %.sroa.13.2.i73185.a, %i.fv
  br i1 %i.gk, label %.lr.ph187, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74

bb.ak:                                            ; preds = %.lr.ph187
  %.sroa.13.2.i73 = add i64 %.sroa.13.2.i73186, 1 ; 3 uses
  %i.gl = icmp ult i64 %.sroa.13.2.i73, %i.fv
  br i1 %i.gl, label %.lr.ph187, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74, !llvm.loop !15

.lr.ph187:                                        ; preds = %bb.aj, %bb.ak
  %.sroa.13.2.i73186 = phi i64 [ %.sroa.13.2.i73, %bb.ak ], [ %.sroa.13.2.i73185.a, %bb.aj ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %.sroa.13.2.i73186
  %i.gn = load atomic i8, ptr %i.gm acquire, align 1
  %i.go = icmp eq i8 %i.gn, 1
  br i1 %i.go, label %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74_crit_edge, label %bb.ak, !llvm.loop !15

._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74_crit_edge: ; preds = %.lr.ph187
  br label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74, !llvm.loop !15

_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74: ; preds = %bb.ak, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74_crit_edge, %bb.aj
  %.sroa.13.2.i73.lcssa = phi i64 [ %.sroa.13.2.i73186, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74_crit_edge ], [ %.sroa.13.2.i73185.a, %bb.aj ], [ %.sroa.13.2.i73, %bb.ak ] ; 2 uses
  %i.gp = load i64, ptr %i.fr, align 8, !tbaa !213, !noalias !626
  %.not21.i75 = icmp eq i64 %.sroa.13.2.i73.lcssa, %i.gp
  br i1 %.not21.i75, label %.noexc30, label %.lr.ph.i69, !llvm.loop !16

.noexc30:                                         ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74, %.noexc29, %bb.ag, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66, %.noexc28
  %.016.i = phi ptr [ null, %.noexc28 ], [ %i.fq, %.noexc29 ], [ %i.fq, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66 ], [ %i.fq, %bb.ag ], [ %i.fq, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74 ] ; 2 uses
  %.0.i26 = phi ptr [ %.0.i10, %.noexc28 ], [ %i.fq, %.noexc29 ], [ %i.fq, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i66 ], [ %i.fq, %bb.ag ], [ %i.fq, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i74 ] ; 2 uses
  %i.gq = load ptr, ptr %2, align 8, !tbaa !264   ; 3 uses
  %.not113 = icmp eq ptr %i.gq, null
  br i1 %.not113, label %.noexc33.thread, label %bb.al

bb.al:                                            ; preds = %.noexc30
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !120
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = invoke noundef zeroext i1 %i.gt(ptr noundef nonnull align 8 dereferenceable(12) %i.gq)
          to label %.noexc31 unwind label %bb.au, !inline_history !18

.noexc31:                                         ; preds = %bb.al
  br i1 %i.gu, label %bb.am, label %.noexc33

bb.am:                                            ; preds = %.noexc31
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i26, i64 56
  %i.gw = load ptr, ptr %2, align 8, !tbaa !264
  %i.gx = invoke noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiE6insertES2_i(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef %i.gw, i32 noundef 1)
          to label %.noexc32 unwind label %bb.au  ; 0 uses

.noexc32:                                         ; preds = %bb.am
  %i.gy = load ptr, ptr %2, align 8, !tbaa !264   ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !120
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void %i.hb(ptr noundef nonnull align 8 dereferenceable(12) %i.gy)
          to label %.noexc33 unwind label %bb.au, !inline_history !18

.noexc33:                                         ; preds = %.noexc32, %.noexc31
  %.pr = load ptr, ptr %2, align 8, !tbaa !264    ; 2 uses
  %.not114 = icmp eq ptr %.pr, null
  br i1 %.not114, label %.noexc33.thread, label %bb.an

bb.an:                                            ; preds = %.noexc33
  %i.hc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.hd = atomicrmw add ptr %i.hc, i32 4097 monotonic, align 4 ; 0 uses
  %.pre133 = load ptr, ptr %2, align 8, !tbaa !264
  br label %.noexc33.thread

.noexc33.thread:                                  ; preds = %.noexc30, %bb.an, %.noexc33
  %i.he = phi ptr [ null, %.noexc30 ], [ %.pre133, %bb.an ], [ null, %.noexc33 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i26, i64 24
  %.sroa.0.0.copyload.i27 = load i32, ptr %1, align 4, !tbaa !62
  store ptr null, ptr %2, align 8, !tbaa !264
  %i.hg = invoke noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE6insertES1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i32 %.sroa.0.0.copyload.i27, ptr noundef %i.he)
          to label %.noexc8 unwind label %bb.au   ; 0 uses

.noexc8:                                          ; preds = %.noexc33.thread
  %.not39.i = icmp eq ptr %.016.i, null
  br i1 %.not39.i, label %.noexc7.thread.thread, label %.noexc7.thread.thread163

.noexc7.thread:                                   ; preds = %.noexc6
  %spec.select41.i = select i1 %.not.i3, ptr null, ptr %.0.i10
  br i1 %.not.i3, label %.noexc7.thread.thread, label %.noexc7.thread.thread163

.noexc7.thread.thread163:                         ; preds = %.noexc8, %.noexc7.thread
  %.3.i168 = phi ptr [ %spec.select41.i, %.noexc7.thread ], [ %.0.i10, %.noexc8 ]
  %.333.i167 = phi ptr [ %spec.select.i, %.noexc7.thread ], [ %.016.i, %.noexc8 ] ; 2 uses
  %i.hh = ptrtoint ptr %0 to i64
  %i.hi = or disjoint i64 %i.hh, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.333.i167, i64 16
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !151
  store atomic ptr %.333.i167, ptr %i.n release, align 8
  br label %.noexc7.thread.thread

.noexc7.thread.thread:                            ; preds = %.noexc8, %.noexc7.thread.thread163, %.noexc7.thread
  %.not40.i162 = phi i1 [ true, %.noexc7.thread ], [ false, %.noexc7.thread.thread163 ], [ true, %.noexc8 ]
  %.3.i161 = phi ptr [ null, %.noexc7.thread ], [ %.3.i168, %.noexc7.thread.thread163 ], [ null, %.noexc8 ] ; 8 uses
  %i.hk = load ptr, ptr %5, align 8, !tbaa !234, !nonnull !87, !align !121
  %i.hl = invoke noundef i64 @_ZN5folly20processLocalUniqueIdEv()
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %.noexc7.thread.thread
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  store atomic i64 %i.hl, ptr %i.hm release, align 8
  %i.hn = load i8, ptr %i.e, align 8, !tbaa !82, !range !88, !noundef !87
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.ap, label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !81  ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i77, label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hq = atomicrmw and ptr %i.hp, i32 -401 seq_cst, align 4 ; 2 uses
  %i.hr = and i32 %i.hq, -401
  store i32 %i.hr, ptr %i.a, align 4, !tbaa !62
  %i.hs = and i32 %i.hq, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.ar, !prof !73

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.hp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.as

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit

bb.as:                                            ; preds = %bb.ar
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #38
  unreachable

bb.at:                                            ; preds = %.noexc7.thread.thread
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #38
  unreachable

_ZN5folly14RequestContext5State9LockGuardD2Ev.exit: ; preds = %bb.ao, %bb.ap, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br i1 %.not.not, label %.loopexit116, label %.preheader115

.preheader115:                                    ; preds = %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %10 = load atomic i8, ptr @_ZZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEbE26__folly_detail_glog_logged monotonic, align 1, !range !88, !noundef !87
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %.loopexit116, label %bb.av, !prof !73

bb.au:                                            ; preds = %.noexc33.thread, %.noexc32, %bb.am, %bb.al, %.noexc28.thread, %.noexc17.thread, %bb.k, %bb.j, %bb.c, %.noexc6
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.au, %.body46
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body47, %.body46 ], [ %i.hx, %bb.au ]
  call void @_ZN5folly14RequestContext5State9LockGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bj

bb.av:                                            ; preds = %.preheader115
  %i.hy = atomicrmw xchg ptr @_ZZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEbE26__folly_detail_glog_logged, i8 1 monotonic, align 1
  %i.hz = trunc i8 %i.hy to i1
  br i1 %i.hz, label %.loopexit116, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str.11, i32 noundef 297, i32 noundef 1)
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.ax unwind label %bb.az     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull @.str.57, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNK5folly12RequestToken14getDebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ic = load ptr, ptr %7, align 8, !tbaa !71
  %i.id = load i64, ptr %8, align 8, !tbaa !68
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef %i.ic, i64 noundef %i.id)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bb

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ay
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull @.str.58, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ig = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %9
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.ii = load i64, ptr %9, align 8, !tbaa !91
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.loopexit116

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.bb:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ay
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.io = icmp eq ptr %i.in, %9
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.bb
  %i.ip = load i64, ptr %9, align 8, !tbaa !91
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ba
  %.pn26.i = phi { ptr, i32 } [ %i.il, %bb.ba ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.im, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.az
  %.pn26.pn.i = phi { ptr, i32 } [ %.pn26.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.ik, %bb.az ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.bj

.loopexit116:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.av, %.preheader115, %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit
  br i1 %.not40.i162, label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit, label %bb.bd

bb.bd:                                            ; preds = %.loopexit116
  %i.ir = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i, label %bb.be, label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i, !prof !89

bb.be:                                            ; preds = %bb.bd
  %i.is = call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb1EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg) #12
  br label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i

_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i: ; preds = %bb.be, %bb.bd
  %i.it = phi ptr [ %i.is, %bb.be ], [ %i.ir, %bb.bd ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.3.i161, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !139
  %.not.i.i.i85 = icmp eq ptr %i.iv, %.3.i161
  br i1 %.not.i.i.i85, label %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  call void @_ZN5folly10hazptr_objISt6atomicE21pre_retire_check_failEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.i161) #12
  br label %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i

_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i: ; preds = %bb.bf, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  store ptr @_ZZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE11set_reclaimEvENUlPNS_10hazptr_objIS4_EERNS_15hazptr_obj_listIS4_EEE_8__invokeESA_SD_, ptr %.3.i161, align 8, !tbaa !140
  %i.iw = getelementptr inbounds nuw i8, ptr %.3.i161, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !151
  %i.iy = and i64 %i.ix, -2                       ; 2 uses
  %.not.i.i86 = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i86, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i
  %i.iz = inttoptr i64 %i.iy to ptr
  call void @_ZN5folly17hazptr_obj_cohortISt6atomicE8push_objEPNS_10hazptr_objIS1_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, ptr noundef nonnull align 8 dereferenceable(24) %.3.i161)
  br label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit

bb.bh:                                            ; preds = %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %.3.i161, ptr %3, align 8, !tbaa !142
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.3.i161, ptr %i.ja, align 8, !tbaa !166
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.jb, align 8, !tbaa !168
  store ptr null, ptr %i.iu, align 8, !tbaa !139
  invoke void @_ZN5folly13hazptr_domainISt6atomicE9push_listERNS_15hazptr_obj_listIS1_EE(ptr noundef nonnull align 64 dereferenceable(449) %i.it, ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #38
  unreachable

_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit

bb.bj:                                            ; preds = %bb.bc, %.body
  %.pn26.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.i, %bb.bc ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn26.pn.pn.i

_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit: ; preds = %_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i, %bb.bg, %.loopexit116
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly14RequestContext22setContextDataIfAbsentERKNS_12RequestTokenESt10unique_ptrINS_11RequestDataESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef align 8 captures(none) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::hazptr_obj_list", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"class.folly::RequestContext::State::LockGuard", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %0, ptr %5, align 8, !tbaa !215
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.f = load atomic i32, ptr %i.d acquire, align 8 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !62
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge.i.i.i.i.i, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr %i.d, i32 %i.f, i32 %i.i seq_cst seq_cst, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, !prof !70

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit

_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit: ; preds = %bb.b, %.critedge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  store i8 1, ptr %i.e, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 2 uses
  %.not.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i6, label %bb.c, label %.noexc

bb.c:                                             ; preds = %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %i.p = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #42
          to label %bb.d unwind label %bb.y       ; 9 uses

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 4, ptr %i.s, align 8, !tbaa !213
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 4, ptr %i.u, align 8, !tbaa !228
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  %i.w = ptrtoint ptr %0 to i64
  %i.x = or disjoint i64 %i.w, 1
  store i64 %i.x, ptr %i.r, align 8, !tbaa !151
  store atomic ptr %i.p, ptr %i.n release, align 8
  br label %.noexc

.noexc:                                           ; preds = %bb.d, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %.0.i7 = phi ptr [ %i.o, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit ], [ %i.p, %bb.d ] ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i7, i64 24 ; 4 uses
  %.sroa.06.0.copyload.i = load i32, ptr %1, align 4, !tbaa !62 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i7, i64 40
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !noalias !635
  %i.ab = icmp eq i64 %i.aa, 0
  %.pre59 = load i64, ptr %i.y, align 8, !tbaa !213, !noalias !635 ; 4 uses
  br i1 %i.ab, label %.noexc4.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ac = add i64 %.pre59, -1                     ; 2 uses
  %.not.i.i.i55 = icmp eq i64 %.pre59, 0
  br i1 %.not.i.i.i55, label %.noexc4.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = zext i32 %.sroa.06.0.copyload.i to i64
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i7, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge.i.i.i.thread
  %.in = phi i64 [ %.pre59, %.lr.ph ], [ %i.ag, %.critedge.i.i.i.thread ]
  %.015.i.i.i56 = phi i64 [ %i.ae, %.lr.ph ], [ %i.an, %.critedge.i.i.i.thread ] ; 6 uses
  %i.ag = add i64 %.in, -1                        ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !204, !noalias !635
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.015.i.i.i56 ; 2 uses
  %i.aj = load atomic i8, ptr %i.ai acquire, align 1, !noalias !635
  switch i8 %i.aj, label %.critedge.i.i.i.thread [
    i8 1, label %bb.g
    i8 0, label %.thread49.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.0.0.copyload.i2.i.i = load i32, ptr %i.ak, align 4, !tbaa !62, !noalias !635
  %i.al = icmp eq i32 %.sroa.0.0.copyload.i2.i.i, %.sroa.06.0.copyload.i
  br i1 %i.al, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, label %.critedge.i.i.i.thread

.critedge.i.i.i.thread:                           ; preds = %bb.f, %bb.g
  %i.am = add i64 %.015.i.i.i56, 1
  %i.an = and i64 %i.am, %i.ac
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %.thread49.loopexit, label %bb.f

.thread49.loopexit:                               ; preds = %bb.f, %.critedge.i.i.i.thread
  %.pre = load i64, ptr %i.y, align 8, !tbaa !213, !noalias !635
  br label %.noexc4.thread

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i: ; preds = %bb.g
  %.pre60 = load i64, ptr %i.y, align 8, !tbaa !213 ; 5 uses
  %i.ao = icmp eq i64 %.015.i.i.i56, %.pre60
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i7, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.ao, ptr null, ptr %i.aq
  %i.as = icmp ult i64 %.015.i.i.i56, %.pre60
  br i1 %i.as, label %.lr.ph.i, label %.noexc4

.lr.ph.i:                                         ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, %bb.h
  %.sroa.634.0 = phi i64 [ %i.aw, %bb.h ], [ %.015.i.i.i56, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.sroa.634.0
  %i.au = load atomic i8, ptr %i.at acquire, align 1
  %i.av = icmp eq i8 %i.au, 1
  br i1 %i.av, label %.noexc4.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
end_hunk_1
