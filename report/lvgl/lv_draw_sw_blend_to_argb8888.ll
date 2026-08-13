inline.NumInlined: 160
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_argb8888:bb.a

bb.hq:                                            ; preds = %bb.hm
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bbl, i64 2
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !80
  %i.bdm = zext i8 %i.bdl to i32
  %i.bdn = and i32 %.sroa.17.0.extract.shift.i.i128, 255
  %i.bdo = sub nsw i32 %i.bdm, %i.bdn
  %i.bdp = call i32 @llvm.abs.i32(i32 %i.bdo, i1 true)
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bbl, i64 1
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !81
  %i.bds = zext i8 %i.bdr to i32
  %i.bdt = and i32 %.sroa.9.0.extract.shift.i.i127, 255
  %i.bdu = sub nsw i32 %i.bds, %i.bdt
  %i.bdv = call i32 @llvm.abs.i32(i32 %i.bdu, i1 true)
  %i.bdw = load i8, ptr %i.bbl, align 1, !tbaa !82
  %i.bdx = zext i8 %i.bdw to i32
  %i.bdy = and i32 %.sroa.051.0.insert.ext61.i, 255
  %i.bdz = sub nsw i32 %i.bdx, %i.bdy
  %i.bea = call i32 @llvm.abs.i32(i32 %i.bdz, i1 true)
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.hn
  %.sroa.7.0.i.i129 = phi i32 [ %i.bbx, %bb.hn ], [ %i.bcn, %bb.ho ], [ %i.bde, %bb.hp ], [ %i.bdv, %bb.hq ]
  %.sroa.01.0.i.i130 = phi i32 [ %i.bcc, %bb.hn ], [ %i.bcs, %bb.ho ], [ %i.bdj, %bb.hp ], [ %i.bea, %bb.hq ]
  %.sroa.11.0.i.i131 = phi i32 [ %spec.select.i.i142, %bb.hn ], [ %spec.select60.i.i141, %bb.ho ], [ %i.bcy, %bb.hp ], [ %i.bdp, %bb.hq ]
  %.sroa.11.0.insert.ext.i.i132 = shl nuw nsw i32 %.sroa.11.0.i.i131, 16
  %.sroa.11.0.insert.shift.i.i133 = and i32 %.sroa.11.0.insert.ext.i.i132, 16711680
  %.sroa.7.0.insert.ext.i.i134 = shl nuw nsw i32 %.sroa.7.0.i.i129, 8
  %.sroa.7.0.insert.shift.i.i135 = and i32 %.sroa.7.0.insert.ext.i.i134, 65280
  %i.beb = or i32 %.sroa.7.0.insert.shift.i.i135, %.sroa.01.0.i.i130
  %i.bec = or i32 %i.beb, %.sroa.11.0.insert.shift.i.i133 ; 3 uses
  %.sroa.01.0.insert.insert.i.i136 = or i32 %i.bec, %.sroa.10.0.insert.shift82.i ; 6 uses
  %i.bed = load i32, ptr %i.bbl, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i279.i = trunc nuw i32 %i.bec to i24
  %.sroa.654.0.extract.shift.i280.i = lshr i32 %.sroa.01.0.insert.insert.i.i136, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i281.i = lshr i32 %i.bed, 24 ; 4 uses
  %i.bee = icmp ugt i32 %.sroa.01.0.insert.insert.i.i136, -50331649
  %i.bef = icmp ult i32 %i.bed, 50331648
  %or.cond.i282.i = select i1 %i.bee, i1 true, i1 %i.bef
  br i1 %or.cond.i282.i, label %lv_color_32_32_mix.exit306.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.sroa.018.0.extract.trunc.i283.i = trunc i32 %i.bed to i24
  %i.beg = icmp ult i32 %.sroa.01.0.insert.insert.i.i136, 50331648
  br i1 %i.beg, label %lv_color_32_32_mix.exit306.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.beh = icmp eq i32 %.sroa.6.0.extract.shift.i281.i, 255
  br i1 %i.beh, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.bei = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i136, i32 %i.bed) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i304.i = trunc i32 %i.bei to i24
  %.sroa.5.0.extract.shift.i305.i = lshr i32 %i.bei, 24
  br label %lv_color_32_32_mix.exit306.i

