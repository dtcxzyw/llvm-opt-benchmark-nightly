inline.NumInlined: 150
inline.NumDeleted: 50
begin_hunk_0_@EncodeStreamHook:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  %wide.trip.count342.i.i = zext nneg i32 %i.gr to i64 ; 3 uses
  br label %call.1.us.us.1.i.i

call.1.us.us.1.i.i:                               ; preds = %bb.z, %call.0.us.us.preheader.i.i
  %indvars.iv334.1.i.i = phi i64 [ 0, %call.0.us.us.preheader.i.i ], [ %indvars.iv.next340.i.i, %bb.z ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv334.1.i.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3
  %7 = lshr i32 %i.if, 8
  %8 = and i32 %7, 255
  %i.ig = zext nneg i32 %8 to i64
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ig ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !102
  %.not.us243.us.1.i.i = icmp eq i16 %i.ii, -1
  br i1 %.not.us243.us.1.i.i, label %bb.z, label %call.2.us.us.preheader.2.i.i

call.2.us.us.preheader.2.i.i:                     ; preds = %call.1.us.us.1.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
end_hunk_0
begin_hunk_1_@EncodeStreamHook:bb.a
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.2.i.i.a
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = and i32 %i.ik, 16777215
  %i.im = mul i32 %i.il, -72723225
  %i.in = lshr i32 %i.im, 21
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.io ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !102
  %.not.us249.us.2.i.i = icmp eq i16 %i.iq, -1
  br i1 %.not.us249.us.2.i.i, label %bb.y, label %.lr.ph.us.2.i.i

.lr.ph.us.2.i.i:                                  ; preds = %call.2.us.us.2.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 -1, i64 4096, i1 false)
  br label %call.0.us.us.i.i

bb.y:                                             ; preds = %call.2.us.us.2.i.i
  %i.ir = trunc i64 %indvars.iv.2.i.i.a to i16
  store i16 %i.ir, ptr %i.ip, align 2, !tbaa !102
  %indvars.iv.next.2.i.i.a = add nuw nsw i64 %indvars.iv.2.i.i.a, 1 ; 2 uses
  %exitcond.2.not.i.i.a = icmp eq i64 %indvars.iv.next.2.i.i.a, %wide.trip.count342.i.i
  br i1 %exitcond.2.not.i.i.a, label %bb.ag, label %call.2.us.us.2.i.i, !llvm.loop !104

call.0.us.us.i.i:                                 ; preds = %12, %.lr.ph.us.2.i.i
  %indvars.iv339.i.i = phi i64 [ 0, %.lr.ph.us.2.i.i ], [ %indvars.iv.next.2.i.i, %12 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv339.i.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3
  %9 = and i32 %i.it, 16777215
  %10 = mul i32 %9, 2147483647
  %11 = lshr i32 %10, 21
  %i.iu = zext nneg i32 %11 to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.iu ; 2 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !102
  %.not.us.us.i.i = icmp eq i16 %i.iw, -1
  br i1 %.not.us.us.i.i, label %12, label %bb.ar

12:                                               ; preds = %call.0.us.us.i.i
  %13 = trunc i64 %indvars.iv339.i.i to i16
  store i16 %13, ptr %i.iv, align 2, !tbaa !102
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv339.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, %wide.trip.count342.i.i
  br i1 %exitcond.2.not.i.i, label %.loopexit232.i.i, label %call.0.us.us.i.i, !llvm.loop !104

bb.z:                                             ; preds = %call.1.us.us.1.i.i
  %i.ix = trunc i64 %indvars.iv334.1.i.i to i16
  store i16 %i.ix, ptr %i.ih, align 2, !tbaa !102
  %indvars.iv.next340.i.i = add nuw nsw i64 %indvars.iv334.1.i.i, 1 ; 2 uses
  %exitcond343.not.i.i = icmp eq i64 %indvars.iv.next340.i.i, %wide.trip.count342.i.i
  br i1 %exitcond343.not.i.i, label %bb.aa, label %call.1.us.us.1.i.i, !llvm.loop !104

bb.aa:                                            ; preds = %bb.z
  %i.iy = icmp sgt i32 %i.gq, 0
end_hunk_1
begin_hunk_2_@EncodeStreamHook:bb.a
  %exitcond369.not.i.i = icmp eq i32 %i.kl, %i.gq
  br i1 %exitcond369.not.i.i, label %.loopexit227.i.i, label %.preheader226.i.i, !llvm.loop !106

bb.ag:                                            ; preds = %bb.y
  %i.km = icmp sgt i32 %i.gq, 0
  br i1 %i.km, label %.preheader228.lr.ph.i.i, label %.loopexit227.i.i

end_hunk_2
begin_hunk_3_@EncodeStreamHook:bb.a
  %exitcond363.not.i.i = icmp eq i32 %i.mc, %i.gq
  br i1 %exitcond363.not.i.i, label %.loopexit227.i.i, label %.preheader228.i.i, !llvm.loop !108

.loopexit232.i.i:                                 ; preds = %12
  %i.md = icmp sgt i32 %i.gq, 0
  br i1 %i.md, label %.preheader230.lr.ph.i.i, label %.loopexit227.i.i

end_hunk_3
begin_hunk_4_@EncodeStreamHook:bb.a
  %exitcond357.not.i.i = icmp eq i32 %i.nt, %i.gq
  br i1 %exitcond357.not.i.i, label %.loopexit227.i.i, label %.preheader230.i.i, !llvm.loop !110

bb.ar:                                            ; preds = %call.0.us.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @PrepareMapToPalette(ptr noundef nonnull %i.bo, i32 noundef %i.gr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #8
end_hunk_4
