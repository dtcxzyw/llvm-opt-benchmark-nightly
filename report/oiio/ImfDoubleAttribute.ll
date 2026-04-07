begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIdE16makeNewAttributeEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c, !inline_history !14

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIdEE, i64 16), ptr %i.a, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIdE4copyEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.e, !inline_history !14

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIdEE, i64 16), ptr %i.a, align 8, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIdE12writeValueToERNS_7OStreamEi:bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIdE13readValueFromERNS_7IStreamEii:bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !16 ; 0 uses
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute23unRegisterAttributeTypeEPKc
!11 = !{!12, !10, i64 8}
!12 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIdEE", !13, i64 0, !10, i64 8}
!13 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59AttributeE"}
!14 = distinct !{null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null, null}
end_hunk_4
