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
  %2 = alloca %"class.llvh::TimeRecord", align 8  ; 13 uses
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
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q
  store <2 x double> %i.cx, ptr %6, align 8, !tbaa !71
  store i64 %i.da, ptr %7, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit
  %.lcssa = phi double [ %i.cu, %._crit_edge ], [ 0.000000e+00, %_ZN4llvh4sortIRSt6vectorINS_10TimerGroup11PrintRecordESaIS3_EEEEvOT_.exit ] ; 2 uses
  store double %.lcssa, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 30 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 3
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.11, i64 noundef 3) #22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.z, %bb.f ], [ %1, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !89
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 73, i8 noundef signext 45) #22
  %i.ad = load ptr, ptr %3, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.ad, i64 noundef %i.af) #22 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ap = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, ptr noundef nonnull @.str.12, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i32 171785533, ptr %i.ak, align 1
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

_ZN4llvh11raw_ostreamlsEPKc.exit28:               ; preds = %bb.h, %bb.i
  %i.as = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit28
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.az = sub i64 80, %i.ay
  %i.ba = lshr i64 %i.az, 1
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, 80
  %spec.store.select = select i1 %i.bc, i32 0, i32 %i.bb
  %i.bd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %spec.store.select) #22
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.bg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bd, ptr noundef %i.be, i64 noundef %i.bf) #22 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  %.not.i = icmp ult ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.bg, i8 noundef zeroext 10) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !31
  store i8 10, ptr %i.bi, align 1, !tbaa !24
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.j, %bb.k
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.br, 3
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.bt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.11, i64 noundef 3) #22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit31

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bo, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit31

_ZN4llvh11raw_ostreamlsEPKc.exit31:               ; preds = %bb.l, %bb.m
  %.0.i.i30 = phi ptr [ %i.bt, %bb.l ], [ %1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.bw, ptr %4, align 8, !tbaa !89
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 73, i8 noundef signext 45) #22
  %i.bx = load ptr, ptr %4, align 8, !tbaa !23
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !25
  %i.ca = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i30, ptr noundef %i.bx, i64 noundef %i.bz) #22 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31 ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp ult i64 %i.ch, 4
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit31
  %i.cj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ca, ptr noundef nonnull @.str.12, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit34

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit31
  store i32 171785533, ptr %i.ce, align 1
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit34

_ZN4llvh11raw_ostreamlsEPKc.exit34:               ; preds = %bb.n, %bb.o
  %i.cm = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bw
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit34
  %i.co = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cq = load atomic ptr, ptr @_ZL17DefaultTimerGroup acquire, align 8
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %bb.p, label %_ZL20getDefaultTimerGroupv.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL17DefaultTimerGroup, ptr noundef nonnull @_ZN12_GLOBAL__N_123CreateDefaultTimerGroup4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_10TimerGroupEE4callEPv) #22, !inline_history !0
  br label %_ZL20getDefaultTimerGroupv.exit

_ZL20getDefaultTimerGroupv.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.p
  %i.cr = load atomic ptr, ptr @_ZL17DefaultTimerGroup monotonic, align 8
  %.not = icmp eq ptr %0, %i.cr
  br i1 %.not, label %bb.s, label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %8 = phi i64 [ 0, %.lr.ph ], [ %i.da, %bb.q ]
  %.sroa.076.082 = phi ptr [ %i.p, %.lr.ph ], [ %i.db, %bb.q ] ; 4 uses
  %9 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.q ]
  %i.cs = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.cx, %bb.q ]
  %i.ct = load double, ptr %.sroa.076.082, align 8, !tbaa !80
  %i.cu = fadd double %i.ct, %9                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.076.082, i64 8
  %i.cw = load <2 x double>, ptr %i.cv, align 8, !tbaa !71
  %i.cx = fadd <2 x double> %i.cw, %i.cs          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.076.082, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !67
  %i.da = add nsw i64 %8, %i.cz                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.076.082, i64 96 ; 2 uses
  %.not79 = icmp eq ptr %i.db, %i.q
  br i1 %.not79, label %._crit_edge, label %bb.q

bb.r:                                             ; preds = %_ZL20getDefaultTimerGroupv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = load <2 x double>, ptr %10, align 8, !tbaa !71
  %12 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %11)
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.13, ptr %i.dc, align 8, !tbaa !75, !alias.scope !187
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJddEEE, i64 16), ptr %5, align 8, !tbaa !13, !alias.scope !187
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.lcssa, ptr %i.dd, align 8, !tbaa !77, !alias.scope !187
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %12, ptr %i.de, align 8, !tbaa !79, !alias.scope !187
  %i.df = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %5) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL20getDefaultTimerGroupv.exit
  %i.dg = load ptr, ptr %i.t, align 8, !tbaa !31  ; 3 uses
  %i.dh = load ptr, ptr %i.r, align 8, !tbaa !30
  %.not.i38 = icmp ult ptr %i.dg, %i.dh
  br i1 %.not.i38, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 10) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit40

