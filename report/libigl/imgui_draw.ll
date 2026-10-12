Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZL31ImFontAtlasBuildWithStbTruetypeP11ImFontAtlas:bb.a

.lr.ph148.i.i:                                    ; preds = %bb.qw
  %i.dar = zext i16 %.pre224.pre232.i to i64
  %i.das = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.dar
  %i.dat = zext i16 %.pre226.pre234.i to i32
  %i.dau = mul nsw i32 %.sroa.12.0, %i.dat
  %i.dav = zext nneg i32 %i.dau to i64
  %i.daw = getelementptr inbounds nuw i8, ptr %i.das, i64 %i.dav
  %i.dax = sub nsw i32 %i.dap, %i.ban             ; 2 uses
  %.not113.i.i = icmp slt i32 %i.dax, 0           ; 5 uses
  %i.day = add nsw i32 %i.dax, 1                  ; 10 uses
  %wide.trip.count.i.i417 = zext i32 %i.day to i64 ; 8 uses
  %wide.trip.count188.i.i = zext i16 %.pre228.pre236.i to i64 ; 3 uses
  %i.daz = add nsw i64 %wide.trip.count.i.i417, -1 ; 2 uses
  %xtraiter1275 = and i64 %wide.trip.count.i.i417, 1
  %i.dba = icmp eq i64 %i.daz, 0
  %unroll_iter1280 = and i64 %wide.trip.count.i.i417, 2147483646
  %lcmp.mod1277.not = icmp eq i64 %xtraiter1275, 0
  %lcmp.mod1279 = trunc i32 %i.day to i1
  %xtraiter1282 = and i64 %wide.trip.count.i.i417, 1
  %i.dbb = icmp eq i64 %i.daz, 0
  %unroll_iter1287 = and i64 %wide.trip.count.i.i417, 2147483646
  %lcmp.mod1284.not = icmp eq i64 %xtraiter1282, 0
  %lcmp.mod1286 = trunc i32 %i.day to i1
  %i.dbc = add nsw i64 %wide.trip.count188.i.i, -1
  br label %bb.qx

bb.qx:                                            ; preds = %._crit_edge.i.i421, %.lr.ph148.i.i
  %.095146.i.i = phi i32 [ 0, %.lr.ph148.i.i ], [ %i.dhb, %._crit_edge.i.i421 ]
  %.096144.i.i = phi ptr [ %i.daw, %.lr.ph148.i.i ], [ %i.dha, %._crit_edge.i.i421 ] ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, i8 0, i64 %i.bbk, i1 false)
  switch i8 %i.bal, label %.preheader.i.i [
    i8 2, label %.preheader105.i.i
    i8 3, label %.preheader107.i.i
    i8 4, label %.preheader109.i.i
    i8 5, label %.preheader111.i.i
  ]

.preheader111.i.i:                                ; preds = %bb.qx
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph.i.i418

.preheader109.i.i:                                ; preds = %bb.qx
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph120.i.i.preheader

.lr.ph120.i.i.preheader:                          ; preds = %.preheader109.i.i
  br i1 %i.dba, label %.lr.ph120.i.i.epil.preheader, label %.lr.ph120.i.i

.preheader107.i.i:                                ; preds = %bb.qx
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph126.i.i

.preheader105.i.i:                                ; preds = %bb.qx
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph132.i.i.preheader

.lr.ph132.i.i.preheader:                          ; preds = %.preheader105.i.i
  br i1 %i.dbb, label %.lr.ph132.i.i.epil.preheader, label %.lr.ph132.i.i

.preheader.i.i:                                   ; preds = %bb.qx
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph138.i.i

.lr.ph132.i.i:                                    ; preds = %.lr.ph132.i.i.preheader, %.lr.ph132.i.i
  %indvars.iv175.i.i = phi i64 [ %indvars.iv.next176.i.i.1, %.lr.ph132.i.i ], [ 0, %.lr.ph132.i.i.preheader ] ; 6 uses
  %.0131.i.i = phi i32 [ %i.dbz, %.lr.ph132.i.i ], [ 0, %.lr.ph132.i.i.preheader ]
  %niter1288 = phi i64 [ %niter1288.next.1, %.lr.ph132.i.i ], [ 0, %.lr.ph132.i.i.preheader ]
  %i.dbd = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv175.i.i ; 2 uses
  %i.dbe = load i8, ptr %i.dbd, align 1, !tbaa !26 ; 2 uses
  %i.dbf = zext i8 %i.dbe to i32
  %i.dbg = and i64 %indvars.iv175.i.i, 6
  %i.dbh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dbg
  %i.dbi = load i8, ptr %i.dbh, align 2, !tbaa !26
  %i.dbj = zext i8 %i.dbi to i32
  %i.dbk = sub nsw i32 %i.dbf, %i.dbj
  %i.dbl = add i32 %i.dbk, %.0131.i.i             ; 2 uses
  %i.dbm = add nuw nsw i64 %indvars.iv175.i.i, 2
  %i.dbn = and i64 %i.dbm, 6
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dbn
  store i8 %i.dbe, ptr %i.dbo, align 2, !tbaa !26
  %i.dbp = lshr i32 %i.dbl, 1
  %i.dbq = trunc i32 %i.dbp to i8
  store i8 %i.dbq, ptr %i.dbd, align 1, !tbaa !26
  %indvars.iv.next176.i.i = or disjoint i64 %indvars.iv175.i.i, 1 ; 2 uses
  %i.dbr = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv.next176.i.i ; 2 uses
  %i.dbs = load i8, ptr %i.dbr, align 1, !tbaa !26 ; 2 uses
  %i.dbt = zext i8 %i.dbs to i32
  %i.dbu = and i64 %indvars.iv.next176.i.i, 7
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dbu
  %i.dbw = load i8, ptr %i.dbv, align 1, !tbaa !26
  %i.dbx = zext i8 %i.dbw to i32
  %i.dby = sub nsw i32 %i.dbt, %i.dbx
  %i.dbz = add i32 %i.dby, %i.dbl                 ; 4 uses
  %i.dca = add nuw nsw i64 %indvars.iv175.i.i, 3
  %i.dcb = and i64 %i.dca, 7
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dcb
  store i8 %i.dbs, ptr %i.dcc, align 1, !tbaa !26
  %i.dcd = lshr i32 %i.dbz, 1
  %i.dce = trunc i32 %i.dcd to i8
  store i8 %i.dce, ptr %i.dbr, align 1, !tbaa !26
  %indvars.iv.next176.i.i.1 = add nuw nsw i64 %indvars.iv175.i.i, 2 ; 2 uses
  %niter1288.next.1 = add nuw i64 %niter1288, 2   ; 2 uses
  %niter1288.ncmp.1 = icmp eq i64 %niter1288.next.1, %unroll_iter1287
  br i1 %niter1288.ncmp.1, label %.loopexit.i.i.loopexit1153.unr-lcssa, label %.lr.ph132.i.i, !llvm.loop !414

.lr.ph126.i.i:                                    ; preds = %.preheader107.i.i, %.lr.ph126.i.i
  %indvars.iv170.i.i = phi i64 [ %indvars.iv.next171.i.i, %.lr.ph126.i.i ], [ 0, %.preheader107.i.i ] ; 4 uses
  %.1125.i.i = phi i32 [ %i.dcn, %.lr.ph126.i.i ], [ 0, %.preheader107.i.i ]
  %i.dcf = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv170.i.i ; 2 uses
  %i.dcg = load i8, ptr %i.dcf, align 1, !tbaa !26 ; 2 uses
  %i.dch = zext i8 %i.dcg to i32
  %i.dci = and i64 %indvars.iv170.i.i, 7
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dci
  %i.dck = load i8, ptr %i.dcj, align 1, !tbaa !26
  %i.dcl = zext i8 %i.dck to i32
  %i.dcm = sub nsw i32 %i.dch, %i.dcl
  %i.dcn = add i32 %i.dcm, %.1125.i.i             ; 3 uses
  %i.dco = add nuw nsw i64 %indvars.iv170.i.i, 3
  %i.dcp = and i64 %i.dco, 7
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dcp
  store i8 %i.dcg, ptr %i.dcq, align 1, !tbaa !26
  %i.dcr = udiv i32 %i.dcn, 3
  %i.dcs = trunc i32 %i.dcr to i8
  store i8 %i.dcs, ptr %i.dcf, align 1, !tbaa !26
  %indvars.iv.next171.i.i = add nuw nsw i64 %indvars.iv170.i.i, 1 ; 2 uses
  %exitcond174.not.i.i = icmp eq i64 %indvars.iv.next171.i.i, %wide.trip.count.i.i417
  br i1 %exitcond174.not.i.i, label %.loopexit.i.i, label %.lr.ph126.i.i, !llvm.loop !415

.lr.ph120.i.i:                                    ; preds = %.lr.ph120.i.i.preheader, %.lr.ph120.i.i
  %indvars.iv165.i.i = phi i64 [ %indvars.iv.next166.i.i.1, %.lr.ph120.i.i ], [ 0, %.lr.ph120.i.i.preheader ] ; 4 uses
  %.2119.i.i = phi i32 [ %i.ddo, %.lr.ph120.i.i ], [ 0, %.lr.ph120.i.i.preheader ]
  %niter1281 = phi i64 [ %niter1281.next.1, %.lr.ph120.i.i ], [ 0, %.lr.ph120.i.i.preheader ]
  %i.dct = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv165.i.i ; 2 uses
  %i.dcu = load i8, ptr %i.dct, align 1, !tbaa !26 ; 2 uses
  %i.dcv = zext i8 %i.dcu to i32
  %i.dcw = and i64 %indvars.iv165.i.i, 6          ; 2 uses
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dcw
  %i.dcy = load i8, ptr %i.dcx, align 2, !tbaa !26
  %i.dcz = zext i8 %i.dcy to i32
  %i.dda = sub nsw i32 %i.dcv, %i.dcz
  %i.ddb = add i32 %i.dda, %.2119.i.i             ; 2 uses
  %i.ddc = xor i64 %i.dcw, 4
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ddc
  store i8 %i.dcu, ptr %i.ddd, align 2, !tbaa !26
  %i.dde = lshr i32 %i.ddb, 2
  %i.ddf = trunc i32 %i.dde to i8
  store i8 %i.ddf, ptr %i.dct, align 1, !tbaa !26
  %indvars.iv.next166.i.i = or disjoint i64 %indvars.iv165.i.i, 1 ; 2 uses
  %i.ddg = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv.next166.i.i ; 2 uses
  %i.ddh = load i8, ptr %i.ddg, align 1, !tbaa !26 ; 2 uses
  %i.ddi = zext i8 %i.ddh to i32
  %i.ddj = and i64 %indvars.iv.next166.i.i, 7     ; 2 uses
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ddj
  %i.ddl = load i8, ptr %i.ddk, align 1, !tbaa !26
  %i.ddm = zext i8 %i.ddl to i32
  %i.ddn = sub nsw i32 %i.ddi, %i.ddm
  %i.ddo = add i32 %i.ddn, %i.ddb                 ; 4 uses
  %i.ddp = xor i64 %i.ddj, 4
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ddp
  store i8 %i.ddh, ptr %i.ddq, align 1, !tbaa !26
  %i.ddr = lshr i32 %i.ddo, 2
  %i.dds = trunc i32 %i.ddr to i8
  store i8 %i.dds, ptr %i.ddg, align 1, !tbaa !26
  %indvars.iv.next166.i.i.1 = add nuw nsw i64 %indvars.iv165.i.i, 2 ; 2 uses
  %niter1281.next.1 = add i64 %niter1281, 2       ; 2 uses
  %niter1281.ncmp.1 = icmp eq i64 %niter1281.next.1, %unroll_iter1280
  br i1 %niter1281.ncmp.1, label %.loopexit.i.i.loopexit1155.unr-lcssa, label %.lr.ph120.i.i, !llvm.loop !416

