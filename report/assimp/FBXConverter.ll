inline.NumInlined: 7594
inline.NumDeleted: 2896
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter14GetKeyTimeListERKSt6vectorISt5tupleIJSt10shared_ptrIS2_IlSaIlEEES4_IS2_IfSaIfEEEjEESaISB_EE:bb.a
  br i1 %.not131, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = shl nuw nsw i64 %.sroa.speculated, 3
  %6 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #31 ; 4 uses
  store ptr %6, ptr %0, align 8
  store ptr %6, ptr %4, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.sroa.speculated ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter14GetKeyTimeListERKSt6vectorISt5tupleIJSt10shared_ptrIS2_IlSaIlEEES4_IS2_IfSaIfEEEjEESaISB_EE:bb.a

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %.thread, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, %bb.b
  %i.s = phi ptr [ %i.g, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ %i.g, %bb.b ], [ %i.e, %.thread ] ; 3 uses
  %.promoted88 = phi ptr [ %6, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.thread ] ; 4 uses
  %.promoted = phi ptr [ %i.h, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
end_hunk_1
