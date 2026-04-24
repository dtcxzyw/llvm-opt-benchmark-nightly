inline.NumInlined: 152
inline.NumDeleted: 57
begin_hunk_0_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.c = call fastcc noundef float @_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 2 uses
  %i.d = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.12.0.copyload = load <2 x float>, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.cv = fmul float %.sroa.6241.0, %i.cd
  %i.cw = tail call float @llvm.fmuladd.f32(float %.sroa.0238.0, float %i.cb, float %i.cv)
end_hunk_1
begin_hunk_2_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  %i.fr = fmul float %i.fg, %i.ek
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.fc, float %i.fr)
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %i.el, float %i.fk, float %i.fs) ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.fu = fneg float %i.ek                        ; 3 uses
  %i.fv = fneg float %i.el                        ; 2 uses
  %i.fw = fmul float %i.dc, %i.fu
end_hunk_2
begin_hunk_3_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  %i.gd = fadd float %i.gc, %i.fq                 ; 3 uses
  %i.ge = fcmp ugt float %i.fz, 0.000000e+00
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br i1 %i.ge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.cy, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.dc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %5, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %8, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]      ; 3 uses
  %i.gf = fcmp ugt float %i.gd, 0.000000e+00
  br i1 %i.gf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gg = add nuw nsw i32 %.0.i, 1
  %10 = zext nneg i32 %.0.i to i64
  %11 = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %10 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i42.i, ptr %11, align 4
  %.sroa.18.20..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i43.i, ptr %.sroa.18.20..sroa_idx, align 4, !tbaa !41
  br label %bb.g

end_hunk_4
begin_hunk_5_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  br i1 %i.gx, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit
  %i.gy = load float, ptr %8, align 8, !tbaa !40  ; 3 uses
  %i.gz = load <2 x float>, ptr %5, align 16, !tbaa !40 ; 4 uses
  %i.ha = extractelement <2 x float> %i.gz, i64 1
  %i.hb = fmul float %i.ek, %i.ha
end_hunk_5
begin_hunk_6_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.hc, float %i.hb)
  %i.he = tail call noundef float @llvm.fmuladd.f32(float %i.el, float %i.gy, float %i.hd)
  %i.hf = fsub float %i.he, %i.ft                 ; 5 uses
  %i.hg = load <2 x float>, ptr %i.ct, align 4, !tbaa !40 ; 3 uses
  %i.hh = extractelement <2 x float> %i.hg, i64 1
  %i.hi = fmul float %i.ek, %i.hh
  %i.hj = extractelement <2 x float> %i.hg, i64 0
end_hunk_6
begin_hunk_7_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i87 = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]    ; 3 uses
  %i.hp = fcmp ugt float %i.hn, 0.000000e+00
  br i1 %i.hp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hq = add nuw nsw i32 %.0.i87, 1
  %12 = zext nneg i32 %.0.i87 to i64
  %13 = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %13, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.ct, i64 20, i1 false), !tbaa.struct !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
end_hunk_7
