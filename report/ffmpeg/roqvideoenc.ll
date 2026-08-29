Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/roqvideoenc?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 103
begin_hunk_0_@roq_encode_frame:bb.a
  %i.daz = load i32, ptr %4, align 8, !tbaa !102
  %i.dba = add nsw i32 %i.day, 2                  ; 2 uses
  store i32 %i.dba, ptr %i.czs, align 4, !tbaa !104
  %i.dbb = icmp eq i32 %i.dba, 16
  br i1 %i.dbb, label %bb.av, label %write_typecode.exit.i.i

bb.av:                                            ; preds = %bb.au
  %i.dbc = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dbd = trunc i32 %i.daz to i16
  %i.dbe = load ptr, ptr %i.dbc, align 8, !tbaa !65
  store i16 %i.dbd, ptr %i.dbe, align 1, !tbaa !66
  %i.dbf = load ptr, ptr %i.dbc, align 8, !tbaa !65
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbf, i64 2
  store ptr %i.dbg, ptr %i.dbc, align 8, !tbaa !65
  %i.dbh = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dbi = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.dbj = ptrtoint ptr %i.dbi to i64
  %i.dbk = sub i64 %i.dbj, %i.dan
  %i.dbl = load ptr, ptr %i.dbh, align 8, !tbaa !65
  %i.dbm = and i64 %i.dbk, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dbl, ptr nonnull align 8 %i.czt, i64 %i.dbm, i1 false)
  %i.dbn = load ptr, ptr %i.dbh, align 8, !tbaa !65
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 %i.dbm
  store ptr %i.dbo, ptr %i.dbh, align 8, !tbaa !65
  store i32 0, ptr %i.czs, align 4, !tbaa !104
  store i32 0, ptr %4, align 8, !tbaa !102
  store ptr %i.czt, ptr %i.czu, align 8, !tbaa !105
  br label %write_typecode.exit.i.i

bb.aw:                                            ; preds = %bb.at
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.dar, i64 228 ; 2 uses
  %i.dbq = load i64, ptr %i.dbp, align 4          ; 2 uses
  %.sroa.2.0.extract.shift.i.i84.i = lshr i64 %i.dbq, 32
  %i.dbr = trunc i64 %i.dbq to i8
  %i.dbs = trunc i64 %.sroa.2.0.extract.shift.i.i84.i to i8
  %i.dbt = sub i8 8, %i.dbs
  %i.dbu = shl i8 %i.dbr, 4
  %i.dbv = and i8 %i.dbt, 15
  %reass.sub.i.i.i = sub i8 %i.dbv, %i.dbu
  %i.dbw = xor i8 %reass.sub.i.i.i, -128
  %i.dbx = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.dbw, ptr %i.dbx, align 1, !tbaa !66
  %i.dby = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dby, i64 1
  store ptr %i.dbz, ptr %i.czu, align 8, !tbaa !65
  %i.dca = load i32, ptr %i.czs, align 4, !tbaa !104 ; 2 uses
  %i.dcb = sub nsw i32 14, %i.dca
  %i.dcc = shl nuw i32 1, %i.dcb
  %i.dcd = load i32, ptr %4, align 8, !tbaa !102
  %i.dce = or i32 %i.dcc, %i.dcd                  ; 2 uses
  store i32 %i.dce, ptr %4, align 8, !tbaa !102
  %i.dcf = add nsw i32 %i.dca, 2                  ; 2 uses
  store i32 %i.dcf, ptr %i.czs, align 4, !tbaa !104
  %i.dcg = icmp eq i32 %i.dcf, 16
  br i1 %i.dcg, label %bb.ax, label %write_typecode.exit109.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.dch = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dci = trunc i32 %i.dce to i16
  %i.dcj = load ptr, ptr %i.dch, align 8, !tbaa !65
  store i16 %i.dci, ptr %i.dcj, align 1, !tbaa !66
  %i.dck = load ptr, ptr %i.dch, align 8, !tbaa !65
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.dck, i64 2
  store ptr %i.dcl, ptr %i.dch, align 8, !tbaa !65
  %i.dcm = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dcn = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.dco = ptrtoint ptr %i.dcn to i64
  %i.dcp = sub i64 %i.dco, %i.dan
  %i.dcq = load ptr, ptr %i.dcm, align 8, !tbaa !65
  %i.dcr = and i64 %i.dcp, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dcq, ptr nonnull align 8 %i.czt, i64 %i.dcr, i1 false)
  %i.dcs = load ptr, ptr %i.dcm, align 8, !tbaa !65
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dcs, i64 %i.dcr
  store ptr %i.dct, ptr %i.dcm, align 8, !tbaa !65
  store i32 0, ptr %i.czs, align 4, !tbaa !104
  store i32 0, ptr %4, align 8, !tbaa !102
  store ptr %i.czt, ptr %i.czu, align 8, !tbaa !105
  br label %write_typecode.exit109.i.i

write_typecode.exit109.i.i:                       ; preds = %bb.ax, %bb.aw
  %i.dcu = load i32, ptr %i.dbp, align 4, !tbaa !69
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dar, i64 232
  %i.dcw = load i32, ptr %i.dcv, align 4, !tbaa !69
  call void @ff_apply_motion_8x8(ptr noundef nonnull %i.c, i32 noundef %i.dat, i32 noundef %i.dav, i32 noundef %i.dcu, i32 noundef %i.dcw) #9
  br label %write_typecode.exit.i.i

