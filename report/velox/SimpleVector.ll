inline.NumInlined: 478
inline.NumDeleted: 245
begin_hunk_0_@_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE8validateERKNS0_21VectorValidateOptionsE:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9, !noalias !20
  %i.o = load ptr, ptr %4, align 8, !tbaa !13     ; 9 uses
  %.not.i.i = icmp eq ptr %i.o, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.neg.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !35
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %.not = icmp slt i32 %i.w, %i.y
  br i1 %.not, label %bb.g, label %bb.l, !prof !55

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !56
  store i32 %i.w, ptr %2, align 16, !tbaa !59, !noalias !56
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.y, ptr %i.z, align 16, !tbaa !59, !noalias !56
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.3, i64 11, i64 17, ptr nonnull %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !56
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorINS0_10StringViewEE8validateERKNS0_21VectorValidateOptionsEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.3) #19
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !59
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn7 = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn7

bb.l:                                             ; preds = %bb.f, %bb.e
  %i.ah = load i16, ptr %i.e, align 8, !tbaa !21
  switch i16 %i.ah, label %bb.r [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.m
    i16 3, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.ai = load atomic i32, ptr %i.o acquire, align 4
  %i.aj = and i32 %i.ai, 768
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.n
  br i1 %i.al, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.noexc, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.am = atomicrmw sub ptr %i.o, i32 2048 seq_cst, align 4 ; 2 uses
  %i.an = add i32 %i.am, -2048                    ; 2 uses
  store i32 %i.an, ptr %i.b, align 4, !tbaa !3
  %i.ao = icmp ugt i32 %i.an, 2047
  %i.ap = and i32 %i.am, 16
  %.not.i.i.i.i = icmp eq i32 %i.ap, 0
  %or.cond.i.i.i = or i1 %i.ao, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.p, !prof !65

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.t

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.q:                                             ; preds = %bb.l
  %i.aq = load i16, ptr %i.f, align 2, !tbaa !22
  %i.ar = zext i16 %i.aq to i64
  %i.as = ptrtoint ptr %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.au = cmpxchg ptr %i.at, i64 %i.as, i64 0 seq_cst seq_cst, align 8
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.aw = atomicrmw sub ptr %i.o, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ax = add i32 %i.aw, -2048                    ; 2 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !3
  %i.ay = icmp ugt i32 %i.ax, 2047
  %i.az = and i32 %i.aw, 16
  %.not.i.i.i = icmp eq i32 %i.az, 0
  %or.cond.i.i = or i1 %i.ay, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.s, !prof !65

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.t

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.n
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #21
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.l, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.q, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

declare void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !21
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %7 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %10 = alloca %"class.folly::LockedPtr", align 8 ; 9 uses
  %11 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.g, ptr %10, align 8, !tbaa !13, !alias.scope !72
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i16 0, ptr %i.h, align 8, !tbaa !21, !alias.scope !72
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 2 uses
  store i16 0, ptr %i.i, align 2, !tbaa !22, !alias.scope !72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9, !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9, !noalias !72
  %i.j = load atomic i32, ptr %i.g monotonic, align 8, !noalias !72 ; 4 uses
  store i32 %i.j, ptr %i.e, align 4, !tbaa !3, !noalias !72
  %i.k = and i32 %i.j, -1408
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = or disjoint i32 %i.j, 2048
  %i.n = cmpxchg ptr %i.g, i32 %i.j, i32 %i.m seq_cst seq_cst, align 4, !noalias !72 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = extractvalue { i32, i1 } %i.n, 0
  store i32 %i.p, ptr %i.e, align 4, !noalias !72
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.h, align 8, !tbaa !21, !alias.scope !72
  br label %_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.a
  %i.q = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 0 uses
  br label %_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit

_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9, !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9, !noalias !72
  %i.r = load ptr, ptr %10, align 8, !tbaa !13    ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.neg.i.i
  %i.t = invoke noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(38) %i.s)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit
  %i.u = load i16, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not.i.i9 = icmp eq i16 %i.u, 0
  br i1 %.not.i.i9, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %10, align 8, !tbaa !13    ; 7 uses
  switch i16 %i.u, label %bb.l [
    i16 1, label %bb.g
    i16 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %i.x = and i32 %i.w, 768
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  br i1 %i.z, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.aa = atomicrmw sub ptr %i.v, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ab = add i32 %i.aa, -2048                    ; 2 uses
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !3
  %i.ac = icmp ugt i32 %i.ab, 2047
  %i.ad = and i32 %i.aa, 16
  %.not.i.i.i.i21 = icmp eq i32 %i.ad, 0
  %or.cond.i.i.i = or i1 %i.ac, %.not.i.i.i.i21
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.j, !prof !65

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !22
  %i.af = zext i16 %i.ae to i64
  %i.ag = ptrtoint ptr %i.v to i64
  %.idx.i = shl nuw nsw i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ai = cmpxchg ptr %i.ah, i64 %i.ag, i64 0 seq_cst seq_cst, align 8
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ak = atomicrmw sub ptr %i.v, i32 2048 seq_cst, align 4 ; 2 uses
  %i.al = add i32 %i.ak, -2048                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !3
  %i.am = icmp ugt i32 %i.al, 2047
  %i.an = and i32 %i.ak, 16
  %.not.i.i.i20 = icmp eq i32 %i.an, 0
  %or.cond.i.i = or i1 %i.am, %.not.i.i.i20
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.m, !prof !65

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #21
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.k, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br i1 %i.t, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.aq = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  br label %bb.bj

bb.p:                                             ; preds = %_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.bk

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.au = load i8, ptr %i.at, align 1, !tbaa !75, !range !73, !noundef !74
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.r

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.q
  %.0.in.pre.i.i = load i8, ptr %i.as, align 4, !tbaa !76, !range !73
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !23
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !35 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !36
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bf = and i32 %i.ba, 2147483584               ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %.not37.i.i.not.i.i114.not = icmp eq i32 %i.bf, 0
  br i1 %.not37.i.i.not.i.i114.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i115, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bg
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %indvars.iv.i.i115 = phi i64 [ %indvars.iv.next.i.i, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.bh = lshr exact i64 %indvars.iv.i.i115, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !80
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !78

.critedge.i.i.i.i:                                ; preds = %bb.v, %bb.u
  %.not38.i.i.i.i = icmp eq i32 %i.ba, %i.bf
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i.i.i
  %i.bl = lshr i32 %i.ba, 6
  %i.bm = and i32 %i.ba, 63
  %i.bn = zext nneg i32 %i.bm to i64
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br i1 %.not.i23.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i

.lr.ph124:                                        ; preds = %bb.as, %bb.at
  %i.ji = phi i64 [ %i.jh, %bb.at ], [ 32, %bb.as ] ; 2 uses
  %.011.i.i17.i.i.i.i.i123 = phi i64 [ %i.ji, %bb.at ], [ 0, %bb.as ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 %.011.i.i17.i.i.i.i.i123
  %i.jk = load <4 x i64>, ptr %i.jj, align 1, !tbaa !59, !noalias !123
  %i.jl = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.jk, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i19.i.i.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not16.not.i.i19.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %bb.at, !llvm.loop !87

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.preheader.i22.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i
  %.1.i6.i25.i.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i24.i.i.i.i.i ], [ %i.jg, %.preheader.i22.i.i.i.i.i ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 %.1.i6.i25.i.i.i.i.i
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !59
  %.not15.i.i26.i.i.i.i.i = icmp sgt i8 %i.jn, -1 ; 2 uses
  %i.jo = add nuw nsw i64 %.1.i6.i25.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i27.i.i.i.i.i = icmp ne i64 %i.jo, %i.jf
  %or.cond137.not = select i1 %.not15.i.i26.i.i.i.i.i, i1 %exitcond.not.i27.i.i.i.i.i, i1 false
  br i1 %or.cond137.not, label %.lr.ph.i24.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i: ; preds = %.lr.ph124, %.lr.ph.i24.i.i.i.i.i, %.preheader.i22.i.i.i.i.i
  %.2.i.i21.i.i.i.i.i = phi i1 [ true, %.preheader.i22.i.i.i.i.i ], [ %.not15.i.i26.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i ], [ false, %.lr.ph124 ]
  %i.jp = icmp ne i8 %.10, 0
  %i.jq = and i1 %i.jp, %.2.i.i21.i.i.i.i.i
  %i.jr = zext i1 %i.jq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, %bb.ar
  %.11 = phi i8 [ %.10, %bb.ar ], [ %i.jr, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i ] ; 2 uses
  %i.js = add i64 %.01532.i.i.i.i.i, -1
  %i.jt = and i64 %i.js, %.01532.i.i.i.i.i        ; 2 uses
  %.not.i65.i.i.i.i = icmp eq i64 %i.jt, 0
  br i1 %.not.i65.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", label %bb.ar, !llvm.loop !130

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %bb.an, %bb.am
  %.4 = phi i8 [ %.3, %bb.am ], [ %.3, %bb.an ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.ju = add nsw i32 %i.he, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ju, %i.dk
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.am, !llvm.loop !131

bb.au:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jv = ashr i32 %i.dg, 6
  %i.jw = and i32 %i.dg, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %notmask.i66.i.i.i.i = shl nsw i64 -1, %i.jx
  %i.jy = xor i64 %notmask.i66.i.i.i.i, -1
  %i.jz = sext i32 %i.jv to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !80
  %i.kc = and i64 %i.kb, %i.jy                    ; 2 uses
  %.not.i67.i.i.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i67.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %.preheader.i68.i.i.i.i

.preheader.i68.i.i.i.i:                           ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.av

bb.av:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %.preheader.i68.i.i.i.i
  %.6 = phi i8 [ %.5, %.preheader.i68.i.i.i.i ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  %.012.i69.i.i.i.i = phi i64 [ %i.kc, %.preheader.i68.i.i.i.i ], [ %i.li, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %i.kf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i69.i.i.i.i, i1 true)
  %i.kg = trunc nuw nsw i64 %i.kf to i32
  %i.kh = or disjoint i32 %i.dk, %i.kg            ; 2 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !81
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = call noundef zeroext i1 %i.kk(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.kh), !inline_history !97
  br i1 %i.kl, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.km = load ptr, ptr %0, align 8, !tbaa !81
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 384
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = call noundef nonnull align 8 dereferenceable(16) ptr %i.ko(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.kh), !inline_history !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i64 16, i1 false), !tbaa.struct !84
  %i.kq = load i32, ptr %3, align 8, !tbaa !85    ; 3 uses
  %i.kr = icmp ult i32 %i.kq, 13
  %i.ks = load ptr, ptr %i.ke, align 8
  %i.kt = select i1 %i.kr, ptr %i.kd, ptr %i.ks   ; 2 uses
  %i.ku = zext i32 %i.kq to i64                   ; 4 uses
  %i.kv = and i64 %i.ku, 4294967264               ; 2 uses
  %.not.i.i.i71.i.i.i.i125 = icmp ult i32 %i.kq, 32
  br i1 %.not.i.i.i71.i.i.i.i125, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127

bb.ax:                                            ; preds = %.lr.ph127
  %i.kw = add nuw nsw i64 %i.kx, 32               ; 2 uses
  %.not.i.i.i71.i.i.i.i = icmp samesign ugt i64 %i.kw, %i.ku
  br i1 %.not.i.i.i71.i.i.i.i, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127, !llvm.loop !87

.preheader.i.i77.i.i.i.i:                         ; preds = %bb.ax, %bb.aw
  %.not.i.i78.i.i.i.i = icmp eq i64 %i.kv, %i.ku
  br i1 %.not.i.i78.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %.lr.ph.i.i79.i.i.i.i

.lr.ph127:                                        ; preds = %bb.aw, %bb.ax
  %i.kx = phi i64 [ %i.kw, %bb.ax ], [ 32, %bb.aw ] ; 2 uses
  %.011.i.i.i70.i.i.i.i126 = phi i64 [ %i.kx, %bb.ax ], [ 0, %bb.aw ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.011.i.i.i70.i.i.i.i126
  %i.kz = load <4 x i64>, ptr %i.ky, align 1, !tbaa !59, !noalias !132
  %i.la = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.kz, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i72.i.i.i.i = icmp eq i32 %i.la, 0
  br i1 %.not16.not.i.i.i72.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %bb.ax, !llvm.loop !87

.lr.ph.i.i79.i.i.i.i:                             ; preds = %.preheader.i.i77.i.i.i.i, %.lr.ph.i.i79.i.i.i.i
  %.1.i6.i.i80.i.i.i.i = phi i64 [ %i.ld, %.lr.ph.i.i79.i.i.i.i ], [ %i.kv, %.preheader.i.i77.i.i.i.i ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.1.i6.i.i80.i.i.i.i
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !59
  %.not15.i.i.i81.i.i.i.i = icmp sgt i8 %i.lc, -1 ; 2 uses
  %i.ld = add nuw nsw i64 %.1.i6.i.i80.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i82.i.i.i.i = icmp ne i64 %i.ld, %i.ku
  %or.cond138.not = select i1 %.not15.i.i.i81.i.i.i.i, i1 %exitcond.not.i.i82.i.i.i.i, i1 false
  br i1 %or.cond138.not, label %.lr.ph.i.i79.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i: ; preds = %.lr.ph127, %.lr.ph.i.i79.i.i.i.i, %.preheader.i.i77.i.i.i.i
  %.2.i.i.i74.i.i.i.i = phi i1 [ true, %.preheader.i.i77.i.i.i.i ], [ %.not15.i.i.i81.i.i.i.i, %.lr.ph.i.i79.i.i.i.i ], [ false, %.lr.ph127 ]
  %i.le = icmp ne i8 %.6, 0
  %i.lf = and i1 %i.le, %.2.i.i.i74.i.i.i.i
  %i.lg = zext i1 %i.lf to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, %bb.av
  %.7 = phi i8 [ %.6, %bb.av ], [ %i.lg, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i ] ; 2 uses
  %i.lh = add nsw i64 %.012.i69.i.i.i.i, -1
  %i.li = and i64 %i.lh, %.012.i69.i.i.i.i        ; 2 uses
  %.not10.i76.i.i.i.i = icmp eq i64 %i.li, 0
  br i1 %.not10.i76.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.av, !llvm.loop !105

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %bb.x, %bb.ab, %bb.ad, %._crit_edge.i.i.i.i, %bb.au
  %.16 = phi i8 [ 1, %bb.ab ], [ 1, %bb.x ], [ 1, %bb.ad ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ], [ %.5, %._crit_edge.i.i.i.i ], [ %.5, %bb.au ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  store ptr %i.g, ptr %11, align 8, !tbaa !145, !alias.scope !147
  %i.lj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i8 0, ptr %i.lj, align 8, !tbaa !148, !alias.scope !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9, !noalias !147
  %i.lk = load atomic i32, ptr %i.g acquire, align 8, !noalias !147 ; 4 uses
  store i32 %i.lk, ptr %i.d, align 4, !tbaa !3, !noalias !147
  %i.ll = and i32 %i.lk, -1312
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.ay, label %.critedge.i.i.i.i.i.i.i, !prof !149

bb.ay:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.ln = or disjoint i32 %i.lk, 128
  %i.lo = cmpxchg ptr %i.g, i32 %i.lk, i32 %i.ln seq_cst seq_cst, align 4, !noalias !147 ; 2 uses
  %i.lp = extractvalue { i32, i1 } %i.lo, 1
  br i1 %i.lp, label %bb.az, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, !prof !150

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11: ; preds = %bb.ay
  %i.lq = extractvalue { i32, i1 } %i.lo, 0
  store i32 %i.lq, ptr %i.d, align 4, !noalias !147
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.lr = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !147 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !147
  store i8 1, ptr %i.lj, align 8, !tbaa !148, !alias.scope !147
  %i.ls = load ptr, ptr %11, align 8, !tbaa !145  ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.ls, null
  %.neg.i.i13 = select i1 %.not.i.i12, i64 0, i64 -40
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %.neg.i.i13 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 28
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !23
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !35
  %i.ly = icmp slt i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store atomic i8 %.16, ptr %i.f seq_cst, align 8
  br label %bb.bd

bb.bb:                                            ; preds = %bb.bd
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bk

bb.bc:                                            ; preds = %bb.az
  %i.ma = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %.not = icmp eq i8 %.16, 0
  %i.mb = select i1 %.not, i8 0, i8 %i.ma
  store atomic i8 %i.mb, ptr %i.f seq_cst, align 8
  %.pre = load ptr, ptr %11, align 8, !tbaa !145
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  %i.mc = phi ptr [ %i.ls, %bb.ba ], [ %.pre, %bb.bc ] ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.mc, null
  %.neg.i.i15 = select i1 %.not.i.i14, i64 0, i64 -40
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 %.neg.i.i15
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.md, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %12 = load ptr, ptr %11, align 8, !tbaa !145    ; 2 uses
  %.not.i.i16 = icmp eq ptr %12, null
  %.neg.i.i17 = select i1 %.not.i.i16, i64 0, i64 -40
  %13 = getelementptr inbounds i8, ptr %12, i64 %.neg.i.i17 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !23
  %i.mg = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !35
  %i.mi = icmp sge i32 %i.mf, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.mk = zext i1 %i.mi to i8
  store atomic i8 %i.mk, ptr %i.mj seq_cst, align 1
  %i.ml = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %i.mm = load i8, ptr %i.lj, align 8, !tbaa !148, !range !73, !noundef !74
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.bf, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.mo = load ptr, ptr %11, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i18, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.mp = atomicrmw and ptr %i.mo, i32 -401 seq_cst, align 4 ; 2 uses
  %i.mq = and i32 %i.mp, -401
  store i32 %i.mq, ptr %i.c, align 4, !tbaa !3
  %i.mr = and i32 %i.mp, 15
  %.not.i.i.i.i.i19 = icmp eq i32 %i.mr, 0
  br i1 %.not.i.i.i.i.i19, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.bh, !prof !149

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.mo, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.bi

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #21
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.be, %bb.bf, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.o
  %.0.in = phi i8 [ %i.aq, %bb.o ], [ %i.ml, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit ]
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0

bb.bk:                                            ; preds = %bb.bb, %bb.p
  %.pn = phi { ptr, i32 } [ %i.lz, %bb.bb ], [ %i.ar, %bb.p ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %.not5 = icmp sgt i32 %i.f, %i.h
  br i1 %.not5, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !77     ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %.not.i.i = icmp slt i32 %i.b, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.b, 63                         ; 2 uses
  %i.l = srem i32 %i.k, 64
  %i.m = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.n = and i32 %i.f, -64                        ; 3 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = ashr i32 %i.f, 6
  %i.q = and i32 %i.f, 63
  %i.r = zext nneg i32 %i.q to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i.i.i, -1
  %i.t = sub nsw i32 %i.m, %i.b                   ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i.i, -1
  %i.w = sub nsw i32 64, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %i.v, %i.x
  %i.z = and i64 %i.y, %i.s
  %i.aa = sext i32 %i.p to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80
  %i.ad = and i64 %i.z, %i.ac
  br label %.loopexit.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %.not36.i.i = icmp eq i32 %i.b, %i.m
  br i1 %.not36.i.i, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.b, 64
  %i.af = sub nsw i32 %i.m, %i.b                  ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %notmask.i.i39.i.i = shl nsw i64 -1, %i.ag
  %i.ah = xor i64 %notmask.i.i39.i.i, -1
  %i.ai = sub nsw i32 64, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl i64 %i.ah, %i.aj
  %i.al = sext i32 %i.ae to i64                   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !80
  %i.ao = and i64 %i.an, %i.ak                    ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.al
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !80
  %i.ar = and i64 %i.aq, %i.ao
  %i.as = icmp eq i64 %i.ar, %i.ao
  br i1 %i.as, label %.preheader, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

.preheader:                                       ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.i
  %.0.i.i = phi i32 [ %i.at, %bb.i ], [ %i.m, %.preheader ] ; 2 uses
  %i.at = add nsw i32 %.0.i.i, 64                 ; 2 uses
  %.not37.i.i = icmp sgt i32 %i.at, %i.n
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = sdiv i32 %.0.i.i, 64
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.av
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.ba = and i64 %i.az, %i.ax
  %i.bb = icmp eq i64 %i.ba, %i.ax
  br i1 %i.bb, label %bb.h, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, !llvm.loop !151

.critedge.i.i:                                    ; preds = %bb.h
  %.not38.i.i = icmp eq i32 %i.f, %i.n
  br i1 %.not38.i.i, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.bc = ashr i32 %i.f, 6
  %i.bd = and i32 %i.f, 63
  %i.be = zext nneg i32 %i.bd to i64
  %notmask.i40.i.i = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask.i40.i.i, -1
  %i.bg = sext i32 %i.bc to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80
  %i.bj = and i64 %i.bi, %i.bf
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %bb.j, %bb.e
  %.sink54.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.bg, %bb.j ]
  %.sink53.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sink54.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !80
  %i.bm = and i64 %i.bl, %.sink53.i.i
  %i.bn = icmp eq i64 %i.bm, %.sink53.i.i
  br label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit:   ; preds = %bb.i, %.loopexit.sink.split.i.i, %.critedge.i.i, %bb.g, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %.critedge.i.i ], [ %i.bn, %.loopexit.sink.split.i.i ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 4 uses
  %3 = alloca %"class.folly::LockedPtr", align 8  ; 9 uses
  %4 = alloca %"class.folly::LockedPtr.22", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !13, !alias.scope !158
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !21, !alias.scope !158
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !22, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !158
end_hunk_1
begin_hunk_2_@_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:bb.a

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %i.bv, 12
  %n.vec127 = and i64 %i.bv, 4611686018427387888  ; 4 uses
  %i.bw = shl i64 %n.vec127, 3
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %broadcast.splatinsert128 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat129 = shufflevector <4 x i64> %broadcast.splatinsert128, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body130 ] ; 2 uses
  %i.by = shl i64 %index131, 3
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep132, i64 32
  %i.ca = getelementptr i8, ptr %next.gep132, i64 64
  %i.cb = getelementptr i8, ptr %next.gep132, i64 96
  store <4 x i64> %broadcast.splat129, ptr %next.gep132, align 8, !tbaa !80
  store <4 x i64> %broadcast.splat129, ptr %i.bz, align 8, !tbaa !80
  store <4 x i64> %broadcast.splat129, ptr %i.ca, align 8, !tbaa !80
  store <4 x i64> %broadcast.splat129, ptr %i.cb, align 8, !tbaa !80
  %index.next133 = add nuw i64 %index131, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.cc, label %middle.block134, label %vector.body130, !llvm.loop !205

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %i.bv, %n.vec127
  br i1 %cmp.n135, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block134
  %min.epilog.iters.check140 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.i.i.i71.preheader, label %vec.epilog.ph141, !prof !174

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check139
  %vec.epilog.resume.val136 = phi i64 [ %n.vec127, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.bv, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec143, 3
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert144 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i64> %broadcast.splatinsert144, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph141
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body146 ] ; 2 uses
  %i.cf = shl i64 %index147, 3
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.cf
  store <4 x i64> %broadcast.splat145, ptr %next.gep148, align 8, !tbaa !80
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cg, label %vec.epilog.middle.block150, label %vec.epilog.vector.body146, !llvm.loop !206

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body146
  %cmp.n151 = icmp eq i64 %i.bv, %n.vec143
  br i1 %cmp.n151, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block150
  %.06.i.i.i72.ph = phi ptr [ %1, %iter.check137 ], [ %i.bx, %vec.epilog.iter.check139 ], [ %i.ce, %vec.epilog.middle.block150 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ch, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ch, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !207

bb.o:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8, !tbaa !77    ; 5 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.ck = sub i64 %i.f, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3                 ; 4 uses
  %i.cm = sub nsw i64 1152921504606846975, %i.cl
  %i.cn = icmp ult i64 %i.cm, %2
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %2)
  %i.co = add nsw i64 %.sroa.speculated.i, %i.cl  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cl
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %i.cs = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ct = sub i64 %i.cs, %i.cj                    ; 4 uses
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %iter.check199, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.cr, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #23
  br label %iter.check199

iter.check199:                                    ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cw = phi ptr [ %i.cv, %bb.q ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.ct ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.i.i.i75
  %i.cz = load i64, ptr %3, align 8, !tbaa !80    ; 3 uses
  %i.da = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 3 uses
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 5 uses
  %min.iters.check184 = icmp ult i64 %i.da, 24
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check199
  %min.iters.check186 = icmp ult i64 %i.da, 120
  br i1 %min.iters.check186, label %vec.epilog.ph203, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %n.mod.vf188 = and i64 %i.dc, 12
  %n.vec189 = and i64 %i.dc, 4611686018427387888  ; 4 uses
  %i.dd = shl i64 %n.vec189, 3
  %i.de = getelementptr i8, ptr %i.cx, i64 %i.dd
  %broadcast.splatinsert190 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat191 = shufflevector <4 x i64> %broadcast.splatinsert190, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph187
  %index193 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.df = shl i64 %index193, 3
  %next.gep194 = getelementptr i8, ptr %i.cx, i64 %i.df ; 4 uses
  %i.dg = getelementptr i8, ptr %next.gep194, i64 32
  %i.dh = getelementptr i8, ptr %next.gep194, i64 64
  %i.di = getelementptr i8, ptr %next.gep194, i64 96
  store <4 x i64> %broadcast.splat191, ptr %next.gep194, align 8, !tbaa !80
  store <4 x i64> %broadcast.splat191, ptr %i.dg, align 8, !tbaa !80
  store <4 x i64> %broadcast.splat191, ptr %i.dh, align 8, !tbaa !80
  store <4 x i64> %broadcast.splat191, ptr %i.di, align 8, !tbaa !80
  %index.next195 = add nuw i64 %index193, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.dj, label %middle.block196, label %vector.body192, !llvm.loop !208

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.dc, %n.vec189
  br i1 %cmp.n197, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  %min.epilog.iters.check202 = icmp eq i64 %n.mod.vf188, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph203, !prof !174

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec189, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec205 = and i64 %i.dc, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec205, 3
  %i.dl = getelementptr i8, ptr %i.cx, i64 %i.dk
  %broadcast.splatinsert206 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat207 = shufflevector <4 x i64> %broadcast.splatinsert206, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph203
  %index209 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next211, %vec.epilog.vector.body208 ] ; 2 uses
  %i.dm = shl i64 %index209, 3
  %next.gep210 = getelementptr i8, ptr %i.cx, i64 %i.dm
  store <4 x i64> %broadcast.splat207, ptr %next.gep210, align 8, !tbaa !80
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.dn, label %vec.epilog.middle.block212, label %vec.epilog.vector.body208, !llvm.loop !209

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body208
  %cmp.n213 = icmp eq i64 %i.dc, %n.vec205
  br i1 %cmp.n213, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block212
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cx, %iter.check199 ], [ %i.de, %vec.epilog.iter.check201 ], [ %i.dl, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cz, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !80
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.do, %i.cy
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !210

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block212, %middle.block196
  %i.dp = icmp sgt i64 %i.ct, 8
  br i1 %i.dp, label %bb.r, label %bb.s, !prof !149

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.ci, i64 %i.ct, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.dq = icmp eq i64 %i.ct, 8
  br i1 %i.dq, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dr = load i64, ptr %i.ci, align 8, !tbaa !80
  store i64 %i.dr, ptr %i.cw, align 8, !tbaa !80
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %2 ; 3 uses
  %i.dt = sub i64 %i.f, %i.cs                     ; 4 uses
  %i.du = icmp sgt i64 %i.dt, 8
  br i1 %i.du, label %bb.u, label %bb.v, !prof !149

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %1, i64 %i.dt, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.dv = icmp eq i64 %i.dt, 8
  br i1 %i.dv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr %1, align 8, !tbaa !80
  store i64 %i.dw, ptr %i.ds, align 8, !tbaa !80
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  %.not.i82 = icmp eq ptr %i.ci, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = sub i64 %i.e, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dy) #20
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cw, ptr %0, align 8, !tbaa !77
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !195
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cr
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !198
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block134, %vec.epilog.middle.block150, %middle.block165, %vec.epilog.middle.block181, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.40) align 8 %2, ptr noundef byval(%class.anon.42) align 8 %3) local_unnamed_addr #14 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !182, !range !73, !noundef !74
  %i.s = load ptr, ptr %2, align 8, !tbaa !178
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !80
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !182, !range !73, !noundef !74
  %i.al = load ptr, ptr %2, align 8, !tbaa !178
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !80
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !73
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !182, !range !73, !noundef !74
  %i.bw = load ptr, ptr %2, align 8, !tbaa !178
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !80
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !181, !nonnull !74, !align !211
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit
end_hunk_2
