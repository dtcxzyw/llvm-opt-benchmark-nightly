inline.NumInlined: 2561
inline.NumDeleted: 1220
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@__cxx_global_var_init:bb.a
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #26
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector11InspectorIo5StartESt10shared_ptrINS0_16MainThreadHandleEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS_15ExclusiveAccessINS_8HostPortENS_9MutexBaseINS_16LibuvMutexTraitsEEEEEERKNS_17InspectPublishUidE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 16  ; 3 uses
  %6 = alloca %"class.std::shared_ptr.19", align 16 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 9 uses
  %i.d = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.d, ptr %5, align 16
  %.not.i.i.i = icmp eq ptr %i.c, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4
  br label %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit

_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 8 uses
  %i.l = load <2 x ptr>, ptr %3, align 8
  store <2 x ptr> %i.l, ptr %6, align 16
  %.not.i.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i2, label %_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i3 = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit: ; preds = %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit
  call void @_ZN4node9inspector11InspectorIoC2ESt10shared_ptrINS0_16MainThreadHandleEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS_15ExclusiveAccessINS_8HostPortENS_9MutexBaseINS_16LibuvMutexTraitsEEEEEERKNS_17InspectPublishUidE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(2) %4)
  br label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @_ZN4node9inspector11InspectorIoC2ESt10shared_ptrINS0_16MainThreadHandleEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS_15ExclusiveAccessINS_8HostPortENS_9MutexBaseINS_16LibuvMutexTraitsEEEEEERKNS_17InspectPublishUidE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(2) %4)
  %i.r = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !28
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !28
  br label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i4 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.m, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ad = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.k ], [ %i.ad, %bb.l ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.m, label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !29
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !29
  br label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.aq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i6 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.r:                                             ; preds = %bb.p
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i8 = phi i32 [ %i.ai, %bb.q ], [ %i.as, %bb.r ]
  %i.at = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.at, label %bb.s, label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26
  br label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #26
  %i.ax = load ptr, ptr %i.av, align 8
  %i.ay = icmp eq ptr %i.ax, null
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.aw) #26
  br i1 %i.ay, label %_ZNKSt14default_deleteIN4node9inspector11InspectorIoEEclEPS2_.exit.i, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = ptrtoint ptr %i.a to i64
  br label %_ZNSt10unique_ptrIN4node9inspector11InspectorIoESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4node9inspector11InspectorIoEEclEPS2_.exit.i: ; preds = %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @_ZN4node9inspector11InspectorIoD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #29
  br label %_ZNSt10unique_ptrIN4node9inspector11InspectorIoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4node9inspector11InspectorIoESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN4node9inspector11InspectorIoEEclEPS2_.exit.i
  %.sink = phi i64 [ 0, %_ZNKSt14default_deleteIN4node9inspector11InspectorIoEEclEPS2_.exit.i ], [ %i.az, %.thread ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector11InspectorIoC2ESt10shared_ptrINS0_16MainThreadHandleEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS_15ExclusiveAccessINS_8HostPortENS_9MutexBaseINS_16LibuvMutexTraitsEEEEEERKNS_17InspectPublishUidE(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 50), (56, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = load ptr, ptr %1, align 8
  store ptr %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4
  br label %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit

_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %3, align 8
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  store ptr %i.q, ptr %i.o, align 8
  %.not.i.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3, label %_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i4 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.r, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4
  br label %_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit

_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit: ; preds = %_ZNSt10shared_ptrIN4node9inspector16MainThreadHandleEEC2ERKS3_.exit, %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i16, ptr %4, align 1
  store i16 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.aa = tail call noundef i32 @uv_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #26
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit, label %bb.h, !prof !30

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9MutexBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit: ; preds = %_ZNSt10shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEEEC2ERKS7_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ad = tail call noundef i32 @uv_cond_init(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #26
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit, label %bb.i, !prof !30

bb.i:                                             ; preds = %_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit: ; preds = %_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8
  %i.ah = load ptr, ptr %2, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 8 uses
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %bb.j, label %._crit_edge.i.i

bb.j:                                             ; preds = %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit
  %i.al = icmp slt i64 %i.aj, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.am = add nuw i64 %i.aj, 1                    ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.l
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #28 ; 2 uses
  store ptr %i.ao, ptr %i.af, align 8
  store i64 %i.aj, ptr %i.ag, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit
  %i.ap = phi ptr [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ag, %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit ] ; 3 uses
  switch i64 %i.aj, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.ah, align 1
  store i8 %i.aq, ptr %i.ap, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.n, %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.aj, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj
  store i8 0, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !31
  %i.au = call noundef zeroext i1 @_ZN7ncrypto6CSPRNGEPvm(ptr noundef nonnull %i.a, i64 noundef 16) #26, !noalias !31
  br i1 %i.au, label %bb.q, label %bb.p, !prof !30

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9inspector12_GLOBAL__N_110GenerateIDB5cxx11EvE20error_and_abort_args) #26, !noalias !31
  call void @abort() #27, !noalias !31
  unreachable

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !31
  %i.av = load i16, ptr %i.a, align 16, !noalias !31
  %i.aw = zext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !31
  %i.az = zext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bb = load i16, ptr %i.ba, align 4, !noalias !31
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %5 = load <2 x i16>, ptr %i.bd, align 2, !noalias !31
  %6 = and <2 x i16> %5, <i16 4095, i16 16383>
  %7 = or disjoint <2 x i16> %6, <i16 16384, i16 -32768> ; 2 uses
  %8 = extractelement <2 x i16> %7, i64 0
  %9 = zext nneg i16 %8 to i32
  %10 = extractelement <2 x i16> %7, i64 1
  %i.be = zext i16 %10 to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !31
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bj = load i16, ptr %i.bi, align 4, !noalias !31
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !31
  %i.bn = zext i16 %i.bm to i32
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 256, ptr noundef nonnull @.str.37, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bc, i32 noundef %9, i32 noundef %i.be, i32 noundef %i.bh, i32 noundef %i.bk, i32 noundef %i.bn) #26, !noalias !31 ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store ptr %i.bp, ptr %i.at, align 8, !alias.scope !31
  %i.bq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26, !noalias !31 ; 8 uses
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %bb.r, label %._crit_edge.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp slt i64 %i.bq, 0
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = add nuw i64 %i.bq, 1                    ; 2 uses
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.u:                                             ; preds = %bb.t
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.t
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #28 ; 2 uses
  store ptr %i.bv, ptr %i.at, align 8, !alias.scope !31
  store i64 %i.bq, ptr %i.bp, align 8, !alias.scope !31
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.q
  %i.bw = phi ptr [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.bp, %bb.q ] ; 3 uses
  switch i64 %i.bq, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZN4node9inspector12_GLOBAL__N_110GenerateIDB5cxx11Ev.exit
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = load i8, ptr %i.b, align 16, !noalias !31
  store i8 %i.bx, ptr %i.bw, align 1
  br label %_ZN4node9inspector12_GLOBAL__N_110GenerateIDB5cxx11Ev.exit

bb.w:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 16 %i.b, i64 %i.bq, i1 false)
  br label %_ZN4node9inspector12_GLOBAL__N_110GenerateIDB5cxx11Ev.exit

