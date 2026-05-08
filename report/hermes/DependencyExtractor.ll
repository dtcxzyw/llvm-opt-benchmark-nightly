inline.NumInlined: 4272
inline.NumDeleted: 1976
begin_hunk_0_@_ZN6hermes12_GLOBAL__N_119DependencyExtractor5visitEPNS_6ESTree28TaggedTemplateExpressionNodeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ac = trunc i64 %.sroa.4.0.copyload.i to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes12_GLOBAL__N_119DependencyExtractor13addDependencyEN4llvh9StringRefENS_14DependencyKindE.exit, %bb.e
end_hunk_0
begin_hunk_1_@_ZN6hermes12_GLOBAL__N_119DependencyExtractor5visitEPNS_6ESTree28TaggedTemplateExpressionNodeE:bb.a
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  store i64 0, ptr %6, align 8
  store i64 128, ptr %i.r, align 8
  %i.ak = call noundef i32 @_ZN6hermes5regex18searchWithBytecodeEN4llvh8ArrayRefIhEEPKcjjPSt6vectorINS0_13CapturedRangeESaIS7_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE(ptr %i.af, i64 %i.aj, ptr noundef %.sroa.02.0.copyload.i, i32 noundef %.0.i.i, i32 noundef %i.ac, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull byval(%"class.hermes::StackOverflowGuard") align 8 %6) #15
  %.not.i.i = icmp eq i32 %i.ak, 0
  %i.al = load ptr, ptr %5, align 8, !tbaa !1293  ; 5 uses
end_hunk_1
