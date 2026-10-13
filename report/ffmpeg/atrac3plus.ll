Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3plus?download=true
inline.NumInlined: 168
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_atrac3p_decode_channel_unit:bb.a
  %i.bcj = add nuw nsw i32 %i.bcg, 56             ; 2 uses
  %i.bck = load i32, ptr %i.azx, align 4, !tbaa !9
  %i.bcl = add i32 %i.bcj, %i.bck
  %i.bcm = and i32 %i.bcl, 63
  store i32 %i.bcm, ptr %i.azx, align 4, !tbaa !9
  %i.bcn = icmp sgt i32 %i.afk, 1
  br i1 %i.bcn, label %.lr.ph228.i.i, label %.loopexit.i

.lr.ph228.i.i:                                    ; preds = %unpack_vq_shape.exit202.i.i
  %i.bco = getelementptr i8, ptr %i.ayy, i64 104
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !17
  %i.bcq = zext nneg i32 %i.afk to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph228.i.i
  %indvars.iv261.i.i = phi i64 [ 1, %.lr.ph228.i.i ], [ %indvars.iv.next262.i.i, %bb.ci ] ; 2 uses
  %.0.in227.i.i = phi i32 [ %i.bcj, %.lr.ph228.i.i ], [ %i.bdo, %bb.ci ]
  %i.bcr = load i32, ptr %i.aza, align 8, !tbaa !25
  %i.bcs = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.bct = lshr i32 %i.bcs, 3
  %i.bcu = zext nneg i32 %i.bct to i64
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.bcu
  %i.bcw = load i32, ptr %i.bcv, align 1, !tbaa !14
  %i.bcx = tail call i32 @llvm.bswap.i32(i32 %i.bcw)
  %i.bcy = and i32 %i.bcs, 7
  %i.bcz = shl i32 %i.bcx, %i.bcy
  %i.bda = sub nsw i32 32, %i.bcr
  %i.bdb = lshr i32 %i.bcz, %i.bda
  %i.bdc = zext i32 %i.bdb to i64
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.bcp, i64 %i.bdc ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 2
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !14
  %i.bdg = sext i16 %i.bdf to i32
  %i.bdh = load i16, ptr %i.bdd, align 2, !tbaa !14
  %i.bdi = zext i16 %i.bdh to i32
  %i.bdj = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bdk = add i32 %i.bcs, %i.bdg
  %i.bdl = tail call i32 @llvm.umin.i32(i32 %i.bdj, i32 %i.bdk)
  store i32 %i.bdl, ptr %i.c, align 8, !tbaa !19
  %i.bdm = shl i32 %i.bdi, 28
  %i.bdn = ashr exact i32 %i.bdm, 28
  %i.bdo = add i32 %i.bdn, %.0.in227.i.i          ; 2 uses
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.azx, i64 %indvars.iv261.i.i ; 2 uses
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !9
  %i.bdr = add i32 %i.bdo, %i.bdq
  %i.bds = and i32 %i.bdr, 63
  store i32 %i.bds, ptr %i.bdp, align 4, !tbaa !9
  %indvars.iv.next262.i.i = add nuw nsw i64 %indvars.iv261.i.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next262.i.i, %i.bcq
  br i1 %exitcond38.not.i, label %.loopexit.i, label %bb.ci, !llvm.loop !70

bb.cj:                                            ; preds = %bb.cf
  %i.bdt = lshr i32 %i.ayw, 3
  %i.bdu = zext nneg i32 %i.bdt to i64
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.bdu
  %i.bdw = load i32, ptr %i.bdv, align 1, !tbaa !14
  %i.bdx = tail call i32 @llvm.bswap.i32(i32 %i.bdw)
  %i.bdy = and i32 %i.ayw, 7
  %i.bdz = shl i32 %i.bdx, %i.bdy
  %i.bea = lshr i32 %i.bdz, 26
  %i.beb = add i32 %i.ayw, 6
  %i.bec = tail call i32 @llvm.umin.i32(i32 %i.afr, i32 %i.beb)
  store i32 %i.bec, ptr %i.c, align 8, !tbaa !19
  %i.bed = getelementptr inbounds nuw i8, ptr %i.afp, i64 148 ; 2 uses
  store i32 %i.bea, ptr %i.bed, align 4, !tbaa !9
  %i.bee = icmp sgt i32 %i.afl, 1
  br i1 %i.bee, label %.lr.ph225.i.i, label %.loopexit.i.i79

.lr.ph225.i.i:                                    ; preds = %bb.cj
  %i.bef = getelementptr inbounds nuw i8, ptr %i.ayy, i64 8
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !17
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph225.i.i
  %indvars.iv258.i.i = phi i64 [ 1, %.lr.ph225.i.i ], [ %indvars.iv.next259.i.i, %bb.ck ] ; 2 uses
  %i.beh = load i32, ptr %i.ayy, align 8, !tbaa !25
  %i.bei = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.bej = lshr i32 %i.bei, 3
  %i.bek = zext nneg i32 %i.bej to i64
  %i.bel = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.bek
  %i.bem = load i32, ptr %i.bel, align 1, !tbaa !14
  %i.ben = tail call i32 @llvm.bswap.i32(i32 %i.bem)
  %i.beo = and i32 %i.bei, 7
  %i.bep = shl i32 %i.ben, %i.beo
  %i.beq = sub nsw i32 32, %i.beh
  %i.ber = lshr i32 %i.bep, %i.beq
  %i.bes = zext i32 %i.ber to i64
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.beg, i64 %i.bes ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 2
  %i.bev = load i16, ptr %i.beu, align 2, !tbaa !14
  %i.bew = sext i16 %i.bev to i32
  %i.bex = load i16, ptr %i.bet, align 2, !tbaa !14
  %i.bey = zext i16 %i.bex to i32
  %i.bez = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bfa = add i32 %i.bei, %i.bew
  %i.bfb = tail call i32 @llvm.umin.i32(i32 %i.bez, i32 %i.bfa)
  store i32 %i.bfb, ptr %i.c, align 8, !tbaa !19
  %i.bfc = getelementptr [4 x i8], ptr %i.bed, i64 %indvars.iv258.i.i ; 2 uses
  %i.bfd = getelementptr i8, ptr %i.bfc, i64 -4
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !9
  %i.bff = add i32 %i.bfe, %i.bey
  %i.bfg = and i32 %i.bff, 63
  store i32 %i.bfg, ptr %i.bfc, align 4, !tbaa !9
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1 ; 2 uses
  %i.bfh = load i32, ptr %i.aes, align 4, !tbaa !126 ; 10 uses
  %i.bfi = sext i32 %i.bfh to i64
  %i.bfj = icmp slt i64 %indvars.iv.next259.i.i, %i.bfi
  br i1 %i.bfj, label %bb.ck, label %.loopexit.i.i79, !llvm.loop !71

.loopexit.i.i79:                                  ; preds = %bb.ck, %get_bitsz.exit.i.i84, %bb.cj, %.preheader212.i.i
  %i.bfk = phi i32 [ %i.afd, %.preheader212.i.i ], [ %i.afd, %bb.cj ], [ %i.afd, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 3 uses
  %i.bfl = phi i32 [ %i.afe, %.preheader212.i.i ], [ %i.afe, %bb.cj ], [ %i.afe, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 3 uses
  %i.bfm = phi i32 [ %i.aff, %.preheader212.i.i ], [ %i.aff, %bb.cj ], [ %i.aff, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 11 uses
  %i.bfn = phi i32 [ %i.afg, %.preheader212.i.i ], [ %i.afg, %bb.cj ], [ %i.afg, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 2 uses
  %i.bfo = phi i32 [ %i.afg, %.preheader212.i.i ], [ %i.afh, %bb.cj ], [ %i.afg, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 2 uses
  %i.bfp = phi i32 [ %i.afg, %.preheader212.i.i ], [ %i.afi, %bb.cj ], [ %i.afg, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 2 uses
  %i.bfq = phi i32 [ %i.afg, %.preheader212.i.i ], [ %i.afj, %bb.cj ], [ %i.afg, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 2 uses
  %i.bfr = phi i32 [ %i.afg, %.preheader212.i.i ], [ %i.afk, %bb.cj ], [ %i.afg, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 2 uses
  %i.bfs = phi i32 [ %i.afg, %.preheader212.i.i ], [ %i.afl, %bb.cj ], [ %i.afg, %get_bitsz.exit.i.i84 ], [ %i.bfh, %bb.ck ] ; 5 uses
  %.0172.i.i = phi i32 [ %i.aha, %.preheader212.i.i ], [ %i.ayk, %bb.cj ], [ %i.aha, %get_bitsz.exit.i.i84 ], [ %i.ayk, %bb.ck ] ; 2 uses
  %.not208.i.i = icmp eq i32 %.0172.i.i, 0
  br i1 %.not208.i.i, label %.loopexit.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i79
  %i.bft = zext nneg i32 %.0172.i.i to i64
  %i.bfu = getelementptr [32 x i8], ptr @atrac3p_sf_weights, i64 %i.bft
  %i.bfv = getelementptr i8, ptr %i.bfu, i64 -32
  %i.bfw = icmp sgt i32 %i.bfs, 0
  br i1 %i.bfw, label %.lr.ph.i203.i.i, label %.loopexit.i

.lr.ph.i203.i.i:                                  ; preds = %bb.cl
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.afp, i64 148
  %i.bfy = tail call i32 @llvm.smax.i32(i32 %i.bfm, i32 1)
  %smax = zext nneg i32 %i.bfy to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.co, %.lr.ph.i203.i.i
  %indvars.iv.i204.i.i = phi i64 [ 0, %.lr.ph.i203.i.i ], [ %indvars.iv.next.i205.i.i, %bb.co ] ; 4 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %indvars.iv.i204.i.i
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !14
  %i.bgb = sext i8 %i.bga to i32
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %indvars.iv.i204.i.i ; 2 uses
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !9
  %i.bge = sub nsw i32 %i.bgd, %i.bgb             ; 3 uses
  store i32 %i.bge, ptr %i.bgc, align 4, !tbaa !9
  %or.cond.i.i.i80 = icmp ugt i32 %i.bge, 63
  br i1 %or.cond.i.i.i80, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.bgf = trunc nuw nsw i64 %indvars.iv.i204.i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %i.bgf, i32 noundef %i.bge) #9
  br label %decode_scale_factors.exit

bb.co:                                            ; preds = %bb.cm
  %indvars.iv.next.i205.i.i = add nuw nsw i64 %indvars.iv.i204.i.i, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next.i205.i.i, %smax
  br i1 %exitcond360.not, label %.loopexit.i, label %bb.cm, !llvm.loop !72

.loopexit.i:                                      ; preds = %scalar.ph605.prol.loopexit, %scalar.ph605, %bb.ci, %.lr.ph230.i.i, %bb.cd, %bb.bo, %bb.co, %get_bitsz.exit185.i.i, %bb.bl, %middle.block613, %bb.cl, %.loopexit.i.i79, %unpack_vq_shape.exit202.i.i, %.preheader219.i.i, %unpack_vq_shape.exit194.i.i, %bb.cb, %bb.ca, %.preheader209.i.i, %bb.bn, %.preheader.i.i94
  %i.bgg = phi i32 [ %i.afd, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afd, %bb.ci ], [ %i.afd, %middle.block613 ], [ %i.afd, %bb.cd ], [ %i.afd, %bb.bo ], [ %i.bfk, %bb.co ], [ %i.afd, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfk, %.loopexit.i.i79 ], [ %i.bfk, %bb.cl ], [ %i.afd, %unpack_vq_shape.exit194.i.i ], [ %i.afd, %unpack_vq_shape.exit202.i.i ], [ %i.afd, %.preheader209.i.i ], [ %i.afd, %bb.bn ], [ %i.afd, %bb.cb ], [ %i.afd, %bb.ca ], [ %i.afd, %.lr.ph230.i.i ], [ %i.afd, %scalar.ph605 ], [ %i.afd, %scalar.ph605.prol.loopexit ] ; 3 uses
  %i.bgh = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afe, %bb.ci ], [ %i.afe, %middle.block613 ], [ %i.afe, %bb.cd ], [ %i.afe, %bb.bo ], [ %i.bfl, %bb.co ], [ %i.afe, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfl, %.loopexit.i.i79 ], [ %i.bfl, %bb.cl ], [ %i.afe, %unpack_vq_shape.exit194.i.i ], [ %i.afe, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afe, %bb.bn ], [ %i.afe, %bb.cb ], [ %i.afe, %bb.ca ], [ %i.afe, %.lr.ph230.i.i ], [ %i.afe, %scalar.ph605 ], [ %i.afe, %scalar.ph605.prol.loopexit ]
  %i.bgi = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.aff, %bb.ci ], [ %i.aff, %middle.block613 ], [ %i.aff, %bb.cd ], [ %i.aff, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.aff, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfm, %.loopexit.i.i79 ], [ %i.bfm, %bb.cl ], [ %i.aff, %unpack_vq_shape.exit194.i.i ], [ %i.aff, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.aff, %bb.bn ], [ %i.aff, %bb.cb ], [ %i.aff, %bb.ca ], [ %i.aff, %.lr.ph230.i.i ], [ %i.aff, %scalar.ph605 ], [ %i.aff, %scalar.ph605.prol.loopexit ]
  %i.bgj = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afg, %bb.ci ], [ %i.afg, %middle.block613 ], [ %i.afg, %bb.cd ], [ %i.afg, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.afg, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfn, %.loopexit.i.i79 ], [ %i.bfn, %bb.cl ], [ %i.afg, %unpack_vq_shape.exit194.i.i ], [ %i.afg, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afg, %bb.bn ], [ %i.afg, %bb.cb ], [ %i.afg, %bb.ca ], [ %i.afg, %.lr.ph230.i.i ], [ %i.afg, %scalar.ph605 ], [ %i.afg, %scalar.ph605.prol.loopexit ]
  %i.bgk = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afh, %bb.ci ], [ %i.afh, %middle.block613 ], [ %i.afh, %bb.cd ], [ %i.afh, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.afh, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfo, %.loopexit.i.i79 ], [ %i.bfo, %bb.cl ], [ %i.afh, %unpack_vq_shape.exit194.i.i ], [ %i.afh, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afh, %bb.bn ], [ %i.afh, %bb.cb ], [ %i.afh, %bb.ca ], [ %i.afh, %.lr.ph230.i.i ], [ %i.afh, %scalar.ph605 ], [ %i.afh, %scalar.ph605.prol.loopexit ]
  %i.bgl = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afi, %bb.ci ], [ %i.afi, %middle.block613 ], [ %i.afi, %bb.cd ], [ %i.afh, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.afi, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfp, %.loopexit.i.i79 ], [ %i.bfp, %bb.cl ], [ %i.afi, %unpack_vq_shape.exit194.i.i ], [ %i.afi, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afh, %bb.bn ], [ 0, %bb.cb ], [ %i.afi, %bb.ca ], [ %i.afi, %.lr.ph230.i.i ], [ %i.afi, %scalar.ph605 ], [ %i.afi, %scalar.ph605.prol.loopexit ]
  %i.bgm = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afj, %bb.ci ], [ %i.afj, %middle.block613 ], [ %i.afi, %bb.cd ], [ %i.afh, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.afj, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfq, %.loopexit.i.i79 ], [ %i.bfq, %bb.cl ], [ %i.afi, %unpack_vq_shape.exit194.i.i ], [ %i.afj, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afh, %bb.bn ], [ 0, %bb.cb ], [ %i.afj, %bb.ca ], [ %i.afj, %.lr.ph230.i.i ], [ %i.afj, %scalar.ph605 ], [ %i.afj, %scalar.ph605.prol.loopexit ]
  %i.bgn = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afk, %bb.ci ], [ %i.afk, %middle.block613 ], [ %i.afi, %bb.cd ], [ %i.afh, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.afk, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfr, %.loopexit.i.i79 ], [ %i.bfr, %bb.cl ], [ %i.afi, %unpack_vq_shape.exit194.i.i ], [ %i.afk, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afh, %bb.bn ], [ 0, %bb.cb ], [ %i.afj, %bb.ca ], [ %i.afj, %.lr.ph230.i.i ], [ %i.afk, %scalar.ph605 ], [ %i.afk, %scalar.ph605.prol.loopexit ]
  %i.bgo = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afk, %bb.ci ], [ %i.afl, %middle.block613 ], [ %i.afi, %bb.cd ], [ %i.afh, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.afl, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfs, %.loopexit.i.i79 ], [ %i.bfs, %bb.cl ], [ %i.afi, %unpack_vq_shape.exit194.i.i ], [ %i.afk, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afh, %bb.bn ], [ 0, %bb.cb ], [ %i.afj, %bb.ca ], [ %i.afj, %.lr.ph230.i.i ], [ %i.afl, %scalar.ph605 ], [ %i.afl, %scalar.ph605.prol.loopexit ]
  %i.bgp = phi i32 [ %i.afe, %get_bitsz.exit185.i.i ], [ %i.afd, %bb.bl ], [ %i.afk, %bb.ci ], [ %i.afm, %middle.block613 ], [ %i.afi, %bb.cd ], [ %i.afh, %bb.bo ], [ %i.bfm, %bb.co ], [ %i.afm, %.preheader219.i.i ], [ %i.afd, %.preheader.i.i94 ], [ %i.bfs, %.loopexit.i.i79 ], [ %i.bfs, %bb.cl ], [ %i.afi, %unpack_vq_shape.exit194.i.i ], [ %i.afk, %unpack_vq_shape.exit202.i.i ], [ %i.afe, %.preheader209.i.i ], [ %i.afh, %bb.bn ], [ 0, %bb.cb ], [ %i.afj, %bb.ca ], [ %i.afj, %.lr.ph230.i.i ], [ %i.afm, %scalar.ph605 ], [ %i.afm, %scalar.ph605.prol.loopexit ]
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i71
  br i1 %exitcond45.not.i, label %.loopexit255, label %bb.bk, !llvm.loop !73

