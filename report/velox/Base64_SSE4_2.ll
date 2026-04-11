inline.NumInlined: 34
inline.NumDeleted: 26
begin_hunk_0_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  br i1 %i.apl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !44

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit
  %.023.lcssa.i.i = phi ptr [ %.011.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ], [ %i.ap, %middle.block ], [ %i.api, %.lr.ph.i.i ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.0.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ], [ %i.an, %middle.block ], [ %i.aph, %.lr.ph.i.i ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %.lcssa5, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ], [ %i.aoe, %middle.block ], [ %i.apk, %.lr.ph.i.i ]
  %i.apm = icmp eq ptr %.0.lcssa.i.i, %1
end_hunk_0
begin_hunk_1_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.app = zext nneg i8 %i.apo to i64
  %i.apq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.app
  %i.apr = load i8, ptr %i.apq, align 1, !tbaa !18
  %i.aps = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 1
  store i8 %i.apr, ptr %.023.lcssa.i.i, align 1, !tbaa !18
  %i.apt = icmp eq i64 %.lcssa.i.i, 1
  br i1 %i.apt, label %bb.c, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.apw = zext nneg i8 %i.apv to i64
  %i.apx = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apw
  %i.apy = load i8, ptr %i.apx, align 16, !tbaa !18
  br label %3

bb.d:                                             ; preds = %bb.b
  %i.apz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
end_hunk_2
begin_hunk_3_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.aqh = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !18
  %i.aqj = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 2
  %i.aqk = zext nneg i8 %i.aqf to i64
  %i.aql = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqk
  %i.aqm = load i8, ptr %i.aql, align 4, !tbaa !18
  store i8 %i.aqm, ptr %i.aqj, align 1, !tbaa !18
  br label %3

3:                                                ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi i8 [ %i.apy, %bb.c ], [ %i.aqi, %bb.d ]
  %.pn.i.i.i = phi i64 [ 2, %bb.c ], [ 3, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.aps, align 1, !tbaa !18
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 %.pn.i.i.i
  br label %_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc.exit

_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc.exit: ; preds = %._crit_edge.i.i, %3
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %3 ], [ %.023.lcssa.i.i, %._crit_edge.i.i ]
  ret ptr %.1.i.i.i
}

end_hunk_3
