inline.NumInlined: 3285
inline.NumDeleted: 896
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD2Ev:bb.a
bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !77
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !77
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @freelocale(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !398
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !398
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !229
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !229
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !230
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9CDLOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9CDLOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9CDLOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9CDLOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @_ZN16OpenColorIO_v2_5L7TAG_CDLE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !399
  %i.f = tail call noundef ptr @_ZN16OpenColorIO_v2_59CDLOpData12GetStyleNameENS0_5StyleE(i32 noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !24
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !26
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !11
  %i.l = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.l, ptr %i.g, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !17
  store i8 %i.n, ptr %i.m, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %2, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !24
  %i.x = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.x, ptr %i.t, align 8, !tbaa !11
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.af = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !16
  store ptr %i.y, ptr %3, align 8, !tbaa !11
  store i64 0, ptr %i.ag, align 8, !tbaa !16
  store i8 0, ptr %i.y, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !11
  %i.as = load i64, ptr %i.am, align 8, !tbaa !17
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !17
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre14 = load i64, ptr %.phi.trans.insert13, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.at = phi i64 [ %.pre14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ap, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %i.at, ptr %i.av, align 8, !tbaa !16
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !11
  store i64 0, ptr %i.au, align 8, !tbaa !16
  store i8 0, ptr %i.am, align 8, !tbaa !17
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %i.ax, ptr %i.s, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.j:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.l

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.j
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 8, !tbaa !11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.az = icmp eq ptr %.pre16, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre16, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA12_KcRPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.j:                                             ; preds = %.noexc.i7, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !17
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab
}

declare noundef ptr @_ZN16OpenColorIO_v2_59CDLOpData12GetStyleNameENS0_5StyleE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !24
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.g, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.r, ptr %i.a, align 8, !tbaa !26
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.t, ptr %i.n, align 8, !tbaa !11
  %i.u = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.u, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.v = phi ptr [ %i.t, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.w = load i8, ptr %i.p, align 1, !tbaa !17
  store i8 %i.w, ptr %i.v, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.x = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !17
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !248
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !248
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !249
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #27, !inline_history !249
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111GammaWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11GammaOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11GammaOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11GammaOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11GammaOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111GammaWriter10getTagNameEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %i.a, @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E
  br i1 %i.b, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.d = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !20 ; 2 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i32 %i.c, %i.d
  br i1 %i.f, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ugt i32 %i.h, %i.i
  br i1 %i.k, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit

_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit:  ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23
  %i.o = icmp ult i32 %i.m, %i.n
  %cond.fr = freeze i1 %i.o
  br i1 %cond.fr, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread

_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5: ; preds = %bb.b, %bb.d, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit
  br label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread

_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread: ; preds = %bb.c, %bb.a, %bb.e, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5
  %i.p = phi ptr [ @_ZN16OpenColorIO_v2_5L9TAG_GAMMAE, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5 ], [ @_ZN16OpenColorIO_v2_5L12TAG_EXPONENTE, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit ], [ @_ZN16OpenColorIO_v2_5L12TAG_EXPONENTE, %bb.e ], [ @_ZN16OpenColorIO_v2_5L12TAG_EXPONENTE, %bb.a ], [ @_ZN16OpenColorIO_v2_5L12TAG_EXPONENTE, %bb.c ]
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111GammaWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !172
  %i.f = tail call noundef ptr @_ZN16OpenColorIO_v2_511GammaOpData20ConvertStyleToStringENS0_5StyleE(i32 noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !24
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !26
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !11
  %i.l = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.l, ptr %i.g, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !17
  store i8 %i.n, ptr %i.m, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %2, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !24
  %i.x = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.x, ptr %i.t, align 8, !tbaa !11
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.af = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !16
  store ptr %i.y, ptr %3, align 8, !tbaa !11
  store i64 0, ptr %i.ag, align 8, !tbaa !16
  store i8 0, ptr %i.y, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !11
  %i.as = load i64, ptr %i.am, align 8, !tbaa !17
end_hunk_1
begin_hunk_2_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA8_KcRA2_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.g, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.p, ptr %i.a, align 8, !tbaa !26
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.r, ptr %i.n, align 8, !tbaa !11
  %i.s = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.s, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.t = phi ptr [ %i.r, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.u = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #27
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !259
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !259
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !260
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !260
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_22ExposureContrastOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_22ExposureContrastOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_22ExposureContrastOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_22ExposureContrastOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @.str.18
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !458
  %i.f = tail call noundef ptr @_ZN16OpenColorIO_v2_522ExposureContrastOpData20ConvertStyleToStringENS0_5StyleE(i32 noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !24
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !26
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !11
  %i.l = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.l, ptr %i.g, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !17
  store i8 %i.n, ptr %i.m, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %2, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !24
  %i.x = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.x, ptr %i.t, align 8, !tbaa !11
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.af = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !16
  store ptr %i.y, ptr %3, align 8, !tbaa !11
  store i64 0, ptr %i.ag, align 8, !tbaa !16
  store i8 0, ptr %i.y, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !11
  %i.as = load i64, ptr %i.am, align 8, !tbaa !17
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !17
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre15 = load i64, ptr %.phi.trans.insert14, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.at = phi i64 [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ap, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %i.at, ptr %i.av, align 8, !tbaa !16
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !11
  store i64 0, ptr %i.au, align 8, !tbaa !16
  store i8 0, ptr %i.am, align 8, !tbaa !17
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %i.ax, ptr %i.s, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.j:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.l

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.j
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre17 = load ptr, ptr %.phi.trans.insert16, align 8, !tbaa !11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.az = icmp eq ptr %.pre17, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre17, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA9_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_:bb.a
  %i.u = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcSA_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !24
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.g, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.p, ptr %i.a, align 8, !tbaa !26
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.r, ptr %i.n, align 8, !tbaa !11
  %i.s = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.s, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.t = phi ptr [ %i.r, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.u = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !268
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !268
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !269
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !269
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_19FixedFunctionOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_19FixedFunctionOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @.str.19
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 23 uses
  %5 = alloca %"struct.std::pair", align 8        ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !151
  %i.f = tail call noundef ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpData20ConvertStyleToStringENS0_5StyleEb(i32 noundef %i.e, i1 noundef zeroext false) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !24
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !26
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !11
  %i.l = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.l, ptr %i.g, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !17
  store i8 %i.n, ptr %i.m, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %2, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !24
  %i.x = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.x, ptr %i.t, align 8, !tbaa !11
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.af = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !16
  store ptr %i.y, ptr %3, align 8, !tbaa !11
  store i64 0, ptr %i.ag, align 8, !tbaa !16
  store i8 0, ptr %i.y, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !11
  %i.as = load i64, ptr %i.am, align 8, !tbaa !17
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !17
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre82 = load i64, ptr %.phi.trans.insert81, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.at = phi i64 [ %.pre82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ap, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %i.at, ptr %i.av, align 8, !tbaa !16
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !11
  store i64 0, ptr %i.au, align 8, !tbaa !16
  store i8 0, ptr %i.am, align 8, !tbaa !17
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %i.ax, ptr %i.s, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.j:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.y

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.j
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.az = icmp eq ptr %.pre84, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre84, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.fl = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fl, ptr %4, align 8, !tbaa !43
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fn = getelementptr i8, ptr %i.fl, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %4, i64 %i.fo
  store ptr %i.fm, ptr %i.fp, align 8, !tbaa !43
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.fq, ptr %i.cf, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fr, align 8, !tbaa !43
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !11 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #29
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fr, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fy) #27
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fz, ptr %4, align 8, !tbaa !43
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gb = getelementptr i8, ptr %i.fz, i64 -24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds i8, ptr %4, i64 %i.gc
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !43
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ge, align 8, !tbaa !456
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gf) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #27
  %i.gh = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.dd
  br i1 %i.gi, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ak, %bb.ac
  %.sink = phi ptr [ %i.dr, %bb.ac ], [ %i.gh, %bb.ak ]
  %.pn22.pn.ph = phi { ptr, i32 } [ %i.dq, %bb.ac ], [ %i.gg, %bb.ak ]
  %i.gj = load i64, ptr %i.dd, align 8, !tbaa !17
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gk) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ak, %bb.ac
  %.pn22.pn = phi { ptr, i32 } [ %i.dq, %bb.ac ], [ %i.gg, %bb.ak ], [ %.pn22.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.thread138

.thread138:                                       ; preds = %.body, %.loopexit.split-lp, %.loopexit
  %.pn25 = phi { ptr, i32 } [ %.pn22.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.am

bb.al:                                            ; preds = %bb.p
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %.thread138, %bb.al
  %.pn25.pn141 = phi { ptr, i32 } [ %.pn25, %.thread138 ], [ %i.gl, %bb.al ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bo) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.an:                                            ; preds = %bb.o
  %.not.i.i.i66 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIdSaIdEED2Ev.exit67, label %bb.ao

bb.ao:                                            ; preds = %.thread, %bb.an
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bo) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit67

_ZNSt6vectorIdSaIdEED2Ev.exit67:                  ; preds = %bb.an, %bb.ao
  %i.gm = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.g
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit67
  %i.go = load i64, ptr %i.g, align 8, !tbaa !17
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.aa, %bb.al, %bb.am, %bb.z
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.dc, %bb.aa ], [ %i.gl, %bb.al ], [ %.pn25.pn141, %bb.am ]
  %i.gq = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.g
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.gs = load i64, ptr %i.g, align 8, !tbaa !17
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter12writeContentEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpData20ConvertStyleToStringENS0_5StyleEb(i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !280
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !280
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !281
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !281
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @.str.21
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !529
  %i.f = tail call noundef i32 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData12getDirectionEv(ptr noundef nonnull align 8 dereferenceable(192) %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = tail call noundef ptr @_ZN16OpenColorIO_v2_533ConvertGradingStyleAndDirToStringENS_12GradingStyleENS_18TransformDirectionE(i32 noundef %i.e, i32 noundef %i.f)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8, !tbaa !11
  %i.t = load i64, ptr %i.n, align 8, !tbaa !17
  store i64 %i.t, ptr %i.l, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !16
  store ptr %i.n, ptr %2, align 8, !tbaa !11
  store i64 0, ptr %i.v, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !11
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !17
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre7 = load i64, ptr %.phi.trans.insert6, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ai = phi i64 [ %.pre7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ae, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !11
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ab, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.am, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.f

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.e
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ao = icmp eq ptr %.pre9, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre9, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.f:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter12writeContentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"struct.OpenColorIO_v2_5::GradingPrimary", align 8 ; 18 uses
  %2 = alloca %"class.std::vector", align 8       ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::GradingPrimary", align 8 ; 17 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::GradingPrimary", align 8 ; 17 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::vector", align 8      ; 11 uses
  %13 = alloca %"struct.std::pair", align 8       ; 21 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !529
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !535  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter12addAttributeERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEPKcd:bb.a

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.q ], [ %i.db, %bb.p ] ; 2 uses
  %i.dd = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.i
  br i1 %i.de, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.r, %bb.c
  %.sink = phi ptr [ %i.w, %bb.c ], [ %i.dd, %bb.r ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn, %bb.r ]
  %i.df = load i64, ptr %i.i, align 8, !tbaa !17
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dg) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.r, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn, %bb.r ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.da, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_520GradingPrimaryOpData9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA8_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !24
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.g, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.p, ptr %i.a, align 8, !tbaa !26
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.r, ptr %i.n, align 8, !tbaa !11
  %i.s = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.s, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.t = phi ptr [ %i.r, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.u = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampBlackEv() local_unnamed_addr #4

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampWhiteEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !289
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !289
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !290
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !290
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @.str.22
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::pair", align 8        ; 21 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !578
  %i.f = tail call noundef i32 @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData12getDirectionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = tail call noundef ptr @_ZN16OpenColorIO_v2_533ConvertGradingStyleAndDirToStringENS_12GradingStyleENS_18TransformDirectionE(i32 noundef %i.e, i32 noundef %i.f)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8, !tbaa !11
  %i.t = load i64, ptr %i.n, align 8, !tbaa !17
  store i64 %i.t, ptr %i.l, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !16
  store ptr %i.n, ptr %2, align 8, !tbaa !11
  store i64 0, ptr %i.v, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !11
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !17
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre23 = load i64, ptr %.phi.trans.insert22, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ai = phi i64 [ %.pre23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ae, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !11
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ab, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.am, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.k

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.e
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ao = icmp eq ptr %.pre25, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre25, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !285
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !583, !range !95, !noundef !96
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA15_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(15) @_ZN16OpenColorIO_v2_5L22ATTR_BYPASS_LIN_TO_LOGE, ptr noundef nonnull align 1 dereferenceable(5) @.str.52)
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !109 ; 9 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i9 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i9, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !24
  %i.bd = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10: ; preds = %bb.g
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !11
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !17
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !17
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre27 = load i64, ptr %.phi.trans.insert26, align 8, !tbaa !16
end_hunk_5
begin_hunk_6_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA10_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_:bb.a
bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.p, ptr %i.a, align 8, !tbaa !26
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.r, ptr %i.n, align 8, !tbaa !11
  %i.s = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.s, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.t = phi ptr [ %i.r, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.u = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !77
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !77
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !298
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !298
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !299
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !299
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @.str.23
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::pair", align 8        ; 21 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !294  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !636
  %i.f = tail call noundef i32 @_ZNK16OpenColorIO_v2_521GradingHueCurveOpData12getDirectionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = tail call noundef ptr @_ZN16OpenColorIO_v2_533ConvertGradingStyleAndDirToStringENS_12GradingStyleENS_18TransformDirectionE(i32 noundef %i.e, i32 noundef %i.f)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8, !tbaa !11
  %i.t = load i64, ptr %i.n, align 8, !tbaa !17
  store i64 %i.t, ptr %i.l, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !16
  store ptr %i.n, ptr %2, align 8, !tbaa !11
  store i64 0, ptr %i.v, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !11
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !17
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre23 = load i64, ptr %.phi.trans.insert22, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ai = phi i64 [ %.pre23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ae, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !11
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ab, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.am, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.k

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.e
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ao = icmp eq ptr %.pre25, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre25, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !294
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !642
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA13_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(13) @_ZN16OpenColorIO_v2_5L15ATTR_RGB_TO_HSYE, ptr noundef nonnull align 1 dereferenceable(5) @.str.54)
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !109 ; 9 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i9 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i9, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !24
  %i.bd = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10: ; preds = %bb.g
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !11
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !17
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !17
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre27 = load i64, ptr %.phi.trans.insert26, align 8, !tbaa !16
end_hunk_6
begin_hunk_7_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA13_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_:bb.a
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.p, ptr %i.a, align 8, !tbaa !26
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.r, ptr %i.n, align 8, !tbaa !11
  %i.s = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.s, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.t = phi ptr [ %i.r, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.u = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_521GradingHueCurveOpData9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !77
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !77
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !307
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !307
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !308
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !308
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_17GradingToneOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_17GradingToneOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_17GradingToneOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_17GradingToneOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @.str.24
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !303  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !673
  %i.f = tail call noundef i32 @_ZNK16OpenColorIO_v2_517GradingToneOpData12getDirectionEv(ptr noundef nonnull align 8 dereferenceable(196) %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = tail call noundef ptr @_ZN16OpenColorIO_v2_533ConvertGradingStyleAndDirToStringENS_12GradingStyleENS_18TransformDirectionE(i32 noundef %i.e, i32 noundef %i.f)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8, !tbaa !11
  %i.t = load i64, ptr %i.n, align 8, !tbaa !17
  store i64 %i.t, ptr %i.l, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !16
  store ptr %i.n, ptr %2, align 8, !tbaa !11
  store i64 0, ptr %i.v, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !11
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !17
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre7 = load i64, ptr %.phi.trans.insert6, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ai = phi i64 [ %.pre7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ae, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !11
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ab, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.am, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.f

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.e
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ao = icmp eq ptr %.pre9, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre9, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.f:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter12writeContentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::vector", align 8       ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %3 = alloca %"struct.std::pair", align 8        ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::GradingTone", align 16 ; 34 uses
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %8 = alloca %"struct.std::pair", align 8        ; 21 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !303
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !678  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(1208) %i.e), !inline_history !679 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !303
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.l = load i32, ptr %i.k, align 8, !tbaa !673  ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter11writeRGBMSWEPKcRKNS_13GradingRGBMSWES6_bb:bb.a
  %i.nx = icmp eq ptr %i.nw, %i.ko
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.be
  %i.ny = load i64, ptr %i.ko, align 8, !tbaa !17
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %bb.bd
  %.pn44 = phi { ptr, i32 } [ %i.nu, %bb.bd ], [ %i.nv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %i.nv, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %.body160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %.body114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %.body70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %.body, %bb.av
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %.pn41.pn, %.body160 ], [ %i.mk, %bb.av ], [ %i.nk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn36.pn, %.body114 ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.pn31.pn, %.body70 ], [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn.pn, %.body ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.au
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.bf ], [ %i.mj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn44.pn.pn

bb.bh:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_517GradingToneOpData9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(196)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(5) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !24
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.g, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.p, ptr %i.a, align 8, !tbaa !26
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.r, ptr %i.n, align 8, !tbaa !11
  %i.s = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.s, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.t = phi ptr [ %i.r, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.u = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_5neERKNS_13GradingRGBMSWES2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !316
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !316
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !317
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !317
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19LogWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9LogOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9LogOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9LogOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_9LogOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19LogWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @_ZN16OpenColorIO_v2_5L7TAG_LOGE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19LogWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = load i32, ptr %i.c, align 8, !tbaa !724  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !16
  store i8 0, ptr %i.e, align 8, !tbaa !17
  %i.g = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData6isLog2Ev(ptr noundef nonnull align 8 dereferenceable(252) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.i = select i1 %i.h, ptr @_ZN16OpenColorIO_v2_57LogUtilL8LOG2_STRE, ptr @_ZN16OpenColorIO_v2_57LogUtilL13ANTI_LOG2_STRE
  %i.j = load i64, ptr %i.f, align 8, !tbaa !16
  %i.k = select i1 %i.h, i64 4, i64 8
  br label %.invoke

bb.d:                                             ; preds = %.invoke, %bb.h, %bb.e, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !312
  %i.n = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData7isLog10Ev(ptr noundef nonnull align 8 dereferenceable(252) %i.m)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.p = select i1 %i.o, ptr @_ZN16OpenColorIO_v2_57LogUtilL9LOG10_STRE, ptr @_ZN16OpenColorIO_v2_57LogUtilL14ANTI_LOG10_STRE
  %i.q = load i64, ptr %i.f, align 8, !tbaa !16
  %i.r = select i1 %i.o, i64 5, i64 9
  br label %.invoke

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !312
  %i.t = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8isCameraEv(ptr noundef nonnull align 8 dereferenceable(252) %i.s)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.u = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %_ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LIN_TO_LOG_STRE._ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LOG_TO_LIN_STRE = select i1 %i.u, ptr @_ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LIN_TO_LOG_STRE, ptr @_ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LOG_TO_LIN_STRE
  br label %.invoke

bb.k:                                             ; preds = %bb.i
  %_ZN16OpenColorIO_v2_57LogUtilL14LIN_TO_LOG_STRE._ZN16OpenColorIO_v2_57LogUtilL14LOG_TO_LIN_STRE = select i1 %i.u, ptr @_ZN16OpenColorIO_v2_57LogUtilL14LIN_TO_LOG_STRE, ptr @_ZN16OpenColorIO_v2_57LogUtilL14LOG_TO_LIN_STRE
  br label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.g, %bb.j, %bb.k
  %i.w = phi i64 [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %i.q, %bb.g ], [ %i.j, %bb.c ]
  %i.x = phi ptr [ %_ZN16OpenColorIO_v2_57LogUtilL14LIN_TO_LOG_STRE._ZN16OpenColorIO_v2_57LogUtilL14LOG_TO_LIN_STRE, %bb.k ], [ %_ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LIN_TO_LOG_STRE._ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LOG_TO_LIN_STRE, %bb.j ], [ %i.p, %bb.g ], [ %i.i, %bb.c ]
  %i.y = phi i64 [ 8, %bb.k ], [ 14, %bb.j ], [ %i.r, %bb.g ], [ %i.k, %bb.c ]
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull %i.x, i64 noundef %i.y)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(6) @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !24
  %i.af = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !11
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !17
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.n
  %i.an = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aj, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !16
  store ptr %i.ag, ptr %3, align 8, !tbaa !11
  store i64 0, ptr %i.ao, align 8, !tbaa !16
  store i8 0, ptr %i.ag, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !24
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !11
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !17
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !17
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre19 = load i64, ptr %.phi.trans.insert18, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.bb = phi i64 [ %.pre19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ax, %bb.o ]
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !16
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !11
  store i64 0, ptr %i.bc, align 8, !tbaa !16
  store i8 0, ptr %i.au, align 8, !tbaa !17
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !109
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store ptr %i.bf, ptr %i.aa, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.p:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.r

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.p
end_hunk_8
begin_hunk_9_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_111AddLogParamERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEPKcd:bb.a
  %i.bp = load i64, ptr %i.am, align 8, !tbaa !17
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !17
  %.pre18 = load i64, ptr %i.au, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.bq = phi i64 [ %.pre18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.bm, %bb.m ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !16
  store ptr %i.am, ptr %i.al, align 8, !tbaa !11
  store i64 0, ptr %i.au, align 8, !tbaa !16
  store i8 0, ptr %i.am, align 8, !tbaa !17
  %i.bs = load ptr, ptr %i.av, align 8, !tbaa !109
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store ptr %i.bt, ptr %i.av, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.n:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.q

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.n
  %.pre19 = load ptr, ptr %i.al, align 8, !tbaa !11 ; 2 uses
  %i.bu = icmp eq ptr %.pre19, %i.am
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.bv = load i64, ptr %i.am, align 8, !tbaa !17
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %.pre19, i64 noundef %i.bw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bx = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.z
  br i1 %i.by, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bz = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cb = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.i
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !17
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cf = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cf, ptr %3, align 8, !tbaa !43
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %3, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !43
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ck, ptr %i.g, align 8, !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cl, align 8, !tbaa !43
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !11 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !17
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cl, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cs) #27
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ct, ptr %3, align 8, !tbaa !43
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cv = getelementptr i8, ptr %i.ct, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cw
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cy, align 8, !tbaa !456
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cz) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.o:                                             ; preds = %bb.a
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.q ], [ %i.db, %bb.p ] ; 2 uses
  %i.dd = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.i
  br i1 %i.de, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.r, %bb.c
  %.sink = phi ptr [ %i.w, %bb.c ], [ %i.dd, %bb.r ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn, %bb.r ]
  %i.df = load i64, ptr %i.i, align 8, !tbaa !17
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dg) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.r, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn, %bb.r ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.da, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !326
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !326
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !327
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !327
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut1DOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut1DOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut1DOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut1DOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriter10getTagNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !179
  %i.e = icmp eq i32 %i.d, 0
  %_ZN16OpenColorIO_v2_5L9TAG_LUT1DE._ZN16OpenColorIO_v2_5L12TAG_INVLUT1DE = select i1 %i.e, ptr @_ZN16OpenColorIO_v2_5L9TAG_LUT1DE, ptr @.str.25
  ret ptr %_ZN16OpenColorIO_v2_5L9TAG_LUT1DE._ZN16OpenColorIO_v2_5L12TAG_INVLUT1DE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::pair", align 8        ; 21 uses
  %3 = alloca %"struct.std::pair", align 8        ; 21 uses
  %4 = alloca %"struct.std::pair", align 8        ; 21 uses
  %5 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !321
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.f = tail call noundef ptr @_ZN16OpenColorIO_v2_522GetInterpolation1DNameENS_13InterpolationE(i32 noundef %i.e) ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %.not11 = icmp eq i8 %i.g, 0
  br i1 %.not11, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcRPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 1 dereferenceable(14) @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.m, ptr %i.i, align 8, !tbaa !11
  %i.t = load i64, ptr %i.n, align 8, !tbaa !17
  store i64 %i.t, ptr %i.l, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %i.u = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !16
  store ptr %i.n, ptr %2, align 8, !tbaa !11
  store i64 0, ptr %i.v, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !11
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !17
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre54 = load i64, ptr %.phi.trans.insert53, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ai = phi i64 [ %.pre54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ae, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !11
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ab, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.am, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.h

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.g
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ao = icmp eq ptr %.pre56, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre56, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ae

bb.i:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %bb.b, %bb.a
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !321 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !195 ; 2 uses
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(11) @_ZN16OpenColorIO_v2_5L16ATTR_HALF_DOMAINE, ptr noundef nonnull align 1 dereferenceable(5) @.str.52)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109 ; 9 uses
end_hunk_9
begin_hunk_10_@_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEfEEvRNS_12XmlFormatterET_SC_jNS_8BitDepthEjT0_:bb.a
  %i.ca = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ae
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.q
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.y

bb.r:                                             ; preds = %.invoke85, %.invoke84
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.invoke84:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %i.cf = fpext float %i.bs to double
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %i.cf)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIfEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit unwind label %bb.r ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIfEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit: ; preds = %.invoke85, %.invoke84
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  store ptr %i.ak, ptr %9, align 8, !tbaa !24, !alias.scope !760
  store i64 0, ptr %i.al, align 8, !tbaa !16, !alias.scope !760
  store i8 0, ptr %i.ak, align 8, !tbaa !17, !alias.scope !760
  %i.ch = load ptr, ptr %i.am, align 8, !tbaa !104, !noalias !760 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr %i.an, align 8, !noalias !760 ; 2 uses
  %i.cj = icmp ugt ptr %i.ch, %i.ci
  %.08.i.i.i = select i1 %i.cj, ptr %i.ch, ptr %i.ci ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIfEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit
  %i.ck = load ptr, ptr %i.ao, align 8, !tbaa !108, !noalias !760 ; 2 uses
  %i.cl = ptrtoint ptr %.08.i.i.i to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.ck, i64 noundef %i.cn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %9, align 8, !tbaa !11, !alias.scope !760 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ak
  br i1 %i.cr, label %.body, label %.body.sink.split

bb.u:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIfEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.u, %bb.s
  %i.cs = load i64, ptr %i.al, align 8, !tbaa !16 ; 3 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !43
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %7, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !612
  %i.cz = icmp ugt i64 %i.cs, %i.cy
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store i64 %i.cs, ptr %i.cx, align 8, !tbaa !612
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.da = load ptr, ptr %9, align 8, !tbaa !11
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.da, i64 noundef %i.cs)
          to label %.invoke86 unwind label %bb.x  ; 0 uses

.invoke86:                                        ; preds = %bb.w
  %i.dc = ptrtoint ptr %.sroa.044.065 to i64
  %i.dd = sub i64 %i.dc, %i.ad
  %i.de = ashr exact i64 %i.dd, 2
  %i.df = srem i64 %i.de, %i.ap
  %i.dg = icmp eq i64 %i.df, %i.ar
  %i.dh = select i1 %i.dg, ptr @.str.60, ptr @.str.39
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.dh, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %.invoke86, %bb.w
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ak
  br i1 %i.dl, label %.body, label %.body.sink.split

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.invoke86
  %i.dm = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ak
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.do = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.044.065, i64 %i.as ; 2 uses
  %.not = icmp eq ptr %i.dq, %2
  br i1 %.not, label %._crit_edge, label %._crit_edge.i.i, !llvm.loop !761

.body.sink.split:                                 ; preds = %bb.x, %bb.t
  %.sink87 = phi ptr [ %i.cq, %bb.t ], [ %i.dk, %bb.x ]
  %.pn20.ph = phi { ptr, i32 } [ %i.cp, %bb.t ], [ %i.dj, %bb.x ]
  %i.dr = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.sink87, i64 noundef %i.ds) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.t
  %.pn20 = phi { ptr, i32 } [ %i.cp, %bb.t ], [ %i.dj, %bb.x ], [ %.pn20.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.r, %.body, %bb.l, %bb.j, %bb.h
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.t, %bb.h ], [ %i.v, %bb.j ], [ %.pn20, %.body ], [ %i.ce, %bb.r ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn20.pn.pn
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_512XmlFormatter9getStreamEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef ptr @_ZN16OpenColorIO_v2_511GetTypeNameENS_6OpData4TypeE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !336
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !336
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !337
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !337
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut3DOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut3DOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut3DOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11Lut3DOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriter10getTagNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !200
  %i.e = icmp eq i32 %i.d, 0
  %_ZN16OpenColorIO_v2_5L9TAG_LUT3DE._ZN16OpenColorIO_v2_5L12TAG_INVLUT3DE = select i1 %i.e, ptr @_ZN16OpenColorIO_v2_5L9TAG_LUT3DE, ptr @.str.26
  ret ptr %_ZN16OpenColorIO_v2_5L9TAG_LUT3DE._ZN16OpenColorIO_v2_5L12TAG_INVLUT3DE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::pair", align 8        ; 21 uses
  tail call void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !331
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.f = tail call noundef ptr @_ZN16OpenColorIO_v2_522GetInterpolation3DNameENS_13InterpolationE(i32 noundef %i.e) ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %.not5 = icmp eq i8 %i.g, 0
  br i1 %.not5, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcRPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 1 dereferenceable(14) @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.m, ptr %i.i, align 8, !tbaa !11
  %i.t = load i64, ptr %i.n, align 8, !tbaa !17
  store i64 %i.t, ptr %i.l, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %i.u = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !16
  store ptr %i.n, ptr %2, align 8, !tbaa !11
  store i64 0, ptr %i.v, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !11
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !17
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre7 = load i64, ptr %.phi.trans.insert6, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ai = phi i64 [ %.pre7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ae, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !11
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ab, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.am, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.h

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.g
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ao = icmp eq ptr %.pre9, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre9, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriter12writeContentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %3 = alloca %"struct.std::pair", align 8        ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_10
begin_hunk_11_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriter12writeContentEv:bb.a
_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ec = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ed = load ptr, ptr %i.bh, align 8, !tbaa !112
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #29
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.eh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.eh, ptr %1, align 8, !tbaa !43
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ej = getelementptr i8, ptr %i.eh, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr %1, i64 %i.ek
  store ptr %i.ei, ptr %i.el, align 8, !tbaa !43
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.em, ptr %i.h, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.en, align 8, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !11 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !17
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.en, align 8, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eu) #27
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ev, ptr %1, align 8, !tbaa !43
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ex = getelementptr i8, ptr %i.ev, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %1, i64 %i.ey
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !43
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.fa, align 8, !tbaa !456
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fb) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.s:                                             ; preds = %bb.e, %_ZNSolsEm.exit30, %bb.d, %_ZNSolsEm.exit28, %bb.c, %_ZNSolsEm.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #27
  %i.fe = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ab
  br i1 %i.ff, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.g
  %.sink = phi ptr [ %i.ap, %bb.g ], [ %i.fe, %bb.t ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.fd, %bb.t ]
  %i.fg = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fh) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.fd, %bb.t ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.cn
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.u
  %i.fl = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.x

bb.v:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i41
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.dh
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.w
  %i.fr = load i64, ptr %i.dh, align 8, !tbaa !17
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %.body
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.fn, %bb.v ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn.pn, %bb.x ], [ %i.fc, %bb.s ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn23.pn.pn.pn
}

declare noundef ptr @_ZN16OpenColorIO_v2_522GetInterpolation3DNameENS_13InterpolationE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !352
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !352
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !353
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #27, !inline_history !353
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @_ZN16OpenColorIO_v2_5L10TAG_MATRIXE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.89", align 16 ; 9 uses
  %2 = alloca %"class.std::shared_ptr.93", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca [20 x double], align 16           ; 23 uses
  %i.b = alloca [16 x double], align 16           ; 13 uses
  %i.c = alloca [12 x double], align 16           ; 14 uses
  %i.d = alloca [9 x double], align 16            ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.e, @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E
  br i1 %i.f, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.h = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !20 ; 2 uses
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %i.g, %i.h
  br i1 %i.j, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22   ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i32 %i.l, %i.m
  br i1 %i.o, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23
  %i.s = icmp ult i32 %i.q, %i.r
  br label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit

_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit:  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ %i.s, %bb.f ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !341  ; 3 uses
  store ptr %i.u, ptr %1, align 16, !tbaa !341
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 16, !tbaa !341
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit: ; preds = %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, %bb.h, %bb.i
  %i.ad = phi ptr [ %i.u, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit ], [ %i.u, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !770
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %bb.y

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData12getAsForwardEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.93") align 8 %2, ptr noundef nonnull align 8 dereferenceable(260) %i.ad)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x ptr>, ptr %2, align 16, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !37  ; 8 uses
  store <2 x ptr> %i.ai, ptr %1, align 16, !tbaa !63
  %.not.i.i.i.i143 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i143, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !42
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27, !inline_history !771
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27, !inline_history !771
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

bb.n:                                             ; preds = %bb.l
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.q, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, !prof !46

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !37  ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.az, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !42
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !354
  %i.bh = load ptr, ptr %.pr, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
end_hunk_11
begin_hunk_12_@_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIPKddEEvRNS_12XmlFormatterET_S6_jNS_8BitDepthEjT0_:bb.a
  %i.bb = phi i64 [ 3, %bb.b ], [ 3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 4, %bb.c ]
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIdEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit unwind label %bb.f ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %i.aw)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIdEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit unwind label %bb.f ; 0 uses

bb.e:                                             ; preds = %.noexc32, %._crit_edge.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.j
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.e
  %i.bh = load i64, ptr %i.j, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.m

bb.f:                                             ; preds = %.invoke, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIdEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit: ; preds = %.invoke, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  store ptr %i.p, ptr %6, align 8, !tbaa !24, !alias.scope !785
  store i64 0, ptr %i.q, align 8, !tbaa !16, !alias.scope !785
  store i8 0, ptr %i.p, align 8, !tbaa !17, !alias.scope !785
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !104, !noalias !785 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bk, null
  %i.bl = load ptr, ptr %i.s, align 8, !noalias !785 ; 2 uses
  %i.bm = icmp ugt ptr %i.bk, %i.bl
  %.08.i.i.i = select i1 %i.bm, ptr %i.bk, ptr %i.bl ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIdEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !108, !noalias !785 ; 2 uses
  %i.bo = ptrtoint ptr %.08.i.i.i to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bn, i64 noundef %i.bq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %6, align 8, !tbaa !11, !alias.scope !785 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.p
  br i1 %i.bu, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110WriteValueIdEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEvE4typeES3_RSo.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !43
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %4, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !612
  %i.cc = icmp ugt i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store i64 %i.bv, ptr %i.ca, align 8, !tbaa !612
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cd = load ptr, ptr %6, align 8, !tbaa !11
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.cd, i64 noundef %i.bv)
          to label %.invoke78 unwind label %bb.l  ; 0 uses

.invoke78:                                        ; preds = %bb.k
  %i.cf = ptrtoint ptr %.063 to i64
  %i.cg = sub i64 %i.cf, %i.u
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = srem i64 %i.ch, %i.v
  %i.cj = icmp eq i64 %i.ci, %i.x
  %i.ck = select i1 %i.cj, ptr @.str.60, ptr @.str.39
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.ck, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %.invoke78, %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.p
  br i1 %i.co, label %.body, label %.body.sink.split

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.invoke78
  %i.cp = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.p
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cr = load i64, ptr %i.p, align 8, !tbaa !17
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ct = getelementptr inbounds nuw i8, ptr %.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ct, %2
  br i1 %.not, label %._crit_edge, label %._crit_edge.i.i, !llvm.loop !786

.body.sink.split:                                 ; preds = %bb.l, %bb.h
  %.sink = phi ptr [ %i.bt, %bb.h ], [ %i.cn, %bb.l ]
  %.pn29.ph = phi { ptr, i32 } [ %i.bs, %bb.h ], [ %i.cm, %bb.l ]
  %i.cu = load i64, ptr %i.p, align 8, !tbaa !17
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cv) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.h
  %.pn29 = phi { ptr, i32 } [ %i.bs, %bb.h ], [ %i.cm, %bb.l ], [ %.pn29.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.f, %.body
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body ], [ %i.bj, %bb.f ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn29.pn
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData7Offsets9isNotNullEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !366
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !367
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27, !inline_history !367
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111RangeWriter5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !63
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11RangeOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11RangeOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11RangeOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_11RangeOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111RangeWriter10getTagNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @_ZN16OpenColorIO_v2_5L9TAG_RANGEE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111RangeWriter12writeContentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.96", align 16 ; 9 uses
  %2 = alloca %"class.std::shared_ptr.99", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !358  ; 3 uses
  store ptr %i.b, ptr %1, align 16, !tbaa !358
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 16, !tbaa !358
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.m = load i32, ptr %i.l, align 8, !tbaa !787
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData12getAsForwardEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.99") align 8 %2, ptr noundef nonnull align 8 dereferenceable(228) %i.k)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x ptr>, ptr %2, align 16, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !37   ; 8 uses
  store <2 x ptr> %i.p, ptr %1, align 16, !tbaa !63
  %.not.i.i.i.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i10, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.r, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !42
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !788
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !788
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.ae, %bb.k ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.l, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, !prof !46

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  %.pr = load ptr, ptr %i.o, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ag, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !42
  %i.al = load ptr, ptr %.pr, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !368
  %i.ao = load ptr, ptr %.pr, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !368
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i11 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i11, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.p ], [ %i.at, %bb.q ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.r, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.aq

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !227
  %i.ay = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.ax)
          to label %bb.u unwind label %bb.y       ; 2 uses

bb.u:                                             ; preds = %bb.t
end_hunk_12
begin_hunk_13_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30, %bb.j
  store ptr %i.q, ptr %0, align 8, !tbaa !213
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !109
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.l
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(272) %i.a) #27, !inline_history !846
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !847  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_511GammaOpDataC1ERKNS0_5StyleERKSt6vectorIdSaIdEES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(260) %i.a) #27, !inline_history !849
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !847  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260)) unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_CTFTransform.cpp() #23 section ".text.startup" {
bb.a:
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !20
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !23
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.1, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, align 4, !tbaa !20
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 4), align 4, !tbaa !22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 8), align 4, !tbaa !23
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.1, align 4
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_1E, align 4, !tbaa !20
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_1E, i64 4), align 4, !tbaa !22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_1E, i64 8), align 4, !tbaa !23
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_4E, align 4, !tbaa !20
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_4E, i64 4), align 4, !tbaa !22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_4E, i64 8), align 4, !tbaa !23
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, align 4, !tbaa !20
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 4), align 4, !tbaa !22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 8), align 4, !tbaa !23
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.1, align 4
  %i.a = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.30, ptr noundef null) #27
  store ptr %i.a, ptr @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, align 8, !tbaa !7
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtils6LocaleD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, ptr nonnull @__dso_handle) #27 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN16OpenColorIO_v2_511NumberUtils6LocaleE", !9, i64 0}
!9 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !14, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !15, i64 8, !5, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!12, !15, i64 8}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !4, i64 0}
!21 = !{!"_ZTSN16OpenColorIO_v2_510CTFVersionE", !4, i64 0, !4, i64 4, !4, i64 8}
!22 = !{!21, !4, i64 4}
!23 = !{!21, !4, i64 8}
!24 = !{!13, !14, i64 0}
!25 = !{!14, !14, i64 0}
!26 = !{!15, !15, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!30 = !{!28, !29, i64 8}
!31 = distinct !{!31, !19}
!32 = !{!28, !29, i64 16}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56OpDataEESaIS4_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEE", !10, i64 0}
!36 = !{!34, !35, i64 8}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!40 = !{!41, !4, i64 8}
!41 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!42 = !{!41, !4, i64 12}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !6, i64 0}
!45 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = distinct !{!47, !19}
!48 = !{!34, !35, i64 16}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTSSt10shared_ptrIN16OpenColorIO_v2_52OpEE", !10, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !38, i64 8}
!53 = !{!"p1 _ZTSN16OpenColorIO_v2_52OpE", !10, i64 0}
!54 = !{!55, !53, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !38, i64 8}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK16OpenColorIO_v2_52Op4dataEv: argument 0"}
!58 = distinct !{!58, !"_ZNK16OpenColorIO_v2_52Op4dataEv"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZSt18const_pointer_castIKN16OpenColorIO_v2_56OpDataES1_ESt10shared_ptrIT_ERKS3_IT0_E: argument 0"}
!61 = distinct !{!61, !"_ZSt18const_pointer_castIKN16OpenColorIO_v2_56OpDataES1_ESt10shared_ptrIT_ERKS3_IT0_E"}
!62 = !{!60, !57}
!63 = !{!10, !10, i64 0}
!64 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!65 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !10, i64 0}
!68 = distinct !{null}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE6rbeginEv: argument 0"}
!71 = distinct !{!71, !"_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE6rbeginEv"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE4rendEv: argument 0"}
!74 = distinct !{!74, !"_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE4rendEv"}
!75 = distinct !{null}
!76 = distinct !{!76, !19}
!77 = distinct !{null, null}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = !{!29, !29, i64 0}
!81 = !{!82, !67, i64 8}
!82 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!83 = !{!82, !67, i64 16}
!84 = !{!85, !91, i64 32}
!85 = !{!"_ZTSN16OpenColorIO_v2_515TransformWriterE", !86, i64 0, !88, i64 16, !91, i64 32}
!86 = !{!"_ZTSN16OpenColorIO_v2_516XmlElementWriterE", !87, i64 8}
!87 = !{!"p1 _ZTSN16OpenColorIO_v2_512XmlFormatterE", !10, i64 0}
!88 = !{!"_ZTSSt10shared_ptrIKN16OpenColorIO_v2_518CTFReaderTransformEE", !89, i64 0}
!89 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !38, i64 8}
!90 = !{!"p1 _ZTSN16OpenColorIO_v2_518CTFReaderTransformE", !10, i64 0}
!91 = !{!"bool", !5, i64 0}
!92 = distinct !{null, null, null}
!93 = distinct !{ptr @_ZN16OpenColorIO_v2_515TransformWriterD2Ev, null, null, null}
!94 = !{ptr @_ZN16OpenColorIO_v2_515TransformWriterD2Ev}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!99 = distinct !{!99, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!102 = distinct !{!102, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!103 = !{!101, !98}
!104 = !{!105, !14, i64 40}
!105 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !106, i64 56}
!106 = !{!"_ZTSSt6locale", !107, i64 0}
!107 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!108 = !{!105, !14, i64 32}
!109 = !{!110, !111, i64 8}
!110 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !10, i64 0}
!112 = !{!110, !111, i64 16}
!113 = !{!89, !90, i64 0}
!114 = !{!35, !35, i64 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE: argument 0"}
!117 = distinct !{!117, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE"}
!118 = !{!119, !120, i64 0}
!119 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EE", !120, i64 0, !38, i64 8}
!120 = !{!"p1 _ZTSN16OpenColorIO_v2_56OpDataE", !10, i64 0}
!121 = !{!122, !116}
!122 = distinct !{!122, !123, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE: argument 0"}
!123 = distinct !{!123, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE"}
!124 = distinct !{null}
!125 = !{!126, !122, !116}
!126 = distinct !{!126, !127, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!127 = distinct !{!127, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E"}
!128 = !{!129, !145, i64 232}
!129 = !{!"_ZTSN16OpenColorIO_v2_522ExposureContrastOpDataE", !130, i64 0, !141, i64 168, !142, i64 176, !142, i64 192, !142, i64 208, !145, i64 224, !145, i64 232, !145, i64 240}
!130 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !131, i64 8, !133, i64 48}
!131 = !{!"_ZTSSt5mutex", !132, i64 0}
!132 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!133 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !134, i64 0, !12, i64 8, !12, i64 40, !135, i64 72, !138, i64 96}
!134 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!135 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !136, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !137, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !110, i64 0}
!138 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !139, i64 0}
!139 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !140, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !82, i64 0}
!141 = !{!"_ZTSN16OpenColorIO_v2_522ExposureContrastOpData5StyleE", !5, i64 0}
!142 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplEE", !143, i64 0}
!143 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EE", !144, i64 0, !38, i64 8}
!144 = !{!"p1 _ZTSN16OpenColorIO_v2_525DynamicPropertyDoubleImplE", !10, i64 0}
!145 = !{!"double", !5, i64 0}
!146 = !{!129, !145, i64 240}
!147 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_522ExposureContrastOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!148 = !{!149, !122, !116}
!149 = distinct !{!149, !150, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!150 = distinct !{!150, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E"}
!151 = !{!152, !153, i64 168}
!152 = !{!"_ZTSN16OpenColorIO_v2_519FixedFunctionOpDataE", !130, i64 0, !153, i64 168, !154, i64 176}
!153 = !{!"_ZTSN16OpenColorIO_v2_519FixedFunctionOpData5StyleE", !5, i64 0}
!154 = !{!"_ZTSSt6vectorIdSaIdEE", !155, i64 0}
!155 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !156, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !157, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!158 = !{!"p1 double", !10, i64 0}
!159 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!160 = !{!161, !122, !116}
!161 = distinct !{!161, !162, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!162 = distinct !{!162, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E"}
!163 = !{!145, !145, i64 0}
!164 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!167 = distinct !{!167, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E"}
!168 = !{!166, !122, !116}
!169 = !{!170, !171, i64 0}
!170 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EE", !171, i64 0, !38, i64 8}
!171 = !{!"p1 _ZTSN16OpenColorIO_v2_511GammaOpDataE", !10, i64 0}
!172 = !{!173, !174, i64 168}
!173 = !{!"_ZTSN16OpenColorIO_v2_511GammaOpDataE", !130, i64 0, !174, i64 168, !154, i64 176, !154, i64 200, !154, i64 224, !154, i64 248}
!174 = !{!"_ZTSN16OpenColorIO_v2_511GammaOpData5StyleE", !5, i64 0}
!175 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!176 = !{!177, !122, !116}
!177 = distinct !{!177, !178, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!178 = distinct !{!178, !"_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E"}
!179 = !{!180, !192, i64 232}
end_hunk_13
