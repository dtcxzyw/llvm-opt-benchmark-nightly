Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ExprCompiler?download=true
inline.NumInlined: 3881
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_:bb.a
  store i32 %i.ah, ptr %1, align 4, !tbaa !114
  %i.ai = and i32 %i.ah, %2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %bb.i, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #14

declare noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #15

declare noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #11

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4core11QueryConfig29exprTrackCpuUsageForFunctionsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %2 = alloca %"class.std::function.137", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !211
  %i.b = call noalias noundef nonnull dereferenceable(41) ptr @_Znwm(i64 noundef 41) #33 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !135
  store i64 40, ptr %i.a, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.b, ptr noundef nonnull align 1 dereferenceable(40) @.str.4, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 40, ptr %i.c, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.d, align 1, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !211
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !137
  store i8 0, ptr %i.e, align 8, !tbaa !136
  %i.g = load ptr, ptr %1, align 8, !tbaa !263, !noalias !639
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !639
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false), !noalias !639
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_S5_EZNK8facebook5velox6config7IConfig3getIS5_EET_RKS5_RKSC_RKSt8functionIFSC_S5_S5_EEEd_UlSC_T0_E_E9_M_invokeERKSt9_Any_dataOS5_SS_, ptr %i.i, align 8, !tbaa !265, !noalias !639
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_S5_EZNK8facebook5velox6config7IConfig3getIS5_EET_RKS5_RKSC_RKSt8functionIFSC_S5_S5_EEEd_UlSC_T0_E_E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation, ptr %i.h, align 8, !tbaa !149, !noalias !639
  invoke void @_ZNK8facebook5velox6config7IConfig3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_RKSA_RKSt8functionIFSA_S9_S9_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !149, !noalias !639 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.g unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #35
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !149, !noalias !639 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !639
  %i.s = load ptr, ptr %4, align 8, !tbaa !135    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !639
  %i.u = load ptr, ptr %4, align 8, !tbaa !135    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.e, align 8, !tbaa !136
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.y = load ptr, ptr %3, align 8, !tbaa !135    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !136
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt14_Function_baseD2Ev.exit5.i
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !136
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt14_Function_baseD2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ae = load ptr, ptr %3, align 8, !tbaa !135   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !136
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE15simdSplitByCharISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvcNS_5RangeIPKcEERT_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = icmp eq ptr %1, %2
  br i1 %i.i, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = and i64 %i.j, -32                        ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %4 = ptrtoint ptr %2 to i64                     ; 2 uses
  %i.m = and i64 %4, -32                          ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = and i64 %i.j, 31                         ; 2 uses
  %.not.i = icmp eq i64 %i.k, %i.m
  br i1 %.not.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = insertelement <32 x i8> poison, i8 %0, i64 0
  %.pre99 = shufflevector <32 x i8> %.pre, <32 x i8> poison, <32 x i32> zeroinitializer
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = load <32 x i8>, ptr %i.l, align 32, !tbaa !136
  %i.q = insertelement <32 x i8> poison, i8 %0, i64 0
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> zeroinitializer ; 3 uses
  %i.s = icmp eq <32 x i8> %i.p, %i.r
  %i.t = bitcast <32 x i1> %i.s to i32
  %i.u = shl nuw nsw i64 4294967295, %i.o
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.t, %i.v                       ; 2 uses
  %.not.i1373 = icmp eq i32 %i.w, 0
  br i1 %.not.i1373, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader, label %.lr.ph

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i, %bb.c
  %.5.lcssa = phi ptr [ %1, %bb.c ], [ %i.ac, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i ] ; 2 uses
  %.183 = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %.not.i7.not84 = icmp eq ptr %.183, %i.n
  br i1 %.not.i7.not84, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit, label %.lr.ph87

.lr.ph:                                           ; preds = %bb.c, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i
  %.0.i76 = phi ptr [ %i.ac, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i ], [ %i.l, %bb.c ]
  %.013.i75 = phi i32 [ %i.z, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %.574 = phi ptr [ %i.ac, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i ], [ %1, %bb.c ] ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i75, i1 true) ; 2 uses
  %i.y = lshr exact i32 %.013.i75, %i.x
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i76, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  %i.ad = icmp eq ptr %.574, %i.ab
  br i1 %i.ad, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr %.574, ptr %i.e, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %.574 to i64
  %i.ag = sub i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !119
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i: ; preds = %bb.d, %.lr.ph
  %.not.i13 = icmp eq i32 %i.z, 0
  br i1 %.not.i13, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader, label %.lr.ph, !llvm.loop !640

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i, %.lr.ph87
  %.7.lcssa = phi ptr [ %.385, %.lr.ph87 ], [ %i.aq, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.186, i64 32 ; 3 uses
  %.not.i7.not = icmp eq ptr %.1, %i.n
  br i1 %.not.i7.not, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit, label %.lr.ph87, !llvm.loop !641

.lr.ph87:                                         ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit
  %.186 = phi ptr [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ], [ %.183, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader ] ; 3 uses
  %.385 = phi ptr [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ], [ %.5.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader ] ; 2 uses
  %i.ai = load <32 x i8>, ptr %.186, align 1, !tbaa !136
  %i.aj = icmp eq <32 x i8> %i.ai, %i.r
  %i.ak = bitcast <32 x i1> %i.aj to i32          ; 2 uses
  %.not.i.i77 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i77, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph87, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i
  %.0.i.i80 = phi ptr [ %i.aq, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i ], [ %.186, %.lr.ph87 ]
  %.013.i.i79 = phi i32 [ %i.an, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i ], [ %i.ak, %.lr.ph87 ] ; 2 uses
  %.778 = phi ptr [ %i.aq, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i ], [ %.385, %.lr.ph87 ] ; 3 uses
  %i.al = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i.i79, i1 true) ; 2 uses
  %i.am = lshr exact i32 %.013.i.i79, %i.al
  %i.an = lshr i32 %i.am, 1                       ; 2 uses
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i80, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 3 uses
  %i.ar = icmp eq ptr %.778, %i.ap
  br i1 %i.ar, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.778, ptr %i.a, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %.778 to i64
  %i.au = sub i64 %i.as, %i.at
  store i64 %i.au, ptr %i.b, align 8, !tbaa !119
  %i.av = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i.i: ; preds = %bb.e, %.lr.ph81
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit, label %.lr.ph81, !llvm.loop !640

