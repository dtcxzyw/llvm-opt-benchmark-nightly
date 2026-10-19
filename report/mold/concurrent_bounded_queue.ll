Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/concurrent_bounded_queue?download=true
inline.NumInlined: 138
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.tbb::detail::d0::raii_guard" = type <{ %class.anon.7, i8, [7 x i8] }>
%class.anon.7 = type { ptr, ptr }
%"class.tbb::detail::r1::sleep_node" = type <{ %"class.tbb::detail::r1::wait_node", %"class.tbb::detail::d0::aligned_space", [4 x i8] }>
%"class.tbb::detail::r1::wait_node" = type { ptr, %"struct.tbb::detail::r1::circular_doubly_linked_list_with_sentinel::base_node", i64, %"struct.std::atomic.4", i8, i8, i8, i32 }
%"struct.tbb::detail::r1::circular_doubly_linked_list_with_sentinel::base_node" = type { ptr, ptr }
%"struct.std::atomic.4" = type { %"struct.std::__atomic_base.5" }
%"struct.std::__atomic_base.5" = type { i8 }
%"class.tbb::detail::d0::aligned_space" = type { [4 x i8] }
%"struct.tbb::detail::r1::predicate_leq" = type { i64 }
%"class.tbb::detail::r1::circular_doubly_linked_list_with_sentinel" = type { %"struct.std::atomic.0", %"struct.tbb::detail::r1::circular_doubly_linked_list_with_sentinel::base_node" }
%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { i64 }

$_ZN3tbb6detail2r110sleep_nodeImED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN3tbb6detail2r110sleep_nodeImED0Ev = comdat any

$_ZN3tbb6detail2r110sleep_nodeImE4initEv = comdat any

$_ZN3tbb6detail2r110sleep_nodeImE4waitEv = comdat any

$_ZN3tbb6detail2r110sleep_nodeImE5resetEv = comdat any

$_ZN3tbb6detail2r110sleep_nodeImE6notifyEv = comdat any

$_ZN3tbb6detail2r123concurrent_monitor_baseImE12prepare_waitERNS1_9wait_nodeImEE = comdat any

$_ZN3tbb6detail2r123concurrent_monitor_baseImE11cancel_waitERNS1_9wait_nodeImEE = comdat any

$_ZN3tbb6detail2r123concurrent_monitor_baseImE17abort_all_relaxedEv = comdat any

$_ZN3tbb6detail2r123concurrent_monitor_baseImE14notify_relaxedINS1_13predicate_leqEEEvRKT_ = comdat any

$_ZTVN3tbb6detail2r110sleep_nodeImEE = comdat any

$_ZTIN3tbb6detail2r110sleep_nodeImEE = comdat any

$_ZTSN3tbb6detail2r110sleep_nodeImEE = comdat any

$_ZTIN3tbb6detail2r19wait_nodeImEE = comdat any

$_ZTSN3tbb6detail2r19wait_nodeImEE = comdat any

$_ZTIN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE = comdat any

$_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE = comdat any

@_ZTVN3tbb6detail2r110sleep_nodeImEE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2r110sleep_nodeImEE, ptr @_ZN3tbb6detail2r110sleep_nodeImED2Ev, ptr @_ZN3tbb6detail2r110sleep_nodeImED0Ev, ptr @_ZN3tbb6detail2r110sleep_nodeImE4initEv, ptr @_ZN3tbb6detail2r110sleep_nodeImE4waitEv, ptr @_ZN3tbb6detail2r110sleep_nodeImE5resetEv, ptr @_ZN3tbb6detail2r110sleep_nodeImE6notifyEv] }, comdat, align 8
@_ZTIN3tbb6detail2r110sleep_nodeImEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r110sleep_nodeImEE, ptr @_ZTIN3tbb6detail2r19wait_nodeImEE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3tbb6detail2r110sleep_nodeImEE = linkonce_odr hidden constant [32 x i8] c"N3tbb6detail2r110sleep_nodeImEE\00", comdat, align 1
@_ZTIN3tbb6detail2r19wait_nodeImEE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r19wait_nodeImEE, i32 0, i32 1, ptr @_ZTIN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN3tbb6detail2r19wait_nodeImEE = linkonce_odr hidden constant [30 x i8] c"N3tbb6detail2r19wait_nodeImEE\00", comdat, align 1
@_ZTIN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE = linkonce_odr hidden constant [70 x i8] c"N3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE\00", comdat, align 1

