inline.NumInlined: 2841
inline.NumDeleted: 1404
begin_hunk_0_@_ZN8facebook5velox7IoStats10addCounterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14RuntimeCounterE:bb.a

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7IoStats10addCounterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14RuntimeCounterEE18veloxCheckFailArgs) #42
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %.noexc38, %.noexc.thread
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.dd = load i64, ptr %7, align 8, !tbaa !56
  invoke void @_ZN8facebook5velox13RuntimeMetric8addValueEl(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, i64 noundef %i.dd)
          to label %bb.u unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.noexc28.thread:                                  ; preds = %bb.e, %.noexc27.us.us
  %.pre-phi = phi i64 [ %i.bb, %.noexc27.us.us ], [ %i.bz, %bb.e ]
  %i.df = phi ptr [ %i.aw, %.noexc27.us.us ], [ %i.bs, %bb.e ]
  %i.dg = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %.pre-phi
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !57
  %i.dj = load i32, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i32 %i.di, %i.dj
  br i1 %.not, label %bb.t, label %bb.o, !prof !16

bb.o:                                             ; preds = %.noexc28.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !59
  store ptr %i.dh, ptr %4, align 16, !tbaa !62, !noalias !59
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14RuntimeCounter4UnitENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.dk, align 8, !tbaa !62, !noalias !59
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.dl, align 16, !tbaa !62, !noalias !59
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14RuntimeCounter4UnitENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.dm, align 8, !tbaa !62, !noalias !59
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.4, i64 11, i64 255, ptr nonnull %4)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !59
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7IoStats10addCounterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14RuntimeCounterEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.4) #42
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.p
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !62
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.r ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.do, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.y

bb.t:                                             ; preds = %.noexc28.thread
  %i.du = load i64, ptr %7, align 8, !tbaa !56
  invoke void @_ZN8facebook5velox13RuntimeMetric8addValueEl(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, i64 noundef %i.du)
          to label %bb.u unwind label %bb.j

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.dv = load ptr, ptr %8, align 8, !tbaa !10    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.dw = atomicrmw and ptr %i.dv, i32 -401 seq_cst, align 4 ; 2 uses
  %i.dx = and i32 %i.dw, -401
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !3
  %i.dy = and i32 %i.dw, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.w, !prof !16

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.x

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #44
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