.lr.ph.i.i418:                                    ; preds = %.preheader111.i.i, %.lr.ph.i.i418
  %indvars.iv.i.i419 = phi i64 [ %indvars.iv.next.i.i420, %.lr.ph.i.i418 ], [ 0, %.preheader111.i.i ] ; 4 uses
  %.3115.i.i = phi i32 [ %i.deb, %.lr.ph.i.i418 ], [ 0, %.preheader111.i.i ]
  %i.ddt = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv.i.i419 ; 2 uses
  %i.ddu = load i8, ptr %i.ddt, align 1, !tbaa !26 ; 2 uses
  %i.ddv = zext i8 %i.ddu to i32
  %i.ddw = and i64 %indvars.iv.i.i419, 7
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ddw
  %i.ddy = load i8, ptr %i.ddx, align 1, !tbaa !26
  %i.ddz = zext i8 %i.ddy to i32
  %i.dea = sub nsw i32 %i.ddv, %i.ddz
  %i.deb = add i32 %i.dea, %.3115.i.i             ; 3 uses
  %i.dec = add nuw nsw i64 %indvars.iv.i.i419, 5
  %i.ded = and i64 %i.dec, 7
  %i.dee = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ded
  store i8 %i.ddu, ptr %i.dee, align 1, !tbaa !26
  %i.def = udiv i32 %i.deb, 5
  %i.deg = trunc i32 %i.def to i8
  store i8 %i.deg, ptr %i.ddt, align 1, !tbaa !26
  %indvars.iv.next.i.i420 = add nuw nsw i64 %indvars.iv.i.i419, 1 ; 2 uses
  %exitcond.not.i146.i = icmp eq i64 %indvars.iv.next.i.i420, %wide.trip.count.i.i417
  br i1 %exitcond.not.i146.i, label %.loopexit.i.i, label %.lr.ph.i.i418, !llvm.loop !417

.lr.ph138.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph138.i.i
  %indvars.iv180.i.i = phi i64 [ %indvars.iv.next181.i.i, %.lr.ph138.i.i ], [ 0, %.preheader.i.i ] ; 4 uses
  %.4137.i.i = phi i32 [ %i.deq, %.lr.ph138.i.i ], [ 0, %.preheader.i.i ]
  %i.deh = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv180.i.i ; 2 uses
  %i.dei = load i8, ptr %i.deh, align 1, !tbaa !26 ; 2 uses
  %i.dej = zext i8 %i.dei to i32
  %i.dek = trunc nuw nsw i64 %indvars.iv180.i.i to i32
  %i.del = and i64 %indvars.iv180.i.i, 7
  %i.dem = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.del
  %i.den = load i8, ptr %i.dem, align 1, !tbaa !26
  %i.deo = zext i8 %i.den to i32
  %i.dep = sub nsw i32 %i.dej, %i.deo
  %i.deq = add i32 %i.dep, %.4137.i.i             ; 3 uses
  %i.der = add nuw i32 %i.dek, %i.ban
  %i.des = and i32 %i.der, 7
  %i.det = zext nneg i32 %i.des to i64
  %i.deu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.det
  store i8 %i.dei, ptr %i.deu, align 1, !tbaa !26
  %i.dev = udiv i32 %i.deq, %i.ban
  %i.dew = trunc i32 %i.dev to i8
  store i8 %i.dew, ptr %i.deh, align 1, !tbaa !26
  %indvars.iv.next181.i.i = add nuw nsw i64 %indvars.iv180.i.i, 1 ; 2 uses
  %exitcond184.not.i.i = icmp eq i64 %indvars.iv.next181.i.i, %wide.trip.count.i.i417
  br i1 %exitcond184.not.i.i, label %.loopexit.i.i, label %.lr.ph138.i.i, !llvm.loop !418

.loopexit.i.i.loopexit1153.unr-lcssa:             ; preds = %.lr.ph132.i.i
  br i1 %lcmp.mod1284.not, label %.loopexit.i.i, label %.lr.ph132.i.i.epil.preheader

.lr.ph132.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit1153.unr-lcssa, %.lr.ph132.i.i.preheader
  %indvars.iv175.i.i.epil.init = phi i64 [ 0, %.lr.ph132.i.i.preheader ], [ %indvars.iv.next176.i.i.1, %.loopexit.i.i.loopexit1153.unr-lcssa ] ; 3 uses
  %.0131.i.i.epil.init = phi i32 [ 0, %.lr.ph132.i.i.preheader ], [ %i.dbz, %.loopexit.i.i.loopexit1153.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1286)
  %i.dex = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv175.i.i.epil.init ; 2 uses
  %i.dey = load i8, ptr %i.dex, align 1, !tbaa !26 ; 2 uses
  %i.dez = zext i8 %i.dey to i32
  %i.dfa = and i64 %indvars.iv175.i.i.epil.init, 7
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dfa
  %i.dfc = load i8, ptr %i.dfb, align 1, !tbaa !26
  %i.dfd = zext i8 %i.dfc to i32
  %i.dfe = sub nsw i32 %i.dez, %i.dfd
  %i.dff = add i32 %i.dfe, %.0131.i.i.epil.init   ; 2 uses
  %i.dfg = add nuw nsw i64 %indvars.iv175.i.i.epil.init, 2
  %i.dfh = and i64 %i.dfg, 7
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dfh
  store i8 %i.dey, ptr %i.dfi, align 1, !tbaa !26
  %i.dfj = lshr i32 %i.dff, 1
  %i.dfk = trunc i32 %i.dfj to i8
  store i8 %i.dfk, ptr %i.dex, align 1, !tbaa !26
  br label %.loopexit.i.i

.loopexit.i.i.loopexit1155.unr-lcssa:             ; preds = %.lr.ph120.i.i
  br i1 %lcmp.mod1277.not, label %.loopexit.i.i, label %.lr.ph120.i.i.epil.preheader

.lr.ph120.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit1155.unr-lcssa, %.lr.ph120.i.i.preheader
  %indvars.iv165.i.i.epil.init = phi i64 [ 0, %.lr.ph120.i.i.preheader ], [ %indvars.iv.next166.i.i.1, %.loopexit.i.i.loopexit1155.unr-lcssa ] ; 2 uses
  %.2119.i.i.epil.init = phi i32 [ 0, %.lr.ph120.i.i.preheader ], [ %i.ddo, %.loopexit.i.i.loopexit1155.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1279)
  %i.dfl = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv165.i.i.epil.init ; 2 uses
  %i.dfm = load i8, ptr %i.dfl, align 1, !tbaa !26 ; 2 uses
  %i.dfn = zext i8 %i.dfm to i32
  %i.dfo = and i64 %indvars.iv165.i.i.epil.init, 7 ; 2 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dfo
  %i.dfq = load i8, ptr %i.dfp, align 1, !tbaa !26
  %i.dfr = zext i8 %i.dfq to i32
  %i.dfs = sub nsw i32 %i.dfn, %i.dfr
  %i.dft = add i32 %i.dfs, %.2119.i.i.epil.init   ; 2 uses
  %i.dfu = xor i64 %i.dfo, 4
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dfu
  store i8 %i.dfm, ptr %i.dfv, align 1, !tbaa !26
  %i.dfw = lshr i32 %i.dft, 2
  %i.dfx = trunc i32 %i.dfw to i8
  store i8 %i.dfx, ptr %i.dfl, align 1, !tbaa !26
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i418, %.lr.ph120.i.i.epil.preheader, %.loopexit.i.i.loopexit1155.unr-lcssa, %.lr.ph126.i.i, %.lr.ph132.i.i.epil.preheader, %.loopexit.i.i.loopexit1153.unr-lcssa, %.lr.ph138.i.i, %.preheader.i.i, %.preheader105.i.i, %.preheader107.i.i, %.preheader109.i.i, %.preheader111.i.i
  %.593.i.i = phi i32 [ %i.day, %.lr.ph126.i.i ], [ %i.day, %.lr.ph120.i.i.epil.preheader ], [ %i.day, %.lr.ph138.i.i ], [ %i.day, %.lr.ph132.i.i.epil.preheader ], [ 0, %.preheader.i.i ], [ 0, %.preheader105.i.i ], [ 0, %.preheader107.i.i ], [ 0, %.preheader109.i.i ], [ 0, %.preheader111.i.i ], [ %i.day, %.loopexit.i.i.loopexit1153.unr-lcssa ], [ %i.day, %.loopexit.i.i.loopexit1155.unr-lcssa ], [ %i.day, %.lr.ph.i.i418 ] ; 2 uses
  %.5.i.i = phi i32 [ %i.dcn, %.lr.ph126.i.i ], [ %i.dft, %.lr.ph120.i.i.epil.preheader ], [ %i.deq, %.lr.ph138.i.i ], [ %i.dff, %.lr.ph132.i.i.epil.preheader ], [ 0, %.preheader.i.i ], [ 0, %.preheader105.i.i ], [ 0, %.preheader107.i.i ], [ 0, %.preheader109.i.i ], [ 0, %.preheader111.i.i ], [ %i.dbz, %.loopexit.i.i.loopexit1153.unr-lcssa ], [ %i.ddo, %.loopexit.i.i.loopexit1155.unr-lcssa ], [ %i.deb, %.lr.ph.i.i418 ] ; 2 uses
  %i.dfy = icmp samesign ult i32 %.593.i.i, %i.dap
  br i1 %i.dfy, label %.lr.ph143.preheader.i.i, label %._crit_edge.i.i421

