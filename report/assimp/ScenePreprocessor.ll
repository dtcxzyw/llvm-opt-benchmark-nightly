inline.NumInlined: 96
inline.NumDeleted: 52
begin_hunk_0_@_ZN6Assimp17ScenePreprocessor12ProcessSceneEv:bb.a
  br i1 %i.q, label %.lr.ph, label %.preheader, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.lcssa25 = phi ptr [ %i.d, %.preheader ], [ %i.z, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %.not = icmp eq i32 %i.s, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp17ScenePreprocessor12ProcessSceneEv:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #11
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 40
  store ptr %i.ag, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
end_hunk_1
begin_hunk_2_@_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %.loopexit78
end_hunk_2
begin_hunk_3_@_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh:bb.a
  br i1 %.not68, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.not69 = icmp eq ptr %i.bo, null
  br i1 %.not69, label %bb.l, label %.loopexit
end_hunk_3
begin_hunk_4_@_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh:bb.a
  %i.bp = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %i.bq, 12               ; 2 uses
  %i.bs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #11 ; 3 uses
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %.loopexit75.thread, label %.lr.ph96.preheader

.loopexit75.thread:                               ; preds = %bb.l
  store ptr %i.bs, ptr %i.bn, align 8
  br label %.loopexit

.lr.ph96.preheader:                               ; preds = %bb.l
  %i.bu = add nsw i64 %i.br, -12                  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh:bb.a
  %i.bw = sub nuw nsw i64 %i.bu, %i.bv
  %i.bx = add nsw i64 %i.bw, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bs, i8 0, i64 %i.bx, i1 false)
  store ptr %i.bs, ptr %i.bn, align 8
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %indvars.iv106 = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next107, %.lr.ph96 ] ; 4 uses
  %i.by = load ptr, ptr %i.bl, align 8
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.by, i64 %indvars.iv106 ; 2 uses
  %i.ca = load ptr, ptr %i.bj, align 8
end_hunk_5
begin_hunk_6_@_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh:bb.a
  %i.cy = icmp samesign ult i64 %indvars.iv.next107, %i.cx
  br i1 %i.cy, label %.lr.ph96, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph96, %.loopexit75.thread, %bb.k, %bb.j, %.loopexit76
  ret void
}

end_hunk_6
