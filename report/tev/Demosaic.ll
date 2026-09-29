Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Demosaic?download=true
inline.NumInlined: 6129
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 75
begin_hunk_0_@"_ZZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiENK3$_0clEi":bb.a
  br label %.loopexit2572

bb.ap:                                            ; preds = %.lr.ph2690, %._crit_edge2680
  %indvars.iv2938 = phi i32 [ 966, %.lr.ph2690 ], [ %indvars.iv.next2939, %._crit_edge2680 ] ; 2 uses
  %.022812689 = phi i32 [ 6, %.lr.ph2690 ], [ %i.czz, %._crit_edge2680 ] ; 6 uses
  %.025392688 = phi i32 [ 0, %.lr.ph2690 ], [ %.12540.lcssa, %._crit_edge2680 ] ; 3 uses
  %.025432687 = phi i32 [ 161, %.lr.ph2690 ], [ %.12544.lcssa, %._crit_edge2680 ] ; 3 uses
  %.025472686 = phi i32 [ 0, %.lr.ph2690 ], [ %.12548.lcssa, %._crit_edge2680 ] ; 3 uses
  %.025512685 = phi i32 [ 0, %.lr.ph2690 ], [ %.12552.lcssa, %._crit_edge2680 ] ; 4 uses
  %i.cyc = load ptr, ptr %i.csg, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2429 = load ptr, ptr %i.cyc, align 8, !tbaa !403
  %i.cyd = and i32 %.022812689, 1
  %i.cye = zext nneg i32 %i.cyd to i64
  %i.cyf = getelementptr inbounds nuw [8 x i8], ptr %.val2429, i64 %i.cye
  %i.cyg = load i32, ptr %i.cyf, align 4, !tbaa !76
  %i.cyh = and i32 %i.cyg, 1                      ; 3 uses
  %i.cyi = or disjoint i32 %i.cyh, 6              ; 4 uses
  %i.cyj = icmp slt i32 %i.cyi, %i.csh
  br i1 %i.cyj, label %.lr.ph2679.preheader, label %._crit_edge2680

.lr.ph2679.preheader:                             ; preds = %bb.ap
  %i.cyk = or disjoint i32 %indvars.iv2938, %i.cyh
  %i.cyl = zext i32 %i.cyk to i64                 ; 3 uses
  %i.cym = add i32 %i.f, %i.cyh
  %i.cyn = sub i32 %i.csi, %i.cym                 ; 2 uses
  %i.cyo = lshr i32 %i.cyn, 1
  %narrow = add nuw i32 %i.cyo, 1
  %i.cyp = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check3692 = icmp ult i32 %i.cyn, 6
  br i1 %min.iters.check3692, label %.lr.ph2679.preheader3771, label %vector.ph3693

vector.ph3693:                                    ; preds = %.lr.ph2679.preheader
  %n.vec3694 = and i64 %i.cyp, 4294967292         ; 4 uses
  %i.cyq = shl nuw nsw i64 %n.vec3694, 1
  %i.cyr = add nuw nsw i64 %i.cyq, %i.cyl
  %i.cys = trunc nuw i64 %n.vec3694 to i32
  %i.cyt = shl i32 %i.cys, 1
  %i.cyu = or disjoint i32 %i.cyi, %i.cyt
  %i.cyv = icmp eq i32 %.025512685, 0
  %broadcast.splatinsert3713 = insertelement <4 x i1> poison, i1 %i.cyv, i64 0
  %broadcast.splat3714 = shufflevector <4 x i1> %broadcast.splatinsert3713, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.022812689, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3695 = insertelement <4 x i32> poison, i32 %.025392688, i64 0
  %broadcast.splat3696 = shufflevector <4 x i32> %broadcast.splatinsert3695, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3697 = insertelement <4 x i32> poison, i32 %.025432687, i64 0
  %broadcast.splat3698 = shufflevector <4 x i32> %broadcast.splatinsert3697, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3699 = insertelement <4 x i32> poison, i32 %i.cyi, i64 0
  %broadcast.splat3700 = shufflevector <4 x i32> %broadcast.splatinsert3699, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat3700, <i32 0, i32 2, i32 4, i32 6>
  br label %vector.body3701

vector.body3701:                                  ; preds = %pred.store.continue3712, %vector.ph3693
  %index3702 = phi i64 [ 0, %vector.ph3693 ], [ %index.next3717, %pred.store.continue3712 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph3693 ], [ %vec.ind.next, %pred.store.continue3712 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat3696, %vector.ph3693 ], [ %predphi3716, %pred.store.continue3712 ] ; 2 uses
  %vec.phi3703 = phi <4 x i32> [ %broadcast.splat3698, %vector.ph3693 ], [ %predphi3715, %pred.store.continue3712 ] ; 2 uses
  %vec.phi3704 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph3693 ], [ %predphi, %pred.store.continue3712 ]
  %vec.phi3705 = phi <4 x i1> [ zeroinitializer, %vector.ph3693 ], [ %i.czs, %pred.store.continue3712 ]
  %i.cyw = shl nuw i64 %index3702, 1
  %i.cyx = add nuw i64 %i.cyw, %i.cyl             ; 4 uses
  %i.cyy = lshr i64 %i.cyx, 1                     ; 2 uses
  %i.cyz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cyy
  %wide.load3706 = load <4 x float>, ptr %i.cyz, align 4, !tbaa !109
  %i.cza = fcmp ogt <4 x float> %wide.load3706, zeroinitializer ; 8 uses
  %i.czb = extractelement <4 x i1> %i.cza, i64 0
  br i1 %i.czb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body3701
  %i.czc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cyy
  store i8 1, ptr %i.czc, align 1, !tbaa !55
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body3701
  %i.czd = extractelement <4 x i1> %i.cza, i64 1
  br i1 %i.czd, label %pred.store.if3707, label %pred.store.continue3708

