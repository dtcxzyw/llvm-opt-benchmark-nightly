inline.NumInlined: 2188
inline.NumDeleted: 850
begin_hunk_0_@_ZN6Assimp12BlobIOStreamD2Ev:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12BlobIOSystem10OnDestructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_12BlobIOStreamE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = tail call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #31 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1048
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1028) %i.e, i8 0, i64 1028, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store ptr null, ptr %i.h, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.r, ptr %i.a, align 8
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %i.l, align 8
  %i.u = load i64, ptr %i.a, align 8
  store i64 %i.u, ptr %i.o, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.o, %bb.b ] ; 2 uses
  switch i64 %i.r, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEC2IRKS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEC2IRKS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEC2IRKS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEC2IRKS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.l, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.c, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ad, ptr %i.k, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE12emplace_backIJRKS6_S8_EEERS9_DpOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE17_M_realloc_insertIJRKS6_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE12emplace_backIJRKS6_S8_EEERS9_DpOT_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE12emplace_backIJRKS6_S8_EEERS9_DpOT_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEC2IRKS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp12BlobIOStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN6Assimp12BlobIOSystem10OnDestructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_12BlobIOStreamE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp12BlobIOStreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZN6Assimp12BlobIOStreamD2Ev.exit

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29
  unreachable

_ZN6Assimp12BlobIOStreamD2Ev.exit:                ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp8ExporterC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #31 ; 3 uses
  invoke void @_ZN6Assimp13ExporterPimplC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  %i.b = tail call noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 8) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp22DefaultProgressHandlerE, i64 16), ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.b, ptr %i.d, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #28
  resume { ptr, i32 } %i.e
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp13ExporterPimplC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 32) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp15DefaultIOSystemE, i64 16), ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp15DefaultIOSystemEEET_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #30 ; 0 uses
  tail call void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #30
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %i.b) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.ym, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp15DefaultIOSystemEEET_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.m, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp15DefaultIOSystemELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.b, ptr %i.n, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.u, align 8
  store i8 0, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 46 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp33GetPostProcessingStepInstanceListERSt6vectorIPNS_11BaseProcessESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.f unwind label %bb.bu

bb.f:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp15DefaultIOSystemEEET_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 67 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 44 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.8, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @.str.9, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr @.str.10, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_ZN6Assimp18ExportSceneColladaEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 0, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.w, align 8
  %.pre.i = load ptr, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEERS2_DpOT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %.invoke, label %_ZNKSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.al = sdiv exact i64 %i.aj, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 230584300921369395)
  %i.ap = select i1 %i.an, i64 230584300921369395, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = mul nuw nsw i64 %i.ap, 40
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #31
          to label %.noexc2 unwind label %bb.bu   ; 5 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 5 uses
  store ptr @.str.8, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @.str.9, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr @.str.10, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_ZN6Assimp18ExportSceneColladaEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i32 0, ptr %i.aw, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.x
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc2, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %.noexc2 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %.noexc2 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !3
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc2
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc2 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i36.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i.i
  store ptr %i.ar, ptr %i.v, align 8
  store ptr %i.az, ptr %i.w, align 8
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  store ptr %i.ba, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEERS2_DpOT_.exit.i

_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEERS2_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.g
  %i.bb = phi ptr [ %.pre.i, %bb.g ], [ %i.ba, %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 4 uses
  %i.bc = phi ptr [ %i.af, %bb.g ], [ %i.az, %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.not.i22.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEERS2_DpOT_.exit.i
  store ptr @.str.11, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @.str.12, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr @.str.11, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @_ZN6Assimp16ExportSceneXFileEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i32 25165828, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.w, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  store ptr %i.bi, ptr %i.w, align 8
  %.pre394.i = load ptr, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEERS2_DpOT_.exit.i

bb.k:                                             ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA8_KcRA40_S6_RA4_S6_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEEEERS2_DpOT_.exit.i
  %i.bj = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.bk = ptrtoint ptr %i.bb to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i23.i

_ZNKSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i23.i: ; preds = %bb.k
  %i.bo = sdiv exact i64 %i.bm, 40                ; 3 uses
  %.sroa.speculated.i.i.i24.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i24.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 230584300921369395)
  %i.bs = select i1 %i.bq, i64 230584300921369395, i64 %i.br ; 3 uses
  %.not.i.i.i25.i = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i25.i)
  %i.bt = mul nuw nsw i64 %i.bs, 40
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #31
          to label %.noexc4 unwind label %bb.bu   ; 5 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i23.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm ; 5 uses
  store ptr @.str.11, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @.str.12, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr @.str.11, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @_ZN6Assimp16ExportSceneXFileEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i32 25165828, ptr %i.bz, align 8
  %.not10.i.i.i.i.i26.i = icmp eq ptr %i.bj, %i.bb
  br i1 %.not10.i.i.i.i.i26.i, label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i.i, label %.lr.ph.i.i.i.i.i27.i

.lr.ph.i.i.i.i.i27.i:                             ; preds = %.noexc4, %.lr.ph.i.i.i.i.i27.i
  %.012.i.i.i.i.i28.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i27.i ], [ %i.bu, %.noexc4 ] ; 2 uses
  %.0911.i.i.i.i.i29.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i27.i ], [ %i.bj, %.noexc4 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i28.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i29.i, i64 40, i1 false), !alias.scope !9
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i29.i, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i30.i = icmp eq ptr %i.ca, %i.bb
  br i1 %.not.i.i.i.i.i30.i, label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i.i, label %.lr.ph.i.i.i.i.i27.i, !llvm.loop !7