.loopexit255:                                     ; preds = %.loopexit.i
  %.not.i97 = icmp eq i32 %i.bgg, 0
  br i1 %.not.i97, label %decode_code_table_indexes.exit, label %.loopexit255.thread

.loopexit255.thread:                              ; preds = %bb.bj, %.loopexit255
  %.pr472 = phi i32 [ %i.bgg, %.loopexit255 ], [ %.0.in.lcssa.i463, %bb.bj ] ; 14 uses
  %i.bgq = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.bgr = load ptr, ptr %0, align 8, !tbaa !21
  %i.bgs = lshr i32 %i.bgq, 3
  %i.bgt = zext nneg i32 %i.bgs to i64
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgr, i64 %i.bgt
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !14
  %i.bgw = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bgx = icmp slt i32 %i.bgq, %i.bgw
  %i.bgy = zext i1 %i.bgx to i32
  %spec.select.i.i = add i32 %i.bgq, %i.bgy
  %i.bgz = zext i8 %i.bgv to i32
  %i.bha = and i32 %i.bgq, 7
  %i.bhb = shl nuw nsw i32 %i.bgz, %i.bha
  %i.bhc = lshr i32 %i.bhb, 7
  store i32 %spec.select.i.i, ptr %i.c, align 8, !tbaa !19
  %i.bhd = and i32 %i.bhc, 1                      ; 4 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.bhd, ptr %i.bhe, align 8, !tbaa !129
  br i1 %i.ah, label %.lr.ph.i98, label %decode_window_shape.exit

