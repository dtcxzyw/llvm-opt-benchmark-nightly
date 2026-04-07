inline.NumInlined: 64
inline.NumDeleted: 40
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16makeNewAttributeEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.a, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4copyEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.a, align 8, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12writeValueToERNS_7OStreamEi:bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13readValueFromERNS_7IStreamEii:bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1
end_hunk_3
begin_hunk_4_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
!18 = !{!5, !5, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
end_hunk_4
