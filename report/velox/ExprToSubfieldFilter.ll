inline.NumInlined: 6844
inline.NumDeleted: 2832
begin_hunk_0_@_ZNK8facebook5velox6common18FloatingPointRangeIfE13testingEqualsERKNS1_6FilterE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = fptrunc double %1 to float               ; 5 uses
  %i.b = fcmp uno float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6common18FloatingPointRangeIfE9mergeWithEPKNS1_6FilterE:bb.a
  br i1 %i.bn, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = fcmp uno float %i.au, 0.000000e+00
  br i1 %i.bo, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit, label %bb.n

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox6common18FloatingPointRangeIfE9mergeWithEPKNS1_6FilterE:bb.a
  br i1 %i.bj, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread56, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread

_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread56: ; preds = %bb.s, %bb.q, %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit
  %3 = fpext float %i.au to double
  %i.bz = load ptr, ptr %2, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox6common18FloatingPointRangeIfE9mergeWithEPKNS1_6FilterE:bb.a
  br i1 %i.cg, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit19.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread
  %i.ch = fcmp uno float %i.ba, 0.000000e+00
  br i1 %i.ch, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit19, label %bb.u

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox6common18FloatingPointRangeIfE9mergeWithEPKNS1_6FilterE:bb.a
  br i1 %i.cz, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit19.thread59, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit19.thread

_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit19.thread59: ; preds = %bb.z, %bb.x, %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit19
  %4 = fpext float %i.ba to double
  %i.da = load ptr, ptr %2, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load ptr, ptr %i.db, align 8
end_hunk_4
