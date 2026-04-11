inline.NumInlined: 17435
inline.NumDeleted: 4964
begin_hunk_0_@_ZN8facebook5velox9functions7TDigestISaIdEE3addERSt6vectorIsSaIsEEdl:bb.a

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %6 = load double, ptr %i.j, align 8, !tbaa !621 ; 2 uses
  %7 = fcmp olt double %2, %6
  %.sroa.speculated15 = select i1 %7, double %2, double %6
  store double %.sroa.speculated15, ptr %i.j, align 8, !tbaa !856
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %9 = load double, ptr %8, align 8, !tbaa !621   ; 2 uses
  %10 = fcmp olt double %9, %2
  %.sroa.speculated = select i1 %10, double %2, double %9
  store double %.sroa.speculated, ptr %8, align 8, !tbaa !857
  %i.k = uitofp nneg i64 %3 to double             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !848  ; 4 uses
end_hunk_0
