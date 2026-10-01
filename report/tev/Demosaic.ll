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
  %.022812689 = phi i32 [ 6, %.lr.ph2690 ], [ %i.czy, %._crit_edge2680 ] ; 6 uses
  %.025392688 = phi i32 [ 0, %.lr.ph2690 ], [ %.12540.lcssa, %._crit_edge2680 ] ; 3 uses
  %.025432687 = phi i32 [ 161, %.lr.ph2690 ], [ %.12544.lcssa, %._crit_edge2680 ] ; 3 uses
  %.025472686 = phi i32 [ 0, %.lr.ph2690 ], [ %.12548.lcssa, %._crit_edge2680 ] ; 3 uses
  %.025512685 = phi i32 [ 0, %.lr.ph2690 ], [ %.12552.lcssa, %._crit_edge2680 ] ; 4 uses
  %i.cyb = load ptr, ptr %i.csf, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2429 = load ptr, ptr %i.cyb, align 8, !tbaa !403
  %i.cyc = and i32 %.022812689, 1
  %i.cyd = zext nneg i32 %i.cyc to i64
  %i.cye = getelementptr inbounds nuw [8 x i8], ptr %.val2429, i64 %i.cyd
  %i.cyf = load i32, ptr %i.cye, align 4, !tbaa !76
  %i.cyg = and i32 %i.cyf, 1                      ; 3 uses
  %i.cyh = or disjoint i32 %i.cyg, 6              ; 4 uses
  %i.cyi = icmp slt i32 %i.cyh, %i.csg
  br i1 %i.cyi, label %.lr.ph2679.preheader, label %._crit_edge2680

.lr.ph2679.preheader:                             ; preds = %bb.ap
  %i.cyj = or disjoint i32 %indvars.iv2938, %i.cyg
  %i.cyk = zext i32 %i.cyj to i64                 ; 3 uses
  %i.cyl = add i32 %i.f, %i.cyg
  %i.cym = sub i32 %i.csh, %i.cyl                 ; 2 uses
  %i.cyn = lshr i32 %i.cym, 1
  %narrow = add nuw i32 %i.cyn, 1
  %i.cyo = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check3691 = icmp ult i32 %i.cym, 6
  br i1 %min.iters.check3691, label %.lr.ph2679.preheader3770, label %vector.ph3692

vector.ph3692:                                    ; preds = %.lr.ph2679.preheader
  %n.vec3693 = and i64 %i.cyo, 4294967292         ; 4 uses
  %i.cyp = shl nuw nsw i64 %n.vec3693, 1
  %i.cyq = add nuw nsw i64 %i.cyp, %i.cyk
  %i.cyr = trunc nuw i64 %n.vec3693 to i32
  %i.cys = shl i32 %i.cyr, 1
  %i.cyt = or disjoint i32 %i.cyh, %i.cys
  %i.cyu = icmp eq i32 %.025512685, 0
  %broadcast.splatinsert3712 = insertelement <4 x i1> poison, i1 %i.cyu, i64 0
  %broadcast.splat3713 = shufflevector <4 x i1> %broadcast.splatinsert3712, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.022812689, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3694 = insertelement <4 x i32> poison, i32 %.025392688, i64 0
  %broadcast.splat3695 = shufflevector <4 x i32> %broadcast.splatinsert3694, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3696 = insertelement <4 x i32> poison, i32 %.025432687, i64 0
  %broadcast.splat3697 = shufflevector <4 x i32> %broadcast.splatinsert3696, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3698 = insertelement <4 x i32> poison, i32 %i.cyh, i64 0
  %broadcast.splat3699 = shufflevector <4 x i32> %broadcast.splatinsert3698, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat3699, <i32 0, i32 2, i32 4, i32 6>
  br label %vector.body3700

vector.body3700:                                  ; preds = %pred.store.continue3711, %vector.ph3692
  %index3701 = phi i64 [ 0, %vector.ph3692 ], [ %index.next3716, %pred.store.continue3711 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph3692 ], [ %vec.ind.next, %pred.store.continue3711 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat3695, %vector.ph3692 ], [ %predphi3715, %pred.store.continue3711 ] ; 2 uses
  %vec.phi3702 = phi <4 x i32> [ %broadcast.splat3697, %vector.ph3692 ], [ %predphi3714, %pred.store.continue3711 ] ; 2 uses
  %vec.phi3703 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph3692 ], [ %predphi, %pred.store.continue3711 ]
  %vec.phi3704 = phi <4 x i1> [ zeroinitializer, %vector.ph3692 ], [ %i.czr, %pred.store.continue3711 ]
  %i.cyv = shl nuw i64 %index3701, 1
  %i.cyw = add nuw i64 %i.cyv, %i.cyk             ; 4 uses
  %i.cyx = lshr i64 %i.cyw, 1                     ; 2 uses
  %i.cyy = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cyx
  %wide.load3705 = load <4 x float>, ptr %i.cyy, align 4, !tbaa !109
  %i.cyz = fcmp ogt <4 x float> %wide.load3705, zeroinitializer ; 8 uses
  %i.cza = extractelement <4 x i1> %i.cyz, i64 0
  br i1 %i.cza, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body3700
  %i.czb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cyx
  store i8 1, ptr %i.czb, align 1, !tbaa !55
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body3700
  %i.czc = extractelement <4 x i1> %i.cyz, i64 1
  br i1 %i.czc, label %pred.store.if3706, label %pred.store.continue3707

