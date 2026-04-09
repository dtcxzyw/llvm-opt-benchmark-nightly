inline.NumInlined: 136
inline.NumDeleted: 16
begin_hunk_0_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit
  %.043 = phi i32 [ %1, %.lr.ph ], [ %i.be, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %i.h = phi i16 [ %i.b, %.lr.ph ], [ %i.bd, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 8 uses
  %i.i = icmp sgt i16 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit

end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
  br i1 %.not24.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %.preheader.i
  %2 = tail call i16 @llvm.umax.i16(i16 %i.h, i16 128)
  %3 = zext nneg i16 %2 to i64
  %exitcond28.i98 = icmp ugt i16 %i.h, 127
  br i1 %exitcond28.i98, label %.lr.ph26.i.preheader._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.c, !llvm.loop !23

.lr.ph26.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %exitcond28.i = icmp eq i64 %indvars.iv.next, %3
  br i1 %exitcond28.i, label %.lr.ph26.i.preheader._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, !llvm.loop !24

.lr.ph26.i.preheader._crit_edge.loopexit:         ; preds = %.lr.ph26.i
  store i16 %i.bb, ptr %0, align 4, !tbaa !7
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a

bb.d:                                             ; preds = %.lr.ph47, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %.146 = phi i32 [ %.0.lcssa, %.lr.ph47 ], [ %i.co, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.bg = phi i16 [ %.promoted44, %.lr.ph47 ], [ %i.cn, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 8 uses
  %i.bh = icmp sgt i16 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i11, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit

end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
  br i1 %.not18.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i16
  %4 = tail call i16 @llvm.umax.i16(i16 %i.bg, i16 128)
  %5 = zext nneg i16 %4 to i64
  %exitcond22.i102 = icmp ugt i16 %i.bg, 127
  br i1 %exitcond22.i102, label %.lr.ph20.i.preheader._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i17

bb.e:                                             ; preds = %bb.e, %.lr.ph.i11.new
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i11.new ], [ %indvars.iv.next.i14.1, %bb.e ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
  br i1 %niter131.ncmp.1, label %.preheader.i16.unr-lcssa, label %bb.e, !llvm.loop !26

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i17
  %exitcond22.i = icmp eq i64 %indvars.iv.next59, %5
  br i1 %exitcond22.i, label %.lr.ph20.i.preheader._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i17, !llvm.loop !27

.lr.ph20.i.preheader._crit_edge.loopexit:         ; preds = %.lr.ph20.i
  store i16 %i.cl, ptr %0, align 4, !tbaa !7
end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
  br i1 %i.cp, label %bb.d, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit, %.preheader
  %.pr = phi i16 [ %.promoted44, %.preheader ], [ %i.cn, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 9 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.co, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.cq = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.cq, label %bb.f, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33
end_hunk_6
begin_hunk_7_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
  br i1 %.not18.i26, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33, label %.lr.ph20.i27.preheader

.lr.ph20.i27.preheader:                           ; preds = %.preheader.i25
  %6 = tail call i16 @llvm.umax.i16(i16 %.pr, i16 128)
  %7 = zext nneg i16 %6 to i64
  %exitcond22.i29106 = icmp ugt i16 %.pr, 127
  br i1 %exitcond22.i29106, label %.lr.ph20.i27._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i29

bb.h:                                             ; preds = %bb.h, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i23.1, %bb.h ] ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
  br i1 %niter138.ncmp.1, label %.preheader.i25.unr-lcssa, label %bb.h, !llvm.loop !26

.lr.ph20.i27:                                     ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i29
  %exitcond22.i29 = icmp eq i64 %indvars.iv.next62, %7
  br i1 %exitcond22.i29, label %.lr.ph20.i27._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i29, !llvm.loop !27

.lr.ph20.i27._crit_edge.loopexit:                 ; preds = %.lr.ph20.i27
  store i16 %i.eh, ptr %0, align 4, !tbaa !7
end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej:bb.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !7      ; 7 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

end_hunk_9
begin_hunk_10_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej:bb.a

.lr.ph20:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = tail call i16 @llvm.umax.i16(i16 %i.b, i16 128)
  %exitcond2227 = icmp ugt i16 %i.b, 127
  br i1 %exitcond2227, label %._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej:bb.a
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.d, !llvm.loop !26

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %exitcond22 = icmp eq i16 %i.al, %2
  br i1 %exitcond22, label %._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %bb.e
  store i16 %i.al, ptr %0, align 4, !tbaa !7
end_hunk_11
begin_hunk_12_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej:bb.a
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %.lr.ph20, %bb.e
  %i.ag = phi i16 [ %i.al, %bb.e ], [ %i.b, %.lr.ph20 ] ; 2 uses
  %.11926 = phi i64 [ %i.am, %bb.e ], [ %.lcssa, %.lr.ph20 ] ; 2 uses
  %i.ah = trunc i64 %.11926 to i32
  %i.ai = and i32 %i.ah, 268435455
  %i.aj = zext nneg i16 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !3
  %i.al = add nuw nsw i16 %i.ag, 1                ; 4 uses
  %i.am = lshr i64 %.11926, 28                    ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.e, !llvm.loop !27
end_hunk_12
begin_hunk_13_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em:bb.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !7      ; 8 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.d

end_hunk_13
begin_hunk_14_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em:bb.a

.lr.ph26:                                         ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = tail call i16 @llvm.umax.i16(i16 %i.b, i16 128)
  %exitcond2833 = icmp ugt i16 %i.b, 127
  br i1 %exitcond2833, label %._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
end_hunk_14
begin_hunk_15_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em:bb.a
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !23

bb.f:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %exitcond28 = icmp eq i16 %i.bd, %2
  br i1 %exitcond28, label %._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.f
  store i16 %i.bd, ptr %0, align 4, !tbaa !7
end_hunk_15
begin_hunk_16_@_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em:bb.a
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %.lr.ph26, %bb.f
  %i.ay = phi i16 [ %i.bd, %bb.f ], [ %i.b, %.lr.ph26 ] ; 2 uses
  %.12532 = phi i64 [ %i.be, %bb.f ], [ %.lcssa, %.lr.ph26 ] ; 2 uses
  %i.az = trunc i64 %.12532 to i32
  %i.ba = and i32 %i.az, 268435455
  %i.bb = zext nneg i16 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bb
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add nuw nsw i16 %i.ay, 1                ; 4 uses
  %i.be = lshr i64 %.12532, 28                    ; 2 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.f, !llvm.loop !24
end_hunk_16
begin_hunk_17_@_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_:bb.a
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_17
begin_hunk_18_@llvm.vector.reduce.add.v2i64
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
end_hunk_18
