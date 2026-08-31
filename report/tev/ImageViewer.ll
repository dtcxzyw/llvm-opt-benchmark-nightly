Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageViewer?download=true
inline.NumInlined: 16087
inline.NumDeleted: 8272
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 93
begin_hunk_0_@"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEE7__cloneEv"
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_16NS_9allocatorISG_EEFvbEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEEE", i64 16), ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !168
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEEE", i64 16), ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEEclEOb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2348 ; 2 uses
  %.val2 = load i8, ptr %1, align 1, !tbaa !1266, !range !292, !noundef !394 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 1104
  %.val.val = load ptr, ptr %i.b, align 16, !tbaa !184
  %i.c = getelementptr i8, ptr %.val, i64 1248
  %.val.val3 = load ptr, ptr %i.c, align 16, !tbaa !389
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val, i64 497
  store i8 %.val2, ptr %i.d, align 1, !tbaa !393
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val3, i64 192
  store i8 %.val2, ptr %i.e, align 16, !tbaa !395
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1365
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_16"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_16NS_9allocatorISF_EEFvbEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_16"
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_17NS_9allocatorISG_EEFvbEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEEE", i64 16), ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !168
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEEE", i64 16), ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEEclEOb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2350 ; 2 uses
  %.val2 = load i8, ptr %1, align 1, !tbaa !1266, !range !292, !noundef !394 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 1104
  %.val.val = load ptr, ptr %i.b, align 16, !tbaa !184
  %i.c = getelementptr i8, ptr %.val, i64 1256
  %.val.val3 = load ptr, ptr %i.c, align 8, !tbaa !390
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val, i64 498
  store i8 %.val2, ptr %i.d, align 2, !tbaa !396
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val3, i64 192
  store i8 %.val2, ptr %i.e, align 16, !tbaa !395
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1365
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_17"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_17NS_9allocatorISF_EEFvbEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_17"
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110__function6__baseIFvRKN7nanogui5ColorEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_18NS_9allocatorISG_EEFvRKNS5_5ColorEEEENS_22__allocator_destructorINSH_ISN_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEEE", i64 16), ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !168
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEE7__cloneEPNS0_6__baseISL_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEEE", i64 16), ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEEclESK_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #41 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2352 ; 2 uses
  %2 = load <4 x float>, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr i8, ptr %.val, i64 1104
  %.val.val = load ptr, ptr %i.c, align 16, !tbaa !184
  %i.d = getelementptr i8, ptr %.val, i64 1272
  %.val.val4 = load ptr, ptr %i.d, align 8, !tbaa !403
  %i.e = getelementptr i8, ptr %.val.val4, i64 148
  %.sroa.3.8.vec.extract.i.i.i.i = load float, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.val.val, i64 220
  %.val.val4.val = load float, ptr %i.e, align 4, !tbaa !404
  %i.g = insertelement <4 x float> poison, float %.val.val4.val, i64 0
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> zeroinitializer
  %3 = insertelement <4 x float> %2, float 1.000000e+00, i64 3
  %i.i = insertelement <4 x float> %3, float %.sroa.3.8.vec.extract.i.i.i.i, i64 2
  %i.j = fmul <4 x float> %i.h, %i.i
  store <4 x float> %i.j, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1365
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_18"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_18NS_9allocatorISF_EEFvRKNS4_5ColorEEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_18"
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110__function6__baseIFvfEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_19NS_9allocatorISG_EEFvfEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEEE", i64 16), ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !168
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEEE", i64 16), ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEEclEOf"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2354 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 1264
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !397
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 1104
  %.val2 = load float, ptr %1, align 4, !tbaa !10
  %i.e = tail call { <2 x float>, <2 x float> } @_ZNK7nanogui10ColorWheel5colorEv(ptr noundef nonnull align 16 dereferenceable(224) %i.c) ; 2 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.e, 0
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.e, 1
  %i.h = load ptr, ptr %i.d, align 16, !tbaa !184
  %i.i = insertelement <4 x float> poison, float %.val2, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = shufflevector <2 x float> %i.f, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.l = insertelement <4 x float> %i.k, float 1.000000e+00, i64 3
  %i.m = fmul <4 x float> %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 220
  store <4 x float> %i.m, ptr %i.n, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1365
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_19"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_19NS_9allocatorISF_EEFvfEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_19"
}

declare { <2 x float>, <2 x float> } @_ZNK7nanogui10ColorWheel5colorEv(ptr noundef nonnull align 16 dereferenceable(224)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_21NS_9allocatorISG_EEFvvEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEEE", i64 16), ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !168
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEEE", i64 16), ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEEclEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2356 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 1104
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  store i32 0, ptr %i.d, align 4, !tbaa !408
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 760
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !405  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !409  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !410  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i, label %"_ZNSt3__110__function12__alloc_funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEEclB8ne180100Ev.exit", label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.019.i.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !411, !nonnull !394, !noundef !394
  %i.q = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6ButtonE, i64 0) #47
  %i.r = and i64 %.019.i.i.i.i.i, 4294967295
  %i.s = icmp eq i64 %i.r, 0
  %i.t = zext i1 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  store i8 %i.t, ptr %i.u, align 16, !tbaa !395
  %i.v = add nuw i64 %.019.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.v, %i.n
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZNSt3__110__function12__alloc_funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEEclB8ne180100Ev.exit", label %.lr.ph.i.i.i.i.i, !llvm.loop !412

"_ZNSt3__110__function12__alloc_funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_21NS_9allocatorISF_EEFvvEEclB8ne180100Ev.exit": ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 752
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !268
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 105
  store i8 1, ptr %i.y, align 1, !tbaa !324
end_hunk_0