pred.store.if3706:                                ; preds = %pred.store.continue
  %i.czd = add i64 %i.cyw, 2
  %i.cze = lshr i64 %i.czd, 1
  %i.czf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cze
  store i8 1, ptr %i.czf, align 1, !tbaa !55
  br label %pred.store.continue3707

pred.store.continue3707:                          ; preds = %pred.store.if3706, %pred.store.continue
  %i.czg = extractelement <4 x i1> %i.cyz, i64 2
  br i1 %i.czg, label %pred.store.if3708, label %pred.store.continue3709

pred.store.if3708:                                ; preds = %pred.store.continue3707
  %i.czh = add i64 %i.cyw, 4
  %i.czi = lshr i64 %i.czh, 1
  %i.czj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.czi
  store i8 1, ptr %i.czj, align 1, !tbaa !55
  br label %pred.store.continue3709

pred.store.continue3709:                          ; preds = %pred.store.if3708, %pred.store.continue3707
  %i.czk = extractelement <4 x i1> %i.cyz, i64 3
  br i1 %i.czk, label %pred.store.if3710, label %pred.store.continue3711

pred.store.if3710:                                ; preds = %pred.store.continue3709
  %i.czl = add i64 %i.cyw, 6
  %i.czm = lshr i64 %i.czl, 1
  %i.czn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.czm
  store i8 1, ptr %i.czn, align 1, !tbaa !55
  br label %pred.store.continue3711

pred.store.continue3711:                          ; preds = %pred.store.if3710, %pred.store.continue3709
  %i.czo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi3702, <4 x i32> %vec.ind)
  %i.czp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %vec.ind)
  %i.czq = select <4 x i1> %i.cyz, <4 x i1> %broadcast.splat3713, <4 x i1> zeroinitializer
  %.fr = freeze <4 x i1> %i.czq
  %i.czr = or <4 x i1> %vec.phi3704, %.fr         ; 2 uses
  %predphi = select <4 x i1> %i.cyz, <4 x i32> %broadcast.splat, <4 x i32> %vec.phi3703 ; 2 uses
  %predphi3714 = select <4 x i1> %i.cyz, <4 x i32> %i.czo, <4 x i32> %vec.phi3702 ; 2 uses
  %predphi3715 = select <4 x i1> %i.cyz, <4 x i32> %i.czp, <4 x i32> %vec.phi ; 2 uses
  %index.next3716 = add nuw i64 %index3701, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.czs = icmp eq i64 %index.next3716, %n.vec3693
  br i1 %i.czs, label %middle.block3717, label %vector.body3700, !llvm.loop !1559

middle.block3717:                                 ; preds = %pred.store.continue3711
  %i.czt = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %predphi3715) ; 2 uses
  %i.czu = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %predphi3714) ; 2 uses
  %i.czv = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %predphi) ; 2 uses
  %.not3735 = icmp eq i32 %i.czv, -2147483648
  %i.czw = select i1 %.not3735, i32 %.025472686, i32 %i.czv ; 2 uses
  %i.czx = bitcast <4 x i1> %i.czr to i4
  %.not3737 = icmp eq i4 %i.czx, 0
  %rdx.select = select i1 %.not3737, i32 %.025512685, i32 %.022812689 ; 2 uses
  %cmp.n3718 = icmp eq i64 %n.vec3693, %i.cyo
  br i1 %cmp.n3718, label %._crit_edge2680, label %.lr.ph2679.preheader3770

.lr.ph2679.preheader3770:                         ; preds = %.lr.ph2679.preheader, %middle.block3717
  %indvars.iv2940.ph = phi i64 [ %i.cyk, %.lr.ph2679.preheader ], [ %i.cyq, %middle.block3717 ]
  %.022802676.ph = phi i32 [ %i.cyh, %.lr.ph2679.preheader ], [ %i.cyt, %middle.block3717 ]
  %.125402675.ph = phi i32 [ %.025392688, %.lr.ph2679.preheader ], [ %i.czt, %middle.block3717 ]
  %.125442674.ph = phi i32 [ %.025432687, %.lr.ph2679.preheader ], [ %i.czu, %middle.block3717 ]
  %.125482673.ph = phi i32 [ %.025472686, %.lr.ph2679.preheader ], [ %i.czw, %middle.block3717 ]
  %.125522672.ph = phi i32 [ %.025512685, %.lr.ph2679.preheader ], [ %rdx.select, %middle.block3717 ]
  br label %.lr.ph2679

._crit_edge2680:                                  ; preds = %bb.ar, %middle.block3717, %bb.ap
  %.12552.lcssa = phi i32 [ %.025512685, %bb.ap ], [ %rdx.select, %middle.block3717 ], [ %.22553, %bb.ar ] ; 4 uses
  %.12548.lcssa = phi i32 [ %.025472686, %bb.ap ], [ %i.czw, %middle.block3717 ], [ %.22549, %bb.ar ] ; 4 uses
  %.12544.lcssa = phi i32 [ %.025432687, %bb.ap ], [ %i.czu, %middle.block3717 ], [ %.22545, %bb.ar ] ; 4 uses
  %.12540.lcssa = phi i32 [ %.025392688, %bb.ap ], [ %i.czt, %middle.block3717 ], [ %.22541, %bb.ar ] ; 4 uses
  %i.czy = add nuw nsw i32 %.022812689, 1         ; 2 uses
  %indvars.iv.next2939 = add i32 %indvars.iv2938, 160
  %exitcond2943.not = icmp eq i32 %i.czy, %i.cbj
  br i1 %exitcond2943.not, label %._crit_edge2691, label %bb.ap, !llvm.loop !1560

