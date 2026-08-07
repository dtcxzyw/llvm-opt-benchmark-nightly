inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 56
begin_hunk_0_@local_laplacian_internal:bb.a
  %i.agn = getelementptr inbounds [4 x i8], ptr %i.abf, i64 %i.agm
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !20
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, %i.adl
  %reass.add832 = fadd reassoc nsz arcp contract afn float %i.agp, %i.agk
  %reass.mul833 = fmul reassoc nsz arcp contract afn float %reass.add832, %i.ads
  %reass.add834 = fadd reassoc nsz arcp contract afn float %i.aga, %i.afr
  %reass.mul835 = fmul reassoc nsz arcp contract afn float %reass.add834, %i.afh
  %i.agq = fsub reassoc nsz arcp contract afn float %reass.mul835, %i.aff
  %i.agr = fadd reassoc nsz arcp contract afn float %i.agq, %reass.mul833
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agr, %i.xq
  %i.agt = fadd reassoc nsz arcp contract afn float %i.ags, %i.aff
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1142, i64 %indvars.iv1011
  store float %i.agt, ptr %gep, align 4, !tbaa !20
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 1 ; 2 uses
  %exitcond1015.not = icmp eq i64 %indvars.iv.next1012, %i.abg
  br i1 %exitcond1015.not, label %._crit_edge883, label %bb.ae

bb.ax:                                            ; preds = %._crit_edge885.split
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.3, ptr noundef %i.oz, i32 noundef %.05.lcssa.i721807, i32 noundef %.05.lcssa.i729, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge885.split, %bb.ax, %bb.aa, %bb.z
  %i.agu = icmp sgt i32 %.0528791, 0
  br i1 %i.agu, label %.lr.ph896, label %.preheader838.preheader

.lr.ph896:                                        ; preds = %bb.ay
  %i.agv = zext i32 %i.pb to i64                  ; 2 uses
  %i.agw = add nsw i64 %i.agv, -1                 ; 2 uses
  br label %bb.az

.preheader838.preheader:                          ; preds = %._crit_edge893.split, %bb.ay
  %i.agx = load ptr, ptr %i.f, align 16           ; 3 uses
  %i.agy = zext nneg i32 %i.ks to i64             ; 3 uses
  %i.agz = sext i32 %.pre to i64                  ; 3 uses
  %i.aha = zext nneg i32 %2 to i64
  %wide.trip.count1046 = zext nneg i32 %3 to i64  ; 3 uses
  %wide.trip.count1041 = zext nneg i32 %2 to i64  ; 7 uses
  %invariant.gep1143 = getelementptr [4 x i8], ptr %i.agx, i64 %i.agy
  %i.ahb = mul nuw nsw i64 %wide.trip.count1046, %wide.trip.count1041
  %i.ahc = shl i64 %i.ahb, 4
  %i.ahd = add i64 %i.ahc, -4                     ; 2 uses
  %scevgep1301 = getelementptr i8, ptr %1, i64 %i.ahd ; 2 uses
  %i.ahe = shl nsw i64 %i.agz, 2
  %i.ahf = add nsw i64 %i.ahe, 4
  %i.ahg = mul i64 %i.ahf, %i.agy                 ; 2 uses
  %scevgep1302 = getelementptr i8, ptr %i.agx, i64 %i.ahg
  %i.ahh = add nuw nsw i64 %wide.trip.count1046, 4611686018427387903
  %i.ahi = mul i64 %i.ahh, %i.agz
  %i.ahj = add i64 %i.ahi, %wide.trip.count1041
  %i.ahk = shl i64 %i.ahj, 2
  %i.ahl = getelementptr i8, ptr %i.agx, i64 %i.ahk
  %scevgep1303 = getelementptr i8, ptr %i.ahl, i64 %i.ahg
  %scevgep1304 = getelementptr i8, ptr %0, i64 4
  %scevgep1305 = getelementptr i8, ptr %0, i64 %i.ahd
  %min.iters.check1313 = icmp ult i32 %2, 5
  %bound01306 = icmp ult ptr %1, %scevgep1303
  %bound11307 = icmp ult ptr %scevgep1302, %scevgep1301
  %found.conflict1308 = and i1 %bound01306, %bound11307
  %stride.check1309 = icmp slt i32 %.pre, 0
  %i.ahm = or i1 %found.conflict1308, %stride.check1309
  %bound01310 = icmp ult ptr %1, %scevgep1305
  %bound11311 = icmp ult ptr %scevgep1304, %scevgep1301
  %found.conflict1312 = and i1 %bound01310, %bound11311
  %conflict.rdx = or i1 %i.ahm, %found.conflict1312
  %n.mod.vf1315 = and i64 %wide.trip.count1041, 3 ; 2 uses
  %i.ahn = icmp eq i64 %n.mod.vf1315, 0
  %i.aho = select i1 %i.ahn, i64 4, i64 %n.mod.vf1315
  %n.vec1316 = sub nsw i64 %wide.trip.count1041, %i.aho ; 2 uses
  %i.ahp = add nsw i64 %wide.trip.count1041, -1
  br label %.preheader838

