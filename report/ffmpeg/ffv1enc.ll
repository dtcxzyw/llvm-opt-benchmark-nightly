Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
bb.hy:                                            ; preds = %._crit_edge.i633
  %i.dfh = trunc i64 %indvars.iv41.i631 to i32
  %i.dfi = add i32 %i.dfh, -111                   ; 2 uses
  %or.cond7.i = icmp ult i32 %i.dfi, 24
  br i1 %or.cond7.i, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %i.dfj = lshr i32 8388736, %i.dfi
  %i.dfk = sub nsw i32 0, %i.dfj
  br label %bb.ib

bb.ia:                                            ; preds = %._crit_edge.i633
  %i.dfl = zext nneg i32 %.1.i to i64
  %i.dfm = shl i64 65537, %i.dfl
  %i.dfn = lshr i64 %i.dfm, 16
  %i.dfo = trunc i64 %i.dfn to i32
  %i.dfp = sub i32 0, %i.dfo
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz, %bb.hy
  %.sink.i634 = phi i32 [ %i.dfk, %bb.hz ], [ %i.dfp, %bb.ia ], [ -1, %bb.hy ]
  %i.dfq = getelementptr inbounds nuw [4 x i8], ptr %i.dbc, i64 %indvars.iv41.i631
  store i32 %.sink.i634, ptr %i.dfq, align 4, !tbaa !63
  %i.dfr = sext i32 %.1.i to i64
  %i.dfs = getelementptr inbounds [4 x i8], ptr %i.dez, i64 %i.dfr
  %i.dft = load float, ptr %i.dfs, align 4, !tbaa !316
  %i.dfu = fadd nsz float %i.dey, %i.dft          ; 3 uses
  %indvars.iv.next42.i635 = add nuw nsw i64 %indvars.iv41.i631, 1 ; 2 uses
  %exitcond45.not.i636 = icmp eq i64 %indvars.iv.next42.i635, %wide.trip.count44.i630
  br i1 %exitcond45.not.i636, label %._crit_edge14.i, label %.lr.ph11.preheader.i, !llvm.loop !320

bb.ic:                                            ; preds = %bb.hx
  %i.dfv = call fastcc i32 @encode_float32_remap_segment(ptr noundef %1, i32 noundef %i.daq, i32 noundef %i.dbe, ptr noundef %i.dbc, i32 noundef 0, i32 noundef 0)
  %i.dfw = sitofp nsz i32 %i.dfv to float         ; 2 uses
  store float %i.dfw, ptr %i.dbh, align 4, !tbaa !316
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hx
  %i.dfx = phi float [ %i.dfw, %bb.ic ], [ %i.dev, %bb.hx ]
  %i.dfy = sext i32 %.014617.i to i64
  %i.dfz = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.dfy
  %i.dga = load float, ptr %i.dfz, align 4, !tbaa !316
  %i.dgb = fcmp nsz olt float %i.dfx, %i.dga
  %.1147.i = select i1 %i.dgb, i32 %i.dbd, i32 %.014617.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, %i.dan ; 2 uses
  %.not.i637 = icmp sgt i64 %indvars.iv.next47.i, %i.dao
  br i1 %.not.i637, label %._crit_edge20.i, label %bb.hk, !llvm.loop !321

encode_histogram_remap.exit:                      ; preds = %bb.dq, %.lr.ph103.split.i, %._crit_edge20.i, %load_rgb_float32_frame.exit, %load_plane.exit491, %bb.am
  %i.dgc = icmp eq i32 %.0299, 0                  ; 8 uses
  br i1 %i.dgc, label %bb.ie, label %bb.ih

bb.ie:                                            ; preds = %encode_histogram_remap.exit
  %i.dgd = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.dge = icmp sgt i32 %i.dgd, 2                 ; 2 uses
  %brmerge1073 = select i1 %i.dge, i1 true, i1 %or.cond.not1077
  br i1 %brmerge1073, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.dgf = zext i1 %i.dge to i32
  %i.dgg = call i32 @ff_rac_terminate(ptr noundef nonnull %i.aj, i32 noundef %i.dgf) #19
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %i.dgh = phi i32 [ %i.dgg, %bb.if ], [ 0, %bb.ie ] ; 2 uses
  store i32 %i.dgh, ptr %i.aja, align 8, !tbaa !192
  %i.dgi = load ptr, ptr %i.ajc, align 8, !tbaa !187 ; 2 uses
  %i.dgj = sext i32 %i.dgh to i64                 ; 2 uses
  %i.dgk = getelementptr inbounds i8, ptr %i.dgi, i64 %i.dgj
  %i.dgl = load ptr, ptr %i.ajd, align 8, !tbaa !186
  %i.dgm = ptrtoint ptr %i.dgl to i64
  %i.dgn = ptrtoint ptr %i.dgi to i64
  %i.dgo = add i64 %i.dgn, %i.dgj
  %i.dgp = sub i64 %i.dgm, %i.dgo
  %i.dgq = trunc i64 %i.dgp to i32                ; 2 uses
  %i.dgr = icmp slt i32 %i.dgq, 0
  %spec.select.i650 = select i1 %i.dgr, ptr null, ptr %i.dgk ; 3 uses
  %spec.select11.i = call i32 @llvm.smax.i32(i32 %i.dgq, i32 0)
  store ptr %spec.select.i650, ptr %i.aje, align 8, !tbaa !322
  %i.dgs = zext nneg i32 %spec.select11.i to i64
  %i.dgt = getelementptr inbounds nuw i8, ptr %spec.select.i650, i64 %i.dgs
  store ptr %i.dgt, ptr %i.ajf, align 8, !tbaa !323
  store ptr %spec.select.i650, ptr %i.ajg, align 8, !tbaa !324
  store i32 32, ptr %i.ajh, align 4, !tbaa !325
  store i32 0, ptr %i.ajb, align 8, !tbaa !326
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %encode_histogram_remap.exit
  %i.dgu = load i32, ptr %i.aho, align 8, !tbaa !44
  %i.dgv = icmp eq i32 %i.dgu, 0
  %i.dgw = load i32, ptr %i.ae, align 8, !tbaa !130 ; 2 uses
  br i1 %i.dgv, label %bb.ii, label %thread-pre-split807

bb.ii:                                            ; preds = %bb.ih
  switch i32 %i.dgw, label %bb.ij [
    i32 56, label %bb.in
    i32 255, label %bb.in
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.dgx = load i32, ptr %i.ak, align 8, !tbaa !54
  %i.dgy = load i32, ptr %i.ap, align 4, !tbaa !55
  %i.dgz = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.dha = getelementptr inbounds i8, ptr %i.dgz, i64 %i.aw
  %i.dhb = load i32, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.dhc = mul nsw i32 %i.dhb, %i.ab
  %i.dhd = sext i32 %i.dhc to i64
  %i.dhe = getelementptr inbounds i8, ptr %i.dha, i64 %i.dhd
  %i.dhf = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dhe, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.dhb, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %.0299) ; 2 uses
  %i.dhg = load i32, ptr %i.aij, align 4, !tbaa !46
  %.not322 = icmp eq i32 %i.dhg, 0
  br i1 %.not322, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.dhh = ashr i32 %i.ab, %i.dgy                 ; 2 uses
  %i.dhi = ashr i32 %i.z, %i.dgx
  %i.dhj = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.dhk = mul nsw i32 %i.dhi, %i.ai
  %i.dhl = sext i32 %i.dhk to i64                 ; 2 uses
  %i.dhm = getelementptr inbounds i8, ptr %i.dhj, i64 %i.dhl
  %i.dhn = load i32, ptr %i.aii, align 4, !tbaa !63 ; 2 uses
  %i.dho = mul nsw i32 %i.dhn, %i.dhh
  %i.dhp = sext i32 %i.dho to i64
  %i.dhq = getelementptr inbounds i8, ptr %i.dhm, i64 %i.dhp
  %i.dhr = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dhq, i32 noundef %i.ao, i32 noundef %i.at, i32 noundef %i.dhn, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %.0299)
  %i.dhs = load ptr, ptr %i.bo, align 8, !tbaa !62
  %i.dht = getelementptr inbounds i8, ptr %i.dhs, i64 %i.dhl
  %i.dhu = load i32, ptr %i.aih, align 8, !tbaa !63 ; 2 uses
  %i.dhv = mul nsw i32 %i.dhu, %i.dhh
  %i.dhw = sext i32 %i.dhv to i64
  %i.dhx = getelementptr inbounds i8, ptr %i.dht, i64 %i.dhw
  %i.dhy = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dhx, i32 noundef %i.ao, i32 noundef %i.at, i32 noundef %i.dhu, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef %.0299)
  %i.dhz = or i32 %i.dhr, %i.dhy
  %i.dia = or i32 %i.dhz, %i.dhf
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.0298 = phi i32 [ %i.dia, %bb.ik ], [ %i.dhf, %bb.ij ] ; 2 uses
  %i.dib = load i32, ptr %i.aib, align 8, !tbaa !56
  %.not323 = icmp eq i32 %i.dib, 0
  br i1 %.not323, label %bb.vg, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.dic = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.did = getelementptr inbounds i8, ptr %i.dic, i64 %i.aw
  %i.die = load i32, ptr %i.aie, align 4, !tbaa !63 ; 2 uses
  %i.dif = mul nsw i32 %i.die, %i.ab
  %i.dig = sext i32 %i.dif to i64
  %i.dih = getelementptr inbounds i8, ptr %i.did, i64 %i.dig
  %i.dii = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dih, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.die, i32 noundef 2, i32 noundef 3, i32 noundef 1, i32 noundef %.0299)
  %i.dij = or i32 %i.dii, %.0298
  br label %bb.vg

thread-pre-split807:                              ; preds = %bb.ih
  switch i32 %i.dgw, label %bb.io [
    i32 56, label %bb.in
    i32 255, label %bb.in
  ]

bb.in:                                            ; preds = %bb.ii, %bb.ii, %thread-pre-split807, %thread-pre-split807
  %i.dik = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.dil = getelementptr inbounds i8, ptr %i.dik, i64 %i.aw
  %i.dim = load i32, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.din = mul nsw i32 %i.dim, %i.ab
  %i.dio = sext i32 %i.din to i64
  %i.dip = getelementptr inbounds i8, ptr %i.dil, i64 %i.dio
  %i.diq = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dip, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.dim, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef %.0299)
  %i.dir = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.dis = getelementptr inbounds i8, ptr %i.dir, i64 %i.ahy
  %i.dit = getelementptr inbounds i8, ptr %i.dis, i64 %i.aw
  %i.diu = load i32, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.div = mul nsw i32 %i.diu, %i.ab
  %i.diw = sext i32 %i.div to i64
  %i.dix = getelementptr inbounds i8, ptr %i.dit, i64 %i.diw
  %i.diy = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dix, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.diu, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef %.0299)
  %i.diz = or i32 %i.diy, %i.diq
  br label %bb.vg

bb.io:                                            ; preds = %thread-pre-split807
  %i.dja = load i32, ptr %i.ahs, align 4, !tbaa !45 ; 2 uses
  %i.djb = icmp eq i32 %i.dja, 32
  br i1 %i.djb, label %bb.ip, label %bb.ow

bb.ip:                                            ; preds = %bb.io
  %i.djc = load i32, ptr %i.ahj, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.djd = load ptr, ptr %i.ajj, align 8, !tbaa !29
  %i.dje = getelementptr inbounds nuw i8, ptr %i.djd, i64 64
  %i.djf = load i32, ptr %i.dje, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.djg = load i32, ptr %i.aib, align 8, !tbaa !56 ; 3 uses
  call void @ff_ffv1_compute_bits_per_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 32) #19
  store i32 0, ptr %i.ajk, align 8, !tbaa !327
  %i.djh = load ptr, ptr %i.ajl, align 8, !tbaa !328 ; 5 uses
  store ptr %i.djh, ptr %i.akb, align 16, !tbaa !147
  store ptr %i.djh, ptr %i.akc, align 8, !tbaa !147
  store ptr %i.djh, ptr %i.akd, align 16, !tbaa !147
  store ptr %i.djh, ptr %i.ake, align 8, !tbaa !147
  %.not.i651 = icmp eq i32 %i.djc, 0              ; 2 uses
  %i.dji = select i1 %.not.i651, i32 2, i32 3     ; 5 uses
  %i.djj = mul i32 %i.akg, %i.dji
  %i.djk = sext i32 %i.djj to i64
  %i.djl = shl nsw i64 %i.djk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.djh, i8 0, i64 %i.djl, i1 false)
  br i1 %i.ahu, label %.preheader37.lr.ph.i, label %encode_float32_rgb_frame.exit

.preheader37.lr.ph.i:                             ; preds = %bb.ip
  %i.djm = mul i32 %i.dji, %i.akf                 ; 3 uses
  %.not113.i = icmp eq i32 %i.djg, 0
  %i.djn = icmp sgt i32 %i.djg, -3
  %i.djo = and i32 %i.djf, 512
  %.not132.i.i = icmp eq i32 %i.djo, 0
  %i.djp = add i32 %i.djg, 2
  %smax.i652 = call i32 @llvm.smax.i32(i32 %i.djp, i32 0)
  %i.djq = add nuw i32 %smax.i652, 1
  %i.djr = sext i32 %i.djm to i64                 ; 3 uses
  %i.djs = shl i32 %i.djm, 1
  %i.djt = sext i32 %i.djs to i64                 ; 3 uses
  %i.dju = mul i32 %i.djm, 3
  %i.djv = sext i32 %i.dju to i64                 ; 3 uses
  %wide.trip.count167.i = zext i32 %i.djq to i64
  br label %.preheader37.i

.preheader37.i:                                   ; preds = %._crit_edge103.i, %.preheader37.lr.ph.i
  %indvars.iv169.i = phi i64 [ 0, %.preheader37.lr.ph.i ], [ %indvars.iv.next170.i, %._crit_edge103.i ] ; 3 uses
  %.096105.i = phi i32 [ undef, %.preheader37.lr.ph.i ], [ %.197.lcssa.i, %._crit_edge103.i ] ; 2 uses
  %i.djw = load ptr, ptr %i.ajl, align 8, !tbaa !328 ; 3 uses
  %i.djx = trunc i64 %indvars.iv169.i to i32
  %i.djy = sub i32 %i.x, %i.djx                   ; 3 uses
  %i.djz = srem i32 %i.djy, %i.dji
  %i.dka = mul nsw i32 %i.djz, %i.akf
  %i.dkb = sext i32 %i.dka to i64
  %invariant.gep.i655 = getelementptr [4 x i8], ptr %i.djw, i64 %i.dkb ; 4 uses
  %i.dkc = getelementptr inbounds nuw i8, ptr %invariant.gep.i655, i64 12 ; 2 uses
  store ptr %i.dkc, ptr %i.d, align 16, !tbaa !147
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i655, i64 %i.djr
  %i.dkd = getelementptr inbounds nuw i8, ptr %gep.1.i, i64 12 ; 2 uses
  store ptr %i.dkd, ptr %gep44.1.i, align 8, !tbaa !147
  %gep.2.i = getelementptr [4 x i8], ptr %invariant.gep.i655, i64 %i.djt
  %i.dke = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 12 ; 2 uses
  store ptr %i.dke, ptr %gep44.2.i, align 16, !tbaa !147
  %gep.3.i = getelementptr [4 x i8], ptr %invariant.gep.i655, i64 %i.djv
  %i.dkf = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 12 ; 2 uses
  store ptr %i.dkf, ptr %gep44.3.i, align 8, !tbaa !147
  %i.dkg = add i32 %i.djy, 1
  %i.dkh = srem i32 %i.dkg, %i.dji
  %i.dki = mul nsw i32 %i.dkh, %i.akf
  %i.dkj = sext i32 %i.dki to i64
  %invariant.gep.i655.1 = getelementptr [4 x i8], ptr %i.djw, i64 %i.dkj ; 4 uses
  %i.dkk = getelementptr inbounds nuw i8, ptr %invariant.gep.i655.1, i64 12
  store ptr %i.dkk, ptr %invariant.gep43.i.1, align 8, !tbaa !147
  %gep.1.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i655.1, i64 %i.djr
  %i.dkl = getelementptr inbounds nuw i8, ptr %gep.1.i.1, i64 12
  store ptr %i.dkl, ptr %gep44.1.i.1, align 16, !tbaa !147
  %gep.2.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i655.1, i64 %i.djt
  %i.dkm = getelementptr inbounds nuw i8, ptr %gep.2.i.1, i64 12
  store ptr %i.dkm, ptr %gep44.2.i.1, align 8, !tbaa !147
  %gep.3.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i655.1, i64 %i.djv
  %i.dkn = getelementptr inbounds nuw i8, ptr %gep.3.i.1, i64 12
  store ptr %i.dkn, ptr %gep44.3.i.1, align 16, !tbaa !147
  br i1 %.not.i651, label %.preheader36.i, label %.preheader34.i.2

.preheader36.i:                                   ; preds = %.preheader34.i.2, %.preheader37.i
  br i1 %i.ahv, label %.lr.ph.i673, label %.preheader35.i

.lr.ph.i673:                                      ; preds = %.preheader36.i
  %i.dko = load ptr, ptr %i.akh, align 8, !tbaa !147
  %i.dkp = mul nuw nsw i64 %indvars.iv169.i, %wide.trip.count.i499
  %i.dkq = load ptr, ptr %i.aki, align 8, !tbaa !147
  %i.dkr = load ptr, ptr %i.akj, align 8, !tbaa !147
  br label %bb.iq

.preheader34.i.2:                                 ; preds = %.preheader37.i
  %i.dks = add i32 %i.djy, 2
  %i.dkt = srem i32 %i.dks, %i.dji
  %i.dku = mul nsw i32 %i.dkt, %i.akf
  %i.dkv = sext i32 %i.dku to i64
  %invariant.gep.i655.2 = getelementptr [4 x i8], ptr %i.djw, i64 %i.dkv ; 4 uses
  %i.dkw = getelementptr inbounds nuw i8, ptr %invariant.gep.i655.2, i64 12
  store ptr %i.dkw, ptr %invariant.gep43.i.2, align 16, !tbaa !147
  %gep.1.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i655.2, i64 %i.djr
  %i.dkx = getelementptr inbounds nuw i8, ptr %gep.1.i.2, i64 12
  store ptr %i.dkx, ptr %gep44.1.i.2, align 8, !tbaa !147
  %gep.2.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i655.2, i64 %i.djt
  %i.dky = getelementptr inbounds nuw i8, ptr %gep.2.i.2, i64 12
  store ptr %i.dky, ptr %gep44.2.i.2, align 16, !tbaa !147
  %gep.3.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i655.2, i64 %i.djv
  %i.dkz = getelementptr inbounds nuw i8, ptr %gep.3.i.2, i64 12
  store ptr %i.dkz, ptr %gep44.3.i.2, align 8, !tbaa !147
  br label %.preheader36.i

