Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/debug-interface?download=true
inline.NumInlined: 2927
inline.NumDeleted: 1411
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal21DebugPropertyIterator7AdvanceEv:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 560 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN2v814CallDepthScopeILb0EEC2EPNS_8internal7IsolateENS_5LocalINS_7ContextEEE.exit, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.x) #26
  br label %_ZN2v814CallDepthScopeILb0EEC2EPNS_8internal7IsolateENS_5LocalINS_7ContextEEE.exit

_ZN2v814CallDepthScopeILb0EEC2EPNS_8internal7IsolateENS_5LocalINS_7ContextEEE.exit: ; preds = %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.d
  %.0.i.i.i4 = phi ptr [ %i.ae, %bb.d ], [ %i.aa, %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i4 to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.z, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.0.i.i.i4, align 8
  store ptr %.0.i.i.i4, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 360 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = ptrtoint ptr %1 to i64
  store i64 %i.am, ptr %i.aj, align 8
  %i.an = load i64, ptr %.0.i.i.i, align 8
  store i64 %i.an, ptr %i.y, align 8
  %i.ao = call noundef zeroext i1 @_ZN2v88internal21DebugPropertyIterator15AdvanceInternalEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #26
  %i.ap = load ptr, ptr %1, align 8               ; 7 uses
  %i.aq = load i64, ptr %i.al, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 360
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN2v814CallDepthScopeILb0EEC2EPNS_8internal7IsolateENS_5LocalINS_7ContextEEE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 416
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 368
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 960
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = load i64, ptr %i.aw, align 8
  %i.ba = icmp eq i64 %i.az, %i.ay
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 656
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 368
  store i64 %i.bc, ptr %i.bd, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN2v814CallDepthScopeILb0EEC2EPNS_8internal7IsolateENS_5LocalINS_7ContextEEE.exit
  %i.be = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN2v814CallDepthScopeILb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 344
  store i64 %i.bg, ptr %i.bh, align 8
  br label %_ZN2v814CallDepthScopeILb0EED2Ev.exit

_ZN2v814CallDepthScopeILb0EED2Ev.exit:            ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.bi = select i1 %i.ao, i16 257, i16 0
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN2v814CallDepthScopeILb0EED2Ev.exit
  %.sroa.06.0.insert.insert = phi i16 [ %i.bi, %_ZN2v814CallDepthScopeILb0EED2Ev.exit ], [ 0, %bb.a ]
  ret i16 %.sroa.06.0.insert.insert
}

declare noundef zeroext i1 @_ZN2v88internal21DebugPropertyIterator15AdvanceInternalEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare noundef i32 @_ZN2v88internal6BigInt12Words64CountEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #6

