inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp14ExportSceneFBXEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE:bb.a
  %4 = alloca %"class.Assimp::FBXExporter", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i8 0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 3 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 999999, ptr %i.q, align 8
  invoke void @_ZN6Assimp11FBXExporter12ExportBinaryEPKcPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6Assimp11FBXExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp11FBXExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter12ExportBinaryEPKcPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 1)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull @.str.15)
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %i.e)
  %i.f = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.p, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.y) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.o

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn18.ph = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn18 = phi { ptr, i32 } [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn18.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.g) #31
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11FBXExporter17WriteBinaryHeaderEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter20WriteHeaderExtensionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter19WriteGlobalSettingsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter14WriteDocumentsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter15WriteReferencesEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter16WriteDefinitionsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter12WriteObjectsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter16WriteConnectionsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter17WriteBinaryFooterEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 8 uses
  store ptr null, ptr %i.z, align 8
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !3
  %i.aj = load ptr, ptr %i.aa, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !3
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.k:                                             ; preds = %bb.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !4

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.g
  %.pn.pn17 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn18, %bb.g ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  resume { ptr, i32 } %.pn.pn17

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11FBXExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  invoke void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #33
  unreachable

_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIlSaIlEED2Ev.exit2, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit2

_ZNSt6vectorIlSaIlEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.aa)
          to label %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit3 unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit3: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit3, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.ae, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit3 ] ; 2 uses
  tail call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.05.i.i) #31, !inline_history !5
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i
  %.pr.i = load ptr, ptr %i.ad, align 8
  br label %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit3
  %i.ai = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEED2Ev.exit3 ] ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #32, !inline_history !8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aq, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #31, !inline_history !9
  %i.ay = load ptr, ptr %i.ap, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i6 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.k ], [ %i.bd, %bb.l ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ExportSceneFBXAEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::FBXExporter", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i8 0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 3 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 999999, ptr %i.q, align 8
  invoke void @_ZN6Assimp11FBXExporter11ExportAsciiEPKcPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6Assimp11FBXExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp11FBXExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter11ExportAsciiEPKcPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 1)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i8 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull @.str.17)
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %i.e)
  %i.f = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.p, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.y) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.o

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn18.ph = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn18 = phi { ptr, i32 } [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn18.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.g) #31
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11FBXExporter16WriteAsciiHeaderEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter20WriteHeaderExtensionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter19WriteGlobalSettingsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter14WriteDocumentsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter15WriteReferencesEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter16WriteDefinitionsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter12WriteObjectsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter16WriteConnectionsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.18, i64 noundef 1, i64 noundef 1) ; 0 uses
  store ptr null, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 8 uses
  store ptr null, ptr %i.ae, align 8
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !3
  %i.ao = load ptr, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !3
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.aj, %bb.l ], [ %i.at, %bb.m ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.au, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !4

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.g
  %.pn.pn17 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn18, %bb.g ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  resume { ptr, i32 } %.pn.pn17

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp11FBXExporterC2EPK7aiScenePKNS_16ExportPropertiesE(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 1), (8, 88)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 999999, ptr %i.q, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #31 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #31, !inline_history !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #33
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8
  store ptr %1, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 8 uses
  store ptr %i.a, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #31, !inline_history !9
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.k = load i64, ptr %i.e, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8
  store ptr %i.e, ptr %i.b, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyExportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #31
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter17WriteBinaryHeaderEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %1 = alloca %"class.Assimp::StreamWriter", align 16 ; 16 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN6Assimp11FBXExporter17WriteBinaryHeaderEv.binary_header, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 23) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.h = load ptr, ptr %i.b, align 8              ; 3 uses
  store ptr %i.h, ptr %2, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  store ptr %i.k, ptr %i.i, align 8
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.b

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %bb.a
  store ptr %i.h, ptr %1, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.l, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread20

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread20: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.m, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.m, align 4
  store ptr %i.h, ptr %1, align 16
  store ptr %i.k, ptr %i.o, align 8
  br label %bb.c

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.b
  %i.r = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.i, align 8          ; 2 uses
  %i.s = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.s, ptr %1, align 16
  %.not.i.i.i.i4 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread20, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %.pr23 = phi ptr [ %i.k, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread20 ], [ %.pr.pre, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pr23, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.e, %bb.d, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  %i.aa = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #34
          to label %bb.f unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %1) #31
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  br label %bb.x

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr %i.aa, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.ac, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1024
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.i, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !9
  %i.ao = load ptr, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i5 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.j ], [ %i.at, %bb.k ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.l, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 16           ; 2 uses
  %i.ax = add i64 %i.aw, 4                        ; 4 uses
  %i.ay = load ptr, ptr %i.ac, align 16           ; 5 uses
  %i.az = load ptr, ptr %i.z, align 8             ; 7 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 9 uses
  %.not.i.i6 = icmp ult i64 %i.ax, %i.bc
  br i1 %.not.i.i6, label %bb.v, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = icmp ugt i64 %i.ax, %i.bc
  br i1 %i.bd, label %bb.n, label %.noexc

bb.n:                                             ; preds = %bb.m
  %i.be = sub nuw i64 %i.ax, %i.bc                ; 6 uses
  %i.bf = load ptr, ptr %i.ad, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %i.ba                    ; 2 uses
  %i.bi = icmp sgt i64 %i.bc, -1
  call void @llvm.assume(i1 %i.bi)
  %i.bj = xor i64 %i.bc, 9223372036854775807      ; 2 uses
  %i.bk = icmp ule i64 %i.bh, %i.bj
  call void @llvm.assume(i1 %i.bk)
  %.not28.i.i = icmp ult i64 %i.bh, %i.be
  br i1 %.not28.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.ay, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.bm = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr i8, ptr %i.ay, i64 %i.be
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 0, i64 %i.bm, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi ptr [ %i.bo, %bb.p ], [ %i.bl, %bb.o ]
  store ptr %.0.i.i.i.i.i, ptr %i.ac, align 16
  %.pre2.i.i.pre = load ptr, ptr %i.z, align 8
  br label %.noexc

bb.q:                                             ; preds = %bb.n
  %i.bp = icmp ult i64 %i.bj, %i.be
  br i1 %i.bp, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.436) #30
          to label %.noexc7 unwind label %bb.w

.noexc7:                                          ; preds = %bb.r
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.be)
  %i.bq = add nuw i64 %.sroa.speculated.i.i.i, %i.bc
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 9223372036854775807) ; 2 uses
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #34
          to label %.noexc8 unwind label %bb.w    ; 6 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bc ; 2 uses
  store i8 0, ptr %i.bt, align 1
  %i.bu = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bw, i8 0, i64 %i.bu, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.s, %.noexc8
  %.not35.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.t, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.bx = sub i64 %i.bg, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bx) #32
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.bs, ptr %i.z, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ax
  store ptr %i.by, ptr %i.ac, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store ptr %i.bz, ptr %i.ad, align 8
  br label %.noexc

.noexc:                                           ; preds = %bb.m, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i
  %.pre2.i.i = phi ptr [ %.pre2.i.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.bs, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %i.az, %bb.m ]
  %.pre.i.i = load i64, ptr %i.av, align 16
  br label %bb.v

bb.v:                                             ; preds = %.noexc, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = phi ptr [ %.pre2.i.i, %.noexc ], [ %i.az, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cb = phi i64 [ %.pre.i.i, %.noexc ], [ %i.aw, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  store i32 7500, ptr %i.cc, align 1
  %i.cd = load i64, ptr %i.av, align 16
  %i.ce = add i64 %i.cd, 4
  store i64 %i.ce, ptr %i.av, align 16
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i, %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %i.ab, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter13WriteAllNodesEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6Assimp11FBXExporter20WriteHeaderExtensionEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter19WriteGlobalSettingsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter14WriteDocumentsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter15WriteReferencesEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter16WriteDefinitionsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter12WriteObjectsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  tail call void @_ZN6Assimp11FBXExporter16WriteConnectionsEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter17WriteBinaryFooterEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Assimp::StreamWriter", align 16 ; 16 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @_ZN6Assimp3FBXL11NULL_RECORDE, i64 noundef 25, i64 noundef 1) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.h = load ptr, ptr @_ZN6Assimp3FBXL14GENERIC_FOOTIDB5cxx11E, align 8
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL14GENERIC_FOOTIDB5cxx11E, i64 8), align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, i64 noundef %i.i, i64 noundef 1) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.s = and i64 %i.r, 15
  %i.t = sub nuw nsw i64 16, %i.s
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.01321 = phi i64 [ 0, %bb.a ], [ %i.z, %bb.b ]
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.25, i64 noundef 1, i64 noundef 1) ; 0 uses
  %i.z = add nuw nsw i64 %.01321, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.t
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.b, !llvm.loop !11

.preheader.preheader:                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.25, i64 noundef 1, i64 noundef 1) ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.25, i64 noundef 1, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.25, i64 noundef 1, i64 noundef 1) ; 0 uses
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.25, i64 noundef 1, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.au = load ptr, ptr %i.a, align 8             ; 3 uses
  store ptr %i.au, ptr %2, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 5 uses
  store ptr %i.ax, ptr %i.av, align 8
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.c

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %.preheader.preheader
  store ptr %i.au, ptr %1, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ay, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.c:                                             ; preds = %.preheader.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread37

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread37: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.az, align 4
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.az, align 4
  store ptr %i.au, ptr %1, align 16
  store ptr %i.ax, ptr %i.bb, align 8
  br label %bb.d

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.c
  %i.be = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.av, align 8         ; 2 uses
  %i.bf = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.bf, ptr %1, align 16
  %.not.i.i.i.i15 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread37, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %.pr40 = phi ptr [ %i.ax, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread37 ], [ %.pr.pre, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.pr40, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = load i32, ptr %i.bg, align 4
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.f, %bb.e, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.bl, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bn = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #34
          to label %bb.g unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %1) #31
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  br label %bb.x

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8
  store ptr %i.bn, ptr %i.bp, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1024
  store ptr %i.br, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.av, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31, !inline_history !9
  %i.cb = load ptr, ptr %i.bs, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i16 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.bw, %bb.k ], [ %i.cg, %bb.l ]
  %i.ch = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ch, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 16           ; 3 uses
  %i.ck = add i64 %i.cj, 4                        ; 3 uses
  %i.cl = load ptr, ptr %i.bp, align 16           ; 5 uses
  %i.cm = load ptr, ptr %i.bm, align 8            ; 6 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 8 uses
  %i.cq = icmp ugt i64 %i.ck, %i.cp
  br i1 %i.cq, label %bb.n, label %.noexc

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cr = sub nuw i64 %i.ck, %i.cp                ; 6 uses
  %i.cs = load ptr, ptr %i.bq, align 8
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = sub i64 %i.ct, %i.cn                    ; 2 uses
  %i.cv = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = xor i64 %i.cp, 9223372036854775807      ; 2 uses
  %i.cx = icmp ule i64 %i.cu, %i.cw
  tail call void @llvm.assume(i1 %i.cx)
  %.not28.i.i = icmp ult i64 %i.cu, %i.cr
  br i1 %.not28.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.cl, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  %i.cz = add nsw i64 %i.cr, -1                   ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr i8, ptr %i.cl, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cy, i8 0, i64 %i.cz, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi ptr [ %i.db, %bb.p ], [ %i.cy, %bb.o ]
  store ptr %.0.i.i.i.i.i, ptr %i.bp, align 16
  %.pre.i.i.pre = load i64, ptr %i.ci, align 16
  %.pre2.i.i.pre = load ptr, ptr %i.bm, align 8
  br label %.noexc

bb.q:                                             ; preds = %bb.n
  %i.dc = icmp ult i64 %i.cw, %i.cr
  br i1 %i.dc, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.436) #30
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cr)
  %i.dd = add nuw i64 %.sroa.speculated.i.i.i, %i.cp
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 9223372036854775807) ; 2 uses
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #34
          to label %.noexc19 unwind label %bb.w   ; 6 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cp ; 2 uses
  store i8 0, ptr %i.dg, align 1
  %i.dh = add nsw i64 %i.cr, -1                   ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 0, i64 %i.dh, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.s, %.noexc19
  %.not35.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.t, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.dk = sub i64 %i.ct, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dk) #32
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.df, ptr %i.bm, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ck
  store ptr %i.dl, ptr %i.bp, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store ptr %i.dm, ptr %i.bq, align 8
  br label %.noexc

.noexc:                                           ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dn = phi ptr [ %i.cm, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.pre2.i.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.df, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ]
  %i.do = phi i64 [ %i.cj, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.pre.i.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.cj, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  store i32 7500, ptr %i.dp, align 1
  %i.dq = load i64, ptr %i.ci, align 16
  %i.dr = add i64 %i.dq, 4
  store i64 %i.dr, ptr %i.ci, align 16
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.y

bb.v:                                             ; preds = %bb.y
  %i.ds = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dt = load ptr, ptr @_ZN6Assimp3FBXL10FOOT_MAGICB5cxx11E, align 8
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL10FOOT_MAGICB5cxx11E, i64 8), align 8
  %i.dv = load ptr, ptr %i.ds, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt, i64 noundef %i.du, i64 noundef 1) ; 0 uses
  ret void

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i, %bb.r
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.w ], [ %i.bo, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn

bb.y:                                             ; preds = %.noexc, %bb.y
  %.023 = phi i64 [ 0, %.noexc ], [ %i.ef, %bb.y ]
  %i.ea = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i64 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.25, i64 noundef 1, i64 noundef 1) ; 0 uses
  %i.ef = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond25.not = icmp eq i64 %i.ef, 120
  br i1 %exitcond25.not, label %bb.v, label %bb.y, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter16WriteAsciiHeaderEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.19, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN6Assimp3FBXL18EXPORT_VERSION_STRB5cxx11E, align 8
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL18EXPORT_VERSION_STRB5cxx11E, i64 8), align 8
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.20, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.21, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.22, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.23, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.j, ptr %2, align 8, !alias.scope !19
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !alias.scope !19
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter16WriteAsciiHeaderEv:bb.a
  store ptr %i.am, ptr %1, align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ar, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.as, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.az) #31
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ba, ptr %1, align 8
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bg) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.j
  br i1 %i.bk, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.x, %bb.c ], [ %i.bj, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.bi, %bb.g ]
  %i.bl = load i64, ptr %i.j, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bm) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.bi, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bh, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.Assimp::StreamWriter", align 16 ; 16 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  store ptr %i.c, ptr %3, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  store ptr %i.f, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.b

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %bb.a
  store ptr %i.c, ptr %2, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.g, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread47

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread47: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.h, align 4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.h, align 4
  store ptr %i.c, ptr %2, align 16
  store ptr %i.f, ptr %i.j, align 8
  br label %bb.c

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.d, align 8          ; 2 uses
  %i.n = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.n, ptr %2, align 16
  %.not.i.i.i.i11 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i11, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread47, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %.pr50 = phi ptr [ %i.f, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread47 ], [ %.pr.pre, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.pr50, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.o, align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.e, %bb.d, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.v = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #34
          to label %bb.f unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #31
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br label %bb.ai

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8
  store ptr %i.v, ptr %i.x, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1024
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.d, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !9
  %i.aj = load ptr, ptr %i.aa, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.am = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i12 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.l, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.24, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.m
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.as, i64 noundef %i.au)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ae ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.p unwind label %bb.ae      ; 0 uses

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext 10)
          to label %bb.p unwind label %bb.ae      ; 0 uses

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load ptr, ptr @_ZN6Assimp3FBXL17COMMENT_UNDERLINEB5cxx11E, align 8
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL17COMMENT_UNDERLINEB5cxx11E, i64 8), align 8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.be, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit15 unwind label %bb.ae

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit15: ; preds = %bb.p
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bi, ptr %5, align 8, !alias.scope !26
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.bj, align 8, !alias.scope !26
  store i8 0, ptr %i.bi, align 8, !alias.scope !26
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !26 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !26 ; 2 uses
  %i.bo = icmp ugt ptr %i.bl, %i.bn
  %.08.i.i.i = select i1 %i.bo, ptr %i.bl, ptr %i.bn ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i18 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i18, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !26 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !alias.scope !26 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bi
  br i1 %i.bx, label %.body19, label %.body19.sink.split

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.s, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 16           ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 4 uses
  %i.cd = load ptr, ptr %i.x, align 16            ; 5 uses
  %i.ce = load ptr, ptr %i.u, align 8             ; 7 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 9 uses
  %.not.i21 = icmp ult i64 %i.cc, %i.ch
  br i1 %.not.i21, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.u, label %.noexc22

bb.u:                                             ; preds = %bb.t
  %i.cj = sub nuw i64 %i.cc, %i.ch                ; 6 uses
  %i.ck = load ptr, ptr %i.y, align 8
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = sub i64 %i.cl, %i.cf                    ; 2 uses
  %i.cn = icmp sgt i64 %i.ch, -1
  call void @llvm.assume(i1 %i.cn)
  %i.co = xor i64 %i.ch, 9223372036854775807      ; 2 uses
  %i.cp = icmp ule i64 %i.cm, %i.co
  call void @llvm.assume(i1 %i.cp)
  %.not28.i.i = icmp ult i64 %i.cm, %i.cj
  br i1 %.not28.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.cd, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  %i.cr = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr i8, ptr %i.cd, i64 %i.cj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 %i.cr, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.ct, %bb.w ], [ %i.cq, %bb.v ]
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 16
  %.pre7.i.pre = load ptr, ptr %i.u, align 8
  br label %.noexc22

bb.x:                                             ; preds = %bb.u
  %i.cu = icmp ult i64 %i.co, %i.cj
  br i1 %i.cu, label %bb.y, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.436) #30
          to label %.noexc26 unwind label %bb.af

.noexc26:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.cj)
  %i.cv = add nuw i64 %.sroa.speculated.i.i.i, %i.ch
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cv, i64 9223372036854775807) ; 2 uses
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #34
          to label %.noexc27 unwind label %bb.af  ; 6 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ch ; 2 uses
  store i8 0, ptr %i.cy, align 1
  %i.cz = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc27
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.db, i8 0, i64 %i.cz, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.z, %.noexc27
  %.not35.i.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr align 1 %i.ce, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.aa, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.dc = sub i64 %i.cl, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.dc) #32
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.ab, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc22:                                         ; preds = %bb.t, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i
  %.pre7.i = phi ptr [ %.pre7.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.cx, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %i.ce, %bb.t ]
  %.pre.i = load i64, ptr %i.bz, align 16
  %.pre8.i = load i64, ptr %i.bj, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc22, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.df = phi i64 [ %.pre8.i, %.noexc22 ], [ %i.cb, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.dg = phi ptr [ %.pre7.i, %.noexc22 ], [ %i.ce, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.dh = phi i64 [ %.pre.i, %.noexc22 ], [ %i.ca, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr align 1 %i.dj, i64 %i.df, i1 false)
  %i.dk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.dl = load i64, ptr %i.bz, align 16
  %i.dm = add i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.bz, align 16
  %i.dn = load ptr, ptr %5, align 8               ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bi
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ac
  %i.dp = icmp ult i64 %i.dk, 16
  call void @llvm.assume(i1 %i.dp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.dq = load i64, ptr %i.bi, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ds = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ds, ptr %4, align 8
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.du = getelementptr i8, ptr %i.ds, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %4, i64 %i.dv
  store ptr %i.dt, ptr %i.dw, align 8
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dx, ptr %i.aq, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ed = load i64, ptr %i.eb, align 8
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dy, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ef) #31
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.eg, ptr %4, align 8
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ei = getelementptr i8, ptr %i.eg, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %4, i64 %i.ej
  store ptr %i.eh, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.em) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit15, %bb.p, %bb.o, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.m
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i, %bb.y
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %5, align 8               ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bi
  br i1 %i.er, label %.body19, label %.body19.sink.split

.body19.sink.split:                               ; preds = %bb.af, %bb.r
  %.sink = phi ptr [ %i.bw, %bb.r ], [ %i.eq, %bb.af ]
  %.pn.ph = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %i.ep, %bb.af ]
  %i.es = load i64, ptr %i.bi, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.et) #32
  br label %.body19

.body19:                                          ; preds = %.body19.sink.split, %bb.af, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %i.ep, %bb.af ], [ %.pn.ph, %.body19.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.ag:                                            ; preds = %.body19, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body19 ], [ %i.eo, %bb.ae ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ag ], [ %i.en, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ah ], [ %i.w, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef 1, i64 noundef %i.h)
          to label %bb.b unwind label %bb.k       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #31, !inline_history !9
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.al, %bb.i ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.j, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #33
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter20WriteHeaderExtensionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.Assimp::FBX::Node", align 8 ; 16 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Assimp::StreamWriter", align 16 ; 27 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.Assimp::FBX::Node", align 8 ; 21 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::vector.23", align 8   ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 18, ptr %i.f, align 8
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %2, align 8
  %i.r = load i64, ptr %i.f, align 8              ; 3 uses
  store i64 %i.r, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.q, ptr noundef nonnull align 1 dereferenceable(18) @.str.26, i64 18, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.v, ptr %1, align 8
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = load i64, ptr %i.s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.x, ptr %i.e, align 8
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc99 unwind label %bb.u   ; 2 uses

.noexc99:                                         ; preds = %.noexc.i.i
  store ptr %i.z, ptr %1, align 8
  %i.aa = load i64, ptr %i.e, align 8
  store i64 %i.aa, ptr %i.v, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc99, %.noexc
  %i.ab = phi ptr [ %i.z, %.noexc99 ], [ %i.v, %.noexc ] ; 2 uses
  switch i64 %i.x, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.w, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.w, i64 %i.x, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ah, i8 0, i64 49, i1 false)
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.p
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ak = load i64, ptr %i.p, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  store ptr %i.an, ptr %4, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8            ; 5 uses
  store ptr %i.aq, ptr %i.ao, align 8
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.d

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.an, ptr %3, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ar, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread450

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread450: ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load i32, ptr %i.as, align 4
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.as, align 4
  store ptr %i.an, ptr %3, align 16
  store ptr %i.aq, ptr %i.au, align 8
  br label %bb.e

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.d
  %i.ax = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.ao, align 8         ; 2 uses
  %i.ay = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.ay, ptr %3, align 16
  %.not.i.i.i.i100 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread450, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %.pr453 = phi ptr [ %i.aq, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread450 ], [ %.pr.pre, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.pr453, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = load i32, ptr %i.az, align 4
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.g, %bb.f, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.be, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  %i.bg = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #34
          to label %bb.h unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #31
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br label %bb.ci

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.bg, ptr %i.bf, align 8
  store ptr %i.bg, ptr %i.bi, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1024
  store ptr %i.bk, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.ao, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bm, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4
  %i.br = load ptr, ptr %i.bl, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #31, !inline_history !9
  %i.bu = load ptr, ptr %i.bl, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i102 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i102, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.cb = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.cc = trunc nuw i8 %i.cb to i1
  invoke void @_ZN6Assimp3FBX4Node5BeginERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.cc, i32 noundef 0)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.ce = trunc nuw i8 %i.cd to i1
  invoke void @_ZN6Assimp3FBX4Node13EndPropertiesERNS_12StreamWriterILb0ELb0EEEbim(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.ce, i32 noundef 0, i64 noundef 0)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.cf = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.cg = trunc nuw i8 %i.cf to i1
  invoke void @_ZN6Assimp3FBX4Node13BeginChildrenERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.cg, i32 noundef 0)
          to label %.noexc.i104 unwind label %bb.v

.noexc.i104:                                      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ch, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 16, ptr %i.d, align 8
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc105 unwind label %bb.w  ; 2 uses

.noexc105:                                        ; preds = %.noexc.i104
  store ptr %i.ci, ptr %5, align 8
  %i.cj = load i64, ptr %i.d, align 8             ; 3 uses
  store i64 %i.cj, ptr %i.ch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ci, ptr noundef nonnull align 1 dereferenceable(16) @.str.27, i64 16, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cj, ptr %i.ck, align 8
  %i.cl = load ptr, ptr %5, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.cn = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.co = trunc nuw i8 %i.cn to i1
  invoke void @_ZN6Assimp3FBX4Node17WritePropertyNodeIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1003, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.co, i32 noundef 1)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %.noexc105
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ch
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.q
  %i.cr = load i64, ptr %i.ch, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ct, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ct, ptr noundef nonnull align 1 dereferenceable(10) @.str.28, i64 10, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 0, ptr %i.cv, align 2
  %i.cw = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.cx = trunc nuw i8 %i.cw to i1
  invoke void @_ZN6Assimp3FBX4Node17WritePropertyNodeIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 7500, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.cx, i32 noundef 1)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.cy = load ptr, ptr %6, align 8               ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ct
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.r
  %i.da = load i64, ptr %i.ct, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.dc = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %._crit_edge.i.i117, label %.noexc.i137

._crit_edge.i.i117:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.de, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.de, ptr noundef nonnull align 1 dereferenceable(14) @.str.29, i64 14, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 14, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i8 0, ptr %i.dg, align 2
  invoke void @_ZN6Assimp3FBX4Node17WritePropertyNodeIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext true, i32 noundef 1)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %._crit_edge.i.i117
  %i.dh = load ptr, ptr %7, align 8               ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.de
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.s
  %i.dj = load i64, ptr %i.de, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.noexc.i137