bb.u:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dj, ptr %i.t, align 8, !tbaa !31
  store i8 10, ptr %i.dg, align 1, !tbaa !24
  br label %_ZN4llvh11raw_ostreamlsEc.exit40

_ZN4llvh11raw_ostreamlsEc.exit40:                 ; preds = %bb.t, %bb.u
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load double, ptr %13, align 8, !tbaa !73  ; 2 uses
  %i.dk = fcmp une double %14, 0.000000e+00
  %.pre97.pre101.pre104 = load ptr, ptr %i.t, align 8, !tbaa !31 ; 3 uses
  br i1 %i.dk, label %bb.v, label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.v:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit40
  %i.dl = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %.pre97.pre101.pre104 to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp ult i64 %i.do, 18
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.14, i64 noundef 18) #22 ; 0 uses
  %.pre97.pre101.pre = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.pre97.pre101.pre104, ptr noundef nonnull align 1 dereferenceable(18) @.str.14, i64 18, i1 false)
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 18 ; 2 uses
  store ptr %i.ds, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

_ZN4llvh11raw_ostreamlsEPKc.exit43:               ; preds = %bb.x, %bb.w, %_ZN4llvh11raw_ostreamlsEc.exit40
  %.pre97.pre101 = phi ptr [ %i.ds, %bb.x ], [ %.pre97.pre101.pre, %bb.w ], [ %.pre97.pre101.pre104, %_ZN4llvh11raw_ostreamlsEc.exit40 ] ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %16 = load double, ptr %15, align 8, !tbaa !72  ; 2 uses
  %i.dt = fcmp une double %16, 0.000000e+00
  br i1 %i.dt, label %bb.y, label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.du = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %.pre97.pre101 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, 18
  br i1 %i.dy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.15, i64 noundef 18) #22 ; 0 uses
  %.pre97.pre = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.pre97.pre101, ptr noundef nonnull align 1 dereferenceable(18) @.str.15, i64 18, i1 false)
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 18 ; 2 uses
  store ptr %i.eb, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

_ZN4llvh11raw_ostreamlsEPKc.exit46:               ; preds = %bb.aa, %bb.z, %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %.pre97 = phi ptr [ %i.eb, %bb.aa ], [ %.pre97.pre, %bb.z ], [ %.pre97.pre101, %_ZN4llvh11raw_ostreamlsEPKc.exit43 ] ; 3 uses
  %i.ec = fadd double %14, %16
  %i.ed = fcmp une double %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.ab, label %_ZN4llvh11raw_ostreamlsEPKc.exit49

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %.pre97 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp ult i64 %i.eh, 18
  br i1 %i.ei, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.16, i64 noundef 18) #22 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.pre97, ptr noundef nonnull align 1 dereferenceable(18) @.str.16, i64 18, i1 false)
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 18 ; 2 uses
  store ptr %i.el, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

_ZN4llvh11raw_ostreamlsEPKc.exit49:               ; preds = %bb.ad, %bb.ac, %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.em = phi ptr [ %i.el, %bb.ad ], [ %.pre, %bb.ac ], [ %.pre97, %_ZN4llvh11raw_ostreamlsEPKc.exit46 ] ; 2 uses
  %i.en = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ult i64 %i.eq, 18
  br i1 %i.er, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit49
  %i.es = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.17, i64 noundef 18) #22 ; 0 uses
  %.pre99.pre = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

bb.af:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.em, ptr noundef nonnull align 1 dereferenceable(18) @.str.17, i64 18, i1 false)
  %i.et = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 18 ; 2 uses
  store ptr %i.eu, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

_ZN4llvh11raw_ostreamlsEPKc.exit52:               ; preds = %bb.ae, %bb.af
  %.pre99 = phi ptr [ %.pre99.pre, %bb.ae ], [ %i.eu, %bb.af ] ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !67
  %.not25 = icmp eq i64 %18, 0
  br i1 %.not25, label %_ZN4llvh11raw_ostreamlsEPKc.exit55, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.ev = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %.pre99 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp ult i64 %i.ey, 11
  br i1 %i.ez, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.18, i64 noundef 11) #22 ; 0 uses
  %.pre98 = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.pre99, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.fb = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 11 ; 2 uses
  store ptr %i.fc, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

