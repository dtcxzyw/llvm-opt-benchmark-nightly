inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEE16makeNewAttributeEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEEE, i64 16), ptr %i.a, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEE4copyEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEEE, i64 16), ptr %i.a, align 8, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEE12writeValueToERNS_7OStreamEi:bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11
  %i.d = trunc i32 %i.c to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.d, ptr %i.a, align 1, !tbaa !14
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEE13readValueFromERNS_7IStreamEii:bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i32 noundef 1) ; 0 uses
  %i.f = load i8, ptr %i.a, align 1, !tbaa !14
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !11
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEE13copyValueFromERKNS_9AttributeE:bb.a
!11 = !{!12, !10, i64 8}
!12 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_6EnvmapEEE", !13, i64 0, !10, i64 8}
!13 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59AttributeE"}
!14 = !{!5, !5, i64 0}
end_hunk_4
