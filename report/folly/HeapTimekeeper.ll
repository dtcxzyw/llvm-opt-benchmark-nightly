Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/HeapTimekeeper?download=true
inline.NumInlined: 1025
inline.NumDeleted: 620
begin_hunk_0_@_ZN5folly14HeapTimekeeper5State2OpD2Ev:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i8, ptr %i.g, align 8, !tbaa !59, !range !60, !noundef !61
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.f) #18
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !58
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !738    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !223, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !739, !nonnull !61, !align !224
  %i.g = load i32, ptr %i.f, align 4, !tbaa !179
  %.not.not = icmp eq i32 %i.g, 1
  br i1 %.not.not, label %.critedge, label %bb.c, !prof !188

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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !740, !nonnull !61, !align !96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !208
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.n, align 8, !tbaa !187
  store i32 %i.s, ptr %i.p, align 8, !tbaa !187
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !55
  store i64 %i.v, ptr %i.t, align 8, !tbaa !55
  store ptr null, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.w, ptr %i.o, align 8, !tbaa !207
  br label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE9push_backEOS3_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.g, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !225  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE9push_backEOS3_.exit
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !206
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp eq i64 %i.ae, 4096
  br i1 %i.af, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !739, !nonnull !61, !align !224
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !179
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !741, !nonnull !61, !align !96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ak, align 8, !tbaa !88
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.ao, align 8, !tbaa !88
  %i.ap = icmp sgt i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.ap, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k, %bb.i
  store ptr null, ptr %i.x, align 8, !tbaa !226
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.j, %bb.k, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE9push_backEOS3_.exit, %bb.l
  %.0 = phi ptr [ null, %bb.j ], [ null, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE9push_backEOS3_.exit ], [ %i.y, %bb.l ], [ null, %bb.k ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !201, !range !60, !noundef !61
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !743
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !tbaa !744
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull align 8 dereferenceable(48) %.val1)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EE7executeEv.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EE7executeEv.exit": ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #12

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) #1 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @"_ZZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEEENK3$_0clEv"(ptr noundef nonnull readonly align 8 dereferenceable(40) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !746, !nonnull !61, !align !747
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.a, ptr %i.d, align 16, !tbaa !226
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 11 uses
  %.not = icmp eq i32 %2, 8                       ; 2 uses
  %4 = select i1 %.not, i64 9, i64 1              ; 2 uses
  %i.a = tail call noundef i64 @llvm.x86.rdtsc()  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not, label %.split, label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.a, %bb.i
  %.033.us = phi i1 [ %.1.us, %bb.i ], [ undef, %bb.a ] ; 2 uses
  %.030.us = phi i64 [ %i.o, %bb.i ], [ %i.a, %bb.a ]
  %.029.us = phi i64 [ %i.p, %bb.i ], [ 0, %bb.a ]
  %i.d = icmp ult i64 %.029.us, 40000             ; 2 uses
  %i.e = shl i64 %.030.us, 8
  %5 = select i1 %i.d, i64 %i.e, i64 0
  %6 = or disjoint i64 %5, %4
  %i.f = atomicrmw xchg ptr %i.b, i64 %6 acq_rel, align 8 ; 2 uses
  %trunc.us = trunc i64 %i.f to i8                ; 2 uses
  switch i8 %trunc.us, label %bb.c [
    i8 10, label %bb.b
    i8 7, label %bb.b
    i8 3, label %bb.b
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %.thread.i.us, %.thread.i.us, %.thread.i.us, %.thread.i.us
  %i.g = and i64 %i.f, 255                        ; 2 uses
  %i.h = icmp ne i64 %i.g, 3
  %i.i = trunc nuw nsw i64 %i.g to i32
  store i32 %i.i, ptr %1, align 4, !tbaa !109
  br label %bb.h

bb.c:                                             ; preds = %.thread.i.us
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !tbaa !228
  store i64 500000, ptr %i.c, align 8, !tbaa !229
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.j = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__errno_location() #31
  %i.m = load i32, ptr %i.l, align 4, !tbaa !109
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.e, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us, !llvm.loop !11

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !230
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us, %bb.b
  %.1.us = phi i1 [ %i.h, %bb.b ], [ %.033.us, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us ], [ %.033.us, %bb.g ] ; 5 uses
  switch i8 %trunc.us, label %bb.i [
    i8 10, label %.split39.us
    i8 7, label %.split39.us
    i8 3, label %.split39.us
    i8 2, label %.split39.us
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = call noundef i64 @llvm.x86.rdtsc()       ; 2 uses
  %i.p = sub i64 %i.o, %i.a
  br label %.thread.i.us, !llvm.loop !12

.split:                                           ; preds = %bb.a, %bb.s
  %.0 = phi i1 [ %spec.select, %bb.s ], [ false, %bb.a ]
  %.033 = phi i1 [ %.1, %bb.s ], [ undef, %bb.a ] ; 2 uses
  %.032 = phi i64 [ %i.q, %bb.s ], [ 0, %bb.a ]   ; 2 uses
  %.031 = phi i64 [ %.030, %bb.s ], [ 0, %bb.a ]  ; 2 uses
  %.030 = phi i64 [ %i.ak, %bb.s ], [ %i.a, %bb.a ] ; 3 uses
  %.029 = phi i64 [ %i.al, %bb.s ], [ 0, %bb.a ]  ; 2 uses
  %i.q = add i64 %.032, 1
  %.not21.i = icmp ne i64 %.031, 0
  %i.r = sub i64 %.030, %.031
  %i.s = icmp ugt i64 %i.r, 199
  %or.cond24.i = and i1 %.not21.i, %i.s
  %spec.select = select i1 %or.cond24.i, i1 true, i1 %.0 ; 2 uses
  %.not40 = icmp eq i64 %.032, 0
  br i1 %.not40, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %.split
  %i.t = icmp ult i64 %.029, 40000
  %i.u = shl i64 %.030, 8
  %i.v = select i1 %i.t, i64 %i.u, i64 0
  br i1 %spec.select, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j, %.split
  %i.w = phi i64 [ %i.v, %bb.j ], [ -256, %.split ]
  %i.x = or i64 %i.w, %4
  %i.y = atomicrmw xchg ptr %i.b, i64 %i.x acq_rel, align 8
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit

bb.k:                                             ; preds = %bb.j
  %i.z = load atomic i64, ptr %i.b acquire, align 64
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit

_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit: ; preds = %.thread.i, %bb.k
  %i.aa = phi i64 [ %i.y, %.thread.i ], [ %i.z, %bb.k ] ; 2 uses
  %trunc = trunc i64 %i.aa to i8                  ; 2 uses
  switch i8 %trunc, label %bb.m [
    i8 10, label %bb.l
    i8 7, label %bb.l
    i8 3, label %bb.l
    i8 2, label %bb.l
  ]

bb.l:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 3
  %i.ad = trunc nuw nsw i64 %i.ab to i32
  store i32 %i.ad, ptr %1, align 4, !tbaa !109
  br label %bb.r

bb.m:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit
  %i.ae = icmp ult i64 %.029, 40000
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !230
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !tbaa !228
  store i64 500000, ptr %i.c, align 8, !tbaa !229
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.af = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.q, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = tail call ptr @__errno_location() #31
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !109
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.p, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, !llvm.loop !11

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.l
  %.1 = phi i1 [ %i.ac, %bb.l ], [ %.033, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit ], [ %.033, %bb.n ] ; 5 uses
  switch i8 %trunc, label %bb.s [
    i8 10, label %.split39.us
    i8 7, label %.split39.us
    i8 3, label %.split39.us
    i8 2, label %.split39.us
  ]

bb.s:                                             ; preds = %bb.r
  %i.ak = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.al = sub i64 %i.ak, %i.a
  br label %.split, !llvm.loop !12

.split39.us:                                      ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.r, %bb.r, %bb.r, %bb.r
  %.us-phi = phi i1 [ %.1, %bb.r ], [ %.1, %bb.r ], [ %.1, %bb.r ], [ %.1, %bb.r ], [ %.1.us, %bb.h ], [ %.1.us, %bb.h ], [ %.1.us, %bb.h ], [ %.1.us, %bb.h ]
  ret i1 %.us-phi
}

declare noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #18

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !206    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
  unreachable

_ZNKSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !187
  store i32 %i.r, ptr %i.q, align 8, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  store i64 %i.u, ptr %i.s, align 8, !tbaa !55
  store ptr null, ptr %i.t, align 8, !tbaa !55
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.v = load i32, ptr %.0911.i.i.i, align 8, !tbaa !187, !alias.scope !755, !noalias !754
  store i32 %i.v, ptr %.012.i.i.i, align 8, !tbaa !187, !alias.scope !754, !noalias !755
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !55, !alias.scope !755, !noalias !754
  store i64 %i.y, ptr %i.w, align 8, !tbaa !55, !alias.scope !754, !noalias !755
  store ptr null, ptr %i.x, align 8, !tbaa !55, !alias.scope !755, !noalias !754
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.ac = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !187, !alias.scope !757, !noalias !756
  store i32 %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !187, !alias.scope !756, !noalias !757
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55, !alias.scope !757, !noalias !756
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !55, !alias.scope !756, !noalias !757
  store ptr null, ptr %i.ae, align 8, !tbaa !55, !alias.scope !757, !noalias !756
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !10

_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !208
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5folly14HeapTimekeeper5State2OpESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !206
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !207
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !208
  ret void
}

