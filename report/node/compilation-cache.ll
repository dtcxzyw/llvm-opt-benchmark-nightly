begin_hunk_0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.b, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %bb.e

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
end_hunk_1
begin_hunk_2
  ret ptr %.sroa.04.0
}

declare ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal22CompilationCacheRegExp8GetTableEi(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
end_hunk_2
begin_hunk_3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.d, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.c, align 8
  br label %bb.e
end_hunk_3
begin_hunk_4
  br i1 %i.n, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.d) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
end_hunk_4
begin_hunk_5
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal22CompilationCacheRegExp3AgeEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_5
begin_hunk_6
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal22CompilationCacheScript3AgeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.016.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
end_hunk_6
begin_hunk_7
  br i1 %switch.i.i, label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit
  tail call void @_ZN2v88internal21CompilationCacheTable11RemoveEntryENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 %.sroa.016.034) #6
  br label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.c, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread
end_hunk_7
begin_hunk_8
  ret void
}

declare void @_ZN2v88internal21CompilationCacheTable11RemoveEntryENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal28CompilationCacheEvalOrScript7IterateEPNS0_11RootVisitorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
end_hunk_8
begin_hunk_9
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 4, ptr noundef null, i64 %i.b) #6
  ret void
}

end_hunk_9
begin_hunk_10
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 4, ptr noundef null, i64 %i.b, i64 %i.d) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal28CompilationCacheEvalOrScript5ClearEv(ptr noundef nonnull align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 648
end_hunk_10
begin_hunk_11
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.d, i64 2, ptr nonnull %i.a) #6, !srcloc !6 ; 0 uses
  ret void
}

end_hunk_11
begin_hunk_12
  %i.f = add i64 %.sroa.04.0.copyload, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %1, align 8
  tail call void @_ZN2v88internal21CompilationCacheTable6RemoveENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 %i.h) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN2v88internal21CompilationCacheTable6RemoveENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22CompilationCacheScript6LookupENS0_6HandleINS0_6StringEEERKNS0_13ScriptDetailsE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::CompilationCacheScriptLookupResult") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #1 align 2 {
end_hunk_12
begin_hunk_13
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.b, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_13
begin_hunk_14
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.d, %bb.c
end_hunk_14
begin_hunk_15
_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit: ; preds = %bb.b, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.sroa.04.0.i = phi ptr [ %i.f, %bb.b ], [ %.0.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  %i.p = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal21CompilationCacheTable12LookupScriptENS0_12DirectHandleIS1_EENS0_6HandleINS0_6StringEEERKNS0_13ScriptDetailsEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.v8::internal::CompilationCacheScriptLookupResult") align 8 %0, ptr %.sroa.04.0.i, ptr %2, ptr noundef nonnull align 1 %3, ptr noundef %i.p) #6
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.e
end_hunk_15
begin_hunk_16

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 7592
  %i.x = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #6
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit

_ZN2v88internal12StatsCounter9IncrementEi.exit:   ; preds = %bb.f, %bb.g
end_hunk_16
begin_hunk_17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 58736
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i64, ptr %.sroa.0.0.copyload.i6, align 8
  tail call void @_ZN2v88internal12V8FileLogger21CompilationCacheEventEPKcS3_NS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ad, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 %i.ae) #6
  br label %bb.k

_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.e
end_hunk_17
begin_hunk_18

bb.i:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 7640
  %i.ai = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #6
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit10

_ZN2v88internal12StatsCounter9IncrementEi.exit10: ; preds = %_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.i
end_hunk_18
begin_hunk_19

bb.j:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 7616
  %i.aq = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap) #6
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit13

_ZN2v88internal12StatsCounter9IncrementEi.exit13: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.j
end_hunk_19
begin_hunk_20
  ret void
}

declare void @_ZN2v88internal21CompilationCacheTable12LookupScriptENS0_12DirectHandleIS1_EENS0_6HandleINS0_6StringEEERKNS0_13ScriptDetailsEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.v8::internal::CompilationCacheScriptLookupResult") align 8, ptr, ptr, ptr noundef nonnull align 1, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12V8FileLogger21CompilationCacheEventEPKcS3_NS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22CompilationCacheScript3PutENS0_6HandleINS0_6StringEEENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #1 align 2 {
end_hunk_20
begin_hunk_21
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.b, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_21
begin_hunk_22
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.d, %bb.c
end_hunk_22
begin_hunk_23
_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit: ; preds = %bb.b, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.sroa.04.0.i = phi ptr [ %i.f, %bb.b ], [ %.0.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  %i.p = load ptr, ptr %0, align 8
  %i.q = tail call ptr @_ZN2v88internal21CompilationCacheTable9PutScriptENS0_6HandleIS1_EENS2_INS0_6StringEEENS0_11MaybeHandleINS0_10FixedArrayEEENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr %.sroa.04.0.i, ptr %1, ptr null, ptr %2, ptr noundef %i.p) #6
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.a, align 8
  ret void
}