pred.store.if3707:                                ; preds = %pred.store.continue
  %i.cze = add i64 %i.cyx, 2
  %i.czf = lshr i64 %i.cze, 1
  %i.czg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.czf
  store i8 1, ptr %i.czg, align 1, !tbaa !55
  br label %pred.store.continue3708

pred.store.continue3708:                          ; preds = %pred.store.if3707, %pred.store.continue
  %i.czh = extractelement <4 x i1> %i.cza, i64 2
  br i1 %i.czh, label %pred.store.if3709, label %pred.store.continue3710

pred.store.if3709:                                ; preds = %pred.store.continue3708
  %i.czi = add i64 %i.cyx, 4
  %i.czj = lshr i64 %i.czi, 1
  %i.czk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.czj
  store i8 1, ptr %i.czk, align 1, !tbaa !55
  br label %pred.store.continue3710

pred.store.continue3710:                          ; preds = %pred.store.if3709, %pred.store.continue3708
  %i.czl = extractelement <4 x i1> %i.cza, i64 3
  br i1 %i.czl, label %pred.store.if3711, label %pred.store.continue3712

pred.store.if3711:                                ; preds = %pred.store.continue3710
  %i.czm = add i64 %i.cyx, 6
  %i.czn = lshr i64 %i.czm, 1
  %i.czo = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.czn
  store i8 1, ptr %i.czo, align 1, !tbaa !55
  br label %pred.store.continue3712

pred.store.continue3712:                          ; preds = %pred.store.if3711, %pred.store.continue3710
  %i.czp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi3703, <4 x i32> %vec.ind)
  %i.czq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %vec.ind)
  %i.czr = select <4 x i1> %i.cza, <4 x i1> %broadcast.splat3714, <4 x i1> zeroinitializer
  %.fr = freeze <4 x i1> %i.czr
  %i.czs = or <4 x i1> %vec.phi3705, %.fr         ; 2 uses
  %predphi = select <4 x i1> %i.cza, <4 x i32> %broadcast.splat, <4 x i32> %vec.phi3704 ; 2 uses
  %predphi3715 = select <4 x i1> %i.cza, <4 x i32> %i.czp, <4 x i32> %vec.phi3703 ; 2 uses
  %predphi3716 = select <4 x i1> %i.cza, <4 x i32> %i.czq, <4 x i32> %vec.phi ; 2 uses
  %index.next3717 = add nuw i64 %index3702, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.czt = icmp eq i64 %index.next3717, %n.vec3694
  br i1 %i.czt, label %middle.block3718, label %vector.body3701, !llvm.loop !1559

middle.block3718:                                 ; preds = %pred.store.continue3712
  %i.czu = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %predphi3716) ; 2 uses
  %i.czv = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %predphi3715) ; 2 uses
  %i.czw = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %predphi) ; 2 uses
  %.not3736 = icmp eq i32 %i.czw, -2147483648
  %i.czx = select i1 %.not3736, i32 %.025472686, i32 %i.czw ; 2 uses
  %i.czy = bitcast <4 x i1> %i.czs to i4
  %.not3738 = icmp eq i4 %i.czy, 0
  %rdx.select = select i1 %.not3738, i32 %.025512685, i32 %.022812689 ; 2 uses
  %cmp.n3719 = icmp eq i64 %n.vec3694, %i.cyp
  br i1 %cmp.n3719, label %._crit_edge2680, label %.lr.ph2679.preheader3771

.lr.ph2679.preheader3771:                         ; preds = %.lr.ph2679.preheader, %middle.block3718
  %indvars.iv2940.ph = phi i64 [ %i.cyl, %.lr.ph2679.preheader ], [ %i.cyr, %middle.block3718 ]
  %.022802676.ph = phi i32 [ %i.cyi, %.lr.ph2679.preheader ], [ %i.cyu, %middle.block3718 ]
  %.125402675.ph = phi i32 [ %.025392688, %.lr.ph2679.preheader ], [ %i.czu, %middle.block3718 ]
  %.125442674.ph = phi i32 [ %.025432687, %.lr.ph2679.preheader ], [ %i.czv, %middle.block3718 ]
  %.125482673.ph = phi i32 [ %.025472686, %.lr.ph2679.preheader ], [ %i.czx, %middle.block3718 ]
  %.125522672.ph = phi i32 [ %.025512685, %.lr.ph2679.preheader ], [ %rdx.select, %middle.block3718 ]
  br label %.lr.ph2679

