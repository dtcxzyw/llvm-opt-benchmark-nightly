begin_hunk_0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = icmp sgt i64 %2, 0
  br i1 %i.e, label %.outer.split, label %.critedge

.outer.split:                                     ; preds = %bb.a, %.outer
  %.054.ph121 = phi i64 [ %.155, %.outer ], [ %i.d, %bb.a ] ; 3 uses
end_hunk_0
begin_hunk_1
  %.060.ph119 = phi ptr [ %.262, %.outer ], [ %1, %bb.a ] ; 4 uses
  %.063.ph118 = phi i64 [ %.164, %.outer ], [ %2, %bb.a ] ; 8 uses
  %i.f = icmp sgt i64 %.054.ph121, 0
  br i1 %i.f, label %.lr.ph, label %.thread.loopexit

bb.b:                                             ; preds = %bb.c
  %i.g = icmp sgt i64 %.054196, 1
  br i1 %i.g, label %.lr.ph, label %.thread.loopexit

.lr.ph:                                           ; preds = %.outer.split, %bb.b
  %.054196 = phi i64 [ %i.j, %bb.b ], [ %.054.ph121, %.outer.split ] ; 4 uses
  %.057195 = phi ptr [ %i.h, %bb.b ], [ %.057.ph120, %.outer.split ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.057195, i64 1 ; 7 uses
  %i.i = load i8, ptr %.057195, align 1, !tbaa !36 ; 4 uses
  %i.j = add nsw i64 %.054196, -1                 ; 4 uses
  %i.k = icmp slt i8 %i.i, 0
end_hunk_1
begin_hunk_2
bb.f:                                             ; preds = %bb.e, %bb.d
  %.053 = phi i64 [ %.063.ph118, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %4, label %.lr.ph.preheader

4:                                                ; preds = %bb.f
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str.1) #5
  br label %.thread

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.r = add nsw i64 %.054196, -2
end_hunk_2
begin_hunk_3
  %.2 = phi i64 [ %i.w, %bb.h ], [ %i.u, %bb.g ]
  %i.x = add nuw nsw i64 %.2, 1                   ; 5 uses
  %.not73 = icmp samesign ugt i64 %.054196, %i.x
  br i1 %.not73, label %bb.j, label %5

5:                                                ; preds = %bb.i
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str.1) #5
  br label %.thread

bb.j:                                             ; preds = %bb.i
  tail call void @_TIFFmemcpy(ptr noundef %.060.ph119, ptr noundef nonnull %i.h, i64 noundef %i.x) #5
end_hunk_3
begin_hunk_4
  %.262 = getelementptr i8, ptr %.060.ph119, i64 %.053.pn.fr
  %.164 = sub i64 %.063.ph118, %.053.pn.fr        ; 2 uses
  %i.aa = icmp sgt i64 %.164, 0
  br i1 %i.aa, label %.outer.split, label %.critedge

.thread.loopexit:                                 ; preds = %.outer.split, %bb.b
  %.057.lcssa = phi ptr [ %i.h, %bb.b ], [ %.057.ph120, %.outer.split ]
  %smin.le = tail call i64 @llvm.smin.i64(i64 %.054.ph121, i64 0)
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %4, %5
  %storemerge126 = phi ptr [ %i.h, %4 ], [ %i.h, %5 ], [ %.057.lcssa, %.thread.loopexit ]
  %storemerge = phi i64 [ 0, %4 ], [ %i.j, %5 ], [ %smin.le, %.thread.loopexit ]
  store ptr %storemerge126, ptr %i.a, align 8, !tbaa !34
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.060.ph119, i8 0, i64 %.063.ph118, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 844
  %7 = load i32, ptr %6, align 4, !tbaa !37
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str.2, i32 noundef %7) #5
  br label %bb.k

.critedge:                                        ; preds = %.outer, %bb.a
  %.us-phi99.ph.a = phi ptr [ %i.b, %bb.a ], [ %.158, %.outer ]
  %.us-phi100.ph.a = phi i64 [ %i.d, %bb.a ], [ %.155, %.outer ]
  store ptr %.us-phi99.ph.a, ptr %i.a, align 8, !tbaa !34
  store i64 %.us-phi100.ph.a, ptr %i.c, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ 1, %.critedge ]
  ret i32 %.0
}

end_hunk_4
