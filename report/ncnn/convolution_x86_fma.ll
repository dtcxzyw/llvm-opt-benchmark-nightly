Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
.preheader1106.i:                                 ; preds = %.preheader1106.i.preheader, %._crit_edge.i
  %.98981245.i = phi ptr [ %.lcssa695, %._crit_edge.i ], [ %.6895.lcssa.i, %.preheader1106.i.preheader ] ; 6 uses
  %.39491244.i = phi i32 [ %i.bdx, %._crit_edge.i ], [ %.2948.lcssa.i, %.preheader1106.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader1106.i
  %scevgep = getelementptr i8, ptr %.98981245.i, i64 %i.ajs
  %i.bcy = insertelement <8 x ptr> poison, ptr %.98981245.i, i64 0
  %i.bcz = shufflevector <8 x ptr> %i.bcy, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bda = icmp ult <8 x ptr> %i.bcz, %i.bcp
  %i.bdb = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.bdc = shufflevector <8 x ptr> %i.bdb, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bdd = icmp ult <8 x ptr> %i.bcx, %i.bdc
  %i.bde = and <8 x i1> %i.bda, %i.bdd
  %i.bdf = bitcast <8 x i1> %i.bde to i8
  %.not1244 = icmp eq i8 %i.bdf, 0
  br i1 %.not1244, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.bdg = getelementptr i8, ptr %.98981245.i, i64 %i.aju ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bdh = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98981245.i, i64 %i.bdh
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %index
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %index
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %index
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %index
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %index
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %index
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %index
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.bdi, align 4, !tbaa !56, !alias.scope !257
  %wide.load731 = load <8 x float>, ptr %i.bdj, align 4, !tbaa !56, !alias.scope !258
  %wide.load732 = load <8 x float>, ptr %i.bdk, align 4, !tbaa !56, !alias.scope !259
  %wide.load733 = load <8 x float>, ptr %i.bdl, align 4, !tbaa !56, !alias.scope !260
  %wide.load734 = load <8 x float>, ptr %i.bdm, align 4, !tbaa !56, !alias.scope !261
  %wide.load735 = load <8 x float>, ptr %i.bdn, align 4, !tbaa !56, !alias.scope !262
  %wide.load736 = load <8 x float>, ptr %i.bdo, align 4, !tbaa !56, !alias.scope !263
  %wide.load737 = load <8 x float>, ptr %i.bdp, align 4, !tbaa !56, !alias.scope !264
  %i.bdq = shufflevector <8 x float> %wide.load, <8 x float> %wide.load731, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdr = shufflevector <8 x float> %wide.load732, <8 x float> %wide.load733, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bds = shufflevector <8 x float> %wide.load734, <8 x float> %wide.load735, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdt = shufflevector <8 x float> %wide.load736, <8 x float> %wide.load737, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdu = shufflevector <16 x float> %i.bdq, <16 x float> %i.bdr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdv = shufflevector <16 x float> %i.bds, <16 x float> %i.bdt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.bdu, <32 x float> %i.bdv, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !56, !alias.scope !265, !noalias !266
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bdw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdw, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1106.i, %middle.block
  %indvars.iv1679.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader1106.i ], [ %n.vec, %middle.block ]
  %.108991243.i.ph = phi ptr [ %.98981245.i, %vector.memcheck ], [ %.98981245.i, %.preheader1106.i ], [ %i.bdg, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa695 = phi ptr [ %i.bdg, %middle.block ], [ %i.bev, %scalar.ph ]
  %i.bdx = add nuw nsw i32 %.39491244.i, 1        ; 2 uses
  %exitcond1684.not.i = icmp eq i32 %i.bdx, %i.cj
  br i1 %exitcond1684.not.i, label %._crit_edge1246.split.i, label %.preheader1106.i, !llvm.loop !150

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1679.i = phi i64 [ %indvars.iv.next1680.i, %scalar.ph ], [ %indvars.iv1679.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108991243.i = phi ptr [ %i.bev, %scalar.ph ], [ %.108991243.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %indvars.iv1679.i
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %indvars.iv1679.i
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %indvars.iv1679.i
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %indvars.iv1679.i
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %indvars.iv1679.i
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %indvars.iv1679.i
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %indvars.iv1679.i
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %indvars.iv1679.i
  %i.beg = load float, ptr %i.bdy, align 4, !tbaa !56
  store float %i.beg, ptr %.108991243.i, align 4, !tbaa !56
  %i.beh = load float, ptr %i.bdz, align 4, !tbaa !56
  %i.bei = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 4
  store float %i.beh, ptr %i.bei, align 4, !tbaa !56
  %i.bej = load float, ptr %i.bea, align 4, !tbaa !56
  %i.bek = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 8
  store float %i.bej, ptr %i.bek, align 4, !tbaa !56
  %i.bel = load float, ptr %i.beb, align 4, !tbaa !56
  %i.bem = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 12
  store float %i.bel, ptr %i.bem, align 4, !tbaa !56
  %i.ben = load float, ptr %i.bec, align 4, !tbaa !56
  %i.beo = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 16
  store float %i.ben, ptr %i.beo, align 4, !tbaa !56
  %i.bep = load float, ptr %i.bed, align 4, !tbaa !56
  %i.beq = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 20
  store float %i.bep, ptr %i.beq, align 4, !tbaa !56
  %i.ber = load float, ptr %i.bee, align 4, !tbaa !56
  %i.bes = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 24
  store float %i.ber, ptr %i.bes, align 4, !tbaa !56
  %i.bet = load float, ptr %i.bef, align 4, !tbaa !56
  %i.beu = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 28
  store float %i.bet, ptr %i.beu, align 4, !tbaa !56
  %i.bev = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 32 ; 2 uses
  %indvars.iv.next1680.i = add nuw nsw i64 %indvars.iv1679.i, 1 ; 2 uses
  %exitcond1683.not.i = icmp eq i64 %indvars.iv.next1680.i, %wide.trip.count.i
  br i1 %exitcond1683.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !151

._crit_edge1246.split.i:                          ; preds = %._crit_edge.i, %.preheader1110.i, %.preheader1107.lr.ph.i
  %indvars.iv.next1686.i = add nuw nsw i64 %indvars.iv1685.i, 8 ; 3 uses
  %i.bew = or disjoint i64 %indvars.iv.next1686.i, 7
  %i.bex = icmp samesign ult i64 %i.bew, %i.ajp
  %indvars.iv.next.i228 = add i32 %indvars.iv.i227, %i.ajf
  %indvars.iv.next1623.i = add i32 %indvars.iv1622.i, %i.ajf
  %indvars.iv.next1627.i = add i32 %indvars.iv1626.i, %i.ajf
  %indvars.iv.next1631.i = add i32 %indvars.iv1630.i, %i.ajf
  %indvars.iv.next1635.i = add i32 %indvars.iv1634.i, %i.ajf
  %indvars.iv.next1639.i = add i32 %indvars.iv1638.i, %i.ajf
  %indvars.iv.next1643.i = add i32 %indvars.iv1642.i, %i.ajf
  %indvars.iv.next1647.i = add i32 %indvars.iv1646.i, %i.ajf
  br i1 %i.bex, label %_ZN4ncnn3MatD2Ev.exit1007.i, label %.preheader1105.loopexit.i, !llvm.loop !152

.preheader1097.loopexit.i:                        ; preds = %._crit_edge1339.split.i
  %i.bey = trunc nuw nsw i64 %indvars.iv.next1738.i to i32
  br label %.preheader1097.i

.preheader1097.i:                                 ; preds = %.preheader1097.loopexit.i, %.preheader1105.i
  %.1836.lcssa.i = phi i32 [ %.0835.lcssa.i, %.preheader1105.i ], [ %i.bey, %.preheader1097.loopexit.i ] ; 4 uses
  %i.bez = or disjoint i32 %.1836.lcssa.i, 1      ; 3 uses
  %i.bfa = icmp slt i32 %i.bez, %i.rh
  br i1 %i.bfa, label %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i, label %.preheader1089.i

_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i:                ; preds = %.preheader1097.i
  %i.bfb = load ptr, ptr %i.acg, align 8, !tbaa !37 ; 3 uses
  %i.bfc = mul i32 %i.aci, %i.cj                  ; 5 uses
  %i.bfd = load ptr, ptr %i.ach, align 8, !tbaa !37, !noalias !267
  %i.bfe = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bff = load i64, ptr %i.bfe, align 8, !tbaa !38, !noalias !267
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bfh = load i64, ptr %i.bfg, align 8, !tbaa !79, !noalias !267
  %factor.op.mul1405.i = mul i64 %i.bfh, %i.bff
  %i.bfi = icmp sgt i32 %i.cj, 7
  %i.bfj = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.bfk = sext i32 %i.aci to i64                 ; 16 uses
  %i.bfl = shl i32 %i.aci, 1                      ; 3 uses
  %i.bfm = zext i32 %i.bfl to i64                 ; 7 uses
  %i.bfn = mul i32 %i.aci, 3
  %i.bfo = zext i32 %i.bfn to i64                 ; 7 uses
  %i.bfp = shl i32 %i.aci, 2                      ; 3 uses
  %i.bfq = zext nneg i32 %i.bfp to i64            ; 2 uses
  %i.bfr = mul nuw nsw i32 %i.aci, 5
  %i.bfs = zext nneg i32 %i.bfr to i64            ; 2 uses
  %i.bft = mul nuw nsw i32 %i.aci, 6
  %i.bfu = zext nneg i32 %i.bft to i64            ; 2 uses
  %i.bfv = mul nuw nsw i32 %i.aci, 7
  %i.bfw = zext nneg i32 %i.bfv to i64            ; 2 uses
  %i.bfx = shl i32 %i.aci, 3
  %i.bfy = sext i32 %i.bfx to i64                 ; 3 uses
  %i.bfz = sext i32 %i.bfp to i64                 ; 4 uses
  %i.bga = sext i32 %i.bfl to i64                 ; 3 uses
  %i.bgb = icmp slt i32 %i.aci, 1
  %i.bgc = add i32 %i.cj, -8                      ; 2 uses
  %i.bgd = lshr i32 %i.bgc, 1
  %i.bge = and i32 %i.bgd, 2147483644
  %narrow1837.i = add nuw i32 %i.bge, 4
  %i.bgf = zext i32 %narrow1837.i to i64
  %i.bgg = mul nsw i64 %i.bfy, %i.bgf
  %scevgep1742.i = getelementptr i8, ptr %i.bfb, i64 %i.bgg ; 2 uses
  %i.bgh = mul i32 %i.bfc, %.1836.lcssa.i
  %i.bgi = shl i32 %i.bfc, 1                      ; 2 uses
  %i.bgj = mul i32 %i.bez, %i.bfc
  %i.bgk = and i32 %i.bgc, -8
  %i.bgl = add nuw i32 %i.bgk, 8                  ; 4 uses
  %i.bgm = add i32 %i.cj, -4
  %i.bgn = zext nneg i32 %.1836.lcssa.i to i64
  %i.bgo = sext i32 %i.rh to i64
  %i.bgp = or disjoint i32 %i.bgl, 3
  %i.bgq = icmp slt i32 %i.bgp, %i.cj
  %wide.trip.count1753.i = zext i32 %i.aci to i64 ; 19 uses
  %i.bgr = shl nuw nsw i64 %wide.trip.count1753.i, 3
  %i.bgs = shl nuw nsw i64 %wide.trip.count1753.i, 2 ; 5 uses
  %i.bgt = shl nuw nsw i64 %wide.trip.count1753.i, 4
  %i.bgu = shl nuw nsw i64 %i.bfk, 2              ; 3 uses
  %i.bgv = add nuw nsw i64 %i.bgu, %i.bgs         ; 2 uses
  %i.bgw = shl nsw i64 %i.bga, 2
  %i.bgx = add i32 %i.cj, -2
  %i.bgy = shl nuw nsw i64 %wide.trip.count1753.i, 5
  %i.bgz = shl nuw nsw i64 %i.bfo, 2              ; 3 uses
  %i.bha = shl nuw nsw i64 %wide.trip.count1753.i, 2 ; 5 uses
  %i.bhb = add nuw nsw i64 %i.bgz, %i.bha         ; 2 uses
  %i.bhc = shl nsw i64 %i.bfz, 2
  %i.bhd = add i32 %i.cj, -4
  %i.bhe = shl nuw nsw i64 %i.bfm, 2              ; 3 uses
  %i.bhf = add nuw nsw i64 %i.bhe, %i.bha         ; 2 uses
  %i.bhg = shl nuw nsw i64 %i.bfk, 2              ; 3 uses
  %i.bhh = add nuw nsw i64 %i.bhg, %i.bha         ; 2 uses
  %min.iters.check1000 = icmp ult i32 %i.aci, 16
  %stride.check967 = icmp slt i32 %i.bfp, 0
  %n.vec1002 = and i64 %wide.trip.count1753.i, 2147483640 ; 4 uses
  %i.bhi = shl nuw nsw i64 %n.vec1002, 5
  %cmp.n1017 = icmp eq i64 %n.vec1002, %wide.trip.count1753.i
  %min.iters.check920 = icmp ult i32 %i.aci, 16
  %stride.check907 = icmp slt i32 %i.bfl, 0
  %n.vec922 = and i64 %wide.trip.count1753.i, 2147483640 ; 4 uses
  %i.bhj = shl nuw nsw i64 %n.vec922, 4
  %cmp.n933 = icmp eq i64 %n.vec922, %wide.trip.count1753.i
  %xtraiter1314 = and i64 %wide.trip.count1753.i, 1
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1314, 0
  %i.bhk = add nsw i64 %wide.trip.count1753.i, -1
  %min.iters.check870 = icmp ult i32 %i.aci, 6
  %n.vec872 = and i64 %wide.trip.count1753.i, 2147483644 ; 4 uses
  %i.bhl = shl nuw nsw i64 %n.vec872, 3
  %cmp.n885 = icmp eq i64 %n.vec872, %wide.trip.count1753.i
  %xtraiter1316 = and i64 %wide.trip.count1753.i, 3 ; 2 uses
  %lcmp.mod1317.not = icmp eq i64 %xtraiter1316, 0
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

_ZN4ncnn3MatD2Ev.exit1006.i:                      ; preds = %._crit_edge1339.split.i, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i
  %indvars.iv1737.i = phi i64 [ %i.ale, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1738.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1735.i = phi i32 [ %i.alf, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1736.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1701.i = phi i32 [ %i.ala, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1702.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1697.i = phi i32 [ %i.akz, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1698.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1693.i = phi i32 [ %i.akx, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1694.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1689.i = phi i32 [ %i.aku, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1690.i, %._crit_edge1339.split.i ] ; 2 uses
  %i.bhm = sext i32 %indvars.iv1689.i to i64
  %i.bhn = shl nsw i64 %i.bhm, 2
  %scevgep1691.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhn ; 2 uses
  %i.bho = sext i32 %indvars.iv1693.i to i64
  %i.bhp = shl nsw i64 %i.bho, 2
  %scevgep1695.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhp ; 2 uses
  %i.bhq = sext i32 %indvars.iv1697.i to i64
  %i.bhr = shl nsw i64 %i.bhq, 2
  %scevgep1699.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhr ; 2 uses
  %i.bhs = sext i32 %indvars.iv1701.i to i64
  %i.bht = shl nsw i64 %i.bhs, 2
  %scevgep1703.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bht ; 2 uses
  %i.bhu = trunc nuw i64 %indvars.iv1737.i to i32 ; 5 uses
  %i.bhv = mul i32 %i.ajz, %i.bhu
  %i.bhw = sext i32 %i.bhv to i64
  %i.bhx = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bhw ; 2 uses
  %i.bhy = add i32 %i.bhu, 1
  %i.bhz = mul i32 %i.bhy, %i.ajz
  %i.bia = sext i32 %i.bhz to i64
  %i.bib = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bia ; 2 uses
  %i.bic = add i32 %i.bhu, 2
  %i.bid = mul i32 %i.bic, %i.ajz
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bie ; 2 uses
  %i.big = mul i32 %indvars.iv1735.i, %i.ajz
  %i.bih = sext i32 %i.big to i64
  %i.bii = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bih ; 2 uses
  %i.bij = lshr i32 %i.bhu, 3
  %i.bik = lshr i32 %i.bhu, 2
  %i.bil = and i32 %i.bik, 1
  %i.bim = add nuw nsw i32 %i.bil, %i.bij
  %i.bin = zext nneg i32 %i.bim to i64
  %.reass1343.i = mul i64 %factor.op.mul1342.i, %i.bin
  %i.bio = getelementptr inbounds nuw i8, ptr %i.aka, i64 %.reass1343.i ; 4 uses
  br i1 %i.akf, label %.preheader1101.lr.ph.i, label %.preheader1104.i

.preheader1101.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1006.i
  br i1 %i.akg, label %.preheader1101.us.i, label %.preheader1104.thread.i

.preheader1101.us.i:                              ; preds = %.preheader1101.lr.ph.i, %._crit_edge1257.us.i
  %.09191264.us.i = phi i32 [ %i.bml, %._crit_edge1257.us.i ], [ 0, %.preheader1101.lr.ph.i ]
  %.09231263.us.i = phi ptr [ %i.bmg, %._crit_edge1257.us.i ], [ %i.bio, %.preheader1101.lr.ph.i ]
  %.09341262.us.i = phi ptr [ %i.bmk, %._crit_edge1257.us.i ], [ %i.bii, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09371261.us.i = phi ptr [ %i.bmj, %._crit_edge1257.us.i ], [ %i.bif, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09401260.us.i = phi ptr [ %i.bmi, %._crit_edge1257.us.i ], [ %i.bib, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09431259.us.i = phi ptr [ %i.bmh, %._crit_edge1257.us.i ], [ %i.bhx, %.preheader1101.lr.ph.i ] ; 2 uses
  br label %bb.kb

bb.kb:                                            ; preds = %bb.kb, %.preheader1101.us.i
  %indvars.iv1705.i = phi i64 [ 0, %.preheader1101.us.i ], [ %indvars.iv.next1706.i, %bb.kb ] ; 5 uses
  %.19241255.us.i = phi ptr [ %.09231263.us.i, %.preheader1101.us.i ], [ %i.bmg, %bb.kb ] ; 33 uses
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bit = load float, ptr %i.bip, align 4, !tbaa !56
  store float %i.bit, ptr %.19241255.us.i, align 4, !tbaa !56
  %i.biu = load float, ptr %i.biq, align 4, !tbaa !56
  %i.biv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 4
  store float %i.biu, ptr %i.biv, align 4, !tbaa !56
  %i.biw = load float, ptr %i.bir, align 4, !tbaa !56
  %i.bix = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 8
  store float %i.biw, ptr %i.bix, align 4, !tbaa !56
  %i.biy = load float, ptr %i.bis, align 4, !tbaa !56
  %i.biz = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 12
  store float %i.biy, ptr %i.biz, align 4, !tbaa !56
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bip, i64 %i.akh ; 2 uses
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.biq, i64 %i.akh ; 2 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bir, i64 %i.akh ; 2 uses
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.akh ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 16
  %i.bjf = load float, ptr %i.bja, align 4, !tbaa !56
  store float %i.bjf, ptr %i.bje, align 4, !tbaa !56
  %i.bjg = load float, ptr %i.bjb, align 4, !tbaa !56
  %i.bjh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 20
  store float %i.bjg, ptr %i.bjh, align 4, !tbaa !56
  %i.bji = load float, ptr %i.bjc, align 4, !tbaa !56
  %i.bjj = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 24
  store float %i.bji, ptr %i.bjj, align 4, !tbaa !56
  %i.bjk = load float, ptr %i.bjd, align 4, !tbaa !56
  %i.bjl = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 28
  store float %i.bjk, ptr %i.bjl, align 4, !tbaa !56
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.akh ; 2 uses
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjb, i64 %i.akh ; 2 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %i.akh ; 2 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.akh ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 32
  %i.bjr = load float, ptr %i.bjm, align 4, !tbaa !56
  store float %i.bjr, ptr %i.bjq, align 4, !tbaa !56
  %i.bjs = load float, ptr %i.bjn, align 4, !tbaa !56
  %i.bjt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 36
  store float %i.bjs, ptr %i.bjt, align 4, !tbaa !56
  %i.bju = load float, ptr %i.bjo, align 4, !tbaa !56
  %i.bjv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 40
  store float %i.bju, ptr %i.bjv, align 4, !tbaa !56
  %i.bjw = load float, ptr %i.bjp, align 4, !tbaa !56
  %i.bjx = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 44
  store float %i.bjw, ptr %i.bjx, align 4, !tbaa !56
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjm, i64 %i.akh ; 2 uses
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %i.akh ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %i.akh ; 2 uses
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.bjp, i64 %i.akh ; 2 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 48
  %i.bkd = load float, ptr %i.bjy, align 4, !tbaa !56
  store float %i.bkd, ptr %i.bkc, align 4, !tbaa !56
  %i.bke = load float, ptr %i.bjz, align 4, !tbaa !56
  %i.bkf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 52
  store float %i.bke, ptr %i.bkf, align 4, !tbaa !56
  %i.bkg = load float, ptr %i.bka, align 4, !tbaa !56
  %i.bkh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 56
  store float %i.bkg, ptr %i.bkh, align 4, !tbaa !56
  %i.bki = load float, ptr %i.bkb, align 4, !tbaa !56
  %i.bkj = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 60
  store float %i.bki, ptr %i.bkj, align 4, !tbaa !56
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.akh ; 2 uses
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.akh ; 2 uses
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.bka, i64 %i.akh ; 2 uses
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bkb, i64 %i.akh ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 64
  %i.bkp = load float, ptr %i.bkk, align 4, !tbaa !56
  store float %i.bkp, ptr %i.bko, align 4, !tbaa !56
  %i.bkq = load float, ptr %i.bkl, align 4, !tbaa !56
  %i.bkr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 68
  store float %i.bkq, ptr %i.bkr, align 4, !tbaa !56
  %i.bks = load float, ptr %i.bkm, align 4, !tbaa !56
  %i.bkt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 72
  store float %i.bks, ptr %i.bkt, align 4, !tbaa !56
  %i.bku = load float, ptr %i.bkn, align 4, !tbaa !56
  %i.bkv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 76
  store float %i.bku, ptr %i.bkv, align 4, !tbaa !56
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.akh ; 2 uses
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %i.akh ; 2 uses
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %i.akh ; 2 uses
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bkn, i64 %i.akh ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 80
  %i.blb = load float, ptr %i.bkw, align 4, !tbaa !56
  store float %i.blb, ptr %i.bla, align 4, !tbaa !56
  %i.blc = load float, ptr %i.bkx, align 4, !tbaa !56
  %i.bld = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 84
  store float %i.blc, ptr %i.bld, align 4, !tbaa !56
  %i.ble = load float, ptr %i.bky, align 4, !tbaa !56
  %i.blf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 88
  store float %i.ble, ptr %i.blf, align 4, !tbaa !56
  %i.blg = load float, ptr %i.bkz, align 4, !tbaa !56
  %i.blh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 92
  store float %i.blg, ptr %i.blh, align 4, !tbaa !56
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %i.bkw, i64 %i.akh ; 2 uses
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.akh ; 2 uses
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.bky, i64 %i.akh ; 2 uses
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.bkz, i64 %i.akh ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 96
  %i.bln = load float, ptr %i.bli, align 4, !tbaa !56
  store float %i.bln, ptr %i.blm, align 4, !tbaa !56
  %i.blo = load float, ptr %i.blj, align 4, !tbaa !56
  %i.blp = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 100
  store float %i.blo, ptr %i.blp, align 4, !tbaa !56
  %i.blq = load float, ptr %i.blk, align 4, !tbaa !56
  %i.blr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 104
  store float %i.blq, ptr %i.blr, align 4, !tbaa !56
  %i.bls = load float, ptr %i.bll, align 4, !tbaa !56
  %i.blt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 108
  store float %i.bls, ptr %i.blt, align 4, !tbaa !56
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bli, i64 %i.akh
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %i.akh
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.blk, i64 %i.akh
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.bll, i64 %i.akh
  %i.bly = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 112
  %i.blz = load float, ptr %i.blu, align 4, !tbaa !56
  store float %i.blz, ptr %i.bly, align 4, !tbaa !56
  %i.bma = load float, ptr %i.blv, align 4, !tbaa !56
  %i.bmb = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 116
  store float %i.bma, ptr %i.bmb, align 4, !tbaa !56
  %i.bmc = load float, ptr %i.blw, align 4, !tbaa !56
  %i.bmd = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 120
  store float %i.bmc, ptr %i.bmd, align 4, !tbaa !56
  %i.bme = load float, ptr %i.blx, align 4, !tbaa !56
  %i.bmf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 124
  store float %i.bme, ptr %i.bmf, align 4, !tbaa !56
  %i.bmg = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 128 ; 3 uses
  %indvars.iv.next1706.i = add nuw nsw i64 %indvars.iv1705.i, 1 ; 2 uses
  %exitcond1709.not.i = icmp eq i64 %indvars.iv.next1706.i, %wide.trip.count1708.i
  br i1 %exitcond1709.not.i, label %._crit_edge1257.us.i, label %bb.kb, !llvm.loop !155

._crit_edge1257.us.i:                             ; preds = %bb.kb
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %i.akj ; 2 uses
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %i.akj ; 2 uses
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %i.akj ; 2 uses
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %i.akj ; 2 uses
  %i.bml = add nuw nsw i32 %.09191264.us.i, 8     ; 2 uses
  %i.bmm = or disjoint i32 %i.bml, 7
  %i.bmn = icmp slt i32 %i.bmm, %i.cj
  br i1 %i.bmn, label %.preheader1101.us.i, label %.preheader1104.i, !llvm.loop !156

.preheader1104.i:                                 ; preds = %._crit_edge1257.us.i, %_ZN4ncnn3MatD2Ev.exit1006.i
  %.0943.lcssa.i = phi ptr [ %i.bhx, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmh, %._crit_edge1257.us.i ] ; 3 uses
  %.0940.lcssa.i = phi ptr [ %i.bib, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmi, %._crit_edge1257.us.i ] ; 3 uses
  %.0937.lcssa.i = phi ptr [ %i.bif, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmj, %._crit_edge1257.us.i ] ; 3 uses
  %.0934.lcssa.i = phi ptr [ %i.bii, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmk, %._crit_edge1257.us.i ] ; 3 uses
  %.0923.lcssa.i = phi ptr [ %i.bio, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmg, %._crit_edge1257.us.i ] ; 3 uses
  %.0919.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.alc, %._crit_edge1257.us.i ] ; 4 uses
  %i.bmo = or disjoint i32 %.0919.lcssa.i, 3
  %i.bmp = icmp slt i32 %i.bmo, %i.cj
  br i1 %i.bmp, label %.preheader1100.lr.ph.i, label %.preheader1103.i

.preheader1104.thread.i:                          ; preds = %.preheader1101.lr.ph.i
  br i1 %i.ali, label %.preheader1100.preheader.i, label %.preheader1103.i

.preheader1100.lr.ph.i:                           ; preds = %.preheader1104.i
  br i1 %i.akg, label %.preheader1100.us.i, label %.preheader1100.preheader.i

.preheader1100.preheader.i:                       ; preds = %.preheader1100.lr.ph.i, %.preheader1104.thread.i
  %.0943.lcssa18961913.i = phi ptr [ %.0943.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1691.i, %.preheader1104.thread.i ]
  %.0940.lcssa18971912.i = phi ptr [ %.0940.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1695.i, %.preheader1104.thread.i ]
  %.0937.lcssa18981911.i = phi ptr [ %.0937.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1699.i, %.preheader1104.thread.i ]
  %.0934.lcssa18991910.i = phi ptr [ %.0934.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1703.i, %.preheader1104.thread.i ]
  %.0923.lcssa19001909.i = phi ptr [ %.0923.lcssa.i, %.preheader1100.lr.ph.i ], [ %i.bio, %.preheader1104.thread.i ]
  %.0919.lcssa19011908.i = phi i32 [ %.0919.lcssa.i, %.preheader1100.lr.ph.i ], [ %i.alc, %.preheader1104.thread.i ] ; 2 uses
  %i.bmq = sub i32 %i.ald, %.0919.lcssa19011908.i
  %i.bmr = and i32 %i.bmq, -4                     ; 2 uses
  %i.bms = zext i32 %i.bmr to i64
  %i.bmt = add nuw nsw i64 %i.bms, 4
  %i.bmu = mul nsw i64 %i.bmt, %i.akl             ; 4 uses
  %scevgep1710.i = getelementptr i8, ptr %.0943.lcssa18961913.i, i64 %i.bmu
  %scevgep1711.i = getelementptr i8, ptr %.0940.lcssa18971912.i, i64 %i.bmu
  %scevgep1712.i = getelementptr i8, ptr %.0937.lcssa18981911.i, i64 %i.bmu
  %scevgep1713.i = getelementptr i8, ptr %.0934.lcssa18991910.i, i64 %i.bmu
  %i.bmv = add i32 %.0919.lcssa19011908.i, 4
  %i.bmw = add i32 %i.bmv, %i.bmr
  br label %.preheader1103.i

.preheader1100.us.i:                              ; preds = %.preheader1100.lr.ph.i, %._crit_edge1285.us.i
  %.19201292.us.i = phi i32 [ %i.box, %._crit_edge1285.us.i ], [ %.0919.lcssa.i, %.preheader1100.lr.ph.i ]
  %.39261291.us.i = phi ptr [ %i.bos, %._crit_edge1285.us.i ], [ %.0923.lcssa.i, %.preheader1100.lr.ph.i ]
  %.19351290.us.i = phi ptr [ %i.bow, %._crit_edge1285.us.i ], [ %.0934.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19381289.us.i = phi ptr [ %i.bov, %._crit_edge1285.us.i ], [ %.0937.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19411288.us.i = phi ptr [ %i.bou, %._crit_edge1285.us.i ], [ %.0940.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19441287.us.i = phi ptr [ %i.bot, %._crit_edge1285.us.i ], [ %.0943.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kc, %.preheader1100.us.i
  %indvars.iv1715.i = phi i64 [ 0, %.preheader1100.us.i ], [ %indvars.iv.next1716.i, %bb.kc ] ; 5 uses
  %.49271283.us.i = phi ptr [ %.39261291.us.i, %.preheader1100.us.i ], [ %i.bos, %bb.kc ] ; 17 uses
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %.19441287.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %.19411288.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %.19381289.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %.19351290.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bnb = load float, ptr %i.bmx, align 4, !tbaa !56
  store float %i.bnb, ptr %.49271283.us.i, align 4, !tbaa !56
  %i.bnc = load float, ptr %i.bmy, align 4, !tbaa !56
  %i.bnd = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 4
  store float %i.bnc, ptr %i.bnd, align 4, !tbaa !56
  %i.bne = load float, ptr %i.bmz, align 4, !tbaa !56
  %i.bnf = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 8
  store float %i.bne, ptr %i.bnf, align 4, !tbaa !56
  %i.bng = load float, ptr %i.bna, align 4, !tbaa !56
  %i.bnh = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 12
  store float %i.bng, ptr %i.bnh, align 4, !tbaa !56
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %i.bmx, i64 %i.akh ; 2 uses
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.bmy, i64 %i.akh ; 2 uses
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bmz, i64 %i.akh ; 2 uses
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %i.bna, i64 %i.akh ; 2 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 16
  %i.bnn = load float, ptr %i.bni, align 4, !tbaa !56
  store float %i.bnn, ptr %i.bnm, align 4, !tbaa !56
  %i.bno = load float, ptr %i.bnj, align 4, !tbaa !56
  %i.bnp = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 20
  store float %i.bno, ptr %i.bnp, align 4, !tbaa !56
  %i.bnq = load float, ptr %i.bnk, align 4, !tbaa !56
  %i.bnr = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 24
  store float %i.bnq, ptr %i.bnr, align 4, !tbaa !56
  %i.bns = load float, ptr %i.bnl, align 4, !tbaa !56
  %i.bnt = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 28
  store float %i.bns, ptr %i.bnt, align 4, !tbaa !56
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %i.akh ; 2 uses
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.bnj, i64 %i.akh ; 2 uses
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %i.bnk, i64 %i.akh ; 2 uses
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %i.bnl, i64 %i.akh ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 32
  %i.bnz = load float, ptr %i.bnu, align 4, !tbaa !56
  store float %i.bnz, ptr %i.bny, align 4, !tbaa !56
  %i.boa = load float, ptr %i.bnv, align 4, !tbaa !56
  %i.bob = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 36
  store float %i.boa, ptr %i.bob, align 4, !tbaa !56
  %i.boc = load float, ptr %i.bnw, align 4, !tbaa !56
  %i.bod = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 40
  store float %i.boc, ptr %i.bod, align 4, !tbaa !56
  %i.boe = load float, ptr %i.bnx, align 4, !tbaa !56
  %i.bof = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 44
  store float %i.boe, ptr %i.bof, align 4, !tbaa !56
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %i.bnu, i64 %i.akh
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.bnv, i64 %i.akh
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %i.bnw, i64 %i.akh
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %i.bnx, i64 %i.akh
  %i.bok = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 48
  %i.bol = load float, ptr %i.bog, align 4, !tbaa !56
  store float %i.bol, ptr %i.bok, align 4, !tbaa !56
  %i.bom = load float, ptr %i.boh, align 4, !tbaa !56
  %i.bon = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 52
  store float %i.bom, ptr %i.bon, align 4, !tbaa !56
  %i.boo = load float, ptr %i.boi, align 4, !tbaa !56
  %i.bop = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 56
  store float %i.boo, ptr %i.bop, align 4, !tbaa !56
  %i.boq = load float, ptr %i.boj, align 4, !tbaa !56
  %i.bor = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 60
  store float %i.boq, ptr %i.bor, align 4, !tbaa !56
  %i.bos = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 64 ; 3 uses
  %indvars.iv.next1716.i = add nuw nsw i64 %indvars.iv1715.i, 1 ; 2 uses
  %exitcond1719.not.i = icmp eq i64 %indvars.iv.next1716.i, %wide.trip.count1708.i
  br i1 %exitcond1719.not.i, label %._crit_edge1285.us.i, label %bb.kc, !llvm.loop !157

._crit_edge1285.us.i:                             ; preds = %bb.kc
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %.19441287.us.i, i64 %i.akl ; 2 uses
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %.19411288.us.i, i64 %i.akl ; 2 uses
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %.19381289.us.i, i64 %i.akl ; 2 uses
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %.19351290.us.i, i64 %i.akl ; 2 uses
  %i.box = add nuw nsw i32 %.19201292.us.i, 4     ; 3 uses
  %i.boy = or disjoint i32 %i.box, 3
  %i.boz = icmp slt i32 %i.boy, %i.cj
  br i1 %i.boz, label %.preheader1100.us.i, label %.preheader1103.i, !llvm.loop !158

.preheader1103.i:                                 ; preds = %._crit_edge1285.us.i, %.preheader1100.preheader.i, %.preheader1104.thread.i, %.preheader1104.i
  %.1944.lcssa.i = phi ptr [ %.0943.lcssa.i, %.preheader1104.i ], [ %scevgep1691.i, %.preheader1104.thread.i ], [ %scevgep1710.i, %.preheader1100.preheader.i ], [ %i.bot, %._crit_edge1285.us.i ] ; 6 uses
  %.1941.lcssa.i = phi ptr [ %.0940.lcssa.i, %.preheader1104.i ], [ %scevgep1695.i, %.preheader1104.thread.i ], [ %scevgep1711.i, %.preheader1100.preheader.i ], [ %i.bou, %._crit_edge1285.us.i ] ; 6 uses
  %.1938.lcssa.i = phi ptr [ %.0937.lcssa.i, %.preheader1104.i ], [ %scevgep1699.i, %.preheader1104.thread.i ], [ %scevgep1712.i, %.preheader1100.preheader.i ], [ %i.bov, %._crit_edge1285.us.i ] ; 6 uses
  %.1935.lcssa.i = phi ptr [ %.0934.lcssa.i, %.preheader1104.i ], [ %scevgep1703.i, %.preheader1104.thread.i ], [ %scevgep1713.i, %.preheader1100.preheader.i ], [ %i.bow, %._crit_edge1285.us.i ] ; 6 uses
  %.3926.lcssa.i = phi ptr [ %.0923.lcssa.i, %.preheader1104.i ], [ %i.bio, %.preheader1104.thread.i ], [ %.0923.lcssa19001909.i, %.preheader1100.preheader.i ], [ %i.bos, %._crit_edge1285.us.i ] ; 2 uses
  %.1920.lcssa.i = phi i32 [ %.0919.lcssa.i, %.preheader1104.i ], [ %i.alc, %.preheader1104.thread.i ], [ %i.bmw, %.preheader1100.preheader.i ], [ %i.box, %._crit_edge1285.us.i ] ; 4 uses
  %i.bpa = or disjoint i32 %.1920.lcssa.i, 1
  %i.bpb = icmp slt i32 %i.bpa, %i.cj
  br i1 %i.bpb, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %.preheader1103.i
  br i1 %i.akg, label %.preheader1099.us.i.preheader, label %._crit_edge1339.split.i

.preheader1099.us.i.preheader:                    ; preds = %.preheader1099.lr.ph.i
  %scevgep779 = getelementptr i8, ptr %.1935.lcssa.i, i64 %i.alm
  %scevgep780 = getelementptr i8, ptr %.1935.lcssa.i, i64 %i.aln
  %i.bpc = sub i32 %i.alp, %.1920.lcssa.i
  %i.bpd = lshr i32 %i.bpc, 1
  %i.bpe = zext nneg i32 %i.bpd to i64
  %i.bpf = mul i64 %i.alo, %i.bpe                 ; 8 uses
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.bpf
  %scevgep782 = getelementptr i8, ptr %.1938.lcssa.i, i64 %i.alm
  %scevgep783 = getelementptr i8, ptr %.1938.lcssa.i, i64 %i.aln
  %scevgep784 = getelementptr i8, ptr %scevgep783, i64 %i.bpf
  %scevgep785 = getelementptr i8, ptr %.1941.lcssa.i, i64 %i.alm
  %scevgep786 = getelementptr i8, ptr %.1941.lcssa.i, i64 %i.aln
  %scevgep787 = getelementptr i8, ptr %scevgep786, i64 %i.bpf
  %scevgep788 = getelementptr i8, ptr %.1944.lcssa.i, i64 %i.alm
  %scevgep789 = getelementptr i8, ptr %.1944.lcssa.i, i64 %i.aln
  %scevgep790 = getelementptr i8, ptr %scevgep789, i64 %i.bpf
  %scevgep791 = getelementptr i8, ptr %.1935.lcssa.i, i64 %i.alk
  %scevgep792 = getelementptr i8, ptr %scevgep791, i64 %i.bpf
  %scevgep793 = getelementptr i8, ptr %.1938.lcssa.i, i64 %i.alk
  %scevgep794 = getelementptr i8, ptr %scevgep793, i64 %i.bpf
  %scevgep795 = getelementptr i8, ptr %.1941.lcssa.i, i64 %i.alk
  %scevgep796 = getelementptr i8, ptr %scevgep795, i64 %i.bpf
  %scevgep797 = getelementptr i8, ptr %.1944.lcssa.i, i64 %i.alk
  %scevgep798 = getelementptr i8, ptr %scevgep797, i64 %i.bpf
  %i.bpg = insertelement <8 x ptr> poison, ptr %scevgep784, i64 0
  %i.bph = insertelement <8 x ptr> %i.bpg, ptr %scevgep781, i64 1
  %i.bpi = insertelement <8 x ptr> %i.bph, ptr %scevgep787, i64 2
  %i.bpj = insertelement <8 x ptr> %i.bpi, ptr %scevgep790, i64 3
  %i.bpk = insertelement <8 x ptr> %i.bpj, ptr %scevgep792, i64 4
  %i.bpl = insertelement <8 x ptr> %i.bpk, ptr %scevgep794, i64 5
  %i.bpm = insertelement <8 x ptr> %i.bpl, ptr %scevgep796, i64 6
  %i.bpn = insertelement <8 x ptr> %i.bpm, ptr %scevgep798, i64 7
  %i.bpo = insertelement <8 x ptr> poison, ptr %scevgep782, i64 0
  %i.bpp = insertelement <8 x ptr> %i.bpo, ptr %scevgep779, i64 1
  %i.bpq = insertelement <8 x ptr> %i.bpp, ptr %scevgep785, i64 2
  %i.bpr = insertelement <8 x ptr> %i.bpq, ptr %scevgep788, i64 3
  %i.bps = insertelement <8 x ptr> %i.bpr, ptr %.1935.lcssa.i, i64 4
  %i.bpt = insertelement <8 x ptr> %i.bps, ptr %.1938.lcssa.i, i64 5
  %i.bpu = insertelement <8 x ptr> %i.bpt, ptr %.1941.lcssa.i, i64 6
  %i.bpv = insertelement <8 x ptr> %i.bpu, ptr %.1944.lcssa.i, i64 7
  br label %.preheader1099.us.i

.preheader1099.us.i:                              ; preds = %.preheader1099.us.i.preheader, %._crit_edge1313.us.i
  %.29211320.us.i = phi i32 [ %i.bry, %._crit_edge1313.us.i ], [ %.1920.lcssa.i, %.preheader1099.us.i.preheader ]
  %.69291319.us.i = phi ptr [ %.lcssa659, %._crit_edge1313.us.i ], [ %.3926.lcssa.i, %.preheader1099.us.i.preheader ] ; 6 uses
  %.29361318.us.i = phi ptr [ %i.brx, %._crit_edge1313.us.i ], [ %.1935.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  %.29391317.us.i = phi ptr [ %i.brw, %._crit_edge1313.us.i ], [ %.1938.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  %.29421316.us.i = phi ptr [ %i.brv, %._crit_edge1313.us.i ], [ %.1941.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  %.29451315.us.i = phi ptr [ %i.bru, %._crit_edge1313.us.i ], [ %.1944.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check838, label %scalar.ph837.preheader, label %vector.memcheck777

vector.memcheck777:                               ; preds = %.preheader1099.us.i
  %scevgep778 = getelementptr i8, ptr %.69291319.us.i, i64 %i.all
  %i.bpw = insertelement <8 x ptr> poison, ptr %.69291319.us.i, i64 0
  %i.bpx = shufflevector <8 x ptr> %i.bpw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bpy = icmp ult <8 x ptr> %i.bpx, %i.bpn
  %i.bpz = insertelement <8 x ptr> poison, ptr %scevgep778, i64 0
  %i.bqa = shufflevector <8 x ptr> %i.bpz, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bqb = icmp ult <8 x ptr> %i.bpv, %i.bqa
  %i.bqc = and <8 x i1> %i.bpy, %i.bqb
  %i.bqd = bitcast <8 x i1> %i.bqc to i8
  %i.bqe = icmp ne i8 %i.bqd, 0
  %op.rdx1239 = or i1 %i.bqe, %stride.check805
  br i1 %op.rdx1239, label %scalar.ph837.preheader, label %vector.ph839

vector.ph839:                                     ; preds = %vector.memcheck777
  %i.bqf = getelementptr i8, ptr %.69291319.us.i, i64 %i.alq ; 2 uses
  br label %vector.body841

vector.body841:                                   ; preds = %vector.body841, %vector.ph839
  %index842 = phi i64 [ 0, %vector.ph839 ], [ %index.next853, %vector.body841 ] ; 6 uses
  %i.bqg = shl i64 %index842, 5
  %next.gep843 = getelementptr i8, ptr %.69291319.us.i, i64 %i.bqg
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %index842 ; 2 uses
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %index842 ; 2 uses
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %index842 ; 2 uses
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %index842 ; 2 uses
  %wide.load844.a = load <8 x float>, ptr %i.bqh, align 4, !tbaa !56, !alias.scope !268
  %wide.load845 = load <8 x float>, ptr %i.bqi, align 4, !tbaa !56, !alias.scope !269
  %wide.load846 = load <8 x float>, ptr %i.bqj, align 4, !tbaa !56, !alias.scope !270
  %wide.load847 = load <8 x float>, ptr %i.bqk, align 4, !tbaa !56, !alias.scope !271
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %i.bqh, i64 %i.akh
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %i.akh
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bqj, i64 %i.akh
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bqk, i64 %i.akh
  %wide.load848 = load <8 x float>, ptr %i.bql, align 4, !tbaa !56, !alias.scope !272
  %wide.load849 = load <8 x float>, ptr %i.bqm, align 4, !tbaa !56, !alias.scope !273
  %wide.load850 = load <8 x float>, ptr %i.bqn, align 4, !tbaa !56, !alias.scope !274
  %wide.load851 = load <8 x float>, ptr %i.bqo, align 4, !tbaa !56, !alias.scope !275
  %i.bqp = shufflevector <8 x float> %wide.load844.a, <8 x float> %wide.load845, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqq = shufflevector <8 x float> %wide.load846, <8 x float> %wide.load847, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqr = shufflevector <8 x float> %wide.load848, <8 x float> %wide.load849, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqs = shufflevector <8 x float> %wide.load850, <8 x float> %wide.load851, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqt = shufflevector <16 x float> %i.bqp, <16 x float> %i.bqq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bqu = shufflevector <16 x float> %i.bqr, <16 x float> %i.bqs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec852 = shufflevector <32 x float> %i.bqt, <32 x float> %i.bqu, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec852, ptr %next.gep843, align 4, !tbaa !56, !alias.scope !276, !noalias !277
  %index.next853 = add nuw i64 %index842, 8       ; 2 uses
  %i.bqv = icmp eq i64 %index.next853, %n.vec840
  br i1 %i.bqv, label %middle.block854, label %vector.body841, !llvm.loop !169

middle.block854:                                  ; preds = %vector.body841
  br i1 %cmp.n855, label %._crit_edge1313.us.i, label %scalar.ph837.preheader

scalar.ph837.preheader:                           ; preds = %vector.memcheck777, %.preheader1099.us.i, %middle.block854
  %indvars.iv1724.i.ph = phi i64 [ 0, %vector.memcheck777 ], [ 0, %.preheader1099.us.i ], [ %n.vec840, %middle.block854 ]
  %.79301311.us.i.ph = phi ptr [ %.69291319.us.i, %vector.memcheck777 ], [ %.69291319.us.i, %.preheader1099.us.i ], [ %i.bqf, %middle.block854 ]
  br label %scalar.ph837

scalar.ph837:                                     ; preds = %scalar.ph837.preheader, %scalar.ph837
  %indvars.iv1724.i = phi i64 [ %indvars.iv.next1725.i, %scalar.ph837 ], [ %indvars.iv1724.i.ph, %scalar.ph837.preheader ] ; 5 uses
  %.79301311.us.i = phi ptr [ %i.brt, %scalar.ph837 ], [ %.79301311.us.i.ph, %scalar.ph837.preheader ] ; 9 uses
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %indvars.iv1724.i ; 2 uses
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %indvars.iv1724.i ; 2 uses
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %indvars.iv1724.i ; 2 uses
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %indvars.iv1724.i ; 2 uses
  %i.bra = load float, ptr %i.bqw, align 4, !tbaa !56
  store float %i.bra, ptr %.79301311.us.i, align 4, !tbaa !56
  %i.brb = load float, ptr %i.bqx, align 4, !tbaa !56
  %i.brc = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 4
  store float %i.brb, ptr %i.brc, align 4, !tbaa !56
  %i.brd = load float, ptr %i.bqy, align 4, !tbaa !56
  %i.bre = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 8
  store float %i.brd, ptr %i.bre, align 4, !tbaa !56
  %i.brf = load float, ptr %i.bqz, align 4, !tbaa !56
  %i.brg = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 12
  store float %i.brf, ptr %i.brg, align 4, !tbaa !56
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %i.bqw, i64 %i.akh
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %i.bqx, i64 %i.akh
  %i.brj = getelementptr inbounds nuw [4 x i8], ptr %i.bqy, i64 %i.akh
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %i.bqz, i64 %i.akh
  %i.brl = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 16
  %i.brm = load float, ptr %i.brh, align 4, !tbaa !56
  store float %i.brm, ptr %i.brl, align 4, !tbaa !56
  %i.brn = load float, ptr %i.bri, align 4, !tbaa !56
  %i.bro = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 20
  store float %i.brn, ptr %i.bro, align 4, !tbaa !56
  %i.brp = load float, ptr %i.brj, align 4, !tbaa !56
  %i.brq = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 24
  store float %i.brp, ptr %i.brq, align 4, !tbaa !56
  %i.brr = load float, ptr %i.brk, align 4, !tbaa !56
  %i.brs = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 28
  store float %i.brr, ptr %i.brs, align 4, !tbaa !56
  %i.brt = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 32 ; 2 uses
  %indvars.iv.next1725.i = add nuw nsw i64 %indvars.iv1724.i, 1 ; 2 uses
  %exitcond1728.not.i = icmp eq i64 %indvars.iv.next1725.i, %wide.trip.count1708.i
  br i1 %exitcond1728.not.i, label %._crit_edge1313.us.i, label %scalar.ph837, !llvm.loop !170

._crit_edge1313.us.i:                             ; preds = %scalar.ph837, %middle.block854
  %.lcssa659 = phi ptr [ %i.bqf, %middle.block854 ], [ %i.brt, %scalar.ph837 ] ; 2 uses
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %i.akn ; 2 uses
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %i.akn ; 2 uses
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %i.akn ; 2 uses
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %i.akn ; 2 uses
  %i.bry = add nuw nsw i32 %.29211320.us.i, 2     ; 3 uses
  %i.brz = or disjoint i32 %i.bry, 1
  %i.bsa = icmp slt i32 %i.brz, %i.cj
  br i1 %i.bsa, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !171

.preheader1102.i:                                 ; preds = %._crit_edge1313.us.i, %.preheader1103.i
  %.2945.lcssa.i = phi ptr [ %.1944.lcssa.i, %.preheader1103.i ], [ %i.bru, %._crit_edge1313.us.i ] ; 6 uses
  %.2942.lcssa.i = phi ptr [ %.1941.lcssa.i, %.preheader1103.i ], [ %i.brv, %._crit_edge1313.us.i ] ; 6 uses
  %.2939.lcssa.i = phi ptr [ %.1938.lcssa.i, %.preheader1103.i ], [ %i.brw, %._crit_edge1313.us.i ] ; 6 uses
  %.2936.lcssa.i = phi ptr [ %.1935.lcssa.i, %.preheader1103.i ], [ %i.brx, %._crit_edge1313.us.i ] ; 6 uses
  %.6929.lcssa.i = phi ptr [ %.3926.lcssa.i, %.preheader1103.i ], [ %.lcssa659, %._crit_edge1313.us.i ]
  %.2921.lcssa.i = phi i32 [ %.1920.lcssa.i, %.preheader1103.i ], [ %i.bry, %._crit_edge1313.us.i ] ; 2 uses
  %i.bsb = icmp sge i32 %.2921.lcssa.i, %i.cj
  %brmerge1469.i = or i1 %i.ako, %i.bsb
  br i1 %brmerge1469.i, label %._crit_edge1339.split.i, label %.preheader1098.i.preheader

.preheader1098.i.preheader:                       ; preds = %.preheader1102.i
  %scevgep741 = getelementptr i8, ptr %.2936.lcssa.i, i64 %i.alk
  %scevgep742 = getelementptr i8, ptr %.2939.lcssa.i, i64 %i.alk
  %scevgep743 = getelementptr i8, ptr %.2942.lcssa.i, i64 %i.alk
  %scevgep744 = getelementptr i8, ptr %.2945.lcssa.i, i64 %i.alk
  br label %.preheader1098.i

.preheader1098.i:                                 ; preds = %.preheader1098.i.preheader, %._crit_edge1335.i
  %.39221338.i = phi i32 [ %i.bsy, %._crit_edge1335.i ], [ %.2921.lcssa.i, %.preheader1098.i.preheader ]
  %.99321337.i = phi ptr [ %.lcssa665, %._crit_edge1335.i ], [ %.6929.lcssa.i, %.preheader1098.i.preheader ] ; 9 uses
  br i1 %min.iters.check761, label %scalar.ph760.preheader, label %vector.memcheck739

vector.memcheck739:                               ; preds = %.preheader1098.i
  %scevgep740 = getelementptr i8, ptr %.99321337.i, i64 %i.alj ; 4 uses
  %bound0745 = icmp ult ptr %.99321337.i, %scevgep741
  %bound1746 = icmp ult ptr %.2936.lcssa.i, %scevgep740
  %found.conflict747 = and i1 %bound0745, %bound1746
  %bound0748 = icmp ult ptr %.99321337.i, %scevgep742
  %bound1749 = icmp ult ptr %.2939.lcssa.i, %scevgep740
  %found.conflict750 = and i1 %bound0748, %bound1749
  %conflict.rdx751 = or i1 %found.conflict747, %found.conflict750
  %bound0752 = icmp ult ptr %.99321337.i, %scevgep743
  %bound1753 = icmp ult ptr %.2942.lcssa.i, %scevgep740
  %found.conflict754 = and i1 %bound0752, %bound1753
  %conflict.rdx755 = or i1 %conflict.rdx751, %found.conflict754
  %bound0756 = icmp ult ptr %.99321337.i, %scevgep744
  %bound1757 = icmp ult ptr %.2945.lcssa.i, %scevgep740
  %found.conflict758 = and i1 %bound0756, %bound1757
  %conflict.rdx759 = or i1 %conflict.rdx755, %found.conflict758
  br i1 %conflict.rdx759, label %scalar.ph760.preheader, label %vector.ph762

vector.ph762:                                     ; preds = %vector.memcheck739
  %i.bsc = getelementptr i8, ptr %.99321337.i, i64 %i.alr ; 2 uses
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph762
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next772, %vector.body764 ] ; 6 uses
  %i.bsd = shl i64 %index765, 4
  %next.gep766 = getelementptr i8, ptr %.99321337.i, i64 %i.bsd
  %i.bse = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %index765
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %index765
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %index765
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %index765
  %wide.load767 = load <8 x float>, ptr %i.bse, align 4, !tbaa !56, !alias.scope !278
  %wide.load768 = load <8 x float>, ptr %i.bsf, align 4, !tbaa !56, !alias.scope !279
  %wide.load769 = load <8 x float>, ptr %i.bsg, align 4, !tbaa !56, !alias.scope !280
  %wide.load770 = load <8 x float>, ptr %i.bsh, align 4, !tbaa !56, !alias.scope !281
  %i.bsi = shufflevector <8 x float> %wide.load767, <8 x float> %wide.load768, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsj = shufflevector <8 x float> %wide.load769, <8 x float> %wide.load770, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec771 = shufflevector <16 x float> %i.bsi, <16 x float> %i.bsj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec771, ptr %next.gep766, align 4, !tbaa !56, !alias.scope !282, !noalias !283
  %index.next772 = add nuw i64 %index765, 8       ; 2 uses
  %i.bsk = icmp eq i64 %index.next772, %n.vec763
  br i1 %i.bsk, label %middle.block773, label %vector.body764, !llvm.loop !178

middle.block773:                                  ; preds = %vector.body764
  br i1 %cmp.n774, label %._crit_edge1335.i, label %scalar.ph760.preheader

scalar.ph760.preheader:                           ; preds = %vector.memcheck739, %.preheader1098.i, %middle.block773
  %indvars.iv1729.i.ph = phi i64 [ 0, %vector.memcheck739 ], [ 0, %.preheader1098.i ], [ %n.vec763, %middle.block773 ] ; 7 uses
  %.109331333.i.ph = phi ptr [ %.99321337.i, %vector.memcheck739 ], [ %.99321337.i, %.preheader1098.i ], [ %i.bsc, %middle.block773 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph760.prol.loopexit, label %scalar.ph760.prol

scalar.ph760.prol:                                ; preds = %scalar.ph760.preheader
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsp = load float, ptr %i.bsl, align 4, !tbaa !56
  store float %i.bsp, ptr %.109331333.i.ph, align 4, !tbaa !56
  %i.bsq = load float, ptr %i.bsm, align 4, !tbaa !56
  %i.bsr = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 4
  store float %i.bsq, ptr %i.bsr, align 4, !tbaa !56
  %i.bss = load float, ptr %i.bsn, align 4, !tbaa !56
  %i.bst = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 8
  store float %i.bss, ptr %i.bst, align 4, !tbaa !56
  %i.bsu = load float, ptr %i.bso, align 4, !tbaa !56
  %i.bsv = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 12
  store float %i.bsu, ptr %i.bsv, align 4, !tbaa !56
  %i.bsw = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1730.i.prol = or disjoint i64 %indvars.iv1729.i.ph, 1
  br label %scalar.ph760.prol.loopexit

scalar.ph760.prol.loopexit:                       ; preds = %scalar.ph760.prol, %scalar.ph760.preheader
  %.lcssa1283.unr = phi ptr [ poison, %scalar.ph760.preheader ], [ %i.bsw, %scalar.ph760.prol ]
  %indvars.iv1729.i.unr = phi i64 [ %indvars.iv1729.i.ph, %scalar.ph760.preheader ], [ %indvars.iv.next1730.i.prol, %scalar.ph760.prol ]
  %.109331333.i.unr = phi ptr [ %.109331333.i.ph, %scalar.ph760.preheader ], [ %i.bsw, %scalar.ph760.prol ]
  %i.bsx = icmp eq i64 %indvars.iv1729.i.ph, %i.als
  br i1 %i.bsx, label %._crit_edge1335.i, label %scalar.ph760

._crit_edge1335.i:                                ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760, %middle.block773
  %.lcssa665 = phi ptr [ %i.bsc, %middle.block773 ], [ %.lcssa1283.unr, %scalar.ph760.prol.loopexit ], [ %i.btw, %scalar.ph760 ]
  %i.bsy = add nuw nsw i32 %.39221338.i, 1        ; 2 uses
  %exitcond1734.not.i = icmp eq i32 %i.bsy, %i.cj
  br i1 %exitcond1734.not.i, label %._crit_edge1339.split.i, label %.preheader1098.i, !llvm.loop !179

scalar.ph760:                                     ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760
  %indvars.iv1729.i = phi i64 [ %indvars.iv.next1730.i.1, %scalar.ph760 ], [ %indvars.iv1729.i.unr, %scalar.ph760.prol.loopexit ] ; 6 uses
  %.109331333.i = phi ptr [ %i.btw, %scalar.ph760 ], [ %.109331333.i.unr, %scalar.ph760.prol.loopexit ] ; 9 uses
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1729.i
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1729.i
  %i.btb = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1729.i
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1729.i
  %i.btd = load float, ptr %i.bsz, align 4, !tbaa !56
  store float %i.btd, ptr %.109331333.i, align 4, !tbaa !56
  %i.bte = load float, ptr %i.bta, align 4, !tbaa !56
  %i.btf = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 4
  store float %i.bte, ptr %i.btf, align 4, !tbaa !56
  %i.btg = load float, ptr %i.btb, align 4, !tbaa !56
  %i.bth = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 8
  store float %i.btg, ptr %i.bth, align 4, !tbaa !56
  %i.bti = load float, ptr %i.btc, align 4, !tbaa !56
  %i.btj = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 12
  store float %i.bti, ptr %i.btj, align 4, !tbaa !56
  %i.btk = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 16
  %indvars.iv.next1730.i = add nuw nsw i64 %indvars.iv1729.i, 1 ; 4 uses
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btn = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv.next1730.i
  %i.bto = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btp = load float, ptr %i.btl, align 4, !tbaa !56
  store float %i.btp, ptr %i.btk, align 4, !tbaa !56
  %i.btq = load float, ptr %i.btm, align 4, !tbaa !56
  %i.btr = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 20
  store float %i.btq, ptr %i.btr, align 4, !tbaa !56
  %i.bts = load float, ptr %i.btn, align 4, !tbaa !56
  %i.btt = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 24
  store float %i.bts, ptr %i.btt, align 4, !tbaa !56
  %i.btu = load float, ptr %i.bto, align 4, !tbaa !56
  %i.btv = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 28
  store float %i.btu, ptr %i.btv, align 4, !tbaa !56
  %i.btw = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 32 ; 2 uses
  %indvars.iv.next1730.i.1 = add nuw nsw i64 %indvars.iv1729.i, 2 ; 2 uses
  %exitcond1733.not.i.1 = icmp eq i64 %indvars.iv.next1730.i.1, %wide.trip.count1708.i
  br i1 %exitcond1733.not.i.1, label %._crit_edge1335.i, label %scalar.ph760, !llvm.loop !180

._crit_edge1339.split.i:                          ; preds = %._crit_edge1335.i, %.preheader1102.i, %.preheader1099.lr.ph.i
  %indvars.iv.next1738.i = add nuw nsw i64 %indvars.iv1737.i, 4 ; 3 uses
  %i.btx = icmp slt i64 %indvars.iv.next1738.i, %invariant.op.i
  %indvars.iv.next1690.i = add i32 %indvars.iv1689.i, %i.akv
  %indvars.iv.next1694.i = add i32 %indvars.iv1693.i, %i.akv
  %indvars.iv.next1698.i = add i32 %indvars.iv1697.i, %i.akv
  %indvars.iv.next1702.i = add i32 %indvars.iv1701.i, %i.akv
  %indvars.iv.next1736.i = add i32 %indvars.iv1735.i, 4
  br i1 %i.btx, label %_ZN4ncnn3MatD2Ev.exit1006.i, label %.preheader1097.loopexit.i, !llvm.loop !181

.preheader1089.loopexit.i:                        ; preds = %._crit_edge1402.split.i
  %i.bty = trunc nuw nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1089.i

.preheader1089.i:                                 ; preds = %.preheader1089.loopexit.i, %.preheader1097.i
  %.2837.lcssa.i = phi i32 [ %.1836.lcssa.i, %.preheader1097.i ], [ %i.bty, %.preheader1089.loopexit.i ] ; 4 uses
  %i.btz = icmp slt i32 %.2837.lcssa.i, %i.rh
  br i1 %i.btz, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1089.i
  %i.bua = load ptr, ptr %i.acg, align 8, !tbaa !37 ; 17 uses
  %i.bub = mul i32 %i.aci, %i.cj                  ; 3 uses
  %i.buc = load ptr, ptr %i.ach, align 8, !tbaa !37, !noalias !284
  %i.bud = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bue = load i64, ptr %i.bud, align 8, !tbaa !38, !noalias !284
  %i.buf = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bug = load i64, ptr %i.buf, align 8, !tbaa !79, !noalias !284
  %factor.op.mul1464.i = mul i64 %i.bug, %i.bue
  %i.buh = icmp sgt i32 %i.cj, 7
  %i.bui = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.buj = sext i32 %i.aci to i64                 ; 43 uses
  %i.buk = shl i32 %i.aci, 3                      ; 2 uses
  %i.bul = sext i32 %i.buk to i64                 ; 3 uses
  %i.bum = shl i32 %i.aci, 2                      ; 2 uses
  %i.bun = sext i32 %i.bum to i64                 ; 3 uses
  %i.buo = shl i32 %i.aci, 1                      ; 2 uses
  %i.bup = sext i32 %i.buo to i64                 ; 2 uses
  %i.buq = icmp slt i32 %i.aci, 1
  %i.bur = add i32 %i.cj, -8                      ; 3 uses
  %i.bus = lshr i32 %i.bur, 1
  %i.but = and i32 %i.bus, 2147483644
  %narrow1838.i = add nuw i32 %i.but, 4
  %i.buu = zext i32 %narrow1838.i to i64
  %i.buv = mul nsw i64 %i.bul, %i.buu
  %scevgep1778.i = getelementptr i8, ptr %i.bua, i64 %i.buv
  %i.buw = mul i32 %i.bub, %.2837.lcssa.i
  %i.bux = and i32 %i.bur, -8
  %i.buy = add nuw i32 %i.bux, 8                  ; 4 uses
  %i.buz = add i32 %i.cj, -4
  %i.bva = sext i32 %.2837.lcssa.i to i64
  %wide.trip.count1810.i = sext i32 %i.rh to i64
  %i.bvb = or disjoint i32 %i.buy, 3
  %i.bvc = icmp slt i32 %i.bvb, %i.cj
  %wide.trip.count1786.i = zext i32 %i.aci to i64 ; 27 uses
  %i.bvd = shl nuw nsw i64 %wide.trip.count1786.i, 3
  %i.bve = shl nuw nsw i64 %i.buj, 2              ; 2 uses
  %i.bvf = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 2 uses
  %i.bvg = shl nsw i64 %i.bup, 2
  %i.bvh = add i32 %i.cj, -2
  %i.bvi = shl nuw nsw i64 %wide.trip.count1786.i, 4
  %i.bvj = mul nsw i64 %i.buj, 12                 ; 2 uses
  %i.bvk = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 4 uses
  %i.bvl = shl nsw i64 %i.bun, 2
  %i.bvm = add i32 %i.cj, -4
  %i.bvn = shl nsw i64 %i.buj, 3                  ; 2 uses
  %i.bvo = shl nuw nsw i64 %i.buj, 2              ; 2 uses
  %i.bvp = shl nuw nsw i64 %wide.trip.count1786.i, 5
  %i.bvq = mul nsw i64 %i.buj, 28                 ; 2 uses
  %scevgep1133.a = getelementptr i8, ptr %i.bua, i64 %i.bvq
  %i.bvr = mul i32 %.2837.lcssa.i, %i.ri
  %i.bvs = mul i32 %i.bvr, %i.rk
  %i.bvt = mul i32 %i.bvs, %i.cj
  %i.bvu = mul i32 %i.ri, %i.rk
  %i.bvv = mul i32 %i.bvu, %i.cj
  %i.bvw = lshr i32 %i.bur, 3
  %i.bvx = zext nneg i32 %i.bvw to i64
  %i.bvy = mul nsw i64 %i.bvx, %i.bul
  %i.bvz = shl nsw i64 %i.bvy, 2                  ; 8 uses
  %i.bwa = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 8 uses
  %i.bwb = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwc = getelementptr i8, ptr %i.bwb, i64 %i.bvq
  %scevgep1135.a = getelementptr i8, ptr %i.bwc, i64 %i.bwa
  %i.bwd = mul nsw i64 %i.buj, 24                 ; 2 uses
  %scevgep1137.a = getelementptr i8, ptr %i.bua, i64 %i.bwd
  %i.bwe = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwf = getelementptr i8, ptr %i.bwe, i64 %i.bwd
  %scevgep1139.a = getelementptr i8, ptr %i.bwf, i64 %i.bwa
  %i.bwg = mul nsw i64 %i.buj, 20                 ; 2 uses
  %scevgep1141.a = getelementptr i8, ptr %i.bua, i64 %i.bwg
  %i.bwh = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwi = getelementptr i8, ptr %i.bwh, i64 %i.bwg
  %scevgep1143 = getelementptr i8, ptr %i.bwi, i64 %i.bwa
  %i.bwj = shl nsw i64 %i.buj, 4                  ; 2 uses
  %scevgep1145 = getelementptr i8, ptr %i.bua, i64 %i.bwj
  %i.bwk = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwl = getelementptr i8, ptr %i.bwk, i64 %i.bwj
  %scevgep1147 = getelementptr i8, ptr %i.bwl, i64 %i.bwa
  %i.bwm = mul nsw i64 %i.buj, 12                 ; 2 uses
  %scevgep1149 = getelementptr i8, ptr %i.bua, i64 %i.bwm
  %i.bwn = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwo = getelementptr i8, ptr %i.bwn, i64 %i.bwm
  %scevgep1151 = getelementptr i8, ptr %i.bwo, i64 %i.bwa
  %i.bwp = shl nsw i64 %i.buj, 3                  ; 2 uses
  %scevgep1153 = getelementptr i8, ptr %i.bua, i64 %i.bwp
  %i.bwq = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwr = getelementptr i8, ptr %i.bwq, i64 %i.bwp
  %scevgep1155 = getelementptr i8, ptr %i.bwr, i64 %i.bwa
  %i.bws = shl nuw nsw i64 %i.buj, 2              ; 2 uses
  %scevgep1157 = getelementptr i8, ptr %i.bua, i64 %i.bws
  %i.bwt = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwu = getelementptr i8, ptr %i.bwt, i64 %i.bws
  %scevgep1159 = getelementptr i8, ptr %i.bwu, i64 %i.bwa
  %i.bwv = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %scevgep1161 = getelementptr i8, ptr %i.bwv, i64 %i.bwa
  %min.iters.check1203 = icmp ult i32 %i.aci, 16
  %stride.check1170 = icmp slt i32 %i.buk, 0
  %n.vec1205 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bww = shl nuw nsw i64 %n.vec1205, 5
  %cmp.n1220 = icmp eq i64 %n.vec1205, %wide.trip.count1786.i
  %min.iters.check1115 = icmp ult i32 %i.aci, 16
  %stride.check1102 = icmp slt i32 %i.bum, 0
  %n.vec1117 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bwx = shl nuw nsw i64 %n.vec1117, 4
  %cmp.n1128 = icmp eq i64 %n.vec1117, %wide.trip.count1786.i
  %xtraiter1318 = and i64 %wide.trip.count1786.i, 1
  %lcmp.mod1319.not = icmp eq i64 %xtraiter1318, 0
  %i.bwy = add nsw i64 %wide.trip.count1786.i, -1
  %min.iters.check1064 = icmp ult i32 %i.aci, 10
  %stride.check1061 = icmp slt i32 %i.buo, 0
  %n.vec1066 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.bwz = shl nuw nsw i64 %n.vec1066, 3
  %cmp.n1079 = icmp eq i64 %n.vec1066, %wide.trip.count1786.i
  %xtraiter1321 = and i64 %wide.trip.count1786.i, 3 ; 2 uses
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1321, 0
  %min.iters.check1024 = icmp ult i32 %i.aci, 8
  %min.iters.check1025 = icmp ult i32 %i.aci, 32
  %i.bxa = and i64 %wide.trip.count1786.i, 24
  %n.vec1027 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.bxb = shl nuw nsw i64 %n.vec1027, 2
  %cmp.n1037 = icmp eq i64 %n.vec1027, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.bxa, 0
  %n.vec1039 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bxc = shl nuw nsw i64 %n.vec1039, 2
  %cmp.n1044 = icmp eq i64 %n.vec1039, %wide.trip.count1786.i
  %xtraiter1324 = and i64 %wide.trip.count1786.i, 7 ; 2 uses
  %lcmp.mod1325.not = icmp eq i64 %xtraiter1324, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i226

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1402.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.bgn, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1747.i = phi i32 [ %i.bgj, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1748.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1743.i = phi i32 [ %i.bgh, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1744.i, %._crit_edge1402.split.i ] ; 2 uses
  %i.bxd = phi i32 [ %i.bez, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %i.chc, %._crit_edge1402.split.i ]
  %i.bxe = sext i32 %indvars.iv1743.i to i64
  %i.bxf = shl nsw i64 %i.bxe, 2
  %scevgep1745.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxf ; 2 uses
  %i.bxg = sext i32 %indvars.iv1747.i to i64
  %i.bxh = shl nsw i64 %i.bxg, 2
  %scevgep1749.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxh ; 2 uses
  %i.bxi = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.bxj = mul i32 %i.bfc, %i.bxi
  %i.bxk = sext i32 %i.bxj to i64
  %i.bxl = getelementptr inbounds [4 x i8], ptr %i.bfb, i64 %i.bxk ; 2 uses
  %i.bxm = mul i32 %i.bxd, %i.bfc
  %i.bxn = sext i32 %i.bxm to i64
  %i.bxo = getelementptr inbounds [4 x i8], ptr %i.bfb, i64 %i.bxn ; 2 uses
  %i.bxp = lshr i32 %i.bxi, 3
  %i.bxq = lshr i32 %i.bxi, 2
  %i.bxr = and i32 %i.bxq, 1
  %i.bxs = add nuw nsw i32 %i.bxr, %i.bxp
  %i.bxt = lshr i32 %i.bxi, 1
  %i.bxu = and i32 %i.bxt, 1
  %i.bxv = add nuw nsw i32 %i.bxs, %i.bxu
  %i.bxw = zext nneg i32 %i.bxv to i64
  %.reass1406.i = mul i64 %factor.op.mul1405.i, %i.bxw
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bfd, i64 %.reass1406.i ; 4 uses
  br i1 %i.bfi, label %.preheader1093.lr.ph.i, label %.preheader1096.i

.preheader1093.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.bfj, label %.preheader1093.us.i, label %.preheader1096.thread.i

.preheader1093.us.i:                              ; preds = %.preheader1093.lr.ph.i, %._crit_edge1346.us.i
  %.08611351.us.i = phi i32 [ %i.bzw, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08651350.us.i = phi ptr [ %i.bzt, %._crit_edge1346.us.i ], [ %i.bxx, %.preheader1093.lr.ph.i ]
  %.08741349.us.i = phi ptr [ %i.bzv, %._crit_edge1346.us.i ], [ %i.bxo, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08771348.us.i = phi ptr [ %i.bzu, %._crit_edge1346.us.i ], [ %i.bxl, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kd, %.preheader1093.us.i
  %indvars.iv1750.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1751.i, %bb.kd ] ; 3 uses
  %.18661344.us.i = phi ptr [ %.08651350.us.i, %.preheader1093.us.i ], [ %i.bzt, %bb.kd ] ; 17 uses
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bya = load float, ptr %i.bxy, align 4, !tbaa !56
  store float %i.bya, ptr %.18661344.us.i, align 4, !tbaa !56
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfk
  %i.byc = load float, ptr %i.byb, align 4, !tbaa !56
  %i.byd = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 4
  store float %i.byc, ptr %i.byd, align 4, !tbaa !56
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfm
  %i.byf = load float, ptr %i.bye, align 4, !tbaa !56
  %i.byg = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 8
  store float %i.byf, ptr %i.byg, align 4, !tbaa !56
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfo
  %i.byi = load float, ptr %i.byh, align 4, !tbaa !56
  %i.byj = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 12
  store float %i.byi, ptr %i.byj, align 4, !tbaa !56
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfq
  %i.byl = load float, ptr %i.byk, align 4, !tbaa !56
  %i.bym = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 16
  store float %i.byl, ptr %i.bym, align 4, !tbaa !56
  %i.byn = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfs
  %i.byo = load float, ptr %i.byn, align 4, !tbaa !56
  %i.byp = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 20
  store float %i.byo, ptr %i.byp, align 4, !tbaa !56
  %i.byq = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfu
  %i.byr = load float, ptr %i.byq, align 4, !tbaa !56
  %i.bys = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 24
  store float %i.byr, ptr %i.bys, align 4, !tbaa !56
  %i.byt = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfw
  %i.byu = load float, ptr %i.byt, align 4, !tbaa !56
  %i.byv = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 28
  store float %i.byu, ptr %i.byv, align 4, !tbaa !56
  %i.byw = load float, ptr %i.bxz, align 4, !tbaa !56
  %i.byx = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 32
  store float %i.byw, ptr %i.byx, align 4, !tbaa !56
  %i.byy = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfk
  %i.byz = load float, ptr %i.byy, align 4, !tbaa !56
  %i.bza = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 36
  store float %i.byz, ptr %i.bza, align 4, !tbaa !56
  %i.bzb = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfm
  %i.bzc = load float, ptr %i.bzb, align 4, !tbaa !56
  %i.bzd = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 40
  store float %i.bzc, ptr %i.bzd, align 4, !tbaa !56
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfo
  %i.bzf = load float, ptr %i.bze, align 4, !tbaa !56
  %i.bzg = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 44
  store float %i.bzf, ptr %i.bzg, align 4, !tbaa !56
  %i.bzh = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfq
  %i.bzi = load float, ptr %i.bzh, align 4, !tbaa !56
  %i.bzj = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 48
  store float %i.bzi, ptr %i.bzj, align 4, !tbaa !56
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfs
  %i.bzl = load float, ptr %i.bzk, align 4, !tbaa !56
  %i.bzm = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 52
  store float %i.bzl, ptr %i.bzm, align 4, !tbaa !56
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfu
  %i.bzo = load float, ptr %i.bzn, align 4, !tbaa !56
  %i.bzp = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 56
  store float %i.bzo, ptr %i.bzp, align 4, !tbaa !56
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfw
  %i.bzr = load float, ptr %i.bzq, align 4, !tbaa !56
  %i.bzs = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 60
  store float %i.bzr, ptr %i.bzs, align 4, !tbaa !56
  %i.bzt = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 64 ; 3 uses
  %indvars.iv.next1751.i = add nuw nsw i64 %indvars.iv1750.i, 1 ; 2 uses
  %exitcond1754.not.i = icmp eq i64 %indvars.iv.next1751.i, %wide.trip.count1753.i
  br i1 %exitcond1754.not.i, label %._crit_edge1346.us.i, label %bb.kd, !llvm.loop !184

._crit_edge1346.us.i:                             ; preds = %bb.kd
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %i.bfy ; 2 uses
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %i.bfy ; 2 uses
  %i.bzw = add nuw nsw i32 %.08611351.us.i, 8     ; 2 uses
  %i.bzx = or disjoint i32 %i.bzw, 7
  %i.bzy = icmp slt i32 %i.bzx, %i.cj
  br i1 %i.bzy, label %.preheader1093.us.i, label %.preheader1096.i, !llvm.loop !185

.preheader1096.i:                                 ; preds = %._crit_edge1346.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0877.lcssa.i = phi ptr [ %i.bxl, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzu, %._crit_edge1346.us.i ] ; 11 uses
  %.0874.lcssa.i = phi ptr [ %i.bxo, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzv, %._crit_edge1346.us.i ] ; 11 uses
  %.0865.lcssa.i = phi ptr [ %i.bxx, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzt, %._crit_edge1346.us.i ] ; 3 uses
  %.0861.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bgl, %._crit_edge1346.us.i ] ; 5 uses
  %i.bzz = or disjoint i32 %.0861.lcssa.i, 3
  %i.caa = icmp slt i32 %i.bzz, %i.cj
  br i1 %i.caa, label %.preheader1092.lr.ph.i, label %.preheader1095.i

.preheader1096.thread.i:                          ; preds = %.preheader1093.lr.ph.i
  br i1 %i.bgq, label %.preheader1092.preheader.i, label %.preheader1095.i

.preheader1092.lr.ph.i:                           ; preds = %.preheader1096.i
  br i1 %i.bfj, label %.preheader1092.us.i.preheader, label %.preheader1092.preheader.i

.preheader1092.us.i.preheader:                    ; preds = %.preheader1092.lr.ph.i
  %scevgep938.a = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bgz
  %scevgep939.a = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhb
  %i.cab = sub i32 %i.bhd, %.0861.lcssa.i
  %i.cac = lshr i32 %i.cab, 2
  %i.cad = zext nneg i32 %i.cac to i64
  %i.cae = mul nsw i64 %i.bhc, %i.cad             ; 8 uses
  %scevgep940.a = getelementptr i8, ptr %scevgep939.a, i64 %i.cae
  %scevgep941.a = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhe
  %scevgep942.a = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhf
  %scevgep943.a = getelementptr i8, ptr %scevgep942.a, i64 %i.cae
  %scevgep944.a = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhg
  %scevgep945.a = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhh
  %scevgep946.a = getelementptr i8, ptr %scevgep945.a, i64 %i.cae
  %scevgep947.a = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bha
  %scevgep948.a = getelementptr i8, ptr %scevgep947.a, i64 %i.cae
  %scevgep949.a = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bgz
  %scevgep950 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhb
  %scevgep951 = getelementptr i8, ptr %scevgep950, i64 %i.cae
  %scevgep952 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhe
  %scevgep953 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhf
  %scevgep954 = getelementptr i8, ptr %scevgep953, i64 %i.cae
  %scevgep955 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhg
  %scevgep956 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhh
  %scevgep957 = getelementptr i8, ptr %scevgep956, i64 %i.cae
  %scevgep958 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bha
  %scevgep959 = getelementptr i8, ptr %scevgep958, i64 %i.cae
  %i.caf = insertelement <8 x ptr> poison, ptr %scevgep943.a, i64 0
  %i.cag = insertelement <8 x ptr> %i.caf, ptr %scevgep940.a, i64 1
  %i.cah = insertelement <8 x ptr> %i.cag, ptr %scevgep946.a, i64 2
  %i.cai = insertelement <8 x ptr> %i.cah, ptr %scevgep948.a, i64 3
  %i.caj = insertelement <8 x ptr> %i.cai, ptr %scevgep951, i64 4
  %i.cak = insertelement <8 x ptr> %i.caj, ptr %scevgep954, i64 5
  %i.cal = insertelement <8 x ptr> %i.cak, ptr %scevgep957, i64 6
  %i.cam = insertelement <8 x ptr> %i.cal, ptr %scevgep959, i64 7
  %i.can = insertelement <8 x ptr> poison, ptr %scevgep941.a, i64 0
  %i.cao = insertelement <8 x ptr> %i.can, ptr %scevgep938.a, i64 1
  %i.cap = insertelement <8 x ptr> %i.cao, ptr %scevgep944.a, i64 2
  %i.caq = insertelement <8 x ptr> %i.cap, ptr %.0874.lcssa.i, i64 3
  %i.car = insertelement <8 x ptr> %i.caq, ptr %scevgep949.a, i64 4
  %i.cas = insertelement <8 x ptr> %i.car, ptr %scevgep952, i64 5
  %i.cat = insertelement <8 x ptr> %i.cas, ptr %scevgep955, i64 6
  %i.cau = insertelement <8 x ptr> %i.cat, ptr %.0877.lcssa.i, i64 7
  br label %.preheader1092.us.i

.preheader1092.preheader.i:                       ; preds = %.preheader1092.lr.ph.i, %.preheader1096.thread.i
  %.0877.lcssa19251936.i = phi ptr [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1745.i, %.preheader1096.thread.i ]
  %.0874.lcssa19261935.i = phi ptr [ %.0874.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1749.i, %.preheader1096.thread.i ]
  %.0865.lcssa19271934.i = phi ptr [ %.0865.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.bxx, %.preheader1096.thread.i ]
  %.0861.lcssa19281933.i = phi i32 [ %.0861.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.bgl, %.preheader1096.thread.i ] ; 2 uses
  %i.cav = sub i32 %i.bgm, %.0861.lcssa19281933.i
  %i.caw = and i32 %i.cav, -4                     ; 2 uses
  %i.cax = zext i32 %i.caw to i64
  %i.cay = add nuw nsw i64 %i.cax, 4
  %i.caz = mul nsw i64 %i.cay, %i.bfz             ; 2 uses
  %scevgep1755.i = getelementptr i8, ptr %.0877.lcssa19251936.i, i64 %i.caz
  %scevgep1756.i = getelementptr i8, ptr %.0874.lcssa19261935.i, i64 %i.caz
  %i.cba = add i32 %.0861.lcssa19281933.i, 4
  %i.cbb = add i32 %i.cba, %i.caw
  br label %.preheader1095.i

.preheader1092.us.i:                              ; preds = %.preheader1092.us.i.preheader, %._crit_edge1362.us.i
  %.18621367.us.i = phi i32 [ %i.cdc, %._crit_edge1362.us.i ], [ %.0861.lcssa.i, %.preheader1092.us.i.preheader ]
  %.28671366.us.i = phi ptr [ %.lcssa639, %._crit_edge1362.us.i ], [ %.0865.lcssa.i, %.preheader1092.us.i.preheader ] ; 6 uses
  %.18751365.us.i = phi ptr [ %i.cdb, %._crit_edge1362.us.i ], [ %.0874.lcssa.i, %.preheader1092.us.i.preheader ] ; 3 uses
  %.18781364.us.i = phi ptr [ %i.cda, %._crit_edge1362.us.i ], [ %.0877.lcssa.i, %.preheader1092.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check1000, label %scalar.ph999.preheader, label %vector.memcheck936

vector.memcheck936:                               ; preds = %.preheader1092.us.i
  %scevgep937 = getelementptr i8, ptr %.28671366.us.i, i64 %i.bgy
  %i.cbc = insertelement <8 x ptr> poison, ptr %.28671366.us.i, i64 0
  %i.cbd = shufflevector <8 x ptr> %i.cbc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cbe = icmp ult <8 x ptr> %i.cbd, %i.cam
  %i.cbf = insertelement <8 x ptr> poison, ptr %scevgep937, i64 0
  %i.cbg = shufflevector <8 x ptr> %i.cbf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cbh = icmp ult <8 x ptr> %i.cau, %i.cbg
  %i.cbi = and <8 x i1> %i.cbe, %i.cbh
  %i.cbj = bitcast <8 x i1> %i.cbi to i8
  %i.cbk = icmp ne i8 %i.cbj, 0
  %op.rdx1238 = or i1 %i.cbk, %stride.check967
  br i1 %op.rdx1238, label %scalar.ph999.preheader, label %vector.ph1001

vector.ph1001:                                    ; preds = %vector.memcheck936
  %i.cbl = getelementptr i8, ptr %.28671366.us.i, i64 %i.bhi ; 2 uses
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1001
  %index1004 = phi i64 [ 0, %vector.ph1001 ], [ %index.next1015, %vector.body1003 ] ; 4 uses
  %i.cbm = shl i64 %index1004, 5
  %next.gep1005 = getelementptr i8, ptr %.28671366.us.i, i64 %i.cbm
  %i.cbn = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %index1004 ; 4 uses
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %index1004 ; 4 uses
  %wide.load1006 = load <8 x float>, ptr %i.cbn, align 4, !tbaa !56, !alias.scope !285
  %i.cbp = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.bfk
  %wide.load1007 = load <8 x float>, ptr %i.cbp, align 4, !tbaa !56, !alias.scope !286
  %i.cbq = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.bfm
  %wide.load1008 = load <8 x float>, ptr %i.cbq, align 4, !tbaa !56, !alias.scope !287
  %i.cbr = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.bfo
  %wide.load1009 = load <8 x float>, ptr %i.cbr, align 4, !tbaa !56, !alias.scope !288
  %wide.load1010 = load <8 x float>, ptr %i.cbo, align 4, !tbaa !56, !alias.scope !289
  %i.cbs = getelementptr inbounds nuw [4 x i8], ptr %i.cbo, i64 %i.bfk
  %wide.load1011 = load <8 x float>, ptr %i.cbs, align 4, !tbaa !56, !alias.scope !290
  %i.cbt = getelementptr inbounds nuw [4 x i8], ptr %i.cbo, i64 %i.bfm
  %wide.load1012 = load <8 x float>, ptr %i.cbt, align 4, !tbaa !56, !alias.scope !291
  %i.cbu = getelementptr inbounds nuw [4 x i8], ptr %i.cbo, i64 %i.bfo
  %wide.load1013 = load <8 x float>, ptr %i.cbu, align 4, !tbaa !56, !alias.scope !292
  %i.cbv = shufflevector <8 x float> %wide.load1006, <8 x float> %wide.load1007, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbw = shufflevector <8 x float> %wide.load1008, <8 x float> %wide.load1009, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbx = shufflevector <8 x float> %wide.load1010, <8 x float> %wide.load1011, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cby = shufflevector <8 x float> %wide.load1012, <8 x float> %wide.load1013, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbz = shufflevector <16 x float> %i.cbv, <16 x float> %i.cbw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cca = shufflevector <16 x float> %i.cbx, <16 x float> %i.cby, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1014 = shufflevector <32 x float> %i.cbz, <32 x float> %i.cca, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec1014, ptr %next.gep1005, align 4, !tbaa !56, !alias.scope !293, !noalias !294
  %index.next1015 = add nuw i64 %index1004, 8     ; 2 uses
  %i.ccb = icmp eq i64 %index.next1015, %n.vec1002
  br i1 %i.ccb, label %middle.block1016, label %vector.body1003, !llvm.loop !196

middle.block1016:                                 ; preds = %vector.body1003
  br i1 %cmp.n1017, label %._crit_edge1362.us.i, label %scalar.ph999.preheader

scalar.ph999.preheader:                           ; preds = %vector.memcheck936, %.preheader1092.us.i, %middle.block1016
  %indvars.iv1757.i.ph = phi i64 [ 0, %vector.memcheck936 ], [ 0, %.preheader1092.us.i ], [ %n.vec1002, %middle.block1016 ]
  %.38681360.us.i.ph = phi ptr [ %.28671366.us.i, %vector.memcheck936 ], [ %.28671366.us.i, %.preheader1092.us.i ], [ %i.cbl, %middle.block1016 ]
  br label %scalar.ph999

scalar.ph999:                                     ; preds = %scalar.ph999.preheader, %scalar.ph999
  %indvars.iv1757.i = phi i64 [ %indvars.iv.next1758.i, %scalar.ph999 ], [ %indvars.iv1757.i.ph, %scalar.ph999.preheader ] ; 3 uses
  %.38681360.us.i = phi ptr [ %i.ccz, %scalar.ph999 ], [ %.38681360.us.i.ph, %scalar.ph999.preheader ] ; 9 uses
  %i.ccc = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %indvars.iv1757.i ; 4 uses
  %i.ccd = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %indvars.iv1757.i ; 4 uses
  %i.cce = load float, ptr %i.ccc, align 4, !tbaa !56
  store float %i.cce, ptr %.38681360.us.i, align 4, !tbaa !56
  %i.ccf = getelementptr inbounds nuw [4 x i8], ptr %i.ccc, i64 %i.bfk
  %i.ccg = load float, ptr %i.ccf, align 4, !tbaa !56
  %i.cch = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 4
  store float %i.ccg, ptr %i.cch, align 4, !tbaa !56
  %i.cci = getelementptr inbounds nuw [4 x i8], ptr %i.ccc, i64 %i.bfm
  %i.ccj = load float, ptr %i.cci, align 4, !tbaa !56
  %i.cck = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 8
  store float %i.ccj, ptr %i.cck, align 4, !tbaa !56
  %i.ccl = getelementptr inbounds nuw [4 x i8], ptr %i.ccc, i64 %i.bfo
  %i.ccm = load float, ptr %i.ccl, align 4, !tbaa !56
  %i.ccn = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 12
  store float %i.ccm, ptr %i.ccn, align 4, !tbaa !56
  %i.cco = load float, ptr %i.ccd, align 4, !tbaa !56
  %i.ccp = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 16
  store float %i.cco, ptr %i.ccp, align 4, !tbaa !56
  %i.ccq = getelementptr inbounds nuw [4 x i8], ptr %i.ccd, i64 %i.bfk
  %i.ccr = load float, ptr %i.ccq, align 4, !tbaa !56
  %i.ccs = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 20
  store float %i.ccr, ptr %i.ccs, align 4, !tbaa !56
  %i.cct = getelementptr inbounds nuw [4 x i8], ptr %i.ccd, i64 %i.bfm
  %i.ccu = load float, ptr %i.cct, align 4, !tbaa !56
  %i.ccv = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 24
  store float %i.ccu, ptr %i.ccv, align 4, !tbaa !56
  %i.ccw = getelementptr inbounds nuw [4 x i8], ptr %i.ccd, i64 %i.bfo
  %i.ccx = load float, ptr %i.ccw, align 4, !tbaa !56
  %i.ccy = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 28
  store float %i.ccx, ptr %i.ccy, align 4, !tbaa !56
  %i.ccz = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 32 ; 2 uses
  %indvars.iv.next1758.i = add nuw nsw i64 %indvars.iv1757.i, 1 ; 2 uses
  %exitcond1761.not.i = icmp eq i64 %indvars.iv.next1758.i, %wide.trip.count1753.i
  br i1 %exitcond1761.not.i, label %._crit_edge1362.us.i, label %scalar.ph999, !llvm.loop !197

._crit_edge1362.us.i:                             ; preds = %scalar.ph999, %middle.block1016
  %.lcssa639 = phi ptr [ %i.cbl, %middle.block1016 ], [ %i.ccz, %scalar.ph999 ] ; 2 uses
  %i.cda = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %i.bfz ; 2 uses
  %i.cdb = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %i.bfz ; 2 uses
  %i.cdc = add nuw nsw i32 %.18621367.us.i, 4     ; 3 uses
  %i.cdd = or disjoint i32 %i.cdc, 3
  %i.cde = icmp slt i32 %i.cdd, %i.cj
  br i1 %i.cde, label %.preheader1092.us.i, label %.preheader1095.i, !llvm.loop !198

.preheader1095.i:                                 ; preds = %._crit_edge1362.us.i, %.preheader1092.preheader.i, %.preheader1096.thread.i, %.preheader1096.i
  %.1878.lcssa.i = phi ptr [ %.0877.lcssa.i, %.preheader1096.i ], [ %scevgep1745.i, %.preheader1096.thread.i ], [ %scevgep1755.i, %.preheader1092.preheader.i ], [ %i.cda, %._crit_edge1362.us.i ] ; 6 uses
  %.1875.lcssa.i = phi ptr [ %.0874.lcssa.i, %.preheader1096.i ], [ %scevgep1749.i, %.preheader1096.thread.i ], [ %scevgep1756.i, %.preheader1092.preheader.i ], [ %i.cdb, %._crit_edge1362.us.i ] ; 6 uses
  %.2867.lcssa.i = phi ptr [ %.0865.lcssa.i, %.preheader1096.i ], [ %i.bxx, %.preheader1096.thread.i ], [ %.0865.lcssa19271934.i, %.preheader1092.preheader.i ], [ %.lcssa639, %._crit_edge1362.us.i ] ; 2 uses
  %.1862.lcssa.i = phi i32 [ %.0861.lcssa.i, %.preheader1096.i ], [ %i.bgl, %.preheader1096.thread.i ], [ %i.cbb, %.preheader1092.preheader.i ], [ %i.cdc, %._crit_edge1362.us.i ] ; 4 uses
  %i.cdf = or disjoint i32 %.1862.lcssa.i, 1
  %i.cdg = icmp slt i32 %i.cdf, %i.cj
  br i1 %i.cdg, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %.preheader1095.i
  br i1 %i.bfj, label %.preheader1091.us.i.preheader, label %._crit_edge1402.split.i

.preheader1091.us.i.preheader:                    ; preds = %.preheader1091.lr.ph.i
  %scevgep890.a = getelementptr i8, ptr %.1875.lcssa.i, i64 %i.bgu
  %scevgep891.a = getelementptr i8, ptr %.1875.lcssa.i, i64 %i.bgv
  %i.cdh = sub i32 %i.bgx, %.1862.lcssa.i
  %i.cdi = lshr i32 %i.cdh, 1
  %i.cdj = zext nneg i32 %i.cdi to i64
  %i.cdk = mul i64 %i.bgw, %i.cdj                 ; 4 uses
  %scevgep892.a = getelementptr i8, ptr %scevgep891.a, i64 %i.cdk
  %scevgep893 = getelementptr i8, ptr %.1878.lcssa.i, i64 %i.bgu
  %scevgep894 = getelementptr i8, ptr %.1878.lcssa.i, i64 %i.bgv
  %scevgep895 = getelementptr i8, ptr %scevgep894, i64 %i.cdk
  %scevgep896 = getelementptr i8, ptr %.1875.lcssa.i, i64 %i.bgs
  %scevgep897 = getelementptr i8, ptr %scevgep896, i64 %i.cdk
  %scevgep898 = getelementptr i8, ptr %.1878.lcssa.i, i64 %i.bgs
  %scevgep899 = getelementptr i8, ptr %scevgep898, i64 %i.cdk
  br label %.preheader1091.us.i

.preheader1091.us.i:                              ; preds = %.preheader1091.us.i.preheader, %._crit_edge1382.us.i
  %.28631387.us.i = phi i32 [ %i.cfh, %._crit_edge1382.us.i ], [ %.1862.lcssa.i, %.preheader1091.us.i.preheader ]
  %.48691386.us.i = phi ptr [ %.lcssa643, %._crit_edge1382.us.i ], [ %.2867.lcssa.i, %.preheader1091.us.i.preheader ] ; 9 uses
  %.28761385.us.i = phi ptr [ %i.cfg, %._crit_edge1382.us.i ], [ %.1875.lcssa.i, %.preheader1091.us.i.preheader ] ; 5 uses
  %.28791384.us.i = phi ptr [ %i.cff, %._crit_edge1382.us.i ], [ %.1878.lcssa.i, %.preheader1091.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check920, label %scalar.ph919.preheader, label %vector.memcheck888

vector.memcheck888:                               ; preds = %.preheader1091.us.i
  %scevgep889 = getelementptr i8, ptr %.48691386.us.i, i64 %i.bgt ; 4 uses
  %bound0900 = icmp ult ptr %.48691386.us.i, %scevgep892.a
  %bound1901 = icmp ult ptr %scevgep890.a, %scevgep889
  %found.conflict902 = and i1 %bound0900, %bound1901
  %bound0904 = icmp ult ptr %.48691386.us.i, %scevgep895
  %bound1905 = icmp ult ptr %scevgep893, %scevgep889
  %found.conflict906 = and i1 %bound0904, %bound1905
  %16 = or i1 %found.conflict906, %stride.check907
  %conflict.rdx908.a = or i1 %found.conflict902, %16
  %bound0909 = icmp ult ptr %.48691386.us.i, %scevgep897
  %bound1910 = icmp ult ptr %.1875.lcssa.i, %scevgep889
  %found.conflict911 = and i1 %bound0909, %bound1910
  %conflict.rdx913 = or i1 %found.conflict911, %conflict.rdx908.a
  %bound0914 = icmp ult ptr %.48691386.us.i, %scevgep899
  %bound1915 = icmp ult ptr %.1878.lcssa.i, %scevgep889
  %found.conflict916 = and i1 %bound0914, %bound1915
  %conflict.rdx918 = or i1 %found.conflict916, %conflict.rdx913
  br i1 %conflict.rdx918, label %scalar.ph919.preheader, label %vector.ph921

vector.ph921:                                     ; preds = %vector.memcheck888
  %i.cdl = getelementptr i8, ptr %.48691386.us.i, i64 %i.bhj ; 2 uses
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next931, %vector.body923 ] ; 4 uses
  %i.cdm = shl i64 %index924, 4
  %next.gep925 = getelementptr i8, ptr %.48691386.us.i, i64 %i.cdm
  %i.cdn = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %index924 ; 2 uses
  %i.cdo = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %index924 ; 2 uses
  %wide.load926 = load <8 x float>, ptr %i.cdn, align 4, !tbaa !56, !alias.scope !295
  %wide.load927 = load <8 x float>, ptr %i.cdo, align 4, !tbaa !56, !alias.scope !296
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.cdn, i64 %i.bfk
  %i.cdq = getelementptr inbounds nuw [4 x i8], ptr %i.cdo, i64 %i.bfk
  %wide.load928 = load <8 x float>, ptr %i.cdp, align 4, !tbaa !56, !alias.scope !297
  %wide.load929 = load <8 x float>, ptr %i.cdq, align 4, !tbaa !56, !alias.scope !298
  %i.cdr = shufflevector <8 x float> %wide.load926, <8 x float> %wide.load927, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cds = shufflevector <8 x float> %wide.load928, <8 x float> %wide.load929, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec930 = shufflevector <16 x float> %i.cdr, <16 x float> %i.cds, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec930, ptr %next.gep925, align 4, !tbaa !56, !alias.scope !299, !noalias !300
  %index.next931 = add nuw i64 %index924, 8       ; 2 uses
  %i.cdt = icmp eq i64 %index.next931, %n.vec922
  br i1 %i.cdt, label %middle.block932, label %vector.body923, !llvm.loop !205

middle.block932:                                  ; preds = %vector.body923
  br i1 %cmp.n933, label %._crit_edge1382.us.i, label %scalar.ph919.preheader

scalar.ph919.preheader:                           ; preds = %vector.memcheck888, %.preheader1091.us.i, %middle.block932
  %indvars.iv1764.i.ph = phi i64 [ 0, %vector.memcheck888 ], [ 0, %.preheader1091.us.i ], [ %n.vec922, %middle.block932 ] ; 5 uses
  %.58701380.us.i.ph = phi ptr [ %.48691386.us.i, %vector.memcheck888 ], [ %.48691386.us.i, %.preheader1091.us.i ], [ %i.cdl, %middle.block932 ] ; 6 uses
  br i1 %lcmp.mod1315.not, label %scalar.ph919.prol.loopexit, label %scalar.ph919.prol

scalar.ph919.prol:                                ; preds = %scalar.ph919.preheader
  %i.cdu = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %indvars.iv1764.i.ph ; 2 uses
  %i.cdv = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %indvars.iv1764.i.ph ; 2 uses
  %i.cdw = load float, ptr %i.cdu, align 4, !tbaa !56
  store float %i.cdw, ptr %.58701380.us.i.ph, align 4, !tbaa !56
  %i.cdx = load float, ptr %i.cdv, align 4, !tbaa !56
  %i.cdy = getelementptr inbounds nuw i8, ptr %.58701380.us.i.ph, i64 4
  store float %i.cdx, ptr %i.cdy, align 4, !tbaa !56
  %i.cdz = getelementptr inbounds nuw [4 x i8], ptr %i.cdu, i64 %i.bfk
  %i.cea = getelementptr inbounds nuw [4 x i8], ptr %i.cdv, i64 %i.bfk
  %i.ceb = getelementptr inbounds nuw i8, ptr %.58701380.us.i.ph, i64 8
  %i.cec = load float, ptr %i.cdz, align 4, !tbaa !56
  store float %i.cec, ptr %i.ceb, align 4, !tbaa !56
  %i.ced = load float, ptr %i.cea, align 4, !tbaa !56
  %i.cee = getelementptr inbounds nuw i8, ptr %.58701380.us.i.ph, i64 12
  store float %i.ced, ptr %i.cee, align 4, !tbaa !56
  %i.cef = getelementptr inbounds nuw i8, ptr %.58701380.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1765.i.prol = or disjoint i64 %indvars.iv1764.i.ph, 1
  br label %scalar.ph919.prol.loopexit

scalar.ph919.prol.loopexit:                       ; preds = %scalar.ph919.prol, %scalar.ph919.preheader
  %.lcssa1261.unr = phi ptr [ poison, %scalar.ph919.preheader ], [ %i.cef, %scalar.ph919.prol ]
  %indvars.iv1764.i.unr = phi i64 [ %indvars.iv1764.i.ph, %scalar.ph919.preheader ], [ %indvars.iv.next1765.i.prol, %scalar.ph919.prol ]
  %.58701380.us.i.unr = phi ptr [ %.58701380.us.i.ph, %scalar.ph919.preheader ], [ %i.cef, %scalar.ph919.prol ]
  %i.ceg = icmp eq i64 %indvars.iv1764.i.ph, %i.bhk
  br i1 %i.ceg, label %._crit_edge1382.us.i, label %scalar.ph919

scalar.ph919:                                     ; preds = %scalar.ph919.prol.loopexit, %scalar.ph919
  %indvars.iv1764.i = phi i64 [ %indvars.iv.next1765.i.1, %scalar.ph919 ], [ %indvars.iv1764.i.unr, %scalar.ph919.prol.loopexit ] ; 4 uses
  %.58701380.us.i = phi ptr [ %i.cfe, %scalar.ph919 ], [ %.58701380.us.i.unr, %scalar.ph919.prol.loopexit ] ; 9 uses
  %i.ceh = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.cei = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.cej = load float, ptr %i.ceh, align 4, !tbaa !56
  store float %i.cej, ptr %.58701380.us.i, align 4, !tbaa !56
  %i.cek = load float, ptr %i.cei, align 4, !tbaa !56
  %i.cel = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 4
  store float %i.cek, ptr %i.cel, align 4, !tbaa !56
  %i.cem = getelementptr inbounds nuw [4 x i8], ptr %i.ceh, i64 %i.bfk
  %i.cen = getelementptr inbounds nuw [4 x i8], ptr %i.cei, i64 %i.bfk
  %i.ceo = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 8
  %i.cep = load float, ptr %i.cem, align 4, !tbaa !56
  store float %i.cep, ptr %i.ceo, align 4, !tbaa !56
  %i.ceq = load float, ptr %i.cen, align 4, !tbaa !56
  %i.cer = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 12
  store float %i.ceq, ptr %i.cer, align 4, !tbaa !56
  %i.ces = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 16
  %indvars.iv.next1765.i = add nuw nsw i64 %indvars.iv1764.i, 1 ; 2 uses
  %i.cet = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %indvars.iv.next1765.i ; 2 uses
  %i.ceu = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %indvars.iv.next1765.i ; 2 uses
  %i.cev = load float, ptr %i.cet, align 4, !tbaa !56
  store float %i.cev, ptr %i.ces, align 4, !tbaa !56
  %i.cew = load float, ptr %i.ceu, align 4, !tbaa !56
  %i.cex = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 20
  store float %i.cew, ptr %i.cex, align 4, !tbaa !56
  %i.cey = getelementptr inbounds nuw [4 x i8], ptr %i.cet, i64 %i.bfk
  %i.cez = getelementptr inbounds nuw [4 x i8], ptr %i.ceu, i64 %i.bfk
  %i.cfa = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 24
  %i.cfb = load float, ptr %i.cey, align 4, !tbaa !56
  store float %i.cfb, ptr %i.cfa, align 4, !tbaa !56
  %i.cfc = load float, ptr %i.cez, align 4, !tbaa !56
  %i.cfd = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 28
  store float %i.cfc, ptr %i.cfd, align 4, !tbaa !56
  %i.cfe = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 32 ; 2 uses
  %indvars.iv.next1765.i.1 = add nuw nsw i64 %indvars.iv1764.i, 2 ; 2 uses
  %exitcond1768.not.i.1 = icmp eq i64 %indvars.iv.next1765.i.1, %wide.trip.count1753.i
  br i1 %exitcond1768.not.i.1, label %._crit_edge1382.us.i, label %scalar.ph919, !llvm.loop !206

._crit_edge1382.us.i:                             ; preds = %scalar.ph919.prol.loopexit, %scalar.ph919, %middle.block932
  %.lcssa643 = phi ptr [ %i.cdl, %middle.block932 ], [ %.lcssa1261.unr, %scalar.ph919.prol.loopexit ], [ %i.cfe, %scalar.ph919 ] ; 2 uses
  %i.cff = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %i.bga ; 2 uses
  %i.cfg = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %i.bga ; 2 uses
  %i.cfh = add nuw nsw i32 %.28631387.us.i, 2     ; 3 uses
  %i.cfi = or disjoint i32 %i.cfh, 1
  %i.cfj = icmp slt i32 %i.cfi, %i.cj
  br i1 %i.cfj, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !207

.preheader1094.i:                                 ; preds = %._crit_edge1382.us.i, %.preheader1095.i
  %.2879.lcssa.i = phi ptr [ %.1878.lcssa.i, %.preheader1095.i ], [ %i.cff, %._crit_edge1382.us.i ] ; 8 uses
  %.2876.lcssa.i = phi ptr [ %.1875.lcssa.i, %.preheader1095.i ], [ %i.cfg, %._crit_edge1382.us.i ] ; 8 uses
  %.4869.lcssa.i = phi ptr [ %.2867.lcssa.i, %.preheader1095.i ], [ %.lcssa643, %._crit_edge1382.us.i ]
  %.2863.lcssa.i = phi i32 [ %.1862.lcssa.i, %.preheader1095.i ], [ %i.cfh, %._crit_edge1382.us.i ] ; 2 uses
  %i.cfk = icmp sge i32 %.2863.lcssa.i, %i.cj
  %brmerge1472.i = or i1 %i.bgb, %i.cfk
  br i1 %brmerge1472.i, label %._crit_edge1402.split.i, label %.preheader1090.i.preheader

.preheader1090.i.preheader:                       ; preds = %.preheader1094.i
  %scevgep860 = getelementptr i8, ptr %.2876.lcssa.i, i64 %i.bgs
  %scevgep861 = getelementptr i8, ptr %.2879.lcssa.i, i64 %i.bgs
  br label %.preheader1090.i

.preheader1090.i:                                 ; preds = %.preheader1090.i.preheader, %._crit_edge1398.i
  %.38641401.i = phi i32 [ %i.cgb, %._crit_edge1398.i ], [ %.2863.lcssa.i, %.preheader1090.i.preheader ]
  %.78721400.i = phi ptr [ %.lcssa647, %._crit_edge1398.i ], [ %.4869.lcssa.i, %.preheader1090.i.preheader ] ; 8 uses
  br i1 %min.iters.check870, label %scalar.ph869.preheader, label %vector.memcheck858

vector.memcheck858:                               ; preds = %.preheader1090.i
  %scevgep859 = getelementptr i8, ptr %.78721400.i, i64 %i.bgr ; 2 uses
  %bound0862 = icmp ult ptr %.78721400.i, %scevgep860
  %bound1863 = icmp ult ptr %.2876.lcssa.i, %scevgep859
  %found.conflict864 = and i1 %bound0862, %bound1863
  %bound0865 = icmp ult ptr %.78721400.i, %scevgep861
  %bound1866 = icmp ult ptr %.2879.lcssa.i, %scevgep859
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %found.conflict864, %found.conflict867
  br i1 %conflict.rdx868, label %scalar.ph869.preheader, label %vector.ph871

vector.ph871:                                     ; preds = %vector.memcheck858
  %i.cfl = getelementptr i8, ptr %.78721400.i, i64 %i.bhl ; 2 uses
  br label %vector.body873

vector.body873:                                   ; preds = %vector.body873, %vector.ph871
  %index874 = phi i64 [ 0, %vector.ph871 ], [ %index.next883, %vector.body873 ] ; 4 uses
  %i.cfm = shl i64 %index874, 3                   ; 2 uses
  %next.gep875 = getelementptr i8, ptr %.78721400.i, i64 %i.cfm
  %i.cfn = getelementptr i8, ptr %.78721400.i, i64 %i.cfm
  %next.gep876 = getelementptr i8, ptr %i.cfn, i64 16
  %i.cfo = getelementptr inbounds nuw [4 x i8], ptr %.2879.lcssa.i, i64 %index874 ; 2 uses
  %i.cfp = getelementptr inbounds nuw [4 x i8], ptr %.2876.lcssa.i, i64 %index874 ; 2 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfo, i64 8
  %wide.load877 = load <2 x float>, ptr %i.cfo, align 4, !tbaa !56, !alias.scope !301
  %wide.load878 = load <2 x float>, ptr %i.cfq, align 4, !tbaa !56, !alias.scope !301
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfp, i64 8
  %wide.load879 = load <2 x float>, ptr %i.cfp, align 4, !tbaa !56, !alias.scope !302
  %wide.load880 = load <2 x float>, ptr %i.cfr, align 4, !tbaa !56, !alias.scope !302
  %interleaved.vec881 = shufflevector <2 x float> %wide.load877, <2 x float> %wide.load879, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec881, ptr %next.gep875, align 4, !tbaa !56, !alias.scope !303, !noalias !304
  %interleaved.vec882 = shufflevector <2 x float> %wide.load878, <2 x float> %wide.load880, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec882, ptr %next.gep876, align 4, !tbaa !56, !alias.scope !303, !noalias !304
  %index.next883 = add nuw i64 %index874, 4       ; 2 uses
  %i.cfs = icmp eq i64 %index.next883, %n.vec872
  br i1 %i.cfs, label %middle.block884, label %vector.body873, !llvm.loop !212

middle.block884:                                  ; preds = %vector.body873
  br i1 %cmp.n885, label %._crit_edge1398.i, label %scalar.ph869.preheader

scalar.ph869.preheader:                           ; preds = %vector.memcheck858, %.preheader1090.i, %middle.block884
  %indvars.iv1769.i.ph = phi i64 [ 0, %vector.memcheck858 ], [ 0, %.preheader1090.i ], [ %n.vec872, %middle.block884 ] ; 3 uses
  %.88731396.i.ph = phi ptr [ %.78721400.i, %vector.memcheck858 ], [ %.78721400.i, %.preheader1090.i ], [ %i.cfl, %middle.block884 ] ; 2 uses
  br i1 %lcmp.mod1317.not, label %scalar.ph869.prol.loopexit, label %scalar.ph869.prol

scalar.ph869.prol:                                ; preds = %scalar.ph869.preheader, %scalar.ph869.prol
  %indvars.iv1769.i.prol = phi i64 [ %indvars.iv.next1770.i.prol, %scalar.ph869.prol ], [ %indvars.iv1769.i.ph, %scalar.ph869.preheader ] ; 3 uses
  %.88731396.i.prol = phi ptr [ %i.cfy, %scalar.ph869.prol ], [ %.88731396.i.ph, %scalar.ph869.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph869.prol ], [ 0, %scalar.ph869.preheader ]
  %i.cft = getelementptr inbounds nuw [4 x i8], ptr %.2879.lcssa.i, i64 %indvars.iv1769.i.prol
  %i.cfu = getelementptr inbounds nuw [4 x i8], ptr %.2876.lcssa.i, i64 %indvars.iv1769.i.prol
  %i.cfv = load float, ptr %i.cft, align 4, !tbaa !56
  store float %i.cfv, ptr %.88731396.i.prol, align 4, !tbaa !56
  %i.cfw = load float, ptr %i.cfu, align 4, !tbaa !56
  %i.cfx = getelementptr inbounds nuw i8, ptr %.88731396.i.prol, i64 4
  store float %i.cfw, ptr %i.cfx, align 4, !tbaa !56
  %i.cfy = getelementptr inbounds nuw i8, ptr %.88731396.i.prol, i64 8 ; 3 uses
  %indvars.iv.next1770.i.prol = add nuw nsw i64 %indvars.iv1769.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1316
  br i1 %prol.iter.cmp.not, label %scalar.ph869.prol.loopexit, label %scalar.ph869.prol, !llvm.loop !213

scalar.ph869.prol.loopexit:                       ; preds = %scalar.ph869.prol, %scalar.ph869.preheader
  %.lcssa1265.unr = phi ptr [ poison, %scalar.ph869.preheader ], [ %i.cfy, %scalar.ph869.prol ]
  %indvars.iv1769.i.unr = phi i64 [ %indvars.iv1769.i.ph, %scalar.ph869.preheader ], [ %indvars.iv.next1770.i.prol, %scalar.ph869.prol ]
  %.88731396.i.unr = phi ptr [ %.88731396.i.ph, %scalar.ph869.preheader ], [ %i.cfy, %scalar.ph869.prol ]
  %i.cfz = sub nsw i64 %indvars.iv1769.i.ph, %wide.trip.count1753.i
  %i.cga = icmp ugt i64 %i.cfz, -4
  br i1 %i.cga, label %._crit_edge1398.i, label %scalar.ph869

._crit_edge1398.i:                                ; preds = %scalar.ph869.prol.loopexit, %scalar.ph869, %middle.block884
  %.lcssa647 = phi ptr [ %i.cfl, %middle.block884 ], [ %.lcssa1265.unr, %scalar.ph869.prol.loopexit ], [ %i.cgz, %scalar.ph869 ]
  %i.cgb = add nuw nsw i32 %.38641401.i, 1        ; 2 uses
  %exitcond1774.not.i = icmp eq i32 %i.cgb, %i.cj
  br i1 %exitcond1774.not.i, label %._crit_edge1402.split.i, label %.preheader1090.i, !llvm.loop !214

scalar.ph869:                                     ; preds = %scalar.ph869.prol.loopexit, %scalar.ph869
  %indvars.iv1769.i = phi i64 [ %indvars.iv.next1770.i.3, %scalar.ph869 ], [ %indvars.iv1769.i.unr, %scalar.ph869.prol.loopexit ] ; 6 uses
  %.88731396.i = phi ptr [ %i.cgz, %scalar.ph869 ], [ %.88731396.i.unr, %scalar.ph869.prol.loopexit ] ; 9 uses
  %i.cgc = getelementptr inbounds nuw [4 x i8], ptr %.2879.lcssa.i, i64 %indvars.iv1769.i
  %i.cgd = getelementptr inbounds nuw [4 x i8], ptr %.2876.lcssa.i, i64 %indvars.iv1769.i
  %i.cge = load float, ptr %i.cgc, align 4, !tbaa !56
  store float %i.cge, ptr %.88731396.i, align 4, !tbaa !56
  %i.cgf = load float, ptr %i.cgd, align 4, !tbaa !56
  %i.cgg = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 4
  store float %i.cgf, ptr %i.cgg, align 4, !tbaa !56
  %i.cgh = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 8
  %indvars.iv.next1770.i = add nuw nsw i64 %indvars.iv1769.i, 1 ; 2 uses
  %i.cgi = getelementptr inbounds nuw [4 x i8], ptr %.2879.lcssa.i, i64 %indvars.iv.next1770.i
  %i.cgj = getelementptr inbounds nuw [4 x i8], ptr %.2876.lcssa.i, i64 %indvars.iv.next1770.i
  %i.cgk = load float, ptr %i.cgi, align 4, !tbaa !56
  store float %i.cgk, ptr %i.cgh, align 4, !tbaa !56
  %i.cgl = load float, ptr %i.cgj, align 4, !tbaa !56
  %i.cgm = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 12
  store float %i.cgl, ptr %i.cgm, align 4, !tbaa !56
  %i.cgn = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 16
  %indvars.iv.next1770.i.1 = add nuw nsw i64 %indvars.iv1769.i, 2 ; 2 uses
  %i.cgo = getelementptr inbounds nuw [4 x i8], ptr %.2879.lcssa.i, i64 %indvars.iv.next1770.i.1
  %i.cgp = getelementptr inbounds nuw [4 x i8], ptr %.2876.lcssa.i, i64 %indvars.iv.next1770.i.1
  %i.cgq = load float, ptr %i.cgo, align 4, !tbaa !56
  store float %i.cgq, ptr %i.cgn, align 4, !tbaa !56
  %i.cgr = load float, ptr %i.cgp, align 4, !tbaa !56
  %i.cgs = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 20
  store float %i.cgr, ptr %i.cgs, align 4, !tbaa !56
  %i.cgt = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 24
  %indvars.iv.next1770.i.2 = add nuw nsw i64 %indvars.iv1769.i, 3 ; 2 uses
  %i.cgu = getelementptr inbounds nuw [4 x i8], ptr %.2879.lcssa.i, i64 %indvars.iv.next1770.i.2
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %.2876.lcssa.i, i64 %indvars.iv.next1770.i.2
  %i.cgw = load float, ptr %i.cgu, align 4, !tbaa !56
  store float %i.cgw, ptr %i.cgt, align 4, !tbaa !56
  %i.cgx = load float, ptr %i.cgv, align 4, !tbaa !56
  %i.cgy = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 28
  store float %i.cgx, ptr %i.cgy, align 4, !tbaa !56
  %i.cgz = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 32 ; 2 uses
  %indvars.iv.next1770.i.3 = add nuw nsw i64 %indvars.iv1769.i, 4 ; 2 uses
  %exitcond1773.not.i.3 = icmp eq i64 %indvars.iv.next1770.i.3, %wide.trip.count1753.i
  br i1 %exitcond1773.not.i.3, label %._crit_edge1398.i, label %scalar.ph869, !llvm.loop !215

._crit_edge1402.split.i:                          ; preds = %._crit_edge1398.i, %.preheader1094.i, %.preheader1091.lr.ph.i
  %indvars.iv.next1776.i = add nuw nsw i64 %indvars.iv1775.i, 2 ; 3 uses
  %i.cha = or disjoint i64 %indvars.iv.next1776.i, 1 ; 2 uses
  %i.chb = icmp slt i64 %i.cha, %i.bgo
  %indvars.iv.next1744.i = add i32 %indvars.iv1743.i, %i.bgi
  %indvars.iv.next1748.i = add i32 %indvars.iv1747.i, %i.bgi
  %i.chc = trunc nuw nsw i64 %i.cha to i32
  br i1 %i.chb, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1089.loopexit.i, !llvm.loop !216

_ZN4ncnn3MatD2Ev.exit.i226:                       ; preds = %._crit_edge1461.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1461.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1807.i = phi i64 [ %indvars.iv.next1808.i, %._crit_edge1461.split.i ], [ %i.bva, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1779.i = phi i32 [ %indvars.iv.next1780.i, %._crit_edge1461.split.i ], [ %i.buw, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %i.chd = mul i32 %i.bvv, %indvar
  %i.che = add i32 %i.bvt, %i.chd
  %i.chf = sext i32 %i.che to i64
  %i.chg = shl nsw i64 %i.chf, 2                  ; 15 uses
  %scevgep1134 = getelementptr i8, ptr %scevgep1133.a, i64 %i.chg
  %scevgep1136 = getelementptr i8, ptr %scevgep1135.a, i64 %i.chg
  %scevgep1138 = getelementptr i8, ptr %scevgep1137.a, i64 %i.chg
  %scevgep1140 = getelementptr i8, ptr %scevgep1139.a, i64 %i.chg
  %scevgep1142 = getelementptr i8, ptr %scevgep1141.a, i64 %i.chg
  %scevgep1144 = getelementptr i8, ptr %scevgep1143, i64 %i.chg
  %scevgep1146 = getelementptr i8, ptr %scevgep1145, i64 %i.chg
  %scevgep1148 = getelementptr i8, ptr %scevgep1147, i64 %i.chg
  %scevgep1150 = getelementptr i8, ptr %scevgep1149, i64 %i.chg
  %scevgep1152 = getelementptr i8, ptr %scevgep1151, i64 %i.chg
  %scevgep1154 = getelementptr i8, ptr %scevgep1153, i64 %i.chg
  %scevgep1156 = getelementptr i8, ptr %scevgep1155, i64 %i.chg
  %scevgep1158 = getelementptr i8, ptr %scevgep1157, i64 %i.chg
  %scevgep1160 = getelementptr i8, ptr %scevgep1159, i64 %i.chg
  %scevgep1162 = getelementptr i8, ptr %scevgep1161, i64 %i.chg
  %i.chh = sext i32 %indvars.iv1779.i to i64
  %i.chi = shl nsw i64 %i.chh, 2
  %scevgep1781.i = getelementptr i8, ptr %scevgep1778.i, i64 %i.chi ; 2 uses
  %i.chj = trunc i64 %indvars.iv1807.i to i32     ; 5 uses
  %i.chk = mul i32 %i.bub, %i.chj
  %i.chl = sext i32 %i.chk to i64
  %i.chm = getelementptr [4 x i8], ptr %i.bua, i64 %i.chl ; 3 uses
  %i.chn = lshr i32 %i.chj, 3
  %i.cho = lshr i32 %i.chj, 2
  %i.chp = and i32 %i.cho, 1
  %i.chq = lshr i32 %i.chj, 1
  %i.chr = and i32 %i.chq, 1
  %i.chs = and i32 %i.chj, 1
  %i.cht = add nuw nsw i32 %i.chs, %i.chn
  %i.chu = add nuw nsw i32 %i.cht, %i.chp
  %i.chv = add nuw nsw i32 %i.chu, %i.chr
  %i.chw = zext nneg i32 %i.chv to i64
  %.reass1465.i = mul i64 %factor.op.mul1464.i, %i.chw
  %i.chx = getelementptr inbounds nuw i8, ptr %i.buc, i64 %.reass1465.i ; 4 uses
  br i1 %i.buh, label %.preheader1085.lr.ph.i, label %.preheader1088.i

.preheader1085.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i226
  br i1 %i.bui, label %.preheader1085.us.i.preheader, label %.preheader1088.thread.i

.preheader1085.us.i.preheader:                    ; preds = %.preheader1085.lr.ph.i
  %i.chy = insertelement <8 x ptr> poison, ptr %scevgep1140, i64 0
  %i.chz = insertelement <8 x ptr> %i.chy, ptr %scevgep1136, i64 1
  %i.cia = insertelement <8 x ptr> %i.chz, ptr %scevgep1144, i64 2
  %i.cib = insertelement <8 x ptr> %i.cia, ptr %scevgep1148, i64 3
  %i.cic = insertelement <8 x ptr> %i.cib, ptr %scevgep1152, i64 4
  %i.cid = insertelement <8 x ptr> %i.cic, ptr %scevgep1156, i64 5
  %i.cie = insertelement <8 x ptr> %i.cid, ptr %scevgep1160, i64 6
  %i.cif = insertelement <8 x ptr> %i.cie, ptr %scevgep1162, i64 7
  %i.cig = insertelement <8 x ptr> poison, ptr %scevgep1138, i64 0
  %i.cih = insertelement <8 x ptr> %i.cig, ptr %scevgep1134, i64 1
  %i.cii = insertelement <8 x ptr> %i.cih, ptr %scevgep1142, i64 2
  %i.cij = insertelement <8 x ptr> %i.cii, ptr %scevgep1146, i64 3
  %i.cik = insertelement <8 x ptr> %i.cij, ptr %scevgep1150, i64 4
  %i.cil = insertelement <8 x ptr> %i.cik, ptr %scevgep1154, i64 5
  %i.cim = insertelement <8 x ptr> %i.cil, ptr %scevgep1158, i64 6
  %i.cin = insertelement <8 x ptr> %i.cim, ptr %i.chm, i64 7
  br label %.preheader1085.us.i

.preheader1085.us.i:                              ; preds = %.preheader1085.us.i.preheader, %._crit_edge1412.us.i
  %.08271416.us.i = phi i32 [ %i.ckn, %._crit_edge1412.us.i ], [ 0, %.preheader1085.us.i.preheader ]
  %.08281415.us.i = phi ptr [ %.lcssa627, %._crit_edge1412.us.i ], [ %i.chx, %.preheader1085.us.i.preheader ] ; 6 uses
  %.08321414.us.i = phi ptr [ %i.ckm, %._crit_edge1412.us.i ], [ %i.chm, %.preheader1085.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check1203, label %scalar.ph1202.preheader, label %vector.memcheck1131

vector.memcheck1131:                              ; preds = %.preheader1085.us.i
  %scevgep1132 = getelementptr i8, ptr %.08281415.us.i, i64 %i.bvp
  %i.cio = insertelement <8 x ptr> poison, ptr %.08281415.us.i, i64 0
  %i.cip = shufflevector <8 x ptr> %i.cio, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ciq = icmp ult <8 x ptr> %i.cip, %i.cif
  %i.cir = insertelement <8 x ptr> poison, ptr %scevgep1132, i64 0
  %i.cis = shufflevector <8 x ptr> %i.cir, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cit = icmp ult <8 x ptr> %i.cin, %i.cis
  %i.ciu = and <8 x i1> %i.ciq, %i.cit
  %i.civ = bitcast <8 x i1> %i.ciu to i8
  %i.ciw = icmp ne i8 %i.civ, 0
  %op.rdx = or i1 %i.ciw, %stride.check1170
  br i1 %op.rdx, label %scalar.ph1202.preheader, label %vector.ph1204

vector.ph1204:                                    ; preds = %vector.memcheck1131
  %i.cix = getelementptr i8, ptr %.08281415.us.i, i64 %i.bww ; 2 uses
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1218, %vector.body1206 ] ; 3 uses
  %i.ciy = shl i64 %index1207, 5
  %next.gep1208 = getelementptr i8, ptr %.08281415.us.i, i64 %i.ciy
  %i.ciz = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %index1207 ; 2 uses
  %wide.load1209 = load <8 x float>, ptr %i.ciz, align 4, !tbaa !56, !alias.scope !305
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %i.ciz, i64 %i.buj ; 2 uses
  %wide.load1210 = load <8 x float>, ptr %i.cja, align 4, !tbaa !56, !alias.scope !306
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %i.cja, i64 %i.buj ; 2 uses
  %wide.load1211 = load <8 x float>, ptr %i.cjb, align 4, !tbaa !56, !alias.scope !307
  %i.cjc = getelementptr inbounds nuw [4 x i8], ptr %i.cjb, i64 %i.buj ; 2 uses
  %wide.load1212 = load <8 x float>, ptr %i.cjc, align 4, !tbaa !56, !alias.scope !308
  %i.cjd = getelementptr inbounds nuw [4 x i8], ptr %i.cjc, i64 %i.buj ; 2 uses
  %wide.load1213 = load <8 x float>, ptr %i.cjd, align 4, !tbaa !56, !alias.scope !309
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %i.cjd, i64 %i.buj ; 2 uses
  %wide.load1214 = load <8 x float>, ptr %i.cje, align 4, !tbaa !56, !alias.scope !310
  %i.cjf = getelementptr inbounds nuw [4 x i8], ptr %i.cje, i64 %i.buj ; 2 uses
  %wide.load1215 = load <8 x float>, ptr %i.cjf, align 4, !tbaa !56, !alias.scope !311
  %i.cjg = getelementptr inbounds nuw [4 x i8], ptr %i.cjf, i64 %i.buj
  %wide.load1216 = load <8 x float>, ptr %i.cjg, align 4, !tbaa !56, !alias.scope !312
  %i.cjh = shufflevector <8 x float> %wide.load1209, <8 x float> %wide.load1210, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cji = shufflevector <8 x float> %wide.load1211, <8 x float> %wide.load1212, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjj = shufflevector <8 x float> %wide.load1213, <8 x float> %wide.load1214, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjk = shufflevector <8 x float> %wide.load1215, <8 x float> %wide.load1216, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjl = shufflevector <16 x float> %i.cjh, <16 x float> %i.cji, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cjm = shufflevector <16 x float> %i.cjj, <16 x float> %i.cjk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1217 = shufflevector <32 x float> %i.cjl, <32 x float> %i.cjm, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec1217, ptr %next.gep1208, align 4, !tbaa !56, !alias.scope !313, !noalias !314
  %index.next1218 = add nuw i64 %index1207, 8     ; 2 uses
  %i.cjn = icmp eq i64 %index.next1218, %n.vec1205
  br i1 %i.cjn, label %middle.block1219, label %vector.body1206, !llvm.loop !227

middle.block1219:                                 ; preds = %vector.body1206
  br i1 %cmp.n1220, label %._crit_edge1412.us.i, label %scalar.ph1202.preheader

scalar.ph1202.preheader:                          ; preds = %vector.memcheck1131, %.preheader1085.us.i, %middle.block1219
  %indvars.iv1783.i.ph = phi i64 [ 0, %vector.memcheck1131 ], [ 0, %.preheader1085.us.i ], [ %n.vec1205, %middle.block1219 ]
  %.18291410.us.i.ph = phi ptr [ %.08281415.us.i, %vector.memcheck1131 ], [ %.08281415.us.i, %.preheader1085.us.i ], [ %i.cix, %middle.block1219 ]
  br label %scalar.ph1202

scalar.ph1202:                                    ; preds = %scalar.ph1202.preheader, %scalar.ph1202
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i, %scalar.ph1202 ], [ %indvars.iv1783.i.ph, %scalar.ph1202.preheader ] ; 2 uses
  %.18291410.us.i = phi ptr [ %i.ckl, %scalar.ph1202 ], [ %.18291410.us.i.ph, %scalar.ph1202.preheader ] ; 9 uses
  %i.cjo = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %indvars.iv1783.i ; 2 uses
  %i.cjp = load float, ptr %i.cjo, align 4, !tbaa !56
  store float %i.cjp, ptr %.18291410.us.i, align 4, !tbaa !56
  %i.cjq = getelementptr inbounds nuw [4 x i8], ptr %i.cjo, i64 %i.buj ; 2 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 4
  %i.cjs = load float, ptr %i.cjq, align 4, !tbaa !56
  store float %i.cjs, ptr %i.cjr, align 4, !tbaa !56
  %i.cjt = getelementptr inbounds nuw [4 x i8], ptr %i.cjq, i64 %i.buj ; 2 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 8
  %i.cjv = load float, ptr %i.cjt, align 4, !tbaa !56
  store float %i.cjv, ptr %i.cju, align 4, !tbaa !56
  %i.cjw = getelementptr inbounds nuw [4 x i8], ptr %i.cjt, i64 %i.buj ; 2 uses
  %i.cjx = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 12
  %i.cjy = load float, ptr %i.cjw, align 4, !tbaa !56
  store float %i.cjy, ptr %i.cjx, align 4, !tbaa !56
  %i.cjz = getelementptr inbounds nuw [4 x i8], ptr %i.cjw, i64 %i.buj ; 2 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 16
  %i.ckb = load float, ptr %i.cjz, align 4, !tbaa !56
  store float %i.ckb, ptr %i.cka, align 4, !tbaa !56
  %i.ckc = getelementptr inbounds nuw [4 x i8], ptr %i.cjz, i64 %i.buj ; 2 uses
  %i.ckd = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 20
  %i.cke = load float, ptr %i.ckc, align 4, !tbaa !56
  store float %i.cke, ptr %i.ckd, align 4, !tbaa !56
  %i.ckf = getelementptr inbounds nuw [4 x i8], ptr %i.ckc, i64 %i.buj ; 2 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 24
  %i.ckh = load float, ptr %i.ckf, align 4, !tbaa !56
  store float %i.ckh, ptr %i.ckg, align 4, !tbaa !56
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.ckf, i64 %i.buj
  %i.ckj = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 28
  %i.ckk = load float, ptr %i.cki, align 4, !tbaa !56
  store float %i.ckk, ptr %i.ckj, align 4, !tbaa !56
  %i.ckl = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 32 ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 1 ; 2 uses
  %exitcond1787.not.i = icmp eq i64 %indvars.iv.next1784.i, %wide.trip.count1786.i
  br i1 %exitcond1787.not.i, label %._crit_edge1412.us.i, label %scalar.ph1202, !llvm.loop !228

._crit_edge1412.us.i:                             ; preds = %scalar.ph1202, %middle.block1219
  %.lcssa627 = phi ptr [ %i.cix, %middle.block1219 ], [ %i.ckl, %scalar.ph1202 ] ; 2 uses
  %i.ckm = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %i.bul ; 2 uses
  %i.ckn = add nuw nsw i32 %.08271416.us.i, 8     ; 2 uses
  %i.cko = or disjoint i32 %i.ckn, 7
  %i.ckp = icmp slt i32 %i.cko, %i.cj
  br i1 %i.ckp, label %.preheader1085.us.i, label %.preheader1088.i, !llvm.loop !229

.preheader1088.i:                                 ; preds = %._crit_edge1412.us.i, %_ZN4ncnn3MatD2Ev.exit.i226
  %.0832.lcssa.i = phi ptr [ %i.chm, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %i.ckm, %._crit_edge1412.us.i ] ; 11 uses
  %.0828.lcssa.i = phi ptr [ %i.chx, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %.lcssa627, %._crit_edge1412.us.i ] ; 3 uses
  %.0827.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %i.buy, %._crit_edge1412.us.i ] ; 5 uses
  %i.ckq = or disjoint i32 %.0827.lcssa.i, 3
  %i.ckr = icmp slt i32 %i.ckq, %i.cj
  br i1 %i.ckr, label %.preheader1084.lr.ph.i, label %.preheader1087.i

.preheader1088.thread.i:                          ; preds = %.preheader1085.lr.ph.i
  br i1 %i.bvc, label %.preheader1084.preheader.i, label %.preheader1087.i

.preheader1084.lr.ph.i:                           ; preds = %.preheader1088.i
  br i1 %i.bui, label %.preheader1084.us.i.preheader, label %.preheader1084.preheader.i

.preheader1084.us.i.preheader:                    ; preds = %.preheader1084.lr.ph.i
  %scevgep1084 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvj
  %i.cks = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvj
  %scevgep1085 = getelementptr i8, ptr %i.cks, i64 %i.bvk
  %i.ckt = sub i32 %i.bvm, %.0827.lcssa.i
  %i.cku = lshr i32 %i.ckt, 2
  %i.ckv = zext nneg i32 %i.cku to i64
  %i.ckw = mul nsw i64 %i.bvl, %i.ckv             ; 4 uses
  %scevgep1086 = getelementptr i8, ptr %scevgep1085, i64 %i.ckw
  %scevgep1087 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvn
  %i.ckx = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvn
  %scevgep1088 = getelementptr i8, ptr %i.ckx, i64 %i.bvk
  %scevgep1089 = getelementptr i8, ptr %scevgep1088, i64 %i.ckw
  %scevgep1090 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvo
  %i.cky = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvo
  %scevgep1091 = getelementptr i8, ptr %i.cky, i64 %i.bvk
  %scevgep1092 = getelementptr i8, ptr %scevgep1091, i64 %i.ckw
  %scevgep1093 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvk
  %scevgep1094 = getelementptr i8, ptr %scevgep1093, i64 %i.ckw
  br label %.preheader1084.us.i

.preheader1084.preheader.i:                       ; preds = %.preheader1084.lr.ph.i, %.preheader1088.thread.i
  %.0832.lcssa19451953.i = phi ptr [ %.0832.lcssa.i, %.preheader1084.lr.ph.i ], [ %scevgep1781.i, %.preheader1088.thread.i ]
  %.0828.lcssa19461952.i = phi ptr [ %.0828.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.chx, %.preheader1088.thread.i ]
  %.0827.lcssa19471951.i = phi i32 [ %.0827.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.buy, %.preheader1088.thread.i ] ; 2 uses
  %i.ckz = sub i32 %i.buz, %.0827.lcssa19471951.i
  %i.cla = and i32 %i.ckz, -4                     ; 2 uses
  %i.clb = zext i32 %i.cla to i64
  %i.clc = add nuw nsw i64 %i.clb, 4
  %i.cld = mul nsw i64 %i.clc, %i.bun
  %scevgep1788.i = getelementptr i8, ptr %.0832.lcssa19451953.i, i64 %i.cld
  %i.cle = add i32 %.0827.lcssa19471951.i, 4
  %i.clf = add i32 %i.cle, %i.cla
  br label %.preheader1087.i

.preheader1084.us.i:                              ; preds = %.preheader1084.us.i.preheader, %._crit_edge1428.us.i
  %.11432.us.i = phi i32 [ %i.cnc, %._crit_edge1428.us.i ], [ %.0827.lcssa.i, %.preheader1084.us.i.preheader ]
  %.38311431.us.i = phi ptr [ %.lcssa629, %._crit_edge1428.us.i ], [ %.0828.lcssa.i, %.preheader1084.us.i.preheader ] ; 9 uses
  %.18331430.us.i = phi ptr [ %i.cnb, %._crit_edge1428.us.i ], [ %.0832.lcssa.i, %.preheader1084.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check1115, label %scalar.ph1114.preheader, label %vector.memcheck1082

vector.memcheck1082:                              ; preds = %.preheader1084.us.i
  %scevgep1083 = getelementptr i8, ptr %.38311431.us.i, i64 %i.bvi ; 4 uses
  %bound01095 = icmp ult ptr %.38311431.us.i, %scevgep1086
  %bound11096 = icmp ult ptr %scevgep1084, %scevgep1083
  %found.conflict1097 = and i1 %bound01095, %bound11096
  %bound01099 = icmp ult ptr %.38311431.us.i, %scevgep1089
  %bound11100 = icmp ult ptr %scevgep1087, %scevgep1083
  %found.conflict1101 = and i1 %bound01099, %bound11100
  %17 = or i1 %found.conflict1101, %stride.check1102
  %conflict.rdx1103 = or i1 %found.conflict1097, %17
  %bound01104 = icmp ult ptr %.38311431.us.i, %scevgep1092
  %bound11105 = icmp ult ptr %scevgep1090, %scevgep1083
  %found.conflict1106 = and i1 %bound01104, %bound11105
  %conflict.rdx1108 = or i1 %found.conflict1106, %conflict.rdx1103
  %bound01109 = icmp ult ptr %.38311431.us.i, %scevgep1094
  %bound11110 = icmp ult ptr %.0832.lcssa.i, %scevgep1083
  %found.conflict1111 = and i1 %bound01109, %bound11110
  %conflict.rdx1113 = or i1 %found.conflict1111, %conflict.rdx1108
  br i1 %conflict.rdx1113, label %scalar.ph1114.preheader, label %vector.ph1116

vector.ph1116:                                    ; preds = %vector.memcheck1082
  %i.clg = getelementptr i8, ptr %.38311431.us.i, i64 %i.bwx ; 2 uses
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %vector.ph1116
  %index1119 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1126, %vector.body1118 ] ; 3 uses
  %i.clh = shl i64 %index1119, 4
  %next.gep1120 = getelementptr i8, ptr %.38311431.us.i, i64 %i.clh
  %i.cli = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %index1119 ; 2 uses
  %wide.load1121 = load <8 x float>, ptr %i.cli, align 4, !tbaa !56, !alias.scope !315
  %i.clj = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.buj ; 2 uses
  %wide.load1122 = load <8 x float>, ptr %i.clj, align 4, !tbaa !56, !alias.scope !316
  %i.clk = getelementptr inbounds nuw [4 x i8], ptr %i.clj, i64 %i.buj ; 2 uses
  %wide.load1123 = load <8 x float>, ptr %i.clk, align 4, !tbaa !56, !alias.scope !317
  %i.cll = getelementptr inbounds nuw [4 x i8], ptr %i.clk, i64 %i.buj
  %wide.load1124 = load <8 x float>, ptr %i.cll, align 4, !tbaa !56, !alias.scope !318
  %i.clm = shufflevector <8 x float> %wide.load1121, <8 x float> %wide.load1122, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cln = shufflevector <8 x float> %wide.load1123, <8 x float> %wide.load1124, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec1125 = shufflevector <16 x float> %i.clm, <16 x float> %i.cln, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec1125, ptr %next.gep1120, align 4, !tbaa !56, !alias.scope !319, !noalias !320
  %index.next1126 = add nuw i64 %index1119, 8     ; 2 uses
  %i.clo = icmp eq i64 %index.next1126, %n.vec1117
  br i1 %i.clo, label %middle.block1127, label %vector.body1118, !llvm.loop !236

middle.block1127:                                 ; preds = %vector.body1118
  br i1 %cmp.n1128, label %._crit_edge1428.us.i, label %scalar.ph1114.preheader

scalar.ph1114.preheader:                          ; preds = %vector.memcheck1082, %.preheader1084.us.i, %middle.block1127
  %indvars.iv1790.i.ph = phi i64 [ 0, %vector.memcheck1082 ], [ 0, %.preheader1084.us.i ], [ %n.vec1117, %middle.block1127 ] ; 4 uses
  %.41426.us.i.ph = phi ptr [ %.38311431.us.i, %vector.memcheck1082 ], [ %.38311431.us.i, %.preheader1084.us.i ], [ %i.clg, %middle.block1127 ] ; 6 uses
  br i1 %lcmp.mod1319.not, label %scalar.ph1114.prol.loopexit, label %scalar.ph1114.prol

scalar.ph1114.prol:                               ; preds = %scalar.ph1114.preheader
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i.ph ; 2 uses
  %i.clq = load float, ptr %i.clp, align 4, !tbaa !56
  store float %i.clq, ptr %.41426.us.i.ph, align 4, !tbaa !56
  %i.clr = getelementptr inbounds nuw [4 x i8], ptr %i.clp, i64 %i.buj ; 2 uses
  %i.cls = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 4
  %i.clt = load float, ptr %i.clr, align 4, !tbaa !56
  store float %i.clt, ptr %i.cls, align 4, !tbaa !56
  %i.clu = getelementptr inbounds nuw [4 x i8], ptr %i.clr, i64 %i.buj ; 2 uses
  %i.clv = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 8
  %i.clw = load float, ptr %i.clu, align 4, !tbaa !56
  store float %i.clw, ptr %i.clv, align 4, !tbaa !56
  %i.clx = getelementptr inbounds nuw [4 x i8], ptr %i.clu, i64 %i.buj
  %i.cly = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 12
  %i.clz = load float, ptr %i.clx, align 4, !tbaa !56
  store float %i.clz, ptr %i.cly, align 4, !tbaa !56
  %i.cma = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1791.i.prol = or disjoint i64 %indvars.iv1790.i.ph, 1
  br label %scalar.ph1114.prol.loopexit

scalar.ph1114.prol.loopexit:                      ; preds = %scalar.ph1114.prol, %scalar.ph1114.preheader
  %.lcssa1247.unr = phi ptr [ poison, %scalar.ph1114.preheader ], [ %i.cma, %scalar.ph1114.prol ]
  %indvars.iv1790.i.unr = phi i64 [ %indvars.iv1790.i.ph, %scalar.ph1114.preheader ], [ %indvars.iv.next1791.i.prol, %scalar.ph1114.prol ]
  %.41426.us.i.unr = phi ptr [ %.41426.us.i.ph, %scalar.ph1114.preheader ], [ %i.cma, %scalar.ph1114.prol ]
  %i.cmb = icmp eq i64 %indvars.iv1790.i.ph, %i.bwy
  br i1 %i.cmb, label %._crit_edge1428.us.i, label %scalar.ph1114

scalar.ph1114:                                    ; preds = %scalar.ph1114.prol.loopexit, %scalar.ph1114
  %indvars.iv1790.i = phi i64 [ %indvars.iv.next1791.i.1, %scalar.ph1114 ], [ %indvars.iv1790.i.unr, %scalar.ph1114.prol.loopexit ] ; 3 uses
  %.41426.us.i = phi ptr [ %i.cna, %scalar.ph1114 ], [ %.41426.us.i.unr, %scalar.ph1114.prol.loopexit ] ; 9 uses
  %i.cmc = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i ; 2 uses
  %i.cmd = load float, ptr %i.cmc, align 4, !tbaa !56
  store float %i.cmd, ptr %.41426.us.i, align 4, !tbaa !56
  %i.cme = getelementptr inbounds nuw [4 x i8], ptr %i.cmc, i64 %i.buj ; 2 uses
  %i.cmf = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 4
  %i.cmg = load float, ptr %i.cme, align 4, !tbaa !56
  store float %i.cmg, ptr %i.cmf, align 4, !tbaa !56
  %i.cmh = getelementptr inbounds nuw [4 x i8], ptr %i.cme, i64 %i.buj ; 2 uses
  %i.cmi = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 8
  %i.cmj = load float, ptr %i.cmh, align 4, !tbaa !56
  store float %i.cmj, ptr %i.cmi, align 4, !tbaa !56
  %i.cmk = getelementptr inbounds nuw [4 x i8], ptr %i.cmh, i64 %i.buj
  %i.cml = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 12
  %i.cmm = load float, ptr %i.cmk, align 4, !tbaa !56
  store float %i.cmm, ptr %i.cml, align 4, !tbaa !56
  %i.cmn = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 16
  %i.cmo = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cmo, i64 4 ; 2 uses
  %i.cmq = load float, ptr %i.cmp, align 4, !tbaa !56
  store float %i.cmq, ptr %i.cmn, align 4, !tbaa !56
  %i.cmr = getelementptr inbounds nuw [4 x i8], ptr %i.cmp, i64 %i.buj ; 2 uses
  %i.cms = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 20
  %i.cmt = load float, ptr %i.cmr, align 4, !tbaa !56
  store float %i.cmt, ptr %i.cms, align 4, !tbaa !56
  %i.cmu = getelementptr inbounds nuw [4 x i8], ptr %i.cmr, i64 %i.buj ; 2 uses
  %i.cmv = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 24
  %i.cmw = load float, ptr %i.cmu, align 4, !tbaa !56
  store float %i.cmw, ptr %i.cmv, align 4, !tbaa !56
  %i.cmx = getelementptr inbounds nuw [4 x i8], ptr %i.cmu, i64 %i.buj
  %i.cmy = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 28
  %i.cmz = load float, ptr %i.cmx, align 4, !tbaa !56
  store float %i.cmz, ptr %i.cmy, align 4, !tbaa !56
  %i.cna = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 32 ; 2 uses
  %indvars.iv.next1791.i.1 = add nuw nsw i64 %indvars.iv1790.i, 2 ; 2 uses
  %exitcond1794.not.i.1 = icmp eq i64 %indvars.iv.next1791.i.1, %wide.trip.count1786.i
  br i1 %exitcond1794.not.i.1, label %._crit_edge1428.us.i, label %scalar.ph1114, !llvm.loop !237

._crit_edge1428.us.i:                             ; preds = %scalar.ph1114.prol.loopexit, %scalar.ph1114, %middle.block1127
  %.lcssa629 = phi ptr [ %i.clg, %middle.block1127 ], [ %.lcssa1247.unr, %scalar.ph1114.prol.loopexit ], [ %i.cna, %scalar.ph1114 ] ; 2 uses
  %i.cnb = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %i.bun ; 2 uses
  %i.cnc = add nuw nsw i32 %.11432.us.i, 4        ; 3 uses
  %i.cnd = or disjoint i32 %i.cnc, 3
  %i.cne = icmp slt i32 %i.cnd, %i.cj
  br i1 %i.cne, label %.preheader1084.us.i, label %.preheader1087.i, !llvm.loop !238

.preheader1087.i:                                 ; preds = %._crit_edge1428.us.i, %.preheader1084.preheader.i, %.preheader1088.thread.i, %.preheader1088.i
  %.1833.lcssa.i = phi ptr [ %.0832.lcssa.i, %.preheader1088.i ], [ %scevgep1781.i, %.preheader1088.thread.i ], [ %scevgep1788.i, %.preheader1084.preheader.i ], [ %i.cnb, %._crit_edge1428.us.i ] ; 6 uses
  %.3831.lcssa.i = phi ptr [ %.0828.lcssa.i, %.preheader1088.i ], [ %i.chx, %.preheader1088.thread.i ], [ %.0828.lcssa19461952.i, %.preheader1084.preheader.i ], [ %.lcssa629, %._crit_edge1428.us.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0827.lcssa.i, %.preheader1088.i ], [ %i.buy, %.preheader1088.thread.i ], [ %i.clf, %.preheader1084.preheader.i ], [ %i.cnc, %._crit_edge1428.us.i ] ; 4 uses
  %i.cnf = or disjoint i32 %.1.lcssa.i, 1
  %i.cng = icmp slt i32 %i.cnf, %i.cj
  br i1 %i.cng, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %.preheader1087.i
  br i1 %i.bui, label %.preheader1083.us.i.preheader, label %._crit_edge1461.split.i

.preheader1083.us.i.preheader:                    ; preds = %.preheader1083.lr.ph.i
  %scevgep1049 = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bve
  %i.cnh = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bve
  %scevgep1050 = getelementptr i8, ptr %i.cnh, i64 %i.bvf
  %i.cni = sub i32 %i.bvh, %.1.lcssa.i
  %i.cnj = lshr i32 %i.cni, 1
  %i.cnk = zext nneg i32 %i.cnj to i64
  %i.cnl = mul i64 %i.bvg, %i.cnk                 ; 2 uses
  %scevgep1051 = getelementptr i8, ptr %scevgep1050, i64 %i.cnl
  %scevgep1052 = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bvf
  %scevgep1053 = getelementptr i8, ptr %scevgep1052, i64 %i.cnl
  br label %.preheader1083.us.i

.preheader1083.us.i:                              ; preds = %.preheader1083.us.i.preheader, %._crit_edge1444.us.i
  %.21448.us.i = phi i32 [ %i.cpe, %._crit_edge1444.us.i ], [ %.1.lcssa.i, %.preheader1083.us.i.preheader ]
  %.61447.us.i = phi ptr [ %.lcssa632, %._crit_edge1444.us.i ], [ %.3831.lcssa.i, %.preheader1083.us.i.preheader ] ; 8 uses
  %.28341446.us.i = phi ptr [ %i.cpd, %._crit_edge1444.us.i ], [ %.1833.lcssa.i, %.preheader1083.us.i.preheader ] ; 7 uses
  br i1 %min.iters.check1064, label %scalar.ph1063.preheader, label %vector.memcheck1047

vector.memcheck1047:                              ; preds = %.preheader1083.us.i
  %scevgep1048 = getelementptr i8, ptr %.61447.us.i, i64 %i.bvd ; 2 uses
  %bound01054 = icmp ult ptr %.61447.us.i, %scevgep1051
  %bound11055 = icmp ult ptr %scevgep1049, %scevgep1048
  %found.conflict1056 = and i1 %bound01054, %bound11055
  %bound01058 = icmp ult ptr %.61447.us.i, %scevgep1053
  %bound11059 = icmp ult ptr %.1833.lcssa.i, %scevgep1048
  %found.conflict1060 = and i1 %bound01058, %bound11059
  %18 = or i1 %found.conflict1060, %stride.check1061
  %conflict.rdx1062 = or i1 %found.conflict1056, %18
  br i1 %conflict.rdx1062, label %scalar.ph1063.preheader, label %vector.ph1065

vector.ph1065:                                    ; preds = %vector.memcheck1047
  %i.cnm = getelementptr i8, ptr %.61447.us.i, i64 %i.bwz ; 2 uses
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1077, %vector.body1067 ] ; 3 uses
  %i.cnn = shl i64 %index1068, 3                  ; 2 uses
  %next.gep1069 = getelementptr i8, ptr %.61447.us.i, i64 %i.cnn
  %i.cno = getelementptr i8, ptr %.61447.us.i, i64 %i.cnn
  %next.gep1070 = getelementptr i8, ptr %i.cno, i64 16
  %i.cnp = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %index1068 ; 3 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8
  %wide.load1071 = load <2 x float>, ptr %i.cnp, align 4, !tbaa !56, !alias.scope !321
  %wide.load1072 = load <2 x float>, ptr %i.cnq, align 4, !tbaa !56, !alias.scope !321
  %i.cnr = getelementptr inbounds nuw [4 x i8], ptr %i.cnp, i64 %i.buj ; 2 uses
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnr, i64 8
  %wide.load1073 = load <2 x float>, ptr %i.cnr, align 4, !tbaa !56, !alias.scope !322
  %wide.load1074 = load <2 x float>, ptr %i.cns, align 4, !tbaa !56, !alias.scope !322
  %interleaved.vec1075 = shufflevector <2 x float> %wide.load1071, <2 x float> %wide.load1073, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec1075, ptr %next.gep1069, align 4, !tbaa !56, !alias.scope !323, !noalias !324
  %interleaved.vec1076 = shufflevector <2 x float> %wide.load1072, <2 x float> %wide.load1074, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec1076, ptr %next.gep1070, align 4, !tbaa !56, !alias.scope !323, !noalias !324
  %index.next1077 = add nuw i64 %index1068, 4     ; 2 uses
  %i.cnt = icmp eq i64 %index.next1077, %n.vec1066
  br i1 %i.cnt, label %middle.block1078, label %vector.body1067, !llvm.loop !243

middle.block1078:                                 ; preds = %vector.body1067
  br i1 %cmp.n1079, label %._crit_edge1444.us.i, label %scalar.ph1063.preheader

scalar.ph1063.preheader:                          ; preds = %vector.memcheck1047, %.preheader1083.us.i, %middle.block1078
  %indvars.iv1796.i.ph = phi i64 [ 0, %vector.memcheck1047 ], [ 0, %.preheader1083.us.i ], [ %n.vec1066, %middle.block1078 ] ; 3 uses
  %.71442.us.i.ph = phi ptr [ %.61447.us.i, %vector.memcheck1047 ], [ %.61447.us.i, %.preheader1083.us.i ], [ %i.cnm, %middle.block1078 ] ; 2 uses
  br i1 %lcmp.mod1322.not, label %scalar.ph1063.prol.loopexit, label %scalar.ph1063.prol

scalar.ph1063.prol:                               ; preds = %scalar.ph1063.preheader, %scalar.ph1063.prol
  %indvars.iv1796.i.prol = phi i64 [ %indvars.iv.next1797.i.prol, %scalar.ph1063.prol ], [ %indvars.iv1796.i.ph, %scalar.ph1063.preheader ] ; 2 uses
  %.71442.us.i.prol = phi ptr [ %i.cnz, %scalar.ph1063.prol ], [ %.71442.us.i.ph, %scalar.ph1063.preheader ] ; 3 uses
  %prol.iter1323 = phi i64 [ %prol.iter1323.next, %scalar.ph1063.prol ], [ 0, %scalar.ph1063.preheader ]
  %i.cnu = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1796.i.prol ; 2 uses
  %i.cnv = load float, ptr %i.cnu, align 4, !tbaa !56
  store float %i.cnv, ptr %.71442.us.i.prol, align 4, !tbaa !56
  %i.cnw = getelementptr inbounds nuw [4 x i8], ptr %i.cnu, i64 %i.buj
  %i.cnx = getelementptr inbounds nuw i8, ptr %.71442.us.i.prol, i64 4
  %i.cny = load float, ptr %i.cnw, align 4, !tbaa !56
  store float %i.cny, ptr %i.cnx, align 4, !tbaa !56
  %i.cnz = getelementptr inbounds nuw i8, ptr %.71442.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next1797.i.prol = add nuw nsw i64 %indvars.iv1796.i.prol, 1 ; 2 uses
  %prol.iter1323.next = add i64 %prol.iter1323, 1 ; 2 uses
  %prol.iter1323.cmp.not = icmp eq i64 %prol.iter1323.next, %xtraiter1321
  br i1 %prol.iter1323.cmp.not, label %scalar.ph1063.prol.loopexit, label %scalar.ph1063.prol, !llvm.loop !244

scalar.ph1063.prol.loopexit:                      ; preds = %scalar.ph1063.prol, %scalar.ph1063.preheader
  %.lcssa1250.unr = phi ptr [ poison, %scalar.ph1063.preheader ], [ %i.cnz, %scalar.ph1063.prol ]
  %indvars.iv1796.i.unr = phi i64 [ %indvars.iv1796.i.ph, %scalar.ph1063.preheader ], [ %indvars.iv.next1797.i.prol, %scalar.ph1063.prol ]
  %.71442.us.i.unr = phi ptr [ %.71442.us.i.ph, %scalar.ph1063.preheader ], [ %i.cnz, %scalar.ph1063.prol ]
  %i.coa = sub nsw i64 %indvars.iv1796.i.ph, %wide.trip.count1786.i
  %i.cob = icmp ugt i64 %i.coa, -4
  br i1 %i.cob, label %._crit_edge1444.us.i, label %scalar.ph1063

scalar.ph1063:                                    ; preds = %scalar.ph1063.prol.loopexit, %scalar.ph1063
  %indvars.iv1796.i = phi i64 [ %indvars.iv.next1797.i.3, %scalar.ph1063 ], [ %indvars.iv1796.i.unr, %scalar.ph1063.prol.loopexit ] ; 5 uses
  %.71442.us.i = phi ptr [ %i.cpc, %scalar.ph1063 ], [ %.71442.us.i.unr, %scalar.ph1063.prol.loopexit ] ; 9 uses
  %i.coc = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1796.i ; 2 uses
  %i.cod = load float, ptr %i.coc, align 4, !tbaa !56
  store float %i.cod, ptr %.71442.us.i, align 4, !tbaa !56
  %i.coe = getelementptr inbounds nuw [4 x i8], ptr %i.coc, i64 %i.buj
  %i.cof = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 4
  %i.cog = load float, ptr %i.coe, align 4, !tbaa !56
  store float %i.cog, ptr %i.cof, align 4, !tbaa !56
  %i.coh = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 8
  %i.coi = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1796.i
  %i.coj = getelementptr inbounds nuw i8, ptr %i.coi, i64 4 ; 2 uses
  %i.cok = load float, ptr %i.coj, align 4, !tbaa !56
  store float %i.cok, ptr %i.coh, align 4, !tbaa !56
  %i.col = getelementptr inbounds nuw [4 x i8], ptr %i.coj, i64 %i.buj
  %i.com = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 12
  %i.con = load float, ptr %i.col, align 4, !tbaa !56
  store float %i.con, ptr %i.com, align 4, !tbaa !56
  %i.coo = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 16
  %i.cop = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1796.i
  %i.coq = getelementptr inbounds nuw i8, ptr %i.cop, i64 8 ; 2 uses
  %i.cor = load float, ptr %i.coq, align 4, !tbaa !56
  store float %i.cor, ptr %i.coo, align 4, !tbaa !56
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.coq, i64 %i.buj
  %i.cot = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 20
  %i.cou = load float, ptr %i.cos, align 4, !tbaa !56
  store float %i.cou, ptr %i.cot, align 4, !tbaa !56
  %i.cov = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 24
  %i.cow = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1796.i
  %i.cox = getelementptr inbounds nuw i8, ptr %i.cow, i64 12 ; 2 uses
  %i.coy = load float, ptr %i.cox, align 4, !tbaa !56
  store float %i.coy, ptr %i.cov, align 4, !tbaa !56
  %i.coz = getelementptr inbounds nuw [4 x i8], ptr %i.cox, i64 %i.buj
  %i.cpa = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 28
  %i.cpb = load float, ptr %i.coz, align 4, !tbaa !56
  store float %i.cpb, ptr %i.cpa, align 4, !tbaa !56
  %i.cpc = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 32 ; 2 uses
  %indvars.iv.next1797.i.3 = add nuw nsw i64 %indvars.iv1796.i, 4 ; 2 uses
  %exitcond1800.not.i.3 = icmp eq i64 %indvars.iv.next1797.i.3, %wide.trip.count1786.i
  br i1 %exitcond1800.not.i.3, label %._crit_edge1444.us.i, label %scalar.ph1063, !llvm.loop !245

._crit_edge1444.us.i:                             ; preds = %scalar.ph1063.prol.loopexit, %scalar.ph1063, %middle.block1078
  %.lcssa632 = phi ptr [ %i.cnm, %middle.block1078 ], [ %.lcssa1250.unr, %scalar.ph1063.prol.loopexit ], [ %i.cpc, %scalar.ph1063 ] ; 2 uses
  %i.cpd = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %i.bup ; 2 uses
  %i.cpe = add nuw nsw i32 %.21448.us.i, 2        ; 3 uses
  %i.cpf = or disjoint i32 %i.cpe, 1
  %i.cpg = icmp slt i32 %i.cpf, %i.cj
  br i1 %i.cpg, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !246

.preheader1086.i:                                 ; preds = %._crit_edge1444.us.i, %.preheader1087.i
  %.2834.lcssa.i = phi ptr [ %.1833.lcssa.i, %.preheader1087.i ], [ %i.cpd, %._crit_edge1444.us.i ] ; 12 uses
  %.6.lcssa.i = phi ptr [ %.3831.lcssa.i, %.preheader1087.i ], [ %.lcssa632, %._crit_edge1444.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1087.i ], [ %i.cpe, %._crit_edge1444.us.i ] ; 2 uses
  %i.cph = icmp sge i32 %.2.lcssa.i, %i.cj
  %brmerge1475.i = or i1 %i.buq, %i.cph
  br i1 %brmerge1475.i, label %._crit_edge1461.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1086.i
  %.2834.lcssa.i1021 = ptrtoaddr ptr %.2834.lcssa.i to i64
  br label %iter.check

iter.check:                                       ; preds = %.preheader.i.preheader, %._crit_edge1457.i
  %.31460.i = phi i32 [ %i.cqc, %._crit_edge1457.i ], [ %.2.lcssa.i, %.preheader.i.preheader ]
  %.91459.i = phi ptr [ %.lcssa635, %._crit_edge1457.i ], [ %.6.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.91459.i1022 = ptrtoaddr ptr %.91459.i to i64
  %i.cpi = sub i64 %.2834.lcssa.i1021, %.91459.i1022
  %diff.check = icmp ugt i64 %i.cpi, -128
  %or.cond1237 = select i1 %min.iters.check1024, i1 true, i1 %diff.check
  br i1 %or.cond1237, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1025, label %vec.epilog.ph, label %vector.ph1026

vector.ph1026:                                    ; preds = %vector.main.loop.iter.check
  %i.cpj = getelementptr i8, ptr %.91459.i, i64 %i.bxb ; 2 uses
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.ph1026, %vector.body1028
  %index1029 = phi i64 [ 0, %vector.ph1026 ], [ %index.next1035, %vector.body1028 ] ; 3 uses
  %i.cpk = shl i64 %index1029, 2
  %next.gep1030 = getelementptr i8, ptr %.91459.i, i64 %i.cpk ; 4 uses
  %i.cpl = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index1029 ; 4 uses
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpl, i64 32
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpl, i64 64
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cpl, i64 96
  %wide.load1031 = load <8 x float>, ptr %i.cpl, align 4, !tbaa !56
  %wide.load1032 = load <8 x float>, ptr %i.cpm, align 4, !tbaa !56
  %wide.load1033 = load <8 x float>, ptr %i.cpn, align 4, !tbaa !56
  %wide.load1034 = load <8 x float>, ptr %i.cpo, align 4, !tbaa !56
  %i.cpp = getelementptr i8, ptr %next.gep1030, i64 32
  %i.cpq = getelementptr i8, ptr %next.gep1030, i64 64
  %i.cpr = getelementptr i8, ptr %next.gep1030, i64 96
  store <8 x float> %wide.load1031, ptr %next.gep1030, align 4, !tbaa !56
  store <8 x float> %wide.load1032, ptr %i.cpp, align 4, !tbaa !56
  store <8 x float> %wide.load1033, ptr %i.cpq, align 4, !tbaa !56
  store <8 x float> %wide.load1034, ptr %i.cpr, align 4, !tbaa !56
  %index.next1035 = add nuw i64 %index1029, 32    ; 2 uses
  %i.cps = icmp eq i64 %index.next1035, %n.vec1027
  br i1 %i.cps, label %middle.block1036, label %vector.body1028, !llvm.loop !247

middle.block1036:                                 ; preds = %vector.body1028
  br i1 %cmp.n1037, label %._crit_edge1457.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1036
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1027, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cpt = getelementptr i8, ptr %.91459.i, i64 %i.bxc ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1040 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1043, %vec.epilog.vector.body ] ; 3 uses
  %i.cpu = shl i64 %index1040, 2
  %next.gep1041 = getelementptr i8, ptr %.91459.i, i64 %i.cpu
  %i.cpv = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index1040
  %wide.load1042 = load <8 x float>, ptr %i.cpv, align 4, !tbaa !56
  store <8 x float> %wide.load1042, ptr %next.gep1041, align 4, !tbaa !56
  %index.next1043 = add nuw i64 %index1040, 8     ; 2 uses
  %i.cpw = icmp eq i64 %index.next1043, %n.vec1039
  br i1 %i.cpw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !248

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1044, label %._crit_edge1457.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1801.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec1027, %vec.epilog.iter.check ], [ %n.vec1039, %vec.epilog.middle.block ] ; 3 uses
  %.101455.i.ph = phi ptr [ %.91459.i, %iter.check ], [ %i.cpj, %vec.epilog.iter.check ], [ %i.cpt, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod1325.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv1801.i.prol = phi i64 [ %indvars.iv.next1802.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv1801.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.101455.i.prol = phi ptr [ %i.cpz, %vec.epilog.scalar.ph.prol ], [ %.101455.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1326 = phi i64 [ %prol.iter1326.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cpx = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1801.i.prol
  %i.cpy = load float, ptr %i.cpx, align 4, !tbaa !56
  store float %i.cpy, ptr %.101455.i.prol, align 4, !tbaa !56
  %i.cpz = getelementptr inbounds nuw i8, ptr %.101455.i.prol, i64 4 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn19Convolution_x86_fma24create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.kz, i32 noundef %i.lf, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit452.lr.ph.i

bb.cj:                                            ; preds = %bb.ch
  %i.lg = lshr i32 %i.o, 2
  %i.lh = lshr i32 %i.o, 1
  %i.li = and i32 %i.lh, 1
  %i.lj = and i32 %i.o, 1
  %i.lk = add nuw nsw i32 %i.lj, %i.lg
  %i.ll = add nuw nsw i32 %i.lk, %i.li
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.p, i32 noundef %i.ll, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit452.lr.ph.i

bb.ck:                                            ; preds = %bb.ce
  %i.lm = icmp sgt i32 %i.o, 1
  %i.ln = icmp sgt i32 %i.p, 7                    ; 2 uses
  br i1 %i.lm, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ln, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lo = lshr i32 %i.p, 3
  %i.lp = lshr i32 %i.p, 1
  %i.lq = and i32 %i.lp, 3
  %i.lr = and i32 %i.p, 1
  %i.ls = add nuw nsw i32 %i.lr, %i.lo
  %i.lt = add nuw nsw i32 %i.ls, %i.lq
  %i.lu = and i32 %i.o, 1
  %i.lv = add nuw nsw i32 %i.lu, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.lt, i32 noundef %i.lv, i64 noundef 16, i32 noundef 16, ptr noundef null)
  br label %.preheader515.i

bb.cn:                                            ; preds = %bb.cl
  %i.lw = icmp sgt i32 %i.p, 1
  br i1 %i.lw, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.lx = lshr i32 %i.p, 1
  %i.ly = sub nuw nsw i32 %i.p, %i.lx
  %i.lz = and i32 %i.o, 1
  %i.ma = add nuw nsw i32 %i.lz, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.ly, i32 noundef %i.ma, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %.preheader515.i

bb.cp:                                            ; preds = %bb.cn
  %i.mb = and i32 %i.o, 1
  %i.mc = add nuw nsw i32 %i.mb, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.p, i32 noundef %i.mc, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader515.i

bb.cq:                                            ; preds = %bb.ck
  br i1 %i.ln, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.md = lshr i32 %i.p, 3
  %i.me = lshr i32 %i.p, 1
  %i.mf = and i32 %i.me, 3
  %i.mg = and i32 %i.p, 1
  %i.mh = add nuw nsw i32 %i.mg, %i.md
  %i.mi = add nuw nsw i32 %i.mh, %i.mf
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.mi, i32 noundef %i.o, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %.preheader515.i

bb.cs:                                            ; preds = %bb.cq
  %i.mj = icmp sgt i32 %i.p, 1
  br i1 %i.mj, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.mk = lshr i32 %i.p, 1
  %i.ml = sub nuw nsw i32 %i.p, %i.mk
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.ml, i32 noundef %i.o, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader515.i

bb.cu:                                            ; preds = %bb.cs
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kh, i32 noundef %i.j, i32 noundef %i.p, i32 noundef %i.o, i64 noundef 1, i32 noundef 1, ptr noundef null)
  br label %.preheader515.i

_ZN4ncnn3MatD2Ev.exit452.lr.ph.i:                 ; preds = %bb.cj, %bb.ci, %bb.cg
  %i.mm = mul i32 %i.p, %i.j                      ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.mp = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.mq = sext i32 %i.j to i64                    ; 33 uses
  %i.mr = shl i32 %i.j, 1                         ; 3 uses
  %i.ms = zext nneg i32 %i.mr to i64              ; 12 uses
  %i.mt = shl i32 %i.j, 3
  %i.mu = sext i32 %i.mt to i64                   ; 4 uses
  %i.mv = sext i32 %i.mr to i64                   ; 5 uses
  %i.mw = icmp slt i32 %i.j, 1
  %i.mx = and i32 %i.p, -8
  %i.my = zext nneg i32 %i.o to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 26 uses
  %i.mz = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.na = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.nb = add nsw i64 %i.mq, %wide.trip.count.i   ; 4 uses
  %i.nc = add i32 %i.p, -2
  %min.iters.check276 = icmp ult i32 %i.j, 16
  %stride.check244 = icmp slt i32 %i.mr, 0
  %min.iters.check278 = icmp ult i32 %i.j, 32
  %i.nd = and i64 %wide.trip.count.i, 16
  %n.vec280 = and i64 %wide.trip.count.i, 2147483616 ; 5 uses
  %i.ne = shl nuw nsw i64 %n.vec280, 3
  %cmp.n295 = icmp eq i64 %n.vec280, %wide.trip.count.i
  %min.epilog.iters.check300.not.not = icmp eq i64 %i.nd, 0
  %n.vec302 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %i.nf = shl nuw nsw i64 %n.vec302, 3
  %cmp.n317 = icmp eq i64 %n.vec302, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.j, 8
  %min.iters.check200 = icmp ult i32 %i.j, 32
  %i.ng = and i64 %wide.trip.count.i, 24
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 5 uses
  %i.nh = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.ng, 0
  %n.vec204 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.ni = shl nuw nsw i64 %n.vec204, 2
  %cmp.n213 = icmp eq i64 %n.vec204, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.nj = add nsw i64 %wide.trip.count.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit452.i

.preheader515.loopexit.i:                         ; preds = %._crit_edge572.split.i
  %i.nk = trunc nuw nsw i64 %indvars.iv.next746.i to i32
  br label %.preheader515.i

.preheader515.i:                                  ; preds = %.preheader515.loopexit.i, %bb.cu, %bb.ct, %bb.cr, %bb.cp, %bb.co, %bb.cm
  %.0379.lcssa.i = phi i32 [ %i.nk, %.preheader515.loopexit.i ], [ 0, %bb.co ], [ 0, %bb.cp ], [ 0, %bb.cm ], [ 0, %bb.ct ], [ 0, %bb.cu ], [ 0, %bb.cr ] ; 4 uses
  %i.nl = or disjoint i32 %.0379.lcssa.i, 1
  %i.nm = icmp slt i32 %i.nl, %i.o
  br i1 %i.nm, label %_ZN4ncnn3MatD2Ev.exit451.lr.ph.i, label %.preheader509.i

_ZN4ncnn3MatD2Ev.exit451.lr.ph.i:                 ; preds = %.preheader515.i
  %i.nn = mul i32 %i.p, %i.j                      ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.nq = icmp sgt i32 %i.p, 7
  %i.nr = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.ns = sext i32 %i.j to i64                    ; 15 uses
  %i.nt = shl i32 %i.j, 1                         ; 3 uses
  %i.nu = zext nneg i32 %i.nt to i64              ; 2 uses
  %i.nv = mul nuw nsw i32 %i.j, 3
  %i.nw = zext nneg i32 %i.nv to i64              ; 2 uses
  %i.nx = shl nuw nsw i32 %i.j, 2
  %i.ny = zext nneg i32 %i.nx to i64              ; 2 uses
  %i.nz = mul nuw nsw i32 %i.j, 5
  %i.oa = zext nneg i32 %i.nz to i64              ; 2 uses
  %i.ob = mul nuw nsw i32 %i.j, 6
  %i.oc = zext nneg i32 %i.ob to i64              ; 2 uses
  %i.od = mul nuw nsw i32 %i.j, 7
  %i.oe = zext nneg i32 %i.od to i64              ; 2 uses
  %i.of = shl i32 %i.j, 3
  %i.og = sext i32 %i.of to i64                   ; 2 uses
  %i.oh = sext i32 %i.nt to i64                   ; 3 uses
  %i.oi = icmp slt i32 %i.j, 1
  %i.oj = and i32 %i.p, -8
  %i.ok = zext nneg i32 %.0379.lcssa.i to i64
  %i.ol = add i32 %.0379.lcssa.i, 1
  %i.om = sext i32 %i.o to i64
  %wide.trip.count758.i = zext i32 %i.j to i64    ; 24 uses
  %invariant.op.i = add nsw i64 %i.om, -1
  %i.on = shl nuw nsw i64 %wide.trip.count758.i, 1
  %i.oo = shl nuw nsw i64 %wide.trip.count758.i, 2
  %i.op = add nsw i64 %i.ns, %wide.trip.count758.i ; 2 uses
  %i.oq = add i32 %i.p, -2
  %min.iters.check398 = icmp ult i32 %i.j, 8
  %stride.check386 = icmp slt i32 %i.nt, 0
  %min.iters.check400 = icmp ult i32 %i.j, 32
  %i.or = and i64 %wide.trip.count758.i, 24
  %n.vec402 = and i64 %wide.trip.count758.i, 2147483616 ; 5 uses
  %i.os = shl nuw nsw i64 %n.vec402, 2
  %cmp.n413 = icmp eq i64 %n.vec402, %wide.trip.count758.i
  %min.epilog.iters.check418 = icmp eq i64 %i.or, 0
  %n.vec420 = and i64 %wide.trip.count758.i, 2147483640 ; 4 uses
  %i.ot = shl nuw nsw i64 %n.vec420, 2
  %cmp.n431 = icmp eq i64 %n.vec420, %wide.trip.count758.i
  %xtraiter663 = and i64 %wide.trip.count758.i, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  %i.ou = add nsw i64 %wide.trip.count758.i, -1
  %min.iters.check331 = icmp ult i32 %i.j, 4
  %min.iters.check333 = icmp ult i32 %i.j, 16
  %i.ov = and i64 %wide.trip.count758.i, 12
  %n.vec335 = and i64 %wide.trip.count758.i, 2147483632 ; 5 uses
  %i.ow = shl nuw nsw i64 %n.vec335, 1
  %cmp.n348 = icmp eq i64 %n.vec335, %wide.trip.count758.i
  %min.epilog.iters.check353 = icmp eq i64 %i.ov, 0
  %n.vec355 = and i64 %wide.trip.count758.i, 2147483644 ; 4 uses
  %i.ox = shl nuw nsw i64 %n.vec355, 1
  %cmp.n364 = icmp eq i64 %n.vec355, %wide.trip.count758.i
  %xtraiter665 = and i64 %wide.trip.count758.i, 3 ; 2 uses
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br label %_ZN4ncnn3MatD2Ev.exit451.i

_ZN4ncnn3MatD2Ev.exit452.i:                       ; preds = %._crit_edge572.split.i, %_ZN4ncnn3MatD2Ev.exit452.lr.ph.i
  %indvars.iv745.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit452.lr.ph.i ], [ %indvars.iv.next746.i, %._crit_edge572.split.i ] ; 3 uses
  %i.oy = load ptr, ptr %i.av, align 8, !tbaa !37 ; 4 uses
  %i.oz = trunc i64 %indvars.iv745.i to i32       ; 4 uses
  %i.pa = mul i32 %i.mm, %i.oz
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds i8, ptr %i.oy, i64 %i.pb ; 2 uses
  %i.pd = or disjoint i32 %i.oz, 1
  %i.pe = mul i32 %i.pd, %i.mm
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds i8, ptr %i.oy, i64 %i.pf ; 2 uses
  %i.ph = or disjoint i32 %i.oz, 2
  %i.pi = mul i32 %i.ph, %i.mm
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds i8, ptr %i.oy, i64 %i.pj ; 2 uses
  %i.pl = or disjoint i32 %i.oz, 3
  %i.pm = mul i32 %i.pl, %i.mm
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds i8, ptr %i.oy, i64 %i.pn ; 2 uses
  %i.pp = lshr exact i64 %indvars.iv745.i, 2
  %i.pq = load ptr, ptr %i.kh, align 8, !tbaa !37, !noalias !542
  %i.pr = load i64, ptr %i.mn, align 8, !tbaa !38, !noalias !542
  %i.ps = mul i64 %i.pr, %i.pp
  %i.pt = load i64, ptr %i.mo, align 8, !tbaa !79, !noalias !542
  %i.pu = mul i64 %i.ps, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pu ; 2 uses
  br i1 %i.kk, label %.preheader518.lr.ph.i, label %.preheader520.i

.preheader518.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit452.i
  br i1 %i.mp, label %.preheader518.us.i, label %._crit_edge572.split.i

.preheader518.us.i:                               ; preds = %.preheader518.lr.ph.i, %._crit_edge.us.i
  %.0392534.us.i = phi ptr [ %i.to, %._crit_edge.us.i ], [ %i.pc, %.preheader518.lr.ph.i ] ; 2 uses
  %.0394533.us.i = phi ptr [ %i.tp, %._crit_edge.us.i ], [ %i.pg, %.preheader518.lr.ph.i ] ; 2 uses
  %.0397532.us.i = phi ptr [ %i.tq, %._crit_edge.us.i ], [ %i.pk, %.preheader518.lr.ph.i ] ; 2 uses
  %.0399531.us.i = phi ptr [ %i.tr, %._crit_edge.us.i ], [ %i.po, %.preheader518.lr.ph.i ] ; 2 uses
  %.0402530.us.i = phi ptr [ %i.tn, %._crit_edge.us.i ], [ %i.pv, %.preheader518.lr.ph.i ]
  %.0409529.us.i = phi i32 [ %i.ts, %._crit_edge.us.i ], [ 0, %.preheader518.lr.ph.i ]
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.preheader518.us.i
  %indvars.iv727.i = phi i64 [ 0, %.preheader518.us.i ], [ %indvars.iv.next728.i, %bb.cv ] ; 5 uses
  %.1403528.us.i = phi ptr [ %.0402530.us.i, %.preheader518.us.i ], [ %i.tn, %bb.cv ] ; 33 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0392534.us.i, i64 %indvars.iv727.i ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0394533.us.i, i64 %indvars.iv727.i ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.0397532.us.i, i64 %indvars.iv727.i ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0399531.us.i, i64 %indvars.iv727.i ; 3 uses
  %i.qa = load i8, ptr %i.pw, align 1, !tbaa !114
  store i8 %i.qa, ptr %.1403528.us.i, align 1, !tbaa !114
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.mq
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !114
  %i.qd = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 1
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !114
  %i.qe = load i8, ptr %i.px, align 1, !tbaa !114
  %i.qf = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 2
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !114
  %i.qg = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.mq
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !114
  %i.qi = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 3
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !114
  %i.qj = load i8, ptr %i.py, align 1, !tbaa !114
  %i.qk = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 4
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !114
  %i.ql = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.mq
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !114
  %i.qn = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 5
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !114
  %i.qo = load i8, ptr %i.pz, align 1, !tbaa !114
  %i.qp = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 6
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !114
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.mq
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !114
  %i.qs = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 7
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !114
  %i.qt = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.ms ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.ms ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.ms ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.ms ; 3 uses
  %i.qy = load i8, ptr %i.qu, align 1, !tbaa !114
  store i8 %i.qy, ptr %i.qt, align 1, !tbaa !114
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.mq
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !114
  %i.rb = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 9
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !114
  %i.rc = load i8, ptr %i.qv, align 1, !tbaa !114
  %i.rd = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 10
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !114
  %i.re = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.mq
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !114
  %i.rg = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 11
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !114
  %i.rh = load i8, ptr %i.qw, align 1, !tbaa !114
  %i.ri = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 12
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !114
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.mq
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !114
  %i.rl = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 13
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !114
  %i.rm = load i8, ptr %i.qx, align 1, !tbaa !114
  %i.rn = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 14
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !114
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.mq
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !114
  %i.rq = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 15
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !114
  %i.rr = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.ms ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.ms ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.ms ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.ms ; 3 uses
  %i.rw = load i8, ptr %i.rs, align 1, !tbaa !114
  store i8 %i.rw, ptr %i.rr, align 1, !tbaa !114
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.mq
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !114
  %i.rz = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 17
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !114
  %i.sa = load i8, ptr %i.rt, align 1, !tbaa !114
  %i.sb = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 18
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !114
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.mq
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !114
  %i.se = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 19
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !114
  %i.sf = load i8, ptr %i.ru, align 1, !tbaa !114
  %i.sg = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 20
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !114
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.mq
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !114
  %i.sj = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 21
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !114
  %i.sk = load i8, ptr %i.rv, align 1, !tbaa !114
  %i.sl = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 22
  store i8 %i.sk, ptr %i.sl, align 1, !tbaa !114
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.mq
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !114
  %i.so = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 23
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !114
  %i.sp = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.ms ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.ms ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.ms ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.ms ; 2 uses
  %i.su = load i8, ptr %i.sq, align 1, !tbaa !114
  store i8 %i.su, ptr %i.sp, align 1, !tbaa !114
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.mq
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !114
  %i.sx = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 25
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !114
  %i.sy = load i8, ptr %i.sr, align 1, !tbaa !114
  %i.sz = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 26
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !114
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.mq
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !114
  %i.tc = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 27
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !114
  %i.td = load i8, ptr %i.ss, align 1, !tbaa !114
  %i.te = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 28
  store i8 %i.td, ptr %i.te, align 1, !tbaa !114
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.mq
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !114
  %i.th = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 29
  store i8 %i.tg, ptr %i.th, align 1, !tbaa !114
  %i.ti = load i8, ptr %i.st, align 1, !tbaa !114
  %i.tj = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 30
  store i8 %i.ti, ptr %i.tj, align 1, !tbaa !114
  %i.tk = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.mq
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !114
  %i.tm = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 31
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !114
  %i.tn = getelementptr inbounds nuw i8, ptr %.1403528.us.i, i64 32 ; 3 uses
  %indvars.iv.next728.i = add nuw nsw i64 %indvars.iv727.i, 1 ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next728.i, %wide.trip.count.i
  br i1 %exitcond.not.i35, label %._crit_edge.us.i, label %bb.cv, !llvm.loop !458

._crit_edge.us.i:                                 ; preds = %bb.cv
  %i.to = getelementptr inbounds nuw i8, ptr %.0392534.us.i, i64 %i.mu ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.0394533.us.i, i64 %i.mu ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0397532.us.i, i64 %i.mu ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.0399531.us.i, i64 %i.mu ; 2 uses
  %i.ts = add nuw nsw i32 %.0409529.us.i, 8       ; 2 uses
  %i.tt = or disjoint i32 %i.ts, 7
  %i.tu = icmp slt i32 %i.tt, %i.p
  br i1 %i.tu, label %.preheader518.us.i, label %.preheader520.i, !llvm.loop !459

.preheader520.i:                                  ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit452.i
  %.0409.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit452.i ], [ %i.mx, %._crit_edge.us.i ] ; 4 uses
  %.0402.lcssa.i = phi ptr [ %i.pv, %_ZN4ncnn3MatD2Ev.exit452.i ], [ %i.tn, %._crit_edge.us.i ] ; 2 uses
  %.0399.lcssa.i = phi ptr [ %i.po, %_ZN4ncnn3MatD2Ev.exit452.i ], [ %i.tr, %._crit_edge.us.i ] ; 6 uses
  %.0397.lcssa.i = phi ptr [ %i.pk, %_ZN4ncnn3MatD2Ev.exit452.i ], [ %i.tq, %._crit_edge.us.i ] ; 6 uses
  %.0394.lcssa.i = phi ptr [ %i.pg, %_ZN4ncnn3MatD2Ev.exit452.i ], [ %i.tp, %._crit_edge.us.i ] ; 6 uses
  %.0392.lcssa.i = phi ptr [ %i.pc, %_ZN4ncnn3MatD2Ev.exit452.i ], [ %i.to, %._crit_edge.us.i ] ; 6 uses
  %i.tv = or disjoint i32 %.0409.lcssa.i, 1
  %i.tw = icmp slt i32 %i.tv, %i.p
  br i1 %i.tw, label %.preheader517.lr.ph.i, label %.preheader519.i

.preheader517.lr.ph.i:                            ; preds = %.preheader520.i
  br i1 %i.mp, label %.preheader517.us.i.preheader, label %._crit_edge572.split.i

.preheader517.us.i.preheader:                     ; preds = %.preheader517.lr.ph.i
  %scevgep218 = getelementptr i8, ptr %.0399.lcssa.i, i64 %i.mq
  %scevgep219 = getelementptr i8, ptr %.0399.lcssa.i, i64 %i.nb
  %i.tx = sub i32 %i.nc, %.0409.lcssa.i
  %i.ty = lshr i32 %i.tx, 1
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = mul nsw i64 %i.mv, %i.tz                ; 8 uses
  %scevgep220 = getelementptr i8, ptr %scevgep219, i64 %i.ua
  %scevgep221 = getelementptr i8, ptr %.0399.lcssa.i, i64 %wide.trip.count.i
  %scevgep222 = getelementptr i8, ptr %scevgep221, i64 %i.ua
  %scevgep223 = getelementptr i8, ptr %.0397.lcssa.i, i64 %i.mq
  %scevgep224 = getelementptr i8, ptr %.0397.lcssa.i, i64 %i.nb
  %scevgep225 = getelementptr i8, ptr %scevgep224, i64 %i.ua
  %scevgep226 = getelementptr i8, ptr %.0397.lcssa.i, i64 %wide.trip.count.i
  %scevgep227 = getelementptr i8, ptr %scevgep226, i64 %i.ua
  %scevgep228 = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.mq
  %scevgep229 = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.nb
  %scevgep230 = getelementptr i8, ptr %scevgep229, i64 %i.ua
  %scevgep231 = getelementptr i8, ptr %.0394.lcssa.i, i64 %wide.trip.count.i
  %scevgep232 = getelementptr i8, ptr %scevgep231, i64 %i.ua
  %scevgep233 = getelementptr i8, ptr %.0392.lcssa.i, i64 %i.mq
  %scevgep234 = getelementptr i8, ptr %.0392.lcssa.i, i64 %i.nb
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.ua
  %scevgep236 = getelementptr i8, ptr %.0392.lcssa.i, i64 %wide.trip.count.i
  %scevgep237 = getelementptr i8, ptr %scevgep236, i64 %i.ua
  %5 = insertelement <8 x ptr> poison, ptr %scevgep222, i64 0
  %6 = insertelement <8 x ptr> %5, ptr %scevgep227, i64 1
  %i.ub = insertelement <8 x ptr> %6, ptr %scevgep232, i64 2
  %i.uc = insertelement <8 x ptr> %i.ub, ptr %scevgep237, i64 3
  %i.ud = insertelement <8 x ptr> %i.uc, ptr %scevgep220, i64 4
  %i.ue = insertelement <8 x ptr> %i.ud, ptr %scevgep225, i64 5
  %i.uf = insertelement <8 x ptr> %i.ue, ptr %scevgep230, i64 6
  %i.ug = insertelement <8 x ptr> %i.uf, ptr %scevgep235, i64 7
  %i.uh = insertelement <8 x ptr> poison, ptr %.0399.lcssa.i, i64 0
  %i.ui = insertelement <8 x ptr> %i.uh, ptr %.0397.lcssa.i, i64 1
  %i.uj = insertelement <8 x ptr> %i.ui, ptr %.0394.lcssa.i, i64 2
  %i.uk = insertelement <8 x ptr> %i.uj, ptr %.0392.lcssa.i, i64 3
  %i.ul = insertelement <8 x ptr> %i.uk, ptr %scevgep218, i64 4
  %i.um = insertelement <8 x ptr> %i.ul, ptr %scevgep223, i64 5
  %7 = insertelement <8 x ptr> %i.um, ptr %scevgep228, i64 6
  %8 = insertelement <8 x ptr> %7, ptr %scevgep233, i64 7
  br label %iter.check297

iter.check297:                                    ; preds = %.preheader517.us.i.preheader, %._crit_edge.us560.i
  %.1393553.us.i = phi ptr [ %i.xc, %._crit_edge.us560.i ], [ %.0392.lcssa.i, %.preheader517.us.i.preheader ] ; 4 uses
  %.1395552.us.i = phi ptr [ %i.xd, %._crit_edge.us560.i ], [ %.0394.lcssa.i, %.preheader517.us.i.preheader ] ; 4 uses
  %.1398551.us.i = phi ptr [ %i.xe, %._crit_edge.us560.i ], [ %.0397.lcssa.i, %.preheader517.us.i.preheader ] ; 4 uses
  %.1400550.us.i = phi ptr [ %i.xf, %._crit_edge.us560.i ], [ %.0399.lcssa.i, %.preheader517.us.i.preheader ] ; 4 uses
  %.3405549.us.i = phi ptr [ %.lcssa178, %._crit_edge.us560.i ], [ %.0402.lcssa.i, %.preheader517.us.i.preheader ] ; 8 uses
  %.1410548.us.i = phi i32 [ %i.xg, %._crit_edge.us560.i ], [ %.0409.lcssa.i, %.preheader517.us.i.preheader ]
  br i1 %min.iters.check276, label %vec.epilog.scalar.ph298.preheader, label %vector.memcheck216

vector.memcheck216:                               ; preds = %iter.check297
  %scevgep217 = getelementptr i8, ptr %.3405549.us.i, i64 %i.na
  %i.un = insertelement <8 x ptr> poison, ptr %.3405549.us.i, i64 0
  %i.uo = shufflevector <8 x ptr> %i.un, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.up = icmp ult <8 x ptr> %i.uo, %i.ug
  %i.uq = insertelement <8 x ptr> poison, ptr %scevgep217, i64 0
  %i.ur = shufflevector <8 x ptr> %i.uq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.us = icmp ult <8 x ptr> %8, %i.ur
  %i.ut = and <8 x i1> %i.up, %i.us
  %i.uu = bitcast <8 x i1> %i.ut to i8
  %i.uv = icmp ne i8 %i.uu, 0
  %op.rdx636 = or i1 %i.uv, %stride.check244
  br i1 %op.rdx636, label %vec.epilog.scalar.ph298.preheader, label %vector.main.loop.iter.check277

vector.main.loop.iter.check277:                   ; preds = %vector.memcheck216
  br i1 %min.iters.check278, label %vec.epilog.ph301, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check277
  %i.uw = getelementptr i8, ptr %.3405549.us.i, i64 %i.ne ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.ph279, %vector.body281
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next293, %vector.body281 ] ; 6 uses
  %i.ux = shl i64 %index282, 3
  %next.gep283 = getelementptr i8, ptr %.3405549.us.i, i64 %i.ux
  %i.uy = getelementptr inbounds nuw i8, ptr %.1393553.us.i, i64 %index282 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.1395552.us.i, i64 %index282 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.1398551.us.i, i64 %index282 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.1400550.us.i, i64 %index282 ; 2 uses
  %wide.load284.a = load <32 x i8>, ptr %i.uy, align 1, !tbaa !114, !alias.scope !543
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.mq
  %wide.load285 = load <32 x i8>, ptr %i.vc, align 1, !tbaa !114, !alias.scope !544
  %wide.load286 = load <32 x i8>, ptr %i.uz, align 1, !tbaa !114, !alias.scope !545
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.mq
  %wide.load287 = load <32 x i8>, ptr %i.vd, align 1, !tbaa !114, !alias.scope !546
  %wide.load288 = load <32 x i8>, ptr %i.va, align 1, !tbaa !114, !alias.scope !547
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.mq
  %wide.load289 = load <32 x i8>, ptr %i.ve, align 1, !tbaa !114, !alias.scope !548
  %wide.load290 = load <32 x i8>, ptr %i.vb, align 1, !tbaa !114, !alias.scope !549
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.mq
  %wide.load291 = load <32 x i8>, ptr %i.vf, align 1, !tbaa !114, !alias.scope !550
  %i.vg = shufflevector <32 x i8> %wide.load284.a, <32 x i8> %wide.load285, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.vh = shufflevector <32 x i8> %wide.load286, <32 x i8> %wide.load287, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.vi = shufflevector <32 x i8> %wide.load288, <32 x i8> %wide.load289, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.vj = shufflevector <32 x i8> %wide.load290, <32 x i8> %wide.load291, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.vk = shufflevector <64 x i8> %i.vg, <64 x i8> %i.vh, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.vl = shufflevector <64 x i8> %i.vi, <64 x i8> %i.vj, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec292 = shufflevector <128 x i8> %i.vk, <128 x i8> %i.vl, <256 x i32> <i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 1, i32 33, i32 65, i32 97, i32 129, i32 161, i32 193, i32 225, i32 2, i32 34, i32 66, i32 98, i32 130, i32 162, i32 194, i32 226, i32 3, i32 35, i32 67, i32 99, i32 131, i32 163, i32 195, i32 227, i32 4, i32 36, i32 68, i32 100, i32 132, i32 164, i32 196, i32 228, i32 5, i32 37, i32 69, i32 101, i32 133, i32 165, i32 197, i32 229, i32 6, i32 38, i32 70, i32 102, i32 134, i32 166, i32 198, i32 230, i32 7, i32 39, i32 71, i32 103, i32 135, i32 167, i32 199, i32 231, i32 8, i32 40, i32 72, i32 104, i32 136, i32 168, i32 200, i32 232, i32 9, i32 41, i32 73, i32 105, i32 137, i32 169, i32 201, i32 233, i32 10, i32 42, i32 74, i32 106, i32 138, i32 170, i32 202, i32 234, i32 11, i32 43, i32 75, i32 107, i32 139, i32 171, i32 203, i32 235, i32 12, i32 44, i32 76, i32 108, i32 140, i32 172, i32 204, i32 236, i32 13, i32 45, i32 77, i32 109, i32 141, i32 173, i32 205, i32 237, i32 14, i32 46, i32 78, i32 110, i32 142, i32 174, i32 206, i32 238, i32 15, i32 47, i32 79, i32 111, i32 143, i32 175, i32 207, i32 239, i32 16, i32 48, i32 80, i32 112, i32 144, i32 176, i32 208, i32 240, i32 17, i32 49, i32 81, i32 113, i32 145, i32 177, i32 209, i32 241, i32 18, i32 50, i32 82, i32 114, i32 146, i32 178, i32 210, i32 242, i32 19, i32 51, i32 83, i32 115, i32 147, i32 179, i32 211, i32 243, i32 20, i32 52, i32 84, i32 116, i32 148, i32 180, i32 212, i32 244, i32 21, i32 53, i32 85, i32 117, i32 149, i32 181, i32 213, i32 245, i32 22, i32 54, i32 86, i32 118, i32 150, i32 182, i32 214, i32 246, i32 23, i32 55, i32 87, i32 119, i32 151, i32 183, i32 215, i32 247, i32 24, i32 56, i32 88, i32 120, i32 152, i32 184, i32 216, i32 248, i32 25, i32 57, i32 89, i32 121, i32 153, i32 185, i32 217, i32 249, i32 26, i32 58, i32 90, i32 122, i32 154, i32 186, i32 218, i32 250, i32 27, i32 59, i32 91, i32 123, i32 155, i32 187, i32 219, i32 251, i32 28, i32 60, i32 92, i32 124, i32 156, i32 188, i32 220, i32 252, i32 29, i32 61, i32 93, i32 125, i32 157, i32 189, i32 221, i32 253, i32 30, i32 62, i32 94, i32 126, i32 158, i32 190, i32 222, i32 254, i32 31, i32 63, i32 95, i32 127, i32 159, i32 191, i32 223, i32 255>
  store <256 x i8> %interleaved.vec292, ptr %next.gep283, align 1, !tbaa !114, !alias.scope !551, !noalias !552
  %index.next293 = add nuw i64 %index282, 32      ; 2 uses
  %i.vm = icmp eq i64 %index.next293, %n.vec280
  br i1 %i.vm, label %middle.block294, label %vector.body281, !llvm.loop !470

middle.block294:                                  ; preds = %vector.body281
  br i1 %cmp.n295, label %._crit_edge.us560.i, label %vec.epilog.iter.check299

vec.epilog.iter.check299:                         ; preds = %middle.block294
  br i1 %min.epilog.iters.check300.not.not, label %vec.epilog.scalar.ph298.preheader, label %vec.epilog.ph301, !prof !553

vec.epilog.ph301:                                 ; preds = %vector.main.loop.iter.check277, %vec.epilog.iter.check299
  %vec.epilog.resume.val296 = phi i64 [ %n.vec280, %vec.epilog.iter.check299 ], [ 0, %vector.main.loop.iter.check277 ]
  %i.vn = getelementptr i8, ptr %.3405549.us.i, i64 %i.nf ; 2 uses
  br label %vec.epilog.vector.body303

vec.epilog.vector.body303:                        ; preds = %vec.epilog.vector.body303, %vec.epilog.ph301
  %index304 = phi i64 [ %vec.epilog.resume.val296, %vec.epilog.ph301 ], [ %index.next315, %vec.epilog.vector.body303 ] ; 6 uses
  %i.vo = shl i64 %index304, 3
  %next.gep305 = getelementptr i8, ptr %.3405549.us.i, i64 %i.vo
  %i.vp = getelementptr inbounds nuw i8, ptr %.1393553.us.i, i64 %index304 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.1395552.us.i, i64 %index304 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.1398551.us.i, i64 %index304 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.1400550.us.i, i64 %index304 ; 2 uses
  %wide.load306.a = load <16 x i8>, ptr %i.vp, align 1, !tbaa !114, !alias.scope !543
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.mq
  %wide.load307 = load <16 x i8>, ptr %i.vt, align 1, !tbaa !114, !alias.scope !544
  %wide.load308 = load <16 x i8>, ptr %i.vq, align 1, !tbaa !114, !alias.scope !545
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.mq
  %wide.load309 = load <16 x i8>, ptr %i.vu, align 1, !tbaa !114, !alias.scope !546
  %wide.load310 = load <16 x i8>, ptr %i.vr, align 1, !tbaa !114, !alias.scope !547
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.mq
  %wide.load311 = load <16 x i8>, ptr %i.vv, align 1, !tbaa !114, !alias.scope !548
  %wide.load312 = load <16 x i8>, ptr %i.vs, align 1, !tbaa !114, !alias.scope !549
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.mq
  %wide.load313 = load <16 x i8>, ptr %i.vw, align 1, !tbaa !114, !alias.scope !550
  %i.vx = shufflevector <16 x i8> %wide.load306.a, <16 x i8> %wide.load307, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.vy = shufflevector <16 x i8> %wide.load308, <16 x i8> %wide.load309, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.vz = shufflevector <16 x i8> %wide.load310, <16 x i8> %wide.load311, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.wa = shufflevector <16 x i8> %wide.load312, <16 x i8> %wide.load313, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.wb = shufflevector <32 x i8> %i.vx, <32 x i8> %i.vy, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.wc = shufflevector <32 x i8> %i.vz, <32 x i8> %i.wa, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec314 = shufflevector <64 x i8> %i.wb, <64 x i8> %i.wc, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i8> %interleaved.vec314, ptr %next.gep305, align 1, !tbaa !114, !alias.scope !551, !noalias !552
  %index.next315 = add nuw i64 %index304, 16      ; 2 uses
  %i.wd = icmp eq i64 %index.next315, %n.vec302
  br i1 %i.wd, label %vec.epilog.middle.block316, label %vec.epilog.vector.body303, !llvm.loop !471

vec.epilog.middle.block316:                       ; preds = %vec.epilog.vector.body303
  br i1 %cmp.n317, label %._crit_edge.us560.i, label %vec.epilog.scalar.ph298.preheader

vec.epilog.scalar.ph298.preheader:                ; preds = %iter.check297, %vector.memcheck216, %vec.epilog.iter.check299, %vec.epilog.middle.block316
  %indvars.iv734.i.ph = phi i64 [ 0, %iter.check297 ], [ 0, %vector.memcheck216 ], [ %n.vec280, %vec.epilog.iter.check299 ], [ %n.vec302, %vec.epilog.middle.block316 ]
  %.4406547.us.i.ph = phi ptr [ %.3405549.us.i, %iter.check297 ], [ %.3405549.us.i, %vector.memcheck216 ], [ %i.uw, %vec.epilog.iter.check299 ], [ %i.vn, %vec.epilog.middle.block316 ]
  br label %vec.epilog.scalar.ph298

vec.epilog.scalar.ph298:                          ; preds = %vec.epilog.scalar.ph298.preheader, %vec.epilog.scalar.ph298
  %indvars.iv734.i = phi i64 [ %indvars.iv.next735.i, %vec.epilog.scalar.ph298 ], [ %indvars.iv734.i.ph, %vec.epilog.scalar.ph298.preheader ] ; 5 uses
  %.4406547.us.i = phi ptr [ %i.xb, %vec.epilog.scalar.ph298 ], [ %.4406547.us.i.ph, %vec.epilog.scalar.ph298.preheader ] ; 9 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.1393553.us.i, i64 %indvars.iv734.i ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.1395552.us.i, i64 %indvars.iv734.i ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.1398551.us.i, i64 %indvars.iv734.i ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.1400550.us.i, i64 %indvars.iv734.i ; 2 uses
  %i.wi = load i8, ptr %i.we, align 1, !tbaa !114
  store i8 %i.wi, ptr %.4406547.us.i, align 1, !tbaa !114
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.mq
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !114
  %i.wl = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 1
  store i8 %i.wk, ptr %i.wl, align 1, !tbaa !114
  %i.wm = load i8, ptr %i.wf, align 1, !tbaa !114
  %i.wn = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 2
  store i8 %i.wm, ptr %i.wn, align 1, !tbaa !114
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.mq
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !114
  %i.wq = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 3
  store i8 %i.wp, ptr %i.wq, align 1, !tbaa !114
  %i.wr = load i8, ptr %i.wg, align 1, !tbaa !114
  %i.ws = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 4
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !114
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.mq
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !114
  %i.wv = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 5
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !114
  %i.ww = load i8, ptr %i.wh, align 1, !tbaa !114
  %i.wx = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 6
  store i8 %i.ww, ptr %i.wx, align 1, !tbaa !114
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.mq
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !114
  %i.xa = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 7
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !114
  %i.xb = getelementptr inbounds nuw i8, ptr %.4406547.us.i, i64 8 ; 2 uses
  %indvars.iv.next735.i = add nuw nsw i64 %indvars.iv734.i, 1 ; 2 uses
  %exitcond738.not.i = icmp eq i64 %indvars.iv.next735.i, %wide.trip.count.i
  br i1 %exitcond738.not.i, label %._crit_edge.us560.i, label %vec.epilog.scalar.ph298, !llvm.loop !472

._crit_edge.us560.i:                              ; preds = %vec.epilog.scalar.ph298, %vec.epilog.middle.block316, %middle.block294
  %.lcssa178 = phi ptr [ %i.vn, %vec.epilog.middle.block316 ], [ %i.uw, %middle.block294 ], [ %i.xb, %vec.epilog.scalar.ph298 ] ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.1393553.us.i, i64 %i.mv ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.1395552.us.i, i64 %i.mv ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.1398551.us.i, i64 %i.mv ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.1400550.us.i, i64 %i.mv ; 2 uses
  %i.xg = add nuw nsw i32 %.1410548.us.i, 2       ; 3 uses
  %i.xh = or disjoint i32 %i.xg, 1
  %i.xi = icmp slt i32 %i.xh, %i.p
  br i1 %i.xi, label %iter.check297, label %.preheader519.i, !llvm.loop !473

.preheader519.i:                                  ; preds = %._crit_edge.us560.i, %.preheader520.i
  %.1410.lcssa.i = phi i32 [ %.0409.lcssa.i, %.preheader520.i ], [ %i.xg, %._crit_edge.us560.i ] ; 2 uses
  %.3405.lcssa.i = phi ptr [ %.0402.lcssa.i, %.preheader520.i ], [ %.lcssa178, %._crit_edge.us560.i ]
  %.1400.lcssa.i = phi ptr [ %.0399.lcssa.i, %.preheader520.i ], [ %i.xf, %._crit_edge.us560.i ] ; 7 uses
  %.1398.lcssa.i = phi ptr [ %.0397.lcssa.i, %.preheader520.i ], [ %i.xe, %._crit_edge.us560.i ] ; 7 uses
  %.1395.lcssa.i = phi ptr [ %.0394.lcssa.i, %.preheader520.i ], [ %i.xd, %._crit_edge.us560.i ] ; 7 uses
  %.1393.lcssa.i = phi ptr [ %.0392.lcssa.i, %.preheader520.i ], [ %i.xc, %._crit_edge.us560.i ] ; 7 uses
  %i.xj = icmp sge i32 %.1410.lcssa.i, %i.p
  %brmerge.i = or i1 %i.mw, %i.xj
  br i1 %brmerge.i, label %._crit_edge572.split.i, label %.preheader516.i.preheader

.preheader516.i.preheader:                        ; preds = %.preheader519.i
  %scevgep185 = getelementptr i8, ptr %.1400.lcssa.i, i64 %wide.trip.count.i
  %scevgep186 = getelementptr i8, ptr %.1398.lcssa.i, i64 %wide.trip.count.i
  %scevgep187 = getelementptr i8, ptr %.1395.lcssa.i, i64 %wide.trip.count.i
  %scevgep188 = getelementptr i8, ptr %.1393.lcssa.i, i64 %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %.preheader516.i.preheader, %._crit_edge.i
  %.5407571.i = phi ptr [ %.lcssa184, %._crit_edge.i ], [ %.3405.lcssa.i, %.preheader516.i.preheader ] ; 11 uses
  %.2411570.i = phi i32 [ %i.yp, %._crit_edge.i ], [ %.1410.lcssa.i, %.preheader516.i.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.5407571.i, i64 %i.mz ; 4 uses
  %bound0 = icmp ult ptr %.5407571.i, %scevgep185
  %bound1 = icmp ult ptr %.1400.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0189 = icmp ult ptr %.5407571.i, %scevgep186
  %bound1190 = icmp ult ptr %.1398.lcssa.i, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx = or i1 %found.conflict, %found.conflict191
  %bound0192 = icmp ult ptr %.5407571.i, %scevgep187
  %bound1193 = icmp ult ptr %.1395.lcssa.i, %scevgep
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx, %found.conflict194
  %bound0196 = icmp ult ptr %.5407571.i, %scevgep188
  %bound1197 = icmp ult ptr %.1393.lcssa.i, %scevgep
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  br i1 %conflict.rdx199, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xk = getelementptr i8, ptr %.5407571.i, i64 %i.nh ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.xl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.5407571.i, i64 %i.xl
  %i.xm = getelementptr inbounds nuw i8, ptr %.1393.lcssa.i, i64 %index
end_hunk_1
begin_hunk_2_@_ZN4ncnn19Convolution_x86_fma24create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %i.aai = mul nsw i64 %i.zx, 7                   ; 2 uses
  %i.aaj = add i32 %i.p, -8
  %i.aak = lshr i32 %i.aaj, 3
  %i.aal = zext nneg i32 %i.aak to i64
  %i.aam = mul nsw i64 %i.aal, %i.zz              ; 8 uses
  %i.aan = mul nsw i64 %i.zx, 6                   ; 2 uses
  %i.aao = mul nsw i64 %i.zx, 5                   ; 2 uses
  %i.aap = shl nsw i64 %i.zx, 2                   ; 2 uses
  %i.aaq = mul nsw i64 %i.zx, 3                   ; 2 uses
  %i.aar = shl nsw i64 %i.zx, 1                   ; 2 uses
  %min.iters.check591 = icmp ult i32 %i.j, 16
  %stride.check559 = icmp slt i32 %i.zy, 0
  %min.iters.check593 = icmp ult i32 %i.j, 32
  %i.aas = and i64 %wide.trip.count788.i, 16
  %n.vec595 = and i64 %wide.trip.count788.i, 2147483616 ; 5 uses
  %i.aat = shl nuw nsw i64 %n.vec595, 3
  %cmp.n610 = icmp eq i64 %n.vec595, %wide.trip.count788.i
  %min.epilog.iters.check615.not.not = icmp eq i64 %i.aas, 0
  %n.vec617 = and i64 %wide.trip.count788.i, 2147483632 ; 4 uses
  %i.aau = shl nuw nsw i64 %n.vec617, 3
  %cmp.n632 = icmp eq i64 %n.vec617, %wide.trip.count788.i
  %min.iters.check484 = icmp ult i32 %i.j, 4
  %stride.check482 = icmp slt i32 %i.aaa, 0
  %min.iters.check486 = icmp ult i32 %i.j, 16
  %i.aav = and i64 %wide.trip.count788.i, 12
  %n.vec488 = and i64 %wide.trip.count788.i, 2147483632 ; 5 uses
  %i.aaw = shl nuw nsw i64 %n.vec488, 1
  %cmp.n501 = icmp eq i64 %n.vec488, %wide.trip.count788.i
  %min.epilog.iters.check506 = icmp eq i64 %i.aav, 0
  %n.vec508 = and i64 %wide.trip.count788.i, 2147483644 ; 4 uses
  %i.aax = shl nuw nsw i64 %n.vec508, 1
  %cmp.n517 = icmp eq i64 %n.vec508, %wide.trip.count788.i
  %xtraiter667 = and i64 %wide.trip.count788.i, 3 ; 2 uses
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  %min.iters.check437 = icmp ult i32 %i.j, 8
  %min.iters.check439 = icmp ult i32 %i.j, 128
  %i.aay = and i64 %wide.trip.count788.i, 120
  %n.vec441 = and i64 %wide.trip.count788.i, 2147483520 ; 5 uses
  %cmp.n451 = icmp eq i64 %n.vec441, %wide.trip.count788.i
  %min.epilog.iters.check456 = icmp eq i64 %i.aay, 0
  %n.vec458 = and i64 %wide.trip.count788.i, 2147483640 ; 4 uses
  %cmp.n465 = icmp eq i64 %n.vec458, %wide.trip.count788.i
  %xtraiter670 = and i64 %wide.trip.count788.i, 7 ; 2 uses
  %lcmp.mod671.not = icmp eq i64 %xtraiter670, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i34

_ZN4ncnn3MatD2Ev.exit451.i:                       ; preds = %._crit_edge613.split.i, %_ZN4ncnn3MatD2Ev.exit451.lr.ph.i
  %indvars.iv775.i = phi i64 [ %i.ok, %_ZN4ncnn3MatD2Ev.exit451.lr.ph.i ], [ %indvars.iv.next776.i, %._crit_edge613.split.i ] ; 2 uses
  %indvars.iv773.i = phi i32 [ %i.ol, %_ZN4ncnn3MatD2Ev.exit451.lr.ph.i ], [ %indvars.iv.next774.i, %._crit_edge613.split.i ] ; 2 uses
  %i.aaz = load ptr, ptr %i.av, align 8, !tbaa !37 ; 2 uses
  %i.aba = trunc nuw i64 %indvars.iv775.i to i32  ; 3 uses
  %i.abb = mul i32 %i.nn, %i.aba
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds i8, ptr %i.aaz, i64 %i.abc ; 2 uses
  %i.abe = mul i32 %indvars.iv773.i, %i.nn
  %i.abf = sext i32 %i.abe to i64
  %i.abg = getelementptr inbounds i8, ptr %i.aaz, i64 %i.abf ; 2 uses
  %i.abh = lshr i32 %i.aba, 2
  %i.abi = lshr i32 %i.aba, 1
  %i.abj = and i32 %i.abi, 1
  %i.abk = add nuw nsw i32 %i.abj, %i.abh
  %i.abl = load ptr, ptr %i.kh, align 8, !tbaa !37, !noalias !560
  %i.abm = load i64, ptr %i.no, align 8, !tbaa !38, !noalias !560
  %i.abn = zext nneg i32 %i.abk to i64
  %i.abo = mul i64 %i.abm, %i.abn
  %i.abp = load i64, ptr %i.np, align 8, !tbaa !79, !noalias !560
  %i.abq = mul i64 %i.abo, %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.abq ; 2 uses
  br i1 %i.nq, label %.preheader512.lr.ph.i, label %.preheader514.i

.preheader512.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.i
  br i1 %i.nr, label %.preheader512.us.i, label %._crit_edge613.split.i

.preheader512.us.i:                               ; preds = %.preheader512.lr.ph.i, %._crit_edge577.us.i
  %.0413582.us.i = phi i32 [ %i.adq, %._crit_edge577.us.i ], [ 0, %.preheader512.lr.ph.i ]
  %.0416581.us.i = phi ptr [ %i.adn, %._crit_edge577.us.i ], [ %i.abr, %.preheader512.lr.ph.i ]
  %.0422580.us.i = phi ptr [ %i.adp, %._crit_edge577.us.i ], [ %i.abg, %.preheader512.lr.ph.i ] ; 2 uses
  %.0424579.us.i = phi ptr [ %i.ado, %._crit_edge577.us.i ], [ %i.abd, %.preheader512.lr.ph.i ] ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.preheader512.us.i
  %indvars.iv755.i = phi i64 [ 0, %.preheader512.us.i ], [ %indvars.iv.next756.i, %bb.cw ] ; 3 uses
  %.1417575.us.i = phi ptr [ %.0416581.us.i, %.preheader512.us.i ], [ %i.adn, %bb.cw ] ; 17 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0424579.us.i, i64 %indvars.iv755.i ; 8 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.0422580.us.i, i64 %indvars.iv755.i ; 8 uses
  %i.abu = load i8, ptr %i.abs, align 1, !tbaa !114
  store i8 %i.abu, ptr %.1417575.us.i, align 1, !tbaa !114
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.ns
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !114
  %i.abx = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 1
  store i8 %i.abw, ptr %i.abx, align 1, !tbaa !114
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.nu
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !114
  %i.aca = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 2
  store i8 %i.abz, ptr %i.aca, align 1, !tbaa !114
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.nw
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !114
  %i.acd = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 3
  store i8 %i.acc, ptr %i.acd, align 1, !tbaa !114
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.ny
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !114
  %i.acg = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 4
  store i8 %i.acf, ptr %i.acg, align 1, !tbaa !114
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.oa
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !114
  %i.acj = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 5
  store i8 %i.aci, ptr %i.acj, align 1, !tbaa !114
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.oc
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !114
  %i.acm = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 6
  store i8 %i.acl, ptr %i.acm, align 1, !tbaa !114
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.oe
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !114
  %i.acp = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 7
  store i8 %i.aco, ptr %i.acp, align 1, !tbaa !114
  %i.acq = load i8, ptr %i.abt, align 1, !tbaa !114
  %i.acr = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 8
  store i8 %i.acq, ptr %i.acr, align 1, !tbaa !114
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.ns
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !114
  %i.acu = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 9
  store i8 %i.act, ptr %i.acu, align 1, !tbaa !114
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.nu
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !114
  %i.acx = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 10
  store i8 %i.acw, ptr %i.acx, align 1, !tbaa !114
  %i.acy = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.nw
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !114
  %i.ada = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 11
  store i8 %i.acz, ptr %i.ada, align 1, !tbaa !114
  %i.adb = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.ny
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !114
  %i.add = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 12
  store i8 %i.adc, ptr %i.add, align 1, !tbaa !114
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.oa
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !114
  %i.adg = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 13
  store i8 %i.adf, ptr %i.adg, align 1, !tbaa !114
  %i.adh = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.oc
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !114
  %i.adj = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 14
  store i8 %i.adi, ptr %i.adj, align 1, !tbaa !114
  %i.adk = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.oe
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !114
  %i.adm = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 15
  store i8 %i.adl, ptr %i.adm, align 1, !tbaa !114
  %i.adn = getelementptr inbounds nuw i8, ptr %.1417575.us.i, i64 16 ; 3 uses
  %indvars.iv.next756.i = add nuw nsw i64 %indvars.iv755.i, 1 ; 2 uses
  %exitcond759.not.i = icmp eq i64 %indvars.iv.next756.i, %wide.trip.count758.i
  br i1 %exitcond759.not.i, label %._crit_edge577.us.i, label %bb.cw, !llvm.loop !487

._crit_edge577.us.i:                              ; preds = %bb.cw
  %i.ado = getelementptr inbounds nuw i8, ptr %.0424579.us.i, i64 %i.og ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.0422580.us.i, i64 %i.og ; 2 uses
  %i.adq = add nuw nsw i32 %.0413582.us.i, 8      ; 2 uses
  %i.adr = or disjoint i32 %i.adq, 7
  %i.ads = icmp slt i32 %i.adr, %i.p
  br i1 %i.ads, label %.preheader512.us.i, label %.preheader514.i, !llvm.loop !488

.preheader514.i:                                  ; preds = %._crit_edge577.us.i, %_ZN4ncnn3MatD2Ev.exit451.i
  %.0424.lcssa.i = phi ptr [ %i.abd, %_ZN4ncnn3MatD2Ev.exit451.i ], [ %i.ado, %._crit_edge577.us.i ] ; 6 uses
  %.0422.lcssa.i = phi ptr [ %i.abg, %_ZN4ncnn3MatD2Ev.exit451.i ], [ %i.adp, %._crit_edge577.us.i ] ; 6 uses
  %.0416.lcssa.i = phi ptr [ %i.abr, %_ZN4ncnn3MatD2Ev.exit451.i ], [ %i.adn, %._crit_edge577.us.i ] ; 2 uses
  %.0413.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit451.i ], [ %i.oj, %._crit_edge577.us.i ] ; 4 uses
  %i.adt = or disjoint i32 %.0413.lcssa.i, 1
  %i.adu = icmp slt i32 %i.adt, %i.p
  br i1 %i.adu, label %.preheader511.lr.ph.i, label %.preheader513.i

.preheader511.lr.ph.i:                            ; preds = %.preheader514.i
  br i1 %i.nr, label %.preheader511.us.i.preheader, label %._crit_edge613.split.i

.preheader511.us.i.preheader:                     ; preds = %.preheader511.lr.ph.i
  %scevgep369.a = getelementptr i8, ptr %.0422.lcssa.i, i64 %i.ns
  %scevgep370.a = getelementptr i8, ptr %.0422.lcssa.i, i64 %i.op
  %i.adv = sub i32 %i.oq, %.0413.lcssa.i
  %i.adw = lshr i32 %i.adv, 1
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = mul nsw i64 %i.oh, %i.adx              ; 4 uses
  %scevgep371.a = getelementptr i8, ptr %scevgep370.a, i64 %i.ady
  %scevgep372 = getelementptr i8, ptr %.0424.lcssa.i, i64 %i.ns
  %scevgep373 = getelementptr i8, ptr %.0424.lcssa.i, i64 %i.op
  %scevgep374 = getelementptr i8, ptr %scevgep373, i64 %i.ady
  %scevgep375 = getelementptr i8, ptr %.0422.lcssa.i, i64 %wide.trip.count758.i
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.ady
  %scevgep377 = getelementptr i8, ptr %.0424.lcssa.i, i64 %wide.trip.count758.i
  %scevgep378 = getelementptr i8, ptr %scevgep377, i64 %i.ady
  br label %iter.check415

iter.check415:                                    ; preds = %.preheader511.us.i.preheader, %._crit_edge593.us.i
  %.1414598.us.i = phi i32 [ %i.age, %._crit_edge593.us.i ], [ %.0413.lcssa.i, %.preheader511.us.i.preheader ]
  %.2418597.us.i = phi ptr [ %.lcssa168, %._crit_edge593.us.i ], [ %.0416.lcssa.i, %.preheader511.us.i.preheader ] ; 11 uses
  %.1423596.us.i = phi ptr [ %i.agd, %._crit_edge593.us.i ], [ %.0422.lcssa.i, %.preheader511.us.i.preheader ] ; 6 uses
  %.1425595.us.i = phi ptr [ %i.agc, %._crit_edge593.us.i ], [ %.0424.lcssa.i, %.preheader511.us.i.preheader ] ; 6 uses
  br i1 %min.iters.check398, label %vec.epilog.scalar.ph416.preheader, label %vector.memcheck367

vector.memcheck367:                               ; preds = %iter.check415
  %scevgep368 = getelementptr i8, ptr %.2418597.us.i, i64 %i.oo ; 4 uses
  %bound0379 = icmp ult ptr %.2418597.us.i, %scevgep371.a
  %bound1380 = icmp ult ptr %scevgep369.a, %scevgep368
  %found.conflict381 = and i1 %bound0379, %bound1380
  %bound0383 = icmp ult ptr %.2418597.us.i, %scevgep374
  %bound1384 = icmp ult ptr %scevgep372, %scevgep368
  %found.conflict385 = and i1 %bound0383, %bound1384
  %9 = or i1 %found.conflict385, %stride.check386
  %conflict.rdx387.a = or i1 %found.conflict381, %9
  %bound0388 = icmp ult ptr %.2418597.us.i, %scevgep376
  %bound1389 = icmp ult ptr %.0422.lcssa.i, %scevgep368
  %found.conflict390 = and i1 %bound0388, %bound1389
  %conflict.rdx392 = or i1 %found.conflict390, %conflict.rdx387.a
  %bound0393 = icmp ult ptr %.2418597.us.i, %scevgep378
  %bound1394 = icmp ult ptr %.0424.lcssa.i, %scevgep368
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx397 = or i1 %found.conflict395, %conflict.rdx392
  br i1 %conflict.rdx397, label %vec.epilog.scalar.ph416.preheader, label %vector.main.loop.iter.check399

vector.main.loop.iter.check399:                   ; preds = %vector.memcheck367
  br i1 %min.iters.check400, label %vec.epilog.ph419, label %vector.ph401

vector.ph401:                                     ; preds = %vector.main.loop.iter.check399
  %i.adz = getelementptr i8, ptr %.2418597.us.i, i64 %i.os ; 2 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.ph401, %vector.body403
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next411, %vector.body403 ] ; 4 uses
  %i.aea = shl i64 %index404, 2
  %next.gep405 = getelementptr i8, ptr %.2418597.us.i, i64 %i.aea
  %i.aeb = getelementptr inbounds nuw i8, ptr %.1425595.us.i, i64 %index404 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.1423596.us.i, i64 %index404 ; 2 uses
  %wide.load406 = load <32 x i8>, ptr %i.aeb, align 1, !tbaa !114, !alias.scope !561
  %wide.load407 = load <32 x i8>, ptr %i.aec, align 1, !tbaa !114, !alias.scope !562
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.ns
  %wide.load408 = load <32 x i8>, ptr %i.aed, align 1, !tbaa !114, !alias.scope !563
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.ns
  %wide.load409 = load <32 x i8>, ptr %i.aee, align 1, !tbaa !114, !alias.scope !564
  %i.aef = shufflevector <32 x i8> %wide.load406, <32 x i8> %wide.load407, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aeg = shufflevector <32 x i8> %wide.load408, <32 x i8> %wide.load409, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec410 = shufflevector <64 x i8> %i.aef, <64 x i8> %i.aeg, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i8> %interleaved.vec410, ptr %next.gep405, align 1, !tbaa !114, !alias.scope !565, !noalias !566
  %index.next411 = add nuw i64 %index404, 32      ; 2 uses
  %i.aeh = icmp eq i64 %index.next411, %n.vec402
  br i1 %i.aeh, label %middle.block412, label %vector.body403, !llvm.loop !495

middle.block412:                                  ; preds = %vector.body403
  br i1 %cmp.n413, label %._crit_edge593.us.i, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block412
  br i1 %min.epilog.iters.check418, label %vec.epilog.scalar.ph416.preheader, label %vec.epilog.ph419, !prof !100

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check399, %vec.epilog.iter.check417
  %vec.epilog.resume.val414 = phi i64 [ %n.vec402, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check399 ]
  %i.aei = getelementptr i8, ptr %.2418597.us.i, i64 %i.ot ; 2 uses
  br label %vec.epilog.vector.body421

vec.epilog.vector.body421:                        ; preds = %vec.epilog.vector.body421, %vec.epilog.ph419
  %index422 = phi i64 [ %vec.epilog.resume.val414, %vec.epilog.ph419 ], [ %index.next429, %vec.epilog.vector.body421 ] ; 4 uses
  %i.aej = shl i64 %index422, 2
  %next.gep423 = getelementptr i8, ptr %.2418597.us.i, i64 %i.aej
  %i.aek = getelementptr inbounds nuw i8, ptr %.1425595.us.i, i64 %index422 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.1423596.us.i, i64 %index422 ; 2 uses
  %wide.load424 = load <8 x i8>, ptr %i.aek, align 1, !tbaa !114, !alias.scope !561
  %wide.load425 = load <8 x i8>, ptr %i.ael, align 1, !tbaa !114, !alias.scope !562
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.ns
  %wide.load426 = load <8 x i8>, ptr %i.aem, align 1, !tbaa !114, !alias.scope !563
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.ns
  %wide.load427 = load <8 x i8>, ptr %i.aen, align 1, !tbaa !114, !alias.scope !564
  %i.aeo = shufflevector <8 x i8> %wide.load424, <8 x i8> %wide.load425, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aep = shufflevector <8 x i8> %wide.load426, <8 x i8> %wide.load427, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec428 = shufflevector <16 x i8> %i.aeo, <16 x i8> %i.aep, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec428, ptr %next.gep423, align 1, !tbaa !114, !alias.scope !565, !noalias !566
  %index.next429 = add nuw i64 %index422, 8       ; 2 uses
  %i.aeq = icmp eq i64 %index.next429, %n.vec420
  br i1 %i.aeq, label %vec.epilog.middle.block430, label %vec.epilog.vector.body421, !llvm.loop !496

vec.epilog.middle.block430:                       ; preds = %vec.epilog.vector.body421
  br i1 %cmp.n431, label %._crit_edge593.us.i, label %vec.epilog.scalar.ph416.preheader

vec.epilog.scalar.ph416.preheader:                ; preds = %iter.check415, %vector.memcheck367, %vec.epilog.iter.check417, %vec.epilog.middle.block430
  %indvars.iv762.i.ph = phi i64 [ 0, %iter.check415 ], [ 0, %vector.memcheck367 ], [ %n.vec402, %vec.epilog.iter.check417 ], [ %n.vec420, %vec.epilog.middle.block430 ] ; 5 uses
  %.3419591.us.i.ph = phi ptr [ %.2418597.us.i, %iter.check415 ], [ %.2418597.us.i, %vector.memcheck367 ], [ %i.adz, %vec.epilog.iter.check417 ], [ %i.aei, %vec.epilog.middle.block430 ] ; 6 uses
  br i1 %lcmp.mod664.not, label %vec.epilog.scalar.ph416.prol.loopexit, label %vec.epilog.scalar.ph416.prol

vec.epilog.scalar.ph416.prol:                     ; preds = %vec.epilog.scalar.ph416.preheader
  %i.aer = getelementptr inbounds nuw i8, ptr %.1425595.us.i, i64 %indvars.iv762.i.ph ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.1423596.us.i, i64 %indvars.iv762.i.ph ; 2 uses
  %i.aet = load i8, ptr %i.aer, align 1, !tbaa !114
  store i8 %i.aet, ptr %.3419591.us.i.ph, align 1, !tbaa !114
  %i.aeu = load i8, ptr %i.aes, align 1, !tbaa !114
  %i.aev = getelementptr inbounds nuw i8, ptr %.3419591.us.i.ph, i64 1
  store i8 %i.aeu, ptr %i.aev, align 1, !tbaa !114
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.ns
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !114
  %i.aey = getelementptr inbounds nuw i8, ptr %.3419591.us.i.ph, i64 2
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !114
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.ns
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !114
  %i.afb = getelementptr inbounds nuw i8, ptr %.3419591.us.i.ph, i64 3
  store i8 %i.afa, ptr %i.afb, align 1, !tbaa !114
  %i.afc = getelementptr inbounds nuw i8, ptr %.3419591.us.i.ph, i64 4 ; 2 uses
  %indvars.iv.next763.i.prol = or disjoint i64 %indvars.iv762.i.ph, 1
  br label %vec.epilog.scalar.ph416.prol.loopexit

vec.epilog.scalar.ph416.prol.loopexit:            ; preds = %vec.epilog.scalar.ph416.prol, %vec.epilog.scalar.ph416.preheader
  %.lcssa646.unr = phi ptr [ poison, %vec.epilog.scalar.ph416.preheader ], [ %i.afc, %vec.epilog.scalar.ph416.prol ]
  %indvars.iv762.i.unr = phi i64 [ %indvars.iv762.i.ph, %vec.epilog.scalar.ph416.preheader ], [ %indvars.iv.next763.i.prol, %vec.epilog.scalar.ph416.prol ]
  %.3419591.us.i.unr = phi ptr [ %.3419591.us.i.ph, %vec.epilog.scalar.ph416.preheader ], [ %i.afc, %vec.epilog.scalar.ph416.prol ]
  %i.afd = icmp eq i64 %indvars.iv762.i.ph, %i.ou
  br i1 %i.afd, label %._crit_edge593.us.i, label %vec.epilog.scalar.ph416

vec.epilog.scalar.ph416:                          ; preds = %vec.epilog.scalar.ph416.prol.loopexit, %vec.epilog.scalar.ph416
  %indvars.iv762.i = phi i64 [ %indvars.iv.next763.i.1, %vec.epilog.scalar.ph416 ], [ %indvars.iv762.i.unr, %vec.epilog.scalar.ph416.prol.loopexit ] ; 4 uses
  %.3419591.us.i = phi ptr [ %i.agb, %vec.epilog.scalar.ph416 ], [ %.3419591.us.i.unr, %vec.epilog.scalar.ph416.prol.loopexit ] ; 9 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.1425595.us.i, i64 %indvars.iv762.i ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.1423596.us.i, i64 %indvars.iv762.i ; 2 uses
  %i.afg = load i8, ptr %i.afe, align 1, !tbaa !114
  store i8 %i.afg, ptr %.3419591.us.i, align 1, !tbaa !114
  %i.afh = load i8, ptr %i.aff, align 1, !tbaa !114
  %i.afi = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 1
  store i8 %i.afh, ptr %i.afi, align 1, !tbaa !114
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.ns
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !114
  %i.afl = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 2
  store i8 %i.afk, ptr %i.afl, align 1, !tbaa !114
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.ns
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !114
  %i.afo = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 3
  store i8 %i.afn, ptr %i.afo, align 1, !tbaa !114
  %i.afp = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 4
  %indvars.iv.next763.i = add nuw nsw i64 %indvars.iv762.i, 1 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.1425595.us.i, i64 %indvars.iv.next763.i ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.1423596.us.i, i64 %indvars.iv.next763.i ; 2 uses
  %i.afs = load i8, ptr %i.afq, align 1, !tbaa !114
  store i8 %i.afs, ptr %i.afp, align 1, !tbaa !114
  %i.aft = load i8, ptr %i.afr, align 1, !tbaa !114
  %i.afu = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 5
  store i8 %i.aft, ptr %i.afu, align 1, !tbaa !114
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.ns
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !114
  %i.afx = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 6
  store i8 %i.afw, ptr %i.afx, align 1, !tbaa !114
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.ns
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !114
  %i.aga = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 7
  store i8 %i.afz, ptr %i.aga, align 1, !tbaa !114
  %i.agb = getelementptr inbounds nuw i8, ptr %.3419591.us.i, i64 8 ; 2 uses
  %indvars.iv.next763.i.1 = add nuw nsw i64 %indvars.iv762.i, 2 ; 2 uses
  %exitcond766.not.i.1 = icmp eq i64 %indvars.iv.next763.i.1, %wide.trip.count758.i
  br i1 %exitcond766.not.i.1, label %._crit_edge593.us.i, label %vec.epilog.scalar.ph416, !llvm.loop !497

._crit_edge593.us.i:                              ; preds = %vec.epilog.scalar.ph416.prol.loopexit, %vec.epilog.scalar.ph416, %vec.epilog.middle.block430, %middle.block412
  %.lcssa168 = phi ptr [ %i.aei, %vec.epilog.middle.block430 ], [ %i.adz, %middle.block412 ], [ %.lcssa646.unr, %vec.epilog.scalar.ph416.prol.loopexit ], [ %i.agb, %vec.epilog.scalar.ph416 ] ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.1425595.us.i, i64 %i.oh ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.1423596.us.i, i64 %i.oh ; 2 uses
  %i.age = add nuw nsw i32 %.1414598.us.i, 2      ; 3 uses
  %i.agf = or disjoint i32 %i.age, 1
  %i.agg = icmp slt i32 %i.agf, %i.p
  br i1 %i.agg, label %iter.check415, label %.preheader513.i, !llvm.loop !498

.preheader513.i:                                  ; preds = %._crit_edge593.us.i, %.preheader514.i
  %.1425.lcssa.i = phi ptr [ %.0424.lcssa.i, %.preheader514.i ], [ %i.agc, %._crit_edge593.us.i ] ; 9 uses
  %.1423.lcssa.i = phi ptr [ %.0422.lcssa.i, %.preheader514.i ], [ %i.agd, %._crit_edge593.us.i ] ; 9 uses
  %.2418.lcssa.i = phi ptr [ %.0416.lcssa.i, %.preheader514.i ], [ %.lcssa168, %._crit_edge593.us.i ]
  %.1414.lcssa.i = phi i32 [ %.0413.lcssa.i, %.preheader514.i ], [ %i.age, %._crit_edge593.us.i ] ; 2 uses
  %i.agh = icmp sge i32 %.1414.lcssa.i, %i.p
  %brmerge657.i = or i1 %i.oi, %i.agh
  br i1 %brmerge657.i, label %._crit_edge613.split.i, label %.preheader510.i.preheader

.preheader510.i.preheader:                        ; preds = %.preheader513.i
  %scevgep322 = getelementptr i8, ptr %.1423.lcssa.i, i64 %wide.trip.count758.i
  %scevgep323 = getelementptr i8, ptr %.1425.lcssa.i, i64 %wide.trip.count758.i
  br label %iter.check350

iter.check350:                                    ; preds = %.preheader510.i.preheader, %._crit_edge609.i
  %.2415612.i = phi i32 [ %i.ahd, %._crit_edge609.i ], [ %.1414.lcssa.i, %.preheader510.i.preheader ]
  %.4420611.i = phi ptr [ %.lcssa172, %._crit_edge609.i ], [ %.2418.lcssa.i, %.preheader510.i.preheader ] ; 10 uses
  br i1 %min.iters.check331, label %vec.epilog.scalar.ph351.preheader, label %vector.memcheck320

vector.memcheck320:                               ; preds = %iter.check350
  %scevgep321 = getelementptr i8, ptr %.4420611.i, i64 %i.on ; 2 uses
  %bound0324 = icmp ult ptr %.4420611.i, %scevgep322
  %bound1325 = icmp ult ptr %.1423.lcssa.i, %scevgep321
  %found.conflict326 = and i1 %bound0324, %bound1325
  %bound0327 = icmp ult ptr %.4420611.i, %scevgep323
  %bound1328 = icmp ult ptr %.1425.lcssa.i, %scevgep321
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %found.conflict326, %found.conflict329
  br i1 %conflict.rdx330, label %vec.epilog.scalar.ph351.preheader, label %vector.main.loop.iter.check332

vector.main.loop.iter.check332:                   ; preds = %vector.memcheck320
  br i1 %min.iters.check333, label %vec.epilog.ph354, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check332
  %i.agi = getelementptr i8, ptr %.4420611.i, i64 %i.ow ; 2 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph334, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next346, %vector.body336 ] ; 4 uses
  %i.agj = shl i64 %index337, 1                   ; 2 uses
  %next.gep338 = getelementptr i8, ptr %.4420611.i, i64 %i.agj
  %i.agk = getelementptr i8, ptr %.4420611.i, i64 %i.agj
  %next.gep339 = getelementptr i8, ptr %i.agk, i64 16
  %i.agl = getelementptr inbounds nuw i8, ptr %.1425.lcssa.i, i64 %index337 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.1423.lcssa.i, i64 %index337 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %wide.load340 = load <8 x i8>, ptr %i.agl, align 1, !tbaa !114, !alias.scope !567
  %wide.load341 = load <8 x i8>, ptr %i.agn, align 1, !tbaa !114, !alias.scope !567
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %wide.load342 = load <8 x i8>, ptr %i.agm, align 1, !tbaa !114, !alias.scope !568
  %wide.load343 = load <8 x i8>, ptr %i.ago, align 1, !tbaa !114, !alias.scope !568
  %interleaved.vec344 = shufflevector <8 x i8> %wide.load340, <8 x i8> %wide.load342, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec344, ptr %next.gep338, align 1, !tbaa !114, !alias.scope !569, !noalias !570
  %interleaved.vec345 = shufflevector <8 x i8> %wide.load341, <8 x i8> %wide.load343, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec345, ptr %next.gep339, align 1, !tbaa !114, !alias.scope !569, !noalias !570
  %index.next346 = add nuw i64 %index337, 16      ; 2 uses
  %i.agp = icmp eq i64 %index.next346, %n.vec335
  br i1 %i.agp, label %middle.block347, label %vector.body336, !llvm.loop !503

middle.block347:                                  ; preds = %vector.body336
  br i1 %cmp.n348, label %._crit_edge609.i, label %vec.epilog.iter.check352

vec.epilog.iter.check352:                         ; preds = %middle.block347
  br i1 %min.epilog.iters.check353, label %vec.epilog.scalar.ph351.preheader, label %vec.epilog.ph354, !prof !571

vec.epilog.ph354:                                 ; preds = %vector.main.loop.iter.check332, %vec.epilog.iter.check352
  %vec.epilog.resume.val349 = phi i64 [ %n.vec335, %vec.epilog.iter.check352 ], [ 0, %vector.main.loop.iter.check332 ]
  %i.agq = getelementptr i8, ptr %.4420611.i, i64 %i.ox ; 2 uses
  br label %vec.epilog.vector.body356

vec.epilog.vector.body356:                        ; preds = %vec.epilog.vector.body356, %vec.epilog.ph354
  %index357 = phi i64 [ %vec.epilog.resume.val349, %vec.epilog.ph354 ], [ %index.next362, %vec.epilog.vector.body356 ] ; 4 uses
  %i.agr = shl i64 %index357, 1
  %next.gep358 = getelementptr i8, ptr %.4420611.i, i64 %i.agr
  %i.ags = getelementptr inbounds nuw i8, ptr %.1425.lcssa.i, i64 %index357
  %i.agt = getelementptr inbounds nuw i8, ptr %.1423.lcssa.i, i64 %index357
  %wide.load359 = load <4 x i8>, ptr %i.ags, align 1, !tbaa !114, !alias.scope !567
  %wide.load360 = load <4 x i8>, ptr %i.agt, align 1, !tbaa !114, !alias.scope !568
  %interleaved.vec361 = shufflevector <4 x i8> %wide.load359, <4 x i8> %wide.load360, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec361, ptr %next.gep358, align 1, !tbaa !114, !alias.scope !569, !noalias !570
  %index.next362 = add nuw i64 %index357, 4       ; 2 uses
  %i.agu = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.agu, label %vec.epilog.middle.block363, label %vec.epilog.vector.body356, !llvm.loop !504

vec.epilog.middle.block363:                       ; preds = %vec.epilog.vector.body356
  br i1 %cmp.n364, label %._crit_edge609.i, label %vec.epilog.scalar.ph351.preheader

vec.epilog.scalar.ph351.preheader:                ; preds = %iter.check350, %vector.memcheck320, %vec.epilog.iter.check352, %vec.epilog.middle.block363
  %indvars.iv767.i.ph = phi i64 [ 0, %iter.check350 ], [ 0, %vector.memcheck320 ], [ %n.vec335, %vec.epilog.iter.check352 ], [ %n.vec355, %vec.epilog.middle.block363 ] ; 3 uses
  %.5421607.i.ph = phi ptr [ %.4420611.i, %iter.check350 ], [ %.4420611.i, %vector.memcheck320 ], [ %i.agi, %vec.epilog.iter.check352 ], [ %i.agq, %vec.epilog.middle.block363 ] ; 2 uses
  br i1 %lcmp.mod666.not, label %vec.epilog.scalar.ph351.prol.loopexit, label %vec.epilog.scalar.ph351.prol

vec.epilog.scalar.ph351.prol:                     ; preds = %vec.epilog.scalar.ph351.preheader, %vec.epilog.scalar.ph351.prol
  %indvars.iv767.i.prol = phi i64 [ %indvars.iv.next768.i.prol, %vec.epilog.scalar.ph351.prol ], [ %indvars.iv767.i.ph, %vec.epilog.scalar.ph351.preheader ] ; 3 uses
  %.5421607.i.prol = phi ptr [ %i.aha, %vec.epilog.scalar.ph351.prol ], [ %.5421607.i.ph, %vec.epilog.scalar.ph351.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph351.prol ], [ 0, %vec.epilog.scalar.ph351.preheader ]
  %i.agv = getelementptr inbounds nuw i8, ptr %.1425.lcssa.i, i64 %indvars.iv767.i.prol
  %i.agw = getelementptr inbounds nuw i8, ptr %.1423.lcssa.i, i64 %indvars.iv767.i.prol
  %i.agx = load i8, ptr %i.agv, align 1, !tbaa !114
  store i8 %i.agx, ptr %.5421607.i.prol, align 1, !tbaa !114
  %i.agy = load i8, ptr %i.agw, align 1, !tbaa !114
  %i.agz = getelementptr inbounds nuw i8, ptr %.5421607.i.prol, i64 1
  store i8 %i.agy, ptr %i.agz, align 1, !tbaa !114
  %i.aha = getelementptr inbounds nuw i8, ptr %.5421607.i.prol, i64 2 ; 3 uses
  %indvars.iv.next768.i.prol = add nuw nsw i64 %indvars.iv767.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter665
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph351.prol.loopexit, label %vec.epilog.scalar.ph351.prol, !llvm.loop !505

vec.epilog.scalar.ph351.prol.loopexit:            ; preds = %vec.epilog.scalar.ph351.prol, %vec.epilog.scalar.ph351.preheader
  %.lcssa650.unr = phi ptr [ poison, %vec.epilog.scalar.ph351.preheader ], [ %i.aha, %vec.epilog.scalar.ph351.prol ]
  %indvars.iv767.i.unr = phi i64 [ %indvars.iv767.i.ph, %vec.epilog.scalar.ph351.preheader ], [ %indvars.iv.next768.i.prol, %vec.epilog.scalar.ph351.prol ]
  %.5421607.i.unr = phi ptr [ %.5421607.i.ph, %vec.epilog.scalar.ph351.preheader ], [ %i.aha, %vec.epilog.scalar.ph351.prol ]
  %i.ahb = sub nsw i64 %indvars.iv767.i.ph, %wide.trip.count758.i
  %i.ahc = icmp ugt i64 %i.ahb, -4
  br i1 %i.ahc, label %._crit_edge609.i, label %vec.epilog.scalar.ph351

._crit_edge609.i:                                 ; preds = %vec.epilog.scalar.ph351.prol.loopexit, %vec.epilog.scalar.ph351, %vec.epilog.middle.block363, %middle.block347
  %.lcssa172 = phi ptr [ %i.agq, %vec.epilog.middle.block363 ], [ %i.agi, %middle.block347 ], [ %.lcssa650.unr, %vec.epilog.scalar.ph351.prol.loopexit ], [ %i.aib, %vec.epilog.scalar.ph351 ]
  %i.ahd = add nuw nsw i32 %.2415612.i, 1         ; 2 uses
  %exitcond772.not.i = icmp eq i32 %i.ahd, %i.p
  br i1 %exitcond772.not.i, label %._crit_edge613.split.i, label %iter.check350, !llvm.loop !506

vec.epilog.scalar.ph351:                          ; preds = %vec.epilog.scalar.ph351.prol.loopexit, %vec.epilog.scalar.ph351
  %indvars.iv767.i = phi i64 [ %indvars.iv.next768.i.3, %vec.epilog.scalar.ph351 ], [ %indvars.iv767.i.unr, %vec.epilog.scalar.ph351.prol.loopexit ] ; 6 uses
  %.5421607.i = phi ptr [ %i.aib, %vec.epilog.scalar.ph351 ], [ %.5421607.i.unr, %vec.epilog.scalar.ph351.prol.loopexit ] ; 9 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1425.lcssa.i, i64 %indvars.iv767.i
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1423.lcssa.i, i64 %indvars.iv767.i
  %i.ahg = load i8, ptr %i.ahe, align 1, !tbaa !114
  store i8 %i.ahg, ptr %.5421607.i, align 1, !tbaa !114
  %i.ahh = load i8, ptr %i.ahf, align 1, !tbaa !114
  %i.ahi = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 1
  store i8 %i.ahh, ptr %i.ahi, align 1, !tbaa !114
  %i.ahj = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 2
  %indvars.iv.next768.i = add nuw nsw i64 %indvars.iv767.i, 1 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.1425.lcssa.i, i64 %indvars.iv.next768.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %.1423.lcssa.i, i64 %indvars.iv.next768.i
  %i.ahm = load i8, ptr %i.ahk, align 1, !tbaa !114
  store i8 %i.ahm, ptr %i.ahj, align 1, !tbaa !114
  %i.ahn = load i8, ptr %i.ahl, align 1, !tbaa !114
  %i.aho = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 3
  store i8 %i.ahn, ptr %i.aho, align 1, !tbaa !114
  %i.ahp = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 4
  %indvars.iv.next768.i.1 = add nuw nsw i64 %indvars.iv767.i, 2 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.1425.lcssa.i, i64 %indvars.iv.next768.i.1
  %i.ahr = getelementptr inbounds nuw i8, ptr %.1423.lcssa.i, i64 %indvars.iv.next768.i.1
  %i.ahs = load i8, ptr %i.ahq, align 1, !tbaa !114
  store i8 %i.ahs, ptr %i.ahp, align 1, !tbaa !114
  %i.aht = load i8, ptr %i.ahr, align 1, !tbaa !114
  %i.ahu = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 5
  store i8 %i.aht, ptr %i.ahu, align 1, !tbaa !114
  %i.ahv = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 6
  %indvars.iv.next768.i.2 = add nuw nsw i64 %indvars.iv767.i, 3 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.1425.lcssa.i, i64 %indvars.iv.next768.i.2
  %i.ahx = getelementptr inbounds nuw i8, ptr %.1423.lcssa.i, i64 %indvars.iv.next768.i.2
  %i.ahy = load i8, ptr %i.ahw, align 1, !tbaa !114
  store i8 %i.ahy, ptr %i.ahv, align 1, !tbaa !114
  %i.ahz = load i8, ptr %i.ahx, align 1, !tbaa !114
  %i.aia = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 7
  store i8 %i.ahz, ptr %i.aia, align 1, !tbaa !114
  %i.aib = getelementptr inbounds nuw i8, ptr %.5421607.i, i64 8 ; 2 uses
  %indvars.iv.next768.i.3 = add nuw nsw i64 %indvars.iv767.i, 4 ; 2 uses
  %exitcond771.not.i.3 = icmp eq i64 %indvars.iv.next768.i.3, %wide.trip.count758.i
  br i1 %exitcond771.not.i.3, label %._crit_edge609.i, label %vec.epilog.scalar.ph351, !llvm.loop !507

._crit_edge613.split.i:                           ; preds = %._crit_edge609.i, %.preheader513.i, %.preheader511.lr.ph.i, %.preheader512.lr.ph.i
  %indvars.iv.next776.i = add nuw nsw i64 %indvars.iv775.i, 2 ; 3 uses
  %i.aic = icmp slt i64 %indvars.iv.next776.i, %invariant.op.i
  %indvars.iv.next774.i = add i32 %indvars.iv773.i, 2
  br i1 %i.aic, label %_ZN4ncnn3MatD2Ev.exit451.i, label %.preheader509.loopexit.i, !llvm.loop !508

_ZN4ncnn3MatD2Ev.exit.i34:                        ; preds = %._crit_edge651.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv802.i = phi i64 [ %i.aae, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next803.i, %._crit_edge651.split.i ] ; 2 uses
  %i.aid = load ptr, ptr %i.av, align 8, !tbaa !37 ; 16 uses
  %i.aie = trunc i64 %indvars.iv802.i to i32      ; 4 uses
  %i.aif = mul i32 %i.zs, %i.aie
  %i.aig = sext i32 %i.aif to i64                 ; 16 uses
  %i.aih = getelementptr i8, ptr %i.aid, i64 %i.aig ; 3 uses
  %i.aii = lshr i32 %i.aie, 2
  %i.aij = lshr i32 %i.aie, 1
  %i.aik = and i32 %i.aij, 1
  %i.ail = and i32 %i.aie, 1
  %i.aim = add nuw nsw i32 %i.ail, %i.aii
  %i.ain = add nuw nsw i32 %i.aim, %i.aik
  %i.aio = load ptr, ptr %i.kh, align 8, !tbaa !37, !noalias !572
  %i.aip = load i64, ptr %i.zt, align 8, !tbaa !38, !noalias !572
  %i.aiq = zext nneg i32 %i.ain to i64
  %i.air = load i64, ptr %i.zu, align 8, !tbaa !79, !noalias !572
  %i.ais = mul i64 %i.air, %i.aip
  %i.ait = mul i64 %i.ais, %i.aiq
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aio, i64 %i.ait ; 2 uses
  br i1 %i.zv, label %.preheader506.lr.ph.i, label %.preheader508.i

.preheader506.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i34
  br i1 %i.zw, label %.preheader506.us.i.preheader, label %._crit_edge651.split.i

.preheader506.us.i.preheader:                     ; preds = %.preheader506.lr.ph.i
  %scevgep522.a = getelementptr i8, ptr %i.aid, i64 %i.aai
  %scevgep523.a = getelementptr i8, ptr %scevgep522.a, i64 %i.aig
  %i.aiv = getelementptr i8, ptr %i.aid, i64 %i.aam
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 %i.aai
  %scevgep524.a = getelementptr i8, ptr %i.aiw, i64 %wide.trip.count788.i
  %scevgep525.a = getelementptr i8, ptr %scevgep524.a, i64 %i.aig
  %scevgep526.a = getelementptr i8, ptr %i.aid, i64 %i.aan
  %scevgep527.a = getelementptr i8, ptr %scevgep526.a, i64 %i.aig
  %i.aix = getelementptr i8, ptr %i.aid, i64 %i.aam
  %i.aiy = getelementptr i8, ptr %i.aix, i64 %i.aan
  %scevgep528.a = getelementptr i8, ptr %i.aiy, i64 %wide.trip.count788.i
  %scevgep529.a = getelementptr i8, ptr %scevgep528.a, i64 %i.aig
  %scevgep530.a = getelementptr i8, ptr %i.aid, i64 %i.aao
  %scevgep531.a = getelementptr i8, ptr %scevgep530.a, i64 %i.aig
  %i.aiz = getelementptr i8, ptr %i.aid, i64 %i.aam
  %i.aja = getelementptr i8, ptr %i.aiz, i64 %i.aao
  %scevgep532.a = getelementptr i8, ptr %i.aja, i64 %wide.trip.count788.i
  %scevgep533.a = getelementptr i8, ptr %scevgep532.a, i64 %i.aig
  %scevgep534.a = getelementptr i8, ptr %i.aid, i64 %i.aap
  %scevgep535.a = getelementptr i8, ptr %scevgep534.a, i64 %i.aig
  %i.ajb = getelementptr i8, ptr %i.aid, i64 %i.aam
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 %i.aap
  %scevgep536.a = getelementptr i8, ptr %i.ajc, i64 %wide.trip.count788.i
  %scevgep537.a = getelementptr i8, ptr %scevgep536.a, i64 %i.aig
  %scevgep538.a = getelementptr i8, ptr %i.aid, i64 %i.aaq
  %scevgep539.a = getelementptr i8, ptr %scevgep538.a, i64 %i.aig
  %i.ajd = getelementptr i8, ptr %i.aid, i64 %i.aam
  %i.aje = getelementptr i8, ptr %i.ajd, i64 %i.aaq
  %scevgep540.a = getelementptr i8, ptr %i.aje, i64 %wide.trip.count788.i
  %scevgep541 = getelementptr i8, ptr %scevgep540.a, i64 %i.aig
  %scevgep542 = getelementptr i8, ptr %i.aid, i64 %i.aar
  %scevgep543 = getelementptr i8, ptr %scevgep542, i64 %i.aig
  %i.ajf = getelementptr i8, ptr %i.aid, i64 %i.aam
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 %i.aar
  %scevgep544 = getelementptr i8, ptr %i.ajg, i64 %wide.trip.count788.i
  %scevgep545 = getelementptr i8, ptr %scevgep544, i64 %i.aig
  %scevgep546 = getelementptr i8, ptr %i.aid, i64 %i.zx
  %scevgep547 = getelementptr i8, ptr %scevgep546, i64 %i.aig
  %i.ajh = getelementptr i8, ptr %i.aid, i64 %i.aam
  %i.aji = getelementptr i8, ptr %i.ajh, i64 %i.zx
  %scevgep548 = getelementptr i8, ptr %i.aji, i64 %wide.trip.count788.i
  %scevgep549 = getelementptr i8, ptr %scevgep548, i64 %i.aig
  %i.ajj = getelementptr i8, ptr %i.aid, i64 %i.aam
  %scevgep550 = getelementptr i8, ptr %i.ajj, i64 %wide.trip.count788.i
  %scevgep551 = getelementptr i8, ptr %scevgep550, i64 %i.aig
  %i.ajk = insertelement <8 x ptr> poison, ptr %scevgep529.a, i64 0
  %i.ajl = insertelement <8 x ptr> %i.ajk, ptr %scevgep525.a, i64 1
  %i.ajm = insertelement <8 x ptr> %i.ajl, ptr %scevgep533.a, i64 2
  %i.ajn = insertelement <8 x ptr> %i.ajm, ptr %scevgep537.a, i64 3
  %i.ajo = insertelement <8 x ptr> %i.ajn, ptr %scevgep541, i64 4
  %i.ajp = insertelement <8 x ptr> %i.ajo, ptr %scevgep545, i64 5
  %i.ajq = insertelement <8 x ptr> %i.ajp, ptr %scevgep549, i64 6
  %i.ajr = insertelement <8 x ptr> %i.ajq, ptr %scevgep551, i64 7
  %i.ajs = insertelement <8 x ptr> poison, ptr %scevgep527.a, i64 0
  %i.ajt = insertelement <8 x ptr> %i.ajs, ptr %scevgep523.a, i64 1
  %i.aju = insertelement <8 x ptr> %i.ajt, ptr %scevgep531.a, i64 2
  %i.ajv = insertelement <8 x ptr> %i.aju, ptr %scevgep535.a, i64 3
  %i.ajw = insertelement <8 x ptr> %i.ajv, ptr %scevgep539.a, i64 4
  %i.ajx = insertelement <8 x ptr> %i.ajw, ptr %scevgep543, i64 5
  %i.ajy = insertelement <8 x ptr> %i.ajx, ptr %scevgep547, i64 6
  %i.ajz = insertelement <8 x ptr> %i.ajy, ptr %i.aih, i64 7
  br label %iter.check612

iter.check612:                                    ; preds = %.preheader506.us.i.preheader, %._crit_edge621.us.i
  %.0384625.us.i = phi i32 [ %i.amq, %._crit_edge621.us.i ], [ 0, %.preheader506.us.i.preheader ]
  %.0387624.us.i = phi ptr [ %.lcssa159, %._crit_edge621.us.i ], [ %i.aiu, %.preheader506.us.i.preheader ] ; 8 uses
  %.0390623.us.i = phi ptr [ %i.amp, %._crit_edge621.us.i ], [ %i.aih, %.preheader506.us.i.preheader ] ; 4 uses
  br i1 %min.iters.check591, label %vec.epilog.scalar.ph613.preheader, label %vector.memcheck520

vector.memcheck520:                               ; preds = %iter.check612
  %scevgep521 = getelementptr i8, ptr %.0387624.us.i, i64 %i.aah
  %i.aka = insertelement <8 x ptr> poison, ptr %.0387624.us.i, i64 0
  %i.akb = shufflevector <8 x ptr> %i.aka, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.akc = icmp ult <8 x ptr> %i.akb, %i.ajr
  %i.akd = insertelement <8 x ptr> poison, ptr %scevgep521, i64 0
  %i.ake = shufflevector <8 x ptr> %i.akd, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.akf = icmp ult <8 x ptr> %i.ajz, %i.ake
  %i.akg = and <8 x i1> %i.akc, %i.akf
  %i.akh = bitcast <8 x i1> %i.akg to i8
  %i.aki = icmp ne i8 %i.akh, 0
  %op.rdx = or i1 %i.aki, %stride.check559
  br i1 %op.rdx, label %vec.epilog.scalar.ph613.preheader, label %vector.main.loop.iter.check592

vector.main.loop.iter.check592:                   ; preds = %vector.memcheck520
  br i1 %min.iters.check593, label %vec.epilog.ph616, label %vector.ph594

vector.ph594:                                     ; preds = %vector.main.loop.iter.check592
  %i.akj = getelementptr i8, ptr %.0387624.us.i, i64 %i.aat ; 2 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.ph594, %vector.body596
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next608, %vector.body596 ] ; 3 uses
  %i.akk = shl i64 %index597, 3
  %next.gep598 = getelementptr i8, ptr %.0387624.us.i, i64 %i.akk
  %i.akl = getelementptr inbounds nuw i8, ptr %.0390623.us.i, i64 %index597 ; 2 uses
  %wide.load599 = load <32 x i8>, ptr %i.akl, align 1, !tbaa !114, !alias.scope !573
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 %i.zx ; 2 uses
  %wide.load600 = load <32 x i8>, ptr %i.akm, align 1, !tbaa !114, !alias.scope !574
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 %i.zx ; 2 uses
  %wide.load601 = load <32 x i8>, ptr %i.akn, align 1, !tbaa !114, !alias.scope !575
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.zx ; 2 uses
  %wide.load602 = load <32 x i8>, ptr %i.ako, align 1, !tbaa !114, !alias.scope !576
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 %i.zx ; 2 uses
  %wide.load603.a = load <32 x i8>, ptr %i.akp, align 1, !tbaa !114, !alias.scope !577
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.zx ; 2 uses
  %wide.load604.a = load <32 x i8>, ptr %i.akq, align 1, !tbaa !114, !alias.scope !578
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.zx ; 2 uses
  %wide.load605.a = load <32 x i8>, ptr %i.akr, align 1, !tbaa !114, !alias.scope !579
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.zx
  %wide.load606.a = load <32 x i8>, ptr %i.aks, align 1, !tbaa !114, !alias.scope !580
  %i.akt = shufflevector <32 x i8> %wide.load599, <32 x i8> %wide.load600, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aku = shufflevector <32 x i8> %wide.load601, <32 x i8> %wide.load602, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.akv = shufflevector <32 x i8> %wide.load603.a, <32 x i8> %wide.load604.a, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.akw = shufflevector <32 x i8> %wide.load605.a, <32 x i8> %wide.load606.a, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.akx = shufflevector <64 x i8> %i.akt, <64 x i8> %i.aku, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.aky = shufflevector <64 x i8> %i.akv, <64 x i8> %i.akw, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec607 = shufflevector <128 x i8> %i.akx, <128 x i8> %i.aky, <256 x i32> <i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 1, i32 33, i32 65, i32 97, i32 129, i32 161, i32 193, i32 225, i32 2, i32 34, i32 66, i32 98, i32 130, i32 162, i32 194, i32 226, i32 3, i32 35, i32 67, i32 99, i32 131, i32 163, i32 195, i32 227, i32 4, i32 36, i32 68, i32 100, i32 132, i32 164, i32 196, i32 228, i32 5, i32 37, i32 69, i32 101, i32 133, i32 165, i32 197, i32 229, i32 6, i32 38, i32 70, i32 102, i32 134, i32 166, i32 198, i32 230, i32 7, i32 39, i32 71, i32 103, i32 135, i32 167, i32 199, i32 231, i32 8, i32 40, i32 72, i32 104, i32 136, i32 168, i32 200, i32 232, i32 9, i32 41, i32 73, i32 105, i32 137, i32 169, i32 201, i32 233, i32 10, i32 42, i32 74, i32 106, i32 138, i32 170, i32 202, i32 234, i32 11, i32 43, i32 75, i32 107, i32 139, i32 171, i32 203, i32 235, i32 12, i32 44, i32 76, i32 108, i32 140, i32 172, i32 204, i32 236, i32 13, i32 45, i32 77, i32 109, i32 141, i32 173, i32 205, i32 237, i32 14, i32 46, i32 78, i32 110, i32 142, i32 174, i32 206, i32 238, i32 15, i32 47, i32 79, i32 111, i32 143, i32 175, i32 207, i32 239, i32 16, i32 48, i32 80, i32 112, i32 144, i32 176, i32 208, i32 240, i32 17, i32 49, i32 81, i32 113, i32 145, i32 177, i32 209, i32 241, i32 18, i32 50, i32 82, i32 114, i32 146, i32 178, i32 210, i32 242, i32 19, i32 51, i32 83, i32 115, i32 147, i32 179, i32 211, i32 243, i32 20, i32 52, i32 84, i32 116, i32 148, i32 180, i32 212, i32 244, i32 21, i32 53, i32 85, i32 117, i32 149, i32 181, i32 213, i32 245, i32 22, i32 54, i32 86, i32 118, i32 150, i32 182, i32 214, i32 246, i32 23, i32 55, i32 87, i32 119, i32 151, i32 183, i32 215, i32 247, i32 24, i32 56, i32 88, i32 120, i32 152, i32 184, i32 216, i32 248, i32 25, i32 57, i32 89, i32 121, i32 153, i32 185, i32 217, i32 249, i32 26, i32 58, i32 90, i32 122, i32 154, i32 186, i32 218, i32 250, i32 27, i32 59, i32 91, i32 123, i32 155, i32 187, i32 219, i32 251, i32 28, i32 60, i32 92, i32 124, i32 156, i32 188, i32 220, i32 252, i32 29, i32 61, i32 93, i32 125, i32 157, i32 189, i32 221, i32 253, i32 30, i32 62, i32 94, i32 126, i32 158, i32 190, i32 222, i32 254, i32 31, i32 63, i32 95, i32 127, i32 159, i32 191, i32 223, i32 255>
  store <256 x i8> %interleaved.vec607, ptr %next.gep598, align 1, !tbaa !114, !alias.scope !581, !noalias !582
  %index.next608 = add nuw i64 %index597, 32      ; 2 uses
  %i.akz = icmp eq i64 %index.next608, %n.vec595
  br i1 %i.akz, label %middle.block609, label %vector.body596, !llvm.loop !521

middle.block609:                                  ; preds = %vector.body596
  br i1 %cmp.n610, label %._crit_edge621.us.i, label %vec.epilog.iter.check614

vec.epilog.iter.check614:                         ; preds = %middle.block609
  br i1 %min.epilog.iters.check615.not.not, label %vec.epilog.scalar.ph613.preheader, label %vec.epilog.ph616, !prof !553

vec.epilog.ph616:                                 ; preds = %vector.main.loop.iter.check592, %vec.epilog.iter.check614
  %vec.epilog.resume.val611 = phi i64 [ %n.vec595, %vec.epilog.iter.check614 ], [ 0, %vector.main.loop.iter.check592 ]
  %i.ala = getelementptr i8, ptr %.0387624.us.i, i64 %i.aau ; 2 uses
  br label %vec.epilog.vector.body618

vec.epilog.vector.body618:                        ; preds = %vec.epilog.vector.body618, %vec.epilog.ph616
  %index619 = phi i64 [ %vec.epilog.resume.val611, %vec.epilog.ph616 ], [ %index.next630, %vec.epilog.vector.body618 ] ; 3 uses
  %i.alb = shl i64 %index619, 3
  %next.gep620 = getelementptr i8, ptr %.0387624.us.i, i64 %i.alb
  %i.alc = getelementptr inbounds nuw i8, ptr %.0390623.us.i, i64 %index619 ; 2 uses
  %wide.load621 = load <16 x i8>, ptr %i.alc, align 1, !tbaa !114, !alias.scope !573
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 %i.zx ; 2 uses
  %wide.load622 = load <16 x i8>, ptr %i.ald, align 1, !tbaa !114, !alias.scope !574
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.zx ; 2 uses
  %wide.load623 = load <16 x i8>, ptr %i.ale, align 1, !tbaa !114, !alias.scope !575
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 %i.zx ; 2 uses
  %wide.load624 = load <16 x i8>, ptr %i.alf, align 1, !tbaa !114, !alias.scope !576
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 %i.zx ; 2 uses
  %wide.load625 = load <16 x i8>, ptr %i.alg, align 1, !tbaa !114, !alias.scope !577
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.zx ; 2 uses
  %wide.load626 = load <16 x i8>, ptr %i.alh, align 1, !tbaa !114, !alias.scope !578
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.zx ; 2 uses
  %wide.load627 = load <16 x i8>, ptr %i.ali, align 1, !tbaa !114, !alias.scope !579
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.zx
  %wide.load628 = load <16 x i8>, ptr %i.alj, align 1, !tbaa !114, !alias.scope !580
  %i.alk = shufflevector <16 x i8> %wide.load621, <16 x i8> %wide.load622, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.all = shufflevector <16 x i8> %wide.load623, <16 x i8> %wide.load624, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.alm = shufflevector <16 x i8> %wide.load625, <16 x i8> %wide.load626, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aln = shufflevector <16 x i8> %wide.load627, <16 x i8> %wide.load628, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.alo = shufflevector <32 x i8> %i.alk, <32 x i8> %i.all, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.alp = shufflevector <32 x i8> %i.alm, <32 x i8> %i.aln, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec629 = shufflevector <64 x i8> %i.alo, <64 x i8> %i.alp, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i8> %interleaved.vec629, ptr %next.gep620, align 1, !tbaa !114, !alias.scope !581, !noalias !582
  %index.next630 = add nuw i64 %index619, 16      ; 2 uses
  %i.alq = icmp eq i64 %index.next630, %n.vec617
  br i1 %i.alq, label %vec.epilog.middle.block631, label %vec.epilog.vector.body618, !llvm.loop !522

vec.epilog.middle.block631:                       ; preds = %vec.epilog.vector.body618
  br i1 %cmp.n632, label %._crit_edge621.us.i, label %vec.epilog.scalar.ph613.preheader

vec.epilog.scalar.ph613.preheader:                ; preds = %iter.check612, %vector.memcheck520, %vec.epilog.iter.check614, %vec.epilog.middle.block631
  %indvars.iv785.i.ph = phi i64 [ 0, %iter.check612 ], [ 0, %vector.memcheck520 ], [ %n.vec595, %vec.epilog.iter.check614 ], [ %n.vec617, %vec.epilog.middle.block631 ]
  %.1388619.us.i.ph = phi ptr [ %.0387624.us.i, %iter.check612 ], [ %.0387624.us.i, %vector.memcheck520 ], [ %i.akj, %vec.epilog.iter.check614 ], [ %i.ala, %vec.epilog.middle.block631 ]
  br label %vec.epilog.scalar.ph613

vec.epilog.scalar.ph613:                          ; preds = %vec.epilog.scalar.ph613.preheader, %vec.epilog.scalar.ph613
  %indvars.iv785.i = phi i64 [ %indvars.iv.next786.i, %vec.epilog.scalar.ph613 ], [ %indvars.iv785.i.ph, %vec.epilog.scalar.ph613.preheader ] ; 2 uses
  %.1388619.us.i = phi ptr [ %i.amo, %vec.epilog.scalar.ph613 ], [ %.1388619.us.i.ph, %vec.epilog.scalar.ph613.preheader ] ; 9 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.0390623.us.i, i64 %indvars.iv785.i ; 2 uses
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !114
  store i8 %i.als, ptr %.1388619.us.i, align 1, !tbaa !114
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 %i.zx ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 1
  %i.alv = load i8, ptr %i.alt, align 1, !tbaa !114
  store i8 %i.alv, ptr %i.alu, align 1, !tbaa !114
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.zx ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 2
  %i.aly = load i8, ptr %i.alw, align 1, !tbaa !114
  store i8 %i.aly, ptr %i.alx, align 1, !tbaa !114
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.zx ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 3
  %i.amb = load i8, ptr %i.alz, align 1, !tbaa !114
  store i8 %i.amb, ptr %i.ama, align 1, !tbaa !114
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 %i.zx ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 4
  %i.ame = load i8, ptr %i.amc, align 1, !tbaa !114
  store i8 %i.ame, ptr %i.amd, align 1, !tbaa !114
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.zx ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 5
  %i.amh = load i8, ptr %i.amf, align 1, !tbaa !114
  store i8 %i.amh, ptr %i.amg, align 1, !tbaa !114
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.zx ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 6
  %i.amk = load i8, ptr %i.ami, align 1, !tbaa !114
  store i8 %i.amk, ptr %i.amj, align 1, !tbaa !114
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.zx
  %i.amm = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 7
  %i.amn = load i8, ptr %i.aml, align 1, !tbaa !114
  store i8 %i.amn, ptr %i.amm, align 1, !tbaa !114
  %i.amo = getelementptr inbounds nuw i8, ptr %.1388619.us.i, i64 8 ; 2 uses
  %indvars.iv.next786.i = add nuw nsw i64 %indvars.iv785.i, 1 ; 2 uses
  %exitcond789.not.i = icmp eq i64 %indvars.iv.next786.i, %wide.trip.count788.i
  br i1 %exitcond789.not.i, label %._crit_edge621.us.i, label %vec.epilog.scalar.ph613, !llvm.loop !523

._crit_edge621.us.i:                              ; preds = %vec.epilog.scalar.ph613, %vec.epilog.middle.block631, %middle.block609
  %.lcssa159 = phi ptr [ %i.ala, %vec.epilog.middle.block631 ], [ %i.akj, %middle.block609 ], [ %i.amo, %vec.epilog.scalar.ph613 ] ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.0390623.us.i, i64 %i.zz ; 2 uses
  %i.amq = add nuw nsw i32 %.0384625.us.i, 8      ; 2 uses
  %i.amr = or disjoint i32 %i.amq, 7
  %i.ams = icmp slt i32 %i.amr, %i.p
  br i1 %i.ams, label %iter.check612, label %.preheader508.i, !llvm.loop !524

.preheader508.i:                                  ; preds = %._crit_edge621.us.i, %_ZN4ncnn3MatD2Ev.exit.i34
  %.0390.lcssa.i = phi ptr [ %i.aih, %_ZN4ncnn3MatD2Ev.exit.i34 ], [ %i.amp, %._crit_edge621.us.i ] ; 6 uses
  %.0387.lcssa.i = phi ptr [ %i.aiu, %_ZN4ncnn3MatD2Ev.exit.i34 ], [ %.lcssa159, %._crit_edge621.us.i ] ; 2 uses
  %.0384.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i34 ], [ %i.aad, %._crit_edge621.us.i ] ; 4 uses
  %i.amt = or disjoint i32 %.0384.lcssa.i, 1
  %i.amu = icmp slt i32 %i.amt, %i.p
  br i1 %i.amu, label %.preheader505.lr.ph.i, label %.preheader507.i

.preheader505.lr.ph.i:                            ; preds = %.preheader508.i
  br i1 %i.zw, label %.preheader505.us.i.preheader, label %._crit_edge651.split.i

.preheader505.us.i.preheader:                     ; preds = %.preheader505.lr.ph.i
  %scevgep470 = getelementptr i8, ptr %.0390.lcssa.i, i64 %i.zx
  %i.amv = getelementptr i8, ptr %.0390.lcssa.i, i64 %i.zx
  %scevgep471 = getelementptr i8, ptr %i.amv, i64 %wide.trip.count788.i
  %i.amw = sub i32 %i.aag, %.0384.lcssa.i
  %i.amx = lshr i32 %i.amw, 1
  %i.amy = zext nneg i32 %i.amx to i64
  %i.amz = mul nsw i64 %i.aab, %i.amy             ; 2 uses
  %scevgep472 = getelementptr i8, ptr %scevgep471, i64 %i.amz
  %scevgep473 = getelementptr i8, ptr %.0390.lcssa.i, i64 %wide.trip.count788.i
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %i.amz
  br label %iter.check503

iter.check503:                                    ; preds = %.preheader505.us.i.preheader, %._crit_edge634.us.i
  %.1385638.us.i = phi i32 [ %i.aox, %._crit_edge634.us.i ], [ %.0384.lcssa.i, %.preheader505.us.i.preheader ]
  %.3637.us.i = phi ptr [ %.lcssa161, %._crit_edge634.us.i ], [ %.0387.lcssa.i, %.preheader505.us.i.preheader ] ; 10 uses
  %.1391636.us.i = phi ptr [ %i.aow, %._crit_edge634.us.i ], [ %.0390.lcssa.i, %.preheader505.us.i.preheader ] ; 8 uses
  br i1 %min.iters.check484, label %vec.epilog.scalar.ph504.preheader, label %vector.memcheck468

vector.memcheck468:                               ; preds = %iter.check503
  %scevgep469 = getelementptr i8, ptr %.3637.us.i, i64 %i.aaf ; 2 uses
  %bound0475 = icmp ult ptr %.3637.us.i, %scevgep472
  %bound1476 = icmp ult ptr %scevgep470, %scevgep469
  %found.conflict477 = and i1 %bound0475, %bound1476
  %bound0479 = icmp ult ptr %.3637.us.i, %scevgep474
  %bound1480 = icmp ult ptr %.0390.lcssa.i, %scevgep469
  %found.conflict481 = and i1 %bound0479, %bound1480
  %10 = or i1 %found.conflict481, %stride.check482
  %conflict.rdx483 = or i1 %found.conflict477, %10
  br i1 %conflict.rdx483, label %vec.epilog.scalar.ph504.preheader, label %vector.main.loop.iter.check485

vector.main.loop.iter.check485:                   ; preds = %vector.memcheck468
  br i1 %min.iters.check486, label %vec.epilog.ph507, label %vector.ph487

vector.ph487:                                     ; preds = %vector.main.loop.iter.check485
  %i.ana = getelementptr i8, ptr %.3637.us.i, i64 %i.aaw ; 2 uses
  br label %vector.body489

vector.body489:                                   ; preds = %vector.ph487, %vector.body489
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next499, %vector.body489 ] ; 3 uses
  %i.anb = shl i64 %index490, 1                   ; 2 uses
  %next.gep491 = getelementptr i8, ptr %.3637.us.i, i64 %i.anb
  %i.anc = getelementptr i8, ptr %.3637.us.i, i64 %i.anb
  %next.gep492 = getelementptr i8, ptr %i.anc, i64 16
  %i.and = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %index490 ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %wide.load493 = load <8 x i8>, ptr %i.and, align 1, !tbaa !114, !alias.scope !583
  %wide.load494 = load <8 x i8>, ptr %i.ane, align 1, !tbaa !114, !alias.scope !583
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.zx ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %wide.load495 = load <8 x i8>, ptr %i.anf, align 1, !tbaa !114, !alias.scope !584
  %wide.load496 = load <8 x i8>, ptr %i.ang, align 1, !tbaa !114, !alias.scope !584
  %interleaved.vec497 = shufflevector <8 x i8> %wide.load493, <8 x i8> %wide.load495, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec497, ptr %next.gep491, align 1, !tbaa !114, !alias.scope !585, !noalias !586
  %interleaved.vec498 = shufflevector <8 x i8> %wide.load494, <8 x i8> %wide.load496, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec498, ptr %next.gep492, align 1, !tbaa !114, !alias.scope !585, !noalias !586
  %index.next499 = add nuw i64 %index490, 16      ; 2 uses
  %i.anh = icmp eq i64 %index.next499, %n.vec488
  br i1 %i.anh, label %middle.block500, label %vector.body489, !llvm.loop !529

middle.block500:                                  ; preds = %vector.body489
  br i1 %cmp.n501, label %._crit_edge634.us.i, label %vec.epilog.iter.check505

vec.epilog.iter.check505:                         ; preds = %middle.block500
  br i1 %min.epilog.iters.check506, label %vec.epilog.scalar.ph504.preheader, label %vec.epilog.ph507, !prof !571

vec.epilog.ph507:                                 ; preds = %vector.main.loop.iter.check485, %vec.epilog.iter.check505
  %vec.epilog.resume.val502 = phi i64 [ %n.vec488, %vec.epilog.iter.check505 ], [ 0, %vector.main.loop.iter.check485 ]
  %i.ani = getelementptr i8, ptr %.3637.us.i, i64 %i.aax ; 2 uses
  br label %vec.epilog.vector.body509

vec.epilog.vector.body509:                        ; preds = %vec.epilog.vector.body509, %vec.epilog.ph507
  %index510 = phi i64 [ %vec.epilog.resume.val502, %vec.epilog.ph507 ], [ %index.next515, %vec.epilog.vector.body509 ] ; 3 uses
  %i.anj = shl i64 %index510, 1
  %next.gep511 = getelementptr i8, ptr %.3637.us.i, i64 %i.anj
  %i.ank = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %index510 ; 2 uses
  %wide.load512 = load <4 x i8>, ptr %i.ank, align 1, !tbaa !114, !alias.scope !583
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.zx
  %wide.load513 = load <4 x i8>, ptr %i.anl, align 1, !tbaa !114, !alias.scope !584
  %interleaved.vec514 = shufflevector <4 x i8> %wide.load512, <4 x i8> %wide.load513, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec514, ptr %next.gep511, align 1, !tbaa !114, !alias.scope !585, !noalias !586
  %index.next515 = add nuw i64 %index510, 4       ; 2 uses
  %i.anm = icmp eq i64 %index.next515, %n.vec508
  br i1 %i.anm, label %vec.epilog.middle.block516, label %vec.epilog.vector.body509, !llvm.loop !530

vec.epilog.middle.block516:                       ; preds = %vec.epilog.vector.body509
  br i1 %cmp.n517, label %._crit_edge634.us.i, label %vec.epilog.scalar.ph504.preheader

vec.epilog.scalar.ph504.preheader:                ; preds = %iter.check503, %vector.memcheck468, %vec.epilog.iter.check505, %vec.epilog.middle.block516
  %indvars.iv791.i.ph = phi i64 [ 0, %iter.check503 ], [ 0, %vector.memcheck468 ], [ %n.vec488, %vec.epilog.iter.check505 ], [ %n.vec508, %vec.epilog.middle.block516 ] ; 3 uses
  %.4632.us.i.ph = phi ptr [ %.3637.us.i, %iter.check503 ], [ %.3637.us.i, %vector.memcheck468 ], [ %i.ana, %vec.epilog.iter.check505 ], [ %i.ani, %vec.epilog.middle.block516 ] ; 2 uses
  br i1 %lcmp.mod668.not, label %vec.epilog.scalar.ph504.prol.loopexit, label %vec.epilog.scalar.ph504.prol

vec.epilog.scalar.ph504.prol:                     ; preds = %vec.epilog.scalar.ph504.preheader, %vec.epilog.scalar.ph504.prol
  %indvars.iv791.i.prol = phi i64 [ %indvars.iv.next792.i.prol, %vec.epilog.scalar.ph504.prol ], [ %indvars.iv791.i.ph, %vec.epilog.scalar.ph504.preheader ] ; 2 uses
  %.4632.us.i.prol = phi ptr [ %i.ans, %vec.epilog.scalar.ph504.prol ], [ %.4632.us.i.ph, %vec.epilog.scalar.ph504.preheader ] ; 3 uses
  %prol.iter669 = phi i64 [ %prol.iter669.next, %vec.epilog.scalar.ph504.prol ], [ 0, %vec.epilog.scalar.ph504.preheader ]
  %i.ann = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %indvars.iv791.i.prol ; 2 uses
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !114
  store i8 %i.ano, ptr %.4632.us.i.prol, align 1, !tbaa !114
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.zx
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !114
  %i.anr = getelementptr inbounds nuw i8, ptr %.4632.us.i.prol, i64 1
  store i8 %i.anq, ptr %i.anr, align 1, !tbaa !114
  %i.ans = getelementptr inbounds nuw i8, ptr %.4632.us.i.prol, i64 2 ; 3 uses
  %indvars.iv.next792.i.prol = add nuw nsw i64 %indvars.iv791.i.prol, 1 ; 2 uses
  %prol.iter669.next = add i64 %prol.iter669, 1   ; 2 uses
  %prol.iter669.cmp.not = icmp eq i64 %prol.iter669.next, %xtraiter667
  br i1 %prol.iter669.cmp.not, label %vec.epilog.scalar.ph504.prol.loopexit, label %vec.epilog.scalar.ph504.prol, !llvm.loop !531

vec.epilog.scalar.ph504.prol.loopexit:            ; preds = %vec.epilog.scalar.ph504.prol, %vec.epilog.scalar.ph504.preheader
  %.lcssa639.unr = phi ptr [ poison, %vec.epilog.scalar.ph504.preheader ], [ %i.ans, %vec.epilog.scalar.ph504.prol ]
  %indvars.iv791.i.unr = phi i64 [ %indvars.iv791.i.ph, %vec.epilog.scalar.ph504.preheader ], [ %indvars.iv.next792.i.prol, %vec.epilog.scalar.ph504.prol ]
  %.4632.us.i.unr = phi ptr [ %.4632.us.i.ph, %vec.epilog.scalar.ph504.preheader ], [ %i.ans, %vec.epilog.scalar.ph504.prol ]
  %i.ant = sub nsw i64 %indvars.iv791.i.ph, %wide.trip.count788.i
  %i.anu = icmp ugt i64 %i.ant, -4
  br i1 %i.anu, label %._crit_edge634.us.i, label %vec.epilog.scalar.ph504

vec.epilog.scalar.ph504:                          ; preds = %vec.epilog.scalar.ph504.prol.loopexit, %vec.epilog.scalar.ph504
  %indvars.iv791.i = phi i64 [ %indvars.iv.next792.i.3, %vec.epilog.scalar.ph504 ], [ %indvars.iv791.i.unr, %vec.epilog.scalar.ph504.prol.loopexit ] ; 5 uses
  %.4632.us.i = phi ptr [ %i.aov, %vec.epilog.scalar.ph504 ], [ %.4632.us.i.unr, %vec.epilog.scalar.ph504.prol.loopexit ] ; 9 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %indvars.iv791.i ; 2 uses
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !114
  store i8 %i.anw, ptr %.4632.us.i, align 1, !tbaa !114
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.zx
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !114
  %i.anz = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 1
  store i8 %i.any, ptr %i.anz, align 1, !tbaa !114
  %i.aoa = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 2
  %i.aob = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %indvars.iv791.i
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 1 ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !114
  store i8 %i.aod, ptr %i.aoa, align 1, !tbaa !114
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %i.zx
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !114
  %i.aog = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 3
  store i8 %i.aof, ptr %i.aog, align 1, !tbaa !114
  %i.aoh = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 4
  %i.aoi = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %indvars.iv791.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2 ; 2 uses
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !114
  store i8 %i.aok, ptr %i.aoh, align 1, !tbaa !114
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoj, i64 %i.zx
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !114
  %i.aon = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 5
  store i8 %i.aom, ptr %i.aon, align 1, !tbaa !114
  %i.aoo = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 6
  %i.aop = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %indvars.iv791.i
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 3 ; 2 uses
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !114
  store i8 %i.aor, ptr %i.aoo, align 1, !tbaa !114
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %i.zx
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !114
  %i.aou = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 7
  store i8 %i.aot, ptr %i.aou, align 1, !tbaa !114
  %i.aov = getelementptr inbounds nuw i8, ptr %.4632.us.i, i64 8 ; 2 uses
  %indvars.iv.next792.i.3 = add nuw nsw i64 %indvars.iv791.i, 4 ; 2 uses
  %exitcond795.not.i.3 = icmp eq i64 %indvars.iv.next792.i.3, %wide.trip.count788.i
  br i1 %exitcond795.not.i.3, label %._crit_edge634.us.i, label %vec.epilog.scalar.ph504, !llvm.loop !532

._crit_edge634.us.i:                              ; preds = %vec.epilog.scalar.ph504.prol.loopexit, %vec.epilog.scalar.ph504, %vec.epilog.middle.block516, %middle.block500
  %.lcssa161 = phi ptr [ %i.ani, %vec.epilog.middle.block516 ], [ %i.ana, %middle.block500 ], [ %.lcssa639.unr, %vec.epilog.scalar.ph504.prol.loopexit ], [ %i.aov, %vec.epilog.scalar.ph504 ] ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.1391636.us.i, i64 %i.aab ; 2 uses
  %i.aox = add nuw nsw i32 %.1385638.us.i, 2      ; 3 uses
  %i.aoy = or disjoint i32 %i.aox, 1
  %i.aoz = icmp slt i32 %i.aoy, %i.p
  br i1 %i.aoz, label %iter.check503, label %.preheader507.i, !llvm.loop !533

.preheader507.i:                                  ; preds = %._crit_edge634.us.i, %.preheader508.i
  %.1391.lcssa.i = phi ptr [ %.0390.lcssa.i, %.preheader508.i ], [ %i.aow, %._crit_edge634.us.i ] ; 12 uses
  %.3.lcssa.i = phi ptr [ %.0387.lcssa.i, %.preheader508.i ], [ %.lcssa161, %._crit_edge634.us.i ]
  %.1385.lcssa.i = phi i32 [ %.0384.lcssa.i, %.preheader508.i ], [ %i.aox, %._crit_edge634.us.i ] ; 2 uses
  %i.apa = icmp sge i32 %.1385.lcssa.i, %i.p
  %brmerge660.i = or i1 %i.aac, %i.apa
  br i1 %brmerge660.i, label %._crit_edge651.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader507.i
  %.1391.lcssa.i435 = ptrtoaddr ptr %.1391.lcssa.i to i64
  br label %iter.check453

iter.check453:                                    ; preds = %.preheader.i.preheader, %._crit_edge647.i
  %.2386650.i = phi i32 [ %i.apt, %._crit_edge647.i ], [ %.1385.lcssa.i, %.preheader.i.preheader ]
  %.5649.i = phi ptr [ %.lcssa164, %._crit_edge647.i ], [ %.3.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.5649.i436 = ptrtoaddr ptr %.5649.i to i64
  %i.apb = sub i64 %.1391.lcssa.i435, %.5649.i436
  %diff.check = icmp ugt i64 %i.apb, -128
  %or.cond635 = select i1 %min.iters.check437, i1 true, i1 %diff.check
  br i1 %or.cond635, label %vec.epilog.scalar.ph454.preheader, label %vector.main.loop.iter.check438

vector.main.loop.iter.check438:                   ; preds = %iter.check453
  br i1 %min.iters.check439, label %vec.epilog.ph457, label %vector.ph440

vector.ph440:                                     ; preds = %vector.main.loop.iter.check438
  %i.apc = getelementptr i8, ptr %.5649.i, i64 %n.vec441 ; 2 uses
  br label %vector.body442

vector.body442:                                   ; preds = %vector.ph440, %vector.body442
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next449, %vector.body442 ] ; 3 uses
  %next.gep444 = getelementptr i8, ptr %.5649.i, i64 %index443 ; 4 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.1391.lcssa.i, i64 %index443 ; 4 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 32
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 64
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apd, i64 96
  %wide.load445 = load <32 x i8>, ptr %i.apd, align 1, !tbaa !114
  %wide.load446 = load <32 x i8>, ptr %i.ape, align 1, !tbaa !114
  %wide.load447 = load <32 x i8>, ptr %i.apf, align 1, !tbaa !114
  %wide.load448 = load <32 x i8>, ptr %i.apg, align 1, !tbaa !114
  %i.aph = getelementptr i8, ptr %next.gep444, i64 32
  %i.api = getelementptr i8, ptr %next.gep444, i64 64
  %i.apj = getelementptr i8, ptr %next.gep444, i64 96
  store <32 x i8> %wide.load445, ptr %next.gep444, align 1, !tbaa !114
  store <32 x i8> %wide.load446, ptr %i.aph, align 1, !tbaa !114
  store <32 x i8> %wide.load447, ptr %i.api, align 1, !tbaa !114
  store <32 x i8> %wide.load448, ptr %i.apj, align 1, !tbaa !114
  %index.next449 = add nuw i64 %index443, 128     ; 2 uses
  %i.apk = icmp eq i64 %index.next449, %n.vec441
  br i1 %i.apk, label %middle.block450, label %vector.body442, !llvm.loop !534

middle.block450:                                  ; preds = %vector.body442
  br i1 %cmp.n451, label %._crit_edge647.i, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  br i1 %min.epilog.iters.check456, label %vec.epilog.scalar.ph454.preheader, label %vec.epilog.ph457, !prof !587

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check438, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec441, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check438 ]
  %i.apl = getelementptr i8, ptr %.5649.i, i64 %n.vec458 ; 2 uses
  br label %vec.epilog.vector.body459

end_hunk_2
