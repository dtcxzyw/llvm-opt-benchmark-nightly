inline.NumInlined: 13148
inline.NumDeleted: 3234
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E2_EEvSD_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cd, 14
  %n.vec = and i64 %i.cd, -16                     ; 4 uses
  %i.ci = load i64, ptr %.sroa.2.0..sroa_idx.i.i.us.us21, align 8, !tbaa !49, !alias.scope !2797
  %broadcast.splatinsert73.a = insertelement <4 x i64> poison, i64 %i.ci, i64 0
  %i.cj = load i64, ptr %i.cb, align 8, !tbaa !49, !alias.scope !2797
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.cj, i64 0
  %3 = add nsw i64 %n.vec, %i.cc
  %interleaved.vec = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> %broadcast.splatinsert73.a, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E2_EEvSD_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %i.cd, -2                    ; 3 uses
  %i.ct = load i64, ptr %.sroa.2.0..sroa_idx.i.i.us.us21, align 8, !tbaa !49, !alias.scope !2797
  %broadcast.splatinsert83.a = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !49, !alias.scope !2797
  %broadcast.splatinsert81 = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %4 = add nsw i64 %n.vec79, %i.cc
  %invariant.gep = getelementptr [16 x i8], ptr %i.as, i64 %i.cc
  %interleaved.vec85 = shufflevector <2 x i64> %broadcast.splatinsert81, <2 x i64> %broadcast.splatinsert83.a, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
end_hunk_1