.lr.ph143.preheader.i.i:                          ; preds = %.loopexit.i.i
  %i.dfz = zext nneg i32 %.593.i.i to i64         ; 6 uses
  %i.dga = sub nsw i64 %wide.trip.count188.i.i, %i.dfz
  %xtraiter1289 = and i64 %i.dga, 1
  %lcmp.mod1290.not = icmp eq i64 %xtraiter1289, 0
  br i1 %lcmp.mod1290.not, label %.lr.ph143.i.i.prol.loopexit, label %.lr.ph143.i.i.prol

.lr.ph143.i.i.prol:                               ; preds = %.lr.ph143.preheader.i.i
  %i.dgb = and i64 %i.dfz, 7
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dgb
  %i.dgd = load i8, ptr %i.dgc, align 1, !tbaa !26
  %i.dge = zext i8 %i.dgd to i32
  %i.dgf = sub i32 %.5.i.i, %i.dge                ; 2 uses
  %i.dgg = udiv i32 %i.dgf, %i.ban
  %i.dgh = trunc i32 %i.dgg to i8
  %i.dgi = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %i.dfz
  store i8 %i.dgh, ptr %i.dgi, align 1, !tbaa !26
  %indvars.iv.next186.i.i.prol = add nuw nsw i64 %i.dfz, 1
  br label %.lr.ph143.i.i.prol.loopexit

.lr.ph143.i.i.prol.loopexit:                      ; preds = %.lr.ph143.i.i.prol, %.lr.ph143.preheader.i.i
  %indvars.iv185.i.i.unr = phi i64 [ %i.dfz, %.lr.ph143.preheader.i.i ], [ %indvars.iv.next186.i.i.prol, %.lr.ph143.i.i.prol ]
  %.6142.i.i.unr = phi i32 [ %.5.i.i, %.lr.ph143.preheader.i.i ], [ %i.dgf, %.lr.ph143.i.i.prol ]
  %i.dgj = icmp eq i64 %i.dbc, %i.dfz
  br i1 %i.dgj, label %._crit_edge.i.i421, label %.lr.ph143.i.i

.lr.ph143.i.i:                                    ; preds = %.lr.ph143.i.i.prol.loopexit, %.lr.ph143.i.i
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i.1, %.lr.ph143.i.i ], [ %indvars.iv185.i.i.unr, %.lr.ph143.i.i.prol.loopexit ] ; 4 uses
  %.6142.i.i = phi i32 [ %i.dgw, %.lr.ph143.i.i ], [ %.6142.i.i.unr, %.lr.ph143.i.i.prol.loopexit ]
  %i.dgk = and i64 %indvars.iv185.i.i, 7
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dgk
  %i.dgm = load i8, ptr %i.dgl, align 1, !tbaa !26
  %i.dgn = zext i8 %i.dgm to i32
  %i.dgo = sub i32 %.6142.i.i, %i.dgn             ; 2 uses
  %i.dgp = udiv i32 %i.dgo, %i.ban
  %i.dgq = trunc i32 %i.dgp to i8
  %i.dgr = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv185.i.i
  store i8 %i.dgq, ptr %i.dgr, align 1, !tbaa !26
  %indvars.iv.next186.i.i = add nuw nsw i64 %indvars.iv185.i.i, 1 ; 2 uses
  %i.dgs = and i64 %indvars.iv.next186.i.i, 7
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dgs
  %i.dgu = load i8, ptr %i.dgt, align 1, !tbaa !26
  %i.dgv = zext i8 %i.dgu to i32
  %i.dgw = sub i32 %i.dgo, %i.dgv                 ; 2 uses
  %i.dgx = udiv i32 %i.dgw, %i.ban
  %i.dgy = trunc i32 %i.dgx to i8
  %i.dgz = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv.next186.i.i
  store i8 %i.dgy, ptr %i.dgz, align 1, !tbaa !26
  %indvars.iv.next186.i.i.1 = add nuw nsw i64 %indvars.iv185.i.i, 2 ; 2 uses
  %exitcond189.not.i.i.1 = icmp eq i64 %indvars.iv.next186.i.i.1, %wide.trip.count188.i.i
  br i1 %exitcond189.not.i.i.1, label %._crit_edge.i.i421, label %.lr.ph143.i.i, !llvm.loop !419

._crit_edge.i.i421:                               ; preds = %.lr.ph143.i.i.prol.loopexit, %.lr.ph143.i.i, %.loopexit.i.i
  %i.dha = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %i.axy
  %i.dhb = add nuw nsw i32 %.095146.i.i, 1        ; 2 uses
  %exitcond190.not.i.i = icmp eq i32 %i.dhb, %i.daq
  br i1 %exitcond190.not.i.i, label %_ZL18stbtt__h_prefilterPhiiij.exit.loopexit.i, label %bb.qx, !llvm.loop !420

_ZL18stbtt__h_prefilterPhiiij.exit.loopexit.i:    ; preds = %._crit_edge.i.i421
  %.pre224.pre.pre.i = load i16, ptr %i.bcp, align 4, !tbaa !236
  %.pre226.pre.pre.i = load i16, ptr %i.bcq, align 2, !tbaa !235
  %.pre228.pre.pre.i = load i16, ptr %i.bca, align 4, !tbaa !220
  %.pre230.pre.pre.i = load i16, ptr %i.bcc, align 2, !tbaa !221
  br label %_ZL18stbtt__h_prefilterPhiiij.exit.i

