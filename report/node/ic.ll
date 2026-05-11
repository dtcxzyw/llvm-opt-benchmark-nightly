inline.NumInlined: 5609
inline.NumDeleted: 1806
begin_hunk_0_@_ZN2v88internal11PropertyKeyC2INS0_6HandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS0_12DirectHandleIS5_EEEEEPNS0_7IsolateES6_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6LoadIC12UpdateCachesEPNS0_14LookupIteratorE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::MaybeObjectHandle", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  switch i32 %i.c, label %bb.h [
end_hunk_0
begin_hunk_1_@_ZN2v88internal14LookupIterator7RestartEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7StoreIC12UpdateCachesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_11StoreOriginE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::MaybeObjectHandle", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal7StoreIC14LookupForWriteEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_11StoreOriginE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr %2, i32 noundef %3)
  br i1 %i.b, label %bb.b, label %bb.j

end_hunk_1