_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i.i: ; preds = %.lr.ph.i.i.i.i.i27.i, %.noexc4
  %.0.lcssa.i.i.i.i.i31.i = phi ptr [ %i.bu, %.noexc4 ], [ %i.cb, %.lr.ph.i.i.i.i.i27.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i31.i, i64 40 ; 2 uses
  %.not.i37.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i37.i.i.i, label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #28
  br label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i.i
  store ptr %i.bu, ptr %i.v, align 8
  store ptr %i.cc, ptr %i.w, align 8
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %i.bs ; 2 uses
  store ptr %i.cd, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEERS2_DpOT_.exit.i

_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEERS2_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.j
  %i.ce = phi ptr [ %.pre394.i, %bb.j ], [ %i.cd, %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 4 uses
  %i.cf = phi ptr [ %i.bi, %bb.j ], [ %i.cc, %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE17_M_realloc_insertIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.not.i32.i = icmp eq ptr %i.cf, %i.ce
  br i1 %.not.i32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EE12emplace_backIJRA2_KcRA8_S6_S8_PFvPS6_PNS0_8IOSystemEPK7aiScenePKNS0_16ExportPropertiesEEjEEERS2_DpOT_.exit.i
  store ptr @.str.13, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @.str.14, ptr %i.cg, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ExporterPimplD2Ev:bb.a
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.j = phi ptr [ %i.s, %bb.e ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %i.t, %bb.e ], [ %i.e, %bb.c ]
  %i.l = phi i64 [ %i.v, %bb.e ], [ 0, %bb.c ]
  %.09 = phi i32 [ %i.u, %bb.e ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #30
  %.pre = load ptr, ptr %i.d, align 8
  %.pre10 = load ptr, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.s = phi ptr [ %i.j, %.lr.ph ], [ %.pre10, %bb.d ] ; 2 uses
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %bb.d ] ; 2 uses
  %i.u = add i32 %.09, 1                          ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ugt i64 %i.z, %i.v
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !93

bb.f:                                             ; preds = %._crit_edge
  %i.ab = load ptr, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp8Exporter17ExportFormatEntryESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #28
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30, !inline_history !94
  %i.bh = load ptr, ptr %i.ay, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30, !inline_history !94
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bk = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i8 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.m ], [ %i.bm, %bb.n ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.o, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp8Exporter12SetIOHandlerEPNS_8IOSystemE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = zext i1 %.not to i8
  store i8 %i.c, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #30 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1) #30, !inline_history !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
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
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8
  store ptr %1, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 8 uses
  store ptr %i.a, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit
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
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !94
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !94
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6Assimp8Exporter12GetIOHandlerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6Assimp8Exporter18IsDefaultIOHandlerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !97, !noundef !98
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp8Exporter18SetProgressHandlerEPNS_15ProgressHandlerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 8) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp22DefaultProgressHandlerE, i64 16), ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  %.pre = load ptr, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.b
  %.sink10 = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.e ], [ %i.d, %bb.d ]
  %.sink8 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.e ], [ %1, %bb.d ]
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sink10, i64 32
  store ptr %.sink8, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 %.sink, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6Assimp8Exporter12ExportToBlobEPK7aiScenePKcjPKNS_16ExportPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16aiExportDataBlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %i.d) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1056) #28
  %i.e = load ptr, ptr %0, align 8
  store ptr null, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.not44.not.not = icmp eq ptr %4, null
  br i1 %.not44.not.not, label %._crit_edge.i.i61, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.f, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.f, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.h, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_Z18GetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKT_RKSt3mapIjS6_St4lessIjESaISt4pairIKjS6_EEEPKcS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc59 unwind label %bb.aj  ; 2 uses

.noexc59:                                         ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.k, ptr %5, align 8, !alias.scope !99
  %i.l = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !99
  store i64 %i.n, ptr %i.b, align 8, !noalias !99
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc59
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc60 unwind label %bb.aj  ; 2 uses

.noexc60:                                         ; preds = %.noexc.i.i
  store ptr %i.p, ptr %5, align 8, !alias.scope !99
  %i.q = load i64, ptr %i.b, align 8, !noalias !99
  store i64 %i.q, ptr %i.k, align 8, !alias.scope !99
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc60, %.noexc59
  %i.r = phi ptr [ %i.p, %.noexc60 ], [ %i.k, %.noexc59 ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.critedge53.critedge
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %.critedge53.critedge

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %.critedge53.critedge

._crit_edge.i.i61:                                ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.t, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.t, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.v, align 1
  br label %.critedge55

.critedge53.critedge:                             ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.w = load i64, ptr %i.b, align 8, !noalias !99 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !99
  %i.y = load ptr, ptr %5, align 8, !alias.scope !99
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !99
  %i.aa = load ptr, ptr %6, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge53.critedge
  %i.ac = load i64, ptr %i.f, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge53.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.critedge55

.critedge55:                                      ; preds = %._crit_edge.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ae = load ptr, ptr %0, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.af, align 8
  store <2 x ptr> %i.aj, ptr %7, align 16
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %.critedge55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.ak, align 4
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit

_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit: ; preds = %.critedge55, %bb.g, %bb.h
  %i.ap = invoke noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 136)
          to label %bb.i unwind label %bb.ak      ; 17 uses

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp12BlobIOSystemE, i64 16), ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 3 uses
  store ptr %i.as, ptr %i.ar, align 8
  %i.at = load ptr, ptr %5, align 8               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.av, ptr %i.a, align 8
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i.i66, label %._crit_edge.i.i.i65