_ZL18stbtt__h_prefilterPhiiij.exit.i:             ; preds = %_ZL18stbtt__h_prefilterPhiiij.exit.loopexit.i, %bb.qw
  %.pre230.pre.i = phi i16 [ %.pre230.pre.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.loopexit.i ], [ 0, %bb.qw ]
  %.pre228.pre.i = phi i16 [ %.pre228.pre.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.loopexit.i ], [ %.pre228.pre236.i, %bb.qw ]
  %.pre226.pre.i = phi i16 [ %.pre226.pre.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.loopexit.i ], [ %.pre226.pre234.i, %bb.qw ]
  %.pre224.pre.i = phi i16 [ %.pre224.pre.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.loopexit.i ], [ %.pre224.pre232.i, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.qy

bb.qy:                                            ; preds = %_ZL18stbtt__h_prefilterPhiiij.exit.i, %.noexc442
  %.pre230.i = phi i16 [ %.pre230.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.i ], [ %.pre230.pre238.i, %.noexc442 ] ; 4 uses
  %.pre228.i = phi i16 [ %.pre228.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.i ], [ %.pre228.pre236.i, %.noexc442 ] ; 3 uses
  %.pre226.i = phi i16 [ %.pre226.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.i ], [ %.pre226.pre234.i, %.noexc442 ] ; 3 uses
  %.pre224.i = phi i16 [ %.pre224.pre.i, %_ZL18stbtt__h_prefilterPhiiij.exit.i ], [ %.pre224.pre232.i, %.noexc442 ] ; 3 uses
  br i1 %i.bbl, label %bb.qz, label %bb.rb

bb.qz:                                            ; preds = %bb.qy
  %i.dhc = zext i16 %.pre228.i to i32
  %i.dhd = zext i16 %.pre230.i to i32             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8
  %.not165.i.i = icmp eq i16 %.pre228.i, 0
  br i1 %.not165.i.i, label %_ZL18stbtt__v_prefilterPhiiij.exit.i, label %.lr.ph163.i.i

.lr.ph163.i.i:                                    ; preds = %bb.qz
  %i.dhe = zext i16 %.pre224.i to i64
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.dhe
  %i.dhg = zext i16 %.pre226.i to i32
  %i.dhh = mul nsw i32 %.sroa.12.0, %i.dhg
  %i.dhi = zext nneg i32 %i.dhh to i64
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dhf, i64 %i.dhi
  %i.dhk = sub nsw i32 %i.dhd, %i.bam             ; 2 uses
  %.not128.i.i = icmp slt i32 %i.dhk, 0           ; 5 uses
  %i.dhl = add nsw i32 %i.dhk, 1                  ; 8 uses
  %wide.trip.count.i147.i = zext i32 %i.dhl to i64 ; 6 uses
  %wide.trip.count203.i.i = zext i16 %.pre230.i to i64 ; 3 uses
  %xtraiter1291 = and i64 %wide.trip.count.i147.i, 1
  %i.dhm = icmp eq i32 %i.dhd, %i.bam
  %unroll_iter1296 = and i64 %wide.trip.count.i147.i, 2147483646
  %lcmp.mod1293.not = icmp eq i64 %xtraiter1291, 0
  %lcmp.mod1295 = trunc i32 %i.dhl to i1
  %i.dhn = add nsw i64 %wide.trip.count203.i.i, -1
  br label %bb.ra

bb.ra:                                            ; preds = %._crit_edge.i156.i, %.lr.ph163.i.i
  %.0110161.i.i = phi i32 [ 0, %.lr.ph163.i.i ], [ %i.dmu, %._crit_edge.i156.i ]
  %.0111159.i.i = phi ptr [ %i.dhj, %.lr.ph163.i.i ], [ %i.dmt, %._crit_edge.i156.i ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.bbm, i1 false)
  switch i8 %i.bak, label %.preheader.i163.i [
    i8 2, label %.preheader120.i.i
    i8 3, label %.preheader122.i.i
    i8 4, label %.preheader124.i.i
    i8 5, label %.preheader126.i.i
  ]

.preheader126.i.i:                                ; preds = %bb.ra
  br i1 %.not128.i.i, label %.loopexit.i154.i, label %.lr.ph.i150.i

.preheader124.i.i:                                ; preds = %bb.ra
  br i1 %.not128.i.i, label %.loopexit.i154.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.preheader124.i.i
  br i1 %i.dhm, label %.lr.ph135.i.i.epil.preheader, label %.lr.ph135.i.i

.preheader122.i.i:                                ; preds = %bb.ra
  br i1 %.not128.i.i, label %.loopexit.i154.i, label %.lr.ph141.i.i

.preheader120.i.i:                                ; preds = %bb.ra
  br i1 %.not128.i.i, label %.loopexit.i154.i, label %.lr.ph147.i.i

.preheader.i163.i:                                ; preds = %bb.ra
  br i1 %.not128.i.i, label %.loopexit.i154.i, label %.lr.ph153.i.i

.lr.ph147.i.i:                                    ; preds = %.preheader120.i.i, %.lr.ph147.i.i
  %indvars.iv190.i.i = phi i64 [ %indvars.iv.next191.i.i, %.lr.ph147.i.i ], [ 0, %.preheader120.i.i ] ; 4 uses
  %.0146.i.i = phi i32 [ %i.dhx, %.lr.ph147.i.i ], [ 0, %.preheader120.i.i ]
  %i.dho = mul nuw nsw i64 %indvars.iv190.i.i, %i.axy
  %i.dhp = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dho ; 2 uses
  %i.dhq = load i8, ptr %i.dhp, align 1, !tbaa !26 ; 2 uses
  %i.dhr = zext i8 %i.dhq to i32
  %i.dhs = and i64 %indvars.iv190.i.i, 7
  %i.dht = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dhs
  %i.dhu = load i8, ptr %i.dht, align 1, !tbaa !26
  %i.dhv = zext i8 %i.dhu to i32
  %i.dhw = sub nsw i32 %i.dhr, %i.dhv
  %i.dhx = add i32 %i.dhw, %.0146.i.i             ; 3 uses
  %i.dhy = add nuw nsw i64 %indvars.iv190.i.i, 2
  %i.dhz = and i64 %i.dhy, 7
  %i.dia = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dhz
  store i8 %i.dhq, ptr %i.dia, align 1, !tbaa !26
  %i.dib = lshr i32 %i.dhx, 1
  %i.dic = trunc i32 %i.dib to i8
  store i8 %i.dic, ptr %i.dhp, align 1, !tbaa !26
  %indvars.iv.next191.i.i = add nuw nsw i64 %indvars.iv190.i.i, 1 ; 2 uses
  %exitcond194.not.i.i = icmp eq i64 %indvars.iv.next191.i.i, %wide.trip.count.i147.i
  br i1 %exitcond194.not.i.i, label %.loopexit.i154.i, label %.lr.ph147.i.i, !llvm.loop !421

.lr.ph141.i.i:                                    ; preds = %.preheader122.i.i, %.lr.ph141.i.i
  %indvars.iv185.i160.i = phi i64 [ %indvars.iv.next186.i161.i, %.lr.ph141.i.i ], [ 0, %.preheader122.i.i ] ; 4 uses
  %.1140.i.i = phi i32 [ %i.dim, %.lr.ph141.i.i ], [ 0, %.preheader122.i.i ]
  %i.did = mul nuw nsw i64 %indvars.iv185.i160.i, %i.axy
  %i.die = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.did ; 2 uses
  %i.dif = load i8, ptr %i.die, align 1, !tbaa !26 ; 2 uses
  %i.dig = zext i8 %i.dif to i32
  %i.dih = and i64 %indvars.iv185.i160.i, 7
  %i.dii = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dih
  %i.dij = load i8, ptr %i.dii, align 1, !tbaa !26
  %i.dik = zext i8 %i.dij to i32
  %i.dil = sub nsw i32 %i.dig, %i.dik
  %i.dim = add i32 %i.dil, %.1140.i.i             ; 3 uses
  %i.din = add nuw nsw i64 %indvars.iv185.i160.i, 3
  %i.dio = and i64 %i.din, 7
  %i.dip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dio
  store i8 %i.dif, ptr %i.dip, align 1, !tbaa !26
  %i.diq = udiv i32 %i.dim, 3
  %i.dir = trunc i32 %i.diq to i8
  store i8 %i.dir, ptr %i.die, align 1, !tbaa !26
  %indvars.iv.next186.i161.i = add nuw nsw i64 %indvars.iv185.i160.i, 1 ; 2 uses
  %exitcond189.not.i162.i = icmp eq i64 %indvars.iv.next186.i161.i, %wide.trip.count.i147.i
  br i1 %exitcond189.not.i162.i, label %.loopexit.i154.i, label %.lr.ph141.i.i, !llvm.loop !422

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv180.i157.i = phi i64 [ %indvars.iv.next181.i158.i.1, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ] ; 4 uses
  %.2134.i.i = phi i32 [ %i.djp, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ]
  %niter1297 = phi i64 [ %niter1297.next.1, %.lr.ph135.i.i ], [ 0, %.lr.ph135.i.i.preheader ]
  %i.dis = mul nuw nsw i64 %indvars.iv180.i157.i, %i.axy
  %i.dit = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dis ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !26 ; 2 uses
  %i.div = zext i8 %i.diu to i32
  %i.diw = and i64 %indvars.iv180.i157.i, 6       ; 2 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.diw
  %i.diy = load i8, ptr %i.dix, align 2, !tbaa !26
  %i.diz = zext i8 %i.diy to i32
  %i.dja = sub nsw i32 %i.div, %i.diz
  %i.djb = add i32 %i.dja, %.2134.i.i             ; 2 uses
  %i.djc = xor i64 %i.diw, 4
  %i.djd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.djc
  store i8 %i.diu, ptr %i.djd, align 2, !tbaa !26
  %i.dje = lshr i32 %i.djb, 2
  %i.djf = trunc i32 %i.dje to i8
  store i8 %i.djf, ptr %i.dit, align 1, !tbaa !26
  %indvars.iv.next181.i158.i = or disjoint i64 %indvars.iv180.i157.i, 1 ; 2 uses
  %i.djg = mul nuw nsw i64 %indvars.iv.next181.i158.i, %i.axy
  %i.djh = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.djg ; 2 uses
  %i.dji = load i8, ptr %i.djh, align 1, !tbaa !26 ; 2 uses
  %i.djj = zext i8 %i.dji to i32
  %i.djk = and i64 %indvars.iv.next181.i158.i, 7  ; 2 uses
  %i.djl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.djk
  %i.djm = load i8, ptr %i.djl, align 1, !tbaa !26
  %i.djn = zext i8 %i.djm to i32
  %i.djo = sub nsw i32 %i.djj, %i.djn
  %i.djp = add i32 %i.djo, %i.djb                 ; 4 uses
  %i.djq = xor i64 %i.djk, 4
  %i.djr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.djq
  store i8 %i.dji, ptr %i.djr, align 1, !tbaa !26
  %i.djs = lshr i32 %i.djp, 2
  %i.djt = trunc i32 %i.djs to i8
  store i8 %i.djt, ptr %i.djh, align 1, !tbaa !26
  %indvars.iv.next181.i158.i.1 = add nuw nsw i64 %indvars.iv180.i157.i, 2 ; 2 uses
  %niter1297.next.1 = add i64 %niter1297, 2       ; 2 uses
  %niter1297.ncmp.1 = icmp eq i64 %niter1297.next.1, %unroll_iter1296
  br i1 %niter1297.ncmp.1, label %.loopexit.i154.i.loopexit1151.unr-lcssa, label %.lr.ph135.i.i, !llvm.loop !423

.lr.ph.i150.i:                                    ; preds = %.preheader126.i.i, %.lr.ph.i150.i
  %indvars.iv.i151.i = phi i64 [ %indvars.iv.next.i152.i, %.lr.ph.i150.i ], [ 0, %.preheader126.i.i ] ; 4 uses
  %.3130.i.i = phi i32 [ %i.dkd, %.lr.ph.i150.i ], [ 0, %.preheader126.i.i ]
  %i.dju = mul nuw nsw i64 %indvars.iv.i151.i, %i.axy
  %i.djv = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dju ; 2 uses
  %i.djw = load i8, ptr %i.djv, align 1, !tbaa !26 ; 2 uses
  %i.djx = zext i8 %i.djw to i32
  %i.djy = and i64 %indvars.iv.i151.i, 7
  %i.djz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.djy
  %i.dka = load i8, ptr %i.djz, align 1, !tbaa !26
  %i.dkb = zext i8 %i.dka to i32
  %i.dkc = sub nsw i32 %i.djx, %i.dkb
  %i.dkd = add i32 %i.dkc, %.3130.i.i             ; 3 uses
  %i.dke = add nuw nsw i64 %indvars.iv.i151.i, 5
  %i.dkf = and i64 %i.dke, 7
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dkf
  store i8 %i.djw, ptr %i.dkg, align 1, !tbaa !26
  %i.dkh = udiv i32 %i.dkd, 5
  %i.dki = trunc i32 %i.dkh to i8
  store i8 %i.dki, ptr %i.djv, align 1, !tbaa !26
  %indvars.iv.next.i152.i = add nuw nsw i64 %indvars.iv.i151.i, 1 ; 2 uses
  %exitcond.not.i153.i = icmp eq i64 %indvars.iv.next.i152.i, %wide.trip.count.i147.i
  br i1 %exitcond.not.i153.i, label %.loopexit.i154.i, label %.lr.ph.i150.i, !llvm.loop !424

.lr.ph153.i.i:                                    ; preds = %.preheader.i163.i, %.lr.ph153.i.i
  %indvars.iv195.i.i = phi i64 [ %indvars.iv.next196.i.i, %.lr.ph153.i.i ], [ 0, %.preheader.i163.i ] ; 4 uses
  %.4152.i.i = phi i32 [ %i.dkt, %.lr.ph153.i.i ], [ 0, %.preheader.i163.i ]
  %i.dkj = mul nuw nsw i64 %indvars.iv195.i.i, %i.axy
  %i.dkk = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dkj ; 2 uses
  %i.dkl = load i8, ptr %i.dkk, align 1, !tbaa !26 ; 2 uses
  %i.dkm = zext i8 %i.dkl to i32
  %i.dkn = trunc nuw nsw i64 %indvars.iv195.i.i to i32
  %i.dko = and i64 %indvars.iv195.i.i, 7
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dko
  %i.dkq = load i8, ptr %i.dkp, align 1, !tbaa !26
  %i.dkr = zext i8 %i.dkq to i32
  %i.dks = sub nsw i32 %i.dkm, %i.dkr
  %i.dkt = add i32 %i.dks, %.4152.i.i             ; 3 uses
  %i.dku = add nuw i32 %i.dkn, %i.bam
  %i.dkv = and i32 %i.dku, 7
  %i.dkw = zext nneg i32 %i.dkv to i64
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dkw
  store i8 %i.dkl, ptr %i.dkx, align 1, !tbaa !26
  %i.dky = udiv i32 %i.dkt, %i.bam
  %i.dkz = trunc i32 %i.dky to i8
  store i8 %i.dkz, ptr %i.dkk, align 1, !tbaa !26
  %indvars.iv.next196.i.i = add nuw nsw i64 %indvars.iv195.i.i, 1 ; 2 uses
  %exitcond199.not.i.i = icmp eq i64 %indvars.iv.next196.i.i, %wide.trip.count.i147.i
  br i1 %exitcond199.not.i.i, label %.loopexit.i154.i, label %.lr.ph153.i.i, !llvm.loop !425

.loopexit.i154.i.loopexit1151.unr-lcssa:          ; preds = %.lr.ph135.i.i
  br i1 %lcmp.mod1293.not, label %.loopexit.i154.i, label %.lr.ph135.i.i.epil.preheader

.lr.ph135.i.i.epil.preheader:                     ; preds = %.loopexit.i154.i.loopexit1151.unr-lcssa, %.lr.ph135.i.i.preheader
  %indvars.iv180.i157.i.epil.init = phi i64 [ 0, %.lr.ph135.i.i.preheader ], [ %indvars.iv.next181.i158.i.1, %.loopexit.i154.i.loopexit1151.unr-lcssa ] ; 2 uses
  %.2134.i.i.epil.init = phi i32 [ 0, %.lr.ph135.i.i.preheader ], [ %i.djp, %.loopexit.i154.i.loopexit1151.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1295)
  %i.dla = mul nuw nsw i64 %indvars.iv180.i157.i.epil.init, %i.axy
  %i.dlb = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dla ; 2 uses
  %i.dlc = load i8, ptr %i.dlb, align 1, !tbaa !26 ; 2 uses
  %i.dld = zext i8 %i.dlc to i32
  %i.dle = and i64 %indvars.iv180.i157.i.epil.init, 7 ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dle
  %i.dlg = load i8, ptr %i.dlf, align 1, !tbaa !26
  %i.dlh = zext i8 %i.dlg to i32
  %i.dli = sub nsw i32 %i.dld, %i.dlh
  %i.dlj = add i32 %i.dli, %.2134.i.i.epil.init   ; 2 uses
  %i.dlk = xor i64 %i.dle, 4
  %i.dll = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dlk
  store i8 %i.dlc, ptr %i.dll, align 1, !tbaa !26
  %i.dlm = lshr i32 %i.dlj, 2
  %i.dln = trunc i32 %i.dlm to i8
  store i8 %i.dln, ptr %i.dlb, align 1, !tbaa !26
  br label %.loopexit.i154.i

.loopexit.i154.i:                                 ; preds = %.lr.ph.i150.i, %.lr.ph135.i.i.epil.preheader, %.loopexit.i154.i.loopexit1151.unr-lcssa, %.lr.ph141.i.i, %.lr.ph147.i.i, %.lr.ph153.i.i, %.preheader.i163.i, %.preheader120.i.i, %.preheader122.i.i, %.preheader124.i.i, %.preheader126.i.i
  %.5108.i.i = phi i32 [ %i.dhl, %.lr.ph141.i.i ], [ %i.dhl, %.lr.ph135.i.i.epil.preheader ], [ %i.dhl, %.lr.ph153.i.i ], [ %i.dhl, %.lr.ph147.i.i ], [ 0, %.preheader.i163.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.dhl, %.loopexit.i154.i.loopexit1151.unr-lcssa ], [ %i.dhl, %.lr.ph.i150.i ] ; 2 uses
  %.5.i155.i = phi i32 [ %i.dim, %.lr.ph141.i.i ], [ %i.dlj, %.lr.ph135.i.i.epil.preheader ], [ %i.dkt, %.lr.ph153.i.i ], [ %i.dhx, %.lr.ph147.i.i ], [ 0, %.preheader.i163.i ], [ 0, %.preheader120.i.i ], [ 0, %.preheader122.i.i ], [ 0, %.preheader124.i.i ], [ 0, %.preheader126.i.i ], [ %i.djp, %.loopexit.i154.i.loopexit1151.unr-lcssa ], [ %i.dkd, %.lr.ph.i150.i ] ; 2 uses
  %i.dlo = icmp samesign ult i32 %.5108.i.i, %i.dhd
  br i1 %i.dlo, label %.lr.ph158.preheader.i.i, label %._crit_edge.i156.i

.lr.ph158.preheader.i.i:                          ; preds = %.loopexit.i154.i
  %i.dlp = zext nneg i32 %.5108.i.i to i64        ; 6 uses
  %i.dlq = sub nsw i64 %wide.trip.count203.i.i, %i.dlp
  %xtraiter1298 = and i64 %i.dlq, 1
  %lcmp.mod1299.not = icmp eq i64 %xtraiter1298, 0
  br i1 %lcmp.mod1299.not, label %.lr.ph158.i.i.prol.loopexit, label %.lr.ph158.i.i.prol

.lr.ph158.i.i.prol:                               ; preds = %.lr.ph158.preheader.i.i
  %i.dlr = and i64 %i.dlp, 7
  %i.dls = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dlr
  %i.dlt = load i8, ptr %i.dls, align 1, !tbaa !26
  %i.dlu = zext i8 %i.dlt to i32
  %i.dlv = sub i32 %.5.i155.i, %i.dlu             ; 2 uses
  %i.dlw = udiv i32 %i.dlv, %i.bam
  %i.dlx = trunc i32 %i.dlw to i8
  %i.dly = mul nuw nsw i64 %i.dlp, %i.axy
  %i.dlz = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dly
  store i8 %i.dlx, ptr %i.dlz, align 1, !tbaa !26
  %indvars.iv.next201.i.i.prol = add nuw nsw i64 %i.dlp, 1
  br label %.lr.ph158.i.i.prol.loopexit

.lr.ph158.i.i.prol.loopexit:                      ; preds = %.lr.ph158.i.i.prol, %.lr.ph158.preheader.i.i
  %indvars.iv200.i.i.unr = phi i64 [ %i.dlp, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next201.i.i.prol, %.lr.ph158.i.i.prol ]
  %.6157.i.i.unr = phi i32 [ %.5.i155.i, %.lr.ph158.preheader.i.i ], [ %i.dlv, %.lr.ph158.i.i.prol ]
  %i.dma = icmp eq i64 %i.dhn, %i.dlp
  br i1 %i.dma, label %._crit_edge.i156.i, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i
  %indvars.iv200.i.i = phi i64 [ %indvars.iv.next201.i.i.1, %.lr.ph158.i.i ], [ %indvars.iv200.i.i.unr, %.lr.ph158.i.i.prol.loopexit ] ; 4 uses
  %.6157.i.i = phi i32 [ %i.dmo, %.lr.ph158.i.i ], [ %.6157.i.i.unr, %.lr.ph158.i.i.prol.loopexit ]
  %i.dmb = and i64 %indvars.iv200.i.i, 7
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dmb
  %i.dmd = load i8, ptr %i.dmc, align 1, !tbaa !26
  %i.dme = zext i8 %i.dmd to i32
  %i.dmf = sub i32 %.6157.i.i, %i.dme             ; 2 uses
  %i.dmg = udiv i32 %i.dmf, %i.bam
  %i.dmh = trunc i32 %i.dmg to i8
  %i.dmi = mul nuw nsw i64 %indvars.iv200.i.i, %i.axy
  %i.dmj = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dmi
  store i8 %i.dmh, ptr %i.dmj, align 1, !tbaa !26
  %indvars.iv.next201.i.i = add nuw nsw i64 %indvars.iv200.i.i, 1 ; 2 uses
  %i.dmk = and i64 %indvars.iv.next201.i.i, 7
  %i.dml = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dmk
  %i.dmm = load i8, ptr %i.dml, align 1, !tbaa !26
  %i.dmn = zext i8 %i.dmm to i32
  %i.dmo = sub i32 %i.dmf, %i.dmn                 ; 2 uses
  %i.dmp = udiv i32 %i.dmo, %i.bam
  %i.dmq = trunc i32 %i.dmp to i8
  %i.dmr = mul nuw nsw i64 %indvars.iv.next201.i.i, %i.axy
  %i.dms = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 %i.dmr
  store i8 %i.dmq, ptr %i.dms, align 1, !tbaa !26
  %indvars.iv.next201.i.i.1 = add nuw nsw i64 %indvars.iv200.i.i, 2 ; 2 uses
  %exitcond204.not.i.i.1 = icmp eq i64 %indvars.iv.next201.i.i.1, %wide.trip.count203.i.i
  br i1 %exitcond204.not.i.i.1, label %._crit_edge.i156.i, label %.lr.ph158.i.i, !llvm.loop !426

._crit_edge.i156.i:                               ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i, %.loopexit.i154.i
  %i.dmt = getelementptr inbounds nuw i8, ptr %.0111159.i.i, i64 1
  %i.dmu = add nuw nsw i32 %.0110161.i.i, 1       ; 2 uses
  %exitcond205.not.i.i = icmp eq i32 %i.dmu, %i.dhc
  br i1 %exitcond205.not.i.i, label %_ZL18stbtt__v_prefilterPhiiij.exit.loopexit.i, label %bb.ra, !llvm.loop !427

_ZL18stbtt__v_prefilterPhiiij.exit.loopexit.i:    ; preds = %._crit_edge.i156.i
  %.pre.pre.i = load i16, ptr %i.bcp, align 4, !tbaa !236
  %.pre225.pre.i = load i16, ptr %i.bcq, align 2, !tbaa !235
  %.pre227.pre.i = load i16, ptr %i.bca, align 4, !tbaa !220
  %.pre229.pre.i = load i16, ptr %i.bcc, align 2, !tbaa !221
  br label %_ZL18stbtt__v_prefilterPhiiij.exit.i

_ZL18stbtt__v_prefilterPhiiij.exit.i:             ; preds = %_ZL18stbtt__v_prefilterPhiiij.exit.loopexit.i, %bb.qz
  %.pre229.i = phi i16 [ %.pre229.pre.i, %_ZL18stbtt__v_prefilterPhiiij.exit.loopexit.i ], [ %.pre230.i, %bb.qz ]
  %.pre227.i = phi i16 [ %.pre227.pre.i, %_ZL18stbtt__v_prefilterPhiiij.exit.loopexit.i ], [ 0, %bb.qz ]
  %.pre225.i = phi i16 [ %.pre225.pre.i, %_ZL18stbtt__v_prefilterPhiiij.exit.loopexit.i ], [ %.pre226.i, %bb.qz ]
  %.pre.i416 = phi i16 [ %.pre.pre.i, %_ZL18stbtt__v_prefilterPhiiij.exit.loopexit.i ], [ %.pre224.i, %bb.qz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.rb

bb.rb:                                            ; preds = %_ZL18stbtt__v_prefilterPhiiij.exit.i, %bb.qy
  %i.dmv = phi i16 [ %.pre229.i, %_ZL18stbtt__v_prefilterPhiiij.exit.i ], [ %.pre230.i, %bb.qy ] ; 2 uses
  %i.dmw = phi i16 [ %.pre227.i, %_ZL18stbtt__v_prefilterPhiiij.exit.i ], [ %.pre228.i, %bb.qy ] ; 2 uses
  %i.dmx = phi i16 [ %.pre225.i, %_ZL18stbtt__v_prefilterPhiiij.exit.i ], [ %.pre226.i, %bb.qy ] ; 2 uses
  %i.dmy = phi i16 [ %.pre.i416, %_ZL18stbtt__v_prefilterPhiiij.exit.i ], [ %.pre224.i, %bb.qy ] ; 2 uses
  store i16 %i.dmy, ptr %i.bcf, align 4, !tbaa !506
  %i.dmz = getelementptr inbounds nuw i8, ptr %i.bcf, i64 2
  store i16 %i.dmx, ptr %i.dmz, align 2, !tbaa !507
  %i.dna = add i16 %i.dmy, %i.dmw
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.bcf, i64 4
  store i16 %i.dna, ptr %i.dnb, align 4, !tbaa !508
  %i.dnc = add i16 %i.dmx, %i.dmv
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.bcf, i64 6
  store i16 %i.dnc, ptr %i.dnd, align 2, !tbaa !509
  %i.dne = sitofp i16 %i.bdx to float
  %i.dnf = load i32, ptr %i.g, align 4, !tbaa !112 ; 2 uses
  %i.dng = sitofp i32 %i.dnf to float
  %i.dnh = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  %i.dni = load i32, ptr %i.h, align 4, !tbaa !112 ; 2 uses
  %i.dnj = sitofp i32 %i.dni to float
  %i.dnk = zext i16 %i.dmw to i32
  %i.dnl = add nsw i32 %i.dnf, %i.dnk
  %i.dnm = sitofp i32 %i.dnl to float
  %i.dnn = insertelement <4 x float> %i.bbu, float %i.dng, i64 0
  %i.dno = insertelement <4 x float> %i.dnn, float %i.dnj, i64 1
  %i.dnp = insertelement <4 x float> %i.dno, float %i.dnm, i64 3
  %i.dnq = insertelement <4 x float> %i.bbp, float %i.dne, i64 2
  %i.dnr = shufflevector <4 x float> %i.dnq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dns = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dnp, <4 x float> %i.dnr, <4 x float> %i.bbv)
  store <4 x float> %i.dns, ptr %i.dnh, align 4, !tbaa !15
  %i.dnt = zext i16 %i.dmv to i32
  %i.dnu = add nsw i32 %i.dni, %i.dnt
  %i.dnv = sitofp i32 %i.dnu to float
  %i.dnw = call float @llvm.fmuladd.f32(float %i.dnv, float %i.bbq, float %i.bbo)
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.bcf, i64 24
  store float %i.dnw, ptr %i.dnx, align 4, !tbaa !510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  %.pre231.i = load i32, ptr %i.ayo, align 8, !tbaa !483
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %bb.hd, %bb.hc, %.lr.ph.i409
  %i.dny = phi i32 [ %.pre231.i, %bb.rb ], [ %i.bbw, %bb.hd ], [ %i.bbw, %bb.hc ], [ %i.bbw, %.lr.ph.i409 ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dnz = sext i32 %i.dny to i64
  %i.doa = icmp slt i64 %indvars.iv.next.i, %i.dnz
  br i1 %i.doa, label %.lr.ph.i409, label %_ZL35stbtt_PackFontRangesRenderIntoRectsP18stbtt_pack_contextPK14stbtt_fontinfoP16stbtt_pack_rangeiP10stbrp_rect.exit, !llvm.loop !428

_ZL35stbtt_PackFontRangesRenderIntoRectsP18stbtt_pack_contextPK14stbtt_fontinfoP16stbtt_pack_rangeiP10stbrp_rect.exit: ; preds = %bb.rc, %_ZL23stbtt__oversample_shifti.exit.i
  %i.dob = getelementptr inbounds nuw i8, ptr %i.aye, i64 80
  %i.doc = load float, ptr %i.dob, align 8, !tbaa !136 ; 2 uses
  %i.dod = fcmp une float %i.doc, 1.000000e+00
  br i1 %i.dod, label %vector.ph, label %bb.rf

vector.ph:                                        ; preds = %_ZL35stbtt_PackFontRangesRenderIntoRectsP18stbtt_pack_contextPK14stbtt_fontinfoP16stbtt_pack_rangeiP10stbrp_rect.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #40
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.doc, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.doe = uitofp nneg <16 x i32> %vec.ind to <16 x float>
  %i.dof = fmul <16 x float> %broadcast.splat, %i.doe
  %i.dog = fptoui <16 x float> %i.dof to <16 x i32>
  %i.doh = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.dog, <16 x i32> splat (i32 255))
  %i.doi = trunc nuw <16 x i32> %i.doh to <16 x i8>
  %i.doj = getelementptr inbounds nuw i8, ptr %i.s, i64 %index
  store <16 x i8> %i.doi, ptr %i.doj, align 16, !tbaa !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.dok = icmp eq i64 %index.next, 256
  br i1 %i.dok, label %_Z39ImFontAtlasBuildMultiplyCalcLookupTablePhf.exit, label %vector.body, !llvm.loop !429

_Z39ImFontAtlasBuildMultiplyCalcLookupTablePhf.exit: ; preds = %vector.body
  %i.dol = load i32, ptr %i.ayh, align 8, !tbaa !461 ; 2 uses
  %i.dom = icmp sgt i32 %i.dol, 0
  br i1 %i.dom, label %.lr.ph659.preheader, label %._crit_edge660

end_hunk_0
begin_hunk_1_@_Z22ImFontAtlasBuildFinishP11ImFontAtlas:bb.a
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cwy, i64 368
  store <4 x i32> zeroinitializer, ptr %i.cxu, align 4, !tbaa !112
  store <4 x i32> zeroinitializer, ptr %i.cxv, align 4, !tbaa !112
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cwy, i64 384
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cwy, i64 400
  store <4 x i32> zeroinitializer, ptr %i.cxw, align 4, !tbaa !112
  store <4 x i32> zeroinitializer, ptr %i.cxx, align 4, !tbaa !112
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cwy, i64 416
  store i32 0, ptr %i.cxy, align 4, !tbaa !112
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cwy, i64 420
  store i32 0, ptr %i.cxz, align 4, !tbaa !112
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cwy, i64 424
  store i32 0, ptr %i.cya, align 4, !tbaa !112
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cwy, i64 428
  store i32 0, ptr %i.cyb, align 4, !tbaa !112
  br label %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit

bb.c:                                             ; preds = %bb.a
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.cyd = load i16, ptr %i.cyc, align 2, !tbaa !551
  %i.cye = zext i16 %i.cyd to i32
  %i.cyf = mul nsw i32 %i.h, %i.cye
  %i.cyg = add nsw i32 %i.cyf, %i.m               ; 4 uses
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cyi = load ptr, ptr %i.cyh, align 8, !tbaa !152 ; 2 uses
  %.not48.i = icmp eq ptr %i.cyi, null
  br i1 %.not48.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cyj = add nsw i32 %i.cyg, %i.h
  %i.cyk = sext i32 %i.cyj to i64                 ; 2 uses
  %i.cyl = getelementptr i8, ptr %i.cyi, i64 %i.cyk
  %i.cym = getelementptr i8, ptr %i.cyl, i64 1
  store i8 -1, ptr %i.cym, align 1, !tbaa !26
  %i.cyn = load ptr, ptr %i.cyh, align 8, !tbaa !152
  %i.cyo = getelementptr inbounds i8, ptr %i.cyn, i64 %i.cyk
  store i8 -1, ptr %i.cyo, align 1, !tbaa !26
  %i.cyp = load ptr, ptr %i.cyh, align 8, !tbaa !152
  %i.cyq = sext i32 %i.cyg to i64                 ; 2 uses
  %i.cyr = getelementptr i8, ptr %i.cyp, i64 %i.cyq
  %i.cys = getelementptr i8, ptr %i.cyr, i64 1
  store i8 -1, ptr %i.cys, align 1, !tbaa !26
  %i.cyt = load ptr, ptr %i.cyh, align 8, !tbaa !152
  %i.cyu = getelementptr inbounds i8, ptr %i.cyt, i64 %i.cyq
  store i8 -1, ptr %i.cyu, align 1, !tbaa !26
  br label %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit

bb.e:                                             ; preds = %bb.c
  %i.cyv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cyw = load ptr, ptr %i.cyv, align 8, !tbaa !153 ; 2 uses
  %i.cyx = add nsw i32 %i.cyg, %i.h
  %i.cyy = sext i32 %i.cyx to i64
  %i.cyz = getelementptr [4 x i8], ptr %i.cyw, i64 %i.cyy ; 2 uses
  %i.cza = getelementptr i8, ptr %i.cyz, i64 4
  store i32 -1, ptr %i.cza, align 4, !tbaa !112
  store i32 -1, ptr %i.cyz, align 4, !tbaa !112
  %i.czb = sext i32 %i.cyg to i64
  %i.czc = getelementptr [4 x i8], ptr %i.cyw, i64 %i.czb ; 2 uses
  %i.czd = getelementptr i8, ptr %i.czc, i64 4
  store i32 -1, ptr %i.czd, align 4, !tbaa !112
  store i32 -1, ptr %i.czc, align 4, !tbaa !112
  br label %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit

_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit: ; preds = %iter.check, %.preheader.i60.i, %bb.d, %bb.e
  %i.cze = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.czf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.czh = load <2 x i16>, ptr %i.k, align 4, !tbaa !92
  %i.czi = uitofp <2 x i16> %i.czh to <2 x float>
  %i.czj = fadd nnan <2 x float> %i.czi, splat (float 5.000000e-01)
  %i.czk = load <2 x float>, ptr %i.cze, align 8, !tbaa !15
  %i.czl = fmul <2 x float> %i.czk, %i.czj
  store <2 x float> %i.czl, ptr %i.czg, align 8, !tbaa !15
  %i.czm = load i32, ptr %0, align 8, !tbaa !191
  %i.czn = and i32 %i.czm, 4
  %.not.i28 = icmp eq i32 %i.czn, 0
  br i1 %.not.i28, label %.peel.begin.i, label %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit

.peel.begin.i:                                    ; preds = %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit
  %i.czo = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.czp = load i32, ptr %i.czo, align 8, !tbaa !147
  %i.czq = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.czr = sext i32 %i.czp to i64
  %i.czs = getelementptr inbounds [32 x i8], ptr %i.czq, i64 %i.czr ; 4 uses
  %i.czt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czs, i64 4 ; 4 uses
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czs, i64 6 ; 4 uses
  %i.czw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.czx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.czy = load i16, ptr %i.czs, align 8, !tbaa !552 ; 3 uses
  %i.czz = zext i16 %i.czy to i32                 ; 2 uses
  %i.daa = lshr i32 %i.czz, 1                     ; 8 uses
  %i.dab = sub nsw i32 %i.czz, %i.daa             ; 2 uses
  %i.dac = load ptr, ptr %i.czt, align 8, !tbaa !152 ; 2 uses
  %.not82.peel.i = icmp eq ptr %i.dac, null
  br i1 %.not82.peel.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.peel.begin.i
  %i.dad = load i16, ptr %i.czu, align 4, !tbaa !550
  %i.dae = zext i16 %i.dad to i32
  %i.daf = load i16, ptr %i.czv, align 2, !tbaa !551
  %i.dag = zext i16 %i.daf to i32
  %i.dah = load i32, ptr %i.g, align 8, !tbaa !178
  %i.dai = mul i32 %i.dah, %i.dag
  %i.daj = add i32 %i.dai, %i.dae
  %i.dak = zext i32 %i.daj to i64
  %i.dal = getelementptr i8, ptr %i.dac, i64 %i.dak ; 2 uses
  %.not115.peel.i = icmp eq i32 %i.daa, 0
  br i1 %.not115.peel.i, label %.preheader98.peel.i, label %.lr.ph.preheader.peel.i

.lr.ph.preheader.peel.i:                          ; preds = %bb.f
  %i.dam = zext nneg i32 %i.daa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dal, i8 0, i64 %i.dam, i1 false), !tbaa !26
  br label %.preheader98.peel.i