_ZN4llvh11raw_ostreamlsEPKc.exit55:               ; preds = %bb.ai, %bb.ah, %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.fd = phi ptr [ %i.fc, %bb.ai ], [ %.pre98, %bb.ah ], [ %.pre99, %_ZN4llvh11raw_ostreamlsEPKc.exit52 ] ; 2 uses
  %i.fe = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = icmp ult i64 %i.fh, 15
  br i1 %i.fi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit55
  %i.fj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.19, i64 noundef 15) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit58

bb.ak:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.fd, ptr noundef nonnull align 1 dereferenceable(15) @.str.19, i64 15, i1 false)
  %i.fk = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 15
  store ptr %i.fl, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit58

_ZN4llvh11raw_ostreamlsEPKc.exit58:               ; preds = %bb.aj, %bb.ak
  %i.fm = load ptr, ptr %i.c, align 8, !tbaa !60, !noalias !188 ; 2 uses
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !60, !noalias !189 ; 2 uses
  %.not8089 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not8089, label %._crit_edge92, label %.lr.ph91

._crit_edge92:                                    ; preds = %_ZN4llvh11raw_ostreamlsEc.exit67, %_ZN4llvh11raw_ostreamlsEPKc.exit58
  call void @_ZNK4llvh10TimeRecord5printERKS0_RNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.fo = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.fp = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = icmp ult i64 %i.fs, 7
  br i1 %i.ft, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge92
  %i.fu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.20, i64 noundef 7) #22 ; 0 uses
  %.pre100 = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit61

bb.am:                                            ; preds = %._crit_edge92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fp, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  %i.fv = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 7 ; 2 uses
  store ptr %i.fw, ptr %i.t, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit61

_ZN4llvh11raw_ostreamlsEPKc.exit61:               ; preds = %bb.al, %bb.am
  %i.fx = phi ptr [ %.pre100, %bb.al ], [ %i.fw, %bb.am ]
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !190
  %.not.i62 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i62, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit61
  call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #22
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit61, %bb.an
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !99  ; 3 uses
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !57  ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.gb, %i.ga
  br i1 %.not.i.i63, label %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11raw_ostream5flushEv.exit, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.go, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i.i ], [ %i.ga, %_ZN4llvh11raw_ostream5flushEv.exit ] ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !23 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !24
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !23 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !24
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #23
  br label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.go, %i.gb
  br i1 %.not.i.i.i.i64, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i.i.i
  store ptr %i.ga, ptr %i.c, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE5clearEv.exit: ; preds = %_ZN4llvh11raw_ostream5flushEv.exit, %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

.lr.ph91:                                         ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit58, %_ZN4llvh11raw_ostreamlsEc.exit67
  %.sroa.068.090 = phi ptr [ %i.gp, %_ZN4llvh11raw_ostreamlsEc.exit67 ], [ %i.fm, %_ZN4llvh11raw_ostreamlsEPKc.exit58 ] ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %.sroa.068.090, i64 -96 ; 3 uses
  call void @_ZNK4llvh10TimeRecord5printERKS0_RNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.gq = getelementptr inbounds i8, ptr %.sroa.068.090, i64 -32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !23
  %i.gs = getelementptr inbounds i8, ptr %.sroa.068.090, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !25
  %i.gu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.gr, i64 noundef %i.gt) #22 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !31 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !30
  %.not.i65 = icmp ult ptr %i.gw, %i.gy
  br i1 %.not.i65, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph91
  %i.gz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.gu, i8 noundef zeroext 10) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit67

bb.ap:                                            ; preds = %.lr.ph91
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.ha, ptr %i.gv, align 8, !tbaa !31
  store i8 10, ptr %i.gw, align 1, !tbaa !24
  br label %_ZN4llvh11raw_ostreamlsEc.exit67

_ZN4llvh11raw_ostreamlsEc.exit67:                 ; preds = %bb.ao, %bb.ap
  %.not80 = icmp eq ptr %i.gp, %i.fn
  br i1 %.not80, label %._crit_edge92, label %.lr.ph91
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh10TimerGroup18prepareToPrintListEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %2 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %3 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %4 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %5 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %6 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.015 = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %.not16 = icmp eq ptr %.015, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12emplace_backIJRNS0_10TimeRecordERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_EEERS2_DpOT_.exit14, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12emplace_backIJRNS0_10TimeRecordERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_EEERS2_DpOT_.exit14
  %.017 = phi ptr [ %.015, %.lr.ph ], [ %.0, %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12emplace_backIJRNS0_10TimeRecordERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_EEERS2_DpOT_.exit14 ] ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.017, i64 129 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !39, !range !55, !noundef !56
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12emplace_backIJRNS0_10TimeRecordERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_EEERS2_DpOT_.exit14

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.017, i64 128 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !40, !range !55, !noundef !56
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !196
  store i64 0, ptr %4, align 8, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !196
end_hunk_0
