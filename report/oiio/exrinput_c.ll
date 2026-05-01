inline.NumInlined: 5052
inline.NumDeleted: 1666
begin_hunk_0_@_ZNK11OpenImageIO4v3_116OpenEXRCoreInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load <2 x i32>, ptr %i.d, align 8, !tbaa !3 ; 7 uses
  switch i32 %i.b, label %bb.c [
    i32 1, label %.preheader
    i32 2, label %.loopexit
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_116OpenEXRCoreInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE:bb.a
  %i.g = load i32, ptr %i.f, align 4, !tbaa !199
  %.fr53 = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr53, 0
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split.us.preheader.a

.lr.ph.split.us.preheader.a:                      ; preds = %.lr.ph
  %xtraiter = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.us.prol.a

.lr.ph.split.us.prol.a:                           ; preds = %.lr.ph.split.us.preheader.a
  %3 = add nsw <2 x i32> %i.e, splat (i32 1)
  %4 = sdiv <2 x i32> %3, splat (i32 2)
  %5 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %4, <2 x i32> splat (i32 1)) ; 2 uses
  %i.i = add nsw i32 %1, -1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.us.prol.a, %.lr.ph.split.us.preheader.a
  %.lcssa60.unr = phi <2 x i32> [ poison, %.lr.ph.split.us.preheader.a ], [ %5, %.lr.ph.split.us.prol.a ]
  %.050.unr = phi i32 [ %1, %.lr.ph.split.us.preheader.a ], [ %i.i, %.lr.ph.split.us.prol.a ]
  %.unr = phi <2 x i32> [ %i.e, %.lr.ph.split.us.preheader.a ], [ %5, %.lr.ph.split.us.prol.a ]
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %.loopexit, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter61 = and i32 %1, 1
  %lcmp.mod62.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader
  %7 = sdiv <2 x i32> %i.e, splat (i32 2)
  %8 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %7, <2 x i32> splat (i32 1)) ; 2 uses
  %9 = add nsw i32 %1, -1
  br label %.lr.ph.split.us.prol.loopexit

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.lcssa.unr = phi <2 x i32> [ poison, %.lr.ph.split.us.preheader ], [ %8, %.lr.ph.split.us.prol ]
  %.04449.us.unr = phi i32 [ %1, %.lr.ph.split.us.preheader ], [ %9, %.lr.ph.split.us.prol ]
  %.unr63 = phi <2 x i32> [ %i.e, %.lr.ph.split.us.preheader ], [ %8, %.lr.ph.split.us.prol ]
  %i.j = icmp eq i32 %1, 1
  br i1 %i.j, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.04548.us = phi i32 [ %i.k, %.lr.ph.split.us ], [ %.04449.us.unr, %.lr.ph.split.us.prol.loopexit ]
  %10 = phi <2 x i32> [ %14, %.lr.ph.split.us ], [ %.unr63, %.lr.ph.split.us.prol.loopexit ]
  %11 = sdiv <2 x i32> %10, splat (i32 2)
  %12 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %11, <2 x i32> splat (i32 1))
  %13 = lshr <2 x i32> %12, splat (i32 1)
  %14 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %13, <2 x i32> splat (i32 1)) ; 2 uses
  %i.k = add nsw i32 %.04548.us, -2               ; 2 uses
  %.not.us.1 = icmp eq i32 %i.k, 0
  br i1 %.not.us.1, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !299

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.050 = phi i32 [ %i.p, %.lr.ph.split ], [ %.050.unr, %.lr.ph.split.prol.loopexit ]
  %i.l = phi <2 x i32> [ %i.o, %.lr.ph.split ], [ %.unr, %.lr.ph.split.prol.loopexit ]
  %i.m = add nsw <2 x i32> %i.l, splat (i32 1)
  %i.n = sdiv <2 x i32> %i.m, splat (i32 2)
  %15 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.n, <2 x i32> splat (i32 1))
  %16 = add nuw nsw <2 x i32> %15, splat (i32 1)
  %17 = lshr <2 x i32> %16, splat (i32 1)
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %17, <2 x i32> splat (i32 1)) ; 2 uses
  %i.p = add nsw i32 %.050, -2                    ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !299

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !246
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1061, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_116OpenEXRCoreInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE, ptr noundef nonnull @.str.93, i32 noundef %i.b) #39 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %.preheader, %bb.b, %bb.c
  %18 = phi <2 x i32> [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %.preheader ], [ %14, %.lr.ph.split.us ], [ %.lcssa.unr, %.lr.ph.split.us.prol.loopexit ], [ %.lcssa60.unr, %.lr.ph.split.prol.loopexit ], [ %i.o, %.lr.ph.split ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store <2 x i32> %18, ptr %i.s, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.03.0.copyload = load i32, ptr %i.t, align 8, !tbaa !3 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 196
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %19 = load <2 x i32>, ptr %i.u, align 8, !tbaa !3 ; 3 uses
  %20 = load <2 x i32>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !3
  store i32 %.sroa.03.0.copyload, ptr %2, align 8, !tbaa !300
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.4.0.copyload, ptr %i.v, align 4, !tbaa !301
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %21 = sub <2 x i32> %20, %19
  %22 = add <2 x i32> %21, splat (i32 1)
  %23 = extractelement <2 x i32> %19, i64 0
  %24 = extractelement <2 x i32> %19, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.sroa.4.0.copyload.sink.a = phi i32 [ %23, %bb.d ], [ %.sroa.03.0.copyload, %.loopexit ]
  %.2.sink = phi i32 [ %24, %bb.d ], [ %.sroa.4.0.copyload, %.loopexit ]
  %25 = phi <2 x i32> [ %22, %bb.d ], [ %18, %.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.4.0.copyload.sink.a, ptr %i.x, align 8, !tbaa !302
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.2.sink, ptr %i.y, align 4, !tbaa !303
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store <2 x i32> %25, ptr %i.z, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !202, !range !101, !noundef !102
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %27 = extractelement <2 x i32> %18, i64 0       ; 2 uses
  store i32 %27, ptr %i.z, align 4, !tbaa !304
  store i32 %27, ptr %26, align 8, !tbaa !305
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_:bb.a
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !312
  store i32 %i.b, ptr %4, align 16, !tbaa !68, !alias.scope !309, !noalias !306
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !312
  store i32 %i.d, ptr %i.c, align 16, !tbaa !68, !alias.scope !309, !noalias !306
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !306
  %i.e = load ptr, ptr %6, align 8, !tbaa !70
  store ptr %i.e, ptr %5, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput15spec_dimensionsEii:bb.a
  %i.am = load <2 x i32>, ptr %i.ak, align 8, !tbaa !3
  store <2 x i32> %i.am, ptr %i.al, align 8, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !313, !range !101, !noundef !102
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !313
  tail call void @_ZNK11OpenImageIO4v3_116OpenEXRCoreInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(272) %i.g, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %.critedge

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput20read_native_scanlineEiiiiPv:bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_116OpenEXRCoreInput9init_partEii(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, i32 noundef %2)
  %i.d = add nsw i32 %3, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !314
  %i.g = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.d, i32 poison, i32 noundef 0, i32 noundef %i.f, ptr noundef %5)
  br label %bb.d

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput21read_native_scanlinesEiiiiiiiPv:bb.a
  store i64 %i.q, ptr %i.g, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !315
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %i.q, %i.t
  store i64 %i.u, ptr %i.h, align 8, !tbaa !69
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput21read_native_scanlinesEiiiiiiiPv:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !301  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !316
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 2 uses
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !3
  %i.ac = call i32 @llvm.smin.i32(i32 %4, i32 %i.ab) ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput21read_native_scanlinesEiiiiiPv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_116OpenEXRCoreInput9init_partEii(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, i32 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !314
  %i.f = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 poison, i32 noundef 0, i32 noundef %i.e, ptr noundef %6)
  br label %bb.d

end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput16read_native_tileEiiiiiPv:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !343  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 6 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !314
  %i.l = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEiib(ptr noundef nonnull align 8 dereferenceable(160) %i.e, i32 noundef 0, i32 noundef %i.k, i1 noundef zeroext true) #33 ; 5 uses
  %i.m = sext i32 %i.g to i64
  %i.n = mul i64 %i.l, %i.m                       ; 4 uses
  %i.o = load i32, ptr %i.e, align 8, !tbaa !300
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !13
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput16read_native_tileEiiiiiPv:bb.a
bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.g, %3
  %i.u = add nsw i32 %i.i, %4
  %i.v = load i32, ptr %i.j, align 4, !tbaa !314
  %i.w = call noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput18check_fill_missingEiiiiiiiiPvll(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %3, i32 noundef %i.t, i32 noundef %4, i32 noundef %i.u, i32 poison, i32 poison, i32 noundef 0, i32 noundef %i.v, ptr noundef %6, i64 noundef %i.l, i64 noundef %i.n)
  br label %bb.t

end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput16read_native_tileEiiiiiPv:bb.a
  br i1 %i.ai, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.h
  %i.aj = load i32, ptr %i.j, align 4, !tbaa !314
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit.lr.ph, label %._crit_edge

end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput16read_native_tileEiiiiiPv:bb.a
  %i.ax = add nsw i32 %i.i, %4
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !3
  %.sroa.speculated129 = call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.ay)
  %i.az = load i32, ptr %i.j, align 4, !tbaa !314
  %i.ba = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput18check_fill_missingEiiiiiiiiPvll(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %3, i32 noundef %.sroa.speculated133, i32 noundef %4, i32 noundef %.sroa.speculated129, i32 poison, i32 poison, i32 noundef 0, i32 noundef %i.az, ptr noundef %6, i64 noundef %i.l, i64 noundef %i.n)
          to label %bb.q unwind label %bb.j

