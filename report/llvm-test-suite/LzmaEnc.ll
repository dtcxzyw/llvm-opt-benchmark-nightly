inline.NumInlined: 105
inline.NumDeleted: 33
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a
  %i.bbq = and i64 %indvars.iv.next1131.i, 4294967294
  %.not1221.i = icmp eq i64 %i.bbq, 0
  br i1 %.not1221.i, label %bb.fr, label %bb.fo, !llvm.loop !175

bb.fr:                                            ; preds = %bb.fq
  %i.bbr = add i32 %.0753.lcssa.i, 1              ; 6 uses
  %spec.select836.i = select i1 %i.azo, i32 %i.bbr, i32 %.07471033.i ; 3 uses
  %i.bbs = add i32 %i.bbr, %i.aux                 ; 2 uses
  %.0739.i = tail call i32 @llvm.umin.i32(i32 %i.bbs, i32 %spec.select833.i)
  %i.bbt = icmp ult i32 %i.bbr, %.0739.i
  br i1 %i.bbt, label %.lr.ph1023.preheader.i, label %.critedge6.i

.lr.ph1023.preheader.i:                           ; preds = %bb.fr
  %i.bbu = zext i32 %i.bbr to i64
  %i.bbv = zext i32 %i.bbs to i64
  %umin450 = tail call i64 @llvm.umin.i64(i64 %umin449, i64 %i.bbv) ; 2 uses
  br label %.lr.ph1023.i

.lr.ph1023.i:                                     ; preds = %bb.fs, %.lr.ph1023.preheader.i
  %indvars.iv1134.i = phi i64 [ %i.bbu, %.lr.ph1023.preheader.i ], [ %indvars.iv.next1135.i, %bb.fs ] ; 4 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %indvars.iv1134.i
  %i.bbx = load i8, ptr %i.bbw, align 1, !tbaa !21
  %i.bby = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %indvars.iv1134.i
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !21
  %i.bca = icmp eq i8 %i.bbx, %i.bbz
  br i1 %i.bca, label %bb.fs, label %.critedge6.loopexit.i

bb.fs:                                            ; preds = %.lr.ph1023.i
  %indvars.iv.next1135.i = add nuw nsw i64 %indvars.iv1134.i, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next1135.i, %umin450
  br i1 %exitcond451.not, label %.critedge6.loopexit.i, label %.lr.ph1023.i, !llvm.loop !176

.critedge6.loopexit.i:                            ; preds = %bb.fs, %.lr.ph1023.i
  %.0740.lcssa.ph.in.i = phi i64 [ %indvars.iv1134.i, %.lr.ph1023.i ], [ %umin450, %bb.fs ]
  %.0740.lcssa.ph.i = trunc i64 %.0740.lcssa.ph.in.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.loopexit.i, %bb.fr
  %.0740.lcssa.i = phi i32 [ %i.bbr, %bb.fr ], [ %.0740.lcssa.ph.i, %.critedge6.loopexit.i ] ; 2 uses
  %i.bcb = sub i32 %.0740.lcssa.i, %i.bbr         ; 3 uses
  %i.bcc = icmp ugt i32 %i.bcb, 1
  br i1 %i.bcc, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %.critedge6.i
  %i.bcd = load i32, ptr %i.ayg, align 4, !tbaa !4
  %i.bce = add i32 %.0753.lcssa.i, %i.anf         ; 3 uses
  %i.bcf = and i32 %i.bce, %i.aqm
  %i.bcg = add i32 %.0753.lcssa.i, -2
  %i.bch = zext i32 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %i.bch
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !4
  %i.bck = zext i32 %i.bcd to i64                 ; 2 uses
  %i.bcl = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.bck
  %i.bcm = zext i32 %i.bcf to i64
  %i.bcn = getelementptr inbounds nuw [2 x i8], ptr %i.bcl, i64 %i.bcm
  %i.bco = load i16, ptr %i.bcn, align 2, !tbaa !23
  %i.bcp = lshr i16 %i.bco, 4
  %i.bcq = zext nneg i16 %i.bcp to i64
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bcq
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !4
  %i.bct = and i32 %i.bce, %i.aqz
  %i.bcu = shl i32 %i.bct, %i.arb
  %i.bcv = add i32 %.0753.lcssa.i, -1
  %i.bcw = zext i32 %i.bcv to i64
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.bcw
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !21
  %i.bcz = zext i8 %i.bcy to i32
  %i.bda = lshr i32 %i.bcz, %i.arg
  %i.bdb = add i32 %i.bda, %i.bcu
  %i.bdc = mul i32 %i.bdb, 768
  %i.bdd = zext i32 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %i.aqy, i64 %i.bdd
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.bbb
  %i.bdg = load i8, ptr %i.bdf, align 1, !tbaa !21
  %i.bdh = zext i8 %i.bdg to i32
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %i.bbb
  %i.bdj = load i8, ptr %i.bdi, align 1, !tbaa !21
  %i.bdk = zext i8 %i.bdj to i32
  %i.bdl = or disjoint i32 %i.bdh, 256
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %bb.ft
  %.017.i882.i = phi i32 [ %i.bdk, %bb.ft ], [ %i.bdm, %bb.fu ]
  %.016.i883.i = phi i32 [ %i.bdl, %bb.ft ], [ %i.beb, %bb.fu ] ; 4 uses
  %.015.i884.i = phi i32 [ 0, %bb.ft ], [ %i.bea, %bb.fu ]
  %.0.i885.i = phi i32 [ 256, %bb.ft ], [ %i.bee, %bb.fu ] ; 3 uses
  %i.bdm = shl i32 %.017.i882.i, 1                ; 3 uses
  %i.bdn = and i32 %.0.i885.i, %i.bdm
  %i.bdo = lshr i32 %.016.i883.i, 8
  %i.bdp = add nuw nsw i32 %.0.i885.i, %i.bdo
  %i.bdq = add nuw nsw i32 %i.bdp, %i.bdn
  %i.bdr = zext nneg i32 %i.bdq to i64
  %i.bds = getelementptr inbounds nuw [2 x i8], ptr %i.bde, i64 %i.bdr
  %i.bdt = load i16, ptr %i.bds, align 2, !tbaa !23
  %i.bdu = zext i16 %i.bdt to i64
  %.mask.i886.i = and i32 %.016.i883.i, 128
  %isneg.not.i887.i = icmp eq i32 %.mask.i886.i, 0
  %i.bdv = select i1 %isneg.not.i887.i, i64 0, i64 2032
  %i.bdw = xor i64 %i.bdv, %i.bdu
  %i.bdx = lshr i64 %i.bdw, 4
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bdx
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !4
  %i.bea = add i32 %i.bdz, %.015.i884.i           ; 2 uses
  %i.beb = shl nuw nsw i32 %.016.i883.i, 1        ; 2 uses
  %i.bec = xor i32 %i.bdm, %i.beb
  %i.bed = xor i32 %i.bec, -1
  %i.bee = and i32 %.0.i885.i, %i.bed
  %i.bef = icmp samesign ult i32 %.016.i883.i, 32768
  br i1 %i.bef, label %bb.fu, label %LitEnc_GetPriceMatched.exit888.i, !llvm.loop !168