.lr.ph.i98:                                       ; preds = %.loopexit255.thread
  %.not.i.i99 = icmp eq i32 %i.bhd, 0             ; 4 uses
  %i.bhf = select i1 %.not.i.i99, i32 3, i32 7    ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %5 = select i1 %.not.i.i99, ptr @ct_vlc_tabs, ptr getelementptr inbounds nuw (i8, ptr @ct_vlc_tabs, i64 72) ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %1, i64 348
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %ct_vlc_tabs..i.i = select i1 %.not.i.i99, ptr @ct_vlc_tabs, ptr getelementptr inbounds nuw (i8, ptr @ct_vlc_tabs, i64 24) ; 3 uses
  %ct_vlc_tabs.135.i.i = select i1 %.not.i.i99, ptr @ct_vlc_tabs, ptr getelementptr inbounds nuw (i8, ptr @ct_vlc_tabs, i64 48) ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %ct_vlc_tabs.135.i.i, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %ct_vlc_tabs..i.i, i64 8 ; 2 uses
  %i.bhi = or disjoint i32 %i.bhd, 2              ; 2 uses
  %i.bhj = sub nuw nsw i32 30, %i.bhd             ; 2 uses
  %wide.trip.count.i100 = zext nneg i32 %2 to i64
  %i.bhk = icmp slt i32 %.pr472, 0                ; 4 uses
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit.i108, %.lr.ph.i98
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i98 ], [ %indvars.iv.next.i109, %.loopexit.i108 ] ; 7 uses
  %i.bhl = getelementptr inbounds nuw [7800 x i8], ptr %1, i64 %indvars.iv.i101
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.bhm, i8 0, i64 128, i1 false)
  %i.bhn = getelementptr inbounds nuw [7800 x i8], ptr %i.bhg, i64 %indvars.iv.i101 ; 9 uses
  %i.bho = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.bhp = load ptr, ptr %0, align 8, !tbaa !21   ; 21 uses
  %i.bhq = lshr i32 %i.bho, 3
  %i.bhr = zext nneg i32 %i.bhq to i64
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bhr
  %i.bht = load i8, ptr %i.bhs, align 1, !tbaa !14
  %i.bhu = load i32, ptr %i.e, align 8, !tbaa !20 ; 12 uses
  %i.bhv = icmp slt i32 %i.bho, %i.bhu
  %i.bhw = zext i1 %i.bhv to i32
  %spec.select.i.i.i102 = add i32 %i.bho, %i.bhw  ; 4 uses
  %i.bhx = zext i8 %i.bht to i32
  %i.bhy = and i32 %i.bho, 7
  %i.bhz = shl nuw nsw i32 %i.bhx, %i.bhy
  %i.bia = lshr i32 %i.bhz, 7
  store i32 %spec.select.i.i.i102, ptr %i.c, align 8, !tbaa !19
  %i.bib = and i32 %i.bia, 1
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhn, i64 16
  store i32 %i.bib, ptr %i.bic, align 8, !tbaa !130
  %i.bid = lshr i32 %spec.select.i.i.i102, 3
  %i.bie = zext nneg i32 %i.bid to i64
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bie
  %i.big = load i32, ptr %i.bif, align 1, !tbaa !14
  %i.bih = tail call i32 @llvm.bswap.i32(i32 %i.big)
  %i.bii = and i32 %spec.select.i.i.i102, 7
  %i.bij = shl i32 %i.bih, %i.bii
  %i.bik = lshr i32 %i.bij, 30
  %i.bil = add i32 %spec.select.i.i.i102, 2
  %i.bim = tail call i32 @llvm.umin.i32(i32 %i.bhu, i32 %i.bil) ; 17 uses
  store i32 %i.bim, ptr %i.c, align 8, !tbaa !19
  switch i32 %i.bik, label %default.unreachable [
    i32 0, label %bb.cq
    i32 1, label %bb.cy
    i32 2, label %bb.dg
    i32 3, label %bb.ds
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.bin = lshr i32 %i.bim, 3
  %i.bio = zext nneg i32 %i.bin to i64
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bio
  %i.biq = load i8, ptr %i.bip, align 1, !tbaa !14
  %i.bir = icmp slt i32 %i.bim, %i.bhu
  %i.bis = zext i1 %i.bir to i32
  %spec.select.i.i.i.i = add i32 %i.bim, %i.bis   ; 4 uses
  %i.bit = zext i8 %i.biq to i32
  %i.biu = and i32 %i.bim, 7
  store i32 %spec.select.i.i.i.i, ptr %i.c, align 8, !tbaa !19
  %i.biv = lshr exact i32 128, %i.biu
  %i.biw = and i32 %i.biv, %i.bit
  %.not.i.i.i111 = icmp eq i32 %i.biw, 0
  br i1 %.not.i.i.i111, label %get_num_ct_values.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bix = lshr i32 %spec.select.i.i.i.i, 3
  %i.biy = zext nneg i32 %i.bix to i64
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.biy
  %i.bja = load i32, ptr %i.biz, align 1, !tbaa !14
  %i.bjb = tail call i32 @llvm.bswap.i32(i32 %i.bja)
  %i.bjc = and i32 %spec.select.i.i.i.i, 7
  %i.bjd = shl i32 %i.bjb, %i.bjc
  %i.bje = lshr i32 %i.bjd, 27                    ; 3 uses
  %i.bjf = add i32 %spec.select.i.i.i.i, 5
  %i.bjg = tail call i32 @llvm.umin.i32(i32 %i.bhu, i32 %i.bjf)
  store i32 %i.bjg, ptr %i.c, align 8, !tbaa !19
  %i.bjh = icmp sgt i32 %i.bje, %.pr472
  br i1 %i.bjh, label %.loopexit.sink.split.i.i, label %.preheader.i.i112

get_num_ct_values.exit.i.i:                       ; preds = %bb.cq
  br i1 %i.bhk, label %decode_scale_factors.exit, label %.preheader.i.i112

.preheader.i.i112:                                ; preds = %get_num_ct_values.exit.i.i, %bb.cr
  %.0.i225.i.i = phi i32 [ %.pr472, %get_num_ct_values.exit.i.i ], [ %i.bje, %bb.cr ] ; 2 uses
  %.not187.i.i = icmp eq i32 %.0.i225.i.i, 0
  br i1 %.not187.i.i, label %.loopexit.i108, label %.lr.ph183.i.i

.lr.ph183.i.i:                                    ; preds = %.preheader.i.i112
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bhn, i64 20 ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bhn, i64 276 ; 2 uses
  %.not139.i.i = icmp eq i64 %indvars.iv.i101, 0
  %wide.trip.count212.i.i = zext nneg i32 %.0.i225.i.i to i64 ; 2 uses
  br i1 %.not139.i.i, label %.lr.ph183.split.us.i.i, label %.lr.ph183.split.i.i

.lr.ph183.split.us.i.i:                           ; preds = %.lr.ph183.i.i, %bb.ct
  %indvars.iv209.i.i = phi i64 [ %indvars.iv.next210.i.i, %bb.ct ], [ 0, %.lr.ph183.i.i ] ; 3 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %indvars.iv209.i.i
  %i.bjl = load i32, ptr %i.bjk, align 4, !tbaa !9
  %.not138.us.i.i = icmp eq i32 %i.bjl, 0
  br i1 %.not138.us.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph183.split.us.i.i
  %i.bjm = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.bjn = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bjo = lshr i32 %i.bjm, 3
  %i.bjp = zext nneg i32 %i.bjo to i64
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bjp
  %i.bjr = load i32, ptr %i.bjq, align 1, !tbaa !14
  %i.bjs = tail call i32 @llvm.bswap.i32(i32 %i.bjr)
  %i.bjt = and i32 %i.bjm, 7
  %i.bju = shl i32 %i.bjs, %i.bjt
  %i.bjv = lshr i32 %i.bju, %i.bhj
  %i.bjw = add i32 %i.bjm, %i.bhi
  %i.bjx = tail call i32 @llvm.umin.i32(i32 %i.bjn, i32 %i.bjw)
  store i32 %i.bjx, ptr %i.c, align 8, !tbaa !19
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjj, i64 %indvars.iv209.i.i
  store i32 %i.bjv, ptr %i.bjy, align 4, !tbaa !9
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph183.split.us.i.i
  %indvars.iv.next210.i.i = add nuw nsw i64 %indvars.iv209.i.i, 1 ; 2 uses
  %exitcond213.not.i.i = icmp eq i64 %indvars.iv.next210.i.i, %wide.trip.count212.i.i
  br i1 %exitcond213.not.i.i, label %.loopexit.i108, label %.lr.ph183.split.us.i.i, !llvm.loop !74

.lr.ph183.split.i.i:                              ; preds = %.lr.ph183.i.i, %bb.cx
  %indvars.iv204.i.i = phi i64 [ %indvars.iv.next205.i.i, %bb.cx ], [ 0, %.lr.ph183.i.i ] ; 4 uses
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %indvars.iv204.i.i
  %i.bka = load i32, ptr %i.bjz, align 4, !tbaa !9
  %.not138.i.i = icmp eq i32 %i.bka, 0
  br i1 %.not138.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph183.split.i.i
  %i.bkb = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.bkc = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bkd = lshr i32 %i.bkb, 3
  %i.bke = zext nneg i32 %i.bkd to i64
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bke
  %i.bkg = load i32, ptr %i.bkf, align 1, !tbaa !14
  %i.bkh = tail call i32 @llvm.bswap.i32(i32 %i.bkg)
  %i.bki = and i32 %i.bkb, 7
  %i.bkj = shl i32 %i.bkh, %i.bki
  %i.bkk = lshr i32 %i.bkj, %i.bhj
  %i.bkl = add i32 %i.bkb, %i.bhi
  %i.bkm = tail call i32 @llvm.umin.i32(i32 %i.bkc, i32 %i.bkl)
  store i32 %i.bkm, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split.i.i113

bb.cv:                                            ; preds = %.lr.ph183.split.i.i
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %indvars.iv204.i.i
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !9
  %.not140.i.i = icmp eq i32 %i.bko, 0
  br i1 %.not140.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bkp = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.bkq = lshr i32 %i.bkp, 3
  %i.bkr = zext nneg i32 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bkr
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !14
  %i.bku = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bkv = icmp slt i32 %i.bkp, %i.bku
  %i.bkw = zext i1 %i.bkv to i32
  %spec.select.i142.i.i = add i32 %i.bkp, %i.bkw
  %i.bkx = zext i8 %i.bkt to i32
  %i.bky = and i32 %i.bkp, 7
  %i.bkz = shl nuw nsw i32 %i.bkx, %i.bky
  %i.bla = lshr i32 %i.bkz, 7
  store i32 %spec.select.i142.i.i, ptr %i.c, align 8, !tbaa !19
  %i.blb = and i32 %i.bla, 1
  br label %.sink.split.i.i113

.sink.split.i.i113:                               ; preds = %bb.cw, %bb.cu
  %.sink.i.i114 = phi i32 [ %i.bkk, %bb.cu ], [ %i.blb, %bb.cw ]
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %i.bjj, i64 %indvars.iv204.i.i
  store i32 %.sink.i.i114, ptr %i.blc, align 4, !tbaa !9
  br label %bb.cx

bb.cx:                                            ; preds = %.sink.split.i.i113, %bb.cv
  %indvars.iv.next205.i.i = add nuw nsw i64 %indvars.iv204.i.i, 1 ; 2 uses
  %exitcond208.not.i.i = icmp eq i64 %indvars.iv.next205.i.i, %wide.trip.count212.i.i
  br i1 %exitcond208.not.i.i, label %.loopexit.i108, label %.lr.ph183.split.i.i, !llvm.loop !74

bb.cy:                                            ; preds = %bb.cp
  %i.bld = lshr i32 %i.bim, 3
  %i.ble = zext nneg i32 %i.bld to i64
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.ble
  %i.blg = load i8, ptr %i.blf, align 1, !tbaa !14
  %i.blh = icmp slt i32 %i.bim, %i.bhu
  %i.bli = zext i1 %i.blh to i32
  %spec.select.i.i143.i.i = add i32 %i.bim, %i.bli ; 4 uses
  %i.blj = zext i8 %i.blg to i32
  %i.blk = and i32 %i.bim, 7
  store i32 %spec.select.i.i143.i.i, ptr %i.c, align 8, !tbaa !19
  %i.bll = lshr exact i32 128, %i.blk
  %i.blm = and i32 %i.bll, %i.blj
  %.not.i144.i.i = icmp eq i32 %i.blm, 0
  br i1 %.not.i144.i.i, label %get_num_ct_values.exit146.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bln = lshr i32 %spec.select.i.i143.i.i, 3
  %i.blo = zext nneg i32 %i.bln to i64
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.blo
  %i.blq = load i32, ptr %i.blp, align 1, !tbaa !14
  %i.blr = tail call i32 @llvm.bswap.i32(i32 %i.blq)
  %i.bls = and i32 %spec.select.i.i143.i.i, 7
  %i.blt = shl i32 %i.blr, %i.bls
  %i.blu = lshr i32 %i.blt, 27                    ; 3 uses
  %i.blv = add i32 %spec.select.i.i143.i.i, 5
  %i.blw = tail call i32 @llvm.umin.i32(i32 %i.bhu, i32 %i.blv)
  store i32 %i.blw, ptr %i.c, align 8, !tbaa !19
  %i.blx = icmp sgt i32 %i.blu, %.pr472
  br i1 %i.blx, label %.loopexit.sink.split.i.i, label %.preheader170.i.i

get_num_ct_values.exit146.i.i:                    ; preds = %bb.cy
  br i1 %i.bhk, label %decode_scale_factors.exit, label %.preheader170.i.i

.preheader170.i.i:                                ; preds = %get_num_ct_values.exit146.i.i, %bb.cz
  %.0.i145228.i.i = phi i32 [ %.pr472, %get_num_ct_values.exit146.i.i ], [ %i.blu, %bb.cz ] ; 2 uses
  %.not186.i.i = icmp eq i32 %.0.i145228.i.i, 0
  br i1 %.not186.i.i, label %.loopexit.i108, label %.lr.ph181.i.i

.lr.ph181.i.i:                                    ; preds = %.preheader170.i.i
  %i.bly = getelementptr inbounds nuw i8, ptr %i.bhn, i64 20
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bhn, i64 276
  %.not132.i.i = icmp eq i64 %indvars.iv.i101, 0
  %wide.trip.count202.i.i = zext nneg i32 %.0.i145228.i.i to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.df, %.lr.ph181.i.i
  %indvars.iv199.i.i = phi i64 [ 0, %.lr.ph181.i.i ], [ %indvars.iv.next200.i.i, %bb.df ] ; 4 uses
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %i.bly, i64 %indvars.iv199.i.i
  %i.bmb = load i32, ptr %i.bma, align 4, !tbaa !9
  %.not131.i.i.a = icmp eq i32 %i.bmb, 0
  br i1 %.not131.i.i.a, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.val135.i.i = load ptr, ptr %8, align 8, !tbaa !17
  %.val137.i.i = load i32, ptr %ct_vlc_tabs..i.i, align 8, !tbaa !25
  %i.bmc = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.bmd = lshr i32 %i.bmc, 3
  %i.bme = zext nneg i32 %i.bmd to i64
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bme
  %i.bmg = load i32, ptr %i.bmf, align 1, !tbaa !14
  %i.bmh = tail call i32 @llvm.bswap.i32(i32 %i.bmg)
  %i.bmi = and i32 %i.bmc, 7
  %i.bmj = shl i32 %i.bmh, %i.bmi
  %i.bmk = sub nsw i32 32, %.val137.i.i
  %i.bml = lshr i32 %i.bmj, %i.bmk
  %i.bmm = zext i32 %i.bml to i64
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %.val135.i.i, i64 %i.bmm ; 2 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 2
  %i.bmp = load i16, ptr %i.bmo, align 2, !tbaa !14
  %i.bmq = sext i16 %i.bmp to i32
  %i.bmr = load i16, ptr %i.bmn, align 2, !tbaa !14
  %i.bms = sext i16 %i.bmr to i32
  %i.bmt = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bmu = add i32 %i.bmc, %i.bmq
  %i.bmv = tail call i32 @llvm.umin.i32(i32 %i.bmt, i32 %i.bmu)
  store i32 %i.bmv, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split240.i.i

bb.dc:                                            ; preds = %bb.da
  br i1 %.not132.i.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %indvars.iv199.i.i
  %i.bmx = load i32, ptr %i.bmw, align 4, !tbaa !9
  %.not133.i.i = icmp eq i32 %i.bmx, 0
  br i1 %.not133.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.bmy = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.bmz = lshr i32 %i.bmy, 3
  %i.bna = zext nneg i32 %i.bmz to i64
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bna
  %i.bnc = load i8, ptr %i.bnb, align 1, !tbaa !14
  %i.bnd = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bne = icmp slt i32 %i.bmy, %i.bnd
  %i.bnf = zext i1 %i.bne to i32
  %spec.select.i147.i.i = add i32 %i.bmy, %i.bnf
  %i.bng = zext i8 %i.bnc to i32
  %i.bnh = and i32 %i.bmy, 7
  %i.bni = shl nuw nsw i32 %i.bng, %i.bnh
  %i.bnj = lshr i32 %i.bni, 7
  store i32 %spec.select.i147.i.i, ptr %i.c, align 8, !tbaa !19
  %i.bnk = and i32 %i.bnj, 1
  br label %.sink.split240.i.i

.sink.split240.i.i:                               ; preds = %bb.de, %bb.db
  %.sink241.i.i = phi i32 [ %i.bms, %bb.db ], [ %i.bnk, %bb.de ]
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %i.blz, i64 %indvars.iv199.i.i
  store i32 %.sink241.i.i, ptr %i.bnl, align 4, !tbaa !9
  br label %bb.df

bb.df:                                            ; preds = %.sink.split240.i.i, %bb.dd, %bb.dc
  %indvars.iv.next200.i.i = add nuw nsw i64 %indvars.iv199.i.i, 1 ; 2 uses
  %exitcond203.not.i.i = icmp eq i64 %indvars.iv.next200.i.i, %wide.trip.count202.i.i
  br i1 %exitcond203.not.i.i, label %.loopexit.i108, label %bb.da, !llvm.loop !75

bb.dg:                                            ; preds = %bb.cp
  %i.bnm = lshr i32 %i.bim, 3
  %i.bnn = zext nneg i32 %i.bnm to i64
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bnn
  %i.bnp = load i8, ptr %i.bno, align 1, !tbaa !14
  %i.bnq = icmp slt i32 %i.bim, %i.bhu
  %i.bnr = zext i1 %i.bnq to i32
  %spec.select.i.i148.i.i = add i32 %i.bim, %i.bnr ; 5 uses
  %i.bns = zext i8 %i.bnp to i32
  %i.bnt = and i32 %i.bim, 7
  store i32 %spec.select.i.i148.i.i, ptr %i.c, align 8, !tbaa !19
  %i.bnu = lshr exact i32 128, %i.bnt
  %i.bnv = and i32 %i.bnu, %i.bns
  %.not.i149.i.i = icmp eq i32 %i.bnv, 0
  br i1 %.not.i149.i.i, label %get_num_ct_values.exit151.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bnw = lshr i32 %spec.select.i.i148.i.i, 3
  %i.bnx = zext nneg i32 %i.bnw to i64
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bnx
  %i.bnz = load i32, ptr %i.bny, align 1, !tbaa !14
  %i.boa = tail call i32 @llvm.bswap.i32(i32 %i.bnz)
  %i.bob = and i32 %spec.select.i.i148.i.i, 7
  %i.boc = shl i32 %i.boa, %i.bob
  %i.bod = lshr i32 %i.boc, 27                    ; 3 uses
  %i.boe = add i32 %spec.select.i.i148.i.i, 5
  %i.bof = tail call i32 @llvm.umin.i32(i32 %i.bhu, i32 %i.boe) ; 2 uses
  store i32 %i.bof, ptr %i.c, align 8, !tbaa !19
  %i.bog = icmp sgt i32 %i.bod, %.pr472
  br i1 %i.bog, label %.loopexit.sink.split.i.i, label %.preheader172.i.i

get_num_ct_values.exit151.i.i:                    ; preds = %bb.dg
  br i1 %i.bhk, label %decode_scale_factors.exit, label %.preheader172.i.i

.preheader172.i.i:                                ; preds = %get_num_ct_values.exit151.i.i, %bb.dh
  %.0.i150231.i.i = phi i32 [ %.pr472, %get_num_ct_values.exit151.i.i ], [ %i.bod, %bb.dh ] ; 3 uses
  %i.boh = phi i32 [ %spec.select.i.i148.i.i, %get_num_ct_values.exit151.i.i ], [ %i.bof, %bb.dh ] ; 7 uses
  %.not185.i.i = icmp eq i32 %.0.i150231.i.i, 0
  br i1 %.not185.i.i, label %.loopexit.i108, label %.lr.ph179.i.i

.lr.ph179.i.i:                                    ; preds = %.preheader172.i.i
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bhn, i64 20 ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bhn, i64 276 ; 2 uses
  %.not127.i.i = icmp eq i64 %indvars.iv.i101, 0  ; 2 uses
  %wide.trip.count196.i.i = zext nneg i32 %.0.i150231.i.i to i64
  %i.bok = load i32, ptr %i.boi, align 4, !tbaa !9
  %.not126.peel.i.i.a = icmp eq i32 %i.bok, 0
  br i1 %.not126.peel.i.i.a, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.lr.ph179.i.i
  %.val167.peel.i.i = load ptr, ptr %8, align 8, !tbaa !17
  %i.bol = lshr i32 %i.boh, 3
  %i.bom = zext nneg i32 %i.bol to i64
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bom
  %i.boo = load i32, ptr %i.bon, align 1, !tbaa !14
  %i.bop = tail call i32 @llvm.bswap.i32(i32 %i.boo)
  %i.boq = and i32 %i.boh, 7
  %i.bor = shl i32 %i.bop, %i.boq
  %.val169.peel.i.i = load i32, ptr %ct_vlc_tabs..i.i, align 8, !tbaa !25
  %i.bos = sub nsw i32 32, %.val169.peel.i.i
  %i.bot = lshr i32 %i.bor, %i.bos
  %i.bou = zext i32 %i.bot to i64
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %.val167.peel.i.i, i64 %i.bou ; 2 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 2
  %i.box = load i16, ptr %i.bow, align 2, !tbaa !14
  %i.boy = sext i16 %i.box to i32
  %i.boz = add i32 %i.boh, %i.boy
  %i.bpa = tail call i32 @llvm.umin.i32(i32 %i.bhu, i32 %i.boz)
  %i.bpb = load i16, ptr %i.bov, align 2, !tbaa !14
  %i.bpc = sext i16 %i.bpb to i32                 ; 2 uses
  store i32 %i.bpa, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split243.i.i

bb.dj:                                            ; preds = %.lr.ph179.i.i
  br i1 %.not127.i.i, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bpd = load i32, ptr %i.aet, align 4, !tbaa !9
  %.not128.peel.i.i = icmp eq i32 %i.bpd, 0
  br i1 %.not128.peel.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bpe = lshr i32 %i.boh, 3
  %i.bpf = zext nneg i32 %i.bpe to i64
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bpf
  %i.bph = load i8, ptr %i.bpg, align 1, !tbaa !14
  %i.bpi = icmp slt i32 %i.boh, %i.bhu
  %i.bpj = zext i1 %i.bpi to i32
  %spec.select.i152.peel.i.i = add i32 %i.boh, %i.bpj
  %i.bpk = zext i8 %i.bph to i32
  %i.bpl = and i32 %i.boh, 7
  %i.bpm = shl nuw nsw i32 %i.bpk, %i.bpl
  %i.bpn = lshr i32 %i.bpm, 7
  store i32 %spec.select.i152.peel.i.i, ptr %i.c, align 8, !tbaa !19
  %i.bpo = and i32 %i.bpn, 1
  br label %.sink.split243.i.i

.sink.split243.i.i:                               ; preds = %bb.dl, %bb.di
  %.sink244.i.i = phi i32 [ %i.bpo, %bb.dl ], [ %i.bpc, %bb.di ]
  %.1.peel.ph.i.i = phi i32 [ 0, %bb.dl ], [ %i.bpc, %bb.di ]
  store i32 %.sink244.i.i, ptr %i.boj, align 4, !tbaa !9
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split243.i.i, %bb.dk, %bb.dj
  %.1.peel.i.i = phi i32 [ 0, %bb.dk ], [ 0, %bb.dj ], [ %.1.peel.ph.i.i, %.sink.split243.i.i ]
  %exitcond197.peel.not.i.i = icmp eq i32 %.0.i150231.i.i, 1
  br i1 %exitcond197.peel.not.i.i, label %.loopexit.i108, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.dm, %bb.dr
  %indvars.iv193.i.i = phi i64 [ %indvars.iv.next194.i.i, %bb.dr ], [ 1, %bb.dm ] ; 4 uses
  %.0107178.i.i = phi i32 [ %.1.i.i, %bb.dr ], [ %.1.peel.i.i, %bb.dm ] ; 4 uses
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %indvars.iv193.i.i
  %i.bpq = load i32, ptr %i.bpp, align 4, !tbaa !9
  %.not126.i.i.a = icmp eq i32 %i.bpq, 0
  br i1 %.not126.i.i.a, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.peel.next.i.i
  %.val163.i.i = load ptr, ptr %7, align 8, !tbaa !17
  %i.bpr = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.bps = lshr i32 %i.bpr, 3
  %i.bpt = zext nneg i32 %i.bps to i64
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bpt
  %i.bpv = load i32, ptr %i.bpu, align 1, !tbaa !14
  %i.bpw = tail call i32 @llvm.bswap.i32(i32 %i.bpv)
  %i.bpx = and i32 %i.bpr, 7
  %i.bpy = shl i32 %i.bpw, %i.bpx
  %.val165.i.i = load i32, ptr %ct_vlc_tabs.135.i.i, align 16, !tbaa !25
  %i.bpz = sub nsw i32 32, %.val165.i.i
  %i.bqa = lshr i32 %i.bpy, %i.bpz
  %i.bqb = zext i32 %i.bqa to i64
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %.val163.i.i, i64 %i.bqb ; 2 uses
  %i.bqd = load i16, ptr %i.bqc, align 2, !tbaa !14
  %i.bqe = zext i16 %i.bqd to i32
  %i.bqf = add nsw i32 %.0107178.i.i, %i.bqe
  %i.bqg = and i32 %i.bqf, %i.bhf                 ; 2 uses
  %i.bqh = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqc, i64 2
  %i.bqj = load i16, ptr %i.bqi, align 2, !tbaa !14
  %i.bqk = sext i16 %i.bqj to i32
  %i.bql = add i32 %i.bpr, %i.bqk
  %i.bqm = tail call i32 @llvm.umin.i32(i32 %i.bqh, i32 %i.bql)
  store i32 %i.bqm, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split245.i.i

bb.do:                                            ; preds = %.peel.next.i.i
  br i1 %.not127.i.i, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %indvars.iv193.i.i
  %i.bqo = load i32, ptr %i.bqn, align 4, !tbaa !9
  %.not128.i.i = icmp eq i32 %i.bqo, 0
  br i1 %.not128.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bqp = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.bqq = lshr i32 %i.bqp, 3
  %i.bqr = zext nneg i32 %i.bqq to i64
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bqr
  %i.bqt = load i8, ptr %i.bqs, align 1, !tbaa !14
  %i.bqu = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bqv = icmp slt i32 %i.bqp, %i.bqu
  %i.bqw = zext i1 %i.bqv to i32
  %spec.select.i152.i.i = add i32 %i.bqp, %i.bqw
  %i.bqx = zext i8 %i.bqt to i32
  %i.bqy = and i32 %i.bqp, 7
  %i.bqz = shl nuw nsw i32 %i.bqx, %i.bqy
  %i.bra = lshr i32 %i.bqz, 7
  store i32 %spec.select.i152.i.i, ptr %i.c, align 8, !tbaa !19
  %i.brb = and i32 %i.bra, 1
  br label %.sink.split245.i.i

.sink.split245.i.i:                               ; preds = %bb.dq, %bb.dn
  %.sink246.i.i = phi i32 [ %i.bqg, %bb.dn ], [ %i.brb, %bb.dq ]
  %.1.ph.i.i = phi i32 [ %i.bqg, %bb.dn ], [ %.0107178.i.i, %bb.dq ]
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %indvars.iv193.i.i
  store i32 %.sink246.i.i, ptr %i.brc, align 4, !tbaa !9
  br label %bb.dr

bb.dr:                                            ; preds = %.sink.split245.i.i, %bb.dp, %bb.do
  %.1.i.i = phi i32 [ %.0107178.i.i, %bb.dp ], [ %.0107178.i.i, %bb.do ], [ %.1.ph.i.i, %.sink.split245.i.i ]
  %indvars.iv.next194.i.i = add nuw nsw i64 %indvars.iv193.i.i, 1 ; 2 uses
  %exitcond197.not.i.i = icmp eq i64 %indvars.iv.next194.i.i, %wide.trip.count196.i.i
  br i1 %exitcond197.not.i.i, label %.loopexit.i108, label %.peel.next.i.i, !llvm.loop !76

bb.ds:                                            ; preds = %bb.cp
  %.not119.i.i = icmp eq i64 %indvars.iv.i101, 0
  br i1 %.not119.i.i, label %.loopexit.i108, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.brd = lshr i32 %i.bim, 3
  %i.bre = zext nneg i32 %i.brd to i64
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bre
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !14
  %i.brh = icmp slt i32 %i.bim, %i.bhu
  %i.bri = zext i1 %i.brh to i32
  %spec.select.i.i153.i.i = add i32 %i.bim, %i.bri ; 4 uses
  %i.brj = zext i8 %i.brg to i32
  %i.brk = and i32 %i.bim, 7
  store i32 %spec.select.i.i153.i.i, ptr %i.c, align 8, !tbaa !19
  %i.brl = lshr exact i32 128, %i.brk
  %i.brm = and i32 %i.brl, %i.brj
  %.not.i154.i.i = icmp eq i32 %i.brm, 0
  br i1 %.not.i154.i.i, label %get_num_ct_values.exit156.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.brn = lshr i32 %spec.select.i.i153.i.i, 3
  %i.bro = zext nneg i32 %i.brn to i64
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bro
  %i.brq = load i32, ptr %i.brp, align 1, !tbaa !14
  %i.brr = tail call i32 @llvm.bswap.i32(i32 %i.brq)
  %i.brs = and i32 %spec.select.i.i153.i.i, 7
  %i.brt = shl i32 %i.brr, %i.brs
  %i.bru = lshr i32 %i.brt, 27                    ; 3 uses
  %i.brv = add i32 %spec.select.i.i153.i.i, 5
  %i.brw = tail call i32 @llvm.umin.i32(i32 %i.bhu, i32 %i.brv)
  store i32 %i.brw, ptr %i.c, align 8, !tbaa !19
  %i.brx = icmp sgt i32 %i.bru, %.pr472
  br i1 %i.brx, label %.loopexit.sink.split.i.i, label %.preheader174.i.i

get_num_ct_values.exit156.i.i:                    ; preds = %bb.dt
  br i1 %i.bhk, label %decode_scale_factors.exit, label %.preheader174.i.i

.preheader174.i.i:                                ; preds = %get_num_ct_values.exit156.i.i, %bb.du
  %.0.i155234.i.i = phi i32 [ %.pr472, %get_num_ct_values.exit156.i.i ], [ %i.bru, %bb.du ] ; 2 uses
  %.not184.i.i = icmp eq i32 %.0.i155234.i.i, 0
  br i1 %.not184.i.i, label %.loopexit.i108, label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %.preheader174.i.i
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bhn, i64 20
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bhn, i64 276
  %wide.trip.count.i.i104 = zext nneg i32 %.0.i155234.i.i to i64
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dz, %.lr.ph.i.i103
  %indvars.iv.i.i105 = phi i64 [ 0, %.lr.ph.i.i103 ], [ %indvars.iv.next.i.i106, %bb.dz ] ; 5 uses
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.bry, i64 %indvars.iv.i.i105
  %i.bsb = load i32, ptr %i.bsa, align 4, !tbaa !9
  %.not121.i.i = icmp eq i32 %i.bsb, 0
  br i1 %.not121.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %i.bhh, i64 %indvars.iv.i.i105
  %i.bsd = load i32, ptr %i.bsc, align 4, !tbaa !9
  %.val123.i.i = load ptr, ptr %6, align 8, !tbaa !17
  %.val124.i.i = load i32, ptr %5, align 8, !tbaa !25
  %i.bse = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.bsf = lshr i32 %i.bse, 3
  %i.bsg = zext nneg i32 %i.bsf to i64
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bsg
  %i.bsi = load i32, ptr %i.bsh, align 1, !tbaa !14
  %i.bsj = tail call i32 @llvm.bswap.i32(i32 %i.bsi)
  %i.bsk = and i32 %i.bse, 7
  %i.bsl = shl i32 %i.bsj, %i.bsk
  %i.bsm = sub nsw i32 32, %.val124.i.i
  %i.bsn = lshr i32 %i.bsl, %i.bsm
  %i.bso = zext i32 %i.bsn to i64
  %i.bsp = getelementptr inbounds nuw [4 x i8], ptr %.val123.i.i, i64 %i.bso ; 2 uses
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsp, i64 2
  %i.bsr = load i16, ptr %i.bsq, align 2, !tbaa !14
  %i.bss = sext i16 %i.bsr to i32
  %i.bst = load i16, ptr %i.bsp, align 2, !tbaa !14
  %i.bsu = zext i16 %i.bst to i32
  %i.bsv = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bsw = add i32 %i.bse, %i.bss
  %i.bsx = tail call i32 @llvm.umin.i32(i32 %i.bsv, i32 %i.bsw)
  store i32 %i.bsx, ptr %i.c, align 8, !tbaa !19
  %i.bsy = add i32 %i.bsd, %i.bsu
  %i.bsz = and i32 %i.bsy, %i.bhf
  br label %.sink.split248.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %indvars.iv.i.i105
  %i.btb = load i32, ptr %i.bta, align 4, !tbaa !9
  %.not122.i.i = icmp eq i32 %i.btb, 0
  br i1 %.not122.i.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.btc = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.btd = lshr i32 %i.btc, 3
  %i.bte = zext nneg i32 %i.btd to i64
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bte
  %i.btg = load i8, ptr %i.btf, align 1, !tbaa !14
  %i.bth = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bti = icmp slt i32 %i.btc, %i.bth
  %i.btj = zext i1 %i.bti to i32
  %spec.select.i157.i.i = add i32 %i.btc, %i.btj
  %i.btk = zext i8 %i.btg to i32
  %i.btl = and i32 %i.btc, 7
  %i.btm = shl nuw nsw i32 %i.btk, %i.btl
  %i.btn = lshr i32 %i.btm, 7
  store i32 %spec.select.i157.i.i, ptr %i.c, align 8, !tbaa !19
  %i.bto = and i32 %i.btn, 1
  br label %.sink.split248.i.i

.sink.split248.i.i:                               ; preds = %bb.dy, %bb.dw
  %.sink249.i.i = phi i32 [ %i.bsz, %bb.dw ], [ %i.bto, %bb.dy ]
  %i.btp = getelementptr inbounds nuw [4 x i8], ptr %i.brz, i64 %indvars.iv.i.i105
  store i32 %.sink249.i.i, ptr %i.btp, align 4, !tbaa !9
  br label %bb.dz

bb.dz:                                            ; preds = %.sink.split248.i.i, %bb.dx
  %indvars.iv.next.i.i106 = add nuw nsw i64 %indvars.iv.i.i105, 1 ; 2 uses
  %exitcond.not.i.i107 = icmp eq i64 %indvars.iv.next.i.i106, %wide.trip.count.i.i104
  br i1 %exitcond.not.i.i107, label %.loopexit.i108, label %bb.dv, !llvm.loop !77

.loopexit.sink.split.i.i:                         ; preds = %bb.du, %bb.dh, %bb.cz, %bb.cr
  %.sink251.i.i = phi i32 [ %i.bod, %bb.dh ], [ %i.blu, %bb.cz ], [ %i.bje, %bb.cr ], [ %i.bru, %bb.du ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %.sink251.i.i) #9
  br label %decode_scale_factors.exit

.loopexit.i108:                                   ; preds = %bb.dz, %bb.dr, %bb.df, %bb.cx, %bb.ct, %.preheader174.i.i, %bb.ds, %bb.dm, %.preheader172.i.i, %.preheader170.i.i, %.preheader.i.i112
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i100
  br i1 %exitcond.not.i110, label %decode_code_table_indexes.exit, label %bb.cp, !llvm.loop !78

decode_code_table_indexes.exit:                   ; preds = %.loopexit.i108, %.loopexit255, %.thread214
  %i.btq = phi ptr [ %i.aer, %.loopexit255 ], [ %i.aeo, %.thread214 ], [ %i.aer, %.loopexit.i108 ] ; 3 uses
  %i.btr = phi ptr [ %i.aet, %.loopexit255 ], [ %i.aep, %.thread214 ], [ %i.aet, %.loopexit.i108 ]
  %i.bts = phi i32 [ 0, %.loopexit255 ], [ 0, %.thread214 ], [ %.pr472, %.loopexit.i108 ] ; 3 uses
  %.ph217 = phi ptr [ %i.afa, %.loopexit255 ], [ %i.aeq, %.thread214 ], [ %i.afa, %.loopexit.i108 ] ; 2 uses
  br i1 %i.ah, label %.lr.ph23.i, label %decode_window_shape.exit

.lr.ph23.i:                                       ; preds = %decode_code_table_indexes.exit
  %i.btt = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.btu = icmp sgt i32 %i.bts, 0
  %i.btv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.btw = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.btx = icmp sgt i32 %i.bts, 2
  %wide.trip.count76.i = zext nneg i32 %2 to i64  ; 4 uses
  br i1 %i.btu, label %.lr.ph.us.preheader.i, label %.lr.ph23.split.split.i.preheader

.lr.ph23.split.split.i.preheader:                 ; preds = %.lr.ph23.i
  %xtraiter704 = and i64 %wide.trip.count76.i, 3  ; 3 uses
  %i.bty = icmp ult i32 %2, 4
  br i1 %i.bty, label %.lr.ph23.split.split.i.epil.preheader, label %.lr.ph23.split.split.i.preheader.new

.lr.ph23.split.split.i.preheader.new:             ; preds = %.lr.ph23.split.split.i.preheader
  %unroll_iter708 = and i64 %wide.trip.count76.i, 2147483644
  br label %.lr.ph23.split.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph23.i
  %.pre.pre.i = load i16, ptr @ff_atrac3p_qu_to_spec_pos, align 16, !tbaa !132
  %wide.trip.count66.i = zext nneg i32 %i.bts to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph.us.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next74.i, %.loopexit.us.i ] ; 3 uses
  %i.btz = getelementptr inbounds nuw [7800 x i8], ptr %i.btt, i64 %indvars.iv73.i ; 5 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 404 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.bua, i8 0, i64 4096, i1 false)
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btz, i64 4500 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.bub, i8 15, i64 5, i1 false)
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btz, i64 20
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btz, i64 276
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btz, i64 16
  %.not57.us.i = icmp eq i64 %indvars.iv73.i, 0
  br label %bb.ea

