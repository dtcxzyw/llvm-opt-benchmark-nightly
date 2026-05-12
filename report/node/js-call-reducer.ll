inline.NumInlined: 12029
inline.NumDeleted: 2622
begin_hunk_0_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEENS0_7BooleanEE5ValueEv:bb.a
  %3 = alloca %"struct.std::array", align 8       ; 4 uses
  %4 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 4 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEENS0_7BooleanEE5ValueEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_6StringENS0_7BooleanEE5ValueEv:bb.a
  %3 = alloca %"struct.std::array", align 8       ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 4 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 11 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_6StringENS0_7BooleanEE5ValueEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder0INS0_7BooleanEED2Ev:bb.a
  %1 = alloca %"struct.std::array", align 8       ; 4 uses
  %2 = alloca %"struct.std::array", align 8       ; 4 uses
  %3 = alloca %"struct.std::array", align 8       ; 4 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %5 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 16 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder0INS0_7BooleanEED2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_6ObjectENS0_7BooleanEE5ValueEv:bb.a
  %3 = alloca %"struct.std::array", align 8       ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 4 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 11 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_6ObjectENS0_7BooleanEE5ValueEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEENS0_7Word32TEE5ValueEv:bb.a
  %3 = alloca %"struct.std::array", align 8       ; 4 uses
  %4 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 4 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 11 uses
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEENS0_7Word32TEE5ValueEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
end_hunk_9