bb.az:                                            ; preds = %.lr.ph896, %._crit_edge893.split
  %indvar1677 = phi i64 [ 0, %.lr.ph896 ], [ %indvar.next1678, %._crit_edge893.split ] ; 3 uses
  %indvars.iv1035 = phi i64 [ %i.agv, %.lr.ph896 ], [ %indvars.iv.next1036, %._crit_edge893.split ] ; 12 uses
  %i.ahq = sub i64 %i.agw, %indvar1677
  %.not824 = icmp eq i64 %indvars.iv1035, 0
  br i1 %.not824, label %dl.exit784, label %.lr.ph.i771.preheader

.lr.ph.i771.preheader:                            ; preds = %bb.az
  %i.ahr = sub i64 %i.agw, %indvar1677
  %xtraiter1679 = and i64 %indvars.iv1035, 7      ; 3 uses
  %i.ahs = icmp ult i64 %i.ahr, 7
  br i1 %i.ahs, label %.lr.ph.i771.epil.preheader, label %.lr.ph.i771.preheader.new

.lr.ph.i771.preheader.new:                        ; preds = %.lr.ph.i771.preheader
  %unroll_iter1684 = and i64 %indvars.iv1035, -8
  br label %.lr.ph.i771

.lr.ph.i771:                                      ; preds = %.lr.ph.i771, %.lr.ph.i771.preheader.new
  %.056.i773 = phi i32 [ %.pre1072, %.lr.ph.i771.preheader.new ], [ %i.aht, %.lr.ph.i771 ]
  %niter1685 = phi i64 [ 0, %.lr.ph.i771.preheader.new ], [ %niter1685.next.7, %.lr.ph.i771 ]
  %i.aht = sdiv i32 %.056.i773, 256               ; 3 uses
  %niter1685.next.7 = add i64 %niter1685, 8       ; 2 uses
  %niter1685.ncmp.7 = icmp eq i64 %niter1685.next.7, %unroll_iter1684
  br i1 %niter1685.ncmp.7, label %.lr.ph.i779.preheader.unr-lcssa, label %.lr.ph.i771

.lr.ph.i779.preheader.unr-lcssa:                  ; preds = %.lr.ph.i771
  %lcmp.mod1681.not = icmp eq i64 %xtraiter1679, 0
  br i1 %lcmp.mod1681.not, label %.lr.ph.i779.preheader, label %.lr.ph.i771.epil.preheader

.lr.ph.i771.epil.preheader:                       ; preds = %.lr.ph.i779.preheader.unr-lcssa, %.lr.ph.i771.preheader
  %.056.i773.epil.init = phi i32 [ %.pre1072, %.lr.ph.i771.preheader ], [ %i.aht, %.lr.ph.i779.preheader.unr-lcssa ]
  %lcmp.mod1683 = icmp ne i64 %xtraiter1679, 0
  tail call void @llvm.assume(i1 %lcmp.mod1683)
  br label %.lr.ph.i771.epil

.lr.ph.i771.epil:                                 ; preds = %.lr.ph.i771.epil, %.lr.ph.i771.epil.preheader
  %.056.i773.epil = phi i32 [ %i.ahu, %.lr.ph.i771.epil ], [ %.056.i773.epil.init, %.lr.ph.i771.epil.preheader ]
  %epil.iter1680 = phi i64 [ %epil.iter1680.next, %.lr.ph.i771.epil ], [ 0, %.lr.ph.i771.epil.preheader ]
  %i.ahu = sdiv i32 %.056.i773.epil, 2            ; 2 uses
  %epil.iter1680.next = add i64 %epil.iter1680, 1 ; 2 uses
  %epil.iter1680.cmp.not = icmp eq i64 %epil.iter1680.next, %xtraiter1679
  br i1 %epil.iter1680.cmp.not, label %.lr.ph.i779.preheader, label %.lr.ph.i771.epil, !llvm.loop !147

.lr.ph.i779.preheader:                            ; preds = %.lr.ph.i771.epil, %.lr.ph.i779.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.aht, %.lr.ph.i779.preheader.unr-lcssa ], [ %i.ahu, %.lr.ph.i771.epil ]
  %xtraiter1686 = and i64 %indvars.iv1035, 7      ; 3 uses
  %i.ahv = icmp ult i64 %i.ahq, 7
  br i1 %i.ahv, label %.lr.ph.i779.epil.preheader, label %.lr.ph.i779.preheader.new