bb.hv:                                            ; preds = %bb.ht
  %i.bej = load i8, ptr %i.atq, align 1, !tbaa !40
  %i.bek = zext i8 %i.bej to i32
  %.not.i284.i = icmp eq i32 %.sroa.6.0.extract.shift.i281.i, %i.bek
  %i.bel = load i8, ptr %i.atr, align 1
  %i.bem = zext i8 %i.bel to i32
  %.not77.i303.i = icmp eq i32 %.sroa.654.0.extract.shift.i280.i, %i.bem
  %or.cond321.i = select i1 %.not.i284.i, i1 %.not77.i303.i, i1 false
  br i1 %or.cond321.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.ben = xor i32 %.sroa.654.0.extract.shift.i280.i, 255
  %i.beo = xor i32 %.sroa.6.0.extract.shift.i281.i, 255
  %i.bep = mul nuw nsw i32 %i.ben, %i.beo
  %i.beq = lshr i32 %i.bep, 8
  %i.ber = trunc nuw i32 %i.beq to i8
  %i.bes = xor i8 %i.ber, -1                      ; 2 uses
  store i8 %i.bes, ptr %i.ati, align 4, !tbaa !19
  %i.bet = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i280.i to i16
  %.lhs.trunc.i285.i = mul nuw i16 %i.bet, 255
  %.rhs.trunc.i286.i = zext i8 %i.bes to i16
  %i.beu = udiv i16 %.lhs.trunc.i285.i, %.rhs.trunc.i286.i
  %i.bev = trunc i16 %i.beu to i8
  store i8 %i.bev, ptr %i.atj, align 1, !tbaa !22
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.bew = load i32, ptr %i.atg, align 4
  %i.bex = call zeroext i1 @lv_color32_eq(i32 %i.bed, i32 %i.bew) #7
  br i1 %i.bex, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.bey = load i32, ptr %4, align 4
  %i.bez = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i136, i32 %i.bey) #7
  br i1 %i.bez, label %._crit_edge.i298.i, label %bb.hz

._crit_edge.i298.i:                               ; preds = %bb.hy
  %.sroa.074.0.copyload.pre.i300.i = load i24, ptr %i.ath, align 4
  %.sroa.5.0.copyload.pre.i302.i = load i8, ptr %i.ats, align 1, !tbaa !41
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  store i32 %.sroa.01.0.insert.insert.i.i136, ptr %4, align 4
  store i32 %i.bed, ptr %i.atg, align 4
  %i.bfa = load i8, ptr %i.atj, align 1, !tbaa !22
  %.sroa.654.0.insert.ext63.i287.i = zext i8 %i.bfa to i32
  %.sroa.654.0.insert.shift64.i288.i = shl nuw i32 %.sroa.654.0.insert.ext63.i287.i, 24
  %.sroa.045.0.insert.insert53.i290.i = add nuw nsw i32 %.sroa.654.0.insert.shift64.i288.i, %i.bec
  %i.bfb = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i290.i, i32 %i.bed) #7 ; 2 uses
  store i32 %i.bfb, ptr %i.ath, align 4
  %i.bfc = load i8, ptr %i.ati, align 4, !tbaa !19 ; 2 uses
  store i8 %i.bfc, ptr %i.ats, align 1, !tbaa !42
  %i.bfd = trunc i32 %i.bfb to i24
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %._crit_edge.i298.i
  %.sroa.5.0.copyload.i291.i = phi i8 [ %.sroa.5.0.copyload.pre.i302.i, %._crit_edge.i298.i ], [ %i.bfc, %bb.hz ]
  %.sroa.074.0.copyload.i292.i = phi i24 [ %.sroa.074.0.copyload.pre.i300.i, %._crit_edge.i298.i ], [ %i.bfd, %bb.hz ]
  %i.bfe = zext i8 %.sroa.5.0.copyload.i291.i to i32
  br label %lv_color_32_32_mix.exit306.i

