inline.NumInlined: 440
inline.NumDeleted: 193
begin_hunk_0_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %lsr.iv329 = phi ptr [ %scevgep328.a, %.lr.ph.preheader ], [ %scevgep330, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ] ; 5 uses
  %lsr.iv323 = phi ptr [ %scevgep322, %.lr.ph.preheader ], [ %scevgep324, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ] ; 5 uses
  %i.ae = phi ptr [ %i.ah, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ], [ %.promoted, %.lr.ph.preheader ] ; 3 uses
  %i.af = phi ptr [ %i.ai, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %scevgep331 = getelementptr i8, ptr %lsr.iv329, i64 16
  %i.ag = icmp eq ptr %scevgep331, %.pre214
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit

.lr.ph._ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit_crit_edge: ; preds = %.lr.ph
  %scevgep325 = getelementptr i8, ptr %lsr.iv323, i64 16
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexitsplit, %.lr.ph._ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit_crit_edge
  %.ph301 = phi ptr [ %scevgep325, %.lr.ph._ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit_crit_edge ], [ %.ph301.ph, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexitsplit ]
  %.ph302 = phi ptr [ %.pre214, %.lr.ph._ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit_crit_edge ], [ %.ph302.ph, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexitsplit ]
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.loopexit, %_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit46
end_hunk_1
