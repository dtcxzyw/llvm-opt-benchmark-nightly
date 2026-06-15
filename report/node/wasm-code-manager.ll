inline.NumInlined: 5606
inline.NumDeleted: 3138
begin_hunk_0_@_ZNK2v88internal4wasm8WasmCode9DebugNameB5cxx11Ev:bb.a
  %i.ap = sub nuw i64 %i.am, %i.an                ; 4 uses
  %i.aq = sub i64 9223372036854775807, %i.an
  %i.ar = icmp ult i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i19

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #34
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i19: ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ad                ; 2 uses
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i19
  %i.au = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.au)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i19
  %i.av = load i64, ptr %i.ad, align 8
  %i.aw = select i1 %i.at, i64 15, i64 %i.av
  %.not.i.i.i.i21 = icmp ult i64 %i.aw, %i.am
  br i1 %.not.i.i.i.i21, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i22

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.an, i64 noundef 0, ptr noundef null, i64 noundef %i.ap)
  %.pre.i.i24 = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i22: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20
  %i.ax = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i20 ], [ %.pre.i.i24, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.an ; 2 uses
  %cond.i.i.i.i23 = icmp eq i64 %i.ap, 1
  br i1 %cond.i.i.i.i23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i22
  store i8 0, ptr %i.ay, align 1
  br label %.sink.split.i.i18

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i22
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.ap, i1 false)
  br label %.sink.split.i.i18

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.az = icmp ugt i64 %i.an, %i.am
  br i1 %i.az, label %.sink.split.i.i18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

.sink.split.i.i18:                                ; preds = %bb.i, %bb.h, %bb.g
  store i64 %i.am, ptr %i.ae, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.am
  store i8 0, ptr %i.bb, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

bb.j:                                             ; preds = %bb.b
  %i.bc = extractvalue { ptr, i64 } %i.ab, 0
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bc, i64 noundef %i.ac) ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25: ; preds = %.sink.split.i.i18, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16, %._crit_edge.i.i12, %._crit_edge.i.i9, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Sp_locker", align 1  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !12
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull %i.a) #31, !noalias !12
  %i.b = load ptr, ptr %i.a, align 8, !noalias !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !noalias !12 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !noalias !12
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !noalias !12
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !noalias !12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !12 ; 0 uses
  br label %bb.e

_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit: ; preds = %bb.a
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %1) #31, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !12
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %1) #31, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !12
  %i.m = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.t, align 4
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !17
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !17
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.j, label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !11

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ae = phi i64 [ %i.l, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit ], [ %i.o, %bb.f ], [ %i.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.o, %bb.j ]
  %i.af = phi ptr [ %i.j, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit ], [ %i.m, %bb.f ], [ %i.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.m, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.af, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

declare i64 @_ZN2v88internal4wasm20LazilyGeneratedNames18LookupFunctionNameENS1_15ModuleWireBytesEj(ptr noundef nonnull align 8 dereferenceable(56), ptr, i64, i32 noundef) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK2v88internal4wasm15ModuleWireBytes13GetNameOrNullENS1_12WireBytesRefE(ptr noundef nonnull align 8 dereferenceable(16), i64) local_unnamed_addr #6

declare noundef i32 @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr, i64, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm8WasmCode7LogCodeEPNS0_7IsolateEPKci(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"struct.v8::internal::wasm::ModuleWireBytes", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, 7
  %.not27 = icmp eq i8 %i.f, 2
  br i1 %.not27, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNK2v88internal4wasm8WasmCode9DebugNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.g = load ptr, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = load ptr, ptr %0, align 8                ; 4 uses
  %.not28 = icmp eq ptr %i.j, null
  br i1 %.not28, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.l, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 59728
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.p = load ptr, ptr %i.o, align 8
  %.not29 = icmp eq ptr %i.p, null
  %9 = load i32, ptr %8, align 4
  %.not29.a = icmp eq i32 %9, 0
  %or.cond = select i1 %.not29, i1 %.not29.a, i1 false
  br i1 %or.cond, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 776
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 0
  %i.t = icmp eq ptr %i.n, null
  %or.cond.not = or i1 %i.t, %i.s
  br i1 %or.cond.not, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 772
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.v = call { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %i.j) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  store ptr %i.w, ptr %6, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.x, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.05.0.copyload = load i64, ptr %i.u, align 4
  %i.y = call { ptr, i64 } @_ZNK2v88internal4wasm15ModuleWireBytes13GetNameOrNullENS1_12WireBytesRefE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %.sroa.05.0.copyload) #31 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ab, ptr %7, align 8
  %i.ac = icmp eq ptr %i.z, null
  %i.ad = icmp ne i64 %i.aa, 0
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.86) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp ugt i64 %i.aa, 15
  br i1 %i.ae, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp slt i64 %i.aa, 0
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #34
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ag = add nuw i64 %i.aa, 1                    ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !11

