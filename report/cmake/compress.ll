Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/compress?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BZ2_compressBlock:bb.a
  %i.bcl = load i16, ptr %i.bck, align 2, !tbaa !79
  %i.bcm = zext i16 %i.bcl to i64
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %i.bcm ; 2 uses
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !74
  %i.bcp = add nsw i32 %i.bco, 1
  store i32 %i.bcp, ptr %i.bcn, align 4, !tbaa !74
  %i.bcq = getelementptr i8, ptr %i.ari, i64 98
  %i.bcr = load i16, ptr %i.bcq, align 2, !tbaa !79
  %i.bcs = zext i16 %i.bcr to i64
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %i.bcs ; 2 uses
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !74
  %i.bcv = add nsw i32 %i.bcu, 1
  store i32 %i.bcv, ptr %i.bct, align 4, !tbaa !74
  br label %.loopexit1971.i

.lr.ph2140.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph2140.i.new
  %indvars.iv2391.i = phi i64 [ %indvars.iv.next2392.i.3, %.lr.ph2140.i.new ], [ %indvars.iv2391.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bcw = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bcx = load i16, ptr %i.bcw, align 2, !tbaa !79
  %i.bcy = zext i16 %i.bcx to i64
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bcy ; 2 uses
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !74
  %i.bdb = add nsw i32 %i.bda, 1
  store i32 %i.bdb, ptr %i.bcz, align 4, !tbaa !74
  %i.bdc = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 2
  %i.bde = load i16, ptr %i.bdd, align 2, !tbaa !79
  %i.bdf = zext i16 %i.bde to i64
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bdf ; 2 uses
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !74
  %i.bdi = add nsw i32 %i.bdh, 1
  store i32 %i.bdi, ptr %i.bdg, align 4, !tbaa !74
  %i.bdj = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bdk = getelementptr i8, ptr %i.bdj, i64 4
  %i.bdl = load i16, ptr %i.bdk, align 2, !tbaa !79
  %i.bdm = zext i16 %i.bdl to i64
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bdm ; 2 uses
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !74
  %i.bdp = add nsw i32 %i.bdo, 1
  store i32 %i.bdp, ptr %i.bdn, align 4, !tbaa !74
  %i.bdq = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bdr = getelementptr i8, ptr %i.bdq, i64 6
  %i.bds = load i16, ptr %i.bdr, align 2, !tbaa !79
  %i.bdt = zext i16 %i.bds to i64
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bdt ; 2 uses
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !74
  %i.bdw = add nsw i32 %i.bdv, 1
  store i32 %i.bdw, ptr %i.bdu, align 4, !tbaa !74
  %indvars.iv.next2392.i.3 = add nsw i64 %indvars.iv2391.i, 4 ; 2 uses
  %lftr.wideiv2395.i.3 = trunc i64 %indvars.iv.next2392.i.3 to i32
  %exitcond2396.not.i.3 = icmp eq i32 %i.aqv, %lftr.wideiv2395.i.3
  br i1 %exitcond2396.not.i.3, label %.loopexit1971.i, label %.lr.ph2140.i.new, !llvm.loop !39

.loopexit1971.i:                                  ; preds = %.prol.loopexit, %.lr.ph2140.i.new, %bb.bb, %.preheader1970.i
  %i.bdx = add nsw i32 %spec.select.i127, 1       ; 2 uses
  %i.bdy = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not1510.i = icmp slt i32 %i.bdx, %i.bdy
  br i1 %.not1510.i, label %.lr.ph2146.i, label %._crit_edge2147.loopexit.i

._crit_edge2147.loopexit.i:                       ; preds = %.loopexit1971.i
  %i.bdz = trunc nuw i64 %indvars.iv.next2398.i to i32
  %i.bea = lshr i32 %i.aqm, 3
  br label %._crit_edge2147.i

._crit_edge2147.i:                                ; preds = %._crit_edge2147.loopexit.i, %.loopexit1976.i
  %.11488.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bdz, %._crit_edge2147.loopexit.i ] ; 6 uses
  %.01476.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bea, %._crit_edge2147.loopexit.i ]
  %i.beb = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.bec = icmp sgt i32 %i.beb, 2
  br i1 %i.bec, label %bb.bc, label %.preheader

bb.bc:                                            ; preds = %._crit_edge2147.i
  %i.bed = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.bee = add nuw nsw i32 %.014892152.i, 1
  %i.bef = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bed, ptr noundef nonnull @.str.4, i32 noundef %i.bee, i32 noundef %.01476.lcssa.i) #10 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv2400.i = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next2401.i, %bb.bd ] ; 2 uses
  %i.beg = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2400.i
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !74
  %i.bej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.beg, ptr noundef nonnull @.str.5, i32 noundef %i.bei) #10 ; 0 uses
  %indvars.iv.next2401.i = add nuw nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %i.ow
  br i1 %exitcond2404.not.i, label %bb.be, label %bb.bd, !llvm.loop !40

