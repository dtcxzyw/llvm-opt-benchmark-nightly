Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Timer?download=true
inline.NumInlined: 939
inline.NumDeleted: 457
begin_hunk_0_@_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12emplace_backIJRKNS0_10TimeRecordENS0_9StringRefES9_EEERS2_DpOT_:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bt = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !24
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 96 ; 2 uses
  store ptr %i.bz, ptr %i.e, align 8, !tbaa !57
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE17_M_realloc_insertIJRKNS0_10TimeRecordENS0_9StringRefES9_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !60
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ca = phi ptr [ %.pre, %bb.s ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -96
  ret ptr %i.cb
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh10TimerGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %bb.a ]
  tail call void @_ZN4llvh10TimerGroup11removeTimerERNS_5TimerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.c)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !179

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = load atomic ptr, ptr @_ZL9TimerLock acquire, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL9TimerLock, ptr noundef nonnull @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv) #22
  br label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit: ; preds = %._crit_edge, %bb.b
  %i.f = load atomic ptr, ptr @_ZL9TimerLock monotonic, align 8 ; 4 uses
  %i.g = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #22
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit
  %i.h = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(13) %i.f) #22 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !44
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !90
  %.not2 = icmp eq ptr %i.m, null
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.o, ptr %i.p, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit
  %i.q = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #22
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.f) #22 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !44
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !44
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit:     ; preds = %bb.g, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i ], [ %i.w, %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.v, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exitthread-pre-split.i, %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit
  %i.am = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exitthread-pre-split.i ], [ %i.w, %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #23
  br label %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EED2Ev.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !24
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh10TimerGroup17PrintQueuedTimersERNS_11raw_ostreamE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvh::TimeRecord", align 8  ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvh::format_object.28", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i, label %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 96
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.b, ptr %i.d, i64 noundef %i.k)
  %i.l = icmp sgt i64 %i.g, 1536
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1536 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.b, ptr nonnull %i.m)
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !180

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.b, ptr %i.d)
  br label %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit

_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %.not7981 = icmp eq ptr %i.p, %i.q
  br i1 %.not7981, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q
  store <2 x double> %i.db, ptr %i.r, align 8, !tbaa !71
  store i64 %i.de, ptr %i.s, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit
  %.lcssa = phi double [ %i.cy, %._crit_edge ], [ 0.000000e+00, %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit ] ; 2 uses
  store double %.lcssa, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 30 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 3
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.11, i64 noundef 3) #22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.w, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.ab, %bb.f ], [ %1, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !89
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 73, i8 noundef signext 45) #22
  %i.af = load ptr, ptr %3, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.af, i64 noundef %i.ah) #22 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 4
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef nonnull @.str.12, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i32 171785533, ptr %i.am, align 1
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.at, ptr %i.al, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

_ZN4llvh11raw_ostreamlsEPKc.exit28:               ; preds = %bb.h, %bb.i
  %i.au = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ae
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit28
  %i.aw = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bb = sub i64 80, %i.ba
  %i.bc = lshr i64 %i.bb, 1
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 80
  %spec.store.select = select i1 %i.be, i32 0, i32 %i.bd
  %i.bf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.store.select) #22
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bf, ptr noundef %i.bg, i64 noundef %i.bh) #22 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30
  %.not.i = icmp ult ptr %i.bk, %i.bm
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.bi, i8 noundef zeroext 10) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !31
  store i8 10, ptr %i.bk, align 1, !tbaa !24
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.j, %bb.k
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, 3
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.bv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.11, i64 noundef 3) #22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit31

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bq, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store ptr %i.bx, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit31

_ZN4llvh11raw_ostreamlsEPKc.exit31:               ; preds = %bb.l, %bb.m
  %.0.i.i30 = phi ptr [ %i.bv, %bb.l ], [ %1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.by, ptr %4, align 8, !tbaa !89
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 73, i8 noundef signext 45) #22
  %i.bz = load ptr, ptr %4, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i30, ptr noundef %i.bz, i64 noundef %i.cb) #22 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31 ; 2 uses
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp ult i64 %i.cj, 4
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit31
  %i.cl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.cc, ptr noundef nonnull @.str.12, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit34

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit31
  store i32 171785533, ptr %i.cg, align 1
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store ptr %i.cn, ptr %i.cf, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit34

