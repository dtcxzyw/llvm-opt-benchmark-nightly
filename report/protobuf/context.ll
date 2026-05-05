inline.NumInlined: 382
inline.NumDeleted: 175
begin_hunk_0_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %4, align 8, !tbaa !7     ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !7 ; 8 uses
  %i.b = ptrtoint ptr %.val33 to i64              ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i", %.lr.ph.preheader.i.i.i.i.i.i
  %lsr.iv475 = phi ptr [ %scevgep476, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i" ], [ %scevgep, %.lr.ph.preheader.i.i.i.i.i.i ] ; 20 uses
  %lsr.iv = phi i64 [ %lsr.iv.next, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i" ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.042.052.i.i.i.i.i.i = phi ptr [ %12, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i" ], [ %.val, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %scevgep478 = getelementptr i8, ptr %lsr.iv475, i64 -128
  %scevgep492.a = getelementptr i8, ptr %lsr.iv475, i64 -120
  %i.i = load i64, ptr %scevgep492.a, align 8, !tbaa !10
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i..loopexit.loopexit_crit_edge", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i", %bb.c, %.lr.ph.i.i.i.i.i.i
  %scevgep490.a = getelementptr i8, ptr %lsr.iv475, i64 -64 ; 2 uses
  %scevgep489.a = getelementptr i8, ptr %lsr.iv475, i64 -56
  %i.ah = load i64, ptr %scevgep489.a, align 8, !tbaa !10
  %scevgep488.a = getelementptr i8, ptr %lsr.iv475, i64 -32
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.bf, label %.loopexit.loopexitsplitsplitsplit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i.i.i", %bb.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i.i.i"
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.042.052.i.i.i.i.i.i, i64 128
  %scevgep487.a = getelementptr i8, ptr %lsr.iv475, i64 8
  %i.bg = load i64, ptr %scevgep487.a, align 8, !tbaa !10
  %scevgep486.a = getelementptr i8, ptr %lsr.iv475, i64 32
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.ce, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i..loopexit.loopexitsplitsplit_crit_edge", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i", %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i.i.i"
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.042.052.i.i.i.i.i.i, i64 192
  %scevgep485.a = getelementptr i8, ptr %lsr.iv475, i64 64
  %scevgep484.a = getelementptr i8, ptr %lsr.iv475, i64 72
  %i.cf = load i64, ptr %scevgep484.a, align 8, !tbaa !10
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.dd, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i..loopexit.loopexitsplit_crit_edge", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i", %bb.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i.i.i"
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.042.052.i.i.i.i.i.i, i64 256
  %lsr.iv.next = add nsw i64 %lsr.iv, -1          ; 2 uses
  %scevgep476 = getelementptr i8, ptr %lsr.iv475, i64 256
  %i.de = icmp sgt i64 %lsr.iv.next, 1
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.gn, label %.loopexit, label %.thread

.loopexit.loopexitsplitsplitsplit:                ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i.i.i"
  %lsr.iv475.lcssa495 = phi ptr [ %scevgep490.a, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i.i.i" ]
  br label %.loopexit.loopexitsplitsplit

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i..loopexit.loopexitsplitsplit_crit_edge": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i"
  %lsr.iv475.lcssa496 = phi ptr [ %lsr.iv475, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i" ]
  %split501 = phi ptr [ %10, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i" ] ; 0 uses
  br label %.loopexit.loopexitsplitsplit

.loopexit.loopexitsplitsplit:                     ; preds = %.loopexit.loopexitsplitsplitsplit, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i..loopexit.loopexitsplitsplit_crit_edge"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.ph.ph.ph = phi ptr [ %lsr.iv475.lcssa496, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i..loopexit.loopexitsplitsplit_crit_edge" ], [ %lsr.iv475.lcssa495, %.loopexit.loopexitsplitsplitsplit ]
  br label %.loopexit.loopexitsplit

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i..loopexit.loopexitsplit_crit_edge": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i"
  %lsr.iv475.lcssa497 = phi ptr [ %lsr.iv475, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i" ]
  %split495 = phi ptr [ %11, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i" ] ; 0 uses
  %scevgep493 = getelementptr i8, ptr %lsr.iv475.lcssa497, i64 64
  br label %.loopexit.loopexitsplit

end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i..loopexit.loopexit_crit_edge": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i"
  %lsr.iv475.lcssa = phi ptr [ %lsr.iv475, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i" ]
  %split = phi ptr [ %.sroa.042.052.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i" ] ; 0 uses
  %scevgep477 = getelementptr i8, ptr %lsr.iv475.lcssa, i64 -128
  br label %.loopexit.loopexit

end_hunk_7
