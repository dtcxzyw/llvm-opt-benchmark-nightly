inline.NumInlined: 79
inline.NumDeleted: 23
begin_hunk_0_@_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint:bb.a
  br i1 %.not7.i, label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull %i.h) ; 0 uses
  store ptr null, ptr %i.g, align 8, !tbaa !10
  br label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit

end_hunk_0
begin_hunk_1_@_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = zext nneg i32 %spec.store.select to i64
  %i.n = getelementptr inbounds nuw [176 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.n, ptr noundef nonnull align 8 dereferenceable(172) %1, i64 172, i1 false), !tbaa.struct !25
  ret i32 %spec.store.select
}

end_hunk_1
begin_hunk_2_@_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store <2 x float> %i.ay, ptr %i.bh, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !18 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
end_hunk_2
begin_hunk_3_@_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store <2 x float> %i.cg, ptr %i.cp, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i35, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !26
  %foldExtExtBinop = fsub <2 x float> %i.ay, %i.cg
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop96 = fsub <2 x float> %i.ay, %i.cg
end_hunk_3
begin_hunk_4_@_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_:bb.a
  br i1 %.not7.i.i, label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = tail call noundef zeroext i1 %i.do(ptr noundef nonnull %i.dn) ; 0 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !10
  br label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit.i

end_hunk_4
begin_hunk_5_@_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_:bb.a
bb.g:                                             ; preds = %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit.i
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds [176 x i8], ptr %i.v, i64 %i.dt ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.dh, ptr noundef nonnull align 8 dereferenceable(172) %i.du, i64 172, i1 false), !tbaa.struct !25
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 112
  store ptr null, ptr %i.dv, align 8, !tbaa !10
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 120
end_hunk_5
begin_hunk_6_@_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_:bb.a
  br i1 %.not7.i.i59, label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit.i60, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fj = tail call noundef zeroext i1 %i.fi(ptr noundef nonnull %i.fh) ; 0 uses
  store ptr null, ptr %i.fg, align 8, !tbaa !10
  br label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit.i60

end_hunk_6
begin_hunk_7_@_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_:bb.a
bb.l:                                             ; preds = %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit.i60
  %i.fn = sext i32 %i.fl to i64
  %i.fo = getelementptr inbounds [176 x i8], ptr %i.v, i64 %i.fn ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.dh, ptr noundef nonnull align 8 dereferenceable(172) %i.fo, i64 172, i1 false), !tbaa.struct !25
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 112
  store ptr null, ptr %i.fp, align 8, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
end_hunk_7
begin_hunk_8_@_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_:bb.a
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.fu = load ptr, ptr @gContactProcessedCallback, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.fu, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fv = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.fw = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.fx = tail call noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(172) %i.dh, ptr noundef %i.fv, ptr noundef %i.fw) ; 0 uses
  br label %bb.o

end_hunk_8
begin_hunk_9_@llvm.fmuladd.v2f32
!22 = !{!11, !13, i64 80}
!23 = !{!21, !5, i64 728}
!24 = !{!21, !13, i64 732}
!25 = !{i64 0, i64 16, !26, i64 16, i64 16, !26, i64 32, i64 16, !26, i64 48, i64 16, !26, i64 64, i64 16, !26, i64 80, i64 4, !18, i64 84, i64 4, !18, i64 88, i64 4, !18, i64 92, i64 4, !4, i64 96, i64 4, !4, i64 100, i64 4, !4, i64 104, i64 4, !4, i64 112, i64 8, !27, i64 120, i64 4, !18, i64 124, i64 1, !28, i64 128, i64 4, !18, i64 132, i64 4, !18, i64 136, i64 4, !4, i64 140, i64 16, !26, i64 156, i64 16, !26}
!26 = !{!6, !6, i64 0}
!27 = !{!14, !14, i64 0}
!28 = !{!15, !15, i64 0}
!29 = !{!21, !14, i64 712}
!30 = !{!21, !14, i64 720}
end_hunk_9