_ZN4llvh11raw_ostreamlsEPKc.exit34:               ; preds = %bb.n, %bb.o
  %i.co = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.by
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit34
  %i.cq = load i64, ptr %i.by, align 8, !tbaa !24
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cs = load atomic ptr, ptr @_ZL17DefaultTimerGroup acquire, align 8
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %bb.p, label %_ZL20getDefaultTimerGroupv.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL17DefaultTimerGroup, ptr noundef nonnull @_ZN12_GLOBAL__N_123CreateDefaultTimerGroup4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_10TimerGroupEE4callEPv) #22, !inline_history !0
  br label %_ZL20getDefaultTimerGroupv.exit

_ZL20getDefaultTimerGroupv.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.p
  %i.ct = load atomic ptr, ptr @_ZL17DefaultTimerGroup monotonic, align 8
  %.not = icmp eq ptr %0, %i.ct
  br i1 %.not, label %bb.s, label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cu = phi i64 [ 0, %.lr.ph ], [ %i.de, %bb.q ]
  %.sroa.076.082 = phi ptr [ %i.p, %.lr.ph ], [ %i.df, %bb.q ] ; 4 uses
  %i.cv = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cy, %bb.q ]
  %i.cw = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.db, %bb.q ]
  %i.cx = load double, ptr %.sroa.076.082, align 8, !tbaa !80
  %i.cy = fadd double %i.cx, %i.cv                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.076.082, i64 8
  %i.da = load <2 x double>, ptr %i.cz, align 8, !tbaa !71
  %i.db = fadd <2 x double> %i.da, %i.cw          ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.076.082, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !67
  %i.de = add nsw i64 %i.cu, %i.dd                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.076.082, i64 96 ; 2 uses
  %.not79 = icmp eq ptr %i.df, %i.q
  br i1 %.not79, label %._crit_edge, label %bb.q

bb.r:                                             ; preds = %_ZL20getDefaultTimerGroupv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !73
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %8 = load double, ptr %i.dg, align 8, !tbaa !72
  %9 = fadd double %7, %8
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.13, ptr %i.dh, align 8, !tbaa !75, !alias.scope !187
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJddEEE, i64 16), ptr %5, align 8, !tbaa !13, !alias.scope !187
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.lcssa, ptr %i.di, align 8, !tbaa !77, !alias.scope !187
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %9, ptr %i.dj, align 8, !tbaa !79, !alias.scope !187
  %i.dk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %5) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL20getDefaultTimerGroupv.exit
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !31  ; 3 uses
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !30
  %.not.i38 = icmp ult ptr %i.dl, %i.dm
  br i1 %.not.i38, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 10) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit40

bb.u:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store ptr %i.do, ptr %i.v, align 8, !tbaa !31
  store i8 10, ptr %i.dl, align 1, !tbaa !24
  br label %_ZN4llvh11raw_ostreamlsEc.exit40

_ZN4llvh11raw_ostreamlsEc.exit40:                 ; preds = %bb.t, %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !73 ; 2 uses
  %i.dr = fcmp une double %i.dq, 0.000000e+00
  %.pre97.pre101.pre104 = load ptr, ptr %i.v, align 8, !tbaa !31 ; 3 uses
  br i1 %i.dr, label %bb.v, label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.v:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit40
  %i.ds = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %.pre97.pre101.pre104 to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ult i64 %i.dv, 18
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.14, i64 noundef 18) #22 ; 0 uses
  %.pre97.pre101.pre = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.pre97.pre101.pre104, ptr noundef nonnull align 1 dereferenceable(18) @.str.14, i64 18, i1 false)
  %i.dy = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 18 ; 2 uses
  store ptr %i.dz, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

_ZN4llvh11raw_ostreamlsEPKc.exit43:               ; preds = %bb.x, %bb.w, %_ZN4llvh11raw_ostreamlsEc.exit40
  %.pre97.pre101 = phi ptr [ %i.dz, %bb.x ], [ %.pre97.pre101.pre, %bb.w ], [ %.pre97.pre101.pre104, %_ZN4llvh11raw_ostreamlsEc.exit40 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !72 ; 2 uses
  %i.ec = fcmp une double %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.y, label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %.pre97.pre101 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = icmp ult i64 %i.eg, 18
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ei = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.15, i64 noundef 18) #22 ; 0 uses
  %.pre97.pre = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.pre97.pre101, ptr noundef nonnull align 1 dereferenceable(18) @.str.15, i64 18, i1 false)
  %i.ej = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 18 ; 2 uses
  store ptr %i.ek, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

