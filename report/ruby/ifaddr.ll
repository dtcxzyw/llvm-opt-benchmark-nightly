inline.NumInlined: 33
inline.NumDeleted: 19
begin_hunk_0_@socket_s_getifaddrs:bb.a
  br i1 %.not39.i, label %bb.e, label %.preheader.i, !llvm.loop !26

bb.e:                                             ; preds = %.preheader.i
  %lsr.iv26.lcssa = phi i64 [ %lsr.iv26, %.preheader.i ]
  %lsr.iv24.lcssa = phi i2 [ %lsr.iv24, %.preheader.i ]
  %indvar.lcssa = phi i64 [ %lsr.iv.next, %.preheader.i ]
  %indvars.iv47.i.lcssa = phi i32 [ %tmp, %.preheader.i ]
  %.03441.i.lcssa = phi i32 [ %tmp3, %.preheader.i ]
end_hunk_0
begin_hunk_1_@socket_s_getifaddrs:bb.a
  %i.x = shl i64 %indvars.iv.i.epil.init, 4
  %i.y = add i64 %i.x, 16
  %scevgep18 = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %i.z = zext i2 %lsr.iv24.lcssa to i64
  %i.aa = shl nuw nsw i64 %i.z, 4
  br label %bb.g

end_hunk_1
begin_hunk_2_@socket_s_getifaddrs:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %lsr.iv31 = phi ptr [ %scevgep30, %.lr.ph.i.preheader ], [ %scevgep32, %.lr.ph.i ] ; 2 uses
  %lsr.iv28 = phi i64 [ %lsr.iv26.lcssa, %.lr.ph.i.preheader ], [ %lsr.iv.next29, %.lr.ph.i ]
  %i.af = load i64, ptr @rb_cSockIfaddr, align 8, !tbaa !10
  %i.ag = call i64 @rb_data_typed_object_wrap(i64 noundef %i.af, ptr noundef nonnull %lsr.iv31, ptr noundef nonnull @ifaddr_type) #8
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !37
end_hunk_2
