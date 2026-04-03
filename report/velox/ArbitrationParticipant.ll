begin_hunk_0
inline.NumInlined: 1122
inline.NumDeleted: 565
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail12WaitExecutor3addENS_8FunctionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca i32, align 4                        ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !356, !alias.scope !353
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !359, !alias.scope !353
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !353
  %i.e = load atomic i32, ptr %i.c acquire, align 8, !noalias !353 ; 4 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3, !noalias !353
end_hunk_1
begin_hunk_2
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !353 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !353
  store i8 1, ptr %i.d, align 8, !tbaa !359, !alias.scope !353
  %i.m = load ptr, ptr %4, align 8, !tbaa !356    ; 6 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -88
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load i8, ptr %i.o, align 8, !tbaa !210, !range !183, !noundef !187
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge, label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !361  ; 6 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !361
  %.not = icmp eq ptr %i.u, %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !362
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -64
end_hunk_3
begin_hunk_4
  invoke void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %1)
          to label %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE9push_backEOS3_.exit unwind label %bb.d

_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ai = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %i.aj = and i32 %i.ai, -401
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  %i.ak = and i32 %i.ai, 15
  %.not.i.i.i.i.i10 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i10, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i, !prof !123

bb.i:                                             ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5
  call void @__clang_call_terminate(ptr %i.am) #31
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE9push_backEOS3_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.not, label %5, label %bb.k

5:                                                ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZN5folly6fibers5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.k

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %7 = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %8 = and i32 %7, -401
  store i32 %8, ptr %2, align 4, !tbaa !3
  %9 = and i32 %7, 15
  %.not.i.i.i.i.i12 = icmp eq i32 %9, 0
  br i1 %.not.i.i.i.i.i12, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit14, label %10, !prof !123

10:                                               ; preds = %.critedge
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit14 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %13) #31
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit14: ; preds = %.critedge, %10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %5, %_ZN5folly9LockedPtrINS_12SynchronizedINS_7futures6detail12WaitExecutor5QueueENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE1ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit14
  ret void
}

end_hunk_5