LitEnc_GetPriceMatched.exit888.i:                 ; preds = %bb.fu
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.bck
  %i.beh = load i32, ptr %i.beg, align 4, !tbaa !4
  %i.bei = add i32 %i.bce, 1
  %i.bej = and i32 %i.bei, %i.aqm
  %i.bek = zext i32 %i.beh to i64                 ; 4 uses
  %i.bel = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.bek
  %i.bem = zext i32 %i.bej to i64                 ; 3 uses
  %i.ben = getelementptr inbounds nuw [2 x i8], ptr %i.bel, i64 %i.bem
  %i.beo = load i16, ptr %i.ben, align 2, !tbaa !23
  %i.bep = lshr i16 %i.beo, 4
  %i.beq = xor i16 %i.bep, 127
  %i.ber = zext nneg i16 %i.beq to i64
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ber
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !4
  %i.beu = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.bek
  %i.bev = load i16, ptr %i.beu, align 2, !tbaa !23
  %i.bew = lshr i16 %i.bev, 4
  %i.bex = xor i16 %i.bew, 127
  %i.bey = zext nneg i16 %i.bex to i64
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bey
  %i.bfa = load i32, ptr %i.bez, align 4, !tbaa !4
  %i.bfb = add i32 %i.aza, 1                      ; 2 uses
  %i.bfc = add i32 %i.bcb, %i.bfb                 ; 2 uses
  %i.bfd = icmp ult i32 %.5.lcssa.i, %i.bfc
  br i1 %i.bfd, label %.lr.ph1028.preheader.i, label %._crit_edge1029.i

.lr.ph1028.preheader.i:                           ; preds = %LitEnc_GetPriceMatched.exit888.i
  %i.bfe = zext i32 %.5.lcssa.i to i64            ; 4 uses
  %i.bff = add i32 %.0740.lcssa.i, %i.aku         ; 3 uses
  %wide.trip.count1142.i = zext i32 %i.bff to i64 ; 3 uses
  %i.bfg = sub nsw i64 %wide.trip.count1142.i, %i.bfe
  %xtraiter668 = and i64 %i.bfg, 3                ; 2 uses
  %lcmp.mod669.not = icmp eq i64 %xtraiter668, 0
  br i1 %lcmp.mod669.not, label %.lr.ph1028.i.prol.loopexit, label %.lr.ph1028.i.prol

.lr.ph1028.i.prol:                                ; preds = %.lr.ph1028.preheader.i, %.lr.ph1028.i.prol
  %indvars.iv1138.i.prol = phi i64 [ %indvars.iv.next1139.i.prol, %.lr.ph1028.i.prol ], [ %i.bfe, %.lr.ph1028.preheader.i ]
  %prol.iter670 = phi i64 [ %prol.iter670.next, %.lr.ph1028.i.prol ], [ 0, %.lr.ph1028.preheader.i ]
  %indvars.iv.next1139.i.prol = add nuw nsw i64 %indvars.iv1138.i.prol, 1 ; 3 uses
  %i.bfh = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1139.i.prol
  store i32 1073741824, ptr %i.bfh, align 4, !tbaa !157
  %prol.iter670.next = add i64 %prol.iter670, 1   ; 2 uses
  %prol.iter670.cmp.not = icmp eq i64 %prol.iter670.next, %xtraiter668
  br i1 %prol.iter670.cmp.not, label %.lr.ph1028.i.prol.loopexit, label %.lr.ph1028.i.prol, !llvm.loop !177

