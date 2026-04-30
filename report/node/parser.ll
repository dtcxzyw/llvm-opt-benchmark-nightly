inline.NumInlined: 10283
inline.NumDeleted: 2685
begin_hunk_0_@_ZN2v88internal6Parser21DeserializeScopeChainINS0_7IsolateEEEvPT_PNS0_9ParseInfoENS0_17MaybeDirectHandleINS0_9ScopeInfoEEENS0_5Scope19DeserializationModeE:bb.a
  %i.n = lshr i32 %i.b, 21
  %.lobit.i = and i32 %i.n, 1
  %i.o = xor i32 %.lobit.i, 1
  %i.p = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.q = add i64 %i.m, 216
  store i64 %i.q, ptr %i.i, align 8
  tail call void @_ZN2v88internal16DeclarationScopeC1EPNS0_4ZoneEPNS0_15AstValueFactoryENS0_8REPLModeE(ptr noundef nonnull align 8 dereferenceable(216) %i.p, ptr noundef nonnull %i.d, ptr noundef %i.f, i32 noundef %i.o) #20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.s, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal6Parser21DeserializeScopeChainINS0_7IsolateEEEvPT_PNS0_9ParseInfoENS0_17MaybeDirectHandleINS0_9ScopeInfoEEENS0_5Scope19DeserializationModeE:bb.a
bb.c:                                             ; preds = %_ZN2v88internal6Parser25InitializeEmptyScopeChainEPNS0_9ParseInfoE.exit
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load i64, ptr %3, align 8
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = tail call noundef ptr @_ZN2v88internal5Scope21DeserializeScopeChainINS0_7IsolateEEEPS1_PT_PNS0_4ZoneENS0_6TaggedINS0_9ScopeInfoEEEPNS0_16DeclarationScopeEPNS0_15AstValueFactoryENS1_19DeserializationModeEPNS0_9ParseInfoE(ptr noundef %1, ptr noundef %i.t, i64 %i.u, ptr noundef nonnull %i.p, ptr noundef %i.v, i32 noundef %4, ptr noundef nonnull %2) #20 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8
  %i.x = tail call noundef ptr @_ZN2v88internal5Scope16GetReceiverScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.w) #20 ; 2 uses
  %i.y = tail call noundef zeroext i1 @_ZNK2v88internal5Scope24HasReceiverToDeserializeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.x) #20
end_hunk_1
begin_hunk_2_@_ZN2v88internal6Parser21DeserializeScopeChainINS0_12LocalIsolateEEEvPT_PNS0_9ParseInfoENS0_17MaybeDirectHandleINS0_9ScopeInfoEEENS0_5Scope19DeserializationModeE:bb.a
  %i.n = lshr i32 %i.b, 21
  %.lobit.i = and i32 %i.n, 1
  %i.o = xor i32 %.lobit.i, 1
  %i.p = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.q = add i64 %i.m, 216
  store i64 %i.q, ptr %i.i, align 8
  tail call void @_ZN2v88internal16DeclarationScopeC1EPNS0_4ZoneEPNS0_15AstValueFactoryENS0_8REPLModeE(ptr noundef nonnull align 8 dereferenceable(216) %i.p, ptr noundef nonnull %i.d, ptr noundef %i.f, i32 noundef %i.o) #20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.s, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal6Parser21DeserializeScopeChainINS0_12LocalIsolateEEEvPT_PNS0_9ParseInfoENS0_17MaybeDirectHandleINS0_9ScopeInfoEEENS0_5Scope19DeserializationModeE:bb.a
bb.c:                                             ; preds = %_ZN2v88internal6Parser25InitializeEmptyScopeChainEPNS0_9ParseInfoE.exit
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load i64, ptr %3, align 8
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = tail call noundef ptr @_ZN2v88internal5Scope21DeserializeScopeChainINS0_12LocalIsolateEEEPS1_PT_PNS0_4ZoneENS0_6TaggedINS0_9ScopeInfoEEEPNS0_16DeclarationScopeEPNS0_15AstValueFactoryENS1_19DeserializationModeEPNS0_9ParseInfoE(ptr noundef %1, ptr noundef %i.t, i64 %i.u, ptr noundef nonnull %i.p, ptr noundef %i.v, i32 noundef %4, ptr noundef nonnull %2) #20 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8
  %i.x = tail call noundef ptr @_ZN2v88internal5Scope16GetReceiverScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.w) #20 ; 2 uses
  %i.y = tail call noundef zeroext i1 @_ZNK2v88internal5Scope24HasReceiverToDeserializeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.x) #20
end_hunk_3