bb.be:                                            ; preds = %bb.bd
  %i.bek = load ptr, ptr @stderr, align 8, !tbaa !66
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bek)  ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.be, %._crit_edge2147.i
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv2405.i = phi i64 [ %indvars.iv.next2406.i, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %i.bel = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2405.i
  %i.bem = getelementptr inbounds nuw [1032 x i8], ptr %i.oy, i64 %indvars.iv2405.i
  call void @BZ2_hbMakeCodeLengths(ptr noundef nonnull %i.bel, ptr noundef nonnull %i.bem, i32 noundef %i.oe, i32 noundef 17) #11
  %indvars.iv.next2406.i = add nuw nsw i64 %indvars.iv2405.i, 1 ; 2 uses
  %exitcond2409.not.i = icmp eq i64 %indvars.iv.next2406.i, %i.ow
  br i1 %exitcond2409.not.i, label %bb.bg, label %bb.bf, !llvm.loop !41

bb.bg:                                            ; preds = %bb.bf
  %i.ben = add nuw nsw i32 %.014892152.i, 1       ; 2 uses
  %exitcond2410.not.i = icmp eq i32 %i.ben, 4
  br i1 %exitcond2410.not.i, label %bb.bh, label %.preheader1978.i, !llvm.loop !42

bb.bh:                                            ; preds = %bb.bg
  %i.beo = icmp slt i32 %.11488.lcssa.i, 18003
  br i1 %i.beo, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @BZ2_bz__AssertH__fail(i32 noundef 3003) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %min.iters.check1138 = icmp samesign ult i32 %.01481.i, 4
  br i1 %min.iters.check1138, label %scalar.ph1137.preheader, label %vector.body1141

vector.body1141:                                  ; preds = %bb.bj
  %n.vec1140 = and i64 %i.ow, 4                   ; 2 uses
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.c, align 4, !tbaa !19
  %cmp.n1147 = icmp eq i64 %n.vec1140, %i.ow
  br i1 %cmp.n1147, label %.preheader1969.i, label %scalar.ph1137.preheader

scalar.ph1137.preheader:                          ; preds = %bb.bj, %vector.body1141
  %indvars.iv2411.i.ph = phi i64 [ 0, %bb.bj ], [ %n.vec1140, %vector.body1141 ]
  br label %scalar.ph1137

.preheader1969.i:                                 ; preds = %scalar.ph1137, %vector.body1141
  %i.bep = icmp sgt i32 %.11488.lcssa.i, 0        ; 2 uses
  br i1 %i.bep, label %.lr.ph2165.i, label %._crit_edge2166.i

.lr.ph2165.i:                                     ; preds = %.preheader1969.i
  %.promoted.i = load i8, ptr %i.c, align 4
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 19706
  %wide.trip.count2421.i = zext nneg i32 %.11488.lcssa.i to i64
  br label %bb.bk

scalar.ph1137:                                    ; preds = %scalar.ph1137.preheader, %scalar.ph1137
  %indvars.iv2411.i = phi i64 [ %indvars.iv.next2412.i, %scalar.ph1137 ], [ %indvars.iv2411.i.ph, %scalar.ph1137.preheader ] ; 3 uses
  %i.ber = trunc i64 %indvars.iv2411.i to i8
  %i.bes = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv2411.i
  store i8 %i.ber, ptr %i.bes, align 1, !tbaa !19
  %indvars.iv.next2412.i = add nuw nsw i64 %indvars.iv2411.i, 1 ; 2 uses
  %exitcond2415.not.i = icmp eq i64 %indvars.iv.next2412.i, %i.ow
  br i1 %exitcond2415.not.i, label %.preheader1969.i, label %scalar.ph1137, !llvm.loop !43

bb.bk:                                            ; preds = %._crit_edge2159.i, %.lr.ph2165.i
  %indvars.iv2418.i = phi i64 [ 0, %.lr.ph2165.i ], [ %indvars.iv.next2419.i, %._crit_edge2159.i ] ; 3 uses
  %.01464.lcssa21622163.i = phi i8 [ %.promoted.i, %.lr.ph2165.i ], [ %.01464.lcssa.i, %._crit_edge2159.i ] ; 3 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2418.i
  %i.beu = load i8, ptr %i.bet, align 1, !tbaa !19 ; 3 uses
  %.not15092154.i = icmp eq i8 %i.beu, %.01464.lcssa21622163.i
  br i1 %.not15092154.i, label %._crit_edge2159.i, label %.lr.ph2158.i

.lr.ph2158.i:                                     ; preds = %bb.bk, %.lr.ph2158.i
  %indvars.iv2416.i = phi i64 [ %indvars.iv.next2417.i, %.lr.ph2158.i ], [ 0, %bb.bk ]
  %.014642156.i = phi i8 [ %i.bew, %.lr.ph2158.i ], [ %.01464.lcssa21622163.i, %bb.bk ]
  %indvars.iv.next2417.i = add nuw nsw i64 %indvars.iv2416.i, 1 ; 3 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next2417.i ; 2 uses
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !19 ; 2 uses
  store i8 %.014642156.i, ptr %i.bev, align 1, !tbaa !19
  %.not1509.i = icmp eq i8 %i.beu, %i.bew
  br i1 %.not1509.i, label %._crit_edge2159.loopexit.i, label %.lr.ph2158.i, !llvm.loop !44

._crit_edge2159.loopexit.i:                       ; preds = %.lr.ph2158.i
  %i.bex = trunc i64 %indvars.iv.next2417.i to i8
  br label %._crit_edge2159.i

._crit_edge2159.i:                                ; preds = %._crit_edge2159.loopexit.i, %bb.bk
  %.01465.lcssa.i = phi i8 [ 0, %bb.bk ], [ %i.bex, %._crit_edge2159.loopexit.i ]
  %.01464.lcssa.i = phi i8 [ %.01464.lcssa21622163.i, %bb.bk ], [ %i.beu, %._crit_edge2159.loopexit.i ]
  %i.bey = getelementptr inbounds nuw i8, ptr %i.beq, i64 %indvars.iv2418.i
  store i8 %.01465.lcssa.i, ptr %i.bey, align 1, !tbaa !19
  %indvars.iv.next2419.i = add nuw nsw i64 %indvars.iv2418.i, 1 ; 2 uses
  %exitcond2422.not.i = icmp eq i64 %indvars.iv.next2419.i, %wide.trip.count2421.i
  br i1 %exitcond2422.not.i, label %._crit_edge2166.i, label %bb.bk, !llvm.loop !45

._crit_edge2166.i:                                ; preds = %._crit_edge2159.i, %.preheader1969.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bez = getelementptr inbounds nuw i8, ptr %0, i64 39256 ; 3 uses
  %min.iters.check1150 = icmp slt i32 %i.oe, 8
  %n.vec1152 = and i64 %wide.trip.count.i122, 2147483640 ; 3 uses
  %cmp.n1163 = icmp eq i64 %n.vec1152, %wide.trip.count.i122
  br label %.preheader1968.i

.preheader1968.i:                                 ; preds = %.thread.i, %._crit_edge2166.i
  %indvars.iv2428.i = phi i64 [ 0, %._crit_edge2166.i ], [ %indvars.iv.next2429.i, %.thread.i ] ; 4 uses
  br i1 %i.of, label %.lr.ph2171.i, label %.thread.i

.lr.ph2171.i:                                     ; preds = %.preheader1968.i
  %i.bfa = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2428.i ; 2 uses
  br i1 %min.iters.check1150, label %scalar.ph1149.preheader, label %vector.body1153

vector.body1153:                                  ; preds = %.lr.ph2171.i, %vector.body1153
  %index1154 = phi i64 [ %index.next1160, %vector.body1153 ], [ 0, %.lr.ph2171.i ] ; 2 uses
  %vec.phi = phi <4 x i8> [ %2, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1155 = phi <4 x i8> [ %3, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1156 = phi <4 x i8> [ %4, %vector.body1153 ], [ splat (i8 32), %.lr.ph2171.i ]
  %vec.phi1157 = phi <4 x i8> [ %5, %vector.body1153 ], [ splat (i8 32), %.lr.ph2171.i ]
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %index1154 ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 4
  %wide.load1158 = load <4 x i8>, ptr %i.bfb, align 1, !tbaa !19 ; 2 uses
  %wide.load1159 = load <4 x i8>, ptr %i.bfc, align 1, !tbaa !19 ; 2 uses
  %2 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi, <4 x i8> %wide.load1158) ; 2 uses
  %3 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi1155, <4 x i8> %wide.load1159) ; 2 uses
  %4 = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi1156, <4 x i8> %wide.load1158) ; 2 uses
  %5 = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi1157, <4 x i8> %wide.load1159) ; 2 uses
  %index.next1160 = add nuw i64 %index1154, 8     ; 2 uses
  %i.bfd = icmp eq i64 %index.next1160, %n.vec1152
  br i1 %i.bfd, label %middle.block1161, label %vector.body1153, !llvm.loop !46