bb.ea:                                            ; preds = %decode_qu_spectra.exit.us.i, %.lr.ph.us.i
  %i.buf = phi i16 [ %.pre.pre.i, %.lr.ph.us.i ], [ %i.buh, %decode_qu_spectra.exit.us.i ] ; 3 uses
  %indvars.iv63.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next64.i, %decode_qu_spectra.exit.us.i ] ; 4 uses
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 3 uses
  %i.bug = getelementptr inbounds nuw [2 x i8], ptr @ff_atrac3p_qu_to_spec_pos, i64 %indvars.iv.next64.i
  %i.buh = load i16, ptr %i.bug, align 2, !tbaa !132 ; 2 uses
  %i.bui = zext i16 %i.buh to i32
  %i.buj = zext i16 %i.buf to i32
  %i.buk = sub nsw i32 %i.bui, %i.buj             ; 4 uses
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %i.buc, i64 %indvars.iv63.i ; 2 uses
  %i.bum = load i32, ptr %i.bul, align 4, !tbaa !9 ; 3 uses
  %i.bun = getelementptr inbounds nuw [4 x i8], ptr %i.bud, i64 %indvars.iv63.i
  %i.buo = load i32, ptr %i.bun, align 4, !tbaa !9 ; 3 uses
  %.not.us.i119 = icmp eq i32 %i.bum, 0
  br i1 %.not.us.i119, label %bb.el, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bup = load i32, ptr %i.btv, align 8, !tbaa !129
  %.not58.us.i = icmp eq i32 %i.bup, 0
  %.pre78.i = load i32, ptr %i.bue, align 8, !tbaa !130 ; 2 uses
  br i1 %.not58.us.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.buq = sext i32 %.pre78.i to i64
  %i.bur = getelementptr inbounds [28 x i8], ptr @atrac3p_ct_restricted_to_full, i64 %i.buq
  %i.bus = sext i32 %i.bum to i64
  %i.but = getelementptr [4 x i8], ptr %i.bur, i64 %i.bus
  %i.buu = getelementptr i8, ptr %i.but, i64 -4
  %i.buv = sext i32 %i.buo to i64
  %i.buw = getelementptr inbounds i8, ptr %i.buu, i64 %i.buv
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !14
  %i.buy = zext i8 %i.bux to i32
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.0.us.i120 = phi i32 [ %i.buo, %bb.eb ], [ %i.buy, %bb.ec ]
  %i.buz = shl nsw i32 %.pre78.i, 3
  %i.bva = add nsw i32 %.0.us.i120, %i.buz
  %i.bvb = mul nsw i32 %i.bva, 7
  %i.bvc = add i32 %i.bum, -1
  %i.bvd = add i32 %i.bvc, %i.bvb
  %i.bve = sext i32 %i.bvd to i64                 ; 2 uses
  %i.bvf = getelementptr inbounds [4 x i8], ptr @atrac3p_spectra_tabs, i64 %i.bve ; 4 uses
  %i.bvg = getelementptr inbounds [24 x i8], ptr @spec_vlc_tabs, i64 %i.bve ; 4 uses
  %i.bvh = zext i16 %i.buf to i64
  %i.bvi = getelementptr inbounds nuw [2 x i8], ptr %i.bua, i64 %i.bvh ; 4 uses
  %i.bvj = load i8, ptr %i.bvf, align 4, !tbaa !134
  %.fr80.i.us.i = freeze i8 %i.bvj                ; 5 uses
  %i.bvk = zext i8 %.fr80.i.us.i to i32           ; 5 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvf, i64 1
  %i.bvm = load i8, ptr %i.bvl, align 1, !tbaa !135
  %.fr.i.us.i = freeze i8 %i.bvm                  ; 4 uses
  %i.bvn = zext i8 %.fr.i.us.i to i32             ; 4 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvf, i64 2
  %i.bvp = load i8, ptr %i.bvo, align 2, !tbaa !136
  %i.bvq = zext i8 %i.bvp to i32                  ; 5 uses
  %i.bvr = icmp sgt i32 %i.buk, 0
  br i1 %i.bvr, label %.lr.ph.i.us.i, label %decode_qu_spectra.exit.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.ed
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvf, i64 3
  %i.bvt = load i8, ptr %i.bvs, align 1, !tbaa !137
  %i.bvu = icmp eq i8 %.fr80.i.us.i, 1            ; 3 uses
  %i.bvv = mul nuw nsw i32 %i.bvn, %i.bvk         ; 2 uses
  %.not81.i.us.i = icmp eq i8 %.fr80.i.us.i, 0
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvg, i64 8 ; 3 uses
  %notmask.i.i.us.i = shl nsw i32 -1, %i.bvq
  %i.bvx = xor i32 %notmask.i.i.us.i, -1          ; 4 uses
  %.fr.i = freeze i8 %i.bvt
  %.not39.i.us.i = icmp eq i8 %.fr.i, 0
  %i.bvy = sub nsw i32 32, %i.bvq                 ; 6 uses
  br i1 %.not81.i.us.i, label %.loopexit.i.i124, label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.i.us.i
  %.not.i.us.i = icmp eq i8 %.fr.i.us.i, 0
  %.pre96.pre.i.us.i = load ptr, ptr %0, align 8, !tbaa !21 ; 9 uses
  %.pre97.pre.i.us.i = load i32, ptr %i.e, align 8, !tbaa !20 ; 9 uses
  %.promoted.us.pre.pre.i.us.i = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  br i1 %.not.i.us.i, label %.lr.ph.split.us.split.i.i.preheader, label %.lr.ph.split.us.split.us.i.preheader.us.i