.preheader98.peel.i:                              ; preds = %.lr.ph.preheader.peel.i, %bb.f
  %.not117.peel.i = icmp eq i16 %i.czy, 0
  br i1 %.not117.peel.i, label %.peel.next.i, label %.lr.ph106.peel.i

.lr.ph106.peel.i:                                 ; preds = %.preheader98.peel.i
  %i.dan = zext nneg i32 %i.daa to i64
  %i.dao = getelementptr inbounds nuw i8, ptr %i.dal, i64 %i.dan
  %i.dap = tail call i32 @llvm.umax.i32(i32 %i.dab, i32 1)
  %umax.peel.i = zext i32 %i.dap to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dao, i8 0, i64 %umax.peel.i, i1 false), !tbaa !26
  br label %.peel.next.i

bb.g:                                             ; preds = %.peel.begin.i
  %i.daq = load ptr, ptr %i.czx, align 8, !tbaa !153
  %i.dar = load i16, ptr %i.czu, align 4, !tbaa !550
  %i.das = zext i16 %i.dar to i32
  %i.dat = load i16, ptr %i.czv, align 2, !tbaa !551
  %i.dau = zext i16 %i.dat to i32
  %i.dav = load i32, ptr %i.g, align 8, !tbaa !178
  %i.daw = mul i32 %i.dav, %i.dau
  %i.dax = add i32 %i.daw, %i.das
  %i.day = zext i32 %i.dax to i64
  %i.daz = getelementptr [4 x i8], ptr %i.daq, i64 %i.day ; 2 uses
  %.not118.peel.i = icmp eq i32 %i.daa, 0
  br i1 %.not118.peel.i, label %.preheader.peel.i, label %.lr.ph108.preheader.peel.i

