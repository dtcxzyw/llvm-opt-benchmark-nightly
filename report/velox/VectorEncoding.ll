inline.NumInlined: 532
inline.NumDeleted: 290
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSD_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_:bb.a
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #27 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEE14eraseBlankColdEPSH_NS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSJ_RSO_RSQ_ESR_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.g, !inline_history !122

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSJ_RSO_RSQ_ESR_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.f
  tail call void @__cxa_end_catch()
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !123
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.b

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv:bb.a
_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !126

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEEEvPT_.exit.i.i
  %.pre = load i64, ptr %i.f, align 8, !tbaa !17
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESM_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESR_ImmERKT_DpOT0_:bb.a
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %i.cv = and i16 %i.cu, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.cv, 4095
  br i1 %.not71, label %bb.j, label %bb.l, !llvm.loop !127

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.cw = extractelement <16 x i8> %i.cs, i64 14
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESM_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_:bb.a
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #27 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEE14eraseBlankColdEPSH_NS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSJ_RSO_RSQ_ESR_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i unwind label %bb.g, !inline_history !122

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox14VectorEncoding6SimpleEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSJ_RSO_RSQ_ESR_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i: ; preds = %bb.f
  tail call void @__cxa_end_catch()
end_hunk_4
begin_hunk_5_@llvm.cttz.i16
!119 = !{!48, !48, i64 0}
!120 = !{!121, !73, i64 16}
!121 = !{!"_ZTSSt4pairIN5folly3f146detail11F14ItemIterIPNS2_8F14ChunkIjEEEEbE", !47, i64 0, !73, i64 16}
!122 = distinct !{null}
!123 = !{!124, !5, i64 15}
!124 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !125, i64 0, !5, i64 15}
!125 = !{!"_ZTSSt5arrayIhLm15EE", !5, i64 0}
!126 = distinct !{!126, !26}
!127 = distinct !{!127, !26}
end_hunk_5
