inline.NumInlined: 389
inline.NumDeleted: 145
begin_hunk_0_@_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb
define internal fastcc { i64, i32 } @_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %4 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 11 uses
  %6 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 9223372036854775807, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 -9223372036854775808, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !24
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i.i, 9223372036854775807
  br i1 %i.a, label %bb.b, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb:bb.a

.thread4:                                         ; preds = %bb.g, %bb.e, %bb.i, %bb.c, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.l

_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb:bb.a
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !68
  %i.ah = icmp slt i8 %i.ae, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.ah, label %bb.w, label %bb.l

bb.l:                                             ; preds = %.thread4, %_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, %bb.a
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %0, align 8, !tbaa !24 ; 2 uses
  %.sroa.0.0.copyload.i2.i36 = load i64, ptr %4, align 8, !tbaa !24
  %i.ai = icmp eq i64 %.sroa.0.0.copyload.i.i35, %.sroa.0.0.copyload.i2.i36
  br i1 %i.ai, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
end_hunk_2
