inline.NumInlined: 7694
inline.NumDeleted: 2227
begin_hunk_0_@_ZN2v88internal21GetOwnValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_14PropertyFilterEbb:bb.a
  %6 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::Handle.490", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr null, ptr %9, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal21GetOwnValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_14PropertyFilterEbb:bb.a
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.l, i8 noundef zeroext 0, i8 0) #20 ; 3 uses
  store ptr %i.m, ptr %9, align 8
  %i.n = load i64, ptr %i.e, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
end_hunk_1