bb.t:                                             ; preds = %.noexc.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.u:                                             ; preds = %.noexc.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %2, align 8               ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.p
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.u
  %i.dp = load i64, ptr %i.p, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.t
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.t ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.dm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cj

bb.v:                                             ; preds = %bb.p, %bb.o, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.w:                                             ; preds = %.noexc.i104
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.x:                                             ; preds = %.noexc105
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %5, align 8               ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ch
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.x
  %i.dw = load i64, ptr %i.ch, align 8
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.w
  %.pn55 = phi { ptr, i32 } [ %i.ds, %bb.w ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.dt, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ch

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %6, align 8               ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.ct
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.y
  %i.eb = load i64, ptr %i.ct, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ch

bb.z:                                             ; preds = %._crit_edge.i.i117
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %7, align 8               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %235 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %236 = alloca %class.aiMatrix4x4t, align 16     ; 15 uses
  %237 = alloca %class.aiVector3t, align 8        ; 8 uses
  %238 = alloca %class.aiVector3t, align 8        ; 8 uses
  %239 = alloca %class.aiVector3t, align 8        ; 8 uses
  %240 = alloca %"class.std::vector.6", align 8   ; 25 uses
  %241 = alloca %"class.std::vector.106", align 8 ; 19 uses
  %242 = alloca %"class.std::vector.106", align 8 ; 19 uses
  %243 = alloca %"class.std::vector.106", align 8 ; 19 uses
  %244 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %245 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %246 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %247 = alloca %class.aiMatrix4x4t, align 4      ; 11 uses
  %248 = alloca %class.aiVector3t, align 8        ; 6 uses
  %249 = alloca %class.aiVector3t, align 8        ; 9 uses
  %250 = alloca %class.aiVector3t, align 8        ; 6 uses
  %251 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %252 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %253 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %254 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %255 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %256 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.br = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.e, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.bt = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  store ptr %i.bt, ptr %42, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #31
  store i64 17, ptr %i.ao, align 8
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bu, ptr %42, align 8
  %i.bv = load i64, ptr %i.ao, align 8            ; 3 uses
  store i64 %i.bv, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bu, ptr noundef nonnull align 1 dereferenceable(17) @.str.262, i64 17, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %42, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #31
  invoke void @_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.bz = load ptr, ptr %42, align 8              ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bt
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.cb = load i64, ptr %i.bt, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %bb.e

bb.c:                                             ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145

bb.d:                                             ; preds = %.noexc
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %42, align 8              ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bt
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143: ; preds = %bb.d
  %i.ch = load i64, ptr %i.bt, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143, %bb.c
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.c ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143 ], [ %i.ce, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %bb.azj

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  store ptr %i.ck, ptr %44, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8            ; 5 uses
  store ptr %i.cn, ptr %i.cl, align 8
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.f

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %bb.e
  store ptr %i.ck, ptr %43, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr null, ptr %i.co, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %.thread21787

.thread21787:                                     ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.cs = load i32, ptr %i.cp, align 4
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cp, align 4
  store ptr %i.ck, ptr %43, align 16
  store ptr %i.cn, ptr %i.cr, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.h

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.f
  %i.cv = atomicrmw volatile add ptr %i.cp, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.cl, align 8         ; 2 uses
  %i.cw = load <2 x ptr>, ptr %44, align 16
  store <2 x ptr> %i.cw, ptr %43, align 16
  %.not.i.i.i.i1146 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i1146, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %.pre20582 = load i8, ptr @__libc_single_threaded, align 1
  %i.cx = icmp eq i8 %.pre20582, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.pr.pre, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread21787, %bb.g
  %i.cz = phi ptr [ %i.cu, %.thread21787 ], [ %i.cy, %bb.g ] ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.dc = atomicrmw volatile add ptr %i.cy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.i, %bb.h, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i8 0, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, i8 0, i64 32, i1 false)
  %i.df = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #34
          to label %bb.j unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %43) #31
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %44) #31
  br label %bb.azi

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr %i.df, ptr %i.de, align 8
  store ptr %i.df, ptr %i.dh, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 1024
  store ptr %i.dj, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.cl, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dl, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4
  %i.dq = load ptr, ptr %i.dk, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #31, !inline_history !9
  %i.dt = load ptr, ptr %i.dk, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #31, !inline_history !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156

bb.m:                                             ; preds = %bb.k
  %i.dw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1148 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i1148, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.do, %bb.n ], [ %i.dy, %bb.o ]
  %i.dz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dz, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156, !prof !4

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  %i.ea = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  store ptr %i.ea, ptr %45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ea, ptr noundef nonnull align 1 dereferenceable(7) @.str.263, i64 7, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 7, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %45, i64 23
  store i8 0, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %45, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ed, i8 0, i64 49, i1 false)
  %.pre15390 = load i8, ptr %0, align 8, !range !27
  %.pre15478 = trunc nuw i8 %.pre15390 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #31
  store i32 0, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node5BeginERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %45, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %.pre15478, i32 noundef 0)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156
  %i.ee = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node13EndPropertiesERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %45, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.ef, i32 noundef %i.eg)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.eh = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node13BeginChildrenERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %45, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.ei, i32 noundef %i.ej)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #31
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %i.el, ptr noundef nonnull @.str.264, i32 noundef 1)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.en = icmp ne i32 %i.em, 0
  %i.eo = zext i1 %i.en to i8
  store i8 %i.eo, ptr %i.aq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 30 uses
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i32, ptr %i.er, align 8            ; 2 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  store i64 0, ptr %46, align 8
  %.not.i.i.i.i1158 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i.i1158, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.t
  %i.eu = mul nuw nsw i64 %i.et, 24               ; 3 uses
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #34
          to label %.noexc1159 unwind label %bb.z ; 4 uses

.noexc1159:                                       ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ev, ptr %46, align 8
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.et
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ev, i8 0, i64 %i.eu, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ev, i64 %i.eu
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %bb.t, %.noexc1159
  %.sink.i = phi ptr [ %i.ew, %.noexc1159 ], [ null, %bb.t ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc1159 ], [ null, %bb.t ]
  %i.ex = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.ey, align 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.ez = load ptr, ptr %i.ek, align 8
  %i.fa = invoke noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %i.ez, ptr noundef nonnull @.str.265, i32 noundef 0)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.not5821 = icmp eq i32 %i.fa, 0                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8
  invoke void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, ptr noundef %i.fd)
          to label %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE5clearEv.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #33
  unreachable

_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE5clearEv.exit: ; preds = %bb.u
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr null, ptr %i.fc, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.fg, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.fg, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.fj, align 8
  store i32 1, ptr %i.ap, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #31
  %i.fk = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 0, ptr %i.fl, align 8
  %i.fm = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #34
          to label %bb.w unwind label %bb.ab      ; 9 uses

bb.w:                                             ; preds = %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE5clearEv.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %48, i64 24
  store ptr %48, ptr %i.fm, align 16
  %.sroa.55706.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %0, ptr %.sroa.55706.0..sroa_idx, align 8
  %.sroa.65707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %43, ptr %.sroa.65707.0..sroa_idx, align 16
  %.sroa.75708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store ptr %i.ap, ptr %.sroa.75708.0..sroa_idx, align 8
  %.sroa.85709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store ptr %i.aq, ptr %.sroa.85709.0..sroa_idx, align 16
  %.sroa.95710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store ptr %46, ptr %.sroa.95710.0..sroa_idx, align 8
  %.sroa.105711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %47, ptr %.sroa.105711.0..sroa_idx, align 16
  store ptr %i.fm, ptr %48, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPK6aiNodeEZN6Assimp11FBXExporter12WriteObjectsEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.fn, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPK6aiNodeEZN6Assimp11FBXExporter12WriteObjectsEvE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.fk, align 8
  %i.fo = load ptr, ptr %i.ep, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke fastcc void @"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode"(ptr noundef nonnull align 8 dereferenceable(56) %i.fm, ptr noundef %i.fq)
          to label %"_ZNSt17_Function_handlerIFvPK6aiNodeEZN6Assimp11FBXExporter12WriteObjectsEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_.exit" unwind label %bb.ac

"_ZNSt17_Function_handlerIFvPK6aiNodeEZN6Assimp11FBXExporter12WriteObjectsEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_.exit": ; preds = %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %.not.i.i1166 = icmp eq ptr %i.fu, %i.fs
  br i1 %.not.i.i1166, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %"_ZNSt17_Function_handlerIFvPK6aiNodeEZN6Assimp11FBXExporter12WriteObjectsEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_.exit"
  store ptr %i.fs, ptr %i.ft, align 8
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %"_ZNSt17_Function_handlerIFvPK6aiNodeEZN6Assimp11FBXExporter12WriteObjectsEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_.exit", %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.fv = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i32, ptr %i.fw, align 8
  %.not14014 = icmp eq i32 %i.fx, 0
  br i1 %.not14014, label %._crit_edge, label %._crit_edge.i.i1170.lr.ph

._crit_edge.i.i1170.lr.ph:                        ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %49, i64 40 ; 9 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %49, i64 48 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %50, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 7 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %57, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %59, i64 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
bb.ahj:                                           ; preds = %bb.ahi
  %i.ghg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body4942 unwind label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.ghh = landingpad { ptr, i32 }
          catch ptr null
  %i.ghi = extractvalue { ptr, i32 } %i.ghh, 0
  call void @__clang_call_terminate(ptr %i.ghi) #33
  unreachable

bb.ahl:                                           ; preds = %bb.ahi
  unreachable

.noexc4941:                                       ; preds = %bb.ahh, %bb.ahg, %._crit_edge.i.i.i.i.i18024
  %i.ghj = load i64, ptr %i.a, align 8            ; 2 uses
  %i.ghk = getelementptr inbounds nuw i8, ptr %i.ggt, i64 40 ; 2 uses
  store i64 %i.ghj, ptr %i.ghk, align 8
  %i.ghl = load ptr, ptr %i.ggu, align 8
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.ghl, i64 %i.ghj
  store i8 0, ptr %i.ghm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ghn = getelementptr inbounds nuw i8, ptr %i.ggt, i64 64
  store ptr null, ptr %i.ghn, align 8
  store ptr %i.ggt, ptr %i.fsu, align 8
  %i.gho = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %166, ptr %.08.lcssa.i.i.i12.i3121, ptr noundef nonnull align 8 dereferenceable(32) %i.ggu)
          to label %bb.ahm unwind label %bb.ahp   ; 2 uses

bb.ahm:                                           ; preds = %.noexc4941
  %i.ghp = extractvalue { ptr, ptr } %i.gho, 0    ; 2 uses
  %i.ghq = extractvalue { ptr, ptr } %i.gho, 1    ; 5 uses
  %.not.i4923 = icmp eq ptr %i.ghq, null
  br i1 %.not.i4923, label %bb.ahq, label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm
  %.not.i.i.i4924 = icmp ne ptr %i.ghp, null
  %i.ghr = icmp eq ptr %i.ghq, %i.eyo
  %or.cond.i.i.i4925 = or i1 %.not.i.i.i4924, %i.ghr
  br i1 %or.cond.i.i.i4925, label %.thread.i4931, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.ghs = load i64, ptr %i.ghk, align 8          ; 2 uses
  %i.ght = getelementptr inbounds nuw i8, ptr %i.ghq, i64 40
  %i.ghu = load i64, ptr %i.ght, align 8          ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i4926 = call i64 @llvm.umin.i64(i64 %i.ghu, i64 %i.ghs) ; 2 uses
  %i.ghv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i4926, 0
  br i1 %i.ghv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4933, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4927

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4927: ; preds = %bb.aho
  %i.ghw = getelementptr inbounds nuw i8, ptr %i.ghq, i64 32
  %i.ghx = load ptr, ptr %i.ghw, align 8
  %i.ghy = load ptr, ptr %i.ggu, align 8
  %i.ghz = call i32 @memcmp(ptr noundef %i.ghy, ptr noundef %i.ghx, i64 noundef %.sroa.speculated.i.i.i.i.i.i4926) #31 ; 2 uses
  %.not.i.i.i.i.i.i4928 = icmp eq i32 %i.ghz, 0
  br i1 %.not.i.i.i.i.i.i4928, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4933, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4929

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4933: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4927, %bb.aho
  %i.gia = sub i64 %i.ghs, %i.ghu
  %spec.select7.i.i.i.i.i.i.i4934 = call i64 @llvm.smax.i64(i64 %i.gia, i64 -2147483648)
  %.08.i.i.i.i.i.i.i4935 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i4934, i64 2147483647)
  %.0.i6.i.i.i.i.i.i4936 = trunc nsw i64 %.08.i.i.i.i.i.i.i4935 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4929

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4929: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4933, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4927
  %.0.i.i.i.i.i.i4930 = phi i32 [ %i.ghz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4927 ], [ %.0.i6.i.i.i.i.i.i4936, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4933 ]
  %i.gib = icmp slt i32 %.0.i.i.i.i.i.i4930, 0
  br label %.thread.i4931

.thread.i4931:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4929, %bb.ahn
  %i.gic = phi i1 [ %i.gib, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4929 ], [ true, %bb.ahn ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gic, ptr noundef nonnull %i.ggt, ptr noundef nonnull %i.ghq, ptr noundef nonnull align 8 dereferenceable(32) %i.eyo) #31
  %i.gid = load i64, ptr %i.eys, align 8
  %i.gie = add i64 %i.gid, 1
  store i64 %i.gie, ptr %i.eys, align 8
  br label %.noexc3130

bb.ahp:                                           ; preds = %.noexc4941
  %i.gif = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.body4942

bb.ahq:                                           ; preds = %bb.ahm
  %i.gig = load ptr, ptr %i.ggu, align 8          ; 2 uses
  %i.gih = icmp eq ptr %i.gig, %i.ggv
  br i1 %i.gih, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4938, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4937

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4937: ; preds = %bb.ahq
  %i.gii = load i64, ptr %i.ggv, align 8
  %i.gij = add i64 %i.gii, 1
  call void @_ZdlPvm(ptr noundef %i.gig, i64 noundef %i.gij) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4938

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4938: ; preds = %bb.ahq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4937
  call void @_ZdlPvm(ptr noundef nonnull %i.ggt, i64 noundef 72) #32
  br label %.noexc3130

.noexc3130:                                       ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4938, %.thread.i4931
  %.sroa.0.010.i4932 = phi ptr [ %i.ggt, %.thread.i4931 ], [ %i.ghp, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4938 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.ahr

bb.ahr:                                           ; preds = %.noexc3130, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i3117
  %.sroa.07.0.i3119 = phi ptr [ %.sroa.0.010.i4932, %.noexc3130 ], [ %.19.i.i.i.i3108, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i3117 ]
  %i.gik = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i3119, i64 64
  %i.gil = load ptr, ptr %i.gik, align 8
  %.not827 = icmp eq ptr %i.gil, %i.gfi           ; 2 uses
  br i1 %.not827, label %bb.ahs, label %bb.ahv

bb.ahs:                                           ; preds = %bb.ahr
  %i.gim = load ptr, ptr %i.gch, align 8
  %i.gin = getelementptr inbounds nuw [8 x i8], ptr %i.gim, i64 %.067413901
  %i.gio = load ptr, ptr %i.gin, align 8
  br label %bb.ahv

bb.aht:                                           ; preds = %.noexc.i3096
  %i.gip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134

bb.ahu:                                           ; preds = %.critedge.i3120
  %i.giq = landingpad { ptr, i32 }
          cleanup
  br label %.body4942

.body4942:                                        ; preds = %bb.ahu, %bb.ahj, %bb.ahp
  %eh.lpad-body4943 = phi { ptr, i32 } [ %i.gif, %bb.ahp ], [ %i.giq, %bb.ahu ], [ %i.ghg, %bb.ahj ] ; 2 uses
  %i.gir = load ptr, ptr %180, align 8            ; 2 uses
  %i.gis = icmp eq ptr %i.gir, %i.fss
  br i1 %i.gis, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132: ; preds = %.body4942
  %i.git = load i64, ptr %i.fss, align 8
  %i.giu = add i64 %i.git, 1
  call void @_ZdlPvm(ptr noundef %i.gir, i64 noundef %i.giu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134

bb.ahv:                                           ; preds = %bb.ahr, %bb.ahs
  %.1669 = phi ptr [ %i.gio, %bb.ahs ], [ %.066813902, %bb.ahr ] ; 3 uses
  %i.giv = load ptr, ptr %180, align 8            ; 2 uses
  %i.giw = icmp eq ptr %i.giv, %i.fss
  br i1 %i.giw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3135: ; preds = %bb.ahv
  %i.gix = load i64, ptr %i.fss, align 8
  %i.giy = add i64 %i.gix, 1
  call void @_ZdlPvm(ptr noundef %i.giv, i64 noundef %i.giy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137: ; preds = %bb.ahv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3135
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #31
  br i1 %.not827, label %._crit_edge13905, label %bb.aha

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134: ; preds = %.body4942, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132, %bb.aht
  %.pn825 = phi { ptr, i32 } [ %i.gip, %bb.aht ], [ %eh.lpad-body4943, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132 ], [ %eh.lpad-body4943, %.body4942 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #31
  br label %bb.anx

._crit_edge13905:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137, %bb.aha
  %.not828 = icmp eq ptr %.1669, null
  br i1 %.not828, label %._crit_edge13905.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152

._crit_edge13905.thread:                          ; preds = %.lr.ph13936, %._crit_edge13905
  %.02022.i.i.i = load ptr, ptr %i.fso, align 8   ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i3138

.lr.ph.i.i.i3138:                                 ; preds = %._crit_edge13905.thread, %.lr.ph.i.i.i3138
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i3138 ], [ %.02022.i.i.i, %._crit_edge13905.thread ] ; 4 uses
  %i.giz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.gja = load ptr, ptr %i.giz, align 8          ; 2 uses
  %i.gjb = icmp ult ptr %i.gfi, %i.gja            ; 2 uses
  %.in.v.i.i.i = select i1 %i.gjb, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i3139 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i3139, label %._crit_edge.i.i.i3140, label %.lr.ph.i.i.i3138, !llvm.loop !263

._crit_edge.i.i.i3140:                            ; preds = %.lr.ph.i.i.i3138
  br i1 %i.gjb, label %._crit_edge.thread.i.i.i, label %bb.ahx

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i3140, %._crit_edge13905.thread
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i3140 ], [ %i.fsn, %._crit_edge13905.thread ] ; 4 uses
  %i.gjc = load ptr, ptr %i.fsp, align 8
  %i.gjd = icmp eq ptr %.019.lcssa29.i.i.i, %i.gjc
  br i1 %i.gjd, label %select.unfold.i.i, label %bb.ahw

bb.ahw:                                           ; preds = %._crit_edge.thread.i.i.i
  %i.gje = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #36
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gje, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw, %._crit_edge.i.i.i3140
  %i.gjf = phi ptr [ %.pre.i.i, %bb.ahw ], [ %i.gja, %._crit_edge.i.i.i3140 ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ahw ], [ %.02024.i.i.i, %._crit_edge.i.i.i3140 ]
  %i.gjg = icmp ult ptr %i.gjf, %i.gfi
  br i1 %i.gjg, label %select.unfold.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152

select.unfold.i.i:                                ; preds = %bb.ahx, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ahx ] ; 3 uses
  %i.gjh = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.fsn
  br i1 %i.gjh, label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.ahy

bb.ahy:                                           ; preds = %select.unfold.i.i
  %i.gji = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.gjj = load ptr, ptr %i.gji, align 8
  %i.gjk = icmp ult ptr %i.gfi, %i.gjj
  br label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i: ; preds = %bb.ahy, %select.unfold.i.i
  %i.gjl = phi i1 [ %i.gjk, %bb.ahy ], [ true, %select.unfold.i.i ]
  %i.gjm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc3141 unwind label %bb.ahz ; 2 uses

.noexc3141:                                       ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.gjn = getelementptr inbounds nuw i8, ptr %i.gjm, i64 32
  store ptr %i.gfi, ptr %i.gjn, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gjl, ptr noundef nonnull %i.gjm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fsn) #31
  %i.gjo = load i64, ptr %i.fsr, align 8
  %i.gjp = add i64 %i.gjo, 1
  store i64 %i.gjp, ptr %i.fsr, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152

bb.ahz:                                           ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.gjq = landingpad { ptr, i32 }
          cleanup
  br label %bb.anx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152: ; preds = %._crit_edge13905, %bb.ahx, %.noexc3141
  %.not82816748 = phi i1 [ true, %.noexc3141 ], [ true, %bb.ahx ], [ false, %._crit_edge13905 ]
  %.267016746 = phi ptr [ null, %.noexc3141 ], [ null, %bb.ahx ], [ %.1669, %._crit_edge13905 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #31
  %i.gjr = load i64, ptr %i.fcn, align 8
  %i.gjs = add nsw i64 %i.gjr, 1                  ; 2 uses
  store i64 %i.gjs, ptr %i.fcn, align 8
  store i64 %i.gjs, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #31
  store ptr %i.fsv, ptr %181, align 8
  store i64 8243115031234241860, ptr %i.fsv, align 8
  store i64 8, ptr %i.fsw, align 8
  store i8 0, ptr %i.fxd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.fsx, i8 0, i64 49, i1 false)
  %.pre15451 = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !264
  %.pre15452 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !264 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  store ptr %i.fsy, ptr %182, align 8, !alias.scope !267
  store i64 0, ptr %i.fsz, align 8, !alias.scope !267
  store i8 0, ptr %i.fsy, align 8, !alias.scope !267
  %i.gjt = add i64 %.pre15452, 11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %182, i64 noundef %i.gjt)
          to label %bb.aia unwind label %.loopexit5908

bb.aia:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152
  %i.gju = load i64, ptr %i.fsz, align 8, !alias.scope !267
  %i.gjv = sub i64 4611686018427387903, %i.gju
  %i.gjw = icmp ult i64 %i.gjv, %.pre15452
  br i1 %i.gjw, label %.invoke.i.i3159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156: ; preds = %bb.aia
  %i.gjx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %182, ptr noundef %.pre15451, i64 noundef %.pre15452)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157 unwind label %.loopexit5908 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156
  %i.gjy = load i64, ptr %i.fsz, align 8, !alias.scope !267
  %i.gjz = add i64 %i.gjy, -4611686018427387893
  %i.gka = icmp ult i64 %i.gjz, 11
  br i1 %i.gka, label %.invoke.i.i3159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158

.invoke.i.i3159:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157, %bb.aia
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i3160 unwind label %.loopexit.split-lp5909

.cont.i.i3160:                                    ; preds = %.invoke.i.i3159
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157
  %i.gkb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %182, ptr noundef nonnull @.str.325, i64 noundef 11)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163 unwind label %.loopexit5908 ; 0 uses

.loopexit5908:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158
  %lpad.loopexit5910 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aib

.loopexit.split-lp5909:                           ; preds = %.invoke.i.i3159
  %lpad.loopexit.split-lp5911 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aib

bb.aib:                                           ; preds = %.loopexit.split-lp5909, %.loopexit5908
  %lpad.phi5912 = phi { ptr, i32 } [ %lpad.loopexit5910, %.loopexit5908 ], [ %lpad.loopexit.split-lp5911, %.loopexit.split-lp5909 ] ; 2 uses
  %i.gkc = load ptr, ptr %182, align 8, !alias.scope !267 ; 2 uses
  %i.gkd = icmp eq ptr %i.gkc, %i.fsy
  br i1 %i.gkd, label %.body3161, label %.body3161.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158
  %i.gke = load ptr, ptr %i.fta, align 8          ; 5 uses
  %i.gkf = load ptr, ptr %i.ftb, align 8
  %.not.i.i3164 = icmp eq ptr %i.gke, %i.gkf
  br i1 %.not.i.i3164, label %bb.aid, label %bb.aic

bb.aic:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163
  %i.gkg = load i64, ptr %i.bn, align 8
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.gke, i64 noundef %i.gkg)
          to label %.noexc3171 unwind label %.loopexit5913

.noexc3171:                                       ; preds = %bb.aic
  %i.gkh = load ptr, ptr %i.fta, align 8
  %i.gki = getelementptr inbounds nuw i8, ptr %i.gkh, i64 32 ; 2 uses
  store ptr %i.gki, ptr %i.fta, align 8
  %.pre15453 = load ptr, ptr %i.ftb, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKlEEERS2_DpOT_.exit.i3165

bb.aid:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163
  %i.gkj = load ptr, ptr %i.fsx, align 8          ; 5 uses
  %i.gkk = ptrtoint ptr %i.gke to i64
  %i.gkl = ptrtoint ptr %i.gkj to i64             ; 2 uses
  %i.gkm = sub i64 %i.gkk, %i.gkl                 ; 3 uses
  %i.gkn = icmp eq i64 %i.gkm, 9223372036854775776
  br i1 %i.gkn, label %.invoke17990, label %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4991