bb.ay:                                            ; preds = %bb.at
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dar, i64 236 ; 2 uses
  %i.dcy = load i32, ptr %i.dcx, align 4, !tbaa !94
  %i.dcz = sext i32 %i.dcy to i64
  %i.dda = getelementptr inbounds [4 x i8], ptr %i.ctu, i64 %i.dcz
  %i.ddb = load i32, ptr %i.dda, align 4, !tbaa !69
  %i.ddc = trunc i32 %i.ddb to i8
  %i.ddd = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.ddc, ptr %i.ddd, align 1, !tbaa !66
  %i.dde = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dde, i64 1
  store ptr %i.ddf, ptr %i.czu, align 8, !tbaa !65
  %i.ddg = load i32, ptr %i.czs, align 4, !tbaa !104 ; 2 uses
  %i.ddh = sub nsw i32 14, %i.ddg
  %i.ddi = shl i32 2, %i.ddh
  %i.ddj = load i32, ptr %4, align 8, !tbaa !102
  %i.ddk = or i32 %i.ddi, %i.ddj                  ; 2 uses
  store i32 %i.ddk, ptr %4, align 8, !tbaa !102
  %i.ddl = add nsw i32 %i.ddg, 2                  ; 2 uses
  store i32 %i.ddl, ptr %i.czs, align 4, !tbaa !104
  %i.ddm = icmp eq i32 %i.ddl, 16
  br i1 %i.ddm, label %bb.az, label %write_typecode.exit110.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ddn = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.ddo = trunc i32 %i.ddk to i16
  %i.ddp = load ptr, ptr %i.ddn, align 8, !tbaa !65
  store i16 %i.ddo, ptr %i.ddp, align 1, !tbaa !66
  %i.ddq = load ptr, ptr %i.ddn, align 8, !tbaa !65
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddq, i64 2
  store ptr %i.ddr, ptr %i.ddn, align 8, !tbaa !65
  %i.dds = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.ddt = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.ddu = ptrtoint ptr %i.ddt to i64
  %i.ddv = sub i64 %i.ddu, %i.dan
  %i.ddw = load ptr, ptr %i.dds, align 8, !tbaa !65
  %i.ddx = and i64 %i.ddv, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ddw, ptr nonnull align 8 %i.czt, i64 %i.ddx, i1 false)
  %i.ddy = load ptr, ptr %i.dds, align 8, !tbaa !65
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddy, i64 %i.ddx
  store ptr %i.ddz, ptr %i.dds, align 8, !tbaa !65
  store i32 0, ptr %i.czs, align 4, !tbaa !104
  store i32 0, ptr %4, align 8, !tbaa !102
  store ptr %i.czt, ptr %i.czu, align 8, !tbaa !105
  br label %write_typecode.exit110.i.i

write_typecode.exit110.i.i:                       ; preds = %bb.az, %bb.ay
  %i.dea = load i32, ptr %i.dcx, align 4, !tbaa !94
  %i.deb = sext i32 %i.dea to i64
  %i.dec = getelementptr inbounds [16 x i8], ptr %i.ctv, i64 %i.deb ; 4 uses
  %i.ded = load i32, ptr %i.dec, align 4, !tbaa !69
  %i.dee = sext i32 %i.ded to i64
  %i.def = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.dee
  call void @ff_apply_vector_4x4(ptr noundef nonnull %i.c, i32 noundef %i.dat, i32 noundef %i.dav, ptr noundef nonnull %i.def) #9
  %i.deg = add nsw i32 %i.dat, 4                  ; 2 uses
  %i.deh = getelementptr inbounds nuw i8, ptr %i.dec, i64 4
  %i.dei = load i32, ptr %i.deh, align 4, !tbaa !69
  %i.dej = sext i32 %i.dei to i64
  %i.dek = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.dej
  call void @ff_apply_vector_4x4(ptr noundef nonnull %i.c, i32 noundef %i.deg, i32 noundef %i.dav, ptr noundef nonnull %i.dek) #9
  %i.del = add nsw i32 %i.dav, 4                  ; 2 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %i.dec, i64 8
  %i.den = load i32, ptr %i.dem, align 4, !tbaa !69
  %i.deo = sext i32 %i.den to i64
  %i.dep = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.deo
  call void @ff_apply_vector_4x4(ptr noundef nonnull %i.c, i32 noundef %i.dat, i32 noundef %i.del, ptr noundef nonnull %i.dep) #9
  %i.deq = getelementptr inbounds nuw i8, ptr %i.dec, i64 12
  %i.der = load i32, ptr %i.deq, align 4, !tbaa !69
  %i.des = sext i32 %i.der to i64
  %i.det = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.des
  call void @ff_apply_vector_4x4(ptr noundef nonnull %i.c, i32 noundef %i.deg, i32 noundef %i.del, ptr noundef nonnull %i.det) #9
  br label %write_typecode.exit.i.i

bb.ba:                                            ; preds = %bb.at
  %i.deu = load i32, ptr %i.czs, align 4, !tbaa !104 ; 2 uses
  %i.dev = sub nsw i32 14, %i.deu
  %i.dew = shl i32 3, %i.dev
  %i.dex = load i32, ptr %4, align 8, !tbaa !102
  %i.dey = or i32 %i.dew, %i.dex                  ; 2 uses
  store i32 %i.dey, ptr %4, align 8, !tbaa !102
  %i.dez = add nsw i32 %i.deu, 2                  ; 2 uses
  store i32 %i.dez, ptr %i.czs, align 4, !tbaa !104
  %i.dfa = icmp eq i32 %i.dez, 16
  br i1 %i.dfa, label %bb.bb, label %write_typecode.exit111.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.dfb = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dfc = trunc i32 %i.dey to i16
  %i.dfd = load ptr, ptr %i.dfb, align 8, !tbaa !65
  store i16 %i.dfc, ptr %i.dfd, align 1, !tbaa !66
  %i.dfe = load ptr, ptr %i.dfb, align 8, !tbaa !65
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfe, i64 2
  store ptr %i.dff, ptr %i.dfb, align 8, !tbaa !65
  %i.dfg = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dfh = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.dfi = ptrtoint ptr %i.dfh to i64
  %i.dfj = sub i64 %i.dfi, %i.dan
  %i.dfk = load ptr, ptr %i.dfg, align 8, !tbaa !65
  %i.dfl = and i64 %i.dfj, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dfk, ptr nonnull align 8 %i.czt, i64 %i.dfl, i1 false)
  %i.dfm = load ptr, ptr %i.dfg, align 8, !tbaa !65
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfm, i64 %i.dfl
  store ptr %i.dfn, ptr %i.dfg, align 8, !tbaa !65
  store i32 0, ptr %i.czs, align 4, !tbaa !104
  store i32 0, ptr %4, align 8, !tbaa !102
  store ptr %i.czt, ptr %i.czu, align 8, !tbaa !105
  br label %write_typecode.exit111.i.i