.lr.ph2679:                                       ; preds = %.lr.ph2679.preheader3770, %bb.ar
  %indvars.iv2940 = phi i64 [ %indvars.iv.next2941, %bb.ar ], [ %indvars.iv2940.ph, %.lr.ph2679.preheader3770 ] ; 2 uses
  %.022802676 = phi i32 [ %i.dah, %bb.ar ], [ %.022802676.ph, %.lr.ph2679.preheader3770 ] ; 3 uses
  %.125402675 = phi i32 [ %.22541, %bb.ar ], [ %.125402675.ph, %.lr.ph2679.preheader3770 ] ; 2 uses
  %.125442674 = phi i32 [ %.22545, %bb.ar ], [ %.125442674.ph, %.lr.ph2679.preheader3770 ] ; 2 uses
  %.125482673 = phi i32 [ %.22549, %bb.ar ], [ %.125482673.ph, %.lr.ph2679.preheader3770 ]
  %.125522672 = phi i32 [ %.22553, %bb.ar ], [ %.125522672.ph, %.lr.ph2679.preheader3770 ] ; 3 uses
  %i.czz = lshr i64 %indvars.iv2940, 1            ; 2 uses
  %i.daa = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.czz
  %i.dab = load float, ptr %i.daa, align 4, !tbaa !109
  %i.dac = fcmp ogt float %i.dab, 0.000000e+00
  br i1 %i.dac, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph2679
  %i.dad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.czz
  store i8 1, ptr %i.dad, align 1, !tbaa !55
  %.not2401 = icmp eq i32 %.125522672, 0
  %i.dae = select i1 %.not2401, i32 %.022812689, i32 %.125522672
  %i.daf = tail call i32 @llvm.smin.i32(i32 %.125442674, i32 %.022802676)
  %i.dag = tail call i32 @llvm.smax.i32(i32 %.125402675, i32 %.022802676)
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph2679, %bb.aq
  %.22553 = phi i32 [ %i.dae, %bb.aq ], [ %.125522672, %.lr.ph2679 ] ; 2 uses
  %.22549 = phi i32 [ %.022812689, %bb.aq ], [ %.125482673, %.lr.ph2679 ] ; 2 uses
  %.22545 = phi i32 [ %i.daf, %bb.aq ], [ %.125442674, %.lr.ph2679 ] ; 2 uses
  %.22541 = phi i32 [ %i.dag, %bb.aq ], [ %.125402675, %.lr.ph2679 ] ; 2 uses
  %i.dah = add nuw nsw i32 %.022802676, 2         ; 2 uses
  %indvars.iv.next2941 = add nuw nsw i64 %indvars.iv2940, 2
  %i.dai = icmp slt i32 %i.dah, %i.csg
  br i1 %i.dai, label %.lr.ph2679, label %._crit_edge2680, !llvm.loop !1561

bb.as:                                            ; preds = %._crit_edge2691
  %i.daj = add nsw i32 %.12548.lcssa, 1
  %i.dak = add nsw i32 %.12540.lcssa, 1
  %i.dal = and i32 %.12544.lcssa, -2
  %.sroa.speculated2483 = tail call i32 @llvm.smax.i32(i32 %.12552.lcssa, i32 8) ; 7 uses
  %i.dam = add nsw i32 %i.an, -8                  ; 3 uses
  %.sroa.speculated2479 = tail call i32 @llvm.smin.i32(i32 %i.daj, i32 %i.dam) ; 5 uses
  %.sroa.speculated2475 = tail call i32 @llvm.smax.i32(i32 %i.dal, i32 8) ; 6 uses
  %i.dan = add nsw i32 %i.ao, -8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.dak, i32 %i.dan) ; 4 uses
  %i.dao = getelementptr inbounds nuw i8, ptr %i.k, i64 820544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(12160) %i.dao, i8 0, i64 12160, i1 false)
  %i.dap = icmp slt i32 %.sroa.speculated2483, %.sroa.speculated2479
  br i1 %i.dap, label %.lr.ph2702, label %.loopexit2572

.lr.ph2702:                                       ; preds = %bb.as
  %i.daq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dar = mul nuw i32 %.sroa.speculated2483, 160
  %i.das = add i32 %.sroa.speculated2475, %i.dar
  %i.dat = zext i32 %i.das to i64
  br label %bb.at

.lr.ph2723:                                       ; preds = %._crit_edge2699
  %i.dau = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dav = load ptr, ptr %i.dau, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2427 = load ptr, ptr %i.dav, align 8, !tbaa !403
  %i.daw = mul i32 %.sroa.speculated2483, 160
  %i.dax = add i32 %.sroa.speculated2475, %i.daw  ; 2 uses
  %i.day = add i32 %i.dax, -966
  %i.daz = zext i32 %i.dax to i64
  br label %bb.ax

