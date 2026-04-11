inline.NumInlined: 428
inline.NumDeleted: 148
begin_hunk_0_@_ZN6Assimp16AssbinFileWriter15WriteBinaryNodeEPNS_8IOStreamEPK6aiNode:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.s, i64 %i.r, i1 false)
  %i.z = add nuw nsw i64 %i.r, 4
  store i64 %i.z, ptr %i.p, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1044
  br label %.preheader.i

.preheader.i:                                     ; preds = %.noexc54, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp16AssbinFileWriter15WriteBinaryNodeEPNS_8IOStreamEPK6aiNode:bb.a

.split.us.i:                                      ; preds = %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i, %.preheader.i
  %.sink41.i = phi ptr [ %i.aa, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.ac, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.ab, %.preheader.i ]
  %.pn.i = phi i64 [ 4, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ 20, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ 36, %.preheader.i ]
  %.pn42.i = phi i64 [ 8, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ 24, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ 40, %.preheader.i ]
  %.pn43.i = phi i64 [ 12, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ 28, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ 44, %.preheader.i ]
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.pn43.i
  %.sink33.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.pn42.i
  %i.ax = invoke noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sink41.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit, !inline_history !25 ; 0 uses

.noexc51:                                         ; preds = %.split.us.i
  %.sink37.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.pn.i
  %i.ay = load ptr, ptr %3, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp16AssbinFileWriter15WriteBinaryBoneEPNS_8IOStreamEPK6aiBone:bb.a
  %i.af = load i64, ptr %i.j, align 8
  %i.ag = add i64 %i.af, 4
  store i64 %i.ag, ptr %i.j, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1072
  br label %.preheader.i

.preheader.i:                                     ; preds = %.noexc19, %bb.d
end_hunk_2
begin_hunk_3_@_ZN6Assimp16AssbinFileWriter15WriteBinaryBoneEPNS_8IOStreamEPK6aiBone:bb.a

.split.us.i:                                      ; preds = %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i, %.preheader.i
  %.sink41.i = phi ptr [ %i.ah, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.aj, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.ai, %.preheader.i ]
  %.pn.i = phi i64 [ 4, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ 20, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ 36, %.preheader.i ]
  %.pn42.i = phi i64 [ 8, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ 24, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ 40, %.preheader.i ]
  %.pn43.i = phi i64 [ 12, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ 28, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ 44, %.preheader.i ]
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pn43.i
  %.sink33.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pn42.i
  %i.be = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sink41.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit, !inline_history !25 ; 0 uses

.noexc16:                                         ; preds = %.split.us.i
  %.sink37.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pn.i
  %i.bf = load ptr, ptr %5, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
end_hunk_3