bb.y:                                             ; preds = %bb.k, %bb.n, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.pn11.pn.pn = phi { ptr, i32 } [ %i.de, %bb.n ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cz, %bb.j ], [ %i.db, %bb.l ], [ %i.da, %bb.k ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZN8facebook5velox13RuntimeMetric8addValueEl(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !15, !range !52, !noundef !50
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !3
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #44
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox7IoStats5mergeERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.193", align 8    ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::F14FastMap", align 8 ; 9 uses
  %5 = alloca %"class.folly::LockedPtr", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZNK5folly12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaISt4pairIKS7_SA_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !10, !alias.scope !63
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !15, !alias.scope !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !63
  %i.e = load atomic i32, ptr %i.c acquire, align 8, !noalias !63 ; 4 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3, !noalias !63
  %i.f = and i32 %i.e, -1312
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.e, 128
  %i.i = cmpxchg ptr %i.c, i32 %i.e, i32 %i.h seq_cst seq_cst, align 4, !noalias !63 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !17

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = extractvalue { i32, i1 } %i.i, 0
  store i32 %i.k, ptr %i.b, align 4, !noalias !63
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.l = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %bb.b, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !63
  store i8 1, ptr %i.d, align 8, !tbaa !15, !alias.scope !63
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = lshr i64 %i.n, 8                         ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.o, 0
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  br i1 %.not.i.i.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.o
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.n
  %.pre132 = load i8, ptr %i.d, align 8, !tbaa !15, !range !52
  %i.r = trunc nuw i8 %.pre132 to i1
  br i1 %i.r, label %._crit_edge.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.s = load ptr, ptr %5, align 8, !tbaa !10     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.t = atomicrmw and ptr %i.s, i32 -401 seq_cst, align 4 ; 2 uses
  %i.u = and i32 %i.t, -401
  store i32 %i.u, ptr %i.a, align 4, !tbaa !3
  %i.v = and i32 %i.t, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.f

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #44
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !66
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !18  ; 3 uses
  %i.ae = lshr i64 %i.ad, 8                       ; 2 uses
  %i.af = and i64 %i.ad, 255
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.ag, align 1
  %i.ah = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.af
  %i.ai = xor i64 %notmask.i.i, -1
  %i.aj = lshr i64 %i.ai, 12
  %i.ak = add nuw nsw i64 %i.aj, 1
  %.not.i.i.i48 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i48, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.ar, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %6 = load ptr, ptr %4, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %6, i64 %.05.i.i.i ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !62
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #43
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ar = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ar, %i.ae
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !69

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !18
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.g
  %i.as = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.ad, %bb.g ] ; 3 uses
  %i.at = icmp ult i64 %i.as, 256
  br i1 %i.at, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.au = and i64 %i.as, 255                      ; 2 uses
  store i64 %i.au, ptr %i.m, align 8, !tbaa !18
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.h, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.av = phi i64 [ %i.as, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ax, align 1
  %i.ay = zext i16 %.0.copyload.i.i to i64
  %i.az = icmp eq i64 %i.av, 0
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.ba
  %.neg18.i = shl i64 -64, %i.av
  %.0.i.neg.i = select i1 %i.az, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.y, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !18
  %i.bb = and i64 %.0.i.neg.i, -8
  %i.bc = mul nuw nsw i64 %i.ah, 72
  %i.bd = mul i64 %i.bc, %i.ak
  %i.be = sub i64 %i.bd, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.be) #16
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE1ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.i:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph:                                           ; preds = %bb.n, %.lr.ph.preheader
  %.pn = phi ptr [ %i.q, %.lr.ph.preheader ], [ %.sroa.056.0123, %bb.n ] ; 3 uses
  %.sroa.056.0123 = getelementptr inbounds i8, ptr %.pn, i64 -72 ; 7 uses
  %i.bg = getelementptr inbounds i8, ptr %.pn, i64 -40 ; 2 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !10    ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.bh, null
  %.neg.i.i = select i1 %.not.i.i36, i64 0, i64 -24
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bl = icmp ult i64 %i.bk, 256
  br i1 %i.bl, label %.noexc.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bm = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.056.0123)
          to label %.noexc28 unwind label %bb.l   ; 2 uses

.noexc28:                                         ; preds = %bb.j
  %i.bn = lshr i64 %i.bm, 56
  %i.bo = or i64 %i.bn, 128                       ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = trunc nuw i64 %i.bo to i8
  %i.bs = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.bt = shufflevector <16 x i8> %i.bs, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bu = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bv = and i64 %i.bu, 255                      ; 2 uses
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !21
  %i.bz = getelementptr inbounds i8, ptr %.pn, i64 -64
  br label %.noexc30

.noexc30:                                         ; preds = %.noexc28, %.noexc33
  %.0.i122 = phi i64 [ %i.bm, %.noexc28 ], [ %i.do, %.noexc33 ] ; 2 uses
  %.022.i121 = phi i64 [ %i.bw, %.noexc28 ], [ %i.dn, %.noexc33 ]
  %i.ca = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i122, i64 range(i64 0, 256) %i.bv)
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.ca ; 3 uses
  %i.cc = load <16 x i8>, ptr %i.cb, align 16     ; 2 uses
  %i.cd = icmp eq <16 x i8> %i.cc, %i.bt
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = and i16 %i.ce, 4095                     ; 2 uses
  %.not112115 = icmp eq i16 %i.cf, 0
  %i.cg = extractelement <16 x i8> %i.cc, i64 15
  br i1 %.not112115, label %.critedge.i._crit_edge, label %.noexc31.lr.ph

