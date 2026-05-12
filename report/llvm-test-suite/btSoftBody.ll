inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody26generateBendingConstraintsEiPNS_8MaterialE:bb.a
  br i1 %i.a, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.c = load i32, ptr %i.b, align 4, !tbaa !110  ; 16 uses
  %i.d = mul nsw i32 %i.c, %i.c
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody26generateBendingConstraintsEiPNS_8MaterialE:bb.a
  store i32 0, ptr %i.bx, align 4, !tbaa !369
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.by, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody26generateBendingConstraintsEiPNS_8MaterialE:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.cb, align 4, !tbaa !154
  invoke void @_ZN20btAlignedObjectArrayI9NodeLinksE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
end_hunk_2
begin_hunk_3_@_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3P16btCollisionShapeRS1_f:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !572
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !573 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !575
  %i.cx = add nsw i32 %i.cw, 1
end_hunk_3
begin_hunk_4_@_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3P16btCollisionShapeRS1_f:bb.a
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !581
  %i.dx = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #32 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.dx, i8 0, i64 288, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 288
  store ptr %i.cu, ptr %i.dy, align 8, !tbaa !580
  store ptr %i.dx, ptr %i.ct, align 8, !tbaa !573
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 280
  store ptr %2, ptr %i.dz, align 8, !tbaa !579
end_hunk_4