bb.at:                                            ; preds = %.lr.ph2702, %._crit_edge2699
  %indvars.iv2944 = phi i64 [ %i.dat, %.lr.ph2702 ], [ %indvars.iv.next2945, %._crit_edge2699 ] ; 2 uses
  %.022782700 = phi i32 [ %.sroa.speculated2483, %.lr.ph2702 ], [ %i.dbo, %._crit_edge2699 ] ; 3 uses
  %i.dba = mul nuw nsw i32 %.022782700, 160       ; 2 uses
  %i.dbb = add nuw nsw i32 %i.dba, %.sroa.speculated2475
  %i.dbc = load ptr, ptr %i.daq, align 8, !tbaa !1633, !nonnull !204, !align !206
  %.val2428 = load ptr, ptr %i.dbc, align 8, !tbaa !403
  %i.dbd = and i32 %.022782700, 1
  %i.dbe = zext nneg i32 %i.dbd to i64
  %i.dbf = getelementptr inbounds nuw [8 x i8], ptr %.val2428, i64 %i.dbe
  %i.dbg = load i32, ptr %i.dbf, align 4, !tbaa !76 ; 2 uses
  %i.dbh = and i32 %i.dbg, 1
  %i.dbi = or disjoint i32 %i.dbh, %i.dbb
  %i.dbj = add nsw i32 %i.dba, %.sroa.speculated  ; 2 uses
  %i.dbk = icmp slt i32 %i.dbi, %i.dbj
  br i1 %i.dbk, label %.lr.ph2698.preheader, label %._crit_edge2699

.lr.ph2698.preheader:                             ; preds = %bb.at
  %i.dbl = and i32 %i.dbg, 1
  %i.dbm = zext nneg i32 %i.dbl to i64
  %i.dbn = or disjoint i64 %indvars.iv2944, %i.dbm
  br label %.lr.ph2698

._crit_edge2699:                                  ; preds = %bb.aw, %bb.at
  %i.dbo = add nuw nsw i32 %.022782700, 1         ; 2 uses
  %indvars.iv.next2945 = add nuw nsw i64 %indvars.iv2944, 160
  %exitcond2949.not = icmp eq i32 %i.dbo, %.sroa.speculated2479
  br i1 %exitcond2949.not, label %.lr.ph2723, label %bb.at, !llvm.loop !1562

.lr.ph2698:                                       ; preds = %.lr.ph2698.preheader, %bb.aw
  %indvars.iv2946 = phi i64 [ %i.dbn, %.lr.ph2698.preheader ], [ %indvars.iv.next2947, %bb.aw ] ; 7 uses
  %i.dbp = trunc nuw i64 %indvars.iv2946 to i32   ; 4 uses
  %i.dbq = add nsw i32 %i.dbp, -320
  %i.dbr = ashr i32 %i.dbq, 1
  %i.dbs = sext i32 %i.dbr to i64
  %i.dbt = getelementptr inbounds i8, ptr %i.ab, i64 %i.dbs
  %i.dbu = load i8, ptr %i.dbt, align 1, !tbaa !55
  %i.dbv = zext i8 %i.dbu to i32
  %i.dbw = add nsw i32 %i.dbp, -161
  %i.dbx = ashr i32 %i.dbw, 1
  %i.dby = sext i32 %i.dbx to i64
  %i.dbz = getelementptr inbounds i8, ptr %i.ab, i64 %i.dby
  %i.dca = load i8, ptr %i.dbz, align 1, !tbaa !55
  %i.dcb = zext i8 %i.dca to i32
  %i.dcc = add nuw nsw i32 %i.dcb, %i.dbv
  %i.dcd = add nsw i32 %i.dbp, -159
  %i.dce = ashr i32 %i.dcd, 1
  %i.dcf = sext i32 %i.dce to i64
  %i.dcg = getelementptr inbounds i8, ptr %i.ab, i64 %i.dcf
  %i.dch = load i8, ptr %i.dcg, align 1, !tbaa !55
  %i.dci = zext i8 %i.dch to i32
  %i.dcj = add nuw nsw i32 %i.dcc, %i.dci
  %i.dck = add nsw i32 %i.dbp, -2
  %i.dcl = ashr i32 %i.dck, 1
  %i.dcm = sext i32 %i.dcl to i64
  %i.dcn = getelementptr inbounds i8, ptr %i.ab, i64 %i.dcm
  %i.dco = load i8, ptr %i.dcn, align 1, !tbaa !55
  %i.dcp = zext i8 %i.dco to i32
  %i.dcq = add nuw nsw i32 %i.dcj, %i.dcp
  %indvars.iv.next2947 = add nuw nsw i64 %indvars.iv2946, 2 ; 3 uses
  %i.dcr = trunc nuw i64 %indvars.iv.next2947 to i32
  %i.dcs = lshr i64 %indvars.iv.next2947, 1
  %i.dct = and i64 %i.dcs, 2147483647
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.dct
  %i.dcv = load i8, ptr %i.dcu, align 1, !tbaa !55
  %i.dcw = zext i8 %i.dcv to i32
  %i.dcx = add nuw nsw i32 %i.dcq, %i.dcw
  %i.dcy = add nuw i64 %indvars.iv2946, 159
  %i.dcz = lshr i64 %i.dcy, 1
  %i.dda = and i64 %i.dcz, 2147483647
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.dda
  %i.ddc = load i8, ptr %i.ddb, align 1, !tbaa !55
  %i.ddd = zext i8 %i.ddc to i32
  %i.dde = add nuw nsw i32 %i.dcx, %i.ddd
  %i.ddf = add nuw i64 %indvars.iv2946, 161
  %i.ddg = lshr i64 %i.ddf, 1
  %i.ddh = and i64 %i.ddg, 2147483647
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ddh
  %i.ddj = load i8, ptr %i.ddi, align 1, !tbaa !55
  %i.ddk = zext i8 %i.ddj to i32
  %i.ddl = add nuw nsw i32 %i.dde, %i.ddk
  %i.ddm = add nuw i64 %indvars.iv2946, 320
  %i.ddn = lshr i64 %i.ddm, 1
  %i.ddo = and i64 %i.ddn, 2147483647
  %i.ddp = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ddo
  %i.ddq = load i8, ptr %i.ddp, align 1, !tbaa !55
  %i.ddr = zext i8 %i.ddq to i32
  %i.dds = add nuw nsw i32 %i.ddl, %i.ddr         ; 2 uses
  %i.ddt = icmp samesign ugt i32 %i.dds, 4
  br i1 %i.ddt, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.lr.ph2698
  %.not2400 = icmp eq i32 %i.dds, 4
  br i1 %.not2400, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ddu = lshr i64 %indvars.iv2946, 1
  %2 = and i64 %i.ddu, 2147483647
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2
  %i.ddw = load i8, ptr %i.ddv, align 1, !tbaa !55
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %.lr.ph2698
  %i.ddx = phi i8 [ 1, %.lr.ph2698 ], [ %i.ddw, %bb.av ], [ 0, %bb.au ]
  %i.ddy = lshr i64 %indvars.iv2946, 1
  %3 = and i64 %i.ddy, 2147483647
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.s, i64 %3
  store i8 %i.ddx, ptr %i.ddz, align 1, !tbaa !55
  %i.dea = icmp sgt i32 %i.dbj, %i.dcr
  br i1 %i.dea, label %.lr.ph2698, label %._crit_edge2699, !llvm.loop !1563

