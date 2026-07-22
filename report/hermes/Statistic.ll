inline.NumInlined: 661
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl6OptionD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #20
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh9Statistic17RegisterStatisticEv(ptr noundef nonnull align 8 dereferenceable(29) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 4, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @_ZL8StatLock acquire, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL8StatLock, ptr noundef nonnull @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv) #20
  br label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit: ; preds = %bb.b, %bb.c
  %i.e = load atomic ptr, ptr @_ZL8StatLock monotonic, align 8 ; 4 uses
  %i.f = load atomic ptr, ptr @_ZL8StatInfo acquire, align 8
  %.not.i4 = icmp eq ptr %i.f, null
  br i1 %.not.i4, label %bb.d, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL8StatInfo, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_113StatisticInfoEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_113StatisticInfoEE4callEPv) #20
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit: ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit, %bb.d
  %i.g = load atomic ptr, ptr @_ZL8StatInfo monotonic, align 8 ; 4 uses
  %i.h = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #20
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  %i.i = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(13) %i.e) #20 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

bb.f:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !16
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit: ; preds = %bb.e, %bb.f
  %i.m = load atomic i8, ptr %i.a monotonic, align 4, !range !14, !noundef !15
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 152), align 8, !tbaa !20, !range !14, !noundef !15
  %i.p = trunc nuw i8 %i.o to i1
  %.b = load i1, ptr @_ZL7Enabled, align 1
  %or.cond = select i1 %i.p, i1 true, i1 %.b
  br i1 %or.cond, label %bb.h, label %_ZN12_GLOBAL__N_113StatisticInfo12addStatisticEPN4llvh9StatisticE.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %i.r, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.q, align 8, !tbaa !26
  br label %_ZN12_GLOBAL__N_113StatisticInfo12addStatisticEPN4llvh9StatisticE.exit

bb.j:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !32   ; 4 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.k, label %_ZNKSt6vectorIPN4llvh9StatisticESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #21
  unreachable

_ZNKSt6vectorIPN4llvh9StatisticESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #22 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %0, ptr %i.ah, align 8, !tbaa !30
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.l, label %_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4llvh9StatisticESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4llvh9StatisticESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #23
  br label %_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ag, ptr %i.g, align 8, !tbaa !32
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_113StatisticInfo12addStatisticEPN4llvh9StatisticE.exit

_ZN12_GLOBAL__N_113StatisticInfo12addStatisticEPN4llvh9StatisticE.exit: ; preds = %_ZNSt6vectorIPN4llvh9StatisticESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.i, %bb.g
  store atomic i8 1, ptr %i.a release, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit, %_ZN12_GLOBAL__N_113StatisticInfo12addStatisticEPN4llvh9StatisticE.exit
  %i.al = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #20
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.e) #20 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !16
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !16
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit:     ; preds = %bb.p, %bb.o, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh16EnableStatisticsEb(i1 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  store i1 true, ptr @_ZL7Enabled, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh20AreStatisticsEnabledEv() local_unnamed_addr #4 {
bb.a:
  %.b = load i1, ptr @_ZL7Enabled, align 1
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 152), align 8, !range !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %.b, i1 true, i1 %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh15PrintStatisticsERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.llvh::format_object", align 16 ; 9 uses
  %i.c = load atomic ptr, ptr @_ZL8StatInfo acquire, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL8StatInfo, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_113StatisticInfoEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_113StatisticInfoEE4callEPv) #20
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit: ; preds = %bb.a, %bb.b
  %i.d = load atomic ptr, ptr @_ZL8StatInfo monotonic, align 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %.not65 = icmp eq ptr %i.f, %i.g
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = ptrtoint ptr %i.l to i64
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.val24.pre = load ptr, ptr %i.e, align 8, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  %.val24 = phi ptr [ %i.f, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit ], [ %.val24.pre, %._crit_edge.loopexit ]
  %.val = phi ptr [ %i.g, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit ], [ %i.dy, %._crit_edge.loopexit ]
  %.064.lcssa = phi i32 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit ], [ %.sroa.speculated54, %._crit_edge.loopexit ]
  %.063.lcssa = phi i32 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit ], [ %.sroa.speculated, %._crit_edge.loopexit ]
  call fastcc void @_ZN12_GLOBAL__N_113StatisticInfo4sortEv(ptr %.val, ptr %.val24)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 3
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.5, i64 noundef 3) #20
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.y, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !39
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 73, i8 noundef signext 45) #20
  %i.ac = load ptr, ptr %2, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.af = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.ac, i64 noundef %i.ae) #20 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, 4
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ao = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.af, ptr noundef nonnull @.str.6, i64 noundef 4) #20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i32 171785533, ptr %i.aj, align 1
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