.noexc31.lr.ph:                                   ; preds = %.noexc30
  %i.ch = zext nneg i16 %i.cf to i32              ; 2 uses
  %i.ci = icmp ne ptr %i.cb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !30 ; 3 uses
  %i.cl = load i64, ptr %i.bz, align 8, !tbaa !31
  %.fr124 = freeze i64 %i.cl                      ; 3 uses
  %i.cm = icmp eq i64 %.fr124, 0
  br i1 %i.cm, label %.noexc31.us, label %.noexc31, !llvm.loop !27

.noexc31.us:                                      ; preds = %.noexc31.lr.ph, %.critedge.i.backedge.us
  %.sroa.063.0116.us = phi i32 [ %i.cx, %.critedge.i.backedge.us ], [ %i.ch, %.noexc31.lr.ph ] ; 3 uses
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.0116.us, i1 true)
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !31
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.noexc32.thread, label %.critedge.i.backedge.us, !prof !17

.critedge.i.backedge.us:                          ; preds = %.noexc31.us
  %i.cw = add nsw i32 %.sroa.063.0116.us, -1
  %i.cx = and i32 %i.cw, %.sroa.063.0116.us       ; 2 uses
  %.not112.us = icmp eq i32 %i.cx, 0
  br i1 %.not112.us, label %.critedge.i._crit_edge, label %.noexc31.us, !llvm.loop !27

.noexc31:                                         ; preds = %.noexc31.lr.ph, %.critedge.i.backedge
  %.sroa.063.0116 = phi i32 [ %i.da, %.critedge.i.backedge ], [ %i.ch, %.noexc31.lr.ph ] ; 3 uses
  %i.cy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.063.0116, i1 true)
  %i.cz = add nsw i32 %.sroa.063.0116, -1
  %i.da = and i32 %i.cz, %.sroa.063.0116          ; 2 uses
  %i.db = zext nneg i32 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  %i.di = icmp eq i64 %.fr124, %i.dh
  br i1 %i.di, label %bb.k, label %.critedge.i.backedge, !prof !17

bb.k:                                             ; preds = %.noexc31
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !35
  %i.dk = load ptr, ptr %.sroa.056.0123, align 8, !tbaa !35
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.dk, ptr %i.dj, i64 %.fr124)
  %i.dl = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.dl, label %.noexc32.thread, label %.critedge.i.backedge, !prof !36

.critedge.i.backedge:                             ; preds = %bb.k, %.noexc31
  %.not112 = icmp eq i32 %i.da, 0
  br i1 %.not112, label %.critedge.i._crit_edge, label %.noexc31, !llvm.loop !27

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %.critedge.i.backedge.us, %.noexc30
  %i.dm = icmp eq i8 %i.cg, 0
  br i1 %i.dm, label %.noexc.thread.loopexit, label %.noexc33, !prof !16

.noexc33:                                         ; preds = %.critedge.i._crit_edge
  %i.dn = add i64 %.022.i121, -1                  ; 2 uses
  %i.do = add i64 %i.bq, %.0.i122
  %.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i, label %.noexc.thread.loopexit, label %.noexc30, !llvm.loop !29

.noexc.thread.loopexit:                           ; preds = %.critedge.i._crit_edge, %.noexc33
  %.pre = load ptr, ptr %5, align 8, !tbaa !10
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc.thread.loopexit, %.lr.ph
  %i.dp = phi ptr [ %.pre, %.noexc.thread.loopexit ], [ %i.bh, %.lr.ph ] ; 2 uses
  %.not.i.i40105 = icmp eq ptr %i.dp, null
  %.neg.i.i41106 = select i1 %.not.i.i40105, i64 0, i64 -24
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg.i.i41106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !70
  %i.dr = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.056.0123)
          to label %.noexc46 unwind label %bb.m   ; 2 uses

.noexc46:                                         ; preds = %.noexc.thread
  %i.ds = lshr i64 %i.dr, 56
  %i.dt = or i64 %i.ds, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKS9_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.193") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 %i.dr, i64 %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.056.0123, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.056.0123, ptr noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %.noexc47 unwind label %bb.m

