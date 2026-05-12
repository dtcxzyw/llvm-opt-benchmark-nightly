inline.NumInlined: 2834
inline.NumDeleted: 1257
begin_hunk_0_@_ZN6Assimp11XGLImporter10ReadObjectERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
  %i.s = ashr exact i64 %.pre591, 2
  %i.t = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = shl nuw nsw i64 %i.t, 1
  %9 = sub nuw nsw i64 126, %i.u
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_T1_(ptr %.sroa.0151.0, ptr %.sroa.13.0, i64 noundef %9, ptr nonnull %2)
          to label %.noexc unwind label %bb.bi

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 9223372036854775807, %i.f
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_2
