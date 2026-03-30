begin_hunk_0
; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_malloc_with_params_and_key(ptr noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %3 = load <2 x i8>, ptr %0, align 8, !tbaa !10
  %.sroa.43.0.copyload = load i8, ptr %.sroa.43.0..sroa_idx, align 1, !tbaa !10 ; 3 uses
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %malloc_raw.exit, label %bb.b
end_hunk_0
begin_hunk_1
bb.e:                                             ; preds = %bb.d
  %.not186.i = icmp eq i8 %.sroa.43.0.copyload, 0 ; 2 uses
  %.0175.i = select i1 %.not186.i, i64 0, i64 64
  %4 = shufflevector <2 x i8> %3, <2 x i8> poison, <2 x i32> <i32 1, i32 0>
  %i.f = zext i1 %1 to i8
  store <2 x i8> %4, ptr %i.e, align 8
  %.sroa.096.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.f, ptr %.sroa.096.sroa.4.0..sroa_idx.i, align 2, !tbaa !13
  %.sroa.096.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3
end_hunk_1
