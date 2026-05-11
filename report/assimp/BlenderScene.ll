inline.NumInlined: 5803
inline.NumDeleted: 1917
begin_hunk_0_@_ZNSt15_Sp_counted_ptrIPN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi0EEclINS0_10CustomDataEEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp7Blender9Structure19_defaultInitializerILi0EEclINS0_10CustomDataEEEvRT_PKc:bb.a

_ZN6Assimp7Blender10CustomDataD2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender15CustomDataLayerEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, i8 0, i64 180, i1 false)
  ret void
}

end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN6Assimp7Blender15CustomDataLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi1EEclINS0_10CustomDataEEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp7Blender9Structure19_defaultInitializerILi1EEclINS0_10CustomDataEEEvRT_PKc:bb.a

_ZN6Assimp7Blender9Structure19_defaultInitializerILi0EEclINS0_10CustomDataEEEvRT_PKc.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender15CustomDataLayerEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(180) %i.ad, i8 0, i64 180, i1 false)
  ret void
}

end_hunk_3