middle.block1161:                                 ; preds = %vector.body1153
  %rdx.minmax = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %2, <4 x i8> %3)
  %6 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax)
  %7 = zext i8 %6 to i32                          ; 2 uses
  %rdx.minmax1162 = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %4, <4 x i8> %5)
  %8 = call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %rdx.minmax1162)
  %9 = zext nneg i8 %8 to i32                     ; 2 uses
  br i1 %cmp.n1163, label %._crit_edge2172.i, label %scalar.ph1149.preheader

scalar.ph1149.preheader:                          ; preds = %.lr.ph2171.i, %middle.block1161
  %indvars.iv2423.i.ph = phi i64 [ 0, %.lr.ph2171.i ], [ %n.vec1152, %middle.block1161 ]
  %.014832169.i.ph = phi i32 [ 0, %.lr.ph2171.i ], [ %7, %middle.block1161 ]
  %.014852168.i.ph = phi i32 [ 32, %.lr.ph2171.i ], [ %9, %middle.block1161 ]
  br label %scalar.ph1149

scalar.ph1149:                                    ; preds = %scalar.ph1149.preheader, %scalar.ph1149
  %indvars.iv2423.i = phi i64 [ %indvars.iv.next2424.i, %scalar.ph1149 ], [ %indvars.iv2423.i.ph, %scalar.ph1149.preheader ] ; 2 uses
  %.014832169.i = phi i32 [ %spec.select1524.i, %scalar.ph1149 ], [ %.014832169.i.ph, %scalar.ph1149.preheader ]
  %.014852168.i = phi i32 [ %.11486.i, %scalar.ph1149 ], [ %.014852168.i.ph, %scalar.ph1149.preheader ]
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %indvars.iv2423.i
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !19
  %i.bfg = zext i8 %i.bff to i32                  ; 2 uses
  %spec.select1524.i = call i32 @llvm.umax.i32(i32 %.014832169.i, i32 %i.bfg) ; 2 uses
  %.11486.i = call i32 @llvm.umin.i32(i32 %.014852168.i, i32 %i.bfg) ; 2 uses
  %indvars.iv.next2424.i = add nuw nsw i64 %indvars.iv2423.i, 1 ; 2 uses
  %exitcond2427.not.i = icmp eq i64 %indvars.iv.next2424.i, %wide.trip.count.i122
  br i1 %exitcond2427.not.i, label %._crit_edge2172.i, label %scalar.ph1149, !llvm.loop !47