.lr.ph.i779.preheader.new:                        ; preds = %.lr.ph.i779.preheader
  %unroll_iter1691 = and i64 %indvars.iv1035, -8
  br label %.lr.ph.i779

._crit_edge.loopexit.i783.unr-lcssa:              ; preds = %.lr.ph.i779
  %lcmp.mod1688.not = icmp eq i64 %xtraiter1686, 0
  br i1 %lcmp.mod1688.not, label %._crit_edge.loopexit.i783, label %.lr.ph.i779.epil.preheader

.lr.ph.i779.epil.preheader:                       ; preds = %._crit_edge.loopexit.i783.unr-lcssa, %.lr.ph.i779.preheader
  %.056.i781.epil.init = phi i32 [ %.pre1074, %.lr.ph.i779.preheader ], [ %i.ahz, %._crit_edge.loopexit.i783.unr-lcssa ]
  %lcmp.mod1690 = icmp ne i64 %xtraiter1686, 0
  tail call void @llvm.assume(i1 %lcmp.mod1690)
  br label %.lr.ph.i779.epil

.lr.ph.i779.epil:                                 ; preds = %.lr.ph.i779.epil, %.lr.ph.i779.epil.preheader
  %.056.i781.epil = phi i32 [ %i.ahw, %.lr.ph.i779.epil ], [ %.056.i781.epil.init, %.lr.ph.i779.epil.preheader ]
  %epil.iter1687 = phi i64 [ %epil.iter1687.next, %.lr.ph.i779.epil ], [ 0, %.lr.ph.i779.epil.preheader ]
  %i.ahw = sdiv i32 %.056.i781.epil, 2            ; 2 uses
  %epil.iter1687.next = add i64 %epil.iter1687, 1 ; 2 uses
  %epil.iter1687.cmp.not = icmp eq i64 %epil.iter1687.next, %xtraiter1686
  br i1 %epil.iter1687.cmp.not, label %._crit_edge.loopexit.i783, label %.lr.ph.i779.epil, !llvm.loop !148

._crit_edge.loopexit.i783:                        ; preds = %.lr.ph.i779.epil, %._crit_edge.loopexit.i783.unr-lcssa
  %.lcssa1401 = phi i32 [ %i.ahz, %._crit_edge.loopexit.i783.unr-lcssa ], [ %i.ahw, %.lr.ph.i779.epil ] ; 2 uses
  %i.ahx = add nsw i32 %.lcssa, 1
  %i.ahy = add nsw i32 %.lcssa1401, 1
  br label %dl.exit784

.lr.ph.i779:                                      ; preds = %.lr.ph.i779, %.lr.ph.i779.preheader.new
  %.056.i781 = phi i32 [ %.pre1074, %.lr.ph.i779.preheader.new ], [ %i.ahz, %.lr.ph.i779 ]
  %niter1692 = phi i64 [ 0, %.lr.ph.i779.preheader.new ], [ %niter1692.next.7, %.lr.ph.i779 ]
  %i.ahz = sdiv i32 %.056.i781, 256               ; 3 uses
  %niter1692.next.7 = add i64 %niter1692, 8       ; 2 uses
  %niter1692.ncmp.7 = icmp eq i64 %niter1692.next.7, %unroll_iter1691
  br i1 %niter1692.ncmp.7, label %._crit_edge.loopexit.i783.unr-lcssa, label %.lr.ph.i779

dl.exit784:                                       ; preds = %bb.az, %._crit_edge.loopexit.i783
  %.pre-phi = phi i32 [ %.pre1074, %bb.az ], [ %.lcssa1401, %._crit_edge.loopexit.i783 ] ; 5 uses
  %.05.lcssa.i769816 = phi i32 [ %.pre, %bb.az ], [ %i.ahx, %._crit_edge.loopexit.i783 ] ; 32 uses
  %.05.lcssa.i777 = phi i32 [ %.pre1068, %bb.az ], [ %i.ahy, %._crit_edge.loopexit.i783 ] ; 8 uses
  %i.aia = add nuw nsw i64 %indvars.iv1035, 1     ; 3 uses
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aia
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !17 ; 12 uses
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1035
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !17 ; 37 uses
  %i.aif = and i32 %.pre-phi, -2
  %i.aig = icmp sgt i32 %.05.lcssa.i777, 2
  br i1 %i.aig, label %.preheader.lr.ph.i, label %._crit_edge25.split..loopexit.i_crit_edge.i

.preheader.lr.ph.i:                               ; preds = %dl.exit784
  %i.aih = add i32 %.05.lcssa.i769816, -1         ; 2 uses
  %i.aii = icmp sgt i32 %.05.lcssa.i769816, 2
  %i.aij = sdiv i32 %i.aih, 2                     ; 3 uses
  %i.aik = add nsw i32 %i.aij, 1                  ; 7 uses
  br i1 %i.aii, label %.preheader.preheader.i, label %iter.check1286

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ail = and i32 %i.aih, -2
  %i.aim = zext nneg i32 %.05.lcssa.i769816 to i64
  %wide.trip.count31.i = zext i32 %i.aif to i64
  %wide.trip.count.i = zext nneg i32 %i.ail to i64
  br label %.preheader.i788