bb.ax:                                            ; preds = %.lr.ph2723, %._crit_edge2721
  %indvars.iv2959.a = phi i64 [ %i.daz, %.lr.ph2723 ], [ %indvars.iv.next2960.a, %._crit_edge2721 ] ; 2 uses
  %indvars.iv2950 = phi i32 [ %i.day, %.lr.ph2723 ], [ %indvars.iv.next2951, %._crit_edge2721 ] ; 2 uses
  %.022762722 = phi i32 [ %.sroa.speculated2483, %.lr.ph2723 ], [ %i.dep, %._crit_edge2721 ] ; 3 uses
  %i.deb = mul nuw nsw i32 %.022762722, 160       ; 2 uses
  %i.dec = add nuw nsw i32 %i.deb, %.sroa.speculated2475
  %i.ded = and i32 %.022762722, 1
  %i.dee = zext nneg i32 %i.ded to i64
  %i.def = getelementptr inbounds nuw [8 x i8], ptr %.val2427, i64 %i.dee
  %i.deg = load i32, ptr %i.def, align 4, !tbaa !76 ; 2 uses
  %i.deh = and i32 %i.deg, 1                      ; 2 uses
  %i.dei = or disjoint i32 %i.deh, %i.dec
  %i.dej = add nsw i32 %i.deb, %.sroa.speculated  ; 2 uses
  %i.dek = icmp slt i32 %i.dei, %i.dej
  br i1 %i.dek, label %.lr.ph2720.preheader, label %._crit_edge2721

.lr.ph2720.preheader:                             ; preds = %bb.ax
  %i.del = or disjoint i32 %indvars.iv2950, %i.deh
  %i.dem = and i32 %i.deg, 1
  %i.den = zext nneg i32 %i.dem to i64
  %i.deo = or disjoint i64 %indvars.iv2959.a, %i.den
  br label %.lr.ph2720

._crit_edge2721:                                  ; preds = %bb.bn, %bb.ax
  %i.dep = add nuw nsw i32 %.022762722, 1         ; 2 uses
  %indvars.iv.next2951 = add i32 %indvars.iv2950, 160
  %indvars.iv.next2960.a = add nuw nsw i64 %indvars.iv2959.a, 160
  %exitcond2964.not = icmp eq i32 %i.dep, %.sroa.speculated2479
  br i1 %exitcond2964.not, label %.loopexit2572, label %bb.ax, !llvm.loop !1564

.lr.ph2720:                                       ; preds = %.lr.ph2720.preheader, %bb.bn
  %indvars.iv2961 = phi i64 [ %i.deo, %.lr.ph2720.preheader ], [ %indvars.iv.next2962, %bb.bn ] ; 2 uses
  %indvars.iv2952 = phi i32 [ %i.del, %.lr.ph2720.preheader ], [ %indvars.iv.next2953, %bb.bn ] ; 2 uses
  %i.deq = lshr i64 %indvars.iv2961, 1
  %4 = and i64 %i.deq, 2147483647                 ; 2 uses
  %i.der = getelementptr inbounds nuw i8, ptr %i.s, i64 %4
  %i.des = load i8, ptr %i.der, align 1, !tbaa !55
  %.not2398 = icmp eq i8 %i.des, 0
  br i1 %.not2398, label %bb.bn, label %.preheader2570

