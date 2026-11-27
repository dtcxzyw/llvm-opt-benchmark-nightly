Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9block?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 48
begin_hunk_0_@ff_vp9_decode_block:bb.a
  %indvars.iv.next1757.i.1 = add nuw nsw i64 %indvars.iv1756.i, 2 ; 2 uses
  %niter1546.next.1 = add i64 %niter1546, 2       ; 2 uses
  %niter1546.ncmp.1 = icmp eq i64 %niter1546.next.1, %unroll_iter1545
  br i1 %niter1546.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph1694.i, !llvm.loop !42

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph1694.i
  br i1 %lcmp.mod1543.not, label %.loopexit.i, label %.lr.ph1694.i.epil.preheader

.lr.ph1694.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph1694.i.preheader
  %indvars.iv1756.i.epil.init = phi i64 [ 0, %.lr.ph1694.i.preheader ], [ %indvars.iv.next1757.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1544)
  %i.dsi = load i8, ptr %i.dqc, align 1, !tbaa !13
  %i.dsj = getelementptr inbounds nuw [12 x i8], ptr %i.dqr, i64 %indvars.iv1756.i.epil.init ; 3 uses
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.dsj, i64 8
  store i8 %i.dsi, ptr %i.dsk, align 4, !tbaa !13
  %i.dsl = getelementptr inbounds nuw i8, ptr %i.dsj, i64 9
  store i8 -1, ptr %i.dsl, align 1, !tbaa !13
  %i.dsm = load i32, ptr %i.dqe, align 4, !tbaa !13
  store i32 %i.dsm, ptr %i.dsj, align 4, !tbaa !13
  br label %.loopexit.i

.loopexit.i.loopexit1486.unr-lcssa:               ; preds = %.lr.ph1692.i
  br i1 %lcmp.mod1537.not, label %.loopexit.i, label %.lr.ph1692.i.epil.preheader

.lr.ph1692.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit1486.unr-lcssa, %.lr.ph1692.i.preheader
  %indvars.iv1751.i.epil.init = phi i64 [ 0, %.lr.ph1692.i.preheader ], [ %indvars.iv.next1752.i.1, %.loopexit.i.loopexit1486.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1538)
  %i.dsn = load i8, ptr %i.dqc, align 1, !tbaa !13
  %i.dso = getelementptr inbounds nuw [12 x i8], ptr %i.dqr, i64 %indvars.iv1751.i.epil.init ; 4 uses
  %i.dsp = getelementptr inbounds nuw i8, ptr %i.dso, i64 8
  store i8 %i.dsn, ptr %i.dsp, align 4, !tbaa !13
  %i.dsq = load i8, ptr %i.dqd, align 4, !tbaa !13
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dso, i64 9
  store i8 %i.dsq, ptr %i.dsr, align 1, !tbaa !13
  %i.dss = load i32, ptr %i.dqe, align 4, !tbaa !13
  store i32 %i.dss, ptr %i.dso, align 4, !tbaa !13
  %i.dst = load i32, ptr %i.dqf, align 4, !tbaa !13
  %i.dsu = getelementptr inbounds nuw i8, ptr %i.dso, i64 4
  store i32 %i.dst, ptr %i.dsu, align 4, !tbaa !13
  br label %.loopexit.i

.loopexit.i.loopexit1487.unr-lcssa:               ; preds = %.lr.ph1690.i
  br i1 %lcmp.mod1533.not, label %.loopexit.i, label %.lr.ph1690.i.epil.preheader

.lr.ph1690.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit1487.unr-lcssa, %.lr.ph1690.i.preheader
  %indvars.iv1746.i.epil.init = phi i64 [ 0, %.lr.ph1690.i.preheader ], [ %indvars.iv.next1747.i.3, %.loopexit.i.loopexit1487.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1534)
  br label %.lr.ph1690.i.epil

.lr.ph1690.i.epil:                                ; preds = %.lr.ph1690.i.epil, %.lr.ph1690.i.epil.preheader
  %indvars.iv1746.i.epil = phi i64 [ %indvars.iv.next1747.i.epil, %.lr.ph1690.i.epil ], [ %indvars.iv1746.i.epil.init, %.lr.ph1690.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1690.i.epil ], [ 0, %.lr.ph1690.i.epil.preheader ]
  %i.dsv = getelementptr inbounds nuw [12 x i8], ptr %i.dqr, i64 %indvars.iv1746.i.epil ; 2 uses
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.dsv, i64 8
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.dsv, i64 9
  store i8 -1, ptr %i.dsx, align 1, !tbaa !13
  store i8 -1, ptr %i.dsw, align 4, !tbaa !13
  %indvars.iv.next1747.i.epil = add nuw nsw i64 %indvars.iv1746.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1532
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph1690.i.epil, !llvm.loop !43

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit1487.unr-lcssa, %.lr.ph1690.i.epil, %.lr.ph1692.i.epil.preheader, %.loopexit.i.loopexit1486.unr-lcssa, %.lr.ph1694.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader.i, %.preheader1568.i, %.preheader1570.i
  %i.dsy = add nuw nsw i32 %.111941695.i, 1       ; 2 uses
  %exitcond1761.not.i = icmp eq i32 %i.dsy, %i.bc
  br i1 %exitcond1761.not.i, label %decode_mode.exit, label %bb.nv, !llvm.loop !44

decode_mode.exit:                                 ; preds = %.loopexit.i, %.preheader1572.i, %.thread1566.i
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.dta = load i32, ptr %i.dsz, align 4, !tbaa !229 ; 3 uses
  %i.dtb = getelementptr inbounds nuw i8, ptr %i.a, i64 3924 ; 6 uses
  %i.dtc = load i8, ptr %i.dtb, align 4, !tbaa !243
  %.not = icmp eq i8 %i.dtc, 0
  br i1 %.not, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %decode_mode.exit
  %i.dtd = shl nuw nsw i32 %i.l, 1
  %i.dte = shl nuw i32 1, %i.dta
  %i.dtf = icmp eq i32 %i.dtd, %i.dte
  br i1 %i.dtf, label %bb.oa, label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %decode_mode.exit
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.a, i64 3925
  %i.dth = load i8, ptr %i.dtg, align 1, !tbaa !244
  %.not440 = icmp eq i8 %i.dth, 0
  br i1 %.not440, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.dti = shl nuw nsw i32 %i.o, 1
  %i.dtj = shl nuw i32 1, %i.dta
  %i.dtk = icmp eq i32 %i.dti, %i.dtj
  %.neg = sext i1 %i.dtk to i32
  br label %bb.oa

bb.oa:                                            ; preds = %bb.ny, %bb.nz, %bb.nx
  %.neg441 = phi i32 [ -1, %bb.nx ], [ 0, %bb.ny ], [ %.neg, %bb.nz ]
  %i.dtl = add i32 %.neg441, %i.dta
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.dtl, ptr %i.dtm, align 4, !tbaa !245
  %i.dtn = getelementptr inbounds nuw i8, ptr %0, i64 77144 ; 4 uses
  %i.dto = load ptr, ptr %i.dtn, align 8, !tbaa !246 ; 2 uses
  %.not442 = icmp eq ptr %i.dto, null
  br i1 %.not442, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.dtp = getelementptr inbounds nuw i8, ptr %0, i64 77152 ; 6 uses
  %i.dtq = load i32, ptr %i.dtp, align 16, !tbaa !247
  %i.dtr = zext i32 %i.dtq to i64
  %i.dts = getelementptr inbounds nuw [4 x i8], ptr %i.dto, i64 %i.dtr ; 2 uses
  %i.dtt = load i32, ptr %i.dts, align 4
  %i.dtu = and i32 %1, 8191
  %i.dtv = and i32 %i.dtt, -8192
  %i.dtw = or disjoint i32 %i.dtv, %i.dtu
  store i32 %i.dtw, ptr %i.dts, align 4
  %i.dtx = load ptr, ptr %i.dtn, align 8, !tbaa !246
  %i.dty = load i32, ptr %i.dtp, align 16, !tbaa !247
  %i.dtz = zext i32 %i.dty to i64
  %i.dua = getelementptr inbounds nuw [4 x i8], ptr %i.dtx, i64 %i.dtz ; 2 uses
  %i.dub = load i32, ptr %i.dua, align 4
  %i.duc = shl i32 %2, 13
  %i.dud = and i32 %i.duc, 67100672
  %i.due = and i32 %i.dub, -67100673
  %i.duf = or disjoint i32 %i.due, %i.dud
  store i32 %i.duf, ptr %i.dua, align 4
  %i.dug = zext i8 %i.k to i64
  %i.duh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.dug
  %i.dui = load i8, ptr %i.duh, align 1, !tbaa !13
  %i.duj = zext i8 %i.dui to i32
  %i.duk = load ptr, ptr %i.dtn, align 8, !tbaa !246
  %i.dul = load i32, ptr %i.dtp, align 16, !tbaa !247
  %i.dum = zext i32 %i.dul to i64
  %i.dun = getelementptr inbounds nuw [4 x i8], ptr %i.duk, i64 %i.dum ; 2 uses
  %i.duo = load i32, ptr %i.dun, align 4
  %i.dup = shl i32 %i.duj, 26
  %i.duq = and i32 %i.dup, 201326592
  %i.dur = and i32 %i.duo, -201326593
  %i.dus = or disjoint i32 %i.dur, %i.duq
  store i32 %i.dus, ptr %i.dun, align 4
  %i.dut = zext i8 %i.n to i64
  %i.duu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.dut
  %i.duv = load i8, ptr %i.duu, align 1, !tbaa !13
  %i.duw = zext i8 %i.duv to i32
  %i.dux = load ptr, ptr %i.dtn, align 8, !tbaa !246
  %i.duy = load i32, ptr %i.dtp, align 16, !tbaa !247
  %i.duz = zext i32 %i.duy to i64
  %i.dva = getelementptr inbounds nuw [4 x i8], ptr %i.dux, i64 %i.duz ; 2 uses
  %i.dvb = load i32, ptr %i.dva, align 4
  %i.dvc = shl i32 %i.duw, 28
  %i.dvd = and i32 %i.dvc, 805306368
  %i.dve = and i32 %i.dvb, -805306369
  %i.dvf = or disjoint i32 %i.dve, %i.dvd
  store i32 %i.dvf, ptr %i.dva, align 4
  %i.dvg = load i32, ptr %i.dtp, align 16, !tbaa !247
  %i.dvh = add i32 %i.dvg, 1
  store i32 %i.dvh, ptr %i.dtp, align 16, !tbaa !247
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  %i.dvj = load i8, ptr %i.dvi, align 2, !tbaa !219
  %.not443 = icmp eq i8 %i.dvj, 0
  br i1 %.not443, label %bb.od, label %bb.pb