._crit_edge2172.i:                                ; preds = %scalar.ph1149, %middle.block1161
  %spec.select1524.i.lcssa = phi i32 [ %7, %middle.block1161 ], [ %spec.select1524.i, %scalar.ph1149 ] ; 3 uses
  %.11486.i.lcssa = phi i32 [ %9, %middle.block1161 ], [ %.11486.i, %scalar.ph1149 ] ; 2 uses
  %i.bfh = icmp samesign ugt i32 %spec.select1524.i.lcssa, 17
  br i1 %i.bfh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge2172.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3004) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge2172.i
  %i.bfi = icmp eq i32 %.11486.i.lcssa, 0
  br i1 %i.bfi, label %bb.bn, label %.thread.i

bb.bn:                                            ; preds = %bb.bm
  call void @BZ2_bz__AssertH__fail(i32 noundef 3005) #11
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bn, %bb.bm, %.preheader1968.i
  %.01485.lcssa26172622.i = phi i32 [ %.11486.i.lcssa, %bb.bm ], [ 0, %bb.bn ], [ 32, %.preheader1968.i ]
  %.01483.lcssa26182621.i = phi i32 [ %spec.select1524.i.lcssa, %bb.bm ], [ %spec.select1524.i.lcssa, %bb.bn ], [ 0, %.preheader1968.i ]
  %i.bfj = getelementptr inbounds nuw [1032 x i8], ptr %i.bez, i64 %indvars.iv2428.i
  %i.bfk = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2428.i
  call void @BZ2_hbAssignCodes(ptr noundef nonnull %i.bfj, ptr noundef nonnull %i.bfk, i32 noundef %.01485.lcssa26172622.i, i32 noundef %.01483.lcssa26182621.i, i32 noundef %i.oe) #11
  %indvars.iv.next2429.i = add nuw nsw i64 %indvars.iv2428.i, 1 ; 2 uses
  %exitcond2432.not.i = icmp eq i64 %indvars.iv.next2429.i, %i.ow
  br i1 %exitcond2432.not.i, label %vector.ph1167, label %.preheader1968.i, !llvm.loop !48

