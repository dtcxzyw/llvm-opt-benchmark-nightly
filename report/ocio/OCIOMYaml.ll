Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/OCIOMYaml?download=true
inline.NumInlined: 1931
inline.NumDeleted: 557
begin_hunk_0_@_ZN4YAML6detail9node_data8set_nullEv
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK4YAML6detail8node_ref3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef align 8 %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !106
  store <2 x ptr> %i.e, ptr %3, align 16, !tbaa !106
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !58
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !58
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit

_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = invoke noundef ptr @_ZNK4YAML6detail9node_data3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 %3)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !90   ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !93
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !154
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !154
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i3 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  ret ptr %i.k

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  resume { ptr, i32 } %i.ab
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK4YAML6detail9node_data3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef align 8 %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !596
  switch i32 %i.b, label %bb.o [
    i32 2, label %bb.l
    i32 0, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i32 1, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.e, align 4, !tbaa !58
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !58
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.e, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !93
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !154
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !154
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i12 = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.e, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.i ], [ %i.v, %bb.j ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.k, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.a
  %i.x = tail call ptr @__cxa_allocate_exception(i64 64) #28 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  invoke void @_ZN4YAML12BadSubscriptC2IA14_cEERKNS_4MarkERKT_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 1 dereferenceable(14) %1)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN4YAML12BadSubscriptE, ptr nonnull @_ZN4YAML12BadSubscriptD1Ev) #29
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #28
  resume { ptr, i32 } %i.z

bb.o:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !130
  %i.ae = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIPN4YAML6detail4nodeES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNKS4_9node_data3getIA14_cEES6_RKT_St10shared_ptrINS4_13memory_holderEEEUlS7_E_EEESJ_SJ_SJ_T0_St26random_access_iterator_tag(ptr %i.ab, ptr %i.ad, ptr nonnull %1, ptr %2) ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !130
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !152
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.o, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g, %bb.b, %bb.a, %bb.a
  %.1 = phi ptr [ null, %bb.k ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.g ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.ah, %bb.p ], [ null, %bb.o ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4YAML12BadSubscriptC2IA14_cEERKNS_4MarkERKT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(14) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN4YAML8ErrorMsg22BAD_SUBSCRIPT_WITH_KEYB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %2)
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML23RepresentationExceptionE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !23
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML12BadSubscriptE, i64 16), ptr %0, align 8, !tbaa !49
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.f
}

