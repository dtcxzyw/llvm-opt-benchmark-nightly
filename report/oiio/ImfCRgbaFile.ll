inline.NumInlined: 409
inline.NumDeleted: 141
begin_hunk_0_@ImfNewRound12logLut:bb.a

bb.j:                                             ; preds = %bb.h
  %i.y = invoke i16 @_ZN27OpenImageIO_v3_1_Imf__3_3_510round12logEN9Imath_3_14halfE(i16 %i.c)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.j
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
end_hunk_0
begin_hunk_1_@ImfNewRound12logLut:bb.a
bb.k:                                             ; preds = %.noexc9, %bb.i, %bb.f, %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 65536
  br i1 %exitcond.not.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaLutC2IPFN9Imath_3_14halfES3_EEET_NS_12RgbaChannelsE.exit, label %bb.c, !llvm.loop !68

_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaLutC2IPFN9Imath_3_14halfES3_EEET_NS_12RgbaChannelsE.exit: ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %0, ptr %i.aa, align 8, !tbaa !69
  br label %bb.p

bb.l:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@ImfNewRoundNBitLut:bb.a

_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaLutC2INS_9roundNBitEEET_NS_12RgbaChannelsE.exit: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !69
  br label %bb.g

bb.c:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN12halfFunctionIN9Imath_3_14halfEEC2IN27OpenImageIO_v3_1_Imf__3_3_59roundNBitEEET_S1_S1_S1_S1_S1_S1_:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZN27OpenImageIO_v3_1_Imf__3_3_59roundNBitclEN9Imath_3_14halfE.exit.us
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 65536
  br i1 %exitcond30.not, label %.split23.us, label %.split.us, !llvm.loop !72

.split23.us:                                      ; preds = %bb.o, %bb.h
  ret void
end_hunk_3
begin_hunk_4_@_ZN12halfFunctionIN9Imath_3_14halfEEC2IN27OpenImageIO_v3_1_Imf__3_3_59roundNBitEEET_S1_S1_S1_S1_S1_S1_:bb.a
bb.o:                                             ; preds = %bb.k, %_ZN27OpenImageIO_v3_1_Imf__3_3_59roundNBitclEN9Imath_3_14halfE.exit, %bb.n, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %.split23.us, label %.split, !llvm.loop !72
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_4
begin_hunk_5_@llvm.fabs.f32
!65 = !{!66, !67, i64 0}
!66 = !{!"_ZTS12halfFunctionIN9Imath_3_14halfEE", !67, i64 0}
!67 = !{!"p1 _ZTSN9Imath_3_14halfE", !16, i64 0}
!68 = distinct !{!68, !13}
!69 = !{!70, !71, i64 8}
!70 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_57RgbaLutE", !66, i64 0, !71, i64 8}
!71 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512RgbaChannelsE", !5, i64 0}
!72 = distinct !{!72, !13}
end_hunk_5