.noexc47:                                         ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !70
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %.noexc32.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %.noexc46, %.noexc.thread
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.noexc32.thread:                                  ; preds = %bb.k, %.noexc31.us
  %.pre-phi = phi i64 [ %i.cr, %.noexc31.us ], [ %i.de, %bb.k ]
  %i.dw = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %.pre-phi
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  invoke void @_ZN8facebook5velox13RuntimeMetric5mergeERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, ptr noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %.noexc32.thread, %.noexc47
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox13LocalReadFileD2Ev:bb.a
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.o = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !62
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !62
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.a
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #44
  unreachable
}

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #44
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #14

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8facebook5velox13LocalReadFileD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox13LocalReadFileD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #43
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox13LocalReadFile13preadInternalEmmPc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.248", align 16 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 %2 seq_cst, align 8 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !126
  %i.e = tail call i64 @pread(i32 noundef %i.d, ptr noundef %3, i64 noundef %2, i64 noundef %1) ; 3 uses
  %.not = icmp eq i64 %i.e, %2
  br i1 %.not, label %bb.g, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.f = tail call ptr @__errno_location() #46
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  call void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !144
  store i64 %i.e, ptr %4, align 16, !tbaa !62, !alias.scope !147, !noalias !144
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.h, align 16, !tbaa !62, !alias.scope !147, !noalias !144
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.e, ptr %i.i, align 16, !tbaa !62, !alias.scope !147, !noalias !144
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %2, ptr %i.j, align 16, !tbaa !62, !alias.scope !147, !noalias !144
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.l = load ptr, ptr %6, align 8, !tbaa !35, !noalias !144
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31, !noalias !144
  store ptr %i.l, ptr %i.k, align 16, !tbaa !62, !noalias !144
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.n, ptr %i.o, align 8, !tbaa !62, !noalias !144
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.17, i64 71, i64 869187, ptr nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !144
  %i.p = load ptr, ptr %6, align 8, !tbaa !35     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !62
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox13LocalReadFile13preadInternalEmmPcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.17) #42
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %6, align 8, !tbaa !35     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.e
  %i.y = load i64, ptr %i.w, align 8, !tbaa !62
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !62
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nofree
declare noundef i64 @pread(i32 noundef, ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZNK8facebook5velox13LocalReadFile5preadEmmPvRKNS0_13FileIoContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZNK8facebook5velox13LocalReadFile13preadInternalEmmPc(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %2, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %3, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector.32", align 8    ; 19 uses
  %5 = alloca %class.anon, align 8                ; 10 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !150
  %.b = load i1, ptr @_ZGVZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes, align 1
  br i1 %.b, label %bb.c, label %bb.b, !prof !151

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes, i8 0, i64 24, i1 false)
  %i.c = tail call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #45 ; 3 uses
  store ptr %i.c, ptr @_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16384 ; 2 uses
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes, i64 16), align 8, !tbaa !154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.c, i8 0, i64 16384, i1 false)
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes, i64 8), align 8, !tbaa !155
  %i.e = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIcSaIcEED2Ev, ptr nonnull @_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes, ptr nonnull @__dso_handle) #16 ; 0 uses
  store i1 true, ptr @_ZGVZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 0, ptr %i.b, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156  ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !158    ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp ugt i64 %i.k, 9223372036854775792
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #42
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.not144 = icmp eq ptr %i.g, %i.h
  br i1 %.not144, label %_ZNSt6vectorI5iovecSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI5iovecSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI5iovecSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #45
          to label %.noexc60 unwind label %bb.f   ; 4 uses

.noexc60:                                         ; preds = %_ZNSt12_Vector_baseI5iovecSaIS0_EE11_M_allocateEm.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %4, align 8, !tbaa !159
  store ptr %i.n, ptr %i.o, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.p, ptr %i.m, align 8, !tbaa !163
  br label %_ZNSt6vectorI5iovecSaIS0_EE7reserveEm.exit