.preheader35.i:                                   ; preds = %bb.iu, %.preheader36.i
  %.197.lcssa.i = phi i32 [ %.096105.i, %.preheader36.i ], [ %.298.i, %bb.iu ]
  br i1 %i.djn, label %.lr.ph102.i, label %._crit_edge103.i

bb.iq:                                            ; preds = %bb.iu, %.lr.ph.i673
  %indvars.iv125.i = phi i64 [ 0, %.lr.ph.i673 ], [ %indvars.iv.next126.i, %bb.iu ] ; 6 uses
  %.19748.i = phi i32 [ %.096105.i, %.lr.ph.i673 ], [ %.298.i, %bb.iu ]
  %i.dla = add nuw nsw i64 %indvars.iv125.i, %i.dkp ; 4 uses
  %i.dlb = getelementptr inbounds nuw [4 x i8], ptr %i.dko, i64 %i.dla
  %i.dlc = load i32, ptr %i.dlb, align 4, !tbaa !63 ; 4 uses
  %i.dld = getelementptr inbounds nuw [4 x i8], ptr %i.dkq, i64 %i.dla
  %i.dle = load i32, ptr %i.dld, align 4, !tbaa !63 ; 2 uses
  %i.dlf = getelementptr inbounds nuw [4 x i8], ptr %i.dkr, i64 %i.dla
  %i.dlg = load i32, ptr %i.dlf, align 4, !tbaa !63 ; 2 uses
  br i1 %.not113.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.dlh = load ptr, ptr %i.akk, align 8, !tbaa !147
  %i.dli = getelementptr inbounds nuw [4 x i8], ptr %i.dlh, i64 %i.dla
  %i.dlj = load i32, ptr %i.dli, align 4, !tbaa !63
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.298.i = phi i32 [ %i.dlj, %bb.ir ], [ %.19748.i, %bb.iq ] ; 3 uses
  %i.dlk = load i32, ptr %i.cj, align 4, !tbaa !200
  %.not114.i = icmp eq i32 %i.dlk, 1
  br i1 %.not114.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.dll = sub nsw i32 %i.dle, %i.dlc             ; 2 uses
  %i.dlm = sub nsw i32 %i.dlg, %i.dlc             ; 2 uses
  %i.dln = load i32, ptr %i.ahp, align 8, !tbaa !243
  %i.dlo = mul nsw i32 %i.dln, %i.dll
  %i.dlp = load i32, ptr %i.ahq, align 4, !tbaa !244
  %i.dlq = mul nsw i32 %i.dlp, %i.dlm
  %i.dlr = add nsw i32 %i.dlq, %i.dlo
  %i.dls = ashr i32 %i.dlr, 2
  %i.dlt = add nsw i32 %i.dls, %i.dlc
  %i.dlu = load i32, ptr %i.f, align 4, !tbaa !63 ; 2 uses
  %i.dlv = add nsw i32 %i.dlu, %i.dll
  %i.dlw = add nsw i32 %i.dlu, %i.dlm
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is
  %.0101.i = phi i32 [ %i.dlv, %bb.it ], [ %i.dle, %bb.is ]
  %.0100.i = phi i32 [ %i.dlt, %bb.it ], [ %i.dlc, %bb.is ]
  %.099.i = phi i32 [ %i.dlw, %bb.it ], [ %i.dlg, %bb.is ]
  %i.dlx = getelementptr inbounds nuw [4 x i8], ptr %i.dkc, i64 %indvars.iv125.i
  store i32 %.0100.i, ptr %i.dlx, align 4, !tbaa !63
  %i.dly = getelementptr inbounds nuw [4 x i8], ptr %i.dkd, i64 %indvars.iv125.i
  store i32 %.0101.i, ptr %i.dly, align 4, !tbaa !63
  %i.dlz = getelementptr inbounds nuw [4 x i8], ptr %i.dke, i64 %indvars.iv125.i
  store i32 %.099.i, ptr %i.dlz, align 4, !tbaa !63
  %i.dma = getelementptr inbounds nuw [4 x i8], ptr %i.dkf, i64 %indvars.iv125.i
  store i32 %.298.i, ptr %i.dma, align 4, !tbaa !63
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %exitcond129.not.i = icmp eq i64 %indvars.iv.next126.i, %wide.trip.count.i499
  br i1 %exitcond129.not.i, label %.preheader35.i, label %bb.iq, !llvm.loop !329

.lr.ph102.i:                                      ; preds = %.preheader35.i, %encode_line32.exit.i
  %indvars.iv164.i = phi i64 [ %indvars.iv.next165.i, %encode_line32.exit.i ], [ 0, %.preheader35.i ] ; 3 uses
  %i.dmb = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv164.i ; 4 uses
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.dmb, i64 8 ; 2 uses
  %i.dmd = load ptr, ptr %i.dmc, align 8, !tbaa !147 ; 2 uses
  %i.dme = load i32, ptr %i.dmd, align 4, !tbaa !63
  %i.dmf = load ptr, ptr %i.dmb, align 8, !tbaa !147 ; 2 uses
  %i.dmg = getelementptr inbounds i8, ptr %i.dmf, i64 -4
  store i32 %i.dme, ptr %i.dmg, align 4, !tbaa !63
  %i.dmh = getelementptr [4 x i8], ptr %i.dmd, i64 %i.akl ; 2 uses
  %i.dmi = getelementptr i8, ptr %i.dmh, i64 -4
  %i.dmj = load i32, ptr %i.dmi, align 4, !tbaa !63
  store i32 %i.dmj, ptr %i.dmh, align 4, !tbaa !63
  %i.dmk = load ptr, ptr %i.ajj, align 8, !tbaa !29
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 3 uses
  %i.dml = lshr i64 %indvars.iv.next165.i, 1
  %i.dmm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv164.i
  %i.dmn = load i32, ptr %i.dmm, align 4, !tbaa !63 ; 7 uses
  %i.dmo = load ptr, ptr %i.ahi, align 8, !tbaa !133
  %i.dmp = and i64 %i.dml, 2147483647
  %i.dmq = getelementptr inbounds nuw [24 x i8], ptr %i.dmo, i64 %i.dmp ; 3 uses
  %i.dmr = load i32, ptr %i.ajk, align 8, !tbaa !327 ; 2 uses
  %i.dms = icmp eq i32 %i.dmn, 0
  br i1 %i.dms, label %encode_line32.exit.i, label %bb.iv

bb.iv:                                            ; preds = %.lr.ph102.i
  %i.dmt = load i32, ptr %i.cj, align 4, !tbaa !200
  %i.dmu = icmp eq i32 %i.dmt, 1
  br i1 %i.dmu, label %bb.iw, label %bb.jg

bb.iw:                                            ; preds = %bb.iv
  br i1 %i.dgc, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 42) #19
  call void @abort() #21
  unreachable

bb.iy:                                            ; preds = %bb.iw
  %i.dmv = load ptr, ptr %i.ajd, align 8, !tbaa !330
  %i.dmw = load ptr, ptr %i.ahn, align 8, !tbaa !51
  %i.dmx = ptrtoint ptr %i.dmv to i64
  %i.dmy = ptrtoint ptr %i.dmw to i64
  %i.dmz = sub i64 %i.dmx, %i.dmy
  %i.dna = mul nsw i32 %i.dmn, %i.v
  %i.dnb = sext i32 %i.dna to i64
  %i.dnc = add nsw i64 %i.dnb, 7
  %i.dnd = ashr i64 %i.dnc, 3
  %i.dne = icmp slt i64 %i.dmz, %i.dnd
  br i1 %i.dne, label %encode_float32_rgb_frame.exit.sink.split, label %.preheader32.i

.preheader32.i:                                   ; preds = %bb.iy
  %i.dnf = icmp sgt i32 %i.dmn, 0
  %or.cond.i665 = and i1 %i.ahv, %i.dnf
  br i1 %or.cond.i665, label %.lr.ph97.preheader.i, label %encode_line32.exit.i

.lr.ph97.preheader.i:                             ; preds = %.preheader32.i
  %.pre199.pre.i = load i32, ptr %i.ahk, align 4, !tbaa !47
  br label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %._crit_edge98.i, %.lr.ph97.preheader.i
  %.pre199.i = phi i32 [ %.pre199.pre.i, %.lr.ph97.preheader.i ], [ %i.dot, %._crit_edge98.i ]
  %indvars.iv159.i = phi i64 [ 0, %.lr.ph97.preheader.i ], [ %indvars.iv.next160.i, %._crit_edge98.i ] ; 2 uses
  %i.dng = getelementptr inbounds nuw [4 x i8], ptr %i.dmf, i64 %indvars.iv159.i
  %i.dnh = load i32, ptr %i.dng, align 4, !tbaa !63
  br label %bb.iz

bb.iz:                                            ; preds = %put_rac.exit.i667, %.lr.ph97.i
  %i.dni = phi i32 [ %.pre199.i, %.lr.ph97.i ], [ %i.dot, %put_rac.exit.i667 ] ; 2 uses
  %.0103.in.i95.i = phi i32 [ %i.dmn, %.lr.ph97.i ], [ %.0103.i.i, %put_rac.exit.i667 ] ; 2 uses
  %.0103.i.i = add nsw i32 %.0103.in.i95.i, -1    ; 2 uses
  %i.dnj = ashr i32 %i.dni, 1                     ; 2 uses
  %i.dnk = shl nuw i32 1, %.0103.i.i
  %i.dnl = and i32 %i.dnk, %i.dnh
  %.not.i117.i = icmp eq i32 %i.dnl, 0
  %i.dnm = sub i32 %i.dni, %i.dnj                 ; 2 uses
  br i1 %.not.i117.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.dnn = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.dno = add nsw i32 %i.dnn, %i.dnm
  store i32 %i.dno, ptr %i.aj, align 8, !tbaa !49
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.sink.i.i666 = phi i32 [ %i.dnj, %bb.ja ], [ %i.dnm, %bb.iz ] ; 4 uses
  store i32 %.sink.i.i666, ptr %i.ahk, align 4, !tbaa !47
  %i.dnp = icmp slt i32 %.sink.i.i666, 256
  br i1 %i.dnp, label %bb.jc, label %put_rac.exit.i667

bb.jc:                                            ; preds = %bb.jb
  %i.dnq = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.dnr = add nsw i32 %i.dnq, -65281             ; 2 uses
  %i.dns = icmp ugt i32 %i.dnr, 254
  br i1 %i.dns, label %bb.jd, label %bb.jf

bb.jd:                                            ; preds = %bb.jc
  %i.dnt = ashr i32 %i.dnr, 31                    ; 2 uses
  %i.dnu = load i32, ptr %i.ahm, align 4, !tbaa !50
  %i.dnv = add nsw i32 %i.dnt, 1
  %i.dnw = add i32 %i.dnv, %i.dnu
  %i.dnx = trunc i32 %i.dnw to i8
  %i.dny = load ptr, ptr %i.ahn, align 8, !tbaa !51
  store i8 %i.dnx, ptr %i.dny, align 1, !tbaa !41
  %i.dnz = load i32, ptr %i.ahm, align 4, !tbaa !50
  %i.doa = icmp sgt i32 %i.dnz, -1
  %i.dob = load ptr, ptr %i.ahn, align 8, !tbaa !51
  %i.doc = zext i1 %i.doa to i64
  %i.dod = getelementptr inbounds nuw i8, ptr %i.dob, i64 %i.doc
  store ptr %i.dod, ptr %i.ahn, align 8, !tbaa !51
  %i.doe = load i32, ptr %i.ahl, align 8, !tbaa !52
  %.not16.i.i.i669 = icmp eq i32 %i.doe, 0
  br i1 %.not16.i.i.i669, label %._crit_edge.i.i.i671, label %.lr.ph.i.i.i670

.lr.ph.i.i.i670:                                  ; preds = %bb.jd
  %i.dof = trunc nsw i32 %i.dnt to i8
  br label %bb.je

bb.je:                                            ; preds = %bb.je, %.lr.ph.i.i.i670
  %i.dog = load ptr, ptr %i.ahn, align 8, !tbaa !51 ; 2 uses
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 1
  store ptr %i.doh, ptr %i.ahn, align 8, !tbaa !51
  store i8 %i.dof, ptr %i.dog, align 1, !tbaa !41
  %i.doi = load i32, ptr %i.ahl, align 8, !tbaa !52
  %i.doj = add nsw i32 %i.doi, -1                 ; 2 uses
end_hunk_0
begin_hunk_1_@encode_slice:bb.a
  %i.fkq = and i32 %i.fkp, 65280
  store i32 %i.fkq, ptr %i.aj, align 8, !tbaa !49
  %i.fkr = shl i32 %.sink1818, 8
  store i32 %i.fkr, ptr %i.ahk, align 4, !tbaa !47
  br label %put_symbol_inline.exit173.i.i

put_symbol_inline.exit173.i.i:                    ; preds = %put_symbol_inline.exit173.i.i.sink.split, %bb.ny, %bb.nt, %bb.mv, %bb.lt, %bb.lo, %bb.kq
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.ph.i, 1 ; 2 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, %wide.trip.count.i499
  br i1 %exitcond155.not.i, label %._crit_edge84.thread.i, label %.outer.i, !llvm.loop !335

put_symbol_inline.exit173.i.i.thread:             ; preds = %put_bits.exit221.i, %.loopexit.i664
  %indvars.iv151.i1175 = phi i64 [ %indvars.iv151.i.lcssa1173, %put_bits.exit221.i ], [ %indvars.iv151.ph.i, %.loopexit.i664 ]
  %.0.i321.i = phi i32 [ %.lcssa1181, %put_bits.exit221.i ], [ %.0.i.le344.i, %.loopexit.i664 ]
  %.3113.i.ph.i = phi i32 [ %spec.select134.i.i, %put_bits.exit221.i ], [ %.0110.i79.ph.i.ph, %.loopexit.i664 ] ; 2 uses
  %.1.i.ph.i = phi i32 [ %spec.select135.i.i, %put_bits.exit221.i ], [ %.0.i182.i.i.peel, %.loopexit.i664 ]
  %i.fks = load ptr, ptr %i.dpr, align 8, !tbaa !336
  %i.fkt = zext nneg i32 %.0.i321.i to i64
  %i.fku = getelementptr inbounds nuw [8 x i8], ptr %i.fks, i64 %i.fkt
  call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.ajb, ptr noundef %i.fku, i32 noundef %.1.i.ph.i, i32 noundef %i.dmn)
  %indvars.iv.next152.i812 = add nuw nsw i64 %indvars.iv151.i1175, 1 ; 2 uses
  %exitcond155.not.i813 = icmp eq i64 %indvars.iv.next152.i812, %wide.trip.count.i499
  br i1 %exitcond155.not.i813, label %._crit_edge84.thread.i, label %.outer.i.outer, !llvm.loop !335

put_symbol_inline.exit173.i.thread.i:             ; preds = %bb.od
  %i.fkv = add nuw nsw i32 %.0106.i80.i, 1
  %indvars.iv.next152289.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond155.not290.i = icmp eq i64 %indvars.iv.next152289.i, %wide.trip.count.i499
  br i1 %exitcond155.not290.i, label %.preheader33.i, label %.peel.next1297, !llvm.loop !337

.preheader33.i:                                   ; preds = %put_symbol_inline.exit173.i.thread.i.peel, %put_symbol_inline.exit173.i.thread.i
  %i.fkw = trunc i64 %indvars.iv151.ph.i to i32
  %i.fkx = sub i32 %i.v, %i.fkw                   ; 3 uses
  %i.fky = sext i32 %.0110.i79.ph.i.ph to i64     ; 2 uses
  %i.fkz = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.fky
  %i.fla = load i8, ptr %i.fkz, align 1, !tbaa !41
  %i.flb = zext nneg i8 %i.fla to i32
  %i.flc = shl nuw i32 1, %i.flb                  ; 2 uses
  %.not126.i88.i = icmp slt i32 %i.fkx, %i.flc
  br i1 %.not126.i88.i, label %._crit_edge92.i, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.preheader33.i
  %.pre197.i = load i32, ptr %i.ajb, align 8, !tbaa !326
  %.pre198.i = load i32, ptr %i.ajh, align 4, !tbaa !325
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %put_bits.exit225.i, %.lr.ph91.preheader.i
  %i.fld = phi i32 [ %.pre198.i, %.lr.ph91.preheader.i ], [ %i.flx, %put_bits.exit225.i ] ; 4 uses
  %i.fle = phi i32 [ %.pre197.i, %.lr.ph91.preheader.i ], [ %.026.i.i223.i, %put_bits.exit225.i ] ; 2 uses
  %indvars.iv156.i = phi i64 [ %i.fky, %.lr.ph91.preheader.i ], [ %indvars.iv.next157.i, %put_bits.exit225.i ]
  %i.flf = phi i32 [ %i.flc, %.lr.ph91.preheader.i ], [ %i.fmb, %put_bits.exit225.i ]
  %.4.i90.i = phi i32 [ %i.fkx, %.lr.ph91.preheader.i ], [ %i.flg, %put_bits.exit225.i ]
  %i.flg = sub nsw i32 %.4.i90.i, %i.flf          ; 3 uses
  %indvars.iv.next157.i = add nsw i64 %indvars.iv156.i, 1 ; 3 uses
  %i.flh = icmp sgt i32 %i.fld, 1
  br i1 %i.flh, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %.lr.ph91.i
  %i.fli = shl i32 %i.fle, 1
  %i.flj = or disjoint i32 %i.fli, 1
  br label %put_bits.exit225.i

