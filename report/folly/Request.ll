Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Request?download=true
inline.NumInlined: 3280
inline.NumDeleted: 1545
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
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
  call void @__clang_call_terminate(ptr %i.cj) #37
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.ab, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc7, %_ZN5folly14RequestContext5StateC2ERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !253
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !253
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  store ptr null, ptr %0, align 8, !tbaa !257, !alias.scope !605
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #41, !noalias !606 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !259, !noalias !605
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !260, !noalias !605
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !119, !noalias !605
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN5folly14RequestContextC1ERKS0_lNS0_3TagE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2)
          to label %_ZSt11make_sharedIN5folly14RequestContextEJRKS1_RlNS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !605

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #43, !noalias !605
  resume { ptr, i32 } %i.e

_ZSt11make_sharedIN5folly14RequestContextEJRKS1_RlNS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !261, !alias.scope !605
  store ptr %i.d, ptr %0, align 8, !tbaa !44, !alias.scope !605
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
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #43
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
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #43
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !608  ; 3 uses
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
define linkonce_odr void @_ZN5folly14RequestContextD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #23 comdat align 2 {
bb.a:
  tail call void @_ZN5folly14RequestContext5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14RequestContext11copyAsChildERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  store ptr null, ptr %0, align 8, !tbaa !257, !alias.scope !613
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #41, !noalias !614 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !259, !noalias !613
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !260, !noalias !613
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !119, !noalias !613
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN5folly14RequestContextC1ERKS0_NS0_3TagE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZSt11make_sharedIN5folly14RequestContextEJRKS1_NS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !613

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly14RequestContextESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #43, !noalias !613
  resume { ptr, i32 } %i.e

_ZSt11make_sharedIN5folly14RequestContextEJRKS1_NS1_3TagEEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !261, !alias.scope !613
  store ptr %i.d, ptr %0, align 8, !tbaa !44, !alias.scope !613
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
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %0, ptr %5, align 8, !tbaa !213
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
  br i1 %i.k, label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, !prof !69

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
  %i.p = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #41
          to label %bb.d unwind label %bb.bb      ; 9 uses

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 4, ptr %i.s, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 4, ptr %i.u, align 8, !tbaa !226
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  %i.w = ptrtoint ptr %0 to i64
  %i.x = or disjoint i64 %i.w, 1
  store i64 %i.x, ptr %i.r, align 8, !tbaa !150
  store atomic ptr %i.p, ptr %i.n release, align 8
  br label %.noexc