.lr.ph108.preheader.peel.i:                       ; preds = %bb.g
  %i.dba = add nsw i32 %i.daa, -1
  %i.dbb = zext nneg i32 %i.dba to i64
  %i.dbc = shl nuw nsw i64 %i.dbb, 2
  %i.dbd = add nuw nsw i64 %i.dbc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.daz, i8 0, i64 %i.dbd, i1 false), !tbaa !112
  br label %.preheader.peel.i

.preheader.peel.i:                                ; preds = %.lr.ph108.preheader.peel.i, %bb.g
  %.not120.peel.i = icmp eq i16 %i.czy, 0
  br i1 %.not120.peel.i, label %.peel.next.i, label %.lr.ph112.peel.i

.lr.ph112.peel.i:                                 ; preds = %.preheader.peel.i
  %i.dbe = zext nneg i32 %i.daa to i64
  %i.dbf = getelementptr inbounds nuw [4 x i8], ptr %i.daz, i64 %i.dbe
  %i.dbg = tail call i32 @llvm.umax.i32(i32 %i.dab, i32 1)
  %umax127.peel.i = zext i32 %i.dbg to i64
  %i.dbh = shl nuw nsw i64 %umax127.peel.i, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dbf, i8 0, i64 %i.dbh, i1 false), !tbaa !112
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph112.peel.i, %.preheader.peel.i, %.lr.ph106.peel.i, %.preheader98.peel.i
  %i.dbi = load i16, ptr %i.czu, align 4, !tbaa !550 ; 2 uses
  %i.dbj = zext i16 %i.dbi to i32
  %i.dbk = add nuw nsw i32 %i.daa, %i.dbj         ; 2 uses
  %i.dbl = add nsw i32 %i.dbk, -1
  %i.dbm = uitofp i32 %i.dbl to float
  %i.dbn = load i16, ptr %i.czv, align 2, !tbaa !551 ; 3 uses
  %i.dbo = zext i16 %i.dbn to i32
  %i.dbp = uitofp i16 %i.dbn to float
  %.val88.peel.i = load float, ptr %i.cze, align 8, !tbaa !89 ; 2 uses
  %.val89.peel.i = load float, ptr %i.czf, align 4, !tbaa !90 ; 2 uses
  %i.dbq = fmul float %.val88.peel.i, %i.dbm
  %i.dbr = fmul float %.val89.peel.i, %i.dbp
  %i.dbs = add nuw nsw i32 %i.dbk, 1
  %i.dbt = uitofp nneg i32 %i.dbs to float
  %i.dbu = add nuw nsw i32 %i.dbo, 1
  %i.dbv = uitofp nneg i32 %i.dbu to float
  %i.dbw = fmul float %.val88.peel.i, %i.dbt
  %i.dbx = fmul float %.val89.peel.i, %i.dbv
  %i.dby = fadd float %i.dbr, %i.dbx
  %i.dbz = fmul float %i.dby, 5.000000e-01        ; 2 uses
  store float %i.dbq, ptr %i.czw, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.dbz, ptr %.sroa.4.0..sroa_idx.peel.i, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %i.dbw, ptr %.sroa.5.0..sroa_idx.peel.i, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %i.dbz, ptr %.sroa.6.0..sroa_idx.peel.i, align 4, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.peel.next.i
  %i.dca = phi i16 [ %i.dbn, %.peel.next.i ], [ %i.ddu, %.loopexit.i ] ; 2 uses
  %i.dcb = phi i16 [ %i.dbi, %.peel.next.i ], [ %i.ddp, %.loopexit.i ] ; 2 uses
  %indvar.i = phi i64 [ 1, %.peel.next.i ], [ %indvar.next.i, %.loopexit.i ] ; 7 uses
  %i.dcc = shl nuw nsw i64 %indvar.i, 2
  %i.dcd = load i16, ptr %i.czs, align 8, !tbaa !552
  %i.dce = zext i16 %i.dcd to i32                 ; 4 uses
  %i.dcf = trunc nuw nsw i64 %indvar.i to i32     ; 5 uses
  %i.dcg = sub nsw i32 %i.dce, %i.dcf
  %i.dch = lshr i32 %i.dcg, 1                     ; 7 uses
  %i.dci = add nuw i32 %i.dch, %i.dcf             ; 3 uses
  %i.dcj = sub i32 %i.dce, %i.dci                 ; 2 uses
  %i.dck = load ptr, ptr %i.czt, align 8, !tbaa !152 ; 2 uses
  %.not82.i = icmp eq ptr %i.dck, null
  br i1 %.not82.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dcl = zext i16 %i.dcb to i32
  %i.dcm = zext i16 %i.dca to i32
  %i.dcn = add nuw i32 %i.dcf, %i.dcm
  %i.dco = load i32, ptr %i.g, align 8, !tbaa !178
  %i.dcp = mul i32 %i.dco, %i.dcn
  %i.dcq = add i32 %i.dcp, %i.dcl
  %i.dcr = zext i32 %i.dcq to i64
  %i.dcs = getelementptr i8, ptr %i.dck, i64 %i.dcr ; 2 uses
  %.not115.i = icmp eq i32 %i.dch, 0
  br i1 %.not115.i, label %.preheader98.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.dct = zext nneg i32 %i.dch to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dcs, i8 0, i64 %i.dct, i1 false), !tbaa !26
  br label %.preheader98.i