_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4991: ; preds = %bb.aid
  %i.gko = ashr exact i64 %i.gkm, 5               ; 3 uses
  %.sroa.speculated.i.i4992 = call i64 @llvm.umax.i64(i64 %i.gko, i64 1)
  %i.gkp = add nsw i64 %.sroa.speculated.i.i4992, %i.gko ; 2 uses
  %i.gkq = icmp ult i64 %i.gkp, %i.gko
  %i.gkr = call i64 @llvm.umin.i64(i64 %i.gkp, i64 288230376151711743)
  %i.gks = select i1 %i.gkq, i64 288230376151711743, i64 %i.gkr ; 3 uses
  %.not.i.i4993 = icmp ne i64 %i.gks, 0
  call void @llvm.assume(i1 %.not.i.i4993)
  %i.gkt = shl nuw nsw i64 %i.gks, 5              ; 2 uses
  %i.gku = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gkt) #34
          to label %.noexc5011 unwind label %.loopexit5913 ; 6 uses

.noexc5011:                                       ; preds = %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4991
  %i.gkv = getelementptr inbounds nuw i8, ptr %i.gku, i64 %i.gkm
  %i.gkw = load i64, ptr %i.bn, align 8
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.gkv, i64 noundef %i.gkw)
          to label %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4994 unwind label %bb.aig

_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4994: ; preds = %.noexc5011
  %.not10.i.i.i.i4995 = icmp eq ptr %i.gkj, %i.gke
  br i1 %.not10.i.i.i.i4995, label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5007, label %.lr.ph.i.i.i.i4996

.lr.ph.i.i.i.i4996:                               ; preds = %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4994, %.lr.ph.i.i.i.i4996
  %.012.i.i.i.i4997 = phi ptr [ %i.glf, %.lr.ph.i.i.i.i4996 ], [ %i.gku, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4994 ] ; 4 uses
  %.0911.i.i.i.i4998 = phi ptr [ %i.gle, %.lr.ph.i.i.i.i4996 ], [ %i.gkj, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4994 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.gkx = load i8, ptr %.0911.i.i.i.i4998, align 8, !alias.scope !273, !noalias !270
  store i8 %i.gkx, ptr %.012.i.i.i.i4997, align 8, !alias.scope !270, !noalias !273
  %i.gky = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4997, i64 8
  %i.gkz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i4998, i64 8 ; 2 uses
  %i.gla = load <2 x ptr>, ptr %i.gkz, align 8, !alias.scope !273, !noalias !270
  store <2 x ptr> %i.gla, ptr %i.gky, align 8, !alias.scope !270, !noalias !273
  %i.glb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4997, i64 24
  %i.glc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i4998, i64 24
  %i.gld = load ptr, ptr %i.glc, align 8, !alias.scope !273, !noalias !270
  store ptr %i.gld, ptr %i.glb, align 8, !alias.scope !270, !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gkz, i8 0, i64 24, i1 false), !alias.scope !273, !noalias !270
  %i.gle = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i4998, i64 32 ; 2 uses
  %i.glf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4997, i64 32 ; 2 uses
  %.not.i.i.i.i4999 = icmp eq ptr %i.gle, %i.gke
  br i1 %.not.i.i.i.i4999, label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5007, label %.lr.ph.i.i.i.i4996, !llvm.loop !146

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5007: ; preds = %.lr.ph.i.i.i.i4996, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4994
  %.0.lcssa.i.i.i.i5001 = phi ptr [ %i.gku, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4994 ], [ %i.glf, %.lr.ph.i.i.i.i4996 ]
  %i.glg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i5001, i64 32 ; 2 uses
  %.not.i33.i5009 = icmp eq ptr %i.gkj, null
  br i1 %.not.i33.i5009, label %.noexc3172, label %bb.aie

bb.aie:                                           ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5007
  %i.glh = load ptr, ptr %i.ftb, align 8
  %i.gli = ptrtoint ptr %i.glh to i64
  %i.glj = sub i64 %i.gli, %i.gkl
  call void @_ZdlPvm(ptr noundef nonnull %i.gkj, i64 noundef %i.glj) #32
  br label %.noexc3172

bb.aif:                                           ; preds = %bb.aig
  %i.glk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body4965 unwind label %bb.aih

bb.aig:                                           ; preds = %.noexc5011
  %i.gll = landingpad { ptr, i32 }
          catch ptr null
  %i.glm = extractvalue { ptr, i32 } %i.gll, 0
  %i.gln = call ptr @__cxa_begin_catch(ptr %i.glm) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.gku, i64 noundef %i.gkt) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.aii unwind label %bb.aif

bb.aih:                                           ; preds = %bb.aif
  %i.glo = landingpad { ptr, i32 }
          catch ptr null
end_hunk_4
begin_hunk_5_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.gqg = load i64, ptr %i.ftq, align 8
  %i.gqh = add i64 %i.gqg, 1
  call void @_ZdlPvm(ptr noundef %i.gqe, i64 noundef %i.gqh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3205: ; preds = %bb.ajg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3203
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #31
  br i1 %.not82816748, label %bb.alb, label %bb.ajh

bb.ajh:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3205
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #31
  store i32 0, ptr %i.fts, align 8
  store ptr null, ptr %i.ftt, align 8
  store ptr %i.fts, ptr %i.ftu, align 8
  store ptr %i.fts, ptr %i.ftv, align 8
  store i64 0, ptr %i.ftw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %187, i8 0, i64 24, i1 false)
  %i.gqi = getelementptr inbounds nuw i8, ptr %.267016746, i64 1028 ; 2 uses
  %i.gqj = load i32, ptr %i.gqi, align 4
  %.not14028 = icmp eq i32 %i.gqj, 0
  br i1 %.not14028, label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i3277, label %.lr.ph13911

.lr.ph13911:                                      ; preds = %bb.ajh
  %i.gqk = getelementptr inbounds nuw i8, ptr %.267016746, i64 1048 ; 2 uses
  br label %bb.ajj

.loopexit5913:                                    ; preds = %bb.aic, %bb.aij, %bb.aiq, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4945, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4967, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4991
  %lpad.loopexit5915 = landingpad { ptr, i32 }
          cleanup
  br label %.body4965

.loopexit.split-lp5914:                           ; preds = %.invoke17990
  %lpad.loopexit.split-lp5916 = landingpad { ptr, i32 }
          cleanup
  br label %.body4965

.body4965:                                        ; preds = %.loopexit5913, %.loopexit.split-lp5914, %bb.aim, %bb.aif, %bb.ait
  %eh.lpad-body4966 = phi { ptr, i32 } [ %i.gog, %bb.ait ], [ %i.gmv, %bb.aim ], [ %i.glk, %bb.aif ], [ %lpad.loopexit5915, %.loopexit5913 ], [ %lpad.loopexit.split-lp5916, %.loopexit.split-lp5914 ] ; 2 uses
  %i.gql = load ptr, ptr %182, align 8            ; 2 uses
  %i.gqm = icmp eq ptr %i.gql, %i.fsy
  br i1 %i.gqm, label %.body3161, label %.body3161.sink.split

.body3161.sink.split:                             ; preds = %.body4965, %bb.aib
  %.sink24220 = phi ptr [ %i.gkc, %bb.aib ], [ %i.gql, %.body4965 ]
  %.pn831.ph = phi { ptr, i32 } [ %lpad.phi5912, %bb.aib ], [ %eh.lpad-body4966, %.body4965 ]
  %i.gqn = load i64, ptr %i.fsy, align 8
  %i.gqo = add i64 %i.gqn, 1
  call void @_ZdlPvm(ptr noundef %.sink24220, i64 noundef %i.gqo) #32
  br label %.body3161

.body3161:                                        ; preds = %.body3161.sink.split, %.body4965, %bb.aib
  %.pn831 = phi { ptr, i32 } [ %lpad.phi5912, %bb.aib ], [ %eh.lpad-body4966, %.body4965 ], [ %.pn831.ph, %.body3161.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #31
  br label %bb.ane

.body3193:                                        ; preds = %bb.aje, %bb.aix
  %eh.lpad-body5037 = phi { ptr, i32 } [ %i.gpz, %bb.aje ], [ %i.gov, %bb.aix ]
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre15455 = load ptr, ptr %183, align 8        ; 2 uses
  %i.gqp = icmp eq ptr %.pre15455, %i.ftc
  br i1 %i.gqp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3216: ; preds = %.body3193
  %i.gqq = load i64, ptr %i.ftc, align 8
  %i.gqr = add i64 %i.gqq, 1
  call void @_ZdlPvm(ptr noundef %.pre15455, i64 noundef %i.gqr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3218: ; preds = %.body3193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3216
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #31
  br label %bb.ane

bb.aji:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3198
  %i.gqs = landingpad { ptr, i32 }
          cleanup
  %i.gqt = load ptr, ptr %184, align 8            ; 2 uses
  %i.gqu = icmp eq ptr %i.gqt, %i.ftq
  br i1 %i.gqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3219: ; preds = %bb.aji
  %i.gqv = load i64, ptr %i.ftq, align 8
  %i.gqw = add i64 %i.gqv, 1
  call void @_ZdlPvm(ptr noundef %i.gqt, i64 noundef %i.gqw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3221: ; preds = %bb.aji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3219
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #31
  br label %bb.ane

bb.ajj:                                           ; preds = %.lr.ph13911, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275
  %.067513909 = phi i32 [ -1, %.lr.ph13911 ], [ %.2677, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275 ] ; 5 uses
  %.067813908 = phi i64 [ 0, %.lr.ph13911 ], [ %i.gul, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275 ] ; 3 uses
  %i.gqx = load ptr, ptr %i.gqk, align 8
  %i.gqy = getelementptr inbounds nuw [8 x i8], ptr %i.gqx, i64 %.067813908
  %i.gqz = load i32, ptr %i.gqy, align 4
  %i.gra = zext i32 %i.gqz to i64                 ; 2 uses
  %i.grb = load ptr, ptr %46, align 8
  %i.grc = getelementptr inbounds nuw [24 x i8], ptr %i.grb, i64 %.066613938 ; 2 uses
  %i.grd = getelementptr inbounds nuw i8, ptr %i.grc, i64 8
  %i.gre = load ptr, ptr %i.grd, align 8
  %i.grf = load ptr, ptr %i.grc, align 8          ; 2 uses
  %i.grg = ptrtoint ptr %i.gre to i64
  %i.grh = ptrtoint ptr %i.grf to i64
  %i.gri = sub i64 %i.grg, %i.grh
  %i.grj = ashr exact i64 %i.gri, 2
  %.not849 = icmp ugt i64 %i.grj, %i.gra
  br i1 %.not849, label %bb.ajn, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  %i.grk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ajl unwind label %bb.ajm

bb.ajl:                                           ; preds = %bb.ajk
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.grk, ptr noundef nonnull @.str.336)
          to label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275 unwind label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl, %bb.ajk
  %i.grl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

bb.ajn:                                           ; preds = %bb.ajj
  %i.grm = getelementptr inbounds nuw [4 x i8], ptr %i.grf, i64 %i.gra
  %i.grn = load i32, ptr %i.grm, align 4
  %i.gro = load ptr, ptr %47, align 8
  %i.grp = getelementptr inbounds nuw [4 x i8], ptr %i.gro, i64 %.066613938
  %i.grq = load i32, ptr %i.grp, align 4
  %i.grr = add i32 %i.grq, %i.grn                 ; 12 uses
  %i.grs = load ptr, ptr %i.ftt, align 8          ; 3 uses
  %.not10.i.i.i3222 = icmp eq ptr %i.grs, null
  br i1 %.not10.i.i.i3222, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %.lr.ph.i.i.i3223

.lr.ph.i.i.i3223:                                 ; preds = %bb.ajn, %.lr.ph.i.i.i3223
  %.012.i.i.i3224 = phi ptr [ %.1.i.i.i3229, %.lr.ph.i.i.i3223 ], [ %i.grs, %bb.ajn ] ; 4 uses
  %.0811.i.i.i3225 = phi ptr [ %.19.i.i.i3226, %.lr.ph.i.i.i3223 ], [ %i.fts, %bb.ajn ] ; 2 uses
  %i.grt = getelementptr inbounds nuw i8, ptr %.012.i.i.i3224, i64 32
  %i.gru = load i32, ptr %i.grt, align 4
  %i.grv = icmp slt i32 %i.gru, %i.grr            ; 3 uses
  %.19.i.i.i3226 = select i1 %i.grv, ptr %.0811.i.i.i3225, ptr %.012.i.i.i3224 ; 2 uses
  %.1.in.v.i.i.i3227 = select i1 %i.grv, i64 24, i64 16
  %.1.in.i.i.i3228 = getelementptr inbounds nuw i8, ptr %.012.i.i.i3224, i64 %.1.in.v.i.i.i3227
  %.1.i.i.i3229 = load ptr, ptr %.1.in.i.i.i3228, align 8 ; 2 uses
  %.not.i.i.i3230 = icmp eq ptr %.1.i.i.i3229, null
  br i1 %.not.i.i.i3230, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i3223, !llvm.loop !285

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i3223
  %i.grw = icmp eq ptr %.19.i.i.i3226, %i.fts
  br i1 %i.grw, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, label %bb.ajo

bb.ajo:                                           ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.grv, ptr %.0811.i.i.i3225, ptr %.012.i.i.i3224
  %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.grx = load i32, ptr %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.gry = icmp sge i32 %i.grr, %i.grx
  br label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit:        ; preds = %bb.ajo, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.sroa.0.0.i.i3232 = phi i1 [ %i.gry, %bb.ajo ], [ false, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ]
  %i.grz = icmp eq i32 %i.grr, %.067513909
  %or.cond = or i1 %i.grz, %.sroa.0.0.i.i3232
  br i1 %or.cond, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275, label %.lr.ph.i.i.i3236

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread: ; preds = %bb.ajn
  %i.gsa = icmp eq i32 %i.grr, %.067513909
  br i1 %i.gsa, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275, label %._crit_edge.thread.i.i.i3251

.lr.ph.i.i.i3236:                                 ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, %.lr.ph.i.i.i3236
  %.02024.i.i.i3237 = phi ptr [ %.020.i.i.i3240, %.lr.ph.i.i.i3236 ], [ %i.grs, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit ] ; 4 uses
  %i.gsb = getelementptr inbounds nuw i8, ptr %.02024.i.i.i3237, i64 32
  %i.gsc = load i32, ptr %i.gsb, align 4          ; 2 uses
  %i.gsd = icmp slt i32 %i.grr, %i.gsc            ; 2 uses
  %.in.v.i.i.i3238 = select i1 %i.gsd, i64 16, i64 24
  %.in.i.i.i3239 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i3237, i64 %.in.v.i.i.i3238
  %.020.i.i.i3240 = load ptr, ptr %.in.i.i.i3239, align 8 ; 2 uses
  %.not.i.i.i3241 = icmp eq ptr %.020.i.i.i3240, null
  br i1 %.not.i.i.i3241, label %._crit_edge.i.i.i3242, label %.lr.ph.i.i.i3236, !llvm.loop !286

._crit_edge.i.i.i3242:                            ; preds = %.lr.ph.i.i.i3236
  br i1 %i.gsd, label %._crit_edge.thread.i.i.i3251, label %bb.ajq

._crit_edge.thread.i.i.i3251:                     ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, %._crit_edge.i.i.i3242
  %.019.lcssa29.i.i.i3252 = phi ptr [ %.02024.i.i.i3237, %._crit_edge.i.i.i3242 ], [ %i.fts, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread ] ; 4 uses
  %i.gse = load ptr, ptr %i.ftu, align 8
  %i.gsf = icmp eq ptr %.019.lcssa29.i.i.i3252, %i.gse
  br i1 %i.gsf, label %select.unfold.i.i3249, label %bb.ajp

bb.ajp:                                           ; preds = %._crit_edge.thread.i.i.i3251
  %i.gsg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i3252) #36
  %.phi.trans.insert.i.i3253 = getelementptr inbounds nuw i8, ptr %i.gsg, i64 32
  %.pre.i.i3254 = load i32, ptr %.phi.trans.insert.i.i3253, align 4
  br label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp, %._crit_edge.i.i.i3242
  %i.gsh = phi i32 [ %.pre.i.i3254, %bb.ajp ], [ %i.gsc, %._crit_edge.i.i.i3242 ]
  %.019.lcssa28.i.i.i3243 = phi ptr [ %.019.lcssa29.i.i.i3252, %bb.ajp ], [ %.02024.i.i.i3237, %._crit_edge.i.i.i3242 ]
  %i.gsi = icmp slt i32 %i.gsh, %i.grr
  br i1 %i.gsi, label %select.unfold.i.i3249, label %bb.ajs

select.unfold.i.i3249:                            ; preds = %bb.ajq, %._crit_edge.thread.i.i.i3251
  %.sroa.4.0.i.ph.i.i3250 = phi ptr [ %.019.lcssa29.i.i.i3252, %._crit_edge.thread.i.i.i3251 ], [ %.019.lcssa28.i.i.i3243, %bb.ajq ] ; 3 uses
  %i.gsj = icmp eq ptr %.sroa.4.0.i.ph.i.i3250, %i.fts
  br i1 %i.gsj, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.ajr

bb.ajr:                                           ; preds = %select.unfold.i.i3249
  %i.gsk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i3250, i64 32
  %i.gsl = load i32, ptr %i.gsk, align 4
  %i.gsm = icmp slt i32 %i.grr, %i.gsl
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.ajr, %select.unfold.i.i3249
  %i.gsn = phi i1 [ %i.gsm, %bb.ajr ], [ true, %select.unfold.i.i3249 ]
  %i.gso = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc3255 unwind label %.loopexit5898 ; 2 uses

.noexc3255:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.gsp = getelementptr inbounds nuw i8, ptr %i.gso, i64 32
  store i32 %i.grr, ptr %i.gsp, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gsn, ptr noundef nonnull %i.gso, ptr noundef nonnull %.sroa.4.0.i.ph.i.i3250, ptr noundef nonnull align 8 dereferenceable(32) %i.fts) #31
  %i.gsq = load i64, ptr %i.ftw, align 8
  %i.gsr = add i64 %i.gsq, 1
  store i64 %i.gsr, ptr %i.ftw, align 8
  br label %bb.ajs

bb.ajs:                                           ; preds = %.noexc3255, %bb.ajq
  %i.gss = load ptr, ptr %i.ftx, align 8          ; 3 uses
  %i.gst = load ptr, ptr %i.fty, align 8
  %.not.i3256 = icmp eq ptr %i.gss, %i.gst
  br i1 %.not.i3256, label %bb.aju, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  store i32 %i.grr, ptr %i.gss, align 4
  %i.gsu = load ptr, ptr %i.ftx, align 8
  %i.gsv = getelementptr inbounds nuw i8, ptr %i.gsu, i64 4
  store ptr %i.gsv, ptr %i.ftx, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3265

bb.aju:                                           ; preds = %bb.ajs
  %i.gsw = load ptr, ptr %186, align 8            ; 4 uses
  %i.gsx = ptrtoint ptr %i.gss to i64
  %i.gsy = ptrtoint ptr %i.gsw to i64
  %i.gsz = sub i64 %i.gsx, %i.gsy                 ; 6 uses
  %i.gta = icmp eq i64 %i.gsz, 9223372036854775804
  br i1 %i.gta, label %bb.ajv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3257

bb.ajv:                                           ; preds = %bb.aju
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc3263 unwind label %.loopexit.split-lp5899

.noexc3263:                                       ; preds = %bb.ajv
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3257: ; preds = %bb.aju
  %i.gtb = ashr exact i64 %i.gsz, 2               ; 3 uses
  %.sroa.speculated.i.i.i3258 = call i64 @llvm.umax.i64(i64 %i.gtb, i64 1)
  %i.gtc = add nsw i64 %.sroa.speculated.i.i.i3258, %i.gtb ; 2 uses
  %i.gtd = icmp ult i64 %i.gtc, %i.gtb
  %i.gte = call i64 @llvm.umin.i64(i64 %i.gtc, i64 2305843009213693951)
  %i.gtf = select i1 %i.gtd, i64 2305843009213693951, i64 %i.gte ; 3 uses
  %.not.i.i.i3259 = icmp ne i64 %i.gtf, 0
  call void @llvm.assume(i1 %.not.i.i.i3259)
  %i.gtg = shl nuw nsw i64 %i.gtf, 2
  %i.gth = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gtg) #34
          to label %.noexc3264 unwind label %.loopexit5898 ; 4 uses

.noexc3264:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3257
  %i.gti = getelementptr inbounds i8, ptr %i.gth, i64 %i.gsz ; 2 uses
  store i32 %i.grr, ptr %i.gti, align 4
  %i.gtj = icmp sgt i64 %i.gsz, 0
  br i1 %i.gtj, label %bb.ajw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3260

bb.ajw:                                           ; preds = %.noexc3264
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gth, ptr align 4 %i.gsw, i64 %i.gsz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3260

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3260: ; preds = %bb.ajw, %.noexc3264
  %i.gtk = getelementptr inbounds nuw i8, ptr %i.gti, i64 4
  %.not.i17.i.i3261 = icmp eq ptr %i.gsw, null
  br i1 %.not.i17.i.i3261, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3262, label %bb.ajx

bb.ajx:                                           ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3260
  call void @_ZdlPvm(ptr noundef nonnull %i.gsw, i64 noundef %i.gsz) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3262

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3262: ; preds = %bb.ajx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3260
  store ptr %i.gth, ptr %186, align 8
  store ptr %i.gtk, ptr %i.ftx, align 8
  %i.gtl = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %i.gtf
  store ptr %i.gtl, ptr %i.fty, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3265

_ZNSt6vectorIiSaIiEE9push_backERKi.exit3265:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3262, %bb.ajt
  %i.gtm = load ptr, ptr %i.gqk, align 8
  %i.gtn = getelementptr inbounds nuw [8 x i8], ptr %i.gtm, i64 %.067813908
  %i.gto = getelementptr inbounds nuw i8, ptr %i.gtn, i64 4
  %i.gtp = load float, ptr %i.gto, align 4
  %i.gtq = fpext float %i.gtp to double           ; 2 uses
  %i.gtr = load ptr, ptr %i.ftz, align 8          ; 3 uses
  %i.gts = load ptr, ptr %i.fua, align 8
  %.not.i.i3266 = icmp eq ptr %i.gtr, %i.gts
  br i1 %.not.i.i3266, label %bb.ajz, label %bb.ajy

bb.ajy:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3265
  store double %i.gtq, ptr %i.gtr, align 8
  %i.gtt = load ptr, ptr %i.ftz, align 8
  %i.gtu = getelementptr inbounds nuw i8, ptr %i.gtt, i64 8
  store ptr %i.gtu, ptr %i.ftz, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275

bb.ajz:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3265
  %i.gtv = load ptr, ptr %187, align 8            ; 4 uses
  %i.gtw = ptrtoint ptr %i.gtr to i64
  %i.gtx = ptrtoint ptr %i.gtv to i64
  %i.gty = sub i64 %i.gtw, %i.gtx                 ; 6 uses
  %i.gtz = icmp eq i64 %i.gty, 9223372036854775800
  br i1 %i.gtz, label %bb.aka, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3267

bb.aka:                                           ; preds = %bb.ajz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc3273 unwind label %.loopexit.split-lp5904

.noexc3273:                                       ; preds = %bb.aka
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3267: ; preds = %bb.ajz
  %i.gua = ashr exact i64 %i.gty, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i3268 = call i64 @llvm.umax.i64(i64 %i.gua, i64 1)
  %i.gub = add nsw i64 %.sroa.speculated.i.i.i.i3268, %i.gua ; 2 uses
  %i.guc = icmp ult i64 %i.gub, %i.gua
  %i.gud = call i64 @llvm.umin.i64(i64 %i.gub, i64 1152921504606846975)
  %i.gue = select i1 %i.guc, i64 1152921504606846975, i64 %i.gud ; 3 uses
  %.not.i.i.i.i3269 = icmp ne i64 %i.gue, 0
  call void @llvm.assume(i1 %.not.i.i.i.i3269)
  %i.guf = shl nuw nsw i64 %i.gue, 3
  %i.gug = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.guf) #34
          to label %.noexc3274 unwind label %.loopexit5903 ; 4 uses

.noexc3274:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3267
  %i.guh = getelementptr inbounds i8, ptr %i.gug, i64 %i.gty ; 2 uses
  store double %i.gtq, ptr %i.guh, align 8
  %i.gui = icmp sgt i64 %i.gty, 0
  br i1 %i.gui, label %bb.akb, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3270

bb.akb:                                           ; preds = %.noexc3274
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gug, ptr align 8 %i.gtv, i64 %i.gty, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3270

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3270: ; preds = %bb.akb, %.noexc3274
  %i.guj = getelementptr inbounds nuw i8, ptr %i.guh, i64 8
  %.not.i17.i.i.i3271 = icmp eq ptr %i.gtv, null
  br i1 %.not.i17.i.i.i3271, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3272, label %bb.akc

bb.akc:                                           ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3270
  call void @_ZdlPvm(ptr noundef nonnull %i.gtv, i64 noundef %i.gty) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3272

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3272: ; preds = %bb.akc, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3270
  store ptr %i.gug, ptr %187, align 8
  store ptr %i.guj, ptr %i.ftz, align 8
  %i.guk = getelementptr inbounds nuw [8 x i8], ptr %i.gug, i64 %i.gue
  store ptr %i.guk, ptr %i.fua, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275