vector.ph1167:                                    ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bfn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bfo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bfp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bfv = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bfw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bfx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bfy = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bfz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bga = load i8, ptr %i.jt, align 8, !tbaa !19
  %i.bgb = load i8, ptr %i.bfl, align 8, !tbaa !19
  %i.bgc = load i8, ptr %i.bfm, align 8, !tbaa !19
  %i.bgd = load i8, ptr %i.bfn, align 8, !tbaa !19
  %i.bge = load i8, ptr %i.bfo, align 8, !tbaa !19
  %i.bgf = load i8, ptr %i.bfp, align 8, !tbaa !19
  %i.bgg = load i8, ptr %i.bfq, align 8, !tbaa !19
  %i.bgh = load i8, ptr %i.bfr, align 8, !tbaa !19
  %i.bgi = load i8, ptr %i.bfs, align 8, !tbaa !19
  %i.bgj = load i8, ptr %i.bft, align 8, !tbaa !19
  %i.bgk = load i8, ptr %i.bfu, align 8, !tbaa !19
  %i.bgl = load i8, ptr %i.bfv, align 8, !tbaa !19
  %i.bgm = load i8, ptr %i.bfw, align 8, !tbaa !19
  %i.bgn = load i8, ptr %i.bfx, align 8, !tbaa !19
  %i.bgo = load i8, ptr %i.bfy, align 8, !tbaa !19
  %i.bgp = load i8, ptr %i.bfz, align 8, !tbaa !19
  %i.bgq = insertelement <16 x i8> poison, i8 %i.bga, i64 0
  %i.bgr = insertelement <16 x i8> %i.bgq, i8 %i.bgb, i64 1
  %i.bgs = insertelement <16 x i8> %i.bgr, i8 %i.bgc, i64 2
  %i.bgt = insertelement <16 x i8> %i.bgs, i8 %i.bgd, i64 3
  %i.bgu = insertelement <16 x i8> %i.bgt, i8 %i.bge, i64 4
  %i.bgv = insertelement <16 x i8> %i.bgu, i8 %i.bgf, i64 5
  %i.bgw = insertelement <16 x i8> %i.bgv, i8 %i.bgg, i64 6
  %i.bgx = insertelement <16 x i8> %i.bgw, i8 %i.bgh, i64 7
  %i.bgy = insertelement <16 x i8> %i.bgx, i8 %i.bgi, i64 8
  %i.bgz = insertelement <16 x i8> %i.bgy, i8 %i.bgj, i64 9
  %i.bha = insertelement <16 x i8> %i.bgz, i8 %i.bgk, i64 10
  %i.bhb = insertelement <16 x i8> %i.bha, i8 %i.bgl, i64 11
  %i.bhc = insertelement <16 x i8> %i.bhb, i8 %i.bgm, i64 12
  %i.bhd = insertelement <16 x i8> %i.bhc, i8 %i.bgn, i64 13
  %i.bhe = insertelement <16 x i8> %i.bhd, i8 %i.bgo, i64 14
  %i.bhf = insertelement <16 x i8> %i.bhe, i8 %i.bgp, i64 15
  %i.bhg = icmp ne <16 x i8> %i.bhf, zeroinitializer
  %i.bhh = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.bhi = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.bhj = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.bhm = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.bho = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bhs = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.bhu = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.bhv = getelementptr inbounds nuw i8, ptr %0, i64 353
  %i.bhw = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.bhx = load i8, ptr %i.bhh, align 1, !tbaa !19
  %i.bhy = load i8, ptr %i.bhi, align 1, !tbaa !19
  %i.bhz = load i8, ptr %i.bhj, align 1, !tbaa !19
  %i.bia = load i8, ptr %i.bhk, align 1, !tbaa !19
  %i.bib = load i8, ptr %i.bhl, align 1, !tbaa !19
  %i.bic = load i8, ptr %i.bhm, align 1, !tbaa !19
  %i.bid = load i8, ptr %i.bhn, align 1, !tbaa !19
  %i.bie = load i8, ptr %i.bho, align 1, !tbaa !19
  %i.bif = load i8, ptr %i.bhp, align 1, !tbaa !19
  %i.big = load i8, ptr %i.bhq, align 1, !tbaa !19
  %i.bih = load i8, ptr %i.bhr, align 1, !tbaa !19
  %i.bii = load i8, ptr %i.bhs, align 1, !tbaa !19
  %i.bij = load i8, ptr %i.bht, align 1, !tbaa !19
  %i.bik = load i8, ptr %i.bhu, align 1, !tbaa !19
  %i.bil = load i8, ptr %i.bhv, align 1, !tbaa !19
  %i.bim = load i8, ptr %i.bhw, align 1, !tbaa !19
  %i.bin = insertelement <16 x i8> poison, i8 %i.bhx, i64 0
  %i.bio = insertelement <16 x i8> %i.bin, i8 %i.bhy, i64 1
  %i.bip = insertelement <16 x i8> %i.bio, i8 %i.bhz, i64 2
  %i.biq = insertelement <16 x i8> %i.bip, i8 %i.bia, i64 3
  %i.bir = insertelement <16 x i8> %i.biq, i8 %i.bib, i64 4
  %i.bis = insertelement <16 x i8> %i.bir, i8 %i.bic, i64 5
  %i.bit = insertelement <16 x i8> %i.bis, i8 %i.bid, i64 6
  %i.biu = insertelement <16 x i8> %i.bit, i8 %i.bie, i64 7
  %i.biv = insertelement <16 x i8> %i.biu, i8 %i.bif, i64 8
  %i.biw = insertelement <16 x i8> %i.biv, i8 %i.big, i64 9
  %i.bix = insertelement <16 x i8> %i.biw, i8 %i.bih, i64 10
  %i.biy = insertelement <16 x i8> %i.bix, i8 %i.bii, i64 11
  %i.biz = insertelement <16 x i8> %i.biy, i8 %i.bij, i64 12
  %i.bja = insertelement <16 x i8> %i.biz, i8 %i.bik, i64 13
  %i.bjb = insertelement <16 x i8> %i.bja, i8 %i.bil, i64 14
  %i.bjc = insertelement <16 x i8> %i.bjb, i8 %i.bim, i64 15
  %i.bjd = icmp ne <16 x i8> %i.bjc, zeroinitializer
  %i.bje = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.bjh = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.bjj = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.bjk = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.bjl = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 258
  %i.bjn = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.bjo = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.bjp = getelementptr inbounds nuw i8, ptr %0, i64 306
  %i.bjq = getelementptr inbounds nuw i8, ptr %0, i64 322
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.bjs = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.bjt = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.bju = load i8, ptr %i.bje, align 2, !tbaa !19
  %i.bjv = load i8, ptr %i.bjf, align 2, !tbaa !19
  %i.bjw = load i8, ptr %i.bjg, align 2, !tbaa !19
  %i.bjx = load i8, ptr %i.bjh, align 2, !tbaa !19
  %i.bjy = load i8, ptr %i.bji, align 2, !tbaa !19
  %i.bjz = load i8, ptr %i.bjj, align 2, !tbaa !19
  %i.bka = load i8, ptr %i.bjk, align 2, !tbaa !19
  %i.bkb = load i8, ptr %i.bjl, align 2, !tbaa !19
  %i.bkc = load i8, ptr %i.bjm, align 2, !tbaa !19
  %i.bkd = load i8, ptr %i.bjn, align 2, !tbaa !19
  %i.bke = load i8, ptr %i.bjo, align 2, !tbaa !19
  %i.bkf = load i8, ptr %i.bjp, align 2, !tbaa !19
  %i.bkg = load i8, ptr %i.bjq, align 2, !tbaa !19
  %i.bkh = load i8, ptr %i.bjr, align 2, !tbaa !19
  %i.bki = load i8, ptr %i.bjs, align 2, !tbaa !19
  %i.bkj = load i8, ptr %i.bjt, align 2, !tbaa !19
  %i.bkk = insertelement <16 x i8> poison, i8 %i.bju, i64 0
  %i.bkl = insertelement <16 x i8> %i.bkk, i8 %i.bjv, i64 1
  %i.bkm = insertelement <16 x i8> %i.bkl, i8 %i.bjw, i64 2
  %i.bkn = insertelement <16 x i8> %i.bkm, i8 %i.bjx, i64 3
  %i.bko = insertelement <16 x i8> %i.bkn, i8 %i.bjy, i64 4
  %i.bkp = insertelement <16 x i8> %i.bko, i8 %i.bjz, i64 5
  %i.bkq = insertelement <16 x i8> %i.bkp, i8 %i.bka, i64 6
  %i.bkr = insertelement <16 x i8> %i.bkq, i8 %i.bkb, i64 7
  %i.bks = insertelement <16 x i8> %i.bkr, i8 %i.bkc, i64 8
  %i.bkt = insertelement <16 x i8> %i.bks, i8 %i.bkd, i64 9
  %i.bku = insertelement <16 x i8> %i.bkt, i8 %i.bke, i64 10
  %i.bkv = insertelement <16 x i8> %i.bku, i8 %i.bkf, i64 11
  %i.bkw = insertelement <16 x i8> %i.bkv, i8 %i.bkg, i64 12
  %i.bkx = insertelement <16 x i8> %i.bkw, i8 %i.bkh, i64 13
  %i.bky = insertelement <16 x i8> %i.bkx, i8 %i.bki, i64 14
  %i.bkz = insertelement <16 x i8> %i.bky, i8 %i.bkj, i64 15
  %i.bla = icmp ne <16 x i8> %i.bkz, zeroinitializer
  %i.blb = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.blc = getelementptr inbounds nuw i8, ptr %0, i64 147
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.blf = getelementptr inbounds nuw i8, ptr %0, i64 195
  %i.blg = getelementptr inbounds nuw i8, ptr %0, i64 211
  %i.blh = getelementptr inbounds nuw i8, ptr %0, i64 227
  %i.bli = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.blj = getelementptr inbounds nuw i8, ptr %0, i64 259
  %i.blk = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 307
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 323
  %i.blo = getelementptr inbounds nuw i8, ptr %0, i64 339
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 355
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 371
  %i.blr = load i8, ptr %i.blb, align 1, !tbaa !19
  %i.bls = load i8, ptr %i.blc, align 1, !tbaa !19
  %i.blt = load i8, ptr %i.bld, align 1, !tbaa !19
  %i.blu = load i8, ptr %i.ble, align 1, !tbaa !19
  %i.blv = load i8, ptr %i.blf, align 1, !tbaa !19
  %i.blw = load i8, ptr %i.blg, align 1, !tbaa !19
  %i.blx = load i8, ptr %i.blh, align 1, !tbaa !19
  %i.bly = load i8, ptr %i.bli, align 1, !tbaa !19
  %i.blz = load i8, ptr %i.blj, align 1, !tbaa !19
  %i.bma = load i8, ptr %i.blk, align 1, !tbaa !19