declare ptr @_ZN2v88internal6BigInt8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_11ShouldThrowE(ptr noundef, ptr, i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #6

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #18 comdat {
bb.a:
  tail call void @abort() #27
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #19

declare noundef zeroext i8 @_ZNK2v88internal9ScopeInfo16ContextLocalModeEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i8 @_ZNK2v88internal9ScopeInfo24ContextLocalIsStaticFlagEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK2v88internal9ScopeInfo19ContextHeaderLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZN2v88internal20NameToIndexHashTable7IndexAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2)) unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !156
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !156
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"class.v8::internal::BreakLocation", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::BreakLocation", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::BreakLocation", align 8 ; 7 uses
  %14 = alloca %"class.v8::internal::BreakLocation", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.bp, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !157

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa46 = phi i64 [ %i.d, %.lr.ph ], [ %i.cd, %bb.b ] ; 2 uses
  %.lcssa44 = phi i64 [ %i.c, %.lr.ph ], [ %i.cc, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa46, -2                ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %.lcssa46, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa44, 32
  %i.n = icmp eq i64 %i.m, 0
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.s = icmp slt i64 %.08.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [32 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %0, i64 %i.w
  %i.y = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.v, ptr noundef nonnull align 8 dereferenceable(28) %i.x) #26, !inline_history !158
  %spec.select.i.i.i = select i1 %i.y, i64 %i.w, i64 %i.u ; 4 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %.036.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, ptr noundef nonnull align 8 dereferenceable(28) %i.z, i64 28, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !159

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ac, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, ptr noundef nonnull align 8 dereferenceable(28) %i.p, i64 28, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.o, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.ad = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i16, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

.lr.ph.i.i.i.i16:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.af = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, ptr noundef nonnull align 8 dereferenceable(28) %4) #26, !inline_history !160
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i64 28, i1 false)
  %i.ah = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i16, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, !llvm.loop !161

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i16, %bb.e
  %.0.lcssa.i.i.i.i14 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i16 ]
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i.i15 = icmp eq i64 %.08.i.i, 0
  %i.aj = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i15, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit, label %bb.c, !llvm.loop !162

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i
  %15 = icmp sgt i64 %.lcssa44, 32
  br i1 %15, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ak, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.i ], [ %storemerge26.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit ]
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.a                     ; 3 uses
  %i.an = ashr exact i64 %i.am, 5                 ; 3 uses
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = icmp sgt i64 %i.an, 2
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ar = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [32 x i8], ptr %0, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [32 x i8], ptr %0, i64 %i.au
  %i.aw = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.at, ptr noundef nonnull align 8 dereferenceable(28) %i.av) #26, !inline_history !163
  %spec.select.i.i.i.i = select i1 %i.aw, i64 %i.au, i64 %i.as ; 4 uses
  %i.ax = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ay = getelementptr inbounds [32 x i8], ptr %0, i64 %.036.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ay, ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i64 28, i1 false)
  %i.az = icmp slt i64 %spec.select.i.i.i.i, %i.ap
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !159

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ba = and i64 %i.am, 32
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bc = add nsw i64 %i.an, -2
  %i.bd = ashr exact i64 %i.bc, 1
  %i.be = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bd
  br i1 %i.be, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bf = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bg = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, ptr noundef nonnull align 8 dereferenceable(28) %i.bh, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bg, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i67.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i67.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i67.i.i.i ; 2 uses
  %i.bk = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.bj, ptr noundef nonnull align 8 dereferenceable(28) %13) #26, !inline_history !164
  br i1 %i.bk, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = getelementptr inbounds [32 x i8], ptr %0, i64 %.018.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bl, ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i64 28, i1 false)
  %.not8.i.i.i = icmp eq i64 %.0919.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !161

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bm = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bm, ptr noundef nonnull align 8 dereferenceable(28) %13, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bn = icmp sgt i64 %i.am, 32
  br i1 %i.bn, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !165

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2649 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02748 = phi i64 [ %i.bp, %bb.b ], [ %2, %.lr.ph ]
  %i.bo = phi i64 [ %i.cd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bp = add nsw i64 %.02748, -1                 ; 3 uses
  %i.bq = lshr i64 %i.bo, 1
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bq ; 7 uses
  %i.bs = getelementptr inbounds i8, ptr %storemerge2649, i64 -32 ; 8 uses
  %i.bt = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull align 8 dereferenceable(28) %i.br) #26, !inline_history !166
  br i1 %i.bt, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.bu = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.br, ptr noundef nonnull align 8 dereferenceable(28) %i.bs) #26, !inline_history !166
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.br, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.br, ptr noundef nonnull align 8 dereferenceable(28) %12, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bv = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull align 8 dereferenceable(28) %i.bs) #26, !inline_history !166
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.bs, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bs, ptr noundef nonnull align 8 dereferenceable(28) %11, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.f, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull align 8 dereferenceable(28) %10, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.bw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull align 8 dereferenceable(28) %i.bs) #26, !inline_history !166
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.f, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull align 8 dereferenceable(28) %9, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.bx = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %i.br, ptr noundef nonnull align 8 dereferenceable(28) %i.bs) #26, !inline_history !166
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.bs, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bs, ptr noundef nonnull align 8 dereferenceable(28) %8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.br, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.br, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.v
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.v ], [ %storemerge2649, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.bz, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.bz, %bb.t ] ; 9 uses
  %i.by = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(28) %0) #26, !inline_history !167
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 32 ; 2 uses
  br i1 %i.by, label %bb.t, label %.preheader.i.i, !llvm.loop !168

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.t ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -32 ; 6 uses
  %i.ca = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.011.1.i.i) #26, !inline_history !167
  br i1 %i.ca, label %.preheader.i.i, label %bb.u, !llvm.loop !169

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.1.i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.011.1.i.i, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !170

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2649, i64 noundef %i.bp, ptr %3)
  %i.cb = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cc = sub i64 %i.cb, %i.a                     ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 5                 ; 3 uses
  %i.ce = icmp sgt i64 %i.cd, 16
  br i1 %i.ce, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !157

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13BreakLocationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