_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275:       ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3272, %bb.ajy, %bb.ajl
  %.2677 = phi i32 [ %.067513909, %bb.ajl ], [ %.067513909, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread ], [ %.067513909, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit ], [ %i.grr, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3272 ], [ %i.grr, %bb.ajy ]
  %i.gul = add nuw nsw i64 %.067813908, 1         ; 2 uses
  %i.gum = load i32, ptr %i.gqi, align 4
  %i.gun = zext i32 %i.gum to i64
  %i.guo = icmp samesign ult i64 %i.gul, %i.gun
  br i1 %i.guo, label %bb.ajj, label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i3277, !llvm.loop !287

.loopexit5898:                                    ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3257
  %lpad.loopexit5900 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

.loopexit.split-lp5899:                           ; preds = %bb.ajv
  %lpad.loopexit.split-lp5901 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

.loopexit5903:                                    ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3267
  %lpad.loopexit5905 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

.loopexit.split-lp5904:                           ; preds = %bb.aka
  %lpad.loopexit.split-lp5906 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i3277: ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3275, %bb.ajh
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #31
  store ptr %i.fub, ptr %188, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fub, ptr noundef nonnull align 1 dereferenceable(7) @.str.322, i64 7, i1 false)
  store i64 7, ptr %i.fuc, align 8
  store i8 0, ptr %i.fxh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
end_hunk_5
begin_hunk_6_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3585: ; preds = %bb.aox
  %i.hsz = load i64, ptr %i.gar, align 8
  %i.hta = add i64 %i.hsz, 1
  call void @_ZdlPvm(ptr noundef %i.hsx, i64 noundef %i.hta) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3587: ; preds = %bb.aox, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3585
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #31
  br label %bb.apy

bb.aoy:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3570
  %i.htb = landingpad { ptr, i32 }
          cleanup
  %i.htc = load ptr, ptr %206, align 8            ; 2 uses
  %i.htd = icmp eq ptr %i.htc, %i.gat
  br i1 %i.htd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3588: ; preds = %bb.aoy
  %i.hte = load i64, ptr %i.gat, align 8
  %i.htf = add i64 %i.hte, 1
  call void @_ZdlPvm(ptr noundef %i.htc, i64 noundef %i.htf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3590: ; preds = %bb.aoy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3588
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #31
  br label %bb.apy

bb.aoz:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3577
  %i.htg = landingpad { ptr, i32 }
          cleanup
  %i.hth = load ptr, ptr %207, align 8            ; 2 uses
  %i.hti = icmp eq ptr %i.hth, %i.gav
  br i1 %i.hti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3591: ; preds = %bb.aoz
  %i.htj = load i64, ptr %i.gav, align 8
  %i.htk = add i64 %i.htj, 1
  call void @_ZdlPvm(ptr noundef %i.hth, i64 noundef %i.htk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3593: ; preds = %bb.aoz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3591
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #31
  br label %bb.apy

._crit_edge.i.i3594:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3560, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3550
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #31
  store ptr %i.gbb, ptr %208, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gbb, ptr noundef nonnull align 1 dereferenceable(9) @.str.355, i64 9, i1 false)
  store i64 9, ptr %i.gbc, align 8
  store i8 0, ptr %i.gbz, align 1
  invoke void @_ZN6Assimp3FBX4Node10AddP70enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112) %200, ptr noundef nonnull align 8 dereferenceable(32) %208, i32 noundef 0)
          to label %bb.apa unwind label %bb.apo

bb.apa:                                           ; preds = %._crit_edge.i.i3594
  %i.htl = load ptr, ptr %208, align 8            ; 2 uses
  %i.htm = icmp eq ptr %i.htl, %i.gbb
  br i1 %i.htm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3598

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3598: ; preds = %bb.apa
  %i.htn = load i64, ptr %i.gbb, align 8
  %i.hto = add i64 %i.htn, 1
  call void @_ZdlPvm(ptr noundef %i.htl, i64 noundef %i.hto) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3600: ; preds = %bb.apa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3598
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #31
  %i.htp = load ptr, ptr %i.gbd, align 8          ; 3 uses
  %i.htq = load ptr, ptr %i.gbe, align 8
  %.not.i.i3601 = icmp eq ptr %i.htp, %i.htq
  br i1 %.not.i.i3601, label %bb.apc, label %bb.apb

bb.apb:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3600
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.htp, ptr noundef nonnull align 8 dereferenceable(112) %200)
          to label %.noexc3602 unwind label %bb.app

.noexc3602:                                       ; preds = %bb.apb
  %i.htr = load ptr, ptr %i.gbd, align 8
  %i.hts = getelementptr inbounds nuw i8, ptr %i.htr, i64 112
  store ptr %i.hts, ptr %i.gbd, align 8
  br label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3604

bb.apc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3600
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gbf, ptr %i.htp, ptr noundef nonnull align 8 dereferenceable(112) %200)
          to label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3604 unwind label %bb.app

_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3604:      ; preds = %.noexc3602, %bb.apc
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #31
  store ptr %i.gbg, ptr %209, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gbg, ptr noundef nonnull align 1 dereferenceable(9) @.str.356, i64 9, i1 false)
  store i64 9, ptr %i.gbh, align 8
  store i8 0, ptr %i.gca, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #31
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1EPKcb(ptr noundef nonnull align 8 dereferenceable(32) %210, ptr noundef nonnull @.str.350, i1 noundef zeroext false)
          to label %bb.apd unwind label %bb.apq

bb.apd:                                           ; preds = %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3604
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJNS0_17FBXExportPropertyEEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %199, ptr noundef nonnull align 8 dereferenceable(32) %209, ptr noundef nonnull align 8 dereferenceable(32) %210)
          to label %bb.ape unwind label %bb.apr

bb.ape:                                           ; preds = %bb.apd
  %i.htt = load ptr, ptr %i.gbi, align 8          ; 3 uses
  %.not.i.i.i.i3609 = icmp eq ptr %i.htt, null
  br i1 %.not.i.i.i.i3609, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit, label %bb.apf

bb.apf:                                           ; preds = %bb.ape
  %i.htu = load ptr, ptr %i.gbj, align 8
  %i.htv = ptrtoint ptr %i.htu to i64
  %i.htw = ptrtoint ptr %i.htt to i64
  %i.htx = sub i64 %i.htv, %i.htw
  call void @_ZdlPvm(ptr noundef nonnull %i.htt, i64 noundef %i.htx) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit:       ; preds = %bb.ape, %bb.apf
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #31
  %i.hty = load ptr, ptr %209, align 8            ; 2 uses
  %i.htz = icmp eq ptr %i.hty, %i.gbg
  br i1 %i.htz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3613, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3611

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3611: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit
  %i.hua = load i64, ptr %i.gbg, align 8
  %i.hub = add i64 %i.hua, 1
  call void @_ZdlPvm(ptr noundef %i.hty, i64 noundef %i.hub) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3613

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3613: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3611
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #31
  store ptr %i.gbk, ptr %211, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.gbk, ptr noundef nonnull align 1 dereferenceable(15) @.str.357, i64 15, i1 false)
  store i64 15, ptr %i.gbl, align 8
  store i8 0, ptr %i.gcb, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #31
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1Ei(ptr noundef nonnull align 8 dereferenceable(32) %212, i32 noundef 124)
          to label %bb.apg unwind label %bb.apt

bb.apg:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3613
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJNS0_17FBXExportPropertyEEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %199, ptr noundef nonnull align 8 dereferenceable(32) %211, ptr noundef nonnull align 8 dereferenceable(32) %212)
          to label %bb.aph unwind label %bb.apu

bb.aph:                                           ; preds = %bb.apg
  %i.huc = load ptr, ptr %i.gbm, align 8          ; 3 uses
  %.not.i.i.i.i3618 = icmp eq ptr %i.huc, null
  br i1 %.not.i.i.i.i3618, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3620, label %bb.api

bb.api:                                           ; preds = %bb.aph
  %i.hud = load ptr, ptr %i.gbn, align 8
  %i.hue = ptrtoint ptr %i.hud to i64
  %i.huf = ptrtoint ptr %i.huc to i64
  %i.hug = sub i64 %i.hue, %i.huf
  call void @_ZdlPvm(ptr noundef nonnull %i.huc, i64 noundef %i.hug) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3620

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3620:   ; preds = %bb.aph, %bb.api
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #31
  %i.huh = load ptr, ptr %211, align 8            ; 2 uses
  %i.hui = icmp eq ptr %i.huh, %i.gbk
  br i1 %i.hui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3623, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3621: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3620
  %i.huj = load i64, ptr %i.gbk, align 8
  %i.huk = add i64 %i.huj, 1
  call void @_ZdlPvm(ptr noundef %i.huh, i64 noundef %i.huk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3623

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3623: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3620, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3621
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #31
  %i.hul = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.hum = trunc nuw i8 %i.hul to i1
  %i.hun = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %199, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.hum, i32 noundef %i.hun)
          to label %bb.apj unwind label %bb.app

bb.apj:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3623
  %i.huo = load i64, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #31
  store ptr %i.gbo, ptr %213, align 8
  %i.hup = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hpb) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store i64 %i.hup, ptr %i.l, align 8
  %i.huq = icmp ugt i64 %i.hup, 15
  br i1 %i.huq, label %.noexc.i3625, label %._crit_edge.i.i3624

.noexc.i3625:                                     ; preds = %bb.apj
  %i.hur = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %213, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc3626 unwind label %bb.apw ; 2 uses

.noexc3626:                                       ; preds = %.noexc.i3625
  store ptr %i.hur, ptr %213, align 8
  %i.hus = load i64, ptr %i.l, align 8
  store i64 %i.hus, ptr %i.gbo, align 8
  br label %._crit_edge.i.i3624

._crit_edge.i.i3624:                              ; preds = %.noexc3626, %bb.apj
  %i.hut = phi ptr [ %i.hur, %.noexc3626 ], [ %i.gbo, %bb.apj ] ; 2 uses
  switch i64 %i.hup, label %bb.apl [
    i64 1, label %bb.apk
    i64 0, label %bb.apm
  ]

bb.apk:                                           ; preds = %._crit_edge.i.i3624
  %i.huu = load i8, ptr %i.hpb, align 1
  store i8 %i.huu, ptr %i.hut, align 1
  br label %bb.apm

bb.apl:                                           ; preds = %._crit_edge.i.i3624
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hut, ptr nonnull align 1 %i.hpb, i64 %i.hup, i1 false)
  br label %bb.apm

bb.apm:                                           ; preds = %bb.apl, %bb.apk, %._crit_edge.i.i3624
  %i.huv = load i64, ptr %i.l, align 8            ; 2 uses
  store i64 %i.huv, ptr %i.gbp, align 8
  %i.huw = load ptr, ptr %213, align 8
  %i.hux = getelementptr inbounds nuw i8, ptr %i.huw, i64 %i.huv
  store i8 0, ptr %i.hux, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  %i.huy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.fzq, ptr noundef nonnull align 8 dereferenceable(32) %213)
          to label %bb.apn unwind label %bb.apx

bb.apn:                                           ; preds = %bb.apm
  store i64 %i.huo, ptr %i.huy, align 8
  %i.huz = load ptr, ptr %213, align 8            ; 2 uses
  %i.hva = icmp eq ptr %i.huz, %i.gbo
  br i1 %i.hva, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3628: ; preds = %bb.apn
  %i.hvb = load i64, ptr %i.gbo, align 8
  %i.hvc = add i64 %i.hvb, 1
  call void @_ZdlPvm(ptr noundef %i.huz, i64 noundef %i.hvc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3630: ; preds = %bb.apn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3628
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %200) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %199) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #31
  %i.hvd = load ptr, ptr %197, align 8            ; 2 uses
  %i.hve = icmp eq ptr %i.hvd, %i.gaf
  br i1 %i.hve, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3630
  %i.hvf = load i64, ptr %i.gaf, align 8
  %i.hvg = add i64 %i.hvf, 1
  call void @_ZdlPvm(ptr noundef %i.hvd, i64 noundef %i.hvg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3630, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3631
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #31
  %i.hvh = add nuw nsw i64 %.067113941, 1         ; 2 uses
  %i.hvi = load ptr, ptr %i.ep, align 8           ; 3 uses
  %i.hvj = getelementptr inbounds nuw i8, ptr %i.hvi, i64 80
  %i.hvk = load i32, ptr %i.hvj, align 8
  %i.hvl = zext i32 %i.hvk to i64
  %i.hvm = icmp samesign ult i64 %i.hvh, %i.hvl
  br i1 %i.hvm, label %bb.aoe, label %._crit_edge13943, !llvm.loop !304

bb.apo:                                           ; preds = %._crit_edge.i.i3594
  %i.hvn = landingpad { ptr, i32 }
          cleanup
  %i.hvo = load ptr, ptr %208, align 8            ; 2 uses
  %i.hvp = icmp eq ptr %i.hvo, %i.gbb
  br i1 %i.hvp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3636, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3634: ; preds = %bb.apo
  %i.hvq = load i64, ptr %i.gbb, align 8
  %i.hvr = add i64 %i.hvq, 1
  call void @_ZdlPvm(ptr noundef %i.hvo, i64 noundef %i.hvr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3636: ; preds = %bb.apo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3634
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #31
  br label %bb.apy

bb.app:                                           ; preds = %bb.apc, %bb.apb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3623
  %i.hvs = landingpad { ptr, i32 }
          cleanup
  br label %bb.apy

bb.apq:                                           ; preds = %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3604
  %i.hvt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3639

bb.apr:                                           ; preds = %bb.apd
  %i.hvu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hvv = load ptr, ptr %i.gbi, align 8          ; 3 uses
  %.not.i.i.i.i3637 = icmp eq ptr %i.hvv, null
  br i1 %.not.i.i.i.i3637, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3639, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  %i.hvw = load ptr, ptr %i.gbj, align 8
  %i.hvx = ptrtoint ptr %i.hvw to i64
  %i.hvy = ptrtoint ptr %i.hvv to i64
  %i.hvz = sub i64 %i.hvx, %i.hvy
  call void @_ZdlPvm(ptr noundef nonnull %i.hvv, i64 noundef %i.hvz) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3639

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3639:   ; preds = %bb.aps, %bb.apr, %bb.apq
  %.pn797 = phi { ptr, i32 } [ %i.hvt, %bb.apq ], [ %i.hvu, %bb.apr ], [ %i.hvu, %bb.aps ]
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #31
  %i.hwa = load ptr, ptr %209, align 8            ; 2 uses
  %i.hwb = icmp eq ptr %i.hwa, %i.gbg
  br i1 %i.hwb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3640: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3639
  %i.hwc = load i64, ptr %i.gbg, align 8
  %i.hwd = add i64 %i.hwc, 1
  call void @_ZdlPvm(ptr noundef %i.hwa, i64 noundef %i.hwd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3642: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3639, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3640
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #31
  br label %bb.apy

bb.apt:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3613
  %i.hwe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3645

bb.apu:                                           ; preds = %bb.apg
  %i.hwf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hwg = load ptr, ptr %i.gbm, align 8          ; 3 uses
  %.not.i.i.i.i3643 = icmp eq ptr %i.hwg, null
  br i1 %.not.i.i.i.i3643, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3645, label %bb.apv

bb.apv:                                           ; preds = %bb.apu
  %i.hwh = load ptr, ptr %i.gbn, align 8
  %i.hwi = ptrtoint ptr %i.hwh to i64
  %i.hwj = ptrtoint ptr %i.hwg to i64
  %i.hwk = sub i64 %i.hwi, %i.hwj
  call void @_ZdlPvm(ptr noundef nonnull %i.hwg, i64 noundef %i.hwk) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3645

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3645:   ; preds = %bb.apv, %bb.apu, %bb.apt
  %.pn800 = phi { ptr, i32 } [ %i.hwe, %bb.apt ], [ %i.hwf, %bb.apu ], [ %i.hwf, %bb.apv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #31
  %i.hwl = load ptr, ptr %211, align 8            ; 2 uses
  %i.hwm = icmp eq ptr %i.hwl, %i.gbk
  br i1 %i.hwm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3648, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3646

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3646: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3645
  %i.hwn = load i64, ptr %i.gbk, align 8
  %i.hwo = add i64 %i.hwn, 1
  call void @_ZdlPvm(ptr noundef %i.hwl, i64 noundef %i.hwo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3648: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit3645, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3646
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #31
  br label %bb.apy

bb.apw:                                           ; preds = %.noexc.i3625
  %i.hwp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3651

bb.apx:                                           ; preds = %bb.apm
  %i.hwq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hwr = load ptr, ptr %213, align 8            ; 2 uses
  %i.hws = icmp eq ptr %i.hwr, %i.gbo
  br i1 %i.hws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3651, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3649: ; preds = %bb.apx
  %i.hwt = load i64, ptr %i.gbo, align 8
  %i.hwu = add i64 %i.hwt, 1
  call void @_ZdlPvm(ptr noundef %i.hwr, i64 noundef %i.hwu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3651

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3651: ; preds = %bb.apx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3649, %bb.apw
  %.pn803 = phi { ptr, i32 } [ %i.hwp, %bb.apw ], [ %i.hwq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3649 ], [ %i.hwq, %bb.apx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #31
  br label %bb.apy

bb.apy:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3543, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3553, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3587, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3590, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3636, %bb.app, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3651
  %.pn803.pn = phi { ptr, i32 } [ %.pn803, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3651 ], [ %i.hvs, %bb.app ], [ %.pn800, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3648 ], [ %.pn797, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3642 ], [ %i.hvn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3636 ], [ %i.hro, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3553 ], [ %i.hrx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3563 ], [ %i.htg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3593 ], [ %i.htb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3590 ], [ %i.hsw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3587 ], [ %i.hrf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3543 ], [ %i.hra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3540 ]
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %200) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #31
  br label %bb.apz

bb.apz:                                           ; preds = %bb.aon, %bb.apy
  %.pn803.pn.pn.pn = phi { ptr, i32 } [ %.pn803.pn, %bb.apy ], [ %i.hqz, %bb.aon ] ; 2 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %199) #31
  %.pre15468 = load ptr, ptr %197, align 8        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #31
  %i.hwv = icmp eq ptr %.pre15468, %i.gaf
  br i1 %i.hwv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3652: ; preds = %bb.apz
  %i.hww = load i64, ptr %i.gaf, align 8
  %i.hwx = add i64 %i.hww, 1
  call void @_ZdlPvm(ptr noundef %.pre15468, i64 noundef %i.hwx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3654: ; preds = %bb.apz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3652, %.body3480
  %.pn803.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn775, %.body3480 ], [ %.pn803.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3652 ], [ %.pn803.pn.pn.pn, %bb.apz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #31
  br label %.body3032
end_hunk_6
begin_hunk_7_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.ixl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixa, <4 x float> %i.ixk, <4 x float> %i.ixj)
  %i.ixm = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ixn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixd, <4 x float> %i.ixm, <4 x float> %i.ixl) ; 2 uses
  store <4 x float> %i.ixn, ptr %i.ihd, align 16
  %i.ixo = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.ixp = fmul <4 x float> %i.ixo, %i.iwv
  %i.ixq = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.ixr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iwu, <4 x float> %i.ixq, <4 x float> %i.ixp)
  %i.ixs = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.ixt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixa, <4 x float> %i.ixs, <4 x float> %i.ixr)
  %i.ixu = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.ixv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixd, <4 x float> %i.ixu, <4 x float> %i.ixt) ; 2 uses
  store <4 x float> %i.ixv, ptr %i.ihe, align 16
  %i.ixw = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.ixx = fmul <4 x float> %i.ixw, %i.iwv
  %i.ixy = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ixz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iwu, <4 x float> %i.ixy, <4 x float> %i.ixx)
  %i.iya = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.iyb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixa, <4 x float> %i.iya, <4 x float> %i.ixz)
  %i.iyc = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.iyd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixd, <4 x float> %i.iyc, <4 x float> %i.iyb) ; 2 uses
  store <4 x float> %i.iyd, ptr %i.ihf, align 16
  %.not.i3992 = icmp eq ptr %i.iwo, %.sroa.012.0.lcssa.i3988
  %i.iye = shufflevector <4 x float> %i.ixf, <4 x float> %i.ixn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iyf = shufflevector <4 x float> %i.ixv, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iyg = shufflevector <16 x float> %i.iye, <16 x float> %i.iyf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iyh = shufflevector <4 x float> %i.iyd, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iyi = shufflevector <16 x float> %i.iyg, <16 x float> %i.iyh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  br i1 %.not.i3992, label %._crit_edge13990, label %.lr.ph13989

bb.att:                                           ; preds = %.loopexit.split-lp.i4019, %.loopexit.i4013
  %.pn5.i3995 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i4020, %.loopexit.split-lp.i4019 ], [ %lpad.loopexit.i4014, %.loopexit.i4013 ] ; 2 uses
  %.not.i.i.i9.i3996 = icmp eq ptr %.sroa.012.033.i4003, null
  br i1 %.not.i.i.i9.i3996, label %.body4022, label %bb.atu

bb.atu:                                           ; preds = %bb.att
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.033.i4003, i64 noundef %i.ivs) #32
  br label %.body4022

_Z19get_world_transformPK6aiNodePK7aiScene.exit4024: ; preds = %bb.ats, %._crit_edge13990
  call void @llvm.lifetime.start.p0(ptr nonnull %237) #31
  store <2 x float> zeroinitializer, ptr %237, align 8
  store float 0.000000e+00, ptr %i.ihh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %238) #31
  store <2 x float> zeroinitializer, ptr %238, align 8
  store float 0.000000e+00, ptr %i.ihj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #31
  store <2 x float> zeroinitializer, ptr %239, align 8
  store float 0.000000e+00, ptr %i.ihl, align 8
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %236, ptr noundef nonnull align 4 dereferenceable(12) %239, ptr noundef nonnull align 4 dereferenceable(12) %238, ptr noundef nonnull align 4 dereferenceable(12) %237)
          to label %bb.atv unwind label %bb.atx

bb.atv:                                           ; preds = %_Z19get_world_transformPK6aiNodePK7aiScene.exit4024
  %i.iyj = load ptr, ptr %224, align 8
  %i.iyk = getelementptr inbounds nuw [24 x i8], ptr %i.iyj, i64 %.064214011
  %i.iyl = load ptr, ptr %i.iyk, align 8
  %i.iym = getelementptr inbounds nuw [24 x i8], ptr %i.iyl, i64 %.064014007 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %240, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %241) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %241, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %242) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %242, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %243) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %243, i8 0, i64 24, i1 false)
  %i.iyn = getelementptr inbounds nuw i8, ptr %i.ive, i64 1028 ; 2 uses
  %i.iyo = load i32, ptr %i.iyn, align 4
  %.not14036 = icmp eq i32 %i.iyo, 0
  br i1 %.not14036, label %._crit_edge.i.i4025, label %.lr.ph14002

.lr.ph14002:                                      ; preds = %bb.atv
  %i.iyp = getelementptr inbounds nuw i8, ptr %i.ive, i64 1032
  br label %bb.aty

._crit_edge.i.i4025:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4067, %bb.atv
  %i.iyq = load float, ptr %237, align 8
  %i.iyr = load i64, ptr %i.iym, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %244) #31
  store ptr %i.ihu, ptr %244, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ihu, ptr noundef nonnull align 1 dereferenceable(3) @.str.364, i64 3, i1 false)
  store i64 3, ptr %i.ihv, align 8
  store i8 0, ptr %i.iiw, align 1
  %i.iys = fpext float %i.iyq to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.iys, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %241, i64 noundef %i.iyr, ptr noundef nonnull align 8 dereferenceable(32) %244)
          to label %bb.aut unwind label %bb.auw

bb.atw:                                           ; preds = %bb.atm
  %i.iyt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ayh

bb.atx:                                           ; preds = %_Z19get_world_transformPK6aiNodePK7aiScene.exit4024
  %i.iyu = landingpad { ptr, i32 }
          cleanup
  br label %bb.axm

bb.aty:                                           ; preds = %.lr.ph14002, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4067
  %.061914000 = phi i64 [ 0, %.lr.ph14002 ], [ %i.jcs, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4067 ] ; 2 uses
  %i.iyv = load ptr, ptr %i.iyp, align 8
  %i.iyw = getelementptr inbounds nuw [24 x i8], ptr %i.iyv, i64 %.061914000 ; 4 uses
  %i.iyx = load double, ptr %i.iyw, align 8       ; 2 uses
  %i.iyy = load double, ptr %i.iuv, align 8       ; 2 uses
  %i.iyz = fcmp oeq double %i.iyy, 0.000000e+00
  br i1 %i.iyz, label %_ZSt10fpclassifyd.exit.i4030, label %bb.atz

bb.atz:                                           ; preds = %bb.aty
  %i.iza = fdiv double %i.iyx, %i.iyy             ; 3 uses
  %i.izb = fcmp ogt double %i.iza, f0x41A7CE5B9F18D651
  br i1 %i.izb, label %_Z8to_ktimedPK11aiAnimation.exit4031, label %bb.aua