.noexc.i.i66:                                     ; preds = %bb.i
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i67 unwind label %.body ; 2 uses

.noexc.i67:                                       ; preds = %.noexc.i.i66
  store ptr %i.ax, ptr %i.ar, align 8
  %i.ay = load i64, ptr %i.a, align 8
  store i64 %i.ay, ptr %i.as, align 8
  br label %._crit_edge.i.i.i65

._crit_edge.i.i.i65:                              ; preds = %.noexc.i67, %bb.i
  %i.az = phi ptr [ %i.ax, %.noexc.i67 ], [ %i.as, %bb.i ] ; 2 uses
  switch i64 %i.av, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i65
  %i.ba = load i8, ptr %i.at, align 1
  store i8 %i.ba, ptr %i.az, align 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.l

.body:                                            ; preds = %.noexc.i.i66
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.ap) #30
  call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %i.ap) #30
  br label %.body99

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i65
  %i.bc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.ar, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 3 uses
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store ptr %i.bg, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %i.bl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %bb.q unwind label %bb.m       ; 5 uses

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #30 ; 0 uses
  call void @_ZN6Assimp12BlobIOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.ap) #30
  call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %i.ap) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body99 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #29
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable

bb.q:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 1, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 1, ptr %i.bt, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp12BlobIOSystemELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bl, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.ap, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %0, align 8               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.ap, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 8 uses
  store ptr %i.bl, ptr %i.bx, align 8
  %.not.i.i.i.i69 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i69, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bz, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4
  %i.ce = load ptr, ptr %i.by, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !inline_history !102
  %i.ch = load ptr, ptr %i.by, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !inline_history !102
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.ck = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.u ], [ %i.cm, %bb.v ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.w, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %bb.q
  %i.co = load ptr, ptr %i.ar, align 8
  %i.cp = invoke noundef i32 @_ZN6Assimp8Exporter6ExportEPK7aiScenePKcS5_jPKNS_16ExportPropertiesE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.co, i32 noundef %3, ptr noundef %4)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not47 = icmp eq i32 %i.cp, 0
  br i1 %.not47, label %bb.al, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = load ptr, ptr %0, align 8               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %7, align 16
  store ptr %i.cs, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  %i.cu = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.cv = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i.i71, label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEaSERKS2_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not7.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i72 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i72, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i32, ptr %i.cw, align 4
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cw, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.da = atomicrmw volatile add ptr %i.cw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i: ; preds = %bb.ac, %bb.ab
  %.pr.i.i.i = load ptr, ptr %i.ct, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i, %bb.z
  %i.db = phi ptr [ %.pr.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i ], [ %i.cv, %bb.z ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dc, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4
  %i.dh = load ptr, ptr %i.db, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #30, !inline_history !103
  %i.dk = load ptr, ptr %i.db, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #30, !inline_history !103
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i9.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i = phi i32 [ %i.df, %bb.ag ], [ %i.dp, %bb.ah ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.ai, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !95

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.cu, ptr %i.ct, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEaSERKS2_.exitthread-pre-split

bb.aj:                                            ; preds = %.noexc.i.i, %._crit_edge.i.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = load ptr, ptr %6, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.f
  br i1 %i.dt, label %.critedge57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.aj
  %i.du = load i64, ptr %i.f, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #28
  br label %.critedge57

.critedge57:                                      ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.critedge58

bb.ak:                                            ; preds = %bb.al, %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.al:                                            ; preds = %bb.x
  %i.dx = invoke noundef ptr @_ZN6Assimp12BlobIOSystem12GetBlobChainEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ap)
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr %0, align 8
  store ptr %i.dx, ptr %i.dy, align 8
  %i.dz = load ptr, ptr %0, align 8               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %7, align 16
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 3 uses
  %i.ed = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ee = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i.i76, label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEaSERKS2_.exit87, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not7.i.i.i77 = icmp eq ptr %i.ed, null
  br i1 %.not7.i.i.i77, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i81, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.eg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i78 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i78, label %bb.aq, label %bb.ap
end_hunk_1
begin_hunk_2_@_ZN6Assimp8Exporter6ExportEPK7aiScenePKcS5_jPKNS_16ExportPropertiesE:bb.a
  %8 = alloca %"class.Assimp::FlipWindingOrderProcess", align 8 ; 7 uses
  %9 = alloca %"class.Assimp::FlipUVsProcess", align 8 ; 8 uses
  %10 = alloca %"class.Assimp::MakeLeftHandedProcess", align 8 ; 7 uses
  %11 = alloca %"class.Assimp::JoinVerticesProcess", align 8 ; 6 uses
  %12 = alloca %"class.Assimp::ExportProperties", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %struct.ExceptionSwallower, align 1 ; 4 uses
  %i.e = load i32, ptr %1, align 8
  %i.f = and i32 %i.e, 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef zeroext i1 @_ZN6Assimp24MakeVerboseFormatProcess15IsVerboseFormatEPK7aiScene(ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.b ]
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 0, i32 noundef 4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.r = load i64, ptr %i.q, align 8
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader: ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not117.not146.not = icmp eq ptr %i.w, %i.x
  br i1 %.not117.not146.not, label %.thread139, label %.thread136.preheader

.thread136.preheader:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 40
  br label %.thread136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.thread136
  %i.ac = add nuw i64 %.076147, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.ab
  br i1 %exitcond.not, label %.thread139, label %.thread136, !llvm.loop !104

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  br label %bb.ch

.thread136:                                       ; preds = %.thread136.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.076147 = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.thread136.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %.076147 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %2) #33
  %.not95.not = icmp eq i32 %i.ah, 0
  br i1 %.not95.not, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.f:                                             ; preds = %.thread136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store ptr null, ptr %i.d, align 8
  invoke void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef 1, i32 noundef 4)
          to label %_ZN6Assimp9ScenePrivEPK7aiScene.exit unwind label %bb.k