; Function Attrs: mustprogress sspstrong uwtable
define noundef ptr @_ZN3tbb6detail2r126allocate_bounded_queue_repEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 80
  %i.b = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %0 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store ptr %i.d, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store ptr %i.g, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress sspstrong uwtable
define void @_ZN3tbb6detail2r128deallocate_bounded_queue_repEPhm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !21
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, ptr nonnull elementtype(i8) %i.a) #9, !srcloc !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseImE17abort_all_relaxedEv(ptr noundef nonnull align 8 dereferenceable(36) %i.b)
          to label %_ZN3tbb6detail2r118concurrent_monitorD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2r118concurrent_monitorD2Ev.exit, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #10
  unreachable

_ZN3tbb6detail2r118concurrent_monitorD2Ev.exit:   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !21
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, ptr nonnull elementtype(i8) %i.a) #9, !srcloc !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseImE17abort_all_relaxedEv(ptr noundef nonnull align 8 dereferenceable(36) %i.e)
          to label %_ZN3tbb6detail2r118concurrent_monitorD2Ev.exit.1 unwind label %bb.b

_ZN3tbb6detail2r118concurrent_monitorD2Ev.exit.1: ; preds = %_ZN3tbb6detail2r118concurrent_monitorD2Ev.exit
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %0)
  ret void
}

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define void @_ZN3tbb6detail2r126wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::raii_guard", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::r1::sleep_node", align 8 ; 21 uses
  %i.a = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr inttoptr (i64 3452816845 to ptr), ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 3452816845 to ptr), ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.e, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeImEE, i64 16), ptr %5, align 8, !tbaa !30
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseImE12prepare_waitERNS1_9wait_nodeImEE(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.noexc8

.noexc8:                                          ; preds = %.noexc7, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.a, ptr %4, align 8, !tbaa !58, !alias.scope !59
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !60, !alias.scope !59
  store i8 1, ptr %i.f, align 8, !tbaa !35, !alias.scope !59
  %i.i = load ptr, ptr %3, align 8, !tbaa !30
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %"_ZN3tbb6detail2r123concurrent_monitor_baseImE12guarded_callINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_.exit.i" unwind label %bb.b, !inline_history !55

bb.b:                                             ; preds = %.noexc8
  %i.l = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN3tbb6detail2d010raii_guardIZNS0_2r123concurrent_monitor_baseImE12guarded_callINS3_10sleep_nodeImEEZNS3_26wait_bounded_queue_monitorEPNS3_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_EUlvE0_ED2Ev"(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.body

"_ZN3tbb6detail2r123concurrent_monitor_baseImE12guarded_callINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_.exit.i": ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN3tbb6detail2r123concurrent_monitor_baseImE12guarded_callINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_.exit.i"
  %i.m = load i32, ptr %i.g, align 4, !tbaa !36
  %i.n = load atomic i32, ptr %i.h monotonic, align 4
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %_ZN3tbb6detail2r123concurrent_monitor_baseImE11commit_waitERNS1_9wait_nodeImEE.exit.thread.i, label %bb.d

_ZN3tbb6detail2r123concurrent_monitor_baseImE11commit_waitERNS1_9wait_nodeImEE.exit.thread.i: ; preds = %bb.c
  %i.p = load ptr, ptr %5, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %"_ZN3tbb6detail2r123concurrent_monitor_baseImE4waitINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_OT_.exit" unwind label %.loopexit.split-lp, !inline_history !56

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseImE11cancel_waitERNS1_9wait_nodeImEE(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %bb.d
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseImE12prepare_waitERNS1_9wait_nodeImEE(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %.noexc8 unwind label %.loopexit, !llvm.loop !57

bb.e:                                             ; preds = %"_ZN3tbb6detail2r123concurrent_monitor_baseImE12guarded_callINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_.exit.i"
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseImE11cancel_waitERNS1_9wait_nodeImEE(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %"_ZN3tbb6detail2r123concurrent_monitor_baseImE4waitINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_OT_.exit" unwind label %.loopexit.split-lp

"_ZN3tbb6detail2r123concurrent_monitor_baseImE4waitINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_OT_.exit": ; preds = %_ZN3tbb6detail2r123concurrent_monitor_baseImE11commit_waitERNS1_9wait_nodeImEE.exit.thread.i, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeImEE, i64 16), ptr %5, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.t = load i8, ptr %i.s, align 1, !tbaa !38, !range !39, !noundef !40
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.w = load i8, ptr %i.v, align 2, !range !39
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i = select i1 %i.u, i1 %i.x, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit

bb.f:                                             ; preds = %"_ZN3tbb6detail2r123concurrent_monitor_baseImE4waitINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_OT_.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.z = cmpxchg ptr %i.y, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  br i1 %i.aa, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = extractvalue { i32, i1 } %i.z, 0
  %.not.i.i = icmp eq i32 %i.ab, 2
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = atomicrmw xchg ptr %i.y, i32 2 seq_cst, align 4
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h, %bb.g
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ae = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.y, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #9, !inline_history !41 ; 0 uses
  %i.af = atomicrmw xchg ptr %i.y, i32 2 seq_cst, align 4
  %.not1.i.i = icmp eq i32 %i.af, 0
  br i1 %.not1.i.i, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit:        ; preds = %.lr.ph.i.i, %"_ZN3tbb6detail2r123concurrent_monitor_baseImE4waitINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_OT_.exit", %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void

.loopexit:                                        ; preds = %bb.d, %.noexc7
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.a, %_ZN3tbb6detail2r123concurrent_monitor_baseImE11commit_waitERNS1_9wait_nodeImEE.exit.thread.i, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3tbb6detail2r110sleep_nodeImED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  resume { ptr, i32 } %eh.lpad-body
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110sleep_nodeImED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeImEE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i8, ptr %i.a, align 1, !tbaa !38, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.e = load i8, ptr %i.d, align 2, !range !39
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  %.not.i = icmp eq i32 %i.j, 2
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = atomicrmw xchg ptr %i.g, i32 2 seq_cst, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  %i.n = atomicrmw xchg ptr %i.g, i32 2 seq_cst, align 4
  %.not1.i = icmp eq i32 %i.n, 0
  br i1 %.not1.i, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %.lr.ph.i, !llvm.loop !0

_ZN3tbb6detail2r116binary_semaphore1PEv.exit:     ; preds = %.lr.ph.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define void @_ZN3tbb6detail2r128abort_bounded_queue_monitorsEPNS1_18concurrent_monitorE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !21
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.b, ptr nonnull elementtype(i8) %i.b) #9, !srcloc !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @_ZN3tbb6detail2r123concurrent_monitor_baseImE17abort_all_relaxedEv(ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !21
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, ptr nonnull elementtype(i8) %i.a) #9, !srcloc !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN3tbb6detail2r123concurrent_monitor_baseImE17abort_all_relaxedEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define void @_ZN3tbb6detail2r128notify_bounded_queue_monitorEPNS1_18concurrent_monitorEmm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"struct.tbb::detail::r1::predicate_leq", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i64 %2, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !21
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, ptr nonnull elementtype(i8) %i.a) #9, !srcloc !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN3tbb6detail2r123concurrent_monitor_baseImE14notify_relaxedINS1_13predicate_leqEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110sleep_nodeImED0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeImEE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i8, ptr %i.a, align 1, !tbaa !38, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.e = load i8, ptr %i.d, align 2, !range !39
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  %.not.i.i = icmp eq i32 %i.j, 2
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = atomicrmw xchg ptr %i.g, i32 2 seq_cst, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %bb.c
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #9, !inline_history !41 ; 0 uses
  %i.n = atomicrmw xchg ptr %i.g, i32 2 seq_cst, align 4
  %.not1.i.i = icmp eq i32 %i.n, 0
  br i1 %.not1.i.i, label %_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN3tbb6detail2r110sleep_nodeImED2Ev.exit:        ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110sleep_nodeImE4initEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !38, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i32 1, ptr %i.d seq_cst, align 8
  store i8 1, ptr %i.a, align 1, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110sleep_nodeImE4waitEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = cmpxchg ptr %i.a, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i1 } %i.b, 0
  %.not.i = icmp eq i32 %i.d, 2
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw xchg ptr %i.a, i32 2 seq_cst, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %bb.b
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.g = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  %i.h = atomicrmw xchg ptr %i.a, i32 2 seq_cst, align 4
  %.not1.i = icmp eq i32 %i.h, 0
  br i1 %.not1.i, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %.lr.ph.i, !llvm.loop !0

_ZN3tbb6detail2r116binary_semaphore1PEv.exit:     ; preds = %.lr.ph.i, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.j = load i8, ptr %i.i, align 1, !tbaa !44, !range !39, !noundef !40
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3tbb6detail2r116binary_semaphore1PEv.exit
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN3tbb6detail2r116binary_semaphore1PEv.exit
  ret void
}

end_hunk_0