.preheader98.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i
  %.pre-phi = phi i64 [ %i.dct, %.lr.ph.preheader.i ], [ 0, %bb.i ]
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.dcs, i64 %.pre-phi ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dcu, i8 -1, i64 %indvar.i, i1 false), !tbaa !26
  %.not117.i = icmp eq i32 %i.dci, %i.dce
  br i1 %.not117.i, label %.loopexit.i, label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.preheader98.i
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcu, i64 %indvar.i
  %i.dcw = zext i32 %i.dcj to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dcv, i8 0, i64 %i.dcw, i1 false), !tbaa !26
  br label %.loopexit.i

bb.j:                                             ; preds = %bb.h
  %i.dcx = load ptr, ptr %i.czx, align 8, !tbaa !153
  %i.dcy = zext i16 %i.dcb to i32
  %i.dcz = zext i16 %i.dca to i32
  %i.dda = add nuw i32 %i.dcf, %i.dcz
  %i.ddb = load i32, ptr %i.g, align 8, !tbaa !178
  %i.ddc = mul i32 %i.ddb, %i.dda
  %i.ddd = add i32 %i.ddc, %i.dcy
  %i.dde = zext i32 %i.ddd to i64
  %i.ddf = getelementptr [4 x i8], ptr %i.dcx, i64 %i.dde ; 2 uses
  %.not118.i = icmp eq i32 %i.dch, 0
  br i1 %.not118.i, label %.preheader.i, label %.lr.ph108.preheader.i

