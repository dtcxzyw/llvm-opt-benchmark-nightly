inline.NumInlined: 17435
inline.NumDeleted: 4964
begin_hunk_0_@_ZN8facebook5velox9functions7TDigestISaIdEE3addERSt6vectorIsSaIsEEdl:bb.a

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %6 = load <2 x double>, ptr %i.j, align 8, !tbaa !621 ; 3 uses
  %7 = insertelement <2 x double> %6, double %2, i64 0 ; 2 uses
  %8 = insertelement <2 x double> %6, double %2, i64 1
  %9 = fcmp olt <2 x double> %7, %8
  %10 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = select <2 x i1> %9, <2 x double> %10, <2 x double> %6
  store <2 x double> %11, ptr %i.j, align 8, !tbaa !621
  %i.k = uitofp nneg i64 %3 to double             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !848  ; 4 uses
end_hunk_0
