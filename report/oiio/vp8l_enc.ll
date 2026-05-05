inline.NumInlined: 150
inline.NumDeleted: 50
begin_hunk_0_@EncodeStreamHook:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  %wide.trip.count.i.i.a = zext nneg i32 %i.gs to i64 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.split.us.i.i
  %indvars.iv.i.i.a = phi i64 [ 0, %.split.us.i.i ], [ %indvars.iv.next.i.i.a, %bb.ac ] ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.a
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %7 = lshr i32 %i.ig, 8
  %8 = and i32 %7, 255
  %i.ih = zext nneg i32 %8 to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ih ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !102
  %.not.us.i.i = icmp eq i16 %i.ij, -1
  br i1 %.not.us.i.i, label %bb.ac, label %.lr.ph.us.1.i.i

.lr.ph.us.1.i.i:                                  ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
end_hunk_0
begin_hunk_1_@EncodeStreamHook:bb.a
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.1.i.i
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3
  %i.im = and i32 %i.il, 16777215
  %i.in = mul i32 %i.im, -72723225
  %i.io = lshr i32 %i.in, 21
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ip ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !102
  %.not.us.1.i.i = icmp eq i16 %i.ir, -1
  br i1 %.not.us.1.i.i, label %bb.aa, label %.lr.ph.us.2.i.i

.lr.ph.us.2.i.i:                                  ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.is = trunc i64 %indvars.iv.1.i.i to i16
  store i16 %i.is, ptr %i.iq, align 2, !tbaa !102
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %wide.trip.count.i.i.a
  br i1 %exitcond.1.not.i.i, label %bb.aj, label %bb.z, !llvm.loop !104

bb.ab:                                            ; preds = %12, %.lr.ph.us.2.i.i
  %indvars.iv.2.i.i = phi i64 [ 0, %.lr.ph.us.2.i.i ], [ %indvars.iv.next.2.i.i, %12 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.2.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3
  %9 = and i32 %i.iu, 16777215
  %10 = mul i32 %9, 2147483647
  %11 = lshr i32 %10, 21
  %i.iv = zext nneg i32 %11 to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.iv ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !102
  %.not.us.2.i.i = icmp eq i16 %i.ix, -1
  br i1 %.not.us.2.i.i, label %12, label %bb.au

12:                                               ; preds = %bb.ab
  %13 = trunc i64 %indvars.iv.2.i.i to i16
  store i16 %13, ptr %i.iw, align 2, !tbaa !102
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, %wide.trip.count.i.i.a
  br i1 %exitcond.2.not.i.i, label %.loopexit232.i.i, label %bb.ab, !llvm.loop !104

bb.ac:                                            ; preds = %bb.y
  %i.iy = trunc i64 %indvars.iv.i.i.a to i16
  store i16 %i.iy, ptr %i.ii, align 2, !tbaa !102
  %indvars.iv.next.i.i.a = add nuw nsw i64 %indvars.iv.i.i.a, 1 ; 2 uses
  %exitcond.not.i.i.a = icmp eq i64 %indvars.iv.next.i.i.a, %wide.trip.count.i.i.a
  br i1 %exitcond.not.i.i.a, label %bb.ad, label %bb.y, !llvm.loop !104

bb.ad:                                            ; preds = %bb.ac
  %i.iz = icmp sgt i32 %i.gr, 0
end_hunk_1
begin_hunk_2_@EncodeStreamHook:bb.a
  %exitcond328.not.i.i = icmp eq i32 %i.km, %i.gr
  br i1 %exitcond328.not.i.i, label %.loopexit227.i.i, label %.preheader226.i.i, !llvm.loop !106

bb.aj:                                            ; preds = %bb.aa
  %i.kn = icmp sgt i32 %i.gr, 0
  br i1 %i.kn, label %.preheader228.lr.ph.i.i, label %.loopexit227.i.i

end_hunk_2
begin_hunk_3_@EncodeStreamHook:bb.a
  %exitcond322.not.i.i = icmp eq i32 %i.md, %i.gr
  br i1 %exitcond322.not.i.i, label %.loopexit227.i.i, label %.preheader228.i.i, !llvm.loop !108

.loopexit232.i.i:                                 ; preds = %12
  %i.me = icmp sgt i32 %i.gr, 0
  br i1 %i.me, label %.preheader230.lr.ph.i.i, label %.loopexit227.i.i

end_hunk_3
begin_hunk_4_@EncodeStreamHook:bb.a
  %exitcond316.not.i.i = icmp eq i32 %i.nu, %i.gr
  br i1 %exitcond316.not.i.i, label %.loopexit227.i.i, label %.preheader230.i.i, !llvm.loop !110

bb.au:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @PrepareMapToPalette(ptr noundef nonnull %i.bo, i32 noundef %i.gs, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #7
end_hunk_4