bb.od:                                            ; preds = %bb.oc
  %i.dvk = icmp eq i8 %i.g, 1
  %i.dvl = load ptr, ptr %0, align 16, !tbaa !156 ; 12 uses
  %i.dvm = load ptr, ptr %i.b, align 8, !tbaa !157 ; 13 uses
  %i.dvn = load i32, ptr %i.r, align 8, !tbaa !188 ; 2 uses
  %i.dvo = load i32, ptr %i.u, align 16, !tbaa !190 ; 4 uses
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvl, i64 12691 ; 3 uses
  %i.dvq = getelementptr inbounds nuw i8, ptr %i.dvm, i64 52
  %i.dvr = load i32, ptr %i.dvq, align 4, !tbaa !229 ; 4 uses
  %i.dvs = zext i32 %i.dvr to i64                 ; 4 uses
  %i.dvt = getelementptr inbounds nuw [1584 x i8], ptr %i.dvp, i64 %i.dvs
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.dvm, i64 1 ; 3 uses
  %i.dvv = load i8, ptr %i.dvu, align 1, !tbaa !223
  %.not.i.i503 = icmp eq i8 %i.dvv, 0
  %i.dvw = zext i1 %.not.i.i503 to i64            ; 3 uses
  %i.dvx = getelementptr inbounds nuw [396 x i8], ptr %i.dvt, i64 %i.dvw ; 8 uses
  %i.dvy = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 3 uses
  %i.dvz = getelementptr inbounds nuw [1728 x i8], ptr %i.dvy, i64 %i.dvs
  %i.dwa = getelementptr inbounds nuw [432 x i8], ptr %i.dvz, i64 %i.dvw ; 8 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %0, i64 8700 ; 3 uses
  %i.dwc = getelementptr inbounds nuw [1152 x i8], ptr %i.dwb, i64 %i.dvs
  %i.dwd = getelementptr inbounds nuw [288 x i8], ptr %i.dwc, i64 %i.dvw ; 8 uses
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.dvm, i64 48 ; 3 uses
  %i.dwf = load i32, ptr %i.dwe, align 4, !tbaa !200
  %i.dwg = zext i32 %i.dwf to i64
  %i.dwh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_bwh_tab, i64 26), i64 %i.dwg ; 2 uses
  %i.dwi = load i8, ptr %i.dwh, align 2, !tbaa !13
  %i.dwj = zext i8 %i.dwi to i32
  %i.dwk = shl nuw nsw i32 %i.dwj, 1              ; 15 uses
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dwh, i64 1
  %i.dwm = load i8, ptr %i.dwl, align 1, !tbaa !13
  %i.dwn = zext i8 %i.dwm to i32
  %i.dwo = shl nuw nsw i32 %i.dwn, 1              ; 7 uses
  %i.dwp = getelementptr inbounds nuw i8, ptr %i.dvl, i64 3964
  %i.dwq = load i32, ptr %i.dwp, align 4, !tbaa !194
  %i.dwr = sub i32 %i.dwq, %i.dvo
  %i.dws = shl i32 %i.dwr, 1                      ; 17 uses
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.dws, i32 %i.dwk) ; 32 uses
  %i.dwt = getelementptr inbounds nuw i8, ptr %i.dvl, i64 3960
  %i.dwu = load i32, ptr %i.dwt, align 8, !tbaa !196
  %i.dwv = sub i32 %i.dwu, %i.dvn
  %i.dww = shl i32 %i.dwv, 1                      ; 9 uses
  %i.dwx = tail call i32 @llvm.umin.i32(i32 %i.dww, i32 %i.dwo) ; 38 uses
  %i.dwy = load i8, ptr %i.dvm, align 4, !tbaa !205
  %i.dwz = zext i8 %i.dwy to i64
  %i.dxa = getelementptr inbounds nuw [26 x i8], ptr %i.dvl, i64 %i.dwz ; 3 uses
  %i.dxb = getelementptr inbounds nuw i8, ptr %i.dxa, i64 70 ; 8 uses
  %i.dxc = getelementptr inbounds nuw i8, ptr %i.dvl, i64 44
  %i.dxd = load i8, ptr %i.dxc, align 4, !tbaa !248
  %i.dxe = zext i8 %i.dxd to i32
  %i.dxf = shl nuw nsw i32 %i.dxe, 2
  %i.dxg = add i32 %i.dxf, %i.dvr
  %i.dxh = sext i32 %i.dxg to i64                 ; 2 uses
  %i.dxi = getelementptr inbounds [32 x i8], ptr @ff_vp9_scans, i64 %i.dxh ; 8 uses
  %i.dxj = getelementptr inbounds [32 x i8], ptr @ff_vp9_scans_nb, i64 %i.dxh ; 8 uses
  %i.dxk = getelementptr inbounds nuw i8, ptr %i.dvm, i64 56 ; 5 uses
  %i.dxl = load i32, ptr %i.dxk, align 4, !tbaa !245
  %i.dxm = zext i32 %i.dxl to i64                 ; 3 uses
  %i.dxn = getelementptr inbounds nuw [32 x i8], ptr @ff_vp9_scans, i64 %i.dxm
  %i.dxo = load ptr, ptr %i.dxn, align 16, !tbaa !249 ; 8 uses
  %i.dxp = getelementptr inbounds nuw [32 x i8], ptr @ff_vp9_scans_nb, i64 %i.dxm
  %i.dxq = load ptr, ptr %i.dxp, align 16, !tbaa !249 ; 8 uses
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.dvl, i64 19048
  %i.dxs = load ptr, ptr %i.dxr, align 8, !tbaa !250
  %i.dxt = shl nsw i32 %i.dvo, 1
  %i.dxu = sext i32 %i.dxt to i64
  %i.dxv = getelementptr inbounds i8, ptr %i.dxs, i64 %i.dxu ; 40 uses
  %i.dxw = getelementptr inbounds nuw i8, ptr %0, i64 52192
  %i.dxx = and i32 %i.dvn, 7                      ; 3 uses
  %i.dxy = shl nuw nsw i32 %i.dxx, 1
  %i.dxz = zext nneg i32 %i.dxy to i64
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dxw, i64 %i.dxz ; 72 uses
  %i.dyb = getelementptr inbounds nuw [16 x i8], ptr @decode_coeffs.band_counts, i64 %i.dvs ; 8 uses
  %i.dyc = getelementptr inbounds nuw [16 x i8], ptr @decode_coeffs.band_counts, i64 %i.dxm ; 8 uses
  br i1 %i.dvk, label %bb.oe, label %bb.oo

bb.oe:                                            ; preds = %bb.od
  switch i32 %i.dvr, label %.loopexit45.i [
    i32 0, label %.preheader44.i
    i32 1, label %.preheader52.i
    i32 2, label %.preheader64.i
    i32 3, label %.preheader76.i
  ]

.preheader76.i:                                   ; preds = %bb.oe
  %.not233.i = icmp eq i32 %i.dwx, 0              ; 3 uses
  br i1 %.not233.i, label %.preheader75.i, label %.lr.ph.preheader.i504

.lr.ph.preheader.i504:                            ; preds = %.preheader76.i
  %i.dyd = zext nneg i32 %i.dwx to i64
  %i.dye = add nsw i64 %i.dyd, -2                 ; 2 uses
  %i.dyf = lshr i64 %i.dye, 3
  %i.dyg = add nuw nsw i64 %i.dyf, 1              ; 2 uses
  %xtraiter1655 = and i64 %i.dyg, 3               ; 3 uses
  %i.dyh = icmp ult i64 %i.dye, 24
  br i1 %i.dyh, label %.lr.ph.i505.epil.preheader, label %.lr.ph.preheader.i504.new

.lr.ph.preheader.i504.new:                        ; preds = %.lr.ph.preheader.i504
  %unroll_iter1659 = and i64 %i.dyg, 4611686018427387900
  br label %.lr.ph.i505