.lr.ph1028.i.prol.loopexit:                       ; preds = %.lr.ph1028.i.prol, %.lr.ph1028.preheader.i
  %indvars.iv1138.i.unr = phi i64 [ %i.bfe, %.lr.ph1028.preheader.i ], [ %indvars.iv.next1139.i.prol, %.lr.ph1028.i.prol ]
  %i.bfi = sub nsw i64 %i.bfe, %wide.trip.count1142.i
  %i.bfj = icmp ugt i64 %i.bfi, -4
  br i1 %i.bfj, label %._crit_edge1029.i, label %.lr.ph1028.i

.lr.ph1028.i:                                     ; preds = %.lr.ph1028.i.prol.loopexit, %.lr.ph1028.i
  %indvars.iv1138.i = phi i64 [ %indvars.iv.next1139.i.3, %.lr.ph1028.i ], [ %indvars.iv1138.i.unr, %.lr.ph1028.i.prol.loopexit ] ; 4 uses
  %i.bfk = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1138.i
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 48
  store i32 1073741824, ptr %i.bfl, align 4, !tbaa !157
  %i.bfm = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1138.i
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 96
  store i32 1073741824, ptr %i.bfn, align 4, !tbaa !157
  %i.bfo = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1138.i
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 144
  store i32 1073741824, ptr %i.bfp, align 4, !tbaa !157
  %indvars.iv.next1139.i.3 = add nuw nsw i64 %indvars.iv1138.i, 4 ; 3 uses
  %i.bfq = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1139.i.3
  store i32 1073741824, ptr %i.bfq, align 4, !tbaa !157
  %exitcond1143.not.i.3 = icmp eq i64 %indvars.iv.next1139.i.3, %wide.trip.count1142.i
  br i1 %exitcond1143.not.i.3, label %._crit_edge1029.i, label %.lr.ph1028.i, !llvm.loop !178

._crit_edge1029.i:                                ; preds = %.lr.ph1028.i.prol.loopexit, %.lr.ph1028.i, %LitEnc_GetPriceMatched.exit888.i
  %.6.lcssa.i = phi i32 [ %.5.lcssa.i, %LitEnc_GetPriceMatched.exit888.i ], [ %i.bff, %.lr.ph1028.i ], [ %i.bff, %.lr.ph1028.i.prol.loopexit ] ; 2 uses
  %i.bfr = getelementptr inbounds nuw [1088 x i8], ptr %i.eu, i64 %i.bem
  %i.bfs = add i32 %i.bcb, -2
  %i.bft = zext i32 %i.bfs to i64
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %i.bfr, i64 %i.bft
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !4
  %i.bfw = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.bek
  %i.bfx = load i16, ptr %i.bfw, align 2, !tbaa !23
  %i.bfy = lshr i16 %i.bfx, 4
  %i.bfz = zext nneg i16 %i.bfy to i64
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bfz
  %i.bgb = load i32, ptr %i.bga, align 4, !tbaa !4
  %i.bgc = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %i.bek
  %i.bgd = getelementptr inbounds nuw [2 x i8], ptr %i.bgc, i64 %i.bem
  %i.bge = load i16, ptr %i.bgd, align 2, !tbaa !23
  %i.bgf = lshr i16 %i.bge, 4
  %i.bgg = xor i16 %i.bgf, 127
  %i.bgh = zext nneg i16 %i.bgg to i64
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bgh
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !4
  %4 = add i32 %i.bcj, %i.bba
  %5 = add i32 %4, %i.bcs
  %6 = add i32 %5, %i.bea
  %7 = add i32 %6, %i.bet
  %8 = add i32 %7, %i.bfa
  %9 = add i32 %8, %i.bfv
  %op.rdx = add i32 %9, %i.bgb
  %op.rdx630 = add i32 %op.rdx, %i.bgj            ; 2 uses
  %i.bgk = zext i32 %i.bfc to i64
  %i.bgl = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.bgk ; 8 uses
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !157
  %i.bgn = icmp ult i32 %op.rdx630, %i.bgm
  br i1 %i.bgn, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %._crit_edge1029.i
  store i32 %op.rdx630, ptr %i.bgl, align 4, !tbaa !157
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 24
  store i32 %i.bfb, ptr %i.bgo, align 4, !tbaa !148
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 28
  store i32 0, ptr %i.bgp, align 4, !tbaa !150
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgl, i64 8
  store i32 1, ptr %i.bgq, align 4, !tbaa !158
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgl, i64 12
  store i32 1, ptr %i.bgr, align 4, !tbaa !164
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgl, i64 16
  store i32 %i.aku, ptr %i.bgs, align 4, !tbaa !166
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgl, i64 20
  store i32 %i.bbc, ptr %i.bgt, align 4, !tbaa !167
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %._crit_edge1029.i, %.critedge6.i, %bb.fi, %bb.fh
  %.2749.i = phi i32 [ %.07471033.i, %bb.fh ], [ %.07471033.i, %bb.fi ], [ %spec.select836.i, %._crit_edge1029.i ], [ %spec.select836.i, %bb.fv ], [ %spec.select836.i, %.critedge6.i ] ; 5 uses
  %.8.i = phi i32 [ %.41034.i, %bb.fh ], [ %.41034.i, %bb.fi ], [ %.6.lcssa.i, %._crit_edge1029.i ], [ %.6.lcssa.i, %bb.fv ], [ %.5.lcssa.i, %.critedge6.i ] ; 5 uses
  %indvars.iv.next1145.i = add nuw nsw i64 %indvars.iv1144.i, 1 ; 2 uses
  %exitcond1148.not.i = icmp eq i64 %indvars.iv.next1145.i, 4
  br i1 %exitcond1148.not.i, label %bb.fx, label %bb.fh, !llvm.loop !179