end_hunk_0
begin_hunk_1_@bsPutUInt32:bb.a
.._crit_edge_crit_edge.i:                         ; preds = %bb.a
  %.pre16.i = load i32, ptr %i.e, align 8, !tbaa !16
  %i.f = add nsw i32 %i.c, 8
  br label %bsW.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !16
  %.pre15.i = load i32, ptr %i.h, align 4, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = phi i32 [ %.pre15.i, %.lr.ph.i ], [ %i.q, %bb.b ]
  %i.j = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.s, %bb.b ]
  %i.k = lshr i32 %i.j, 24
  %i.l = trunc nuw i32 %i.k to i8
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  store i8 %i.l, ptr %i.o, align 1, !tbaa !19
  %i.p = load i32, ptr %i.h, align 4, !tbaa !17
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !17
  %i.r = load i32, ptr %i.e, align 8, !tbaa !16
  %i.s = shl i32 %i.r, 8                          ; 3 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !16
  %i.t = load i32, ptr %i.b, align 4, !tbaa !15   ; 3 uses
  %i.u = add nsw i32 %i.t, -8
  store i32 %i.u, ptr %i.b, align 4, !tbaa !15
  %i.v = icmp sgt i32 %i.t, 15
  br i1 %i.v, label %bb.b, label %bsW.exit, !llvm.loop !0