lv_color_32_32_mix.exit306.i:                     ; preds = %bb.ia, %bb.hu, %bb.hs, %bb.hr
  %.sroa.074.0.i293.i = phi i24 [ %.sroa.074.0.copyload.i292.i, %bb.ia ], [ %.sroa.045.0.extract.trunc.i279.i, %bb.hr ], [ %.sroa.074.0.extract.trunc.i304.i, %bb.hu ], [ %.sroa.018.0.extract.trunc.i283.i, %bb.hs ]
  %.sroa.5.0.i294.i = phi i32 [ %i.bfe, %bb.ia ], [ %.sroa.654.0.extract.shift.i280.i, %bb.hr ], [ %.sroa.5.0.extract.shift.i305.i, %bb.hu ], [ %.sroa.6.0.extract.shift.i281.i, %bb.hs ]
  %.sroa.5.0.insert.shift.i295.i = shl nuw i32 %.sroa.5.0.i294.i, 24
  %.sroa.074.0.insert.ext.i296.i = zext i24 %.sroa.074.0.i293.i to i32
  %.sroa.074.0.insert.insert.i297.i = or disjoint i32 %.sroa.5.0.insert.shift.i295.i, %.sroa.074.0.insert.ext.i296.i
  store i32 %.sroa.074.0.insert.insert.i297.i, ptr %i.bbl, align 1
  br label %blend_non_normal_pixel.exit.i137

blend_non_normal_pixel.exit.i137:                 ; preds = %lv_color_32_32_mix.exit306.i, %bb.hm
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next.i138, %wide.trip.count.i125
  br i1 %exitcond.not.i139, label %._crit_edge.i140, label %bb.hj, !llvm.loop !127

._crit_edge.i140:                                 ; preds = %blend_non_normal_pixel.exit.i137
  %i.bff = getelementptr inbounds i8, ptr %.2179337.i, i64 %i.att
  %.3180.i = select i1 %i.bba, ptr null, ptr %i.bff
  %i.bfg = getelementptr inbounds nuw i8, ptr %.4339.i, i64 %i.atu
  %i.bfh = getelementptr inbounds nuw i8, ptr %.4176338.i, i64 %i.atv
  %i.bfi = add nuw nsw i32 %.4185336.i, 1         ; 2 uses
  %exitcond368.not.i = icmp eq i32 %i.bfi, %i.ass
  br i1 %exitcond368.not.i, label %argb8888_image_blend.exit, label %.preheader332.i, !llvm.loop !128

argb8888_image_blend.exit:                        ; preds = %._crit_edge.i140, %._crit_edge341.i, %._crit_edge347.i, %._crit_edge353.i, %._crit_edge358.i, %.preheader333.i, %.preheader332.lr.ph.i, %.preheader322.i, %.preheader.lr.ph.i147, %.preheader324.i, %.preheader323.lr.ph.i, %.preheader327.i, %.preheader326.lr.ph.i, %bb.gy, %.preheader329.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %l8_image_blend.exit

bb.ib:                                            ; preds = %bb.a
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bfk = load i32, ptr %i.bfj, align 8, !tbaa !50 ; 12 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bfm = load i32, ptr %i.bfl, align 4, !tbaa !51 ; 10 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bfo = load i8, ptr %i.bfn, align 8, !tbaa !52 ; 8 uses
  %i.bfp = load ptr, ptr %0, align 8, !tbaa !53   ; 5 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bfr = load i32, ptr %i.bfq, align 8, !tbaa !54 ; 5 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !55 ; 5 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bfv = load i32, ptr %i.bfu, align 8, !tbaa !56 ; 5 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !57 ; 5 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bfz = load i32, ptr %i.bfy, align 8, !tbaa !58 ; 3 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bgb = load i32, ptr %i.bga, align 4, !tbaa !59
  %i.bgc = icmp eq i32 %i.bgb, 0
  br i1 %i.bgc, label %bb.ic, label %bb.io

bb.ic:                                            ; preds = %bb.ib
  %i.bgd = icmp eq ptr %i.bfx, null               ; 2 uses
  %i.bge = zext i8 %i.bfo to i16
  %i.bgf = icmp ugt i8 %i.bfo, -4                 ; 2 uses
  %or.cond.i221 = select i1 %i.bgd, i1 %i.bgf, i1 false
  br i1 %or.cond.i221, label %.preheader172.i, label %bb.id