._crit_edge2680:                                  ; preds = %bb.ar, %middle.block3718, %bb.ap
  %.12552.lcssa = phi i32 [ %.025512685, %bb.ap ], [ %rdx.select, %middle.block3718 ], [ %.22553, %bb.ar ] ; 4 uses
  %.12548.lcssa = phi i32 [ %.025472686, %bb.ap ], [ %i.czx, %middle.block3718 ], [ %.22549, %bb.ar ] ; 4 uses
  %.12544.lcssa = phi i32 [ %.025432687, %bb.ap ], [ %i.czv, %middle.block3718 ], [ %.22545, %bb.ar ] ; 4 uses
  %.12540.lcssa = phi i32 [ %.025392688, %bb.ap ], [ %i.czu, %middle.block3718 ], [ %.22541, %bb.ar ] ; 4 uses
  %i.czz = add nuw nsw i32 %.022812689, 1         ; 2 uses
  %indvars.iv.next2939 = add i32 %indvars.iv2938, 160
  %exitcond2943.not = icmp eq i32 %i.czz, %i.cbk
  br i1 %exitcond2943.not, label %._crit_edge2691, label %bb.ap, !llvm.loop !1560

.lr.ph2679:                                       ; preds = %.lr.ph2679.preheader3771, %bb.ar
  %indvars.iv2940 = phi i64 [ %indvars.iv.next2941, %bb.ar ], [ %indvars.iv2940.ph, %.lr.ph2679.preheader3771 ] ; 2 uses
  %.022802676 = phi i32 [ %i.dai, %bb.ar ], [ %.022802676.ph, %.lr.ph2679.preheader3771 ] ; 3 uses
  %.125402675 = phi i32 [ %.22541, %bb.ar ], [ %.125402675.ph, %.lr.ph2679.preheader3771 ] ; 2 uses
  %.125442674 = phi i32 [ %.22545, %bb.ar ], [ %.125442674.ph, %.lr.ph2679.preheader3771 ] ; 2 uses
  %.125482673 = phi i32 [ %.22549, %bb.ar ], [ %.125482673.ph, %.lr.ph2679.preheader3771 ]
  %.125522672 = phi i32 [ %.22553, %bb.ar ], [ %.125522672.ph, %.lr.ph2679.preheader3771 ] ; 3 uses
  %i.daa = lshr i64 %indvars.iv2940, 1            ; 2 uses
  %i.dab = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.daa
  %i.dac = load float, ptr %i.dab, align 4, !tbaa !109
  %i.dad = fcmp ogt float %i.dac, 0.000000e+00
  br i1 %i.dad, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph2679
  %i.dae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.daa
  store i8 1, ptr %i.dae, align 1, !tbaa !55
  %.not2401 = icmp eq i32 %.125522672, 0
  %i.daf = select i1 %.not2401, i32 %.022812689, i32 %.125522672
  %i.dag = tail call i32 @llvm.smin.i32(i32 %.125442674, i32 %.022802676)
  %i.dah = tail call i32 @llvm.smax.i32(i32 %.125402675, i32 %.022802676)
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph2679, %bb.aq
  %.22553 = phi i32 [ %i.daf, %bb.aq ], [ %.125522672, %.lr.ph2679 ] ; 2 uses
  %.22549 = phi i32 [ %.022812689, %bb.aq ], [ %.125482673, %.lr.ph2679 ] ; 2 uses
  %.22545 = phi i32 [ %i.dag, %bb.aq ], [ %.125442674, %.lr.ph2679 ] ; 2 uses
  %.22541 = phi i32 [ %i.dah, %bb.aq ], [ %.125402675, %.lr.ph2679 ] ; 2 uses
  %i.dai = add nuw nsw i32 %.022802676, 2         ; 2 uses
  %indvars.iv.next2941 = add nuw nsw i64 %indvars.iv2940, 2
  %i.daj = icmp slt i32 %i.dai, %i.csh
  br i1 %i.daj, label %.lr.ph2679, label %._crit_edge2680, !llvm.loop !1561

bb.as:                                            ; preds = %._crit_edge2691
  %i.dak = add nsw i32 %.12548.lcssa, 1
  %i.dal = add nsw i32 %.12540.lcssa, 1
  %i.dam = and i32 %.12544.lcssa, -2
  %.sroa.speculated2483 = tail call i32 @llvm.smax.i32(i32 %.12552.lcssa, i32 8) ; 7 uses
  %i.dan = add nsw i32 %i.an, -8                  ; 3 uses
  %.sroa.speculated2479 = tail call i32 @llvm.smin.i32(i32 %i.dak, i32 %i.dan) ; 5 uses
  %.sroa.speculated2475 = tail call i32 @llvm.smax.i32(i32 %i.dam, i32 8) ; 6 uses
  %i.dao = add nsw i32 %i.ao, -8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.dal, i32 %i.dao) ; 4 uses
  %i.dap = getelementptr inbounds nuw i8, ptr %i.k, i64 820544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(12160) %i.dap, i8 0, i64 12160, i1 false)
  %i.daq = icmp slt i32 %.sroa.speculated2483, %.sroa.speculated2479
  br i1 %i.daq, label %.lr.ph2702, label %.loopexit2572

.lr.ph2702:                                       ; preds = %bb.as
  %i.dar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.das = mul nuw i32 %.sroa.speculated2483, 160
  %i.dat = add i32 %.sroa.speculated2475, %i.das
  %i.dau = zext i32 %i.dat to i64
  br label %bb.at

.lr.ph2723:                                       ; preds = %._crit_edge2699
  %i.dav = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.daw = load ptr, ptr %i.dav, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2427 = load ptr, ptr %i.daw, align 8, !tbaa !403
  %i.dax = mul i32 %.sroa.speculated2483, 160
  %i.day = add i32 %.sroa.speculated2475, %i.dax  ; 2 uses
  %i.daz = add i32 %i.day, -966
  %i.dba = zext i32 %i.day to i64
  br label %bb.ax

