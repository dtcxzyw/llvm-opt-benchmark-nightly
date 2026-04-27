inline.NumInlined: 3097
inline.NumDeleted: 1440
begin_hunk_0_@_ZN4node10contextifyL27CompileFunctionForCJSLoaderEPNS_11EnvironmentEN2v85LocalINS3_7ContextEEENS4_INS3_6StringEEES8_PbbPNS3_14ScriptCompiler10CachedDataENS4_INS3_6SymbolEEE:bb.a
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !noalias !243
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !noalias !243
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %13 = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32, !noalias !243 ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %13, ptr %12, align 8, !alias.scope !243
  store ptr %13, ptr %14, align 8, !alias.scope !243
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.ak, ptr %i.aj, align 8, !alias.scope !243
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !243
  %i.am = load ptr, ptr %12, align 8
  %i.an = load ptr, ptr %14, align 8
  %i.ao = load ptr, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.ap = ptrtoint ptr %i.an to i64
end_hunk_0