bb.l:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.k
  %i.ai = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #33 ; 2 uses
  store ptr %i.ai, ptr %7, align 8
  store i64 %i.aa, ptr %i.ab, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.h
  %i.aj = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ab, %bb.h ] ; 3 uses
  switch i64 %i.aa, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.z, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.z, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aa, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8
  %i.au = load ptr, ptr %7, align 8
  %i.av = call ptr %i.n(ptr noundef nonnull %1, ptr noundef %i.au) #31
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33, !noalias !18 ; 2 uses
  call void @_ZN2v88internal4wasm19WasmModuleSourceMapC1EPNS_7IsolateENS_5LocalINS_6StringEEE(ptr noundef nonnull align 8 dereferenceable(97) %i.ax, ptr noundef nonnull %1, ptr %i.av) #31, !noalias !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 232 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EED2Ev.exit, label %_ZN2v88internal4wasm12NativeModule16SetWasmSourceMapESt10unique_ptrINS1_19WasmModuleSourceMapESt14default_deleteIS4_EE.exit

_ZN2v88internal4wasm12NativeModule16SetWasmSourceMapESt10unique_ptrINS1_19WasmModuleSourceMapESt14default_deleteIS4_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  call void @_ZNKSt14default_deleteIN2v88internal4wasm19WasmModuleSourceMapEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.az)
  br label %_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88internal4wasm12NativeModule16SetWasmSourceMapESt10unique_ptrINS1_19WasmModuleSourceMapESt14default_deleteIS4_EE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  store ptr %i.ao, ptr %i.an, align 8
  %i.ba = load i32, ptr %i.ar, align 8
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.ar, align 8
  %i.bc = load ptr, ptr %i.ap, align 8
  %.not.i = icmp eq ptr %i.bc, %i.aq
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.o, !prof !10

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EED2Ev.exit
  store ptr %i.aq, ptr %i.ap, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %1) #31
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.o, %_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EED2Ev.exit
  %i.bd = load ptr, ptr %7, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ab
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit
  %i.bf = load i64, ptr %i.ab, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 58736
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(168) %i.bo) #31
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = load ptr, ptr %i.bh, align 8
  %i.bx = load i32, ptr %i.bi, align 4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by
  %i.ca = load i32, ptr %i.bj, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.bk, align 8
  %i.ce = sext i32 %i.cd to i64
  call void @_ZN2v88internal12V8FileLogger30WasmCodeLinePosInfoRecordEventEmNS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(168) %i.bo, i64 noundef %i.bv, ptr %i.cc, i64 %i.ce) #31
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.cf = load i32, ptr %i.a, align 8             ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 216
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  %i.cl = sext i32 %i.cf to i64
  %i.cm = load ptr, ptr %i.ck, align 8
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i32 [ 0, %bb.s ], [ %i.cp, %bb.t ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 59504
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #31
  %i.ct = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq ptr %i.ct, %i.cv
  br i1 %i.cw, label %_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagEPKNS0_4wasm8WasmCodeENS_4base6VectorIKcEEPSA_ii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.cx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i
  %.sroa.010.014.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %i.dd, %bb.v ] ; 2 uses
  %i.cy = load ptr, ptr %.sroa.010.014.i, align 8 ; 2 uses
  %i.cz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  store i64 %i.cz, ptr %4, align 8
  %i.da = load ptr, ptr %i.cy, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i8 noundef zeroext 3, ptr noundef nonnull %0, ptr %i.g, i64 %i.i, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %4, i32 noundef %.0, i32 noundef %3) #31, !inline_history !21
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 8 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cv
  br i1 %i.de, label %_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagEPKNS0_4wasm8WasmCodeENS_4base6VectorIKcEEPSA_ii.exit, label %bb.v

