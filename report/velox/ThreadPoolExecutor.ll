inline.NumInlined: 1808
inline.NumDeleted: 899
begin_hunk_0_@_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !7473
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !7475
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !call_target !316, !inline_history !7554
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !call_target !317, !inline_history !7554
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7454
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7509

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #1 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #24
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !11
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #23 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #24

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (16, 32)) %1) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 16, !tbaa !7593
  store i8 %i.b, ptr %1, align 8, !tbaa !7613
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7615 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7616
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !7630
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.h, align 16, !tbaa !7438
  store i64 %i.j, ptr %i.i, align 8, !tbaa !7438
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7604
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.l, ptr %i.m, align 8, !tbaa !7631
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18ThreadPoolExecutor19registerTaskEnqueueERKNS0_4TaskE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(488) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::ThreadPoolExecutor::TaskInfo", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load i8, ptr %i.b, align 16, !tbaa !7593
  store i8 %i.c, ptr %2, align 8, !tbaa !7613
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7615 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !7616
  store i64 %i.g, ptr %i.a, align 8, !tbaa !7630
  br label %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit

_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.h, align 16, !tbaa !7438
  store i64 %i.j, ptr %i.i, align 8, !tbaa !7438
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7604
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !7631
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.o = load atomic ptr, ptr %i.n acquire, align 32 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, null
  br i1 %.not5.i, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_19registerTaskEnqueueERKNS0_4TaskEE3$_0EEvOT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.o, %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit ] ; 3 uses
  %i.p = load ptr, ptr %.06.i, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.06.i, ptr noundef nonnull align 8 dereferenceable(32) %2) #12, !call_target !4396, !inline_history !7632
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7633 ; 2 uses
  %.not.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i2, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_19registerTaskEnqueueERKNS0_4TaskEE3$_0EEvOT_.exit", label %.lr.ph.i, !llvm.loop !7635

"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_19registerTaskEnqueueERKNS0_4TaskEE3$_0EEvOT_.exit": ; preds = %.lr.ph.i, %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7533 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(32) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !call_target !7636
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7539
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !7630
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !7438
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !7631
  call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22thread_pool_executor_task_enqueued\22\0A.asciz \22${1:n}@$2 ${3:n}@$4 ${5:n}@$6 ${7:n}@$8\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.aa, i64 8, i64 %i.ab, i64 8, i64 %.sroa.0.0.copyload.i, i64 8, i64 %i.ac) #12, !srcloc !7641
  call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !7642
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18ThreadPoolExecutor7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(112) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.49", align 16 ; 4 uses
  %4 = alloca %"struct.folly::ThreadPoolExecutor::ProcessedTaskInfo", align 8 ; 11 uses
  %5 = alloca %"class.folly::RequestContextScopeGuard", align 16 ; 4 uses
  %6 = alloca %"class.folly::Function", align 16  ; 6 uses
  %7 = alloca %"class.folly::Function", align 16  ; 7 uses
  %8 = alloca %"class.folly::Function", align 16  ; 6 uses
  %9 = alloca %"class.folly::Function", align 16  ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store atomic i8 0, ptr %i.b monotonic, align 1
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !7643
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !7646
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = load i8, ptr %i.h, align 16, !tbaa !7593
  store i8 %i.i, ptr %4, align 8, !tbaa !7613
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7615 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !7616 ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !7630
  br label %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit

