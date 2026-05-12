inline.NumInlined: 2402
inline.NumDeleted: 1167
begin_hunk_0_@_ZN2v812HeapProfiler16TakeHeapSnapshotERKNS0_19HeapSnapshotOptionsE
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
bb.a:
  %1 = alloca %"class.node::DiagnosticFilename", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"struct.v8::HeapProfiler::HeapSnapshotOptions", align 16 ; 5 uses
  %6 = alloca %"class.node::BufferValue", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %8 = alloca %"struct.v8::HeapProfiler::HeapSnapshotOptions", align 16 ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = tail call noundef zeroext i1 @_ZNK2v85Value12IsUint8ArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ad) #27, !noalias !42
  br i1 %i.ae, label %_ZN4node4heap22GetHeapSnapshotOptionsEN2v85LocalINS1_5ValueEEE.exit, label %bb.e, !prof !29

end_hunk_1
begin_hunk_2_@_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
  %i.ag = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.af) #27, !noalias !42
  %i.ah = tail call noundef i64 @_ZN2v815ArrayBufferView10ByteOffsetEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ad) #27, !noalias !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !42
  %.not.i38 = icmp ne i8 %i.aj, 0
  %i.ak = zext i1 %.not.i38 to i32                ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.bx = load ptr, ptr %1, align 8
  store <2 x ptr> splat (ptr null), ptr %5, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.an, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_3
begin_hunk_4_@_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
.critedge30:                                      ; preds = %bb.m, %bb.n, %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.db = load ptr, ptr %i.co, align 8
  store <2 x ptr> splat (ptr null), ptr %8, align 16
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx55, align 16
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.an, ptr %.sroa.6.0..sroa_idx57, align 4
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %8, i64 24
end_hunk_4
begin_hunk_5_@_ZN4node4heap19TriggerHeapSnapshotERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
  br label %bb.r

bb.r:                                             ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %_ZN4node18DiagnosticFilenameD2Ev.exit
  ret void
}

end_hunk_5
