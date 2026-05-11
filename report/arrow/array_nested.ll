inline.NumInlined: 5209
inline.NumDeleted: 1661
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_110BoxOffsetsERKSt10shared_ptrINS_8DataTypeEERKNS_9ArrayDataE:bb.a
bb.a:
  %3 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %4 = alloca [2 x %"class.std::shared_ptr.20"], align 16 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.9", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_110BoxOffsetsERKSt10shared_ptrINS_8DataTypeEERKNS_9ArrayDataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  store ptr null, ptr %5, align 8, !tbaa !33, !alias.scope !414
  %i.cc = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #26
          to label %.noexc13 unwind label %bb.an  ; 12 uses

end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_18BoxSizesERKSt10shared_ptrINS_8DataTypeEERKNS_9ArrayDataE:bb.a
bb.a:
  %3 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %4 = alloca [2 x %"class.std::shared_ptr.20"], align 16 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.9", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_18BoxSizesERKSt10shared_ptrINS_8DataTypeEERKNS_9ArrayDataE:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  store ptr null, ptr %5, align 8, !tbaa !33, !alias.scope !662
  %i.bv = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #26
          to label %.noexc11 unwind label %bb.an  ; 12 uses

end_hunk_3
