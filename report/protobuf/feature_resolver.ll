begin_hunk_0

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %.critedge68.critedge unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #23
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %common.resume

.critedge68.critedge:                             ; preds = %bb.af
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.critedge68

.critedge69:                                      ; preds = %bb.aj, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @_ZN6google8protobuf8internal28GetEditionFeatureSetDefaultsENS0_7EditionERKNS0_18FeatureSetDefaultsE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.49") align 8 %18, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %common.resume

.critedge68:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit84, %_ZN4absl12lts_202505126StatusD2Ev.exit80, %.critedge68.critedge, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit76, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

end_hunk_3
