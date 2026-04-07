inline.NumInlined: 392
inline.NumDeleted: 103
begin_hunk_0_@_ZN11btRigidBodyD0Ev:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i unwind label %bb.c

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(564) %0)
          to label %_ZN11btRigidBodyD2Ev.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(564) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #19
  unreachable

_ZN11btRigidBodyD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.b, align 8, !tbaa !76
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !29, !noalias !77 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !29, !noalias !77 ; 4 uses
  %i.j = fneg float %i.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.k = load float, ptr %1, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load float, ptr %i.v, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = load float, ptr %i.x, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.f, align 4, !tbaa !29, !noalias !77 ; 3 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ad = load <2 x float>, ptr %i.c, align 4, !tbaa !29, !noalias !77 ; 3 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.af = load <2 x float>, ptr %i.a, align 4, !tbaa !29, !noalias !77 ; 5 uses
  %i.ag = load float, ptr %i.b, align 4, !tbaa !29, !noalias !77 ; 2 uses
  %i.ah = fneg <2 x float> %i.ad
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.aj = fneg <2 x float> %i.ai
  %i.ak = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.al = fneg <2 x float> %i.ak
  %i.am = load <2 x float>, ptr %0, align 4, !tbaa !29, !noalias !77 ; 5 uses
  %i.an = load float, ptr %i.g, align 4, !tbaa !29, !noalias !77 ; 3 uses
  %i.ao = insertelement <2 x float> %i.af, float %i.i, i64 1 ; 2 uses
  %i.ap = fmul <2 x float> %i.ao, %i.al
  %i.aq = shufflevector <2 x float> %i.ad, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
end_hunk_2
begin_hunk_3_@_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf:bb.a
  %i.cp = fmul float %i.bu, %i.y
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.w, float %i.cp)
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.aa, float %i.cq)
  store <2 x float> %i.ci, ptr %4, align 8, !tbaa !29, !alias.scope !80
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.cl, ptr %i.cs, align 8, !tbaa !29, !alias.scope !80
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.ct, align 4, !tbaa !29, !alias.scope !80
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cv = insertelement <2 x float> poison, float %i.s, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_3
begin_hunk_4_@_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf:bb.a
  %i.db = insertelement <2 x float> poison, float %i.u, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.dc, <2 x float> %i.da)
  store <2 x float> %i.dd, ptr %i.cu, align 8, !tbaa !29, !alias.scope !80
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.co, ptr %i.de, align 8, !tbaa !29, !alias.scope !80
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.df, align 4, !tbaa !29, !alias.scope !80
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dh = insertelement <2 x float> poison, float %i.y, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_4
begin_hunk_5_@_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf:bb.a
  %i.dn = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.do, <2 x float> %i.dm)
  store <2 x float> %i.dp, ptr %i.dg, align 8, !tbaa !29, !alias.scope !80
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.cr, ptr %i.dq, align 8, !tbaa !29, !alias.scope !80
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !29, !alias.scope !80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_5
begin_hunk_6_@llvm.fmuladd.v2f32
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !70}
!75 = !{!22, !16, i64 272}
!76 = !{!22, !28, i64 208}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!79 = distinct !{!79, !"_ZNK11btMatrix3x37inverseEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!82 = distinct !{!82, !"_ZmlRK11btMatrix3x3S1_"}
end_hunk_6
