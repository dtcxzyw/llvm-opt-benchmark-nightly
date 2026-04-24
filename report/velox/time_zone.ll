inline.NumInlined: 2852
inline.NumDeleted: 1136
begin_hunk_0_@_ZN8facebook5velox4tzdbL8__formatERKNS1_14__continuationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIlSt5ratioILl1ELl1EEEE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit129
  %.0152 = phi i1 [ false, %.lr.ph ], [ %.2.ph, %.loopexit129 ]
  %.sroa.0109.0151 = phi ptr [ %i.d, %.lr.ph ], [ %i.du, %.loopexit129 ] ; 2 uses
  %i.x = load i8, ptr %.sroa.0109.0151, align 1, !tbaa !25 ; 6 uses
  br i1 %.0152, label %bb.c, label %bb.ae

bb.c:                                             ; preds = %bb.b
  switch i8 %i.x, label %bb.z [
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4tzdbL8__formatERKNS1_14__continuationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIlSt5ratioILl1ELl1EEEE:bb.a
  br label %bb.as

.loopexit129:                                     ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.ag, %bb.d, %bb.x, %bb.v
  %.2.ph = phi i1 [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.d ], [ true, %bb.ae ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ false, %bb.ag ], [ false, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0109.0151, i64 1 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.g
  br i1 %i.dv, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit, label %bb.b

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit: ; preds = %.loopexit129
  br i1 %.2.ph, label %.invoke, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorIS9_EET0_T_SE_SD_.exit.thread127

bb.aq:                                            ; preds = %.invoke
  %i.dw = landingpad { ptr, i32 }
end_hunk_1
