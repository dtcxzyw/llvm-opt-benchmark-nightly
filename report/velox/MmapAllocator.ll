begin_hunk_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %.thread65

.thread65:                                        ; preds = %._crit_edge, %bb.a
  %.040 = phi i32 [ %1, %bb.a ], [ %.141.lcssa, %._crit_edge ] ; 2 uses
  %i.f = tail call noundef i32 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass19findMappedFreeGroupEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 3 uses
  %i.g = shl i32 %i.f, 3                          ; 3 uses
  %i.h = add i32 %i.g, 8                          ; 3 uses
  %.not101 = icmp eq i32 %i.g, -8
  br i1 %.not101, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread65
  %i.i = sext i32 %i.g to i64
end_hunk_0
begin_hunk_1
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 4
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !342

._crit_edge:                                      ; preds = %.thread56, %.thread65
  %.141.lcssa = phi i32 [ %.040, %.thread65 ], [ %.24261, %.thread56 ]
  %.0.lcssa = phi i1 [ false, %.thread65 ], [ %.163, %.thread56 ]
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.bv = zext i32 %i.f to i64                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
end_hunk_1
begin_hunk_2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !106
  %i.cc = and i8 %i.cb, %i.by
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !106
  br i1 %.0.lcssa, label %.thread65, label %.loopexit, !llvm.loop !343

.loopexit:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 774, i32 noundef 2)
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
end_hunk_2