bb.oo:                                            ; preds = %.lr.ph91.i
  %i.flk = load ptr, ptr %i.ajf, align 8, !tbaa !323
  %i.fll = load ptr, ptr %i.ajg, align 8, !tbaa !324 ; 2 uses
  %i.flm = ptrtoint ptr %i.flk to i64
  %i.fln = ptrtoint ptr %i.fll to i64
  %i.flo = sub i64 %i.flm, %i.fln
  %i.flp = icmp ugt i64 %i.flo, 3
  br i1 %i.flp, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.flq = shl i32 %i.fle, %i.fld
  %i.flr = icmp eq i32 %i.fld, 1
  %i.fls = zext i1 %i.flr to i32
  %i.flt = or i32 %i.flq, %i.fls
  %i.flu = call i32 @llvm.bswap.i32(i32 %i.flt)
  store i32 %i.flu, ptr %i.fll, align 1, !tbaa !41
  %i.flv = load ptr, ptr %i.ajg, align 8, !tbaa !324
  %i.flw = getelementptr inbounds nuw i8, ptr %i.flv, i64 4
  store ptr %i.flw, ptr %i.ajg, align 8, !tbaa !324
  br label %put_bits.exit225.i

bb.oq:                                            ; preds = %bb.oo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit225.i

put_bits.exit225.i:                               ; preds = %bb.oq, %bb.op, %bb.on
  %.sink381.i = phi i32 [ -1, %bb.on ], [ 31, %bb.oq ], [ 31, %bb.op ]
  %.026.i.i223.i = phi i32 [ %i.flj, %bb.on ], [ 1, %bb.oq ], [ 1, %bb.op ] ; 2 uses
  %i.flx = add nsw i32 %.sink381.i, %i.fld        ; 2 uses
  store i32 %.026.i.i223.i, ptr %i.ajb, align 8, !tbaa !326
  store i32 %i.flx, ptr %i.ajh, align 4, !tbaa !325
  %i.fly = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next157.i
  %i.flz = load i8, ptr %i.fly, align 1, !tbaa !41
  %i.fma = zext nneg i8 %i.flz to i32
  %i.fmb = shl nuw i32 1, %i.fma                  ; 2 uses
  %.not126.i.i = icmp slt i32 %i.flg, %i.fmb
  br i1 %.not126.i.i, label %._crit_edge92.loopexit.i, label %.lr.ph91.i, !llvm.loop !338

._crit_edge92.loopexit.i:                         ; preds = %put_bits.exit225.i
  %i.fmc = trunc nsw i64 %indvars.iv.next157.i to i32
  br label %._crit_edge92.i

._crit_edge92.i:                                  ; preds = %._crit_edge92.loopexit.i, %.preheader33.i
  %.5.i.lcssa.i = phi i32 [ %.0110.i79.ph.i.ph, %.preheader33.i ], [ %i.fmc, %._crit_edge92.loopexit.i ] ; 2 uses
  %.4.i.lcssa.i = phi i32 [ %i.fkx, %.preheader33.i ], [ %i.flg, %._crit_edge92.loopexit.i ]
  %.not127.i.i = icmp eq i32 %.4.i.lcssa.i, 0
  br i1 %.not127.i.i, label %._crit_edge84.thread.i, label %bb.or

bb.or:                                            ; preds = %._crit_edge92.i
  %i.fmd = load i32, ptr %i.ajb, align 8, !tbaa !326 ; 2 uses
  %i.fme = load i32, ptr %i.ajh, align 4, !tbaa !325 ; 4 uses
  %i.fmf = icmp sgt i32 %i.fme, 1
  br i1 %i.fmf, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  %i.fmg = shl i32 %i.fmd, 1
  %i.fmh = or disjoint i32 %i.fmg, 1
  br label %put_bits.exit229.i

bb.ot:                                            ; preds = %bb.or
  %i.fmi = load ptr, ptr %i.ajf, align 8, !tbaa !323
  %i.fmj = load ptr, ptr %i.ajg, align 8, !tbaa !324 ; 2 uses
  %i.fmk = ptrtoint ptr %i.fmi to i64
  %i.fml = ptrtoint ptr %i.fmj to i64
  %i.fmm = sub i64 %i.fmk, %i.fml
  %i.fmn = icmp ugt i64 %i.fmm, 3
  br i1 %i.fmn, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.fmo = shl i32 %i.fmd, %i.fme
  %i.fmp = icmp eq i32 %i.fme, 1
  %i.fmq = zext i1 %i.fmp to i32
  %i.fmr = or i32 %i.fmo, %i.fmq
  %i.fms = call i32 @llvm.bswap.i32(i32 %i.fmr)
  store i32 %i.fms, ptr %i.fmj, align 1, !tbaa !41
  %i.fmt = load ptr, ptr %i.ajg, align 8, !tbaa !324
  %i.fmu = getelementptr inbounds nuw i8, ptr %i.fmt, i64 4
  store ptr %i.fmu, ptr %i.ajg, align 8, !tbaa !324
  br label %put_bits.exit229.i

bb.ov:                                            ; preds = %bb.ot
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit229.i

put_bits.exit229.i:                               ; preds = %bb.ov, %bb.ou, %bb.os
  %.sink382.i = phi i32 [ -1, %bb.os ], [ 31, %bb.ov ], [ 31, %bb.ou ]
  %.026.i.i227.i = phi i32 [ %i.fmh, %bb.os ], [ 1, %bb.ov ], [ 1, %bb.ou ]
  %i.fmv = add nsw i32 %.sink382.i, %i.fme
  store i32 %.026.i.i227.i, ptr %i.ajb, align 8, !tbaa !326
  store i32 %i.fmv, ptr %i.ajh, align 4, !tbaa !325
  br label %._crit_edge84.thread.i

._crit_edge84.thread.i:                           ; preds = %put_symbol_inline.exit173.i.i.thread, %put_symbol_inline.exit173.i.i, %put_bits.exit229.i, %._crit_edge92.i, %bb.jj
  %.6.i.i = phi i32 [ %.5.i.lcssa.i, %put_bits.exit229.i ], [ %.5.i.lcssa.i, %._crit_edge92.i ], [ %.0110.i79.ph.i.ph, %put_symbol_inline.exit173.i.i ], [ %i.dmr, %bb.jj ], [ %.3113.i.ph.i, %put_symbol_inline.exit173.i.i.thread ]
  store i32 %.6.i.i, ptr %i.ajk, align 8, !tbaa !327
  br label %encode_line32.exit.i

encode_line32.exit.i:                             ; preds = %._crit_edge98.i, %._crit_edge84.thread.i, %.preheader32.i, %.lr.ph102.i
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  br i1 %exitcond168.not.i, label %._crit_edge103.i, label %.lr.ph102.i, !llvm.loop !339

._crit_edge103.i:                                 ; preds = %encode_line32.exit.i, %.preheader35.i
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %wide.trip.count57.i498
  br i1 %exitcond173.not.i, label %encode_float32_rgb_frame.exit, label %.preheader37.i, !llvm.loop !340

encode_float32_rgb_frame.exit.sink.split:         ; preds = %bb.ji, %bb.jh, %bb.iy
  %.str.79.sink = phi ptr [ @.str.79, %bb.jh ], [ @.str.79, %bb.iy ], [ @.str.80, %bb.ji ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dmk, i32 noundef 16, ptr noundef nonnull %.str.79.sink) #19
  br label %encode_float32_rgb_frame.exit

encode_float32_rgb_frame.exit:                    ; preds = %._crit_edge103.i, %encode_float32_rgb_frame.exit.sink.split, %bb.ip
  %.3.i = phi i32 [ -1094995529, %encode_float32_rgb_frame.exit.sink.split ], [ 0, %bb.ip ], [ 0, %._crit_edge103.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.vg

bb.ow:                                            ; preds = %bb.io
  %i.fmw = load i32, ptr %i.aji, align 8, !tbaa !81
  %.not320 = icmp eq i32 %i.fmw, 0
  br i1 %.not320, label %bb.vd, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.fmx = load ptr, ptr %i.ajj, align 8, !tbaa !29
  %i.fmy = getelementptr inbounds nuw i8, ptr %i.fmx, i64 64
  %i.fmz = load i32, ptr %i.fmy, align 8, !tbaa !87
  %i.fna = load i32, ptr %i.ahj, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @ff_ffv1_compute_bits_per_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef %i.dja) #19
  store i32 0, ptr %i.ajk, align 8, !tbaa !327
  %i.fnb = load ptr, ptr %i.ajl, align 8, !tbaa !328 ; 5 uses
  store ptr %i.fnb, ptr %i.ajm, align 16, !tbaa !147
  store ptr %i.fnb, ptr %i.ajn, align 8, !tbaa !147
  store ptr %i.fnb, ptr %i.ajo, align 16, !tbaa !147
  store ptr %i.fnb, ptr %i.ajp, align 8, !tbaa !147
  %.not.i674 = icmp eq i32 %i.fna, 0              ; 2 uses
  %i.fnc = select i1 %.not.i674, i32 2, i32 3     ; 5 uses
  %i.fnd = mul i32 %i.ajs, %i.fnc
  %i.fne = sext i32 %i.fnd to i64
  %i.fnf = shl nsw i64 %i.fne, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fnb, i8 0, i64 %i.fnf, i1 false)
  br i1 %i.ahu, label %.preheader275.lr.ph.i, label %encode_bayer_frame.exit

.preheader275.lr.ph.i:                            ; preds = %bb.ox
  %i.fng = mul i32 %i.fnc, %i.ajr                 ; 3 uses
  %i.fnh = and i32 %i.fmz, 512
  %.not132.i.i677 = icmp eq i32 %i.fnh, 0
  %i.fni = sext i32 %i.fng to i64                 ; 3 uses
  %i.fnj = shl i32 %i.fng, 1
  %i.fnk = sext i32 %i.fnj to i64                 ; 3 uses
  %i.fnl = mul i32 %i.fng, 3
  %i.fnm = sext i32 %i.fnl to i64                 ; 3 uses
  br label %.preheader275.i

.preheader275.i:                                  ; preds = %bb.vc, %.preheader275.lr.ph.i
  %.0106340.i = phi i32 [ 0, %.preheader275.lr.ph.i ], [ %i.hra, %bb.vc ] ; 4 uses
  %i.fnn = load ptr, ptr %i.ajl, align 8, !tbaa !328 ; 3 uses
  %i.fno = lshr exact i32 %.0106340.i, 1
  %i.fnp = sub nsw i32 %i.x, %i.fno               ; 3 uses
  %i.fnq = srem i32 %i.fnp, %i.fnc
  %i.fnr = mul nsw i32 %i.fnq, %i.ajr
  %i.fns = sext i32 %i.fnr to i64
  %invariant.gep.i680 = getelementptr [4 x i8], ptr %i.fnn, i64 %i.fns ; 4 uses
  %i.fnt = getelementptr inbounds nuw i8, ptr %invariant.gep.i680, i64 12 ; 2 uses
  store ptr %i.fnt, ptr %i.a, align 16, !tbaa !147
  %gep.1.i681 = getelementptr [4 x i8], ptr %invariant.gep.i680, i64 %i.fni
  %i.fnu = getelementptr inbounds nuw i8, ptr %gep.1.i681, i64 12 ; 2 uses
  store ptr %i.fnu, ptr %gep283.1.i, align 8, !tbaa !147
  %gep.2.i682 = getelementptr [4 x i8], ptr %invariant.gep.i680, i64 %i.fnk
  %i.fnv = getelementptr inbounds nuw i8, ptr %gep.2.i682, i64 12 ; 2 uses
  store ptr %i.fnv, ptr %gep283.2.i, align 16, !tbaa !147
  %gep.3.i683 = getelementptr [4 x i8], ptr %invariant.gep.i680, i64 %i.fnm
  %i.fnw = getelementptr inbounds nuw i8, ptr %gep.3.i683, i64 12 ; 2 uses
  store ptr %i.fnw, ptr %gep283.3.i, align 8, !tbaa !147
  %i.fnx = add i32 %i.fnp, 1
  %i.fny = srem i32 %i.fnx, %i.fnc
  %i.fnz = mul nsw i32 %i.fny, %i.ajr
  %i.foa = sext i32 %i.fnz to i64
  %invariant.gep.i680.1 = getelementptr [4 x i8], ptr %i.fnn, i64 %i.foa ; 4 uses
  %i.fob = getelementptr inbounds nuw i8, ptr %invariant.gep.i680.1, i64 12
  store ptr %i.fob, ptr %invariant.gep282.i.1, align 8, !tbaa !147
  %gep.1.i681.1 = getelementptr [4 x i8], ptr %invariant.gep.i680.1, i64 %i.fni
  %i.foc = getelementptr inbounds nuw i8, ptr %gep.1.i681.1, i64 12
  store ptr %i.foc, ptr %gep283.1.i.1, align 16, !tbaa !147
  %gep.2.i682.1 = getelementptr [4 x i8], ptr %invariant.gep.i680.1, i64 %i.fnk
  %i.fod = getelementptr inbounds nuw i8, ptr %gep.2.i682.1, i64 12
  store ptr %i.fod, ptr %gep283.2.i.1, align 8, !tbaa !147
  %gep.3.i683.1 = getelementptr [4 x i8], ptr %invariant.gep.i680.1, i64 %i.fnm
  %i.foe = getelementptr inbounds nuw i8, ptr %gep.3.i683.1, i64 12
  store ptr %i.foe, ptr %gep283.3.i.1, align 16, !tbaa !147
  br i1 %.not.i674, label %.preheader274.i, label %.preheader272.i.2

.preheader274.i:                                  ; preds = %.preheader272.i.2, %.preheader275.i
  br i1 %i.ajt, label %.lr.ph.i804, label %.preheader273.i.preheader

.lr.ph.i804:                                      ; preds = %.preheader274.i
  %i.fof = or disjoint i32 %.0106340.i, 1
  br label %bb.oy

.preheader272.i.2:                                ; preds = %.preheader275.i
  %i.fog = add i32 %i.fnp, 2
  %i.foh = srem i32 %i.fog, %i.fnc
  %i.foi = mul nsw i32 %i.foh, %i.ajr
  %i.foj = sext i32 %i.foi to i64
  %invariant.gep.i680.2 = getelementptr [4 x i8], ptr %i.fnn, i64 %i.foj ; 4 uses
  %i.fok = getelementptr inbounds nuw i8, ptr %invariant.gep.i680.2, i64 12
  store ptr %i.fok, ptr %invariant.gep282.i.2, align 16, !tbaa !147
  %gep.1.i681.2 = getelementptr [4 x i8], ptr %invariant.gep.i680.2, i64 %i.fni
  %i.fol = getelementptr inbounds nuw i8, ptr %gep.1.i681.2, i64 12
  store ptr %i.fol, ptr %gep283.1.i.2, align 8, !tbaa !147
  %gep.2.i682.2 = getelementptr [4 x i8], ptr %invariant.gep.i680.2, i64 %i.fnk
  %i.fom = getelementptr inbounds nuw i8, ptr %gep.2.i682.2, i64 12
  store ptr %i.fom, ptr %gep283.2.i.2, align 16, !tbaa !147
  %gep.3.i683.2 = getelementptr [4 x i8], ptr %invariant.gep.i680.2, i64 %i.fnm
  %i.fon = getelementptr inbounds nuw i8, ptr %gep.3.i683.2, i64 12
  store ptr %i.fon, ptr %gep283.3.i.2, align 8, !tbaa !147
  br label %.preheader274.i

bb.oy:                                            ; preds = %bb.pa, %.lr.ph.i804
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph.i804 ], [ %indvars.iv.next361.i, %bb.pa ] ; 6 uses
  %i.foo = load i32, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.fop = mul nsw i32 %i.foo, %.0106340.i
  %i.foq = sext i32 %i.fop to i64
  %i.for = getelementptr inbounds i8, ptr %i.bc, i64 %i.foq
  %i.fos = shl nuw nsw i64 %indvars.iv360.i, 2    ; 2 uses
  %i.fot = getelementptr inbounds nuw i8, ptr %i.for, i64 %i.fos ; 2 uses
  %i.fou = mul nsw i32 %i.foo, %i.fof
  %i.fov = sext i32 %i.fou to i64
  %i.fow = getelementptr inbounds i8, ptr %i.bc, i64 %i.fov
  %i.fox = getelementptr inbounds nuw i8, ptr %i.fow, i64 %i.fos ; 2 uses
  %i.foy = load i16, ptr %i.fot, align 2, !tbaa !78
  %i.foz = zext i16 %i.foy to i32                 ; 2 uses
  %i.fpa = getelementptr inbounds nuw i8, ptr %i.fot, i64 2
  %i.fpb = load i16, ptr %i.fpa, align 2, !tbaa !78
  %i.fpc = zext i16 %i.fpb to i32                 ; 2 uses
  %i.fpd = load i16, ptr %i.fox, align 2, !tbaa !78
  %i.fpe = zext i16 %i.fpd to i32                 ; 3 uses
  %i.fpf = getelementptr inbounds nuw i8, ptr %i.fox, i64 2
  %i.fpg = load i16, ptr %i.fpf, align 2, !tbaa !78
  %i.fph = zext i16 %i.fpg to i32                 ; 2 uses
  %i.fpi = load i32, ptr %i.cj, align 4, !tbaa !200
  %.not118.i = icmp eq i32 %i.fpi, 1
  br i1 %.not118.i, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.fpj = sub nsw i32 %i.fpc, %i.fpe             ; 2 uses
  %i.fpk = ashr i32 %i.fpj, 1
  %i.fpl = add nsw i32 %i.fpk, %i.fpe             ; 3 uses
  %i.fpm = sub nsw i32 %i.fph, %i.fpl             ; 2 uses
  %i.fpn = sub nsw i32 %i.foz, %i.fpl             ; 2 uses
  %i.fpo = load i32, ptr %i.ahp, align 8, !tbaa !243
  %i.fpp = mul nsw i32 %i.fpo, %i.fpm
  %i.fpq = load i32, ptr %i.ahq, align 4, !tbaa !244
  %i.fpr = mul nsw i32 %i.fpq, %i.fpn
  %i.fps = add nsw i32 %i.fpr, %i.fpp
  %i.fpt = ashr i32 %i.fps, 2
  %i.fpu = add nsw i32 %i.fpt, %i.fpl
  %i.fpv = load i32, ptr %i.c, align 4, !tbaa !63 ; 3 uses
  %i.fpw = add nsw i32 %i.fpv, %i.fpm
  %i.fpx = add nsw i32 %i.fpv, %i.fpn
  %i.fpy = add nsw i32 %i.fpv, %i.fpj
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %.0105.i = phi i32 [ %i.fpx, %bb.oz ], [ %i.foz, %bb.oy ]
  %.0104.i = phi i32 [ %i.fpu, %bb.oz ], [ %i.fpc, %bb.oy ]
  %.0103.i = phi i32 [ %i.fpy, %bb.oz ], [ %i.fpe, %bb.oy ]
  %.0102.i = phi i32 [ %i.fpw, %bb.oz ], [ %i.fph, %bb.oy ]
  %i.fpz = getelementptr inbounds nuw [4 x i8], ptr %i.fnt, i64 %indvars.iv360.i
  store i32 %.0104.i, ptr %i.fpz, align 4, !tbaa !63
  %i.fqa = getelementptr inbounds nuw [4 x i8], ptr %i.fnu, i64 %indvars.iv360.i
  store i32 %.0103.i, ptr %i.fqa, align 4, !tbaa !63
  %i.fqb = getelementptr inbounds nuw [4 x i8], ptr %i.fnv, i64 %indvars.iv360.i
  store i32 %.0102.i, ptr %i.fqb, align 4, !tbaa !63
  %i.fqc = getelementptr inbounds nuw [4 x i8], ptr %i.fnw, i64 %indvars.iv360.i
  store i32 %.0105.i, ptr %i.fqc, align 4, !tbaa !63
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %exitcond364.not.i = icmp eq i64 %indvars.iv.next361.i, %wide.trip.count363.i
  br i1 %exitcond364.not.i, label %.preheader273.i.preheader, label %bb.oy, !llvm.loop !341

