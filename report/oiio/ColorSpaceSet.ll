inline.NumInlined: 490
inline.NumDeleted: 212
begin_hunk_0_@_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl6removeEPKc:bb.a
  br i1 %i.m, label %bb.e, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %3, align 8, !tbaa !59
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  %.pre24 = load ptr, ptr %3, align 8, !tbaa !59  ; 3 uses
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !59
  %bcmp.i = call i32 @bcmp(ptr %.pre24, ptr %i.o, i64 %i.k)
  %i.p = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.e, %bb.f
  %i.q = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre24, %bb.f ], [ %.pre24, %bb.e ] ; 2 uses
  %i.r = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.p, %bb.f ], [ true, %bb.e ]
  %i.s = icmp eq ptr %i.q, %i.h
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.t = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.t)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.u = load i64, ptr %i.h, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.x = ptrtoint ptr %.sroa.014.021 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = invoke ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa)
          to label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit unwind label %bb.i ; 0 uses

bb.h:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !37
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, label %bb.c, !llvm.loop !71

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ac, %bb.h ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.k
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit: ; preds = %bb.j, %bb.b, %bb.g, %bb.a
  %i.al = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_513ColorSpaceSet17removeColorSpacesERKSt10shared_ptrIKS0_E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = load ptr, ptr %1, align 8, !tbaa !68
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %.not8.i = icmp eq ptr %i.d, %i.f
  br i1 %.not8.i, label %_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl6removeERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !38
  %i.h = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #22
  tail call void @_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl6removeEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.f
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl6removeERKS1_.exit, label %.lr.ph.i

_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl6removeERKS1_.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_513ColorSpaceSet16clearColorSpacesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !16
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !36
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !36
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !29
  br label %_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl5clearEv.exit

_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_5ooERKSt10shared_ptrIKNS_13ColorSpaceSetEES5_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.3") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @_ZN16OpenColorIO_v2_513ColorSpaceSet6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !72
  %i.c = load ptr, ptr %3, align 16, !tbaa !7, !alias.scope !72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !noalias !72
  %i.e = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_513ColorSpaceSet4ImplaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNK16OpenColorIO_v2_513ColorSpaceSet18createEditableCopyEv.exit unwind label %bb.b, !noalias !72 ; 0 uses

common.resume:                                    ; preds = %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  br label %common.resume

_ZNK16OpenColorIO_v2_513ColorSpaceSet18createEditableCopyEv.exit: ; preds = %bb.a
  %4 = load ptr, ptr %3, align 16, !tbaa !7
  %i.g = load ptr, ptr %4, align 8, !tbaa !23
  %i.h = load ptr, ptr %2, align 8, !tbaa !68
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  invoke void @_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl3addERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.c

_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513ColorSpaceSet18createEditableCopyEv.exit
  %i.j = load <2 x ptr>, ptr %3, align 16, !tbaa !41
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.c:                                             ; preds = %_ZNK16OpenColorIO_v2_513ColorSpaceSet18createEditableCopyEv.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_5aaERKSt10shared_ptrIKNS_13ColorSpaceSetEES5_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.3") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %4 = alloca %"class.std::shared_ptr.0", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN16OpenColorIO_v2_513ColorSpaceSet6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3)
  %i.a = load ptr, ptr %2, align 8, !tbaa !68
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %i.m = load <2 x ptr>, ptr %3, align 16, !tbaa !41
  store <2 x ptr> %i.m, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.n = phi ptr [ %i.e, %.lr.ph ], [ %i.be, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.o = phi ptr [ %i.d, %.lr.ph ], [ %i.bd, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %sext = shl i64 %i.r, 28
  %i.s = ashr i64 %sext, 32
  %.not.i.i12 = icmp slt i64 %indvars.iv, %i.s
  call void @llvm.assume(i1 %.not.i.i12)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38, !noalias !81 ; 3 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !64, !alias.scope !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13, !noalias !81 ; 3 uses
  store ptr %i.w, ptr %i.l, align 8, !tbaa !13, !alias.scope !81
  %.not.i.i.i3.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i3.i.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !81
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !81
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3, !noalias !81
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4, !noalias !81 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !64
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit

_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit: ; preds = %bb.e, %bb.d, %bb.b
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.u, %bb.d ], [ %i.u, %bb.b ]
  %i.ad = load ptr, ptr %1, align 8, !tbaa !68
  %i.ae = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #22
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.ag = invoke noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl8getIndexEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef %i.ae)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit
  %.not = icmp eq i32 %i.ag, -1
  br i1 %.not, label %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %3, align 16, !tbaa !7
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  invoke void @_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl3addERKSt10shared_ptrIKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.aj

_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit: ; preds = %bb.g, %bb.f
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !13  ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.al, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !16
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !70
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i14 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.m:                                             ; preds = %bb.k
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i16 = phi i32 [ %i.ao, %bb.l ], [ %i.ay, %bb.m ]
  %i.az = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.az, label %bb.n, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !68
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %sext20 = shl i64 %i.bh, 28
  %i.bi = ashr i64 %sext20, 32
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.b, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !82
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
