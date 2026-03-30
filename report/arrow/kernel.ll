begin_hunk_0
  br label %_ZNSt12__shared_ptrIZN5arrow7compute15MatchConstraint4MakeESt8functionIFbRKSt6vectorINS0_10TypeHolderESaIS5_EEEEE23FunctionMatchConstraintLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZZN5arrow7compute15MatchConstraint4MakeESt8functionIFbRKSt6vectorINS_10TypeHolderESaIS4_EEEEEN23FunctionMatchConstraintC2ESA_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <2 x i64>, ptr %1, align 8, !tbaa !67, !noalias !270
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !270
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !67, !noalias !270
  store ptr %i.g, ptr %i.j, align 8, !tbaa !79, !noalias !270
  br label %_ZNSt12__shared_ptrIZN5arrow7compute15MatchConstraint4MakeESt8functionIFbRKSt6vectorINS0_10TypeHolderESaIS5_EEEEE23FunctionMatchConstraintLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.119", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.h
end_hunk_2
begin_hunk_3

bb.i:                                             ; preds = %bb.h
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %2, align 16, !tbaa !67
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.w, align 16, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

end_hunk_3
begin_hunk_4
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.i ]
  %3 = phi <2 x ptr> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit ], [ %i.ab, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !292
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !64
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  store <2 x ptr> %i.ai, ptr %i.w, align 16, !tbaa !64
  store <2 x ptr> %3, ptr %i.ah, align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.o, label %bb.m
end_hunk_4
