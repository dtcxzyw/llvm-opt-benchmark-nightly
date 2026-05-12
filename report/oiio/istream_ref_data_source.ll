inline.NumInlined: 68
inline.NumDeleted: 38
begin_hunk_0_@_ZN22photos_editing_formats8image_io20IStreamRefDataSource4ReadEmm:bb.a
  %4 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %5 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7, !nonnull !17, !align !18
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 %2, i64 0)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !7, !nonnull !17, !align !18 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
end_hunk_0
begin_hunk_1_@_ZN22photos_editing_formats8image_io20IStreamRefDataSource4ReadEmm:bb.a
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.l, i64 noundef %3)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
end_hunk_1