.preheader64.i:                                   ; preds = %bb.oe
  %.not241.i = icmp eq i32 %i.dwx, 0              ; 3 uses
  br i1 %.not241.i, label %.preheader63.i, label %.lr.ph99.preheader.i

.lr.ph99.preheader.i:                             ; preds = %.preheader64.i
  %i.dyi = zext nneg i32 %i.dwx to i64
  %i.dyj = add nsw i64 %i.dyi, -2                 ; 2 uses
  %i.dyk = lshr i64 %i.dyj, 2
  %i.dyl = add nuw nsw i64 %i.dyk, 1              ; 2 uses
  %xtraiter1667 = and i64 %i.dyl, 3               ; 3 uses
  %i.dym = icmp ult i64 %i.dyj, 12
  br i1 %i.dym, label %.lr.ph99.i.epil.preheader, label %.lr.ph99.preheader.i.new

.lr.ph99.preheader.i.new:                         ; preds = %.lr.ph99.preheader.i
  %unroll_iter1671 = and i64 %i.dyl, 9223372036854775804
  br label %.lr.ph99.i

.preheader52.i:                                   ; preds = %bb.oe
  %.not249.i = icmp eq i32 %i.dwx, 0              ; 3 uses
  br i1 %.not249.i, label %.preheader51.i, label %.lr.ph124.preheader.i

.lr.ph124.preheader.i:                            ; preds = %.preheader52.i
  %i.dyn = zext nneg i32 %i.dwx to i64            ; 3 uses
  %i.dyo = add nsw i64 %i.dyn, -2                 ; 2 uses
  %i.dyp = lshr exact i64 %i.dyo, 1
  %i.dyq = add nuw i64 %i.dyp, 1                  ; 2 uses
  %min.iters.check1371 = icmp ult i64 %i.dyo, 14
  br i1 %min.iters.check1371, label %.lr.ph124.i.preheader, label %vector.ph1372

vector.ph1372:                                    ; preds = %.lr.ph124.preheader.i
  %n.vec1373 = and i64 %i.dyq, -8                 ; 3 uses
  %i.dyr = shl i64 %n.vec1373, 1
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1372
  %index1375 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1377, %vector.body1374 ] ; 2 uses
  %i.dys = shl nuw i64 %index1375, 1              ; 8 uses
  %i.dyt = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys ; 2 uses
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyu, i64 2
  %i.dyw = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys
  %i.dyx = getelementptr inbounds nuw i8, ptr %i.dyw, i64 4
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyy, i64 6
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys
  %i.dzb = getelementptr inbounds nuw i8, ptr %i.dza, i64 8
  %i.dzc = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys
  %i.dzd = getelementptr inbounds nuw i8, ptr %i.dzc, i64 10
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.dze, i64 12
  %i.dzg = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.dys
  %i.dzh = getelementptr inbounds nuw i8, ptr %i.dzg, i64 14
  %wide.load1376 = load <8 x i16>, ptr %i.dyt, align 2, !tbaa !13
  %wide.load1376.fr = freeze <8 x i16> %wide.load1376
  %i.dzi = icmp ne <8 x i16> %wide.load1376.fr, zeroinitializer
  %i.dzj = bitcast <8 x i1> %i.dzi to i8          ; 8 uses
  %i.dzk = lshr i8 %i.dzj, 7
  %i.dzl = lshr i8 %i.dzj, 6
  %i.dzm = and i8 %i.dzl, 1
  %i.dzn = lshr i8 %i.dzj, 5
  %i.dzo = and i8 %i.dzn, 1
  %i.dzp = lshr i8 %i.dzj, 4
  %i.dzq = and i8 %i.dzp, 1
  %i.dzr = lshr i8 %i.dzj, 3
  %i.dzs = and i8 %i.dzr, 1
  %i.dzt = lshr i8 %i.dzj, 2
  %i.dzu = and i8 %i.dzt, 1
  %i.dzv = lshr i8 %i.dzj, 1
  %i.dzw = and i8 %i.dzv, 1
  %i.dzx = and i8 %i.dzj, 1
  store i8 %i.dzx, ptr %i.dyt, align 2, !tbaa !13
  store i8 %i.dzw, ptr %i.dyv, align 1, !tbaa !13
  store i8 %i.dzu, ptr %i.dyx, align 1, !tbaa !13
  store i8 %i.dzs, ptr %i.dyz, align 1, !tbaa !13
  store i8 %i.dzq, ptr %i.dzb, align 1, !tbaa !13
  store i8 %i.dzo, ptr %i.dzd, align 1, !tbaa !13
  store i8 %i.dzm, ptr %i.dzf, align 1, !tbaa !13
  store i8 %i.dzk, ptr %i.dzh, align 1, !tbaa !13
  %index.next1377 = add nuw i64 %index1375, 8     ; 2 uses
  %i.dzy = icmp eq i64 %index.next1377, %n.vec1373
  br i1 %i.dzy, label %middle.block1378, label %vector.body1374, !llvm.loop !45

middle.block1378:                                 ; preds = %vector.body1374
  %cmp.n1379 = icmp eq i64 %i.dyq, %n.vec1373
  br i1 %cmp.n1379, label %.preheader51.thread.i, label %.lr.ph124.i.preheader

.lr.ph124.i.preheader:                            ; preds = %.lr.ph124.preheader.i, %middle.block1378
  %indvars.iv366.i.ph = phi i64 [ 0, %.lr.ph124.preheader.i ], [ %i.dyr, %middle.block1378 ]
  br label %.lr.ph124.i

.preheader44.i:                                   ; preds = %bb.oe
  %.not255.i = icmp eq i32 %i.dwx, 0
  br i1 %.not255.i, label %.loopexit45.i, label %.preheader43.lr.ph.i

.preheader43.lr.ph.i:                             ; preds = %.preheader44.i
  %.not256.i = icmp eq i32 %..i.i, 0
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.eaa = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.eab = getelementptr i8, ptr %0, i64 16
  %i.eac = getelementptr inbounds nuw i8, ptr %0, i64 77112
  br i1 %.not256.i, label %.loopexit45.i, label %.preheader43.us.preheader.i

.preheader43.us.preheader.i:                      ; preds = %.preheader43.lr.ph.i
  %wide.trip.count398.i = zext nneg i32 %i.dwx to i64
  %wide.trip.count.i512 = zext nneg i32 %..i.i to i64
  br label %.preheader43.us.i

.preheader43.us.i:                                ; preds = %._crit_edge.us152.i, %.preheader43.us.preheader.i
  %indvars.iv395.i = phi i64 [ 0, %.preheader43.us.preheader.i ], [ %indvars.iv.next396.i, %._crit_edge.us152.i ] ; 2 uses
  %.0.i150.us.i = phi i32 [ 0, %.preheader43.us.preheader.i ], [ %i.ebf, %._crit_edge.us152.i ]
  %.0662.i148.us.i = phi i64 [ 0, %.preheader43.us.preheader.i ], [ %indvars.iv.next391.i, %._crit_edge.us152.i ]
  %i.ead = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv395.i ; 2 uses
  br label %bb.of