write_typecode.exit111.i.i:                       ; preds = %bb.bb, %bb.ba
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.dar, i64 20
  br label %bb.bc

bb.bc:                                            ; preds = %write_typecode.exit114.i.i, %write_typecode.exit111.i.i
  %indvars.iv.i80.i = phi i64 [ 0, %write_typecode.exit111.i.i ], [ %indvars.iv.next.i82.i, %write_typecode.exit114.i.i ] ; 3 uses
  %indvars.iv.tr.i.i = trunc nuw nsw i64 %indvars.iv.i80.i to i32 ; 2 uses
  %i.dfp = shl nuw nsw i32 %indvars.iv.tr.i.i, 2
  %i.dfq = and i32 %i.dfp, 4
  %i.dfr = add nsw i32 %i.dfq, %i.dat             ; 7 uses
  %i.dfs = shl nuw nsw i32 %indvars.iv.tr.i.i, 1
  %i.dft = and i32 %i.dfs, 4
  %i.dfu = add nsw i32 %i.dft, %i.dav             ; 7 uses
  %i.dfv = getelementptr inbounds nuw [52 x i8], ptr %i.dfo, i64 %indvars.iv.i80.i ; 8 uses
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dfv, i64 20 ; 2 uses
  %i.dfx = load i32, ptr %i.dfw, align 4, !tbaa !90
  switch i32 %i.dfx, label %.loopexit.i81.i [
    i32 3, label %.preheader116.i.i
    i32 1, label %bb.bd
    i32 2, label %bb.be
  ]

.preheader116.i.i:                                ; preds = %bb.bc
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.dfv, i64 24
  %i.dfz = load i32, ptr %i.dfy, align 4, !tbaa !69
  %i.dga = sext i32 %i.dfz to i64                 ; 2 uses
  %i.dgb = getelementptr inbounds [4 x i8], ptr %i.cvf, i64 %i.dga
  %i.dgc = load i32, ptr %i.dgb, align 4, !tbaa !69
  %i.dgd = trunc i32 %i.dgc to i8
  %i.dge = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.dgd, ptr %i.dge, align 1, !tbaa !66
  %i.dgf = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 1
  store ptr %i.dgg, ptr %i.czu, align 8, !tbaa !65
  %i.dgh = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.dga
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dfr, i32 noundef %i.dfu, ptr noundef nonnull %i.dgh) #9
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dfv, i64 28
  %i.dgj = load i32, ptr %i.dgi, align 4, !tbaa !69
  %i.dgk = sext i32 %i.dgj to i64                 ; 2 uses
  %i.dgl = getelementptr inbounds [4 x i8], ptr %i.cvf, i64 %i.dgk
  %i.dgm = load i32, ptr %i.dgl, align 4, !tbaa !69
  %i.dgn = trunc i32 %i.dgm to i8
  %i.dgo = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.dgn, ptr %i.dgo, align 1, !tbaa !66
  %i.dgp = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.dgp, i64 1
  store ptr %i.dgq, ptr %i.czu, align 8, !tbaa !65
  %i.dgr = add nsw i32 %i.dfr, 2                  ; 2 uses
  %i.dgs = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.dgk
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dgr, i32 noundef %i.dfu, ptr noundef nonnull %i.dgs) #9
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.dfv, i64 32
  %i.dgu = load i32, ptr %i.dgt, align 4, !tbaa !69
  %i.dgv = sext i32 %i.dgu to i64                 ; 2 uses
  %i.dgw = getelementptr inbounds [4 x i8], ptr %i.cvf, i64 %i.dgv
  %i.dgx = load i32, ptr %i.dgw, align 4, !tbaa !69
  %i.dgy = trunc i32 %i.dgx to i8
  %i.dgz = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.dgy, ptr %i.dgz, align 1, !tbaa !66
  %i.dha = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dha, i64 1
  store ptr %i.dhb, ptr %i.czu, align 8, !tbaa !65
  %i.dhc = add nsw i32 %i.dfu, 2                  ; 2 uses
  %i.dhd = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.dgv
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dfr, i32 noundef %i.dhc, ptr noundef nonnull %i.dhd) #9
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dfv, i64 36
  %i.dhf = load i32, ptr %i.dhe, align 4, !tbaa !69
  %i.dhg = sext i32 %i.dhf to i64                 ; 2 uses
  %i.dhh = getelementptr inbounds [4 x i8], ptr %i.cvf, i64 %i.dhg
  %i.dhi = load i32, ptr %i.dhh, align 4, !tbaa !69
  %i.dhj = trunc i32 %i.dhi to i8
  %i.dhk = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.dhj, ptr %i.dhk, align 1, !tbaa !66
  %i.dhl = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dhl, i64 1
  store ptr %i.dhm, ptr %i.czu, align 8, !tbaa !65
  %i.dhn = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.dhg
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dgr, i32 noundef %i.dhc, ptr noundef nonnull %i.dhn) #9
  br label %.loopexit.i81.i

