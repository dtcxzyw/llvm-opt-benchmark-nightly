inline.NumInlined: 245
inline.NumDeleted: 125
begin_hunk_0_@_ZN6Assimp23ComputeUVMappingProcess7ExecuteEP7aiScene:bb.a
          to label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.1.i.ph.peel.a = phi i32 [ 6, %bb.ah ], [ 5, %bb.ag ], [ 4, %bb.af ], [ 3, %bb.ae ], [ 2, %bb.ad ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ 7, %bb.ai ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %.not86.peel = icmp eq i32 %i.dd, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp23ComputeUVMappingProcess7ExecuteEP7aiScene:bb.a
  %i.dj = sub nuw nsw i64 %i.dh, %i.di
  %i.dk = add nuw nsw i64 %i.dj, 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dg, i8 0, i64 %i.dk, i1 false)
  %4 = zext nneg i32 %.1.i.ph.peel.a to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %4
  store ptr %i.dg, ptr %i.dl, align 8
  %i.dm = load i32, ptr %i.aj, align 4
  switch i32 %i.dm, label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel [
end_hunk_1
begin_hunk_2_@_ZN6Assimp23ComputeUVMappingProcess7ExecuteEP7aiScene:bb.a
          to label %_Z18FindEmptyUVChannelP6aiMesh.exit unwind label %.loopexit139

bb.bc:                                            ; preds = %bb.ba, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.1.i.ph.a = phi i32 [ 6, %bb.az ], [ 5, %bb.ay ], [ 4, %bb.ax ], [ 3, %bb.aw ], [ 2, %bb.av ], [ 1, %bb.au ], [ 0, %bb.at ], [ 7, %bb.ba ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ew = load i32, ptr %i.ev, align 4            ; 2 uses
  %.not86 = icmp eq i32 %i.ew, 0
end_hunk_2
begin_hunk_3_@_ZN6Assimp23ComputeUVMappingProcess7ExecuteEP7aiScene:bb.a
  %i.fc = sub nuw nsw i64 %i.fa, %i.fb
  %i.fd = add nuw nsw i64 %i.fc, 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ez, i8 0, i64 %i.fd, i1 false)
  %5 = zext nneg i32 %.1.i.ph.a to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %5
  store ptr %i.ez, ptr %i.fe, align 8
  %i.ff = load i32, ptr %i.aj, align 4
  switch i32 %i.ff, label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit [
end_hunk_3