bb.fx:                                            ; preds = %bb.fw
  %i.bgu = icmp ugt i32 %.1.i848.i, %.spec.select833.i
  br i1 %i.bgu, label %.preheader963.i, label %bb.fz

.preheader963.i:                                  ; preds = %bb.fx, %.preheader963.i
  %storemerge.i = phi i32 [ %i.bgz, %.preheader963.i ], [ 0, %bb.fx ] ; 2 uses
  %i.bgv = zext i32 %storemerge.i to i64          ; 2 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.bgv
  %i.bgx = load i32, ptr %i.bgw, align 4, !tbaa !4
  %i.bgy = icmp ugt i32 %.spec.select833.i, %i.bgx
  %i.bgz = add i32 %storemerge.i, 2               ; 2 uses
  br i1 %i.bgy, label %.preheader963.i, label %bb.fy, !llvm.loop !180

bb.fy:                                            ; preds = %.preheader963.i
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.bgv
  store i32 %.spec.select833.i, ptr %i.bha, align 4, !tbaa !4
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.0900.i = phi i32 [ %i.bgz, %bb.fy ], [ %i.alb, %bb.fx ]
  %.0738.i = phi i32 [ %.spec.select833.i, %bb.fy ], [ %.1.i848.i, %bb.fx ] ; 2 uses
  %.not821.i = icmp ult i32 %.0738.i, %.2749.i
  br i1 %.not821.i, label %.thread946.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.bhb = zext nneg i16 %i.atq to i64
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bhb
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !4
  %i.bhe = add i32 %i.bhd, %i.atn
  %i.bhf = add i32 %.0738.i, %i.aku
  %i.bhg = icmp ult i32 %.8.i, %i.bhf
  br i1 %i.bhg, label %.lr.ph1038.preheader.i, label %.preheader962.i

.lr.ph1038.preheader.i:                           ; preds = %bb.ga
  %i.bhh = zext i32 %.8.i to i64                  ; 4 uses
  %umin452 = tail call i32 @llvm.umin.i32(i32 %.1.i848.i, i32 %i.auu)
  %umin453 = tail call i32 @llvm.umin.i32(i32 %umin452, i32 %i.aux)
  %umin454 = tail call i32 @llvm.umin.i32(i32 %umin453, i32 %indvars.iv443)
  %i.bhi = add i32 %umin454, %i.aku               ; 3 uses
  %i.bhj = zext i32 %i.bhi to i64                 ; 3 uses
  %i.bhk = sub nsw i64 %i.bhj, %i.bhh
  %xtraiter671 = and i64 %i.bhk, 3                ; 2 uses
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  br i1 %lcmp.mod672.not, label %.lr.ph1038.i.prol.loopexit, label %.lr.ph1038.i.prol

.lr.ph1038.i.prol:                                ; preds = %.lr.ph1038.preheader.i, %.lr.ph1038.i.prol
  %indvars.iv1150.i.prol = phi i64 [ %indvars.iv.next1151.i.prol, %.lr.ph1038.i.prol ], [ %i.bhh, %.lr.ph1038.preheader.i ]
  %prol.iter673 = phi i64 [ %prol.iter673.next, %.lr.ph1038.i.prol ], [ 0, %.lr.ph1038.preheader.i ]
  %indvars.iv.next1151.i.prol = add nuw nsw i64 %indvars.iv1150.i.prol, 1 ; 3 uses
  %i.bhl = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1151.i.prol
  store i32 1073741824, ptr %i.bhl, align 4, !tbaa !157
  %prol.iter673.next = add i64 %prol.iter673, 1   ; 2 uses
  %prol.iter673.cmp.not = icmp eq i64 %prol.iter673.next, %xtraiter671
  br i1 %prol.iter673.cmp.not, label %.lr.ph1038.i.prol.loopexit, label %.lr.ph1038.i.prol, !llvm.loop !181

.lr.ph1038.i.prol.loopexit:                       ; preds = %.lr.ph1038.i.prol, %.lr.ph1038.preheader.i
  %indvars.iv1150.i.unr = phi i64 [ %i.bhh, %.lr.ph1038.preheader.i ], [ %indvars.iv.next1151.i.prol, %.lr.ph1038.i.prol ]
  %i.bhm = sub nsw i64 %i.bhh, %i.bhj
  %i.bhn = icmp ugt i64 %i.bhm, -4
  br i1 %i.bhn, label %.preheader962.i, label %.lr.ph1038.i

.preheader962.i:                                  ; preds = %.lr.ph1038.i.prol.loopexit, %.lr.ph1038.i, %bb.ga
  %.9.lcssa.i = phi i32 [ %.8.i, %bb.ga ], [ %i.bhi, %.lr.ph1038.i ], [ %i.bhi, %.lr.ph1038.i.prol.loopexit ]
  br label %bb.gb

.lr.ph1038.i:                                     ; preds = %.lr.ph1038.i.prol.loopexit, %.lr.ph1038.i
  %indvars.iv1150.i = phi i64 [ %indvars.iv.next1151.i.3, %.lr.ph1038.i ], [ %indvars.iv1150.i.unr, %.lr.ph1038.i.prol.loopexit ] ; 4 uses
  %i.bho = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1150.i
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 48
  store i32 1073741824, ptr %i.bhp, align 4, !tbaa !157
  %i.bhq = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1150.i
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 96
  store i32 1073741824, ptr %i.bhr, align 4, !tbaa !157
  %i.bhs = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1150.i
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 144
  store i32 1073741824, ptr %i.bht, align 4, !tbaa !157
  %indvars.iv.next1151.i.3 = add nuw nsw i64 %indvars.iv1150.i, 4 ; 3 uses
  %i.bhu = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1151.i.3
  store i32 1073741824, ptr %i.bhu, align 4, !tbaa !157
  %exitcond455.not.3 = icmp eq i64 %indvars.iv.next1151.i.3, %i.bhj
  br i1 %exitcond455.not.3, label %.preheader962.i, label %.lr.ph1038.i, !llvm.loop !182

