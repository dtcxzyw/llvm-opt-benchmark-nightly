inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_ZN10ContextMapC2Eii:bb.a
  br label %_ZN5ArrayIN10ContextMap1EELi64EEC2Ei.exit

_ZN5ArrayIN10ContextMap1EELi64EEC2Ei.exit:        ; preds = %bb.b, %bb.f
  %i.u = phi ptr [ null, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %2, ptr %i.w, align 4, !tbaa !106
end_hunk_0
begin_hunk_1_@_ZN10ContextMapC2Eii:bb.a
.lr.ph:                                           ; preds = %.loopexit50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.u, i64 15 ; 3 uses
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 18 ; 2 uses
  %min.iters.check = icmp ult i32 %.pre, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.fg, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert72 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %broadcast.splat.a = shufflevector <2 x ptr> %broadcast.splatinsert72, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph71
  %index73 = phi i64 [ 0, %vector.ph71 ], [ %index.next75, %vector.body72 ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index73 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.fh, align 8, !tbaa !8
  store <2 x ptr> %broadcast.splat, ptr %i.fi, align 8, !tbaa !8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index73 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.fj, align 8, !tbaa !8
  store <2 x ptr> %broadcast.splat, ptr %i.fk, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index73 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x ptr> %broadcast.splat.a, ptr %i.fl, align 8, !tbaa !8
  store <2 x ptr> %broadcast.splat.a, ptr %i.fm, align 8, !tbaa !8
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.fn = icmp eq i64 %index.next75, %n.vec
  br i1 %i.fn, label %middle.block76, label %vector.body72, !llvm.loop !112
end_hunk_1
begin_hunk_2_@_ZN10ContextMapC2Eii:bb.a

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  store ptr %i.fg, ptr %i.fw, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  store ptr %i.fg, ptr %i.fx, align 8, !tbaa !8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv
  store ptr %3, ptr %i.fy, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond55.not, label %._crit_edge, label %scalar.ph, !llvm.loop !113
end_hunk_2
