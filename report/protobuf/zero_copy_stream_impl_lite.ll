inline.NumInlined: 489
inline.NumDeleted: 209
begin_hunk_0_@_ZN6google8protobuf2io16ArrayInputStream4NextEPPKvPi:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = sub nsw i32 %i.d, %i.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.speculated, ptr %i.i, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io16ArrayInputStream4NextEPPKvPi:bb.a
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %1, align 8, !tbaa !18
  store i32 %.sroa.speculated, ptr %2, align 4, !tbaa !3
  %i.n = load i32, ptr %i.a, align 8, !tbaa !16
  %i.o = add nsw i32 %i.n, %.sroa.speculated
  store i32 %i.o, ptr %i.a, align 8, !tbaa !16
  br label %bb.d

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io17ArrayOutputStream4NextEPPvPi:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = sub nsw i32 %i.d, %i.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.speculated, ptr %i.i, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io17ArrayOutputStream4NextEPPvPi:bb.a
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %1, align 8, !tbaa !18
  store i32 %.sroa.speculated, ptr %2, align 4, !tbaa !3
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26
  %i.o = add nsw i32 %i.n, %.sroa.speculated
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  br label %bb.d

end_hunk_3