declare ptr @_ZN2v88internal21CompilationCacheTable9PutScriptENS0_6HandleIS1_EENS2_INS0_6StringEEENS0_11MaybeHandleINS0_10FixedArrayEEENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr, ptr, ptr, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20CompilationCacheEval10UpdateEvalENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEENS0_12LanguageModeEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
end_hunk_23
begin_hunk_24
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.b, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_24
begin_hunk_25
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.d, %bb.c
end_hunk_25
begin_hunk_26

_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit: ; preds = %bb.b, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.sroa.04.0.i = phi ptr [ %i.f, %bb.b ], [ %.0.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  tail call void @_ZN2v88internal21CompilationCacheTable10UpdateEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEENS0_12LanguageModeEi(ptr %.sroa.04.0.i, ptr %1, ptr %2, ptr %3, i1 noundef zeroext %4, i32 noundef %5) #6
  ret void
}

declare void @_ZN2v88internal21CompilationCacheTable10UpdateEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEENS0_12LanguageModeEi(ptr, ptr, ptr, ptr, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20CompilationCacheEval6LookupENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_13NativeContextEEENS0_12LanguageModeEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::InfoCellPair") align 8 captures(none) initializes((0, 9), (16, 32)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr %2, ptr %3, ptr %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8
end_hunk_26
begin_hunk_27
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.d, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_27
begin_hunk_28
  br i1 %i.m, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.d) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.d, %bb.c
end_hunk_28
begin_hunk_29

_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit: ; preds = %bb.b, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.sroa.04.0.i = phi ptr [ %i.h, %bb.b ], [ %.0.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  tail call void @_ZN2v88internal21CompilationCacheTable10LookupEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_13NativeContextEEENS0_12LanguageModeEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::InfoCellPair") align 8 %0, ptr %.sroa.04.0.i, ptr %2, ptr %3, ptr %4, i1 noundef zeroext %5, i32 noundef %6) #6
  %i.r = load i64, ptr %i.b, align 8
  %i.s = icmp ne i64 %i.r, 0
  %i.t = load i8, ptr %i.a, align 8, !range !7
end_hunk_29
begin_hunk_30
_ZN2v88internal12StatsCounter9IncrementEi.exit.sink.split: ; preds = %bb.f, %bb.e
  %.sink15 = phi i64 [ 7592, %bb.e ], [ 7616, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink15
  %7 = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #6
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit

_ZN2v88internal12StatsCounter9IncrementEi.exit:   ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit.sink.split, %bb.f, %bb.e
  %.0.i.i11.sink = phi ptr [ %i.aa, %bb.e ], [ %i.ac, %bb.f ], [ %7, %_ZN2v88internal12StatsCounter9IncrementEi.exit.sink.split ]
  %i.ae = atomicrmw add ptr %.0.i.i11.sink, i32 1 monotonic, align 4 ; 0 uses
  ret void
}

declare void @_ZN2v88internal21CompilationCacheTable10LookupEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_13NativeContextEEENS0_12LanguageModeEi(ptr dead_on_unwind writable sret(%"class.v8::internal::InfoCellPair") align 8, ptr, ptr, ptr, ptr, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20CompilationCacheEval3PutENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
end_hunk_30
begin_hunk_31
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.b, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_31
begin_hunk_32
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.d, %bb.c
end_hunk_32
begin_hunk_33

_ZN2v88internal28CompilationCacheEvalOrScript8GetTableEv.exit: ; preds = %bb.b, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.sroa.04.0.i = phi ptr [ %i.f, %bb.b ], [ %.0.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  %i.p = tail call ptr @_ZN2v88internal21CompilationCacheTable7PutEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi(ptr %.sroa.04.0.i, ptr %1, ptr %2, ptr %3, i32 noundef %4) #6
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.a, align 8
  ret void
}

declare ptr @_ZN2v88internal21CompilationCacheTable7PutEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi(ptr, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal22CompilationCacheRegExp6LookupENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2) local_unnamed_addr #1 align 2 {
end_hunk_33
begin_hunk_34
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.j, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  store i64 %i.o, ptr %i.i, align 8
  br label %_ZN2v88internal22CompilationCacheRegExp8GetTableEi.exit
end_hunk_34
begin_hunk_35
  br i1 %i.t, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.j) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.d, %bb.c
end_hunk_35
begin_hunk_36
  %i.y = phi i64 [ %i.o, %bb.b ], [ %.sroa.07.0.copyload.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = tail call ptr @_ZN2v88internal21CompilationCacheTable12LookupRegExpENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr %1, i32 %2) #6
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal19IsRegExpDataWrapperENS0_6TaggedINS0_6ObjectEEE.exit22, label %_ZN2v88internal19IsRegExpDataWrapperENS0_6TaggedINS0_6ObjectEEE.exit22.thread
end_hunk_36
begin_hunk_37
  br i1 %i.au, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.1, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.av = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.am) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.1

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.1: ; preds = %bb.f, %bb.e
end_hunk_37
begin_hunk_38
  br label %_ZN2v88internal22CompilationCacheRegExp8GetTableEi.exit.1