_ZN6Assimp9ScenePrivEPK7aiScene.exit:             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ao = load ptr, ptr %i.d, align 8             ; 13 uses
  store ptr %i.ao, ptr %6, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = or i32 %i.as, %4                        ; 3 uses
  %.not96 = icmp eq ptr %i.aq, null
  br i1 %.not96, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.av = load i8, ptr %i.au, align 4, !range !97, !noundef !98
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, -25165829
  %i.ba = xor i32 %i.az, -1
  %i.bb = and i32 %i.at, %i.ba
  br label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit, %bb.h, %bb.i
  %i.bc = phi i32 [ %i.bb, %bb.i ], [ %i.at, %bb.h ], [ %i.at, %_ZN6Assimp9ScenePrivEPK7aiScene.exit ] ; 9 uses
  %.pre159 = load ptr, ptr %0, align 8            ; 4 uses
  br i1 %i.h, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre159, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.pre159, i64 56
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not153 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not153, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bq

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %i.bi = phi ptr [ %i.cb, %bb.p ], [ %i.bg, %.preheader ]
  %i.bj = phi i64 [ %i.bw, %bb.p ], [ 0, %.preheader ]
  %.083149 = phi i32 [ %i.bv, %bb.p ], [ 0, %.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8            ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i32 noundef %i.bc)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.lr.ph
  br i1 %i.bp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bl, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.bt, label %.thread134, label %bb.p

bb.o:                                             ; preds = %bb.m, %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bp

bb.p:                                             ; preds = %bb.l, %bb.n
  %i.bv = add i32 %.083149, 1                     ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = load ptr, ptr %0, align 8               ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = icmp ugt i64 %i.cf, %i.bw
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load i32, ptr %i.ar, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ch = phi ptr [ %i.bx, %._crit_edge.loopexit ], [ %.pre159, %.preheader ]
  %i.ci = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.as, %.preheader ]
  %i.cj = and i32 %i.ci, 2
  %.not97 = icmp eq i32 %i.cj, 0
  br i1 %.not97, label %bb.v, label %.thread134

.thread134:                                       ; preds = %bb.n, %._crit_edge
  %i.ck = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %.thread134
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ck, ptr noundef nonnull @.str.3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp24MakeVerboseFormatProcessE, i64 16), ptr %7, align 8
  invoke void @_ZN6Assimp24MakeVerboseFormatProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.ao)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cl = load i32, ptr %i.ar, align 8
  %i.cm = and i32 %i.cl, 2
  %.not99 = icmp eq i32 %i.cm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.pre158 = load ptr, ptr %0, align 8
  br label %bb.v

bb.t:                                             ; preds = %bb.q, %.thread134
  %i.cn = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bp

bb.u:                                             ; preds = %bb.r
  %i.co = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bp

bb.v:                                             ; preds = %._crit_edge, %bb.s, %bb.j
  %i.cp = phi ptr [ %.pre159, %bb.j ], [ %.pre158, %bb.s ], [ %i.ch, %._crit_edge ]
  %.289 = phi i1 [ false, %bb.j ], [ %.not99, %bb.s ], [ false, %._crit_edge ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i32 noundef 2, i32 noundef 4)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.not100 = icmp eq i32 %i.bc, 0
  br i1 %.not100, label %bb.bc, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp23FlipWindingOrderProcessE, i64 16), ptr %8, align 8
  %i.cv = invoke noundef zeroext i1 @_ZNK6Assimp23FlipWindingOrderProcess8IsActiveEj(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %i.bc)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  br i1 %i.cv, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.ao)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.bc, %bb.v
  %i.cw = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bp

bb.ab:                                            ; preds = %bb.z, %bb.x
  %i.cx = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.bp

bb.ac:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6Assimp14FlipUVsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cy = invoke noundef zeroext i1 @_ZNK6Assimp14FlipUVsProcess8IsActiveEj(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.bc)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.cy, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6Assimp14FlipUVsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.ao)
          to label %bb.ai unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.ad
  %i.da = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  call void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #30
  br label %bb.al

bb.ai:                                            ; preds = %bb.af, %bb.ae
  call void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16), ptr %10, align 8
  %i.db = invoke noundef zeroext i1 @_ZNK6Assimp21MakeLeftHandedProcess8IsActiveEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.bc)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.db, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %i.ao)
          to label %bb.an unwind label %bb.am