_ZN4llvh11raw_ostreamlsEPKc.exit27:               ; preds = %bb.e, %bb.f
  %i.ar = phi ptr [ %.pre, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %.0.i.i26 = phi ptr [ %i.ao, %bb.e ], [ %i.af, %bb.f ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ult i64 %i.aw, 55
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit27
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i26, ptr noundef nonnull @.str.7, i64 noundef 55) #20 ; 2 uses
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.pre77 = load ptr, ptr %.phi.trans.insert76, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit30

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit27
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ar, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 55 ; 2 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit30

_ZN4llvh11raw_ostreamlsEPKc.exit30:               ; preds = %bb.g, %bb.h
  %i.bc = phi ptr [ %.pre77, %bb.g ], [ %i.bb, %bb.h ] ; 2 uses
  %.0.i.i29 = phi ptr [ %i.ay, %bb.g ], [ %.0.i.i26, %bb.h ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit30
  %i.bj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i29, ptr noundef nonnull @.str.5, i64 noundef 3) #20
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit33

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit30
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bc, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit33

_ZN4llvh11raw_ostreamlsEPKc.exit33:               ; preds = %bb.i, %bb.j
  %.0.i.i32 = phi ptr [ %i.bj, %bb.i ], [ %.0.i.i29, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !39
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 73, i8 noundef signext 45) #20
  %i.bo = load ptr, ptr %3, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !44
  %i.br = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i32, ptr noundef %i.bo, i64 noundef %i.bq) #20 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38 ; 2 uses
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.by, 5
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit33
  %i.ca = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.br, ptr noundef nonnull @.str.8, i64 noundef 5) #20 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bv, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 5
  store ptr %i.cc, ptr %i.bu, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

_ZN4llvh11raw_ostreamlsEPKc.exit36:               ; preds = %bb.k, %bb.l
  %i.cd = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bn
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36
  %i.cf = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ch = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ab
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !26  ; 2 uses
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3
  %.not2370 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not2370, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %5 = phi ptr [ %i.g, %.lr.ph ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  %.068 = phi i64 [ 0, %.lr.ph ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 3 uses
  %.06367 = phi i32 [ 0, %.lr.ph ], [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  %.06466 = phi i32 [ 0, %.lr.ph ], [ %.sroa.speculated54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.068
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load atomic i32, ptr %i.cy monotonic, align 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !46
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.db = zext i32 %i.cz to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %bb.m
  store i8 48, ptr %i.m, align 4, !tbaa !45, !noalias !46
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.111.i = phi ptr [ %i.df, %.lr.ph.i ], [ %i.l, %.lr.ph.i.preheader ]
  %.0810.i = phi i64 [ %i.dg, %.lr.ph.i ], [ %i.db, %.lr.ph.i.preheader ] ; 3 uses
  %i.dc = urem i64 %.0810.i, 10
  %i.dd = trunc nuw nsw i64 %i.dc to i8
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = getelementptr inbounds i8, ptr %.111.i, i64 -1 ; 3 uses
  store i8 %i.de, ptr %i.df, align 1, !tbaa !45, !noalias !46
  %i.dg = udiv i64 %.0810.i, 10
  %.not.i40 = icmp samesign ult i64 %.0810.i, 10
  br i1 %.not.i40, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread.i
  %.1.lcssa.i = phi ptr [ %i.m, %.thread.i ], [ %i.df, %.lr.ph.i ] ; 3 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !39, !alias.scope !46
  store i64 0, ptr %i.o, align 8, !tbaa !44, !alias.scope !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !46
  %i.dh = ptrtoint ptr %.1.lcssa.i to i64
  %i.di = sub i64 %i.p, %i.dh                     ; 4 uses
  store i64 %i.di, ptr %i.a, align 8, !tbaa !51, !noalias !46
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %bb.n, label %._crit_edge.i.i.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.dk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.dk, ptr %1, align 8, !tbaa !41, !alias.scope !46
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !46
  store i64 %i.dl, ptr %i.n, align 8, !tbaa !45, !alias.scope !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %._crit_edge.i
  %i.dm = phi ptr [ %i.dk, %bb.n ], [ %i.n, %._crit_edge.i ] ; 2 uses
  switch i64 %i.di, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZN4llvh6utostrB5cxx11Emb.exit
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.dn = load i8, ptr %.1.lcssa.i, align 1, !tbaa !45, !noalias !46
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !45
  br label %_ZN4llvh6utostrB5cxx11Emb.exit

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %.1.lcssa.i, i64 %i.di, i1 false)
  br label %_ZN4llvh6utostrB5cxx11Emb.exit

_ZN4llvh6utostrB5cxx11Emb.exit:                   ; preds = %._crit_edge.i.i.i, %bb.o, %bb.p
  %i.do = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !46 ; 2 uses
  store i64 %i.do, ptr %i.o, align 8, !tbaa !44, !alias.scope !46
  %i.dp = load ptr, ptr %1, align 8, !tbaa !41, !alias.scope !46
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !46
  %i.dr = load i64, ptr %i.o, align 8, !tbaa !44  ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %.sroa.speculated54 = call i32 @llvm.umax.i32(i32 %.06466, i32 %i.ds) ; 2 uses
  %i.dt = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.n
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42: ; preds = %_ZN4llvh6utostrB5cxx11Emb.exit
  %i.dv = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZN4llvh6utostrB5cxx11Emb.exit
  %i.dw = load i64, ptr %i.n, align 8, !tbaa !45
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !32  ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.068
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !30
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52
  %i.ec = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eb) #24
  %i.ed = trunc i64 %i.ec to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.06367, i32 %i.ed) ; 2 uses
  %i.ee = add i64 %.068, 1                        ; 2 uses
  %.not = icmp eq i64 %i.ee, %i.k
  br i1 %.not, label %._crit_edge.loopexit, label %bb.m, !llvm.loop !58

._crit_edge73:                                    ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !38  ; 3 uses
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !34
  %.not.i45 = icmp ult ptr %i.ef, %i.eg
  br i1 %.not.i45, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge73
  %i.eh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 10) #20 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.r:                                             ; preds = %._crit_edge73
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store ptr %i.ei, ptr %i.s, align 8, !tbaa !38
  store i8 10, ptr %i.ef, align 1, !tbaa !45
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.q, %bb.r
  %i.ej = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !59
  %.not.i46 = icmp eq ptr %i.ej, %i.el
  br i1 %.not.i46, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %bb.s
  ret void

