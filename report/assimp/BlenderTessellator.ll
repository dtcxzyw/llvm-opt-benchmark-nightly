inline.NumInlined: 331
inline.NumDeleted: 200
begin_hunk_0_@_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE
define hidden void @_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 14 uses
  %5 = alloca %"struct.Assimp::Blender::PlaneP2T", align 4 ; 9 uses
  %6 = alloca %class.aiMatrix4x4t, align 4        ; 19 uses
  %7 = alloca %"class.std::vector.6", align 8     ; 12 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE:bb.a
_ZN6Assimp21BlenderTessellatorP2T17AssertVertexCountEi.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  invoke void @_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.f)
          to label %.lr.ph.i unwind label %bb.o
end_hunk_1
begin_hunk_2_@_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE:bb.a
          to label %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit unwind label %bb.p ; 0 uses

_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit: ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit.i
  %i.ca = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cb = load ptr, ptr %4, align 8               ; 4 uses
  %.not.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i, label %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge, label %.lr.ph.i21
end_hunk_2
begin_hunk_3_@_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE:bb.a
  store double %i.dj, ptr %i.dk, align 8
  %i.dl = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dn = load ptr, ptr %4, align 8               ; 4 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 6                 ; 2 uses
  %i.ds = icmp ult i64 %i.dl, %i.dr
  br i1 %i.ds, label %.lr.ph.i21, label %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit, !llvm.loop !8

_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit: ; preds = %.lr.ph.i21
  %10 = icmp eq ptr %i.dm, %i.dn
  br label %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit

_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit: ; preds = %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit
  %.pre-phi44 = phi i64 [ %.pre43, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge ], [ %i.dr, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit ] ; 9 uses
  %i.dt = phi ptr [ %i.cb, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge ], [ %i.dn, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit ] ; 3 uses
  %.not.i24 = phi i1 [ true, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge ], [ %10, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE:bb.a
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.pre-phi44 ; 2 uses
  store ptr %i.ec, ptr %i.du, align 8
  store ptr %i.ec, ptr %i.dv, align 8
  br label %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i: ; preds = %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit, %_ZSt27__uninitialized_default_n_aIPPN3p2t5PointEmS2_ET_S4_T0_RSaIT1_E.exit33.i
  %i.ed = phi ptr [ %i.dy, %_ZSt27__uninitialized_default_n_aIPPN3p2t5PointEmS2_ET_S4_T0_RSaIT1_E.exit33.i ], [ null, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit ] ; 2 uses
  br i1 %.not.i24, label %_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i
  %min.iters.check = icmp ult i64 %.pre-phi44, 4
  br i1 %min.iters.check, label %.lr.ph.i25.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i25.preheader
  %n.vec = and i64 %.pre-phi44, -4                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ee = getelementptr inbounds nuw [64 x i8], ptr %i.dt, <2 x i64> %vec.ind
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.dt, <2 x i64> %step.add
  %i.eg = getelementptr inbounds nuw i8, <2 x ptr> %i.ee, i64 16
  %i.eh = getelementptr inbounds nuw i8, <2 x ptr> %i.ef, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE:bb.a
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi44, %n.vec
  br i1 %cmp.n, label %_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit, label %.lr.ph.i25.preheader70

.lr.ph.i25.preheader70:                           ; preds = %.lr.ph.i25.preheader, %middle.block
end_hunk_5
begin_hunk_6_@_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE:bb.a

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader70, %.lr.ph.i25
  %.08.i = phi i64 [ %i.eo, %.lr.ph.i25 ], [ %.08.i.ph, %.lr.ph.i25.preheader70 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [64 x i8], ptr %i.dt, i64 %.08.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.08.i
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %i.ep = icmp samesign ult i64 %i.eo, %.pre-phi44
  br i1 %i.ep, label %.lr.ph.i25, label %_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit, !llvm.loop !12

_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit: ; preds = %.lr.ph.i25, %middle.block, %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIPN3p2t5PointESaIS2_EE17_M_default_appendEm:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIPN3p2t5PointESaIS2_EE17_M_default_appendEm:bb.a
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN3p2t5PointESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3p2t5PointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #27
  br label %_ZNSt12_Vector_baseIPN3p2t5PointESaIS2_EE13_M_deallocateEPS2_m.exit36

end_hunk_8
