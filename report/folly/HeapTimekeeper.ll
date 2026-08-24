Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/HeapTimekeeper?download=true
inline.NumInlined: 1025
inline.NumDeleted: 620
begin_hunk_0_@_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE:_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
  br i1 %.not.i.i, label %_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = atomicrmw sub ptr %i.bo, i8 1 acq_rel, align 1
  %.not.i.i.i.i10 = icmp eq i8 %i.bp, 1
  br i1 %.not.i.i.i.i10, label %bb.w, label %_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !26, !range !27, !noundef !28
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.br) #18
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bv = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.y ], [ %i.br, %bb.x ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.bv)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i: ; preds = %bb.z, %bb.w
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 noundef 56) #26
  br label %_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit

_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit:      ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, %bb.v, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_() #9
  unreachable

_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i:   ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #18
  br i1 %i.c, label %bb.c, label %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit

bb.c:                                             ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i
  tail call void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() #9
  unreachable

_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit: ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %1, align 8, !tbaa !48     ; 2 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !48
  %cond.i.i.i.i = icmp eq i32 %i.f, 1
  br i1 %cond.i.i.i.i, label %bb.d, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

bb.d:                                             ; preds = %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.i = load i64, ptr %i.h, align 8, !noalias !268
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !268
  store i64 0, ptr %i.h, align 8, !noalias !268
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %bb.d, %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit
  invoke void @_ZN5folly7futures6detail8CoreBase10setResult_EONS_17ExecutorKeepAliveINS_8ExecutorEEE(ptr noundef nonnull align 16 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i unwind label %bb.g

_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.j = load i64, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.k = and i64 %i.j, -4                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.not.i.i.i2 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i2, label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i
  store i64 0, ptr %2, align 8, !tbaa !76
  %i.m = and i64 %i.j, 3
  %.not3.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #18, !call_target !78, !inline_history !85
  br label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit

bb.g:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.s = and i64 %i.r, -4                         ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.not.i.i3.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i3.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %2, align 8, !tbaa !76
  %i.u = and i64 %i.r, 3
  %.not3.i.i4.i = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i4.i, label %bb.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #18, !call_target !78, !inline_history !85
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.q

_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit: ; preds = %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::PromiseAlreadySatisfied", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly23PromiseAlreadySatisfiedE, i64 16), ptr %0, align 8, !tbaa !44
  invoke void @_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 2 uses
  tail call void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly23PromiseAlreadySatisfiedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly23PromiseAlreadySatisfiedE, i64 16), ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly23PromiseAlreadySatisfied4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.8
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14HeapTimekeeper5State22clearAndAdjustCapacityERSt6vectorINS1_2OpESaIS3_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = atomicrmw sub ptr %i.f, i8 1 acq_rel, align 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !26, !range !27, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.i) #18
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.i, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.m)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef 56) #26
  br label %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i.i.i: ; preds = %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i.i.i, %bb.b, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !275

_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !274
  %.pre = load ptr, ptr %0, align 8, !tbaa !271
  br label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.q = phi ptr [ %i.c, %bb.a ], [ %i.a, %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit.i.i ]
  %i.r = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !276  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp ugt i64 %i.w, 16384
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %1, align 8, !tbaa !271
  store ptr %i.q, ptr %i.y, align 8, !tbaa !274
  store ptr %i.t, ptr %i.z, align 8, !tbaa !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.pre7 = load ptr, ptr %i.s, align 8, !tbaa !276
  %.pre8 = load ptr, ptr %0, align 8, !tbaa !271
  %.pre9 = ptrtoint ptr %.pre7 to i64
  %.pre10 = ptrtoint ptr %.pre8 to i64            ; 2 uses
  %.pre12 = sub i64 %.pre9, %.pre10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE5clearEv.exit
  %.pre-phi13 = phi i64 [ %.pre12, %bb.h ], [ %i.w, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE5clearEv.exit ]
  %.pre-phi11 = phi i64 [ %.pre10, %bb.h ], [ %i.v, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE5clearEv.exit ]
  %i.aa = icmp ult i64 %.pre-phi13, 8192
  br i1 %i.aa, label %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_M_allocateEm.exit.i, label %bb.k

_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !274
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %.pre-phi11
  %i.ae = call noalias noundef nonnull dereferenceable(8192) ptr @_Znwm(i64 noundef 8192) #28 ; 4 uses
  %2 = load ptr, ptr %0, align 8, !tbaa !271      ; 5 uses
  %3 = load ptr, ptr %i.b, align 8, !tbaa !274    ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i5

.lr.ph.i.i.i.i5:                                  ; preds = %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i5
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i5 ], [ %i.ae, %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i5 ], [ %2, %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.af = load i32, ptr %.0911.i.i.i.i, align 8, !tbaa !234, !alias.scope !280, !noalias !277
  store i32 %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !234, !alias.scope !277, !noalias !280
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21, !alias.scope !280, !noalias !277
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !21, !alias.scope !277, !noalias !280
  store ptr null, ptr %i.ah, align 8, !tbaa !21, !alias.scope !280, !noalias !277
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i6 = icmp eq ptr %i.aj, %3
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i5, !llvm.loop !282

_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i5, %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %2, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE7reserveEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %4 = load ptr, ptr %i.s, align 8, !tbaa !276
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %7) #26
  br label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, %bb.j
  store ptr %i.ae, ptr %0, align 8, !tbaa !271
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store ptr %i.al, ptr %i.b, align 8, !tbaa !274
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8192
  store ptr %i.am, ptr %i.s, align 8, !tbaa !276
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE7reserveEm.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = atomicrmw sub ptr %i.f, i8 1 acq_rel, align 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !26, !range !27, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.i) #18
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.i, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.m)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef 56) #26
  br label %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i

_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i: ; preds = %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i.i.i.i.i, %bb.b, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !275

_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5folly14HeapTimekeeper5State2OpEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !276
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #26
  br label %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly14HeapTimekeeper5State2OpES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14HeapTimekeeper5State2OpD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = atomicrmw sub ptr %i.c, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.d, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i8, ptr %i.g, align 8, !tbaa !26, !range !27, !noundef !28
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.f) #18
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %.pre.i.i.i.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.j)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i: ; preds = %bb.f, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef 56) #26
  br label %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit

_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef ptr @"_ZZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEEENK3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !283    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !287, !range !27, !noundef !28
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !299, !nonnull !28, !align !300
  %i.g = load i32, ptr %i.f, align 4, !tbaa !232
  %.not.not = icmp eq i32 %i.g, 1
  br i1 %.not.not, label %.critedge, label %bb.c, !prof !245

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.20, i32 noundef 180)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.21, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.22, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #27
  unreachable

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301, !nonnull !28, !align !93 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !274  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !276
  %.not.i.i = icmp eq ptr %i.p, %i.r
end_hunk_0