bsW.exit:                                         ; preds = %bb.b, %.._crit_edge_crit_edge.i
  %i.w = phi i32 [ %.pre16.i, %.._crit_edge_crit_edge.i ], [ %i.s, %bb.b ]
  %.lcssa.i = phi i32 [ %i.f, %.._crit_edge_crit_edge.i ], [ %i.t, %bb.b ] ; 4 uses
  %i.x = sub i32 32, %.lcssa.i
  %i.y = shl i32 %i.a, %i.x
  %i.z = or i32 %i.y, %i.w                        ; 3 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !16
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !15
  %i.aa = lshr i32 %1, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = icmp sgt i32 %.lcssa.i, 7
  br i1 %i.ac, label %.lr.ph.i10, label %bsW.exit13

.lr.ph.i10:                                       ; preds = %bsW.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i12 = load i32, ptr %i.ae, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i10
  %i.af = phi i32 [ %.pre15.i12, %.lr.ph.i10 ], [ %i.an, %bb.c ]
  %i.ag = phi i32 [ %i.z, %.lr.ph.i10 ], [ %i.ap, %bb.c ]
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !19
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.an, ptr %i.ae, align 4, !tbaa !17
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !16
  %i.ap = shl i32 %i.ao, 8                        ; 3 uses
  store i32 %i.ap, ptr %i.e, align 8, !tbaa !16
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.ar = add nsw i32 %i.aq, -8                   ; 2 uses
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !15
  %i.as = icmp sgt i32 %i.aq, 15
  br i1 %i.as, label %bb.c, label %bsW.exit13, !llvm.loop !0

bsW.exit13:                                       ; preds = %bb.c, %bsW.exit
  %i.at = phi i32 [ %i.z, %bsW.exit ], [ %i.ap, %bb.c ]
  %.lcssa.i9 = phi i32 [ %.lcssa.i, %bsW.exit ], [ %i.ar, %bb.c ] ; 3 uses
  %i.au = add nsw i32 %.lcssa.i9, 8               ; 2 uses
  %i.av = sub i32 24, %.lcssa.i9
  %i.aw = shl i32 %i.ab, %i.av
  %i.ax = or i32 %i.aw, %i.at                     ; 3 uses
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !16
  store i32 %i.au, ptr %i.b, align 4, !tbaa !15
  %i.ay = lshr i32 %1, 8
  %i.az = and i32 %i.ay, 255
  %i.ba = icmp sgt i32 %.lcssa.i9, -1
  br i1 %i.ba, label %.lr.ph.i17, label %bsW.exit20

.lr.ph.i17:                                       ; preds = %bsW.exit13
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i19 = load i32, ptr %i.bc, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i17
  %i.bd = phi i32 [ %.pre15.i19, %.lr.ph.i17 ], [ %i.bl, %bb.d ]
  %i.be = phi i32 [ %i.ax, %.lr.ph.i17 ], [ %i.bn, %bb.d ]
  %i.bf = lshr i32 %i.be, 24
  %i.bg = trunc nuw i32 %i.bf to i8
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !18
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !19
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !17
  %i.bl = add nsw i32 %i.bk, 1                    ; 2 uses
  store i32 %i.bl, ptr %i.bc, align 4, !tbaa !17
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !16
  %i.bn = shl i32 %i.bm, 8                        ; 3 uses
  store i32 %i.bn, ptr %i.e, align 8, !tbaa !16
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -8                   ; 2 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !15
  %i.bq = icmp sgt i32 %i.bo, 15
  br i1 %i.bq, label %bb.d, label %bsW.exit20, !llvm.loop !0