bb.al:                                            ; preds = %bb.ah, %bb.ag
  %.pn101 = phi { ptr, i32 } [ %i.da, %bb.ah ], [ %i.cz, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.bp

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %i.dc = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bp

bb.an:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %.not103 = icmp eq ptr %5, null
  br i1 %.not103, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.dd = invoke noundef nonnull align 4 dereferenceable(4) ptr @_Z18GetGenericPropertyIiERKT_RKSt3mapIjS0_St4lessIjESaISt4pairIKjS0_EEEPKcS2_(ptr noundef nonnull align 8 dereferenceable(240) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.de = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bp

bb.aq:                                            ; preds = %bb.ao
  %i.df = load i32, ptr %i.dd, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dg = load ptr, ptr %0, align 8               ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.dh, align 8            ; 3 uses
  %.not154 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not154, label %_ZN6Assimp9ScenePrivEP7aiScene.exit, label %.lr.ph152

.thread:                                          ; preds = %bb.an
  %i.dl = load ptr, ptr %0, align 8               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not154190 = icmp eq ptr %i.do, %i.dp
  br i1 %.not154190, label %_ZN6Assimp9ScenePrivEP7aiScene.exit, label %.lr.ph152.split.us.preheader

.lr.ph152:                                        ; preds = %bb.aq
  %.fr = freeze i32 %i.df
  %.not196 = icmp eq i32 %.fr, 0
  br i1 %.not196, label %.lr.ph152.split.us.preheader, label %.lr.ph152.split

.lr.ph152.split.us.preheader:                     ; preds = %.thread, %.lr.ph152
  %.ph = phi ptr [ %i.dp, %.thread ], [ %i.dk, %.lr.ph152 ]
  br label %.lr.ph152.split.us

.lr.ph152.split.us:                               ; preds = %.lr.ph152.split.us.preheader, %bb.av
  %i.dq = phi ptr [ %i.ei, %bb.av ], [ %.ph, %.lr.ph152.split.us.preheader ]
  %i.dr = phi i64 [ %i.ed, %bb.av ], [ 0, %.lr.ph152.split.us.preheader ]
  %.077150.us = phi i32 [ %i.ec, %bb.av ], [ 0, %.lr.ph152.split.us.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8            ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i32 noundef %i.bc)
          to label %bb.ar unwind label %.split.us

bb.ar:                                            ; preds = %.lr.ph152.split.us
  br i1 %i.dx, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.dy = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not108.us = icmp eq ptr %i.dy, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp14FlipUVsProcessE, i64 16)
  br i1 %.not108.us, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dz = call ptr @__dynamic_cast(ptr nonnull %i.dt, ptr nonnull @_ZTIN6Assimp11BaseProcessE, ptr nonnull @_ZTIN6Assimp23FlipWindingOrderProcessE, i64 0) #30
  %.not109.us = icmp ne ptr %i.dz, null
  %.not111.us = icmp eq ptr %i.dy, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16)
  %or.cond143.us = select i1 %.not109.us, i1 true, i1 %.not111.us
  br i1 %or.cond143.us, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef %i.ao)
          to label %bb.av unwind label %.split.us

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %i.ec = add i32 %.077150.us, 1                  ; 2 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = load ptr, ptr %0, align 8               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3
  %i.en = icmp ugt i64 %i.em, %i.ed
  br i1 %i.en, label %.lr.ph152.split.us, label %_ZN6Assimp9ScenePrivEP7aiScene.exit, !llvm.loop !106

.split.us:                                        ; preds = %bb.au, %.lr.ph152.split.us
  %i.eo = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bp

_ZN6Assimp9ScenePrivEP7aiScene.exit:              ; preds = %bb.bb, %bb.av, %.thread, %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ao, i64 1160
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8
  %i.et = or i32 %i.es, %i.bc
  store i32 %i.et, ptr %i.er, align 8
  br label %bb.bc

.lr.ph152.split:                                  ; preds = %.lr.ph152, %bb.bb
  %i.eu = phi ptr [ %i.fo, %bb.bb ], [ %i.dk, %.lr.ph152 ]
  %i.ev = phi i64 [ %i.fj, %bb.bb ], [ 0, %.lr.ph152 ]
  %.077150 = phi i32 [ %i.fi, %bb.bb ], [ 0, %.lr.ph152 ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8            ; 6 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef zeroext i1 %i.fa(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i32 noundef %i.bc)
          to label %bb.aw unwind label %.split

bb.aw:                                            ; preds = %.lr.ph152.split
  br i1 %i.fb, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.fc = load ptr, ptr %i.ex, align 8            ; 3 uses
  %.not108 = icmp eq ptr %i.fc, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp14FlipUVsProcessE, i64 16)
  br i1 %.not108, label %bb.bb, label %bb.ay

.split:                                           ; preds = %bb.ba, %.lr.ph152.split
  %i.fd = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bp

bb.ay:                                            ; preds = %bb.ax
  %i.fe = call ptr @__dynamic_cast(ptr nonnull %i.ex, ptr nonnull @_ZTIN6Assimp11BaseProcessE, ptr nonnull @_ZTIN6Assimp23FlipWindingOrderProcessE, i64 0) #30
  %.not109 = icmp ne ptr %i.fe, null
  %.not111 = icmp eq ptr %i.fc, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16)
  %or.cond143 = select i1 %.not109, i1 true, i1 %.not111
  br i1 %or.cond143, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = call ptr @__dynamic_cast(ptr nonnull %i.ex, ptr nonnull @_ZTIN6Assimp11BaseProcessE, ptr nonnull @_ZTIN6Assimp20PretransformVerticesE, i64 0) #30
  %.not155 = icmp eq ptr %i.ff, null
  br i1 %.not155, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef %i.ao)
          to label %bb.bb unwind label %.split

