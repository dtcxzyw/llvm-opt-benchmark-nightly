inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
.loopexit709:                                     ; preds = %bb.g
  %i.bz = add i64 %i.bv, -12                      ; 2 uses
  %i.ca = urem i64 %i.bz, 12
  %i.cb = sub nuw i64 %i.bz, %i.ca
  %i.cc = add i64 %i.cb, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.cc, i1 false)
  store ptr %i.bx, ptr %i.f, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
.loopexit708:                                     ; preds = %bb.l
  %i.cr = add i64 %i.bv, -12                      ; 2 uses
  %i.cs = urem i64 %i.cr, 12
  %i.ct = sub nuw i64 %i.cr, %i.cs
  %i.cu = add i64 %i.ct, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cq, i8 0, i64 %i.cu, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_1
begin_hunk_2_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
.loopexit707:                                     ; preds = %bb.r
  %i.dl = add i64 %i.bv, -12                      ; 2 uses
  %i.dm = urem i64 %i.dl, 12
  %i.dn = sub nuw i64 %i.dl, %i.dm
  %i.do = add i64 %i.dn, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dk, i8 0, i64 %i.do, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
end_hunk_2
begin_hunk_3_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
.loopexit706:                                     ; preds = %bb.w
  %i.ee = add i64 %i.bv, -12                      ; 2 uses
  %i.ef = urem i64 %i.ee, 12
  %i.eg = sub nuw i64 %i.ee, %i.ef
  %i.eh = add i64 %i.eg, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ed, i8 0, i64 %i.eh, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_3
begin_hunk_4_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.eq = add i64 %i.bv, -12                      ; 2 uses
  %i.er = urem i64 %i.eq, 12
  %i.es = sub nuw i64 %i.eq, %i.er
  %i.et = add i64 %i.es, 12
  %xtraiter1545 = and i64 %.0.lcssa.i, 1
  %i.eu = icmp eq i64 %.0.lcssa.i, 1
end_hunk_4
