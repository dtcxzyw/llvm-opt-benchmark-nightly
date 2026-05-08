inline.NumInlined: 2
begin_hunk_0_@gs_colorimage:bb.a
  %i.g = lshr i32 %i.f, 3
  %i.h = mul i32 %i.g, %2
  %i.i = call i32 @gs_image_next(ptr noundef nonnull %7, ptr noundef %6, i32 noundef %i.h) #4
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = add i32 %i.d, 7
end_hunk_0
begin_hunk_1_@gs_colorimage:bb.a
bb.e:                                             ; preds = %bb.f, %bb.d
  %.029 = phi ptr [ %6, %bb.d ], [ %i.p, %bb.f ]  ; 2 uses
  %.0 = phi i32 [ %4, %bb.d ], [ %i.q, %bb.f ]
  %i.n = call i32 @gs_image_next(ptr noundef nonnull %7, ptr noundef %.029, i32 noundef %i.l) #4 ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %.critedge

end_hunk_1
begin_hunk_2_@gs_colorimage:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 %i.m
  %i.q = add nsw i32 %.0, 1                       ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !48

.loopexit:                                        ; preds = %bb.f, %bb.c
  %.031 = phi i32 [ %i.i, %bb.c ], [ %i.n, %bb.f ]
  %8 = call i32 @llvm.smin.i32(i32 %.031, i32 0)
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.a, %.loopexit
  %.1 = phi i32 [ %i.a, %bb.a ], [ %8, %.loopexit ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  ret i32 %.1
}
end_hunk_2
begin_hunk_3_@gs_image:bb.a
  br label %gs_colorimage.exit

gs_colorimage.exit:                               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.a, %bb.a ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %.1.i
}
end_hunk_3
