inline.NumInlined: 43590
inline.NumDeleted: 6060
begin_hunk_0
@.str.96 = private unnamed_addr constant [14 x i8] c"No match for \00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"Multiple matches for \00", align 1
@switch.table._ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb = private unnamed_addr constant [8 x i32] [i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000, i32 100000000], align 4

@_ZN5arrow18TypedChunkLocationIiEC1Eii = weak_odr unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5arrow18TypedChunkLocationIiEC2Eii
@_ZN5arrow18TypedChunkLocationIsEC1Ess = weak_odr unnamed_addr alias void (ptr, i16, i16), ptr @_ZN5arrow18TypedChunkLocationIsEC2Ess
end_hunk_0
begin_hunk_1_@_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb:bb.a
  br i1 %i.iu, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread20

switch.lookup:                                    ; preds = %bb.bg
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb, i64 %switch.tableidx
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.iv = load i32, ptr %i.a, align 4, !tbaa !3
  %i.iw = mul i32 %i.iv, %switch.load
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPi:bb.a
  br i1 %i.cp, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread37

switch.lookup:                                    ; preds = %bb.z
  %i.cq = getelementptr [4 x i8], ptr @switch.table._ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb, i64 %reass.sub
  %switch.gep = getelementptr i8, ptr %i.cq, i64 32
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !3
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPl:bb.a
  br i1 %i.cl, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread36

switch.lookup:                                    ; preds = %bb.aa
  %i.cm = getelementptr [4 x i8], ptr @switch.table._ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb, i64 %reass.sub
  %switch.gep = getelementptr i8, ptr %i.cm, i64 32
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !3
end_hunk_3
