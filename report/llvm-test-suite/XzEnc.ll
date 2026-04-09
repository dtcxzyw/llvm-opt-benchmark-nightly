inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@Xz_Encode:bb.a
  %i.ao = and i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.ap, i1 false), !tbaa !8
  %9 = sub i64 %i.ag, %i.aj
  %i.aq = trunc i64 %9 to i32
  %i.ar = and i32 %i.aq, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.h
  %.067.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.ar, %.lr.ph.preheader.i ] ; 2 uses
  %i.as = zext nneg i32 %.067.lcssa.i to i64      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  %i.au = call i32 @XzCheck_Final(ptr noundef nonnull %i.af, ptr noundef nonnull %i.at) #5 ; 0 uses
end_hunk_0
