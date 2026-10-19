Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projbasedoperation?download=true
inline.NumInlined: 548
inline.NumDeleted: 259
begin_hunk_0_@_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj2io19PROJStringFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #24
  br label %_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18PROJBasedOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation18PROJBasedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !117
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !117
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation18PROJBasedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation18PROJBasedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation18PROJBasedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation18PROJBasedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !118
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !118
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj9operation18PROJBasedOperation6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS0_2io21IPROJStringExportableEEEEbRKNS9_ISA_INS0_3crs3CRSEEEESM_RKSJ_RKSt6vectorINS9_ISA_INS0_8metadata18PositionalAccuracyEEEESaIST_EEb(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.dropbox::oxygen::nn.65", align 8 ; 11 uses
  %10 = alloca %"class.std::shared_ptr.74", align 8 ; 4 uses
  %11 = alloca %"class.dropbox::oxygen::nn", align 8 ; 7 uses
  %12 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::vector", align 8      ; 10 uses
  %15 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %16 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter6createENS2_10ConventionESt10shared_ptrINS1_15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.65") align 8 %9, i32 noundef 0, ptr noundef nonnull align 8 %10)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !5
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  br i1 %3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = load ptr, ptr %9, align 8, !tbaa !57
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter14startInversionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.k unwind label %bb.av

bb.j:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #23
  br label %bb.bt

bb.k:                                             ; preds = %bb.i, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !62     ; 2 uses
  %i.w = load ptr, ptr %9, align 8, !tbaa !57
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.w)
          to label %bb.l unwind label %bb.av

