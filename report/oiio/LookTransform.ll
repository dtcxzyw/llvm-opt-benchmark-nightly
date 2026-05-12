inline.NumInlined: 452
inline.NumDeleted: 201
begin_hunk_0_@_ZN16OpenColorIO_v2_513LookTransformC2Ev:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_513LookTransform18createEditableCopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.0") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN16OpenColorIO_v2_513LookTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_513LookTransform18createEditableCopyEv:bb.a
  %i.n = load i8, ptr %i.m, align 4, !tbaa !32, !range !40, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 %i.n, ptr %i.o, align 4, !tbaa !32
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %.noexc3
  store ptr %i.c, ptr %0, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
end_hunk_1