.noexc:                                           ; preds = %bb.d, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %.0.i10 = phi ptr [ %i.o, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit ], [ %i.p, %bb.d ] ; 19 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i10, i64 24 ; 9 uses
  %.sroa.06.0.copyload.i = load i32, ptr %1, align 4, !tbaa !62 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i10, i64 40 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !noalias !627
  %i.ab = icmp eq i64 %i.aa, 0
  %.pre199.a = load i64, ptr %i.y, align 8, !tbaa !211, !noalias !627 ; 4 uses
  br i1 %i.ab, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ac = add i64 %.pre199.a, -1                  ; 2 uses
  %.not.i.i.i185 = icmp eq i64 %.pre199.a, 0
  br i1 %.not.i.i.i185, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = zext i32 %.sroa.06.0.copyload.i to i64
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge.i.i.i.thread
  %.in = phi i64 [ %.pre199.a, %.lr.ph ], [ %i.ag, %.critedge.i.i.i.thread ]
  %.015.i.i.i186 = phi i64 [ %i.ae, %.lr.ph ], [ %i.an, %.critedge.i.i.i.thread ] ; 6 uses
  %i.ag = add i64 %.in, -1                        ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !202, !noalias !627
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.015.i.i.i186 ; 2 uses
  %i.aj = load atomic i8, ptr %i.ai acquire, align 1, !noalias !627
  switch i8 %i.aj, label %.critedge.i.i.i.thread [
    i8 1, label %bb.g
    i8 0, label %.thread117.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.0.0.copyload.i2.i.i = load i32, ptr %i.ak, align 4, !tbaa !62, !noalias !627
  %i.al = icmp eq i32 %.sroa.0.0.copyload.i2.i.i, %.sroa.06.0.copyload.i
  br i1 %i.al, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, label %.critedge.i.i.i.thread

.critedge.i.i.i.thread:                           ; preds = %bb.f, %bb.g
  %i.am = add i64 %.015.i.i.i186, 1
  %i.an = and i64 %i.am, %i.ac
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %.thread117.loopexit, label %bb.f

.thread117.loopexit:                              ; preds = %bb.f, %.critedge.i.i.i.thread
  %.pre = load i64, ptr %i.y, align 8, !tbaa !211, !noalias !627
  br label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread: ; preds = %.thread117.loopexit, %bb.e, %.noexc
  %.ph = phi i64 [ %.pre199.a, %.noexc ], [ 0, %bb.e ], [ %.pre, %.thread117.loopexit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48
  br label %.noexc5

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i: ; preds = %bb.g
  %.pre200.a = load i64, ptr %i.y, align 8, !tbaa !211 ; 5 uses
  %i.ap = icmp eq i64 %.015.i.i.i186, %.pre200.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = select i1 %i.ap, ptr null, ptr %i.ar    ; 2 uses
  %i.at = icmp ult i64 %.015.i.i.i186, %.pre200.a
  br i1 %i.at, label %.lr.ph.i, label %.noexc5

.lr.ph.i:                                         ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, %bb.h
  %.sroa.7.0 = phi i64 [ %i.ax, %bb.h ], [ %.015.i.i.i186, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.sroa.7.0
  %i.av = load atomic i8, ptr %i.au acquire, align 1
  %i.aw = icmp eq i8 %i.av, 1
  br i1 %i.aw, label %.noexc5.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ax = add i64 %.sroa.7.0, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %.pre200.a
  br i1 %exitcond.not, label %.noexc5.loopexit, label %.lr.ph.i, !llvm.loop !15

.noexc5.loopexit:                                 ; preds = %.lr.ph.i, %bb.h
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0, %.lr.ph.i ], [ %.pre200.a, %bb.h ]
  %.pre201.a = load i64, ptr %i.y, align 8, !tbaa !211, !noalias !628
  br label %.noexc5

.noexc5:                                          ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, %.noexc5.loopexit, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i
  %i.ay = phi ptr [ %i.as, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %i.ar, %.noexc5.loopexit ], [ null, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ]
  %i.az = phi ptr [ %i.aq, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %i.aq, %.noexc5.loopexit ], [ %i.ao, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 2 uses
  %i.ba = phi i64 [ %.pre200.a, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %.pre201.a, %.noexc5.loopexit ], [ %.ph, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ]
  %.sroa.7.1 = phi i64 [ %.015.i.i.i186, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %.sroa.7.1.ph, %.noexc5.loopexit ], [ %.ph, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 2 uses
  %.not = icmp eq i64 %.sroa.7.1, %i.ba           ; 2 uses
  br i1 %.not, label %.noexc7, label %bb.i

bb.i:                                             ; preds = %.noexc5
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.7.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8 ; 7 uses
  %.not.i12 = icmp eq ptr %i.bd, null
  br i1 %.not.i12, label %.noexc17.thread120, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.bd)
          to label %.noexc15 unwind label %bb.bb, !inline_history !17

.noexc15:                                         ; preds = %bb.j
  br i1 %i.bh, label %bb.k, label %.noexc17.thread

bb.k:                                             ; preds = %.noexc15
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !119
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bd)
          to label %.noexc16 unwind label %bb.bb, !inline_history !17

.noexc16:                                         ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i10, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i10, i64 72 ; 3 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  %.pre18.i.i = load i64, ptr %i.bl, align 8, !tbaa !226 ; 3 uses
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
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !200
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.015.i15.i.i ; 2 uses
  %i.bw = load atomic i8, ptr %i.bv acquire, align 1
  switch i8 %i.bw, label %bb.o [
end_hunk_0
begin_hunk_1_@_ZN5folly14RequestContext14setContextDataERKNS_12RequestTokenESt10unique_ptrINS_11RequestDataESt14default_deleteIS5_EE:bb.a
  %i.gl = sub i64 %i.gi, %i.gk
  %i.gm = shl i64 %i.gl, 2
  %i.gn = add i64 %i.gm, -4
  %i.go = icmp ult i64 %i.gn, %i.gi
  br i1 %i.go, label %.noexc30.thread, label %.noexc32

.noexc30.thread:                                  ; preds = %.thread139, %.noexc30
  %i.gp = invoke noundef ptr @_ZN5folly14RequestContext5State6expandEPNS1_8CombinedE(ptr nonnull align 8 poison, ptr noundef nonnull %.0.i10)
          to label %.noexc31 unwind label %bb.bb  ; 11 uses

.noexc31:                                         ; preds = %.noexc30.thread
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8, !noalias !631
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %.noexc32, label %bb.am

bb.am:                                            ; preds = %.noexc31
  %i.gu = load i64, ptr %i.gq, align 8, !tbaa !211 ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 0                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8            ; 3 uses
  %i.gy = select i1 %i.gv, ptr null, ptr %i.gx
  br i1 %i.gv, label %.noexc32, label %.lr.ph.i3.i69

.lr.ph.i3.i69:                                    ; preds = %bb.am, %bb.an
  %.sroa.13.5.i70 = phi i64 [ %i.hc, %bb.an ], [ 0, %bb.am ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %.sroa.13.5.i70
  %i.ha = load atomic i8, ptr %i.gz acquire, align 1
  %i.hb = icmp eq i8 %i.ha, 1
  br i1 %i.hb, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i3.i69
  %i.hc = add nuw i64 %.sroa.13.5.i70, 1          ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %i.hc, %i.gu
  br i1 %exitcond.not.i71, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72, label %.lr.ph.i3.i69, !llvm.loop !15

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72: ; preds = %bb.an, %.lr.ph.i3.i69
  %.sroa.13.1.ph.i73 = phi i64 [ %.sroa.13.5.i70, %.lr.ph.i3.i69 ], [ %i.gu, %bb.an ] ; 2 uses
  %.pre.i74 = load i64, ptr %i.gq, align 8, !tbaa !211, !noalias !632
  %i.hd = icmp eq i64 %.sroa.13.1.ph.i73, %.pre.i74
  br i1 %i.hd, label %.noexc32, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80
  %.sroa.13.023.i76 = phi i64 [ %.sroa.13.2.i79.lcssa, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80 ], [ %.sroa.13.1.ph.i73, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %.sroa.13.023.i76
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load atomic ptr, ptr %i.hf monotonic, align 8 ; 2 uses
  %.not.i77 = icmp eq ptr %i.hg, null
  br i1 %.not.i77, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i75
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = atomicrmw add ptr %i.hh, i32 4097 monotonic, align 4 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i75
  %.sroa.13.2.i79247.a = add i64 %.sroa.13.023.i76, 1 ; 3 uses
  %i.hj = icmp ult i64 %.sroa.13.2.i79247.a, %i.gu
  br i1 %i.hj, label %.lr.ph249, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80

bb.aq:                                            ; preds = %.lr.ph249
  %.sroa.13.2.i79 = add i64 %.sroa.13.2.i79248, 1 ; 3 uses
  %i.hk = icmp ult i64 %.sroa.13.2.i79, %i.gu
  br i1 %i.hk, label %.lr.ph249, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80, !llvm.loop !15

.lr.ph249:                                        ; preds = %bb.ap, %bb.aq
  %.sroa.13.2.i79248 = phi i64 [ %.sroa.13.2.i79, %bb.aq ], [ %.sroa.13.2.i79247.a, %bb.ap ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %.sroa.13.2.i79248
  %i.hm = load atomic i8, ptr %i.hl acquire, align 1
  %i.hn = icmp eq i8 %i.hm, 1
  br i1 %i.hn, label %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80_crit_edge, label %bb.aq, !llvm.loop !15

._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80_crit_edge: ; preds = %.lr.ph249
  br label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80, !llvm.loop !15

_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80: ; preds = %bb.aq, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80_crit_edge, %bb.ap
  %.sroa.13.2.i79.lcssa = phi i64 [ %.sroa.13.2.i79248, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80_crit_edge ], [ %.sroa.13.2.i79247.a, %bb.ap ], [ %.sroa.13.2.i79, %bb.aq ] ; 2 uses
  %i.ho = load i64, ptr %i.gq, align 8, !tbaa !211, !noalias !632
  %.not21.i81 = icmp eq i64 %.sroa.13.2.i79.lcssa, %i.ho
  br i1 %.not21.i81, label %.noexc32, label %.lr.ph.i75, !llvm.loop !16

.noexc32:                                         ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80, %.noexc31, %bb.am, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72, %.noexc30
  %.022.i = phi ptr [ %i.gp, %.noexc31 ], [ null, %.noexc30 ], [ %i.gp, %bb.am ], [ %i.gp, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72 ], [ %i.gp, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80 ] ; 2 uses
  %.0.i26 = phi ptr [ %i.gp, %.noexc31 ], [ %.0.i10, %.noexc30 ], [ %i.gp, %bb.am ], [ %i.gp, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i72 ], [ %i.gp, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i80 ] ; 2 uses
  %i.hp = load ptr, ptr %2, align 8, !tbaa !262   ; 3 uses
  %.not176 = icmp eq ptr %i.hp, null
  br i1 %.not176, label %.noexc35.thread, label %bb.ar

bb.ar:                                            ; preds = %.noexc32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !119
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = invoke noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(12) %i.hp)
          to label %.noexc33 unwind label %bb.bb, !inline_history !18

.noexc33:                                         ; preds = %bb.ar
  br i1 %i.ht, label %bb.as, label %.noexc35

bb.as:                                            ; preds = %.noexc33
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i26, i64 56
  %i.hv = load ptr, ptr %2, align 8, !tbaa !262
  %i.hw = invoke noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiE6insertES2_i(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef %i.hv, i32 noundef 1)
          to label %.noexc34 unwind label %bb.bb  ; 0 uses

.noexc34:                                         ; preds = %bb.as
  %i.hx = load ptr, ptr %2, align 8, !tbaa !262   ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !119
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(12) %i.hx)
          to label %.noexc35 unwind label %bb.bb, !inline_history !18

.noexc35:                                         ; preds = %.noexc34, %.noexc33
  %.pr = load ptr, ptr %2, align 8, !tbaa !262    ; 2 uses
  %.not177 = icmp eq ptr %.pr, null
  br i1 %.not177, label %.noexc35.thread, label %bb.at

bb.at:                                            ; preds = %.noexc35
  %i.ib = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ic = atomicrmw add ptr %i.ib, i32 4097 monotonic, align 4 ; 0 uses
  %.pre202 = load ptr, ptr %2, align 8, !tbaa !262
  br label %.noexc35.thread

.noexc35.thread:                                  ; preds = %.noexc32, %bb.at, %.noexc35
  %i.id = phi ptr [ null, %.noexc32 ], [ %.pre202, %bb.at ], [ null, %.noexc35 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i26, i64 24
  %.sroa.0.0.copyload.i27 = load i32, ptr %1, align 4, !tbaa !62
  store ptr null, ptr %2, align 8, !tbaa !262
  %i.if = invoke noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE6insertES1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ie, i32 %.sroa.0.0.copyload.i27, ptr noundef %i.id)
          to label %.noexc8 unwind label %bb.bb   ; 0 uses

.noexc8:                                          ; preds = %.noexc35.thread
  %.not41.i = icmp eq ptr %.022.i, null
  br i1 %.not41.i, label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166, label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166.sink.split

bb.au:                                            ; preds = %.noexc6
  br i1 %.not.i3, label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166, label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166.sink.split

_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166.sink.split: ; preds = %.noexc8, %bb.au
  %.022.i.sink235 = phi ptr [ %.0.i14, %bb.au ], [ %.022.i, %.noexc8 ] ; 2 uses
  %i.ig = ptrtoint ptr %0 to i64
  %i.ih = or disjoint i64 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.022.i.sink235, i64 16
  store i64 %i.ih, ptr %i.ii, align 8, !tbaa !150
  store atomic ptr %.022.i.sink235, ptr %i.n release, align 8
  br label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166

_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166: ; preds = %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166.sink.split, %bb.au, %.noexc8
  %.4.i148164 = phi ptr [ null, %.noexc8 ], [ null, %bb.au ], [ %.0.i10, %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166.sink.split ] ; 8 uses
  %.not43.i149162 = phi i1 [ true, %.noexc8 ], [ true, %bb.au ], [ false, %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166.sink.split ]
  %i.ij = load ptr, ptr %5, align 8, !tbaa !232, !nonnull !87, !align !120
  %i.ik = invoke noundef i64 @_ZN5folly20processLocalUniqueIdEv()
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store atomic i64 %i.ik, ptr %i.il release, align 8
  %i.im = load i8, ptr %i.e, align 8, !tbaa !82, !range !88, !noundef !87
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.aw, label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.io = load ptr, ptr %i.c, align 8, !tbaa !81  ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i85, label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ip = atomicrmw and ptr %i.io, i32 -401 seq_cst, align 4 ; 2 uses
  %i.iq = and i32 %i.ip, -401
  store i32 %i.iq, ptr %i.a, align 4, !tbaa !62
  %i.ir = and i32 %i.ip, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.ay, !prof !73

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.io, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.az

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit

bb.az:                                            ; preds = %bb.ay
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #37
  unreachable

bb.ba:                                            ; preds = %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit.thread166
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #37
  unreachable

_ZN5folly14RequestContext5State9LockGuardD2Ev.exit: ; preds = %bb.av, %bb.aw, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br i1 %.not, label %.loopexit179, label %8

bb.bb:                                            ; preds = %.noexc35.thread, %.noexc34, %bb.as, %bb.ar, %.noexc30.thread, %bb.ag, %.noexc17.thread, %bb.k, %bb.j, %bb.c, %.noexc6
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bb, %.body52
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body53, %.body52 ], [ %i.iw, %bb.bb ]
  call void @_ZN5folly14RequestContext5State9LockGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bq

8:                                                ; preds = %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit
  %9 = load atomic i8, ptr @_ZZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEbE26__folly_detail_glog_logged monotonic, align 1, !range !88, !noundef !87
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %.loopexit179, label %bb.bc, !prof !73

bb.bc:                                            ; preds = %8
  %i.ix = atomicrmw xchg ptr @_ZZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEbE26__folly_detail_glog_logged, i8 1 monotonic, align 1
  %i.iy = trunc i8 %i.ix to i1
  br i1 %i.iy, label %.loopexit179, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str.11, i32 noundef 301, i32 noundef 1)
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.be unwind label %bb.bg     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull @.str.57, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNK5folly12RequestToken14getDebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jb = load ptr, ptr %7, align 8, !tbaa !71
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jc = load i64, ptr %11, align 8, !tbaa !68
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef %i.jb, i64 noundef %i.jc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bi

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.bf
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef nonnull @.str.58, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.jf = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %12
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.jh = load i64, ptr %12, align 8, !tbaa !91
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.loopexit179

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.bi:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.bf
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %13
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.bi
  %i.jo = load i64, ptr %13, align 8, !tbaa !91
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.bh
  %.pn26.i = phi { ptr, i32 } [ %i.jk, %bb.bh ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.jl, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.bg
  %.pn26.pn.i = phi { ptr, i32 } [ %.pn26.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %i.jj, %bb.bg ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.bq

.loopexit179:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bc, %8, %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit
  br i1 %.not43.i149162, label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit, label %bb.bk

bb.bk:                                            ; preds = %.loopexit179
  %i.jq = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i, label %bb.bl, label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i, !prof !89

bb.bl:                                            ; preds = %bb.bk
  %i.jr = call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb1EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg) #12
  br label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i

_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i: ; preds = %bb.bl, %bb.bk
  %i.js = phi ptr [ %i.jr, %bb.bl ], [ %i.jq, %bb.bk ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.4.i148164, i64 8 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !138
  %.not.i.i.i96 = icmp eq ptr %i.ju, %.4.i148164
  br i1 %.not.i.i.i96, label %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  call void @_ZN5folly10hazptr_objISt6atomicE21pre_retire_check_failEv(ptr noundef nonnull align 8 dereferenceable(24) %.4.i148164) #12
  br label %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i

_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i: ; preds = %bb.bm, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  store ptr @_ZZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE11set_reclaimEvENUlPNS_10hazptr_objIS4_EERNS_15hazptr_obj_listIS4_EEE_8__invokeESA_SD_, ptr %.4.i148164, align 8, !tbaa !139
  %i.jv = getelementptr inbounds nuw i8, ptr %.4.i148164, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !150
  %i.jx = and i64 %i.jw, -2                       ; 2 uses
  %.not.i.i97 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i97, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i
  %i.jy = inttoptr i64 %i.jx to ptr
  call void @_ZN5folly17hazptr_obj_cohortISt6atomicE8push_objEPNS_10hazptr_objIS1_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %.4.i148164)
  br label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit

bb.bo:                                            ; preds = %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %.4.i148164, ptr %3, align 8, !tbaa !141
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.4.i148164, ptr %i.jz, align 8, !tbaa !165
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.ka, align 8, !tbaa !167
  store ptr null, ptr %i.jt, align 8, !tbaa !138
  invoke void @_ZN5folly13hazptr_domainISt6atomicE9push_listERNS_15hazptr_obj_listIS1_EE(ptr noundef nonnull align 64 dereferenceable(449) %i.js, ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #37
  unreachable

_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit

bb.bq:                                            ; preds = %bb.bj, %.body
  %.pn26.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.i, %bb.bj ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn26.pn.pn.i

_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit: ; preds = %_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i, %bb.bn, %.loopexit179
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
  store ptr %0, ptr %5, align 8, !tbaa !213
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
  br i1 %i.k, label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, !prof !69

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
  %i.p = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #41
          to label %bb.d unwind label %bb.ad      ; 9 uses

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 4, ptr %i.s, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 4, ptr %i.u, align 8, !tbaa !226
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  %i.w = ptrtoint ptr %0 to i64
  %i.x = or disjoint i64 %i.w, 1
  store i64 %i.x, ptr %i.r, align 8, !tbaa !150
  store atomic ptr %i.p, ptr %i.n release, align 8
  br label %.noexc

.noexc:                                           ; preds = %bb.d, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %.0.i7 = phi ptr [ %i.o, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit ], [ %i.p, %bb.d ] ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i7, i64 24 ; 4 uses
  %.sroa.06.0.copyload.i = load i32, ptr %1, align 4, !tbaa !62 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i7, i64 40
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !noalias !641
  %i.ab = icmp eq i64 %i.aa, 0
  %.pre93 = load i64, ptr %i.y, align 8, !tbaa !211, !noalias !641 ; 3 uses
  br i1 %i.ab, label %.noexc4.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ac = add i64 %.pre93, -1                     ; 2 uses
  %.not.i.i.i83 = icmp eq i64 %.pre93, 0
  br i1 %.not.i.i.i83, label %.noexc4.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = zext i32 %.sroa.06.0.copyload.i to i64
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i7, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge.i.i.i.thread
  %.in = phi i64 [ %.pre93, %.lr.ph ], [ %i.ag, %.critedge.i.i.i.thread ]
  %.015.i.i.i84 = phi i64 [ %i.ae, %.lr.ph ], [ %i.an, %.critedge.i.i.i.thread ] ; 6 uses
  %i.ag = add i64 %.in, -1                        ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !202, !noalias !641
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.015.i.i.i84 ; 2 uses
  %i.aj = load atomic i8, ptr %i.ai acquire, align 1, !noalias !641
  switch i8 %i.aj, label %.critedge.i.i.i.thread [
    i8 1, label %bb.g
    i8 0, label %.noexc4.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.0.0.copyload.i2.i.i = load i32, ptr %i.ak, align 4, !tbaa !62, !noalias !641
  %i.al = icmp eq i32 %.sroa.0.0.copyload.i2.i.i, %.sroa.06.0.copyload.i
  br i1 %i.al, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, label %.critedge.i.i.i.thread

.critedge.i.i.i.thread:                           ; preds = %bb.f, %bb.g
  %i.am = add i64 %.015.i.i.i84, 1
  %i.an = and i64 %i.am, %i.ac
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %.noexc4.thread, label %bb.f

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i: ; preds = %bb.g
  %.pre94 = load i64, ptr %i.y, align 8, !tbaa !211 ; 5 uses
  %i.ao = icmp eq i64 %.015.i.i.i84, %.pre94
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i7, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.ao, ptr null, ptr %i.aq
  %i.as = icmp ult i64 %.015.i.i.i84, %.pre94
  br i1 %i.as, label %.lr.ph.i, label %.noexc4

.lr.ph.i:                                         ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, %bb.h
  %.sroa.642.0 = phi i64 [ %i.aw, %bb.h ], [ %.015.i.i.i84, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.sroa.642.0
  %i.au = load atomic i8, ptr %i.at acquire, align 1
  %i.av = icmp eq i8 %i.au, 1
  br i1 %i.av, label %.noexc4.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.aw = add i64 %.sroa.642.0, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %.pre94
  br i1 %exitcond.not, label %.noexc4.loopexit, label %.lr.ph.i, !llvm.loop !15

end_hunk_1
