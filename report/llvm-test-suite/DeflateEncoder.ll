inline.NumInlined: 96
inline.NumDeleted: 34
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  store i32 258, ptr %i.t, align 8, !tbaa !136
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2193
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = icmp eq i8 %i.di, 0                     ; 3 uses
  %spec.store.select = select i1 %i.dj, i32 257, i32 258
  store i32 %spec.store.select, ptr %i.t, align 8
  %spec.select = select i1 %i.dj, i64 257, i64 258
  %spec.select65 = select i1 %i.dj, i64 256, i64 257
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge
  %storemerge.lcssa = phi i64 [ 268, %bb.w ], [ 286, %._crit_edge ], [ 285, %bb.f ], [ %spec.select, %bb.ag ], [ 284, %bb.g ], [ 271, %bb.t ], [ 283, %bb.h ], [ 259, %bb.af ], [ 282, %bb.i ], [ 265, %bb.z ], [ 281, %bb.j ], [ 260, %bb.ae ], [ 280, %bb.k ], [ 270, %bb.u ], [ 279, %bb.l ], [ 261, %bb.ad ], [ 278, %bb.m ], [ 267, %bb.x ], [ 277, %bb.n ], [ 262, %bb.ac ], [ 276, %bb.o ], [ 269, %bb.v ], [ 275, %bb.p ], [ 263, %bb.ab ], [ 274, %bb.q ], [ 266, %bb.y ], [ 273, %bb.r ], [ 264, %bb.aa ], [ 272, %bb.s ]
  %3 = phi i64 [ 267, %bb.w ], [ 285, %._crit_edge ], [ 284, %bb.f ], [ %spec.select65, %bb.ag ], [ 283, %bb.g ], [ 270, %bb.t ], [ 282, %bb.h ], [ 258, %bb.af ], [ 281, %bb.i ], [ 264, %bb.z ], [ 280, %bb.j ], [ 259, %bb.ae ], [ 279, %bb.k ], [ 269, %bb.u ], [ 278, %bb.l ], [ 260, %bb.ad ], [ 277, %bb.m ], [ 266, %bb.x ], [ 276, %bb.n ], [ 261, %bb.ac ], [ 275, %bb.o ], [ 268, %bb.v ], [ 274, %bb.p ], [ 262, %bb.ab ], [ 273, %bb.q ], [ 265, %bb.y ], [ 272, %bb.r ], [ 263, %bb.aa ], [ 271, %bb.s ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 32 uses
  store i32 32, ptr %i.dk, align 4, !tbaa !138
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2255
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  store i32 2, ptr %i.dk, align 4, !tbaa !138
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 2225
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !8
  %4 = icmp ne i8 %i.gy, 0                        ; 3 uses
  %spec.store.select65 = select i1 %4, i32 2, i32 1
  store i32 %spec.store.select65, ptr %i.dk, align 4
  %spec.select67 = select i1 %4, i64 2, i64 1
  %spec.select68 = zext i1 %4 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %.critedge, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %storemerge24.lcssa = phi i64 [ 9, %bb.bd ], [ 32, %.critedge ], [ 31, %bb.ah ], [ %spec.select67, %bb.bk ], [ 30, %bb.ai ], [ 16, %bb.aw ], [ 29, %bb.aj ], [ 3, %bb.bj ], [ 28, %bb.ak ], [ 11, %bb.bb ], [ 27, %bb.al ], [ 4, %bb.bi ], [ 26, %bb.am ], [ 15, %bb.ax ], [ 25, %bb.an ], [ 5, %bb.bh ], [ 24, %bb.ao ], [ 10, %bb.bc ], [ 23, %bb.ap ], [ 6, %bb.bg ], [ 22, %bb.aq ], [ 14, %bb.ay ], [ 21, %bb.ar ], [ 7, %bb.bf ], [ 20, %bb.as ], [ 12, %bb.ba ], [ 19, %bb.at ], [ 8, %bb.be ], [ 18, %bb.au ], [ 13, %bb.az ], [ 17, %bb.av ]
  %5 = phi i64 [ 8, %bb.bd ], [ 31, %.critedge ], [ 30, %bb.ah ], [ %spec.select68, %bb.bk ], [ 29, %bb.ai ], [ 15, %bb.aw ], [ 28, %bb.aj ], [ 2, %bb.bj ], [ 27, %bb.ak ], [ 10, %bb.bb ], [ 26, %bb.al ], [ 3, %bb.bi ], [ 25, %bb.am ], [ 14, %bb.ax ], [ 24, %bb.an ], [ 4, %bb.bh ], [ 23, %bb.ao ], [ 9, %bb.bc ], [ 22, %bb.ap ], [ 5, %bb.bg ], [ 21, %bb.aq ], [ 13, %bb.ay ], [ 20, %bb.ar ], [ 6, %bb.bf ], [ 19, %bb.as ], [ 11, %bb.ba ], [ 18, %bb.at ], [ 7, %bb.be ], [ 17, %bb.au ], [ 12, %bb.az ], [ 16, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.gz = load i8, ptr %i.s, align 8, !tbaa !8    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %spec.select49.i = select i1 %i.ha, i32 3, i32 4
  %spec.select.i = select i1 %i.ha, i32 138, i32 7
  %i.hb = zext i8 %i.gz to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.by, %.lr.ph.i
end_hunk_2
begin_hunk_3_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %.13753.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.339.i, %bb.by ] ; 2 uses
  %.04052.i = phi i32 [ 0, %.lr.ph.i ], [ %.141.i, %bb.by ] ; 2 uses
  %.04251.i = phi i32 [ %i.hb, %.lr.ph.i ], [ %i.hk, %bb.by ] ; 6 uses
  %i.hf = icmp samesign ult i64 %indvars.iv.i, %3
  br i1 %i.hf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
end_hunk_3
begin_hunk_4_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %.3.i = phi i32 [ %.2.i, %bb.bx ], [ %.13554.i, %bb.bn ]
  %.1.i = phi i32 [ %.04251.i, %bb.bx ], [ %.056.i, %bb.bn ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %storemerge.lcssa
  br i1 %exitcond.not.i, label %.lr.ph.i26, label %bb.bl, !llvm.loop !90

.lr.ph.i26:                                       ; preds = %bb.by
end_hunk_4
begin_hunk_5_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %spec.select49.i27 = select i1 %i.ii, i32 3, i32 4
  %spec.select.i28 = select i1 %i.ii, i32 138, i32 7
  %i.ij = zext i8 %i.ih to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cm, %.lr.ph.i26
end_hunk_5
begin_hunk_6_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %.13753.i33 = phi i32 [ %spec.select.i28, %.lr.ph.i26 ], [ %.339.i43, %bb.cm ] ; 2 uses
  %.04052.i34 = phi i32 [ 0, %.lr.ph.i26 ], [ %.141.i42, %bb.cm ] ; 2 uses
  %.04251.i35 = phi i32 [ %i.ij, %.lr.ph.i26 ], [ %i.is, %bb.cm ] ; 6 uses
  %i.in = icmp samesign ult i64 %indvars.iv.i30, %5
  br i1 %i.in, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
end_hunk_6
begin_hunk_7_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %.3.i44 = phi i32 [ %.2.i41, %bb.cl ], [ %.13554.i32, %bb.cb ]
  %.1.i45 = phi i32 [ %.04251.i35, %bb.cl ], [ %.056.i31, %bb.cb ]
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, %storemerge24.lcssa
  br i1 %exitcond.not.i47, label %bb.cn, label %bb.bz, !llvm.loop !90

bb.cn:                                            ; preds = %bb.cm
end_hunk_7