.lr.ph108.preheader.i:                            ; preds = %bb.j
  %i.ddg = add nsw i32 %i.dch, -1
  %i.ddh = zext nneg i32 %i.ddg to i64
  %i.ddi = shl nuw nsw i64 %i.ddh, 2
  %i.ddj = add nuw nsw i64 %i.ddi, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ddf, i8 0, i64 %i.ddj, i1 false), !tbaa !112
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph108.preheader.i, %bb.j
  %i.ddk = zext nneg i32 %i.dch to i64
  %i.ddl = getelementptr inbounds nuw [4 x i8], ptr %i.ddf, i64 %i.ddk ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ddl, i8 -1, i64 %i.dcc, i1 false), !tbaa !112
  %.not120.i = icmp eq i32 %i.dci, %i.dce
  br i1 %.not120.i, label %.loopexit.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.preheader.i
  %i.ddm = getelementptr inbounds nuw [4 x i8], ptr %i.ddl, i64 %indvar.i
  %i.ddn = zext i32 %i.dcj to i64
  %i.ddo = shl nuw nsw i64 %i.ddn, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ddm, i8 0, i64 %i.ddo, i1 false), !tbaa !112
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph112.i, %.preheader.i, %.lr.ph106.i, %.preheader98.i
  %i.ddp = load i16, ptr %i.czu, align 4, !tbaa !550 ; 2 uses
  %i.ddq = zext i16 %i.ddp to i32
  %i.ddr = add nuw i32 %i.dch, %i.ddq             ; 2 uses
  %i.dds = add i32 %i.ddr, -1
  %i.ddt = uitofp i32 %i.dds to float
  %i.ddu = load i16, ptr %i.czv, align 2, !tbaa !551 ; 2 uses
  %i.ddv = zext i16 %i.ddu to i32
  %i.ddw = add nuw nsw i32 %i.ddv, %i.dcf         ; 2 uses
  %i.ddx = uitofp nneg i32 %i.ddw to float
  %.val88.i = load float, ptr %i.cze, align 8, !tbaa !89 ; 2 uses
  %.val89.i = load float, ptr %i.czf, align 4, !tbaa !90 ; 2 uses
  %i.ddy = fmul float %.val88.i, %i.ddt
  %i.ddz = fmul float %.val89.i, %i.ddx
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 3 uses
  %i.dea = trunc nuw nsw i64 %indvar.next.i to i32
  %i.deb = add nuw i32 %i.ddr, %i.dea
  %i.dec = uitofp i32 %i.deb to float
  %i.ded = add nuw nsw i32 %i.ddw, 1
  %i.dee = uitofp nneg i32 %i.ded to float
  %i.def = fmul float %.val88.i, %i.dec
  %i.deg = fmul float %.val89.i, %i.dee
  %i.deh = fadd float %i.ddz, %i.deg
  %i.dei = fmul float %i.deh, 5.000000e-01        ; 2 uses
  %i.dej = getelementptr inbounds nuw [16 x i8], ptr %i.czw, i64 %indvar.i ; 4 uses
  store float %i.ddy, ptr %i.dej, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dej, i64 4
  store float %i.dei, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dej, i64 8
  store float %i.def, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dej, i64 12
  store float %i.dei, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !15
  %exitcond.not.i = icmp eq i64 %indvar.next.i, 64
  br i1 %exitcond.not.i, label %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit, label %bb.h, !llvm.loop !546

_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit: ; preds = %.loopexit.i, %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit
  %i.dek = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.del = load i32, ptr %i.dek, align 8, !tbaa !553 ; 2 uses
  %i.dem = icmp sgt i32 %i.del, 0
  br i1 %i.dem, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.m, %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit
  %i.den = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.deo = load i32, ptr %i.den, align 8, !tbaa !160 ; 2 uses
  %i.dep = icmp sgt i32 %i.deo, 0
  br i1 %i.dep, label %.lr.ph34, label %._crit_edge

.lr.ph34:                                         ; preds = %.preheader
  %i.deq = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.n

.lr.ph:                                           ; preds = %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit, %bb.m
  %i.der = phi i32 [ %i.dgc, %bb.m ], [ %i.del, %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit ] ; 2 uses
  %i.des = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.det = getelementptr inbounds nuw [32 x i8], ptr %i.des, i64 %indvars.iv ; 5 uses
  %i.deu = getelementptr inbounds nuw i8, ptr %i.det, i64 24
  %i.dev = load ptr, ptr %i.deu, align 8, !tbaa !554 ; 2 uses
  %i.dew = icmp eq ptr %i.dev, null
  br i1 %i.dew, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.dex = getelementptr inbounds nuw i8, ptr %i.det, i64 8
  %i.dey = load i32, ptr %i.dex, align 8, !tbaa !555 ; 2 uses
  %i.dez = icmp eq i32 %i.dey, 0
  br i1 %i.dez, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dfa = trunc i32 %i.dey to i16
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.det, i64 16
  %i.dfc = load <4 x i16>, ptr %i.det, align 8, !tbaa !92 ; 3 uses
  %i.dfd = uitofp <4 x i16> %i.dfc to <4 x float> ; 2 uses
  %i.dfe = load <2 x float>, ptr %i.cze, align 8, !tbaa !15
  %i.dff = shufflevector <2 x float> %i.dfe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfg = shufflevector <4 x i16> %i.dfc, <4 x i16> poison, <2 x i32> <i32 2, i32 3>
  %i.dfh = zext <2 x i16> %i.dfg to <2 x i32>
  %i.dfi = shufflevector <4 x i16> %i.dfc, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.dfj = zext <2 x i16> %i.dfi to <2 x i32>
  %i.dfk = add nuw nsw <2 x i32> %i.dfj, %i.dfh
  %i.dfl = shufflevector <2 x i32> %i.dfk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dfm = uitofp <4 x i32> %i.dfl to <4 x float>
  %i.dfn = shufflevector <4 x float> %i.dfd, <4 x float> %i.dfm, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dfo = fmul <4 x float> %i.dff, %i.dfn        ; 4 uses
  %i.dfp = load <2 x float>, ptr %i.dfb, align 8, !tbaa !15 ; 3 uses
  %i.dfq = shufflevector <4 x float> %i.dfd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dfr = fadd <2 x float> %i.dfp, %i.dfq        ; 2 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.det, i64 12
  %i.dft = load float, ptr %i.dfs, align 4, !tbaa !556
  %i.dfu = extractelement <4 x float> %i.dfo, i64 0
  %i.dfv = extractelement <4 x float> %i.dfo, i64 1
  %i.dfw = extractelement <4 x float> %i.dfo, i64 2
  %i.dfx = extractelement <4 x float> %i.dfo, i64 3
  %i.dfy = extractelement <2 x float> %i.dfr, i64 0
  %i.dfz = extractelement <2 x float> %i.dfr, i64 1
  %i.dga = extractelement <2 x float> %i.dfp, i64 0
  %i.dgb = extractelement <2 x float> %i.dfp, i64 1
  tail call void @_ZN6ImFont8AddGlyphEPK12ImFontConfigtfffffffff(ptr noundef nonnull align 8 dereferenceable(110) %i.dev, ptr noundef null, i16 noundef zeroext %i.dfa, float noundef %i.dga, float noundef %i.dgb, float noundef %i.dfy, float noundef %i.dfz, float noundef %i.dfu, float noundef %i.dfv, float noundef %i.dfw, float noundef %i.dfx, float noundef %i.dft)
  %.pre = load i32, ptr %i.dek, align 8, !tbaa !553
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.k, %bb.l
  %i.dgc = phi i32 [ %i.der, %.lr.ph ], [ %i.der, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dgd = sext i32 %i.dgc to i64
  %i.dge = icmp slt i64 %indvars.iv.next, %i.dgd
  br i1 %i.dge, label %.lr.ph, label %.preheader, !llvm.loop !547

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.dgf = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.dgf, align 1, !tbaa !158
  ret void

bb.n:                                             ; preds = %.lr.ph34, %bb.p
  %i.dgg = phi i32 [ %i.deo, %.lr.ph34 ], [ %i.dgn, %bb.p ]
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38, %bb.p ] ; 2 uses
  %i.dgh = load ptr, ptr %i.deq, align 8, !tbaa !151
  %i.dgi = getelementptr inbounds nuw [8 x i8], ptr %i.dgh, i64 %indvars.iv37
  %i.dgj = load ptr, ptr %i.dgi, align 8, !tbaa !157 ; 2 uses
  %i.dgk = getelementptr inbounds nuw i8, ptr %i.dgj, i64 88
  %i.dgl = load i8, ptr %i.dgk, align 8, !tbaa !184, !range !162, !noundef !163
  %i.dgm = trunc nuw i8 %i.dgl to i1
  br i1 %i.dgm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN6ImFont16BuildLookupTableEv(ptr noundef nonnull align 8 dereferenceable(110) %i.dgj)
  %.pre40 = load i32, ptr %i.den, align 8, !tbaa !160
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.dgn = phi i32 [ %i.dgg, %bb.n ], [ %.pre40, %bb.o ] ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.dgo = sext i32 %i.dgn to i64
  %i.dgp = icmp slt i64 %indvars.iv.next38, %i.dgo
  br i1 %i.dgp, label %bb.n, label %._crit_edge, !llvm.loop !548
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6ImFont8AddGlyphEPK12ImFontConfigtfffffffff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(110) initializes((88, 89)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i16 noundef zeroext %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11) local_unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !259 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !135 ; 2 uses
  %i.e = fcmp olt float %11, %i.b
  %i.f = fcmp ogt float %11, %i.d
  %i.g = select i1 %i.f, float %i.d, float %11
  %i.h = select i1 %i.e, float %i.b, float %i.g   ; 4 uses
  %i.i = fcmp une float %i.h, %11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !170, !range !162
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  br i1 %i.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = fsub float %i.h, %11
  %i.n = fmul float %i.m, 5.000000e-01            ; 2 uses
  %i.o = fptosi float %i.n to i32
  %i.p = sitofp i32 %i.o to float
  %i.q = select i1 %i.l, float %i.p, float %i.n   ; 2 uses
  %i.r = fadd float %3, %i.q
  %i.s = fadd float %5, %i.q
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %.052 = phi float [ %i.s, %bb.c ], [ %5, %bb.b ]
  %.0 = phi float [ %i.r, %bb.c ], [ %3, %bb.b ]
end_hunk_1