.preheader273.i.preheader:                        ; preds = %bb.pa, %.preheader274.i
  br label %.preheader273.i

.preheader273.i:                                  ; preds = %.preheader273.i.preheader, %.loopexit.i687
  %indvars.iv399.i = phi i64 [ %indvars.iv.next400.i, %.loopexit.i687 ], [ 0, %.preheader273.i.preheader ] ; 5 uses
  %i.fqd = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv399.i ; 4 uses
  %i.fqe = getelementptr inbounds nuw i8, ptr %i.fqd, i64 8 ; 2 uses
  %i.fqf = load ptr, ptr %i.fqe, align 8, !tbaa !147 ; 2 uses
  %i.fqg = load i32, ptr %i.fqf, align 4, !tbaa !63
  %i.fqh = load ptr, ptr %i.fqd, align 8, !tbaa !147 ; 2 uses
  %i.fqi = getelementptr inbounds i8, ptr %i.fqh, i64 -4
  store i32 %i.fqg, ptr %i.fqi, align 4, !tbaa !63
  %i.fqj = getelementptr [4 x i8], ptr %i.fqf, i64 %i.aju ; 2 uses
  %i.fqk = getelementptr i8, ptr %i.fqj, i64 -4
  %i.fql = load i32, ptr %i.fqk, align 4, !tbaa !63
  store i32 %i.fql, ptr %i.fqj, align 4, !tbaa !63
  %i.fqm = load ptr, ptr %i.ajj, align 8, !tbaa !29
  %i.fqn = icmp eq i64 %indvars.iv399.i, 1
  %i.fqo = icmp samesign ugt i64 %indvars.iv399.i, 1
  %i.fqp = zext i1 %i.fqo to i64
  %i.fqq = select i1 %i.fqn, i64 2, i64 %i.fqp
  %i.fqr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv399.i
  %i.fqs = load i32, ptr %i.fqr, align 4, !tbaa !63 ; 7 uses
  %i.fqt = load ptr, ptr %i.ahi, align 8, !tbaa !133
  %i.fqu = getelementptr inbounds nuw [24 x i8], ptr %i.fqt, i64 %i.fqq ; 3 uses
  %i.fqv = load i32, ptr %i.ajk, align 8, !tbaa !327 ; 2 uses
  %i.fqw = icmp eq i32 %i.fqs, 0
  br i1 %i.fqw, label %.loopexit.i687, label %bb.pb

bb.pb:                                            ; preds = %.preheader273.i
  %i.fqx = load i32, ptr %i.cj, align 4, !tbaa !200
  %i.fqy = icmp eq i32 %i.fqx, 1
  br i1 %i.fqy, label %bb.pc, label %bb.pm

bb.pc:                                            ; preds = %bb.pb
  br i1 %i.dgc, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 42) #19
  call void @abort() #21
  unreachable

bb.pe:                                            ; preds = %bb.pc
  %i.fqz = load ptr, ptr %i.ajd, align 8, !tbaa !330
  %i.fra = load ptr, ptr %i.ahn, align 8, !tbaa !51
  %i.frb = ptrtoint ptr %i.fqz to i64
  %i.frc = ptrtoint ptr %i.fra to i64
  %i.frd = sub i64 %i.frb, %i.frc
  %i.fre = mul nsw i32 %i.fqs, %i.ajq
  %i.frf = sext i32 %i.fre to i64
  %i.frg = add nsw i64 %i.frf, 7
  %i.frh = ashr i64 %i.frg, 3
  %i.fri = icmp slt i64 %i.frd, %i.frh
  br i1 %i.fri, label %encode_bayer_frame.exit.sink.split, label %.preheader270.i

.preheader270.i:                                  ; preds = %bb.pe
  %i.frj = icmp sgt i32 %i.fqs, 0
  %or.cond.i794 = and i1 %i.ajt, %i.frj
  br i1 %or.cond.i794, label %.lr.ph334.preheader.i, label %.loopexit.i687

.lr.ph334.preheader.i:                            ; preds = %.preheader270.i
  %.pre428.pre.i = load i32, ptr %i.ahk, align 4, !tbaa !47
  br label %.lr.ph334.i

.lr.ph334.i:                                      ; preds = %._crit_edge335.i, %.lr.ph334.preheader.i
  %.pre428.i = phi i32 [ %.pre428.pre.i, %.lr.ph334.preheader.i ], [ %i.fsx, %._crit_edge335.i ]
  %indvars.iv394.i = phi i64 [ 0, %.lr.ph334.preheader.i ], [ %indvars.iv.next395.i, %._crit_edge335.i ] ; 2 uses
  %i.frk = getelementptr inbounds nuw [4 x i8], ptr %i.fqh, i64 %indvars.iv394.i
  %i.frl = load i32, ptr %i.frk, align 4, !tbaa !63
  br label %bb.pf

bb.pf:                                            ; preds = %put_rac.exit.i798, %.lr.ph334.i
  %i.frm = phi i32 [ %.pre428.i, %.lr.ph334.i ], [ %i.fsx, %put_rac.exit.i798 ] ; 2 uses
  %.0103.in.i332.i = phi i32 [ %i.fqs, %.lr.ph334.i ], [ %.0103.i.i795, %put_rac.exit.i798 ] ; 2 uses
  %.0103.i.i795 = add nsw i32 %.0103.in.i332.i, -1 ; 2 uses
  %i.frn = ashr i32 %i.frm, 1                     ; 2 uses
  %i.fro = shl nuw i32 1, %.0103.i.i795
  %i.frp = and i32 %i.fro, %i.frl
  %.not.i121.i796 = icmp eq i32 %i.frp, 0
  %i.frq = sub i32 %i.frm, %i.frn                 ; 2 uses
  br i1 %.not.i121.i796, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.frr = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.frs = add nsw i32 %i.frr, %i.frq
  store i32 %i.frs, ptr %i.aj, align 8, !tbaa !49
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.sink.i.i797 = phi i32 [ %i.frn, %bb.pg ], [ %i.frq, %bb.pf ] ; 4 uses
  store i32 %.sink.i.i797, ptr %i.ahk, align 4, !tbaa !47
  %i.frt = icmp slt i32 %.sink.i.i797, 256
  br i1 %i.frt, label %bb.pi, label %put_rac.exit.i798

bb.pi:                                            ; preds = %bb.ph
  %i.fru = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.frv = add nsw i32 %i.fru, -65281             ; 2 uses
  %i.frw = icmp ugt i32 %i.frv, 254
  br i1 %i.frw, label %bb.pj, label %bb.pl

bb.pj:                                            ; preds = %bb.pi
  %i.frx = ashr i32 %i.frv, 31                    ; 2 uses
  %i.fry = load i32, ptr %i.ahm, align 4, !tbaa !50
  %i.frz = add nsw i32 %i.frx, 1
  %i.fsa = add i32 %i.frz, %i.fry
  %i.fsb = trunc i32 %i.fsa to i8
  %i.fsc = load ptr, ptr %i.ahn, align 8, !tbaa !51
  store i8 %i.fsb, ptr %i.fsc, align 1, !tbaa !41
  %i.fsd = load i32, ptr %i.ahm, align 4, !tbaa !50
  %i.fse = icmp sgt i32 %i.fsd, -1
  %i.fsf = load ptr, ptr %i.ahn, align 8, !tbaa !51
  %i.fsg = zext i1 %i.fse to i64
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.fsf, i64 %i.fsg
  store ptr %i.fsh, ptr %i.ahn, align 8, !tbaa !51
  %i.fsi = load i32, ptr %i.ahl, align 8, !tbaa !52
  %.not16.i.i.i800 = icmp eq i32 %i.fsi, 0
  br i1 %.not16.i.i.i800, label %._crit_edge.i.i.i802, label %.lr.ph.i.i.i801

.lr.ph.i.i.i801:                                  ; preds = %bb.pj
  %i.fsj = trunc nsw i32 %i.frx to i8
  br label %bb.pk

end_hunk_1
begin_hunk_2_@encode_slice:bb.a
  %.5.i.lcssa.i723 = phi i32 [ %.0110.i316.ph.i.ph, %.preheader271.i ], [ %i.hqg, %._crit_edge329.loopexit.i ] ; 2 uses
  %.4.i.lcssa.i724 = phi i32 [ %i.hpb, %.preheader271.i ], [ %i.hpk, %._crit_edge329.loopexit.i ]
  %.not127.i.i725 = icmp eq i32 %.4.i.lcssa.i724, 0
  br i1 %.not127.i.i725, label %._crit_edge321.thread.i, label %bb.ux

bb.ux:                                            ; preds = %._crit_edge329.i
  %i.hqh = load i32, ptr %i.ajb, align 8, !tbaa !326 ; 2 uses
  %i.hqi = load i32, ptr %i.ajh, align 4, !tbaa !325 ; 4 uses
  %i.hqj = icmp sgt i32 %i.hqi, 1
  br i1 %i.hqj, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.hqk = shl i32 %i.hqh, 1
  %i.hql = or disjoint i32 %i.hqk, 1
  br label %put_bits.exit233.i

bb.uz:                                            ; preds = %bb.ux
  %i.hqm = load ptr, ptr %i.ajf, align 8, !tbaa !323
  %i.hqn = load ptr, ptr %i.ajg, align 8, !tbaa !324 ; 2 uses
  %i.hqo = ptrtoint ptr %i.hqm to i64
  %i.hqp = ptrtoint ptr %i.hqn to i64
  %i.hqq = sub i64 %i.hqo, %i.hqp
  %i.hqr = icmp ugt i64 %i.hqq, 3
  br i1 %i.hqr, label %bb.va, label %bb.vb

bb.va:                                            ; preds = %bb.uz
  %i.hqs = shl i32 %i.hqh, %i.hqi
  %i.hqt = icmp eq i32 %i.hqi, 1
  %i.hqu = zext i1 %i.hqt to i32
  %i.hqv = or i32 %i.hqs, %i.hqu
  %i.hqw = call i32 @llvm.bswap.i32(i32 %i.hqv)
  store i32 %i.hqw, ptr %i.hqn, align 1, !tbaa !41
  %i.hqx = load ptr, ptr %i.ajg, align 8, !tbaa !324
  %i.hqy = getelementptr inbounds nuw i8, ptr %i.hqx, i64 4
  store ptr %i.hqy, ptr %i.ajg, align 8, !tbaa !324
  br label %put_bits.exit233.i

bb.vb:                                            ; preds = %bb.uz
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit233.i

put_bits.exit233.i:                               ; preds = %bb.vb, %bb.va, %bb.uy
  %.sink615.i = phi i32 [ -1, %bb.uy ], [ 31, %bb.vb ], [ 31, %bb.va ]
  %.026.i.i231.i = phi i32 [ %i.hql, %bb.uy ], [ 1, %bb.vb ], [ 1, %bb.va ]
  %i.hqz = add nsw i32 %.sink615.i, %i.hqi
  store i32 %.026.i.i231.i, ptr %i.ajb, align 8, !tbaa !326
  store i32 %i.hqz, ptr %i.ajh, align 4, !tbaa !325
  br label %._crit_edge321.thread.i

._crit_edge321.thread.i:                          ; preds = %put_symbol_inline.exit173.i.i716.thread, %put_symbol_inline.exit173.i.i716, %put_bits.exit233.i, %._crit_edge329.i, %bb.pp
  %.6.i.i686 = phi i32 [ %.5.i.lcssa.i723, %put_bits.exit233.i ], [ %.5.i.lcssa.i723, %._crit_edge329.i ], [ %.0110.i316.ph.i.ph, %put_symbol_inline.exit173.i.i716 ], [ %i.fqv, %bb.pp ], [ %.3113.i.ph.i789, %put_symbol_inline.exit173.i.i716.thread ]
  store i32 %.6.i.i686, ptr %i.ajk, align 8, !tbaa !327
  br label %.loopexit.i687

.loopexit.i687:                                   ; preds = %._crit_edge335.i, %._crit_edge321.thread.i, %.preheader270.i, %.preheader273.i
  %indvars.iv.next400.i = add nuw nsw i64 %indvars.iv399.i, 1 ; 2 uses
  %exitcond402.i = icmp eq i64 %indvars.iv.next400.i, 4
  br i1 %exitcond402.i, label %bb.vc, label %.preheader273.i, !llvm.loop !343

bb.vc:                                            ; preds = %.loopexit.i687
  %i.hra = add nuw nsw i32 %.0106340.i, 2         ; 2 uses
  %.not117.i = icmp slt i32 %i.hra, %i.x
  br i1 %.not117.i, label %.preheader275.i, label %encode_bayer_frame.exit, !llvm.loop !344

encode_bayer_frame.exit.sink.split:               ; preds = %bb.po, %bb.pn, %bb.pe
  %.str.79.sink2236 = phi ptr [ @.str.79, %bb.pn ], [ @.str.79, %bb.pe ], [ @.str.80, %bb.po ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fqm, i32 noundef 16, ptr noundef nonnull %.str.79.sink2236) #19
  br label %encode_bayer_frame.exit

encode_bayer_frame.exit:                          ; preds = %bb.vc, %encode_bayer_frame.exit.sink.split, %bb.ox
  %spec.select.i675 = phi i32 [ -1094995529, %encode_bayer_frame.exit.sink.split ], [ 0, %bb.ox ], [ 0, %bb.vc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.vg

bb.vd:                                            ; preds = %bb.ow
  %i.hrb = load i32, ptr %i.aia, align 4, !tbaa !127
  %.not321 = icmp eq i32 %i.hrb, 0
  br i1 %.not321, label %bb.vf, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.hrc = call fastcc i32 @encode_rgb_frame32(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.r, i32 noundef %i.v, i32 noundef %i.x, ptr noundef nonnull %i.ay, i32 noundef %.0299)
  br label %bb.vg

bb.vf:                                            ; preds = %bb.vd
  %i.hrd = call fastcc i32 @encode_rgb_frame(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.r, i32 noundef %i.v, i32 noundef %i.x, ptr noundef nonnull %i.ay, i32 noundef %.0299)
  br label %bb.vg

bb.vg:                                            ; preds = %bb.il, %bb.im, %bb.in, %encode_bayer_frame.exit, %bb.vf, %bb.ve, %encode_float32_rgb_frame.exit
  %.2 = phi i32 [ %i.hrd, %bb.vf ], [ %i.diz, %bb.in ], [ %.3.i, %encode_float32_rgb_frame.exit ], [ %spec.select.i675, %encode_bayer_frame.exit ], [ %i.hrc, %bb.ve ], [ %i.dij, %bb.im ], [ %.0298, %bb.il ] ; 2 uses
  br i1 %i.dgc, label %bb.vi, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.hre = call i32 @ff_rac_terminate(ptr noundef nonnull %i.aj, i32 noundef 1) #19
  br label %bb.vm

bb.vi:                                            ; preds = %bb.vg
  %i.hrf = load i32, ptr %i.ajh, align 4, !tbaa !325 ; 2 uses
  %i.hrg = icmp slt i32 %i.hrf, 32
  br i1 %i.hrg, label %.lr.ph.i806, label %flush_put_bits.exit

.lr.ph.i806:                                      ; preds = %bb.vi
  %i.hrh = load i32, ptr %i.ajb, align 8, !tbaa !326
  %i.hri = shl i32 %i.hrh, %i.hrf                 ; 2 uses
  store i32 %i.hri, ptr %i.ajb, align 8, !tbaa !326
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vl, %.lr.ph.i806
  %i.hrj = phi i32 [ %i.hrr, %bb.vl ], [ %i.hri, %.lr.ph.i806 ]
  %i.hrk = load ptr, ptr %i.ajg, align 8, !tbaa !324 ; 3 uses
  %i.hrl = load ptr, ptr %i.ajf, align 8, !tbaa !323
  %i.hrm = icmp ult ptr %i.hrk, %i.hrl
  br i1 %i.hrm, label %bb.vl, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 160) #19
  call void @abort() #21
  unreachable