bb.of:                                            ; preds = %bb.of, %.preheader43.us.i
  %indvars.iv390.i = phi i64 [ %.0662.i148.us.i, %.preheader43.us.i ], [ %indvars.iv.next391.i, %bb.of ] ; 4 uses
  %indvars.iv388.i = phi i64 [ 0, %.preheader43.us.i ], [ %indvars.iv.next389.i, %bb.of ] ; 2 uses
  %.1.i145.us.i = phi i32 [ %.0.i150.us.i, %.preheader43.us.i ], [ %i.ebf, %bb.of ]
  %i.eae = load i32, ptr %i.dwe, align 4, !tbaa !200
  %i.eaf = icmp ugt i32 %i.eae, 9
  %i.eag = shl i64 %indvars.iv390.i, 32
  %i.eah = ashr exact i64 %i.eag, 32
  %i.eai = select i1 %i.eaf, i64 %i.eah, i64 0
  %i.eaj = getelementptr inbounds i8, ptr %i.dzz, i64 %i.eai
  %i.eak = load i8, ptr %i.eaj, align 1, !tbaa !13
  %i.eal = zext i8 %i.eak to i64
  %i.eam = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.eal
  %i.ean = load i32, ptr %i.eam, align 4, !tbaa !22
  %i.eao = load ptr, ptr %i.eaa, align 8, !tbaa !251
  %.idx505.i = shl nsw i64 %indvars.iv390.i, 5
  %i.eap = getelementptr inbounds i8, ptr %i.eao, i64 %.idx505.i
  %i.eaq = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv388.i ; 2 uses
  %i.ear = load i8, ptr %i.eaq, align 1, !tbaa !13
  %i.eas = zext i8 %i.ear to i32
  %i.eat = load i8, ptr %i.ead, align 1, !tbaa !13
  %i.eau = zext i8 %i.eat to i32
  %i.eav = add nuw nsw i32 %i.eau, %i.eas
  %i.eaw = zext i32 %i.ean to i64                 ; 2 uses
  %i.eax = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.eaw
  %i.eay = load ptr, ptr %i.eax, align 8, !tbaa !249
  %i.eaz = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.eaw
  %i.eba = load ptr, ptr %i.eaz, align 8, !tbaa !249
  %.val.us.i = load ptr, ptr %i.eab, align 16, !tbaa !209
  %i.ebb = tail call fastcc i32 @decode_coeffs_b_8bpp(ptr %.val.us.i, ptr noundef %i.eap, i32 noundef 16, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.eav, ptr noundef %i.eay, ptr noundef %i.eba, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.ebc = icmp ne i32 %i.ebb, 0                  ; 2 uses
  %i.ebd = zext i1 %i.ebc to i32
  %i.ebe = zext i1 %i.ebc to i8                   ; 2 uses
  store i8 %i.ebe, ptr %i.ead, align 1, !tbaa !13
  store i8 %i.ebe, ptr %i.eaq, align 1, !tbaa !13
  %i.ebf = or i32 %.1.i145.us.i, %i.ebd           ; 3 uses
  %i.ebg = trunc i32 %i.ebb to i8
  %i.ebh = load ptr, ptr %i.eac, align 8, !tbaa !252
  %i.ebi = getelementptr inbounds i8, ptr %i.ebh, i64 %indvars.iv390.i
  store i8 %i.ebg, ptr %i.ebi, align 1, !tbaa !13
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %indvars.iv.next391.i = add nsw i64 %indvars.iv390.i, 1 ; 2 uses
  %exitcond.not.i513 = icmp eq i64 %indvars.iv.next389.i, %wide.trip.count.i512
  br i1 %exitcond.not.i513, label %._crit_edge.us152.i, label %bb.of, !llvm.loop !46

._crit_edge.us152.i:                              ; preds = %bb.of
  %indvars.iv.next396.i = add nuw nsw i64 %indvars.iv395.i, 1 ; 2 uses
  %exitcond399.not.i = icmp eq i64 %indvars.iv.next396.i, %wide.trip.count398.i
  br i1 %exitcond399.not.i, label %.loopexit45.i, label %.preheader43.us.i, !llvm.loop !47

.preheader51.i:                                   ; preds = %.preheader52.i
  %.not250.i = icmp eq i32 %..i.i, 0
  br i1 %.not250.i, label %.loopexit45.i, label %.lr.ph126.preheader.i

.preheader51.thread.i:                            ; preds = %.lr.ph124.i, %middle.block1378
  %.not250526.i = icmp eq i32 %..i.i, 0
  br i1 %.not250526.i, label %.lr.ph142.preheader.i, label %.lr.ph126.preheader.i

.lr.ph126.preheader.i:                            ; preds = %.preheader51.thread.i, %.preheader51.i
  %i.ebj = zext nneg i32 %..i.i to i64            ; 4 uses
  %i.ebk = tail call i64 @llvm.usub.sat.i64(i64 %i.ebj, i64 2) ; 2 uses
  %i.ebl = lshr exact i64 %i.ebk, 1
  %i.ebm = add nuw nsw i64 %i.ebl, 1              ; 2 uses
  %min.iters.check1382 = icmp samesign ult i64 %i.ebk, 14
  br i1 %min.iters.check1382, label %.lr.ph126.i.preheader, label %vector.ph1383

vector.ph1383:                                    ; preds = %.lr.ph126.preheader.i
  %n.vec1384 = and i64 %i.ebm, 2147483640         ; 3 uses
  %i.ebn = shl nuw nsw i64 %n.vec1384, 1
  br label %vector.body1385

vector.body1385:                                  ; preds = %vector.body1385, %vector.ph1383
  %index1386 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1388, %vector.body1385 ] ; 2 uses
  %i.ebo = shl nuw i64 %index1386, 1              ; 8 uses
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo ; 2 uses
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.ebq, i64 2
  %i.ebs = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.ebs, i64 4
  %i.ebu = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.ebu, i64 6
  %i.ebw = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.ebw, i64 8
  %i.eby = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo
  %i.ebz = getelementptr inbounds nuw i8, ptr %i.eby, i64 10
  %i.eca = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.eca, i64 12
  %i.ecc = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.ebo
  %i.ecd = getelementptr inbounds nuw i8, ptr %i.ecc, i64 14
  %wide.load1387 = load <8 x i16>, ptr %i.ebp, align 2, !tbaa !13
  %wide.load1387.fr = freeze <8 x i16> %wide.load1387
  %i.ece = icmp ne <8 x i16> %wide.load1387.fr, zeroinitializer
  %i.ecf = bitcast <8 x i1> %i.ece to i8          ; 8 uses
  %i.ecg = lshr i8 %i.ecf, 7
  %i.ech = lshr i8 %i.ecf, 6
  %i.eci = and i8 %i.ech, 1
  %i.ecj = lshr i8 %i.ecf, 5
  %i.eck = and i8 %i.ecj, 1
  %i.ecl = lshr i8 %i.ecf, 4
  %i.ecm = and i8 %i.ecl, 1
  %i.ecn = lshr i8 %i.ecf, 3
  %i.eco = and i8 %i.ecn, 1
  %i.ecp = lshr i8 %i.ecf, 2
  %i.ecq = and i8 %i.ecp, 1
  %i.ecr = lshr i8 %i.ecf, 1
  %i.ecs = and i8 %i.ecr, 1
  %i.ect = and i8 %i.ecf, 1
  store i8 %i.ect, ptr %i.ebp, align 2, !tbaa !13
  store i8 %i.ecs, ptr %i.ebr, align 1, !tbaa !13
  store i8 %i.ecq, ptr %i.ebt, align 1, !tbaa !13
  store i8 %i.eco, ptr %i.ebv, align 1, !tbaa !13
  store i8 %i.ecm, ptr %i.ebx, align 1, !tbaa !13
  store i8 %i.eck, ptr %i.ebz, align 1, !tbaa !13
  store i8 %i.eci, ptr %i.ecb, align 1, !tbaa !13
  store i8 %i.ecg, ptr %i.ecd, align 1, !tbaa !13
  %index.next1388 = add nuw i64 %index1386, 8     ; 2 uses
  %i.ecu = icmp eq i64 %index.next1388, %n.vec1384
  br i1 %i.ecu, label %middle.block1389, label %vector.body1385, !llvm.loop !48

middle.block1389:                                 ; preds = %vector.body1385
  %cmp.n1390 = icmp eq i64 %i.ebm, %n.vec1384
  br i1 %cmp.n1390, label %.preheader50.thread.i, label %.lr.ph126.i.preheader

.lr.ph126.i.preheader:                            ; preds = %.lr.ph126.preheader.i, %middle.block1389
  %indvars.iv369.i.ph = phi i64 [ 0, %.lr.ph126.preheader.i ], [ %i.ebn, %middle.block1389 ]
  br label %.lr.ph126.i

.lr.ph124.i:                                      ; preds = %.lr.ph124.i.preheader, %.lr.ph124.i
  %indvars.iv366.i = phi i64 [ %indvars.iv.next367.i, %.lr.ph124.i ], [ %indvars.iv366.i.ph, %.lr.ph124.i.preheader ] ; 2 uses
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv366.i ; 2 uses
  %i.ecw = load i16, ptr %i.ecv, align 2, !tbaa !13
  %i.ecx = icmp ne i16 %i.ecw, 0
  %i.ecy = zext i1 %i.ecx to i8
  store i8 %i.ecy, ptr %i.ecv, align 2, !tbaa !13
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 2 ; 2 uses
  %i.ecz = icmp samesign ult i64 %indvars.iv.next367.i, %i.dyn
  br i1 %i.ecz, label %.lr.ph124.i, label %.preheader51.thread.i, !llvm.loop !49

.preheader50.thread.i:                            ; preds = %.lr.ph126.i, %middle.block1389
  br i1 %.not249.i, label %.lr.ph140.preheader.i, label %.preheader49.us.preheader.i

.preheader49.us.preheader.i:                      ; preds = %.preheader50.thread.i
  %i.eda = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.edb = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.edc = getelementptr i8, ptr %0, i64 16
  %i.edd = getelementptr inbounds nuw i8, ptr %0, i64 77112
  %i.ede = zext nneg i32 %i.dwx to i64
  br label %.preheader49.us.i

.preheader49.us.i:                                ; preds = %._crit_edge.us136.i, %.preheader49.us.preheader.i
  %indvars.iv379.i = phi i64 [ 0, %.preheader49.us.preheader.i ], [ %indvars.iv.next380.i, %._crit_edge.us136.i ] ; 2 uses
  %.2.i134.us.i = phi i32 [ 0, %.preheader49.us.preheader.i ], [ %i.eeb, %._crit_edge.us136.i ]
  %.4666.i132.us.i = phi i64 [ 0, %.preheader49.us.preheader.i ], [ %indvars.iv.next375.i, %._crit_edge.us136.i ]
  %i.edf = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv379.i ; 2 uses
  br label %bb.og