bb.bd:                                            ; preds = %bb.bc
  %i.dho = getelementptr inbounds nuw i8, ptr %i.dfv, i64 40 ; 2 uses
  %i.dhp = load i64, ptr %i.dho, align 4          ; 2 uses
  %.sroa.2.0.extract.shift.i112.i.i = lshr i64 %i.dhp, 32
  %i.dhq = trunc i64 %i.dhp to i8
  %i.dhr = trunc i64 %.sroa.2.0.extract.shift.i112.i.i to i8
  %i.dhs = sub i8 8, %i.dhr
  %i.dht = shl i8 %i.dhq, 4
  %i.dhu = and i8 %i.dhs, 15
  %reass.sub.i113.i.i = sub i8 %i.dhu, %i.dht
  %i.dhv = xor i8 %reass.sub.i113.i.i, -128
  %i.dhw = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.dhv, ptr %i.dhw, align 1, !tbaa !66
  %i.dhx = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 1
  store ptr %i.dhy, ptr %i.czu, align 8, !tbaa !65
  %i.dhz = load i32, ptr %i.dho, align 4, !tbaa !69
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dfv, i64 44
  %i.dib = load i32, ptr %i.dia, align 4, !tbaa !69
  call void @ff_apply_motion_4x4(ptr noundef %i.c, i32 noundef %i.dfr, i32 noundef %i.dfu, i32 noundef %i.dhz, i32 noundef %i.dib) #9
  br label %.loopexit.i81.i

bb.be:                                            ; preds = %bb.bc
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dfv, i64 48 ; 2 uses
  %i.did = load i32, ptr %i.dic, align 4, !tbaa !107
  %i.die = sext i32 %i.did to i64
  %i.dif = getelementptr inbounds [4 x i8], ptr %i.ctu, i64 %i.die
  %i.dig = load i32, ptr %i.dif, align 4, !tbaa !69
  %i.dih = trunc i32 %i.dig to i8
  %i.dii = load ptr, ptr %i.czu, align 8, !tbaa !65
  store i8 %i.dih, ptr %i.dii, align 1, !tbaa !66
  %i.dij = load ptr, ptr %i.czu, align 8, !tbaa !65
  %i.dik = getelementptr inbounds nuw i8, ptr %i.dij, i64 1
  store ptr %i.dik, ptr %i.czu, align 8, !tbaa !65
  %i.dil = load i32, ptr %i.dic, align 4, !tbaa !107
  %i.dim = sext i32 %i.dil to i64
  %i.din = getelementptr inbounds [16 x i8], ptr %i.ctv, i64 %i.dim ; 4 uses
  %i.dio = load i32, ptr %i.din, align 4, !tbaa !69
  %i.dip = sext i32 %i.dio to i64
  %i.diq = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.dip
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dfr, i32 noundef %i.dfu, ptr noundef nonnull %i.diq) #9
  %i.dir = add nsw i32 %i.dfr, 2                  ; 2 uses
  %i.dis = getelementptr inbounds nuw i8, ptr %i.din, i64 4
  %i.dit = load i32, ptr %i.dis, align 4, !tbaa !69
  %i.diu = sext i32 %i.dit to i64
  %i.div = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.diu
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dir, i32 noundef %i.dfu, ptr noundef nonnull %i.div) #9
  %i.diw = add nsw i32 %i.dfu, 2                  ; 2 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %i.din, i64 8
  %i.diy = load i32, ptr %i.dix, align 4, !tbaa !69
  %i.diz = sext i32 %i.diy to i64
  %i.dja = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.diz
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dfr, i32 noundef %i.diw, ptr noundef nonnull %i.dja) #9
  %i.djb = getelementptr inbounds nuw i8, ptr %i.din, i64 12
  %i.djc = load i32, ptr %i.djb, align 4, !tbaa !69
  %i.djd = sext i32 %i.djc to i64
  %i.dje = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.djd
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dir, i32 noundef %i.diw, ptr noundef nonnull %i.dje) #9
  br label %.loopexit.i81.i

.loopexit.i81.i:                                  ; preds = %bb.be, %bb.bd, %.preheader116.i.i, %bb.bc
  %i.djf = load i32, ptr %i.dfw, align 4, !tbaa !90
  %i.djg = and i32 %i.djf, 3
  %i.djh = load i32, ptr %i.czs, align 4, !tbaa !104 ; 2 uses
  %i.dji = sub nsw i32 14, %i.djh
  %i.djj = shl i32 %i.djg, %i.dji
  %i.djk = load i32, ptr %4, align 8, !tbaa !102
  %i.djl = or i32 %i.djj, %i.djk                  ; 2 uses
  store i32 %i.djl, ptr %4, align 8, !tbaa !102
  %i.djm = add nsw i32 %i.djh, 2                  ; 2 uses
  store i32 %i.djm, ptr %i.czs, align 4, !tbaa !104
  %i.djn = icmp eq i32 %i.djm, 16
  br i1 %i.djn, label %bb.bf, label %write_typecode.exit114.i.i

bb.bf:                                            ; preds = %.loopexit.i81.i
  %i.djo = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.djp = trunc i32 %i.djl to i16
  %i.djq = load ptr, ptr %i.djo, align 8, !tbaa !65
  store i16 %i.djp, ptr %i.djq, align 1, !tbaa !66
  %i.djr = load ptr, ptr %i.djo, align 8, !tbaa !65
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djr, i64 2
  store ptr %i.djs, ptr %i.djo, align 8, !tbaa !65
  %i.djt = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dju = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.djv = ptrtoint ptr %i.dju to i64
  %i.djw = sub i64 %i.djv, %i.dan
  %i.djx = load ptr, ptr %i.djt, align 8, !tbaa !65
  %i.djy = and i64 %i.djw, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.djx, ptr nonnull align 8 %i.czt, i64 %i.djy, i1 false)
  %i.djz = load ptr, ptr %i.djt, align 8, !tbaa !65
  %i.dka = getelementptr inbounds nuw i8, ptr %i.djz, i64 %i.djy
  store ptr %i.dka, ptr %i.djt, align 8, !tbaa !65
  store i32 0, ptr %i.czs, align 4, !tbaa !104
  store i32 0, ptr %4, align 8, !tbaa !102
  store ptr %i.czt, ptr %i.czu, align 8, !tbaa !105
  br label %write_typecode.exit114.i.i