bb.vl:                                            ; preds = %bb.vj
  %i.hrn = lshr i32 %i.hrj, 24
  %i.hro = trunc nuw i32 %i.hrn to i8
  %i.hrp = getelementptr inbounds nuw i8, ptr %i.hrk, i64 1
  store ptr %i.hrp, ptr %i.ajg, align 8, !tbaa !324
  store i8 %i.hro, ptr %i.hrk, align 1, !tbaa !41
  %i.hrq = load i32, ptr %i.ajb, align 8, !tbaa !326
  %i.hrr = shl i32 %i.hrq, 8                      ; 2 uses
  store i32 %i.hrr, ptr %i.ajb, align 8, !tbaa !326
  %i.hrs = load i32, ptr %i.ajh, align 4, !tbaa !325 ; 2 uses
  %i.hrt = add nsw i32 %i.hrs, 8
  store i32 %i.hrt, ptr %i.ajh, align 4, !tbaa !325
  %i.hru = icmp slt i32 %i.hrs, 24
  br i1 %i.hru, label %bb.vj, label %flush_put_bits.exit, !llvm.loop !345

flush_put_bits.exit:                              ; preds = %bb.vl, %bb.vi
  store i32 32, ptr %i.ajh, align 4, !tbaa !325
  store i32 0, ptr %i.ajb, align 8, !tbaa !326
  %.val328 = load ptr, ptr %i.aje, align 8, !tbaa !322
  %.val329 = load ptr, ptr %i.ajg, align 8, !tbaa !324
  %i.hrv = ptrtoint ptr %.val329 to i64
  %i.hrw = ptrtoint ptr %.val328 to i64
  %i.hrx = sub i64 %i.hrv, %i.hrw
  %i.hry = trunc i64 %i.hrx to i32
  %i.hrz = load i32, ptr %i.aja, align 8, !tbaa !192
  %i.hsa = add nsw i32 %i.hrz, %i.hry
  br label %bb.vm

bb.vm:                                            ; preds = %flush_put_bits.exit, %bb.vh
  %storemerge = phi i32 [ %i.hre, %bb.vh ], [ %i.hsa, %flush_put_bits.exit ]
  store i32 %storemerge, ptr %i.aja, align 8, !tbaa !192
  %i.hsb = icmp slt i32 %.2, 0
  br i1 %i.hsb, label %bb.vn, label %.loopexit

bb.vn:                                            ; preds = %bb.vm
  %i.hsc = load i32, ptr %i.cj, align 4, !tbaa !200
  %i.hsd = icmp eq i32 %i.hsc, 0
  br i1 %i.hsd, label %bb.vp, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.6, i32 noundef 1848) #19
  call void @abort() #21
  unreachable

bb.vp:                                            ; preds = %bb.vn
  %i.hse = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.hsf = icmp slt i32 %i.hse, 4
  br i1 %i.hsf, label %bb.vq, label %bb.vr

bb.vq:                                            ; preds = %bb.vp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.68) #19
  br label %.loopexit

bb.vr:                                            ; preds = %bb.vp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.69) #19
  store i32 1, ptr %i.cj, align 4, !tbaa !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.aj, ptr noundef nonnull align 8 dereferenceable(560) %2, i64 560, i1 false), !tbaa.struct !199
  br label %bb.t

