inline.NumInlined: 449
inline.NumDeleted: 83
begin_hunk_0_@_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE:bb.a
_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i: ; preds = %bb.f, %bb.e
  %i.bc = phi ptr [ %i.ba, %bb.e ], [ %i.bb, %bb.f ]
  %i.bd = invoke { <2 x float>, <2 x float> } %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.at)
          to label %bb.g unwind label %bb.k, !inline_history !77 ; 2 uses

bb.g:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.be = extractvalue { <2 x float>, <2 x float> } %i.bd, 0
end_hunk_0
begin_hunk_1_@_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE:bb.a
  store <2 x float> %i.cw, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.ab, align 8
  %i.dd = invoke { <2 x float>, <2 x float> } %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.j unwind label %bb.l, !inline_history !77 ; 2 uses

bb.j:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i
  %i.de = extractvalue { <2 x float>, <2 x float> } %i.dd, 0 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE:bb.a

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i: ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ %i.t, %bb.b ], [ %i.u, %bb.c ]
  %i.w = tail call { <2 x float>, <2 x float> } %i.v(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !78 ; 2 uses
  %i.x = load float, ptr %2, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !24
end_hunk_2
begin_hunk_3_@_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE:bb.a
  store <2 x float> %i.bl, ptr %3, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.bv, align 8
  %i.bw = call { <2 x float>, <2 x float> } %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !79 ; 2 uses
  %i.bx = extractvalue { <2 x float>, <2 x float> } %i.bw, 0 ; 4 uses
  %i.by = extractvalue { <2 x float>, <2 x float> } %i.bw, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.bx, i64 0
end_hunk_3
begin_hunk_4_@_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b
define linkonce_odr dso_local noundef ptr @_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b(ptr noundef nonnull align 8 dereferenceable(14464) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14448 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 19 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.q, label %bb.b

end_hunk_4
begin_hunk_5_@_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.ae, ptr %5, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !81
  br label %.critedge

bb.h:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@llvm.fmuladd.v2f32
!74 = !{!75, !14, i64 56}
!75 = !{!"_ZTS21btConvexInternalShape", !76, i64 0, !13, i64 24, !13, i64 40, !14, i64 56, !14, i64 60}
!76 = !{!"_ZTS13btConvexShape", !73, i64 0}
!77 = distinct !{null}
!78 = distinct !{null, null}
!79 = distinct !{null, null}
!80 = !{!57, !54, i64 14448}
!81 = !{!69, !5, i64 16}
end_hunk_6
