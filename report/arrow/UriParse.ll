inline.NumInlined: 232
inline.NumDeleted: 40
begin_hunk_0_@uriFreeUriMembersA:bb.a
; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uri_TESTING_ONLY_ParseIpSixA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructA, align 8      ; 5 uses
  %2 = alloca %struct.UriParserStateStructA, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
end_hunk_0
begin_hunk_1_@uri_TESTING_ONLY_ParseIpSixA:bb.a
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.d = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !52
  %i.e = call ptr %i.d(ptr noundef nonnull @defaultMemoryManager, i64 noundef 16) #6
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.e, ptr %i.f, align 8, !tbaa !42
  %i.g = call fastcc ptr @uriParseIPv6address2A(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull @defaultMemoryManager)
  %i.h = call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %1, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
end_hunk_1
begin_hunk_2_@uriFreeUriMembersW:bb.a
; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uri_TESTING_ONLY_ParseIpSixW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructW, align 8      ; 5 uses
  %2 = alloca %struct.UriParserStateStructW, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = tail call i64 @wcslen(ptr noundef %0) #7
end_hunk_2
begin_hunk_3_@uri_TESTING_ONLY_ParseIpSixW:bb.a
  store ptr %1, ptr %2, align 8, !tbaa !54
  %i.d = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !52
  %i.e = call ptr %i.d(ptr noundef nonnull @defaultMemoryManager, i64 noundef 16) #6
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.e, ptr %i.f, align 8, !tbaa !82
  %i.g = call fastcc ptr @uriParseIPv6address2W(ptr noundef %2, ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull @defaultMemoryManager)
  %i.h = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %1, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
end_hunk_3