.preheader172.i:                                  ; preds = %bb.ic
  %i.bgg = icmp sgt i32 %i.bfm, 0
  br i1 %i.bgg, label %.preheader.lr.ph.i225, label %l8_image_blend.exit

.preheader.lr.ph.i225:                            ; preds = %.preheader172.i
  %i.bgh = icmp sgt i32 %i.bfk, 0
  %i.bgi = zext i32 %i.bfr to i64
  %i.bgj = zext i32 %i.bfv to i64
  br i1 %i.bgh, label %.preheader.preheader.i226, label %l8_image_blend.exit

.preheader.preheader.i226:                        ; preds = %.preheader.lr.ph.i225
  %wide.trip.count255.i = zext nneg i32 %i.bfk to i64 ; 2 uses
  %xtraiter729 = and i64 %wide.trip.count255.i, 1
  %i.bgk = icmp eq i32 %i.bfk, 1
  %unroll_iter732 = and i64 %wide.trip.count255.i, 2147483646
  %lcmp.mod730.not = icmp eq i64 %xtraiter729, 0
  %lcmp.mod731 = trunc i32 %i.bfk to i1
  br label %.preheader.i227

.preheader.i227:                                  ; preds = %._crit_edge213.i, %.preheader.preheader.i226
  %.0216.i = phi ptr [ %i.bhf, %._crit_edge213.i ], [ %i.bfp, %.preheader.preheader.i226 ] ; 4 uses
  %.0136215.i = phi ptr [ %i.bhg, %._crit_edge213.i ], [ %i.bft, %.preheader.preheader.i226 ] ; 4 uses
  %.0145214.i = phi i32 [ %i.bhh, %._crit_edge213.i ], [ 0, %.preheader.preheader.i226 ]
  br i1 %i.bgk, label %.epil.preheader728, label %.preheader.i227.new

.preheader.i227.new:                              ; preds = %.preheader.i227, %.preheader.i227.new
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i.1, %.preheader.i227.new ], [ 0, %.preheader.i227 ] ; 4 uses
  %niter733 = phi i64 [ %niter733.next.1, %.preheader.i227.new ], [ 0, %.preheader.i227 ]
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %.0216.i, i64 %indvars.iv250.i ; 4 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 3
  store i8 -1, ptr %i.bgm, align 1, !tbaa !129
  %i.bgn = getelementptr inbounds nuw i8, ptr %.0136215.i, i64 %indvars.iv250.i ; 2 uses
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !41 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 2
  store i8 %i.bgo, ptr %i.bgp, align 1, !tbaa !80
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgl, i64 1
  store i8 %i.bgo, ptr %i.bgq, align 1, !tbaa !81
  %i.bgr = load i8, ptr %i.bgn, align 1, !tbaa !41
  store i8 %i.bgr, ptr %i.bgl, align 1, !tbaa !82
  %indvars.iv.next251.i = or disjoint i64 %indvars.iv250.i, 1 ; 2 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %.0216.i, i64 %indvars.iv.next251.i ; 4 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %8, i64 3
  store i8 -1, ptr %i.bgs, align 1, !tbaa !129
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0136215.i, i64 %indvars.iv.next251.i ; 2 uses
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !41 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i8 %i.bgu, ptr %i.bgv, align 1, !tbaa !80
  %i.bgw = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 %i.bgu, ptr %i.bgw, align 1, !tbaa !81
  %i.bgx = load i8, ptr %i.bgt, align 1, !tbaa !41
  store i8 %i.bgx, ptr %8, align 1, !tbaa !82
  %indvars.iv.next251.i.1 = add nuw nsw i64 %indvars.iv250.i, 2 ; 2 uses
  %niter733.next.1 = add i64 %niter733, 2         ; 2 uses
  %niter733.ncmp.1 = icmp eq i64 %niter733.next.1, %unroll_iter732
  br i1 %niter733.ncmp.1, label %._crit_edge213.i.unr-lcssa, label %.preheader.i227.new, !llvm.loop !130

._crit_edge213.i.unr-lcssa:                       ; preds = %.preheader.i227.new
  br i1 %lcmp.mod730.not, label %._crit_edge213.i, label %.epil.preheader728

