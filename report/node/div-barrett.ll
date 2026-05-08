inline.NumInlined: 243
inline.NumDeleted: 76
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_:bb.a

.lr.ph.preheader.i141.lr.ph:                      ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cn
  %.sroa.9234.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.7268.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.7.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i170 = icmp eq i32 %i.cj, 0
  %.sroa.speculated.i169 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.cj)
  %wide.trip.count.i172 = zext i32 %.sroa.speculated.i169 to i64
end_hunk_0
begin_hunk_1_@_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_:bb.a
  br i1 %exitcond.not.i162.3, label %.preheader.i163, label %.lr.ph.i158, !llvm.loop !26

_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit166: ; preds = %.preheader.i163, %.lr.ph18.preheader.i164
  store ptr %i.ay, ptr %11, align 8
  store i32 %i.y, ptr %.sroa.9234.0..sroa_idx235, align 8
  store ptr %i.ad, ptr %12, align 8
  store i32 %i.z, ptr %.sroa.7268.0..sroa_idx269, align 8
  store ptr %i.am, ptr %13, align 8
  store i32 %.sroa.speculated260, ptr %.sroa.7.0..sroa_idx248, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.cm, i32 %i.cj, ptr nonnull %i.cp, i32 %i.c, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %11, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %6, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %12, ptr noundef nonnull byval(%"class.v8::bigint::RWDigits") align 8 %13)
  %i.et = load i32, ptr %i.ar, align 8
  %i.eu = icmp eq i32 %i.et, 1
end_hunk_1