.loopexit:                                        ; preds = %bb.vm, %bb.vq
  %.0 = phi i32 [ %.2, %bb.vq ], [ 0, %bb.vm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @ff_ffv1_clear_slice_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @encode_plane(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef initializes((40, 44)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6, i32 noundef range(i32 0, 4) %7, i32 noundef range(i32 1, 3) %8, i32 noundef %9) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 25196
  %i.f = load i32, ptr %i.e, align 4, !tbaa !137
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.g = select i1 %.not, i32 2, i32 3            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !327
  %i.i = load ptr, ptr %1, align 8, !tbaa !201    ; 2 uses
  %i.j = add nsw i32 %3, 6                        ; 4 uses
  %i.k = mul nsw i32 %i.g, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.i, i8 0, i64 %i.m, i1 false)
  %i.n = icmp sgt i32 %4, 0
  br i1 %i.n, label %.preheader554.lr.ph, label %encode_line.exit220.thread

.preheader554.lr.ph:                              ; preds = %bb.a
  %i.o = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 25204
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25208
  %i.s = icmp sgt i32 %3, 0                       ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = icmp slt i32 %3, 1                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4880
  %i.w = zext nneg i32 %7 to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = zext nneg i32 %6 to i64                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 186 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %.not.i = icmp eq i32 %9, 0                     ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 214 uses
  %i.ae = mul nsw i32 %3, 35
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 26 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 15 uses
  %i.aj = shl nsw i32 %3, 2                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4320 ; 2 uses
  %i.al = and i32 %i.d, 512
  %.not132.i = icmp eq i32 %i.al, 0               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 20 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4768 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 176 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 210 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 126 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 15 uses
  %i.au = zext nneg i32 %8 to i64                 ; 10 uses
  %i.av = zext nneg i32 %8 to i64                 ; 5 uses
  %i.aw = sext i32 %5 to i64                      ; 6 uses
  %wide.trip.count811 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count718 = zext i32 %3 to i64        ; 28 uses
  %wide.trip.count723 = zext nneg i32 %3 to i64
  %wide.trip.count754 = zext nneg i32 %3 to i64   ; 3 uses
  %wide.trip.count762 = zext nneg i32 %3 to i64
  %wide.trip.count767 = zext nneg i32 %3 to i64
  %wide.trip.count798 = zext nneg i32 %3 to i64   ; 3 uses
  %wide.trip.count806 = zext nneg i32 %3 to i64
  %i.ax = shl nuw nsw i64 %wide.trip.count718, 1
  %i.ay = add nsw i64 %wide.trip.count811, -1
  %i.az = mul nsw i64 %i.ay, %i.aw
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  %scevgep1341 = getelementptr i8, ptr %i.ba, i64 %wide.trip.count718
  %i.bb = add nsw i64 %wide.trip.count718, -1     ; 2 uses
  %min.iters.check1384 = icmp ult i32 %3, 4
  %ident.check1381.not = icmp ne i32 %8, 1
  %or.cond1410.not1414 = or i1 %min.iters.check1384, %ident.check1381.not
  %min.iters.check1386 = icmp ult i32 %3, 16
  %i.bc = and i64 %wide.trip.count718, 12
  %n.vec1388 = and i64 %wide.trip.count718, 2147483632 ; 4 uses
  %cmp.n1395 = icmp eq i64 %n.vec1388, %wide.trip.count718
  %min.epilog.iters.check1400 = icmp eq i64 %i.bc, 0
  %n.vec1402 = and i64 %wide.trip.count718, 2147483644 ; 3 uses
  %cmp.n1408 = icmp eq i64 %n.vec1402, %wide.trip.count718
  %xtraiter = and i64 %wide.trip.count718, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check1352 = icmp ult i32 %3, 4
  %ident.check1350.not = icmp ne i32 %8, 1
  %or.cond1412.not1415 = or i1 %min.iters.check1352, %ident.check1350.not
  %min.iters.check1354 = icmp ult i32 %3, 16
  %i.bd = and i64 %wide.trip.count718, 12
  %n.vec1356 = and i64 %wide.trip.count718, 2147483632 ; 4 uses
  %cmp.n1363 = icmp eq i64 %n.vec1356, %wide.trip.count718
  %min.epilog.iters.check1368 = icmp eq i64 %i.bd, 0
  %n.vec1370 = and i64 %wide.trip.count718, 2147483644 ; 3 uses
  %cmp.n1378 = icmp eq i64 %n.vec1370, %wide.trip.count718
  %xtraiter1493 = and i64 %wide.trip.count718, 3  ; 2 uses
  %lcmp.mod1494.not = icmp eq i64 %xtraiter1493, 0
  %xtraiter1496 = and i64 %wide.trip.count718, 3  ; 3 uses
  %i.be = icmp ult i64 %i.bb, 3
  %unroll_iter = and i64 %wide.trip.count718, 2147483644
  %lcmp.mod1497.not = icmp eq i64 %xtraiter1496, 0
  %lcmp.mod1498 = icmp ne i64 %xtraiter1496, 0
  %min.iters.check = icmp ugt i32 %3, 3
  %ident.check.not = icmp eq i32 %8, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %stride.check = icmp slt i32 %5, 0
  %min.iters.check1342 = icmp ult i32 %3, 16
  %i.bf = and i64 %wide.trip.count718, 12
  %n.vec = and i64 %wide.trip.count718, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count718
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  %n.vec1344 = and i64 %wide.trip.count718, 2147483644 ; 3 uses
  %cmp.n1348 = icmp eq i64 %n.vec1344, %wide.trip.count718
  %xtraiter1504 = and i64 %wide.trip.count718, 3  ; 2 uses
  %lcmp.mod1505.not = icmp eq i64 %xtraiter1504, 0
  %xtraiter1508 = and i64 %wide.trip.count718, 3  ; 3 uses
  %i.bg = icmp ult i32 %3, 4
  %unroll_iter1512 = and i64 %wide.trip.count718, 2147483644
  %lcmp.mod1510.not = icmp eq i64 %xtraiter1508, 0
  %lcmp.mod1511 = icmp ne i64 %xtraiter1508, 0
  br label %.preheader554

.preheader554:                                    ; preds = %.preheader554.lr.ph, %encode_line.exit220
  %.sroa.10.0 = phi ptr [ %i.i, %.preheader554.lr.ph ], [ %.sroa.10.1, %encode_line.exit220 ]
  %indvars.iv808 = phi i64 [ 0, %.preheader554.lr.ph ], [ %indvars.iv.next809, %encode_line.exit220 ] ; 7 uses
  %i.bh = mul i64 %indvars.iv808, %i.aw
  %i.bi = add i64 %i.bh, %i.o
  %i.bj = mul i64 %indvars.iv808, %i.aw
  %i.bk = add i64 %i.bj, %i.o
  %i.bl = load ptr, ptr %1, align 8, !tbaa !201   ; 3 uses
  %i.bm = trunc i64 %indvars.iv808 to i32
  %i.bn = sub i32 %4, %i.bm                       ; 3 uses
  %i.bo = srem i32 %i.bn, %i.g
  %i.bp = mul nsw i32 %i.bo, %i.j
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6 ; 40 uses
  %i.bt = add i32 %i.bn, 1
  %i.bu = srem i32 %i.bt, %i.g
  %i.bv = mul nsw i32 %i.bu, %i.j
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 6 ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader554
  %i.bz = add i32 %i.bn, 2
  %i.ca = srem i32 %i.bz, %i.g
  %i.cb = mul nsw i32 %i.ca, %i.j
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader554
  %.sroa.10.1 = phi ptr [ %i.ce, %bb.b ], [ %.sroa.10.0, %.preheader554 ] ; 5 uses
  %i.cf = load i16, ptr %i.by, align 2, !tbaa !78
  %i.cg = ptrtoaddr ptr %i.bs to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i16 %i.cf, ptr %i.ch, align 2, !tbaa !78
  %i.ci = getelementptr [2 x i8], ptr %i.by, i64 %i.p ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -2
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !78
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !78
  %i.cl = load i32, ptr %i.q, align 4, !tbaa !45  ; 6 uses
  %i.cm = icmp slt i32 %i.cl, 9
  br i1 %i.cm, label %.preheader544, label %bb.fi

.preheader544:                                    ; preds = %bb.c
  br i1 %i.s, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader544
  %i.cn = mul nsw i64 %indvars.iv808, %i.aw
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.cn ; 7 uses
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.ax
  %bound0 = icmp ult ptr %i.bs, %scevgep1341
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.co = or i1 %found.conflict, %stride.check
  br i1 %i.co, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check1342, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cp = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %wide.load = load <8 x i8>, ptr %i.cp, align 1, !tbaa !41, !alias.scope !346
  %wide.load1343 = load <8 x i8>, ptr %i.cq, align 1, !tbaa !41, !alias.scope !346
  %i.cr = zext <8 x i8> %wide.load to <8 x i16>
  %i.cs = zext <8 x i8> %wide.load1343 to <8 x i16>
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <8 x i16> %i.cr, ptr %i.ct, align 2, !tbaa !78, !alias.scope !349, !noalias !346
  store <8 x i16> %i.cs, ptr %i.cu, align 2, !tbaa !78, !alias.scope !349, !noalias !346
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge623, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !352

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1345 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1347, %vec.epilog.vector.body ] ; 3 uses
  %i.cw = getelementptr i8, ptr %invariant.gep, i64 %index1345
  %wide.load1346 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !41, !alias.scope !346
  %i.cx = zext <4 x i8> %wide.load1346 to <4 x i16>
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %index1345
  store <4 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !78, !alias.scope !349, !noalias !346
  %index.next1347 = add nuw i64 %index1345, 4     ; 2 uses
  %i.cz = icmp eq i64 %index.next1347, %n.vec1344
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !353

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1348, label %._crit_edge623, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv764.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1344, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod1505.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv764.prol = phi i64 [ %indvars.iv.next765.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv764.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter1506 = phi i64 [ %prol.iter1506.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.da = mul nuw nsw i64 %indvars.iv764.prol, %i.av
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.da
  %i.db = load i8, ptr %gep.prol, align 1, !tbaa !41
  %i.dc = zext i8 %i.db to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv764.prol
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !78
  %indvars.iv.next765.prol = add nuw nsw i64 %indvars.iv764.prol, 1 ; 2 uses
  %prol.iter1506.next = add i64 %prol.iter1506, 1 ; 2 uses
  %prol.iter1506.cmp.not = icmp eq i64 %prol.iter1506.next, %xtraiter1504
  br i1 %prol.iter1506.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !354

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv764.unr = phi i64 [ %indvars.iv764.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next765.prol, %vec.epilog.scalar.ph.prol ]
  %i.de = sub nsw i64 %indvars.iv764.ph, %wide.trip.count718
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge623, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv764 = phi i64 [ %indvars.iv.next765.3, %vec.epilog.scalar.ph ], [ %indvars.iv764.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.dg = mul nuw nsw i64 %indvars.iv764, %i.av
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dg
  %i.dh = load i8, ptr %gep, align 1, !tbaa !41
  %i.di = zext i8 %i.dh to i16
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv764
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !78
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %i.dk = mul nuw nsw i64 %indvars.iv.next765, %i.av
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.dk
  %i.dl = load i8, ptr %gep.1, align 1, !tbaa !41
  %i.dm = zext i8 %i.dl to i16
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv.next765
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !78
  %indvars.iv.next765.1 = add nuw nsw i64 %indvars.iv764, 2 ; 2 uses
  %i.do = mul nuw nsw i64 %indvars.iv.next765.1, %i.av
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.do
  %i.dp = load i8, ptr %gep.2, align 1, !tbaa !41
  %i.dq = zext i8 %i.dp to i16
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv.next765.1
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !78
  %indvars.iv.next765.2 = add nuw nsw i64 %indvars.iv764, 3 ; 2 uses
  %i.ds = mul nuw nsw i64 %indvars.iv.next765.2, %i.av
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.ds
  %i.dt = load i8, ptr %gep.3, align 1, !tbaa !41
  %i.du = zext i8 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv.next765.2
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !78
  %indvars.iv.next765.3 = add nuw nsw i64 %indvars.iv764, 4 ; 2 uses
  %exitcond768.not.3 = icmp eq i64 %indvars.iv.next765.3, %wide.trip.count767
  br i1 %exitcond768.not.3, label %._crit_edge623, label %vec.epilog.scalar.ph, !llvm.loop !355

._crit_edge623:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dw = load i32, ptr %i.t, align 8, !tbaa !150
  %.not95 = icmp eq i32 %i.dw, 0
  %brmerge = or i1 %.not95, %i.u
  br i1 %brmerge, label %.loopexit, label %.lr.ph625

.lr.ph625:                                        ; preds = %._crit_edge623
  %i.dx = load ptr, ptr %i.x, align 8, !tbaa !148 ; 5 uses
  br i1 %i.bg, label %.epil.preheader1507, label %.lr.ph625.new

.lr.ph625.new:                                    ; preds = %.lr.ph625, %.lr.ph625.new
  %indvars.iv769 = phi i64 [ %indvars.iv.next770.3, %.lr.ph625.new ], [ 0, %.lr.ph625 ] ; 5 uses
  %niter1513 = phi i64 [ %niter1513.next.3, %.lr.ph625.new ], [ 0, %.lr.ph625 ]
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv769 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !78
  %i.ea = sext i16 %i.dz to i64
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !78
  store i16 %i.ec, ptr %i.dy, align 2, !tbaa !78
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv769
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !78
  %i.eg = sext i16 %i.ef to i64
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !78
  store i16 %i.ei, ptr %i.ee, align 2, !tbaa !78
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv769
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !78
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !78
  store i16 %i.eo, ptr %i.ek, align 2, !tbaa !78
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv769
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 6 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !78
  %i.es = sext i16 %i.er to i64
  %i.et = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !78
  store i16 %i.eu, ptr %i.eq, align 2, !tbaa !78
  %indvars.iv.next770.3 = add nuw nsw i64 %indvars.iv769, 4 ; 2 uses
  %niter1513.next.3 = add i64 %niter1513, 4       ; 2 uses
  %niter1513.ncmp.3 = icmp eq i64 %niter1513.next.3, %unroll_iter1512
  br i1 %niter1513.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph625.new, !llvm.loop !356

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph625.new
  br i1 %lcmp.mod1510.not, label %.loopexit, label %.epil.preheader1507

.epil.preheader1507:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph625
  %indvars.iv769.epil.init = phi i64 [ 0, %.lr.ph625 ], [ %indvars.iv.next770.3, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1511)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader1507
  %indvars.iv769.epil = phi i64 [ %indvars.iv769.epil.init, %.epil.preheader1507 ], [ %indvars.iv.next770.epil, %bb.d ] ; 2 uses
  %epil.iter1509 = phi i64 [ 0, %.epil.preheader1507 ], [ %epil.iter1509.next, %bb.d ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv769.epil ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !78
  %i.ex = sext i16 %i.ew to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !78
  store i16 %i.ez, ptr %i.ev, align 2, !tbaa !78
  %indvars.iv.next770.epil = add nuw nsw i64 %indvars.iv769.epil, 1
  %epil.iter1509.next = add i64 %epil.iter1509, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@encode_plane:bb.a
  %.0.i1109 = phi i32 [ %.0.i.le, %put_bits.exit467 ], [ %.0.i.le1178, %.loopexit1081 ]
  %.3113.i.ph = phi i32 [ %spec.select134.i, %put_bits.exit467 ], [ %.0110.i599.ph, %.loopexit1081 ]
  %.1.i.ph = phi i32 [ %spec.select135.i, %put_bits.exit467 ], [ %i.dkw, %.loopexit1081 ]
  %i.dkx = load ptr, ptr %i.bob, align 8, !tbaa !336
  %i.dky = zext nneg i32 %.0.i1109 to i64
  %i.dkz = getelementptr inbounds nuw [8 x i8], ptr %i.dkx, i64 %i.dky
  tail call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.at, ptr noundef %i.dkz, i32 noundef %.1.i.ph, i32 noundef %i.cl)
  br label %put_symbol_inline.exit173.i

put_symbol_inline.exit173.i:                      ; preds = %renorm_encoder.exit434, %bb.jm, %renorm_encoder.exit454, %bb.kk, %renorm_encoder.exit459, %bb.kp, %renorm_encoder.exit384, %bb.hh, %renorm_encoder.exit404, %bb.if, %renorm_encoder.exit409, %bb.ik, %bb.ld
  %indvars.iv7511427 = phi i64 [ %indvars.iv751.ph, %renorm_encoder.exit434 ], [ %indvars.iv751.ph, %renorm_encoder.exit384 ], [ %indvars.iv7511428, %bb.ld ], [ %indvars.iv751.ph, %bb.ik ], [ %indvars.iv751.ph, %renorm_encoder.exit409 ], [ %indvars.iv751.ph, %bb.if ], [ %indvars.iv751.ph, %renorm_encoder.exit404 ], [ %indvars.iv751.ph, %bb.hh ], [ %indvars.iv751.ph, %bb.kp ], [ %indvars.iv751.ph, %renorm_encoder.exit459 ], [ %indvars.iv751.ph, %bb.kk ], [ %indvars.iv751.ph, %renorm_encoder.exit454 ], [ %indvars.iv751.ph, %bb.jm ]
  %.4114.i = phi i32 [ %.0110.i599.ph, %renorm_encoder.exit434 ], [ %.0110.i599.ph, %renorm_encoder.exit384 ], [ %.3113.i.ph, %bb.ld ], [ %.0110.i599.ph, %bb.ik ], [ %.0110.i599.ph, %renorm_encoder.exit409 ], [ %.0110.i599.ph, %bb.if ], [ %.0110.i599.ph, %renorm_encoder.exit404 ], [ %.0110.i599.ph, %bb.hh ], [ %.0110.i599.ph, %bb.kp ], [ %.0110.i599.ph, %renorm_encoder.exit459 ], [ %.0110.i599.ph, %bb.kk ], [ %.0110.i599.ph, %renorm_encoder.exit454 ], [ %.0110.i599.ph, %bb.jm ] ; 2 uses
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv7511427, 1 ; 2 uses
  %exitcond755.not = icmp eq i64 %indvars.iv.next752, %wide.trip.count754
  br i1 %exitcond755.not, label %encode_line.exit220.sink.split, label %.outer1080, !llvm.loop !361

put_symbol_inline.exit173.i.thread:               ; preds = %get_context.exit357
  %i.dla = add nsw i32 %.0106.i600, 1             ; 2 uses
  %indvars.iv.next7521067 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %exitcond755.not1068 = icmp eq i64 %indvars.iv.next7521067, %wide.trip.count754
  br i1 %exitcond755.not1068, label %.preheader547, label %.outer1080.peel.newph, !llvm.loop !374

.preheader547:                                    ; preds = %put_symbol_inline.exit173.i.thread, %put_symbol_inline.exit173.i.thread.peel
  %.lcssa1437 = phi i32 [ %i.dla, %put_symbol_inline.exit173.i.thread ], [ 1, %put_symbol_inline.exit173.i.thread.peel ] ; 3 uses
  %i.dlb = sext i32 %.0110.i599.ph to i64         ; 2 uses
  %i.dlc = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.dlb
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !41
  %i.dle = zext nneg i8 %i.dld to i32
  %i.dlf = shl nuw i32 1, %i.dle                  ; 2 uses
  %.not126.i608 = icmp slt i32 %.lcssa1437, %i.dlf
  br i1 %.not126.i608, label %._crit_edge612, label %.lr.ph611.preheader

.lr.ph611.preheader:                              ; preds = %.preheader547
  %.pre838 = load i32, ptr %i.at, align 8, !tbaa !326
  %.pre839 = load i32, ptr %i.ai, align 4, !tbaa !325
  br label %.lr.ph611

.lr.ph611:                                        ; preds = %.lr.ph611.preheader, %put_bits.exit471
  %i.dlg = phi i32 [ %.pre839, %.lr.ph611.preheader ], [ %i.dma, %put_bits.exit471 ] ; 4 uses
  %i.dlh = phi i32 [ %.pre838, %.lr.ph611.preheader ], [ %.026.i.i469, %put_bits.exit471 ] ; 2 uses
  %indvars.iv756 = phi i64 [ %i.dlb, %.lr.ph611.preheader ], [ %indvars.iv.next757, %put_bits.exit471 ]
  %i.dli = phi i32 [ %i.dlf, %.lr.ph611.preheader ], [ %i.dme, %put_bits.exit471 ]
  %.4.i610 = phi i32 [ %.lcssa1437, %.lr.ph611.preheader ], [ %i.dlj, %put_bits.exit471 ]
  %i.dlj = sub nsw i32 %.4.i610, %i.dli           ; 3 uses
  %indvars.iv.next757 = add nsw i64 %indvars.iv756, 1 ; 3 uses
  %i.dlk = icmp sgt i32 %i.dlg, 1
  br i1 %i.dlk, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %.lr.ph611
  %i.dll = shl i32 %i.dlh, 1
  %i.dlm = or disjoint i32 %i.dll, 1
  br label %put_bits.exit471

bb.lf:                                            ; preds = %.lr.ph611
  %i.dln = load ptr, ptr %i.ag, align 8, !tbaa !323
  %i.dlo = load ptr, ptr %i.ah, align 8, !tbaa !324 ; 2 uses
  %i.dlp = ptrtoint ptr %i.dln to i64
  %i.dlq = ptrtoint ptr %i.dlo to i64
  %i.dlr = sub i64 %i.dlp, %i.dlq
  %i.dls = icmp ugt i64 %i.dlr, 3
  br i1 %i.dls, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.dlt = shl i32 %i.dlh, %i.dlg
  %i.dlu = icmp eq i32 %i.dlg, 1
  %i.dlv = zext i1 %i.dlu to i32
  %i.dlw = or i32 %i.dlt, %i.dlv
  %i.dlx = tail call i32 @llvm.bswap.i32(i32 %i.dlw)
  store i32 %i.dlx, ptr %i.dlo, align 1, !tbaa !41
  %i.dly = load ptr, ptr %i.ah, align 8, !tbaa !324
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dly, i64 4
  store ptr %i.dlz, ptr %i.ah, align 8, !tbaa !324
  br label %put_bits.exit471

bb.lh:                                            ; preds = %bb.lf
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit471

put_bits.exit471:                                 ; preds = %bb.lg, %bb.lh, %bb.le
  %.sink1261 = phi i32 [ -1, %bb.le ], [ 31, %bb.lh ], [ 31, %bb.lg ]
  %.026.i.i469 = phi i32 [ %i.dlm, %bb.le ], [ 1, %bb.lh ], [ 1, %bb.lg ] ; 2 uses
  %i.dma = add nsw i32 %i.dlg, %.sink1261         ; 2 uses
  store i32 %.026.i.i469, ptr %i.at, align 8, !tbaa !326
  store i32 %i.dma, ptr %i.ai, align 4, !tbaa !325
  %i.dmb = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next757
  %i.dmc = load i8, ptr %i.dmb, align 1, !tbaa !41
  %i.dmd = zext nneg i8 %i.dmc to i32
  %i.dme = shl nuw i32 1, %i.dmd                  ; 2 uses
  %.not126.i = icmp slt i32 %i.dlj, %i.dme
  br i1 %.not126.i, label %._crit_edge612.loopexit, label %.lr.ph611, !llvm.loop !363

._crit_edge612.loopexit:                          ; preds = %put_bits.exit471
  %i.dmf = trunc nsw i64 %indvars.iv.next757 to i32
  br label %._crit_edge612

._crit_edge612:                                   ; preds = %._crit_edge612.loopexit, %.preheader547
  %.5.i.lcssa = phi i32 [ %.0110.i599.ph, %.preheader547 ], [ %i.dmf, %._crit_edge612.loopexit ] ; 2 uses
  %.4.i.lcssa = phi i32 [ %.lcssa1437, %.preheader547 ], [ %i.dlj, %._crit_edge612.loopexit ]
  %.not127.i = icmp eq i32 %.4.i.lcssa, 0
  br i1 %.not127.i, label %encode_line.exit220.sink.split, label %bb.li

bb.li:                                            ; preds = %._crit_edge612
  %i.dmg = load i32, ptr %i.at, align 8, !tbaa !326 ; 2 uses
  %i.dmh = load i32, ptr %i.ai, align 4, !tbaa !325 ; 4 uses
  %i.dmi = icmp sgt i32 %i.dmh, 1
  br i1 %i.dmi, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.dmj = shl i32 %i.dmg, 1
  %i.dmk = or disjoint i32 %i.dmj, 1
  br label %put_bits.exit475

bb.lk:                                            ; preds = %bb.li
  %i.dml = load ptr, ptr %i.ag, align 8, !tbaa !323
  %i.dmm = load ptr, ptr %i.ah, align 8, !tbaa !324 ; 2 uses
  %i.dmn = ptrtoint ptr %i.dml to i64
  %i.dmo = ptrtoint ptr %i.dmm to i64
  %i.dmp = sub i64 %i.dmn, %i.dmo
  %i.dmq = icmp ugt i64 %i.dmp, 3
  br i1 %i.dmq, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.dmr = shl i32 %i.dmg, %i.dmh
  %i.dms = icmp eq i32 %i.dmh, 1
  %i.dmt = zext i1 %i.dms to i32
  %i.dmu = or i32 %i.dmr, %i.dmt
  %i.dmv = tail call i32 @llvm.bswap.i32(i32 %i.dmu)
  store i32 %i.dmv, ptr %i.dmm, align 1, !tbaa !41
  %i.dmw = load ptr, ptr %i.ah, align 8, !tbaa !324
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmw, i64 4
  store ptr %i.dmx, ptr %i.ah, align 8, !tbaa !324
  br label %put_bits.exit475

bb.lm:                                            ; preds = %bb.lk
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit475

put_bits.exit475:                                 ; preds = %bb.ll, %bb.lm, %bb.lj
  %.sink1262 = phi i32 [ -1, %bb.lj ], [ 31, %bb.lm ], [ 31, %bb.ll ]
  %.026.i.i473 = phi i32 [ %i.dmk, %bb.lj ], [ 1, %bb.lm ], [ 1, %bb.ll ]
  %i.dmy = add nsw i32 %i.dmh, %.sink1262
  br label %encode_line.exit220.sink.split.sink.split

encode_line.exit220.sink.split.sink.split:        ; preds = %put_bits.exit341, %put_bits.exit475
  %.026.i.i473.sink = phi i32 [ %.026.i.i473, %put_bits.exit475 ], [ %.026.i.i339, %put_bits.exit341 ]
  %.sink1263 = phi i32 [ %i.dmy, %put_bits.exit475 ], [ %i.bgi, %put_bits.exit341 ]
  %.6.i.sink.ph = phi i32 [ %.5.i.lcssa, %put_bits.exit475 ], [ %.5.i102.lcssa, %put_bits.exit341 ]
  store i32 %.026.i.i473.sink, ptr %i.at, align 8, !tbaa !326
  store i32 %.sink1263, ptr %i.ai, align 4, !tbaa !325
  br label %encode_line.exit220.sink.split

encode_line.exit220.sink.split:                   ; preds = %put_symbol_inline.exit173.i, %put_symbol_inline.exit173.i131, %encode_line.exit220.sink.split.sink.split, %._crit_edge612, %bb.ga, %._crit_edge670, %bb.v
  %.6.i.sink = phi i32 [ %i.fd, %bb.v ], [ %.4114.i132, %put_symbol_inline.exit173.i131 ], [ %.5.i102.lcssa, %._crit_edge670 ], [ %.6.i.sink.ph, %encode_line.exit220.sink.split.sink.split ], [ %i.ble, %bb.ga ], [ %.5.i.lcssa, %._crit_edge612 ], [ %.4114.i, %put_symbol_inline.exit173.i ]
  store i32 %.6.i.sink, ptr %i.h, align 8, !tbaa !327
  br label %encode_line.exit220

encode_line.exit220:                              ; preds = %._crit_edge618, %bb.p, %encode_line.exit220.sink.split, %.preheader545, %.preheader541
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %exitcond812.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count811
  br i1 %exitcond812.not, label %encode_line.exit220.thread, label %.preheader554, !llvm.loop !375

encode_line.exit220.thread:                       ; preds = %encode_line.exit220, %bb.a, %bb.fx, %bb.fn, %bb.fz, %bb.s, %bb.h, %bb.u
  %.0 = phi i32 [ -1094995529, %bb.s ], [ -1094995529, %bb.fx ], [ -1094995529, %bb.u ], [ -1094995529, %bb.h ], [ -1094995529, %bb.fz ], [ -1094995529, %bb.fn ], [ 0, %bb.a ], [ 0, %encode_line.exit220 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @encode_rgb_frame32(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  %i.a = alloca [4 x [3 x ptr]], align 16         ; 19 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25196
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25204
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 3 uses
  call void @ff_ffv1_compute_bits_per_plane(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef %i.k) #19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !327
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !328  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.r, ptr %i.s, align 16, !tbaa !147
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.r, ptr %i.t, align 8, !tbaa !147
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.r, ptr %i.u, align 16, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.r, ptr %i.v, align 8, !tbaa !147
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.w = select i1 %.not, i32 2, i32 3            ; 5 uses
  %i.x = icmp slt i32 %i.k, 9
  %.not162 = icmp eq ptr %i.m, null
  %i.y = add nsw i32 %3, 6                        ; 5 uses
  %i.z = shl i32 %i.y, 2
  %i.aa = mul i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.ac, i1 false)
  %i.ad = icmp sgt i32 %4, 0
  br i1 %i.ad, label %.preheader620.lr.ph, label %encode_line32.exit294.thread

.preheader620.lr.ph:                              ; preds = %bb.a
  %i.ae = add i32 %i.o, 3                         ; 2 uses
  %i.af = shl nsw i32 %i.ae, 1
  %i.ag = mul i32 %i.w, %i.y                      ; 3 uses
  %i.ah = icmp sgt i32 %3, 0                      ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not163 = icmp eq i32 %i.o, 0                  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4880
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4888
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4896
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4904
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.av = icmp sgt i32 %i.o, -3
  %i.aw = sext i32 %3 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 186 uses
  %.not.i = icmp eq i32 %6, 0                     ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 214 uses
  %i.bb = mul nsw i32 %3, 35
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 26 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 15 uses
  %i.bg = shl nsw i32 %3, 2                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4320 ; 2 uses
  %i.bi = and i32 %i.i, 512
  %.not132.i = icmp eq i32 %i.bi, 0               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 20 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4768 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 176 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 210 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 126 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 12 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 15 uses
  %i.br = mul nsw i32 %3, 9
  %i.bs = sext i32 %i.br to i64
  %i.bt = add nsw i64 %i.bs, 7
  %i.bu = ashr i64 %i.bt, 3
  %i.bv = sext i32 %i.af to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %i.bw = sext i32 %i.ag to i64                   ; 3 uses
  %i.bx = shl i32 %i.ag, 1
  %i.by = sext i32 %i.bx to i64                   ; 3 uses
  %i.bz = mul i32 %i.ag, 3
  %i.ca = sext i32 %i.bz to i64                   ; 3 uses
  %wide.trip.count782 = zext nneg i32 %3 to i64
  %wide.trip.count855 = zext nneg i32 %smax to i64
  %wide.trip.count808 = zext nneg i32 %3 to i64   ; 3 uses
  %wide.trip.count816 = zext nneg i32 %3 to i64
  %wide.trip.count842 = zext nneg i32 %3 to i64   ; 3 uses
  %wide.trip.count850 = zext nneg i32 %3 to i64
  %gep632.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %gep632.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %gep632.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %invariant.gep631.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %gep632.1.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %gep632.2.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %gep632.3.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %invariant.gep631.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %gep632.1.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %gep632.2.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %gep632.3.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  br label %.preheader620

.preheader620:                                    ; preds = %.preheader620.lr.ph, %._crit_edge741
  %.0140743 = phi i32 [ undef, %.preheader620.lr.ph ], [ %.1141.lcssa, %._crit_edge741 ] ; 2 uses
  %.0154742 = phi i32 [ 0, %.preheader620.lr.ph ], [ %i.dji, %._crit_edge741 ] ; 7 uses
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !328 ; 3 uses
  %i.cc = sub nsw i32 %4, %.0154742               ; 3 uses
  %i.cd = srem i32 %i.cc, %i.w
  %i.ce = mul nsw i32 %i.cd, %i.y
  %i.cf = sext i32 %i.ce to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.cb, i64 %i.cf ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12 ; 2 uses
  store ptr %i.cg, ptr %i.a, align 16, !tbaa !147
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bw
  %i.ch = getelementptr inbounds nuw i8, ptr %gep.1, i64 12 ; 2 uses
  store ptr %i.ch, ptr %gep632.1, align 8, !tbaa !147
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.by
  %i.ci = getelementptr inbounds nuw i8, ptr %gep.2, i64 12 ; 2 uses
  store ptr %i.ci, ptr %gep632.2, align 16, !tbaa !147
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ca
  %i.cj = getelementptr inbounds nuw i8, ptr %gep.3, i64 12 ; 2 uses
  store ptr %i.cj, ptr %gep632.3, align 8, !tbaa !147
  %i.ck = add i32 %i.cc, 1
  %i.cl = srem i32 %i.ck, %i.w
  %i.cm = mul nsw i32 %i.cl, %i.y
  %i.cn = sext i32 %i.cm to i64
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.cb, i64 %i.cn ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 12
  store ptr %i.co, ptr %invariant.gep631.1, align 8, !tbaa !147
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bw
  %i.cp = getelementptr inbounds nuw i8, ptr %gep.1.1, i64 12
  store ptr %i.cp, ptr %gep632.1.1, align 16, !tbaa !147
  %gep.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.by
  %i.cq = getelementptr inbounds nuw i8, ptr %gep.2.1, i64 12
  store ptr %i.cq, ptr %gep632.2.1, align 8, !tbaa !147
  %gep.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ca
  %i.cr = getelementptr inbounds nuw i8, ptr %gep.3.1, i64 12
  store ptr %i.cr, ptr %gep632.3.1, align 16, !tbaa !147
  br i1 %.not, label %.preheader619, label %.preheader617.2

.preheader619:                                    ; preds = %.preheader617.2, %.preheader620
  br i1 %i.ah, label %.lr.ph, label %.preheader618

.lr.ph:                                           ; preds = %.preheader619
  %i.cs = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  br label %bb.b

.preheader617.2:                                  ; preds = %.preheader620
  %i.ct = add i32 %i.cc, 2
  %i.cu = srem i32 %i.ct, %i.w
  %i.cv = mul nsw i32 %i.cu, %i.y
  %i.cw = sext i32 %i.cv to i64
  %invariant.gep.2 = getelementptr [4 x i8], ptr %i.cb, i64 %i.cw ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 12
  store ptr %i.cx, ptr %invariant.gep631.2, align 16, !tbaa !147
  %gep.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.bw
  %i.cy = getelementptr inbounds nuw i8, ptr %gep.1.2, i64 12
  store ptr %i.cy, ptr %gep632.1.2, align 8, !tbaa !147
  %gep.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.by
  %i.cz = getelementptr inbounds nuw i8, ptr %gep.2.2, i64 12
  store ptr %i.cz, ptr %gep632.2.2, align 16, !tbaa !147
  %gep.3.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ca
  %i.da = getelementptr inbounds nuw i8, ptr %gep.3.2, i64 12
  store ptr %i.da, ptr %gep632.3.2, align 8, !tbaa !147
  br label %.preheader619

.preheader618:                                    ; preds = %bb.n, %.preheader619
  %.1141.lcssa = phi i32 [ %.0140743, %.preheader619 ], [ %.4, %bb.n ]
  br i1 %i.av, label %.lr.ph740, label %._crit_edge741

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv779 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next780, %bb.n ] ; 8 uses
  %.1141635 = phi i32 [ %.0140743, %.lr.ph ], [ %.4, %bb.n ] ; 2 uses
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.db = shl nuw nsw i64 %indvars.iv779, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.db
  %i.dd = load i32, ptr %5, align 4, !tbaa !63
  %i.de = mul nsw i32 %i.dd, %.0154742
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !63 ; 4 uses
  %i.di = and i32 %i.dh, 255
  %i.dj = lshr i32 %i.dh, 8
  %i.dk = and i32 %i.dj, 255
  %i.dl = lshr i32 %i.dh, 16
  %i.dm = and i32 %i.dl, 255
  %i.dn = lshr i32 %i.dh, 24
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.do = load i32, ptr %5, align 4, !tbaa !63
  %i.dp = mul nsw i32 %i.do, %.0154742
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  br i1 %.not162, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.dr = mul nsw i64 %indvars.iv779, %i.bv
  %i.ds = getelementptr inbounds i8, ptr %i.cs, i64 %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.dq ; 4 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !78
  %i.dv = zext i16 %i.du to i32                   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !78
  %i.dy = zext i16 %i.dx to i32                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !78
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  br i1 %.not163, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !78
  %i.ee = zext i16 %i.ed to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ef = shl nuw nsw i64 %indvars.iv779, 1       ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dq
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !78
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %i.ek = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ef
  %i.em = load i32, ptr %i.ai, align 4, !tbaa !63
  %i.en = mul nsw i32 %i.em, %.0154742
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %i.el, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !78
  %i.er = zext i16 %i.eq to i32                   ; 2 uses
  %i.es = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ef
  %i.eu = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.ev = mul nsw i32 %i.eu, %.0154742
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !78
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  br i1 %.not163, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ef
  %i.fc = load i32, ptr %i.am, align 4, !tbaa !63
  %i.fd = mul nsw i32 %i.fc, %.0154742
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !78
  %i.fh = zext i16 %i.fg to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.g, %bb.c
  %.0150 = phi i32 [ %i.di, %bb.c ], [ %i.er, %bb.g ], [ %i.er, %bb.h ], [ %i.eb, %bb.f ], [ %i.eb, %bb.e ] ; 2 uses
  %.0147 = phi i32 [ %i.dk, %bb.c ], [ %i.ej, %bb.g ], [ %i.ej, %bb.h ], [ %i.dy, %bb.f ], [ %i.dy, %bb.e ] ; 2 uses
  %.0144 = phi i32 [ %i.dm, %bb.c ], [ %i.ez, %bb.g ], [ %i.ez, %bb.h ], [ %i.dv, %bb.f ], [ %i.dv, %bb.e ] ; 2 uses
  %.3143 = phi i32 [ %i.dn, %bb.c ], [ %.1141635, %bb.g ], [ %i.fh, %bb.h ], [ %i.ee, %bb.f ], [ %.1141635, %bb.e ] ; 3 uses
  %i.fi = load i32, ptr %i.an, align 8, !tbaa !150
  %.not165 = icmp eq i32 %i.fi, 0
  br i1 %.not165, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fj = load ptr, ptr %i.ao, align 8, !tbaa !148
  %i.fk = zext nneg i32 %.0147 to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !78
  %i.fn = zext i16 %i.fm to i32                   ; 2 uses
  %i.fo = load ptr, ptr %i.ap, align 8, !tbaa !148
  %i.fp = zext nneg i32 %.0150 to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !78
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = load ptr, ptr %i.aq, align 8, !tbaa !148
  %i.fu = zext nneg i32 %.0144 to i64
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !78
  %i.fx = zext i16 %i.fw to i32                   ; 2 uses
  br i1 %.not163, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fy = load ptr, ptr %i.ar, align 8, !tbaa !148
  %i.fz = sext i32 %.3143 to i64
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !78
  %i.gc = zext i16 %i.gb to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.1151 = phi i32 [ %i.fs, %bb.k ], [ %i.fs, %bb.j ], [ %.0150, %bb.i ] ; 2 uses
  %.1148 = phi i32 [ %i.fn, %bb.k ], [ %i.fn, %bb.j ], [ %.0147, %bb.i ] ; 4 uses
  %.1145 = phi i32 [ %i.fx, %bb.k ], [ %i.fx, %bb.j ], [ %.0144, %bb.i ] ; 2 uses
  %.4 = phi i32 [ %i.gc, %bb.k ], [ %.3143, %bb.j ], [ %.3143, %bb.i ] ; 3 uses
  %i.gd = load i32, ptr %i.as, align 4, !tbaa !200
  %.not167 = icmp eq i32 %i.gd, 1
  br i1 %.not167, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ge = sub nsw i32 %.1151, %.1148              ; 2 uses
  %i.gf = sub nsw i32 %.1145, %.1148              ; 2 uses
  %i.gg = load i32, ptr %i.at, align 8, !tbaa !243
  %i.gh = mul nsw i32 %i.gg, %i.ge
  %i.gi = load i32, ptr %i.au, align 4, !tbaa !244
  %i.gj = mul nsw i32 %i.gi, %i.gf
  %i.gk = add nsw i32 %i.gj, %i.gh
  %i.gl = ashr i32 %i.gk, 2
  %i.gm = add nsw i32 %i.gl, %.1148
  %i.gn = load i32, ptr %i.c, align 4, !tbaa !63  ; 2 uses
  %i.go = add nsw i32 %i.gn, %i.ge
  %i.gp = add nsw i32 %i.gn, %i.gf
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2152 = phi i32 [ %i.go, %bb.m ], [ %.1151, %bb.l ]
  %.2149 = phi i32 [ %i.gm, %bb.m ], [ %.1148, %bb.l ]
  %.2146 = phi i32 [ %i.gp, %bb.m ], [ %.1145, %bb.l ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv779
  store i32 %.2149, ptr %i.gq, align 4, !tbaa !63
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv779
  store i32 %.2152, ptr %i.gr, align 4, !tbaa !63
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv779
  store i32 %.2146, ptr %i.gs, align 4, !tbaa !63
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv779
  store i32 %.4, ptr %i.gt, align 4, !tbaa !63
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 1 ; 2 uses
  %exitcond783.not = icmp eq i64 %indvars.iv.next780, %wide.trip.count782
  br i1 %exitcond783.not, label %.preheader618, label %bb.b, !llvm.loop !376

.lr.ph740:                                        ; preds = %.preheader618, %.loopexit
  %indvars.iv852 = phi i64 [ %i.hg, %.loopexit ], [ 0, %.preheader618 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv852 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !147 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !63
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !147 ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -4
  store i32 %i.gx, ptr %i.gz, align 4, !tbaa !63
  %i.ha = getelementptr [4 x i8], ptr %i.gw, i64 %i.aw ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 -4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !63
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !63
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv852
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !63 ; 7 uses
  %i.hf = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.hg = add nuw nsw i64 %indvars.iv852, 1       ; 3 uses
  %i.hh = lshr i64 %i.hg, 1
  %i.hi = load ptr, ptr %i.ax, align 8, !tbaa !133
  %i.hj = and i64 %i.hh, 2147483647
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.hj ; 6 uses
  %i.hl = load i32, ptr %i.p, align 8, !tbaa !327 ; 4 uses
  switch i32 %i.he, label %bb.fq [
end_hunk_3
begin_hunk_4_@encode_rgb_frame32:bb.a
  %.4114.i = phi i32 [ %.0110.i667.ph, %renorm_encoder.exit505 ], [ %.0110.i667.ph, %renorm_encoder.exit455 ], [ %.3113.i.ph, %bb.lh ], [ %.0110.i667.ph, %bb.io ], [ %.0110.i667.ph, %renorm_encoder.exit480 ], [ %.0110.i667.ph, %bb.ij ], [ %.0110.i667.ph, %renorm_encoder.exit475 ], [ %.0110.i667.ph, %bb.hl ], [ %.0110.i667.ph, %bb.kt ], [ %.0110.i667.ph, %renorm_encoder.exit530 ], [ %.0110.i667.ph, %bb.ko ], [ %.0110.i667.ph, %renorm_encoder.exit525 ], [ %.0110.i667.ph, %bb.jq ] ; 2 uses
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv8051418, 1 ; 2 uses
  %exitcond809.not = icmp eq i64 %indvars.iv.next806, %wide.trip.count808
  br i1 %exitcond809.not, label %.loopexit.sink.split, label %.outer1121, !llvm.loop !335

put_symbol_inline.exit173.i.thread:               ; preds = %get_context32.exit428
  %i.dhj = add nsw i32 %.0106.i668, 1             ; 2 uses
  %indvars.iv.next8061108 = add nuw nsw i64 %indvars.iv805, 1 ; 2 uses
  %exitcond809.not1109 = icmp eq i64 %indvars.iv.next8061108, %wide.trip.count808
  br i1 %exitcond809.not1109, label %.preheader616, label %.outer1121.peel.newph, !llvm.loop !378

.preheader616:                                    ; preds = %put_symbol_inline.exit173.i.thread, %put_symbol_inline.exit173.i.thread.peel
  %.lcssa1427 = phi i32 [ %i.dhj, %put_symbol_inline.exit173.i.thread ], [ 1, %put_symbol_inline.exit173.i.thread.peel ] ; 3 uses
  %i.dhk = sext i32 %.0110.i667.ph to i64         ; 2 uses
  %i.dhl = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.dhk
  %i.dhm = load i8, ptr %i.dhl, align 1, !tbaa !41
  %i.dhn = zext nneg i8 %i.dhm to i32
  %i.dho = shl nuw i32 1, %i.dhn                  ; 2 uses
  %.not126.i676 = icmp slt i32 %.lcssa1427, %i.dho
  br i1 %.not126.i676, label %._crit_edge680, label %.lr.ph679.preheader

.lr.ph679.preheader:                              ; preds = %.preheader616
  %.pre881 = load i32, ptr %i.bq, align 8, !tbaa !326
  %.pre882 = load i32, ptr %i.bf, align 4, !tbaa !325
  br label %.lr.ph679

.lr.ph679:                                        ; preds = %.lr.ph679.preheader, %put_bits.exit542
  %i.dhp = phi i32 [ %.pre882, %.lr.ph679.preheader ], [ %i.dij, %put_bits.exit542 ] ; 4 uses
  %i.dhq = phi i32 [ %.pre881, %.lr.ph679.preheader ], [ %.026.i.i540, %put_bits.exit542 ] ; 2 uses
  %indvars.iv810 = phi i64 [ %i.dhk, %.lr.ph679.preheader ], [ %indvars.iv.next811, %put_bits.exit542 ]
  %i.dhr = phi i32 [ %i.dho, %.lr.ph679.preheader ], [ %i.din, %put_bits.exit542 ]
  %.4.i678 = phi i32 [ %.lcssa1427, %.lr.ph679.preheader ], [ %i.dhs, %put_bits.exit542 ]
  %i.dhs = sub nsw i32 %.4.i678, %i.dhr           ; 3 uses
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, 1 ; 3 uses
  %i.dht = icmp sgt i32 %i.dhp, 1
  br i1 %i.dht, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph679
  %i.dhu = shl i32 %i.dhq, 1
  %i.dhv = or disjoint i32 %i.dhu, 1
  br label %put_bits.exit542

bb.lj:                                            ; preds = %.lr.ph679
  %i.dhw = load ptr, ptr %i.bd, align 8, !tbaa !323
  %i.dhx = load ptr, ptr %i.be, align 8, !tbaa !324 ; 2 uses
  %i.dhy = ptrtoint ptr %i.dhw to i64
  %i.dhz = ptrtoint ptr %i.dhx to i64
  %i.dia = sub i64 %i.dhy, %i.dhz
  %i.dib = icmp ugt i64 %i.dia, 3
  br i1 %i.dib, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.dic = shl i32 %i.dhq, %i.dhp
  %i.did = icmp eq i32 %i.dhp, 1
  %i.die = zext i1 %i.did to i32
  %i.dif = or i32 %i.dic, %i.die
  %i.dig = call i32 @llvm.bswap.i32(i32 %i.dif)
  store i32 %i.dig, ptr %i.dhx, align 1, !tbaa !41
  %i.dih = load ptr, ptr %i.be, align 8, !tbaa !324
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dih, i64 4
  store ptr %i.dii, ptr %i.be, align 8, !tbaa !324
  br label %put_bits.exit542

bb.ll:                                            ; preds = %bb.lj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit542

put_bits.exit542:                                 ; preds = %bb.lk, %bb.ll, %bb.li
  %.sink1294 = phi i32 [ -1, %bb.li ], [ 31, %bb.ll ], [ 31, %bb.lk ]
  %.026.i.i540 = phi i32 [ %i.dhv, %bb.li ], [ 1, %bb.ll ], [ 1, %bb.lk ] ; 2 uses
  %i.dij = add nsw i32 %i.dhp, %.sink1294         ; 2 uses
  store i32 %.026.i.i540, ptr %i.bq, align 8, !tbaa !326
  store i32 %i.dij, ptr %i.bf, align 4, !tbaa !325
  %i.dik = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next811
  %i.dil = load i8, ptr %i.dik, align 1, !tbaa !41
  %i.dim = zext nneg i8 %i.dil to i32
  %i.din = shl nuw i32 1, %i.dim                  ; 2 uses
  %.not126.i = icmp slt i32 %i.dhs, %i.din
  br i1 %.not126.i, label %._crit_edge680.loopexit, label %.lr.ph679, !llvm.loop !338

._crit_edge680.loopexit:                          ; preds = %put_bits.exit542
  %i.dio = trunc nsw i64 %indvars.iv.next811 to i32
  br label %._crit_edge680

._crit_edge680:                                   ; preds = %._crit_edge680.loopexit, %.preheader616
  %.5.i.lcssa = phi i32 [ %.0110.i667.ph, %.preheader616 ], [ %i.dio, %._crit_edge680.loopexit ] ; 2 uses
  %.4.i.lcssa = phi i32 [ %.lcssa1427, %.preheader616 ], [ %i.dhs, %._crit_edge680.loopexit ]
  %.not127.i = icmp eq i32 %.4.i.lcssa, 0
  br i1 %.not127.i, label %.loopexit.sink.split, label %bb.lm

bb.lm:                                            ; preds = %._crit_edge680
  %i.dip = load i32, ptr %i.bq, align 8, !tbaa !326 ; 2 uses
  %i.diq = load i32, ptr %i.bf, align 4, !tbaa !325 ; 4 uses
  %i.dir = icmp sgt i32 %i.diq, 1
  br i1 %i.dir, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.dis = shl i32 %i.dip, 1
  %i.dit = or disjoint i32 %i.dis, 1
  br label %put_bits.exit546

bb.lo:                                            ; preds = %bb.lm
  %i.diu = load ptr, ptr %i.bd, align 8, !tbaa !323
  %i.div = load ptr, ptr %i.be, align 8, !tbaa !324 ; 2 uses
  %i.diw = ptrtoint ptr %i.diu to i64
  %i.dix = ptrtoint ptr %i.div to i64
  %i.diy = sub i64 %i.diw, %i.dix
  %i.diz = icmp ugt i64 %i.diy, 3
  br i1 %i.diz, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.dja = shl i32 %i.dip, %i.diq
  %i.djb = icmp eq i32 %i.diq, 1
  %i.djc = zext i1 %i.djb to i32
  %i.djd = or i32 %i.dja, %i.djc
  %i.dje = call i32 @llvm.bswap.i32(i32 %i.djd)
  store i32 %i.dje, ptr %i.div, align 1, !tbaa !41
  %i.djf = load ptr, ptr %i.be, align 8, !tbaa !324
  %i.djg = getelementptr inbounds nuw i8, ptr %i.djf, i64 4
  store ptr %i.djg, ptr %i.be, align 8, !tbaa !324
  br label %put_bits.exit546

bb.lq:                                            ; preds = %bb.lo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit546

put_bits.exit546:                                 ; preds = %bb.lp, %bb.lq, %bb.ln
  %.sink1295 = phi i32 [ -1, %bb.ln ], [ 31, %bb.lq ], [ 31, %bb.lp ]
  %.026.i.i544 = phi i32 [ %i.dit, %bb.ln ], [ 1, %bb.lq ], [ 1, %bb.lp ]
  %i.djh = add nsw i32 %i.diq, %.sink1295
  br label %.loopexit.sink.split.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %put_bits.exit412, %put_bits.exit546
  %.026.i.i544.sink = phi i32 [ %.026.i.i544, %put_bits.exit546 ], [ %.026.i.i410, %put_bits.exit412 ]
  %.sink1296 = phi i32 [ %i.djh, %put_bits.exit546 ], [ %i.bid, %put_bits.exit412 ]
  %.6.i178.sink.ph = phi i32 [ %.5.i.lcssa, %put_bits.exit546 ], [ %.5.i174.lcssa, %put_bits.exit412 ]
  store i32 %.026.i.i544.sink, ptr %i.bq, align 8, !tbaa !326
  store i32 %.sink1296, ptr %i.bf, align 4, !tbaa !325
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %put_symbol_inline.exit173.i, %put_symbol_inline.exit173.i205, %.loopexit.sink.split.sink.split, %._crit_edge680, %bb.ge, %._crit_edge733, %bb.ad
  %.6.i178.sink = phi i32 [ %i.hl, %bb.ad ], [ %.4114.i206, %put_symbol_inline.exit173.i205 ], [ %.5.i174.lcssa, %._crit_edge733 ], [ %.6.i178.sink.ph, %.loopexit.sink.split.sink.split ], [ %i.hl, %bb.ge ], [ %.5.i.lcssa, %._crit_edge680 ], [ %.4114.i, %put_symbol_inline.exit173.i ]
  store i32 %.6.i178.sink, ptr %i.p, align 8, !tbaa !327
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %._crit_edge686, %.loopexit.sink.split, %.lr.ph740, %.preheader614, %.preheader612
  %exitcond856.not = icmp eq i64 %i.hg, %wide.trip.count855
  br i1 %exitcond856.not, label %._crit_edge741, label %.lr.ph740, !llvm.loop !379

._crit_edge741:                                   ; preds = %.loopexit, %.preheader618
  %i.dji = add nuw nsw i32 %.0154742, 1           ; 2 uses
  %exitcond857.not = icmp eq i32 %i.dji, %4
  br i1 %exitcond857.not, label %encode_line32.exit294.thread, label %.preheader620, !llvm.loop !380

encode_line32.exit294.thread.sink.split:          ; preds = %bb.gd, %bb.gc, %bb.ft, %bb.ac, %bb.ab, %bb.r
  %.str.79.sink = phi ptr [ @.str.79, %bb.ft ], [ @.str.80, %bb.ac ], [ @.str.79, %bb.gc ], [ @.str.79, %bb.r ], [ @.str.79, %bb.ab ], [ @.str.80, %bb.gd ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hf, i32 noundef 16, ptr noundef nonnull %.str.79.sink) #19
  br label %encode_line32.exit294.thread

encode_line32.exit294.thread:                     ; preds = %._crit_edge741, %encode_line32.exit294.thread.sink.split, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ -1094995529, %encode_line32.exit294.thread.sink.split ], [ 0, %._crit_edge741 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @encode_rgb_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  %i.a = alloca [4 x [3 x ptr]], align 16         ; 19 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25196
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25204
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 3 uses
  call void @ff_ffv1_compute_bits_per_plane(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef %i.k) #19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !327
  %i.q = load ptr, ptr %1, align 8, !tbaa !201    ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 16, !tbaa !148
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.q, ptr %i.s, align 8, !tbaa !148
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.q, ptr %i.t, align 16, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.q, ptr %i.u, align 8, !tbaa !148
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.v = select i1 %.not, i32 2, i32 3            ; 5 uses
  %i.w = icmp slt i32 %i.k, 9
  %.not175 = icmp eq ptr %i.m, null
  %i.x = add nsw i32 %3, 6                        ; 5 uses
  %i.y = shl i32 %i.x, 2
  %i.z = mul i32 %i.y, %i.v
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.q, i8 0, i64 %i.ab, i1 false)
  %i.ac = icmp sgt i32 %4, 0
  br i1 %i.ac, label %.preheader633.lr.ph, label %encode_line.exit305.thread

.preheader633.lr.ph:                              ; preds = %bb.a
  %i.ad = add i32 %i.o, 3                         ; 2 uses
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = mul i32 %i.v, %i.x                      ; 3 uses
  %i.ag = icmp sgt i32 %3, 0                      ; 5 uses
  %.not176 = icmp eq i32 %i.o, 0                  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4880
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4888
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4896
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4904
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.au = icmp sgt i32 %i.o, -3
  %i.av = sext i32 %3 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 186 uses
  %.not.i = icmp eq i32 %6, 0                     ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 214 uses
  %i.ba = mul nsw i32 %3, 35
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 26 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 15 uses
  %i.bf = shl nsw i32 %3, 2                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4320 ; 2 uses
  %i.bh = and i32 %i.i, 512
  %.not132.i = icmp eq i32 %i.bh, 0               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 20 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4768 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 176 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 210 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 126 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 12 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 15 uses
  %i.bq = mul nsw i32 %3, 9
  %i.br = sext i32 %i.bq to i64
  %i.bs = add nsw i64 %i.br, 7
  %i.bt = ashr i64 %i.bs, 3
  %i.bu = sext i32 %i.ae to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %i.bv = sext i32 %i.af to i64                   ; 3 uses
  %i.bw = shl i32 %i.af, 1
  %i.bx = sext i32 %i.bw to i64                   ; 3 uses
  %i.by = mul i32 %i.af, 3
  %i.bz = sext i32 %i.by to i64                   ; 3 uses
  %wide.trip.count795 = zext nneg i32 %3 to i64
  %wide.trip.count868 = zext nneg i32 %smax to i64
  %wide.trip.count821 = zext nneg i32 %3 to i64   ; 3 uses
  %wide.trip.count829 = zext nneg i32 %3 to i64
  %wide.trip.count855 = zext nneg i32 %3 to i64   ; 3 uses
  %wide.trip.count863 = zext nneg i32 %3 to i64
  %gep645.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %gep645.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %gep645.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %invariant.gep644.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %gep645.1.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %gep645.2.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %gep645.3.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %invariant.gep644.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %gep645.1.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %gep645.2.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %gep645.3.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  br label %.preheader633

.preheader633:                                    ; preds = %.preheader633.lr.ph, %._crit_edge754
  %.0153756 = phi i32 [ undef, %.preheader633.lr.ph ], [ %.1154.lcssa, %._crit_edge754 ] ; 2 uses
  %.0167755 = phi i32 [ 0, %.preheader633.lr.ph ], [ %i.dma, %._crit_edge754 ] ; 10 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !201   ; 3 uses
  %i.cb = sub nsw i32 %4, %.0167755               ; 3 uses
  %i.cc = srem i32 %i.cb, %i.v
  %i.cd = mul nsw i32 %i.cc, %i.x
  %i.ce = sext i32 %i.cd to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.ca, i64 %i.ce ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6 ; 2 uses
  store ptr %i.cf, ptr %i.a, align 16, !tbaa !148
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bv
  %i.cg = getelementptr inbounds nuw i8, ptr %gep.1, i64 6 ; 2 uses
  store ptr %i.cg, ptr %gep645.1, align 8, !tbaa !148
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bx
  %i.ch = getelementptr inbounds nuw i8, ptr %gep.2, i64 6 ; 2 uses
  store ptr %i.ch, ptr %gep645.2, align 16, !tbaa !148
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bz
  %i.ci = getelementptr inbounds nuw i8, ptr %gep.3, i64 6 ; 2 uses
  store ptr %i.ci, ptr %gep645.3, align 8, !tbaa !148
  %i.cj = add i32 %i.cb, 1
  %i.ck = srem i32 %i.cj, %i.v
  %i.cl = mul nsw i32 %i.ck, %i.x
  %i.cm = sext i32 %i.cl to i64
  %invariant.gep.1 = getelementptr [2 x i8], ptr %i.ca, i64 %i.cm ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 6
  store ptr %i.cn, ptr %invariant.gep644.1, align 8, !tbaa !148
  %gep.1.1 = getelementptr [2 x i8], ptr %invariant.gep.1, i64 %i.bv
  %i.co = getelementptr inbounds nuw i8, ptr %gep.1.1, i64 6
  store ptr %i.co, ptr %gep645.1.1, align 16, !tbaa !148
  %gep.2.1 = getelementptr [2 x i8], ptr %invariant.gep.1, i64 %i.bx
  %i.cp = getelementptr inbounds nuw i8, ptr %gep.2.1, i64 6
  store ptr %i.cp, ptr %gep645.2.1, align 8, !tbaa !148
  %gep.3.1 = getelementptr [2 x i8], ptr %invariant.gep.1, i64 %i.bz
  %i.cq = getelementptr inbounds nuw i8, ptr %gep.3.1, i64 6
  store ptr %i.cq, ptr %gep645.3.1, align 16, !tbaa !148
  br i1 %.not, label %.preheader632, label %.preheader630.2

.preheader632:                                    ; preds = %.preheader630.2, %.preheader633
  br i1 %i.ag, label %.lr.ph, label %.preheader631

.lr.ph:                                           ; preds = %.preheader632
  %i.cr = load i32, ptr %i.am, align 8, !tbaa !150
  %.not178 = icmp eq i32 %i.cr, 0
  %i.cs = load i32, ptr %i.ar, align 4, !tbaa !200
  %.not180 = icmp eq i32 %i.cs, 1
  %i.ct = load i32, ptr %i.c, align 4             ; 2 uses
  br label %bb.b

.preheader630.2:                                  ; preds = %.preheader633
  %i.cu = add i32 %i.cb, 2
  %i.cv = srem i32 %i.cu, %i.v
  %i.cw = mul nsw i32 %i.cv, %i.x
  %i.cx = sext i32 %i.cw to i64
  %invariant.gep.2 = getelementptr [2 x i8], ptr %i.ca, i64 %i.cx ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 6
  store ptr %i.cy, ptr %invariant.gep644.2, align 16, !tbaa !148
  %gep.1.2 = getelementptr [2 x i8], ptr %invariant.gep.2, i64 %i.bv
  %i.cz = getelementptr inbounds nuw i8, ptr %gep.1.2, i64 6
  store ptr %i.cz, ptr %gep645.1.2, align 8, !tbaa !148
  %gep.2.2 = getelementptr [2 x i8], ptr %invariant.gep.2, i64 %i.bx
  %i.da = getelementptr inbounds nuw i8, ptr %gep.2.2, i64 6
  store ptr %i.da, ptr %gep645.2.2, align 16, !tbaa !148
  %gep.3.2 = getelementptr [2 x i8], ptr %invariant.gep.2, i64 %i.bz
  %i.db = getelementptr inbounds nuw i8, ptr %gep.3.2, i64 6
  store ptr %i.db, ptr %gep645.3.2, align 8, !tbaa !148
  br label %.preheader632

.preheader631:                                    ; preds = %bb.o, %.preheader632
  %.1154.lcssa = phi i32 [ %.0153756, %.preheader632 ], [ %.4, %bb.o ]
  br i1 %i.au, label %.lr.ph753, label %._crit_edge754

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv792 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next793, %bb.o ] ; 8 uses
  %.1154648 = phi i32 [ %.0153756, %.lr.ph ], [ %.4, %bb.o ] ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dc = load ptr, ptr %2, align 8, !tbaa !62
  %i.dd = shl nuw nsw i64 %indvars.iv792, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %5, align 4, !tbaa !63
  %i.dg = mul nsw i32 %i.df, %.0167755
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !63 ; 4 uses
  %i.dk = and i32 %i.dj, 255
  %i.dl = lshr i32 %i.dj, 8
  %i.dm = and i32 %i.dl, 255
  %i.dn = lshr i32 %i.dj, 16
  %i.do = and i32 %i.dn, 255
  %i.dp = lshr i32 %i.dj, 24
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  br i1 %.not175, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.dq = load ptr, ptr %2, align 8, !tbaa !62
  %i.dr = mul nsw i64 %indvars.iv792, %i.bu
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %5, align 4, !tbaa !63
  %i.du = mul nsw i32 %i.dt, %.0167755
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %i.dv ; 4 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !78
  %i.dy = zext i16 %i.dx to i32                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !78
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !78
  %i.ee = zext i16 %i.ed to i32                   ; 2 uses
  br i1 %.not176, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 6
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !78
  %i.eh = zext i16 %i.eg to i32
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ei = shl nuw nsw i64 %indvars.iv792, 1       ; 6 uses
  %i.ej = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  %i.el = load i32, ptr %i.aj, align 4, !tbaa !63
  %i.em = mul nsw i32 %i.el, %.0167755
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !78
  %i.eq = zext i16 %i.ep to i32                   ; 2 uses
  br i1 %.not176, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.er = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ei
  %i.et = load i32, ptr %i.ai, align 4, !tbaa !63
  %i.eu = mul nsw i32 %i.et, %.0167755
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !78
  %i.ey = zext i16 %i.ex to i32
  %i.ez = load ptr, ptr %2, align 8, !tbaa !62
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ei
  %i.fb = load i32, ptr %5, align 4, !tbaa !63
  %i.fc = mul nsw i32 %i.fb, %.0167755
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !78
  %i.fg = zext i16 %i.ff to i32
  %i.fh = load ptr, ptr %i.ak, align 8, !tbaa !62
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ei
  %i.fj = load i32, ptr %i.al, align 4, !tbaa !63
  %i.fk = mul nsw i32 %i.fj, %.0167755
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !78
  %i.fo = zext i16 %i.fn to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fp = load ptr, ptr %2, align 8, !tbaa !62
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ei
  %i.fr = load i32, ptr %5, align 4, !tbaa !63
  %i.fs = mul nsw i32 %i.fr, %.0167755
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fq, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !78
  %i.fw = zext i16 %i.fv to i32
  %i.fx = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ei
  %i.fz = load i32, ptr %i.ai, align 4, !tbaa !63
  %i.ga = mul nsw i32 %i.fz, %.0167755
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !78
  %i.ge = zext i16 %i.gd to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.c
  %.0163 = phi i32 [ %i.dk, %bb.c ], [ %i.fw, %bb.i ], [ %i.eq, %bb.h ], [ %i.ee, %bb.f ], [ %i.ee, %bb.e ] ; 2 uses
  %.0160 = phi i32 [ %i.dm, %bb.c ], [ %i.eq, %bb.i ], [ %i.fg, %bb.h ], [ %i.eb, %bb.f ], [ %i.eb, %bb.e ] ; 2 uses
  %.0157 = phi i32 [ %i.do, %bb.c ], [ %i.ge, %bb.i ], [ %i.ey, %bb.h ], [ %i.dy, %bb.f ], [ %i.dy, %bb.e ] ; 2 uses
  %.3156 = phi i32 [ %i.dp, %bb.c ], [ %.1154648, %bb.i ], [ %i.fo, %bb.h ], [ %i.eh, %bb.f ], [ %.1154648, %bb.e ] ; 3 uses
  br i1 %.not178, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gf = load ptr, ptr %i.an, align 8, !tbaa !148
  %i.gg = zext nneg i32 %.0160 to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !78
  %i.gj = zext i16 %i.gi to i32                   ; 2 uses
  %i.gk = load ptr, ptr %i.ao, align 8, !tbaa !148
  %i.gl = zext nneg i32 %.0163 to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !78
  %i.go = zext i16 %i.gn to i32                   ; 2 uses
  %i.gp = load ptr, ptr %i.ap, align 8, !tbaa !148
  %i.gq = zext nneg i32 %.0157 to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !78
  %i.gt = zext i16 %i.gs to i32                   ; 2 uses
  br i1 %.not176, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gu = load ptr, ptr %i.aq, align 8, !tbaa !148
  %i.gv = sext i32 %.3156 to i64
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !78
  %i.gy = zext i16 %i.gx to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.1164 = phi i32 [ %i.go, %bb.l ], [ %i.go, %bb.k ], [ %.0163, %bb.j ] ; 2 uses
  %.1161 = phi i32 [ %i.gj, %bb.l ], [ %i.gj, %bb.k ], [ %.0160, %bb.j ] ; 4 uses
  %.1158 = phi i32 [ %i.gt, %bb.l ], [ %i.gt, %bb.k ], [ %.0157, %bb.j ] ; 2 uses
  %.4 = phi i32 [ %i.gy, %bb.l ], [ %.3156, %bb.k ], [ %.3156, %bb.j ] ; 3 uses
  br i1 %.not180, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gz = sub nsw i32 %.1164, %.1161              ; 2 uses
  %i.ha = sub nsw i32 %.1158, %.1161              ; 2 uses
  %i.hb = load i32, ptr %i.as, align 8, !tbaa !243
  %i.hc = mul nsw i32 %i.hb, %i.gz
  %i.hd = load i32, ptr %i.at, align 4, !tbaa !244
  %i.he = mul nsw i32 %i.hd, %i.ha
  %i.hf = add nsw i32 %i.he, %i.hc
  %i.hg = ashr i32 %i.hf, 2
  %i.hh = add nsw i32 %i.hg, %.1161
  %i.hi = add nsw i32 %i.ct, %i.gz
  %i.hj = add nsw i32 %i.ct, %i.ha
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2165 = phi i32 [ %i.hi, %bb.n ], [ %.1164, %bb.m ]
  %.2162 = phi i32 [ %i.hh, %bb.n ], [ %.1161, %bb.m ]
  %.2159 = phi i32 [ %i.hj, %bb.n ], [ %.1158, %bb.m ]
  %i.hk = trunc i32 %.2162 to i16
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv792
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !78
  %i.hm = trunc i32 %.2165 to i16
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %indvars.iv792
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !78
  %i.ho = trunc i32 %.2159 to i16
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv792
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !78
  %i.hq = trunc i32 %.4 to i16
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv792
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !78
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1 ; 2 uses
  %exitcond796.not = icmp eq i64 %indvars.iv.next793, %wide.trip.count795
  br i1 %exitcond796.not, label %.preheader631, label %bb.b, !llvm.loop !381
end_hunk_4