_ZN4node9inspector12_GLOBAL__N_110GenerateIDB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.v, %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.bq, ptr %i.by, align 8, !alias.scope !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bq
  store i8 0, ptr %i.bz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !31
  call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #26
  %i.ca = call i32 @uv_thread_create(ptr noundef nonnull %i.y, ptr noundef nonnull @_ZN4node9inspector11InspectorIo10ThreadMainEPv, ptr noundef nonnull %0) #26
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.y, label %bb.x, !prof !30

bb.x:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_110GenerateIDB5cxx11Ev.exit
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9inspector11InspectorIoC1ESt10shared_ptrINS0_16MainThreadHandleEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS_15ExclusiveAccessINS_8HostPortENS_9MutexBaseINS_16LibuvMutexTraitsEEEEEERKNS_17InspectPublishUidEE20error_and_abort_args) #26
  call void @abort() #27
  unreachable

bb.y:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_110GenerateIDB5cxx11Ev.exit
  call void @uv_cond_wait(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull %i.z) #26
  call void @uv_mutex_unlock(ptr noundef nonnull %i.z) #26
  ret void
}

declare i32 @uv_thread_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector11InspectorIo10ThreadMainEPv(ptr noundef nonnull %0) #0 align 2 {
bb.a:
  tail call void @_ZN4node9inspector11InspectorIo10ThreadMainEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  ret void
}

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector11InspectorIoD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.25", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  store ptr null, ptr %1, align 8
  call fastcc void @_ZN4node9inspector12RequestQueue4PostEiNS0_12_GLOBAL__N_115TransportActionESt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 0, i32 noundef 0, ptr noundef %1)
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #26, !inline_history !34
  br label %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = tail call i32 @uv_thread_join(ptr noundef nonnull %i.g) #26
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9inspector11InspectorIoD1EvE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @uv_cond_destroy(ptr noundef nonnull align 8 dereferenceable(48) %i.v) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @uv_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !28
  %i.ah = load ptr, ptr %i.y, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !28
  br label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.am, %bb.h ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.i, label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26
  br label %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN4node9inspector12RequestQueueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN4node15ExclusiveAccessINS0_8HostPortENS0_9MutexBaseINS0_16LibuvMutexTraitsEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
end_hunk_0
