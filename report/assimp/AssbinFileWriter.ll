inline.NumInlined: 428
inline.NumDeleted: 148
begin_hunk_0_@_ZN6Assimp11WriteBoundsI11aiVectorKeyEEmPNS_8IOStreamEPKT_j:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 1, ptr %i.b, align 4
  store double -1.000000e+10, ptr %4, align 8
  store double 1.000000e+10, ptr %3, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11WriteBoundsI11aiVectorKeyEEmPNS_8IOStreamEPKT_j:bb.a

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN6Assimp11WriteBoundsI11aiVectorKeyEEmPNS_8IOStreamEPKT_j:bb.a
  store <2 x float> %i.z, ptr %i.d, align 8
  store double %i.n, ptr %3, align 8
  store float %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.a, align 4
  store double %i.u, ptr %4, align 8
  store float %i.ab, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.b, align 4
  br label %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit

_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit.loopexit, %bb.a
end_hunk_2
begin_hunk_3_@_ZN6Assimp11WriteBoundsI9aiQuatKeyEEmPNS_8IOStreamEPKT_j:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 1, ptr %i.f, align 8
  store double -1.000000e+10, ptr %4, align 8
  store double 1.000000e+10, ptr %3, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp11WriteBoundsI9aiQuatKeyEEmPNS_8IOStreamEPKT_j:bb.a

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
end_hunk_4
begin_hunk_5_@_ZN6Assimp11WriteBoundsI9aiQuatKeyEEmPNS_8IOStreamEPKT_j:bb.a
  store <2 x float> %i.y, ptr %i.d, align 8
  store <2 x float> %i.ad, ptr %i.e, align 8
  store double %i.p, ptr %3, align 8
  store i32 1, ptr %i.c, align 8
  store double %i.t, ptr %4, align 8
  store i32 1, ptr %i.f, align 8
  br label %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit

_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit.loopexit, %bb.a
end_hunk_5
