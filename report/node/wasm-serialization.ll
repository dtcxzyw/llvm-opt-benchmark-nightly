inline.NumInlined: 2442
inline.NumDeleted: 1339
begin_hunk_0_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %19 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::wasm::DeserializationQueue", align 8 ; 19 uses
  %21 = alloca %"class.std::unique_ptr.1073", align 8 ; 7 uses
  %.sroa.15.i = alloca %"struct.v8::internal::wasm::NativeModule::JumpTablesRef", align 8 ; 6 uses
  %22 = alloca %"class.std::vector.308", align 8  ; 11 uses
  %23 = alloca %"class.std::vector.308", align 8  ; 10 uses
  %i.a = alloca [20 x i8], align 16               ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %.sroa.22.0118.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.22.0118.i.be, %.backedge.backedge ] ; 7 uses
  %.sroa.12.0117.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.12.0117.i.be, %.backedge.backedge ] ; 8 uses
  %.sroa.072.0116.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.072.0116.i.be, %.backedge.backedge ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.or = load ptr, ptr %10, align 8, !noalias !51 ; 4 uses
  %.pre126.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 923), align 1, !range !10, !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i64 16, i1 false)
  %i.os = trunc nuw i8 %.pre126.i.i to i1
  br i1 %i.os, label %bb.bs, label %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i

end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.px = ptrtoint ptr %i.or to i64
  store i64 %i.px, ptr %i.pw, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.12.0117.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

bb.bw:                                            ; preds = %bb.bu
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.qm = ptrtoint ptr %i.or to i64
  store i64 %i.qm, ptr %i.ql, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.072.0116.i, %.sroa.22.0118.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %.sroa.12.1.i = phi ptr [ %.sroa.12.0117.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %.sroa.12.3.i, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %.sroa.12.0117.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ] ; 4 uses
  %.sroa.22.1.i = phi ptr [ %.sroa.22.0118.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %.sroa.22.3.i, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %.sroa.22.0118.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ] ; 4 uses
  %.2.i = phi i64 [ %.013119.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.i ], [ %i.pv, %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ], [ %.013119.i, %_ZN2v88internal4wasm24NativeModuleDeserializer8ReadCodeEiPNS1_12_GLOBAL__N_16ReaderE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.rq = add nuw i32 %.0120.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.rq, %i.ih
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.backedge.backedge
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(8) %i.rr) #24, !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.rv = add nuw i32 %.0120.i, 1                 ; 2 uses
  %exitcond.not.i164 = icmp eq i32 %i.rv, %i.ih
  br i1 %exitcond.not.i164, label %._crit_edge.thread.i, label %.backedge.backedge
end_hunk_6