.epil.preheader728:                               ; preds = %._crit_edge213.i.unr-lcssa, %.preheader.i227
  %indvars.iv250.i.epil.init = phi i64 [ 0, %.preheader.i227 ], [ %indvars.iv.next251.i.1, %._crit_edge213.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod731)
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %.0216.i, i64 %indvars.iv250.i.epil.init ; 4 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 3
  store i8 -1, ptr %i.bgz, align 1, !tbaa !129
  %i.bha = getelementptr inbounds nuw i8, ptr %.0136215.i, i64 %indvars.iv250.i.epil.init ; 2 uses
  %i.bhb = load i8, ptr %i.bha, align 1, !tbaa !41 ; 2 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgy, i64 2
  store i8 %i.bhb, ptr %i.bhc, align 1, !tbaa !80
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgy, i64 1
  store i8 %i.bhb, ptr %i.bhd, align 1, !tbaa !81
  %i.bhe = load i8, ptr %i.bha, align 1, !tbaa !41
  store i8 %i.bhe, ptr %i.bgy, align 1, !tbaa !82
  br label %._crit_edge213.i

._crit_edge213.i:                                 ; preds = %._crit_edge213.i.unr-lcssa, %.epil.preheader728
  %i.bhf = getelementptr inbounds nuw i8, ptr %.0216.i, i64 %i.bgi
  %i.bhg = getelementptr inbounds nuw i8, ptr %.0136215.i, i64 %i.bgj
  %i.bhh = add nuw nsw i32 %.0145214.i, 1         ; 2 uses
  %exitcond257.not.i = icmp eq i32 %i.bhh, %i.bfm
  br i1 %exitcond257.not.i, label %l8_image_blend.exit, label %.preheader.i227, !llvm.loop !131

bb.id:                                            ; preds = %bb.ic
  %i.bhi = icmp ult i8 %i.bfo, -3                 ; 2 uses
  %or.cond5.i222 = select i1 %i.bgd, i1 %i.bhi, i1 false
  br i1 %or.cond5.i222, label %.preheader174.i, label %bb.ie

.preheader174.i:                                  ; preds = %bb.id
  %i.bhj = icmp sgt i32 %i.bfm, 0
  br i1 %i.bhj, label %.preheader173.lr.ph.i, label %l8_image_blend.exit

.preheader173.lr.ph.i:                            ; preds = %.preheader174.i
  %i.bhk = icmp slt i32 %i.bfk, 1
  %i.bhl = zext i8 %i.bfo to i32
  %i.bhm = icmp eq i8 %i.bfo, 0
  %i.bhn = xor i8 %i.bfo, -1
  %i.bho = zext i8 %i.bhn to i32                  ; 3 uses
  %i.bhp = zext i32 %i.bfr to i64
  %i.bhq = zext i32 %i.bfv to i64
  %brmerge.i = select i1 %i.bhk, i1 true, i1 %i.bhm
  br i1 %brmerge.i, label %l8_image_blend.exit, label %.preheader173.preheader.i

.preheader173.preheader.i:                        ; preds = %.preheader173.lr.ph.i
  %wide.trip.count247.i = zext nneg i32 %i.bfk to i64
  br label %.preheader173.i