bb.og:                                            ; preds = %bb.og, %.preheader49.us.i
  %indvars.iv374.i = phi i64 [ %.4666.i132.us.i, %.preheader49.us.i ], [ %indvars.iv.next375.i, %bb.og ] ; 3 uses
  %indvars.iv372.i = phi i64 [ 0, %.preheader49.us.i ], [ %indvars.iv.next373.i, %bb.og ] ; 2 uses
  %.3.i129.us.i = phi i32 [ %.2.i134.us.i, %.preheader49.us.i ], [ %i.eeb, %bb.og ]
  %i.edg = load i8, ptr %i.eda, align 1, !tbaa !13
  %i.edh = zext i8 %i.edg to i64
  %i.edi = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.edh
  %i.edj = load i32, ptr %i.edi, align 4, !tbaa !22
  %i.edk = load ptr, ptr %i.edb, align 8, !tbaa !251
  %.idx504.i = shl nsw i64 %indvars.iv374.i, 5
  %i.edl = getelementptr inbounds i8, ptr %i.edk, i64 %.idx504.i
  %i.edm = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv372.i ; 2 uses
  %i.edn = load i8, ptr %i.edm, align 1, !tbaa !13
  %i.edo = zext i8 %i.edn to i32
  %i.edp = load i8, ptr %i.edf, align 1, !tbaa !13
  %i.edq = zext i8 %i.edp to i32
  %i.edr = add nuw nsw i32 %i.edq, %i.edo
  %i.eds = zext i32 %i.edj to i64                 ; 2 uses
  %i.edt = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.eds
  %i.edu = load ptr, ptr %i.edt, align 8, !tbaa !249
  %i.edv = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.eds
  %i.edw = load ptr, ptr %i.edv, align 8, !tbaa !249
  %.val1.us.i = load ptr, ptr %i.edc, align 16, !tbaa !209
  %i.edx = tail call fastcc i32 @decode_coeffs_b_8bpp(ptr %.val1.us.i, ptr noundef %i.edl, i32 noundef 64, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.edr, ptr noundef %i.edu, ptr noundef %i.edw, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.edy = icmp ne i32 %i.edx, 0                  ; 2 uses
  %i.edz = zext i1 %i.edy to i32
  %i.eea = zext i1 %i.edy to i8                   ; 2 uses
  store i8 %i.eea, ptr %i.edf, align 1, !tbaa !13
  store i8 %i.eea, ptr %i.edm, align 1, !tbaa !13
  %i.eeb = or i32 %.3.i129.us.i, %i.edz           ; 3 uses
  %i.eec = trunc i32 %i.edx to i8
  %i.eed = load ptr, ptr %i.edd, align 8, !tbaa !252
  %i.eee = getelementptr inbounds i8, ptr %i.eed, i64 %indvars.iv374.i
  store i8 %i.eec, ptr %i.eee, align 1, !tbaa !13
  %indvars.iv.next373.i = add nuw nsw i64 %indvars.iv372.i, 2 ; 2 uses
  %indvars.iv.next375.i = add nsw i64 %indvars.iv374.i, 4 ; 2 uses
  %i.eef = icmp samesign ult i64 %indvars.iv.next373.i, %i.ebj
  br i1 %i.eef, label %bb.og, label %._crit_edge.us136.i, !llvm.loop !50

._crit_edge.us136.i:                              ; preds = %bb.og
  %indvars.iv.next380.i = add nuw nsw i64 %indvars.iv379.i, 2 ; 2 uses
  %i.eeg = icmp samesign ult i64 %indvars.iv.next380.i, %i.ede
  br i1 %i.eeg, label %.preheader49.us.i, label %.lr.ph140.preheader.i, !llvm.loop !51

.lr.ph126.i:                                      ; preds = %.lr.ph126.i.preheader, %.lr.ph126.i
  %indvars.iv369.i = phi i64 [ %indvars.iv.next370.i, %.lr.ph126.i ], [ %indvars.iv369.i.ph, %.lr.ph126.i.preheader ] ; 2 uses
  %i.eeh = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv369.i ; 2 uses
  %i.eei = load i16, ptr %i.eeh, align 2, !tbaa !13
  %i.eej = icmp ne i16 %i.eei, 0
  %i.eek = zext i1 %i.eej to i8
  store i8 %i.eek, ptr %i.eeh, align 2, !tbaa !13
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 2 ; 2 uses
  %i.eel = icmp samesign ult i64 %indvars.iv.next370.i, %i.ebj
  br i1 %i.eel, label %.lr.ph126.i, label %.preheader50.thread.i, !llvm.loop !52

.lr.ph140.preheader.i:                            ; preds = %._crit_edge.us136.i, %.preheader50.thread.i
  %.2.i.lcssa510.i = phi i32 [ 0, %.preheader50.thread.i ], [ %i.eeb, %._crit_edge.us136.i ] ; 2 uses
  br label %.lr.ph140.i

.preheader46.i:                                   ; preds = %.lr.ph140.i
  br i1 %.not249.i, label %.loopexit45.i, label %.preheader46.i..lr.ph142.preheader.i_crit_edge

.preheader46.i..lr.ph142.preheader.i_crit_edge:   ; preds = %.preheader46.i
  %.pre926 = zext nneg i32 %i.dwx to i64
  br label %.lr.ph142.preheader.i

.lr.ph142.preheader.i:                            ; preds = %.preheader46.i..lr.ph142.preheader.i_crit_edge, %.preheader51.thread.i
  %.pre-phi927 = phi i64 [ %.pre926, %.preheader46.i..lr.ph142.preheader.i_crit_edge ], [ %i.dyn, %.preheader51.thread.i ]
  %.2.i.lcssa511551.i = phi i32 [ %.2.i.lcssa510.i, %.preheader46.i..lr.ph142.preheader.i_crit_edge ], [ 0, %.preheader51.thread.i ]
  br label %.lr.ph142.i

.lr.ph140.i:                                      ; preds = %.lr.ph140.i, %.lr.ph140.preheader.i
  %indvars.iv382.i = phi i64 [ 1, %.lr.ph140.preheader.i ], [ %indvars.iv.next383.i, %.lr.ph140.i ] ; 2 uses
  %i.eem = getelementptr i8, ptr %i.dxv, i64 %indvars.iv382.i ; 2 uses
  %i.een = getelementptr i8, ptr %i.eem, i64 -1
  %i.eeo = load i8, ptr %i.een, align 1, !tbaa !13
  store i8 %i.eeo, ptr %i.eem, align 1, !tbaa !13
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 2 ; 2 uses
  %i.eep = icmp samesign ult i64 %indvars.iv.next383.i, %i.ebj
  br i1 %i.eep, label %.lr.ph140.i, label %.preheader46.i, !llvm.loop !53

.lr.ph142.i:                                      ; preds = %.lr.ph142.i, %.lr.ph142.preheader.i
  %indvars.iv385.i = phi i64 [ 1, %.lr.ph142.preheader.i ], [ %indvars.iv.next386.i, %.lr.ph142.i ] ; 2 uses
  %i.eeq = getelementptr i8, ptr %i.dya, i64 %indvars.iv385.i ; 2 uses
  %i.eer = getelementptr i8, ptr %i.eeq, i64 -1
  %i.ees = load i8, ptr %i.eer, align 1, !tbaa !13
  store i8 %i.ees, ptr %i.eeq, align 1, !tbaa !13
  %indvars.iv.next386.i = add nuw nsw i64 %indvars.iv385.i, 2 ; 2 uses
  %i.eet = icmp samesign ult i64 %indvars.iv.next386.i, %.pre-phi927
  br i1 %i.eet, label %.lr.ph142.i, label %.loopexit45.i, !llvm.loop !54

.preheader63.i:                                   ; preds = %.preheader64.i
  %.not242.i = icmp eq i32 %..i.i, 0
  br i1 %.not242.i, label %._crit_edge110.i, label %.lr.ph101.preheader.i

.preheader63.thread.i.unr-lcssa:                  ; preds = %.lr.ph99.i
  %lcmp.mod1669.not = icmp eq i64 %xtraiter1667, 0
  br i1 %lcmp.mod1669.not, label %.preheader63.thread.i, label %.lr.ph99.i.epil.preheader

.lr.ph99.i.epil.preheader:                        ; preds = %.preheader63.thread.i.unr-lcssa, %.lr.ph99.preheader.i
  %indvars.iv338.i.epil.init = phi i64 [ 0, %.lr.ph99.preheader.i ], [ %indvars.iv.next339.i.3, %.preheader63.thread.i.unr-lcssa ]
  %lcmp.mod1670 = icmp ne i64 %xtraiter1667, 0
  tail call void @llvm.assume(i1 %lcmp.mod1670)
  br label %.lr.ph99.i.epil

.lr.ph99.i.epil:                                  ; preds = %.lr.ph99.i.epil, %.lr.ph99.i.epil.preheader
  %indvars.iv338.i.epil = phi i64 [ %indvars.iv338.i.epil.init, %.lr.ph99.i.epil.preheader ], [ %indvars.iv.next339.i.epil, %.lr.ph99.i.epil ] ; 2 uses
  %epil.iter1668 = phi i64 [ 0, %.lr.ph99.i.epil.preheader ], [ %epil.iter1668.next, %.lr.ph99.i.epil ]
end_hunk_0
begin_hunk_1_@ff_vp9_decode_block:bb.a
    i32 2, label %.preheader72.i
    i32 3, label %.preheader84.i
  ]

.preheader84.i:                                   ; preds = %bb.oo
  %.not241.i516 = icmp eq i32 %i.dwx, 0           ; 3 uses
  br i1 %.not241.i516, label %.preheader83.i, label %.lr.ph.preheader.i517

.lr.ph.preheader.i517:                            ; preds = %.preheader84.i
  %i.fkl = zext nneg i32 %i.dwx to i64
  %i.fkm = add nsw i64 %i.fkl, -2                 ; 2 uses
  %i.fkn = lshr i64 %i.fkm, 3
  %i.fko = add nuw nsw i64 %i.fkn, 1              ; 2 uses
  %xtraiter1547 = and i64 %i.fko, 3               ; 3 uses
  %i.fkp = icmp ult i64 %i.fkm, 24
  br i1 %i.fkp, label %.lr.ph.i518.epil.preheader, label %.lr.ph.preheader.i517.new

