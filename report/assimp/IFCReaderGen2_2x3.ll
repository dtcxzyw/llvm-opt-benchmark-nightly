Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCReaderGen2_2x3?download=true
inline.NumInlined: 1461
inline.NumDeleted: 397
begin_hunk_0_@_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x317IfcAxis1PlacementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_:bb.a
  %.pn.pn43 = phi { ptr, i32 } [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn.pn43.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.al) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn.pn42 = phi { ptr, i32 } [ %.pn.pn43, %bb.r ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ac

bb.t:                                             ; preds = %_ZN6Assimp4STEP14GenericConvertINS0_5MaybeINS0_4LazyINS_3IFC10Schema_2x312IfcDirectionEEEEEEEvRT_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE.exit, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.bl = load ptr, ptr %i.t, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bm, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4
  %i.br = load ptr, ptr %i.bl, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #20, !inline_history !0
  %i.bu = load ptr, ptr %i.bl, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #20, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.x ], [ %i.bz, %bb.y ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.z, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !8

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  %i.cb = add i64 %i.a, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i64 %i.cb

bb.aa:                                            ; preds = %bb.s, %bb.l
  %.merged30 = phi { ptr, i32 } [ %i.af, %bb.l ], [ %.pn.pn42, %bb.s ]
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.aa
  %.merged = phi { ptr, i32 } [ %.pn2839, %bb.f ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.merged30, %bb.aa ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.merged

bb.ac:                                            ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #23
  unreachable

bb.ad:                                            ; preds = %bb.p, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x324IfcElectricApplianceTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x319IfcFlowTerminalTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x313IfcSensorTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x333IfcDistributionControlElementTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x320IfcFurnishingElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcProtectiveDeviceTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcFlowControllerTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x319IfcZShapeProfileDefEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x326IfcParameterizedProfileDefEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x322IfcScheduleTimeControlEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcControlEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x320IfcRepresentationMapEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::STEP::InternGenericConvert.891", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 17
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.at unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.023 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %4, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.023, label %bb.f, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.023, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4370 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #20
  br label %bb.ar

bb.g:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !noalias !129 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !129 ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !noalias !129
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !noalias !129
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !noalias !129
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4, !noalias !129 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.i.i.i.i.i47 = icmp eq ptr %i.s, %i.aa
  br i1 %.not.i.i.i.i.i47, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread102, label %bb.k

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread:    ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.q, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i.i.i.i47100 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i47100, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.k:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.ae, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.pr.i.i.i.i.i = load ptr, ptr %i.z, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i
  %10 = phi ptr [ %i.s, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ null, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ]
  %i.aj = phi ptr [ %i.z, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.ac, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ]
  %i.ak = phi ptr [ %.pr.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.ad, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not8.i.i.i.i.i, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !1
  %i.at = load ptr, ptr %i.ak, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !1
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

bb.p:                                             ; preds = %bb.n
  %i.aw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.q ], [ %i.ay, %bb.r ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.s, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, !prof !8

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s
  store ptr %10, ptr %i.aj, align 8
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread102

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread102: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread102
  store i32 0, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.be, align 4
  %i.bf = load ptr, ptr %i.s, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !0
  %i.bi = load ptr, ptr %i.s, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread102
  %i.bl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.v ], [ %i.bn, %bb.w ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.x, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !8

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.bp = load ptr, ptr %i.a, align 8, !noalias !130 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !130 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.bq, align 8, !noalias !130
  store <2 x ptr> %i.bu, ptr %6, align 16, !alias.scope !130
  %.not.i.i.i.i48 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i48, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !noalias !130
  %.not.i.i.i.i.i49 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i49, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = load i32, ptr %i.bv, align 4, !noalias !130
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !noalias !130
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50

bb.aa:                                            ; preds = %bb.y
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !130 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50:         ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z, %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x317IfcRepresentationEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(392) %0)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.cb = load ptr, ptr %i.br, align 8            ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20, !inline_history !0
  %i.ck = load ptr, ptr %i.cb, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

bb.ae:                                            ; preds = %bb.ac
  %i.cn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i58 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.ag:                                            ; preds = %bb.ae
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i60 = phi i32 [ %i.cf, %bb.af ], [ %i.cp, %bb.ag ]
  %i.cq = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.cq, label %bb.ah, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, !prof !8

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i64 2

bb.ai:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.cs = extractvalue { ptr, i32 } %i.cr, 1
  %i.ct = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.cv = extractvalue { ptr, i32 } %i.cr, 0
  %i.cw = call ptr @__cxa_begin_catch(ptr %i.cv) #20 ; 2 uses
  %i.cx = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.cy = load ptr, ptr %i.cw, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.at unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %bb.aj
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.de = load ptr, ptr %7, align 8               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.an
  %i.dh = load i64, ptr %i.df, align 8
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.dj = load ptr, ptr %8, align 8               ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread: ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %8, align 8               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x317IfcOpeningElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_:bb.a
bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %.pn13, %bb.f ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn12

bb.h:                                             ; preds = %bb.a
  ret i64 %i.a

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x328IfcFeatureElementSubtractionEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x318IfcLightSourceSpotEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x324IfcLightSourcePositionalEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x324IfcLightSourcePositionalEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x315IfcTendonAnchorEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcReinforcingElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcReinforcingElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x332IfcElectricFlowStorageDeviceTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x330IfcDistributionFlowElementTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x39IfcSphereEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x317IfcCsgPrimitive3DEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x313IfcDamperTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcFlowControllerTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcProjectOrderRecordEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcControlEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x329IfcDistributionChamberElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x326IfcDistributionFlowElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcMechanicalFastenerEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x311IfcFastenerEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x311IfcFastenerEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x328IfcRectangularTrimmedSurfaceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcSurfaceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x37IfcZoneEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x38IfcGroupEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcFanTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcFlowMovingDeviceTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcFlowMovingDeviceTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x315IfcGeometricSetEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x330IfcGeometricRepresentationItemEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcFillAreaStyleTilesEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x330IfcGeometricRepresentationItemEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x319IfcCableSegmentTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x318IfcFlowSegmentTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x325IfcRelOverridesPropertiesEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x325IfcRelDefinesByPropertiesEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x325IfcRelDefinesByPropertiesEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x318IfcMeasureWithUnitEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 17
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.aq unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.023 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %3, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.023, label %bb.f, label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.023, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4382 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #20
  br label %bb.ap

bb.g:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !noalias !135 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !135 ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !noalias !135
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !noalias !135
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !noalias !135
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4, !noalias !135 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.i.i.i.i.i47 = icmp eq ptr %i.s, %i.aa
  br i1 %.not.i.i.i.i.i47, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread98, label %bb.k

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread:    ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.q, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i.i.i.i4796 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i4796, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.k:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.ae, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.pr.i.i.i.i.i = load ptr, ptr %i.z, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i
  %5 = phi ptr [ %i.s, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ null, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ]
  %i.aj = phi ptr [ %i.z, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.ac, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ]
  %i.ak = phi ptr [ %.pr.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.ad, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not8.i.i.i.i.i, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !1
  %i.at = load ptr, ptr %i.ak, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20, !inline_history !1
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

bb.p:                                             ; preds = %bb.n
  %i.aw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.q ], [ %i.ay, %bb.r ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.s, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, !prof !8

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s
  store ptr %5, ptr %i.aj, align 8
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread98

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread98: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread98
  store i32 0, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.be, align 4
  %i.bf = load ptr, ptr %i.s, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !0
  %i.bi = load ptr, ptr %i.s, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit.thread98
  %i.bl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.v ], [ %i.bn, %bb.w ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.x, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !8

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  %i.bp = load ptr, ptr %i.a, align 8, !noalias !136 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !136 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !136 ; 12 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.bt, null       ; 2 uses
  br i1 %.not.i.i.i.i48, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50.thread, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !noalias !136
  %.not.i.i.i.i.i49 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i49, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = load i32, ptr %i.bu, align 4, !noalias !136
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bu, align 4, !noalias !136
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50

bb.aa:                                            ; preds = %bb.y
  %i.by = atomicrmw volatile add ptr %i.bu, i32 1 acq_rel, align 4, !noalias !136 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50:         ; preds = %bb.z, %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.br, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not.i.i.i.i.i51 = icmp eq ptr %i.bt, %i.cb
  br i1 %.not.i.i.i.i.i51, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62.thread102, label %bb.ab

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50.thread:  ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.br, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i.i.i.i.i5199 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i5199, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i56

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.cg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i53 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i53, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i32, ptr %i.cf, align 4
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cf, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i54

bb.ad:                                            ; preds = %bb.ab
  %i.cj = atomicrmw volatile add ptr %i.cf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i54

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i54: ; preds = %bb.ad, %bb.ac
  %.pr.i.i.i.i.i55 = load ptr, ptr %i.ca, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i56: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i54
  %6 = phi ptr [ %i.bt, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i54 ], [ null, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50.thread ]
  %i.ck = phi ptr [ %i.ca, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i54 ], [ %i.cd, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50.thread ]
  %i.cl = phi ptr [ %.pr.i.i.i.i.i55, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i54 ], [ %i.ce, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50.thread ] ; 8 uses
  %.not8.i.i.i.i.i57 = icmp eq ptr %i.cl, null
  br i1 %.not8.i.i.i.i.i57, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cm, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %i.cl, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !1
  %i.cu = load ptr, ptr %i.cl, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !1
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62

bb.ag:                                            ; preds = %bb.ae
  %i.cx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i.i.i58 = icmp eq i8 %i.cx, 0
  br i1 %.not.i9.i.i.i.i.i58, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59

bb.ai:                                            ; preds = %bb.ag
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i60 = phi i32 [ %i.cp, %bb.ah ], [ %i.cz, %bb.ai ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i.i60, 1
  br i1 %i.da, label %bb.aj, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62, !prof !8

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i56, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i59, %bb.aj
  store ptr %6, ptr %i.ck, align 8
  br i1 %.not.i.i.i.i48, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62.thread102

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62.thread102: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62.thread102
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.bt, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #20, !inline_history !0
  %i.dj = load ptr, ptr %i.bt, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #20, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73

bb.al:                                            ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62.thread102
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i70 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i70, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71

bb.an:                                            ; preds = %bb.al
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i72 = phi i32 [ %i.de, %bb.am ], [ %i.do, %bb.an ]
  %i.dp = icmp eq i32 %.0.i.i.i.i72, 1
  br i1 %i.dp, label %bb.ao, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73, !prof !8

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit50.thread, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit62, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71, %bb.ao
  ret i64 2

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.merged = phi { ptr, i32 } [ %.pn4382, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.merged

bb.aq:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x311IfcSlabTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x322IfcBuildingElementTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x314IfcServiceLifeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcControlEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x316IfcFurnitureTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x314IfcElementTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x311IfcCostItemEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x310IfcControlEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x318IfcReinforcingMeshEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x321IfcReinforcingElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcFacetedBrepWithVoidsEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x320IfcManifoldSolidBrepEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x320IfcManifoldSolidBrepEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x318IfcGasTerminalTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x319IfcFlowTerminalTypeEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x37IfcPileEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x318IfcBuildingElementEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x335IfcFillAreaStyleTileSymbolWithStyleEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x330IfcGeometricRepresentationItemEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x331IfcConstructionMaterialResourceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcConstructionResourceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcConstructionResourceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x328IfcAnnotationCurveOccurrenceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcAnnotationOccurrenceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

declare noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcAnnotationOccurrenceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x317IfcDimensionCurveEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x323IfcAnnotationOccurrenceEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x320IfcGeometricCurveSetEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x330IfcGeometricRepresentationItemEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x316IfcRelAggregatesEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef i64 @_ZN6Assimp4STEP11GenericFillINS_3IFC10Schema_2x316IfcRelDecomposesEEEmRKNS0_2DBERKNS0_7EXPRESS4LISTEPT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 96
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1
