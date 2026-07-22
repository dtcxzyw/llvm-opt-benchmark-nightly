inline.NumInlined: 490
inline.NumDeleted: 212
begin_hunk_0_@_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl6removeEPKc:bb.a
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
define void @_ZN16OpenColorIO_v2_513ColorSpaceSet17removeColorSpacesERKSt10shared_ptrIKS0_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
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
define void @_ZN16OpenColorIO_v2_513ColorSpaceSet16clearColorSpacesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
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
define void @_ZN16OpenColorIO_v2_5ooERKSt10shared_ptrIKNS_13ColorSpaceSetEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @_ZN16OpenColorIO_v2_513ColorSpaceSet6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !72
  %i.c = load ptr, ptr %3, align 16, !tbaa !7, !alias.scope !72 ; 2 uses
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
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !23
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
define void @_ZN16OpenColorIO_v2_5aaERKSt10shared_ptrIKNS_13ColorSpaceSetEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %5 = phi ptr [ %i.e, %.lr.ph ], [ %i.bd, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.n = phi ptr [ %i.d, %.lr.ph ], [ %i.bc, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %5 to i64
  %i.q = sub i64 %i.o, %i.p
  %sext = shl i64 %i.q, 28
  %i.r = ashr i64 %sext, 32
  %.not.i.i12 = icmp slt i64 %indvars.iv, %i.r
  call void @llvm.assume(i1 %.not.i.i12)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38, !noalias !81 ; 3 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !64, !alias.scope !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13, !noalias !81 ; 3 uses
  store ptr %i.v, ptr %i.l, align 8, !tbaa !13, !alias.scope !81
  %.not.i.i.i3.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i3.i.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !81
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !81
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3, !noalias !81
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !81 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !64
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit

_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit: ; preds = %bb.e, %bb.d, %bb.b
  %i.ab = phi ptr [ %.pre, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.b ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !68
  %i.ad = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #22
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.af = invoke noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl8getIndexEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.ad)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit
  %.not = icmp eq i32 %i.af, -1
  br i1 %.not, label %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %3, align 16, !tbaa !7
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  invoke void @_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl3addERKSt10shared_ptrIKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ai

_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !13  ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !16
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22, !inline_history !70
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i14 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.m:                                             ; preds = %bb.k
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i16 = phi i32 [ %i.an, %bb.l ], [ %i.ax, %bb.m ]
  %i.ay = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.ay, label %bb.n, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !68
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %sext20 = shl i64 %i.bg, 28
  %i.bh = ashr i64 %sext20, 32
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.b, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !82
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
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !16
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !43
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !43
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_5miERKSt10shared_ptrIKNS_13ColorSpaceSetEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %4 = alloca %"class.std::shared_ptr.0", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN16OpenColorIO_v2_513ColorSpaceSet6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3)
  %i.a = load ptr, ptr %1, align 8, !tbaa !68
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
  %5 = phi ptr [ %i.e, %.lr.ph ], [ %i.bd, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.n = phi ptr [ %i.d, %.lr.ph ], [ %i.bc, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %5 to i64
  %i.q = sub i64 %i.o, %i.p
  %sext = shl i64 %i.q, 28
  %i.r = ashr i64 %sext, 32
  %.not.i.i12 = icmp slt i64 %indvars.iv, %i.r
  call void @llvm.assume(i1 %.not.i.i12)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38, !noalias !89 ; 3 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !64, !alias.scope !89
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13, !noalias !89 ; 3 uses
  store ptr %i.v, ptr %i.l, align 8, !tbaa !13, !alias.scope !89
  %.not.i.i.i3.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i3.i.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !89
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !89
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3, !noalias !89
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !89 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !64
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit

_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit: ; preds = %bb.e, %bb.d, %bb.b
  %i.ab = phi ptr [ %.pre, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.b ]
  %i.ac = load ptr, ptr %2, align 8, !tbaa !68
  %i.ad = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #22
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.af = invoke noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl8getIndexEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.ad)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit
  %.not = icmp eq i32 %i.af, -1
  br i1 %.not, label %bb.g, label %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %3, align 16, !tbaa !7
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  invoke void @_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl3addERKSt10shared_ptrIKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ai

_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !13  ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !16
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22, !inline_history !70
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i14 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.m:                                             ; preds = %bb.k
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i16 = phi i32 [ %i.an, %bb.l ], [ %i.ax, %bb.m ]
  %i.ay = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.ay, label %bb.n, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !68
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %sext20 = shl i64 %i.bg, 28
  %i.bh = ashr i64 %sext20, 32
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.b, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !90
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !91
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZNK16OpenColorIO_v2_510ColorSpace18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.6") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !41
  store ptr null, ptr %i.r, align 8, !tbaa !13
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !41
  store ptr null, ptr %2, align 8, !tbaa !38
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !41, !alias.scope !95, !noalias !92
  store ptr null, ptr %i.t, align 8, !tbaa !13, !alias.scope !95, !noalias !92
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !41, !alias.scope !92, !noalias !95
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !95, !noalias !92
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !97

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !41, !alias.scope !101, !noalias !98
  store ptr null, ptr %i.y, align 8, !tbaa !13, !alias.scope !101, !noalias !98
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !41, !alias.scope !98, !noalias !101
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !38, !alias.scope !101, !noalias !98
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !97

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !35
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !61
  store i8 0, ptr %i.c, align 8, !tbaa !31
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !54
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.f, ptr %i.b, align 8, !tbaa !57
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !59
  %i.i = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.i, ptr %i.e, align 8, !tbaa !31
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc.i11, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i11 ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
end_hunk_0