.lr.ph.split.us.split.i.i.preheader:              ; preds = %.lr.ph.split.us.i.us.i
  %xtraiter718 = and i32 %i.bvk, 1
  %i.bvz = icmp eq i8 %.fr80.i.us.i, 1
  %unroll_iter723 = and i32 %i.bvk, 254
  %lcmp.mod720.not = icmp eq i32 %xtraiter718, 0
  %lcmp.mod722 = trunc i8 %.fr80.i.us.i to i1
  br label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.preheader.us.i:        ; preds = %.lr.ph.split.us.i.us.i
  br i1 %.not39.i.us.i, label %.lr.ph.split.us.split.us.i.us.us.i, label %.lr.ph.split.us.split.us.i.us26.i.preheader

.lr.ph.split.us.split.us.i.us26.i.preheader:      ; preds = %.lr.ph.split.us.split.us.i.preheader.us.i
  %xtraiter710 = and i32 %i.bvn, 1
  %i.bwa = icmp eq i8 %.fr.i.us.i, 1
  %unroll_iter715 = and i32 %i.bvn, 254
  %lcmp.mod712.not = icmp eq i32 %xtraiter710, 0
  %lcmp.mod714 = trunc i8 %.fr.i.us.i to i1
  br label %.lr.ph.split.us.split.us.i.us26.i

end_hunk_0
begin_hunk_1_@decode_gainc_data:bb.a
  store i32 %i.wg, ptr %i.wh, align 4, !tbaa !9
  %i.wi = icmp sgt i32 %i.wg, 15
  br i1 %i.wi, label %decode_gainc_npoints.exit, label %bb.ax

._crit_edge.split.i:                              ; preds = %bb.ax, %.preheader155.i
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 2 uses
  %exitcond197.not.i = icmp eq i64 %indvars.iv.next194.i, %wide.trip.count204.i
  br i1 %exitcond197.not.i, label %.loopexit87, label %.preheader155.i, !llvm.loop !201

.loopexit87:                                      ; preds = %gainc_level_mode3s.exit143.i, %._crit_edge.split.i, %._crit_edge.split.us.us.i, %gainc_level_mode1m.exit123.i, %._crit_edge.i, %._crit_edge171.i, %gainc_level_mode1m.exit.i, %._crit_edge177.i, %gainc_level_mode1m.exit136.i
  %i.wj = load i32, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.wk = load i32, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.wl = lshr i32 %i.wj, 3
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.wm
  %i.wo = load i32, ptr %i.wn, align 1, !tbaa !14
  %i.wp = tail call i32 @llvm.bswap.i32(i32 %i.wo)
  %i.wq = and i32 %i.wj, 7
  %i.wr = shl i32 %i.wp, %i.wq
  %i.ws = lshr i32 %i.wr, 30
  %i.wt = add i32 %i.wj, 2
  %i.wu = tail call i32 @llvm.umin.i32(i32 %i.wk, i32 %i.wt) ; 7 uses
  store i32 %i.wu, ptr %i.c, align 8, !tbaa !19
  switch i32 %i.ws, label %default.unreachable [
    i32 0, label %.preheader257.i
    i32 1, label %bb.ba
    i32 2, label %bb.bu
    i32 3, label %bb.ck
  ]