.preheader.i788:                                  ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv28.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next29.i, %._crit_edge.i ] ; 3 uses
  %i.ain = trunc i64 %indvars.iv28.i to i32       ; 2 uses
  %i.aio = lshr i32 %i.ain, 1
  %i.aip = mul nsw i32 %i.aio, %i.aik
  %i.aiq = shl i32 %i.ain, 1
  %i.air = and i32 %i.aiq, 2
  %i.ais = mul nuw nsw i64 %indvars.iv28.i, %i.aim
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.ais
  br label %bb.bb

._crit_edge25.split..loopexit.i_crit_edge.i:      ; preds = %dl.exit784
  %.pre.i = sext i32 %.05.lcssa.i769816 to i64
  br label %.loopexit.i.i

iter.check1286:                                   ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.ait = sext i32 %.05.lcssa.i769816 to i64     ; 13 uses
  %wide.trip.count.i.i = zext nneg i32 %.pre-phi to i64 ; 4 uses
  %i.aiu = add nsw i64 %wide.trip.count.i.i, -1   ; 11 uses
  %min.iters.check1270 = icmp ugt i64 %i.aiu, 7
  %ident.check.not = icmp eq i32 %.05.lcssa.i769816, 1
  %or.cond1397 = select i1 %min.iters.check1270, i1 %ident.check.not, i1 false
  br i1 %or.cond1397, label %vector.main.loop.iter.check1271, label %.lr.ph.i.i.preheader

vector.main.loop.iter.check1271:                  ; preds = %iter.check1286
  %min.iters.check1272 = icmp ult i64 %i.aiu, 32
  br i1 %min.iters.check1272, label %vec.epilog.ph1290, label %vector.ph1273

vector.ph1273:                                    ; preds = %vector.main.loop.iter.check1271
  %n.mod.vf1274 = and i64 %i.aiu, 24
  %n.vec1275 = and i64 %i.aiu, -32                ; 4 uses
  %i.aiv = or disjoint i64 %n.vec1275, 1
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1273
  %index1277 = phi i64 [ 0, %vector.ph1273 ], [ %index.next1281, %vector.body1276 ] ; 2 uses
  %i.aiw = getelementptr [4 x i8], ptr %i.aie, i64 %index1277 ; 8 uses
  %i.aix = getelementptr i8, ptr %i.aiw, i64 4
  %i.aiy = getelementptr i8, ptr %i.aiw, i64 8
  %i.aiz = getelementptr i8, ptr %i.aiw, i64 40
  %i.aja = getelementptr i8, ptr %i.aiw, i64 72
  %i.ajb = getelementptr i8, ptr %i.aiw, i64 104
  %wide.load = load <8 x float>, ptr %i.aiy, align 4, !tbaa !20
  %wide.load1278 = load <8 x float>, ptr %i.aiz, align 4, !tbaa !20
  %wide.load1279 = load <8 x float>, ptr %i.aja, align 4, !tbaa !20
  %wide.load1280 = load <8 x float>, ptr %i.ajb, align 4, !tbaa !20
  %i.ajc = getelementptr i8, ptr %i.aiw, i64 36
  %i.ajd = getelementptr i8, ptr %i.aiw, i64 68
  %i.aje = getelementptr i8, ptr %i.aiw, i64 100
  store <8 x float> %wide.load, ptr %i.aix, align 4, !tbaa !20
  store <8 x float> %wide.load1278, ptr %i.ajc, align 4, !tbaa !20
  store <8 x float> %wide.load1279, ptr %i.ajd, align 4, !tbaa !20
  store <8 x float> %wide.load1280, ptr %i.aje, align 4, !tbaa !20
  %index.next1281 = add nuw i64 %index1277, 32    ; 2 uses
  %i.ajf = icmp eq i64 %index.next1281, %n.vec1275
  br i1 %i.ajf, label %middle.block1282, label %vector.body1276, !llvm.loop !149

middle.block1282:                                 ; preds = %vector.body1276
  %cmp.n1283 = icmp eq i64 %i.aiu, %n.vec1275
  br i1 %cmp.n1283, label %._crit_edge.i.i, label %vec.epilog.iter.check1288

vec.epilog.iter.check1288:                        ; preds = %middle.block1282
  %min.epilog.iters.check1289 = icmp eq i64 %n.mod.vf1274, 0
  br i1 %min.epilog.iters.check1289, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1290, !prof !150

