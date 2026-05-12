inline.NumInlined: 76
inline.NumDeleted: 47
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510Compressor13runDecodeStepEPKciN9Imath_3_13BoxINS3_4Vec2IiEEEERS2_:bb.a
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %.not26 = icmp eq ptr %i.c, null
  br i1 %.not26, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.a, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_510Compressor13runDecodeStepEPKciN9Imath_3_13BoxINS3_4Vec2IiEEEERS2_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 %i.i, ptr %i.j, align 8, !tbaa !81
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #20 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.a, %bb.b
  %6 = phi ptr [ %i.k, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.a ], [ %i.c, %bb.b ]
  store ptr %6, ptr %4, align 8, !tbaa !56
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
end_hunk_1