.preheader257.i:                                  ; preds = %.loopexit87
  %wide.trip.count385.i = zext nneg i32 %i.af to i64 ; 2 uses
  br label %.preheader.i72

.preheader.i72:                                   ; preds = %._crit_edge309.i, %.preheader257.i
  %indvars.iv382.i = phi i64 [ 0, %.preheader257.i ], [ %indvars.iv.next383.i, %._crit_edge309.i ] ; 2 uses
  %i.wv = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv382.i ; 3 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !227 ; 2 uses
  %i.wx = icmp sgt i32 %i.ww, 0
  br i1 %i.wx, label %gainc_loc_mode0.exit.peel.i, label %._crit_edge309.i

gainc_loc_mode0.exit.peel.i:                      ; preds = %.preheader.i72
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 32 ; 2 uses
  %i.wz = load i32, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.xa = load i32, ptr %i.d, align 8, !tbaa !20
  %i.xb = lshr i32 %i.wz, 3
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 1, !tbaa !14
  %i.xf = tail call i32 @llvm.bswap.i32(i32 %i.xe)
  %i.xg = and i32 %i.wz, 7
  %i.xh = shl i32 %i.xf, %i.xg
  %i.xi = lshr i32 %i.xh, 27
  %i.xj = add i32 %i.wz, 5
  %i.xk = tail call i32 @llvm.umin.i32(i32 %i.xa, i32 %i.xj)
  store i32 %i.xk, ptr %i.c, align 8, !tbaa !19
  store i32 %i.xi, ptr %i.wy, align 4, !tbaa !9
  %.not435.i = icmp eq i32 %i.ww, 1
  br i1 %.not435.i, label %._crit_edge309.i, label %.peel.next380.i

.peel.next380.i:                                  ; preds = %gainc_loc_mode0.exit.peel.i, %gainc_loc_mode0.exit.i
  %indvars.iv376.i = phi i64 [ %indvars.iv.next377.i, %gainc_loc_mode0.exit.i ], [ 1, %gainc_loc_mode0.exit.peel.i ] ; 2 uses
  %i.xl = getelementptr [4 x i8], ptr %i.wy, i64 %indvars.iv376.i ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xl, i64 -4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !9  ; 4 uses
  %i.xo = icmp slt i32 %i.xn, 15
  br i1 %i.xo, label %._crit_edge.i.i, label %bb.ay

._crit_edge.i.i:                                  ; preds = %.peel.next380.i
  %i.xp = load i32, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.xq = load i32, ptr %i.d, align 8, !tbaa !20
  %i.xr = lshr i32 %i.xp, 3
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 1, !tbaa !14
  %i.xv = tail call i32 @llvm.bswap.i32(i32 %i.xu)
  %i.xw = and i32 %i.xp, 7
  %i.xx = shl i32 %i.xv, %i.xw
  %i.xy = lshr i32 %i.xx, 27
  %i.xz = add i32 %i.xp, 5
  %i.ya = tail call i32 @llvm.umin.i32(i32 %i.xq, i32 %i.xz)
  store i32 %i.ya, ptr %i.c, align 8, !tbaa !19
  br label %gainc_loc_mode0.exit.i

bb.ay:                                            ; preds = %.peel.next380.i
  %i.yb = icmp samesign ugt i32 %i.xn, 29
  br i1 %i.yb, label %gainc_loc_mode0.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.yc = sub nuw nsw i32 30, %i.xn
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !14
  %i.yg = zext i8 %i.yf to i32                    ; 2 uses
  %i.yh = add nuw nsw i32 %i.yg, 1
  %i.yi = load i32, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.yj = load i32, ptr %i.d, align 8, !tbaa !20
  %i.yk = lshr i32 %i.yi, 3
  %i.yl = zext nneg i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.yl
  %i.yn = load i32, ptr %i.ym, align 1, !tbaa !14
  %i.yo = tail call i32 @llvm.bswap.i32(i32 %i.yn)
  %i.yp = and i32 %i.yi, 7
  %i.yq = shl i32 %i.yo, %i.yp
  %i.yr = sub nsw i32 31, %i.yg
  %i.ys = lshr i32 %i.yq, %i.yr
  %i.yt = add i32 %i.yh, %i.yi
  %i.yu = tail call i32 @llvm.umin.i32(i32 %i.yj, i32 %i.yt)
  store i32 %i.yu, ptr %i.c, align 8, !tbaa !19
  %i.yv = add nuw nsw i32 %i.xn, 1
  %i.yw = add i32 %i.yv, %i.ys
  br label %gainc_loc_mode0.exit.i

gainc_loc_mode0.exit.i:                           ; preds = %bb.ay, %bb.az, %._crit_edge.i.i
  %.sink237 = phi i32 [ %i.yw, %bb.az ], [ %i.xy, %._crit_edge.i.i ], [ 31, %bb.ay ]
  store i32 %.sink237, ptr %i.xl, align 4, !tbaa !9
  %indvars.iv.next377.i = add nuw nsw i64 %indvars.iv376.i, 1 ; 2 uses
  %i.yx = load i32, ptr %i.wv, align 4, !tbaa !227
  %i.yy = sext i32 %i.yx to i64
  %i.yz = icmp slt i64 %indvars.iv.next377.i, %i.yy
  br i1 %i.yz, label %.peel.next380.i, label %._crit_edge309.i, !llvm.loop !203

._crit_edge309.i:                                 ; preds = %gainc_loc_mode0.exit.i, %gainc_loc_mode0.exit.peel.i, %.preheader.i72
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %exitcond386.not.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count385.i
  br i1 %exitcond386.not.i, label %.loopexit258.i, label %.preheader.i72, !llvm.loop !204

bb.ba:                                            ; preds = %.loopexit87
  %.not223.i = icmp eq i64 %indvars.iv168, 0
  br i1 %.not223.i, label %.preheader259.i, label %.preheader262.i

.preheader262.i:                                  ; preds = %bb.ba
  %i.za = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 248), align 8
  %wide.trip.count369.i = zext nneg i32 %i.af to i64 ; 2 uses
  br label %bb.bb

.preheader259.i:                                  ; preds = %bb.ba
  %wide.trip.count374.i = zext nneg i32 %i.af to i64 ; 2 uses
  br label %bb.br

bb.bb:                                            ; preds = %.loopexit261.i, %.preheader262.i
  %indvars.iv366.i = phi i64 [ 0, %.preheader262.i ], [ %indvars.iv.next367.i, %.loopexit261.i ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv366.i ; 5 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !227 ; 2 uses
  %i.zd = icmp slt i32 %i.zc, 1
  br i1 %i.zd, label %.loopexit261.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ze = load ptr, ptr %i.e, align 8, !tbaa !224
  %i.zf = getelementptr inbounds nuw [60 x i8], ptr %i.ze, i64 %indvars.iv366.i ; 4 uses
  %i.zg = load i32, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 240), align 16, !tbaa !25
  %i.zh = load i32, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.zi = lshr i32 %i.zh, 3
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.zj
  %i.zl = load i32, ptr %i.zk, align 1, !tbaa !14
  %i.zm = tail call i32 @llvm.bswap.i32(i32 %i.zl)
  %i.zn = and i32 %i.zh, 7
  %i.zo = shl i32 %i.zm, %i.zn
  %i.zp = sub nsw i32 32, %i.zg
  %i.zq = lshr i32 %i.zo, %i.zp
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zr ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 2
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !14
  %i.zv = sext i16 %i.zu to i32
  %i.zw = load i16, ptr %i.zs, align 2, !tbaa !14
  %i.zx = zext i16 %i.zw to i32
  %i.zy = load i32, ptr %i.d, align 8, !tbaa !20
  %i.zz = add i32 %i.zh, %i.zv
  %i.aaa = tail call i32 @llvm.umin.i32(i32 %i.zy, i32 %i.zz)
  store i32 %i.aaa, ptr %i.c, align 8, !tbaa !19
  %i.aab = load i32, ptr %i.zf, align 4, !tbaa !227
  %i.aac = icmp sgt i32 %i.aab, 0
  br i1 %i.aac, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !9
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.aaf = phi i32 [ %i.aae, %bb.bd ], [ 0, %bb.bc ]
  %i.aag = add i32 %i.aaf, %i.zx
  %i.aah = and i32 %i.aag, 31
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zb, i64 32 ; 8 uses
  store i32 %i.aah, ptr %i.aai, align 4, !tbaa !9
  %.not434.i = icmp eq i32 %i.zc, 1
  br i1 %.not434.i, label %.loopexit261.i, label %.lr.ph301.i

.lr.ph301.i:                                      ; preds = %bb.be
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zf, i64 32 ; 2 uses
  %i.aal = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 224), align 16
  br label %bb.bf

bb.bf:                                            ; preds = %gainc_loc_mode0.exit234.i, %.lr.ph301.i
  %indvars.iv363.i = phi i64 [ 1, %.lr.ph301.i ], [ %indvars.iv.next364.i, %gainc_loc_mode0.exit234.i ] ; 12 uses
  %i.aam = load i32, ptr %i.zf, align 4, !tbaa !227
  %i.aan = sext i32 %i.aam to i64
  %.not224.i = icmp slt i64 %indvars.iv363.i, %i.aan ; 3 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv363.i
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !9
  %i.aaq = add nsw i64 %indvars.iv363.i, -1       ; 2 uses
  %i.aar = getelementptr [4 x i8], ptr %i.zb, i64 %indvars.iv363.i
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !9
  %i.aat = icmp sgt i32 %i.aap, %i.aas
  br i1 %i.aat, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not224.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aau = load i32, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 216), align 8, !tbaa !25
  %i.aav = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.aaw = lshr i32 %i.aav, 3
  %i.aax = zext nneg i32 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aax
  %i.aaz = load i32, ptr %i.aay, align 1, !tbaa !14
  %i.aba = tail call i32 @llvm.bswap.i32(i32 %i.aaz)
  %i.abb = and i32 %i.aav, 7
  %i.abc = shl i32 %i.aba, %i.abb
  %i.abd = sub nsw i32 32, %i.aau
  %i.abe = lshr i32 %i.abc, %i.abd
  %i.abf = zext i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %i.abf ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 2
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !14
  %i.abj = sext i16 %i.abi to i32
  %i.abk = load i16, ptr %i.abg, align 2, !tbaa !14
  %i.abl = sext i16 %i.abk to i32
  %i.abm = load i32, ptr %i.d, align 8, !tbaa !20
  %i.abn = add i32 %i.aav, %i.abj
  %i.abo = tail call i32 @llvm.umin.i32(i32 %i.abm, i32 %i.abn)
  store i32 %i.abo, ptr %i.c, align 8, !tbaa !19
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aaq
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !9
  %i.abr = add nsw i32 %i.abq, %i.abl
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv363.i
  store i32 %i.abr, ptr %i.abs, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit234.i

bb.bi:                                            ; preds = %bb.bg
  %i.abt = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.abu = lshr i32 %i.abt, 3
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !14
  %i.aby = load i32, ptr %i.d, align 8, !tbaa !20 ; 3 uses
  %i.abz = icmp slt i32 %i.abt, %i.aby
  %i.aca = zext i1 %i.abz to i32
  %spec.select.i.i66 = add i32 %i.abt, %i.aca     ; 7 uses
  %i.acb = zext i8 %i.abx to i32
  %i.acc = and i32 %i.abt, 7
  store i32 %spec.select.i.i66, ptr %i.c, align 8, !tbaa !19
  %i.acd = lshr exact i32 128, %i.acc
  %i.ace = and i32 %i.acd, %i.acb
  %.not228.i = icmp eq i32 %i.ace, 0
  br i1 %.not228.i, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.acf = getelementptr [4 x i8], ptr %i.aai, i64 %indvars.iv363.i ; 4 uses
  %i.acg = getelementptr i8, ptr %i.acf, i64 -4
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !9 ; 4 uses
  %i.aci = icmp slt i32 %i.ach, 15
  br i1 %i.aci, label %._crit_edge.i232.i, label %bb.bk

._crit_edge.i232.i:                               ; preds = %bb.bj
  %i.acj = lshr i32 %spec.select.i.i66, 3
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ack
  %i.acm = load i32, ptr %i.acl, align 1, !tbaa !14
  %i.acn = tail call i32 @llvm.bswap.i32(i32 %i.acm)
  %i.aco = and i32 %spec.select.i.i66, 7
  %i.acp = shl i32 %i.acn, %i.aco
  %i.acq = lshr i32 %i.acp, 27
  %i.acr = add i32 %spec.select.i.i66, 5
  %i.acs = tail call i32 @llvm.umin.i32(i32 %i.aby, i32 %i.acr)
  store i32 %i.acs, ptr %i.c, align 8, !tbaa !19
  store i32 %i.acq, ptr %i.acf, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit234.i

bb.bk:                                            ; preds = %bb.bj
  %i.act = icmp samesign ugt i32 %i.ach, 29
  br i1 %i.act, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 31, ptr %i.acf, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit234.i