_ZSt10fpclassifyd.exit.i4030:                     ; preds = %bb.aty
  %i.izc = fmul double %i.iyx, f0x422581D1AF600000
  %i.izd = fptosi double %i.izc to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4031

bb.aua:                                           ; preds = %bb.atz
  %i.ize = fcmp olt double %i.iza, f0xC1A7CE5B9F18D651
  br i1 %i.ize, label %_Z8to_ktimedPK11aiAnimation.exit4031, label %bb.aub

bb.aub:                                           ; preds = %bb.aua
  %i.izf = fmul double %i.iza, f0x422581D1AF600000
  %i.izg = fptosi double %i.izf to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4031

_Z8to_ktimedPK11aiAnimation.exit4031:             ; preds = %bb.aub, %bb.aua, %_ZSt10fpclassifyd.exit.i4030, %bb.atz
  %.1.i4029 = phi i64 [ %i.izd, %_ZSt10fpclassifyd.exit.i4030 ], [ %i.izg, %bb.aub ], [ 9223372036854775807, %bb.atz ], [ -9223372036854775808, %bb.aua ] ; 2 uses
  %i.izh = load ptr, ptr %i.ihm, align 8          ; 3 uses
  %i.izi = load ptr, ptr %i.ihn, align 8
  %.not.i.i4032 = icmp eq ptr %i.izh, %i.izi
  br i1 %.not.i.i4032, label %bb.aud, label %bb.auc

bb.auc:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4031
  store i64 %.1.i4029, ptr %i.izh, align 8
  %i.izj = load ptr, ptr %i.ihm, align 8
  %i.izk = getelementptr inbounds nuw i8, ptr %i.izj, i64 8
  store ptr %i.izk, ptr %i.ihm, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.aud:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4031
  %i.izl = load ptr, ptr %240, align 8            ; 4 uses
  %i.izm = ptrtoint ptr %i.izh to i64
  %i.izn = ptrtoint ptr %i.izl to i64
  %i.izo = sub i64 %i.izm, %i.izn                 ; 6 uses
  %i.izp = icmp eq i64 %i.izo, 9223372036854775800
  br i1 %i.izp, label %bb.aue, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.aue:                                           ; preds = %bb.aud
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc4036 unwind label %.loopexit.split-lp5854

.noexc4036:                                       ; preds = %bb.aue
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aud
  %i.izq = ashr exact i64 %i.izo, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i4033 = call i64 @llvm.umax.i64(i64 %i.izq, i64 1)
  %i.izr = add nsw i64 %.sroa.speculated.i.i.i.i4033, %i.izq ; 2 uses
  %i.izs = icmp ult i64 %i.izr, %i.izq
  %i.izt = call i64 @llvm.umin.i64(i64 %i.izr, i64 1152921504606846975)
  %i.izu = select i1 %i.izs, i64 1152921504606846975, i64 %i.izt ; 3 uses
  %.not.i.i.i.i4034 = icmp ne i64 %i.izu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4034)
  %i.izv = shl nuw nsw i64 %i.izu, 3
  %i.izw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.izv) #34
          to label %.noexc4037 unwind label %.loopexit5853 ; 4 uses

.noexc4037:                                       ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.izx = getelementptr inbounds i8, ptr %i.izw, i64 %i.izo ; 2 uses
  store i64 %.1.i4029, ptr %i.izx, align 8
  %i.izy = icmp sgt i64 %i.izo, 0
  br i1 %i.izy, label %bb.auf, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.auf:                                           ; preds = %.noexc4037
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.izw, ptr align 8 %i.izl, i64 %i.izo, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.auf, %.noexc4037
  %i.izz = getelementptr inbounds nuw i8, ptr %i.izx, i64 8
  %.not.i17.i.i.i4035 = icmp eq ptr %i.izl, null
  br i1 %.not.i17.i.i.i4035, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.aug

bb.aug:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.izl, i64 noundef %i.izo) #32
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.aug, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.izw, ptr %240, align 8
  store ptr %i.izz, ptr %i.ihm, align 8
  %i.jaa = getelementptr inbounds nuw [8 x i8], ptr %i.izw, i64 %i.izu
  store ptr %i.jaa, ptr %i.ihn, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.auc
  %i.jab = getelementptr inbounds nuw i8, ptr %i.iyw, i64 8 ; 2 uses
  %i.jac = load ptr, ptr %i.iho, align 8          ; 3 uses
  %i.jad = load ptr, ptr %i.ihp, align 8
  %.not.i4038 = icmp eq ptr %i.jac, %i.jad
  br i1 %.not.i4038, label %bb.aui, label %bb.auh

bb.auh:                                           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.jae = load float, ptr %i.jab, align 4
  store float %i.jae, ptr %i.jac, align 4
  %i.jaf = load ptr, ptr %i.iho, align 8
  %i.jag = getelementptr inbounds nuw i8, ptr %i.jaf, i64 4
  store ptr %i.jag, ptr %i.iho, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4047

bb.aui:                                           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.jah = load ptr, ptr %241, align 8            ; 4 uses
  %i.jai = ptrtoint ptr %i.jac to i64
  %i.jaj = ptrtoint ptr %i.jah to i64
  %i.jak = sub i64 %i.jai, %i.jaj                 ; 6 uses
  %i.jal = icmp eq i64 %i.jak, 9223372036854775804
  br i1 %i.jal, label %.invoke17992, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4039

.invoke17992:                                     ; preds = %bb.auq, %bb.aum, %bb.aui
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.cont17993 unwind label %.loopexit.split-lp5859

.cont17993:                                       ; preds = %.invoke17992
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4039: ; preds = %bb.aui
  %i.jam = ashr exact i64 %i.jak, 2               ; 3 uses
  %.sroa.speculated.i.i.i4040 = call i64 @llvm.umax.i64(i64 %i.jam, i64 1)
  %i.jan = add nsw i64 %.sroa.speculated.i.i.i4040, %i.jam ; 2 uses
  %i.jao = icmp ult i64 %i.jan, %i.jam
  %i.jap = call i64 @llvm.umin.i64(i64 %i.jan, i64 2305843009213693951)
  %i.jaq = select i1 %i.jao, i64 2305843009213693951, i64 %i.jap ; 3 uses
  %.not.i.i.i4041 = icmp ne i64 %i.jaq, 0
  call void @llvm.assume(i1 %.not.i.i.i4041)
  %i.jar = shl nuw nsw i64 %i.jaq, 2
  %i.jas = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jar) #34
          to label %.noexc4046 unwind label %.loopexit5858 ; 4 uses

.noexc4046:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4039
  %i.jat = getelementptr inbounds i8, ptr %i.jas, i64 %i.jak ; 2 uses
  %i.jau = load float, ptr %i.jab, align 4
  store float %i.jau, ptr %i.jat, align 4
  %i.jav = icmp sgt i64 %i.jak, 0
  br i1 %i.jav, label %bb.auj, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4042

bb.auj:                                           ; preds = %.noexc4046
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jas, ptr align 4 %i.jah, i64 %i.jak, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4042

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4042: ; preds = %bb.auj, %.noexc4046
  %i.jaw = getelementptr inbounds nuw i8, ptr %i.jat, i64 4
  %.not.i17.i.i4043 = icmp eq ptr %i.jah, null
  br i1 %.not.i17.i.i4043, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4044, label %bb.auk

bb.auk:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4042
  call void @_ZdlPvm(ptr noundef nonnull %i.jah, i64 noundef %i.jak) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4044

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4044: ; preds = %bb.auk, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4042
  store ptr %i.jas, ptr %241, align 8
  store ptr %i.jaw, ptr %i.iho, align 8
  %i.jax = getelementptr inbounds nuw [4 x i8], ptr %i.jas, i64 %i.jaq
  store ptr %i.jax, ptr %i.ihp, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4047

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4047:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4044, %bb.auh
  %i.jay = getelementptr inbounds nuw i8, ptr %i.iyw, i64 12 ; 2 uses
  %i.jaz = load ptr, ptr %i.ihq, align 8          ; 3 uses
  %i.jba = load ptr, ptr %i.ihr, align 8
  %.not.i4048 = icmp eq ptr %i.jaz, %i.jba
  br i1 %.not.i4048, label %bb.aum, label %bb.aul

bb.aul:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4047
  %i.jbb = load float, ptr %i.jay, align 4
  store float %i.jbb, ptr %i.jaz, align 4
  %i.jbc = load ptr, ptr %i.ihq, align 8
  %i.jbd = getelementptr inbounds nuw i8, ptr %i.jbc, i64 4
  store ptr %i.jbd, ptr %i.ihq, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4057

bb.aum:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4047
  %i.jbe = load ptr, ptr %242, align 8            ; 4 uses
  %i.jbf = ptrtoint ptr %i.jaz to i64
  %i.jbg = ptrtoint ptr %i.jbe to i64
  %i.jbh = sub i64 %i.jbf, %i.jbg                 ; 6 uses
  %i.jbi = icmp eq i64 %i.jbh, 9223372036854775804
  br i1 %i.jbi, label %.invoke17992, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4049

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4049: ; preds = %bb.aum
  %i.jbj = ashr exact i64 %i.jbh, 2               ; 3 uses
  %.sroa.speculated.i.i.i4050 = call i64 @llvm.umax.i64(i64 %i.jbj, i64 1)
  %i.jbk = add nsw i64 %.sroa.speculated.i.i.i4050, %i.jbj ; 2 uses
  %i.jbl = icmp ult i64 %i.jbk, %i.jbj
  %i.jbm = call i64 @llvm.umin.i64(i64 %i.jbk, i64 2305843009213693951)
  %i.jbn = select i1 %i.jbl, i64 2305843009213693951, i64 %i.jbm ; 3 uses
  %.not.i.i.i4051 = icmp ne i64 %i.jbn, 0
  call void @llvm.assume(i1 %.not.i.i.i4051)
  %i.jbo = shl nuw nsw i64 %i.jbn, 2
  %i.jbp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jbo) #34
          to label %.noexc4056 unwind label %.loopexit5858 ; 4 uses

.noexc4056:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4049
  %i.jbq = getelementptr inbounds i8, ptr %i.jbp, i64 %i.jbh ; 2 uses
  %i.jbr = load float, ptr %i.jay, align 4
  store float %i.jbr, ptr %i.jbq, align 4
  %i.jbs = icmp sgt i64 %i.jbh, 0
  br i1 %i.jbs, label %bb.aun, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4052

bb.aun:                                           ; preds = %.noexc4056
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jbp, ptr align 4 %i.jbe, i64 %i.jbh, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4052

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4052: ; preds = %bb.aun, %.noexc4056
  %i.jbt = getelementptr inbounds nuw i8, ptr %i.jbq, i64 4
  %.not.i17.i.i4053 = icmp eq ptr %i.jbe, null
  br i1 %.not.i17.i.i4053, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4054, label %bb.auo

bb.auo:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4052
  call void @_ZdlPvm(ptr noundef nonnull %i.jbe, i64 noundef %i.jbh) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4054

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4054: ; preds = %bb.auo, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4052
  store ptr %i.jbp, ptr %242, align 8
  store ptr %i.jbt, ptr %i.ihq, align 8
  %i.jbu = getelementptr inbounds nuw [4 x i8], ptr %i.jbp, i64 %i.jbn
  store ptr %i.jbu, ptr %i.ihr, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4057

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4057:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4054, %bb.aul
  %i.jbv = getelementptr inbounds nuw i8, ptr %i.iyw, i64 16 ; 2 uses
  %i.jbw = load ptr, ptr %i.ihs, align 8          ; 3 uses
  %i.jbx = load ptr, ptr %i.iht, align 8
  %.not.i4058 = icmp eq ptr %i.jbw, %i.jbx
  br i1 %.not.i4058, label %bb.auq, label %bb.aup

bb.aup:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4057
  %i.jby = load float, ptr %i.jbv, align 4
  store float %i.jby, ptr %i.jbw, align 4
  %i.jbz = load ptr, ptr %i.ihs, align 8
  %i.jca = getelementptr inbounds nuw i8, ptr %i.jbz, i64 4
  store ptr %i.jca, ptr %i.ihs, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4067

bb.auq:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4057
  %i.jcb = load ptr, ptr %243, align 8            ; 4 uses
  %i.jcc = ptrtoint ptr %i.jbw to i64
  %i.jcd = ptrtoint ptr %i.jcb to i64
  %i.jce = sub i64 %i.jcc, %i.jcd                 ; 6 uses
  %i.jcf = icmp eq i64 %i.jce, 9223372036854775804
  br i1 %i.jcf, label %.invoke17992, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4059

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4059: ; preds = %bb.auq
  %i.jcg = ashr exact i64 %i.jce, 2               ; 3 uses
  %.sroa.speculated.i.i.i4060 = call i64 @llvm.umax.i64(i64 %i.jcg, i64 1)
  %i.jch = add nsw i64 %.sroa.speculated.i.i.i4060, %i.jcg ; 2 uses
  %i.jci = icmp ult i64 %i.jch, %i.jcg
  %i.jcj = call i64 @llvm.umin.i64(i64 %i.jch, i64 2305843009213693951)
  %i.jck = select i1 %i.jci, i64 2305843009213693951, i64 %i.jcj ; 3 uses
  %.not.i.i.i4061 = icmp ne i64 %i.jck, 0
  call void @llvm.assume(i1 %.not.i.i.i4061)
  %i.jcl = shl nuw nsw i64 %i.jck, 2
  %i.jcm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jcl) #34
          to label %.noexc4066 unwind label %.loopexit5858 ; 4 uses

.noexc4066:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4059
  %i.jcn = getelementptr inbounds i8, ptr %i.jcm, i64 %i.jce ; 2 uses
  %i.jco = load float, ptr %i.jbv, align 4
  store float %i.jco, ptr %i.jcn, align 4
  %i.jcp = icmp sgt i64 %i.jce, 0
  br i1 %i.jcp, label %bb.aur, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4062

bb.aur:                                           ; preds = %.noexc4066
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jcm, ptr align 4 %i.jcb, i64 %i.jce, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4062

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4062: ; preds = %bb.aur, %.noexc4066
  %i.jcq = getelementptr inbounds nuw i8, ptr %i.jcn, i64 4
  %.not.i17.i.i4063 = icmp eq ptr %i.jcb, null
  br i1 %.not.i17.i.i4063, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4064, label %bb.aus

bb.aus:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4062
  call void @_ZdlPvm(ptr noundef nonnull %i.jcb, i64 noundef %i.jce) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4064

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4064: ; preds = %bb.aus, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4062
  store ptr %i.jcm, ptr %243, align 8
  store ptr %i.jcq, ptr %i.ihs, align 8
  %i.jcr = getelementptr inbounds nuw [4 x i8], ptr %i.jcm, i64 %i.jck
  store ptr %i.jcr, ptr %i.iht, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4067

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4067:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4064, %bb.aup
  %i.jcs = add nuw nsw i64 %.061914000, 1         ; 2 uses
  %i.jct = load i32, ptr %i.iyn, align 4
  %i.jcu = zext i32 %i.jct to i64
  %i.jcv = icmp samesign ult i64 %i.jcs, %i.jcu
  br i1 %i.jcv, label %bb.aty, label %._crit_edge.i.i4025, !llvm.loop !331

.loopexit5853:                                    ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit5855 = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

.loopexit.split-lp5854:                           ; preds = %bb.aue
  %lpad.loopexit.split-lp5856 = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

.loopexit5858:                                    ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4039, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4049, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4059
  %lpad.loopexit5860 = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

.loopexit.split-lp5859:                           ; preds = %.invoke17992
  %lpad.loopexit.split-lp5861 = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

bb.aut:                                           ; preds = %._crit_edge.i.i4025
  %i.jcw = load ptr, ptr %244, align 8            ; 2 uses
  %i.jcx = icmp eq ptr %i.jcw, %i.ihu
  br i1 %i.jcx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4070, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4068: ; preds = %bb.aut
  %i.jcy = load i64, ptr %i.ihu, align 8
  %i.jcz = add i64 %i.jcy, 1
  call void @_ZdlPvm(ptr noundef %i.jcw, i64 noundef %i.jcz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4070

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4070: ; preds = %bb.aut, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4068
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #31
  %i.jda = load float, ptr %i.ihg, align 4
  %i.jdb = load i64, ptr %i.iym, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %245) #31
  store ptr %i.ihw, ptr %245, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ihw, ptr noundef nonnull align 1 dereferenceable(3) @.str.365, i64 3, i1 false)
  store i64 3, ptr %i.ihx, align 8
  store i8 0, ptr %i.iix, align 1
  %i.jdc = fpext float %i.jda to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jdc, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %242, i64 noundef %i.jdb, ptr noundef nonnull align 8 dereferenceable(32) %245)
          to label %bb.auu unwind label %bb.aux

bb.auu:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4070
  %i.jdd = load ptr, ptr %245, align 8            ; 2 uses
  %i.jde = icmp eq ptr %i.jdd, %i.ihw
  br i1 %i.jde, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4077, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4075

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4075: ; preds = %bb.auu
  %i.jdf = load i64, ptr %i.ihw, align 8
  %i.jdg = add i64 %i.jdf, 1
  call void @_ZdlPvm(ptr noundef %i.jdd, i64 noundef %i.jdg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4077

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4077: ; preds = %bb.auu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4075
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #31
  %i.jdh = load float, ptr %i.ihh, align 8
  %i.jdi = load i64, ptr %i.iym, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %246) #31
  store ptr %i.ihy, ptr %246, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ihy, ptr noundef nonnull align 1 dereferenceable(3) @.str.366, i64 3, i1 false)
  store i64 3, ptr %i.ihz, align 8
  store i8 0, ptr %i.iiy, align 1
  %i.jdj = fpext float %i.jdh to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jdj, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %243, i64 noundef %i.jdi, ptr noundef nonnull align 8 dereferenceable(32) %246)
          to label %bb.auv unwind label %bb.auy

bb.auv:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4077
  %i.jdk = load ptr, ptr %246, align 8            ; 2 uses
  %i.jdl = icmp eq ptr %i.jdk, %i.ihy
  br i1 %i.jdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4082

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4082: ; preds = %bb.auv
  %i.jdm = load i64, ptr %i.ihy, align 8
  %i.jdn = add i64 %i.jdm, 1
  call void @_ZdlPvm(ptr noundef %i.jdk, i64 noundef %i.jdn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4084

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4084: ; preds = %bb.auv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4082
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #31
  %i.jdo = load ptr, ptr %240, align 8            ; 2 uses
  %i.jdp = load ptr, ptr %i.ihm, align 8
  %.not.i.i4085 = icmp eq ptr %i.jdp, %i.jdo
  br i1 %.not.i.i4085, label %_ZNSt6vectorIlSaIlEE5clearEv.exit4087, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i4086

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i4086:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4084
  store ptr %i.jdo, ptr %i.ihm, align 8
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit4087

_ZNSt6vectorIlSaIlEE5clearEv.exit4087:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4084, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i4086
  %i.jdq = load ptr, ptr %241, align 8            ; 2 uses
  %i.jdr = load ptr, ptr %i.iho, align 8
  %.not.i.i4088 = icmp eq ptr %i.jdr, %i.jdq
  br i1 %.not.i.i4088, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit4087
  store ptr %i.jdq, ptr %i.iho, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit4087, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.jds = load ptr, ptr %242, align 8            ; 2 uses
  %i.jdt = load ptr, ptr %i.ihq, align 8
  %.not.i.i4089 = icmp eq ptr %i.jdt, %i.jds
  br i1 %.not.i.i4089, label %_ZNSt6vectorIfSaIfEE5clearEv.exit4091, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4090

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4090:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  store ptr %i.jds, ptr %i.ihq, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4091

_ZNSt6vectorIfSaIfEE5clearEv.exit4091:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4090
  %i.jdu = load ptr, ptr %243, align 8            ; 2 uses
  %i.jdv = load ptr, ptr %i.ihs, align 8
  %.not.i.i4092 = icmp eq ptr %i.jdv, %i.jdu
  br i1 %.not.i.i4092, label %_ZNSt6vectorIfSaIfEE5clearEv.exit4094, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4093

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4093:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4091
  store ptr %i.jdu, ptr %i.ihs, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4094

_ZNSt6vectorIfSaIfEE5clearEv.exit4094:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4091, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4093
  %i.jdw = getelementptr inbounds nuw i8, ptr %i.ive, i64 1040 ; 2 uses
  %i.jdx = load i32, ptr %i.jdw, align 8
  %.not14037 = icmp eq i32 %i.jdx, 0
  br i1 %.not14037, label %._crit_edge.i.i4095, label %.lr.ph14004

.lr.ph14004:                                      ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4094
  %i.jdy = getelementptr inbounds nuw i8, ptr %i.ive, i64 1048
  br label %bb.auz

._crit_edge.i.i4095:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4154, %_ZNSt6vectorIfSaIfEE5clearEv.exit4094
  %i.jdz = load float, ptr %238, align 8
  %i.jea = getelementptr inbounds nuw i8, ptr %i.iym, i64 8 ; 3 uses
  %i.jeb = load i64, ptr %i.jea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %251) #31
  store ptr %i.iik, ptr %251, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.iik, ptr noundef nonnull align 1 dereferenceable(3) @.str.364, i64 3, i1 false)
  store i64 3, ptr %i.iil, align 8
  store i8 0, ptr %i.iiz, align 1
  %i.jec = fpext float %i.jdz to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jec, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %241, i64 noundef %i.jeb, ptr noundef nonnull align 8 dereferenceable(32) %251)
          to label %bb.avw unwind label %bb.avz

bb.auw:                                           ; preds = %._crit_edge.i.i4025
  %i.jed = landingpad { ptr, i32 }
          cleanup
  %i.jee = load ptr, ptr %244, align 8            ; 2 uses
  %i.jef = icmp eq ptr %i.jee, %i.ihu
  br i1 %i.jef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4099

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4099: ; preds = %bb.auw
  %i.jeg = load i64, ptr %i.ihu, align 8
  %i.jeh = add i64 %i.jeg, 1
  call void @_ZdlPvm(ptr noundef %i.jee, i64 noundef %i.jeh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4101: ; preds = %bb.auw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4099
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #31
  br label %bb.axh

bb.aux:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4070
  %i.jei = landingpad { ptr, i32 }
          cleanup
  %i.jej = load ptr, ptr %245, align 8            ; 2 uses
  %i.jek = icmp eq ptr %i.jej, %i.ihw
  br i1 %i.jek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4102: ; preds = %bb.aux
  %i.jel = load i64, ptr %i.ihw, align 8
  %i.jem = add i64 %i.jel, 1
  call void @_ZdlPvm(ptr noundef %i.jej, i64 noundef %i.jem) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4104: ; preds = %bb.aux, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4102
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #31
  br label %bb.axh

bb.auy:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4077
  %i.jen = landingpad { ptr, i32 }
          cleanup
  %i.jeo = load ptr, ptr %246, align 8            ; 2 uses
  %i.jep = icmp eq ptr %i.jeo, %i.ihy
  br i1 %i.jep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4105: ; preds = %bb.auy
  %i.jeq = load i64, ptr %i.ihy, align 8
  %i.jer = add i64 %i.jeq, 1
  call void @_ZdlPvm(ptr noundef %i.jeo, i64 noundef %i.jer) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4107: ; preds = %bb.auy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4105
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #31
  br label %bb.axh

bb.auz:                                           ; preds = %.lr.ph14004, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4154
  %.061714003 = phi i64 [ 0, %.lr.ph14004 ], [ %i.jkg, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4154 ] ; 2 uses
  %i.jes = load ptr, ptr %i.jdy, align 8
  %i.jet = getelementptr inbounds nuw [32 x i8], ptr %i.jes, i64 %.061714003 ; 4 uses
  %i.jeu = load double, ptr %i.jet, align 8       ; 2 uses
  %i.jev = load double, ptr %i.iuv, align 8       ; 2 uses
  %i.jew = fcmp oeq double %i.jev, 0.000000e+00
  br i1 %i.jew, label %_ZSt10fpclassifyd.exit.i4109, label %bb.ava

bb.ava:                                           ; preds = %bb.auz
  %i.jex = fdiv double %i.jeu, %i.jev             ; 3 uses
  %i.jey = fcmp ogt double %i.jex, f0x41A7CE5B9F18D651
  br i1 %i.jey, label %_Z8to_ktimedPK11aiAnimation.exit4110, label %bb.avb

_ZSt10fpclassifyd.exit.i4109:                     ; preds = %bb.auz
  %i.jez = fmul double %i.jeu, f0x422581D1AF600000
  %i.jfa = fptosi double %i.jez to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4110

bb.avb:                                           ; preds = %bb.ava
  %i.jfb = fcmp olt double %i.jex, f0xC1A7CE5B9F18D651
  br i1 %i.jfb, label %_Z8to_ktimedPK11aiAnimation.exit4110, label %bb.avc

bb.avc:                                           ; preds = %bb.avb
  %i.jfc = fmul double %i.jex, f0x422581D1AF600000
  %i.jfd = fptosi double %i.jfc to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4110

_Z8to_ktimedPK11aiAnimation.exit4110:             ; preds = %bb.avc, %bb.avb, %_ZSt10fpclassifyd.exit.i4109, %bb.ava
  %.1.i4108 = phi i64 [ %i.jfa, %_ZSt10fpclassifyd.exit.i4109 ], [ %i.jfd, %bb.avc ], [ 9223372036854775807, %bb.ava ], [ -9223372036854775808, %bb.avb ] ; 2 uses
  %i.jfe = load ptr, ptr %i.ihm, align 8          ; 3 uses
  %i.jff = load ptr, ptr %i.ihn, align 8
  %.not.i.i4111 = icmp eq ptr %i.jfe, %i.jff
  br i1 %.not.i.i4111, label %bb.ave, label %bb.avd

bb.avd:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4110
  store i64 %.1.i4108, ptr %i.jfe, align 8
  %i.jfg = load ptr, ptr %i.ihm, align 8
  %i.jfh = getelementptr inbounds nuw i8, ptr %i.jfg, i64 8
  store ptr %i.jfh, ptr %i.ihm, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4120

bb.ave:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4110
  %i.jfi = load ptr, ptr %240, align 8            ; 4 uses
  %i.jfj = ptrtoint ptr %i.jfe to i64
  %i.jfk = ptrtoint ptr %i.jfi to i64
  %i.jfl = sub i64 %i.jfj, %i.jfk                 ; 6 uses
  %i.jfm = icmp eq i64 %i.jfl, 9223372036854775800
  br i1 %i.jfm, label %bb.avf, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4112

bb.avf:                                           ; preds = %bb.ave
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc4118 unwind label %.loopexit.split-lp5844

.noexc4118:                                       ; preds = %bb.avf
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4112: ; preds = %bb.ave
  %i.jfn = ashr exact i64 %i.jfl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i4113 = call i64 @llvm.umax.i64(i64 %i.jfn, i64 1)
  %i.jfo = add nsw i64 %.sroa.speculated.i.i.i.i4113, %i.jfn ; 2 uses
  %i.jfp = icmp ult i64 %i.jfo, %i.jfn
  %i.jfq = call i64 @llvm.umin.i64(i64 %i.jfo, i64 1152921504606846975)
  %i.jfr = select i1 %i.jfp, i64 1152921504606846975, i64 %i.jfq ; 3 uses
  %.not.i.i.i.i4114 = icmp ne i64 %i.jfr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4114)
  %i.jfs = shl nuw nsw i64 %i.jfr, 3
  %i.jft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jfs) #34
          to label %.noexc4119 unwind label %.loopexit5843 ; 4 uses

