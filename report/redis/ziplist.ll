inline.NumInlined: 61
inline.NumDeleted: 7
begin_hunk_0_@zipStoreEntryEncoding:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.g, %bb.k
  %.0 = phi i8 [ 1, %bb.d ], [ 2, %bb.g ], [ 5, %bb.i ], [ 1, %bb.k ] ; 2 uses
  %3 = zext nneg i8 %.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %3, i1 false)
  %4 = zext nneg i8 %.0 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.c, %bb.l
  %.025 = phi i32 [ %4, %bb.l ], [ 5, %bb.h ], [ 1, %bb.c ], [ 2, %bb.f ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.025
}
end_hunk_0
begin_hunk_1_@zipEntrySafe:bb.a

bb.x:                                             ; preds = %bb.w
  %i.bh = load i8, ptr %2, align 1, !tbaa !13
  %i.bi = icmp ult i8 %i.bh, -2
  %.218 = select i1 %i.bi, i32 1, i32 5           ; 2 uses
  store i32 %.218, ptr %3, align 8, !tbaa !19
  %5 = zext nneg i32 %.218 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %5 ; 4 uses
  %i.bk = icmp ult ptr %i.bj, %i.a
  %i.bl = icmp ugt ptr %i.bj, %i.c
  %i.bm = select i1 %i.bk, i1 true, i1 %i.bl, !prof !28
  br i1 %i.bm, label %bb.az, label %bb.y, !prof !28

bb.y:                                             ; preds = %bb.x
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !13  ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bp = icmp ult i8 %i.bn, -64                  ; 2 uses
  %i.bq = and i8 %i.bn, -64
end_hunk_1
begin_hunk_2_@zipEntrySafe:bb.a
  br label %bb.az

bb.ad:                                            ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.aa
  %.0.i.ph.a = phi i32 [ 1, %bb.aa ], [ 1, %bb.y ], [ 1, %bb.y ], [ 1, %bb.y ], [ 1, %bb.y ], [ 5, %bb.ac ], [ 2, %bb.ab ], [ 1, %bb.z ], [ 1, %bb.y ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 %.0.i.ph.a, ptr %i.bt, align 8, !tbaa !33
  %6 = zext nneg i32 %.0.i.ph.a to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %6 ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.a
  %i.bw = icmp ugt ptr %i.bu, %i.c
  %spec.select220 = select i1 %i.bv, i1 true, i1 %i.bw, !prof !28
end_hunk_2