.preheader173.i:                                  ; preds = %._crit_edge206.i, %.preheader173.preheader.i
  %.1209.i = phi ptr [ %i.bir, %._crit_edge206.i ], [ %i.bfp, %.preheader173.preheader.i ] ; 2 uses
  %.1137208.i = phi ptr [ %i.bis, %._crit_edge206.i ], [ %i.bft, %.preheader173.preheader.i ] ; 2 uses
  %.1146207.i = phi i32 [ %i.bit, %._crit_edge206.i ], [ 0, %.preheader173.preheader.i ]
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.i.i, %.preheader173.i
  %indvars.iv242.i = phi i64 [ 0, %.preheader173.i ], [ %indvars.iv.next243.i, %.sink.split.i.i ] ; 3 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %.1137208.i, i64 %indvars.iv242.i
  %i.bhs = load i8, ptr %i.bhr, align 1, !tbaa !41
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %.1209.i, i64 %indvars.iv242.i ; 5 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 3
  store i8 -1, ptr %i.bhu, align 1, !tbaa !129
  %i.bhv = zext i8 %i.bhs to i32
  %i.bhw = mul nuw nsw i32 %i.bhv, %i.bhl         ; 3 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bht, i64 2 ; 2 uses
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !80
  %i.bhz = zext i8 %i.bhy to i32
  %i.bia = mul nuw nsw i32 %i.bhz, %i.bho
  %i.bib = add nuw nsw i32 %i.bia, %i.bhw
  %i.bic = lshr i32 %i.bib, 8
  %i.bid = trunc i32 %i.bic to i8
  store i8 %i.bid, ptr %i.bhx, align 1, !tbaa !80
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bht, i64 1 ; 2 uses
  %i.bif = load i8, ptr %i.bie, align 1, !tbaa !81
  %i.big = zext i8 %i.bif to i32
  %i.bih = mul nuw nsw i32 %i.big, %i.bho
  %i.bii = add nuw nsw i32 %i.bih, %i.bhw
  %i.bij = lshr i32 %i.bii, 8
  %i.bik = trunc i32 %i.bij to i8
  store i8 %i.bik, ptr %i.bie, align 1, !tbaa !81
  %i.bil = load i8, ptr %i.bht, align 1, !tbaa !82
  %i.bim = zext i8 %i.bil to i32
  %i.bin = mul nuw nsw i32 %i.bim, %i.bho
  %i.bio = add nuw nsw i32 %i.bin, %i.bhw
  %i.bip = lshr i32 %i.bio, 8
  %i.biq = trunc i32 %i.bip to i8
  store i8 %i.biq, ptr %i.bht, align 1, !tbaa !82
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next243.i, %wide.trip.count247.i
  br i1 %exitcond248.not.i, label %._crit_edge206.i, label %.sink.split.i.i, !llvm.loop !132

._crit_edge206.i:                                 ; preds = %.sink.split.i.i
  %i.bir = getelementptr inbounds nuw i8, ptr %.1209.i, i64 %i.bhp
  %i.bis = getelementptr inbounds nuw i8, ptr %.1137208.i, i64 %i.bhq
  %i.bit = add nuw nsw i32 %.1146207.i, 1         ; 2 uses
  %exitcond249.not.i = icmp eq i32 %i.bit, %i.bfm
  br i1 %exitcond249.not.i, label %l8_image_blend.exit, label %.preheader173.i, !llvm.loop !133

bb.ie:                                            ; preds = %bb.id
  %i.biu = icmp ne ptr %i.bfx, null               ; 2 uses
  %or.cond8.i223 = select i1 %i.biu, i1 %i.bgf, i1 false
  br i1 %or.cond8.i223, label %.preheader177.i, label %bb.ij

.preheader177.i:                                  ; preds = %bb.ie
  %i.biv = icmp sgt i32 %i.bfm, 0
  br i1 %i.biv, label %.preheader176.lr.ph.i, label %l8_image_blend.exit

.preheader176.lr.ph.i:                            ; preds = %.preheader177.i
  %i.biw = icmp sgt i32 %i.bfk, 0
  %i.bix = zext i32 %i.bfr to i64
  %i.biy = zext i32 %i.bfv to i64
  %i.biz = sext i32 %i.bfz to i64
  br i1 %i.biw, label %.preheader176.preheader.i, label %l8_image_blend.exit

.preheader176.preheader.i:                        ; preds = %.preheader176.lr.ph.i
  %wide.trip.count239.i = zext nneg i32 %i.bfk to i64
  br label %.preheader176.i

.preheader176.i:                                  ; preds = %._crit_edge199.i, %.preheader176.preheader.i
  %.2203.i = phi ptr [ %i.bkj, %._crit_edge199.i ], [ %i.bfp, %.preheader176.preheader.i ] ; 2 uses
  %.2138202.i = phi ptr [ %i.bkk, %._crit_edge199.i ], [ %i.bft, %.preheader176.preheader.i ] ; 2 uses
  %.0141201.i = phi ptr [ %i.bkl, %._crit_edge199.i ], [ %i.bfx, %.preheader176.preheader.i ] ; 2 uses
  %.2147200.i = phi i32 [ %i.bkm, %._crit_edge199.i ], [ 0, %.preheader176.preheader.i ]
  br label %bb.if

