Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/CPUThreadPoolExecutor?download=true
inline.NumInlined: 4368
inline.NumDeleted: 2174
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZTv0_n32_N5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE:bb.a
  %i.k = call noundef i64 %i.i(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2) #29, !inline_history !17081 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i

_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i:           ; preds = %bb.b, %bb.a
  store ptr null, ptr %3, align 16, !tbaa !569
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.l, align 16, !tbaa !573
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !571
  %i.n = load ptr, ptr %i.d, align 64, !tbaa !546
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 64 dereferenceable(2588) %i.d, ptr noundef nonnull align 16 %2, i64 0, ptr noundef nonnull align 16 %3)
          to label %bb.c unwind label %bb.f, !call_target !585

bb.c:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !571  ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i2.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef i64 %i.q(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #29, !inline_history !17082 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit.i

_ZN5folly8FunctionIFvvEED2Ev.exit.i:              ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !571  ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i3.i, label %_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit.i
  %i.t = call noundef i64 %i.s(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #29, !inline_history !17082 ; 0 uses
  br label %_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE.exit

bb.f:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !571  ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i5.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit6.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef i64 %i.v(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #29, !inline_history !17082 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit6.i

_ZN5folly8FunctionIFvvEED2Ev.exit6.i:             ; preds = %bb.g, %bb.f
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !571  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i7.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit8.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit6.i
  %i.y = call noundef i64 %i.x(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #29, !inline_history !17082 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit8.i

_ZN5folly8FunctionIFvvEED2Ev.exit8.i:             ; preds = %bb.h, %_ZN5folly8FunctionIFvvEED2Ev.exit6.i
  resume { ptr, i32 } %i.u

_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE.exit: ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.42") align 8) local_unnamed_addr #1

declare void @_ZN5folly18ThreadPoolExecutor19registerTaskEnqueueERKNS0_4TaskE(ptr noundef nonnull align 64 dereferenceable(496), ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5folly18ThreadPoolExecutor19ensureActiveThreadsEv(ptr noundef nonnull align 64 dereferenceable(496)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5folly8Executor21invokeCatchingExnsLogEPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define void @_ZTv0_n40_N5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa(ptr noundef %0, ptr noundef align 16 %1, i8 noundef signext %2) unnamed_addr #36 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 9 uses
  %4 = alloca %"class.folly::Function", align 16  ; 8 uses
  %i.a = load ptr, ptr %0, align 64, !tbaa !546
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %3, align 16, !tbaa !569
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !571  ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.f, align 16, !tbaa !572
  store <2 x ptr> %i.j, ptr %i.e, align 16, !tbaa !572
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.f, align 16, !tbaa !573
  store ptr null, ptr %i.h, align 8, !tbaa !571
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef i64 %i.i(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %3) #29, !inline_history !17083 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i

_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i:           ; preds = %bb.b, %bb.a
  store ptr null, ptr %4, align 16, !tbaa !569
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.l, align 16, !tbaa !573
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !571
  %i.n = load ptr, ptr %i.d, align 64, !tbaa !546
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 64 dereferenceable(2588) %i.d, ptr noundef nonnull align 16 %3, i8 noundef signext %2, i64 0, ptr noundef nonnull align 16 %4)
          to label %bb.c unwind label %bb.f, !call_target !831

bb.c:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !571  ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i3.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef i64 %i.q(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef null) #29, !inline_history !17084 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit.i

_ZN5folly8FunctionIFvvEED2Ev.exit.i:              ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !571  ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i4.i, label %_ZN5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit.i
  %i.t = call noundef i64 %i.s(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #29, !inline_history !17084 ; 0 uses
  br label %_ZN5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa.exit

bb.f:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !571  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i6.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit7.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef i64 %i.v(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef null) #29, !inline_history !17084 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit7.i

_ZN5folly8FunctionIFvvEED2Ev.exit7.i:             ; preds = %bb.g, %bb.f
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !571  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i8.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit9.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit7.i
  %i.y = call noundef i64 %i.x(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #29, !inline_history !17084 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit9.i

_ZN5folly8FunctionIFvvEED2Ev.exit9.i:             ; preds = %bb.h, %_ZN5folly8FunctionIFvvEED2Ev.exit7.i
  resume { ptr, i32 } %i.u

_ZN5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa.exit: ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: uwtable
define noundef zeroext i8 @_ZTv0_n48_NK5folly21CPUThreadPoolExecutor16getNumPrioritiesEv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #36 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 64, !tbaa !546
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5789 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !546
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !call_target !2195, !inline_history !17085
  ret i8 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5folly21CPUThreadPoolExecutor16getTaskQueueSizeEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(2588) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !5789 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !546
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !call_target !2204
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5folly21CPUThreadPoolExecutor12getTaskQueueEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(2588) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !5789
  ret ptr %i.b
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define noundef zeroext i1 @_ZN5folly21CPUThreadPoolExecutor16shouldStopThreadEb(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(2588) %0, i1 noundef zeroext %1) local_unnamed_addr #37 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 3 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 16 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 384
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.069.us = phi i64 [ %i.g, %.lr.ph.split.us ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.d = add i64 %.069.us, -1
  %i.e = cmpxchg weak ptr %i.a, i64 %.069.us, i64 %i.d monotonic monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1         ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit.thread, label %.lr.ph.split.us, !llvm.loop !208

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit
  %.069 = phi i64 [ %i.n, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.i = load atomic i8, ptr %2 acquire, align 64, !range !5883, !noundef !732
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.k = add i64 %.069, -1
  %i.l = cmpxchg weak ptr %i.a, i64 %.069, i64 %i.k monotonic monotonic, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit.thread, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit: ; preds = %bb.b
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit.thread, label %.lr.ph.split, !llvm.loop !208

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit.thread: ; preds = %.lr.ph.split, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit, %bb.b, %.lr.ph.split.us, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %.lr.ph.split.us ], [ false, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit ], [ false, %.lr.ph.split ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly21CPUThreadPoolExecutor10stopThreadERKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEE(ptr noundef nonnull align 64 dereferenceable(2588) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17090 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !17090 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !541
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17091
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8, !tbaa !17091
  store atomic i64 0, ptr %i.g monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5folly18ThreadPoolExecutor10ThreadList6removeERKSt10shared_ptrINS0_6ThreadEE(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17092)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !567, !noalias !17092 ; 2 uses
  %i.q = load <2 x ptr>, ptr %1, align 8, !tbaa !572, !noalias !17092
  store <2 x ptr> %i.q, ptr %2, align 16, !tbaa !572, !alias.scope !17092
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4copyIRKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEEEDTclsr6detailE8decay_0_IT_ELi0EEEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !569, !noalias !17092
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !5790, !noalias !17092
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !5790, !noalias !17092
  br label %_ZN5folly4copyIRKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEEEDTclsr6detailE8decay_0_IT_ELi0EEEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4, !noalias !17092 ; 0 uses
  br label %_ZN5folly4copyIRKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEEEDTclsr6detailE8decay_0_IT_ELi0EEEOS7_.exit

_ZN5folly4copyIRKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEEEDTclsr6detailE8decay_0_IT_ELi0EEEOS7_.exit: ; preds = %._crit_edge, %bb.c, %bb.d
  %i.w = invoke i8 @_ZN5folly18ThreadPoolExecutor18StoppedThreadQueue3addEOSt10shared_ptrINS0_6ThreadEE(ptr noundef nonnull align 64 dereferenceable(248) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.l       ; 0 uses

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.010.013 = phi ptr [ %i.ac, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.010.013, align 8, !tbaa !17095 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !541
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !546
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.y) #29, !call_target !17100
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.d
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %_ZN5folly4copyIRKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEEEDTclsr6detailE8decay_0_IT_ELi0EEEOS7_.exit
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !567 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.af, align 8, !tbaa !543
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !544
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !546
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #29, !call_target !1081, !inline_history !17089
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !546
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #29, !call_target !1082, !inline_history !17089
  br label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !569
  %.not.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !5790
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.i ], [ %i.as, %bb.j ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.k, label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5791

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #29
  br label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.l:                                             ; preds = %_ZN5folly4copyIRKSt10shared_ptrINS_18ThreadPoolExecutor6ThreadEEEEDTclsr6detailE8decay_0_IT_ELi0EEEOS7_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor10ThreadList6removeERKSt10shared_ptrINS0_6ThreadEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15194  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15194 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEES6_NS4_10ThreadList7CompareEESt4pairIT_SF_ESF_SF_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !541
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !564  ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.02153.i.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.2.i.i, %bb.d ] ; 3 uses
  %.sroa.038.052.i.i = phi ptr [ %i.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.038.1.i.i, %bb.d ] ; 4 uses
  %i.l = lshr i64 %.02153.i.i, 1                  ; 5 uses
  %.idx54 = shl nuw nsw i64 %i.l, 4               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.038.052.i.i, i64 %.idx54 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !541
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !564  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.k
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = xor i64 %i.l, -1
  %i.t = add nsw i64 %.02153.i.i, %i.s
  br label %bb.d

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
end_hunk_0