write_typecode.exit114.i.i:                       ; preds = %bb.bf, %.loopexit.i81.i
  %indvars.iv.next.i82.i = add nuw nsw i64 %indvars.iv.i80.i, 1 ; 2 uses
  %exitcond.not.i83.i = icmp eq i64 %indvars.iv.next.i82.i, 4
  br i1 %exitcond.not.i83.i, label %write_typecode.exit.i.i, label %bb.bc, !llvm.loop !108

write_typecode.exit.i.i:                          ; preds = %write_typecode.exit114.i.i, %write_typecode.exit110.i.i, %write_typecode.exit109.i.i, %bb.av, %bb.au, %bb.at
  %indvars.iv.next125.i.i = add nuw nsw i64 %indvars.iv124.i.i, 1 ; 2 uses
  %exitcond127.not.i.i = icmp eq i64 %indvars.iv.next125.i.i, %wide.trip.count.i.i
  br i1 %exitcond127.not.i.i, label %.preheader.i77.i, label %bb.at, !llvm.loop !109

bb.bg:                                            ; preds = %bb.bg, %.lr.ph121.i.i
  %i.dkb = phi i32 [ %i.dao, %.lr.ph121.i.i ], [ %i.dkc, %bb.bg ]
  %i.dkc = add nsw i32 %i.dkb, 2                  ; 2 uses
  switch i32 %i.dkc, label %bb.bg [
    i32 16, label %write_typecode.exit115.thread.i.i
    i32 0, label %.loopexit
  ]

write_typecode.exit115.thread.i.i:                ; preds = %bb.bg
  %i.dkd = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dke = trunc i32 %.pre.i.i to i16
  %i.dkf = load ptr, ptr %i.dkd, align 8, !tbaa !65
  store i16 %i.dke, ptr %i.dkf, align 1, !tbaa !66
  %i.dkg = load ptr, ptr %i.dkd, align 8, !tbaa !65
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 2
  store ptr %i.dkh, ptr %i.dkd, align 8, !tbaa !65
  %i.dki = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dkj = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.dkk = ptrtoint ptr %i.dkj to i64
  %i.dkl = sub i64 %i.dkk, %i.dap
  %i.dkm = load ptr, ptr %i.dki, align 8, !tbaa !65
  %i.dkn = and i64 %i.dkl, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dkm, ptr nonnull align 8 %i.czt, i64 %i.dkn, i1 false)
  %i.dko = load ptr, ptr %i.dki, align 8, !tbaa !65
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 %i.dkn
end_hunk_0
begin_hunk_1_@gather_data_for_subcel:bb.a