bb.bb:                                            ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.az
  %i.fi = add i32 %.077150, 1                     ; 2 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = load ptr, ptr %0, align 8               ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3
  %i.ft = icmp ugt i64 %i.fs, %i.fj
  br i1 %i.ft, label %.lr.ph152.split, label %_ZN6Assimp9ScenePrivEP7aiScene.exit, !llvm.loop !106

bb.bc:                                            ; preds = %_ZN6Assimp9ScenePrivEP7aiScene.exit, %bb.w
  %i.fu = load ptr, ptr %0, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, i32 noundef 3, i32 noundef 4)
          to label %bb.bd unwind label %bb.aa

bb.bd:                                            ; preds = %bb.bc
  br i1 %.289, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp19JoinVerticesProcessE, i64 16), ptr %11, align 8
  invoke void @_ZN6Assimp19JoinVerticesProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.ao)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ga = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bp

bb.bh:                                            ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN6Assimp16ExportPropertiesC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %12)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %.not104 = icmp eq ptr %5, null
  %i.gb = select i1 %.not104, ptr %12, ptr %5     ; 2 uses
  %i.gc = lshr i32 %i.bc, 1
  %.lobit = and i32 %i.gc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.lobit, ptr %i.b, align 4
  %i.gd = invoke noundef zeroext i1 @_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_(ptr noundef nonnull align 8 dereferenceable(240) %i.gb, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bj unwind label %bb.bn     ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %0, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gf(ptr noundef %3, ptr noundef %i.gi, ptr noundef %i.ao, ptr noundef nonnull %i.gb)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.gj = load ptr, ptr %0, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, i32 noundef 4, i32 noundef 4)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN6Assimp16ExportPropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit.i

_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit.i:   ; preds = %bb.bl
  call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.ao) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 1168) #28
  br label %_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.bl, %_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.ck

bb.bm:                                            ; preds = %bb.bh
  %i.gp = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi, %bb.bk, %bb.bj
  %i.gq = landingpad { ptr, i32 }
          catch ptr @_ZTI17DeadlyExportError
          catch ptr null
  call void @_ZN6Assimp16ExportPropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %12) #30
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn105 = phi { ptr, i32 } [ %i.gq, %bb.bn ], [ %i.gp, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bp

bb.bp:                                            ; preds = %.split, %.split.us, %bb.ap, %bb.o, %bb.t, %bb.u, %bb.bo, %bb.bg, %bb.am, %bb.al, %bb.ab, %bb.aa
  %.pn112.pn = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %.pn105, %bb.bo ], [ %i.ga, %bb.bg ], [ %i.cw, %bb.aa ], [ %i.dc, %bb.am ], [ %.pn101, %bb.al ], [ %i.cx, %bb.ab ], [ %i.co, %bb.u ], [ %i.cn, %bb.t ], [ %i.de, %bb.ap ], [ %i.fd, %.split ], [ %i.eo, %.split.us ]
  call void @_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.k
  %.pn112.pn.pn = phi { ptr, i32 } [ %.pn112.pn, %bb.bp ], [ %i.bh, %bb.k ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn112.pn.pn, 0 ; 2 uses
  %.575 = extractvalue { ptr, i32 } %.pn112.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.gr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI17DeadlyExportError) #30
  %i.gs = icmp eq i32 %.575, %i.gr
  br i1 %i.gs, label %bb.br, label %bb.ch

bb.br:                                            ; preds = %bb.bq
  %i.gt = call ptr @__cxa_begin_catch(ptr %.5) #30
  %i.gu = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #30
  %i.gv = load ptr, ptr %0, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.gx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, ptr noundef %i.gu)
          to label %bb.bs unwind label %bb.bt     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.cm

bb.bu:                                            ; preds = %bb.bs
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.pn116 = phi { ptr, i32 } [ %i.gz, %bb.bu ], [ %i.gy, %bb.bt ]
  %.6 = extractvalue { ptr, i32 } %.pn116, 0
  br label %bb.ch

.thread139:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ha, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 46, ptr %i.a, align 8
  %i.hb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.cf    ; 3 uses

.noexc:                                           ; preds = %.thread139
  store ptr %i.hb, ptr %14, align 8
  %i.hc = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.hc, ptr %i.ha, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.hb, ptr noundef nonnull align 1 dereferenceable(46) @.str.6, i64 46, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.hc, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hc
  store i8 0, ptr %i.he, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.hf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30, !noalias !107 ; 2 uses
  %i.hg = load i64, ptr %i.hd, align 8, !noalias !107
  %i.hh = sub i64 4611686018427387903, %i.hg
  %i.hi = icmp ult i64 %i.hh, %i.hf
  br i1 %i.hi, label %bb.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.bw:                                            ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc120 unwind label %bb.cg

.noexc120:                                        ; preds = %bb.bw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc
  %i.hj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %2, i64 noundef %i.hf)
          to label %.noexc121 unwind label %bb.cg ; 6 uses