bb.gb:                                            ; preds = %bb.gb, %.preheader962.i
  %.0726.i = phi i32 [ %i.bhz, %bb.gb ], [ 0, %.preheader962.i ] ; 4 uses
  %i.bhv = zext i32 %.0726.i to i64
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.bhv
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !4
  %i.bhy = icmp ugt i32 %.2749.i, %i.bhx
  %i.bhz = add i32 %.0726.i, 2
  br i1 %i.bhy, label %bb.gb, label %bb.gc, !llvm.loop !183

bb.gc:                                            ; preds = %bb.gb
  %i.bia = or disjoint i32 %.0726.i, 1
  %i.bib = zext i32 %i.bia to i64
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.bib
  %i.bid = load i32, ptr %i.bic, align 4, !tbaa !4 ; 3 uses
  %notsub822.i = add i32 %i.bid, -524288
  %isneg.inv823.i = icmp slt i32 %notsub822.i, 0
  %i.bie = select i1 %isneg.inv823.i, i32 6, i32 18 ; 2 uses
  %i.bif = lshr i32 %i.bid, %i.bie
  %i.big = zext nneg i32 %i.bif to i64
  %i.bih = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.big
  %i.bii = load i8, ptr %i.bih, align 1, !tbaa !21
  %i.bij = zext i8 %i.bii to i32
  %i.bik = shl nuw nsw i32 %i.bie, 1
  %i.bil = add nuw nsw i32 %i.bik, %i.bij
  %i.bim = getelementptr inbounds nuw [1088 x i8], ptr %i.ev, i64 %i.aqq
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr @kMatchNextStates, i64 %i.aqo
  %i.bio = add i32 %i.aux, 1
  %i.bip = add i32 %i.bio, %.2749.i
  %umin456 = tail call i64 @llvm.umin.i64(i64 %i.ayh, i64 %i.akv)
  br label %bb.gd

bb.gd:                                            ; preds = %.thread929.i, %bb.gc
  %indvars.iv458 = phi i32 [ %indvars.iv.next459, %.thread929.i ], [ %i.bip, %bb.gc ] ; 2 uses
  %indvars.iv1155.in.i = phi i32 [ %indvars.iv1155.i, %.thread929.i ], [ %.2749.i, %bb.gc ] ; 8 uses
  %.1727.i = phi i32 [ %.3729935.i, %.thread929.i ], [ %.0726.i, %bb.gc ] ; 4 uses
  %.0722.i = phi i32 [ %.3725936.i, %.thread929.i ], [ %i.bid, %bb.gc ] ; 7 uses
  %.0717.i = phi i32 [ %.4721937.i, %.thread929.i ], [ %i.bil, %bb.gc ] ; 3 uses
  %.10.i = phi i32 [ %.14938.i, %.thread929.i ], [ %.9.lcssa.i, %bb.gc ] ; 5 uses
  %i.biq = zext i32 %indvars.iv458 to i64
  %umin460 = tail call i64 @llvm.umin.i64(i64 %umin456, i64 %i.biq)
  %indvars.iv1155.i = add i32 %indvars.iv1155.in.i, 1 ; 6 uses
  %i.bir = zext i32 %indvars.iv1155.i to i64
  %i.bis = add i32 %indvars.iv1155.in.i, -2       ; 2 uses
  %i.bit = zext i32 %i.bis to i64
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %i.bit
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !4
  %i.biw = add i32 %i.bhe, %i.biv
  %i.bix = icmp ult i32 %indvars.iv1155.in.i, 5
  %i.biy = select i1 %i.bix, i32 %i.bis, i32 3
  %i.biz = icmp ult i32 %.0722.i, 128
  %i.bja = zext i32 %i.biy to i64                 ; 2 uses
  br i1 %i.biz, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.bjb = getelementptr inbounds nuw [512 x i8], ptr %i.ez, i64 %i.bja
  %i.bjc = zext nneg i32 %.0722.i to i64
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.bjb, i64 %i.bjc
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !4
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.bjf = getelementptr inbounds nuw [256 x i8], ptr %i.ey, i64 %i.bja
  %i.bjg = zext nneg i32 %.0717.i to i64
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.bjf, i64 %i.bjg
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !4
  %i.bjj = and i32 %.0722.i, 15
  %i.bjk = zext nneg i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.bjk
  %i.bjm = load i32, ptr %i.bjl, align 4, !tbaa !4
  %i.bjn = add i32 %i.bjm, %i.bji
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.pn824.i = phi i32 [ %i.bje, %bb.ge ], [ %i.bjn, %bb.gf ]
  %.0711.i = add i32 %i.biw, %.pn824.i            ; 3 uses
  %i.bjo = add i32 %indvars.iv1155.in.i, %i.aku   ; 2 uses
  %i.bjp = zext i32 %i.bjo to i64
  %i.bjq = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.bjp ; 5 uses
  %i.bjr = load i32, ptr %i.bjq, align 4, !tbaa !157
  %i.bjs = icmp ult i32 %.0711.i, %i.bjr
  br i1 %i.bjs, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 %.0711.i, ptr %i.bjq, align 4, !tbaa !157
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjq, i64 24
  store i32 %i.aku, ptr %i.bjt, align 4, !tbaa !148
  %i.bju = add i32 %.0722.i, 4
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjq, i64 28
  store i32 %i.bju, ptr %i.bjv, align 4, !tbaa !150