bb.if:                                            ; preds = %lv_color_8_32_mix.exit165.i, %.preheader176.i
  %indvars.iv234.i = phi i64 [ 0, %.preheader176.i ], [ %indvars.iv.next235.i, %lv_color_8_32_mix.exit165.i ] ; 4 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %.2138202.i, i64 %indvars.iv234.i
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !41 ; 4 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %.2203.i, i64 %indvars.iv234.i ; 7 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.0141201.i, i64 %indvars.iv234.i
  %i.bje = load i8, ptr %i.bjd, align 1, !tbaa !41 ; 4 uses
  %i.bjf = zext i8 %i.bje to i32
  %i.bjg = icmp eq i8 %i.bje, 0
  br i1 %i.bjg, label %lv_color_8_32_mix.exit165.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjc, i64 3
  store i8 -1, ptr %i.bjh, align 1, !tbaa !129
  %i.bji = icmp ugt i8 %i.bje, -4
  br i1 %i.bji, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjc, i64 2
  store i8 %i.bjb, ptr %i.bjj, align 1, !tbaa !80
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjc, i64 1
  store i8 %i.bjb, ptr %i.bjk, align 1, !tbaa !81
  br label %.sink.split.i163.i

bb.ii:                                            ; preds = %bb.ig
  %i.bjl = xor i8 %i.bje, -1
  %i.bjm = zext i8 %i.bjb to i32
  %i.bjn = mul nuw nsw i32 %i.bjf, %i.bjm         ; 3 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjc, i64 2 ; 2 uses
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !80
  %i.bjq = zext i8 %i.bjp to i32
  %i.bjr = zext i8 %i.bjl to i32                  ; 3 uses
  %i.bjs = mul nuw nsw i32 %i.bjq, %i.bjr
  %i.bjt = add nuw nsw i32 %i.bjs, %i.bjn
  %i.bju = lshr i32 %i.bjt, 8
  %i.bjv = trunc i32 %i.bju to i8
  store i8 %i.bjv, ptr %i.bjo, align 1, !tbaa !80
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjc, i64 1 ; 2 uses
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !81
  %i.bjy = zext i8 %i.bjx to i32
  %i.bjz = mul nuw nsw i32 %i.bjy, %i.bjr
  %i.bka = add nuw nsw i32 %i.bjz, %i.bjn
  %i.bkb = lshr i32 %i.bka, 8
  %i.bkc = trunc i32 %i.bkb to i8
  store i8 %i.bkc, ptr %i.bjw, align 1, !tbaa !81
  %i.bkd = load i8, ptr %i.bjc, align 1, !tbaa !82
  %i.bke = zext i8 %i.bkd to i32
  %i.bkf = mul nuw nsw i32 %i.bke, %i.bjr
  %i.bkg = add nuw nsw i32 %i.bkf, %i.bjn
  %i.bkh = lshr i32 %i.bkg, 8
  %i.bki = trunc i32 %i.bkh to i8
  br label %.sink.split.i163.i

.sink.split.i163.i:                               ; preds = %bb.ii, %bb.ih
  %.sink.i164.i = phi i8 [ %i.bki, %bb.ii ], [ %i.bjb, %bb.ih ]
  store i8 %.sink.i164.i, ptr %i.bjc, align 1, !tbaa !82
  br label %lv_color_8_32_mix.exit165.i

lv_color_8_32_mix.exit165.i:                      ; preds = %.sink.split.i163.i, %bb.if
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count239.i
  br i1 %exitcond240.not.i, label %._crit_edge199.i, label %bb.if, !llvm.loop !134

._crit_edge199.i:                                 ; preds = %lv_color_8_32_mix.exit165.i
  %i.bkj = getelementptr inbounds nuw i8, ptr %.2203.i, i64 %i.bix
  %i.bkk = getelementptr inbounds nuw i8, ptr %.2138202.i, i64 %i.biy
  %i.bkl = getelementptr inbounds i8, ptr %.0141201.i, i64 %i.biz
  %i.bkm = add nuw nsw i32 %.2147200.i, 1         ; 2 uses
  %exitcond241.not.i = icmp eq i32 %i.bkm, %i.bfm
end_hunk_0