_ZNSt6vectorI5iovecSaIS0_EE7reserveEm.exit:       ; preds = %.noexc60, %bb.e
  %i.q = phi ptr [ %i.n, %.noexc60 ], [ null, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %0, ptr %5, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.r, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.s, align 8, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.b, ptr %i.t, align 8, !tbaa !170
  %i.u = icmp eq ptr %i.h, %i.g
  br i1 %i.u, label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102.thread, label %.lr.ph118

.lr.ph118:                                        ; preds = %_ZNSt6vectorI5iovecSaIS0_EE7reserveEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.w = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEE12droppedBytes) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI5iovecSaIS0_EE11_M_allocateEm.exit.i, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.g:                                             ; preds = %.lr.ph118, %.loopexit
  %i.z = phi ptr [ %i.q, %.lr.ph118 ], [ %i.cw, %.loopexit ] ; 4 uses
  %.sroa.090.0117 = phi ptr [ %i.h, %.lr.ph118 ], [ %i.cx, %.loopexit ] ; 5 uses
  %i.aa = load ptr, ptr %.sroa.090.0117, align 8, !tbaa !90 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.090.0117, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %.not52115 = icmp eq ptr %i.ac, null
  br i1 %.not52115, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %i.ae = phi ptr [ %i.bm, %bb.r ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %.094116 = phi i64 [ %i.bn, %bb.r ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !152 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.094116, i64 %i.aj) ; 3 uses
  %6 = load ptr, ptr %4, align 8, !tbaa !159
  %i.ak = ptrtoint ptr %i.ae to i64
  %i.al = ptrtoint ptr %6 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %i.am, 16368
  br i1 %i.an, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph
  %i.ao = invoke fastcc noundef i64 @"_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %._crit_edge122, label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread105

._crit_edge122:                                   ; preds = %bb.j
  %.pre123.a = load ptr, ptr %i.w, align 8, !tbaa !152
  %.pre124 = load ptr, ptr %i.v, align 8, !tbaa !162
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.l:                                             ; preds = %._crit_edge122, %.lr.ph
  %i.ar = phi ptr [ %.pre124, %._crit_edge122 ], [ %i.ae, %.lr.ph ] ; 4 uses
  %i.as = phi ptr [ %.pre123.a, %._crit_edge122 ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !163
  %.not.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !171
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.680.0..sroa_idx, align 8, !tbaa !150
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !162
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.v, align 8, !tbaa !162
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %4, align 8, !tbaa !159   ; 4 uses
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 6 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775792
  br i1 %i.ba, label %bb.o, label %_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #42
          to label %.noexc61 unwind label %.loopexit.split-lp

.noexc61:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bb = ashr exact i64 %i.az, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 576460752303423487)
  %i.bf = select i1 %i.bd, i64 576460752303423487, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #45
          to label %.noexc62 unwind label %.loopexit107 ; 4 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 3 uses
  store ptr %i.as, ptr %i.bi, align 8, !tbaa !171
  %.sroa.680.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.680.0..sroa_idx81, align 8, !tbaa !150
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.p, label %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.p:                                             ; preds = %.noexc62
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.p, %.noexc62
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.az) #43
  br label %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.bh, ptr %4, align 8, !tbaa !159
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !162
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.m, align 8, !tbaa !163
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.bm = phi ptr [ %i.av, %bb.m ], [ %i.bk, %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bn = sub i64 %.094116, %.sroa.speculated     ; 2 uses
  %.not52 = icmp eq i64 %i.bn, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph, !llvm.loop !172

.loopexit107:                                     ; preds = %_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %4, align 8, !tbaa !159
  %i.bp = ptrtoint ptr %i.z to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ugt i64 %i.br, 16368
  br i1 %i.bs, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bt = invoke fastcc noundef i64 @"_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bu = icmp sgt i64 %i.bt, -1
  br i1 %i.bu, label %._crit_edge, label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread105

._crit_edge:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %.sroa.090.0117, align 8, !tbaa !90
  %.pre121 = load ptr, ptr %i.v, align 8, !tbaa !162
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %._crit_edge, %bb.s
  %i.bw = phi ptr [ %.pre121, %._crit_edge ], [ %i.z, %bb.s ] ; 4 uses
  %i.bx = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %bb.s ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.090.0117, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !88
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !163
  %.not.i.i63 = icmp eq ptr %i.bw, %i.cd
  br i1 %.not.i.i63, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !171
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !150
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !162
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  store ptr %i.cf, ptr %i.v, align 8, !tbaa !162
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %4, align 8, !tbaa !159   ; 4 uses
  %i.ch = ptrtoint ptr %i.bw to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 6 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775792
  br i1 %i.ck, label %bb.z, label %_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i64

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #42
          to label %.noexc70 unwind label %.loopexit.split-lp110

.noexc70:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i64: ; preds = %bb.y
  %i.cl = ashr exact i64 %i.cj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i65 = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i.i65, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 576460752303423487)
  %i.cp = select i1 %i.cn, i64 576460752303423487, i64 %i.co ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.cq = shl nuw nsw i64 %i.cp, 4
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #45
          to label %.noexc71 unwind label %.loopexit109 ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i64
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 3 uses
  store ptr %i.bx, ptr %i.cs, align 8, !tbaa !171
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx76, align 8, !tbaa !150
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.aa, label %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i67

