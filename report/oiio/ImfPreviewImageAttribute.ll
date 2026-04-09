inline.NumInlined: 35
inline.NumDeleted: 14
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE13readValueFromERNS_7IStreamEii:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit unwind label %bb.k ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit: ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE13readValueFromERNS_7IStreamEii:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.an, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29 unwind label %bb.k ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE13readValueFromERNS_7IStreamEii:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30 unwind label %bb.k ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE13readValueFromERNS_7IStreamEii:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit31 unwind label %bb.k ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit31: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

bb.k:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit, %.lr.ph
  %i.bc = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageC1EjjPKNS_11PreviewRgbaE
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{null, null, null}
!27 = distinct !{!27, !25}
end_hunk_4
