inline.NumInlined: 76
inline.NumDeleted: 41
begin_hunk_0_@_ZNK22photos_editing_formats8image_io11DataSegment4FindEmPKcm:bb.a
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %.not.i.i37 = icmp uge i64 %1, %i.a
  %i.d = icmp ult i64 %1, %i.c
  %i.e = select i1 %.not.i.i37, i1 %i.d, i1 false
end_hunk_0
begin_hunk_1_@_ZNK22photos_editing_formats8image_io11DataSegment4FindEmPKcm:bb.a
  br i1 %i.t, label %bb.b, label %.thread..thread33.loopexit_crit_edge, !llvm.loop !32

.thread33.loopexitsplit:                          ; preds = %bb.d
  br label %.thread33.loopexit

.thread..thread33.loopexit_crit_edge:             ; preds = %.thread
  br label %.thread33.loopexit, !llvm.loop !32

.thread33.loopexit:                               ; preds = %.thread33.loopexitsplit, %.thread..thread33.loopexit_crit_edge
  %.6.ph = phi i64 [ %i.c, %.thread..thread33.loopexit_crit_edge ], [ %.reass, %.thread33.loopexitsplit ]
  br label %.thread33

.thread33:                                        ; preds = %.thread33.loopexit, %bb.a
end_hunk_1
