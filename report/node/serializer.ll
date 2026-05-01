inline.NumInlined: 3218
inline.NumDeleted: 1086
begin_hunk_0_@_ZN2v88internal6PrintFEPKcz
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10Serializer24SerializeDeferredObjectsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 7 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1442), align 2, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN2v88internal10Serializer24SerializeDeferredObjectsEv:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_1
begin_hunk_2_@_ZN2v88internal10Serializer24SerializeDeferredObjectsEv:bb.a
  store ptr %i.bk, ptr %i.bc, align 8
  store i64 %i.ba, ptr %.0.i8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %2 = load ptr, ptr %i.c, align 8
  %3 = insertelement <4 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr poison, ptr poison, ptr poison>, ptr %2, i64 1
  %4 = insertelement <4 x ptr> %3, ptr %0, i64 2
  %5 = insertelement <4 x ptr> %4, ptr %.0.i8, i64 3
  store <4 x ptr> %5, ptr %1, align 8
  store ptr %i.m, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  %i.bl = load i64, ptr %.0.i8, align 8
end_hunk_2