bb.l:                                             ; preds = %bb.k
  br i1 %3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %9, align 8, !tbaa !57
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter13stopInversionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.n unwind label %bb.av

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = load ptr, ptr %9, align 8, !tbaa !57
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.o unwind label %bb.av      ; 3 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.p unwind label %bb.aw

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34, !noalias !124
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !39, !noalias !124 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ag, ptr %13, align 8, !tbaa !38, !alias.scope !125
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !39, !alias.scope !125
  store i8 0, ptr %i.ag, align 8, !tbaa !27, !alias.scope !125
  %i.ai = add i64 %i.af, 43
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.ai)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !39, !alias.scope !125
  %i.ak = add i64 %i.aj, -4611686018427387861
  %i.al = icmp ult i64 %i.ak, 43
  br i1 %i.al, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.q
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, i64 noundef 43)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !39, !alias.scope !125
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.af
  br i1 %i.ap, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
          to label %.cont.i.i unwind label %bb.r

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %13, align 8, !tbaa !34, !alias.scope !125 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ag
  br i1 %i.at, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.s unwind label %bb.ax

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  invoke void @_ZN5osgeo4proj9operation15OperationMethod6createERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_25GeneralOperationParameterEEEESaISE_EE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.t unwind label %bb.ay

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %14, align 8, !tbaa !42   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i ], [ %i.av, %bb.t ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ba, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !26
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #23, !inline_history !1
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #23, !inline_history !1
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.x ], [ %i.bn, %bb.y ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.z, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i, !prof !29

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #23
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.v, %.lr.ph.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.bp, %i.ax
  br i1 %.not.i.i.i42, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.t
  %i.bq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.av, %bb.t ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEESaIS9_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #24
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.bw = load ptr, ptr %13, align 8, !tbaa !34   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ag
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEESaIS9_EED2Ev.exit
  %i.by = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEESaIS9_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  invoke void @_ZN5osgeo4proj9operation18PROJBasedOperation14nn_make_sharedIS2_JRN7dropbox6oxygen2nnISt10shared_ptrINS1_15OperationMethodEEEEEEENS6_IS7_IT_EEEDpOT0_(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.ab unwind label %bb.bb

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !48    ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !19
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !19
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.ca, i64 %i.cg
  store ptr %i.ch, ptr %15, align 8, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !23 ; 3 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !23
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation18PROJBasedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !28
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !28
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation18PROJBasedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cp = atomicrmw volatile add ptr %i.cl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation18PROJBasedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation18PROJBasedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.cq = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd
  invoke void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.af unwind label %bb.bd

bb.af:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation18PROJBasedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.cr = load ptr, ptr %0, align 8, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.af
  %i.ct = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation7setCRSsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc.i unwind label %bb.bc

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cy = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dd, ptr %17, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 31, ptr %i.a, align 8, !tbaa !55
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.be    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.de, ptr %17, align 8, !tbaa !34
  %i.df = load i64, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.de, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !39
  %i.dh = load ptr, ptr %17, align 8, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN5osgeo4proj9operation22addDefaultNameIfNeededERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ag unwind label %bb.bf

bb.ag:                                            ; preds = %.noexc
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(72) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ah unwind label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23
  %i.dj = load ptr, ptr %17, align 8, !tbaa !34   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.dd
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ah
  %i.dl = load i64, ptr %i.dd, align 8, !tbaa !27
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.dn = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 %i.dq
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation13setAccuraciesERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata18PositionalAccuracyEEEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ai unwind label %bb.bc

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.ds = load ptr, ptr %0, align 8, !tbaa !48    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 56 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !23 ; 4 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i.i.i46, label %_ZNSt10shared_ptrIN5osgeo4proj2io21IPROJStringExportableEEaSERKS4_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not7.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !28
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ed = atomicrmw volatile add ptr %i.dz, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.dv, align 8, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.aj
  %i.ee = phi ptr [ %i.dy, %bb.aj ], [ %i.dy, %bb.al ], [ %.pr.pre.i.i.i, %bb.am ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ef, align 8, !tbaa !25
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !26
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #23, !inline_history !123
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #23, !inline_history !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i9.i.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not.i9.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i = phi i32 [ %i.ei, %bb.aq ], [ %i.es, %bb.ar ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.et, label %bb.as, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !29

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ao, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !23
  %.pre = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io21IPROJStringExportableEEaSERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj2io21IPROJStringExportableEEaSERKS4_.exit: ; preds = %bb.ai, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.eu = phi ptr [ %i.ds, %bb.ai ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  store i8 %i.b, ptr %i.ev, align 8, !tbaa !74
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !19
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.eu, i64 %i.ey
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation28setHasBallparkTransformationEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ez, i1 noundef zeroext %8)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io21IPROJStringExportableEEaSERKS4_.exit
  %i.fa = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !19
  %i.fc = getelementptr i8, ptr %i.fb, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = load ptr, ptr %9, align 8, !tbaa !57
  %i.ff = invoke noundef zeroext i1 @_ZNK5osgeo4proj2io19PROJStringFormatter30requiresPerCoordinateInputTimeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.fg = getelementptr inbounds i8, ptr %i.fa, i64 %i.fd
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation33setRequiresPerCoordinateInputTimeEb(ptr noundef nonnull align 8 dereferenceable(72) %i.fg, i1 noundef zeroext %i.ff)
          to label %bb.bi unwind label %bb.bc

bb.av:                                            ; preds = %bb.i, %bb.k, %bb.m, %bb.n
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.aw:                                            ; preds = %bb.o
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.s
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation25GeneralOperationParameterEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.ay ], [ %i.fj, %bb.ax ] ; 2 uses
  %i.fl = load ptr, ptr %13, align 8, !tbaa !34   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ag
  br i1 %i.fm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.az, %bb.r
  %.sink = phi ptr [ %i.as, %bb.r ], [ %i.fl, %bb.az ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %.pn, %bb.az ]
  %i.fn = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fo) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.az, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %.pn, %bb.az ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.ba

bb.ba:                                            ; preds = %.body, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.fi, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.br

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bc:                                            ; preds = %bb.af, %bb.au, %bb.at, %_ZNSt10shared_ptrIN5osgeo4proj2io21IPROJStringExportableEEaSERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bd:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation18PROJBasedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bp

bb.be:                                            ; preds = %.noexc.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.bf:                                            ; preds = %.noexc
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ag
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn32 = phi { ptr, i32 } [ %i.fu, %bb.bg ], [ %i.ft, %bb.bf ] ; 2 uses
  %i.fv = load ptr, ptr %17, align 8, !tbaa !34   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.dd
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.bh
  %i.fx = load i64, ptr %i.dd, align 8, !tbaa !27
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.be
  %.pn32.pn = phi { ptr, i32 } [ %i.fs, %bb.be ], [ %.pn32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn32, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bp

bb.bi:                                            ; preds = %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !23 ; 8 uses
  %.not.i.i.i53 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i53, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 4 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 4294967297
  %i.ge = trunc i64 %i.gc to i32                  ; 2 uses
  br i1 %i.gd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.gb, align 8, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !26
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !19
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #23, !inline_history !6
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !19
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #23, !inline_history !6
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev.exit

bb.bl:                                            ; preds = %bb.bj
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i54 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i54, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gn = add nsw i32 %i.ge, -1
  store i32 %i.gn, ptr %i.gb, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55

bb.bn:                                            ; preds = %bb.bl
  %i.go = atomicrmw volatile add ptr %i.gb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i56 = phi i32 [ %i.ge, %bb.bm ], [ %i.go, %bb.bn ]
  %i.gp = icmp eq i32 %.0.i.i.i.i.i56, 1
  br i1 %i.gp, label %bb.bo, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev.exit, !prof !29

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #23
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev.exit: ; preds = %bb.bi, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.gq = load ptr, ptr %9, align 8, !tbaa !57    ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i57, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev.exit
  call void @_ZN5osgeo4proj2io19PROJStringFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gq) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 8) #24
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.bd, %bb.bc
  %.pn35 = phi { ptr, i32 } [ %i.fq, %bb.bc ], [ %.pn32.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.fr, %bb.bd ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18PROJBasedOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bb
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.bp ], [ %i.fp, %bb.bb ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.ba
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.bq ], [ %.pn.pn.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bs

bb.bs:                                            ; preds = %bb.av, %bb.br
  %.pn35.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.av ], [ %.pn35.pn.pn, %bb.br ]
  call void @_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.j
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn, %bb.bs ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  resume { ptr, i32 } %.pn35.pn.pn.pn.pn.pn
}

