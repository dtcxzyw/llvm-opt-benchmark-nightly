Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SBScriptObject?download=true
begin_hunk_0_@_ZNK4lldb14SBScriptObject7IsValidEv:bb.a
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.m = call noundef zeroext i1 @_ZNK4lldb14SBScriptObjectcvbEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4lldb14SBScriptObjectcvbEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %2 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !28, !alias.scope !68
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !29, !alias.scope !68
  store i8 0, ptr %i.a, align 8, !tbaa !27, !alias.scope !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11, !noalias !68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !30, !noalias !68
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !35, !noalias !68
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !36, !noalias !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !68
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %1, align 8, !tbaa !37, !noalias !68
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %3, ptr %i.g, align 8, !tbaa !39, !noalias !68
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %0) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11, !noalias !68
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr nonnull @__PRETTY_FUNCTION__._ZNK4lldb14SBScriptObjectcvbEv, i64 48, ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %i.i = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.m = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = icmp ne ptr %i.n, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %bb.b ]
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4lldb14SBScriptObject10GetPointerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %2 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !28, !alias.scope !71
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !29, !alias.scope !71
  store i8 0, ptr %i.a, align 8, !tbaa !27, !alias.scope !71
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11, !noalias !71
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !30, !noalias !71
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !35, !noalias !71
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !36, !noalias !71
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !71
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %1, align 8, !tbaa !37, !noalias !71
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %3, ptr %i.g, align 8, !tbaa !39, !noalias !71
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %0) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11, !noalias !71
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr nonnull @__PRETTY_FUNCTION__._ZNK4lldb14SBScriptObject10GetPointerEv, i64 62, ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %i.i = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.m = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4lldb14SBScriptObject11GetLanguageEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %2 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !28, !alias.scope !74
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !29, !alias.scope !74
  store i8 0, ptr %i.a, align 8, !tbaa !27, !alias.scope !74
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11, !noalias !74
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !30, !noalias !74
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !35, !noalias !74
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !36, !noalias !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !74
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %1, align 8, !tbaa !37, !noalias !74
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %3, ptr %i.g, align 8, !tbaa !39, !noalias !74
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %0) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11, !noalias !74
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr nonnull @__PRETTY_FUNCTION__._ZNK4lldb14SBScriptObject11GetLanguageEv, i64 62, ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %i.i = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.m = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZN4lldb14SBScriptObject3refEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12lldb_private12ScriptObjectESt14default_deleteIS1_EED2Ev.exit.a, label %bb.b

_ZNSt10unique_ptrIN12lldb_private12ScriptObjectESt14default_deleteIS1_EED2Ev.exit.a: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10, !noalias !77 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !15, !noalias !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !17, !noalias !77
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN12lldb_private12ScriptObjectESt14default_deleteIS1_EED2Ev.exit.a, %bb.a
  %1 = phi ptr [ %i.b, %_ZNSt10unique_ptrIN12lldb_private12ScriptObjectESt14default_deleteIS1_EED2Ev.exit.a ], [ %i.a, %bb.a ]
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4lldb14SBScriptObject3refEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN4lldb14SBScriptObject3getEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  ret ptr %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #4

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"_ZTSN4lldb14ScriptLanguageE", !6, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJRKPvRN4lldb14ScriptLanguageEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!14 = distinct !{!14, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJRKPvRN4lldb14ScriptLanguageEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!15 = !{!16, !9, i64 0}
!16 = !{!"_ZTSN12lldb_private12ScriptObjectE", !9, i64 0, !11, i64 8}
!17 = !{!16, !11, i64 8}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN12lldb_private12ScriptObjectE", !9, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN4lldb14SBScriptObjectE", !9, i64 0}
!22 = !{!23, !25, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !26, i64 8, !6, i64 16}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !9, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!24, !25, i64 0}
!29 = !{!23, !26, i64 8}
!30 = !{!31, !32, i64 8}
!31 = !{!"_ZTSN4llvm11raw_ostreamE", !32, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !33, i64 40, !34, i64 44}
!32 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!33 = !{!"bool", !6, i64 0}
!34 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!35 = !{!31, !33, i64 40}
!36 = !{!31, !34, i64 44}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !7, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!41 = !{!31, !25, i64 24}
!42 = !{!31, !25, i64 32}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb14SBScriptObjectES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!45 = distinct !{!45, !"_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb14SBScriptObjectES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN12lldb_private5cloneINS_12ScriptObjectEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_: argument 0"}
!48 = distinct !{!48, !"_ZN12lldb_private5cloneINS_12ScriptObjectEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_"}
!49 = !{!50, !47}
!50 = distinct !{!50, !51, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!51 = distinct !{!51, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!52 = !{i64 0, i64 8, !8, i64 8, i64 4, !10}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb14SBScriptObjectES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!55 = distinct !{!55, !"_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb14SBScriptObjectES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN12lldb_private5cloneINS_12ScriptObjectEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_: argument 0"}
!58 = distinct !{!58, !"_ZN12lldb_private5cloneINS_12ScriptObjectEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_"}
!59 = !{!60, !57}
!60 = distinct !{!60, !61, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!61 = distinct !{!61, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!64 = distinct !{!64, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!67 = distinct !{!67, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!70 = distinct !{!70, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!73 = distinct !{!73, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_: argument 0"}
!76 = distinct !{!76, !"_ZN12lldb_private15instrumentation14stringify_argsIJPKN4lldb14SBScriptObjectEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJDnN4lldb14ScriptLanguageEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!79 = distinct !{!79, !"_ZSt11make_uniqueIN12lldb_private12ScriptObjectEJDnN4lldb14ScriptLanguageEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
end_hunk_0