bb.g:                                             ; preds = %_ZN2v88internal19IsRegExpDataWrapperENS0_6TaggedINS0_6ObjectEEE.exit22.thread
  %i.az = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.am, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  store i64 %i.ba, ptr %i.al, align 8
  br label %_ZN2v88internal22CompilationCacheRegExp8GetTableEi.exit.1
end_hunk_38
begin_hunk_39
  %i.bb = phi i64 [ %i.ba, %bb.g ], [ %.sroa.07.0.copyload.i.1, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.1 ]
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = tail call ptr @_ZN2v88internal21CompilationCacheTable12LookupRegExpENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, ptr %1, i32 %2) #6
  %i.bf = load i64, ptr %i.be, align 8            ; 4 uses
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %_ZN2v88internal19IsRegExpDataWrapperENS0_6TaggedINS0_6ObjectEEE.exit22.1, label %_ZN2v88internal19IsRegExpDataWrapperENS0_6TaggedINS0_6ObjectEEE.exit22.thread.1
end_hunk_39
begin_hunk_40
  br i1 %i.ce, label %bb.i, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.cf = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bz) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.h, %bb.i
end_hunk_40
begin_hunk_41

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 7592
  %i.cp = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.co) #6
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit

_ZN2v88internal12StatsCounter9IncrementEi.exit:   ; preds = %bb.k, %bb.l
end_hunk_41
begin_hunk_42

bb.m:                                             ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #6
  %.pre = load ptr, ptr %i.b, align 8
  %.pre83 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
end_hunk_42
begin_hunk_43
  br i1 %i.cx, label %bb.n, label %.thread92, !prof !5

bb.n:                                             ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.cy = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #6
  br label %.thread92

.thread92:                                        ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.n
end_hunk_43
begin_hunk_44

bb.o:                                             ; preds = %_ZN2v88internal19IsRegExpDataWrapperENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 7616
  %i.di = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal19IsRegExpDataWrapperENS0_6TaggedINS0_6ObjectEEE.exit.thread
end_hunk_44
begin_hunk_45

bb.q:                                             ; preds = %bb.p
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #6
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %.thread92, %bb.q, %bb.p
end_hunk_45
begin_hunk_46
  ret ptr %.sroa.047.07997
}

declare ptr @_ZN2v88internal21CompilationCacheTable12LookupRegExpENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE(ptr noundef nonnull align 4 dereferenceable(16), ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22CompilationCacheRegExp3PutENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEENS2_INS0_10RegExpDataEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr %3) local_unnamed_addr #1 align 2 {
end_hunk_46
begin_hunk_47
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.j, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.i, align 8
  br label %bb.e
end_hunk_47
begin_hunk_48
  br i1 %i.t, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.j) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.d, %bb.c