bb.t:                                             ; preds = %.lr.ph72, %bb.t
  %.02271 = phi i64 [ 0, %.lr.ph72 ], [ %i.ev, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.02271
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !30 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load atomic i32, ptr %i.ep monotonic, align 4
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !52
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !60
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJjjjPKcS2_EEE, i64 16), ptr @.str.9>, ptr %4, align 16, !alias.scope !61
  store ptr %i.et, ptr %i.cr, align 16, !tbaa !64, !alias.scope !61
  store ptr %i.er, ptr %i.cs, align 8, !tbaa !66, !alias.scope !61
  store i32 %.063.lcssa, ptr %i.ct, align 16, !tbaa !68, !alias.scope !61
  store i32 %i.eq, ptr %i.cu, align 4, !tbaa !70, !alias.scope !61
  store i32 %.064.lcssa, ptr %i.cv, align 8, !tbaa !72, !alias.scope !61
  %i.eu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ev = add i64 %.02271, 1                      ; 2 uses
  %.not23 = icmp eq i64 %i.ev, %i.cq
  br i1 %.not23, label %._crit_edge73, label %bb.t, !llvm.loop !74
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113StatisticInfo4sortEv(ptr %.0.val, ptr %.8.val) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %.0.val, %.8.val
  br i1 %i.a, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEEZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EvT_SD_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.m, %select.unfold.i.i.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #25 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.k = icmp eq i64 %.010.i.i.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 3 uses
  %i.n = icmp eq i64 %i.g, %.sroa.4.0.i.i
  br i1 %i.n, label %bb.c, label %bb.d, !prof !76

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.o = getelementptr inbounds [8 x i8], ptr %.0.val, i64 %i.g ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_T0_T1_"(ptr %.0.val, ptr %i.o, ptr noundef %.sroa.10.0.i.i)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_T0_T1_"(ptr %i.o, ptr %.8.val, ptr noundef %.sroa.10.0.i.i)
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 3
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_SG_T0_SH_T1_T2_"(ptr %.0.val, ptr %i.o, ptr %.8.val, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.10.0.i.i)
  br label %bb.g

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.s = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.s, label %bb.e, label %bb.f, !prof !77

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_T0_"(ptr %.0.val, ptr %.8.val)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_T0_T1_T2_"(ptr %.0.val, ptr %.8.val, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.t = shl i64 %.sroa.4.0.i.i, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i, i64 noundef %i.t) #20
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEEZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EvT_SD_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEEZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EvT_SD_T0_.exit": ; preds = %bb.a, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh19PrintStatisticsJSONERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL8StatLock acquire, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL8StatLock, ptr noundef nonnull @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv) #20
  br label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit: ; preds = %bb.a, %bb.b
  %i.b = load atomic ptr, ptr @_ZL8StatLock monotonic, align 8 ; 4 uses
  %i.c = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #20
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit
  %i.d = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(13) %i.b) #20 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !16
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit: ; preds = %bb.c, %bb.d
  %i.h = load atomic ptr, ptr @_ZL8StatInfo acquire, align 8
  %.not.i16 = icmp eq ptr %i.h, null
  br i1 %.not.i16, label %bb.e, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

bb.e:                                             ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL8StatInfo, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_113StatisticInfoEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_113StatisticInfoEE4callEPv) #20
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit: ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit, %bb.e
  %i.i = load atomic ptr, ptr @_ZL8StatInfo monotonic, align 8 ; 3 uses
  %.val = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val15 = load ptr, ptr %i.j, align 8, !tbaa !33
  tail call fastcc void @_ZN12_GLOBAL__N_113StatisticInfo4sortEv(ptr %.val, ptr %.val15)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 2
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  %i.s = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.10, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_113StatisticInfoENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  store i16 2683, ptr %i.n, align 1
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store ptr %i.u, ptr %i.m, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !33   ; 3 uses
end_hunk_0