; Function Attrs: nounwind
declare void @_ZN4YAML12BadSubscriptD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4YAML8ErrorMsg22BAD_SUBSCRIPT_WITH_KEYB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.77, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.78, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !418
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.g

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %bb.b, %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.79, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !29, !alias.scope !603
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !30, !alias.scope !603
  store i8 0, ptr %i.n, align 8, !tbaa !23, !alias.scope !603
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123, !noalias !603 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !603 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !603 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !603 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !23, !alias.scope !603
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #27
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !49
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !49
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.al, ptr %i.a, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #28
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !49
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !425
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ba) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIPN4YAML6detail4nodeES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNKS4_9node_data3getIA14_cEES6_RKT_St10shared_ptrINS4_13memory_holderEEEUlS7_E_EEESJ_SJ_SJ_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 9 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 6                         ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.036 = phi i64 [ %i.o, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.025.035 = phi ptr [ %i.n, %bb.e ], [ %0, %bb.a ] ; 6 uses
  %i.g = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.025.035)
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 16 ; 2 uses
  %i.i = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.h)
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 32 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.j)
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 48 ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.l)
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 64 ; 3 uses
  %i.o = add nsw i64 %.036, -1
  %i.p = icmp sgt i64 %.036, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !604

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %i.n to i64
  %.pre37 = sub i64 %i.b, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi38 = phi i64 [ %.pre37, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %.sroa.025.0.lcssa = phi ptr [ %i.n, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.q = ashr exact i64 %.pre-phi38, 4
  switch i64 %i.q, label %.loopexit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.r = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.025.0.lcssa)
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.025.1 = phi ptr [ %i.s, %bb.g ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 3 uses
  %i.t = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.025.1)
  br i1 %i.t, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.025.2 = phi ptr [ %i.u, %bb.i ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 2 uses
  %i.v = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.025.2)
  %spec.select = select i1 %i.v, ptr %.sroa.025.2, ptr %1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.j, %._crit_edge, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.025.1, %bb.h ], [ %spec.select, %bb.j ], [ %1, %._crit_edge ], [ %.sroa.025.0.lcssa, %bb.f ], [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ %i.h, %bb.b ], [ %.sroa.025.035, %.lr.ph ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZNK4YAML6detail9node_data3getIA14_cEEPNS3_4nodeERKT_St10shared_ptrINS3_13memory_holderEEEUlSt4pairIS8_S8_EE_EclINS_17__normal_iteratorIPKSG_St6vectorISG_SaISG_EEEEEEbS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !605, !nonnull !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !608, !nonnull !46, !align !528 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !106
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !106
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !58
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !58
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = invoke noundef zeroext i1 @_ZN4YAML6detail4node6equalsEPKcSt10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.copyload, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !90   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZZNK4YAML6detail9node_data3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEEENKUlSt4pairIS5_S5_EE_clESD_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !93
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !609
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !609
  br label %_ZZNK4YAML6detail9node_data3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEEENKUlSt4pairIS5_S5_EE_clESD_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i2.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZZNK4YAML6detail9node_data3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEEENKUlSt4pairIS5_S5_EE_clESD_.exit, !prof !95

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28
  br label %_ZZNK4YAML6detail9node_data3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEEENKUlSt4pairIS5_S5_EE_clESD_.exit

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  resume { ptr, i32 } %i.ad

_ZZNK4YAML6detail9node_data3getIA14_cEEPNS0_4nodeERKT_St10shared_ptrINS0_13memory_holderEEENKUlSt4pairIS5_S5_EE_clESD_.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i1 %i.m
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4YAML6detail4node6equalsEPKcSt10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef align 8 %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.YAML::Node", align 8        ; 13 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !90
  store ptr %i.f, ptr %i.d, align 8, !tbaa !90
  store ptr null, ptr %2, align 8, !tbaa !89
  store i8 1, ptr %4, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.c, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.f, ptr %i.k, align 8, !tbaa !90
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !58
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !58
  br label %_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit.thread

_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit.thread: ; preds = %bb.a, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %0, ptr %i.p, align 8, !tbaa !51
  br label %_ZNK4YAML4Node8IsScalarEv.exit.i

_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit: ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr %4, align 8, !tbaa !33, !range !42
  %i.r = trunc nuw i8 %.pre to i1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %0, ptr %i.s, align 8, !tbaa !51
  br i1 %i.r, label %_ZNK4YAML4Node8IsScalarEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit
  %i.t = call ptr @__cxa_allocate_exception(i64 64) #28 ; 3 uses
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #29
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #28
  br label %.body

_ZNK4YAML4Node8IsScalarEv.exit.i:                 ; preds = %_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit.thread, %_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !52
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !133, !range !42, !noundef !46
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, 2
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false      ; 2 uses
  br i1 %i.ac, label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit.i, label %_ZN4YAML7convertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6decodeERKNS_4NodeERS6_.exit

_ZNK4YAML4Node6ScalarB5cxx11Ev.exit.i:            ; preds = %_ZNK4YAML4Node8IsScalarEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZN4YAML7convertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6decodeERKNS_4NodeERS6_.exit unwind label %bb.v

_ZN4YAML7convertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6decodeERKNS_4NodeERS6_.exit: ; preds = %_ZNK4YAML4Node8IsScalarEv.exit.i, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !90  ; 8 uses
  %.not.i.i.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i5, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4YAML7convertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6decodeERKNS_4NodeERS6_.exit
end_hunk_0