end_hunk_0
begin_hunk_1_@LenEnc_Encode2:bb.a
bb.bm:                                            ; preds = %bb.bk, %bb.bl, %LenEnc_Encode.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @RangeEnc_ShiftLow(ptr noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = and i64 %i.b, -16777216
  %or.cond = icmp eq i64 %i.c, 4278190080
  br i1 %or.cond, label %._crit_edge, label %.peel.begin

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77
  %i.d = add i64 %.pre, 1
  br label %bb.j

.peel.begin:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %i.o = lshr i64 %i.b, 32
  %i.p = trunc i64 %i.o to i8
  %i.q = add i8 %i.f, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 5 uses
  store i8 %i.q, ptr %i.n, align 1, !tbaa !21
  store ptr %i.r, ptr %i.g, align 8, !tbaa !79
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %RangeEnc_FlushStream.exit.peel

bb.b:                                             ; preds = %.peel.begin
  %i.u = load i32, ptr %i.i, align 8, !tbaa !81
  %.not.i.peel = icmp eq i32 %i.u, 0
  br i1 %.not.i.peel, label %bb.c, label %RangeEnc_FlushStream.exit.peel

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !71   ; 2 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !201  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull %i.z, ptr noundef %i.v, i64 noundef %i.y) #14, !inline_history !202
  %.not12.i.peel = icmp eq i64 %i.y, %i.ab
  br i1 %.not12.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 9, ptr %i.i, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !80
  %i.ad = add i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.l, align 8, !tbaa !80
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !79
  br label %RangeEnc_FlushStream.exit.peel

RangeEnc_FlushStream.exit.peel:                   ; preds = %bb.e, %bb.b, %.peel.begin
  %i.af = phi ptr [ %i.ae, %bb.e ], [ %i.r, %bb.b ], [ %i.r, %.peel.begin ]
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !77
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !77
  %.not18.peel = icmp eq i64 %i.ah, 0
  br i1 %.not18.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %RangeEnc_FlushStream.exit.peel, %RangeEnc_FlushStream.exit
  %i.ai = phi ptr [ %i.bb, %RangeEnc_FlushStream.exit ], [ %i.af, %RangeEnc_FlushStream.exit.peel ] ; 2 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !75
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc i64 %i.ak to i8
  %i.am = add i8 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 5 uses
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !21
  store ptr %i.an, ptr %i.g, align 8, !tbaa !79
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %RangeEnc_FlushStream.exit

bb.f:                                             ; preds = %.peel.next
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !81
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.g, label %RangeEnc_FlushStream.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !201 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !194
  %i.ax = tail call i64 %i.aw(ptr noundef nonnull %i.av, ptr noundef %i.ar, i64 noundef %i.au) #14, !inline_history !202
  %.not12.i = icmp eq i64 %i.au, %i.ax
  br i1 %.not12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 9, ptr %i.i, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !80
  %i.az = add i64 %i.ay, %i.au
  store i64 %i.az, ptr %i.l, align 8, !tbaa !80
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !79
  br label %RangeEnc_FlushStream.exit

RangeEnc_FlushStream.exit:                        ; preds = %bb.i, %bb.f, %.peel.next
  %i.bb = phi ptr [ %i.ba, %bb.i ], [ %i.an, %bb.f ], [ %i.an, %.peel.next ]
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !77
  %i.bd = add i64 %i.bc, -1                       ; 2 uses
  store i64 %i.bd, ptr %i.m, align 8, !tbaa !77
  %.not18 = icmp eq i64 %i.bd, 0
  br i1 %.not18, label %.loopexit, label %.peel.next, !llvm.loop !203

.loopexit:                                        ; preds = %RangeEnc_FlushStream.exit, %RangeEnc_FlushStream.exit.peel
  %i.be = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.bf = lshr i64 %i.be, 24
  %i.bg = trunc i64 %i.bf to i8
  store i8 %i.bg, ptr %i.e, align 4, !tbaa !78
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %.loopexit
  %i.bh = phi i64 [ %i.b, %._crit_edge ], [ %i.be, %.loopexit ]
  %i.bi = phi i64 [ %i.d, %._crit_edge ], [ 1, %.loopexit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !77
  %i.bk = shl i64 %i.bh, 8
  %i.bl = and i64 %i.bk, 4294967040
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @LitEnc_GetPriceMatched(ptr noundef readonly captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, ptr noundef readonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = or disjoint i32 %1, 256
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ %2, %bb.a ], [ %i.b, %bb.b ]
  %.016 = phi i32 [ %i.a, %bb.a ], [ %i.q, %bb.b ] ; 4 uses
  %.015 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]
  %.0 = phi i32 [ 256, %bb.a ], [ %i.t, %bb.b ]   ; 3 uses
  %i.b = shl i32 %.017, 1                         ; 3 uses
  %i.c = and i32 %.0, %i.b
  %i.d = lshr i32 %.016, 8
  %i.e = add nuw nsw i32 %.0, %i.d
  %i.f = add nuw nsw i32 %i.e, %i.c
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !23
  %i.j = zext i16 %i.i to i64
  %.mask = and i32 %.016, 128
  %isneg.not = icmp eq i32 %.mask, 0
  %i.k = select i1 %isneg.not, i64 0, i64 2032
  %i.l = xor i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add i32 %i.o, %.015                      ; 2 uses
  %i.q = shl nuw nsw i32 %.016, 1                 ; 2 uses
  %i.r = xor i32 %i.b, %i.q
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %.0, %i.s
  %i.u = icmp samesign ult i32 %.016, 32768
  br i1 %i.u, label %bb.b, label %bb.c, !llvm.loop !168

