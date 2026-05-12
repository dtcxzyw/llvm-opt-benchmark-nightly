inline.NumInlined: 1026
inline.NumDeleted: 617
begin_hunk_0
%"class.folly::detail::InlineFunctionRef" = type { ptr, %"union.std::aligned_storage<40, 8>::type" }
%"union.std::aligned_storage<40, 8>::type" = type { [40 x i8] }
%"struct.std::array" = type { [64 x i8] }
%class.anon.36 = type { ptr, ptr, ptr, ptr }
%"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy" = type { ptr, i64, i8, i8, i64, ptr, ptr }
%"class.folly::detail::ScopeGuardImpl" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.40 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.40 = type { ptr, ptr }
%"struct.folly::HeapTimekeeper::State::Op" = type { i32, %"class.std::unique_ptr" }
%"class.folly::PromiseAlreadySatisfied" = type { %"class.folly::PromiseException" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
end_hunk_0
begin_hunk_1_@_Znwm

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE:_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %5 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 13 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %.sroa.017.i = alloca %class.anon.36, align 8   ; 5 uses
  %6 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 18 uses
  %7 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 7 uses
  %8 = alloca %class.anon.36, align 8             ; 8 uses
end_hunk_2
begin_hunk_3_@_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE:_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE:_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
  %.017.i.i = phi i32 [ 8, %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit ], [ %.018.i.i, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !241
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.i, i64 32, i1 false), !noalias !241
  %i.l = zext nneg i32 %.017.i.i to i64
  store ptr @"_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0NS5_6WaiterISt6atomicEEEEEEvRKNSt15aligned_storageILm40ELm8EE4typeE", ptr %i.h, align 16, !tbaa !218, !noalias !241
  store ptr %5, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !31, !noalias !241
end_hunk_4
begin_hunk_5_@_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE:_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !48, !noalias !241
  %.not.i6.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i6.i.i.i.i, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18, !noalias !241
  br label %.body.i

"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State7enqueueENS7_2Op4TypeEOSt10unique_ptrINS6_7TimeoutENSB_6DecRefEEE3$_0EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !241
end_hunk_5
begin_hunk_6_@_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE:_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bj, %bb.q ], [ %i.bh, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.h, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.r ], [ %i.ao, %bb.g ], [ %i.ao, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i)
  br label %.body

bb.s:                                             ; preds = %.noexc16.i, %bb.o, %"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev.exit.i"
  %.010.i = phi ptr [ %i.be, %"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev.exit.i" ], [ %.sroa.5.0.i, %.noexc16.i ], [ %.sroa.5.0.i, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not = icmp eq ptr %.010.i, null
  br i1 %.not, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, label %bb.t
end_hunk_6
begin_hunk_7_@_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE:_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly14HeapTimekeeper5State2OpD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
end_hunk_7