declare void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = xor i64 %i.a, -1
  %i.c = shl i64 %i.a, 21
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 24
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, 265                        ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_14HeapTimekeeper5State8shutdownEvE3$_0NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE":bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226
  store ptr null, ptr %i.c, align 8, !tbaa !226
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 80
  store ptr %i.d, ptr %i.e, align 16, !tbaa !226
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14HeapTimekeeper5State6workerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 9 uses
  %2 = alloca %struct.timespec, align 8           ; 11 uses
  %3 = alloca %"class.folly::Promise", align 8    ; 8 uses
  %4 = alloca %class.anon.81, align 8             ; 4 uses
  %5 = alloca %"class.folly::Promise", align 8    ; 6 uses
  %6 = alloca %class.anon.47, align 1             ; 3 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %8 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 13 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %9 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 12 uses
  %10 = alloca %class.anon.47, align 1            ; 3 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %12 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 13 uses
  %13 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 12 uses
  %14 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %15 = alloca %"class.std::vector", align 16     ; 13 uses
  %16 = alloca %"class.std::optional", align 4    ; 12 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %17 = alloca %"class.folly::WaitOptions", align 8 ; 8 uses
  %18 = alloca %"class.folly::WaitOptions", align 8 ; 5 uses
  %19 = alloca %"class.folly::Try", align 8       ; 5 uses
  %20 = alloca %"class.folly::Try", align 8       ; 5 uses
  %21 = alloca %"class.folly::exception_wrapper", align 8 ; 7 uses
  %22 = alloca %"class.folly::FutureNoTimekeeper", align 8 ; 9 uses
  %i.c = tail call noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr nonnull @.str.26, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.26, i64 15)) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.f = ptrtoint ptr %12 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 6 uses
  %.sroa.2.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 120
  %.sroa.07.i.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 104
  %.sroa.07.i.sroa.6.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 17 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.ac = ptrtoint ptr %8 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ae = or disjoint i64 %i.ac, 1                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 17 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  invoke void @_ZN5folly14HeapTimekeeper5State22clearAndAdjustCapacityERSt6vectorINS1_2OpESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.c unwind label %bb.ap

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store i8 0, ptr %i.d, align 4, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i: ; preds = %bb.ad, %bb.c
  %.021.i.i = phi i32 [ 4, %bb.c ], [ %.016.i.i, %bb.ad ]
  %.019.i.i = phi i8 [ 0, %bb.c ], [ %i.as, %bb.ad ]
  %.017.i.i = phi ptr [ null, %bb.c ], [ %.226.i.i, %bb.ad ] ; 5 uses
  %.016.i.i = phi i32 [ 8, %bb.c ], [ %.021.i.i, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !803
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !803
  store ptr %15, ptr %i.j, align 32, !noalias !803
  store ptr %i.b, ptr %.sroa.07.i.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !803
  store ptr %16, ptr %.sroa.07.i.sroa.6.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !803
  %i.ao = zext nneg i32 %.016.i.i to i64
  store i64 0, ptr %.sroa.2.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !803
  store ptr @"_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_14HeapTimekeeper5State6workerEvE3$_0NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE", ptr %i.g, align 16, !tbaa !177, !noalias !803
  store atomic i64 %i.ao, ptr %i.e release, align 64, !noalias !803
  %i.ap = atomicrmw xchg ptr %0, i64 %i.h acq_rel, align 8, !noalias !803 ; 3 uses
  %i.aq = and i64 %i.ap, 2
  %.not.i27.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i27.i.i, label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i, label %bb.d, !prof !188

bb.d:                                             ; preds = %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.ar = and i64 %i.ap, -3
  br label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i

_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i: ; preds = %bb.d, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.as = phi i8 [ %.019.i.i, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ 1, %bb.d ] ; 5 uses
  %.0.i.i38 = phi i64 [ %i.ap, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ %i.ar, %bb.d ] ; 6 uses
  store atomic i64 %.0.i.i38, ptr %i.i monotonic, align 8, !noalias !803
  %i.at = icmp eq i64 %.0.i.i38, 0
  br i1 %i.at, label %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.thread.i", label %bb.e

"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.thread.i": ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  store ptr null, ptr %13, align 8, !tbaa !191, !alias.scope !803
  store i64 %i.h, ptr %i.l, align 8, !tbaa !192, !alias.scope !803
  store i8 %i.as, ptr %i.m, align 8, !tbaa !193, !alias.scope !803
  store i8 0, ptr %i.n, align 1, !tbaa !194, !alias.scope !803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !alias.scope !803
  br label %.sink.split

bb.e:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  %i.au = icmp eq i32 %.016.i.i, 4
  br i1 %i.au, label %bb.f, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.av = atomicrmw xchg ptr %i.j, i32 5 acq_rel, align 4, !noalias !803
  switch i32 %i.av, label %.lr.ph.i.i.preheader.i.i [
    i32 5, label %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i.thread"
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread29.i.i
  ]

"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i.thread": ; preds = %bb.f
  %i.aw = load i64, ptr %i.g, align 16, !noalias !803 ; 2 uses
  %i.ax = icmp eq i64 %.0.i.i38, %i.aw            ; 2 uses
  %spec.select26.i.i182 = select i1 %i.ax, i64 1, i64 %i.h
  %i.ay = and i64 %.0.i.i38, -2
  %i.az = select i1 %i.ax, i64 0, i64 %i.ay
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !62, !noalias !803
  %i.bc = and i64 %i.bb, -2
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.ba, ptr %13, align 8, !tbaa !191, !alias.scope !803
  store i64 %spec.select26.i.i182, ptr %i.l, align 8, !tbaa !192, !alias.scope !803
  store i8 %i.as, ptr %i.m, align 8, !tbaa !193, !alias.scope !803
  store i8 0, ptr %i.n, align 1, !tbaa !194, !alias.scope !803
  store i64 %i.aw, ptr %i.o, align 8, !tbaa !198, !alias.scope !803
  store ptr %i.bd, ptr %i.p, align 8, !tbaa !199, !alias.scope !803
  br label %.sink.split

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f
  %.not.i.i.i.peel.i.i = icmp eq ptr %.017.i.i, null
  br i1 %.not.i.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.preheader.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.be release, align 4, !noalias !803
  %i.bf = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.be, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i: ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %i.bg = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %i.j, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc39:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i
  %i.bh = load atomic i32, ptr %i.j acquire, align 32, !noalias !803
  %.not.i.i.peel.i.i = icmp eq i32 %i.bh, 2
  br i1 %.not.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread29.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc39, %.noexc40
  %i.bi = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %i.j, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc40:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %i.bj = load atomic i32, ptr %i.j acquire, align 32, !noalias !803
  %.not.i.i.i.i = icmp eq i32 %i.bj, 2
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread29.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i, !llvm.loop !787

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread29.i.i: ; preds = %.noexc40, %.noexc39, %bb.f
  %i.bk = load atomic i64, ptr %i.i monotonic, align 8, !noalias !803
  %i.bl = and i64 %i.bk, -2
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %bb.ad, !llvm.loop !788

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i: ; preds = %bb.e
  %.not.i154 = icmp eq i32 %.016.i.i, 8           ; 2 uses
  %23 = select i1 %.not.i154, i64 9, i64 1        ; 2 uses
  %i.bn = call noundef i64 @llvm.x86.rdtsc()      ; 4 uses
  br i1 %.not.i154, label %.split.i, label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i, %bb.o
  %.1 = phi i32 [ %.2, %bb.o ], [ 0, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 2 uses
  %.033.us.i = phi i1 [ %.1.us.i, %bb.o ], [ undef, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 2 uses
  %.030.us.i = phi i64 [ %i.bz, %bb.o ], [ %i.bn, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ]
  %.029.us.i = phi i64 [ %i.ca, %bb.o ], [ 0, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ]
  %i.bo = icmp ult i64 %.029.us.i, 40000          ; 2 uses
  %i.bp = shl i64 %.030.us.i, 8
  %24 = select i1 %i.bo, i64 %i.bp, i64 0
  %25 = or disjoint i64 %24, %23
  %i.bq = atomicrmw xchg ptr %i.e, i64 %25 acq_rel, align 8 ; 2 uses
  %trunc.us.i = trunc i64 %i.bq to i8             ; 2 uses
  switch i8 %trunc.us.i, label %bb.i [
    i8 10, label %bb.h
    i8 7, label %bb.h
    i8 3, label %bb.h
    i8 2, label %bb.h
  ]

bb.h:                                             ; preds = %.thread.i.us.i, %.thread.i.us.i, %.thread.i.us.i, %.thread.i.us.i
  %i.br = and i64 %i.bq, 255                      ; 2 uses
  %i.bs = icmp ne i64 %i.br, 3
  %i.bt = trunc nuw nsw i64 %i.br to i32
  br label %bb.n

bb.i:                                             ; preds = %.thread.i.us.i
  br i1 %i.bo, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !tbaa !228
  store i64 500000, ptr %i.k, align 8, !tbaa !229
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bu = invoke i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit

.noexc157:                                        ; preds = %bb.k
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.l, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.i

bb.l:                                             ; preds = %.noexc157
  %i.bw = tail call ptr @__errno_location() #31
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !109
  %i.by = icmp eq i32 %i.bx, 4
  br i1 %i.by, label %bb.k, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.i, !llvm.loop !11

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.i: ; preds = %bb.l, %.noexc157
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !230
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.i, %bb.h
  %.2 = phi i32 [ %.1, %bb.m ], [ %.1, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.i ], [ %i.bt, %bb.h ] ; 5 uses
  %.1.us.i = phi i1 [ %.033.us.i, %bb.m ], [ %.033.us.i, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.i ], [ %i.bs, %bb.h ] ; 5 uses
  switch i8 %trunc.us.i, label %bb.o [
    i8 10, label %.noexc41
    i8 7, label %.noexc41
    i8 3, label %.noexc41
    i8 2, label %.noexc41
  ]

bb.o:                                             ; preds = %bb.n
  %i.bz = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.ca = sub i64 %i.bz, %i.bn
  br label %.thread.i.us.i, !llvm.loop !12

.split.i:                                         ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i, %bb.y
  %.3 = phi i32 [ %.4, %bb.y ], [ 0, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 2 uses
  %.0.i155 = phi i1 [ %spec.select.i156, %bb.y ], [ false, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ]
  %.033.i = phi i1 [ %.1.i, %bb.y ], [ undef, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 2 uses
  %.032.i = phi i64 [ %i.cb, %bb.y ], [ 0, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 2 uses
  %.031.i = phi i64 [ %.030.i, %bb.y ], [ 0, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 2 uses
  %.030.i = phi i64 [ %i.cv, %bb.y ], [ %i.bn, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 3 uses
  %.029.i = phi i64 [ %i.cw, %bb.y ], [ 0, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i ] ; 2 uses
  %i.cb = add i64 %.032.i, 1
  %.not21.i.i = icmp ne i64 %.031.i, 0
  %i.cc = sub i64 %.030.i, %.031.i
  %i.cd = icmp ugt i64 %i.cc, 199
  %or.cond24.i.i = and i1 %.not21.i.i, %i.cd
  %spec.select.i156 = select i1 %or.cond24.i.i, i1 true, i1 %.0.i155 ; 2 uses
  %.not40.i = icmp eq i64 %.032.i, 0
  br i1 %.not40.i, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %.split.i
  %i.ce = icmp ult i64 %.029.i, 40000
  %i.cf = shl i64 %.030.i, 8
  %i.cg = select i1 %i.ce, i64 %i.cf, i64 0
  br i1 %spec.select.i156, label %.thread.i.i, label %bb.q

.thread.i.i:                                      ; preds = %bb.p, %.split.i
  %i.ch = phi i64 [ %i.cg, %bb.p ], [ -256, %.split.i ]
  %i.ci = or i64 %i.ch, %23
  %i.cj = atomicrmw xchg ptr %i.e, i64 %i.ci acq_rel, align 8
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ck = load atomic i64, ptr %i.e acquire, align 64
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i

_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i: ; preds = %bb.q, %.thread.i.i
  %i.cl = phi i64 [ %i.cj, %.thread.i.i ], [ %i.ck, %bb.q ] ; 2 uses
  %trunc.i = trunc i64 %i.cl to i8                ; 2 uses
  switch i8 %trunc.i, label %bb.s [
    i8 10, label %bb.r
    i8 7, label %bb.r
    i8 3, label %bb.r
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i
  %i.cm = and i64 %i.cl, 255                      ; 2 uses
  %i.cn = icmp ne i64 %i.cm, 3
  %i.co = trunc nuw nsw i64 %i.cm to i32
  br label %bb.x

bb.s:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit.i
  %i.cp = icmp ult i64 %.029.i, 40000
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !230
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !tbaa !228
  store i64 500000, ptr %i.k, align 8, !tbaa !229
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.cq = invoke i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
          to label %.noexc158 unwind label %.loopexit

.noexc158:                                        ; preds = %bb.v
  %i.cr = icmp eq i32 %i.cq, -1
  br i1 %i.cr, label %bb.w, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i

bb.w:                                             ; preds = %.noexc158
  %i.cs = tail call ptr @__errno_location() #31
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !109
  %i.cu = icmp eq i32 %i.ct, 4
  br i1 %i.cu, label %bb.v, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i, !llvm.loop !11

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i: ; preds = %bb.w, %.noexc158
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i, %bb.t, %bb.r
  %.4 = phi i32 [ %.3, %bb.t ], [ %.3, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i ], [ %i.co, %bb.r ] ; 5 uses
  %.1.i = phi i1 [ %.033.i, %bb.t ], [ %.033.i, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i ], [ %i.cn, %bb.r ] ; 5 uses
  switch i8 %trunc.i, label %bb.y [
    i8 10, label %.noexc41
    i8 7, label %.noexc41
    i8 3, label %.noexc41
    i8 2, label %.noexc41
  ]

bb.y:                                             ; preds = %bb.x
  %i.cv = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.cw = sub i64 %i.cv, %i.bn
  br label %.split.i, !llvm.loop !12

.noexc41:                                         ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.x, %bb.x, %bb.x, %bb.x
  %.5 = phi i32 [ %.4, %bb.x ], [ %.4, %bb.x ], [ %.4, %bb.x ], [ %.4, %bb.x ], [ %.2, %bb.n ], [ %.2, %bb.n ], [ %.2, %bb.n ], [ %.2, %bb.n ] ; 4 uses
  %.us-phi.i = phi i1 [ %.1.i, %bb.x ], [ %.1.i, %bb.x ], [ %.1.i, %bb.x ], [ %.1.i, %bb.x ], [ %.1.us.i, %bb.n ], [ %.1.us.i, %bb.n ], [ %.1.us.i, %bb.n ], [ %.1.us.i, %bb.n ]
  br i1 %.us-phi.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, label %bb.ad, !llvm.loop !788

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i: ; preds = %.noexc41
  %i.cx = load i64, ptr %i.g, align 16, !noalias !803 ; 3 uses
  %i.cy = icmp eq i64 %.0.i.i38, %i.cx            ; 2 uses
  %spec.select26.i.i = select i1 %i.cy, i64 1, i64 %i.h
  %i.cz = icmp eq i32 %.5, 7
  %i.da = icmp eq i32 %.5, 10                     ; 2 uses
  %or.cond.i.i = or i1 %i.cz, %i.da
  switch i32 %.5, label %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i" [
    i32 10, label %bb.z
    i32 7, label %bb.z
  ]

bb.z:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !803
  br i1 %i.da, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State6workerEvE3$_0EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i", !prof !176

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.z
  %i.db = inttoptr i64 %i.cx to ptr
  store ptr null, ptr %i.g, align 16, !tbaa !74, !noalias !803
  store ptr %i.db, ptr %11, align 8, !tbaa !74, !noalias !803
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %11) #29
          to label %bb.aa unwind label %bb.ab, !noalias !803

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %11, align 8, !tbaa !74, !noalias !803
  %.not.i6.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i6.i.i.i.i, label %.body, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18, !noalias !803
  br label %.body

"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State6workerEvE3$_0EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i": ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !803
  br label %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i"

bb.ad:                                            ; preds = %.noexc41, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread29.i.i
  %.226.i.i = phi ptr [ %.017.i.i, %.noexc41 ], [ %i.bm, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread29.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !803
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i": ; preds = %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State6workerEvE3$_0EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i", %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  %i.de = and i64 %.0.i.i38, -2
  %i.df = select i1 %i.cy, i64 0, i64 %i.de
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !62, !noalias !803
  %i.di = and i64 %i.dh, -2
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = zext i1 %or.cond.i.i to i8
  store ptr %i.dg, ptr %13, align 8, !tbaa !191, !alias.scope !803
  store i64 %spec.select26.i.i, ptr %i.l, align 8, !tbaa !192, !alias.scope !803
  store i8 %i.as, ptr %i.m, align 8, !tbaa !193, !alias.scope !803
  store i8 %i.dk, ptr %i.n, align 1, !tbaa !194, !alias.scope !803
  store i64 %i.cx, ptr %i.o, align 8, !tbaa !198, !alias.scope !803
  store ptr %i.dj, ptr %i.p, align 8, !tbaa !199, !alias.scope !803
  store ptr %.017.i.i, ptr %i.q, align 8, !tbaa !195, !alias.scope !803
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !803
  switch i32 %.5, label %bb.ae [
    i32 10, label %bb.am
    i32 7, label %bb.am
  ]

.sink.split:                                      ; preds = %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.thread.i", %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i.thread"
  store ptr %.017.i.i, ptr %i.q, align 8, !tbaa !195, !alias.scope !803
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !803
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i"
  %i.dl = load ptr, ptr %i.r, align 8, !tbaa !233 ; 2 uses
  %i.dm = load ptr, ptr %i.s, align 8, !tbaa !233 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = load ptr, ptr %i.t, align 8, !tbaa !208
  %i.dp = load <2 x ptr>, ptr %15, align 16, !tbaa !233
  store <2 x ptr> %i.dp, ptr %i.r, align 8, !tbaa !233
  %i.dq = load ptr, ptr %i.v, align 16, !tbaa !208
  store ptr %i.dq, ptr %i.t, align 8, !tbaa !208
  store ptr %i.dl, ptr %15, align 16, !tbaa !206
  store ptr %i.dm, ptr %i.u, align 8, !tbaa !207
  store ptr %i.do, ptr %i.v, align 16, !tbaa !208
  br label %"_ZZN5folly14HeapTimekeeper5State6workerEvENK3$_0clEv.exit.i"

bb.ag:                                            ; preds = %bb.ae
  %i.dr = load i8, ptr %i.w, align 8, !tbaa !223, !range !60, !noundef !61
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.b, align 1, !tbaa !67
  br label %"_ZZN5folly14HeapTimekeeper5State6workerEvENK3$_0clEv.exit.i"

bb.ai:                                            ; preds = %bb.ag
  store i32 0, ptr %16, align 4, !tbaa !235
  store i8 1, ptr %i.d, align 4, !tbaa !232
  store ptr %16, ptr %i.x, align 8, !tbaa !225
  %i.dt = load ptr, ptr %i.y, align 8, !tbaa !236 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dv, align 8, !tbaa !88
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.aj ], [ 9223372036854775807, %bb.ai ]
  store i64 %.sroa.0.0.i.i, ptr %i.z, align 8, !tbaa !88
  br label %"_ZZN5folly14HeapTimekeeper5State6workerEvENK3$_0clEv.exit.i"

"_ZZN5folly14HeapTimekeeper5State6workerEvENK3$_0clEv.exit.i": ; preds = %bb.ak, %bb.ah, %bb.af
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %bb.ao unwind label %bb.al

bb.al:                                            ; preds = %"_ZZN5folly14HeapTimekeeper5State6workerEvENK3$_0clEv.exit.i"
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #27
end_hunk_1
