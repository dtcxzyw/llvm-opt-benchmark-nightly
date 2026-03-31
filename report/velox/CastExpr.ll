begin_hunk_0
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 8 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

end_hunk_0
begin_hunk_1

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %21

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %bb.al

21:                                               ; preds = %bb.f
  br i1 %i.q, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.e, %21
  %.029 = phi i32 [ 1, %21 ], [ 0, %bb.e ]        ; 2 uses
  %i.u = icmp slt i32 %.029, %i.a
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %21
  %22 = icmp sgt i32 %i.a, 1
  br i1 %22, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader, %bb.v
  %.0118 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130117 = phi i32 [ %i.bq, %bb.v ], [ 1, %.preheader ] ; 4 uses
  %.093116 = phi i32 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0118 to i1
  br i1 %i.v, label %bb.j, label %bb.h
end_hunk_2
begin_hunk_3
  %i.br = icmp slt i32 %i.bq, %i.a
  br i1 %i.br, label %.lr.ph119, label %.loopexit, !llvm.loop !6711

.lr.ph:                                           ; preds = %bb.g, %bb.ak
  %.2113 = phi i8 [ %.3, %bb.ak ], [ 0, %bb.g ]
  %.332112 = phi i32 [ %i.dn, %bb.ak ], [ %.029, %bb.g ] ; 4 uses
  %.295111 = phi i32 [ %.396, %bb.ak ], [ 0, %bb.g ] ; 4 uses
  %i.bs = trunc nuw i8 %.2113 to i1
  br i1 %i.bs, label %bb.y, label %bb.w

end_hunk_3
begin_hunk_4
  %i.do = icmp slt i32 %i.dn, %i.a
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !6733

.loopexit:                                        ; preds = %bb.i, %bb.v, %bb.x, %bb.ak, %bb.g, %.preheader
  %.497 = phi i32 [ 0, %bb.g ], [ 0, %.preheader ], [ %.396, %bb.ak ], [ %.295111, %bb.x ], [ %.093116, %bb.i ], [ %.194, %bb.v ]
  store i32 %.497, ptr %0, align 8, !tbaa !178
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dp, align 8, !tbaa !5374
end_hunk_4
begin_hunk_5
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 8 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

end_hunk_5
begin_hunk_6

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %21

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
end_hunk_6
begin_hunk_7
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %bb.al

21:                                               ; preds = %bb.f
  br i1 %i.q, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.e, %21
  %.029 = phi i32 [ 1, %21 ], [ 0, %bb.e ]        ; 2 uses
  %i.u = icmp slt i32 %.029, %i.a
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %21
  %22 = icmp sgt i32 %i.a, 1
  br i1 %22, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.bu, %bb.v ], [ 1, %.preheader ] ; 4 uses
  %.093114 = phi i8 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h
end_hunk_7
begin_hunk_8
  %i.bv = icmp slt i32 %i.bu, %i.a
  br i1 %i.bv, label %.lr.ph117, label %.loopexit, !llvm.loop !8996

.lr.ph:                                           ; preds = %bb.g, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %bb.g ]
  %.332110 = phi i32 [ %i.dv, %bb.ak ], [ %.029, %bb.g ] ; 4 uses
  %.295109 = phi i8 [ %.396, %bb.ak ], [ 0, %bb.g ] ; 4 uses
  %i.bw = trunc nuw i8 %.2111 to i1
  br i1 %i.bw, label %bb.y, label %bb.w

end_hunk_8
begin_hunk_9
  %i.dw = icmp slt i32 %i.dv, %i.a
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !9018

.loopexit:                                        ; preds = %bb.i, %bb.v, %bb.x, %bb.ak, %bb.g, %.preheader
  %.497 = phi i8 [ 0, %bb.g ], [ 0, %.preheader ], [ %.396, %bb.ak ], [ %.295109, %bb.x ], [ %.093114, %bb.i ], [ %.194, %bb.v ]
  store i8 %.497, ptr %0, align 8, !tbaa !178
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dx, align 8, !tbaa !7670
end_hunk_9
begin_hunk_10
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 8 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

end_hunk_10
begin_hunk_11

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %21

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
end_hunk_11
begin_hunk_12
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %bb.al

21:                                               ; preds = %bb.f
  br i1 %i.q, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.e, %21
  %.029 = phi i32 [ 1, %21 ], [ 0, %bb.e ]        ; 2 uses
  %i.u = icmp slt i32 %.029, %i.a
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %21
  %22 = icmp sgt i32 %i.a, 1
  br i1 %22, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.bv, %bb.v ], [ 1, %.preheader ] ; 4 uses
  %.093114 = phi i16 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h
end_hunk_12
begin_hunk_13
  %i.bw = icmp slt i32 %i.bv, %i.a
  br i1 %i.bw, label %.lr.ph117, label %.loopexit, !llvm.loop !11303

.lr.ph:                                           ; preds = %bb.g, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %bb.g ]
  %.332110 = phi i32 [ %i.dx, %bb.ak ], [ %.029, %bb.g ] ; 4 uses
  %.295109 = phi i16 [ %.396, %bb.ak ], [ 0, %bb.g ] ; 4 uses
  %i.bx = trunc nuw i8 %.2111 to i1
  br i1 %i.bx, label %bb.y, label %bb.w