_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader
  %.3.lcssa = phi ptr [ %.5.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.183, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.preheader ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEvSt4pairIT_T0_EPKhRSO_RT1_.exit.loopexit ] ; 2 uses
  %i.aw = icmp eq ptr %.1.lcssa, %2
  br i1 %i.aw, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit
  %.pre-phi100 = phi <32 x i8> [ %.pre99, %._crit_edge ], [ %i.r, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ]
  %.071 = phi ptr [ %1, %._crit_edge ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ] ; 2 uses
  %.0 = phi ptr [ %i.l, %._crit_edge ], [ %.1.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.o, %._crit_edge ], [ 0, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %4
  %i.ba = load <32 x i8>, ptr %.0, align 1, !tbaa !136
  %i.bb = icmp eq <32 x i8> %i.ba, %.pre-phi100
  %.sroa.2.0.extract.trunc.i10 = trunc i64 %i.az to i32 ; 2 uses
  %i.bc = bitcast <32 x i1> %i.bb to i32
  %i.bd = shl nuw nsw i64 4294967295, %.sroa.02.0.i
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.bc, %i.be
  %i.bg = icmp ult i32 %.sroa.2.0.extract.trunc.i10, 33
  call void @llvm.assume(i1 %i.bg)
  %i.bh = sub nuw nsw i32 32, %.sroa.2.0.extract.trunc.i10
  %i.bi = call noundef i32 @llvm.x86.bmi.bzhi.32(i32 %i.bf, i32 %i.bh) ; 2 uses
  %.not.i1690 = icmp eq i32 %i.bi, 0
  br i1 %.not.i1690, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.f, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17
  %.0.i1593 = phi ptr [ %i.bo, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17 ], [ %.0, %bb.f ]
  %.013.i1492 = phi i32 [ %i.bl, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17 ], [ %i.bi, %bb.f ] ; 2 uses
  %.691 = phi ptr [ %i.bo, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17 ], [ %.071, %bb.f ] ; 3 uses
  %i.bj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i1492, i1 true) ; 2 uses
  %i.bk = lshr exact i32 %.013.i1492, %i.bj
  %i.bl = lshr i32 %i.bk, 1                       ; 2 uses
  %i.bm = zext nneg i32 %i.bj to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i1593, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  %i.bp = icmp eq ptr %.691, %i.bn
  br i1 %i.bp, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17, label %bb.g

bb.g:                                             ; preds = %.lr.ph94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %.691, ptr %i.c, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %.691 to i64
  %i.bs = sub i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !119
  %i.bt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17: ; preds = %bb.g, %.lr.ph94
  %.not.i16 = icmp eq i32 %i.bl, 0
  br i1 %.not.i16, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, label %.lr.ph94, !llvm.loop !640

_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17, %bb.f, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEEEEEbiRPT_SM_RT0_St17integral_constantImLm1EE.exit ], [ %.071, %bb.f ], [ %i.bo, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit.i17 ] ; 3 uses
  %i.bu = icmp eq ptr %.2, %2
  br i1 %i.bu, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store ptr %.2, ptr %i.g, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %5 = ptrtoint ptr %2 to i64
  %i.bv = ptrtoint ptr %.2 to i64
  %i.bw = sub i64 %5, %i.bv
  store i64 %i.bw, ptr %i.h, align 8, !tbaa !119
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb1EE11emplaceBackISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEvRT_PKhSK_.exit: ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb1EE15ForEachDelegateISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEEEviPT0_SL_RT1_.exit, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKclEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !266    ; 3 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !119    ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !211
  %i.h = icmp eq ptr %i.e, null
  %i.i = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #32
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.f, 0
  br i1 %i.k, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #32
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.f, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !147

.noexc9.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !135
  store i64 %i.f, ptr %i.g, align 8, !tbaa !136
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.e, align 1, !tbaa !136
  store i8 %i.p, ptr %i.o, align 1, !tbaa !136
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.e, i64 %i.f, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.q, align 8, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.r, align 1, !tbaa !136
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !140
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKclEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %i.u = phi ptr [ %.pre, %bb.h ], [ %i.t, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKclEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKclEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #32
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !266    ; 3 uses
  %i.s = load i64, ptr %3, align 8, !tbaa !119    ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !211
  %i.u = icmp eq ptr %i.r, null
  %i.v = icmp ne i64 %i.s, 0
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #32
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = icmp ugt i64 %i.s, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i64 %i.s, 0
  br i1 %i.x, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #32
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw i64 %i.s, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !147

.noexc9.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc28 unwind label %bb.m

.noexc28:                                         ; preds = %.noexc9.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #33
          to label %.noexc29 unwind label %bb.m   ; 2 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !135
  store i64 %i.s, ptr %i.t, align 8, !tbaa !136
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc29, %bb.c
  %i.ab = phi ptr [ %i.aa, %.noexc29 ], [ %i.t, %bb.c ] ; 3 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.r, align 1, !tbaa !136
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !136
  br label %bb.h
end_hunk_0