eval_motion_dist.exit:                            ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ 2147483647, %bb.d ], [ %i.am, %bb.e ], [ 2147483647, %bb.b ], [ 2147483647, %bb.c ], [ 2147483647, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.an, align 4, !tbaa !69
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !32
  %i.ap = icmp ugt i32 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 5992
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 8 uses
  br i1 %i.ap, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %eval_motion_dist.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.aw = tail call fastcc i32 @block_sse(ptr noundef %i.ar, ptr noundef %i.at, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, i32 noundef 4)
  br label %.preheader.i

.preheader.i:                                     ; preds = %eval_motion_dist.exit, %bb.f
  %storemerge = phi i32 [ %i.aw, %bb.f ], [ 2147483647, %eval_motion_dist.exit ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !65 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 68 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !65 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65 ; 5 uses
  %i.bh = mul nsw i32 %i.ay, %2
  %i.bi = sdiv i32 %i.bh, 16
  %i.bj = sdiv i32 %1, 4
  %i.bk = add nsw i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 10116
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 15244
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !89 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = icmp sgt i32 %i.bn, 0
  br i1 %i.bp, label %.lr.ph.i, label %index_mb.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bq = sext i32 %2 to i64                      ; 6 uses
  %i.br = add nsw i64 %i.bq, 3                    ; 3 uses
  %i.bs = load i32, ptr %i.be, align 8, !tbaa !69
  %i.bt = sext i32 %i.bs to i64                   ; 4 uses
  %i.bu = mul nsw i64 %i.br, %i.bt
  %i.bv = getelementptr i8, ptr %i.bg, i64 %i.bu
  %i.bw = sext i32 %1 to i64                      ; 12 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 %i.bw
  %i.by = add nsw i64 %i.bq, 2                    ; 3 uses
  %i.bz = mul nsw i64 %i.by, %i.bt
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bw
  %i.cc = add nsw i64 %i.bq, 1                    ; 3 uses
  %i.cd = mul nsw i64 %i.cc, %i.bt
  %i.ce = getelementptr i8, ptr %i.bg, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bw
  %i.cg = mul nsw i64 %i.bq, %i.bt
  %i.ch = getelementptr i8, ptr %i.bg, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bw
  %i.cj = load <4 x i8>, ptr %i.bx, align 1, !tbaa !66
  %i.ck = load <4 x i8>, ptr %i.cb, align 1, !tbaa !66
  %i.cl = load <4 x i8>, ptr %i.cf, align 1, !tbaa !66
  %i.cm = load <4 x i8>, ptr %i.ci, align 1, !tbaa !66
  %i.cn = load i32, ptr %i.bb, align 4, !tbaa !69
  %i.co = sext i32 %i.cn to i64                   ; 4 uses
  %i.cp = mul nsw i64 %i.br, %i.co
  %i.cq = getelementptr i8, ptr %i.bd, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.bw
  %i.cs = mul nsw i64 %i.by, %i.co
  %i.ct = getelementptr i8, ptr %i.bd, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.bw
  %i.cv = mul nsw i64 %i.cc, %i.co
  %i.cw = getelementptr i8, ptr %i.bd, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.bw
  %i.cy = mul nsw i64 %i.bq, %i.co
  %i.cz = getelementptr i8, ptr %i.bd, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.bw
  %i.db = load <4 x i8>, ptr %i.cr, align 1, !tbaa !66
  %i.dc = load <4 x i8>, ptr %i.cu, align 1, !tbaa !66
  %i.dd = load <4 x i8>, ptr %i.cx, align 1, !tbaa !66
  %i.de = load <4 x i8>, ptr %i.da, align 1, !tbaa !66
  %i.df = load i32, ptr %i.az, align 8, !tbaa !69
  %i.dg = sext i32 %i.df to i64                   ; 4 uses
  %i.dh = mul nsw i64 %i.br, %i.dg
  %i.di = getelementptr i8, ptr %i.ba, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.bw
  %i.dk = mul nsw i64 %i.by, %i.dg
  %i.dl = getelementptr i8, ptr %i.ba, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.bw
  %i.dn = mul nsw i64 %i.cc, %i.dg
  %i.do = getelementptr i8, ptr %i.ba, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.bw
  %i.dq = mul nsw i64 %i.bq, %i.dg
  %i.dr = getelementptr i8, ptr %i.ba, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.bw
  %i.dt = load <4 x i8>, ptr %i.dj, align 1, !tbaa !66
  %i.du = load <4 x i8>, ptr %i.dm, align 1, !tbaa !66
  %i.dv = load <4 x i8>, ptr %i.dp, align 1, !tbaa !66
  %i.dw = load <4 x i8>, ptr %i.ds, align 1, !tbaa !66
  %wide.trip.count.i = zext nneg i32 %i.bn to i64
  %i.dx = shufflevector <4 x i8> %i.cl, <4 x i8> %i.ck, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <4 x i8> %i.cj, <4 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = shufflevector <12 x i8> %i.dx, <12 x i8> %i.dy, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ea = shufflevector <4 x i8> %i.dd, <4 x i8> %i.dc, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x i8> %i.db, <4 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ec = shufflevector <12 x i8> %i.ea, <12 x i8> %i.eb, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ed = shufflevector <4 x i8> %i.dv, <4 x i8> %i.du, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x i8> %i.dt, <4 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <12 x i8> %i.ed, <12 x i8> %i.ee, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.eg = zext <4 x i8> %i.cm to <4 x i32>
  %i.eh = shufflevector <4 x i32> %i.eg, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = zext <12 x i8> %i.dz to <12 x i32>
  %i.ej = shufflevector <12 x i32> %i.ei, <12 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <16 x i32> %i.eh, <16 x i32> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.el = zext <4 x i8> %i.de to <4 x i32>
  %i.em = shufflevector <4 x i32> %i.el, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = zext <12 x i8> %i.ec to <12 x i32>
  %i.eo = shufflevector <12 x i32> %i.en, <12 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <16 x i32> %i.em, <16 x i32> %i.eo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.eq = zext <4 x i8> %i.dw to <4 x i32>
  %i.er = shufflevector <4 x i32> %i.eq, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = zext <12 x i8> %i.ef to <12 x i32>
  %i.et = shufflevector <12 x i32> %i.es, <12 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <16 x i32> %i.er, <16 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  br label %eval_sse.exit.i.i

eval_sse.exit.i.i:                                ; preds = %eval_sse.exit.i.i, %.lr.ph.i
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i72, %eval_sse.exit.i.i ] ; 3 uses
  %.024.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select19.i, %eval_sse.exit.i.i ]
  %.01523.i = phi i32 [ 2147483647, %.lr.ph.i ], [ %spec.select.i, %eval_sse.exit.i.i ] ; 2 uses
  %i.ev = mul nuw nsw i64 %indvars.iv.i71, 48
  %i.ew = and i64 %i.ev, 4294967280
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fa = load <16 x i8>, ptr %i.ez, align 1, !tbaa !66
  %i.fb = zext <16 x i8> %i.fa to <16 x i32>
  %i.fc = sub nsw <16 x i32> %i.fb, %i.ek         ; 2 uses
  %i.fd = mul nsw <16 x i32> %i.fc, %i.fc
  %i.fe = load <16 x i8>, ptr %i.ey, align 1, !tbaa !66
  %i.ff = zext <16 x i8> %i.fe to <16 x i32>
  %i.fg = sub nsw <16 x i32> %i.ff, %i.ep         ; 2 uses
  %i.fh = mul nsw <16 x i32> %i.fg, %i.fg
  %i.fi = load <16 x i8>, ptr %i.ex, align 1, !tbaa !66
  %i.fj = zext <16 x i8> %i.fi to <16 x i32>
  %i.fk = sub nsw <16 x i32> %i.fj, %i.eu         ; 2 uses
  %i.fl = mul nsw <16 x i32> %i.fk, %i.fk
  %i.fm = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.fl)
  %i.fn = trunc nuw nsw i64 %indvars.iv.i71 to i32
  %i.fo = shl nsw i32 %i.fm, 2
  %rdx.op = add nuw nsw <16 x i32> %i.fh, %i.fd
  %i.fp = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %rdx.op)
  %op.rdx = add i32 %i.fp, %i.fo                  ; 2 uses
  %i.fq = icmp slt i32 %op.rdx, %.01523.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %op.rdx, i32 %.01523.i) ; 2 uses
  %spec.select19.i = select i1 %i.fq, i32 %i.fn, i32 %.024.i ; 2 uses
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i
  br i1 %exitcond.not.i73, label %index_mb.exit, label %eval_sse.exit.i.i, !llvm.loop !80