end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput16read_native_tileEiiiiiPv:bb.a
.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread, %bb.k, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit.thread, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit, %.thread
  %.3101 = phi i64 [ %i.da, %.thread ], [ %.098140, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit ], [ %.098140, %_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi.exit.thread ], [ %.098140, %bb.k ], [ %.098140, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.db = load i32, ptr %i.j, align 4, !tbaa !314
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next154, %i.dc
  br i1 %i.dd, label %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit, label %._crit_edge, !llvm.loop !361
end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput16read_native_tileEiiiiiPv:bb.a
  %i.dl = add nsw i32 %i.i, %4
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.dl, i32 %i.dm)
  %i.dn = load i32, ptr %i.j, align 4, !tbaa !314
  %i.do = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput18check_fill_missingEiiiiiiiiPvll(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %3, i32 noundef %.sroa.speculated122, i32 noundef %4, i32 noundef %.sroa.speculated, i32 poison, i32 poison, i32 noundef 0, i32 noundef %i.dn, ptr noundef %6, i64 noundef %i.l, i64 noundef %i.n)
          to label %bb.q unwind label %bb.p

end_hunk_13
begin_hunk_14_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput17read_native_tilesEiiiiiiiiPv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_116OpenEXRCoreInput9init_partEii(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, i32 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !314
  %i.f = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_116OpenEXRCoreInput17read_native_tilesEiiiiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 0, i32 noundef %i.e, ptr noundef %9)
  br label %bb.d

