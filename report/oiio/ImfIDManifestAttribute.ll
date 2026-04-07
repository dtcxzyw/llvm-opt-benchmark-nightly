begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEE16makeNewAttributeEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !9

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEEC2Ev.exit unwind label %bb.b, !inline_history !9

bb.b:                                             ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.a) #15, !inline_history !9
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEEC2Ev.exit: ; preds = %.noexc
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEE4copyEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !9

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEEC2Ev.exit unwind label %bb.b, !inline_history !9

bb.b:                                             ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.a) #15, !inline_history !9
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEEC2Ev.exit: ; preds = %.noexc
end_hunk_1
begin_hunk_2_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEE12writeValueToERNS_7OStreamEi:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = load i32, ptr %i.b, align 8, !tbaa !19
  %i.k = load ptr, ptr %1, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.i, i32 noundef %i.j), !inline_history !20
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEE13readValueFromERNS_7IStreamEii:bb.a
  %i.f = add nsw i64 %i.e, -8                     ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.g, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.j) #15
  store ptr null, ptr %i.i, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEE13readValueFromERNS_7IStreamEii:bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !21 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !10
  %i.q = call noalias ptr @malloc(i64 noundef %i.f) #19 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !18
  %i.r = load i32, ptr %i.h, align 8, !tbaa !19
  %i.s = load ptr, ptr %1, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.q, i32 noundef %i.r), !inline_history !22 ; 0 uses
  ret void
}

end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC1Ev
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = distinct !{null}
!10 = !{!11, !14, i64 16}
!11 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_20CompressedIDManifestEEE", !12, i64 0, !13, i64 8}
!12 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59AttributeE"}
!13 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestE", !4, i64 0, !14, i64 8, !15, i64 16}
!14 = !{!"long", !5, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = distinct !{null, null, null}
!18 = !{!11, !15, i64 24}
!19 = !{!11, !4, i64 8}
!20 = distinct !{null, null}
!21 = distinct !{null, null, null}
!22 = distinct !{null, null}
end_hunk_5