vec.epilog.ph1290:                                ; preds = %vector.main.loop.iter.check1271, %vec.epilog.iter.check1288
  %vec.epilog.resume.val1284 = phi i64 [ %n.vec1275, %vec.epilog.iter.check1288 ], [ 0, %vector.main.loop.iter.check1271 ]
  %n.vec1292 = and i64 %i.aiu, -8                 ; 3 uses
  %i.ajg = or disjoint i64 %n.vec1292, 1
  br label %vec.epilog.vector.body1293

vec.epilog.vector.body1293:                       ; preds = %vec.epilog.vector.body1293, %vec.epilog.ph1290
  %index1294 = phi i64 [ %vec.epilog.resume.val1284, %vec.epilog.ph1290 ], [ %index.next1296, %vec.epilog.vector.body1293 ] ; 2 uses
  %i.ajh = getelementptr [4 x i8], ptr %i.aie, i64 %index1294 ; 2 uses
  %i.aji = getelementptr i8, ptr %i.ajh, i64 4
  %i.ajj = getelementptr i8, ptr %i.ajh, i64 8
  %wide.load1295 = load <8 x float>, ptr %i.ajj, align 4, !tbaa !20
  store <8 x float> %wide.load1295, ptr %i.aji, align 4, !tbaa !20
  %index.next1296 = add nuw i64 %index1294, 8     ; 2 uses
  %i.ajk = icmp eq i64 %index.next1296, %n.vec1292
  br i1 %i.ajk, label %vec.epilog.middle.block1297, label %vec.epilog.vector.body1293, !llvm.loop !151

