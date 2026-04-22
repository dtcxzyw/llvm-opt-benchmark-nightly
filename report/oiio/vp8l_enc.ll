inline.NumInlined: 150
inline.NumDeleted: 50
begin_hunk_0_@EncodeStreamHook:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  %wide.trip.count.i.i.a = zext nneg i32 %i.gr to i64 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.split.us.i.i
  %indvars.iv.i.i.a = phi i64 [ 0, %.split.us.i.i ], [ %indvars.iv.next.i.i.a, %bb.ac ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.a
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3
  %7 = lshr i32 %i.if, 8
  %8 = and i32 %7, 255
  %i.ig = zext nneg i32 %8 to i64
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ig ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !102
  %.not.us.i.i = icmp eq i16 %i.ii, -1
  br i1 %.not.us.i.i, label %bb.ac, label %.lr.ph.us.1.i.i

.lr.ph.us.1.i.i:                                  ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
end_hunk_0
begin_hunk_1_@EncodeStreamHook:bb.a
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.1.i.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = and i32 %i.ik, 16777215
  %i.im = mul i32 %i.il, -72723225
  %i.in = lshr i32 %i.im, 21
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.io ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !102
  %.not.us.1.i.i = icmp eq i16 %i.iq, -1
  br i1 %.not.us.1.i.i, label %bb.aa, label %.lr.ph.us.2.i.i

.lr.ph.us.2.i.i:                                  ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ir = trunc i64 %indvars.iv.1.i.i to i16
  store i16 %i.ir, ptr %i.ip, align 2, !tbaa !102
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %wide.trip.count.i.i.a
  br i1 %exitcond.1.not.i.i, label %bb.aj, label %bb.z, !llvm.loop !104

bb.ab:                                            ; preds = %12, %.lr.ph.us.2.i.i
  %indvars.iv.2.i.i = phi i64 [ 0, %.lr.ph.us.2.i.i ], [ %indvars.iv.next.2.i.i, %12 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.2.i.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3
  %9 = and i32 %i.it, 16777215
  %10 = mul i32 %9, 2147483647
  %11 = lshr i32 %10, 21
  %i.iu = zext nneg i32 %11 to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.iu ; 2 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !102
  %.not.us.2.i.i = icmp eq i16 %i.iw, -1
  br i1 %.not.us.2.i.i, label %12, label %bb.au

12:                                               ; preds = %bb.ab
  %13 = trunc i64 %indvars.iv.2.i.i to i16
  store i16 %13, ptr %i.iv, align 2, !tbaa !102
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, %wide.trip.count.i.i.a
  br i1 %exitcond.2.not.i.i, label %.loopexit232.i.i, label %bb.ab, !llvm.loop !104

bb.ac:                                            ; preds = %bb.y
  %i.ix = trunc i64 %indvars.iv.i.i.a to i16
  store i16 %i.ix, ptr %i.ih, align 2, !tbaa !102
  %indvars.iv.next.i.i.a = add nuw nsw i64 %indvars.iv.i.i.a, 1 ; 2 uses
  %exitcond.not.i.i.a = icmp eq i64 %indvars.iv.next.i.i.a, %wide.trip.count.i.i.a
  br i1 %exitcond.not.i.i.a, label %bb.ad, label %bb.y, !llvm.loop !104

bb.ad:                                            ; preds = %bb.ac
  %i.iy = icmp sgt i32 %i.gq, 0
end_hunk_1
begin_hunk_2_@EncodeStreamHook:bb.a
  %exitcond328.not.i.i = icmp eq i32 %i.kl, %i.gq
  br i1 %exitcond328.not.i.i, label %.loopexit227.i.i, label %.preheader226.i.i, !llvm.loop !106

bb.aj:                                            ; preds = %bb.aa
  %i.km = icmp sgt i32 %i.gq, 0
  br i1 %i.km, label %.preheader228.lr.ph.i.i, label %.loopexit227.i.i

end_hunk_2
begin_hunk_3_@EncodeStreamHook:bb.a
  %exitcond322.not.i.i = icmp eq i32 %i.mc, %i.gq
  br i1 %exitcond322.not.i.i, label %.loopexit227.i.i, label %.preheader228.i.i, !llvm.loop !108

.loopexit232.i.i:                                 ; preds = %12
  %i.md = icmp sgt i32 %i.gq, 0
  br i1 %i.md, label %.preheader230.lr.ph.i.i, label %.loopexit227.i.i

end_hunk_3
begin_hunk_4_@EncodeStreamHook:bb.a
  %exitcond316.not.i.i = icmp eq i32 %i.nt, %i.gq
  br i1 %exitcond316.not.i.i, label %.loopexit227.i.i, label %.preheader230.i.i, !llvm.loop !110

bb.au:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @PrepareMapToPalette(ptr noundef nonnull %i.bo, i32 noundef %i.gr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #8
end_hunk_4
