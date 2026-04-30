inline.NumInlined: 2442
inline.NumDeleted: 1339
begin_hunk_0_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  store i8 %i.ap, ptr %i.am, align 1, !noalias !32
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit

_ZN2v84base11OwnedVectorIhED2Ev.exit:             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0142.0 = phi ptr [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %bb.f ], [ null, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  store i64 0, ptr %25, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.fm = load ptr, ptr %i.fl, align 8
  call void @_ZN2v88internal4wasm16CompilationState18set_compilation_idEi(ptr noundef nonnull align 1 dereferenceable(1) %i.fm, i32 noundef -2) #25
  %i.fn = load ptr, ptr %28, align 16
  store ptr %.sroa.0142.0, ptr %32, align 8
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %4, ptr %39, align 8
  call void @_ZN2v88internal4wasm12NativeModule12SetWireBytesENS_4base11OwnedVectorIKhEE(ptr noundef nonnull align 8 dereferenceable(552) %i.fn, ptr noundef nonnull %32) #25
  %i.fo = load ptr, ptr %32, align 8              ; 2 uses
end_hunk_1
