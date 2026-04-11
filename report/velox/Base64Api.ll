inline.NumInlined: 10
inline.NumDeleted: 10
begin_hunk_0_@_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc:bb.a
  br i1 %i.aoo, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.023.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.s, %middle.block ], [ %i.aol, %.lr.ph.i ] ; 6 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.q, %middle.block ], [ %i.aok, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i64 [ %i.c, %bb.a ], [ %i.anh, %middle.block ], [ %i.aon, %.lr.ph.i ]
  %i.aop = icmp eq ptr %.0.lcssa.i, %1
end_hunk_0
begin_hunk_1_@_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc:bb.a
  %i.aos = zext nneg i8 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aos
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !18
  %i.aov = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 1 ; 2 uses
  store i8 %i.aou, ptr %.023.lcssa.i, align 1, !tbaa !18
  %i.aow = icmp eq i64 %.lcssa.i, 1
  br i1 %i.aow, label %bb.c, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc:bb.a
  %i.aoz = zext nneg i8 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 16, !tbaa !18
  %3 = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 2
  store i8 %i.apb, ptr %i.aov, align 1, !tbaa !18
  br label %_ZN5folly6detail13base64_detail16Base64ScalarImplILb1EE6encodeEPKcS5_Pc.exit

bb.d:                                             ; preds = %bb.b
  %i.apc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
end_hunk_2
begin_hunk_3_@_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc:bb.a
  %i.apk = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apj
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !18
  %i.apm = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 2
  store i8 %i.apl, ptr %i.aov, align 1, !tbaa !18
  %i.apn = zext nneg i8 %i.api to i64
  %i.apo = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apn
  %i.app = load i8, ptr %i.apo, align 4, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 3
  store i8 %i.app, ptr %i.apm, align 1, !tbaa !18
  br label %_ZN5folly6detail13base64_detail16Base64ScalarImplILb1EE6encodeEPKcS5_Pc.exit

_ZN5folly6detail13base64_detail16Base64ScalarImplILb1EE6encodeEPKcS5_Pc.exit: ; preds = %bb.d, %bb.c, %._crit_edge.i
  %.1.i.i = phi ptr [ %.023.lcssa.i, %._crit_edge.i ], [ %3, %bb.c ], [ %4, %bb.d ]
  ret ptr %.1.i.i
}

end_hunk_3