_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.o, align 16, !tbaa !7438 ; 3 uses
  store i64 %i.q, ptr %i.p, align 8, !tbaa !7438
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7604 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !7631
  %i.u = sub nsw i64 %i.c, %i.q                   ; 2 uses
  store i64 %i.u, ptr %i.e, align 8, !tbaa !7438
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7533 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !call_target !7636
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7539
  tail call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22thread_pool_executor_task_dequeued\22\0A.asciz \22${1:n}@$2 ${3:n}@$4 ${5:n}@$6 ${7:n}@$8 ${9:n}@$10\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,n,nor,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.ab, i64 8, i64 %i.n, i64 8, i64 %i.q, i64 8, i64 %i.u, i64 8, i64 %i.s) #12, !srcloc !7647
  tail call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !7648
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 32 ; 2 uses
  %.not5.i = icmp eq ptr %i.ad, null
  br i1 %.not5.i, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_0EEvOT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.ad, %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit ] ; 3 uses
  %i.ae = load ptr, ptr %.06.i, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %.06.i, ptr noundef nonnull align 8 dereferenceable(40) %4) #12, !call_target !4457, !inline_history !7649
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !7633 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ai, null
  br i1 %.not.i23, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_0EEvOT_.exit", label %.lr.ph.i, !llvm.loop !7650

"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_0EEvOT_.exit": ; preds = %.lr.ph.i, %_ZN5folly18ThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS0_8TaskInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN5folly14RequestContext10setContextERKSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.aj = load <2 x ptr>, ptr %3, align 16, !tbaa !26
  store <2 x ptr> %i.aj, ptr %5, align 16, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7608 ; 3 uses
  %.not.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i24, label %bb.l, label %bb.c

bb.c:                                             ; preds = %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_0EEvOT_.exit"
  %i.am = load i64, ptr %i.e, align 8, !tbaa !7438
  %i.an = load i64, ptr %i.al, align 8, !tbaa !7651
  %i.ao = mul nsw i64 %i.an, 1000000
  %.not = icmp slt i64 %i.am, %i.ao
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7588 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = call noundef i64 %i.aq(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #12, !inline_history !7653 ; 0 uses
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !7608
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = phi ptr [ %.pre, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !7588
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.at, align 16, !tbaa !7586
  store i8 1, ptr %i.f, align 8, !tbaa !7643
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7588 ; 3 uses
  %.not.i.i.not = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not, label %bb.t, label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i

_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i:         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7654)
  call void @llvm.experimental.noalias.scope.decl(metadata !7657)
  store ptr null, ptr %6, align 16, !tbaa !7454, !alias.scope !7660
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !7586, !noalias !7660
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !7586, !alias.scope !7660
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.aw, ptr %i.bc, align 8, !tbaa !7588, !alias.scope !7660
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.ba, align 16, !tbaa !7586, !noalias !7660
  store ptr null, ptr %i.av, align 8, !tbaa !7588, !noalias !7660
  %i.bd = call noundef i64 %i.aw(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %i.au, ptr noundef nonnull align 16 dereferenceable(64) %6) #12, !inline_history !7661 ; 0 uses
  %.pr.i.i = load ptr, ptr %i.av, align 8, !tbaa !7588, !noalias !7660 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i4.i.i, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i
  %i.be = call noundef i64 %.pr.i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.au, ptr noundef null) #12, !inline_history !7662 ; 0 uses
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i: ; preds = %bb.g, %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i
  %.not.i.i.i25 = icmp eq ptr %i.au, %7
  br i1 %.not.i.i.i25, label %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i, !prof !7509

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i: ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i
  store ptr null, ptr %i.av, align 8, !tbaa !7588, !noalias !7660
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.ba, align 16, !tbaa !7586, !noalias !7660
  br label %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit

_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit: ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i, %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i
  store ptr null, ptr %i.ay, align 8, !tbaa !7588, !noalias !7660
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.ax, align 16, !tbaa !7586, !noalias !7660
  %i.bf = load ptr, ptr %i.az, align 16, !tbaa !7586
  invoke void %i.bf(ptr noundef nonnull align 16 dereferenceable(64) %6)
          to label %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.h, !inline_history !7663

bb.h:                                             ; preds = %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.bh) #12 ; 0 uses
  call void @_ZN5folly8Executor21invokeCatchingExnsLogEPKc(ptr noundef nonnull @.str.11) #12, !inline_history !7664
  invoke void @__cxa_end_catch()
          to label %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #36
  unreachable