end_hunk_14
begin_hunk_15_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput17read_native_tilesEiiiiiiiiiiPv:bb.a
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.aa) ; 3 uses
  store i32 %.1.i, ptr %i.h, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !300
  %i.ac = sub nsw i32 %3, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.v
  store i32 %i.ad, ptr %i.l, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !301
  %i.ag = sub nsw i32 %5, %i.af
  %i.ah = sdiv i32 %i.ag, %i.x
  store i32 %i.ah, ptr %i.m, align 4, !tbaa !3
end_hunk_15
begin_hunk_16_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput17read_native_tilesEiiiiiiiiiiPv:bb.a
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.au = load i32, ptr %i.t, align 8, !tbaa !300
  %i.av = load i32, ptr %i.o, align 4, !tbaa !3
  %i.aw = add nsw i32 %i.av, %i.au
  %.sroa.speculated34 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %4)
  %i.ax = load i32, ptr %i.ae, align 4, !tbaa !301
  %i.ay = load i32, ptr %i.p, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !368
end_hunk_16
begin_hunk_17_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE:bb.a
  %i.j = sub nsw i32 %4, %3
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !315
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.k, %i.n                   ; 6 uses
  %i.p = sub nsw i32 %.1.i, %6                    ; 3 uses
end_hunk_17
begin_hunk_18_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE:bb.a
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i32, ptr %i.h, align 4, !tbaa !314 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %i.z
  br i1 %i.ab, label %bb.d, label %_ZNK11OpenImageIO4v3_19ImageSpec18get_channelformatsERSt6vectorINS0_8TypeDescESaIS3_EE.exit

