inline.NumInlined: 43
inline.NumDeleted: 29
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser15GenericFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.b = load i16, ptr %4, align 8, !tbaa !8
  %i.c = trunc i64 %5 to i32
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = or i32 %i.f, %i.c
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal8TcParser18ReflectionFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.b = load i16, ptr %4, align 8, !tbaa !8
  %i.c = trunc i64 %5 to i32
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = or i32 %i.f, %i.c
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal8TcParser29MessageSetWireFormatParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !18
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal15ReadTagFallbackEPKcj

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet19ParseMessageSetItemEPKcPKNS0_7MessageEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_3