.noexc121:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.hk, ptr %13, align 8, !alias.scope !107
  %i.hl = load ptr, ptr %i.hj, align 8            ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 5 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %bb.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.bx:                                            ; preds = %.noexc121
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hp = load i64, ptr %i.ho, align 8            ; 3 uses
  %i.hq = icmp ult i64 %i.hp, 16
  call void @llvm.assume(i1 %i.hq)
  %i.hr = add nuw nsw i64 %i.hp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.hm, i64 %i.hr, i1 false)
  br label %bb.by

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc121
  store ptr %i.hl, ptr %13, align 8, !alias.scope !107
  %i.hs = load i64, ptr %i.hm, align 8
  store i64 %i.hs, ptr %i.hk, align 8, !alias.scope !107
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.by

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bx
  %i.ht = phi ptr [ %i.hk, %bb.bx ], [ %i.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.hu = phi i64 [ %i.hp, %bb.bx ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 %i.hu, ptr %i.hw, align 8, !alias.scope !107
  store ptr %i.hm, ptr %i.hj, align 8
  store i64 0, ptr %i.hv, align 8
  store i8 0, ptr %i.hm, align 8
  %i.hx = load ptr, ptr %0, align 8               ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 72 ; 5 uses
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE17_M_realloc_insertIJRKS6_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_:bb.a
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.x, ptr %i.r, align 8
  %i.y = load i64, ptr %i.a, align 8
  store i64 %i.y, ptr %i.s, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ag = load ptr, ptr %3, align 8
  store ptr %i.ag, ptr %i.af, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !alias.scope !133, !noalias !136
  %i.ai = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !136, !noalias !133 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !136, !noalias !133 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !138
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !133, !noalias !136
  %i.ap = load i64, ptr %i.aj, align 8, !alias.scope !136, !noalias !133
  store i64 %i.ap, ptr %i.ah, align 8, !alias.scope !133, !noalias !136
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !136, !noalias !133
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.aq = phi i64 [ %i.am, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !alias.scope !133, !noalias !136
  store ptr %i.aj, ptr %.0911.i.i.i, align 8, !alias.scope !136, !noalias !133
  store i64 0, ptr %i.ar, align 8, !alias.scope !136, !noalias !133
  store i8 0, ptr %i.aj, align 8, !alias.scope !136, !noalias !133
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !136, !noalias !133
  store ptr %i.av, ptr %i.at, align 8, !alias.scope !133, !noalias !136
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i, !llvm.loop !139

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ax, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit37, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34
  %.012.i.i.i29 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.ay, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 6 uses
  %.0911.i.i.i30 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.az, ptr %.012.i.i.i29, align 8, !alias.scope !140, !noalias !143
  %i.ba = load ptr, ptr %.0911.i.i.i30, align 8, !alias.scope !143, !noalias !140 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

bb.g:                                             ; preds = %.lr.ph.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !143, !noalias !140 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false), !alias.scope !145
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.ba, ptr %.012.i.i.i29, align 8, !alias.scope !140, !noalias !143
  %i.bh = load i64, ptr %i.bb, align 8, !alias.scope !143, !noalias !140
  store i64 %i.bh, ptr %i.az, align 8, !alias.scope !140, !noalias !143
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !alias.scope !143, !noalias !140
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %bb.g
  %i.bi = phi i64 [ %i.be, %bb.g ], [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.bi, ptr %i.bk, align 8, !alias.scope !140, !noalias !143
  store ptr %i.bb, ptr %.0911.i.i.i30, align 8, !alias.scope !143, !noalias !140
  store i64 0, ptr %i.bj, align 8, !alias.scope !143, !noalias !140
  store i8 0, ptr %i.bb, align 8, !alias.scope !143, !noalias !140
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !143, !noalias !140
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !140, !noalias !143
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit37, label %.lr.ph.i.i.i28, !llvm.loop !139

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit37: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ay, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ], [ %i.bp, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.d, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit37
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bt) #28
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit37, %bb.h
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i36, ptr %i.b, align 8
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bu, ptr %i.bq, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #30 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #28
  invoke void @__cxa_rethrow() #32
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bv

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #29
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

declare void @_ZN6Assimp33GetPostProcessingStepInstanceListERSt6vectorIPNS_11BaseProcessESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp8IOSystemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp15DefaultIOSystemELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp15DefaultIOSystemELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp8IOSystemE, i64 16), ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.n = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i, label %_ZN6Assimp8IOSystemD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #28
  br label %_ZN6Assimp8IOSystemD2Ev.exit

_ZN6Assimp8IOSystemD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %i.b) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp8IOSystemD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp15DefaultIOSystemELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp15DefaultIOSystemELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN6Assimp18ExportSceneColladaEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp16ExportSceneXFileEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp15ExportSceneStepEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportSceneObjEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp19ExportSceneObjNoMtlEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportSceneSTLEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp20ExportSceneSTLBinaryEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportScenePlyEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp20ExportScenePlyBinaryEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportScene3DSEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp16ExportSceneGLTF2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp15ExportSceneGLB2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp15ExportSceneGLTFEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportSceneGLBEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp17ExportSceneAssbinEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp17ExportSceneAssxmlEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportSceneX3DEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportSceneFBXEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp15ExportSceneFBXAEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp14ExportScene3MFEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp15ExportScenePbrtEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @_ZN6Assimp17ExportAssimp2JsonEPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp15ProgressHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp22DefaultProgressHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp22DefaultProgressHandler6UpdateEf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp15ProgressHandler14UpdateFileReadEii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = sitofp i32 %1 to float
  %i.b = sitofp i32 %2 to float
  %i.c = fdiv float %i.a, %i.b
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = select i1 %.not, float 5.000000e-01, float %i.d
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp15ProgressHandler17UpdatePostProcessEii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sitofp i32 %1 to float
  %i.b = sitofp i32 %2 to float
  %i.c = fdiv float %i.a, %i.b
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float 5.000000e-01, float 5.000000e-01)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi float [ %i.d, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp15ProgressHandler15UpdateFileWriteEii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = sitofp i32 %1 to float
  %i.b = sitofp i32 %2 to float
  %i.c = fdiv float %i.a, %i.b
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = select i1 %.not, float 5.000000e-01, float %i.d
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12BlobIOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.d
  br i1 %.not9, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.pre11 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre11
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %.pre11
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !110

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp8IOSystemE, i64 16), ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ab, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i, label %_ZN6Assimp8IOSystemD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #28
  br label %_ZN6Assimp8IOSystemD2Ev.exit