.noexc4119:                                       ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4112
  %i.jfu = getelementptr inbounds i8, ptr %i.jft, i64 %i.jfl ; 2 uses
  store i64 %.1.i4108, ptr %i.jfu, align 8
  %i.jfv = icmp sgt i64 %i.jfl, 0
  br i1 %i.jfv, label %bb.avg, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4115

bb.avg:                                           ; preds = %.noexc4119
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jft, ptr align 8 %i.jfi, i64 %i.jfl, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4115

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4115: ; preds = %bb.avg, %.noexc4119
  %i.jfw = getelementptr inbounds nuw i8, ptr %i.jfu, i64 8
  %.not.i17.i.i.i4116 = icmp eq ptr %i.jfi, null
  br i1 %.not.i17.i.i.i4116, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4117, label %bb.avh

bb.avh:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4115
  call void @_ZdlPvm(ptr noundef nonnull %i.jfi, i64 noundef %i.jfl) #32
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4117

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4117: ; preds = %bb.avh, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4115
  store ptr %i.jft, ptr %240, align 8
  store ptr %i.jfw, ptr %i.ihm, align 8
  %i.jfx = getelementptr inbounds nuw [8 x i8], ptr %i.jft, i64 %i.jfr
  store ptr %i.jfx, ptr %i.ihn, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4120

_ZNSt6vectorIlSaIlEE9push_backEOl.exit4120:       ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4117, %bb.avd
  call void @llvm.lifetime.start.p0(ptr nonnull %247) #31
  %i.jfy = getelementptr inbounds nuw i8, ptr %i.jet, i64 8
  %i.jfz = getelementptr inbounds nuw i8, ptr %i.jet, i64 16
  %i.jga = getelementptr inbounds nuw i8, ptr %i.jet, i64 12
  %i.jgb = load float, ptr %i.jfy, align 4, !noalias !332 ; 3 uses
  %i.jgc = fneg float %i.jgb                      ; 2 uses
  %i.jgd = load <2 x float>, ptr %i.jfz, align 4, !noalias !332 ; 6 uses
  %i.jge = shufflevector <2 x float> %i.jgd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jgf = extractelement <2 x float> %i.jgd, i64 1 ; 2 uses
  %i.jgg = fmul <2 x float> %i.jgd, %i.jgd
  %i.jgh = extractelement <2 x float> %i.jgg, i64 1 ; 2 uses
  %i.jgi = load <2 x float>, ptr %i.jga, align 4, !noalias !332 ; 7 uses
  %i.jgj = shufflevector <2 x float> %i.jgi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jgk = extractelement <2 x float> %i.jgi, i64 1 ; 4 uses
  %i.jgl = call float @llvm.fmuladd.f32(float %i.jgk, float %i.jgk, float %i.jgh)
  %i.jgm = call float @llvm.fmuladd.f32(float %i.jgl, float -2.000000e+00, float 1.000000e+00)
  %i.jgn = insertelement <2 x float> poison, float %i.jgc, i64 0
  %i.jgo = insertelement <2 x float> %i.jgn, float %i.jgb, i64 1 ; 2 uses
  %i.jgp = fmul <2 x float> %i.jge, %i.jgo
  %i.jgq = shufflevector <2 x float> %i.jgi, <2 x float> %i.jgd, <2 x i32> <i32 0, i32 3>
  %i.jgr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jgj, <2 x float> %i.jgq, <2 x float> %i.jgp)
  %i.jgs = fmul float %i.jgf, %i.jgb
  %i.jgt = extractelement <2 x float> %i.jgi, i64 0 ; 6 uses
  %i.jgu = call float @llvm.fmuladd.f32(float %i.jgt, float %i.jgk, float %i.jgs)
  %i.jgv = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.jgu, i64 3
  %i.jgw = shufflevector <2 x float> %i.jgr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jgx = shufflevector <4 x float> %i.jgw, <4 x float> %i.jgv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jgy = fmul <4 x float> %i.jgx, <float 2.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00>
  %i.jgz = call float @llvm.fmuladd.f32(float %i.jgt, float %i.jgt, float %i.jgh)
  %i.jha = call float @llvm.fmuladd.f32(float %i.jgz, float -2.000000e+00, float 1.000000e+00)
  %i.jhb = fmul float %i.jgt, %i.jgc
  %i.jhc = call float @llvm.fmuladd.f32(float %i.jgk, float %i.jgf, float %i.jhb)
  %i.jhd = fmul <2 x float> %i.jgi, %i.jgi
  %i.jhe = extractelement <2 x float> %i.jhd, i64 1
  %i.jhf = call float @llvm.fmuladd.f32(float %i.jgt, float %i.jgt, float %i.jhe)
  %i.jhg = call float @llvm.fmuladd.f32(float %i.jhf, float -2.000000e+00, float 1.000000e+00)
  store float %i.jgm, ptr %247, align 4
  store <4 x float> %i.jgy, ptr %i.iia, align 4
  store float %i.jha, ptr %i.iib, align 4
  %i.jhh = fmul <2 x float> %i.jgj, %i.jgo
  %i.jhi = shufflevector <2 x float> %i.jgd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jhj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jgi, <2 x float> %i.jhi, <2 x float> %i.jhh)
  %i.jhk = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.jhc, i64 0
  %i.jhl = shufflevector <2 x float> %i.jhj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jhm = shufflevector <4 x float> %i.jhk, <4 x float> %i.jhl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jhn = fmul <4 x float> %i.jhm, <float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %i.jhn, ptr %i.iic, align 4
  store float %i.jhg, ptr %i.iid, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iie, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.iif, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %248) #31
  store <2 x float> zeroinitializer, ptr %248, align 8
  store float 0.000000e+00, ptr %i.iig, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %249) #31
  store <2 x float> zeroinitializer, ptr %249, align 8
  store float 0.000000e+00, ptr %i.iii, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %250) #31
  store <2 x float> zeroinitializer, ptr %250, align 8
  store float 0.000000e+00, ptr %i.iij, align 8
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %247, ptr noundef nonnull align 4 dereferenceable(12) %248, ptr noundef nonnull align 4 dereferenceable(12) %249, ptr noundef nonnull align 4 dereferenceable(12) %250)
          to label %bb.avi unwind label %.loopexit5848

bb.avi:                                           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4120
  %i.jho = load <2 x float>, ptr %249, align 8
  %i.jhp = fmul <2 x float> %i.jho, splat (float f0x42652EE1) ; 3 uses
  %i.jhq = load float, ptr %i.iii, align 8
  %i.jhr = fmul float %i.jhq, f0x42652EE1
  store <2 x float> %i.jhp, ptr %249, align 8
  store float %i.jhr, ptr %i.iii, align 8
  %i.jhs = load ptr, ptr %i.iho, align 8          ; 3 uses
  %i.jht = load ptr, ptr %i.ihp, align 8
  %.not.i4125 = icmp eq ptr %i.jhs, %i.jht
  br i1 %.not.i4125, label %bb.avk, label %bb.avj

bb.avj:                                           ; preds = %bb.avi
  %i.jhu = extractelement <2 x float> %i.jhp, i64 0
  store float %i.jhu, ptr %i.jhs, align 4
  %i.jhv = load ptr, ptr %i.iho, align 8
  %i.jhw = getelementptr inbounds nuw i8, ptr %i.jhv, i64 4
  store ptr %i.jhw, ptr %i.iho, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4134

bb.avk:                                           ; preds = %bb.avi
  %i.jhx = load ptr, ptr %241, align 8            ; 4 uses
  %i.jhy = ptrtoint ptr %i.jhs to i64
  %i.jhz = ptrtoint ptr %i.jhx to i64
  %i.jia = sub i64 %i.jhy, %i.jhz                 ; 6 uses
  %i.jib = icmp eq i64 %i.jia, 9223372036854775804
  br i1 %i.jib, label %.invoke17994, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4126

.invoke17994:                                     ; preds = %bb.avs, %bb.avo, %bb.avk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.cont17995 unwind label %.loopexit.split-lp5849

.cont17995:                                       ; preds = %.invoke17994
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4126: ; preds = %bb.avk
  %i.jic = ashr exact i64 %i.jia, 2               ; 3 uses
  %.sroa.speculated.i.i.i4127 = call i64 @llvm.umax.i64(i64 %i.jic, i64 1)
  %i.jid = add nsw i64 %.sroa.speculated.i.i.i4127, %i.jic ; 2 uses
  %i.jie = icmp ult i64 %i.jid, %i.jic
  %i.jif = call i64 @llvm.umin.i64(i64 %i.jid, i64 2305843009213693951)
  %i.jig = select i1 %i.jie, i64 2305843009213693951, i64 %i.jif ; 3 uses
  %.not.i.i.i4128 = icmp ne i64 %i.jig, 0
  call void @llvm.assume(i1 %.not.i.i.i4128)
  %i.jih = shl nuw nsw i64 %i.jig, 2
  %i.jii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jih) #34
          to label %.noexc4133 unwind label %.loopexit5848 ; 4 uses

.noexc4133:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4126
  %i.jij = getelementptr inbounds i8, ptr %i.jii, i64 %i.jia ; 2 uses
  %i.jik = extractelement <2 x float> %i.jhp, i64 0
  store float %i.jik, ptr %i.jij, align 4
  %i.jil = icmp sgt i64 %i.jia, 0
  br i1 %i.jil, label %bb.avl, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4129

bb.avl:                                           ; preds = %.noexc4133
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jii, ptr align 4 %i.jhx, i64 %i.jia, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4129

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4129: ; preds = %bb.avl, %.noexc4133
  %i.jim = getelementptr inbounds nuw i8, ptr %i.jij, i64 4
  %.not.i17.i.i4130 = icmp eq ptr %i.jhx, null
  br i1 %.not.i17.i.i4130, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4131, label %bb.avm

bb.avm:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4129
  call void @_ZdlPvm(ptr noundef nonnull %i.jhx, i64 noundef %i.jia) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4131

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4131: ; preds = %bb.avm, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4129
  store ptr %i.jii, ptr %241, align 8
  store ptr %i.jim, ptr %i.iho, align 8
  %i.jin = getelementptr inbounds nuw [4 x i8], ptr %i.jii, i64 %i.jig
  store ptr %i.jin, ptr %i.ihp, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4134

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4134:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4131, %bb.avj
  %i.jio = load ptr, ptr %i.ihq, align 8          ; 3 uses
  %i.jip = load ptr, ptr %i.ihr, align 8
  %.not.i4135 = icmp eq ptr %i.jio, %i.jip
  br i1 %.not.i4135, label %bb.avo, label %bb.avn

bb.avn:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4134
  %i.jiq = load float, ptr %i.iih, align 4
  store float %i.jiq, ptr %i.jio, align 4
  %i.jir = load ptr, ptr %i.ihq, align 8
  %i.jis = getelementptr inbounds nuw i8, ptr %i.jir, i64 4
  store ptr %i.jis, ptr %i.ihq, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4144

bb.avo:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4134
  %i.jit = load ptr, ptr %242, align 8            ; 4 uses
  %i.jiu = ptrtoint ptr %i.jio to i64
  %i.jiv = ptrtoint ptr %i.jit to i64
  %i.jiw = sub i64 %i.jiu, %i.jiv                 ; 6 uses
  %i.jix = icmp eq i64 %i.jiw, 9223372036854775804
  br i1 %i.jix, label %.invoke17994, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4136

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4136: ; preds = %bb.avo
  %i.jiy = ashr exact i64 %i.jiw, 2               ; 3 uses
  %.sroa.speculated.i.i.i4137 = call i64 @llvm.umax.i64(i64 %i.jiy, i64 1)
  %i.jiz = add nsw i64 %.sroa.speculated.i.i.i4137, %i.jiy ; 2 uses
  %i.jja = icmp ult i64 %i.jiz, %i.jiy
  %i.jjb = call i64 @llvm.umin.i64(i64 %i.jiz, i64 2305843009213693951)
  %i.jjc = select i1 %i.jja, i64 2305843009213693951, i64 %i.jjb ; 3 uses
  %.not.i.i.i4138 = icmp ne i64 %i.jjc, 0
  call void @llvm.assume(i1 %.not.i.i.i4138)
  %i.jjd = shl nuw nsw i64 %i.jjc, 2
  %i.jje = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jjd) #34
          to label %.noexc4143 unwind label %.loopexit5848 ; 4 uses

.noexc4143:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4136
  %i.jjf = getelementptr inbounds i8, ptr %i.jje, i64 %i.jiw ; 2 uses
  %i.jjg = load float, ptr %i.iih, align 4
  store float %i.jjg, ptr %i.jjf, align 4
  %i.jjh = icmp sgt i64 %i.jiw, 0
  br i1 %i.jjh, label %bb.avp, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4139

bb.avp:                                           ; preds = %.noexc4143
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jje, ptr align 4 %i.jit, i64 %i.jiw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4139

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4139: ; preds = %bb.avp, %.noexc4143
  %i.jji = getelementptr inbounds nuw i8, ptr %i.jjf, i64 4
  %.not.i17.i.i4140 = icmp eq ptr %i.jit, null
  br i1 %.not.i17.i.i4140, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4141, label %bb.avq

bb.avq:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4139
  call void @_ZdlPvm(ptr noundef nonnull %i.jit, i64 noundef %i.jiw) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4141

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4141: ; preds = %bb.avq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4139
  store ptr %i.jje, ptr %242, align 8
  store ptr %i.jji, ptr %i.ihq, align 8
  %i.jjj = getelementptr inbounds nuw [4 x i8], ptr %i.jje, i64 %i.jjc
  store ptr %i.jjj, ptr %i.ihr, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4144

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4144:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4141, %bb.avn
  %i.jjk = load ptr, ptr %i.ihs, align 8          ; 3 uses
  %i.jjl = load ptr, ptr %i.iht, align 8
  %.not.i4145 = icmp eq ptr %i.jjk, %i.jjl
  br i1 %.not.i4145, label %bb.avs, label %bb.avr

bb.avr:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4144
  %i.jjm = load float, ptr %i.iii, align 8
end_hunk_7
begin_hunk_8_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4177

_ZNSt6vectorIfSaIfEE5clearEv.exit4177:            ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit4174, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4176
  %i.jlg = load ptr, ptr %242, align 8            ; 2 uses
  %i.jlh = load ptr, ptr %i.ihq, align 8
  %.not.i.i4178 = icmp eq ptr %i.jlh, %i.jlg
  br i1 %.not.i.i4178, label %_ZNSt6vectorIfSaIfEE5clearEv.exit4180, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4179

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4179:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4177
  store ptr %i.jlg, ptr %i.ihq, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4180

_ZNSt6vectorIfSaIfEE5clearEv.exit4180:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4177, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4179
  %i.jli = load ptr, ptr %243, align 8            ; 2 uses
  %i.jlj = load ptr, ptr %i.ihs, align 8
  %.not.i.i4181 = icmp eq ptr %i.jlj, %i.jli
  br i1 %.not.i.i4181, label %_ZNSt6vectorIfSaIfEE5clearEv.exit4183, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4182

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4182:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4180
  store ptr %i.jli, ptr %i.ihs, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4183

_ZNSt6vectorIfSaIfEE5clearEv.exit4183:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4180, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4182
  %i.jlk = getelementptr inbounds nuw i8, ptr %i.ive, i64 1056 ; 2 uses
  %i.jll = load i32, ptr %i.jlk, align 8
  %.not14038 = icmp eq i32 %i.jll, 0
  br i1 %.not14038, label %._crit_edge.i.i4184, label %.lr.ph14006

.lr.ph14006:                                      ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4183
  %i.jlm = getelementptr inbounds nuw i8, ptr %i.ive, i64 1064
  br label %bb.awc

._crit_edge.i.i4184:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4239, %_ZNSt6vectorIfSaIfEE5clearEv.exit4183
  %i.jln = load float, ptr %239, align 8
  %i.jlo = getelementptr inbounds nuw i8, ptr %i.iym, i64 16 ; 3 uses
  %i.jlp = load i64, ptr %i.jlo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %254) #31
  store ptr %i.iiq, ptr %254, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.iiq, ptr noundef nonnull align 1 dereferenceable(3) @.str.364, i64 3, i1 false)
  store i64 3, ptr %i.iir, align 8
  store i8 0, ptr %i.ijc, align 1
  %i.jlq = fpext float %i.jln to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jlq, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %241, i64 noundef %i.jlp, ptr noundef nonnull align 8 dereferenceable(32) %254)
          to label %bb.awx unwind label %bb.axe

bb.avz:                                           ; preds = %._crit_edge.i.i4095
  %i.jlr = landingpad { ptr, i32 }
          cleanup
  %i.jls = load ptr, ptr %251, align 8            ; 2 uses
  %i.jlt = icmp eq ptr %i.jls, %i.iik
  br i1 %i.jlt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4188: ; preds = %bb.avz
  %i.jlu = load i64, ptr %i.iik, align 8
  %i.jlv = add i64 %i.jlu, 1
  call void @_ZdlPvm(ptr noundef %i.jls, i64 noundef %i.jlv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4190: ; preds = %bb.avz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4188
  call void @llvm.lifetime.end.p0(ptr nonnull %251) #31
  br label %bb.axh

bb.awa:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4157
  %i.jlw = landingpad { ptr, i32 }
          cleanup
  %i.jlx = load ptr, ptr %252, align 8            ; 2 uses
  %i.jly = icmp eq ptr %i.jlx, %i.iim
  br i1 %i.jly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4191: ; preds = %bb.awa
  %i.jlz = load i64, ptr %i.iim, align 8
  %i.jma = add i64 %i.jlz, 1
  call void @_ZdlPvm(ptr noundef %i.jlx, i64 noundef %i.jma) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4193: ; preds = %bb.awa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4191
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #31
  br label %bb.axh

bb.awb:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4164
  %i.jmb = landingpad { ptr, i32 }
          cleanup
  %i.jmc = load ptr, ptr %253, align 8            ; 2 uses
  %i.jmd = icmp eq ptr %i.jmc, %i.iio
  br i1 %i.jmd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4194: ; preds = %bb.awb
  %i.jme = load i64, ptr %i.iio, align 8
  %i.jmf = add i64 %i.jme, 1
  call void @_ZdlPvm(ptr noundef %i.jmc, i64 noundef %i.jmf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4196: ; preds = %bb.awb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4194
  call void @llvm.lifetime.end.p0(ptr nonnull %253) #31
  br label %bb.axh

bb.awc:                                           ; preds = %.lr.ph14006, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4239
  %.032314005 = phi i64 [ 0, %.lr.ph14006 ], [ %i.jqd, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4239 ] ; 2 uses
  %i.jmg = load ptr, ptr %i.jlm, align 8
  %i.jmh = getelementptr inbounds nuw [24 x i8], ptr %i.jmg, i64 %.032314005 ; 4 uses
  %i.jmi = load double, ptr %i.jmh, align 8       ; 2 uses
  %i.jmj = load double, ptr %i.iuv, align 8       ; 2 uses
  %i.jmk = fcmp oeq double %i.jmj, 0.000000e+00
  br i1 %i.jmk, label %_ZSt10fpclassifyd.exit.i4198, label %bb.awd

bb.awd:                                           ; preds = %bb.awc
  %i.jml = fdiv double %i.jmi, %i.jmj             ; 3 uses
  %i.jmm = fcmp ogt double %i.jml, f0x41A7CE5B9F18D651
  br i1 %i.jmm, label %_Z8to_ktimedPK11aiAnimation.exit4199, label %bb.awe

_ZSt10fpclassifyd.exit.i4198:                     ; preds = %bb.awc
  %i.jmn = fmul double %i.jmi, f0x422581D1AF600000
  %i.jmo = fptosi double %i.jmn to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4199

bb.awe:                                           ; preds = %bb.awd
  %i.jmp = fcmp olt double %i.jml, f0xC1A7CE5B9F18D651
  br i1 %i.jmp, label %_Z8to_ktimedPK11aiAnimation.exit4199, label %bb.awf

bb.awf:                                           ; preds = %bb.awe
  %i.jmq = fmul double %i.jml, f0x422581D1AF600000
  %i.jmr = fptosi double %i.jmq to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4199

_Z8to_ktimedPK11aiAnimation.exit4199:             ; preds = %bb.awf, %bb.awe, %_ZSt10fpclassifyd.exit.i4198, %bb.awd
  %.1.i4197 = phi i64 [ %i.jmo, %_ZSt10fpclassifyd.exit.i4198 ], [ %i.jmr, %bb.awf ], [ 9223372036854775807, %bb.awd ], [ -9223372036854775808, %bb.awe ] ; 2 uses
  %i.jms = load ptr, ptr %i.ihm, align 8          ; 3 uses
  %i.jmt = load ptr, ptr %i.ihn, align 8
  %.not.i.i4200 = icmp eq ptr %i.jms, %i.jmt
  br i1 %.not.i.i4200, label %bb.awh, label %bb.awg

bb.awg:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4199
  store i64 %.1.i4197, ptr %i.jms, align 8
  %i.jmu = load ptr, ptr %i.ihm, align 8
  %i.jmv = getelementptr inbounds nuw i8, ptr %i.jmu, i64 8
  store ptr %i.jmv, ptr %i.ihm, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4209

bb.awh:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4199
  %i.jmw = load ptr, ptr %240, align 8            ; 4 uses
  %i.jmx = ptrtoint ptr %i.jms to i64
  %i.jmy = ptrtoint ptr %i.jmw to i64
  %i.jmz = sub i64 %i.jmx, %i.jmy                 ; 6 uses
  %i.jna = icmp eq i64 %i.jmz, 9223372036854775800
  br i1 %i.jna, label %bb.awi, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4201

bb.awi:                                           ; preds = %bb.awh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc4207 unwind label %.loopexit.split-lp

.noexc4207:                                       ; preds = %bb.awi
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4201: ; preds = %bb.awh
  %i.jnb = ashr exact i64 %i.jmz, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i4202 = call i64 @llvm.umax.i64(i64 %i.jnb, i64 1)
  %i.jnc = add nsw i64 %.sroa.speculated.i.i.i.i4202, %i.jnb ; 2 uses
  %i.jnd = icmp ult i64 %i.jnc, %i.jnb
  %i.jne = call i64 @llvm.umin.i64(i64 %i.jnc, i64 1152921504606846975)
  %i.jnf = select i1 %i.jnd, i64 1152921504606846975, i64 %i.jne ; 3 uses
  %.not.i.i.i.i4203 = icmp ne i64 %i.jnf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4203)
  %i.jng = shl nuw nsw i64 %i.jnf, 3
  %i.jnh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jng) #34
          to label %.noexc4208 unwind label %.loopexit ; 4 uses

