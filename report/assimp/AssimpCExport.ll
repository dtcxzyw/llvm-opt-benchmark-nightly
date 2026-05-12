inline.NumInlined: 8
inline.NumDeleted: 7
begin_hunk_0_@aiGetExportFormatDescription:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @_ZN6Assimp8ExporterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = invoke noundef ptr @_ZNK6Assimp8Exporter26GetExportFormatDescriptionEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %0)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
end_hunk_0
begin_hunk_1_@aiGetExportFormatDescription:bb.a
          to label %bb.e unwind label %bb.i       ; 4 uses

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #11
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #10
end_hunk_1
begin_hunk_2_@aiGetExportFormatDescription:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.h, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %i.f, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #11
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #10
end_hunk_2
begin_hunk_3_@aiGetExportFormatDescription:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.p, ptr %i.q, align 8
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.m, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #11
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #10
end_hunk_3
begin_hunk_4_@aiGetExportFormatDescription:bb.a
bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 0, i64 %i.u, i1 false)
  store ptr %i.v, ptr %i.d, align 8
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.s, i64 %i.w, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
end_hunk_4