bb.c:                                             ; preds = %bb.b
  ret i32 %i.p
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_CLzmaEncProps", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!10 = !{!9, !5, i64 36}
!11 = !{!9, !5, i64 4}
!12 = !{!9, !5, i64 44}
!13 = !{!9, !5, i64 40}
!14 = !{!9, !5, i64 8}
!15 = !{!9, !5, i64 12}
!16 = !{!9, !5, i64 16}
!17 = !{!9, !5, i64 20}
!18 = !{!9, !5, i64 24}
!19 = !{!9, !5, i64 28}
!20 = !{!9, !5, i64 32}
!21 = !{!6, !6, i64 0}
!22 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 256, !21, i64 260, i64 256, !21, i64 516, i64 512, !21, i64 1028, i64 17408, !21, i64 18436, i64 4, !4, i64 18440, i64 64, !21}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !6, i64 0}
!25 = !{!26, !5, i64 210408}
!26 = !{!"", !27, i64 0, !28, i64 48, !5, i64 56, !29, i64 64, !39, i64 1560, !6, i64 2728, !5, i64 2856, !5, i64 2860, !5, i64 2864, !5, i64 2868, !5, i64 2872, !6, i64 2876, !6, i64 199484, !6, i64 207676, !6, i64 208188, !5, i64 210384, !5, i64 210388, !6, i64 210392, !5, i64 210408, !6, i64 210412, !6, i64 211436, !6, i64 213484, !5, i64 213548, !5, i64 213552, !5, i64 213556, !5, i64 213560, !5, i64 213564, !5, i64 213568, !5, i64 213572, !40, i64 213576, !6, i64 213584, !6, i64 213968, !6, i64 213992, !6, i64 214016, !6, i64 214040, !6, i64 214064, !6, i64 214448, !6, i64 214960, !6, i64 215188, !41, i64 215220, !41, i64 233724, !5, i64 252228, !5, i64 252232, !43, i64 252240, !5, i64 252312, !44, i64 252320, !5, i64 252328, !5, i64 252332, !5, i64 252336, !5, i64 252340, !5, i64 252344, !5, i64 252348, !5, i64 252352, !45, i64 252360}
!27 = !{!"_IMatchFinder", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40}
!28 = !{!"any pointer", !6, i64 0}
!29 = !{!"_CMatchFinderMt", !30, i64 0, !31, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !31, i64 32, !5, i64 40, !5, i64 44, !31, i64 48, !28, i64 56, !32, i64 64, !6, i64 672, !31, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !31, i64 824, !5, i64 832, !5, i64 836, !5, i64 840, !30, i64 848, !5, i64 856, !5, i64 860, !5, i64 864, !32, i64 872, !28, i64 1480, !38, i64 1488}
!30 = !{!"p1 omnipotent char", !28, i64 0}
!31 = !{!"p1 int", !28, i64 0}
!32 = !{!"_CMtSync", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !33, i64 16, !35, i64 32, !35, i64 136, !35, i64 240, !36, i64 344, !36, i64 448, !5, i64 552, !5, i64 556, !37, i64 560, !5, i64 600}
!33 = !{!"_CThread", !34, i64 0, !5, i64 8}
!34 = !{!"long", !6, i64 0}
!35 = !{!"_CEvent", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!36 = !{!"_CSemaphore", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!37 = !{!"", !6, i64 0}
!38 = !{!"p1 _ZTS13_CMatchFinder", !28, i64 0}
!39 = !{!"_CMatchFinder", !30, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !31, i64 40, !31, i64 48, !5, i64 56, !5, i64 60, !30, i64 64, !28, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !34, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !6, i64 140}
!40 = !{!"p1 short", !28, i64 0}
!41 = !{!"", !42, i64 0, !6, i64 1028, !5, i64 18436, !6, i64 18440}
!42 = !{!"", !24, i64 0, !24, i64 2, !6, i64 4, !6, i64 260, !6, i64 516}
!43 = !{!"", !5, i64 0, !6, i64 4, !44, i64 8, !44, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !28, i64 48, !44, i64 56, !5, i64 64}
!44 = !{!"long long", !6, i64 0}
!45 = !{!"", !40, i64 0, !6, i64 8, !6, i64 392, !6, i64 416, !6, i64 440, !6, i64 464, !6, i64 488, !6, i64 872, !6, i64 1384, !6, i64 1612, !41, i64 1644, !41, i64 20148, !6, i64 38652, !5, i64 38668}
!46 = !{!45, !5, i64 38668}
!47 = !{!45, !40, i64 0}
!48 = !{!26, !40, i64 213576}
!49 = !{!26, !5, i64 252228}
!50 = !{!26, !5, i64 252344}
!51 = !{!26, !5, i64 252348}
!52 = !{!26, !5, i64 210384}
!53 = !{!26, !5, i64 213556}
!54 = !{!26, !5, i64 213560}
!55 = !{!26, !5, i64 213564}
!56 = !{!26, !5, i64 252232}
!57 = !{!26, !5, i64 1672}
!58 = !{!26, !5, i64 1656}
!59 = !{!26, !5, i64 1620}
!60 = !{!26, !5, i64 252312}
!61 = !{!26, !5, i64 252336}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{!64, !63}
!65 = !{!26, !38, i64 1552}
!66 = !{!26, !40, i64 252360}
!67 = !{!68, !28, i64 0}
!68 = !{!"", !28, i64 0, !28, i64 8}
!69 = !{!68, !28, i64 8}
!70 = !{ptr @LzmaEnc_FreeLits}
!71 = !{!43, !30, i64 40}
!72 = distinct !{null}
!73 = !{ptr @LzmaEnc_Destruct, ptr @LzmaEnc_FreeLits}
!74 = distinct !{ptr @LzmaEnc_Destruct, null}
!75 = !{!43, !44, i64 8}
!76 = !{!43, !5, i64 0}
!77 = !{!43, !44, i64 16}
!78 = !{!43, !6, i64 4}
!79 = !{!43, !30, i64 24}
!80 = !{!43, !44, i64 56}
!81 = !{!43, !5, i64 64}
!82 = distinct !{!82, !63, !83, !84}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!42, !24, i64 2}
!86 = !{!42, !24, i64 0}
!87 = !{!26, !5, i64 2856}
!88 = !{!26, !5, i64 2860}
!89 = !{!26, !5, i64 210388}
!90 = !{!26, !5, i64 213572}
!91 = !{!26, !5, i64 213568}
!92 = distinct !{!92, !63, !84, !83}
!93 = distinct !{!93, !63}
!94 = !{!26, !5, i64 213548}
!95 = !{!26, !5, i64 252160}
!96 = !{!26, !5, i64 233656}
!97 = distinct !{!97, !63}
!98 = !{!26, !5, i64 213552}
!99 = distinct !{!99, !63}
!100 = distinct !{!100, !63}
!101 = distinct !{!101, !63}
!102 = distinct !{!102, !63}
!103 = distinct !{!103, !63}
!104 = distinct !{!104, !63}
!105 = !{!26, !5, i64 252328}
!106 = !{!26, !28, i64 1632}
!107 = !{!26, !5, i64 252352}
!108 = !{!26, !5, i64 252332}
!109 = !{!26, !5, i64 252340}
!110 = distinct !{null, null}
!111 = !{!43, !30, i64 32}
!112 = !{!26, !5, i64 56}
!113 = distinct !{null, ptr @LzmaEnc_FreeLits}
!114 = distinct !{null}
!115 = !{!26, !5, i64 1676}
!116 = !{!26, !28, i64 48}
!117 = !{!26, !44, i64 252320}
!118 = !{!26, !5, i64 1660}
!119 = !{!26, !30, i64 1624}
!120 = !{!26, !34, i64 1664}
!121 = !{!26, !28, i64 16}
!122 = !{!26, !28, i64 24}
!123 = !{!124, !28, i64 0}
!124 = !{!"", !125, i64 0, !30, i64 8, !34, i64 16, !5, i64 24}
!125 = !{!"", !28, i64 0}
!126 = !{!124, !30, i64 8}
!127 = !{!34, !34, i64 0}
!128 = !{!124, !34, i64 16}
!129 = !{!124, !5, i64 24}
!130 = !{!26, !28, i64 252288}
!131 = !{!26, !28, i64 0}
!132 = !{!26, !5, i64 252304}
!133 = !{!26, !5, i64 1696}
!134 = distinct !{null}
!135 = !{!26, !5, i64 2872}
!136 = !{!26, !28, i64 32}
!137 = !{!26, !28, i64 8}
!138 = distinct !{!138, !63}
!139 = distinct !{null, null}
!140 = distinct !{!140, !63}
!141 = !{!26, !5, i64 2864}
!142 = !{!26, !5, i64 2868}
!143 = distinct !{null}
!144 = distinct !{!144, !63}
!145 = distinct !{!145, !63}
!146 = distinct !{!146, !63}
!147 = !{!26, !28, i64 40}
!148 = !{!149, !5, i64 24}
!149 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32}
!150 = !{!149, !5, i64 28}
!151 = distinct !{null, null}
!152 = distinct !{null}
!153 = distinct !{!153, !63}
!154 = distinct !{null, null}
!155 = !{!149, !5, i64 4}
!156 = distinct !{!156, !63}
!157 = !{!149, !5, i64 0}
!158 = !{!149, !5, i64 8}
!159 = distinct !{!159, !160}
!160 = !{!"llvm.loop.unroll.disable"}
!161 = distinct !{!161, !63}
!162 = distinct !{!162, !63}
!163 = distinct !{!163, !63}
!164 = !{!149, !5, i64 12}
!165 = distinct !{!165, !63}
!166 = !{!149, !5, i64 16}
!167 = !{!149, !5, i64 20}
!168 = distinct !{!168, !63}
!169 = distinct !{!169, !63}
!170 = distinct !{!170, !160}
!171 = distinct !{!171, !63}
!172 = distinct !{!172, !63}
!173 = distinct !{!173, !160}
!174 = distinct !{!174, !63}
!175 = distinct !{!175, !63}
!176 = distinct !{!176, !63}
!177 = distinct !{!177, !160}
!178 = distinct !{!178, !63}
!179 = distinct !{!179, !63}
end_hunk_1