.noexc4208:                                       ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4201
  %i.jni = getelementptr inbounds i8, ptr %i.jnh, i64 %i.jmz ; 2 uses
  store i64 %.1.i4197, ptr %i.jni, align 8
  %i.jnj = icmp sgt i64 %i.jmz, 0
  br i1 %i.jnj, label %bb.awj, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4204

bb.awj:                                           ; preds = %.noexc4208
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jnh, ptr align 8 %i.jmw, i64 %i.jmz, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4204

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4204: ; preds = %bb.awj, %.noexc4208
  %i.jnk = getelementptr inbounds nuw i8, ptr %i.jni, i64 8
  %.not.i17.i.i.i4205 = icmp eq ptr %i.jmw, null
  br i1 %.not.i17.i.i.i4205, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4206, label %bb.awk

bb.awk:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4204
  call void @_ZdlPvm(ptr noundef nonnull %i.jmw, i64 noundef %i.jmz) #32
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4206

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4206: ; preds = %bb.awk, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4204
  store ptr %i.jnh, ptr %240, align 8
  store ptr %i.jnk, ptr %i.ihm, align 8
  %i.jnl = getelementptr inbounds nuw [8 x i8], ptr %i.jnh, i64 %i.jnf
  store ptr %i.jnl, ptr %i.ihn, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4209

_ZNSt6vectorIlSaIlEE9push_backEOl.exit4209:       ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4206, %bb.awg
  %i.jnm = getelementptr inbounds nuw i8, ptr %i.jmh, i64 8 ; 2 uses
  %i.jnn = load ptr, ptr %i.iho, align 8          ; 3 uses
  %i.jno = load ptr, ptr %i.ihp, align 8
  %.not.i4210 = icmp eq ptr %i.jnn, %i.jno
  br i1 %.not.i4210, label %bb.awm, label %bb.awl

bb.awl:                                           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4209
  %i.jnp = load float, ptr %i.jnm, align 4
  store float %i.jnp, ptr %i.jnn, align 4
  %i.jnq = load ptr, ptr %i.iho, align 8
  %i.jnr = getelementptr inbounds nuw i8, ptr %i.jnq, i64 4
  store ptr %i.jnr, ptr %i.iho, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4219

bb.awm:                                           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4209
  %i.jns = load ptr, ptr %241, align 8            ; 4 uses
  %i.jnt = ptrtoint ptr %i.jnn to i64
  %i.jnu = ptrtoint ptr %i.jns to i64
  %i.jnv = sub i64 %i.jnt, %i.jnu                 ; 6 uses
  %i.jnw = icmp eq i64 %i.jnv, 9223372036854775804
  br i1 %i.jnw, label %.invoke17996, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4211

.invoke17996:                                     ; preds = %bb.awu, %bb.awq, %bb.awm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.cont17997 unwind label %.loopexit.split-lp5839

.cont17997:                                       ; preds = %.invoke17996
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4211: ; preds = %bb.awm
  %i.jnx = ashr exact i64 %i.jnv, 2               ; 3 uses
  %.sroa.speculated.i.i.i4212 = call i64 @llvm.umax.i64(i64 %i.jnx, i64 1)
  %i.jny = add nsw i64 %.sroa.speculated.i.i.i4212, %i.jnx ; 2 uses
  %i.jnz = icmp ult i64 %i.jny, %i.jnx
  %i.joa = call i64 @llvm.umin.i64(i64 %i.jny, i64 2305843009213693951)
  %i.job = select i1 %i.jnz, i64 2305843009213693951, i64 %i.joa ; 3 uses
  %.not.i.i.i4213 = icmp ne i64 %i.job, 0
  call void @llvm.assume(i1 %.not.i.i.i4213)
  %i.joc = shl nuw nsw i64 %i.job, 2
  %i.jod = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.joc) #34
          to label %.noexc4218 unwind label %.loopexit5838 ; 4 uses

.noexc4218:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4211
  %i.joe = getelementptr inbounds i8, ptr %i.jod, i64 %i.jnv ; 2 uses
  %i.jof = load float, ptr %i.jnm, align 4
  store float %i.jof, ptr %i.joe, align 4
  %i.jog = icmp sgt i64 %i.jnv, 0
  br i1 %i.jog, label %bb.awn, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4214

bb.awn:                                           ; preds = %.noexc4218
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jod, ptr align 4 %i.jns, i64 %i.jnv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4214

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4214: ; preds = %bb.awn, %.noexc4218
  %i.joh = getelementptr inbounds nuw i8, ptr %i.joe, i64 4
  %.not.i17.i.i4215 = icmp eq ptr %i.jns, null
  br i1 %.not.i17.i.i4215, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4216, label %bb.awo

bb.awo:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4214
  call void @_ZdlPvm(ptr noundef nonnull %i.jns, i64 noundef %i.jnv) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4216

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4216: ; preds = %bb.awo, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4214
  store ptr %i.jod, ptr %241, align 8
  store ptr %i.joh, ptr %i.iho, align 8
  %i.joi = getelementptr inbounds nuw [4 x i8], ptr %i.jod, i64 %i.job
  store ptr %i.joi, ptr %i.ihp, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4219

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4219:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4216, %bb.awl
  %i.joj = getelementptr inbounds nuw i8, ptr %i.jmh, i64 12 ; 2 uses
  %i.jok = load ptr, ptr %i.ihq, align 8          ; 3 uses
  %i.jol = load ptr, ptr %i.ihr, align 8
  %.not.i4220 = icmp eq ptr %i.jok, %i.jol
  br i1 %.not.i4220, label %bb.awq, label %bb.awp

bb.awp:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4219
  %i.jom = load float, ptr %i.joj, align 4
  store float %i.jom, ptr %i.jok, align 4
  %i.jon = load ptr, ptr %i.ihq, align 8
  %i.joo = getelementptr inbounds nuw i8, ptr %i.jon, i64 4
  store ptr %i.joo, ptr %i.ihq, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4229

bb.awq:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4219
  %i.jop = load ptr, ptr %242, align 8            ; 4 uses
  %i.joq = ptrtoint ptr %i.jok to i64
  %i.jor = ptrtoint ptr %i.jop to i64
  %i.jos = sub i64 %i.joq, %i.jor                 ; 6 uses
  %i.jot = icmp eq i64 %i.jos, 9223372036854775804
  br i1 %i.jot, label %.invoke17996, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4221

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4221: ; preds = %bb.awq
  %i.jou = ashr exact i64 %i.jos, 2               ; 3 uses
  %.sroa.speculated.i.i.i4222 = call i64 @llvm.umax.i64(i64 %i.jou, i64 1)
  %i.jov = add nsw i64 %.sroa.speculated.i.i.i4222, %i.jou ; 2 uses
  %i.jow = icmp ult i64 %i.jov, %i.jou
  %i.jox = call i64 @llvm.umin.i64(i64 %i.jov, i64 2305843009213693951)
  %i.joy = select i1 %i.jow, i64 2305843009213693951, i64 %i.jox ; 3 uses
  %.not.i.i.i4223 = icmp ne i64 %i.joy, 0
  call void @llvm.assume(i1 %.not.i.i.i4223)
  %i.joz = shl nuw nsw i64 %i.joy, 2
  %i.jpa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.joz) #34
          to label %.noexc4228 unwind label %.loopexit5838 ; 4 uses

.noexc4228:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4221
  %i.jpb = getelementptr inbounds i8, ptr %i.jpa, i64 %i.jos ; 2 uses
  %i.jpc = load float, ptr %i.joj, align 4
  store float %i.jpc, ptr %i.jpb, align 4
  %i.jpd = icmp sgt i64 %i.jos, 0
  br i1 %i.jpd, label %bb.awr, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4224

bb.awr:                                           ; preds = %.noexc4228
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jpa, ptr align 4 %i.jop, i64 %i.jos, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4224

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4224: ; preds = %bb.awr, %.noexc4228
  %i.jpe = getelementptr inbounds nuw i8, ptr %i.jpb, i64 4
  %.not.i17.i.i4225 = icmp eq ptr %i.jop, null
  br i1 %.not.i17.i.i4225, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4226, label %bb.aws

bb.aws:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4224
  call void @_ZdlPvm(ptr noundef nonnull %i.jop, i64 noundef %i.jos) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4226

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4226: ; preds = %bb.aws, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4224
  store ptr %i.jpa, ptr %242, align 8
  store ptr %i.jpe, ptr %i.ihq, align 8
  %i.jpf = getelementptr inbounds nuw [4 x i8], ptr %i.jpa, i64 %i.joy
  store ptr %i.jpf, ptr %i.ihr, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4229

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4229:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4226, %bb.awp
  %i.jpg = getelementptr inbounds nuw i8, ptr %i.jmh, i64 16 ; 2 uses
  %i.jph = load ptr, ptr %i.ihs, align 8          ; 3 uses
  %i.jpi = load ptr, ptr %i.iht, align 8
  %.not.i4230 = icmp eq ptr %i.jph, %i.jpi
  br i1 %.not.i4230, label %bb.awu, label %bb.awt

bb.awt:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4229
  %i.jpj = load float, ptr %i.jpg, align 4
  store float %i.jpj, ptr %i.jph, align 4
  %i.jpk = load ptr, ptr %i.ihs, align 8
  %i.jpl = getelementptr inbounds nuw i8, ptr %i.jpk, i64 4
  store ptr %i.jpl, ptr %i.ihs, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4239

bb.awu:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4229
  %i.jpm = load ptr, ptr %243, align 8            ; 4 uses
  %i.jpn = ptrtoint ptr %i.jph to i64
  %i.jpo = ptrtoint ptr %i.jpm to i64
  %i.jpp = sub i64 %i.jpn, %i.jpo                 ; 6 uses
  %i.jpq = icmp eq i64 %i.jpp, 9223372036854775804
  br i1 %i.jpq, label %.invoke17996, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4231

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4231: ; preds = %bb.awu
  %i.jpr = ashr exact i64 %i.jpp, 2               ; 3 uses
  %.sroa.speculated.i.i.i4232 = call i64 @llvm.umax.i64(i64 %i.jpr, i64 1)
  %i.jps = add nsw i64 %.sroa.speculated.i.i.i4232, %i.jpr ; 2 uses
  %i.jpt = icmp ult i64 %i.jps, %i.jpr
  %i.jpu = call i64 @llvm.umin.i64(i64 %i.jps, i64 2305843009213693951)
  %i.jpv = select i1 %i.jpt, i64 2305843009213693951, i64 %i.jpu ; 3 uses
  %.not.i.i.i4233 = icmp ne i64 %i.jpv, 0
  call void @llvm.assume(i1 %.not.i.i.i4233)
  %i.jpw = shl nuw nsw i64 %i.jpv, 2
  %i.jpx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jpw) #34
          to label %.noexc4238 unwind label %.loopexit5838 ; 4 uses

.noexc4238:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4231
  %i.jpy = getelementptr inbounds i8, ptr %i.jpx, i64 %i.jpp ; 2 uses
  %i.jpz = load float, ptr %i.jpg, align 4
  store float %i.jpz, ptr %i.jpy, align 4
  %i.jqa = icmp sgt i64 %i.jpp, 0
  br i1 %i.jqa, label %bb.awv, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4234

bb.awv:                                           ; preds = %.noexc4238
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jpx, ptr align 4 %i.jpm, i64 %i.jpp, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4234

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4234: ; preds = %bb.awv, %.noexc4238
  %i.jqb = getelementptr inbounds nuw i8, ptr %i.jpy, i64 4
  %.not.i17.i.i4235 = icmp eq ptr %i.jpm, null
  br i1 %.not.i17.i.i4235, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4236, label %bb.aww

bb.aww:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4234
  call void @_ZdlPvm(ptr noundef nonnull %i.jpm, i64 noundef %i.jpp) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4236

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4236: ; preds = %bb.aww, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4234
  store ptr %i.jpx, ptr %243, align 8
  store ptr %i.jqb, ptr %i.ihs, align 8
  %i.jqc = getelementptr inbounds nuw [4 x i8], ptr %i.jpx, i64 %i.jpv
  store ptr %i.jqc, ptr %i.iht, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4239

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4239:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4236, %bb.awt
  %i.jqd = add nuw nsw i64 %.032314005, 1         ; 2 uses
  %i.jqe = load i32, ptr %i.jlk, align 8
  %i.jqf = zext i32 %i.jqe to i64
  %i.jqg = icmp samesign ult i64 %i.jqd, %i.jqf
  br i1 %i.jqg, label %bb.awc, label %._crit_edge.i.i4184, !llvm.loop !336

.loopexit:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4201
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

.loopexit.split-lp:                               ; preds = %bb.awi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

.loopexit5838:                                    ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4211, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4221, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4231
  %lpad.loopexit5840 = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

.loopexit.split-lp5839:                           ; preds = %.invoke17996
  %lpad.loopexit.split-lp5841 = landingpad { ptr, i32 }
          cleanup
  br label %bb.axh

bb.awx:                                           ; preds = %._crit_edge.i.i4184
  %i.jqh = load ptr, ptr %254, align 8            ; 2 uses
  %i.jqi = icmp eq ptr %i.jqh, %i.iiq
  br i1 %i.jqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4240: ; preds = %bb.awx
  %i.jqj = load i64, ptr %i.iiq, align 8
  %i.jqk = add i64 %i.jqj, 1
  call void @_ZdlPvm(ptr noundef %i.jqh, i64 noundef %i.jqk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4242: ; preds = %bb.awx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4240
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #31
  %i.jql = load float, ptr %i.ihk, align 4
  %i.jqm = load i64, ptr %i.jlo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %255) #31
  store ptr %i.iis, ptr %255, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.iis, ptr noundef nonnull align 1 dereferenceable(3) @.str.365, i64 3, i1 false)
  store i64 3, ptr %i.iit, align 8
  store i8 0, ptr %i.ijd, align 1
  %i.jqn = fpext float %i.jql to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jqn, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %242, i64 noundef %i.jqm, ptr noundef nonnull align 8 dereferenceable(32) %255)
          to label %bb.awy unwind label %bb.axf

bb.awy:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4242
  %i.jqo = load ptr, ptr %255, align 8            ; 2 uses
  %i.jqp = icmp eq ptr %i.jqo, %i.iis
  br i1 %i.jqp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4247: ; preds = %bb.awy
  %i.jqq = load i64, ptr %i.iis, align 8
  %i.jqr = add i64 %i.jqq, 1
  call void @_ZdlPvm(ptr noundef %i.jqo, i64 noundef %i.jqr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4249: ; preds = %bb.awy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4247
  call void @llvm.lifetime.end.p0(ptr nonnull %255) #31
  %i.jqs = load float, ptr %i.ihl, align 8
  %i.jqt = load i64, ptr %i.jlo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %256) #31
  store ptr %i.iiu, ptr %256, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.iiu, ptr noundef nonnull align 1 dereferenceable(3) @.str.366, i64 3, i1 false)
  store i64 3, ptr %i.iiv, align 8
  store i8 0, ptr %i.ije, align 1
  %i.jqu = fpext float %i.jqs to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jqu, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %243, i64 noundef %i.jqt, ptr noundef nonnull align 8 dereferenceable(32) %256)
          to label %bb.awz unwind label %bb.axg

bb.awz:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4249
  %i.jqv = load ptr, ptr %256, align 8            ; 2 uses
  %i.jqw = icmp eq ptr %i.jqv, %i.iiu
  br i1 %i.jqw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4254: ; preds = %bb.awz
  %i.jqx = load i64, ptr %i.iiu, align 8
  %i.jqy = add i64 %i.jqx, 1
  call void @_ZdlPvm(ptr noundef %i.jqv, i64 noundef %i.jqy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4256: ; preds = %bb.awz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4254
  call void @llvm.lifetime.end.p0(ptr nonnull %256) #31
  %i.jqz = load ptr, ptr %243, align 8            ; 3 uses
  %.not.i.i.i4257 = icmp eq ptr %i.jqz, null
  br i1 %.not.i.i.i4257, label %_ZNSt6vectorIfSaIfEED2Ev.exit4258, label %bb.axa

bb.axa:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4256
  %i.jra = load ptr, ptr %i.iht, align 8
  %i.jrb = ptrtoint ptr %i.jra to i64
  %i.jrc = ptrtoint ptr %i.jqz to i64
  %i.jrd = sub i64 %i.jrb, %i.jrc
  call void @_ZdlPvm(ptr noundef nonnull %i.jqz, i64 noundef %i.jrd) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4258

_ZNSt6vectorIfSaIfEED2Ev.exit4258:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4256, %bb.axa
  call void @llvm.lifetime.end.p0(ptr nonnull %243) #31
  %i.jre = load ptr, ptr %242, align 8            ; 3 uses
  %.not.i.i.i4259 = icmp eq ptr %i.jre, null
  br i1 %.not.i.i.i4259, label %_ZNSt6vectorIfSaIfEED2Ev.exit4260, label %bb.axb

bb.axb:                                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4258
  %i.jrf = load ptr, ptr %i.ihr, align 8
  %i.jrg = ptrtoint ptr %i.jrf to i64
  %i.jrh = ptrtoint ptr %i.jre to i64
  %i.jri = sub i64 %i.jrg, %i.jrh
  call void @_ZdlPvm(ptr noundef nonnull %i.jre, i64 noundef %i.jri) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4260

_ZNSt6vectorIfSaIfEED2Ev.exit4260:                ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4258, %bb.axb
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #31
  %i.jrj = load ptr, ptr %241, align 8            ; 3 uses
  %.not.i.i.i4261 = icmp eq ptr %i.jrj, null
  br i1 %.not.i.i.i4261, label %_ZNSt6vectorIfSaIfEED2Ev.exit4262, label %bb.axc

bb.axc:                                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4260
  %i.jrk = load ptr, ptr %i.ihp, align 8
  %i.jrl = ptrtoint ptr %i.jrk to i64
  %i.jrm = ptrtoint ptr %i.jrj to i64
  %i.jrn = sub i64 %i.jrl, %i.jrm
  call void @_ZdlPvm(ptr noundef nonnull %i.jrj, i64 noundef %i.jrn) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4262

_ZNSt6vectorIfSaIfEED2Ev.exit4262:                ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4260, %bb.axc
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #31
  %i.jro = load ptr, ptr %240, align 8            ; 3 uses
  %.not.i.i.i4263 = icmp eq ptr %i.jro, null
  br i1 %.not.i.i.i4263, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.axd

bb.axd:                                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4262
  %i.jrp = load ptr, ptr %i.ihn, align 8
  %i.jrq = ptrtoint ptr %i.jrp to i64
  %i.jrr = ptrtoint ptr %i.jro to i64
  %i.jrs = sub i64 %i.jrq, %i.jrr
  call void @_ZdlPvm(ptr noundef nonnull %i.jro, i64 noundef %i.jrs) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4262, %bb.axd
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %238) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #31
  %i.jrt = add nuw nsw i64 %.064014007, 1         ; 2 uses
  %i.jru = load i32, ptr %i.ius, align 8
  %i.jrv = zext i32 %i.jru to i64
  %i.jrw = icmp samesign ult i64 %i.jrt, %i.jrv
  br i1 %i.jrw, label %bb.atm, label %._crit_edge14010.loopexit, !llvm.loop !337

bb.axe:                                           ; preds = %._crit_edge.i.i4184
  %i.jrx = landingpad { ptr, i32 }
          cleanup
  %i.jry = load ptr, ptr %254, align 8            ; 2 uses
  %i.jrz = icmp eq ptr %i.jry, %i.iiq
  br i1 %i.jrz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4264: ; preds = %bb.axe
  %i.jsa = load i64, ptr %i.iiq, align 8
  %i.jsb = add i64 %i.jsa, 1
  call void @_ZdlPvm(ptr noundef %i.jry, i64 noundef %i.jsb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4266: ; preds = %bb.axe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4264
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #31
  br label %bb.axh

bb.axf:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4242
  %i.jsc = landingpad { ptr, i32 }
          cleanup
  %i.jsd = load ptr, ptr %255, align 8            ; 2 uses
  %i.jse = icmp eq ptr %i.jsd, %i.iis
end_hunk_8
begin_hunk_9_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a

bb.azk:                                           ; preds = %bb.ano, %bb.acm, %bb.ka, %bb.jk
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter16WriteConnectionsEv(ptr noundef nonnull align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.Assimp::FBX::Node", align 8 ; 13 uses
  %3 = alloca %"class.Assimp::StreamWriter", align 16 ; 19 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 18, ptr %i.a, align 8
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %1, align 8
  %i.f = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.e, ptr noundef nonnull align 1 dereferenceable(18) @.str.395, i64 18, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.c:                                             ; preds = %.noexc.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.d:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.d
  %i.r = load i64, ptr %i.d, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.t, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.t, ptr noundef nonnull align 1 dereferenceable(11) @.str.396, i64 11, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.w, i8 0, i64 49, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre47 = load ptr, ptr %.phi.trans.insert46, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %.pre, ptr %4, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %.pre47, ptr %i.x, align 8
  %.not.i.i.i = icmp eq ptr %.pre47, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.e

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  store ptr %.pre, ptr %3, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.y, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.z = getelementptr inbounds nuw i8, ptr %.pre47, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread62

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread62: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i32, ptr %i.z, align 4
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.z, align 4
  store ptr %.pre, ptr %3, align 16
  store ptr %.pre47, ptr %i.ab, align 8
  br label %bb.f

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.x, align 8          ; 2 uses
  %i.af = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.af, ptr %3, align 16
  %.not.i.i.i.i30 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i30, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread62, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %.pr65 = phi ptr [ %.pre47, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread62 ], [ %.pr.pre, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pr65, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ag, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.h, %bb.g, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 32, i1 false)
  %i.an = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #34
          to label %bb.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #31
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br label %bb.w

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.an, ptr %i.am, align 8
  store ptr %i.an, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1024
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.x, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.as, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31, !inline_history !9
  %i.bb = load ptr, ptr %i.as, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.be = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i32 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.o, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.bi = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.bj = trunc nuw i8 %i.bi to i1
  invoke void @_ZN6Assimp3FBX4Node5BeginERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.bj, i32 noundef 0)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bk = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.bl = trunc nuw i8 %i.bk to i1
  invoke void @_ZN6Assimp3FBX4Node13BeginChildrenERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.bl, i32 noundef 0)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not44 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not44, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre50 = load ptr, ptr %i.bm, align 8
  %.pre51 = load ptr, ptr %i.bo, align 8
  %i.bq = icmp ne ptr %.pre50, %.pre51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %i.br = phi i1 [ %i.bq, %._crit_edge.loopexit ], [ false, %bb.q ]
  %i.bs = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.bt = trunc nuw i8 %i.bs to i1
  invoke void @_ZN6Assimp3FBX4Node3EndERNS_12StreamWriterILb0ELb0EEEbib(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.bt, i32 noundef 0, i1 noundef zeroext %i.br)
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %bb.q, %bb.s
  %.sroa.038.045 = phi ptr [ %i.bx, %bb.s ], [ %i.bn, %bb.q ] ; 2 uses
  %i.bv = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.bw = trunc nuw i8 %i.bv to i1
  invoke void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.038.045, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext %i.bw, i32 noundef 1)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.038.045, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.bp
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.ca = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i36, label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.bz, %bb.u ] ; 2 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.05.i.i.i.i) #31, !inline_history !343
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i.i.i37, label %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bz, ptr %i.bo, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE5clearEv.exit: ; preds = %bb.u, %_ZSt8_DestroyIPN6Assimp3FBX4NodeES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.v:                                             ; preds = %bb.t, %bb.r
  %.pn14 = phi { ptr, i32 } [ %i.by, %bb.t ], [ %i.bu, %bb.r ]
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #31
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.v
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.v ], [ %i.ao, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn14.pn.pn.pn
}

declare void @_ZN6Assimp3FBX4Node5BeginERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext, i32 noundef) local_unnamed_addr #11