.lr.ph.preheader.i517.new:                        ; preds = %.lr.ph.preheader.i517
  %unroll_iter1551 = and i64 %i.fko, 4611686018427387900
  br label %.lr.ph.i518

.preheader72.i:                                   ; preds = %bb.oo
  %.not249.i592 = icmp eq i32 %i.dwx, 0           ; 3 uses
  br i1 %.not249.i592, label %.preheader71.i607, label %.lr.ph107.preheader.i

.lr.ph107.preheader.i:                            ; preds = %.preheader72.i
  %i.fkq = zext nneg i32 %i.dwx to i64
  %i.fkr = add nsw i64 %i.fkq, -2                 ; 2 uses
  %i.fks = lshr i64 %i.fkr, 2
  %i.fkt = add nuw nsw i64 %i.fks, 1              ; 2 uses
  %xtraiter1559 = and i64 %i.fkt, 3               ; 3 uses
  %i.fku = icmp ult i64 %i.fkr, 12
  br i1 %i.fku, label %.lr.ph107.i.epil.preheader, label %.lr.ph107.preheader.i.new

.lr.ph107.preheader.i.new:                        ; preds = %.lr.ph107.preheader.i
  %unroll_iter1563 = and i64 %i.fkt, 9223372036854775804
  br label %.lr.ph107.i

.preheader60.i:                                   ; preds = %bb.oo
  %.not257.i609 = icmp eq i32 %i.dwx, 0           ; 3 uses
  br i1 %.not257.i609, label %.preheader59.i617, label %.lr.ph132.preheader.i

.lr.ph132.preheader.i:                            ; preds = %.preheader60.i
  %i.fkv = zext nneg i32 %i.dwx to i64            ; 3 uses
  %i.fkw = add nsw i64 %i.fkv, -2                 ; 2 uses
  %i.fkx = lshr exact i64 %i.fkw, 1
  %i.fky = add nuw i64 %i.fkx, 1                  ; 2 uses
  %min.iters.check1327 = icmp ult i64 %i.fkw, 14
  br i1 %min.iters.check1327, label %.lr.ph132.i.preheader, label %vector.ph1328

vector.ph1328:                                    ; preds = %.lr.ph132.preheader.i
  %n.vec1329 = and i64 %i.fky, -8                 ; 3 uses
  %i.fkz = shl i64 %n.vec1329, 1
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1333, %vector.body1330 ] ; 2 uses
  %i.fla = shl nuw i64 %index1331, 1              ; 8 uses
  %i.flb = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla ; 2 uses
  %i.flc = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla
  %i.fld = getelementptr inbounds nuw i8, ptr %i.flc, i64 2
  %i.fle = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla
  %i.flf = getelementptr inbounds nuw i8, ptr %i.fle, i64 4
  %i.flg = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla
  %i.flh = getelementptr inbounds nuw i8, ptr %i.flg, i64 6
  %i.fli = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla
  %i.flj = getelementptr inbounds nuw i8, ptr %i.fli, i64 8
  %i.flk = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla
  %i.fll = getelementptr inbounds nuw i8, ptr %i.flk, i64 10
  %i.flm = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla
  %i.fln = getelementptr inbounds nuw i8, ptr %i.flm, i64 12
  %i.flo = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.fla
  %i.flp = getelementptr inbounds nuw i8, ptr %i.flo, i64 14
  %wide.load1332 = load <8 x i16>, ptr %i.flb, align 2, !tbaa !13
  %wide.load1332.fr = freeze <8 x i16> %wide.load1332
  %i.flq = icmp ne <8 x i16> %wide.load1332.fr, zeroinitializer
  %i.flr = bitcast <8 x i1> %i.flq to i8          ; 8 uses
  %i.fls = lshr i8 %i.flr, 7
  %i.flt = lshr i8 %i.flr, 6
  %i.flu = and i8 %i.flt, 1
  %i.flv = lshr i8 %i.flr, 5
  %i.flw = and i8 %i.flv, 1
  %i.flx = lshr i8 %i.flr, 4
  %i.fly = and i8 %i.flx, 1
  %i.flz = lshr i8 %i.flr, 3
  %i.fma = and i8 %i.flz, 1
  %i.fmb = lshr i8 %i.flr, 2
  %i.fmc = and i8 %i.fmb, 1
  %i.fmd = lshr i8 %i.flr, 1
  %i.fme = and i8 %i.fmd, 1
  %i.fmf = and i8 %i.flr, 1
  store i8 %i.fmf, ptr %i.flb, align 2, !tbaa !13
  store i8 %i.fme, ptr %i.fld, align 1, !tbaa !13
  store i8 %i.fmc, ptr %i.flf, align 1, !tbaa !13
  store i8 %i.fma, ptr %i.flh, align 1, !tbaa !13
  store i8 %i.fly, ptr %i.flj, align 1, !tbaa !13
  store i8 %i.flw, ptr %i.fll, align 1, !tbaa !13
  store i8 %i.flu, ptr %i.fln, align 1, !tbaa !13
  store i8 %i.fls, ptr %i.flp, align 1, !tbaa !13
  %index.next1333 = add nuw i64 %index1331, 8     ; 2 uses
  %i.fmg = icmp eq i64 %index.next1333, %n.vec1329
  br i1 %i.fmg, label %middle.block1334, label %vector.body1330, !llvm.loop !112

middle.block1334:                                 ; preds = %vector.body1330
  %cmp.n1335 = icmp eq i64 %i.fky, %n.vec1329
  br i1 %cmp.n1335, label %.preheader59.thread.i, label %.lr.ph132.i.preheader

.lr.ph132.i.preheader:                            ; preds = %.lr.ph132.preheader.i, %middle.block1334
  %indvars.iv374.i610.ph = phi i64 [ 0, %.lr.ph132.preheader.i ], [ %i.fkz, %middle.block1334 ]
  br label %.lr.ph132.i

.preheader52.i619:                                ; preds = %bb.oo
  %.not263.i = icmp eq i32 %i.dwx, 0
  br i1 %.not263.i, label %.loopexit53.i, label %.preheader51.lr.ph.i

.preheader51.lr.ph.i:                             ; preds = %.preheader52.i619
  %.not264.i = icmp eq i32 %..i.i, 0
  %i.fmh = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.fmi = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.fmj = getelementptr i8, ptr %0, i64 16
  %i.fmk = getelementptr inbounds nuw i8, ptr %0, i64 77112
  br i1 %.not264.i, label %.loopexit53.i, label %.preheader51.us.preheader.i

.preheader51.us.preheader.i:                      ; preds = %.preheader51.lr.ph.i
  %wide.trip.count406.i = zext nneg i32 %i.dwx to i64
  %wide.trip.count.i620 = zext nneg i32 %..i.i to i64
  br label %.preheader51.us.i

.preheader51.us.i:                                ; preds = %._crit_edge.us160.i, %.preheader51.us.preheader.i
  %indvars.iv403.i621 = phi i64 [ 0, %.preheader51.us.preheader.i ], [ %indvars.iv.next404.i625, %._crit_edge.us160.i ] ; 2 uses
  %.0.i158.us.i = phi i32 [ 0, %.preheader51.us.preheader.i ], [ %i.fnr, %._crit_edge.us160.i ]
  %.0662.i156.us.i = phi i64 [ 0, %.preheader51.us.preheader.i ], [ %indvars.iv.next399.i, %._crit_edge.us160.i ]
  %i.fml = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv403.i621 ; 2 uses
  br label %bb.op