bb.bm:                                            ; preds = %bb.bk
  %i.acu = sub nuw nsw i32 30, %i.ach
  %i.acv = zext nneg i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.acv
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !14
  %i.acy = zext i8 %i.acx to i32                  ; 2 uses
  %i.acz = lshr i32 %spec.select.i.i66, 3
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 1, !tbaa !14
  %i.add = tail call i32 @llvm.bswap.i32(i32 %i.adc)
  %i.ade = and i32 %spec.select.i.i66, 7
  %i.adf = shl i32 %i.add, %i.ade
  %i.adg = sub nsw i32 31, %i.acy
  %i.adh = lshr i32 %i.adf, %i.adg
  %i.adi = add i32 %spec.select.i.i66, 1
  %i.adj = add i32 %i.adi, %i.acy
  %i.adk = tail call i32 @llvm.umin.i32(i32 %i.aby, i32 %i.adj)
  store i32 %i.adk, ptr %i.c, align 8, !tbaa !19
  %i.adl = add nuw nsw i32 %i.ach, 1
  %i.adm = add i32 %i.adl, %i.adh
  store i32 %i.adm, ptr %i.acf, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit234.i

bb.bn:                                            ; preds = %bb.bi
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv363.i
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !9
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv363.i
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit234.i

bb.bo:                                            ; preds = %bb.bf
  %i.adq = select i1 %.not224.i, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 240), ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 168) ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = load i32, ptr %i.adq, align 8, !tbaa !25
  %i.adr = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.ads = lshr i32 %i.adr, 3
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 1, !tbaa !14
  %i.adw = tail call i32 @llvm.bswap.i32(i32 %i.adv)
  %i.adx = and i32 %i.adr, 7
  %i.ady = shl i32 %i.adw, %i.adx
  %i.adz = sub nsw i32 32, %6
  %i.aea = lshr i32 %i.ady, %i.adz
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aeb ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 2
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !14
  %i.aef = sext i16 %i.aee to i32
  %i.aeg = load i16, ptr %i.aec, align 2, !tbaa !14
  %i.aeh = sext i16 %i.aeg to i32                 ; 2 uses
  %i.aei = load i32, ptr %i.d, align 8, !tbaa !20
  %i.aej = add i32 %i.adr, %i.aef
  %i.aek = tail call i32 @llvm.umin.i32(i32 %i.aei, i32 %i.aej)
  store i32 %i.aek, ptr %i.c, align 8, !tbaa !19
  br i1 %.not224.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aaq
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !9
  %i.aen = add nsw i32 %i.aem, %i.aeh
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv363.i
  store i32 %i.aen, ptr %i.aeo, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit234.i

bb.bq:                                            ; preds = %bb.bo
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv363.i
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !9
  %i.aer = add nsw i32 %i.aeq, %i.aeh
  %i.aes = and i32 %i.aer, 31
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv363.i
  store i32 %i.aes, ptr %i.aet, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit234.i

gainc_loc_mode0.exit234.i:                        ; preds = %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bl, %._crit_edge.i232.i, %bb.bh
  %indvars.iv.next364.i = add nuw nsw i64 %indvars.iv363.i, 1 ; 2 uses
  %i.aeu = load i32, ptr %i.zb, align 4, !tbaa !227
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = icmp slt i64 %indvars.iv.next364.i, %i.aev
  br i1 %i.aew, label %bb.bf, label %.loopexit261.i, !llvm.loop !205

.loopexit261.i:                                   ; preds = %gainc_loc_mode0.exit234.i, %bb.be, %bb.bb
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond370.not.i = icmp eq i64 %indvars.iv.next367.i, %wide.trip.count369.i
  br i1 %exitcond370.not.i, label %.loopexit258.i, label %bb.bb, !llvm.loop !206

bb.br:                                            ; preds = %gainc_loc_mode1.exit.i, %.preheader259.i
  %indvars.iv371.i = phi i64 [ 0, %.preheader259.i ], [ %indvars.iv.next372.i, %gainc_loc_mode1.exit.i ] ; 2 uses
  %i.aex = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv371.i ; 4 uses
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !227 ; 3 uses
  %i.aez = icmp sgt i32 %i.aey, 0
  br i1 %i.aez, label %bb.bs, label %gainc_loc_mode1.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.afa = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.afb = load i32, ptr %i.d, align 8, !tbaa !20
  %i.afc = lshr i32 %i.afa, 3
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.afd
  %i.aff = load i32, ptr %i.afe, align 1, !tbaa !14
  %i.afg = tail call i32 @llvm.bswap.i32(i32 %i.aff)
  %i.afh = and i32 %i.afa, 7
  %i.afi = shl i32 %i.afg, %i.afh
  %i.afj = lshr i32 %i.afi, 27                    ; 2 uses
  %i.afk = add i32 %i.afa, 5
  %i.afl = tail call i32 @llvm.umin.i32(i32 %i.afb, i32 %i.afk)
  store i32 %i.afl, ptr %i.c, align 8, !tbaa !19
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aex, i64 32 ; 2 uses
  store i32 %i.afj, ptr %i.afm, align 4, !tbaa !9
  %.not2.i.i = icmp eq i32 %i.aey, 1
  br i1 %.not2.i.i, label %gainc_loc_mode1.exit.i, label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %bb.bs
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aex, i64 4
  %wide.trip.count.i.i68 = zext nneg i32 %i.aey to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph.i.i67
  %i.afo = phi i32 [ %i.afj, %.lr.ph.i.i67 ], [ %i.ago, %bb.bt ]
  %indvars.iv.i.i69 = phi i64 [ 1, %.lr.ph.i.i67 ], [ %indvars.iv.next.i.i70, %bb.bt ] ; 4 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv.i.i69
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !9
  %i.afr = getelementptr [4 x i8], ptr %i.aex, i64 %indvars.iv.i.i69
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !9
  %.not.i235.i = icmp sgt i32 %i.afq, %i.afs
  %i.aft = select i1 %.not.i235.i, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 216), ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 168) ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %8 = load ptr, ptr %7, align 16, !tbaa !17
  %9 = load i32, ptr %i.aft, align 8, !tbaa !25
  %i.afu = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.afv = lshr i32 %i.afu, 3
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 1, !tbaa !14
  %i.afz = tail call i32 @llvm.bswap.i32(i32 %i.afy)
  %i.aga = and i32 %i.afu, 7
  %i.agb = shl i32 %i.afz, %i.aga
  %i.agc = sub nsw i32 32, %9
  %i.agd = lshr i32 %i.agb, %i.agc
  %i.age = zext i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.age ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 2
  %i.agh = load i16, ptr %i.agg, align 2, !tbaa !14
  %i.agi = sext i16 %i.agh to i32
  %i.agj = load i16, ptr %i.agf, align 2, !tbaa !14
  %i.agk = sext i16 %i.agj to i32
  %i.agl = load i32, ptr %i.d, align 8, !tbaa !20
  %i.agm = add i32 %i.afu, %i.agi
  %i.agn = tail call i32 @llvm.umin.i32(i32 %i.agl, i32 %i.agm)
  store i32 %i.agn, ptr %i.c, align 8, !tbaa !19
  %i.ago = add nsw i32 %i.afo, %i.agk             ; 2 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %indvars.iv.i.i69
  store i32 %i.ago, ptr %i.agp, align 4, !tbaa !9
  %indvars.iv.next.i.i70 = add nuw nsw i64 %indvars.iv.i.i69, 1 ; 2 uses
  %exitcond.not.i.i71 = icmp eq i64 %indvars.iv.next.i.i70, %wide.trip.count.i.i68
  br i1 %exitcond.not.i.i71, label %gainc_loc_mode1.exit.i, label %bb.bt, !llvm.loop !207

gainc_loc_mode1.exit.i:                           ; preds = %bb.bt, %bb.bs, %bb.br
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 1 ; 2 uses
  %exitcond375.not.i = icmp eq i64 %indvars.iv.next372.i, %wide.trip.count374.i
  br i1 %exitcond375.not.i, label %.loopexit258.i, label %bb.br, !llvm.loop !208

bb.bu:                                            ; preds = %.loopexit87
  %.not221.i = icmp eq i64 %indvars.iv168, 0
  br i1 %.not221.i, label %.preheader267.i.a, label %.preheader270.i

.preheader270.i:                                  ; preds = %bb.bu
  %wide.trip.count347.i = zext nneg i32 %i.af to i64 ; 2 uses
  br label %bb.bv

.preheader267.i.a:                                ; preds = %bb.bu
  %i.agq = load i32, ptr %.pre, align 4, !tbaa !227 ; 2 uses
  %i.agr = icmp sgt i32 %i.agq, 0
  br i1 %i.agr, label %gainc_loc_mode0.exit252.peel.i, label %.preheader265.i.a

gainc_loc_mode0.exit252.peel.i:                   ; preds = %.preheader267.i.a
  %i.ags = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.agt = lshr i32 %i.wu, 3
  %i.agu = zext nneg i32 %i.agt to i64
  %i.agv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.agu
  %i.agw = load i32, ptr %i.agv, align 1, !tbaa !14
  %i.agx = tail call i32 @llvm.bswap.i32(i32 %i.agw)
  %i.agy = and i32 %i.wu, 7
  %i.agz = shl i32 %i.agx, %i.agy
  %i.aha = lshr i32 %i.agz, 27
  %i.ahb = add i32 %i.wu, 5
  %i.ahc = tail call i32 @llvm.umin.i32(i32 %i.wk, i32 %i.ahb)
  store i32 %i.ahc, ptr %i.c, align 8, !tbaa !19
  store i32 %i.aha, ptr %i.ags, align 4, !tbaa !9
  %.not432.i = icmp eq i32 %i.agq, 1
  br i1 %.not432.i, label %.preheader265.i.a, label %.peel.next353.i

bb.bv:                                            ; preds = %gainc_loc_mode1.exit248.i, %.preheader270.i
  %indvars.iv344.i = phi i64 [ 0, %.preheader270.i ], [ %indvars.iv.next345.i, %gainc_loc_mode1.exit248.i ] ; 3 uses
  %i.ahd = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv344.i ; 5 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !227 ; 6 uses
  %i.ahf = icmp slt i32 %i.ahe, 1
  br i1 %i.ahf, label %gainc_loc_mode1.exit248.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ahg = load ptr, ptr %i.e, align 8, !tbaa !224 ; 2 uses
  %i.ahh = ptrtoaddr ptr %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [60 x i8], ptr %i.ahg, i64 %indvars.iv344.i ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !227
  %i.ahk = icmp sgt i32 %i.ahe, %i.ahj
  %.pre.i65 = load i32, ptr %i.c, align 8, !tbaa !19 ; 5 uses
  %.pre407.i = load i32, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  br i1 %i.ahk, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ahl = lshr i32 %.pre.i65, 3
  %i.ahm = zext nneg i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ahm
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !14
  %i.ahp = icmp slt i32 %.pre.i65, %.pre407.i
  %i.ahq = zext i1 %i.ahp to i32
  %spec.select.i236.i = add i32 %.pre.i65, %i.ahq ; 2 uses
  %i.ahr = zext i8 %i.aho to i32
  %i.ahs = and i32 %.pre.i65, 7
  store i32 %spec.select.i236.i, ptr %i.c, align 8, !tbaa !19
  %i.aht = lshr exact i32 128, %i.ahs
  %i.ahu = and i32 %i.aht, %i.ahr
  %.not222.i = icmp eq i32 %i.ahu, 0
  br i1 %.not222.i, label %.lr.ph288.i, label %bb.by