declare void @_ZN5osgeo4proj2io19PROJStringFormatter14startInversionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN5osgeo4proj2io19PROJStringFormatter13stopInversionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare hidden void @_ZN5osgeo4proj9operation19CoordinateOperation28setHasBallparkTransformationEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5osgeo4proj9operation18PROJBasedOperation7inverseEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.86") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(65) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.56", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.56", align 8 ; 6 uses
  %4 = alloca %"class.dropbox::oxygen::nn.37", align 8 ; 6 uses
  %5 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %6 = alloca %"class.dropbox::oxygen::nn.85", align 16 ; 7 uses
  %7 = alloca %"class.dropbox::oxygen::nn.59", align 16 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %9 = alloca %"class.dropbox::oxygen::nn.59", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %11 = alloca %"class.dropbox::oxygen::nn.65", align 8 ; 11 uses
  %12 = alloca %"class.std::shared_ptr.74", align 8 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.dropbox::oxygen::nn.37", align 8 ; 10 uses
  %17 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.56", align 8 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.56", align 8 ; 7 uses
  %20 = alloca %"class.std::shared_ptr.56", align 8 ; 7 uses
  %21 = alloca %"class.std::shared_ptr.56", align 8 ; 6 uses
  %22 = alloca %"class.dropbox::oxygen::nn.59", align 16 ; 7 uses
  %23 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %24 = alloca %"class.dropbox::oxygen::nn.59", align 16 ; 7 uses
  %25 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge65.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = load ptr, ptr %1, align 8, !tbaa !19
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  call void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.56") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.f)
  %i.g = load ptr, ptr %2, align 8, !tbaa !54
  %.not191 = icmp eq ptr %i.g, null
  br i1 %.not191, label %.critedge.thread168, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = load ptr, ptr %1, align 8, !tbaa !19
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.56") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %bb.d unwind label %bb.bu

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !54
  %i.m = icmp ne ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !26
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !3
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !3
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.e
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.j, label %.critedge.thread, !prof !29

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.critedge.thread168

.critedge.thread168:                              ; preds = %bb.b, %.critedge.thread
  %i.ae = phi i1 [ %i.m, %.critedge.thread ], [ false, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23 ; 8 uses
  %.not.i.i68 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i68, label %.critedge65, label %bb.k

bb.k:                                             ; preds = %.critedge.thread168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ah, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !26
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #23, !inline_history !3
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #23, !inline_history !3
  br label %.critedge65

bb.m:                                             ; preds = %bb.k
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i69 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i69, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70

bb.o:                                             ; preds = %bb.m
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i71 = phi i32 [ %i.ak, %bb.n ], [ %i.au, %bb.o ]
  %i.av = icmp eq i32 %.0.i.i.i.i71, 1
  br i1 %i.av, label %bb.p, label %.critedge65, !prof !29

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #23
  br label %.critedge65

.critedge65:                                      ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70, %bb.l, %.critedge.thread168
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.ae, label %bb.q, label %.critedge65.thread

bb.q:                                             ; preds = %.critedge65
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.aw = load ptr, ptr %1, align 8, !tbaa !19
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  call void @_ZN5osgeo4proj9operation26createPropertiesForInverseEPKNS1_19CoordinateOperationEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %5, ptr noundef nonnull %i.az, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.a, align 8, !tbaa !75
  store <2 x ptr> %i.bd, ptr %6, align 16, !tbaa !75
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io21IPROJStringExportableEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
end_hunk_0
