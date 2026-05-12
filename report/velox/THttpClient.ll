inline.NumInlined: 328
inline.NumDeleted: 161
begin_hunk_0_@_ZN6apache6thrift9transport11THttpClient11parseHeaderEPc:bb.a
bb.a:
  %2 = alloca %"struct.boost::algorithm::is_iequal", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6apache6thrift9transport11THttpClient11parseHeaderEPc:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
end_hunk_1
begin_hunk_2_@_ZN6apache6thrift9transport11THttpClient11parseHeaderEPc:bb.a
bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 0, ptr %i.l, align 1, !tbaa !38
  %i.m = call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #18, !inline_history !52
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.n, ptr %i.o, align 8, !tbaa !53
end_hunk_2