bb.aa:                                            ; preds = %.noexc71
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i67

_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i67: ; preds = %bb.aa, %.noexc71
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %.not.i17.i.i.i68 = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i.i68, label %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i69, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cj) #43
  br label %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i69

_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i69: ; preds = %bb.ab, %_ZNSt6vectorI5iovecSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i67
  store ptr %i.cr, ptr %4, align 8, !tbaa !159
  store ptr %i.cu, ptr %i.v, align 8, !tbaa !162
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cv, ptr %i.m, align 8, !tbaa !163
  br label %.loopexit

.loopexit109:                                     ; preds = %_ZNKSt6vectorI5iovecSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i64
  %lpad.loopexit111 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp110:                            ; preds = %bb.z
  %lpad.loopexit.split-lp112 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit:                                        ; preds = %bb.r, %bb.h, %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i69, %bb.x
  %i.cw = phi ptr [ %i.cf, %bb.x ], [ %i.z, %bb.h ], [ %i.cu, %_ZNSt6vectorI5iovecSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i69 ], [ %i.bm, %bb.r ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.090.0117, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.g
  br i1 %i.cy, label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102, label %bb.g

_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102: ; preds = %.loopexit
  %.pre125 = load ptr, ptr %4, align 8, !tbaa !173
  %i.cz = icmp eq ptr %.pre125, %i.cw
  br i1 %i.cz, label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102
  %i.da = invoke fastcc noundef i64 @"_ZZNK8facebook5velox13LocalReadFile6preadvEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ad unwind label %bb.ae     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.db = icmp sgt i64 %i.da, -1
  br i1 %i.db, label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102.thread, label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread105

bb.ae:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102.thread: ; preds = %_ZNSt6vectorI5iovecSaIS0_EE7reserveEm.exit, %bb.ad, %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !150
  br label %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread105

_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread105: ; preds = %bb.u, %bb.j, %bb.ad, %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102.thread
  %.12 = phi i64 [ %i.dd, %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread102.thread ], [ %i.da, %bb.ad ], [ %i.ao, %bb.j ], [ %i.bt, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.de = load ptr, ptr %4, align 8, !tbaa !159   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread105
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !163
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #43
  br label %_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit

_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit:             ; preds = %_ZNSt6vectorI5iovecSaIS0_EE9push_backEOS0_.exit72.thread105, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i64 %.12

bb.ag:                                            ; preds = %.loopexit109, %.loopexit.split-lp110, %.loopexit107, %.loopexit.split-lp, %bb.v, %bb.k, %bb.ae
  %.pn56 = phi { ptr, i32 } [ %i.dc, %bb.ae ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.bv, %bb.v ], [ %i.aq, %bb.k ], [ %lpad.loopexit, %.loopexit107 ], [ %lpad.loopexit111, %.loopexit109 ], [ %lpad.loopexit.split-lp112, %.loopexit.split-lp110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.f
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.ag ], [ %i.y, %bb.f ]
  %i.dj = load ptr, ptr %4, align 8, !tbaa !159   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit74, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !163
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #43
  br label %_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit74

_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit74:           ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  resume { ptr, i32 } %.pn56.pn
end_hunk_1
