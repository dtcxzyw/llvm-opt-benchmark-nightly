begin_hunk_0
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  %6 = alloca %"class.std::function", align 8     ; 8 uses
  %7 = alloca %"class.facebook::hermes::(anonymous namespace)::TimedHostFunction", align 8 ; 14 uses
  %8 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35, !nonnull !43, !align !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1
  br label %_ZN8facebook6hermes12_GLOBAL__N_117TimedHostFunctionC2ERNS_3jsi7RuntimeESt8functionIFNS3_5ValueES5_RKS7_PS8_mEERNS1_12RuntimeStatsE.exit

_ZN8facebook3jsi21DecoratedHostFunctionC2ERNS0_7RuntimeESt8functionIFNS0_5ValueES3_RKS5_PS6_mEE.exit.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.g, ptr %i.k, align 8, !tbaa !26
  br label %_ZN8facebook6hermes12_GLOBAL__N_117TimedHostFunctionC2ERNS_3jsi7RuntimeESt8functionIFNS3_5ValueES5_RKS7_PS8_mEERNS1_12RuntimeStatsE.exit

end_hunk_1
