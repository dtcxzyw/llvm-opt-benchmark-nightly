inline.NumInlined: 1199
inline.NumDeleted: 500
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_112EvalCacheKeyC2ENS0_12DirectHandleINS0_6StringEEENS3_INS0_18SharedFunctionInfoEEENS0_12LanguageModeEi:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal21CompilationCacheTable12LookupRegExpENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_8JSRegExp4FlagEiiEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::(anonymous namespace)::RegExpKey", align 8 ; 9 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
end_hunk_0
begin_hunk_1_@_ZN2v88internal21CompilationCacheTable25EnsureScriptTableCapacityEPNS0_7IsolateENS0_6HandleIS1_EE:bb.a
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = lshr i64 %i.i, 32                        ; 2 uses
  %.not32 = icmp eq i64 %i.j, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.b
  %i.k = tail call ptr @_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE14EnsureCapacityINS0_7IsolateENS0_6HandleEQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleIS9_EEEEET0_IS2_EPS9_SE_iNS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %1, i32 noundef 1, i8 noundef zeroext 0) #15
  br label %bb.d

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.016.033 = phi i64 [ %i.ap, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ 0, %bb.b ] ; 2 uses
  %i.l = load i64, ptr %1, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal21CompilationCacheTable25EnsureScriptTableCapacityEPNS0_7IsolateENS0_6HandleIS1_EE:bb.a
  %i.q = ashr exact i64 %sext.i.i, 29
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q ; 4 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8 ; 3 uses
  %2 = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 10624
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
end_hunk_2
begin_hunk_3_@_ZN2v88internal21CompilationCacheTable25EnsureScriptTableCapacityEPNS0_7IsolateENS0_6HandleIS1_EE:bb.a
  %i.an = and i64 %i.am, -4294967296
  %i.ao = add i64 %i.an, 4294967296
  store atomic volatile i64 %i.ao, ptr %i.al monotonic, align 8
  br label %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal9HashTableINS0_21CompilationCacheTableENS0_21CompilationCacheShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit, %bb.c
  %i.ap = add nuw nsw i64 %.sroa.016.033, 1       ; 2 uses
  %.not = icmp eq i64 %i.ap, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_3
