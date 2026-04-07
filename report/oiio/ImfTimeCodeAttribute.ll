inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEE16makeNewAttributeEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !9

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_58TimeCodeC1Ev(ptr noundef nonnull align 4 dereferenceable(8) %i.b)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEEC2Ev.exit unwind label %bb.b, !inline_history !9

bb.b:                                             ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.a) #13, !inline_history !9
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEEC2Ev.exit: ; preds = %.noexc
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEE4copyEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !9

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_58TimeCodeC1Ev(ptr noundef nonnull align 4 dereferenceable(8) %i.b)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEEC2Ev.exit unwind label %bb.b, !inline_history !9

bb.b:                                             ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.a) #13, !inline_history !9
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEEC2Ev.exit: ; preds = %.noexc
end_hunk_1
begin_hunk_2_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEE12writeValueToERNS_7OStreamEi:bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.h = call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_58TimeCode8userDataEv(ptr noundef nonnull align 4 dereferenceable(8) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
end_hunk_2
begin_hunk_3_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEE12writeValueToERNS_7OStreamEi:bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEE13readValueFromERNS_7IStreamEii:bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !11 ; 0 uses
  %i.g = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEE13readValueFromERNS_7IStreamEii:bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !11 ; 0 uses
  %i.m = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_58TimeCode11setUserDataEj(ptr noundef nonnull align 4 dereferenceable(8) %i.h, i32 noundef %i.m)
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_58TimeCodeC1Ev
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = distinct !{null}
!10 = distinct !{null, null, null}
!11 = distinct !{null, null, null}
end_hunk_6
