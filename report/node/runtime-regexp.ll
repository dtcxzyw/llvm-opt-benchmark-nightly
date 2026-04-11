inline.NumInlined: 3452
inline.NumDeleted: 1065
begin_hunk_0_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
  %20 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 11 uses
  %21 = alloca %"class.v8::internal::DirectHandleSmallVector.628", align 8 ; 23 uses
  %22 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 9 uses
  %23 = alloca %"class.v8::internal::DirectHandleSmallVector.630", align 8 ; 12 uses
  %24 = alloca %"class.v8::internal::(anonymous namespace)::VectorBackedMatch", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 53 uses
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
  %i.aqe = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aqf = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.aqg = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.aqk = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
  %i.arf = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.arh = getelementptr inbounds nuw i8, ptr %24, i64 56
  br label %bb.gy

bb.gx:                                            ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit8
end_hunk_2
begin_hunk_3_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
  %.3.i122 = phi i32 [ %..i123, %bb.hl ], [ %.1.i121, %bb.hn ], [ 0, %bb.hm ]
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.aaf, i32 %.3.i122) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqk, i8 0, i64 56, i1 false)
  store ptr %i.aqg, ptr %23, align 8
  store ptr %i.aqj, ptr %i.aqi, align 8
  store ptr %i.aqk, ptr %i.aqh, align 8
  %i.awi = ptrtoint ptr %.sroa.07.0.i100755 to i64
  store i64 %i.awi, ptr %i.aqg, align 8
  %.not.i859 = icmp ugt i32 %.3.i, 1
end_hunk_3
begin_hunk_4_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
.critedge372.i:                                   ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134, %.critedge368.i
  %.sroa.0208.0 = phi ptr [ %.sroa.0.0.i129767, %.critedge368.i ], [ %i.awz, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134 ], [ %.sroa.0.0.i129767, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133 ]
  %i.axb = load ptr, ptr %i.aqh, align 8          ; 2 uses
  %i.axc = load ptr, ptr %i.aqi, align 8
  %i.axd = icmp eq ptr %i.axb, %i.axc
  br i1 %i.axd, label %bb.hp, label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit, !prof !30

end_hunk_4
begin_hunk_5_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a

bb.ht:                                            ; preds = %.critedge374.i
  %i.ayp = load ptr, ptr %i.aqh, align 8          ; 2 uses
  %i.ayq = load ptr, ptr %23, align 8             ; 8 uses
  %i.ayr = ptrtoint ptr %i.ayp to i64
  %i.ays = ptrtoint ptr %i.ayq to i64             ; 2 uses
  %i.ayt = sub i64 %i.ayr, %i.ays                 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
.critedge380.i:                                   ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, %bb.hy
  %.sroa.0200.0 = phi ptr [ %.sroa.0.0.i143778, %bb.hy ], [ %i.bbn, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit ], [ %.sroa.0.0.i143778, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.bbp = load ptr, ptr %23, align 8             ; 2 uses
  %i.bbq = load ptr, ptr %i.aqh, align 8
  %i.bbr = ptrtoint ptr %i.bbq to i64
  %i.bbs = ptrtoint ptr %i.bbp to i64
end_hunk_6