end_hunk_48
begin_hunk_49
bb.e:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, %bb.b
  %.sroa.011.0.i = phi ptr [ %i.n, %bb.b ], [ %.0.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  %i.y = load ptr, ptr %0, align 8
  %i.z = tail call ptr @_ZN2v88internal21CompilationCacheTable9PutRegExpEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEENS4_INS0_10RegExpDataEEE(ptr noundef %i.y, ptr nonnull %.sroa.011.0.i, ptr %1, i32 %2, ptr %3) #6
  %i.aa = load i64, ptr %i.z, align 8
  store i64 %i.aa, ptr %i.i, align 8
  store ptr %i.c, ptr %i.b, align 8
end_hunk_49
begin_hunk_50

bb.f:                                             ; preds = %bb.e
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #6
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.f, %bb.e
end_hunk_50
begin_hunk_51
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @_ZN2v88internal21CompilationCacheTable9PutRegExpEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEENS4_INS0_10RegExpDataEEE(ptr noundef, ptr, ptr, i32, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16CompilationCache6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr readonly captures(none) %1) local_unnamed_addr #1 align 2 {
end_hunk_51
begin_hunk_52
  %i.m = add i64 %.sroa.04.0.copyload.i, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %1, align 8
  tail call void @_ZN2v88internal21CompilationCacheTable6RemoveENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 %i.o) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit

_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit: ; preds = %bb.b, %bb.c
end_hunk_52
begin_hunk_53
  %i.v = add i64 %.sroa.04.0.copyload.i4, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %1, align 8
  tail call void @_ZN2v88internal21CompilationCacheTable6RemoveENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 %i.x) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit5

_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit5: ; preds = %_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit, %bb.d
end_hunk_53
begin_hunk_54
  %i.ae = add i64 %.sroa.04.0.copyload.i6, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %1, align 8
  tail call void @_ZN2v88internal21CompilationCacheTable6RemoveENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i64 %i.ag) #6
  br label %_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit7

_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit7: ; preds = %bb.e, %_ZN2v88internal28CompilationCacheEvalOrScript6RemoveENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit5, %bb.a
end_hunk_54
begin_hunk_55
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.n, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal20CompilationCacheEval10UpdateEvalENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEENS0_12LanguageModeEi.exit

bb.d:                                             ; preds = %bb.b
end_hunk_55
begin_hunk_56
  br i1 %i.w, label %bb.e, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.n) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i: ; preds = %bb.e, %bb.d
end_hunk_56
begin_hunk_57
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.ad, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal20CompilationCacheEval10UpdateEvalENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEENS0_12LanguageModeEi.exit

bb.h:                                             ; preds = %bb.f
end_hunk_57
begin_hunk_58
  br i1 %i.am, label %bb.i, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i14, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ad) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i14

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i14: ; preds = %bb.i, %bb.h
end_hunk_58
begin_hunk_59

_ZN2v88internal20CompilationCacheEval10UpdateEvalENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEENS0_12LanguageModeEi.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i14, %bb.g, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i, %bb.c
  %.sroa.04.0.i.i16.sink = phi ptr [ %.0.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i ], [ %i.r, %bb.c ], [ %i.ah, %bb.g ], [ %.0.i.i.i15, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i14 ]
  tail call void @_ZN2v88internal21CompilationCacheTable10UpdateEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEENS0_12LanguageModeEi(ptr %.sroa.04.0.i.i16.sink, ptr %1, ptr %2, ptr nonnull %3, i1 noundef zeroext %4, i32 noundef %5) #6
  ret void
}

end_hunk_59
begin_hunk_60
  br i1 %i.z, label %bb.c, label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7TryCastINS0_13NativeContextENS0_7ContextENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.aa = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.u) #6
  br label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7TryCastINS0_13NativeContextENS0_7ContextENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.c
end_hunk_60
begin_hunk_61
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 58736
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @_ZN2v88internal12V8FileLogger21CompilationCacheEventEPKcS3_NS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ao, ptr noundef nonnull @.str, ptr noundef nonnull %.0, i64 %i.af) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
end_hunk_61
begin_hunk_62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 58736
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i64, ptr %3, align 8
  tail call void @_ZN2v88internal12V8FileLogger21CompilationCacheEventEPKcS3_NS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i64 %i.n) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_62
begin_hunk_63
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.q, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal22CompilationCacheScript3PutENS0_6HandleINS0_6StringEEENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit

bb.f:                                             ; preds = %bb.d
end_hunk_63
begin_hunk_64
  br i1 %i.z, label %bb.g, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i: ; preds = %bb.g, %bb.f
