inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@ossl_pw_get_passphrase:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %.not86 = icmp eq ptr %i.g, null
  br i1 %.not86, label %bb.f, label %.thread97

.thread97:                                        ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.not87 = icmp eq ptr %i.i, null
  br i1 %.not87, label %.thread103, label %bb.e

bb.e:                                             ; preds = %.thread97, %bb.d
  %.072102 = phi ptr [ %i.g, %.thread97 ], [ %i.i, %bb.d ]
  %.073101.in = phi ptr [ %6, %.thread97 ], [ %7, %bb.d ]
  %.073101 = load i64, ptr %.073101.in, align 8, !tbaa !14
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.073101, i64 %1) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %.072102, i64 %spec.select, i1 false)
end_hunk_0