_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit, %bb.h
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !7588 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i26, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit
  %i.bm = call noundef i64 %i.bl(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef null) #12, !inline_history !7611 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit, %bb.j
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !7588 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i27, label %_ZN5folly8FunctionIFvvEED2Ev.exit28, label %bb.k

bb.k:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit
  %i.bo = call noundef i64 %i.bn(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef null) #12, !inline_history !7611 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit28

_ZN5folly8FunctionIFvvEED2Ev.exit28:              ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.t

bb.l:                                             ; preds = %bb.c, %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_0EEvOT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7665)
  call void @llvm.experimental.noalias.scope.decl(metadata !7668)
  store ptr null, ptr %8, align 16, !tbaa !7454, !alias.scope !7671
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !7588, !noalias !7671 ; 2 uses
  %i.bw = load <2 x ptr>, ptr %i.bs, align 16, !tbaa !26, !noalias !7671
  store <2 x ptr> %i.bw, ptr %i.br, align 16, !tbaa !26, !alias.scope !7671
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.bs, align 16, !tbaa !7586, !noalias !7671
  store ptr null, ptr %i.bu, align 8, !tbaa !7588, !noalias !7671
  %.not.i.i.i.i29 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i29, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i33, label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i30

_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i30:       ; preds = %bb.l
  %i.bx = call noundef i64 %i.bv(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %8) #12, !inline_history !7661 ; 0 uses
  %.pr.i.i31 = load ptr, ptr %i.bu, align 8, !tbaa !7588, !noalias !7671 ; 2 uses
  %.not.i.i4.i.i32 = icmp eq ptr %.pr.i.i31, null
  br i1 %.not.i.i4.i.i32, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i33, label %bb.m

