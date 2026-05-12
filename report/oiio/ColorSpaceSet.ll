inline.NumInlined: 490
inline.NumDeleted: 212
begin_hunk_0_@_ZN16OpenColorIO_v2_513ColorSpaceSet16clearColorSpacesEv:bb.a
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
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_5ooERKSt10shared_ptrIKNS_13ColorSpaceSetEES5_:bb.a
  br label %common.resume

_ZNK16OpenColorIO_v2_513ColorSpaceSet18createEditableCopyEv.exit: ; preds = %bb.a
  %4 = load ptr, ptr %3, align 16, !tbaa !7
  %i.g = load ptr, ptr %4, align 8, !tbaa !23
  %i.h = load ptr, ptr %2, align 8, !tbaa !68
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  invoke void @_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl3addERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
end_hunk_1