bb.at:                                            ; preds = %.lr.ph2702, %._crit_edge2699
  %indvars.iv2944 = phi i64 [ %i.dau, %.lr.ph2702 ], [ %indvars.iv.next2945, %._crit_edge2699 ] ; 2 uses
  %.022782700 = phi i32 [ %.sroa.speculated2483, %.lr.ph2702 ], [ %i.dbp, %._crit_edge2699 ] ; 3 uses
  %i.dbb = mul nuw nsw i32 %.022782700, 160       ; 2 uses
  %i.dbc = add nuw nsw i32 %i.dbb, %.sroa.speculated2475
  %i.dbd = load ptr, ptr %i.dar, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2428 = load ptr, ptr %i.dbd, align 8, !tbaa !403
  %i.dbe = and i32 %.022782700, 1
  %i.dbf = zext nneg i32 %i.dbe to i64
  %i.dbg = getelementptr inbounds nuw [8 x i8], ptr %.val2428, i64 %i.dbf
  %i.dbh = load i32, ptr %i.dbg, align 4, !tbaa !76 ; 2 uses
  %i.dbi = and i32 %i.dbh, 1
  %i.dbj = or disjoint i32 %i.dbi, %i.dbc
  %i.dbk = add nsw i32 %i.dbb, %.sroa.speculated  ; 2 uses
  %i.dbl = icmp slt i32 %i.dbj, %i.dbk
  br i1 %i.dbl, label %.lr.ph2698.preheader, label %._crit_edge2699

.lr.ph2698.preheader:                             ; preds = %bb.at
  %i.dbm = and i32 %i.dbh, 1
  %i.dbn = zext nneg i32 %i.dbm to i64
  %i.dbo = or disjoint i64 %indvars.iv2944, %i.dbn
  br label %.lr.ph2698

._crit_edge2699:                                  ; preds = %bb.aw, %bb.at
  %i.dbp = add nuw nsw i32 %.022782700, 1         ; 2 uses
  %indvars.iv.next2945 = add nuw nsw i64 %indvars.iv2944, 160
  %exitcond2949.not = icmp eq i32 %i.dbp, %.sroa.speculated2479
  br i1 %exitcond2949.not, label %.lr.ph2723, label %bb.at, !llvm.loop !1562

.lr.ph2698:                                       ; preds = %.lr.ph2698.preheader, %bb.aw
  %indvars.iv2946 = phi i64 [ %i.dbo, %.lr.ph2698.preheader ], [ %indvars.iv.next2947, %bb.aw ] ; 7 uses
  %i.dbq = trunc nuw i64 %indvars.iv2946 to i32   ; 4 uses
  %i.dbr = add nsw i32 %i.dbq, -320
  %i.dbs = ashr i32 %i.dbr, 1
  %i.dbt = sext i32 %i.dbs to i64
  %i.dbu = getelementptr inbounds i8, ptr %i.ab, i64 %i.dbt
  %i.dbv = load i8, ptr %i.dbu, align 1, !tbaa !55
  %i.dbw = zext i8 %i.dbv to i32
  %i.dbx = add nsw i32 %i.dbq, -161
  %i.dby = ashr i32 %i.dbx, 1
  %i.dbz = sext i32 %i.dby to i64
  %i.dca = getelementptr inbounds i8, ptr %i.ab, i64 %i.dbz
  %i.dcb = load i8, ptr %i.dca, align 1, !tbaa !55
  %i.dcc = zext i8 %i.dcb to i32
  %i.dcd = add nuw nsw i32 %i.dcc, %i.dbw
  %i.dce = add nsw i32 %i.dbq, -159
  %i.dcf = ashr i32 %i.dce, 1
  %i.dcg = sext i32 %i.dcf to i64
  %i.dch = getelementptr inbounds i8, ptr %i.ab, i64 %i.dcg
  %i.dci = load i8, ptr %i.dch, align 1, !tbaa !55
  %i.dcj = zext i8 %i.dci to i32
  %i.dck = add nuw nsw i32 %i.dcd, %i.dcj
  %i.dcl = add nsw i32 %i.dbq, -2
  %i.dcm = ashr i32 %i.dcl, 1
  %i.dcn = sext i32 %i.dcm to i64
  %i.dco = getelementptr inbounds i8, ptr %i.ab, i64 %i.dcn
  %i.dcp = load i8, ptr %i.dco, align 1, !tbaa !55
  %i.dcq = zext i8 %i.dcp to i32
  %i.dcr = add nuw nsw i32 %i.dck, %i.dcq
  %indvars.iv.next2947 = add nuw nsw i64 %indvars.iv2946, 2 ; 3 uses
  %i.dcs = trunc nuw i64 %indvars.iv.next2947 to i32
  %i.dct = lshr i64 %indvars.iv.next2947, 1
  %i.dcu = and i64 %i.dct, 2147483647
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.dcu
  %i.dcw = load i8, ptr %i.dcv, align 1, !tbaa !55
  %i.dcx = zext i8 %i.dcw to i32
  %i.dcy = add nuw nsw i32 %i.dcr, %i.dcx
  %i.dcz = add nuw i64 %indvars.iv2946, 159
  %i.dda = lshr i64 %i.dcz, 1
  %i.ddb = and i64 %i.dda, 2147483647
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ddb
  %i.ddd = load i8, ptr %i.ddc, align 1, !tbaa !55
  %i.dde = zext i8 %i.ddd to i32
  %i.ddf = add nuw nsw i32 %i.dcy, %i.dde
  %i.ddg = add nuw i64 %indvars.iv2946, 161
  %i.ddh = lshr i64 %i.ddg, 1
  %i.ddi = and i64 %i.ddh, 2147483647
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ddi
  %i.ddk = load i8, ptr %i.ddj, align 1, !tbaa !55
  %i.ddl = zext i8 %i.ddk to i32
  %i.ddm = add nuw nsw i32 %i.ddf, %i.ddl
  %i.ddn = add nuw i64 %indvars.iv2946, 320
  %i.ddo = lshr i64 %i.ddn, 1
  %i.ddp = and i64 %i.ddo, 2147483647
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ddp
  %i.ddr = load i8, ptr %i.ddq, align 1, !tbaa !55
  %i.dds = zext i8 %i.ddr to i32
  %i.ddt = add nuw nsw i32 %i.ddm, %i.dds         ; 2 uses
  %i.ddu = icmp samesign ugt i32 %i.ddt, 4
  br i1 %i.ddu, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.lr.ph2698
  %.not2400 = icmp eq i32 %i.ddt, 4
  br i1 %.not2400, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ddv = lshr i64 %indvars.iv2946, 1
  %2 = and i64 %i.ddv, 2147483647
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2
  %i.ddx = load i8, ptr %i.ddw, align 1, !tbaa !55
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %.lr.ph2698
  %i.ddy = phi i8 [ 1, %.lr.ph2698 ], [ %i.ddx, %bb.av ], [ 0, %bb.au ]
  %i.ddz = lshr i64 %indvars.iv2946, 1
  %3 = and i64 %i.ddz, 2147483647
  %i.dea = getelementptr inbounds nuw i8, ptr %i.s, i64 %3
  store i8 %i.ddy, ptr %i.dea, align 1, !tbaa !55
  %i.deb = icmp sgt i32 %i.dbk, %i.dcs
  br i1 %i.deb, label %.lr.ph2698, label %._crit_edge2699, !llvm.loop !1563

