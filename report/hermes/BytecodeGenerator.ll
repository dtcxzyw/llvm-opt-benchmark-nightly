inline.NumInlined: 2660
inline.NumDeleted: 1336
begin_hunk_0_@_ZN6hermes3hbc25BytecodeFunctionGenerator13getFunctionIDEPNS_8FunctionE:bb.a
  %i.e = icmp ne i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 956 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !248, !range !185, !noundef !40
  %2 = trunc nuw i8 %i.g to i1
  %3 = or i1 %i.e, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.f, align 4, !tbaa !248
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !326
  %i.j = icmp eq i8 %i.i, -125
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 957 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !327, !range !185, !noundef !40
  %5 = trunc nuw i8 %i.l to i1
  %6 = or i1 %i.j, %5
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %i.k, align 1, !tbaa !327
  %i.m = tail call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(964) %i.b, ptr noundef %1)
  ret i32 %i.m
}
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc23BytecodeModuleGenerator11addFunctionEPNS_8FunctionE:bb.a
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 956 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !248, !range !185, !noundef !40
  %2 = trunc nuw i8 %i.e to i1
  %3 = or i1 %i.c, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.d, align 4, !tbaa !248
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !326
  %i.h = icmp eq i8 %i.g, -125
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 957 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !327, !range !185, !noundef !40
  %5 = trunc nuw i8 %i.j to i1
  %6 = or i1 %i.h, %5
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %i.i, align 1, !tbaa !327
  %i.k = tail call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  ret i32 %i.k
}
end_hunk_1