_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagEPKNS0_4wasm8WasmCodeENS_4base6VectorIKcEEPSA_ii.exit: ; preds = %bb.v, %bb.u
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.df = load ptr, ptr %5, align 8               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagEPKNS0_4wasm8WasmCodeENS_4base6VectorIKcEEPSA_ii.exit
  %i.di = load i64, ptr %i.dg, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagEPKNS0_4wasm8WasmCodeENS_4base6VectorIKcEEPSA_ii.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK2v88internal4wasm12NativeModule16GetWasmSourceMapEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12NativeModule16SetWasmSourceMapESt10unique_ptrINS1_19WasmModuleSourceMapESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.b = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EEaSEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIN2v88internal4wasm19WasmModuleSourceMapEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.c)
  br label %_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN2v88internal4wasm19WasmModuleSourceMapESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN2v88internal12V8FileLogger30WasmCodeLinePosInfoRecordEventEmNS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm8WasmCode22IsProtectedInstructionEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %1, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f
  %i.m = ashr i64 %i.e, 2                         ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRS4_S9_EEEET_SD_SD_RKT0_T1_.exit.i

_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi ptr [ %.1.i.i, %_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.01116.i.i = phi i64 [ %.112.i.i, %_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.o = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.017.i.i, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp ult i32 %i.q, %i.k                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = xor i64 %i.o, -1
  %i.u = add nsw i64 %.01116.i.i, %i.t
  %.112.i.i = select i1 %i.r, i64 %i.u, i64 %i.o  ; 2 uses
  %.1.i.i = select i1 %i.r, ptr %i.s, ptr %.017.i.i ; 2 uses
  %i.v = icmp sgt i64 %.112.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRS4_S9_EEEET_SD_SD_RKT0_T1_.exit.i, !llvm.loop !22

_ZSt13__lower_boundIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRS4_S9_EEEET_SD_SD_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.1.i.i, %_ZSt9__advanceIPKN2v88internal12trap_handler24ProtectedInstructionDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.lcssa.i.i, %i.l
  br i1 %.not.i, label %_ZSt13binary_searchIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_PFbRS4_S6_EEbT_S9_RKT0_T1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt13__lower_boundIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRS4_S9_EEEET_SD_SD_RKT0_T1_.exit.i
  %i.w = load i32, ptr %.0.lcssa.i.i, align 4
  %i.x = icmp ule i32 %i.w, %i.k
  br label %_ZSt13binary_searchIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_PFbRS4_S6_EEbT_S9_RKT0_T1_.exit

_ZSt13binary_searchIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_PFbRS4_S6_EEbT_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRS4_S9_EEEET_SD_SD_RKT0_T1_.exit.i, %bb.b
  %i.y = phi i1 [ false, %_ZSt13__lower_boundIPKN2v88internal12trap_handler24ProtectedInstructionDataES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRS4_S9_EEEET_SD_SD_RKT0_T1_.exit.i ], [ %i.x, %bb.b ]
  ret i1 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK2v88internal4wasm8WasmCode8ValidateEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm8WasmCode10MaybePrintEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ne i32 %i.b, -1
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 916), align 4
  %i.e = icmp eq i32 %i.d, %i.b
  %i.f = select i1 %i.c, i1 %i.e, i1 false
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1927), align 1, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.b
end_hunk_0