declare preserve_mostcc void @_ZN2v88internal6Script20InitLineEndsInternalINS0_7IsolateEEEvPT_NS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE17_M_realloc_insertIJRPNS0_7IsolateENS0_5LocalIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
  unreachable

_ZNKSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8 ; 2 uses
  %i.s = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %i.s, label %_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE11_M_allocateEm.exit
  %i.t = load ptr, ptr %2, align 8
  %i.u = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.v = tail call noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef %i.t, i64 noundef %i.u) #26
  br label %_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit

_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit: ; preds = %_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE11_M_allocateEm.exit, %bb.d
  %.0.i.i = phi ptr [ %i.v, %bb.d ], [ null, %_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE11_M_allocateEm.exit ]
  store ptr %.0.i.i, ptr %i.r, align 8
  %i.w = icmp eq ptr %i.c, %1
  br i1 %i.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.q, %_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit ] ; 4 uses
  %i.x = load ptr, ptr %.sroa.04.07.i.i.i.i.i, align 8 ; 2 uses
  store ptr %i.x, ptr %.08.i.i.i.i.i, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.07.i.i.i.i.i, ptr noundef nonnull %.08.i.i.i.i.i) #26
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i, align 8
  br label %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %1
  br i1 %i.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !171

_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZSt12construct_atIN2v86GlobalINS0_5debug6ScriptEEEJRPNS0_7IsolateENS0_5LocalIS3_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit ], [ %i.aa, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %1, %i.b
  br i1 %i.ad, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22
  %.08.i.i.i.i.i20 = phi ptr [ %i.ah, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22 ], [ %i.ac, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.ag, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 4 uses
  %i.ae = load ptr, ptr %.sroa.04.07.i.i.i.i.i21, align 8 ; 2 uses
  store ptr %i.ae, ptr %.08.i.i.i.i.i20, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i19
  tail call void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.07.i.i.i.i.i21, ptr noundef nonnull %.08.i.i.i.i.i20) #26
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i21, align 8
  br label %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22

_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22: ; preds = %bb.f, %.lr.ph.i.i.i.i.i19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 8 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.b
  br i1 %i.ai, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !171

_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit24: ; preds = %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.ac, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ah, %_ZSt10_ConstructIN2v86GlobalINS0_5debug6ScriptEEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i22 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit24, %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.al, %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit24 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i, align 8         ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.aj) #26
  store ptr null, ptr %.05.i.i, align 8
  br label %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i

_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit, label %.lr.ph.i.i, !llvm.loop !172

_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v86GlobalINS0_5debug6ScriptEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #30
  br label %_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit, %bb.h
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8
  ret void
}

declare noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef) local_unnamed_addr #6

declare void @_ZNK2v812ScriptOrigin24VerifyHostDefinedOptionsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZN2v824EscapableHandleScopeBaseC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #6

declare void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare void @_ZN2v88internal7Isolate23PromiseHookStateUpdatedEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #6

declare noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #6

declare preserve_mostcc void @_ZN2v85Utils16ReportApiFailureEPKcS2_(ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN2v88internal10StackGuard19PushInterruptsScopeEPNS0_15InterruptsScopeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #9

declare ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIcLm128ESaIcEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
end_hunk_0
