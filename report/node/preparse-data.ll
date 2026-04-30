inline.NumInlined: 927
inline.NumDeleted: 551
begin_hunk_0_@_ZN2v88internal19PreparseDataBuilder18DataGatheringScope5StartEPNS0_16DeclarationScopeE:bb.a
_ZN2v88internal4Zone3NewINS0_19PreparseDataBuilderEJRPS1_PS3_PSt6vectorIPvSaIS8_EEEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi i64 [ %.pre.i.i, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 3 uses
  %i.p = inttoptr i64 %i.n to ptr                 ; 15 uses
  %i.q = add i64 %i.n, 80
  store i64 %i.q, ptr %i.j, align 8
  store ptr %i.g, ptr %i.p, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal19PreparseDataBuilder18DataGatheringScope5StartEPNS0_16DeclarationScopeE:bb.a
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -4
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.ar, align 8
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 296
  store ptr %i.p, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.p, ptr %i.au, align 8
  ret void
}

end_hunk_1
