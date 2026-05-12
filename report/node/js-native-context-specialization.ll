inline.NumInlined: 4584
inline.NumDeleted: 1366
begin_hunk_0_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_7BooleanENS0_7Word32TEE5ValueEv:bb.a
  %3 = alloca %"struct.std::array.882", align 8   ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.264", align 8 ; 4 uses
  %5 = alloca %"struct.std::array.882", align 8   ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.907", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_7BooleanENS0_7Word32TEE5ValueEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
end_hunk_1
