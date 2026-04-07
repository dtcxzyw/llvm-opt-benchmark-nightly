inline.NumInlined: 101
inline.NumDeleted: 75
begin_hunk_0_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_St8functionIFbvEE:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13
  br label %_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_St8functionIFbvEE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.j ], [ %i.ag, %bb.k ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.l, label %_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
end_hunk_3
begin_hunk_4_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb:bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !33
  store <2 x ptr> %i.c, ptr %6, align 16, !tbaa !32
  store ptr null, ptr %1, align 8, !tbaa !34
  %i.d = load i64, ptr %3, align 8, !tbaa !50
  store i64 %i.d, ptr %7, align 8, !tbaa !50
  store ptr null, ptr %3, align 8, !tbaa !50
  invoke void @_ZN8facebook6hermes7tracing24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISC_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(269) %2, ptr noundef nonnull %7, i1 noundef zeroext %4)
          to label %bb.b unwind label %bb.i

end_hunk_4
begin_hunk_5_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb:bb.a
  br label %_ZNSt10unique_ptrIN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook3jsi7RuntimeEEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS7_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNKSt14default_deleteIN8facebook6hermes7tracing20TracingHermesRuntimeEEclEPS3_.exit.i
  %i.f = load ptr, ptr %7, align 8, !tbaa !50     ; 3 uses
  %.not.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh11raw_ostreamEEclEPS1_.exit.i

end_hunk_5
begin_hunk_6_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.f) #13
  br label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvh11raw_ostreamEEclEPS1_.exit.i
end_hunk_6
begin_hunk_7_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb:bb.a
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #13
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #13
  br label %_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt12__shared_ptrIN8facebook6hermes13HermesRuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #13
end_hunk_8
begin_hunk_9_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.z, %bb.i ]
  %i.ab = load ptr, ptr %7, align 8, !tbaa !50    ; 3 uses
  %.not.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN4llvh11raw_ostreamEEclEPS1_.exit.i7

end_hunk_9
begin_hunk_10_@_ZN8facebook6hermes24makeTracingHermesRuntimeESt10shared_ptrINS0_13HermesRuntimeEERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISB_EEb:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.ab) #13
  br label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.k, %_ZNKSt14default_deleteIN4llvh11raw_ostreamEEclEPS1_.exit.i7
end_hunk_10
begin_hunk_11_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #13
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
end_hunk_11
begin_hunk_12_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #13
end_hunk_12
begin_hunk_13_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_13
begin_hunk_14_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_14
begin_hunk_15_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !42     ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = icmp eq ptr %i.a, null
end_hunk_15
begin_hunk_16_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E:bb.a
  store i32 1, ptr %i.f, align 4, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !55
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread
end_hunk_16
begin_hunk_17_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13
  br label %bb.i

bb.e:                                             ; preds = %bb.c
end_hunk_17
begin_hunk_18_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13
end_hunk_18
begin_hunk_19_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
end_hunk_19
begin_hunk_20_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13
end_hunk_20
begin_hunk_21_@_ZNSt19_Sp_counted_deleterIPN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN8facebook6hermes7tracing20TracingHermesRuntimeEEclEPS3_.exit, label %bb.b

end_hunk_21
begin_hunk_22_@_ZNSt19_Sp_counted_deleterIPN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN8facebook6hermes7tracing20TracingHermesRuntimeEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

end_hunk_22
begin_hunk_23_@strcmp
!46 = !{!45, !4, i64 12}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !6, i64 0}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !18, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !30, i64 8}
!54 = !{!"p1 _ZTSN8facebook3jsi7RuntimeE", !18, i64 0}
!55 = !{!56, !43, i64 0}
!56 = !{!"_ZTSNSt19_Sp_counted_deleterIPN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !43, i64 0}
!57 = !{!58, !43, i64 16}
!58 = !{!"_ZTSSt19_Sp_counted_deleterIPN8facebook6hermes7tracing20TracingHermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0, !56, i64 16}
!59 = !{!60, !17, i64 8}
!60 = !{!"_ZTSSt9type_info", !17, i64 8}
end_hunk_23