_ZN6Assimp8IOSystemD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.06.010 = phi ptr [ %i.au, %bb.f ], [ %i.b, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 32
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZN16aiExportDataBlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %i.as) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 1056) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12BlobIOSystemD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp12BlobIOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #30
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp12BlobIOSystem6ExistsEPKc(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.58) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8              ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.s, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.f, !llvm.loop !147

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.q, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp sgt i32 %.0.i.i.i.i.i, -1
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.e
end_hunk_3
begin_hunk_4_@_ZN6Assimp12BlobIOSystem4OpenEPKcS2_:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.58) #32
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.g, ptr %i.c, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc15 unwind label %bb.s   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %3, align 8
  %i.j = load i64, ptr %i.c, align 8
  store i64 %i.j, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15, %bb.d
  %i.k = phi ptr [ %i.i, %.noexc15 ], [ %i.e, %bb.d ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %1, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.m = load i64, ptr %i.c, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc16 unwind label %bb.t   ; 2 uses

.noexc16:                                         ; preds = %bb.g
  %i.s = extractvalue { ptr, ptr } %i.r, 1        ; 5 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.noexc16
  %i.t = extractvalue { ptr, ptr } %i.r, 0
  %.not.i = icmp ne ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.v
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.n, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.w) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %3, align 8
  %i.ad = call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.i
  %i.ae = sub i64 %i.w, %i.y
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i, 0
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.h
  %i.ag = phi i1 [ %i.af, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.h ]
  %i.ah = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31
          to label %.noexc33 unwind label %bb.t   ; 4 uses

.noexc33:                                         ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.k:                                             ; preds = %.noexc33
  %i.am = load i64, ptr %i.n, align 8             ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.ao, i1 false)
  br label %.noexc17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc33
  store ptr %i.ak, ptr %i.ai, align 8
  %i.ap = load i64, ptr %i.e, align 8
  store i64 %i.ap, ptr %i.aj, align 8
  %.pre.i.i.i = load i64, ptr %i.n, align 8
  br label %.noexc17

.noexc17:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.k
  %i.aq = phi i64 [ %i.am, %bb.k ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %i.aq, ptr %i.ar, align 8
  store ptr %i.e, ptr %3, align 8
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.e, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  br label %bb.l

bb.l:                                             ; preds = %.noexc17, %.noexc16
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ax = load i64, ptr %i.e, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.az = call noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 88) ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ba, ptr %4, align 8
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.bb, ptr %i.b, align 8
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i19, label %._crit_edge.i.i18

.noexc.i19:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc21 unwind label %bb.u   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i19
  store ptr %i.bd, ptr %4, align 8
  %i.be = load i64, ptr %i.b, align 8
  store i64 %i.be, ptr %i.ba, align 8
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bf = phi ptr [ %i.bd, %.noexc21 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 2 uses
  switch i64 %i.bb, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i18
  %i.bg = load i8, ptr %1, align 1
  store i8 %i.bg, ptr %i.bf, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %1, i64 %i.bb, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i18
  %i.bh = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bh, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %4, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp12BlobIOStreamE, i64 16), ptr %i.az, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i8 0, i64 32, i1 false)
  store i64 4096, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 3 uses
  store ptr %i.bo, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %4, align 8               ; 2 uses
  %i.bq = load i64, ptr %i.bi, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.bq, ptr %i.a, align 8
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.o
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.v   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i.i
  store ptr %i.bs, ptr %i.bn, align 8
  %i.bt = load i64, ptr %i.a, align 8
  store i64 %i.bt, ptr %i.bo, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc23, %bb.o
  %i.bu = phi ptr [ %i.bs, %.noexc23 ], [ %i.bo, %bb.o ] ; 2 uses
  switch i64 %i.bq, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.bp, align 1
  store i8 %i.bv, ptr %i.bu, align 1
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bp, i64 %i.bq, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i
  %i.bw = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = load ptr, ptr %i.bn, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  store ptr %0, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %4, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ba
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  %i.cd = load i64, ptr %i.ba, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.w

bb.s:                                             ; preds = %.noexc.i, %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.t:                                             ; preds = %bb.j, %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.e
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.t
  %i.cj = load i64, ptr %i.e, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.s ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.cg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.x

bb.u:                                             ; preds = %.noexc.i19
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.v:                                             ; preds = %.noexc.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %4, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ba
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.v
  %i.cp = load i64, ptr %i.ba, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.u
  %.pn12 = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.cm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef %i.az) #30
  br label %bb.x

bb.w:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.0 = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ null, %bb.a ]
  ret ptr %.0

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12BlobIOSystem5CloseEPNS_8IOStreamE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp8IOSystem12ComparePathsEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6Assimp8IOSystem13PushDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = load i64, ptr %i.b, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.k, ptr %i.a, align 8
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %i.f, align 8
  %i.n = load i64, ptr %i.a, align 8
  store i64 %i.n, ptr %i.i, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc.i.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.j, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.e, align 8
end_hunk_4