bb.ax:                                            ; preds = %.lr.ph2723, %._crit_edge2721
  %indvars.iv2959.a = phi i64 [ %i.dba, %.lr.ph2723 ], [ %indvars.iv.next2960.a, %._crit_edge2721 ] ; 2 uses
  %indvars.iv2950 = phi i32 [ %i.daz, %.lr.ph2723 ], [ %indvars.iv.next2951, %._crit_edge2721 ] ; 2 uses
  %.022762722 = phi i32 [ %.sroa.speculated2483, %.lr.ph2723 ], [ %i.deq, %._crit_edge2721 ] ; 3 uses
  %i.dec = mul nuw nsw i32 %.022762722, 160       ; 2 uses
  %i.ded = add nuw nsw i32 %i.dec, %.sroa.speculated2475
  %i.dee = and i32 %.022762722, 1
  %i.def = zext nneg i32 %i.dee to i64
  %i.deg = getelementptr inbounds nuw [8 x i8], ptr %.val2427, i64 %i.def
  %i.deh = load i32, ptr %i.deg, align 4, !tbaa !76 ; 2 uses
  %i.dei = and i32 %i.deh, 1                      ; 2 uses
  %i.dej = or disjoint i32 %i.dei, %i.ded
  %i.dek = add nsw i32 %i.dec, %.sroa.speculated  ; 2 uses
  %i.del = icmp slt i32 %i.dej, %i.dek
  br i1 %i.del, label %.lr.ph2720.preheader, label %._crit_edge2721

.lr.ph2720.preheader:                             ; preds = %bb.ax
  %i.dem = or disjoint i32 %indvars.iv2950, %i.dei
  %i.den = and i32 %i.deh, 1
  %i.deo = zext nneg i32 %i.den to i64
  %i.dep = or disjoint i64 %indvars.iv2959.a, %i.deo
  br label %.lr.ph2720

._crit_edge2721:                                  ; preds = %bb.bn, %bb.ax
  %i.deq = add nuw nsw i32 %.022762722, 1         ; 2 uses
  %indvars.iv.next2951 = add i32 %indvars.iv2950, 160
  %indvars.iv.next2960.a = add nuw nsw i64 %indvars.iv2959.a, 160
  %exitcond2964.not = icmp eq i32 %i.deq, %.sroa.speculated2479
  br i1 %exitcond2964.not, label %.loopexit2572, label %bb.ax, !llvm.loop !1564

.lr.ph2720:                                       ; preds = %.lr.ph2720.preheader, %bb.bn
  %indvars.iv2961 = phi i64 [ %i.dep, %.lr.ph2720.preheader ], [ %indvars.iv.next2962, %bb.bn ] ; 2 uses
  %indvars.iv2952 = phi i32 [ %i.dem, %.lr.ph2720.preheader ], [ %indvars.iv.next2953, %bb.bn ] ; 2 uses
  %i.der = lshr i64 %indvars.iv2961, 1
  %4 = and i64 %i.der, 2147483647                 ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.s, i64 %4
  %i.det = load i8, ptr %i.des, align 1, !tbaa !55
  %.not2398 = icmp eq i8 %i.det, 0
  br i1 %.not2398, label %bb.bn, label %.preheader2570