index_mb.exit:                                    ; preds = %eval_sse.exit.i.i, %.preheader.i
  %.015.lcssa.i = phi i32 [ 2147483647, %.preheader.i ], [ %spec.select.i, %eval_sse.exit.i.i ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %spec.select19.i, %eval_sse.exit.i.i ]
  store i32 %.0.lcssa.i, ptr %i.bo, align 4, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %.015.lcssa.i, ptr %i.fr, align 4, !tbaa !69
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.fs, align 4, !tbaa !69
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 107432
  %i.fu = shl nsw i32 %i.bk, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 12172
  %i.fx = sext i32 %i.fu to i64
  %i.fy = load ptr, ptr %i.ft, align 8, !tbaa !52
  %invariant.gep163 = getelementptr [4 x i8], ptr %i.fy, i64 %i.fx
  br label %.preheader.i74

.preheader:                                       ; preds = %.preheader.i74
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 5944
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !60 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.gd = load i32, ptr %0, align 4, !tbaa !69
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 7
  %i.gg = shl i64 %i.ga, 1
  %i.gh = add i64 %i.gg, %i.gf                    ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 2147483647
  br i1 %i.gi, label %bb.g, label %bb.h

.preheader.i74:                                   ; preds = %index_mb.exit, %.preheader.i74
  %indvars.iv = phi i64 [ 0, %index_mb.exit ], [ %indvars.iv.next, %.preheader.i74 ] ; 5 uses
  %gep164 = getelementptr [4 x i8], ptr %invariant.gep163, i64 %indvars.iv
  %i.gj = load i32, ptr %gep164, align 4, !tbaa !69 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !69
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gl = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.gm = and i32 %i.gl, 2
  %i.gn = add nsw i32 %i.gm, %1
  %i.go = trunc nuw nsw i64 %indvars.iv to i32
  %i.gp = and i32 %i.go, 2
  %i.gq = add nsw i32 %i.gp, %2
  %i.gr = sext i32 %i.gq to i64                   ; 4 uses
  %i.gs = sext i32 %i.gn to i64                   ; 3 uses
  %i.gt = load i32, ptr %i.az, align 8, !tbaa !69
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.ba, i64 %i.gs ; 2 uses
  %i.gv = mul nsw i64 %i.gr, %i.gu
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gv ; 2 uses
  %i.gw = load i8, ptr %gep, align 1, !tbaa !66
  %i.gx = getelementptr i8, ptr %gep, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !66
  %i.gz = add nsw i64 %i.gr, 1                    ; 3 uses
  %i.ha = mul nsw i64 %i.gz, %i.gu
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ha ; 2 uses
  %i.hb = load i8, ptr %gep.1, align 1, !tbaa !66
  %i.hc = getelementptr i8, ptr %gep.1, i64 1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !66
  %i.he = load i32, ptr %i.bb, align 4, !tbaa !69
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %invariant.gep116 = getelementptr i8, ptr %i.bd, i64 %i.gs ; 2 uses
  %i.hg = mul nsw i64 %i.gr, %i.hf
  %gep117 = getelementptr i8, ptr %invariant.gep116, i64 %i.hg ; 2 uses
  %i.hh = load i8, ptr %gep117, align 1, !tbaa !66
  %i.hi = getelementptr i8, ptr %gep117, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !66
  %i.hk = mul nsw i64 %i.gz, %i.hf
  %gep117.1 = getelementptr i8, ptr %invariant.gep116, i64 %i.hk ; 2 uses
  %i.hl = load i8, ptr %gep117.1, align 1, !tbaa !66
  %i.hm = getelementptr i8, ptr %gep117.1, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !66
  %i.ho = load i32, ptr %i.be, align 8, !tbaa !69
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %invariant.gep118 = getelementptr i8, ptr %i.bg, i64 %i.gs ; 2 uses
  %i.hq = mul nsw i64 %i.gr, %i.hp
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %i.hq ; 2 uses
  %i.hr = load i8, ptr %gep119, align 1, !tbaa !66
  %i.hs = getelementptr i8, ptr %gep119, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !66
  %i.hu = mul nsw i64 %i.gz, %i.hp
  %gep119.1 = getelementptr i8, ptr %invariant.gep118, i64 %i.hu ; 2 uses
  %i.hv = load i8, ptr %gep119.1, align 1, !tbaa !66
  %i.hw = getelementptr i8, ptr %gep119.1, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !66
  %i.hy = mul nsw i32 %i.gj, 12
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.fw, i64 %i.hz ; 12 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  %i.ic = load i8, ptr %i.ia, align 1, !tbaa !66
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ie = load i8, ptr %i.ib, align 1, !tbaa !66
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 3
  %i.ig = load i8, ptr %i.id, align 1, !tbaa !66
  %i.ih = load i8, ptr %i.if, align 1, !tbaa !66
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 5
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !66
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 6
  %i.im = load i8, ptr %i.ij, align 1, !tbaa !66
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 7
  %i.io = load i8, ptr %i.il, align 1, !tbaa !66
  %i.ip = load i8, ptr %i.in, align 1, !tbaa !66
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ir = zext i8 %i.hr to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.ia, i64 9
  %i.it = load i8, ptr %i.iq, align 1, !tbaa !66
  %i.iu = zext i8 %i.it to i32
  %i.iv = sub nsw i32 %i.ir, %i.iu                ; 2 uses
  %i.iw = mul nsw i32 %i.iv, %i.iv
  %i.ix = zext i8 %i.ht to i32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ia, i64 10
  %i.iz = load i8, ptr %i.is, align 1, !tbaa !66
  %i.ja = zext i8 %i.iz to i32
  %i.jb = sub nsw i32 %i.ix, %i.ja                ; 2 uses
  %i.jc = mul nsw i32 %i.jb, %i.jb
  %i.jd = add nuw nsw i32 %i.jc, %i.iw
  %i.je = zext i8 %i.hv to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ia, i64 11
  %i.jg = load i8, ptr %i.iy, align 1, !tbaa !66
  %i.jh = zext i8 %i.jg to i32
  %i.ji = sub nsw i32 %i.je, %i.jh                ; 2 uses
  %i.jj = mul nsw i32 %i.ji, %i.ji
  %i.jk = add nuw nsw i32 %i.jj, %i.jd
  %i.jl = zext i8 %i.hx to i32
  %i.jm = load i8, ptr %i.jf, align 1, !tbaa !66
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub nsw i32 %i.jl, %i.jn                ; 2 uses
  %i.jp = mul nsw i32 %i.jo, %i.jo
  %i.jq = add nuw nsw i32 %i.jp, %i.jk
  %i.jr = zext i8 %i.hh to i32
  %i.js = zext i8 %i.ik to i32
  %i.jt = sub nsw i32 %i.jr, %i.js                ; 2 uses
  %i.ju = mul nsw i32 %i.jt, %i.jt
  %i.jv = zext i8 %i.hj to i32
  %i.jw = zext i8 %i.im to i32
  %i.jx = sub nsw i32 %i.jv, %i.jw                ; 2 uses
  %i.jy = mul nsw i32 %i.jx, %i.jx
  %i.jz = add nuw nsw i32 %i.jy, %i.ju
  %i.ka = zext i8 %i.hl to i32
  %i.kb = zext i8 %i.io to i32
  %i.kc = sub nsw i32 %i.ka, %i.kb                ; 2 uses
  %i.kd = mul nsw i32 %i.kc, %i.kc
  %i.ke = add nuw nsw i32 %i.kd, %i.jz
  %i.kf = zext i8 %i.hn to i32
  %i.kg = zext i8 %i.ip to i32
  %i.kh = sub nsw i32 %i.kf, %i.kg                ; 2 uses
  %i.ki = mul nsw i32 %i.kh, %i.kh
  %i.kj = add nuw nsw i32 %i.ki, %i.ke
  %i.kk = zext i8 %i.gw to i32
  %i.kl = zext i8 %i.ic to i32
  %i.km = sub nsw i32 %i.kk, %i.kl                ; 2 uses
  %i.kn = mul nsw i32 %i.km, %i.km
  %i.ko = zext i8 %i.gy to i32
  %i.kp = zext i8 %i.ie to i32
  %i.kq = sub nsw i32 %i.ko, %i.kp                ; 2 uses
  %i.kr = mul nsw i32 %i.kq, %i.kq
  %i.ks = add nuw nsw i32 %i.kr, %i.kn
  %i.kt = zext i8 %i.hb to i32
  %i.ku = zext i8 %i.ig to i32
  %i.kv = sub nsw i32 %i.kt, %i.ku                ; 2 uses
  %i.kw = mul nsw i32 %i.kv, %i.kv
  %i.kx = add nuw nsw i32 %i.kw, %i.ks
  %i.ky = zext i8 %i.hd to i32
  %i.kz = zext i8 %i.ih to i32
  %i.la = sub nsw i32 %i.ky, %i.kz                ; 2 uses
  %i.lb = mul nsw i32 %i.la, %i.la
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = shl nsw i32 %i.lc, 2
  %i.le = add nuw nsw i32 %i.kj, %i.ld
  %i.lf = add nuw nsw i32 %i.le, %i.jq
  %i.lg = load i32, ptr %i.fs, align 4, !tbaa !69
  %i.lh = add nsw i32 %i.lf, %i.lg                ; 2 uses
  store i32 %i.lh, ptr %i.fs, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.preheader, label %.preheader.i74, !llvm.loop !122