end_hunk_13
begin_hunk_14
  %i.dy = icmp slt i32 %i.dx, %i.a
  br i1 %i.dy, label %.lr.ph, label %.loopexit, !llvm.loop !11325

.loopexit:                                        ; preds = %bb.i, %bb.v, %bb.x, %bb.ak, %bb.g, %.preheader
  %.497 = phi i16 [ 0, %bb.g ], [ 0, %.preheader ], [ %.396, %bb.ak ], [ %.295109, %bb.x ], [ %.093114, %bb.i ], [ %.194, %bb.v ]
  store i16 %.497, ptr %0, align 8, !tbaa !178
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dz, align 8, !tbaa !9974
end_hunk_14
begin_hunk_15
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 8 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

end_hunk_15
begin_hunk_16

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %21

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
end_hunk_16
begin_hunk_17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %bb.al

21:                                               ; preds = %bb.f
  br i1 %i.q, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.e, %21
  %.029 = phi i32 [ 1, %21 ], [ 0, %bb.e ]        ; 2 uses
  %i.u = icmp slt i32 %.029, %i.a
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %21
  %22 = icmp sgt i32 %i.a, 1
  br i1 %22, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.bs, %bb.v ], [ 1, %.preheader ] ; 4 uses
  %.093114 = phi i64 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h
end_hunk_17
begin_hunk_18
  %i.bt = icmp slt i32 %i.bs, %i.a
  br i1 %i.bt, label %.lr.ph117, label %.loopexit, !llvm.loop !13087

.lr.ph:                                           ; preds = %bb.g, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %bb.g ]
  %.332110 = phi i32 [ %i.dr, %bb.ak ], [ %.029, %bb.g ] ; 4 uses
  %.295109 = phi i64 [ %.396, %bb.ak ], [ 0, %bb.g ] ; 4 uses
  %i.bu = trunc nuw i8 %.2111 to i1
  br i1 %i.bu, label %bb.y, label %bb.w

end_hunk_18
begin_hunk_19
  %i.ds = icmp slt i32 %i.dr, %i.a
  br i1 %i.ds, label %.lr.ph, label %.loopexit, !llvm.loop !13109

.loopexit:                                        ; preds = %bb.i, %bb.v, %bb.x, %bb.ak, %bb.g, %.preheader
  %.497 = phi i64 [ 0, %bb.g ], [ 0, %.preheader ], [ %.396, %bb.ak ], [ %.295109, %bb.x ], [ %.093114, %bb.i ], [ %.194, %bb.v ]
  store i64 %.497, ptr %0, align 8, !tbaa !178
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dt, align 8, !tbaa !6942
end_hunk_19
begin_hunk_20
  %18 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %19 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %20 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 8 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

end_hunk_20
begin_hunk_21

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = icmp eq i32 %i.a, 1
  br i1 %i.r, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44, label %21

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit44: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
end_hunk_21
begin_hunk_22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %bb.al

21:                                               ; preds = %bb.f
  br i1 %i.q, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.e, %21
  %.029 = phi i32 [ 1, %21 ], [ 0, %bb.e ]        ; 2 uses
  %i.u = icmp slt i32 %.029, %i.a
  br i1 %i.u, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %21
  %22 = icmp sgt i32 %i.a, 1
  br i1 %22, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %.preheader, %bb.v
  %.0116 = phi i8 [ %.1, %bb.v ], [ 0, %.preheader ]
  %.130115 = phi i32 [ %i.br, %bb.v ], [ 1, %.preheader ] ; 4 uses
  %.093114 = phi i128 [ %.194, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.v = trunc nuw i8 %.0116 to i1
  br i1 %i.v, label %bb.j, label %bb.h
end_hunk_22
begin_hunk_23
  %i.bs = icmp slt i32 %i.br, %i.a
  br i1 %i.bs, label %.lr.ph117, label %.loopexit, !llvm.loop !15419

.lr.ph:                                           ; preds = %bb.g, %bb.ak
  %.2111 = phi i8 [ %.3, %bb.ak ], [ 0, %bb.g ]
  %.332110 = phi i32 [ %i.dp, %bb.ak ], [ %.029, %bb.g ] ; 4 uses
  %.295109 = phi i128 [ %.396, %bb.ak ], [ 0, %bb.g ] ; 4 uses
  %i.bt = trunc nuw i8 %.2111 to i1
  br i1 %i.bt, label %bb.y, label %bb.w

end_hunk_23
begin_hunk_24
  %i.dq = icmp slt i32 %i.dp, %i.a
  br i1 %i.dq, label %.lr.ph, label %.loopexit, !llvm.loop !15441

.loopexit:                                        ; preds = %bb.i, %bb.v, %bb.x, %bb.ak, %bb.g, %.preheader
  %.497 = phi i128 [ 0, %bb.g ], [ 0, %.preheader ], [ %.396, %bb.ak ], [ %.295109, %bb.x ], [ %.093114, %bb.i ], [ %.194, %bb.v ]
  store i128 %.497, ptr %0, align 16, !tbaa !178
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.dr, align 16, !tbaa !14074
end_hunk_24