.lr.ph288.i:                                      ; preds = %bb.bx
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahi, i64 32 ; 6 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahd, i64 32 ; 6 uses
  %i.ahx = zext nneg i32 %i.ahe to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.ahe, 8
  %i.ahy = sub i64 %i.ahh, %.pre281
  %diff.check = icmp ugt i64 %i.ahy, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph288.i
  %n.vec = and i64 %i.ahx, 2147483640             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %index ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %wide.load = load <4 x i32>, ptr %i.ahz, align 4, !tbaa !9
  %wide.load282 = load <4 x i32>, ptr %i.aia, align 4, !tbaa !9
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %index ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  store <4 x i32> %wide.load, ptr %i.aib, align 4, !tbaa !9
  store <4 x i32> %wide.load282, ptr %i.aic, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aid = icmp eq i64 %index.next, %n.vec
  br i1 %i.aid, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ahx
  br i1 %cmp.n, label %gainc_loc_mode1.exit248.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph288.i, %middle.block
  %indvars.iv341.i.ph = phi i64 [ 0, %.lr.ph288.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter356 = and i64 %i.ahx, 3                ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv341.i.prol = phi i64 [ %indvars.iv.next342.i.prol, %scalar.ph.prol ], [ %indvars.iv341.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv341.i.prol
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !9
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %indvars.iv341.i.prol
  store i32 %i.aif, ptr %i.aig, align 4, !tbaa !9
  %indvars.iv.next342.i.prol = add nuw nsw i64 %indvars.iv341.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter356
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !210

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv341.i.unr = phi i64 [ %indvars.iv341.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next342.i.prol, %scalar.ph.prol ]
  %i.aih = sub nsw i64 %indvars.iv341.i.ph, %i.ahx
  %i.aii = icmp ugt i64 %i.aih, -4
  br i1 %i.aii, label %gainc_loc_mode1.exit248.i, label %scalar.ph

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.aij = phi i32 [ %.pre.i65, %bb.bw ], [ %spec.select.i236.i, %bb.bx ] ; 3 uses
  %i.aik = lshr i32 %i.aij, 3
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 1, !tbaa !14
  %i.aio = tail call i32 @llvm.bswap.i32(i32 %i.ain)
  %i.aip = and i32 %i.aij, 7
  %i.aiq = shl i32 %i.aio, %i.aip
  %i.air = lshr i32 %i.aiq, 27                    ; 2 uses
  %i.ais = add i32 %i.aij, 5
  %i.ait = tail call i32 @llvm.umin.i32(i32 %.pre407.i, i32 %i.ais)
  store i32 %i.ait, ptr %i.c, align 8, !tbaa !19
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ahd, i64 32 ; 2 uses
  store i32 %i.air, ptr %i.aiu, align 4, !tbaa !9
  %.not2.i237.i = icmp eq i32 %i.ahe, 1
  br i1 %.not2.i237.i, label %gainc_loc_mode1.exit248.i, label %.lr.ph.i238.i

.lr.ph.i238.i:                                    ; preds = %bb.by
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %wide.trip.count.i239.i = zext nneg i32 %i.ahe to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.lr.ph.i238.i
  %i.aiw = phi i32 [ %i.air, %.lr.ph.i238.i ], [ %i.ajw, %bb.bz ]
  %indvars.iv.i240.i = phi i64 [ 1, %.lr.ph.i238.i ], [ %indvars.iv.next.i246.i, %bb.bz ] ; 4 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiv, i64 %indvars.iv.i240.i
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !9
  %i.aiz = getelementptr [4 x i8], ptr %i.ahd, i64 %indvars.iv.i240.i
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !9
  %.not.i241.i = icmp sgt i32 %i.aiy, %i.aja
  %i.ajb = select i1 %.not.i241.i, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 216), ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 168) ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %11 = load ptr, ptr %10, align 16, !tbaa !17
  %12 = load i32, ptr %i.ajb, align 8, !tbaa !25
  %i.ajc = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.ajd = lshr i32 %i.ajc, 3
  %i.aje = zext nneg i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 1, !tbaa !14
  %i.ajh = tail call i32 @llvm.bswap.i32(i32 %i.ajg)
  %i.aji = and i32 %i.ajc, 7
  %i.ajj = shl i32 %i.ajh, %i.aji
  %i.ajk = sub nsw i32 32, %12
  %i.ajl = lshr i32 %i.ajj, %i.ajk
  %i.ajm = zext i32 %i.ajl to i64
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.ajm ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 2
  %i.ajp = load i16, ptr %i.ajo, align 2, !tbaa !14
  %i.ajq = sext i16 %i.ajp to i32
  %i.ajr = load i16, ptr %i.ajn, align 2, !tbaa !14
  %i.ajs = sext i16 %i.ajr to i32
  %i.ajt = load i32, ptr %i.d, align 8, !tbaa !20
  %i.aju = add i32 %i.ajc, %i.ajq
  %i.ajv = tail call i32 @llvm.umin.i32(i32 %i.ajt, i32 %i.aju)
  store i32 %i.ajv, ptr %i.c, align 8, !tbaa !19
  %i.ajw = add nsw i32 %i.aiw, %i.ajs             ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.aiu, i64 %indvars.iv.i240.i
  store i32 %i.ajw, ptr %i.ajx, align 4, !tbaa !9
  %indvars.iv.next.i246.i = add nuw nsw i64 %indvars.iv.i240.i, 1 ; 2 uses
  %exitcond.not.i247.i = icmp eq i64 %indvars.iv.next.i246.i, %wide.trip.count.i239.i
  br i1 %exitcond.not.i247.i, label %gainc_loc_mode1.exit248.i, label %bb.bz, !llvm.loop !207

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv341.i = phi i64 [ %indvars.iv.next342.i.3, %scalar.ph ], [ %indvars.iv341.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv341.i
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !9
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %indvars.iv341.i
  store i32 %i.ajz, ptr %i.aka, align 4, !tbaa !9
  %indvars.iv.next342.i = add nuw nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv.next342.i
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !9
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %indvars.iv.next342.i
  store i32 %i.akc, ptr %i.akd, align 4, !tbaa !9
  %indvars.iv.next342.i.1 = add nuw nsw i64 %indvars.iv341.i, 2 ; 2 uses
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv.next342.i.1
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !9
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %indvars.iv.next342.i.1
  store i32 %i.akf, ptr %i.akg, align 4, !tbaa !9
  %indvars.iv.next342.i.2 = add nuw nsw i64 %indvars.iv341.i, 3 ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv.next342.i.2
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !9
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %indvars.iv.next342.i.2
  store i32 %i.aki, ptr %i.akj, align 4, !tbaa !9
  %indvars.iv.next342.i.3 = add nuw nsw i64 %indvars.iv341.i, 4 ; 2 uses
  %exitcond166.not.3 = icmp eq i64 %indvars.iv.next342.i.3, %i.ahx
  br i1 %exitcond166.not.3, label %gainc_loc_mode1.exit248.i, label %scalar.ph, !llvm.loop !211

gainc_loc_mode1.exit248.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.bz, %middle.block, %bb.by, %bb.bv
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1 ; 2 uses
  %exitcond348.not.i = icmp eq i64 %indvars.iv.next345.i, %wide.trip.count347.i
  br i1 %exitcond348.not.i, label %.loopexit258.i, label %bb.bv, !llvm.loop !212

.preheader265.i.a:                                ; preds = %gainc_loc_mode0.exit252.i, %gainc_loc_mode0.exit252.peel.i, %.preheader267.i.a
  %.not78 = icmp eq i32 %i.ac, 0
  br i1 %.not78, label %.loopexit258.i, label %.lr.ph298.i

.lr.ph298.i:                                      ; preds = %.preheader265.i.a
  %i.akk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 152), align 8
  %wide.trip.count361.i = zext nneg i32 %i.af to i64 ; 2 uses
  br label %bb.cc

.peel.next353.i:                                  ; preds = %gainc_loc_mode0.exit252.peel.i, %gainc_loc_mode0.exit252.i
  %indvars.iv349.i = phi i64 [ %indvars.iv.next350.i, %gainc_loc_mode0.exit252.i ], [ 1, %gainc_loc_mode0.exit252.peel.i ] ; 2 uses
  %i.akl = getelementptr [4 x i8], ptr %i.ags, i64 %indvars.iv349.i ; 2 uses
  %i.akm = getelementptr i8, ptr %i.akl, i64 -4
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !9 ; 4 uses
  %i.ako = icmp slt i32 %i.akn, 15
  br i1 %i.ako, label %._crit_edge.i250.i, label %bb.ca

._crit_edge.i250.i:                               ; preds = %.peel.next353.i
  %i.akp = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.akq = load i32, ptr %i.d, align 8, !tbaa !20
  %i.akr = lshr i32 %i.akp, 3
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aks
  %i.aku = load i32, ptr %i.akt, align 1, !tbaa !14
  %i.akv = tail call i32 @llvm.bswap.i32(i32 %i.aku)
  %i.akw = and i32 %i.akp, 7
  %i.akx = shl i32 %i.akv, %i.akw
  %i.aky = lshr i32 %i.akx, 27
  %i.akz = add i32 %i.akp, 5
  %i.ala = tail call i32 @llvm.umin.i32(i32 %i.akq, i32 %i.akz)
  store i32 %i.ala, ptr %i.c, align 8, !tbaa !19
  br label %gainc_loc_mode0.exit252.i

bb.ca:                                            ; preds = %.peel.next353.i
  %i.alb = icmp samesign ugt i32 %i.akn, 29
  br i1 %i.alb, label %gainc_loc_mode0.exit252.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.alc = sub nuw nsw i32 30, %i.akn
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ald
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !14
  %i.alg = zext i8 %i.alf to i32                  ; 2 uses
  %i.alh = add nuw nsw i32 %i.alg, 1
  %i.ali = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.alj = load i32, ptr %i.d, align 8, !tbaa !20
  %i.alk = lshr i32 %i.ali, 3
  %i.all = zext nneg i32 %i.alk to i64
  %i.alm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.all
  %i.aln = load i32, ptr %i.alm, align 1, !tbaa !14
  %i.alo = tail call i32 @llvm.bswap.i32(i32 %i.aln)
  %i.alp = and i32 %i.ali, 7
  %i.alq = shl i32 %i.alo, %i.alp
  %i.alr = sub nsw i32 31, %i.alg
  %i.als = lshr i32 %i.alq, %i.alr
  %i.alt = add i32 %i.alh, %i.ali
  %i.alu = tail call i32 @llvm.umin.i32(i32 %i.alj, i32 %i.alt)
  store i32 %i.alu, ptr %i.c, align 8, !tbaa !19
  %i.alv = add nuw nsw i32 %i.akn, 1
  %i.alw = add i32 %i.alv, %i.als
  br label %gainc_loc_mode0.exit252.i

gainc_loc_mode0.exit252.i:                        ; preds = %bb.ca, %bb.cb, %._crit_edge.i250.i
  %.sink238 = phi i32 [ %i.alw, %bb.cb ], [ %i.aky, %._crit_edge.i250.i ], [ 31, %bb.ca ]
  store i32 %.sink238, ptr %i.akl, align 4, !tbaa !9
  %indvars.iv.next350.i = add nuw nsw i64 %indvars.iv349.i, 1 ; 2 uses
  %i.alx = load i32, ptr %.pre, align 4, !tbaa !227
  %i.aly = sext i32 %i.alx to i64
  %i.alz = icmp slt i64 %indvars.iv.next350.i, %i.aly
  br i1 %i.alz, label %.peel.next353.i, label %.preheader265.i.a, !llvm.loop !213

bb.cc:                                            ; preds = %.loopexit264.i, %.lr.ph298.i
  %indvars.iv358.i = phi i64 [ 1, %.lr.ph298.i ], [ %indvars.iv.next359.i, %.loopexit264.i ] ; 2 uses
  %i.ama = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv358.i ; 7 uses
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !227 ; 3 uses
  %i.amc = icmp slt i32 %i.amb, 1
  br i1 %i.amc, label %.loopexit264.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.amd = load i32, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 144), align 16, !tbaa !25
  %i.ame = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.amf = lshr i32 %i.ame, 3
  %i.amg = zext nneg i32 %i.amf to i64
  %i.amh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.amg
  %i.ami = load i32, ptr %i.amh, align 1, !tbaa !14
  %i.amj = tail call i32 @llvm.bswap.i32(i32 %i.ami)
  %i.amk = and i32 %i.ame, 7
  %i.aml = shl i32 %i.amj, %i.amk
  %i.amm = sub nsw i32 32, %i.amd
  %i.amn = lshr i32 %i.aml, %i.amm
  %i.amo = zext i32 %i.amn to i64
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.akk, i64 %i.amo ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 2
  %i.amr = load i16, ptr %i.amq, align 2, !tbaa !14
  %i.ams = sext i16 %i.amr to i32
  %i.amt = load i16, ptr %i.amp, align 2, !tbaa !14
  %i.amu = zext i16 %i.amt to i32
  %i.amv = load i32, ptr %i.d, align 8, !tbaa !20
  %i.amw = add i32 %i.ame, %i.ams
  %i.amx = tail call i32 @llvm.umin.i32(i32 %i.amv, i32 %i.amw)
  store i32 %i.amx, ptr %i.c, align 8, !tbaa !19
  %i.amy = getelementptr inbounds i8, ptr %i.ama, i64 -60
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !227 ; 2 uses
  %i.ana = icmp sgt i32 %i.amz, 0
  br i1 %i.ana, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.anb = getelementptr inbounds i8, ptr %i.ama, i64 -28
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.and = phi i32 [ %i.anc, %bb.ce ], [ 0, %bb.cd ]
  %i.ane = add i32 %i.and, %i.amu
  %i.anf = and i32 %i.ane, 31
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ama, i64 32 ; 3 uses
  store i32 %i.anf, ptr %i.ang, align 4, !tbaa !9
  %.not433.i = icmp eq i32 %i.amb, 1
  br i1 %.not433.i, label %.loopexit264.i, label %.lr.ph296.i

.lr.ph296.i:                                      ; preds = %bb.cf
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ama, i64 4
  %i.ani = getelementptr inbounds i8, ptr %i.ama, i64 -28
  %i.anj = sext i32 %i.amz to i64
  %umax = zext nneg i32 %i.amb to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cj, %.lr.ph296.i
  %indvars.iv355.i = phi i64 [ 1, %.lr.ph296.i ], [ %indvars.iv.next356.i, %bb.cj ] ; 7 uses
  %i.ank = icmp sge i64 %indvars.iv355.i, %i.anj  ; 2 uses
  %i.anl = zext i1 %i.ank to i64
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %indvars.iv355.i
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !9
  %i.ano = getelementptr [4 x i8], ptr %i.ama, i64 %indvars.iv355.i
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !9
  %i.anq = icmp sgt i32 %i.ann, %i.anp
  %i.anr = select i1 %i.anq, i64 2, i64 0
  %i.ans = getelementptr inbounds nuw [24 x i8], ptr @gain_vlc_tabs, i64 %i.anr
  %i.ant = getelementptr inbounds nuw [24 x i8], ptr %i.ans, i64 %i.anl ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 144
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 152
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !17
  %i.anx = load i32, ptr %i.anu, align 8, !tbaa !25
  %i.any = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.anz = lshr i32 %i.any, 3
  %i.aoa = zext nneg i32 %i.anz to i64
  %i.aob = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aoa
  %i.aoc = load i32, ptr %i.aob, align 1, !tbaa !14
  %i.aod = tail call i32 @llvm.bswap.i32(i32 %i.aoc)
  %i.aoe = and i32 %i.any, 7
  %i.aof = shl i32 %i.aod, %i.aoe
  %i.aog = sub nsw i32 32, %i.anx
  %i.aoh = lshr i32 %i.aof, %i.aog
  %i.aoi = zext i32 %i.aoh to i64
end_hunk_1