declare void @_ZN6Assimp3FBX4Node13EndPropertiesERNS_12StreamWriterILb0ELb0EEEbim(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZN6Assimp3FBX4Node13BeginChildrenERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node17WritePropertyNodeIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::FBX::FBXExportProperty", align 8 ; 9 uses
  %6 = alloca %"class.Assimp::FBX::Node", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN6Assimp3FBX17FBXExportPropertyC1Ei(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN6Assimp3FBX4NodeC2IJNS0_17FBXExportPropertyEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %3, i32 noundef %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit:       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i8, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit9, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit9

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit9:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node8AddChildIJiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.Assimp::FBX::Node", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.b, ptr %3, align 8
end_hunk_9
begin_hunk_10_@_ZN6Assimp3FBX4Node8AddChildIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKS8_DpOT_:bb.a
  %i.af = load ptr, ptr %i.o, align 8
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ah = load ptr, ptr %i.p, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.aj = load ptr, ptr %i.q, align 8
  store ptr %i.aj, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.aq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  store ptr %i.aw, ptr %i.r, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpOT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.g

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i, %bb.f
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node6AddP70IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKS8_SB_SB_SB_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::FBX::Node", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8
  store i8 80, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.d, i8 0, i64 49, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  invoke void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i unwind label %bb.f

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.pre.i = load ptr, ptr %i.e, align 8           ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %.pre.i, %.pre
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.e, align 8
  br label %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  invoke void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %.pre.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i unwind label %bb.f

_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i: ; preds = %bb.c, %.noexc15
  invoke void @_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_RS8_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit unwind label %bb.f

_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit: ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i18 = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %.noexc19 unwind label %bb.f

.noexc19:                                         ; preds = %bb.d
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr %i.n, ptr %i.i, align 8
  br label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit

bb.e:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit unwind label %bb.f

_ZN6Assimp3FBX4Node8AddChildERKS1_.exit:          ; preds = %.noexc19, %bb.e
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i, %bb.d, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3mapI13aiTextureTypeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS0_ESaISt4pairIKS0_S6_EEEC2ESt16initializer_listISB_ERKS8_RKSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %.idx = mul nuw nsw i64 %2, 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE22_M_insert_range_uniqueIPKS9_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESK_SK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i
  %.pr21 = phi i64 [ %.pr, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ae, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i8 = icmp eq i64 %.pr21, 0
  br i1 %.not.i8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %.08.i, align 4
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8       ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i32, ptr %.08.i, align 4            ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i9 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i9, label %._crit_edge.i.i, label %bb.d, !llvm.loop !353

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #36
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4
  %.pre82.i = load i32, ptr %.08.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i32 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i32 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i32, ptr %.08.i, align 4
  %i.y = load i32, ptr %i.w, align 4
  %i.z = icmp slt i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i
  invoke void @_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %.08.i)
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %.noexc6
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #31
  %i.ac = load i64, ptr %i.e, align 8
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8
  br label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i

_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc7
  %.pr = phi i64 [ %.pr21, %bb.f ], [ %i.ad, %.noexc7 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE22_M_insert_range_uniqueIPKS9_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESK_SK_.exit, label %.lr.ph.i, !llvm.loop !354

_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE22_M_insert_range_uniqueIPKS9_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESK_SK_.exit: ; preds = %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %.noexc6, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #31
  resume { ptr, i32 } %i.af
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3) #31
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.f, ptr %2, align 8, !alias.scope !367
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !alias.scope !367
  store i8 0, ptr %i.f, align 8, !alias.scope !367
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !367 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !367 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !noalias !367 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !alias.scope !367 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %2, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.w)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.f, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.g:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.t, %bb.d ], [ %i.aq, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.at) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume
}

declare i32 @aiGetMaterialFloatArray(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node8AddChildIJddEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.Assimp::FBX::Node", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.b, ptr %4, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
end_hunk_10
begin_hunk_11_@_ZN6Assimp11FBXExporter14WriteModelNodeERNS_12StreamWriterILb0ELb0EEEbPK6aiNodelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt4pairISC_10aiVector3tIfEESaISJ_EENS_3FBX20TransformInheritanceE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jc = fpext float %i.in to double
  store double %i.jc, ptr %i.l, align 8
  invoke void @_ZN6Assimp3FBX4Node6AddP70IJdddEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit263.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.jd = load ptr, ptr %30, align 8              ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ix
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.z
  %i.jf = load i64, ptr %i.ix, align 8
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  %i.jh = load ptr, ptr %29, align 8              ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.iv
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %i.jj = load i64, ptr %i.iv, align 8
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  %i.jl = load ptr, ptr %28, align 8              ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.is
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.jn = load i64, ptr %i.is, align 8
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.jp = load ptr, ptr %27, align 8              ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ip
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288
  %i.jr = load i64, ptr %i.ip, align 8
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit263.thread
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.ju = load ptr, ptr %30, align 8              ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.ix
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.aa
  %i.jw = load i64, ptr %i.ix, align 8
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  %i.jy = load ptr, ptr %29, align 8              ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.iv
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.ka = load i64, ptr %i.iv, align 8
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  %i.kc = load ptr, ptr %28, align 8              ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.is
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.ke = load i64, ptr %i.is, align 8
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.kg = load ptr, ptr %27, align 8              ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.ip
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %i.ki = load i64, ptr %i.ip, align 8
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %.loopexit

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %bb.t
  %.pn97.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %i.fn, %bb.t ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.bk

bb.ad:                                            ; preds = %.preheader, %bb.as
  %.sroa.0371.0420 = phi ptr [ %i.cm, %.preheader ], [ %i.nk, %bb.as ] ; 10 uses
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 16), align 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 8
  %i.km = load i64, ptr %i.kl, align 8            ; 4 uses
  %i.kn = load ptr, ptr %.sroa.0371.0420, align 8 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.kk, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.kp = load i64, ptr %i.ko, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.km, i64 %i.kp) ; 2 uses
  %i.kq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.kq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.kr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = call i32 @memcmp(ptr noundef %i.ks, ptr noundef %i.kn, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.kt, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ae
  %i.ku = sub i64 %i.kp, %i.km
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ku, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.kt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.kv = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.kv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.kv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.ae, !llvm.loop !404

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.kw = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8)
  br i1 %i.kw, label %select.unfold, label %bb.af

bb.af:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ky = load i64, ptr %i.kx, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ky, i64 %i.km) ; 2 uses
  %i.kz = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.kz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.af
  %i.la = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = call i32 @memcmp(ptr noundef %i.kn, ptr noundef %i.lb, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.lc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.af
  %i.ld = sub i64 %i.km, %i.ky
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ld, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.lc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.le = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.le, label %select.unfold, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.ad, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %31)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %select.unfold
  %i.lf = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef nonnull @.str.373, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ag
  %i.lh = load ptr, ptr %.sroa.0371.0420, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 8
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef %i.lh, i64 noundef %i.lj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ak ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ll = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(128) %31)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread

bb.ah:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.ll, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.bm unwind label %bb.al

bb.aj:                                            ; preds = %select.unfold
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ag
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.063 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lq = load ptr, ptr %32, align 8              ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.al
  %i.lt = load i64, ptr %i.lr, align 8
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br i1 %.063, label %bb.am, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br i1 %.063, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %.pn82400 = phi { ptr, i32 } [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread ], [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ]
  call void @__cxa_free_exception(ptr %i.ll) #31
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.am, %bb.ak
  %.pn82.pn = phi { ptr, i32 } [ %.pn82400, %bb.am ], [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.ln, %bb.ak ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %31) #31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.an ], [ %i.lm, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %bb.bk

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.ly = load i64, ptr %i.lx, align 8            ; 3 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit
  %spec.select.i.i309 = call noundef i64 @llvm.umin.i64(i64 %i.ly, i64 4)
  %i.ma = load ptr, ptr %i.lv, align 8
  %bcmp = call i32 @bcmp(ptr %i.ma, ptr nonnull @.str.374, i64 %spec.select.i.i309)
  %.not.i = icmp eq i32 %bcmp, 0
  %i.mb = icmp ugt i64 %i.ly, 3
  %or.cond413 = and i1 %i.mb, %.not.i
  br i1 %or.cond413, label %._crit_edge.i.i310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread

._crit_edge.i.i310:                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  store ptr %i.cq, ptr %33, align 8
  store i64 0, ptr %i.cr, align 8
  store i8 0, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  store ptr %i.cs, ptr %34, align 8
  store i8 65, ptr %i.cs, align 8
  store i64 1, ptr %i.ct, align 8
  store i8 0, ptr %i.cu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  %i.mc = load float, ptr %i.lw, align 4
  %i.md = fpext float %i.mc to double
  store double %i.md, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #31
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 36
  %i.mf = load float, ptr %i.me, align 4
  %i.mg = fpext float %i.mf to double
  store double %i.mg, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #31
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 40
  %i.mi = load float, ptr %i.mh, align 4
  %i.mj = fpext float %i.mi to double
  store double %i.mj, ptr %i.o, align 8
  invoke void @_ZN6Assimp3FBX4Node6AddP70IJdddEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %._crit_edge.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  %i.mk = load ptr, ptr %34, align 8              ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.cs
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.ap
  %i.mm = load i64, ptr %i.cs, align 8
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  %i.mo = load ptr, ptr %33, align 8              ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.cq
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.mq = load i64, ptr %i.cq, align 8
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %bb.as

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ar:                                            ; preds = %._crit_edge.i.i310
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  %i.mu = load ptr, ptr %34, align 8              ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.cs
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %bb.ar
  %i.mw = load i64, ptr %i.cs, align 8
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  %i.my = load ptr, ptr %33, align 8              ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.cq
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %i.na = load i64, ptr %i.cq, align 8
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %bb.bk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.nc = load float, ptr %i.lw, align 4
  %i.nd = fpext float %i.nc to double
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 36
  %i.nf = load float, ptr %i.ne, align 4
  %i.ng = fpext float %i.nf to double
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 40
  %i.ni = load float, ptr %i.nh, align 4
  %i.nj = fpext float %i.ni to double
  invoke void @_ZN6Assimp3FBX4Node12AddP70vectorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddd(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.lv, double noundef %i.nd, double noundef %i.ng, double noundef %i.nj)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.nk, %i.co
  br i1 %.not, label %.loopexit, label %bb.ad

.loopexit:                                        ; preds = %bb.as, %bb.ab
  invoke void @_Z8add_metaRN6Assimp3FBX4NodeEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull %3)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %.loopexit
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.nm = load ptr, ptr %i.nl, align 8            ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.no = load ptr, ptr %i.nn, align 8
  %.not.i.i = icmp eq ptr %i.nm, %i.no
  br i1 %.not.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.nm, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %.noexc330 unwind label %bb.bd

.noexc330:                                        ; preds = %bb.au
  %i.np = load ptr, ptr %i.nl, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 112
  store ptr %i.nq, ptr %i.nl, align 8
  br label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit

bb.av:                                            ; preds = %bb.at
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 56
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.nr, ptr %i.nm, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit unwind label %bb.bd

_ZN6Assimp3FBX4Node8AddChildERKS1_.exit:          ; preds = %.noexc330, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  %i.ns = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.ns, ptr %35, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ns, ptr noundef nonnull align 1 dereferenceable(7) @.str.375, i64 7, i1 false)
  %i.nt = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 7, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %35, i64 23
  store i8 0, ptr %i.nu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1Eb(ptr noundef nonnull align 8 dereferenceable(32) %36, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJNS0_17FBXExportPropertyEEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.ax unwind label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.nv = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nx = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %i.nw to i64
  %i.ob = sub i64 %i.nz, %i.oa
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.ob) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit:       ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  %i.oc = load ptr, ptr %35, align 8              ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.ns
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit
  %i.oe = load i64, ptr %i.ns, align 8
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  %i.og = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  store ptr %i.og, ptr %37, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.og, ptr noundef nonnull align 1 dereferenceable(7) @.str.376, i64 7, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 7, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %37, i64 23
  store i8 0, ptr %i.oi, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1EPKcb(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.377, i1 noundef zeroext false)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJNS0_17FBXExportPropertyEEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.ba unwind label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.oj = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8            ; 3 uses
  %.not.i.i.i.i343 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i.i343, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit344, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ol = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.op) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit344

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit344:    ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  %i.oq = load ptr, ptr %37, align 8              ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.og
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit344
  %i.os = load i64, ptr %i.og, align 8
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  %i.ou = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.ov = trunc nuw i8 %i.ou to i1
  invoke void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %i.ov, i32 noundef 1)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.ow = load ptr, ptr %9, align 8               ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.an
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.bc
  %i.oy = load i64, ptr %i.an, align 8
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void

bb.bd:                                            ; preds = %bb.av, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %.loopexit
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.be:                                            ; preds = %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit352

bb.bf:                                            ; preds = %bb.aw
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8            ; 3 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i.i351, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit352, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pf = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = ptrtoint ptr %i.pe to i64
  %i.pj = sub i64 %i.ph, %i.pi
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.pj) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit352

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit352:    ; preds = %bb.bg, %bb.bf, %bb.be
  %.pn103 = phi { ptr, i32 } [ %i.pb, %bb.be ], [ %i.pc, %bb.bf ], [ %i.pc, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  %i.pk = load ptr, ptr %35, align 8              ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.ns
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit352
  %i.pm = load i64, ptr %i.ns, align 8
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %bb.bk

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit357

end_hunk_11
begin_hunk_12_@_ZN6Assimp11FBXExporter15WriteModelNodesERNS_12StreamWriterILb0ELb0EEEPK6aiNodelRKSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaISQ_EE:bb.a
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %19 = alloca %"class.Assimp::FBX::Node", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.Assimp::FBX::FBXExportProperty", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::allocator", align 1   ; 4 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %30 = alloca %struct.aiNode, align 8            ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::vector.191", align 8  ; 6 uses
  store ptr %2, ptr %i.f, align 8
  store i64 %3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.l, ptr %7, align 8
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.m, ptr %i.e, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %7, align 8
  %i.p = load i64, ptr %i.e, align 8
  store i64 %i.p, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.l, %bb.a ] ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.s = load i64, ptr %i.e, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.w = load ptr, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, align 8
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, i64 8), align 8
  %i.y = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.w, i64 noundef 0, i64 noundef %i.x) #31
  %.not = icmp eq i64 %i.y, -1
  br i1 %.not, label %bb.ba, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, align 8
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, i64 8), align 8
  %i.ab = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.z, i64 noundef 0, i64 noundef %i.aa) #31
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, i64 8), align 8
  %i.ad = add i64 %i.ab, 1
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.af = load i64, ptr %i.t, align 8, !noalias !405 ; 3 uses
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.437, i64 noundef %i.ae, i64 noundef %i.af) #30
          to label %.noexc126 unwind label %bb.o

.noexc126:                                        ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ah, ptr %8, align 8, !alias.scope !405
  %i.ai = load ptr, ptr %7, align 8, !noalias !405
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae ; 2 uses
  %i.ak = sub nuw i64 %i.af, %i.ae                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !405
  store i64 %i.ak, ptr %i.d, align 8, !noalias !405
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc127 unwind label %bb.o  ; 2 uses

.noexc127:                                        ; preds = %.noexc10.i.i
  store ptr %i.am, ptr %8, align 8, !alias.scope !405
  %i.an = load i64, ptr %i.d, align 8, !noalias !405
  store i64 %i.an, ptr %i.ah, align 8, !alias.scope !405
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ao = phi ptr [ %i.am, %.noexc127 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ak, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = load i8, ptr %i.aj, align 1
  store i8 %i.ap, ptr %i.ao, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.aq = load i64, ptr %i.d, align 8, !noalias !405 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.aq, ptr %i.ar, align 8, !alias.scope !405
  %i.as = load ptr, ptr %8, align 8, !alias.scope !405
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !405
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 16), align 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.av = load i64, ptr %i.ar, align 8            ; 4 uses
  %i.aw = load ptr, ptr %8, align 8               ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ay) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.aw, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.j
  %i.bd = sub i64 %i.ay, %i.av
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.be = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.be, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.be, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.j, !llvm.loop !404

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bf = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8)
  br i1 %i.bf, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.av) ; 2 uses
  %i.bi = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i32 @memcmp(ptr noundef %i.aw, ptr noundef %i.bk, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.k
  %i.bm = sub i64 %i.av, %i.bh
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bm, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bn = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bn, label %select.unfold, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %select.unfold
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.378, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.l
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.379, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = load ptr, ptr %8, align 8
  %i.bs = load i64, ptr %i.ar, align 8
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.br, i64 noundef %i.bs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.380, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bv = load ptr, ptr %7, align 8
  %i.bw = load i64, ptr %i.t, align 8
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.bv, i64 noundef %i.bw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135 unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.by = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  invoke void @_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ef unwind label %bb.r

bb.o:                                             ; preds = %.noexc10.i.i, %bb.f
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.p:                                             ; preds = %select.unfold
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.m
  %.075 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ce = load ptr, ptr %10, align 8              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.075, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.075, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn118297 = phi { ptr, i32 } [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.by) #31
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.q
  %.pn118.pn = phi { ptr, i32 } [ %.pn118297, %bb.s ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %bb.q ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn118.pn.pn = phi { ptr, i32 } [ %.pn118.pn, %bb.t ], [ %i.ca, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.az

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store <2 x float> zeroinitializer, ptr %11, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float 0.000000e+00, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store <2 x float> zeroinitializer, ptr %12, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store <2 x float> zeroinitializer, ptr %13, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float 0.000000e+00, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.f, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1028
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 96 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8
  switch i8 %i.cq, label %bb.al [
    i8 105, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EE12emplace_backIJRKS6_RS8_EEERS9_DpOT_.exit
    i8 116, label %bb.x
    i8 114, label %bb.ab
    i8 115, label %bb.ah
  ]

bb.w:                                             ; preds = %.invoke, %.noexc.i.i.i147, %.noexc.i.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.x:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %.not.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i, label %.invoke, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 3 uses
  store ptr %i.cw, ptr %i.ct, align 8
  %i.cx = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cy = load i64, ptr %i.bg, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 %i.cy, ptr %i.c, align 8
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.y
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc136 unwind label %bb.w  ; 2 uses

.noexc136:                                        ; preds = %.noexc.i.i.i
  store ptr %i.da, ptr %i.ct, align 8
  %i.db = load i64, ptr %i.c, align 8
  store i64 %i.db, ptr %i.cw, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc136, %bb.y
  %i.dc = phi ptr [ %i.da, %.noexc136 ], [ %i.cw, %bb.y ] ; 2 uses
  switch i64 %i.cy, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = load i8, ptr %i.cx, align 1
  store i8 %i.dd, ptr %i.dc, align 1
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i.i
  %i.de = load i64, ptr %i.c, align 8             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.ct, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  %i.dj = load ptr, ptr %i.cs, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store ptr %i.dk, ptr %i.cs, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EE12emplace_backIJRKS6_RS8_EEERS9_DpOT_.exit

bb.ab:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.dl = load <2 x float>, ptr %12, align 8
  %i.dm = fmul <2 x float> %i.dl, splat (float f0x42652EE1)
  %i.dn = load float, ptr %i.ck, align 8
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EEC2ERKS4_:bb.a
          to label %.body unwind label %bb.f, !inline_history !451

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #33, !inline_history !451
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3FBX4NodeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6Assimp3FBX4NodeEJRKS2_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.lcssa.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %_ZSt10_ConstructIN6Assimp3FBX4NodeEJRKS2_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.lcssa.i, ptr %i.k, align 8
  ret void

.body:                                            ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.z = load ptr, ptr %i.m, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt12_Vector_baseIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3FBX17FBXExportPropertyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.z, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.y, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = load i8, ptr %.sroa.09.016, align 8
  store i8 %i.a, ptr %.017, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !4

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #34
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.017, i64 24
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.c, label %bb.d, !prof !181

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.v = icmp eq i64 %i.t, 1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i8, ptr %i.p, align 1
  store i8 %i.w, ptr %i.l, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.017, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.y, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !453

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aa = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #31 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #30
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #33
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !454
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !454
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #31
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #32
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_13
begin_hunk_14_@_ZN6Assimp3FBX4Node8AddChildIJRA21_KcEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  store ptr %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.aq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  store ptr %i.aw, ptr %i.r, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRA21_KcJEEEvOT_DpOT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.g

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i, %bb.f
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node8AddChildIJRA15_KcEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(15) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.Assimp::FBX::Node", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.b, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.o, i8 0, i64 49, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr null, ptr noundef nonnull align 1 dereferenceable(15) %2)
          to label %_ZN6Assimp3FBX4Node13AddPropertiesIRA15_KcJEEEvOT_DpOT0_.exit unwind label %bb.g

_ZN6Assimp3FBX4Node13AddPropertiesIRA15_KcJEEEvOT_DpOT0_.exit: ; preds = %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i5 = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i5, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRA15_KcJEEEvOT_DpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.s, align 8
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.l, align 8              ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.aa, i1 false)
  br label %_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.w, ptr %i.s, align 8
  %i.ab = load i64, ptr %i.b, align 8
  store i64 %i.ab, ptr %i.v, align 8
  %.pre = load i64, ptr %i.l, align 8
  br label %_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i

_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i:              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.y, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  store ptr %i.b, ptr %3, align 8
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.af = load ptr, ptr %i.o, align 8
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ah = load ptr, ptr %i.p, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.aj = load ptr, ptr %i.q, align 8
  store ptr %i.aj, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.aq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  store ptr %i.aw, ptr %i.r, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRA15_KcJEEEvOT_DpOT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.g

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i, %bb.f
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #34 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.e, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load float, ptr %i.b, align 4            ; 2 uses
  %i.m = load float, ptr %i.k, align 4            ; 2 uses
  %i.n = fcmp une float %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp olt float %i.l, %i.m
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load float, ptr %i.p, align 4            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = fcmp une float %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = fcmp olt float %i.q, %i.s
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load float, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load float, ptr %i.x, align 4
  %i.z = fcmp olt float %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %i.aa = phi i1 [ %i.z, %bb.h ], [ true, %bb.c ], [ %i.o, %bb.e ], [ %i.u, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8
  br label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  br label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.i
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.013.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = load float, ptr %2, align 4              ; 2 uses
  %i.j = fcmp une float %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt float %i.h, %i.i
  br i1 %i.k, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %i.p = fcmp une float %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load float, ptr %i.s, align 4
  %i.u = fcmp olt float %i.r, %i.t
  br i1 %i.u, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.g

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit:     ; preds = %bb.e
  %i.v = fcmp olt float %i.m, %i.o
  br i1 %i.v, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02122.i = load ptr, ptr %i.w, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02122.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.x = load float, ptr %2, align 4              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load float, ptr %i.y, align 4            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load float, ptr %i.aa, align 4
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02124.i = phi ptr [ %.02122.i, %.lr.ph.i ], [ %.02124.i.be, %.backedge.backedge ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02124.i, i64 32
  %i.ad = load float, ptr %i.ac, align 4          ; 3 uses
  %i.ae = fcmp une float %i.x, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.backedge
  %i.af = fcmp olt float %i.x, %i.ad
  br i1 %i.af, label %bb.k, label %.thread

bb.i:                                             ; preds = %.backedge
  %i.ag = getelementptr inbounds nuw i8, ptr %.02124.i, i64 36
  %i.ah = load float, ptr %i.ag, align 4          ; 2 uses
  %i.ai = fcmp une float %i.z, %i.ah
  br i1 %i.ai, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.02124.i, i64 40
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fcmp olt float %i.ab, %i.ak
  br i1 %i.al, label %bb.k, label %.thread

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i:   ; preds = %bb.i
  %i.am = fcmp olt float %i.z, %i.ah
  br i1 %i.am, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i, %bb.j, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.02124.i, i64 16
  %.021.i = load ptr, ptr %i.an, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.k, %.thread
  %.02124.i.be = phi ptr [ %.021.i, %bb.k ], [ %.021.i74, %.thread ]
  br label %.backedge, !llvm.loop !750

.thread:                                          ; preds = %bb.h, %bb.j, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.02124.i, i64 24
  %.021.i74 = load ptr, ptr %i.ao, align 8        ; 2 uses
  %.not.i75 = icmp eq ptr %.021.i74, null
  br i1 %.not.i75, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %bb.k, %bb.g
  %.020.lcssa36.i = phi ptr [ %i.a, %bb.g ], [ %.02124.i, %bb.k ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %.020.lcssa36.i, %i.aq
  br i1 %i.ar, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa36.i) #36 ; 2 uses
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.pre99 = load float, ptr %.phi.trans.insert98, align 4
  %.pre100 = load float, ptr %2, align 4
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.thread, %bb.l
  %i.at = phi float [ %.pre100, %bb.l ], [ %i.x, %.thread ] ; 2 uses
  %i.au = phi float [ %.pre99, %bb.l ], [ %i.ad, %.thread ] ; 2 uses
  %.020.lcssa35.i = phi ptr [ %.020.lcssa36.i, %bb.l ], [ %.02124.i, %.thread ] ; 3 uses
  %.sroa.06.0.i = phi ptr [ %i.as, %bb.l ], [ %.02124.i, %.thread ] ; 3 uses
  %i.av = fcmp une float %i.au, %i.at
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.thread
  %i.aw = fcmp olt float %i.au, %i.at
  br i1 %i.aw, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.p

bb.n:                                             ; preds = %._crit_edge.i.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 36
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ba = load float, ptr %i.az, align 4          ; 2 uses
  %i.bb = fcmp une float %i.ay, %i.ba
  br i1 %i.bb, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit5.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fcmp olt float %i.bd, %i.bf
  br i1 %i.bg, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.p

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit5.i:  ; preds = %bb.n
  %i.bh = fcmp olt float %i.ay, %i.ba
  br i1 %i.bh, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit5.i, %bb.o, %bb.m
  br label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.q:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load float, ptr %2, align 4             ; 15 uses
  %i.bk = load float, ptr %i.bi, align 4          ; 3 uses
  %i.bl = fcmp une float %i.bj, %i.bk
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = fcmp olt float %i.bj, %i.bk
  br i1 %i.bm, label %bb.u, label %bb.ak

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bo = load float, ptr %i.bn, align 4          ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bq = load float, ptr %i.bp, align 4          ; 3 uses
  %i.br = fcmp une float %i.bo, %i.bq
  br i1 %i.br, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit10, label %bb.t

end_hunk_14