bb.ay:                                            ; preds = %bb.bm
  %i.det = shufflevector <2 x float> %i.doo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.deu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.don, <2 x float> splat (float -5.000000e-01), <2 x float> %i.det) ; 2 uses
  %i.dev = extractelement <2 x float> %i.doo, i64 1
  %i.dew = fmul float %i.dev, 5.000000e-01
  %i.dex = fneg <2 x float> %i.deu
  %i.dey = fmul <2 x float> %i.deu, %i.dex
  %i.dez = insertelement <2 x float> poison, float %i.dew, i64 0
  %i.dfa = shufflevector <2 x float> %i.dez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dfb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dfa, <2 x float> %i.dom, <2 x float> %i.dey)
  %i.dfc = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dfb)
  %i.dfd = fadd <2 x float> %i.dfc, splat (float 1.000000e-10) ; 2 uses
  %i.dfe = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dfd)
  %i.dff = extractelement <2 x float> %i.dfd, i64 0
  %i.dfg = fdiv float %i.dff, %i.dfe
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %4
  store float %i.dfg, ptr %i.dfh, align 4, !tbaa !109
  br label %bb.bn

.preheader2570:                                   ; preds = %.lr.ph2720, %bb.bm
  %indvars.iv2954 = phi i32 [ %indvars.iv.next2955, %bb.bm ], [ %indvars.iv2952, %.lr.ph2720 ] ; 3 uses
  %.022562717 = phi i32 [ %i.dop, %bb.bm ], [ -6, %.lr.ph2720 ] ; 2 uses
  %i.dfi = phi <2 x float> [ %i.don, %bb.bm ], [ zeroinitializer, %.lr.ph2720 ] ; 2 uses
  %i.dfj = phi <2 x float> [ %i.dom, %bb.bm ], [ zeroinitializer, %.lr.ph2720 ] ; 2 uses
  %i.dfk = phi <2 x float> [ %i.doo, %bb.bm ], [ zeroinitializer, %.lr.ph2720 ] ; 2 uses
  %i.dfl = sext i32 %indvars.iv2954 to i64        ; 7 uses
  %i.dfm = ashr i32 %indvars.iv2954, 1
  %i.dfn = sext i32 %i.dfm to i64
  %i.dfo = getelementptr inbounds i8, ptr %i.s, i64 %i.dfn
  %i.dfp = load i8, ptr %i.dfo, align 1, !tbaa !55
  %.not2399 = icmp eq i8 %i.dfp, 0
  br i1 %.not2399, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader2570
  %i.dfq = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.dfl ; 5 uses
  %i.dfr = load float, ptr %i.dfq, align 4, !tbaa !109 ; 2 uses
  %i.dfs = getelementptr i8, ptr %i.dfq, i64 -4
  %i.dft = load float, ptr %i.dfs, align 4, !tbaa !109
  %i.dfu = getelementptr i8, ptr %i.dfq, i64 4
  %i.dfv = load float, ptr %i.dfu, align 4, !tbaa !109
  %i.dfw = getelementptr i8, ptr %i.dfq, i64 -640
  %i.dfx = load float, ptr %i.dfw, align 4, !tbaa !109
  %i.dfy = getelementptr i8, ptr %i.dfq, i64 640
  %i.dfz = load float, ptr %i.dfy, align 4, !tbaa !109
  %i.dga = insertelement <2 x float> poison, float %i.dft, i64 0
  %i.dgb = insertelement <2 x float> %i.dga, float %i.dfx, i64 1 ; 2 uses
  %i.dgc = insertelement <2 x float> poison, float %i.dfv, i64 0
  %i.dgd = insertelement <2 x float> %i.dgc, float %i.dfz, i64 1 ; 2 uses
  %i.dge = fadd <2 x float> %i.dgb, %i.dgd
  %i.dgf = fadd <2 x float> %i.dfi, %i.dge
  %i.dgg = insertelement <2 x float> poison, float %i.dfr, i64 0
  %i.dgh = shufflevector <2 x float> %i.dgg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dgi = fsub <2 x float> %i.dgh, %i.dgb        ; 2 uses
  %i.dgj = fmul <2 x float> %i.dgi, %i.dgi
  %i.dgk = fsub <2 x float> %i.dgh, %i.dgd        ; 2 uses
  %i.dgl = fmul <2 x float> %i.dgk, %i.dgk
  %i.dgm = fadd <2 x float> %i.dgj, %i.dgl
  %i.dgn = fadd <2 x float> %i.dfj, %i.dgm
  %i.dgo = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dfr, i64 0
  %i.dgp = fadd <2 x float> %i.dfk, %i.dgo
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader2570, %bb.az
  %i.dgq = phi <2 x float> [ %i.dgp, %bb.az ], [ %i.dfk, %.preheader2570 ] ; 2 uses
  %i.dgr = phi <2 x float> [ %i.dgf, %bb.az ], [ %i.dfi, %.preheader2570 ] ; 2 uses
  %i.dgs = phi <2 x float> [ %i.dgn, %bb.az ], [ %i.dfj, %.preheader2570 ] ; 2 uses
  %indvars.iv.next2957 = add nsw i64 %i.dfl, 2    ; 2 uses
  %i.dgt = trunc nsw i64 %indvars.iv.next2957 to i32
  %i.dgu = ashr i32 %i.dgt, 1
  %i.dgv = sext i32 %i.dgu to i64
  %i.dgw = getelementptr inbounds i8, ptr %i.s, i64 %i.dgv
  %i.dgx = load i8, ptr %i.dgw, align 1, !tbaa !55
  %.not2399.1 = icmp eq i8 %i.dgx, 0
  br i1 %.not2399.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dgy = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957 ; 5 uses
  %i.dgz = load float, ptr %i.dgy, align 4, !tbaa !109 ; 2 uses
  %i.dha = getelementptr i8, ptr %i.dgy, i64 -4
  %i.dhb = load float, ptr %i.dha, align 4, !tbaa !109
  %i.dhc = getelementptr i8, ptr %i.dgy, i64 4
  %i.dhd = load float, ptr %i.dhc, align 4, !tbaa !109
  %i.dhe = getelementptr i8, ptr %i.dgy, i64 -640
  %i.dhf = load float, ptr %i.dhe, align 4, !tbaa !109
  %i.dhg = getelementptr i8, ptr %i.dgy, i64 640
  %i.dhh = load float, ptr %i.dhg, align 4, !tbaa !109
  %i.dhi = insertelement <2 x float> poison, float %i.dhb, i64 0
  %i.dhj = insertelement <2 x float> %i.dhi, float %i.dhf, i64 1 ; 2 uses
  %i.dhk = insertelement <2 x float> poison, float %i.dhd, i64 0
  %i.dhl = insertelement <2 x float> %i.dhk, float %i.dhh, i64 1 ; 2 uses
  %i.dhm = fadd <2 x float> %i.dhj, %i.dhl
  %i.dhn = fadd <2 x float> %i.dgr, %i.dhm
  %i.dho = insertelement <2 x float> poison, float %i.dgz, i64 0
  %i.dhp = shufflevector <2 x float> %i.dho, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dhq = fsub <2 x float> %i.dhp, %i.dhj        ; 2 uses
  %i.dhr = fmul <2 x float> %i.dhq, %i.dhq
  %i.dhs = fsub <2 x float> %i.dhp, %i.dhl        ; 2 uses
  %i.dht = fmul <2 x float> %i.dhs, %i.dhs
  %i.dhu = fadd <2 x float> %i.dhr, %i.dht
  %i.dhv = fadd <2 x float> %i.dgs, %i.dhu
  %i.dhw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dgz, i64 0
  %i.dhx = fadd <2 x float> %i.dgq, %i.dhw
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dhy = phi <2 x float> [ %i.dhx, %bb.bb ], [ %i.dgq, %bb.ba ] ; 2 uses
  %i.dhz = phi <2 x float> [ %i.dhn, %bb.bb ], [ %i.dgr, %bb.ba ] ; 2 uses
  %i.dia = phi <2 x float> [ %i.dhv, %bb.bb ], [ %i.dgs, %bb.ba ] ; 2 uses
  %indvars.iv.next2957.1 = add nsw i64 %i.dfl, 4  ; 2 uses
  %i.dib = trunc nsw i64 %indvars.iv.next2957.1 to i32
  %i.dic = ashr i32 %i.dib, 1
  %i.did = sext i32 %i.dic to i64
  %i.die = getelementptr inbounds i8, ptr %i.s, i64 %i.did
  %i.dif = load i8, ptr %i.die, align 1, !tbaa !55
  %.not2399.2 = icmp eq i8 %i.dif, 0
  br i1 %.not2399.2, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dig = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957.1 ; 5 uses
  %i.dih = load float, ptr %i.dig, align 4, !tbaa !109 ; 2 uses
  %i.dii = getelementptr i8, ptr %i.dig, i64 -4
  %i.dij = load float, ptr %i.dii, align 4, !tbaa !109
  %i.dik = getelementptr i8, ptr %i.dig, i64 4
  %i.dil = load float, ptr %i.dik, align 4, !tbaa !109
  %i.dim = getelementptr i8, ptr %i.dig, i64 -640
  %i.din = load float, ptr %i.dim, align 4, !tbaa !109
  %i.dio = getelementptr i8, ptr %i.dig, i64 640
  %i.dip = load float, ptr %i.dio, align 4, !tbaa !109
  %i.diq = insertelement <2 x float> poison, float %i.dij, i64 0
  %i.dir = insertelement <2 x float> %i.diq, float %i.din, i64 1 ; 2 uses
  %i.dis = insertelement <2 x float> poison, float %i.dil, i64 0
  %i.dit = insertelement <2 x float> %i.dis, float %i.dip, i64 1 ; 2 uses
  %i.diu = fadd <2 x float> %i.dir, %i.dit
  %i.div = fadd <2 x float> %i.dhz, %i.diu
  %i.diw = insertelement <2 x float> poison, float %i.dih, i64 0
  %i.dix = shufflevector <2 x float> %i.diw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.diy = fsub <2 x float> %i.dix, %i.dir        ; 2 uses
  %i.diz = fmul <2 x float> %i.diy, %i.diy
  %i.dja = fsub <2 x float> %i.dix, %i.dit        ; 2 uses
  %i.djb = fmul <2 x float> %i.dja, %i.dja
  %i.djc = fadd <2 x float> %i.diz, %i.djb
  %i.djd = fadd <2 x float> %i.dia, %i.djc
  %i.dje = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dih, i64 0
  %i.djf = fadd <2 x float> %i.dhy, %i.dje
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.djg = phi <2 x float> [ %i.djf, %bb.bd ], [ %i.dhy, %bb.bc ] ; 2 uses
  %i.djh = phi <2 x float> [ %i.div, %bb.bd ], [ %i.dhz, %bb.bc ] ; 2 uses
  %i.dji = phi <2 x float> [ %i.djd, %bb.bd ], [ %i.dia, %bb.bc ] ; 2 uses
  %indvars.iv.next2957.2 = add nsw i64 %i.dfl, 6  ; 2 uses
  %i.djj = trunc nsw i64 %indvars.iv.next2957.2 to i32
  %i.djk = ashr i32 %i.djj, 1
  %i.djl = sext i32 %i.djk to i64
  %i.djm = getelementptr inbounds i8, ptr %i.s, i64 %i.djl
  %i.djn = load i8, ptr %i.djm, align 1, !tbaa !55
  %.not2399.3 = icmp eq i8 %i.djn, 0
  br i1 %.not2399.3, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.djo = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957.2 ; 5 uses
  %i.djp = load float, ptr %i.djo, align 4, !tbaa !109 ; 2 uses
  %i.djq = getelementptr i8, ptr %i.djo, i64 -4
  %i.djr = load float, ptr %i.djq, align 4, !tbaa !109
  %i.djs = getelementptr i8, ptr %i.djo, i64 4
  %i.djt = load float, ptr %i.djs, align 4, !tbaa !109
  %i.dju = getelementptr i8, ptr %i.djo, i64 -640
  %i.djv = load float, ptr %i.dju, align 4, !tbaa !109
  %i.djw = getelementptr i8, ptr %i.djo, i64 640
  %i.djx = load float, ptr %i.djw, align 4, !tbaa !109
  %i.djy = insertelement <2 x float> poison, float %i.djr, i64 0
  %i.djz = insertelement <2 x float> %i.djy, float %i.djv, i64 1 ; 2 uses
  %i.dka = insertelement <2 x float> poison, float %i.djt, i64 0
  %i.dkb = insertelement <2 x float> %i.dka, float %i.djx, i64 1 ; 2 uses
  %i.dkc = fadd <2 x float> %i.djz, %i.dkb
  %i.dkd = fadd <2 x float> %i.djh, %i.dkc
  %i.dke = insertelement <2 x float> poison, float %i.djp, i64 0
  %i.dkf = shufflevector <2 x float> %i.dke, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dkg = fsub <2 x float> %i.dkf, %i.djz        ; 2 uses
  %i.dkh = fmul <2 x float> %i.dkg, %i.dkg
  %i.dki = fsub <2 x float> %i.dkf, %i.dkb        ; 2 uses
  %i.dkj = fmul <2 x float> %i.dki, %i.dki
  %i.dkk = fadd <2 x float> %i.dkh, %i.dkj
  %i.dkl = fadd <2 x float> %i.dji, %i.dkk
  %i.dkm = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.djp, i64 0
  %i.dkn = fadd <2 x float> %i.djg, %i.dkm
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.dko = phi <2 x float> [ %i.dkl, %bb.bf ], [ %i.dji, %bb.be ] ; 2 uses
  %i.dkp = phi <2 x float> [ %i.dkn, %bb.bf ], [ %i.djg, %bb.be ] ; 2 uses
  %i.dkq = phi <2 x float> [ %i.dkd, %bb.bf ], [ %i.djh, %bb.be ] ; 2 uses
  %indvars.iv.next2957.3 = add nsw i64 %i.dfl, 8  ; 2 uses
  %i.dkr = trunc nsw i64 %indvars.iv.next2957.3 to i32
  %i.dks = ashr i32 %i.dkr, 1
  %i.dkt = sext i32 %i.dks to i64
  %i.dku = getelementptr inbounds i8, ptr %i.s, i64 %i.dkt
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !55
  %.not2399.4 = icmp eq i8 %i.dkv, 0
  br i1 %.not2399.4, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dkw = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.next2957.3 ; 5 uses
  %i.dkx = load float, ptr %i.dkw, align 4, !tbaa !109 ; 2 uses
  %i.dky = getelementptr i8, ptr %i.dkw, i64 -4
  %i.dkz = load float, ptr %i.dky, align 4, !tbaa !109
  %i.dla = getelementptr i8, ptr %i.dkw, i64 4
  %i.dlb = load float, ptr %i.dla, align 4, !tbaa !109
  %i.dlc = getelementptr i8, ptr %i.dkw, i64 -640
  %i.dld = load float, ptr %i.dlc, align 4, !tbaa !109
  %i.dle = getelementptr i8, ptr %i.dkw, i64 640
  %i.dlf = load float, ptr %i.dle, align 4, !tbaa !109
  %i.dlg = insertelement <2 x float> poison, float %i.dkz, i64 0
  %i.dlh = insertelement <2 x float> %i.dlg, float %i.dld, i64 1 ; 2 uses
  %i.dli = insertelement <2 x float> poison, float %i.dlb, i64 0
  %i.dlj = insertelement <2 x float> %i.dli, float %i.dlf, i64 1 ; 2 uses
end_hunk_0