bb.op:                                            ; preds = %bb.op, %.preheader51.us.i
  %indvars.iv398.i = phi i64 [ %.0662.i156.us.i, %.preheader51.us.i ], [ %indvars.iv.next399.i, %bb.op ] ; 4 uses
  %indvars.iv396.i = phi i64 [ 0, %.preheader51.us.i ], [ %indvars.iv.next397.i, %bb.op ] ; 2 uses
  %.1.i153.us.i = phi i32 [ %.0.i158.us.i, %.preheader51.us.i ], [ %i.fnr, %bb.op ]
  %i.fmm = load i32, ptr %i.dwe, align 4, !tbaa !200
  %i.fmn = icmp ugt i32 %i.fmm, 9
  %i.fmo = trunc nsw i64 %indvars.iv398.i to i32
  %i.fmp = shl i64 %indvars.iv398.i, 32
  %i.fmq = ashr exact i64 %i.fmp, 32
  %i.fmr = select i1 %i.fmn, i64 %i.fmq, i64 0
  %i.fms = getelementptr inbounds i8, ptr %i.fmh, i64 %i.fmr
  %i.fmt = load i8, ptr %i.fms, align 1, !tbaa !13
  %i.fmu = zext i8 %i.fmt to i64
  %i.fmv = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.fmu
  %i.fmw = load i32, ptr %i.fmv, align 4, !tbaa !22
  %i.fmx = load ptr, ptr %i.fmi, align 8, !tbaa !251
  %i.fmy = shl i32 %i.fmo, 5
  %i.fmz = sext i32 %i.fmy to i64
  %i.fna = getelementptr inbounds [2 x i8], ptr %i.fmx, i64 %i.fmz
  %i.fnb = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv396.i ; 2 uses
  %i.fnc = load i8, ptr %i.fnb, align 1, !tbaa !13
  %i.fnd = zext i8 %i.fnc to i32
  %i.fne = load i8, ptr %i.fml, align 1, !tbaa !13
  %i.fnf = zext i8 %i.fne to i32
  %i.fng = add nuw nsw i32 %i.fnf, %i.fnd
  %i.fnh = zext i32 %i.fmw to i64                 ; 2 uses
  %i.fni = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.fnh
  %i.fnj = load ptr, ptr %i.fni, align 8, !tbaa !249
  %i.fnk = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.fnh
  %i.fnl = load ptr, ptr %i.fnk, align 8, !tbaa !249
  %.val.us.i622 = load ptr, ptr %0, align 16, !tbaa !156
  %.val1.us.i623 = load ptr, ptr %i.fmj, align 16, !tbaa !209
  %i.fnm = getelementptr i8, ptr %.val.us.i622, i64 1
  %.val.val.us.i = load i8, ptr %i.fnm, align 1, !tbaa !253
  %i.fnn = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val.val.us.i, ptr %.val1.us.i623, ptr noundef %i.fna, i32 noundef 16, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.fng, ptr noundef %i.fnj, ptr noundef %i.fnl, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.fno = icmp ne i32 %i.fnn, 0                  ; 2 uses
  %i.fnp = zext i1 %i.fno to i32
  %i.fnq = zext i1 %i.fno to i8                   ; 2 uses
  store i8 %i.fnq, ptr %i.fml, align 1, !tbaa !13
  store i8 %i.fnq, ptr %i.fnb, align 1, !tbaa !13
  %i.fnr = or i32 %.1.i153.us.i, %i.fnp           ; 3 uses
  %i.fns = trunc i32 %i.fnn to i8
  %i.fnt = load ptr, ptr %i.fmk, align 8, !tbaa !252
  %i.fnu = getelementptr inbounds i8, ptr %i.fnt, i64 %indvars.iv398.i
  store i8 %i.fns, ptr %i.fnu, align 1, !tbaa !13
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %indvars.iv.next399.i = add nsw i64 %indvars.iv398.i, 1 ; 2 uses
  %exitcond.not.i624 = icmp eq i64 %indvars.iv.next397.i, %wide.trip.count.i620
  br i1 %exitcond.not.i624, label %._crit_edge.us160.i, label %bb.op, !llvm.loop !46

._crit_edge.us160.i:                              ; preds = %bb.op
  %indvars.iv.next404.i625 = add nuw nsw i64 %indvars.iv403.i621, 1 ; 2 uses
  %exitcond407.not.i = icmp eq i64 %indvars.iv.next404.i625, %wide.trip.count406.i
  br i1 %exitcond407.not.i, label %.loopexit53.i, label %.preheader51.us.i, !llvm.loop !47

.preheader59.i617:                                ; preds = %.preheader60.i
  %.not258.i618 = icmp eq i32 %..i.i, 0
  br i1 %.not258.i618, label %.loopexit53.i, label %.lr.ph134.preheader.i

.preheader59.thread.i:                            ; preds = %.lr.ph132.i, %middle.block1334
  %.not258528.i = icmp eq i32 %..i.i, 0
  br i1 %.not258528.i, label %.lr.ph150.preheader.i, label %.lr.ph134.preheader.i

.lr.ph134.preheader.i:                            ; preds = %.preheader59.thread.i, %.preheader59.i617
  %i.fnv = zext nneg i32 %..i.i to i64            ; 4 uses
  %i.fnw = tail call i64 @llvm.usub.sat.i64(i64 %i.fnv, i64 2) ; 2 uses
  %i.fnx = lshr exact i64 %i.fnw, 1
  %i.fny = add nuw nsw i64 %i.fnx, 1              ; 2 uses
  %min.iters.check1338 = icmp samesign ult i64 %i.fnw, 14
  br i1 %min.iters.check1338, label %.lr.ph134.i.preheader, label %vector.ph1339

vector.ph1339:                                    ; preds = %.lr.ph134.preheader.i
  %n.vec1340 = and i64 %i.fny, 2147483640         ; 3 uses
  %i.fnz = shl nuw nsw i64 %n.vec1340, 1
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %vector.ph1339
  %index1342 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1344, %vector.body1341 ] ; 2 uses
  %i.foa = shl nuw i64 %index1342, 1              ; 8 uses
  %i.fob = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa ; 2 uses
  %i.foc = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa
  %i.fod = getelementptr inbounds nuw i8, ptr %i.foc, i64 2
  %i.foe = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa
  %i.fof = getelementptr inbounds nuw i8, ptr %i.foe, i64 4
  %i.fog = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa
  %i.foh = getelementptr inbounds nuw i8, ptr %i.fog, i64 6
  %i.foi = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa
  %i.foj = getelementptr inbounds nuw i8, ptr %i.foi, i64 8
  %i.fok = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa
  %i.fol = getelementptr inbounds nuw i8, ptr %i.fok, i64 10
  %i.fom = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa
  %i.fon = getelementptr inbounds nuw i8, ptr %i.fom, i64 12
  %i.foo = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.foa
  %i.fop = getelementptr inbounds nuw i8, ptr %i.foo, i64 14
  %wide.load1343 = load <8 x i16>, ptr %i.fob, align 2, !tbaa !13
  %wide.load1343.fr = freeze <8 x i16> %wide.load1343
  %i.foq = icmp ne <8 x i16> %wide.load1343.fr, zeroinitializer
  %i.for = bitcast <8 x i1> %i.foq to i8          ; 8 uses
  %i.fos = lshr i8 %i.for, 7
  %i.fot = lshr i8 %i.for, 6
  %i.fou = and i8 %i.fot, 1
  %i.fov = lshr i8 %i.for, 5
  %i.fow = and i8 %i.fov, 1
  %i.fox = lshr i8 %i.for, 4
  %i.foy = and i8 %i.fox, 1
  %i.foz = lshr i8 %i.for, 3
  %i.fpa = and i8 %i.foz, 1
  %i.fpb = lshr i8 %i.for, 2
  %i.fpc = and i8 %i.fpb, 1
  %i.fpd = lshr i8 %i.for, 1
  %i.fpe = and i8 %i.fpd, 1
  %i.fpf = and i8 %i.for, 1
  store i8 %i.fpf, ptr %i.fob, align 2, !tbaa !13
  store i8 %i.fpe, ptr %i.fod, align 1, !tbaa !13
  store i8 %i.fpc, ptr %i.fof, align 1, !tbaa !13
  store i8 %i.fpa, ptr %i.foh, align 1, !tbaa !13
  store i8 %i.foy, ptr %i.foj, align 1, !tbaa !13
  store i8 %i.fow, ptr %i.fol, align 1, !tbaa !13
  store i8 %i.fou, ptr %i.fon, align 1, !tbaa !13
  store i8 %i.fos, ptr %i.fop, align 1, !tbaa !13
  %index.next1344 = add nuw i64 %index1342, 8     ; 2 uses
  %i.fpg = icmp eq i64 %index.next1344, %n.vec1340
  br i1 %i.fpg, label %middle.block1345, label %vector.body1341, !llvm.loop !113

middle.block1345:                                 ; preds = %vector.body1341
  %cmp.n1346 = icmp eq i64 %i.fny, %n.vec1340
  br i1 %cmp.n1346, label %.preheader58.thread.i, label %.lr.ph134.i.preheader

.lr.ph134.i.preheader:                            ; preds = %.lr.ph134.preheader.i, %middle.block1345
  %indvars.iv377.i.ph = phi i64 [ 0, %.lr.ph134.preheader.i ], [ %i.fnz, %middle.block1345 ]
  br label %.lr.ph134.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %.lr.ph132.i
  %indvars.iv374.i610 = phi i64 [ %indvars.iv.next375.i611, %.lr.ph132.i ], [ %indvars.iv374.i610.ph, %.lr.ph132.i.preheader ] ; 2 uses
  %i.fph = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv374.i610 ; 2 uses
  %i.fpi = load i16, ptr %i.fph, align 2, !tbaa !13
  %i.fpj = icmp ne i16 %i.fpi, 0
  %i.fpk = zext i1 %i.fpj to i8
  store i8 %i.fpk, ptr %i.fph, align 2, !tbaa !13
  %indvars.iv.next375.i611 = add nuw nsw i64 %indvars.iv374.i610, 2 ; 2 uses
  %i.fpl = icmp samesign ult i64 %indvars.iv.next375.i611, %i.fkv
  br i1 %i.fpl, label %.lr.ph132.i, label %.preheader59.thread.i, !llvm.loop !114

.preheader58.thread.i:                            ; preds = %.lr.ph134.i, %middle.block1345
  br i1 %.not257.i609, label %.lr.ph148.preheader.i, label %.preheader57.us.preheader.i

.preheader57.us.preheader.i:                      ; preds = %.preheader58.thread.i
  %i.fpm = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.fpn = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.fpo = getelementptr i8, ptr %0, i64 16
  %i.fpp = getelementptr inbounds nuw i8, ptr %0, i64 77112
  %i.fpq = zext nneg i32 %i.dwx to i64
  br label %.preheader57.us.i