bb.m:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i30
  %i.by = call noundef i64 %.pr.i.i31(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #12, !inline_history !7662 ; 0 uses
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i33

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i33: ; preds = %bb.m, %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i30, %bb.l
  %.not.i.i.i34 = icmp eq ptr %2, %9
  br i1 %.not.i.i.i34, label %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit38, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i37, !prof !7509

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i37: ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i33
  store ptr null, ptr %i.bu, align 8, !tbaa !7588, !noalias !7671
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.bs, align 16, !tbaa !7586, !noalias !7671
  br label %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit38

_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit38: ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i.i.i33, %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i37
  store ptr null, ptr %i.bq, align 8, !tbaa !7588, !noalias !7671
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.bp, align 16, !tbaa !7586, !noalias !7671
  %10 = load ptr, ptr %i.br, align 16, !tbaa !7586
  invoke void %10(ptr noundef nonnull align 16 dereferenceable(64) %8)
          to label %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit22 unwind label %bb.n, !inline_history !7663

bb.n:                                             ; preds = %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit38
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  %i.cb = call ptr @__cxa_begin_catch(ptr %i.ca) #12 ; 0 uses
  call void @_ZN5folly8Executor21invokeCatchingExnsLogEPKc(ptr noundef nonnull @.str.12) #12, !inline_history !7664
  invoke void @__cxa_end_catch()
          to label %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit22 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #36
  unreachable

_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit22: ; preds = %_ZSt8exchangeIN5folly8FunctionIFvvEEES3_ET_RS4_OT0_.exit38, %bb.n
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !7588 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i40, label %_ZN5folly8FunctionIFvvEED2Ev.exit41, label %bb.p

bb.p:                                             ; preds = %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit22
  %i.cf = call noundef i64 %i.ce(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef null) #12, !inline_history !7611 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit41

_ZN5folly8FunctionIFvvEED2Ev.exit41:              ; preds = %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit22, %bb.p
  %i.cg = load ptr, ptr %i.bq, align 8, !tbaa !7588 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i42, label %_ZN5folly8FunctionIFvvEED2Ev.exit43, label %bb.q

bb.q:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit41
  %i.ch = call noundef i64 %i.cg(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef null) #12, !inline_history !7611 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit43

_ZN5folly8FunctionIFvvEED2Ev.exit43:              ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit41, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.ci = load ptr, ptr %i.ak, align 8, !tbaa !7608 ; 4 uses
  %.not.i44 = icmp eq ptr %i.ci, null
  br i1 %.not.i44, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit43
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !7588 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i45, label %_ZN5folly8FunctionIFvvEEaSEDn.exit46, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = call noundef i64 %i.ck(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.cl, ptr noundef null) #12, !inline_history !7653 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEEaSEDn.exit46

_ZN5folly8FunctionIFvvEEaSEDn.exit46:             ; preds = %bb.r, %bb.s
  store ptr null, ptr %i.cj, align 8, !tbaa !7588
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.cn, align 16, !tbaa !7586
  br label %bb.t

bb.t:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit43, %_ZN5folly8FunctionIFvvEEaSEDn.exit46, %bb.f, %_ZN5folly8FunctionIFvvEED2Ev.exit28
  call void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.co = load i8, ptr %i.f, align 8, !tbaa !7643, !range !7435, !noundef !294
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %i.cr = sub nsw i64 %i.cq, %i.c
  store i64 %i.cr, ptr %i.g, align 8, !tbaa !7438
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !7533 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef nonnull align 8 dereferenceable(32) ptr %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs), !call_target !7636
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !7539
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !7630
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.p, align 8, !tbaa !7438
  %i.cz = load i64, ptr %i.e, align 8, !tbaa !7646
  %i.da = load i64, ptr %i.g, align 8, !tbaa !7646
  %i.db = load i64, ptr %i.t, align 8, !tbaa !7631
  call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22thread_pool_executor_task_stats\22\0A.asciz \22${1:n}@$2 ${3:n}@$4 ${5:n}@$6 ${7:n}@$8 ${9:n}@$10 ${11:n}@$12\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,n,nor,n,nor,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.cx, i64 8, i64 %i.cy, i64 8, i64 %.sroa.0.0.copyload.i49, i64 8, i64 %i.cz, i64 8, i64 %i.da, i64 8, i64 %i.db) #12, !srcloc !7672
  call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !7673
  %i.dc = load atomic ptr, ptr %i.ac acquire, align 32 ; 2 uses
  %.not5.i50 = icmp eq ptr %i.dc, null
  br i1 %.not5.i50, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_1EEvOT_.exit", label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.v, %.lr.ph.i51
  %.06.i52 = phi ptr [ %i.dh, %.lr.ph.i51 ], [ %i.dc, %bb.v ] ; 3 uses
  %i.dd = load ptr, ptr %.06.i52, align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %.06.i52, ptr noundef nonnull align 8 dereferenceable(56) %4) #12, !call_target !4466, !inline_history !7674
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i52, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !7633 ; 2 uses
  %.not.i54 = icmp eq ptr %i.dh, null
  br i1 %.not.i54, label %"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_1EEvOT_.exit", label %.lr.ph.i51, !llvm.loop !7675

"_ZNK5folly18ThreadPoolExecutor19forEachTaskObserverIZNS0_7runTaskERKSt10shared_ptrINS0_6ThreadEEONS0_4TaskEE3$_1EEvOT_.exit": ; preds = %.lr.ph.i51, %bb.v
  %i.di = load ptr, ptr %1, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load atomic i64, ptr %i.dj monotonic, align 8
  %i.dl = add i64 %i.dk, 1
  store atomic i64 %i.dl, ptr %i.dj monotonic, align 8
  %i.dm = load ptr, ptr %1, align 8, !tbaa !27
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic i8 1, ptr %i.dn monotonic, align 1
  %i.do = load ptr, ptr %1, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  store atomic i64 %i.dq, ptr %i.dp monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.49", align 8 ; 2 uses
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !7473
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !7475
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !call_target !316, !inline_history !7676
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !call_target !317, !inline_history !7676
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7454
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7509

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !7473
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !7475
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !call_target !316, !inline_history !7676
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !call_target !317, !inline_history !7676
end_hunk_0
