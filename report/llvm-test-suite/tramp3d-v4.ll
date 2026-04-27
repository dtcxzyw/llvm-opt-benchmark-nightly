inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZN5Pooma15PatchSizeSyncerC2EiR4GridILi1EE:bb.a

_ZNSt12_Vector_baseISt4pairIiP4GridILi1EEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = shl nuw nsw i64 %i.n, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #47 ; 3 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !134
  store ptr %i.r, ptr %3, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.n
end_hunk_0
begin_hunk_1_@_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE11makeOwnCopyI5FieldIS5_dSB_EEEvRKT_:bb.a
  %i.er = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.eq
  br label %_ZN18RefBlockControllerI6EngineILi3Ed6RemoteI5BrickEEE17reallocateStorageEmb.exit

_ZN18RefBlockControllerI6EngineILi3Ed6RemoteI5BrickEEE17reallocateStorageEmb.exit: ; preds = %_ZN18RefCountedBlockPtrI6EngineILi3Ed6RemoteI5BrickEELb0E18RefBlockControllerIS4_EE11makeOwnCopyEv.exit.i, %bb.n
  %.021.i = phi ptr [ null, %_ZN18RefCountedBlockPtrI6EngineILi3Ed6RemoteI5BrickEELb0E18RefBlockControllerIS4_EE11makeOwnCopyEv.exit.i ], [ %i.er, %bb.n ]
  %.019.i = phi ptr [ null, %_ZN18RefCountedBlockPtrI6EngineILi3Ed6RemoteI5BrickEELb0E18RefBlockControllerIS4_EE11makeOwnCopyEv.exit.i ], [ %i.ep, %bb.n ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
end_hunk_1
