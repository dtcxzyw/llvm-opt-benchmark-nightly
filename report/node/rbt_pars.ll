inline.NumInlined: 292
inline.NumDeleted: 91
begin_hunk_0_@_ZN6icu_7820TransliteratorParser10parseRulesERKNS_13UnicodeStringE15UTransDirectionR10UErrorCode:bb.a
bb.d:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 10 uses
  store i32 %2, ptr %i.s, align 8
end_hunk_0
begin_hunk_1_@_ZN6icu_7820TransliteratorParser10parseRulesERKNS_13UnicodeStringE15UTransDirectionR10UErrorCode:bb.a
  %i.gh = and i16 %i.gf, 30
  %storemerge.i = select i1 %.not.i, i16 %i.gh, i16 2
  store i16 %storemerge.i, ptr %i.aq, align 8
  %i.gi = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 1168) #14 ; 4 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.az, label %bb.ba

end_hunk_1
begin_hunk_2_@_ZN6icu_7820TransliteratorParser10parseRulesERKNS_13UnicodeStringE15UTransDirectionR10UErrorCode:bb.a
  %i.gk = load ptr, ptr %i.an, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %i.gi, ptr %i.gl, align 8
  %8 = load ptr, ptr %i.r, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 1162
  store i16 -4096, ptr %i.gm, align 2
  %i.gn = load i32, ptr %i.j, align 8
  %i.go = icmp eq i32 %i.gn, 0
end_hunk_2
