inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0_@nmin_filter:bb.a
  %.not138.not.not.not.not.not.not.not.not.not = icmp eq i8 %.mask, 0
  %i.r = load i64, ptr %i.e, align 8, !tbaa !17
  %i.s = add i64 %i.r, -1
  %1 = select i1 %.not138.not.not.not.not.not.not.not.not.not, i64 8, i64 16 ; 12 uses
  %.mask.lobit = lshr exact i8 %.mask, 1
  %2 = zext nneg i8 %.mask.lobit to i64           ; 9 uses
  %i.t = getelementptr i8, ptr %0, i64 40
  br label %bb.e

end_hunk_0
begin_hunk_1_@nmin_filter:bb.a
  %i.v = sdiv i64 %i.u, 2
  %i.w = add i64 %i.v, %.0132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.x = shl i64 %i.w, %2
  %i.y = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.x ; 2 uses
  %i.z = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.y, i64 noundef range(i64 8, 17) %1, i64 noundef 16) #13, !alias.scope !31 ; 0 uses
  %i.aa = shl i64 %.0129, %2
  %i.ab = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.aa ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.ab, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.a, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ac = add i64 %.0129, -1                      ; 3 uses
  %.not140159 = icmp sgt i64 %.0132, %i.ac
end_hunk_1
begin_hunk_2_@nmin_filter:bb.a
  %.0124161 = phi i64 [ %.1125, %bb.j ], [ %.0132, %bb.e ] ; 3 uses
  %.0126160 = phi i64 [ %.2128, %bb.j ], [ %.0132, %bb.e ] ; 4 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.ag = shl i64 %.0124161, %2
  %i.ah = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ag ; 5 uses
  %i.ai = call i32 %i.af(ptr noundef %i.ah, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #13 ; 2 uses
  %i.aj = load i8, ptr %i.p, align 8
end_hunk_2
begin_hunk_3_@nmin_filter:bb.a

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.an = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.ah, i64 noundef range(i64 8, 17) %1, i64 noundef 16) #13, !alias.scope !35 ; 0 uses
  %i.ao = shl i64 %i.ae, %2
  %i.ap = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ao ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ah, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.ap, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ap, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.b, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.aq = add i64 %.0121162, 1
  br label %bb.j, !llvm.loop !39
end_hunk_3
begin_hunk_4_@nmin_filter:bb.a

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.as = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.ah, i64 noundef range(i64 8, 17) %1, i64 noundef 16) #13, !alias.scope !40 ; 0 uses
  %i.at = shl i64 %.0126160, %2
  %i.au = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.at ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ah, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.au, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.au, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.c, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.av = add i64 %.0126160, 1
  br label %bb.i
end_hunk_4
begin_hunk_5_@nmin_filter:bb.a
  %.0123168 = phi i64 [ %i.bd, %.lr.ph169 ], [ %.0126.lcssa, %.preheader ] ; 2 uses
  %.2167 = phi i64 [ %i.be, %.lr.ph169 ], [ %.0129, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ay = shl i64 %.0123168, %2
  %i.az = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ay ; 2 uses
  %i.ba = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.az, i64 noundef range(i64 8, 17) %1, i64 noundef 16) #13, !alias.scope !44 ; 0 uses
  %i.bb = shl i64 %.2167, %2
  %i.bc = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.bb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.bc, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.bc, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.d, i64 noundef range(i64 8, 17) %1, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.bd = add nsw i64 %.0123168, 1                ; 2 uses
  %i.be = add nsw i64 %.2167, -1                  ; 3 uses
end_hunk_5
begin_hunk_6_@nmin_filter:bb.a

bb.l:                                             ; preds = %._crit_edge
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !18  ; 2 uses
  %i.bj = shl i64 %.0126.lcssa, %2
  %i.bk = inttoptr i64 %i.bi to ptr               ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.bm = and i64 %i.bl, 8192
end_hunk_6
begin_hunk_7_@nmin_filter:bb.a
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !19
  %i.bt = load i64, ptr %0, align 8, !tbaa !13    ; 2 uses
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !17
  %i.bu = shl i64 %i.bt, %2
  %i.bv = call i64 @rb_ary_resize(i64 noundef %i.bi, i64 noundef %i.bu) #13 ; 0 uses
  br label %bb.o

end_hunk_7