end_hunk_18
begin_hunk_19_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE:bb.a
  store i32 %.1.i, ptr %i.ay, align 4, !tbaa !382
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.f, ptr %i.az, align 8, !tbaa !383
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !315
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !384
end_hunk_19
begin_hunk_20_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE:bb.a
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.t) ; 2 uses
  %i.u = sub nsw i32 %.1.i, %9                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.v = load i32, ptr %i.m, align 8, !tbaa !300
  %i.w = sub nsw i32 %3, %i.v
  %i.x = sdiv i32 %i.w, %i.o
  store i32 %i.x, ptr %i.e, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !301
  %i.aa = sub nsw i32 %5, %i.z
  %i.ab = sdiv i32 %i.aa, %i.q
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !3
end_hunk_20
begin_hunk_21_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE:bb.a
  br i1 %.not50, label %bb.d, label %bb.ay

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !300
  %i.af = load i32, ptr %i.g, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, %i.ae
  %.sroa.speculated99 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %4)
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !301
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !3
  %i.aj = add nsw i32 %i.ai, %i.ah
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aj, i32 %6)
end_hunk_21
begin_hunk_22_@_ZN11OpenImageIO4v3_116OpenEXRCoreInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE:bb.a
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 4 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = load i32, ptr %i.s, align 4, !tbaa !314 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, %i.bg
  br i1 %i.bi, label %bb.e, label %_ZNK11OpenImageIO4v3_19ImageSpec18get_channelformatsERSt6vectorINS0_8TypeDescESaIS3_EE.exit

end_hunk_22
begin_hunk_23_@"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_116OpenEXRCoreInput21read_native_scanlinesEiiiiiiiPvE3$_0E9_M_invokeERKSt9_Any_dataOlSA_":bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1084, !nonnull !102, !align !531
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !301
  %i.aa = sub nsw i32 %.sroa.speculated109.i.i.i, %i.z
  %i.ab = srem i32 %i.aa, %i.r                    ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.ab, 0
end_hunk_23
begin_hunk_24_@"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_116OpenEXRCoreInput21read_native_scanlinesEiiiiiiiPvE3$_0E9_M_invokeERKSt9_Any_dataOlSA_":bb.a

.critedge68.i.i.i:                                ; preds = %.critedge67.i.i.i, %.critedge.i.i.i, %bb.k, %bb.i
  %i.et = load ptr, ptr %i.w, align 8, !tbaa !1084, !nonnull !102, !align !531 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !300 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !315
  %i.ex = add nsw i32 %i.ew, %i.eu
  %i.ey = add nsw i32 %.0.i.i.i, %.0112.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.val, i64 72
end_hunk_24
begin_hunk_25_@llvm.smax.v2i32
!297 = distinct !{!297, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEEKiSA_ELi3ELi0ELy285EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!298 = !{!296, !293}
!299 = distinct !{!299, !84}
!300 = !{!16, !4, i64 0}
!301 = !{!16, !4, i64 4}
!302 = !{!16, !4, i64 24}
!303 = !{!16, !4, i64 28}
!304 = !{!16, !4, i64 36}
!305 = !{!16, !4, i64 40}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!308 = distinct !{!308, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!311 = distinct !{!311, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!312 = !{!310, !307}
!313 = !{!16, !28, i64 128}
!314 = !{!16, !4, i64 60}
!315 = !{!16, !4, i64 12}
!316 = !{!16, !4, i64 16}
!317 = !{!172, !172, i64 0}
!318 = !{!319, !319, i64 0}
!319 = !{!"any p2 pointer", !12, i64 0}
end_hunk_25