bb.ay:                                            ; preds = %bb.bm
  %i.deu = shufflevector <2 x float> %i.dop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.doo, <2 x float> splat (float -5.000000e-01), <2 x float> %i.deu) ; 2 uses
  %i.dew = extractelement <2 x float> %i.dop, i64 1
  %i.dex = fmul float %i.dew, 5.000000e-01
  %i.dey = fneg <2 x float> %i.dev
  %i.dez = fmul <2 x float> %i.dev, %i.dey
  %i.dfa = insertelement <2 x float> poison, float %i.dex, i64 0
  %i.dfb = shufflevector <2 x float> %i.dfa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dfc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dfb, <2 x float> %i.don, <2 x float> %i.dez)
  %i.dfd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dfc)
  %i.dfe = fadd <2 x float> %i.dfd, splat (float 1.000000e-10) ; 2 uses
  %i.dff = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dfe)
  %i.dfg = extractelement <2 x float> %i.dfe, i64 0
  %i.dfh = fdiv float %i.dfg, %i.dff
  %i.dfi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %4
  store float %i.dfh, ptr %i.dfi, align 4, !tbaa !109
  br label %bb.bn

.preheader2570:                                   ; preds = %.lr.ph2720, %bb.bm
  %indvars.iv2954 = phi i32 [ %indvars.iv.next2955, %bb.bm ], [ %indvars.iv2952, %.lr.ph2720 ] ; 3 uses
  %.022562717 = phi i32 [ %i.doq, %bb.bm ], [ -6, %.lr.ph2720 ] ; 2 uses
  %i.dfj = phi <2 x float> [ %i.doo, %bb.bm ], [ zeroinitializer, %.lr.ph2720 ] ; 2 uses
  %i.dfk = phi <2 x float> [ %i.don, %bb.bm ], [ zeroinitializer, %.lr.ph2720 ] ; 2 uses
  %i.dfl = phi <2 x float> [ %i.dop, %bb.bm ], [ zeroinitializer, %.lr.ph2720 ] ; 2 uses
  %i.dfm = sext i32 %indvars.iv2954 to i64        ; 7 uses
  %i.dfn = ashr i32 %indvars.iv2954, 1
  %i.dfo = sext i32 %i.dfn to i64
  %i.dfp = getelementptr inbounds i8, ptr %i.s, i64 %i.dfo
  %i.dfq = load i8, ptr %i.dfp, align 1, !tbaa !55
  %.not2399 = icmp eq i8 %i.dfq, 0
  br i1 %.not2399, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader2570
  %i.dfr = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.dfm ; 5 uses
  %i.dfs = load float, ptr %i.dfr, align 4, !tbaa !109 ; 2 uses
  %i.dft = getelementptr i8, ptr %i.dfr, i64 -4
  %i.dfu = load float, ptr %i.dft, align 4, !tbaa !109
  %i.dfv = getelementptr i8, ptr %i.dfr, i64 4
  %i.dfw = load float, ptr %i.dfv, align 4, !tbaa !109
  %i.dfx = getelementptr i8, ptr %i.dfr, i64 -640
  %i.dfy = load float, ptr %i.dfx, align 4, !tbaa !109
  %i.dfz = getelementptr i8, ptr %i.dfr, i64 640
  %i.dga = load float, ptr %i.dfz, align 4, !tbaa !109
  %i.dgb = insertelement <2 x float> poison, float %i.dfu, i64 0
  %i.dgc = insertelement <2 x float> %i.dgb, float %i.dfy, i64 1 ; 2 uses
  %i.dgd = insertelement <2 x float> poison, float %i.dfw, i64 0
  %i.dge = insertelement <2 x float> %i.dgd, float %i.dga, i64 1 ; 2 uses
  %i.dgf = fadd <2 x float> %i.dgc, %i.dge
  %i.dgg = fadd <2 x float> %i.dfj, %i.dgf
  %i.dgh = insertelement <2 x float> poison, float %i.dfs, i64 0
  %i.dgi = shufflevector <2 x float> %i.dgh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dgj = fsub <2 x float> %i.dgi, %i.dgc        ; 2 uses
  %i.dgk = fmul <2 x float> %i.dgj, %i.dgj
  %i.dgl = fsub <2 x float> %i.dgi, %i.dge        ; 2 uses
  %i.dgm = fmul <2 x float> %i.dgl, %i.dgl
  %i.dgn = fadd <2 x float> %i.dgk, %i.dgm
  %i.dgo = fadd <2 x float> %i.dfk, %i.dgn
  %i.dgp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dfs, i64 0
  %i.dgq = fadd <2 x float> %i.dfl, %i.dgp
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader2570, %bb.az
  %i.dgr = phi <2 x float> [ %i.dgq, %bb.az ], [ %i.dfl, %.preheader2570 ] ; 2 uses
  %i.dgs = phi <2 x float> [ %i.dgg, %bb.az ], [ %i.dfj, %.preheader2570 ] ; 2 uses
  %i.dgt = phi <2 x float> [ %i.dgo, %bb.az ], [ %i.dfk, %.preheader2570 ] ; 2 uses
  %indvars.iv.next2957 = add nsw i64 %i.dfm, 2    ; 2 uses
  %i.dgu = trunc nsw i64 %indvars.iv.next2957 to i32
  %i.dgv = ashr i32 %i.dgu, 1
  %i.dgw = sext i32 %i.dgv to i64
  %i.dgx = getelementptr inbounds i8, ptr %i.s, i64 %i.dgw
  %i.dgy = load i8, ptr %i.dgx, align 1, !tbaa !55
  %.not2399.1 = icmp eq i8 %i.dgy, 0
  br i1 %.not2399.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dgz = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957 ; 5 uses
  %i.dha = load float, ptr %i.dgz, align 4, !tbaa !109 ; 2 uses
  %i.dhb = getelementptr i8, ptr %i.dgz, i64 -4
  %i.dhc = load float, ptr %i.dhb, align 4, !tbaa !109
  %i.dhd = getelementptr i8, ptr %i.dgz, i64 4
  %i.dhe = load float, ptr %i.dhd, align 4, !tbaa !109
  %i.dhf = getelementptr i8, ptr %i.dgz, i64 -640
  %i.dhg = load float, ptr %i.dhf, align 4, !tbaa !109
  %i.dhh = getelementptr i8, ptr %i.dgz, i64 640
  %i.dhi = load float, ptr %i.dhh, align 4, !tbaa !109
  %i.dhj = insertelement <2 x float> poison, float %i.dhc, i64 0
  %i.dhk = insertelement <2 x float> %i.dhj, float %i.dhg, i64 1 ; 2 uses
  %i.dhl = insertelement <2 x float> poison, float %i.dhe, i64 0
  %i.dhm = insertelement <2 x float> %i.dhl, float %i.dhi, i64 1 ; 2 uses
  %i.dhn = fadd <2 x float> %i.dhk, %i.dhm
  %i.dho = fadd <2 x float> %i.dgs, %i.dhn
  %i.dhp = insertelement <2 x float> poison, float %i.dha, i64 0
  %i.dhq = shufflevector <2 x float> %i.dhp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dhr = fsub <2 x float> %i.dhq, %i.dhk        ; 2 uses
  %i.dhs = fmul <2 x float> %i.dhr, %i.dhr
  %i.dht = fsub <2 x float> %i.dhq, %i.dhm        ; 2 uses
  %i.dhu = fmul <2 x float> %i.dht, %i.dht
  %i.dhv = fadd <2 x float> %i.dhs, %i.dhu
  %i.dhw = fadd <2 x float> %i.dgt, %i.dhv
  %i.dhx = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dha, i64 0
  %i.dhy = fadd <2 x float> %i.dgr, %i.dhx
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dhz = phi <2 x float> [ %i.dhy, %bb.bb ], [ %i.dgr, %bb.ba ] ; 2 uses
  %i.dia = phi <2 x float> [ %i.dho, %bb.bb ], [ %i.dgs, %bb.ba ] ; 2 uses
  %i.dib = phi <2 x float> [ %i.dhw, %bb.bb ], [ %i.dgt, %bb.ba ] ; 2 uses
  %indvars.iv.next2957.1 = add nsw i64 %i.dfm, 4  ; 2 uses
  %i.dic = trunc nsw i64 %indvars.iv.next2957.1 to i32
  %i.did = ashr i32 %i.dic, 1
  %i.die = sext i32 %i.did to i64
  %i.dif = getelementptr inbounds i8, ptr %i.s, i64 %i.die
  %i.dig = load i8, ptr %i.dif, align 1, !tbaa !55
  %.not2399.2 = icmp eq i8 %i.dig, 0
  br i1 %.not2399.2, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dih = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957.1 ; 5 uses
  %i.dii = load float, ptr %i.dih, align 4, !tbaa !109 ; 2 uses
  %i.dij = getelementptr i8, ptr %i.dih, i64 -4
  %i.dik = load float, ptr %i.dij, align 4, !tbaa !109
  %i.dil = getelementptr i8, ptr %i.dih, i64 4
  %i.dim = load float, ptr %i.dil, align 4, !tbaa !109
  %i.din = getelementptr i8, ptr %i.dih, i64 -640
  %i.dio = load float, ptr %i.din, align 4, !tbaa !109
  %i.dip = getelementptr i8, ptr %i.dih, i64 640
  %i.diq = load float, ptr %i.dip, align 4, !tbaa !109
  %i.dir = insertelement <2 x float> poison, float %i.dik, i64 0
  %i.dis = insertelement <2 x float> %i.dir, float %i.dio, i64 1 ; 2 uses
  %i.dit = insertelement <2 x float> poison, float %i.dim, i64 0
  %i.diu = insertelement <2 x float> %i.dit, float %i.diq, i64 1 ; 2 uses
  %i.div = fadd <2 x float> %i.dis, %i.diu
  %i.diw = fadd <2 x float> %i.dia, %i.div
  %i.dix = insertelement <2 x float> poison, float %i.dii, i64 0
  %i.diy = shufflevector <2 x float> %i.dix, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.diz = fsub <2 x float> %i.diy, %i.dis        ; 2 uses
  %i.dja = fmul <2 x float> %i.diz, %i.diz
  %i.djb = fsub <2 x float> %i.diy, %i.diu        ; 2 uses
  %i.djc = fmul <2 x float> %i.djb, %i.djb
  %i.djd = fadd <2 x float> %i.dja, %i.djc
  %i.dje = fadd <2 x float> %i.dib, %i.djd
  %i.djf = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dii, i64 0
  %i.djg = fadd <2 x float> %i.dhz, %i.djf
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.djh = phi <2 x float> [ %i.djg, %bb.bd ], [ %i.dhz, %bb.bc ] ; 2 uses
  %i.dji = phi <2 x float> [ %i.diw, %bb.bd ], [ %i.dia, %bb.bc ] ; 2 uses
  %i.djj = phi <2 x float> [ %i.dje, %bb.bd ], [ %i.dib, %bb.bc ] ; 2 uses
  %indvars.iv.next2957.2 = add nsw i64 %i.dfm, 6  ; 2 uses
  %i.djk = trunc nsw i64 %indvars.iv.next2957.2 to i32
  %i.djl = ashr i32 %i.djk, 1
  %i.djm = sext i32 %i.djl to i64
  %i.djn = getelementptr inbounds i8, ptr %i.s, i64 %i.djm
  %i.djo = load i8, ptr %i.djn, align 1, !tbaa !55
  %.not2399.3 = icmp eq i8 %i.djo, 0
  br i1 %.not2399.3, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.djp = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957.2 ; 5 uses
  %i.djq = load float, ptr %i.djp, align 4, !tbaa !109 ; 2 uses
  %i.djr = getelementptr i8, ptr %i.djp, i64 -4
  %i.djs = load float, ptr %i.djr, align 4, !tbaa !109
  %i.djt = getelementptr i8, ptr %i.djp, i64 4
  %i.dju = load float, ptr %i.djt, align 4, !tbaa !109
  %i.djv = getelementptr i8, ptr %i.djp, i64 -640
  %i.djw = load float, ptr %i.djv, align 4, !tbaa !109
  %i.djx = getelementptr i8, ptr %i.djp, i64 640
  %i.djy = load float, ptr %i.djx, align 4, !tbaa !109
  %i.djz = insertelement <2 x float> poison, float %i.djs, i64 0
  %i.dka = insertelement <2 x float> %i.djz, float %i.djw, i64 1 ; 2 uses
  %i.dkb = insertelement <2 x float> poison, float %i.dju, i64 0
  %i.dkc = insertelement <2 x float> %i.dkb, float %i.djy, i64 1 ; 2 uses
  %i.dkd = fadd <2 x float> %i.dka, %i.dkc
  %i.dke = fadd <2 x float> %i.dji, %i.dkd
  %i.dkf = insertelement <2 x float> poison, float %i.djq, i64 0
  %i.dkg = shufflevector <2 x float> %i.dkf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dkh = fsub <2 x float> %i.dkg, %i.dka        ; 2 uses
  %i.dki = fmul <2 x float> %i.dkh, %i.dkh
  %i.dkj = fsub <2 x float> %i.dkg, %i.dkc        ; 2 uses
  %i.dkk = fmul <2 x float> %i.dkj, %i.dkj
  %i.dkl = fadd <2 x float> %i.dki, %i.dkk
  %i.dkm = fadd <2 x float> %i.djj, %i.dkl
  %i.dkn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.djq, i64 0
  %i.dko = fadd <2 x float> %i.djh, %i.dkn
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.dkp = phi <2 x float> [ %i.dkm, %bb.bf ], [ %i.djj, %bb.be ] ; 2 uses
  %i.dkq = phi <2 x float> [ %i.dko, %bb.bf ], [ %i.djh, %bb.be ] ; 2 uses
  %i.dkr = phi <2 x float> [ %i.dke, %bb.bf ], [ %i.dji, %bb.be ] ; 2 uses
  %indvars.iv.next2957.3 = add nsw i64 %i.dfm, 8  ; 2 uses
  %i.dks = trunc nsw i64 %indvars.iv.next2957.3 to i32
  %i.dkt = ashr i32 %i.dks, 1
  %i.dku = sext i32 %i.dkt to i64
  %i.dkv = getelementptr inbounds i8, ptr %i.s, i64 %i.dku
  %i.dkw = load i8, ptr %i.dkv, align 1, !tbaa !55
  %.not2399.4 = icmp eq i8 %i.dkw, 0
  br i1 %.not2399.4, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dkx = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957.3 ; 5 uses
  %i.dky = load float, ptr %i.dkx, align 4, !tbaa !109 ; 2 uses
  %i.dkz = getelementptr i8, ptr %i.dkx, i64 -4
  %i.dla = load float, ptr %i.dkz, align 4, !tbaa !109
  %i.dlb = getelementptr i8, ptr %i.dkx, i64 4
  %i.dlc = load float, ptr %i.dlb, align 4, !tbaa !109
  %i.dld = getelementptr i8, ptr %i.dkx, i64 -640
  %i.dle = load float, ptr %i.dld, align 4, !tbaa !109
  %i.dlf = getelementptr i8, ptr %i.dkx, i64 640
  %i.dlg = load float, ptr %i.dlf, align 4, !tbaa !109
  %i.dlh = insertelement <2 x float> poison, float %i.dla, i64 0
  %i.dli = insertelement <2 x float> %i.dlh, float %i.dle, i64 1 ; 2 uses
  %i.dlj = insertelement <2 x float> poison, float %i.dlc, i64 0
  %i.dlk = insertelement <2 x float> %i.dlj, float %i.dlg, i64 1 ; 2 uses
end_hunk_0