end_hunk_64
begin_hunk_65
_ZN2v88internal22CompilationCacheScript3PutENS0_6HandleINS0_6StringEEENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit: ; preds = %bb.e, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i
  %.sroa.04.0.i.i = phi ptr [ %i.u, %bb.e ], [ %.0.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i ]
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = tail call ptr @_ZN2v88internal21CompilationCacheTable9PutScriptENS0_6HandleIS1_EENS2_INS0_6StringEEENS0_11MaybeHandleINS0_10FixedArrayEEENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr %.sroa.04.0.i.i, ptr %1, ptr null, ptr %3, ptr noundef %i.ae) #6
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.p, align 8
  br label %bb.h
end_hunk_65
begin_hunk_66
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.t, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal20CompilationCacheEval3PutENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi.exit

bb.e:                                             ; preds = %bb.c
end_hunk_66
begin_hunk_67
  br i1 %i.ac, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.t) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i: ; preds = %bb.f, %bb.e
end_hunk_67
begin_hunk_68

_ZN2v88internal20CompilationCacheEval3PutENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi.exit: ; preds = %bb.d, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i
  %.sroa.04.0.i.i = phi ptr [ %i.x, %bb.d ], [ %.0.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i ]
  %i.ah = tail call ptr @_ZN2v88internal21CompilationCacheTable7PutEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi(ptr %.sroa.04.0.i.i, ptr %1, ptr %2, ptr nonnull %3, i32 noundef %4) #6
  %i.ai = load i64, ptr %i.ah, align 8
  store i64 %i.ai, ptr %i.s, align 8
  br label %bb.k
end_hunk_68
begin_hunk_69
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %i.al, i32 noundef 64, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %_ZN2v88internal20CompilationCacheEval3PutENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi.exit18

bb.i:                                             ; preds = %bb.g
end_hunk_69
begin_hunk_70
  br i1 %i.au, label %bb.j, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i15, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.av = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.al) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i15

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i15: ; preds = %bb.j, %bb.i
end_hunk_70
begin_hunk_71

_ZN2v88internal20CompilationCacheEval3PutENS0_12DirectHandleINS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi.exit18: ; preds = %bb.h, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i15
  %.sroa.04.0.i.i17 = phi ptr [ %i.ap, %bb.h ], [ %.0.i.i.i16, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i15 ]
  %i.az = tail call ptr @_ZN2v88internal21CompilationCacheTable7PutEvalENS0_12DirectHandleIS1_EENS2_INS0_6StringEEENS2_INS0_18SharedFunctionInfoEEENS2_INS0_10JSFunctionEEEi(ptr %.sroa.04.0.i.i17, ptr %1, ptr %2, ptr nonnull %3, i32 noundef %4) #6
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ak, align 8
  br label %bb.k
end_hunk_71
begin_hunk_72
  %i.bh = add i64 %i.bg, 31
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  tail call void @_ZN2v88internal12V8FileLogger21CompilationCacheEventEPKcS3_NS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.bf, ptr noundef nonnull @.str.4, ptr noundef nonnull %.0, i64 %i.bj) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a
end_hunk_72
begin_hunk_73
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 648
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.t, i64 2, ptr nonnull %i.q) #6, !srcloc !6 ; 0 uses
  ret void
}

end_hunk_73
begin_hunk_74
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 4, ptr noundef null, i64 %i.b) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 4, ptr noundef null, i64 %i.g) #6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 4, ptr noundef null, i64 %i.l) #6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_74
begin_hunk_75
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 4, ptr noundef null, i64 %i.q, i64 %i.s) #6
  ret void
}

end_hunk_75
begin_hunk_76
  br i1 %switch.i.i.i9, label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i11, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i10

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i10: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i7, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i5
  tail call void @_ZN2v88internal21CompilationCacheTable11RemoveEntryENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i64 %.sroa.016.034.i) #6
  br label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i11

_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i11: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i10, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i7, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i3, %bb.f
end_hunk_76
begin_hunk_77
  br i1 %switch.i.i.i24, label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i26, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i25

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i25: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i22, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i20
  tail call void @_ZN2v88internal21CompilationCacheTable11RemoveEntryENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.co, i64 %.sroa.016.034.i16) #6
  br label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i26

_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i26: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i25, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i22, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i18, %bb.h
end_hunk_77
begin_hunk_78
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 648
  %i.u = load i64, ptr %i.t, align 8
  %i.v = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.u, i64 2, ptr nonnull %i.r) #6, !srcloc !6 ; 0 uses
  ret void
}

declare noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_78