bsW.exit20:                                       ; preds = %bb.d, %bsW.exit13
  %i.br = phi i32 [ %i.ax, %bsW.exit13 ], [ %i.bn, %bb.d ]
  %.lcssa.i16 = phi i32 [ %i.au, %bsW.exit13 ], [ %i.bp, %bb.d ] ; 3 uses
  %i.bs = add nsw i32 %.lcssa.i16, 8              ; 2 uses
  %i.bt = sub i32 24, %.lcssa.i16
  %i.bu = shl i32 %i.az, %i.bt
  %i.bv = or i32 %i.bu, %i.br                     ; 3 uses
  store i32 %i.bv, ptr %i.e, align 8, !tbaa !16
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !15
  %i.bw = icmp sgt i32 %.lcssa.i16, -1
  br i1 %i.bw, label %.lr.ph.i24, label %bsW.exit27

.lr.ph.i24:                                       ; preds = %bsW.exit20
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i26 = load i32, ptr %i.by, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i24
  %i.bz = phi i32 [ %.pre15.i26, %.lr.ph.i24 ], [ %i.ch, %bb.e ]
  %i.ca = phi i32 [ %i.bv, %.lr.ph.i24 ], [ %i.cj, %bb.e ]
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.ce = sext i32 %i.bz to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !19
  %i.cg = load i32, ptr %i.by, align 4, !tbaa !17
  %i.ch = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.by, align 4, !tbaa !17
  %i.ci = load i32, ptr %i.e, align 8, !tbaa !16
  %i.cj = shl i32 %i.ci, 8                        ; 3 uses
  store i32 %i.cj, ptr %i.e, align 8, !tbaa !16
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.cl = add nsw i32 %i.ck, -8                   ; 2 uses
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !15
  %i.cm = icmp sgt i32 %i.ck, 15
  br i1 %i.cm, label %bb.e, label %bsW.exit27, !llvm.loop !0

bsW.exit27:                                       ; preds = %bb.e, %bsW.exit20
  %i.cn = phi i32 [ %i.bv, %bsW.exit20 ], [ %i.cj, %bb.e ]
  %.lcssa.i23 = phi i32 [ %i.bs, %bsW.exit20 ], [ %i.cl, %bb.e ] ; 2 uses
  %i.co = and i32 %1, 255
  %i.cp = add nsw i32 %.lcssa.i23, 8
  %i.cq = sub i32 24, %.lcssa.i23
  %i.cr = shl i32 %i.co, %i.cq
  %i.cs = or i32 %i.cr, %i.cn
  store i32 %i.cs, ptr %i.e, align 8, !tbaa !16
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @BZ2_bz__AssertH__fail(i32 noundef) local_unnamed_addr #3

declare void @BZ2_hbMakeCodeLengths(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BZ2_hbAssignCodes(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umin.v4i8(<4 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"p1 short", !10, i64 0}
!14 = !{!"", !10, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !7, i64 48, !11, i64 56, !12, i64 64, !13, i64 72, !12, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !6, i64 128, !6, i64 384, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !6, i64 672, !6, i64 1704, !6, i64 19706, !6, i64 37708, !6, i64 39256, !6, i64 45448, !6, i64 51640}
!15 = !{!14, !7, i64 644}
!16 = !{!14, !7, i64 640}
!17 = !{!14, !7, i64 116}
!18 = !{!14, !12, i64 80}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20, !75, !76}
!23 = distinct !{!23, !20, !75, !76}
!24 = distinct !{!24, !20, !76, !75}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20, !75, !76}
!29 = distinct !{!29, !20, !75, !76}
!30 = distinct !{!30, !20, !76, !75}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !82}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20, !76, !75}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !82}
!38 = distinct !{!38, !82}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20, !76, !75}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20, !75, !76}
!47 = distinct !{!47, !20, !76, !75}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = !{!14, !7, i64 108}
!61 = !{!14, !7, i64 648}
!62 = !{!14, !7, i64 652}
!63 = !{!14, !7, i64 660}
!64 = !{!14, !7, i64 656}
!65 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!14, !11, i64 32}
!68 = !{!14, !7, i64 664}
!69 = !{!14, !7, i64 48}
!70 = !{!14, !11, i64 56}
!71 = !{!14, !12, i64 64}
!72 = !{!14, !13, i64 72}
!73 = !{!14, !7, i64 124}
!74 = !{!7, !7, i64 0}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!"branch_weights", i32 8, i32 24}
!78 = !{!"short", !6, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!14, !7, i64 668}
!81 = !{!"branch_weights", i32 8, i32 8}
!82 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