.preheader57.us.i:                                ; preds = %._crit_edge.us144.i, %.preheader57.us.preheader.i
  %indvars.iv387.i = phi i64 [ 0, %.preheader57.us.preheader.i ], [ %indvars.iv.next388.i, %._crit_edge.us144.i ] ; 2 uses
  %.2.i142.us.i = phi i32 [ 0, %.preheader57.us.preheader.i ], [ %i.fqr, %._crit_edge.us144.i ]
  %.4666.i140.us.i = phi i64 [ 0, %.preheader57.us.preheader.i ], [ %indvars.iv.next383.i614, %._crit_edge.us144.i ]
  %i.fpr = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv387.i ; 2 uses
  br label %bb.oq

bb.oq:                                            ; preds = %bb.oq, %.preheader57.us.i
  %indvars.iv382.i612 = phi i64 [ %.4666.i140.us.i, %.preheader57.us.i ], [ %indvars.iv.next383.i614, %bb.oq ] ; 3 uses
  %indvars.iv380.i = phi i64 [ 0, %.preheader57.us.i ], [ %indvars.iv.next381.i, %bb.oq ] ; 2 uses
  %.3.i137.us.i = phi i32 [ %.2.i142.us.i, %.preheader57.us.i ], [ %i.fqr, %bb.oq ]
  %i.fps = load i8, ptr %i.fpm, align 1, !tbaa !13
  %i.fpt = zext i8 %i.fps to i64
  %i.fpu = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.fpt
  %i.fpv = load i32, ptr %i.fpu, align 4, !tbaa !22
  %i.fpw = load ptr, ptr %i.fpn, align 8, !tbaa !251
  %i.fpx = trunc nsw i64 %indvars.iv382.i612 to i32
  %i.fpy = shl i32 %i.fpx, 5
  %i.fpz = sext i32 %i.fpy to i64
  %i.fqa = getelementptr inbounds [2 x i8], ptr %i.fpw, i64 %i.fpz
  %i.fqb = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv380.i ; 2 uses
  %i.fqc = load i8, ptr %i.fqb, align 1, !tbaa !13
  %i.fqd = zext i8 %i.fqc to i32
  %i.fqe = load i8, ptr %i.fpr, align 1, !tbaa !13
  %i.fqf = zext i8 %i.fqe to i32
  %i.fqg = add nuw nsw i32 %i.fqf, %i.fqd
  %i.fqh = zext i32 %i.fpv to i64                 ; 2 uses
  %i.fqi = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.fqh
  %i.fqj = load ptr, ptr %i.fqi, align 8, !tbaa !249
  %i.fqk = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.fqh
  %i.fql = load ptr, ptr %i.fqk, align 8, !tbaa !249
  %.val2.us.i613 = load ptr, ptr %0, align 16, !tbaa !156
  %.val3.us.i = load ptr, ptr %i.fpo, align 16, !tbaa !209
  %i.fqm = getelementptr i8, ptr %.val2.us.i613, i64 1
  %.val2.val.us.i = load i8, ptr %i.fqm, align 1, !tbaa !253
  %i.fqn = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val2.val.us.i, ptr %.val3.us.i, ptr noundef %i.fqa, i32 noundef 64, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.fqg, ptr noundef %i.fqj, ptr noundef %i.fql, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.fqo = icmp ne i32 %i.fqn, 0                  ; 2 uses
  %i.fqp = zext i1 %i.fqo to i32
  %i.fqq = zext i1 %i.fqo to i8                   ; 2 uses
  store i8 %i.fqq, ptr %i.fpr, align 1, !tbaa !13
  store i8 %i.fqq, ptr %i.fqb, align 1, !tbaa !13
  %i.fqr = or i32 %.3.i137.us.i, %i.fqp           ; 3 uses
  %i.fqs = trunc i32 %i.fqn to i8
  %i.fqt = load ptr, ptr %i.fpp, align 8, !tbaa !252
  %i.fqu = getelementptr inbounds i8, ptr %i.fqt, i64 %indvars.iv382.i612
  store i8 %i.fqs, ptr %i.fqu, align 1, !tbaa !13
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 2 ; 2 uses
  %indvars.iv.next383.i614 = add nsw i64 %indvars.iv382.i612, 4 ; 2 uses
  %i.fqv = icmp samesign ult i64 %indvars.iv.next381.i, %i.fnv
  br i1 %i.fqv, label %bb.oq, label %._crit_edge.us144.i, !llvm.loop !50

._crit_edge.us144.i:                              ; preds = %bb.oq
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 2 ; 2 uses
  %i.fqw = icmp samesign ult i64 %indvars.iv.next388.i, %i.fpq
  br i1 %i.fqw, label %.preheader57.us.i, label %.lr.ph148.preheader.i, !llvm.loop !51

.lr.ph134.i:                                      ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i, %.lr.ph134.i ], [ %indvars.iv377.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv377.i ; 2 uses
  %i.fqy = load i16, ptr %i.fqx, align 2, !tbaa !13
  %i.fqz = icmp ne i16 %i.fqy, 0
  %i.fra = zext i1 %i.fqz to i8
  store i8 %i.fra, ptr %i.fqx, align 2, !tbaa !13
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 2 ; 2 uses
  %i.frb = icmp samesign ult i64 %indvars.iv.next378.i, %i.fnv
  br i1 %i.frb, label %.lr.ph134.i, label %.preheader58.thread.i, !llvm.loop !115

.lr.ph148.preheader.i:                            ; preds = %._crit_edge.us144.i, %.preheader58.thread.i
  %.2.i.lcssa512.i = phi i32 [ 0, %.preheader58.thread.i ], [ %i.fqr, %._crit_edge.us144.i ] ; 2 uses
  br label %.lr.ph148.i

.preheader54.i:                                   ; preds = %.lr.ph148.i
  br i1 %.not257.i609, label %.loopexit53.i, label %.preheader54.i..lr.ph150.preheader.i_crit_edge

.preheader54.i..lr.ph150.preheader.i_crit_edge:   ; preds = %.preheader54.i
  %.pre928 = zext nneg i32 %i.dwx to i64
  br label %.lr.ph150.preheader.i

.lr.ph150.preheader.i:                            ; preds = %.preheader54.i..lr.ph150.preheader.i_crit_edge, %.preheader59.thread.i
  %.pre-phi929 = phi i64 [ %.pre928, %.preheader54.i..lr.ph150.preheader.i_crit_edge ], [ %i.fkv, %.preheader59.thread.i ]
  %.2.i.lcssa513553.i = phi i32 [ %.2.i.lcssa512.i, %.preheader54.i..lr.ph150.preheader.i_crit_edge ], [ 0, %.preheader59.thread.i ]
  br label %.lr.ph150.i

.lr.ph148.i:                                      ; preds = %.lr.ph148.i, %.lr.ph148.preheader.i
  %indvars.iv390.i615 = phi i64 [ 1, %.lr.ph148.preheader.i ], [ %indvars.iv.next391.i616, %.lr.ph148.i ] ; 2 uses
  %i.frc = getelementptr i8, ptr %i.dxv, i64 %indvars.iv390.i615 ; 2 uses
  %i.frd = getelementptr i8, ptr %i.frc, i64 -1
  %i.fre = load i8, ptr %i.frd, align 1, !tbaa !13
  store i8 %i.fre, ptr %i.frc, align 1, !tbaa !13
  %indvars.iv.next391.i616 = add nuw nsw i64 %indvars.iv390.i615, 2 ; 2 uses
  %i.frf = icmp samesign ult i64 %indvars.iv.next391.i616, %i.fnv
  br i1 %i.frf, label %.lr.ph148.i, label %.preheader54.i, !llvm.loop !53

.lr.ph150.i:                                      ; preds = %.lr.ph150.i, %.lr.ph150.preheader.i
  %indvars.iv393.i = phi i64 [ 1, %.lr.ph150.preheader.i ], [ %indvars.iv.next394.i, %.lr.ph150.i ] ; 2 uses
  %i.frg = getelementptr i8, ptr %i.dya, i64 %indvars.iv393.i ; 2 uses
  %i.frh = getelementptr i8, ptr %i.frg, i64 -1
  %i.fri = load i8, ptr %i.frh, align 1, !tbaa !13
  store i8 %i.fri, ptr %i.frg, align 1, !tbaa !13
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 2 ; 2 uses
  %i.frj = icmp samesign ult i64 %indvars.iv.next394.i, %.pre-phi929
  br i1 %i.frj, label %.lr.ph150.i, label %.loopexit53.i, !llvm.loop !54

.preheader71.i607:                                ; preds = %.preheader72.i
  %.not250.i608 = icmp eq i32 %..i.i, 0
  br i1 %.not250.i608, label %._crit_edge118.i, label %.lr.ph109.preheader.i

.preheader71.thread.i.unr-lcssa:                  ; preds = %.lr.ph107.i
  %lcmp.mod1561.not = icmp eq i64 %xtraiter1559, 0
  br i1 %lcmp.mod1561.not, label %.preheader71.thread.i, label %.lr.ph107.i.epil.preheader

.lr.ph107.i.epil.preheader:                       ; preds = %.preheader71.thread.i.unr-lcssa, %.lr.ph107.preheader.i
  %indvars.iv346.i593.epil.init = phi i64 [ 0, %.lr.ph107.preheader.i ], [ %indvars.iv.next347.i594.3, %.preheader71.thread.i.unr-lcssa ]
  %lcmp.mod1562 = icmp ne i64 %xtraiter1559, 0
  tail call void @llvm.assume(i1 %lcmp.mod1562)
end_hunk_1