vec.epilog.middle.block1297:                      ; preds = %vec.epilog.vector.body1293
  %cmp.n1298 = icmp eq i64 %i.aiu, %n.vec1292
  br i1 %cmp.n1298, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1286, %vec.epilog.iter.check1288, %vec.epilog.middle.block1297
  %indvars.iv.i.i785.ph = phi i64 [ 1, %iter.check1286 ], [ %i.aiv, %vec.epilog.iter.check1288 ], [ %i.ajg, %vec.epilog.middle.block1297 ] ; 4 uses
  %i.ajl = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i785.ph
  %xtraiter1693 = and i64 %i.ajl, 7               ; 2 uses
  %lcmp.mod1694.not = icmp eq i64 %xtraiter1693, 0
  br i1 %lcmp.mod1694.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i785.prol = phi i64 [ %indvars.iv.next.i.i786.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i785.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter1695 = phi i64 [ %prol.iter1695.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ajm = mul nsw i64 %indvars.iv.i.i785.prol, %i.ait
  %i.ajn = getelementptr [4 x i8], ptr %i.aie, i64 %i.ajm ; 2 uses
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 4
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !20
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !20
  %indvars.iv.next.i.i786.prol = add nuw nsw i64 %indvars.iv.i.i785.prol, 1 ; 2 uses
  %prol.iter1695.next = add i64 %prol.iter1695, 1 ; 2 uses
  %prol.iter1695.cmp.not = icmp eq i64 %prol.iter1695.next, %xtraiter1693
  br i1 %prol.iter1695.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !152

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i785.unr = phi i64 [ %indvars.iv.i.i785.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i786.prol, %.lr.ph.i.i.prol ]
  %i.ajq = sub nsw i64 %indvars.iv.i.i785.ph, %wide.trip.count.i.i
  %i.ajr = icmp ugt i64 %i.ajq, -8
  br i1 %i.ajr, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block1297, %middle.block1282
  %i.ajs = and i32 %.05.lcssa.i769816, 1
  %.not.i.i = icmp eq i32 %i.ajs, 0
  br i1 %.not.i.i, label %.lr.ph64.i.i.preheader, label %.lr.ph62.i.i.preheader

.lr.ph62.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %xtraiter1696 = and i64 %i.aiu, 7               ; 3 uses
  %i.ajt = add i32 %.pre-phi, -2
  %i.aju = icmp ult i32 %i.ajt, 7
  br i1 %i.aju, label %.lr.ph62.i.i.epil.preheader, label %.lr.ph62.i.i.preheader.new

.lr.ph62.i.i.preheader.new:                       ; preds = %.lr.ph62.i.i.preheader
  %unroll_iter1700 = and i64 %i.aiu, -8
  br label %.lr.ph62.i.i

.lr.ph64.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %xtraiter1702 = and i64 %i.aiu, 7               ; 3 uses
  %i.ajv = add i32 %.pre-phi, -2
  %i.ajw = icmp ult i32 %i.ajv, 7
  br i1 %i.ajw, label %.lr.ph64.i.i.epil.preheader, label %.lr.ph64.i.i.preheader.new

.lr.ph64.i.i.preheader.new:                       ; preds = %.lr.ph64.i.i.preheader
  %unroll_iter1706 = and i64 %i.aiu, -8
  br label %.lr.ph64.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i785 = phi i64 [ %indvars.iv.next.i.i786.7, %.lr.ph.i.i ], [ %indvars.iv.i.i785.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ajx = mul nsw i64 %indvars.iv.i.i785, %i.ait
  %i.ajy = getelementptr [4 x i8], ptr %i.aie, i64 %i.ajx ; 2 uses
  %i.ajz = getelementptr i8, ptr %i.ajy, i64 4
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !20
  store float %i.aka, ptr %i.ajy, align 4, !tbaa !20
  %indvars.iv.next.i.i786 = add nuw nsw i64 %indvars.iv.i.i785, 1
  %i.akb = mul nsw i64 %indvars.iv.next.i.i786, %i.ait
  %i.akc = getelementptr [4 x i8], ptr %i.aie, i64 %i.akb ; 2 uses
  %i.akd = getelementptr i8, ptr %i.akc, i64 4
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !20
  store float %i.ake, ptr %i.akc, align 4, !tbaa !20
  %indvars.iv.next.i.i786.1 = add nuw nsw i64 %indvars.iv.i.i785, 2
  %i.akf = mul nsw i64 %indvars.iv.next.i.i786.1, %i.ait
  %i.akg = getelementptr [4 x i8], ptr %i.aie, i64 %i.akf ; 2 uses
  %i.akh = getelementptr i8, ptr %i.akg, i64 4
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !20
  store float %i.aki, ptr %i.akg, align 4, !tbaa !20
  %indvars.iv.next.i.i786.2 = add nuw nsw i64 %indvars.iv.i.i785, 3
  %i.akj = mul nsw i64 %indvars.iv.next.i.i786.2, %i.ait
  %i.akk = getelementptr [4 x i8], ptr %i.aie, i64 %i.akj ; 2 uses
  %i.akl = getelementptr i8, ptr %i.akk, i64 4
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !20
  store float %i.akm, ptr %i.akk, align 4, !tbaa !20
  %indvars.iv.next.i.i786.3 = add nuw nsw i64 %indvars.iv.i.i785, 4
  %i.akn = mul nsw i64 %indvars.iv.next.i.i786.3, %i.ait
  %i.ako = getelementptr [4 x i8], ptr %i.aie, i64 %i.akn ; 2 uses
  %i.akp = getelementptr i8, ptr %i.ako, i64 4
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !20
  store float %i.akq, ptr %i.ako, align 4, !tbaa !20
  %indvars.iv.next.i.i786.4 = add nuw nsw i64 %indvars.iv.i.i785, 5
  %i.akr = mul nsw i64 %indvars.iv.next.i.i786.4, %i.ait
  %i.aks = getelementptr [4 x i8], ptr %i.aie, i64 %i.akr ; 2 uses
  %i.akt = getelementptr i8, ptr %i.aks, i64 4
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !20
  store float %i.aku, ptr %i.aks, align 4, !tbaa !20
  %indvars.iv.next.i.i786.5 = add nuw nsw i64 %indvars.iv.i.i785, 6
  %i.akv = mul nsw i64 %indvars.iv.next.i.i786.5, %i.ait
  %i.akw = getelementptr [4 x i8], ptr %i.aie, i64 %i.akv ; 2 uses
  %i.akx = getelementptr i8, ptr %i.akw, i64 4
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !20
  store float %i.aky, ptr %i.akw, align 4, !tbaa !20
  %indvars.iv.next.i.i786.6 = add nuw nsw i64 %indvars.iv.i.i785, 7
  %i.akz = mul nsw i64 %indvars.iv.next.i.i786.6, %i.ait
  %i.ala = getelementptr [4 x i8], ptr %i.aie, i64 %i.akz ; 2 uses
  %i.alb = getelementptr i8, ptr %i.ala, i64 4
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !20
  store float %i.alc, ptr %i.ala, align 4, !tbaa !20
  %indvars.iv.next.i.i786.7 = add nuw nsw i64 %indvars.iv.i.i785, 8 ; 2 uses
  %exitcond.not.i.i787.7 = icmp eq i64 %indvars.iv.next.i.i786.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i787.7, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !153

.lr.ph62.i.i:                                     ; preds = %.lr.ph62.i.i, %.lr.ph62.i.i.preheader.new
  %indvars.iv67.i.i = phi i64 [ 1, %.lr.ph62.i.i.preheader.new ], [ %indvars.iv.next68.i.i.7, %.lr.ph62.i.i ] ; 8 uses
  %niter1701 = phi i64 [ 0, %.lr.ph62.i.i.preheader.new ], [ %niter1701.next.7, %.lr.ph62.i.i ]
  %i.ald = trunc i64 %indvars.iv67.i.i to i32
  %i.ale = add i32 %i.ald, 1
  %i.alf = mul i32 %.05.lcssa.i769816, %i.ale
  %i.alg = sext i32 %i.alf to i64
  %i.alh = getelementptr [4 x i8], ptr %i.aie, i64 %i.alg ; 2 uses
  %i.ali = getelementptr i8, ptr %i.alh, i64 -8
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !20
  %i.alk = getelementptr i8, ptr %i.alh, i64 -4
  store float %i.alj, ptr %i.alk, align 4, !tbaa !20
  %i.all = trunc i64 %indvars.iv67.i.i to i32
  %i.alm = add i32 %i.all, 2
  %i.aln = mul i32 %.05.lcssa.i769816, %i.alm
  %i.alo = sext i32 %i.aln to i64
  %i.alp = getelementptr [4 x i8], ptr %i.aie, i64 %i.alo ; 2 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -8
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !20
  %i.als = getelementptr i8, ptr %i.alp, i64 -4
  store float %i.alr, ptr %i.als, align 4, !tbaa !20
  %i.alt = trunc i64 %indvars.iv67.i.i to i32
  %i.alu = add i32 %i.alt, 3
  %i.alv = mul i32 %.05.lcssa.i769816, %i.alu
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr [4 x i8], ptr %i.aie, i64 %i.alw ; 2 uses
  %i.aly = getelementptr i8, ptr %i.alx, i64 -8
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !20
  %i.ama = getelementptr i8, ptr %i.alx, i64 -4
  store float %i.alz, ptr %i.ama, align 4, !tbaa !20
  %i.amb = trunc i64 %indvars.iv67.i.i to i32
  %i.amc = add i32 %i.amb, 4
  %i.amd = mul i32 %.05.lcssa.i769816, %i.amc
  %i.ame = sext i32 %i.amd to i64
  %i.amf = getelementptr [4 x i8], ptr %i.aie, i64 %i.ame ; 2 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 -8
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !20
  %i.ami = getelementptr i8, ptr %i.amf, i64 -4
  store float %i.amh, ptr %i.ami, align 4, !tbaa !20
  %i.amj = trunc i64 %indvars.iv67.i.i to i32
  %i.amk = add i32 %i.amj, 5
  %i.aml = mul i32 %.05.lcssa.i769816, %i.amk
  %i.amm = sext i32 %i.aml to i64
  %i.amn = getelementptr [4 x i8], ptr %i.aie, i64 %i.amm ; 2 uses
  %i.amo = getelementptr i8, ptr %i.amn, i64 -8
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !20
  %i.amq = getelementptr i8, ptr %i.amn, i64 -4
  store float %i.amp, ptr %i.amq, align 4, !tbaa !20
  %i.amr = trunc i64 %indvars.iv67.i.i to i32
  %i.ams = add i32 %i.amr, 6
  %i.amt = mul i32 %.05.lcssa.i769816, %i.ams
  %i.amu = sext i32 %i.amt to i64
  %i.amv = getelementptr [4 x i8], ptr %i.aie, i64 %i.amu ; 2 uses
  %i.amw = getelementptr i8, ptr %i.amv, i64 -8
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !20
  %i.amy = getelementptr i8, ptr %i.amv, i64 -4
  store float %i.amx, ptr %i.amy, align 4, !tbaa !20
  %i.amz = trunc i64 %indvars.iv67.i.i to i32
  %i.ana = add i32 %i.amz, 7
  %i.anb = mul i32 %.05.lcssa.i769816, %i.ana
  %i.anc = sext i32 %i.anb to i64
  %i.and = getelementptr [4 x i8], ptr %i.aie, i64 %i.anc ; 2 uses
  %i.ane = getelementptr i8, ptr %i.and, i64 -8
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !20
  %i.ang = getelementptr i8, ptr %i.and, i64 -4
  store float %i.anf, ptr %i.ang, align 4, !tbaa !20
  %indvars.iv.next68.i.i.7 = add nuw nsw i64 %indvars.iv67.i.i, 8 ; 3 uses
  %i.anh = trunc nuw nsw i64 %indvars.iv.next68.i.i.7 to i32
  %i.ani = mul i32 %.05.lcssa.i769816, %i.anh
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr [4 x i8], ptr %i.aie, i64 %i.anj ; 2 uses
  %i.anl = getelementptr i8, ptr %i.ank, i64 -8
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !20
  %i.ann = getelementptr i8, ptr %i.ank, i64 -4
  store float %i.anm, ptr %i.ann, align 4, !tbaa !20
  %niter1701.next.7 = add i64 %niter1701, 8       ; 2 uses
  %niter1701.ncmp.7 = icmp eq i64 %niter1701.next.7, %unroll_iter1700
  br i1 %niter1701.ncmp.7, label %.loopexit.i.i.loopexit1400.unr-lcssa, label %.lr.ph62.i.i

.lr.ph64.i.i:                                     ; preds = %.lr.ph64.i.i, %.lr.ph64.i.i.preheader.new
  %indvars.iv72.i.i = phi i64 [ 1, %.lr.ph64.i.i.preheader.new ], [ %indvars.iv.next73.i.i.7, %.lr.ph64.i.i ] ; 8 uses
  %niter1707 = phi i64 [ 0, %.lr.ph64.i.i.preheader.new ], [ %niter1707.next.7, %.lr.ph64.i.i ]
  %i.ano = trunc i64 %indvars.iv72.i.i to i32
  %i.anp = add i32 %i.ano, 1
  %i.anq = mul i32 %.05.lcssa.i769816, %i.anp
  %i.anr = sext i32 %i.anq to i64
  %i.ans = getelementptr [4 x i8], ptr %i.aie, i64 %i.anr ; 3 uses
  %i.ant = getelementptr i8, ptr %i.ans, i64 -12
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !20 ; 2 uses
  %i.anv = getelementptr i8, ptr %i.ans, i64 -8
  store float %i.anu, ptr %i.anv, align 4, !tbaa !20
  %i.anw = getelementptr i8, ptr %i.ans, i64 -4
  store float %i.anu, ptr %i.anw, align 4, !tbaa !20
  %i.anx = trunc i64 %indvars.iv72.i.i to i32
  %i.any = add i32 %i.anx, 2
  %i.anz = mul i32 %.05.lcssa.i769816, %i.any
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = getelementptr [4 x i8], ptr %i.aie, i64 %i.aoa ; 3 uses
  %i.aoc = getelementptr i8, ptr %i.aob, i64 -12
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !20 ; 2 uses
  %i.aoe = getelementptr i8, ptr %i.aob, i64 -8
  store float %i.aod, ptr %i.aoe, align 4, !tbaa !20
  %i.aof = getelementptr i8, ptr %i.aob, i64 -4
  store float %i.aod, ptr %i.aof, align 4, !tbaa !20
  %i.aog = trunc i64 %indvars.iv72.i.i to i32
  %i.aoh = add i32 %i.aog, 3
  %i.aoi = mul i32 %.05.lcssa.i769816, %i.aoh
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = getelementptr [4 x i8], ptr %i.aie, i64 %i.aoj ; 3 uses
  %i.aol = getelementptr i8, ptr %i.aok, i64 -12
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !20 ; 2 uses
  %i.aon = getelementptr i8, ptr %i.aok, i64 -8
  store float %i.aom, ptr %i.aon, align 4, !tbaa !20
  %i.aoo = getelementptr i8, ptr %i.aok, i64 -4
  store float %i.aom, ptr %i.aoo, align 4, !tbaa !20
  %i.aop = trunc i64 %indvars.iv72.i.i to i32
  %i.aoq = add i32 %i.aop, 4
  %i.aor = mul i32 %.05.lcssa.i769816, %i.aoq
  %i.aos = sext i32 %i.aor to i64
  %i.aot = getelementptr [4 x i8], ptr %i.aie, i64 %i.aos ; 3 uses
  %i.aou = getelementptr i8, ptr %i.aot, i64 -12
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !20 ; 2 uses
  %i.aow = getelementptr i8, ptr %i.aot, i64 -8
  store float %i.aov, ptr %i.aow, align 4, !tbaa !20
  %i.aox = getelementptr i8, ptr %i.aot, i64 -4
  store float %i.aov, ptr %i.aox, align 4, !tbaa !20
  %i.aoy = trunc i64 %indvars.iv72.i.i to i32
  %i.aoz = add i32 %i.aoy, 5
  %i.apa = mul i32 %.05.lcssa.i769816, %i.aoz
  %i.apb = sext i32 %i.apa to i64
  %i.apc = getelementptr [4 x i8], ptr %i.aie, i64 %i.apb ; 3 uses
  %i.apd = getelementptr i8, ptr %i.apc, i64 -12
  %i.ape = load float, ptr %i.apd, align 4, !tbaa !20 ; 2 uses
  %i.apf = getelementptr i8, ptr %i.apc, i64 -8
  store float %i.ape, ptr %i.apf, align 4, !tbaa !20
  %i.apg = getelementptr i8, ptr %i.apc, i64 -4
  store float %i.ape, ptr %i.apg, align 4, !tbaa !20
  %i.aph = trunc i64 %indvars.iv72.i.i to i32
  %i.api = add i32 %i.aph, 6
  %i.apj = mul i32 %.05.lcssa.i769816, %i.api
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr [4 x i8], ptr %i.aie, i64 %i.apk ; 3 uses
  %i.apm = getelementptr i8, ptr %i.apl, i64 -12
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !20 ; 2 uses
  %i.apo = getelementptr i8, ptr %i.apl, i64 -8
end_hunk_0
