inline.NumInlined: 4584
inline.NumDeleted: 1366
begin_hunk_0_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_7BooleanENS0_7Word32TEE5ValueEv:bb.a
  %3 = alloca %"struct.std::array.882", align 8   ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.264", align 8 ; 4 uses
  %5 = alloca %"struct.std::array.882", align 8   ; 4 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.907", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_7BooleanENS0_7Word32TEE5ValueEv:bb.a
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