_ZN4llvh11raw_ostreamlsEPKc.exit46:               ; preds = %bb.aa, %bb.z, %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %.pre97 = phi ptr [ %i.ek, %bb.aa ], [ %.pre97.pre, %bb.z ], [ %.pre97.pre101, %_ZN4llvh11raw_ostreamlsEPKc.exit43 ] ; 3 uses
  %i.el = fadd double %i.dq, %i.eb
  %i.em = fcmp une double %i.el, 0.000000e+00
  br i1 %i.em, label %bb.ab, label %_ZN4llvh11raw_ostreamlsEPKc.exit49

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %.pre97 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ult i64 %i.eq, 18
  br i1 %i.er, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.16, i64 noundef 18) #22 ; 0 uses
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.pre97, ptr noundef nonnull align 1 dereferenceable(18) @.str.16, i64 18, i1 false)
  %i.et = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 18 ; 2 uses
  store ptr %i.eu, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

_ZN4llvh11raw_ostreamlsEPKc.exit49:               ; preds = %bb.ad, %bb.ac, %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.ev = phi ptr [ %i.eu, %bb.ad ], [ %.pre, %bb.ac ], [ %.pre97, %_ZN4llvh11raw_ostreamlsEPKc.exit46 ] ; 2 uses
  %i.ew = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ult i64 %i.ez, 18
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit49
  %i.fb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.17, i64 noundef 18) #22 ; 0 uses
  %.pre99.pre = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

bb.af:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ev, ptr noundef nonnull align 1 dereferenceable(18) @.str.17, i64 18, i1 false)
  %i.fc = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 18 ; 2 uses
  store ptr %i.fd, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

_ZN4llvh11raw_ostreamlsEPKc.exit52:               ; preds = %bb.ae, %bb.af
  %.pre99 = phi ptr [ %.pre99.pre, %bb.ae ], [ %i.fd, %bb.af ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !67
  %.not25 = icmp eq i64 %i.ff, 0
  br i1 %.not25, label %_ZN4llvh11raw_ostreamlsEPKc.exit55, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.fg = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %.pre99 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = icmp ult i64 %i.fj, 11
  br i1 %i.fk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.18, i64 noundef 11) #22 ; 0 uses
  %.pre98 = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.pre99, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.fm = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 11 ; 2 uses
  store ptr %i.fn, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

_ZN4llvh11raw_ostreamlsEPKc.exit55:               ; preds = %bb.ai, %bb.ah, %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.fo = phi ptr [ %i.fn, %bb.ai ], [ %.pre98, %bb.ah ], [ %.pre99, %_ZN4llvh11raw_ostreamlsEPKc.exit52 ] ; 2 uses
  %i.fp = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = icmp ult i64 %i.fs, 15
  br i1 %i.ft, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit55
  %i.fu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.19, i64 noundef 15) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit58

bb.ak:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.fo, ptr noundef nonnull align 1 dereferenceable(15) @.str.19, i64 15, i1 false)
  %i.fv = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 15
  store ptr %i.fw, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit58

_ZN4llvh11raw_ostreamlsEPKc.exit58:               ; preds = %bb.aj, %bb.ak
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !60, !noalias !188 ; 2 uses
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !60, !noalias !189 ; 2 uses
  %.not8089 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not8089, label %._crit_edge92, label %.lr.ph91

._crit_edge92:                                    ; preds = %_ZN4llvh11raw_ostreamlsEc.exit67, %_ZN4llvh11raw_ostreamlsEPKc.exit58
  call void @_ZNK4llvh10TimeRecord5printERKS0_RNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.fz = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = icmp ult i64 %i.gd, 7
  br i1 %i.ge, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge92
  %i.gf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.20, i64 noundef 7) #22 ; 0 uses
  %.pre100 = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit61

bb.am:                                            ; preds = %._crit_edge92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ga, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  %i.gg = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 7 ; 2 uses
  store ptr %i.gh, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit61

_ZN4llvh11raw_ostreamlsEPKc.exit61:               ; preds = %bb.al, %bb.am
  %i.gi = phi ptr [ %.pre100, %bb.al ], [ %i.gh, %bb.am ]
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !190
end_hunk_0
