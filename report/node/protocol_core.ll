inline.NumInlined: 639
inline.NumDeleted: 371
begin_hunk_0_@_ZN8v8_crdtp18ProtocolTypeTraitsISt10unique_ptrINS_15DeferredMessageESt14default_deleteIS2_EEvE11DeserializeEPNS_17DeserializerStateEPS5_:bb.a
  br label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.i = tail call { ptr, i64 } @_ZNK8v8_crdtp4cbor13CBORTokenizer11GetEnvelopeEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #17 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15
end_hunk_1