bb.g:                                             ; preds = %.preheader
  store i32 0, ptr %i.gb, align 4, !tbaa !90
  store i32 2, ptr %i.gc, align 4, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %.1 = phi i64 [ %i.gh, %bb.g ], [ 2147483647, %.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !69
  %i.lk = sext i32 %i.lj to i64
  %i.ll = shl nsw i64 %i.lk, 7
  %i.lm = mul i64 %i.ga, 10                       ; 2 uses
  %i.ln = add i64 %i.lm, %i.ll                    ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %.1
  br i1 %i.lo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.gb, align 4, !tbaa !90
  store i32 10, ptr %i.gc, align 4, !tbaa !92
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi i64 [ %i.ln, %bb.i ], [ %.1, %bb.h ] ; 2 uses
  %i.lp = load i32, ptr %i.fr, align 4, !tbaa !69
  %i.lq = sext i32 %i.lp to i64
  %i.lr = shl nsw i64 %i.lq, 7
  %i.ls = add i64 %i.lm, %i.lr                    ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %.pre-phi
  br i1 %i.lt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.gb, align 4, !tbaa !90
  store i32 10, ptr %i.gc, align 4, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi156 = phi i64 [ %i.ls, %bb.k ], [ %.pre-phi, %bb.j ]
  %i.lu = sext i32 %i.lh to i64
  %i.lv = shl nsw i64 %i.lu, 7
  %i.lw = mul i64 %i.ga, 34
  %i.lx = add i64 %i.lw, %i.lv
  %i.ly = icmp ult i64 %i.lx, %.pre-phi156
  br i1 %i.ly, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %i.gb, align 4, !tbaa !90
  store i32 34, ptr %i.gc, align 4, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

declare void @ff_apply_motion_8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_apply_vector_4x4(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_apply_motion_4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_apply_vector_2x2(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2
end_hunk_1
