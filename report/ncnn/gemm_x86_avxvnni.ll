Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avxvnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %i.bb = bitcast <8 x i32> %i.ba to <32 x i8>
  %i.bc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ax, <32 x i8> splat (i8 127), <32 x i8> %i.bb)
  store <8 x i32> %i.ba, ptr %i.ay, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.1214269.i, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %.0226268.i, i64 12
  %i.bf = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.be, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1) ; 2 uses
  %i.bg = bitcast <8 x i32> %i.bf to <32 x i8>
  %i.bh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bc, <32 x i8> splat (i8 127), <32 x i8> %i.bg) ; 3 uses
  store <8 x i32> %i.bf, ptr %i.bd, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.1214269.i, i64 128 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0226268.i, i64 16 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %.lr.ph.i, !llvm.loop !33

.unr-lcssa:                                       ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.1214269.i, i64 96
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.unr-lcssa, %.lr.ph.i.preheader
  %.1214269.i.epil.init = phi ptr [ %.0213288.i, %.lr.ph.i.preheader ], [ %i.bi, %.unr-lcssa ]
  %.0226268.i.epil.init = phi ptr [ %i.al, %.lr.ph.i.preheader ], [ %i.bj, %.unr-lcssa ]
  %.epil.init = phi <8 x i32> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.bh, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod393)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.1214269.i.epil = phi ptr [ %i.bp, %.lr.ph.i.epil ], [ %.1214269.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.0226268.i.epil = phi ptr [ %i.bq, %.lr.ph.i.epil ], [ %.0226268.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.bl = phi <8 x i32> [ %i.bo, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bm = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0226268.i.epil, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1) ; 2 uses
  %i.bn = bitcast <8 x i32> %i.bm to <32 x i8>
  %i.bo = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bl, <32 x i8> splat (i8 127), <32 x i8> %i.bn) ; 2 uses
  store <8 x i32> %i.bm, ptr %.1214269.i.epil, align 1, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.1214269.i.epil, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0226268.i.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i.epil, !llvm.loop !34

.epilog-lcssa:                                    ; preds = %.lr.ph.i.epil, %.unr-lcssa
  %.1214269.i.lcssa = phi ptr [ %i.bk, %.unr-lcssa ], [ %.1214269.i.epil, %.lr.ph.i.epil ]
  %.lcssa384 = phi <8 x i32> [ %i.bh, %.unr-lcssa ], [ %i.bo, %.lr.ph.i.epil ]
  %.lcssa383 = phi ptr [ %i.bi, %.unr-lcssa ], [ %i.bp, %.lr.ph.i.epil ]
  %.lcssa382 = phi ptr [ %i.bj, %.unr-lcssa ], [ %i.bq, %.lr.ph.i.epil ]
  store <8 x i32> %.lcssa384, ptr %.lcssa383, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.1214269.i.lcssa, i64 64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epilog-lcssa, %bb.d
  %.0226.lcssa441.i = phi ptr [ %.lcssa382, %.epilog-lcssa ], [ %i.al, %bb.d ] ; 2 uses
  %.0229.lcssa439.i = phi i32 [ %i.h, %.epilog-lcssa ], [ 0, %bb.d ] ; 3 uses
  %.2215.i = phi ptr [ %i.br, %.epilog-lcssa ], [ %.0213288.i, %bb.d ] ; 2 uses
  %i.bs = or disjoint i32 %.0229.lcssa439.i, 1
  %i.bt = icmp slt i32 %i.bs, %5
  br i1 %i.bt, label %.lr.ph277.i, label %.preheader265.i

.preheader265.i:                                  ; preds = %.lr.ph277.i, %._crit_edge.i
  %.1230.lcssa.i = phi i32 [ %.0229.lcssa439.i, %._crit_edge.i ], [ %i.cp, %.lr.ph277.i ] ; 5 uses
  %.1227.lcssa.i = phi ptr [ %.0226.lcssa441.i, %._crit_edge.i ], [ %i.co, %.lr.ph277.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.2215.i, %._crit_edge.i ], [ %i.cn, %.lr.ph277.i ] ; 3 uses
  %i.bu = icmp slt i32 %.1230.lcssa.i, %5
  br i1 %i.bu, label %.lr.ph284.i.preheader, label %._crit_edge285.i

.lr.ph284.i.preheader:                            ; preds = %.preheader265.i
  %i.bv = sub i32 %5, %.1230.lcssa.i
  %xtraiter394 = and i32 %i.bv, 3                 ; 2 uses
  %lcmp.mod395.not = icmp eq i32 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %.lr.ph284.i.prol.loopexit, label %.lr.ph284.i.prol

.lr.ph284.i.prol:                                 ; preds = %.lr.ph284.i.preheader, %.lr.ph284.i.prol
  %.4283.i.prol = phi ptr [ %i.cd, %.lr.ph284.i.prol ], [ %.3.lcssa.i, %.lr.ph284.i.preheader ] ; 2 uses
  %.2228282.i.prol = phi ptr [ %i.ce, %.lr.ph284.i.prol ], [ %.1227.lcssa.i, %.lr.ph284.i.preheader ] ; 2 uses
  %.2231281.i.prol = phi i32 [ %i.cf, %.lr.ph284.i.prol ], [ %.1230.lcssa.i, %.lr.ph284.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph284.i.prol ], [ 0, %.lr.ph284.i.preheader ]
  %i.bw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.2228282.i.prol, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bx = bitcast <8 x i32> %i.bw to <32 x i8>
  %i.by = shufflevector <32 x i8> %i.bx, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = bitcast <32 x i8> %i.by to <8 x i32>
  %i.ca = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cb = bitcast <4 x i32> %i.ca to <2 x i64>
  %i.cc = extractelement <2 x i64> %i.cb, i64 0
  store i64 %i.cc, ptr %.4283.i.prol, align 1, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.4283.i.prol, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.2228282.i.prol, i64 1 ; 2 uses
  %i.cf = add nuw nsw i32 %.2231281.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter394
  br i1 %prol.iter.cmp.not, label %.lr.ph284.i.prol.loopexit, label %.lr.ph284.i.prol, !llvm.loop !35

.lr.ph284.i.prol.loopexit:                        ; preds = %.lr.ph284.i.prol, %.lr.ph284.i.preheader
  %.lcssa388.unr = phi ptr [ poison, %.lr.ph284.i.preheader ], [ %i.cd, %.lr.ph284.i.prol ]
  %.4283.i.unr = phi ptr [ %.3.lcssa.i, %.lr.ph284.i.preheader ], [ %i.cd, %.lr.ph284.i.prol ]
  %.2228282.i.unr = phi ptr [ %.1227.lcssa.i, %.lr.ph284.i.preheader ], [ %i.ce, %.lr.ph284.i.prol ]
  %.2231281.i.unr = phi i32 [ %.1230.lcssa.i, %.lr.ph284.i.preheader ], [ %i.cf, %.lr.ph284.i.prol ]
  %i.cg = sub i32 %.1230.lcssa.i, %5
  %i.ch = icmp ugt i32 %i.cg, -4
  br i1 %i.ch, label %._crit_edge285.i, label %.lr.ph284.i

.lr.ph277.i:                                      ; preds = %._crit_edge.i, %.lr.ph277.i
  %.3275.i = phi ptr [ %i.cn, %.lr.ph277.i ], [ %.2215.i, %._crit_edge.i ] ; 2 uses
  %.1227274.i = phi ptr [ %i.co, %.lr.ph277.i ], [ %.0226.lcssa441.i, %._crit_edge.i ] ; 2 uses
  %.1230273.i = phi i32 [ %i.cp, %.lr.ph277.i ], [ %.0229.lcssa439.i, %._crit_edge.i ]
  %i.ci = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1227274.i, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.cj = bitcast <8 x i32> %i.ci to <32 x i8>
  %i.ck = shufflevector <32 x i8> %i.cj, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cl = bitcast <32 x i8> %i.ck to <4 x i64>
  %i.cm = shufflevector <4 x i64> %i.cl, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.cm, ptr %.3275.i, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %.3275.i, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1227274.i, i64 2 ; 2 uses
  %i.cp = add nuw nsw i32 %.1230273.i, 2          ; 3 uses
  %i.cq = or disjoint i32 %i.cp, 1
  %i.cr = icmp slt i32 %i.cq, %5
  br i1 %i.cr, label %.lr.ph277.i, label %.preheader265.i, !llvm.loop !36

.lr.ph284.i:                                      ; preds = %.lr.ph284.i.prol.loopexit, %.lr.ph284.i
  %.4283.i = phi ptr [ %i.ea, %.lr.ph284.i ], [ %.4283.i.unr, %.lr.ph284.i.prol.loopexit ] ; 5 uses
  %.2228282.i = phi ptr [ %i.eb, %.lr.ph284.i ], [ %.2228282.i.unr, %.lr.ph284.i.prol.loopexit ] ; 5 uses
  %.2231281.i = phi i32 [ %i.ec, %.lr.ph284.i ], [ %.2231281.i.unr, %.lr.ph284.i.prol.loopexit ]
  %i.cs = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.2228282.i, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.ct = bitcast <8 x i32> %i.cs to <32 x i8>
  %i.cu = shufflevector <32 x i8> %i.ct, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cv = bitcast <32 x i8> %i.cu to <8 x i32>
  %i.cw = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = extractelement <2 x i64> %i.cx, i64 0
  store i64 %i.cy, ptr %.4283.i, align 1, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %.4283.i, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.2228282.i, i64 1
  %i.db = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.da, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.dc = bitcast <8 x i32> %i.db to <32 x i8>
  %i.dd = shufflevector <32 x i8> %i.dc, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = bitcast <32 x i8> %i.dd to <8 x i32>
  %i.df = shufflevector <8 x i32> %i.de, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dg = bitcast <4 x i32> %i.df to <2 x i64>
  %i.dh = extractelement <2 x i64> %i.dg, i64 0
  store i64 %i.dh, ptr %i.cz, align 1, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %.4283.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.2228282.i, i64 2
  %i.dk = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.dj, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.dl = bitcast <8 x i32> %i.dk to <32 x i8>
  %i.dm = shufflevector <32 x i8> %i.dl, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = bitcast <32 x i8> %i.dm to <8 x i32>
  %i.do = shufflevector <8 x i32> %i.dn, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dp = bitcast <4 x i32> %i.do to <2 x i64>
  %i.dq = extractelement <2 x i64> %i.dp, i64 0
  store i64 %i.dq, ptr %i.di, align 1, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %.4283.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.2228282.i, i64 3
  %i.dt = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.ds, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.du = bitcast <8 x i32> %i.dt to <32 x i8>
  %i.dv = shufflevector <32 x i8> %i.du, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = bitcast <32 x i8> %i.dv to <8 x i32>
  %i.dx = shufflevector <8 x i32> %i.dw, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dy = bitcast <4 x i32> %i.dx to <2 x i64>
  %i.dz = extractelement <2 x i64> %i.dy, i64 0
  store i64 %i.dz, ptr %i.dr, align 1, !tbaa !17
  %i.ea = getelementptr inbounds nuw i8, ptr %.4283.i, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2228282.i, i64 4
  %i.ec = add nuw nsw i32 %.2231281.i, 4          ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.ec, %5
  br i1 %exitcond.not.i.3, label %._crit_edge285.i, label %.lr.ph284.i, !llvm.loop !37

._crit_edge285.i:                                 ; preds = %.lr.ph284.i.prol.loopexit, %.lr.ph284.i, %.preheader265.i
  %.4.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader265.i ], [ %.lcssa388.unr, %.lr.ph284.i.prol.loopexit ], [ %i.ea, %.lr.ph284.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.ed = or disjoint i64 %indvars.iv.next.i, 7
  %i.ee = icmp samesign ult i64 %i.ed, %i.i
  br i1 %i.ee, label %bb.d, label %.preheader264.loopexit.i, !llvm.loop !38

.preheader262.loopexit.i:                         ; preds = %._crit_edge315.i
  %i.ef = trunc nuw nsw i64 %indvars.iv.next418.i to i32
  br label %.preheader262.i

.preheader262.i:                                  ; preds = %.preheader262.loopexit.i, %.preheader264.i
  %.1217.lcssa.i = phi i32 [ %.0216.lcssa.i, %.preheader264.i ], [ %i.ef, %.preheader262.loopexit.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.0213.lcssa.i, %.preheader264.i ], [ %.9.lcssa.i, %.preheader262.loopexit.i ] ; 2 uses
  %i.eg = or disjoint i32 %.1217.lcssa.i, 1
  %i.eh = icmp slt i32 %i.eg, %3
  br i1 %i.eh, label %.lr.ph356.i, label %.preheader.i

.lr.ph356.i:                                      ; preds = %.preheader262.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = sext i32 %4 to i64                      ; 3 uses
  %i.el = icmp sgt i32 %5, 3
  %i.em = and i32 %5, -4
  %i.en = zext i32 %.1217.lcssa.i to i64
  %i.eo = sext i32 %3 to i64
  %i.ep = sext i32 %2 to i64
  %invariant.op506.i = add nsw i64 %i.eo, -1
  %i.eq = add i32 %5, -2
  %i.er = add i32 %5, -2
  %i.es = add i32 %5, -4
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 1
  %i.ev = and i64 %i.eu, 8589934584
  %i.ew = and i64 %i.et, 4294967292
  %i.ex = add nsw i32 %5, -4
  %i.ey = lshr i32 %i.ex, 2
  %narrow = add nuw nsw i32 %i.ey, 1
  %i.ez = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check220 = icmp slt i32 %5, 32
  %n.vec222 = and i64 %i.ez, 2147483640           ; 5 uses
  %i.fa = trunc nuw nsw i64 %n.vec222 to i32
  %i.fb = shl nuw nsw i32 %i.fa, 2
  %i.fc = shl nuw nsw i64 %n.vec222, 2            ; 2 uses
  %i.fd = shl nuw nsw i64 %n.vec222, 3
  %cmp.n242 = icmp eq i64 %n.vec222, %i.ez
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge315.i, %.lr.ph319.i
  %indvars.iv417.i = phi i64 [ %i.w, %.lr.ph319.i ], [ %indvars.iv.next418.i, %._crit_edge315.i ] ; 2 uses
  %.5318.i = phi ptr [ %.0213.lcssa.i, %.lr.ph319.i ], [ %.9.lcssa.i, %._crit_edge315.i ] ; 3 uses
  %i.fe = add nsw i64 %indvars.iv417.i, %i.y
  %i.ff = load ptr, ptr %0, align 8, !tbaa !14
  %i.fg = load i32, ptr %i.r, align 4, !tbaa !15  ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul nsw i64 %i.fe, %i.fh
  %i.fj = load i64, ptr %i.s, align 8, !tbaa !16
  %i.fk = mul i64 %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.t ; 3 uses
  %i.fn = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %i.fo = shufflevector <4 x i32> %i.fn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fp = mul <4 x i32> %i.fo, <i32 0, i32 1, i32 2, i32 3> ; 11 uses
  br i1 %i.u, label %.lr.ph297.i.preheader, label %._crit_edge298.i

.lr.ph297.i.preheader:                            ; preds = %bb.e
  br i1 %i.ac, label %.lr.ph297.i.epil.preheader, label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %.lr.ph297.i.preheader, %.lr.ph297.i
  %.6295.i = phi ptr [ %i.gj, %.lr.ph297.i ], [ %.5318.i, %.lr.ph297.i.preheader ] ; 6 uses
  %.0223293.i = phi ptr [ %i.gk, %.lr.ph297.i ], [ %i.fm, %.lr.ph297.i.preheader ] ; 5 uses
  %i.fq = phi <4 x i32> [ %i.gi, %.lr.ph297.i ], [ zeroinitializer, %.lr.ph297.i.preheader ]
  %niter409 = phi i32 [ %niter409.next.3, %.lr.ph297.i ], [ 0, %.lr.ph297.i.preheader ]
  %i.fr = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0223293.i, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1) ; 2 uses
  %i.fs = bitcast <4 x i32> %i.fr to <16 x i8>
  %i.ft = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.fq, <16 x i8> splat (i8 127), <16 x i8> %i.fs)
  store <4 x i32> %i.fr, ptr %.6295.i, align 1, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %.6295.i, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0223293.i, i64 4
  %i.fw = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.fv, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1) ; 2 uses
  %i.fx = bitcast <4 x i32> %i.fw to <16 x i8>
  %i.fy = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ft, <16 x i8> splat (i8 127), <16 x i8> %i.fx)
  store <4 x i32> %i.fw, ptr %i.fu, align 1, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %.6295.i, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %.0223293.i, i64 8
  %i.gb = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ga, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1) ; 2 uses
  %i.gc = bitcast <4 x i32> %i.gb to <16 x i8>
  %i.gd = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.fy, <16 x i8> splat (i8 127), <16 x i8> %i.gc)
  store <4 x i32> %i.gb, ptr %i.fz, align 1, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %.6295.i, i64 48
  %i.gf = getelementptr inbounds nuw i8, ptr %.0223293.i, i64 12
  %i.gg = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gf, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1) ; 2 uses
  %i.gh = bitcast <4 x i32> %i.gg to <16 x i8>
  %i.gi = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.gd, <16 x i8> splat (i8 127), <16 x i8> %i.gh) ; 3 uses
  store <4 x i32> %i.gg, ptr %i.ge, align 1, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %.6295.i, i64 64 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0223293.i, i64 16 ; 3 uses
  %niter409.next.3 = add nuw nsw i32 %niter409, 4 ; 2 uses
  %niter409.ncmp.3.not = icmp eq i32 %niter409.next.3, %unroll_iter408
  br i1 %niter409.ncmp.3.not, label %.unr-lcssa396, label %.lr.ph297.i, !llvm.loop !39

.unr-lcssa396:                                    ; preds = %.lr.ph297.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.6295.i, i64 48
  br i1 %lcmp.mod401.not, label %.epilog-lcssa402, label %.lr.ph297.i.epil.preheader

.lr.ph297.i.epil.preheader:                       ; preds = %.unr-lcssa396, %.lr.ph297.i.preheader
  %.6295.i.epil.init = phi ptr [ %.5318.i, %.lr.ph297.i.preheader ], [ %i.gj, %.unr-lcssa396 ]
  %.0223293.i.epil.init = phi ptr [ %i.fm, %.lr.ph297.i.preheader ], [ %i.gk, %.unr-lcssa396 ]
  %.epil.init400 = phi <4 x i32> [ zeroinitializer, %.lr.ph297.i.preheader ], [ %i.gi, %.unr-lcssa396 ]
  tail call void @llvm.assume(i1 %lcmp.mod407)
  br label %.lr.ph297.i.epil

.lr.ph297.i.epil:                                 ; preds = %.lr.ph297.i.epil, %.lr.ph297.i.epil.preheader
  %.6295.i.epil = phi ptr [ %i.gq, %.lr.ph297.i.epil ], [ %.6295.i.epil.init, %.lr.ph297.i.epil.preheader ] ; 3 uses
  %.0223293.i.epil = phi ptr [ %i.gr, %.lr.ph297.i.epil ], [ %.0223293.i.epil.init, %.lr.ph297.i.epil.preheader ] ; 2 uses
  %i.gm = phi <4 x i32> [ %i.gp, %.lr.ph297.i.epil ], [ %.epil.init400, %.lr.ph297.i.epil.preheader ]
  %epil.iter398 = phi i32 [ %epil.iter398.next, %.lr.ph297.i.epil ], [ 0, %.lr.ph297.i.epil.preheader ]
  %i.gn = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0223293.i.epil, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1) ; 2 uses
  %i.go = bitcast <4 x i32> %i.gn to <16 x i8>
  %i.gp = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.gm, <16 x i8> splat (i8 127), <16 x i8> %i.go) ; 2 uses
  store <4 x i32> %i.gn, ptr %.6295.i.epil, align 1, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %.6295.i.epil, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0223293.i.epil, i64 4 ; 2 uses
  %epil.iter398.next = add i32 %epil.iter398, 1   ; 2 uses
  %epil.iter398.cmp.not = icmp eq i32 %epil.iter398.next, %xtraiter397
  br i1 %epil.iter398.cmp.not, label %.epilog-lcssa402, label %.lr.ph297.i.epil, !llvm.loop !40

.epilog-lcssa402:                                 ; preds = %.lr.ph297.i.epil, %.unr-lcssa396
  %.6295.i.lcssa = phi ptr [ %i.gl, %.unr-lcssa396 ], [ %.6295.i.epil, %.lr.ph297.i.epil ]
  %.lcssa377 = phi <4 x i32> [ %i.gi, %.unr-lcssa396 ], [ %i.gp, %.lr.ph297.i.epil ]
  %.lcssa376 = phi ptr [ %i.gj, %.unr-lcssa396 ], [ %i.gq, %.lr.ph297.i.epil ]
  %.lcssa375 = phi ptr [ %i.gk, %.unr-lcssa396 ], [ %i.gr, %.lr.ph297.i.epil ]
  store <4 x i32> %.lcssa377, ptr %.lcssa376, align 1, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %.6295.i.lcssa, i64 32
  br label %._crit_edge298.i

._crit_edge298.i:                                 ; preds = %.epilog-lcssa402, %bb.e
  %.0220.lcssa451.i = phi i32 [ %i.v, %.epilog-lcssa402 ], [ 0, %bb.e ] ; 3 uses
  %.0223.lcssa449.i = phi ptr [ %.lcssa375, %.epilog-lcssa402 ], [ %i.fm, %bb.e ] ; 2 uses
  %.7.i = phi ptr [ %i.gs, %.epilog-lcssa402 ], [ %.5318.i, %bb.e ] ; 2 uses
  %i.gt = or disjoint i32 %.0220.lcssa451.i, 1
  %i.gu = icmp slt i32 %i.gt, %5
  br i1 %i.gu, label %.lr.ph307.i, label %.preheader263.i

.preheader263.i:                                  ; preds = %.lr.ph307.i, %._crit_edge298.i
  %.1224.lcssa.i = phi ptr [ %.0223.lcssa449.i, %._crit_edge298.i ], [ %i.hn, %.lr.ph307.i ] ; 2 uses
  %.1221.lcssa.i = phi i32 [ %.0220.lcssa451.i, %._crit_edge298.i ], [ %i.ho, %.lr.ph307.i ] ; 5 uses
  %.8.lcssa.i = phi ptr [ %.7.i, %._crit_edge298.i ], [ %i.hm, %.lr.ph307.i ] ; 3 uses
  %i.gv = icmp slt i32 %.1221.lcssa.i, %5
  br i1 %i.gv, label %.lr.ph314.i.preheader, label %._crit_edge315.i

.lr.ph314.i.preheader:                            ; preds = %.preheader263.i
  %i.gw = sub i32 %5, %.1221.lcssa.i
  %xtraiter410 = and i32 %i.gw, 3                 ; 2 uses
  %lcmp.mod411.not = icmp eq i32 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.lr.ph314.i.prol.loopexit, label %.lr.ph314.i.prol

.lr.ph314.i.prol:                                 ; preds = %.lr.ph314.i.preheader, %.lr.ph314.i.prol
  %.9313.i.prol = phi ptr [ %i.hc, %.lr.ph314.i.prol ], [ %.8.lcssa.i, %.lr.ph314.i.preheader ] ; 2 uses
  %.2222312.i.prol = phi i32 [ %i.he, %.lr.ph314.i.prol ], [ %.1221.lcssa.i, %.lr.ph314.i.preheader ]
  %.2225311.i.prol = phi ptr [ %i.hd, %.lr.ph314.i.prol ], [ %.1224.lcssa.i, %.lr.ph314.i.preheader ] ; 2 uses
  %prol.iter412 = phi i32 [ %prol.iter412.next, %.lr.ph314.i.prol ], [ 0, %.lr.ph314.i.preheader ]
  %i.gx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.2225311.i.prol, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1)
  %i.gy = bitcast <4 x i32> %i.gx to <16 x i8>
  %i.gz = shufflevector <16 x i8> %i.gy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ha = bitcast <16 x i8> %i.gz to <4 x float>
  %i.hb = extractelement <4 x float> %i.ha, i64 0
  store float %i.hb, ptr %.9313.i.prol, align 1, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %.9313.i.prol, i64 4 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.2225311.i.prol, i64 1 ; 2 uses
  %i.he = add nuw nsw i32 %.2222312.i.prol, 1     ; 2 uses
  %prol.iter412.next = add i32 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i32 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %.lr.ph314.i.prol.loopexit, label %.lr.ph314.i.prol, !llvm.loop !41

.lr.ph314.i.prol.loopexit:                        ; preds = %.lr.ph314.i.prol, %.lr.ph314.i.preheader
  %.lcssa381.unr = phi ptr [ poison, %.lr.ph314.i.preheader ], [ %i.hc, %.lr.ph314.i.prol ]
  %.9313.i.unr = phi ptr [ %.8.lcssa.i, %.lr.ph314.i.preheader ], [ %i.hc, %.lr.ph314.i.prol ]
  %.2222312.i.unr = phi i32 [ %.1221.lcssa.i, %.lr.ph314.i.preheader ], [ %i.he, %.lr.ph314.i.prol ]
  %.2225311.i.unr = phi ptr [ %.1224.lcssa.i, %.lr.ph314.i.preheader ], [ %i.hd, %.lr.ph314.i.prol ]
  %i.hf = sub i32 %.1221.lcssa.i, %5
  %i.hg = icmp ugt i32 %i.hf, -4
  br i1 %i.hg, label %._crit_edge315.i, label %.lr.ph314.i

.lr.ph307.i:                                      ; preds = %._crit_edge298.i, %.lr.ph307.i
  %.8305.i = phi ptr [ %i.hm, %.lr.ph307.i ], [ %.7.i, %._crit_edge298.i ] ; 2 uses
  %.1221304.i = phi i32 [ %i.ho, %.lr.ph307.i ], [ %.0220.lcssa451.i, %._crit_edge298.i ]
  %.1224303.i = phi ptr [ %i.hn, %.lr.ph307.i ], [ %.0223.lcssa449.i, %._crit_edge298.i ] ; 2 uses
  %i.hh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1224303.i, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1)
  %i.hi = bitcast <4 x i32> %i.hh to <16 x i8>
  %i.hj = shufflevector <16 x i8> %i.hi, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hk = bitcast <16 x i8> %i.hj to <2 x i64>
  %i.hl = extractelement <2 x i64> %i.hk, i64 0
  store i64 %i.hl, ptr %.8305.i, align 1, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %.8305.i, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1224303.i, i64 2 ; 2 uses
  %i.ho = add nuw nsw i32 %.1221304.i, 2          ; 3 uses
  %i.hp = or disjoint i32 %i.ho, 1
  %i.hq = icmp slt i32 %i.hp, %5
  br i1 %i.hq, label %.lr.ph307.i, label %.preheader263.i, !llvm.loop !42

.lr.ph314.i:                                      ; preds = %.lr.ph314.i.prol.loopexit, %.lr.ph314.i
  %.9313.i = phi ptr [ %i.ir, %.lr.ph314.i ], [ %.9313.i.unr, %.lr.ph314.i.prol.loopexit ] ; 5 uses
  %.2222312.i = phi i32 [ %i.it, %.lr.ph314.i ], [ %.2222312.i.unr, %.lr.ph314.i.prol.loopexit ]
  %.2225311.i = phi ptr [ %i.is, %.lr.ph314.i ], [ %.2225311.i.unr, %.lr.ph314.i.prol.loopexit ] ; 5 uses
  %i.hr = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.2225311.i, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1)
  %i.hs = bitcast <4 x i32> %i.hr to <16 x i8>
  %i.ht = shufflevector <16 x i8> %i.hs, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = bitcast <16 x i8> %i.ht to <4 x float>
  %i.hv = extractelement <4 x float> %i.hu, i64 0
  store float %i.hv, ptr %.9313.i, align 1, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %.9313.i, i64 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.2225311.i, i64 1
  %i.hy = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hx, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1)
  %i.hz = bitcast <4 x i32> %i.hy to <16 x i8>
  %i.ia = shufflevector <16 x i8> %i.hz, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ib = bitcast <16 x i8> %i.ia to <4 x float>
  %i.ic = extractelement <4 x float> %i.ib, i64 0
  store float %i.ic, ptr %i.hw, align 1, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %.9313.i, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.2225311.i, i64 2
  %i.if = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ie, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1)
  %i.ig = bitcast <4 x i32> %i.if to <16 x i8>
  %i.ih = shufflevector <16 x i8> %i.ig, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = bitcast <16 x i8> %i.ih to <4 x float>
  %i.ij = extractelement <4 x float> %i.ii, i64 0
  store float %i.ij, ptr %i.id, align 1, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %.9313.i, i64 12
  %i.il = getelementptr inbounds nuw i8, ptr %.2225311.i, i64 3
  %i.im = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.il, <4 x i32> %i.fp, <4 x i32> splat (i32 -1), i8 1)
  %i.in = bitcast <4 x i32> %i.im to <16 x i8>
  %i.io = shufflevector <16 x i8> %i.in, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = bitcast <16 x i8> %i.io to <4 x float>
  %i.iq = extractelement <4 x float> %i.ip, i64 0
  store float %i.iq, ptr %i.ik, align 1, !tbaa !17
  %i.ir = getelementptr inbounds nuw i8, ptr %.9313.i, i64 16 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.2225311.i, i64 4
  %i.it = add nuw nsw i32 %.2222312.i, 4          ; 2 uses
  %exitcond416.not.i.3 = icmp eq i32 %i.it, %5
  br i1 %exitcond416.not.i.3, label %._crit_edge315.i, label %.lr.ph314.i, !llvm.loop !43

._crit_edge315.i:                                 ; preds = %.lr.ph314.i.prol.loopexit, %.lr.ph314.i, %.preheader263.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader263.i ], [ %.lcssa381.unr, %.lr.ph314.i.prol.loopexit ], [ %i.ir, %.lr.ph314.i ] ; 2 uses
  %indvars.iv.next418.i = add nuw nsw i64 %indvars.iv417.i, 4 ; 3 uses
  %i.iu = icmp slt i64 %indvars.iv.next418.i, %invariant.op.i
  br i1 %i.iu, label %bb.e, label %.preheader262.loopexit.i, !llvm.loop !44

.preheader.loopexit.i:                            ; preds = %._crit_edge352.i
  %i.iv = trunc nuw nsw i64 %indvars.iv.next422.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader262.i
  %.2218.lcssa.i = phi i32 [ %.1217.lcssa.i, %.preheader262.i ], [ %i.iv, %.preheader.loopexit.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader262.i ], [ %.14.lcssa.i, %.preheader.loopexit.i ] ; 2 uses
  %i.iw = icmp slt i32 %.2218.lcssa.i, %3
  br i1 %i.iw, label %.lr.ph379.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph379.i:                                      ; preds = %.preheader.i
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iz = sext i32 %4 to i64                      ; 4 uses
  %i.ja = icmp sgt i32 %5, 3
  %i.jb = and i32 %5, -4                          ; 6 uses
  %i.jc = sext i32 %.2218.lcssa.i to i64          ; 3 uses
  %i.jd = sext i32 %2 to i64                      ; 3 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  br i1 %i.ja, label %.lr.ph379.i.split.us, label %.lr.ph379.i.split

.lr.ph379.i.split.us:                             ; preds = %.lr.ph379.i
  %.not = icmp eq i32 %i.jb, %5
  %i.je = add nsw i64 %i.jc, %i.jd
  %i.jf = xor i32 %i.jb, -1
  %i.jg = add nsw i32 %5, %i.jf                   ; 3 uses
  %i.jh = zext i32 %i.jg to i64
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 5 uses
  %i.jj = add nsw i32 %5, -4                      ; 4 uses
  %i.jk = and i32 %i.jj, -4
  %i.jl = zext nneg i32 %i.jk to i64              ; 2 uses
  %i.jm = lshr i32 %i.jj, 2
  %narrow350 = add nuw nsw i32 %i.jm, 1
  %i.jn = zext nneg i32 %narrow350 to i64         ; 5 uses
  %min.iters.check293 = icmp ult i32 %i.jj, 12
  %min.iters.check295 = icmp ult i32 %i.jj, 60
  %i.jo = and i64 %i.jn, 12
  %n.vec297 = and i64 %i.jn, 2147483632           ; 5 uses
  %i.jp = trunc nuw nsw i64 %n.vec297 to i32
  %i.jq = shl nuw nsw i32 %i.jp, 2
  %i.jr = shl nuw nsw i64 %n.vec297, 2            ; 2 uses
  %cmp.n321 = icmp eq i64 %n.vec297, %i.jn
  %min.epilog.iters.check325 = icmp eq i64 %i.jo, 0
  %n.vec329 = and i64 %i.jn, 2147483644           ; 4 uses
  %i.js = trunc nuw nsw i64 %n.vec329 to i32
  %i.jt = shl nuw nsw i32 %i.js, 2
  %i.ju = shl nuw nsw i64 %n.vec329, 2            ; 2 uses
  %cmp.n344 = icmp eq i64 %n.vec329, %i.jn
  %min.iters.check251 = icmp ult i32 %i.jg, 7
  %min.iters.check253 = icmp ult i32 %i.jg, 127
  %i.jv = and i64 %i.ji, 120
  %n.vec255 = and i64 %i.ji, 8589934464           ; 6 uses
  %i.jw = trunc i64 %n.vec255 to i32
  %i.jx = add i32 %i.jb, %i.jw
  %cmp.n266 = icmp eq i64 %i.ji, %n.vec255
  %min.epilog.iters.check270 = icmp eq i64 %i.jv, 0
  %n.vec273 = and i64 %i.ji, 8589934584           ; 5 uses
  %i.jy = trunc i64 %n.vec273 to i32
  %i.jz = add i32 %i.jb, %i.jy
  %cmp.n281 = icmp eq i64 %i.ji, %n.vec273
  br label %iter.check322

iter.check322:                                    ; preds = %._crit_edge375.i.us, %.lr.ph379.i.split.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge375.i.us ], [ 0, %.lr.ph379.i.split.us ] ; 2 uses
  %indvars.iv425.i.us = phi i64 [ %indvars.iv.next426.i.us, %._crit_edge375.i.us ], [ %i.jc, %.lr.ph379.i.split.us ] ; 2 uses
  %.15378.i.us = phi ptr [ %.18.lcssa.i.us, %._crit_edge375.i.us ], [ %.10.lcssa.i, %.lr.ph379.i.split.us ] ; 10 uses
  %.15378.i.us249 = ptrtoaddr ptr %.15378.i.us to i64
  %i.ka = add i64 %i.je, %indvar
  %i.kb = add i64 %indvars.iv425.i.us, %i.jd
  %i.kc = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.kd = ptrtoaddr ptr %i.kc to i64
  %i.ke = load i32, ptr %i.ix, align 4, !tbaa !15
  %i.kf = sext i32 %i.ke to i64                   ; 2 uses
  %i.kg = mul i64 %i.kb, %i.kf
  %i.kh = load i64, ptr %i.iy, align 8, !tbaa !16 ; 2 uses
  %i.ki = mul i64 %i.kg, %i.kh                    ; 2 uses
  %i.kj = getelementptr i8, ptr %i.kc, i64 %i.ki
  %i.kk = getelementptr i8, ptr %i.kj, i64 %i.iz  ; 8 uses
  br i1 %min.iters.check293, label %.lr.ph364.i.us.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %iter.check322
  %i.kl = getelementptr i8, ptr %.15378.i.us, i64 %i.jl
  %scevgep286 = getelementptr i8, ptr %i.kl, i64 4
  %i.km = getelementptr i8, ptr %i.kc, i64 %i.jl
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.iz
  %scevgep287 = getelementptr i8, ptr %i.kn, i64 4
  %scevgep288 = getelementptr i8, ptr %scevgep287, i64 %i.ki
  %bound0289 = icmp ult ptr %.15378.i.us, %scevgep288
  %bound1290 = icmp ult ptr %i.kk, %scevgep286
  %found.conflict291 = and i1 %bound0289, %bound1290
  br i1 %found.conflict291, label %.lr.ph364.i.us.preheader, label %vector.main.loop.iter.check294

vector.main.loop.iter.check294:                   ; preds = %vector.memcheck285
  br i1 %min.iters.check295, label %vec.epilog.ph326, label %vector.ph296

vector.ph296:                                     ; preds = %vector.main.loop.iter.check294
  %i.ko = getelementptr i8, ptr %i.kk, i64 %i.jr  ; 2 uses
  %i.kp = getelementptr i8, ptr %.15378.i.us, i64 %i.jr ; 3 uses
  br label %vector.body298

vector.body298:                                   ; preds = %vector.ph296, %vector.body298
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next318, %vector.body298 ] ; 2 uses
  %vec.phi300 = phi <8 x i32> [ zeroinitializer, %vector.ph296 ], [ %i.lg, %vector.body298 ]
  %vec.phi301 = phi <8 x i32> [ zeroinitializer, %vector.ph296 ], [ %i.lh, %vector.body298 ]
  %i.kq = shl i64 %index299, 2                    ; 3 uses
  %i.kr = or disjoint i64 %i.kq, 32               ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.kk, i64 %i.kq
  %next.gep303 = getelementptr i8, ptr %i.kk, i64 %i.kr
  %next.gep304 = getelementptr i8, ptr %.15378.i.us, i64 %i.kq
  %next.gep305 = getelementptr i8, ptr %.15378.i.us, i64 %i.kr
  %wide.vec306 = load <32 x i8>, ptr %next.gep302, align 1, !tbaa !17, !alias.scope !78 ; 5 uses
  %strided.vec307 = shufflevector <32 x i8> %wide.vec306, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec308 = shufflevector <32 x i8> %wide.vec306, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec309 = shufflevector <32 x i8> %wide.vec306, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec310 = shufflevector <32 x i8> %wide.vec306, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec311 = load <32 x i8>, ptr %next.gep303, align 1, !tbaa !17, !alias.scope !78 ; 5 uses
  %strided.vec312 = shufflevector <32 x i8> %wide.vec311, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec313 = shufflevector <32 x i8> %wide.vec311, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec314 = shufflevector <32 x i8> %wide.vec311, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec315 = shufflevector <32 x i8> %wide.vec311, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i8> %wide.vec306, ptr %next.gep304, align 1, !tbaa !17, !alias.scope !79, !noalias !78
  store <32 x i8> %wide.vec311, ptr %next.gep305, align 1, !tbaa !17, !alias.scope !79, !noalias !78
  %i.ks = sext <8 x i8> %strided.vec307 to <8 x i32>
  %i.kt = sext <8 x i8> %strided.vec312 to <8 x i32>
  %i.ku = add <8 x i32> %vec.phi300, %i.ks
  %i.kv = add <8 x i32> %vec.phi301, %i.kt
  %i.kw = sext <8 x i8> %strided.vec308 to <8 x i32>
  %i.kx = sext <8 x i8> %strided.vec313 to <8 x i32>
  %i.ky = add <8 x i32> %i.ku, %i.kw
  %i.kz = add <8 x i32> %i.kv, %i.kx
  %i.la = sext <8 x i8> %strided.vec309 to <8 x i32>
  %i.lb = sext <8 x i8> %strided.vec314 to <8 x i32>
  %i.lc = add <8 x i32> %i.ky, %i.la
  %i.ld = add <8 x i32> %i.kz, %i.lb
  %i.le = sext <8 x i8> %strided.vec310 to <8 x i32>
  %i.lf = sext <8 x i8> %strided.vec315 to <8 x i32>
  %i.lg = add <8 x i32> %i.lc, %i.le              ; 2 uses
  %i.lh = add <8 x i32> %i.ld, %i.lf              ; 2 uses
  %index.next318 = add nuw i64 %index299, 16      ; 2 uses
  %i.li = icmp eq i64 %index.next318, %n.vec297
  br i1 %i.li, label %middle.block319, label %vector.body298, !llvm.loop !48

middle.block319:                                  ; preds = %vector.body298
  %bin.rdx = add <8 x i32> %i.lh, %i.lg
  %i.lj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  %ind.escape320 = getelementptr i8, ptr %i.kp, i64 -4
  br i1 %cmp.n321, label %._crit_edge365.i.us, label %vec.epilog.iter.check323

vec.epilog.iter.check323:                         ; preds = %middle.block319
  br i1 %min.epilog.iters.check325, label %.lr.ph364.i.us.preheader, label %vec.epilog.ph326, !prof !22

vec.epilog.ph326:                                 ; preds = %vector.main.loop.iter.check294, %vec.epilog.iter.check323
  %vec.epilog.resume.val327 = phi i64 [ %n.vec297, %vec.epilog.iter.check323 ], [ 0, %vector.main.loop.iter.check294 ]
  %bc.merge.rdx328 = phi i32 [ %i.lj, %vec.epilog.iter.check323 ], [ 0, %vector.main.loop.iter.check294 ]
  %i.lk = getelementptr i8, ptr %i.kk, i64 %i.ju  ; 2 uses
  %i.ll = getelementptr i8, ptr %.15378.i.us, i64 %i.ju ; 3 uses
  %i.lm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx328, i64 0
  br label %vec.epilog.vector.body330

vec.epilog.vector.body330:                        ; preds = %vec.epilog.vector.body330, %vec.epilog.ph326
  %index331 = phi i64 [ %vec.epilog.resume.val327, %vec.epilog.ph326 ], [ %index.next341, %vec.epilog.vector.body330 ] ; 2 uses
  %vec.phi332 = phi <4 x i32> [ %i.lm, %vec.epilog.ph326 ], [ %i.lv, %vec.epilog.vector.body330 ]
  %i.ln = shl i64 %index331, 2                    ; 2 uses
  %next.gep333 = getelementptr i8, ptr %i.kk, i64 %i.ln
  %next.gep334 = getelementptr i8, ptr %.15378.i.us, i64 %i.ln
  %wide.vec335 = load <16 x i8>, ptr %next.gep333, align 1, !tbaa !17, !alias.scope !78 ; 5 uses
  %strided.vec336 = shufflevector <16 x i8> %wide.vec335, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec337 = shufflevector <16 x i8> %wide.vec335, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec338 = shufflevector <16 x i8> %wide.vec335, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec339 = shufflevector <16 x i8> %wide.vec335, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %wide.vec335, ptr %next.gep334, align 1, !tbaa !17, !alias.scope !79, !noalias !78
  %i.lo = sext <4 x i8> %strided.vec336 to <4 x i32>
  %i.lp = add <4 x i32> %vec.phi332, %i.lo
  %i.lq = sext <4 x i8> %strided.vec337 to <4 x i32>
  %i.lr = add <4 x i32> %i.lp, %i.lq
  %i.ls = sext <4 x i8> %strided.vec338 to <4 x i32>
  %i.lt = add <4 x i32> %i.lr, %i.ls
  %i.lu = sext <4 x i8> %strided.vec339 to <4 x i32>
  %i.lv = add <4 x i32> %i.lt, %i.lu              ; 2 uses
  %index.next341 = add nuw i64 %index331, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next341, %n.vec329
  br i1 %i.lw, label %vec.epilog.middle.block342, label %vec.epilog.vector.body330, !llvm.loop !49

vec.epilog.middle.block342:                       ; preds = %vec.epilog.vector.body330
  %i.lx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.lv) ; 2 uses
  %ind.escape343 = getelementptr i8, ptr %i.ll, i64 -4
  br i1 %cmp.n344, label %._crit_edge365.i.us, label %.lr.ph364.i.us.preheader

.lr.ph364.i.us.preheader:                         ; preds = %iter.check322, %vector.memcheck285, %vec.epilog.iter.check323, %vec.epilog.middle.block342
  %.0362.i.us.ph = phi i32 [ 0, %iter.check322 ], [ 0, %vector.memcheck285 ], [ %i.lj, %vec.epilog.iter.check323 ], [ %i.lx, %vec.epilog.middle.block342 ]
  %.0200361.i.us.ph = phi i32 [ 0, %iter.check322 ], [ 0, %vector.memcheck285 ], [ %i.jq, %vec.epilog.iter.check323 ], [ %i.jt, %vec.epilog.middle.block342 ]
  %.0201360.i.us.ph = phi ptr [ %i.kk, %iter.check322 ], [ %i.kk, %vector.memcheck285 ], [ %i.ko, %vec.epilog.iter.check323 ], [ %i.lk, %vec.epilog.middle.block342 ]
  %.16359.i.us.ph = phi ptr [ %.15378.i.us, %iter.check322 ], [ %.15378.i.us, %vector.memcheck285 ], [ %i.kp, %vec.epilog.iter.check323 ], [ %i.ll, %vec.epilog.middle.block342 ]
  br label %.lr.ph364.i.us

.lr.ph364.i.us:                                   ; preds = %.lr.ph364.i.us.preheader, %.lr.ph364.i.us
  %.0362.i.us = phi i32 [ %i.mp, %.lr.ph364.i.us ], [ %.0362.i.us.ph, %.lr.ph364.i.us.preheader ]
  %.0200361.i.us = phi i32 [ %i.ms, %.lr.ph364.i.us ], [ %.0200361.i.us.ph, %.lr.ph364.i.us.preheader ]
  %.0201360.i.us = phi ptr [ %i.mr, %.lr.ph364.i.us ], [ %.0201360.i.us.ph, %.lr.ph364.i.us.preheader ] ; 5 uses
  %.16359.i.us = phi ptr [ %i.mq, %.lr.ph364.i.us ], [ %.16359.i.us.ph, %.lr.ph364.i.us.preheader ] ; 6 uses
  %i.ly = load i8, ptr %.0201360.i.us, align 1, !tbaa !17 ; 2 uses
  store i8 %i.ly, ptr %.16359.i.us, align 1, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !17  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 1
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !17  ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 2
  store i8 %i.md, ptr %i.me, align 1, !tbaa !17
  %i.mf = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 3
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !17  ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 3
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !17
  %i.mi = sext i8 %i.ly to i32
  %i.mj = add nsw i32 %.0362.i.us, %i.mi
  %i.mk = sext i8 %i.ma to i32
  %i.ml = add nsw i32 %i.mj, %i.mk
  %i.mm = sext i8 %i.md to i32
  %i.mn = add nsw i32 %i.ml, %i.mm
  %i.mo = sext i8 %i.mg to i32
  %i.mp = add nsw i32 %i.mn, %i.mo                ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.16359.i.us, i64 4 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0201360.i.us, i64 4 ; 2 uses
  %i.ms = add nuw nsw i32 %.0200361.i.us, 4       ; 2 uses
  %i.mt = or disjoint i32 %i.ms, 3
  %i.mu = icmp slt i32 %i.mt, %5
  br i1 %i.mu, label %.lr.ph364.i.us, label %._crit_edge365.i.us, !llvm.loop !50

._crit_edge365.i.us:                              ; preds = %.lr.ph364.i.us, %vec.epilog.middle.block342, %middle.block319
  %.16359.i.us.lcssa = phi ptr [ %ind.escape343, %vec.epilog.middle.block342 ], [ %ind.escape320, %middle.block319 ], [ %.16359.i.us, %.lr.ph364.i.us ]
  %.lcssa98 = phi i32 [ %i.lx, %vec.epilog.middle.block342 ], [ %i.lj, %middle.block319 ], [ %i.mp, %.lr.ph364.i.us ]
  %.lcssa97 = phi ptr [ %i.ll, %vec.epilog.middle.block342 ], [ %i.kp, %middle.block319 ], [ %i.mq, %.lr.ph364.i.us ]
  %.lcssa = phi ptr [ %i.lk, %vec.epilog.middle.block342 ], [ %i.ko, %middle.block319 ], [ %i.mr, %.lr.ph364.i.us ] ; 6 uses
  %i.mv = mul nsw i32 %.lcssa98, 127
  store i32 %i.mv, ptr %.lcssa97, align 4, !tbaa !23
  %i.mw = getelementptr inbounds nuw i8, ptr %.16359.i.us.lcssa, i64 8 ; 7 uses
  br i1 %.not, label %._crit_edge375.i.us, label %iter.check267

iter.check267:                                    ; preds = %._crit_edge365.i.us
  br i1 %min.iters.check251, label %.lr.ph374.i.us.preheader, label %vector.memcheck248

vector.memcheck248:                               ; preds = %iter.check267
  %i.mx = mul i64 %i.ka, %i.kh
  %i.my = mul i64 %i.mx, %i.kf
  %i.mz = add i64 %i.my, %i.iz
  %i.na = add i64 %i.mz, %i.kd
  %i.nb = sub i64 %.15378.i.us249, %i.na
  %i.nc = add i64 %i.nb, 3
  %diff.check = icmp ult i64 %i.nc, 127
  br i1 %diff.check, label %.lr.ph374.i.us.preheader, label %vector.main.loop.iter.check252

vector.main.loop.iter.check252:                   ; preds = %vector.memcheck248
  br i1 %min.iters.check253, label %vec.epilog.ph271, label %vector.ph254

vector.ph254:                                     ; preds = %vector.main.loop.iter.check252
  %i.nd = getelementptr i8, ptr %.lcssa, i64 %n.vec255
  %i.ne = getelementptr i8, ptr %i.mw, i64 %n.vec255 ; 2 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.ph254, %vector.body256
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next264, %vector.body256 ] ; 3 uses
  %next.gep258 = getelementptr i8, ptr %.lcssa, i64 %index257 ; 4 uses
  %next.gep259 = getelementptr i8, ptr %i.mw, i64 %index257 ; 4 uses
  %i.nf = getelementptr i8, ptr %next.gep258, i64 32
  %i.ng = getelementptr i8, ptr %next.gep258, i64 64
  %i.nh = getelementptr i8, ptr %next.gep258, i64 96
  %wide.load260 = load <32 x i8>, ptr %next.gep258, align 1, !tbaa !17
  %wide.load261 = load <32 x i8>, ptr %i.nf, align 1, !tbaa !17
  %wide.load262 = load <32 x i8>, ptr %i.ng, align 1, !tbaa !17
  %wide.load263 = load <32 x i8>, ptr %i.nh, align 1, !tbaa !17
  %i.ni = getelementptr i8, ptr %next.gep259, i64 32
  %i.nj = getelementptr i8, ptr %next.gep259, i64 64
  %i.nk = getelementptr i8, ptr %next.gep259, i64 96
  store <32 x i8> %wide.load260, ptr %next.gep259, align 1, !tbaa !17
  store <32 x i8> %wide.load261, ptr %i.ni, align 1, !tbaa !17
  store <32 x i8> %wide.load262, ptr %i.nj, align 1, !tbaa !17
  store <32 x i8> %wide.load263, ptr %i.nk, align 1, !tbaa !17
  %index.next264 = add nuw i64 %index257, 128     ; 2 uses
  %i.nl = icmp eq i64 %index.next264, %n.vec255
  br i1 %i.nl, label %middle.block265, label %vector.body256, !llvm.loop !51

middle.block265:                                  ; preds = %vector.body256
  br i1 %cmp.n266, label %._crit_edge375.i.us, label %vec.epilog.iter.check268

vec.epilog.iter.check268:                         ; preds = %middle.block265
  br i1 %min.epilog.iters.check270, label %.lr.ph374.i.us.preheader, label %vec.epilog.ph271, !prof !24

vec.epilog.ph271:                                 ; preds = %vector.main.loop.iter.check252, %vec.epilog.iter.check268
  %vec.epilog.resume.val272 = phi i64 [ %n.vec255, %vec.epilog.iter.check268 ], [ 0, %vector.main.loop.iter.check252 ]
  %i.nm = getelementptr i8, ptr %.lcssa, i64 %n.vec273
  %i.nn = getelementptr i8, ptr %i.mw, i64 %n.vec273 ; 2 uses
  br label %vec.epilog.vector.body274

vec.epilog.vector.body274:                        ; preds = %vec.epilog.vector.body274, %vec.epilog.ph271
  %index275 = phi i64 [ %vec.epilog.resume.val272, %vec.epilog.ph271 ], [ %index.next279, %vec.epilog.vector.body274 ] ; 3 uses
  %next.gep276 = getelementptr i8, ptr %.lcssa, i64 %index275
  %next.gep277 = getelementptr i8, ptr %i.mw, i64 %index275
  %wide.load278 = load <8 x i8>, ptr %next.gep276, align 1, !tbaa !17
  store <8 x i8> %wide.load278, ptr %next.gep277, align 1, !tbaa !17
  %index.next279 = add nuw i64 %index275, 8       ; 2 uses
  %i.no = icmp eq i64 %index.next279, %n.vec273
  br i1 %i.no, label %vec.epilog.middle.block280, label %vec.epilog.vector.body274, !llvm.loop !52

vec.epilog.middle.block280:                       ; preds = %vec.epilog.vector.body274
  br i1 %cmp.n281, label %._crit_edge375.i.us, label %.lr.ph374.i.us.preheader

.lr.ph374.i.us.preheader:                         ; preds = %iter.check267, %vector.memcheck248, %vec.epilog.iter.check268, %vec.epilog.middle.block280
  %.1372.i.us.ph = phi i32 [ %i.jb, %iter.check267 ], [ %i.jb, %vector.memcheck248 ], [ %i.jx, %vec.epilog.iter.check268 ], [ %i.jz, %vec.epilog.middle.block280 ] ; 4 uses
  %.1202371.i.us.ph = phi ptr [ %.lcssa, %iter.check267 ], [ %.lcssa, %vector.memcheck248 ], [ %i.nd, %vec.epilog.iter.check268 ], [ %i.nm, %vec.epilog.middle.block280 ] ; 2 uses
  %.18370.i.us.ph = phi ptr [ %i.mw, %iter.check267 ], [ %i.mw, %vector.memcheck248 ], [ %i.ne, %vec.epilog.iter.check268 ], [ %i.nn, %vec.epilog.middle.block280 ] ; 2 uses
  %i.np = sub i32 %5, %.1372.i.us.ph
  %xtraiter416 = and i32 %i.np, 7                 ; 2 uses
  %lcmp.mod417.not = icmp eq i32 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph374.i.us.prol.loopexit, label %.lr.ph374.i.us.prol

.lr.ph374.i.us.prol:                              ; preds = %.lr.ph374.i.us.preheader, %.lr.ph374.i.us.prol
  %.1372.i.us.prol = phi i32 [ %i.nt, %.lr.ph374.i.us.prol ], [ %.1372.i.us.ph, %.lr.ph374.i.us.preheader ]
  %.1202371.i.us.prol = phi ptr [ %i.ns, %.lr.ph374.i.us.prol ], [ %.1202371.i.us.ph, %.lr.ph374.i.us.preheader ] ; 2 uses
  %.18370.i.us.prol = phi ptr [ %i.nr, %.lr.ph374.i.us.prol ], [ %.18370.i.us.ph, %.lr.ph374.i.us.preheader ] ; 2 uses
  %prol.iter418 = phi i32 [ %prol.iter418.next, %.lr.ph374.i.us.prol ], [ 0, %.lr.ph374.i.us.preheader ]
  %i.nq = load i8, ptr %.1202371.i.us.prol, align 1, !tbaa !17
  store i8 %i.nq, ptr %.18370.i.us.prol, align 1, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.18370.i.us.prol, i64 1 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.1202371.i.us.prol, i64 1 ; 2 uses
  %i.nt = add nuw nsw i32 %.1372.i.us.prol, 1     ; 2 uses
  %prol.iter418.next = add i32 %prol.iter418, 1   ; 2 uses
  %prol.iter418.cmp.not = icmp eq i32 %prol.iter418.next, %xtraiter416
  br i1 %prol.iter418.cmp.not, label %.lr.ph374.i.us.prol.loopexit, label %.lr.ph374.i.us.prol, !llvm.loop !53

.lr.ph374.i.us.prol.loopexit:                     ; preds = %.lr.ph374.i.us.prol, %.lr.ph374.i.us.preheader
  %.lcssa358.unr = phi ptr [ poison, %.lr.ph374.i.us.preheader ], [ %i.nr, %.lr.ph374.i.us.prol ]
  %.1372.i.us.unr = phi i32 [ %.1372.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.nt, %.lr.ph374.i.us.prol ]
  %.1202371.i.us.unr = phi ptr [ %.1202371.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.ns, %.lr.ph374.i.us.prol ]
  %.18370.i.us.unr = phi ptr [ %.18370.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.nr, %.lr.ph374.i.us.prol ]
  %i.nu = sub i32 %.1372.i.us.ph, %5
  %i.nv = icmp ugt i32 %i.nu, -8
  br i1 %i.nv, label %._crit_edge375.i.us, label %.lr.ph374.i.us

.lr.ph374.i.us:                                   ; preds = %.lr.ph374.i.us.prol.loopexit, %.lr.ph374.i.us
  %.1372.i.us = phi i32 [ %i.ou, %.lr.ph374.i.us ], [ %.1372.i.us.unr, %.lr.ph374.i.us.prol.loopexit ]
  %.1202371.i.us = phi ptr [ %i.ot, %.lr.ph374.i.us ], [ %.1202371.i.us.unr, %.lr.ph374.i.us.prol.loopexit ] ; 9 uses
  %.18370.i.us = phi ptr [ %i.os, %.lr.ph374.i.us ], [ %.18370.i.us.unr, %.lr.ph374.i.us.prol.loopexit ] ; 9 uses
  %i.nw = load i8, ptr %.1202371.i.us, align 1, !tbaa !17
  store i8 %i.nw, ptr %.18370.i.us, align 1, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !17
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !17
  %i.oa = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !17
  store i8 %i.oc, ptr %i.oa, align 1, !tbaa !17
  %i.od = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 3
  %i.oe = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 3
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !17
  store i8 %i.of, ptr %i.od, align 1, !tbaa !17
  %i.og = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 4
  %i.oh = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 4
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !17
  store i8 %i.oi, ptr %i.og, align 1, !tbaa !17
  %i.oj = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 5
  %i.ok = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 5
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !17
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 6
  %i.on = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 6
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !17
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !17
  %i.op = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 7
  %i.oq = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 7
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !17
  store i8 %i.or, ptr %i.op, align 1, !tbaa !17
  %i.os = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 8
  %i.ou = add nuw nsw i32 %.1372.i.us, 8          ; 2 uses
  %exitcond424.not.i.us.7 = icmp eq i32 %i.ou, %5
  br i1 %exitcond424.not.i.us.7, label %._crit_edge375.i.us, label %.lr.ph374.i.us, !llvm.loop !54

._crit_edge375.i.us:                              ; preds = %.lr.ph374.i.us.prol.loopexit, %.lr.ph374.i.us, %middle.block265, %vec.epilog.middle.block280, %._crit_edge365.i.us
  %.18.lcssa.i.us = phi ptr [ %i.mw, %._crit_edge365.i.us ], [ %i.nn, %vec.epilog.middle.block280 ], [ %i.ne, %middle.block265 ], [ %.lcssa358.unr, %.lr.ph374.i.us.prol.loopexit ], [ %i.os, %.lr.ph374.i.us ]
  %indvars.iv.next426.i.us = add nuw nsw i64 %indvars.iv425.i.us, 1 ; 2 uses
  %exitcond428.not.i.us = icmp eq i64 %indvars.iv.next426.i.us, %wide.trip.count.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond428.not.i.us, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check322, !llvm.loop !55

.lr.ph379.i.split:                                ; preds = %.lr.ph379.i
  %i.ov = icmp sgt i32 %5, 0
  br i1 %i.ov, label %._crit_edge365.i.preheader, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

._crit_edge365.i.preheader:                       ; preds = %.lr.ph379.i.split
  %exitcond424.not.i = icmp eq i32 %5, 1
  %exitcond424.not.i.1 = icmp eq i32 %5, 2
  br label %._crit_edge365.i

bb.f:                                             ; preds = %._crit_edge352.i, %.lr.ph356.i
  %indvars.iv421.i = phi i64 [ %i.en, %.lr.ph356.i ], [ %indvars.iv.next422.i, %._crit_edge352.i ] ; 2 uses
  %.10355.i = phi ptr [ %.5.lcssa.i, %.lr.ph356.i ], [ %.14.lcssa.i, %._crit_edge352.i ] ; 8 uses
  %i.ow = add nsw i64 %indvars.iv421.i, %i.ep     ; 2 uses
  %i.ox = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.oy = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.oz = sext i32 %i.oy to i64
  %i.pa = load i64, ptr %i.ej, align 8, !tbaa !16
  %i.pb = mul i64 %i.pa, %i.oz                    ; 2 uses
  %i.pc = mul i64 %i.pb, %i.ow                    ; 2 uses
  %i.pd = getelementptr i8, ptr %i.ox, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 %i.ek  ; 6 uses
  %i.pf = add nsw i64 %i.ow, 1
  %i.pg = mul i64 %i.pb, %i.pf                    ; 2 uses
  %i.ph = getelementptr i8, ptr %i.ox, i64 %i.pg
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.ek  ; 6 uses
  br i1 %i.el, label %.lr.ph329.i.preheader, label %._crit_edge330.i

.lr.ph329.i.preheader:                            ; preds = %bb.f
  br i1 %min.iters.check220, label %.lr.ph329.i.preheader361, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph329.i.preheader
  %i.pj = getelementptr i8, ptr %.10355.i, i64 %i.ev
  %scevgep209 = getelementptr i8, ptr %i.pj, i64 8 ; 2 uses
  %i.pk = getelementptr i8, ptr %i.ox, i64 %i.ew
  %i.pl = getelementptr i8, ptr %i.pk, i64 %i.ek
  %scevgep210 = getelementptr i8, ptr %i.pl, i64 4 ; 2 uses
  %scevgep211 = getelementptr i8, ptr %scevgep210, i64 %i.pg
  %scevgep212 = getelementptr i8, ptr %scevgep210, i64 %i.pc
  %bound0213 = icmp ult ptr %.10355.i, %scevgep211
  %bound1214 = icmp ult ptr %i.pi, %scevgep209
  %found.conflict215 = and i1 %bound0213, %bound1214
  %bound0216 = icmp ult ptr %.10355.i, %scevgep212
  %bound1217 = icmp ult ptr %i.pe, %scevgep209
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %found.conflict215, %found.conflict218
  br i1 %conflict.rdx219, label %.lr.ph329.i.preheader361, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck208
  %i.pm = getelementptr i8, ptr %i.pi, i64 %i.fc  ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pe, i64 %i.fc  ; 2 uses
  %i.po = getelementptr i8, ptr %.10355.i, i64 %i.fd ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next240, %vector.body223 ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph221 ], [ %i.qm, %vector.body223 ]
  %vec.phi225 = phi <8 x i32> [ zeroinitializer, %vector.ph221 ], [ %i.qe, %vector.body223 ]
  %i.pp = shl i64 %index224, 2                    ; 2 uses
  %next.gep226 = getelementptr i8, ptr %i.pi, i64 %i.pp
  %next.gep227 = getelementptr i8, ptr %i.pe, i64 %i.pp
  %i.pq = shl i64 %index224, 3
  %next.gep228 = getelementptr i8, ptr %.10355.i, i64 %i.pq
  %wide.vec229 = load <32 x i8>, ptr %next.gep227, align 1, !tbaa !17, !alias.scope !80 ; 4 uses
  %strided.vec230 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec231 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec232 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec233 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %wide.vec234 = load <32 x i8>, ptr %next.gep226, align 1, !tbaa !17, !alias.scope !81 ; 4 uses
  %strided.vec235 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec236 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec237 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec238 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.pr = shufflevector <8 x i8> %strided.vec230, <8 x i8> %strided.vec231, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ps = shufflevector <8 x i8> %strided.vec232, <8 x i8> %strided.vec233, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pt = shufflevector <8 x i8> %strided.vec235, <8 x i8> %strided.vec236, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pu = shufflevector <8 x i8> %strided.vec237, <8 x i8> %strided.vec238, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pv = shufflevector <16 x i8> %i.pr, <16 x i8> %i.ps, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pw = shufflevector <16 x i8> %i.pt, <16 x i8> %i.pu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec239 = shufflevector <32 x i8> %i.pv, <32 x i8> %i.pw, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i8> %interleaved.vec239, ptr %next.gep228, align 1, !tbaa !17, !alias.scope !82, !noalias !83
  %i.px = sext <8 x i8> %strided.vec230 to <8 x i32>
  %i.py = add <8 x i32> %vec.phi225, %i.px
  %i.pz = sext <8 x i8> %strided.vec231 to <8 x i32>
  %i.qa = add <8 x i32> %i.py, %i.pz
  %i.qb = sext <8 x i8> %strided.vec232 to <8 x i32>
  %i.qc = add <8 x i32> %i.qa, %i.qb
  %i.qd = sext <8 x i8> %strided.vec233 to <8 x i32>
  %i.qe = add <8 x i32> %i.qc, %i.qd              ; 2 uses
  %i.qf = sext <8 x i8> %strided.vec235 to <8 x i32>
  %i.qg = add <8 x i32> %vec.phi, %i.qf
  %i.qh = sext <8 x i8> %strided.vec236 to <8 x i32>
  %i.qi = add <8 x i32> %i.qg, %i.qh
  %i.qj = sext <8 x i8> %strided.vec237 to <8 x i32>
  %i.qk = add <8 x i32> %i.qi, %i.qj
  %i.ql = sext <8 x i8> %strided.vec238 to <8 x i32>
  %i.qm = add <8 x i32> %i.qk, %i.ql              ; 2 uses
  %index.next240 = add nuw i64 %index224, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next240, %n.vec222
  br i1 %i.qn, label %middle.block241, label %vector.body223, !llvm.loop !60

middle.block241:                                  ; preds = %vector.body223
  %i.qo = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.qm) ; 2 uses
  %i.qp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.qe) ; 2 uses
  %ind.escape = getelementptr i8, ptr %i.po, i64 -8
  br i1 %cmp.n242, label %.loopexit, label %.lr.ph329.i.preheader361

.lr.ph329.i.preheader361:                         ; preds = %vector.memcheck208, %.lr.ph329.i.preheader, %middle.block241
  %.0203327.i.ph = phi i32 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph329.i.preheader ], [ %i.qo, %middle.block241 ]
  %.0204326.i.ph = phi i32 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph329.i.preheader ], [ %i.qp, %middle.block241 ]
  %.0205325.i.ph = phi i32 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph329.i.preheader ], [ %i.fb, %middle.block241 ]
  %.0207324.i.ph = phi ptr [ %i.pi, %vector.memcheck208 ], [ %i.pi, %.lr.ph329.i.preheader ], [ %i.pm, %middle.block241 ]
  %.0210323.i.ph = phi ptr [ %i.pe, %vector.memcheck208 ], [ %i.pe, %.lr.ph329.i.preheader ], [ %i.pn, %middle.block241 ]
  %.11322.i.ph = phi ptr [ %.10355.i, %vector.memcheck208 ], [ %.10355.i, %.lr.ph329.i.preheader ], [ %i.po, %middle.block241 ]
  br label %.lr.ph329.i

.lr.ph329.i:                                      ; preds = %.lr.ph329.i.preheader361, %.lr.ph329.i
  %.0203327.i = phi i32 [ %i.sa, %.lr.ph329.i ], [ %.0203327.i.ph, %.lr.ph329.i.preheader361 ]
  %.0204326.i = phi i32 [ %i.rs, %.lr.ph329.i ], [ %.0204326.i.ph, %.lr.ph329.i.preheader361 ]
  %.0205325.i = phi i32 [ %i.se, %.lr.ph329.i ], [ %.0205325.i.ph, %.lr.ph329.i.preheader361 ]
  %.0207324.i = phi ptr [ %i.sd, %.lr.ph329.i ], [ %.0207324.i.ph, %.lr.ph329.i.preheader361 ] ; 5 uses
  %.0210323.i = phi ptr [ %i.sc, %.lr.ph329.i ], [ %.0210323.i.ph, %.lr.ph329.i.preheader361 ] ; 5 uses
  %.11322.i = phi ptr [ %i.sb, %.lr.ph329.i ], [ %.11322.i.ph, %.lr.ph329.i.preheader361 ] ; 10 uses
  %i.qq = load i8, ptr %.0210323.i, align 1, !tbaa !17 ; 2 uses
  store i8 %i.qq, ptr %.11322.i, align 1, !tbaa !17
  %i.qr = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 1
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !17  ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.11322.i, i64 1
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !17
  %i.qu = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 2
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !17  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.11322.i, i64 2
  store i8 %i.qv, ptr %i.qw, align 1, !tbaa !17
  %i.qx = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 3
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !17  ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.11322.i, i64 3
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !17
  %i.ra = load i8, ptr %.0207324.i, align 1, !tbaa !17 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.11322.i, i64 4
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 1
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !17  ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.11322.i, i64 5
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !17
  %i.rf = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 2
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !17  ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.11322.i, i64 6
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !17
  %i.ri = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 3
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !17  ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.11322.i, i64 7
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !17
  %i.rl = sext i8 %i.qq to i32
  %i.rm = add nsw i32 %.0204326.i, %i.rl
  %i.rn = sext i8 %i.qs to i32
  %i.ro = add nsw i32 %i.rm, %i.rn
  %i.rp = sext i8 %i.qv to i32
  %i.rq = add nsw i32 %i.ro, %i.rp
  %i.rr = sext i8 %i.qy to i32
  %i.rs = add nsw i32 %i.rq, %i.rr                ; 2 uses
  %i.rt = sext i8 %i.ra to i32
  %i.ru = add nsw i32 %.0203327.i, %i.rt
  %i.rv = sext i8 %i.rd to i32
  %i.rw = add nsw i32 %i.ru, %i.rv
  %i.rx = sext i8 %i.rg to i32
  %i.ry = add nsw i32 %i.rw, %i.rx
  %i.rz = sext i8 %i.rj to i32
  %i.sa = add nsw i32 %i.ry, %i.rz                ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.11322.i, i64 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 4 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 4 ; 2 uses
  %i.se = add nuw nsw i32 %.0205325.i, 4          ; 2 uses
  %i.sf = or disjoint i32 %i.se, 3
  %i.sg = icmp slt i32 %i.sf, %5
  br i1 %i.sg, label %.lr.ph329.i, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph329.i, %middle.block241
  %.11322.i.lcssa = phi ptr [ %ind.escape, %middle.block241 ], [ %.11322.i, %.lr.ph329.i ] ; 2 uses
  %.lcssa105 = phi i32 [ %i.qp, %middle.block241 ], [ %i.rs, %.lr.ph329.i ]
  %.lcssa104 = phi i32 [ %i.qo, %middle.block241 ], [ %i.sa, %.lr.ph329.i ]
  %.lcssa103 = phi ptr [ %i.po, %middle.block241 ], [ %i.sb, %.lr.ph329.i ]
  %.lcssa102 = phi ptr [ %i.pn, %middle.block241 ], [ %i.sc, %.lr.ph329.i ]
  %.lcssa101 = phi ptr [ %i.pm, %middle.block241 ], [ %i.sd, %.lr.ph329.i ]
  %i.sh = mul nsw i32 %.lcssa105, 127
  %i.si = mul nsw i32 %.lcssa104, 127
  store i32 %i.sh, ptr %.lcssa103, align 4, !tbaa !23
  %i.sj = getelementptr inbounds nuw i8, ptr %.11322.i.lcssa, i64 12
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !23
  %i.sk = getelementptr inbounds nuw i8, ptr %.11322.i.lcssa, i64 16
  br label %._crit_edge330.i

._crit_edge330.i:                                 ; preds = %.loopexit, %bb.f
  %.0205.lcssa465.i = phi i32 [ %i.em, %.loopexit ], [ 0, %bb.f ] ; 8 uses
  %.0207.lcssa463.i = phi ptr [ %.lcssa101, %.loopexit ], [ %i.pi, %bb.f ] ; 9 uses
  %.0210.lcssa461.i = phi ptr [ %.lcssa102, %.loopexit ], [ %i.pe, %bb.f ] ; 9 uses
  %.12.i = phi ptr [ %i.sk, %.loopexit ], [ %.10355.i, %bb.f ] ; 10 uses
  %i.sl = or disjoint i32 %.0205.lcssa465.i, 1
  %i.sm = icmp slt i32 %i.sl, %5
  br i1 %i.sm, label %iter.check182, label %.preheader261.i

iter.check182:                                    ; preds = %._crit_edge330.i
  %i.sn = sub i32 %i.er, %.0205.lcssa465.i        ; 3 uses
  %i.so = lshr i32 %i.sn, 1
  %narrow349 = add nuw i32 %i.so, 1
  %i.sp = zext i32 %narrow349 to i64              ; 5 uses
  %min.iters.check164 = icmp ult i32 %i.sn, 14
  br i1 %min.iters.check164, label %.lr.ph342.i.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %iter.check182
  %scevgep151 = getelementptr i8, ptr %.12.i, i64 4
  %i.sq = sub i32 %i.eq, %.0205.lcssa465.i
  %i.sr = zext i32 %i.sq to i64                   ; 2 uses
  %i.ss = shl nuw nsw i64 %i.sr, 1
  %i.st = and i64 %i.ss, 8589934588
end_hunk_0
begin_hunk_1_@_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.1177217.i.epil = phi ptr [ %i.as, %.lr.ph.i.epil ], [ %.1177217.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0183216.i.epil = phi ptr [ %i.at, %.lr.ph.i.epil ], [ %.0183216.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ap = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0183216.i.epil, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.aq = bitcast <8 x i32> %i.ap to <32 x i8>
  %i.ar = add <32 x i8> %i.aq, splat (i8 127)
  store <32 x i8> %i.ar, ptr %.1177217.i.epil, align 1, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %.1177217.i.epil, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0183216.i.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader214.i, label %.lr.ph.i.epil, !llvm.loop !111

.preheader214.i:                                  ; preds = %.preheader214.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d
  %.0192.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.h, %.lr.ph.i.epil ], [ %i.h, %.preheader214.i.loopexit.unr-lcssa ] ; 3 uses
  %.0183.lcssa.i = phi ptr [ %i.al, %bb.d ], [ %i.bp, %.preheader214.i.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.i.epil ] ; 2 uses
  %.1177.lcssa.i = phi ptr [ %.0176233.i, %bb.d ], [ %i.bo, %.preheader214.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.i.epil ] ; 2 uses
  %i.au = or disjoint i32 %.0192.lcssa.i, 1
  %i.av = icmp slt i32 %i.au, %5
  br i1 %i.av, label %.lr.ph223.i, label %.preheader213.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1177217.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.0176233.i, %.lr.ph.i.preheader ] ; 5 uses
  %.0183216.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.al, %.lr.ph.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.aw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0183216.i, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.ax = bitcast <8 x i32> %i.aw to <32 x i8>
  %i.ay = add <32 x i8> %i.ax, splat (i8 127)
  store <32 x i8> %i.ay, ptr %.1177217.i, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 4
  %i.bb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.ba, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bc = bitcast <8 x i32> %i.bb to <32 x i8>
  %i.bd = add <32 x i8> %i.bc, splat (i8 127)
  store <32 x i8> %i.bd, ptr %i.az, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 8
  %i.bg = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bf, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bh = bitcast <8 x i32> %i.bg to <32 x i8>
  %i.bi = add <32 x i8> %i.bh, splat (i8 127)
  store <32 x i8> %i.bi, ptr %i.be, align 1, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 12
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bk, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bm = bitcast <8 x i32> %i.bl to <32 x i8>
  %i.bn = add <32 x i8> %i.bm, splat (i8 127)
  store <32 x i8> %i.bn, ptr %i.bj, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.1177217.i, i64 128 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0183216.i, i64 16 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader214.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !112

.preheader213.i:                                  ; preds = %.lr.ph223.i, %.preheader214.i
  %.1193.lcssa.i = phi i32 [ %.0192.lcssa.i, %.preheader214.i ], [ %i.cl, %.lr.ph223.i ] ; 5 uses
  %.1184.lcssa.i = phi ptr [ %.0183.lcssa.i, %.preheader214.i ], [ %i.ck, %.lr.ph223.i ] ; 2 uses
  %.2178.lcssa.i = phi ptr [ %.1177.lcssa.i, %.preheader214.i ], [ %i.cj, %.lr.ph223.i ] ; 3 uses
  %i.bq = icmp slt i32 %.1193.lcssa.i, %5
  br i1 %i.bq, label %.lr.ph230.i.preheader, label %._crit_edge.i

.lr.ph230.i.preheader:                            ; preds = %.preheader213.i
  %i.br = sub i32 %5, %.1193.lcssa.i
  %xtraiter370 = and i32 %i.br, 3                 ; 2 uses
  %lcmp.mod371.not = icmp eq i32 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %.lr.ph230.i.prol.loopexit, label %.lr.ph230.i.prol

.lr.ph230.i.prol:                                 ; preds = %.lr.ph230.i.preheader, %.lr.ph230.i.prol
  %.3229.i.prol = phi ptr [ %i.bz, %.lr.ph230.i.prol ], [ %.2178.lcssa.i, %.lr.ph230.i.preheader ] ; 2 uses
  %.2185228.i.prol = phi ptr [ %i.ca, %.lr.ph230.i.prol ], [ %.1184.lcssa.i, %.lr.ph230.i.preheader ] ; 2 uses
  %.2194227.i.prol = phi i32 [ %i.cb, %.lr.ph230.i.prol ], [ %.1193.lcssa.i, %.lr.ph230.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph230.i.prol ], [ 0, %.lr.ph230.i.preheader ]
  %i.bs = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.2185228.i.prol, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.bt = bitcast <8 x i32> %i.bs to <32 x i8>
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.bw = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bx = bitcast <4 x i32> %i.bw to <2 x i64>
  %i.by = extractelement <2 x i64> %i.bx, i64 0
  store i64 %i.by, ptr %.3229.i.prol, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.3229.i.prol, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.2185228.i.prol, i64 1 ; 2 uses
  %i.cb = add nuw nsw i32 %.2194227.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter370
  br i1 %prol.iter.cmp.not, label %.lr.ph230.i.prol.loopexit, label %.lr.ph230.i.prol, !llvm.loop !113

.lr.ph230.i.prol.loopexit:                        ; preds = %.lr.ph230.i.prol, %.lr.ph230.i.preheader
  %.lcssa366.unr = phi ptr [ poison, %.lr.ph230.i.preheader ], [ %i.bz, %.lr.ph230.i.prol ]
  %.3229.i.unr = phi ptr [ %.2178.lcssa.i, %.lr.ph230.i.preheader ], [ %i.bz, %.lr.ph230.i.prol ]
  %.2185228.i.unr = phi ptr [ %.1184.lcssa.i, %.lr.ph230.i.preheader ], [ %i.ca, %.lr.ph230.i.prol ]
  %.2194227.i.unr = phi i32 [ %.1193.lcssa.i, %.lr.ph230.i.preheader ], [ %i.cb, %.lr.ph230.i.prol ]
  %i.cc = sub i32 %.1193.lcssa.i, %5
  %i.cd = icmp ugt i32 %i.cc, -4
  br i1 %i.cd, label %._crit_edge.i, label %.lr.ph230.i

.lr.ph223.i:                                      ; preds = %.preheader214.i, %.lr.ph223.i
  %.2178222.i = phi ptr [ %i.cj, %.lr.ph223.i ], [ %.1177.lcssa.i, %.preheader214.i ] ; 2 uses
  %.1184221.i = phi ptr [ %i.ck, %.lr.ph223.i ], [ %.0183.lcssa.i, %.preheader214.i ] ; 2 uses
  %.1193220.i = phi i32 [ %i.cl, %.lr.ph223.i ], [ %.0192.lcssa.i, %.preheader214.i ]
  %i.ce = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1184221.i, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.cf = bitcast <8 x i32> %i.ce to <32 x i8>
  %i.cg = shufflevector <32 x i8> %i.cf, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ch = bitcast <32 x i8> %i.cg to <4 x i64>
  %i.ci = shufflevector <4 x i64> %i.ch, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ci, ptr %.2178222.i, align 1, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %.2178222.i, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1184221.i, i64 2 ; 2 uses
  %i.cl = add nuw nsw i32 %.1193220.i, 2          ; 3 uses
  %i.cm = or disjoint i32 %i.cl, 1
  %i.cn = icmp slt i32 %i.cm, %5
  br i1 %i.cn, label %.lr.ph223.i, label %.preheader213.i, !llvm.loop !114

.lr.ph230.i:                                      ; preds = %.lr.ph230.i.prol.loopexit, %.lr.ph230.i
  %.3229.i = phi ptr [ %i.dw, %.lr.ph230.i ], [ %.3229.i.unr, %.lr.ph230.i.prol.loopexit ] ; 5 uses
  %.2185228.i = phi ptr [ %i.dx, %.lr.ph230.i ], [ %.2185228.i.unr, %.lr.ph230.i.prol.loopexit ] ; 5 uses
  %.2194227.i = phi i32 [ %i.dy, %.lr.ph230.i ], [ %.2194227.i.unr, %.lr.ph230.i.prol.loopexit ]
  %i.co = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.2185228.i, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.cp = bitcast <8 x i32> %i.co to <32 x i8>
  %i.cq = shufflevector <32 x i8> %i.cp, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = bitcast <32 x i8> %i.cq to <8 x i32>
  %i.cs = shufflevector <8 x i32> %i.cr, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ct = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.cu = extractelement <2 x i64> %i.ct, i64 0
  store i64 %i.cu, ptr %.3229.i, align 1, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %.3229.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.2185228.i, i64 1
  %i.cx = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.cw, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.cy = bitcast <8 x i32> %i.cx to <32 x i8>
  %i.cz = shufflevector <32 x i8> %i.cy, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.da = bitcast <32 x i8> %i.cz to <8 x i32>
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dc = bitcast <4 x i32> %i.db to <2 x i64>
  %i.dd = extractelement <2 x i64> %i.dc, i64 0
  store i64 %i.dd, ptr %i.cv, align 1, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %.3229.i, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.2185228.i, i64 2
  %i.dg = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.df, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.dh = bitcast <8 x i32> %i.dg to <32 x i8>
  %i.di = shufflevector <32 x i8> %i.dh, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = bitcast <32 x i8> %i.di to <8 x i32>
  %i.dk = shufflevector <8 x i32> %i.dj, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dl = bitcast <4 x i32> %i.dk to <2 x i64>
  %i.dm = extractelement <2 x i64> %i.dl, i64 0
  store i64 %i.dm, ptr %i.de, align 1, !tbaa !17
  %i.dn = getelementptr inbounds nuw i8, ptr %.3229.i, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %.2185228.i, i64 3
  %i.dp = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.do, <8 x i32> %i.ao, <8 x i32> splat (i32 -1), i8 1)
  %i.dq = bitcast <8 x i32> %i.dp to <32 x i8>
  %i.dr = shufflevector <32 x i8> %i.dq, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = bitcast <32 x i8> %i.dr to <8 x i32>
  %i.dt = shufflevector <8 x i32> %i.ds, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = extractelement <2 x i64> %i.du, i64 0
  store i64 %i.dv, ptr %i.dn, align 1, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %.3229.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.2185228.i, i64 4
  %i.dy = add nuw nsw i32 %.2194227.i, 4          ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.dy, %5
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph230.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %.lr.ph230.i.prol.loopexit, %.lr.ph230.i, %.preheader213.i
  %.3.lcssa.i = phi ptr [ %.2178.lcssa.i, %.preheader213.i ], [ %.lcssa366.unr, %.lr.ph230.i.prol.loopexit ], [ %i.dw, %.lr.ph230.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.dz = or disjoint i64 %indvars.iv.next.i, 7
  %i.ea = icmp samesign ult i64 %i.dz, %i.i
  br i1 %i.ea, label %bb.d, label %.preheader212.loopexit.i, !llvm.loop !116

.preheader209.loopexit.i:                         ; preds = %._crit_edge257.i
  %i.eb = trunc nuw nsw i64 %indvars.iv.next346.i to i32
  br label %.preheader209.i

.preheader209.i:                                  ; preds = %.preheader209.loopexit.i, %.preheader212.i
  %.1180.lcssa.i = phi i32 [ %.0179.lcssa.i, %.preheader212.i ], [ %i.eb, %.preheader209.loopexit.i ] ; 3 uses
  %.4.lcssa.i = phi ptr [ %.0176.lcssa.i, %.preheader212.i ], [ %.7.lcssa.i, %.preheader209.loopexit.i ] ; 2 uses
  %i.ec = or disjoint i32 %.1180.lcssa.i, 1
  %i.ed = icmp slt i32 %i.ec, %3
  br i1 %i.ed, label %.lr.ph292.i, label %.preheader206.i

.lr.ph292.i:                                      ; preds = %.preheader209.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = sext i32 %4 to i64                      ; 3 uses
  %i.eh = icmp sgt i32 %5, 3
  %i.ei = and i32 %5, -4                          ; 3 uses
  %i.ej = zext i32 %.1180.lcssa.i to i64
  %i.ek = sext i32 %3 to i64
  %i.el = sext i32 %2 to i64
  %invariant.op391.i = add nsw i64 %i.ek, -1
  %i.em = add i32 %5, -2
  %i.en = add i32 %5, -2
  %i.eo = add i32 %5, -4
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 1
  %i.er = and i64 %i.eq, 8589934584
  %i.es = and i64 %i.ep, 4294967292
  %i.et = add i32 %5, -4                          ; 3 uses
  %i.eu = lshr i32 %i.et, 2
  %narrow = add nuw nsw i32 %i.eu, 1
  %i.ev = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check202 = icmp samesign ult i32 %i.et, 12
  %min.iters.check204 = icmp ult i32 %i.et, 60
  %i.ew = and i64 %i.ev, 12
  %n.vec206 = and i64 %i.ev, 2147483632           ; 6 uses
  %i.ex = trunc nuw nsw i64 %n.vec206 to i32
  %i.ey = shl i32 %i.ex, 2
  %i.ez = shl nuw nsw i64 %n.vec206, 2            ; 2 uses
  %i.fa = shl nuw nsw i64 %n.vec206, 3
  %cmp.n225 = icmp eq i64 %n.vec206, %i.ev
  %min.epilog.iters.check229 = icmp eq i64 %i.ew, 0
  %n.vec232 = and i64 %i.ev, 2147483644           ; 5 uses
  %i.fb = trunc nuw nsw i64 %n.vec232 to i32
  %i.fc = shl i32 %i.fb, 2
  %i.fd = shl nuw nsw i64 %n.vec232, 2            ; 2 uses
  %i.fe = shl nuw nsw i64 %n.vec232, 3
  %cmp.n251 = icmp eq i64 %n.vec232, %i.ev
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge257.i, %.lr.ph261.i
  %indvars.iv345.i = phi i64 [ %i.w, %.lr.ph261.i ], [ %indvars.iv.next346.i, %._crit_edge257.i ] ; 2 uses
  %.4260.i = phi ptr [ %.0176.lcssa.i, %.lr.ph261.i ], [ %.7.lcssa.i, %._crit_edge257.i ] ; 3 uses
  %i.ff = add nsw i64 %indvars.iv345.i, %i.y
  %i.fg = load ptr, ptr %0, align 8, !tbaa !14
  %i.fh = load i32, ptr %i.r, align 4, !tbaa !15  ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul nsw i64 %i.ff, %i.fi
  %i.fk = load i64, ptr %i.s, align 8, !tbaa !16
  %i.fl = mul i64 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.t ; 3 uses
  %i.fo = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %i.fp = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fq = mul <4 x i32> %i.fp, <i32 0, i32 1, i32 2, i32 3> ; 11 uses
  br i1 %i.u, label %.lr.ph242.i.preheader, label %.preheader211.i

.lr.ph242.i.preheader:                            ; preds = %bb.e
  br i1 %i.ac, label %.lr.ph242.i.epil.preheader, label %.lr.ph242.i

.preheader211.i.loopexit.unr-lcssa:               ; preds = %.lr.ph242.i
  br i1 %lcmp.mod374.not, label %.preheader211.i, label %.lr.ph242.i.epil.preheader

.lr.ph242.i.epil.preheader:                       ; preds = %.preheader211.i.loopexit.unr-lcssa, %.lr.ph242.i.preheader
  %.5240.i.epil.init = phi ptr [ %.4260.i, %.lr.ph242.i.preheader ], [ %i.gq, %.preheader211.i.loopexit.unr-lcssa ]
  %.0189238.i.epil.init = phi ptr [ %i.fn, %.lr.ph242.i.preheader ], [ %i.gr, %.preheader211.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod377)
  br label %.lr.ph242.i.epil

.lr.ph242.i.epil:                                 ; preds = %.lr.ph242.i.epil, %.lr.ph242.i.epil.preheader
  %.5240.i.epil = phi ptr [ %i.fu, %.lr.ph242.i.epil ], [ %.5240.i.epil.init, %.lr.ph242.i.epil.preheader ] ; 2 uses
  %.0189238.i.epil = phi ptr [ %i.fv, %.lr.ph242.i.epil ], [ %.0189238.i.epil.init, %.lr.ph242.i.epil.preheader ] ; 2 uses
  %epil.iter373 = phi i32 [ %epil.iter373.next, %.lr.ph242.i.epil ], [ 0, %.lr.ph242.i.epil.preheader ]
  %i.fr = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0189238.i.epil, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.fs = bitcast <4 x i32> %i.fr to <16 x i8>
  %i.ft = add <16 x i8> %i.fs, splat (i8 127)
  store <16 x i8> %i.ft, ptr %.5240.i.epil, align 1, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %.5240.i.epil, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0189238.i.epil, i64 4 ; 2 uses
  %epil.iter373.next = add i32 %epil.iter373, 1   ; 2 uses
  %epil.iter373.cmp.not = icmp eq i32 %epil.iter373.next, %xtraiter372
  br i1 %epil.iter373.cmp.not, label %.preheader211.i, label %.lr.ph242.i.epil, !llvm.loop !117

.preheader211.i:                                  ; preds = %.preheader211.i.loopexit.unr-lcssa, %.lr.ph242.i.epil, %bb.e
  %.0189.lcssa.i = phi ptr [ %i.fn, %bb.e ], [ %i.gr, %.preheader211.i.loopexit.unr-lcssa ], [ %i.fv, %.lr.ph242.i.epil ] ; 2 uses
  %.0186.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.v, %.lr.ph242.i.epil ], [ %i.v, %.preheader211.i.loopexit.unr-lcssa ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.4260.i, %bb.e ], [ %i.gq, %.preheader211.i.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph242.i.epil ] ; 2 uses
  %i.fw = or disjoint i32 %.0186.lcssa.i, 1
  %i.fx = icmp slt i32 %i.fw, %5
  br i1 %i.fx, label %.lr.ph249.i, label %.preheader210.i

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %.5240.i = phi ptr [ %i.gq, %.lr.ph242.i ], [ %.4260.i, %.lr.ph242.i.preheader ] ; 5 uses
  %.0189238.i = phi ptr [ %i.gr, %.lr.ph242.i ], [ %i.fn, %.lr.ph242.i.preheader ] ; 5 uses
  %niter379 = phi i32 [ %niter379.next.3, %.lr.ph242.i ], [ 0, %.lr.ph242.i.preheader ]
  %i.fy = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0189238.i, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.fz = bitcast <4 x i32> %i.fy to <16 x i8>
  %i.ga = add <16 x i8> %i.fz, splat (i8 127)
  store <16 x i8> %i.ga, ptr %.5240.i, align 1, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %.5240.i, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %.0189238.i, i64 4
  %i.gd = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gc, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.ge = bitcast <4 x i32> %i.gd to <16 x i8>
  %i.gf = add <16 x i8> %i.ge, splat (i8 127)
  store <16 x i8> %i.gf, ptr %i.gb, align 1, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %.5240.i, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %.0189238.i, i64 8
  %i.gi = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gh, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.gj = bitcast <4 x i32> %i.gi to <16 x i8>
  %i.gk = add <16 x i8> %i.gj, splat (i8 127)
  store <16 x i8> %i.gk, ptr %i.gg, align 1, !tbaa !17
  %i.gl = getelementptr inbounds nuw i8, ptr %.5240.i, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %.0189238.i, i64 12
  %i.gn = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gm, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.go = bitcast <4 x i32> %i.gn to <16 x i8>
  %i.gp = add <16 x i8> %i.go, splat (i8 127)
  store <16 x i8> %i.gp, ptr %i.gl, align 1, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %.5240.i, i64 64 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0189238.i, i64 16 ; 3 uses
  %niter379.next.3 = add nuw nsw i32 %niter379, 4 ; 2 uses
  %niter379.ncmp.3.not = icmp eq i32 %niter379.next.3, %unroll_iter378
  br i1 %niter379.ncmp.3.not, label %.preheader211.i.loopexit.unr-lcssa, label %.lr.ph242.i, !llvm.loop !118

.preheader210.i:                                  ; preds = %.lr.ph249.i, %.preheader211.i
  %.1190.lcssa.i = phi ptr [ %.0189.lcssa.i, %.preheader211.i ], [ %i.hk, %.lr.ph249.i ] ; 2 uses
  %.1187.lcssa.i = phi i32 [ %.0186.lcssa.i, %.preheader211.i ], [ %i.hl, %.lr.ph249.i ] ; 5 uses
  %.6.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader211.i ], [ %i.hj, %.lr.ph249.i ] ; 3 uses
  %i.gs = icmp slt i32 %.1187.lcssa.i, %5
  br i1 %i.gs, label %.lr.ph256.i.preheader, label %._crit_edge257.i

.lr.ph256.i.preheader:                            ; preds = %.preheader210.i
  %i.gt = sub i32 %5, %.1187.lcssa.i
  %xtraiter380 = and i32 %i.gt, 3                 ; 2 uses
  %lcmp.mod381.not = icmp eq i32 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.lr.ph256.i.prol.loopexit, label %.lr.ph256.i.prol

.lr.ph256.i.prol:                                 ; preds = %.lr.ph256.i.preheader, %.lr.ph256.i.prol
  %.7255.i.prol = phi ptr [ %i.gz, %.lr.ph256.i.prol ], [ %.6.lcssa.i, %.lr.ph256.i.preheader ] ; 2 uses
  %.2188254.i.prol = phi i32 [ %i.hb, %.lr.ph256.i.prol ], [ %.1187.lcssa.i, %.lr.ph256.i.preheader ]
  %.2191253.i.prol = phi ptr [ %i.ha, %.lr.ph256.i.prol ], [ %.1190.lcssa.i, %.lr.ph256.i.preheader ] ; 2 uses
  %prol.iter382 = phi i32 [ %prol.iter382.next, %.lr.ph256.i.prol ], [ 0, %.lr.ph256.i.preheader ]
  %i.gu = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.2191253.i.prol, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.gv = bitcast <4 x i32> %i.gu to <16 x i8>
  %i.gw = shufflevector <16 x i8> %i.gv, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gx = bitcast <16 x i8> %i.gw to <4 x float>
  %i.gy = extractelement <4 x float> %i.gx, i64 0
  store float %i.gy, ptr %.7255.i.prol, align 1, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %.7255.i.prol, i64 4 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.2191253.i.prol, i64 1 ; 2 uses
  %i.hb = add nuw nsw i32 %.2188254.i.prol, 1     ; 2 uses
  %prol.iter382.next = add i32 %prol.iter382, 1   ; 2 uses
  %prol.iter382.cmp.not = icmp eq i32 %prol.iter382.next, %xtraiter380
  br i1 %prol.iter382.cmp.not, label %.lr.ph256.i.prol.loopexit, label %.lr.ph256.i.prol, !llvm.loop !119

.lr.ph256.i.prol.loopexit:                        ; preds = %.lr.ph256.i.prol, %.lr.ph256.i.preheader
  %.lcssa360.unr = phi ptr [ poison, %.lr.ph256.i.preheader ], [ %i.gz, %.lr.ph256.i.prol ]
  %.7255.i.unr = phi ptr [ %.6.lcssa.i, %.lr.ph256.i.preheader ], [ %i.gz, %.lr.ph256.i.prol ]
  %.2188254.i.unr = phi i32 [ %.1187.lcssa.i, %.lr.ph256.i.preheader ], [ %i.hb, %.lr.ph256.i.prol ]
  %.2191253.i.unr = phi ptr [ %.1190.lcssa.i, %.lr.ph256.i.preheader ], [ %i.ha, %.lr.ph256.i.prol ]
  %i.hc = sub i32 %.1187.lcssa.i, %5
  %i.hd = icmp ugt i32 %i.hc, -4
  br i1 %i.hd, label %._crit_edge257.i, label %.lr.ph256.i

.lr.ph249.i:                                      ; preds = %.preheader211.i, %.lr.ph249.i
  %.6248.i = phi ptr [ %i.hj, %.lr.ph249.i ], [ %.5.lcssa.i, %.preheader211.i ] ; 2 uses
  %.1187247.i = phi i32 [ %i.hl, %.lr.ph249.i ], [ %.0186.lcssa.i, %.preheader211.i ]
  %.1190246.i = phi ptr [ %i.hk, %.lr.ph249.i ], [ %.0189.lcssa.i, %.preheader211.i ] ; 2 uses
  %i.he = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1190246.i, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.hf = bitcast <4 x i32> %i.he to <16 x i8>
  %i.hg = shufflevector <16 x i8> %i.hf, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = bitcast <16 x i8> %i.hg to <2 x i64>
  %i.hi = extractelement <2 x i64> %i.hh, i64 0
  store i64 %i.hi, ptr %.6248.i, align 1, !tbaa !17
  %i.hj = getelementptr inbounds nuw i8, ptr %.6248.i, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.1190246.i, i64 2 ; 2 uses
  %i.hl = add nuw nsw i32 %.1187247.i, 2          ; 3 uses
  %i.hm = or disjoint i32 %i.hl, 1
  %i.hn = icmp slt i32 %i.hm, %5
  br i1 %i.hn, label %.lr.ph249.i, label %.preheader210.i, !llvm.loop !120

.lr.ph256.i:                                      ; preds = %.lr.ph256.i.prol.loopexit, %.lr.ph256.i
  %.7255.i = phi ptr [ %i.io, %.lr.ph256.i ], [ %.7255.i.unr, %.lr.ph256.i.prol.loopexit ] ; 5 uses
  %.2188254.i = phi i32 [ %i.iq, %.lr.ph256.i ], [ %.2188254.i.unr, %.lr.ph256.i.prol.loopexit ]
  %.2191253.i = phi ptr [ %i.ip, %.lr.ph256.i ], [ %.2191253.i.unr, %.lr.ph256.i.prol.loopexit ] ; 5 uses
  %i.ho = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.2191253.i, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.hp = bitcast <4 x i32> %i.ho to <16 x i8>
  %i.hq = shufflevector <16 x i8> %i.hp, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hr = bitcast <16 x i8> %i.hq to <4 x float>
  %i.hs = extractelement <4 x float> %i.hr, i64 0
  store float %i.hs, ptr %.7255.i, align 1, !tbaa !17
  %i.ht = getelementptr inbounds nuw i8, ptr %.7255.i, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.2191253.i, i64 1
  %i.hv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hu, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.hw = bitcast <4 x i32> %i.hv to <16 x i8>
  %i.hx = shufflevector <16 x i8> %i.hw, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hy = bitcast <16 x i8> %i.hx to <4 x float>
  %i.hz = extractelement <4 x float> %i.hy, i64 0
  store float %i.hz, ptr %i.ht, align 1, !tbaa !17
  %i.ia = getelementptr inbounds nuw i8, ptr %.7255.i, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %.2191253.i, i64 2
  %i.ic = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ib, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.id = bitcast <4 x i32> %i.ic to <16 x i8>
  %i.ie = shufflevector <16 x i8> %i.id, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.if = bitcast <16 x i8> %i.ie to <4 x float>
  %i.ig = extractelement <4 x float> %i.if, i64 0
  store float %i.ig, ptr %i.ia, align 1, !tbaa !17
  %i.ih = getelementptr inbounds nuw i8, ptr %.7255.i, i64 12
  %i.ii = getelementptr inbounds nuw i8, ptr %.2191253.i, i64 3
  %i.ij = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ii, <4 x i32> %i.fq, <4 x i32> splat (i32 -1), i8 1)
  %i.ik = bitcast <4 x i32> %i.ij to <16 x i8>
  %i.il = shufflevector <16 x i8> %i.ik, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.im = bitcast <16 x i8> %i.il to <4 x float>
  %i.in = extractelement <4 x float> %i.im, i64 0
  store float %i.in, ptr %i.ih, align 1, !tbaa !17
  %i.io = getelementptr inbounds nuw i8, ptr %.7255.i, i64 16 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.2191253.i, i64 4
  %i.iq = add nuw nsw i32 %.2188254.i, 4          ; 2 uses
  %exitcond344.not.i.3 = icmp eq i32 %i.iq, %5
  br i1 %exitcond344.not.i.3, label %._crit_edge257.i, label %.lr.ph256.i, !llvm.loop !121

._crit_edge257.i:                                 ; preds = %.lr.ph256.i.prol.loopexit, %.lr.ph256.i, %.preheader210.i
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader210.i ], [ %.lcssa360.unr, %.lr.ph256.i.prol.loopexit ], [ %i.io, %.lr.ph256.i ] ; 2 uses
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 4 ; 3 uses
  %i.ir = icmp slt i64 %indvars.iv.next346.i, %invariant.op.i
  br i1 %i.ir, label %bb.e, label %.preheader209.loopexit.i, !llvm.loop !122

.preheader206.loopexit.i:                         ; preds = %._crit_edge288.i
  %i.is = trunc nuw nsw i64 %indvars.iv.next350.i to i32
  br label %.preheader206.i

.preheader206.i:                                  ; preds = %.preheader206.loopexit.i, %.preheader209.i
  %.2181.lcssa.i = phi i32 [ %.1180.lcssa.i, %.preheader209.i ], [ %i.is, %.preheader206.loopexit.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader209.i ], [ %.11.lcssa.i, %.preheader206.loopexit.i ] ; 2 uses
  %i.it = icmp slt i32 %.2181.lcssa.i, %3
  br i1 %i.it, label %.lr.ph311.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph311.i:                                      ; preds = %.preheader206.i
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iw = sext i32 %4 to i64                      ; 4 uses
  %i.ix = icmp sgt i32 %5, 3
  br i1 %i.ix, label %.lr.ph299.us.preheader.i, label %.lr.ph311.split.i

.lr.ph299.us.preheader.i:                         ; preds = %.lr.ph311.i
  %i.iy = and i32 %5, 2147483644                  ; 7 uses
  %i.iz = sext i32 %.2181.lcssa.i to i64          ; 2 uses
  %i.ja = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count360.i = sext i32 %3 to i64
  %.not = icmp eq i32 %i.iy, %5
  %i.jb = add nsw i64 %i.iz, %i.ja
  %i.jc = or disjoint i32 %i.iy, 1
  %smax = tail call i32 @llvm.umax.i32(i32 %5, i32 %i.jc)
  %i.jd = xor i32 %i.iy, -1
  %i.je = add nsw i32 %smax, %i.jd                ; 3 uses
  %i.jf = zext i32 %i.je to i64
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 5 uses
  %i.jh = add nsw i32 %5, -4                      ; 4 uses
  %i.ji = and i32 %i.jh, -4
  %i.jj = zext nneg i32 %i.ji to i64              ; 2 uses
  %i.jk = lshr i32 %i.jh, 2
  %narrow341 = add nuw nsw i32 %i.jk, 1
  %i.jl = zext nneg i32 %narrow341 to i64         ; 5 uses
  %min.iters.check299 = icmp ult i32 %i.jh, 12
  %min.iters.check301 = icmp ult i32 %i.jh, 124
  %i.jm = and i64 %i.jl, 28
  %n.vec303 = and i64 %i.jl, 2147483616           ; 5 uses
  %i.jn = trunc nuw nsw i64 %n.vec303 to i32
  %i.jo = shl nuw nsw i32 %i.jn, 2
  %i.jp = shl nuw nsw i64 %n.vec303, 2            ; 2 uses
  %cmp.n316 = icmp eq i64 %n.vec303, %i.jl
  %min.epilog.iters.check320 = icmp eq i64 %i.jm, 0
  %n.vec323 = and i64 %i.jl, 2147483644           ; 4 uses
  %i.jq = trunc nuw nsw i64 %n.vec323 to i32
  %i.jr = shl nuw nsw i32 %i.jq, 2
  %i.js = shl nuw nsw i64 %n.vec323, 2            ; 2 uses
  %cmp.n336 = icmp eq i64 %n.vec323, %i.jl
  %min.iters.check258 = icmp ult i32 %i.je, 7
  %min.iters.check260 = icmp ult i32 %i.je, 127
  %i.jt = and i64 %i.jg, 120
  %n.vec262 = and i64 %i.jg, 8589934464           ; 6 uses
  %i.ju = trunc i64 %n.vec262 to i32
  %i.jv = add i32 %i.iy, %i.ju
  %cmp.n273 = icmp eq i64 %i.jg, %n.vec262
  %min.epilog.iters.check277 = icmp eq i64 %i.jt, 0
  %n.vec280 = and i64 %i.jg, 8589934584           ; 5 uses
  %i.jw = trunc i64 %n.vec280 to i32
  %i.jx = add i32 %i.iy, %i.jw
  %cmp.n288 = icmp eq i64 %i.jg, %n.vec280
  br label %iter.check317

iter.check317:                                    ; preds = %._crit_edge307.us.i, %.lr.ph299.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge307.us.i ], [ 0, %.lr.ph299.us.preheader.i ] ; 2 uses
  %indvars.iv357.i = phi i64 [ %indvars.iv.next358.i, %._crit_edge307.us.i ], [ %i.iz, %.lr.ph299.us.preheader.i ] ; 2 uses
  %.12310.us.i = phi ptr [ %.14.lcssa.us.i, %._crit_edge307.us.i ], [ %.8.lcssa.i, %.lr.ph299.us.preheader.i ] ; 9 uses
  %.12310.us.i257 = ptrtoaddr ptr %.12310.us.i to i64
  %i.jy = add i64 %i.jb, %indvar
  %i.jz = add i64 %indvars.iv357.i, %i.ja
  %i.ka = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.kb = ptrtoaddr ptr %i.ka to i64
  %i.kc = load i32, ptr %i.iu, align 4, !tbaa !15
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = mul i64 %i.jz, %i.kd
  %i.kf = load i64, ptr %i.iv, align 8, !tbaa !16 ; 2 uses
  %i.kg = mul i64 %i.ke, %i.kf                    ; 2 uses
  %i.kh = getelementptr i8, ptr %i.ka, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.kh, i64 %i.iw  ; 7 uses
  br i1 %min.iters.check299, label %vec.epilog.scalar.ph319.preheader, label %vector.memcheck292

vector.memcheck292:                               ; preds = %iter.check317
  %i.kj = getelementptr i8, ptr %.12310.us.i, i64 %i.jj
  %scevgep293 = getelementptr i8, ptr %i.kj, i64 4
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.jj
  %i.kl = getelementptr i8, ptr %i.kk, i64 %i.iw
  %scevgep294 = getelementptr i8, ptr %i.kl, i64 4
  %scevgep295 = getelementptr i8, ptr %scevgep294, i64 %i.kg
  %bound0296 = icmp ult ptr %.12310.us.i, %scevgep295
  %bound1297 = icmp ult ptr %i.ki, %scevgep293
  %found.conflict298 = and i1 %bound0296, %bound1297
  br i1 %found.conflict298, label %vec.epilog.scalar.ph319.preheader, label %vector.main.loop.iter.check300

vector.main.loop.iter.check300:                   ; preds = %vector.memcheck292
  br i1 %min.iters.check301, label %vec.epilog.ph321, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check300
  %i.km = getelementptr i8, ptr %i.ki, i64 %i.jp  ; 2 uses
  %i.kn = getelementptr i8, ptr %.12310.us.i, i64 %i.jp ; 2 uses
  br label %vector.body304

vector.body304:                                   ; preds = %vector.ph302, %vector.body304
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next314, %vector.body304 ] ; 2 uses
  %i.ko = shl i64 %index305, 2                    ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.ki, i64 %i.ko
  %next.gep307 = getelementptr i8, ptr %.12310.us.i, i64 %i.ko
  %wide.vec308 = load <128 x i8>, ptr %next.gep306, align 1, !tbaa !17, !alias.scope !156
  %interleaved.vec313 = add <128 x i8> %wide.vec308, splat (i8 127)
  store <128 x i8> %interleaved.vec313, ptr %next.gep307, align 1, !tbaa !17, !alias.scope !157, !noalias !156
  %index.next314 = add nuw i64 %index305, 32      ; 2 uses
  %i.kp = icmp eq i64 %index.next314, %n.vec303
  br i1 %i.kp, label %middle.block315, label %vector.body304, !llvm.loop !126

middle.block315:                                  ; preds = %vector.body304
  br i1 %cmp.n316, label %..preheader_crit_edge.us.i, label %vec.epilog.iter.check318

vec.epilog.iter.check318:                         ; preds = %middle.block315
  br i1 %min.epilog.iters.check320, label %vec.epilog.scalar.ph319.preheader, label %vec.epilog.ph321, !prof !26

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check300, %vec.epilog.iter.check318
  %vec.epilog.resume.val322 = phi i64 [ %n.vec303, %vec.epilog.iter.check318 ], [ 0, %vector.main.loop.iter.check300 ]
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.js  ; 2 uses
  %i.kr = getelementptr i8, ptr %.12310.us.i, i64 %i.js ; 2 uses
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index325 = phi i64 [ %vec.epilog.resume.val322, %vec.epilog.ph321 ], [ %index.next334, %vec.epilog.vector.body324 ] ; 2 uses
  %i.ks = shl i64 %index325, 2                    ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.ki, i64 %i.ks
  %next.gep327 = getelementptr i8, ptr %.12310.us.i, i64 %i.ks
  %wide.vec328 = load <16 x i8>, ptr %next.gep326, align 1, !tbaa !17, !alias.scope !156
  %interleaved.vec333 = add <16 x i8> %wide.vec328, splat (i8 127)
  store <16 x i8> %interleaved.vec333, ptr %next.gep327, align 1, !tbaa !17, !alias.scope !157, !noalias !156
  %index.next334 = add nuw i64 %index325, 4       ; 2 uses
  %i.kt = icmp eq i64 %index.next334, %n.vec323
  br i1 %i.kt, label %vec.epilog.middle.block335, label %vec.epilog.vector.body324, !llvm.loop !127

vec.epilog.middle.block335:                       ; preds = %vec.epilog.vector.body324
  br i1 %cmp.n336, label %..preheader_crit_edge.us.i, label %vec.epilog.scalar.ph319.preheader

vec.epilog.scalar.ph319.preheader:                ; preds = %iter.check317, %vector.memcheck292, %vec.epilog.iter.check318, %vec.epilog.middle.block335
  %.0297.us.i.ph = phi i32 [ 0, %iter.check317 ], [ 0, %vector.memcheck292 ], [ %i.jo, %vec.epilog.iter.check318 ], [ %i.jr, %vec.epilog.middle.block335 ]
  %.0166296.us.i.ph = phi ptr [ %i.ki, %iter.check317 ], [ %i.ki, %vector.memcheck292 ], [ %i.km, %vec.epilog.iter.check318 ], [ %i.kq, %vec.epilog.middle.block335 ]
  %.13295.us.i.ph = phi ptr [ %.12310.us.i, %iter.check317 ], [ %.12310.us.i, %vector.memcheck292 ], [ %i.kn, %vec.epilog.iter.check318 ], [ %i.kr, %vec.epilog.middle.block335 ]
  br label %vec.epilog.scalar.ph319

vec.epilog.scalar.ph319:                          ; preds = %vec.epilog.scalar.ph319.preheader, %vec.epilog.scalar.ph319
  %.0297.us.i = phi i32 [ %i.lk, %vec.epilog.scalar.ph319 ], [ %.0297.us.i.ph, %vec.epilog.scalar.ph319.preheader ]
  %.0166296.us.i = phi ptr [ %i.lj, %vec.epilog.scalar.ph319 ], [ %.0166296.us.i.ph, %vec.epilog.scalar.ph319.preheader ] ; 5 uses
  %.13295.us.i = phi ptr [ %i.li, %vec.epilog.scalar.ph319 ], [ %.13295.us.i.ph, %vec.epilog.scalar.ph319.preheader ] ; 5 uses
  %i.ku = load i8, ptr %.0166296.us.i, align 1, !tbaa !17
  %i.kv = add i8 %i.ku, 127
  store i8 %i.kv, ptr %.13295.us.i, align 1, !tbaa !17
  %i.kw = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !17
  %i.ky = add i8 %i.kx, 127
  %i.kz = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 1
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !17
  %i.la = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !17
  %i.lc = add i8 %i.lb, 127
  %i.ld = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 2
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 3
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !17
  %i.lg = add i8 %i.lf, 127
  %i.lh = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 3
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !17
  %i.li = getelementptr inbounds nuw i8, ptr %.13295.us.i, i64 4 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0166296.us.i, i64 4 ; 2 uses
  %i.lk = add nuw nsw i32 %.0297.us.i, 4          ; 2 uses
  %i.ll = or disjoint i32 %i.lk, 3
  %i.lm = icmp slt i32 %i.ll, %5
  br i1 %i.lm, label %vec.epilog.scalar.ph319, label %..preheader_crit_edge.us.i, !llvm.loop !128

.lr.ph306.us.i:                                   ; preds = %.lr.ph306.us.i.preheader, %.lr.ph306.us.i
  %.1305.us.i = phi i32 [ %i.lq, %.lr.ph306.us.i ], [ %.1305.us.i.ph, %.lr.ph306.us.i.preheader ]
  %.1167304.us.i = phi ptr [ %i.lp, %.lr.ph306.us.i ], [ %.1167304.us.i.ph, %.lr.ph306.us.i.preheader ] ; 2 uses
  %.14303.us.i = phi ptr [ %i.lo, %.lr.ph306.us.i ], [ %.14303.us.i.ph, %.lr.ph306.us.i.preheader ] ; 2 uses
  %i.ln = load i8, ptr %.1167304.us.i, align 1, !tbaa !17
  store i8 %i.ln, ptr %.14303.us.i, align 1, !tbaa !17
  %i.lo = getelementptr inbounds nuw i8, ptr %.14303.us.i, i64 1 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.1167304.us.i, i64 1
  %i.lq = add nuw nsw i32 %.1305.us.i, 1          ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %5
  br i1 %i.lr, label %.lr.ph306.us.i, label %._crit_edge307.us.i, !llvm.loop !129

._crit_edge307.us.i:                              ; preds = %.lr.ph306.us.i, %middle.block272, %vec.epilog.middle.block287, %..preheader_crit_edge.us.i
  %.14.lcssa.us.i = phi ptr [ %.lcssa84, %..preheader_crit_edge.us.i ], [ %i.mh, %vec.epilog.middle.block287 ], [ %i.ly, %middle.block272 ], [ %i.lo, %.lr.ph306.us.i ]
  %indvars.iv.next358.i = add nuw nsw i64 %indvars.iv357.i, 1 ; 2 uses
  %exitcond361.not.i = icmp eq i64 %indvars.iv.next358.i, %wide.trip.count360.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond361.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check317, !llvm.loop !130

..preheader_crit_edge.us.i:                       ; preds = %vec.epilog.scalar.ph319, %vec.epilog.middle.block335, %middle.block315
  %.lcssa84 = phi ptr [ %i.kr, %vec.epilog.middle.block335 ], [ %i.kn, %middle.block315 ], [ %i.li, %vec.epilog.scalar.ph319 ] ; 7 uses
  %.lcssa = phi ptr [ %i.kq, %vec.epilog.middle.block335 ], [ %i.km, %middle.block315 ], [ %i.lj, %vec.epilog.scalar.ph319 ] ; 6 uses
  br i1 %.not, label %._crit_edge307.us.i, label %iter.check274

iter.check274:                                    ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check258, label %.lr.ph306.us.i.preheader, label %vector.memcheck256

vector.memcheck256:                               ; preds = %iter.check274
  %i.ls = mul i64 %i.jy, %i.kf
  %i.lt = mul i64 %i.ls, %i.kd
  %i.lu = add i64 %i.lt, %i.iw
  %i.lv = add i64 %i.lu, %i.kb
  %i.lw = sub i64 %i.lv, %.12310.us.i257
  %diff.check = icmp ugt i64 %i.lw, -128
  br i1 %diff.check, label %.lr.ph306.us.i.preheader, label %vector.main.loop.iter.check259

vector.main.loop.iter.check259:                   ; preds = %vector.memcheck256
  br i1 %min.iters.check260, label %vec.epilog.ph278, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check259
  %i.lx = getelementptr i8, ptr %.lcssa, i64 %n.vec262
  %i.ly = getelementptr i8, ptr %.lcssa84, i64 %n.vec262 ; 2 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.ph261, %vector.body263
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next271, %vector.body263 ] ; 3 uses
  %next.gep265 = getelementptr i8, ptr %.lcssa, i64 %index264 ; 4 uses
  %next.gep266 = getelementptr i8, ptr %.lcssa84, i64 %index264 ; 4 uses
  %i.lz = getelementptr i8, ptr %next.gep265, i64 32
  %i.ma = getelementptr i8, ptr %next.gep265, i64 64
  %i.mb = getelementptr i8, ptr %next.gep265, i64 96
  %wide.load267 = load <32 x i8>, ptr %next.gep265, align 1, !tbaa !17
  %wide.load268 = load <32 x i8>, ptr %i.lz, align 1, !tbaa !17
  %wide.load269 = load <32 x i8>, ptr %i.ma, align 1, !tbaa !17
  %wide.load270 = load <32 x i8>, ptr %i.mb, align 1, !tbaa !17
  %i.mc = getelementptr i8, ptr %next.gep266, i64 32
  %i.md = getelementptr i8, ptr %next.gep266, i64 64
  %i.me = getelementptr i8, ptr %next.gep266, i64 96
  store <32 x i8> %wide.load267, ptr %next.gep266, align 1, !tbaa !17
  store <32 x i8> %wide.load268, ptr %i.mc, align 1, !tbaa !17
  store <32 x i8> %wide.load269, ptr %i.md, align 1, !tbaa !17
  store <32 x i8> %wide.load270, ptr %i.me, align 1, !tbaa !17
  %index.next271 = add nuw i64 %index264, 128     ; 2 uses
  %i.mf = icmp eq i64 %index.next271, %n.vec262
  br i1 %i.mf, label %middle.block272, label %vector.body263, !llvm.loop !131

middle.block272:                                  ; preds = %vector.body263
  br i1 %cmp.n273, label %._crit_edge307.us.i, label %vec.epilog.iter.check275

vec.epilog.iter.check275:                         ; preds = %middle.block272
  br i1 %min.epilog.iters.check277, label %.lr.ph306.us.i.preheader, label %vec.epilog.ph278, !prof !24

vec.epilog.ph278:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check275
  %vec.epilog.resume.val279 = phi i64 [ %n.vec262, %vec.epilog.iter.check275 ], [ 0, %vector.main.loop.iter.check259 ]
  %i.mg = getelementptr i8, ptr %.lcssa, i64 %n.vec280
  %i.mh = getelementptr i8, ptr %.lcssa84, i64 %n.vec280 ; 2 uses
  br label %vec.epilog.vector.body281

vec.epilog.vector.body281:                        ; preds = %vec.epilog.vector.body281, %vec.epilog.ph278
  %index282 = phi i64 [ %vec.epilog.resume.val279, %vec.epilog.ph278 ], [ %index.next286, %vec.epilog.vector.body281 ] ; 3 uses
  %next.gep283 = getelementptr i8, ptr %.lcssa, i64 %index282
  %next.gep284 = getelementptr i8, ptr %.lcssa84, i64 %index282
  %wide.load285 = load <8 x i8>, ptr %next.gep283, align 1, !tbaa !17
  store <8 x i8> %wide.load285, ptr %next.gep284, align 1, !tbaa !17
  %index.next286 = add nuw i64 %index282, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next286, %n.vec280
  br i1 %i.mi, label %vec.epilog.middle.block287, label %vec.epilog.vector.body281, !llvm.loop !132

vec.epilog.middle.block287:                       ; preds = %vec.epilog.vector.body281
  br i1 %cmp.n288, label %._crit_edge307.us.i, label %.lr.ph306.us.i.preheader

.lr.ph306.us.i.preheader:                         ; preds = %iter.check274, %vector.memcheck256, %vec.epilog.iter.check275, %vec.epilog.middle.block287
  %.1305.us.i.ph = phi i32 [ %i.iy, %iter.check274 ], [ %i.iy, %vector.memcheck256 ], [ %i.jv, %vec.epilog.iter.check275 ], [ %i.jx, %vec.epilog.middle.block287 ]
  %.1167304.us.i.ph = phi ptr [ %.lcssa, %iter.check274 ], [ %.lcssa, %vector.memcheck256 ], [ %i.lx, %vec.epilog.iter.check275 ], [ %i.mg, %vec.epilog.middle.block287 ]
  %.14303.us.i.ph = phi ptr [ %.lcssa84, %iter.check274 ], [ %.lcssa84, %vector.memcheck256 ], [ %i.ly, %vec.epilog.iter.check275 ], [ %i.mh, %vec.epilog.middle.block287 ]
  br label %.lr.ph306.us.i

.lr.ph311.split.i:                                ; preds = %.lr.ph311.i
  %i.mj = icmp sgt i32 %5, 0
  br i1 %i.mj, label %.preheader.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph311.split.i
  %i.mk = sext i32 %.2181.lcssa.i to i64
  %i.ml = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %exitcond352.not.i = icmp eq i32 %5, 1
  %exitcond352.not.i.1 = icmp eq i32 %5, 2
  br label %.preheader.i

bb.f:                                             ; preds = %._crit_edge288.i, %.lr.ph292.i
  %indvars.iv349.i = phi i64 [ %i.ej, %.lr.ph292.i ], [ %indvars.iv.next350.i, %._crit_edge288.i ] ; 2 uses
  %.8291.i = phi ptr [ %.4.lcssa.i, %.lr.ph292.i ], [ %.11.lcssa.i, %._crit_edge288.i ] ; 10 uses
  %i.mm = add nsw i64 %indvars.iv349.i, %i.el     ; 2 uses
  %i.mn = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.mo = load i32, ptr %i.ee, align 4, !tbaa !15
  %i.mp = sext i32 %i.mo to i64
  %i.mq = load i64, ptr %i.ef, align 8, !tbaa !16
  %i.mr = mul i64 %i.mq, %i.mp                    ; 2 uses
  %i.ms = mul i64 %i.mr, %i.mm                    ; 2 uses
  %i.mt = getelementptr i8, ptr %i.mn, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.mt, i64 %i.eg  ; 8 uses
  %i.mv = add nsw i64 %i.mm, 1
  %i.mw = mul i64 %i.mr, %i.mv                    ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mn, i64 %i.mw
  %i.my = getelementptr i8, ptr %i.mx, i64 %i.eg  ; 8 uses
  br i1 %i.eh, label %iter.check226, label %.preheader208.i

iter.check226:                                    ; preds = %bb.f
  br i1 %min.iters.check202, label %.lr.ph269.i.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %iter.check226
  %i.mz = getelementptr i8, ptr %.8291.i, i64 %i.er
  %scevgep191 = getelementptr i8, ptr %i.mz, i64 8 ; 2 uses
  %i.na = getelementptr i8, ptr %i.mn, i64 %i.es
  %i.nb = getelementptr i8, ptr %i.na, i64 %i.eg
  %scevgep192 = getelementptr i8, ptr %i.nb, i64 4 ; 2 uses
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.mw
  %scevgep194 = getelementptr i8, ptr %scevgep192, i64 %i.ms
  %bound0195 = icmp ult ptr %.8291.i, %scevgep193
  %bound1196 = icmp ult ptr %i.my, %scevgep191
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0198 = icmp ult ptr %.8291.i, %scevgep194
  %bound1199 = icmp ult ptr %i.mu, %scevgep191
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %found.conflict197, %found.conflict200
  br i1 %conflict.rdx201, label %.lr.ph269.i.preheader, label %vector.main.loop.iter.check203

vector.main.loop.iter.check203:                   ; preds = %vector.memcheck190
  br i1 %min.iters.check204, label %vec.epilog.ph230, label %vector.ph205

vector.ph205:                                     ; preds = %vector.main.loop.iter.check203
  %i.nc = getelementptr i8, ptr %i.my, i64 %i.ez  ; 2 uses
  %i.nd = getelementptr i8, ptr %i.mu, i64 %i.ez  ; 2 uses
  %i.ne = getelementptr i8, ptr %.8291.i, i64 %i.fa ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.ph205, %vector.body207
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next223, %vector.body207 ] ; 3 uses
  %i.nf = shl i64 %index208, 2                    ; 2 uses
  %next.gep209 = getelementptr i8, ptr %i.my, i64 %i.nf
  %next.gep210 = getelementptr i8, ptr %i.mu, i64 %i.nf
  %i.ng = shl i64 %index208, 3
  %next.gep211 = getelementptr i8, ptr %.8291.i, i64 %i.ng
  %wide.vec212 = load <64 x i8>, ptr %next.gep210, align 1, !tbaa !17, !alias.scope !158
  %wide.vec217 = load <64 x i8>, ptr %next.gep209, align 1, !tbaa !17, !alias.scope !159
  %i.nh = shufflevector <64 x i8> %wide.vec212, <64 x i8> %wide.vec217, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 4, i32 5, i32 6, i32 7, i32 68, i32 69, i32 70, i32 71, i32 8, i32 9, i32 10, i32 11, i32 72, i32 73, i32 74, i32 75, i32 12, i32 13, i32 14, i32 15, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 80, i32 81, i32 82, i32 83, i32 20, i32 21, i32 22, i32 23, i32 84, i32 85, i32 86, i32 87, i32 24, i32 25, i32 26, i32 27, i32 88, i32 89, i32 90, i32 91, i32 28, i32 29, i32 30, i32 31, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 96, i32 97, i32 98, i32 99, i32 36, i32 37, i32 38, i32 39, i32 100, i32 101, i32 102, i32 103, i32 40, i32 41, i32 42, i32 43, i32 104, i32 105, i32 106, i32 107, i32 44, i32 45, i32 46, i32 47, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 112, i32 113, i32 114, i32 115, i32 52, i32 53, i32 54, i32 55, i32 116, i32 117, i32 118, i32 119, i32 56, i32 57, i32 58, i32 59, i32 120, i32 121, i32 122, i32 123, i32 60, i32 61, i32 62, i32 63, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec222 = add <128 x i8> %i.nh, splat (i8 127)
  store <128 x i8> %interleaved.vec222, ptr %next.gep211, align 1, !tbaa !17, !alias.scope !160, !noalias !161
  %index.next223 = add nuw i64 %index208, 16      ; 2 uses
  %i.ni = icmp eq i64 %index.next223, %n.vec206
  br i1 %i.ni, label %middle.block224, label %vector.body207, !llvm.loop !137

middle.block224:                                  ; preds = %vector.body207
  br i1 %cmp.n225, label %.preheader208.i, label %vec.epilog.iter.check227

vec.epilog.iter.check227:                         ; preds = %middle.block224
  br i1 %min.epilog.iters.check229, label %.lr.ph269.i.preheader, label %vec.epilog.ph230, !prof !22

vec.epilog.ph230:                                 ; preds = %vector.main.loop.iter.check203, %vec.epilog.iter.check227
  %vec.epilog.resume.val231 = phi i64 [ %n.vec206, %vec.epilog.iter.check227 ], [ 0, %vector.main.loop.iter.check203 ]
  %i.nj = getelementptr i8, ptr %i.my, i64 %i.fd  ; 2 uses
  %i.nk = getelementptr i8, ptr %i.mu, i64 %i.fd  ; 2 uses
  %i.nl = getelementptr i8, ptr %.8291.i, i64 %i.fe ; 2 uses
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph230
  %index234 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph230 ], [ %index.next249, %vec.epilog.vector.body233 ] ; 3 uses
  %i.nm = shl i64 %index234, 2                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.my, i64 %i.nm
  %next.gep236 = getelementptr i8, ptr %i.mu, i64 %i.nm
  %i.nn = shl i64 %index234, 3
  %next.gep237 = getelementptr i8, ptr %.8291.i, i64 %i.nn
  %wide.vec238 = load <16 x i8>, ptr %next.gep236, align 1, !tbaa !17, !alias.scope !158
  %wide.vec243 = load <16 x i8>, ptr %next.gep235, align 1, !tbaa !17, !alias.scope !159
  %i.no = shufflevector <16 x i8> %wide.vec238, <16 x i8> %wide.vec243, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec248 = add <32 x i8> %i.no, splat (i8 127)
  store <32 x i8> %interleaved.vec248, ptr %next.gep237, align 1, !tbaa !17, !alias.scope !160, !noalias !161
  %index.next249 = add nuw i64 %index234, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next249, %n.vec232
  br i1 %i.np, label %vec.epilog.middle.block250, label %vec.epilog.vector.body233, !llvm.loop !138

vec.epilog.middle.block250:                       ; preds = %vec.epilog.vector.body233
  br i1 %cmp.n251, label %.preheader208.i, label %.lr.ph269.i.preheader

.lr.ph269.i.preheader:                            ; preds = %iter.check226, %vector.memcheck190, %vec.epilog.iter.check227, %vec.epilog.middle.block250
  %.0168267.i.ph = phi i32 [ 0, %iter.check226 ], [ 0, %vector.memcheck190 ], [ %i.ey, %vec.epilog.iter.check227 ], [ %i.fc, %vec.epilog.middle.block250 ]
  %.0170266.i.ph = phi ptr [ %i.my, %iter.check226 ], [ %i.my, %vector.memcheck190 ], [ %i.nc, %vec.epilog.iter.check227 ], [ %i.nj, %vec.epilog.middle.block250 ]
  %.0173265.i.ph = phi ptr [ %i.mu, %iter.check226 ], [ %i.mu, %vector.memcheck190 ], [ %i.nd, %vec.epilog.iter.check227 ], [ %i.nk, %vec.epilog.middle.block250 ]
  %.9264.i.ph = phi ptr [ %.8291.i, %iter.check226 ], [ %.8291.i, %vector.memcheck190 ], [ %i.ne, %vec.epilog.iter.check227 ], [ %i.nl, %vec.epilog.middle.block250 ]
  br label %.lr.ph269.i

.preheader208.i:                                  ; preds = %.lr.ph269.i, %middle.block224, %vec.epilog.middle.block250, %bb.f
  %.9.lcssa.i = phi ptr [ %.8291.i, %bb.f ], [ %i.nl, %vec.epilog.middle.block250 ], [ %i.ne, %middle.block224 ], [ %i.qa, %.lr.ph269.i ] ; 10 uses
  %.0173.lcssa.i = phi ptr [ %i.mu, %bb.f ], [ %i.nk, %vec.epilog.middle.block250 ], [ %i.nd, %middle.block224 ], [ %i.qb, %.lr.ph269.i ] ; 9 uses
  %.0170.lcssa.i = phi ptr [ %i.my, %bb.f ], [ %i.nj, %vec.epilog.middle.block250 ], [ %i.nc, %middle.block224 ], [ %i.qc, %.lr.ph269.i ] ; 9 uses
  %.0168.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.ei, %vec.epilog.middle.block250 ], [ %i.ei, %middle.block224 ], [ %i.ei, %.lr.ph269.i ] ; 8 uses
  %i.nq = or disjoint i32 %.0168.lcssa.i, 1
  %i.nr = icmp slt i32 %i.nq, %5
  br i1 %i.nr, label %iter.check164, label %.preheader207.i

iter.check164:                                    ; preds = %.preheader208.i
  %i.ns = sub i32 %i.en, %.0168.lcssa.i           ; 3 uses
  %i.nt = lshr i32 %i.ns, 1
  %narrow340 = add nuw i32 %i.nt, 1
  %i.nu = zext i32 %narrow340 to i64              ; 5 uses
  %min.iters.check146 = icmp ult i32 %i.ns, 14
  br i1 %min.iters.check146, label %.lr.ph278.i.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %iter.check164
  %scevgep133 = getelementptr i8, ptr %.9.lcssa.i, i64 4
  %i.nv = sub i32 %i.em, %.0168.lcssa.i
  %i.nw = zext i32 %i.nv to i64                   ; 2 uses
  %i.nx = shl nuw nsw i64 %i.nw, 1
  %i.ny = and i64 %i.nx, 8589934588
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.ny ; 2 uses
  %scevgep135 = getelementptr i8, ptr %.0170.lcssa.i, i64 2
  %i.nz = and i64 %i.nw, 4294967294               ; 2 uses
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.nz
  %scevgep137 = getelementptr i8, ptr %.0173.lcssa.i, i64 2
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.nz
  %bound0139 = icmp ult ptr %.9.lcssa.i, %scevgep136
  %bound1140 = icmp ult ptr %.0170.lcssa.i, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %bound0142 = icmp ult ptr %.9.lcssa.i, %scevgep138
  %bound1143 = icmp ult ptr %.0173.lcssa.i, %scevgep134
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %found.conflict141, %found.conflict144
  br i1 %conflict.rdx145, label %.lr.ph278.i.preheader, label %vector.main.loop.iter.check147

vector.main.loop.iter.check147:                   ; preds = %vector.memcheck132
  %min.iters.check148 = icmp ult i32 %i.ns, 62
  br i1 %min.iters.check148, label %vec.epilog.ph168, label %vector.ph149

vector.ph149:                                     ; preds = %vector.main.loop.iter.check147
  %i.oa = and i64 %i.nu, 24
  %n.vec150 = and i64 %i.nu, 4294967264           ; 6 uses
  %i.ob = trunc nuw i64 %n.vec150 to i32
  %i.oc = shl i32 %i.ob, 1
  %i.od = add i32 %.0168.lcssa.i, %i.oc           ; 2 uses
  %i.oe = shl nuw nsw i64 %n.vec150, 1            ; 2 uses
  %i.of = getelementptr i8, ptr %.0170.lcssa.i, i64 %i.oe ; 2 uses
  %i.og = getelementptr i8, ptr %.0173.lcssa.i, i64 %i.oe ; 2 uses
  %i.oh = shl nuw nsw i64 %n.vec150, 2
  %i.oi = getelementptr i8, ptr %.9.lcssa.i, i64 %i.oh ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.ph149, %vector.body151
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next161, %vector.body151 ] ; 3 uses
  %i.oj = shl i64 %index152, 1                    ; 2 uses
  %next.gep153 = getelementptr i8, ptr %.0170.lcssa.i, i64 %i.oj
  %next.gep154 = getelementptr i8, ptr %.0173.lcssa.i, i64 %i.oj
  %i.ok = shl i64 %index152, 2
  %next.gep155 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.ok
  %wide.vec = load <64 x i8>, ptr %next.gep154, align 1, !tbaa !17, !alias.scope !162
  %wide.vec157 = load <64 x i8>, ptr %next.gep153, align 1, !tbaa !17, !alias.scope !163
  %interleaved.vec160 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec157, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec160, ptr %next.gep155, align 1, !tbaa !17, !alias.scope !164, !noalias !165
  %index.next161 = add nuw i64 %index152, 32      ; 2 uses
  %i.ol = icmp eq i64 %index.next161, %n.vec150
  br i1 %i.ol, label %middle.block162, label %vector.body151, !llvm.loop !143

middle.block162:                                  ; preds = %vector.body151
  %cmp.n163 = icmp eq i64 %n.vec150, %i.nu
  br i1 %cmp.n163, label %.preheader207.i, label %vec.epilog.iter.check165

vec.epilog.iter.check165:                         ; preds = %middle.block162
  %min.epilog.iters.check167 = icmp eq i64 %i.oa, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph278.i.preheader, label %vec.epilog.ph168, !prof !25

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check147, %vec.epilog.iter.check165
  %vec.epilog.resume.val169 = phi i64 [ %n.vec150, %vec.epilog.iter.check165 ], [ 0, %vector.main.loop.iter.check147 ]
  %n.vec170 = and i64 %i.nu, 4294967288           ; 5 uses
  %i.om = trunc nuw i64 %n.vec170 to i32
  %i.on = shl i32 %i.om, 1
  %i.oo = add i32 %.0168.lcssa.i, %i.on           ; 2 uses
  %i.op = shl nuw nsw i64 %n.vec170, 1            ; 2 uses
  %i.oq = getelementptr i8, ptr %.0170.lcssa.i, i64 %i.op ; 2 uses
  %i.or = getelementptr i8, ptr %.0173.lcssa.i, i64 %i.op ; 2 uses
  %i.os = shl nuw nsw i64 %n.vec170, 2
  %i.ot = getelementptr i8, ptr %.9.lcssa.i, i64 %i.os ; 2 uses
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph168
  %index172 = phi i64 [ %vec.epilog.resume.val169, %vec.epilog.ph168 ], [ %index.next183, %vec.epilog.vector.body171 ] ; 3 uses
  %i.ou = shl i64 %index172, 1                    ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.0170.lcssa.i, i64 %i.ou
  %next.gep174 = getelementptr i8, ptr %.0173.lcssa.i, i64 %i.ou
  %i.ov = shl i64 %index172, 2
  %next.gep175 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.ov
  %wide.vec176 = load <16 x i8>, ptr %next.gep174, align 1, !tbaa !17, !alias.scope !162
  %wide.vec179 = load <16 x i8>, ptr %next.gep173, align 1, !tbaa !17, !alias.scope !163
  %interleaved.vec182 = shufflevector <16 x i8> %wide.vec176, <16 x i8> %wide.vec179, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec182, ptr %next.gep175, align 1, !tbaa !17, !alias.scope !164, !noalias !165
end_hunk_1
begin_hunk_2_@_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.vk = add nuw nsw i32 %.0470758.i, 4          ; 2 uses
  %i.vl = or disjoint i32 %i.vk, 3
  %i.vm = icmp slt i32 %i.vl, %5
  br i1 %i.vm, label %.lr.ph761.i, label %bb.l, !llvm.loop !201

bb.l:                                             ; preds = %.lr.ph761.i
  store <8 x i32> %i.vh, ptr %i.vi, align 1, !tbaa !17
  %i.vn = getelementptr inbounds nuw i8, ptr %.11760.i, i64 64
  br label %._crit_edge762.i

._crit_edge762.i:                                 ; preds = %bb.l, %.preheader704.i
  %.8453.lcssa1010.i = phi ptr [ %i.vj, %bb.l ], [ %i.ki, %.preheader704.i ] ; 2 uses
  %.0470.lcssa1008.i = phi i32 [ %i.w, %bb.l ], [ 0, %.preheader704.i ] ; 3 uses
  %.12.i = phi ptr [ %i.vn, %bb.l ], [ %.0439781.i, %.preheader704.i ] ; 2 uses
  %i.vo = or disjoint i32 %.0470.lcssa1008.i, 1
  %i.vp = icmp slt i32 %i.vo, %5
  br i1 %i.vp, label %.lr.ph771.i, label %.preheader702.i

.preheader702.i:                                  ; preds = %.lr.ph771.i, %._crit_edge762.i
  %.1471.lcssa.i = phi i32 [ %.0470.lcssa1008.i, %._crit_edge762.i ], [ %i.wp, %.lr.ph771.i ] ; 2 uses
  %.9454.lcssa.i = phi ptr [ %.8453.lcssa1010.i, %._crit_edge762.i ], [ %i.wo, %.lr.ph771.i ]
  %.13.lcssa.i = phi ptr [ %.12.i, %._crit_edge762.i ], [ %i.wn, %.lr.ph771.i ] ; 2 uses
  %i.vq = icmp slt i32 %.1471.lcssa.i, %5
  br i1 %i.vq, label %.lr.ph778.i, label %.loopexit703.i

.lr.ph771.i:                                      ; preds = %._crit_edge762.i, %.lr.ph771.i
  %.13769.i = phi ptr [ %i.wn, %.lr.ph771.i ], [ %.12.i, %._crit_edge762.i ] ; 2 uses
  %.9454768.i = phi ptr [ %i.wo, %.lr.ph771.i ], [ %.8453.lcssa1010.i, %._crit_edge762.i ] ; 3 uses
  %.1471767.i = phi i32 [ %i.wp, %.lr.ph771.i ], [ %.0470.lcssa1008.i, %._crit_edge762.i ]
  %i.vr = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.9454768.i, <8 x i32> %i.v, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vs = getelementptr inbounds nuw i8, ptr %.9454768.i, i64 4
  %i.vt = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.vs, <8 x i32> %i.v, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vu = fmul fast <8 x float> %i.vr, %i.km      ; 2 uses
  %i.vv = fmul fast <8 x float> %i.vt, %i.km      ; 2 uses
  %i.vw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vu)
  %i.vx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vv)
  %i.vy = fadd fast <8 x float> %i.vw, %i.vu
  %i.vz = fadd fast <8 x float> %i.vx, %i.vv
  %i.wa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vy)
  %i.wb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vz)
  %i.wc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.wa, <8 x i32> %i.wb)
  %i.wd = bitcast <16 x i16> %i.wc to <4 x i64>
  %i.we = shufflevector <4 x i64> %i.wd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.wf = bitcast <4 x i64> %i.we to <16 x i16>
  %i.wg = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.wf, <16 x i16> splat (i16 -127))
  %i.wh = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.wg, <16 x i16> splat (i16 127))
  %i.wi = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.wh, <16 x i16> poison)
  %i.wj = bitcast <32 x i8> %i.wi to <8 x i32>
  %i.wk = shufflevector <8 x i32> %i.wj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wl = bitcast <4 x i32> %i.wk to <16 x i8>
  %i.wm = shufflevector <16 x i8> %i.wl, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.wm, ptr %.13769.i, align 1, !tbaa !17
  %i.wn = getelementptr inbounds nuw i8, ptr %.13769.i, i64 16 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.9454768.i, i64 8 ; 2 uses
  %i.wp = add nuw nsw i32 %.1471767.i, 2          ; 3 uses
  %i.wq = or disjoint i32 %i.wp, 1
  %i.wr = icmp slt i32 %i.wq, %5
  br i1 %i.wr, label %.lr.ph771.i, label %.preheader702.i, !llvm.loop !202

.lr.ph778.i:                                      ; preds = %.preheader702.i, %.lr.ph778.i
  %.14777.i = phi ptr [ %i.xg, %.lr.ph778.i ], [ %.13.lcssa.i, %.preheader702.i ] ; 2 uses
  %.10455776.i = phi ptr [ %i.xh, %.lr.ph778.i ], [ %.9454.lcssa.i, %.preheader702.i ] ; 2 uses
  %.2472775.i = phi i32 [ %i.xi, %.lr.ph778.i ], [ %.1471.lcssa.i, %.preheader702.i ]
  %i.ws = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.10455776.i, <8 x i32> %i.v, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.wt = fmul fast <8 x float> %i.ws, %i.km      ; 2 uses
  %i.wu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wt)
  %i.wv = fadd fast <8 x float> %i.wu, %i.wt
  %i.ww = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wv)
  %i.wx = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ww, <8 x i32> poison)
  %i.wy = bitcast <16 x i16> %i.wx to <8 x i32>
  %i.wz = shufflevector <8 x i32> %i.wy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xa = bitcast <4 x i32> %i.wz to <8 x i16>
  %i.xb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xa, <8 x i16> splat (i16 -127))
  %i.xc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xb, <8 x i16> splat (i16 127))
  %i.xd = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xc, <8 x i16> poison)
  %i.xe = bitcast <16 x i8> %i.xd to <2 x i64>
  %i.xf = extractelement <2 x i64> %i.xe, i64 0
  store i64 %i.xf, ptr %.14777.i, align 8, !tbaa !30
  %i.xg = getelementptr inbounds nuw i8, ptr %.14777.i, i64 8 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.10455776.i, i64 4
  %i.xi = add nuw nsw i32 %.2472775.i, 1          ; 2 uses
  %exitcond950.not.i = icmp eq i32 %i.xi, %5
  br i1 %exitcond950.not.i, label %.loopexit703.i, label %.lr.ph778.i, !llvm.loop !203

.loopexit703.i:                                   ; preds = %.lr.ph778.i, %.lr.ph755.i, %.lr.ph732.i, %.preheader702.i, %.preheader705.i, %.preheader708.i, %bb.i
  %.15.i = phi ptr [ %.0439781.i, %bb.i ], [ %.13.lcssa.i, %.preheader702.i ], [ %i.of, %.lr.ph732.i ], [ %i.sj, %.lr.ph755.i ], [ %.8.lcssa.i, %.preheader705.i ], [ %.3.lcssa.i, %.preheader708.i ], [ %i.xg, %.lr.ph778.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.xj = or disjoint i64 %indvars.iv.next.i, 7
  %i.xk = icmp samesign ult i64 %i.xj, %i.x
  br i1 %i.xk, label %bb.i, label %.preheader701.loopexit.i, !llvm.loop !204

.preheader694.loopexit.i:                         ; preds = %.loopexit696.i.us59, %.loopexit696.i.us, %.loopexit696.i.preheader
  %.us-phi = phi ptr [ %.0439.lcssa.i, %.loopexit696.i.preheader ], [ %.26.i.us, %.loopexit696.i.us ], [ %.26.i.us60, %.loopexit696.i.us59 ]
  %.us-phi55 = phi i64 [ %i.ar, %.loopexit696.i.preheader ], [ %indvars.iv.next955.i.us, %.loopexit696.i.us ], [ %indvars.iv.next955.i.us61, %.loopexit696.i.us59 ]
  %i.xl = trunc nuw nsw i64 %.us-phi55 to i32
  br label %.preheader694.i

.preheader694.i:                                  ; preds = %.preheader694.loopexit.i, %.preheader701.i
  %.1442.lcssa.i = phi i32 [ %.0441.lcssa.i, %.preheader701.i ], [ %i.xl, %.preheader694.loopexit.i ] ; 3 uses
  %.16.lcssa.i = phi ptr [ %.0439.lcssa.i, %.preheader701.i ], [ %.us-phi, %.preheader694.loopexit.i ] ; 2 uses
  %i.xm = or disjoint i32 %.1442.lcssa.i, 1
  %i.xn = icmp slt i32 %i.xm, %3
  br i1 %i.xn, label %.lr.ph865.i, label %.preheader.i

.lr.ph865.i:                                      ; preds = %.preheader694.i
  %i.xo = sext i32 %4 to i64
  %i.xp = icmp sgt i32 %5, 3
  %i.xq = and i32 %5, -4
  %i.xr = zext nneg i32 %.1442.lcssa.i to i64
  %i.xs = sext i32 %3 to i64
  %i.xt = sext i32 %2 to i64
  %invariant.op1107.i = add nsw i64 %i.xs, -1
  %i.xu = shl nuw nsw i64 %i.l, 2                 ; 2 uses
  br label %bb.m

.preheader.loopexit.i:                            ; preds = %._crit_edge861.i
  %i.xv = trunc nuw nsw i64 %indvars.iv.next959.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader694.i
  %.2443.lcssa.i = phi i32 [ %.1442.lcssa.i, %.preheader694.i ], [ %i.xv, %.preheader.loopexit.i ] ; 2 uses
  %.27.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader694.i ], [ %.31.lcssa.i, %.preheader.loopexit.i ]
  %i.xw = icmp slt i32 %.2443.lcssa.i, %3
  br i1 %i.xw, label %.lr.ph888.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph888.i:                                      ; preds = %.preheader.i
  %i.xx = sext i32 %4 to i64
  %i.xy = icmp sgt i32 %5, 3
  %i.xz = and i32 %5, -4
  %i.ya = sext i32 %.2443.lcssa.i to i64
  %i.yb = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.o

bb.m:                                             ; preds = %._crit_edge861.i, %.lr.ph865.i
  %indvars.iv958.i = phi i64 [ %i.xr, %.lr.ph865.i ], [ %indvars.iv.next959.i, %._crit_edge861.i ] ; 2 uses
  %.27864.i = phi ptr [ %.16.lcssa.i, %.lr.ph865.i ], [ %.31.lcssa.i, %._crit_edge861.i ] ; 2 uses
  %i.yc = load ptr, ptr %0, align 8, !tbaa !14
  %i.yd = add nsw i64 %indvars.iv958.i, %i.xt     ; 2 uses
  %i.ye = mul i64 %i.yd, %i.l
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %i.ye
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.xo ; 2 uses
  %i.yh = load ptr, ptr %6, align 8, !tbaa !14
  %i.yi = getelementptr [4 x i8], ptr %i.yh, i64 %i.yd ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !32 ; 3 uses
  %i.yk = getelementptr i8, ptr %i.yi, i64 4
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !32 ; 3 uses
  %i.ym = insertelement <4 x float> poison, float %i.yj, i64 0 ; 2 uses
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yo = insertelement <4 x float> poison, float %i.yl, i64 0 ; 2 uses
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yq = shufflevector <4 x float> %i.ym, <4 x float> %i.yo, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.xp, label %.lr.ph842.i, label %._crit_edge843.i

.lr.ph842.i:                                      ; preds = %bb.m, %.lr.ph842.i
  %.28840.i = phi ptr [ %i.zx, %.lr.ph842.i ], [ %.27864.i, %bb.m ] ; 3 uses
  %.0458837.i = phi i32 [ %i.zz, %.lr.ph842.i ], [ 0, %bb.m ]
  %.0461836.i = phi ptr [ %i.zy, %.lr.ph842.i ], [ %i.yg, %bb.m ] ; 3 uses
  %i.yr = phi <2 x i32> [ %i.zw, %.lr.ph842.i ], [ zeroinitializer, %bb.m ]
  %i.ys = load <4 x float>, ptr %.0461836.i, align 1, !tbaa !17
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.0461836.i, i64 %i.l
  %i.yu = load <4 x float>, ptr %i.yt, align 1, !tbaa !17
  %i.yv = fmul fast <4 x float> %i.ys, %i.yn      ; 2 uses
  %i.yw = fmul fast <4 x float> %i.yu, %i.yp      ; 2 uses
  %i.yx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yv)
  %i.yy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yw)
  %i.yz = fadd fast <4 x float> %i.yx, %i.yv
  %i.za = fadd fast <4 x float> %i.yy, %i.yw
  %i.zb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yz)
  %i.zc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.za)
  %i.zd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.zb, <4 x i32> %i.zc)
  %i.ze = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zd, <8 x i16> splat (i16 -127))
  %i.zf = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ze, <8 x i16> splat (i16 127))
  %i.zg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zf, <8 x i16> poison) ; 5 uses
  %i.zh = bitcast <16 x i8> %i.zg to <2 x i64>
  %i.zi = extractelement <2 x i64> %i.zh, i64 0   ; 2 uses
  store i64 %i.zi, ptr %.28840.i, align 8, !tbaa !30
  %i.zj = trunc i64 %i.zi to i8
  %i.zk = shufflevector <16 x i8> %i.zg, <16 x i8> poison, <2 x i32> <i32 1, i32 4>
  %i.zl = sext <2 x i8> %i.zk to <2 x i32>
  %i.zm = add <2 x i32> %i.yr, %i.zl
  %i.zn = shufflevector <16 x i8> %i.zg, <16 x i8> poison, <2 x i32> <i32 2, i32 5>
  %i.zo = sext <2 x i8> %i.zn to <2 x i32>
  %i.zp = add <2 x i32> %i.zm, %i.zo
  %i.zq = shufflevector <16 x i8> %i.zg, <16 x i8> poison, <2 x i32> <i32 3, i32 6>
  %i.zr = sext <2 x i8> %i.zq to <2 x i32>
  %i.zs = add <2 x i32> %i.zp, %i.zr
  %i.zt = shufflevector <16 x i8> %i.zg, <16 x i8> poison, <2 x i32> <i32 poison, i32 7>
  %i.zu = insertelement <2 x i8> %i.zt, i8 %i.zj, i64 0
  %i.zv = sext <2 x i8> %i.zu to <2 x i32>
  %i.zw = add <2 x i32> %i.zs, %i.zv              ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.28840.i, i64 8 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.0461836.i, i64 16 ; 2 uses
  %i.zz = add nuw nsw i32 %.0458837.i, 4          ; 2 uses
  %i.aaa = or disjoint i32 %i.zz, 3
  %i.aab = icmp slt i32 %i.aaa, %5
  br i1 %i.aab, label %.lr.ph842.i, label %bb.n, !llvm.loop !205

bb.n:                                             ; preds = %.lr.ph842.i
  %i.aac = mul nsw <2 x i32> %i.zw, splat (i32 127)
  store <2 x i32> %i.aac, ptr %i.zx, align 8, !tbaa !23
  %i.aad = getelementptr inbounds nuw i8, ptr %.28840.i, i64 16
  br label %._crit_edge843.i

._crit_edge843.i:                                 ; preds = %bb.n, %bb.m
  %.0458.lcssa1043.i = phi i32 [ %i.xq, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %.0461.lcssa1041.i = phi ptr [ %i.zy, %bb.n ], [ %i.yg, %bb.m ] ; 2 uses
  %.29.i = phi ptr [ %i.aad, %bb.n ], [ %.27864.i, %bb.m ] ; 2 uses
  %i.aae = or disjoint i32 %.0458.lcssa1043.i, 1
  %i.aaf = icmp slt i32 %i.aae, %5
  br i1 %i.aaf, label %.lr.ph853.i, label %.preheader693.i

.preheader693.i:                                  ; preds = %.lr.ph853.i, %._crit_edge843.i
  %.1462.lcssa.i = phi ptr [ %.0461.lcssa1041.i, %._crit_edge843.i ], [ %i.aby, %.lr.ph853.i ] ; 8 uses
  %.1459.lcssa.i = phi i32 [ %.0458.lcssa1043.i, %._crit_edge843.i ], [ %i.abz, %.lr.ph853.i ] ; 6 uses
  %.30.lcssa.i = phi ptr [ %.29.i, %._crit_edge843.i ], [ %i.abx, %.lr.ph853.i ] ; 8 uses
  %i.aag = icmp slt i32 %.1459.lcssa.i, %5
  br i1 %i.aag, label %.lr.ph860.i.preheader, label %._crit_edge861.i

.lr.ph860.i.preheader:                            ; preds = %.preheader693.i
  %i.aah = xor i32 %.1459.lcssa.i, -1
  %i.aai = add i32 %5, %i.aah                     ; 2 uses
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = add nuw nsw i64 %i.aaj, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.aai, 7
  br i1 %min.iters.check, label %.lr.ph860.i.preheader274, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph860.i.preheader
  %scevgep = getelementptr i8, ptr %.30.lcssa.i, i64 2
  %i.aal = xor i32 %.1459.lcssa.i, -1
  %i.aam = add i32 %5, %i.aal
  %i.aan = zext i32 %i.aam to i64                 ; 2 uses
  %i.aao = shl nuw nsw i64 %i.aan, 1
  %scevgep218 = getelementptr i8, ptr %scevgep, i64 %i.aao ; 2 uses
  %scevgep219 = getelementptr i8, ptr %.1462.lcssa.i, i64 %i.xu
  %i.aap = getelementptr i8, ptr %.1462.lcssa.i, i64 %i.xu
  %scevgep220 = getelementptr i8, ptr %i.aap, i64 4
  %i.aaq = shl nuw nsw i64 %i.aan, 2              ; 2 uses
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.aaq
  %scevgep222 = getelementptr i8, ptr %.1462.lcssa.i, i64 4
  %scevgep223 = getelementptr i8, ptr %scevgep222, i64 %i.aaq
  %bound0 = icmp ult ptr %.30.lcssa.i, %scevgep221
  %bound1 = icmp ult ptr %scevgep219, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  %bound0224 = icmp ult ptr %.30.lcssa.i, %scevgep223
  %bound1225 = icmp ult ptr %.1462.lcssa.i, %scevgep218
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx = or i1 %found.conflict, %found.conflict226
  br i1 %conflict.rdx, label %.lr.ph860.i.preheader274, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aak, 8589934584             ; 5 uses
  %i.aar = shl nuw nsw i64 %n.vec, 1
  %i.aas = getelementptr i8, ptr %.30.lcssa.i, i64 %i.aar ; 2 uses
  %i.aat = trunc i64 %n.vec to i32
  %i.aau = add i32 %.1459.lcssa.i, %i.aat
  %i.aav = shl nuw nsw i64 %n.vec, 2
  %i.aaw = getelementptr i8, ptr %.1462.lcssa.i, i64 %i.aav
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.yj, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.yl, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aax = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.30.lcssa.i, i64 %i.aax
  %i.aay = shl i64 %index, 2
  %next.gep229 = getelementptr i8, ptr %.1462.lcssa.i, i64 %i.aay ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep229, align 4, !tbaa !32, !alias.scope !222
  %i.aaz = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %next.gep229, i64 %i.l
  %wide.load230 = load <8 x float>, ptr %i.aba, align 4, !tbaa !32, !alias.scope !223
  %i.abb = fmul fast <8 x float> %wide.load230, %broadcast.splat228
  %i.abc = shufflevector <8 x float> %i.aaz, <8 x float> %i.abb, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abd = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.abc)
  %i.abe = fptosi <16 x float> %i.abd to <16 x i32>
  %i.abf = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.abe, <16 x i32> splat (i32 -127))
  %i.abg = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.abf, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.abg to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !224, !noalias !225
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abh = icmp eq i64 %index.next, %n.vec
  br i1 %i.abh, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aak, %n.vec
  br i1 %cmp.n, label %._crit_edge861.i, label %.lr.ph860.i.preheader274

.lr.ph860.i.preheader274:                         ; preds = %vector.memcheck, %.lr.ph860.i.preheader, %middle.block
  %.31859.i.ph = phi ptr [ %.30.lcssa.i, %vector.memcheck ], [ %.30.lcssa.i, %.lr.ph860.i.preheader ], [ %i.aas, %middle.block ]
  %.2460858.i.ph = phi i32 [ %.1459.lcssa.i, %vector.memcheck ], [ %.1459.lcssa.i, %.lr.ph860.i.preheader ], [ %i.aau, %middle.block ]
  %.2463857.i.ph = phi ptr [ %.1462.lcssa.i, %vector.memcheck ], [ %.1462.lcssa.i, %.lr.ph860.i.preheader ], [ %i.aaw, %middle.block ]
  br label %.lr.ph860.i

.lr.ph853.i:                                      ; preds = %._crit_edge843.i, %.lr.ph853.i
  %.30851.i = phi ptr [ %i.abx, %.lr.ph853.i ], [ %.29.i, %._crit_edge843.i ] ; 2 uses
  %.1459850.i = phi i32 [ %i.abz, %.lr.ph853.i ], [ %.0458.lcssa1043.i, %._crit_edge843.i ]
  %.1462849.i = phi ptr [ %i.aby, %.lr.ph853.i ], [ %.0461.lcssa1041.i, %._crit_edge843.i ] ; 3 uses
  %i.abi = load i64, ptr %.1462849.i, align 1, !tbaa !17
  %i.abj = insertelement <2 x i64> poison, i64 %i.abi, i64 0
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.1462849.i, i64 %i.l
  %i.abl = load i64, ptr %i.abk, align 1, !tbaa !17
  %.uncasted.i = insertelement <2 x i64> %i.abj, i64 %i.abl, i64 1
  %i.abm = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.abn = fmul fast <4 x float> %i.yq, %i.abm    ; 2 uses
  %i.abo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.abn)
  %i.abp = fadd fast <4 x float> %i.abo, %i.abn
  %i.abq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.abp)
  %i.abr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.abq, <4 x i32> poison)
  %i.abs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abr, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.abt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abs, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.abu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.abt, <8 x i16> poison)
  %i.abv = bitcast <16 x i8> %i.abu to <4 x i32>
  %i.abw = extractelement <4 x i32> %i.abv, i64 0
  store i32 %i.abw, ptr %.30851.i, align 4, !tbaa !23
  %i.abx = getelementptr inbounds nuw i8, ptr %.30851.i, i64 4 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.1462849.i, i64 8 ; 2 uses
  %i.abz = add nuw nsw i32 %.1459850.i, 2         ; 3 uses
  %i.aca = or disjoint i32 %i.abz, 1
  %i.acb = icmp slt i32 %i.aca, %5
  br i1 %i.acb, label %.lr.ph853.i, label %.preheader693.i, !llvm.loop !211

.lr.ph860.i:                                      ; preds = %.lr.ph860.i.preheader274, %.lr.ph860.i
  %.31859.i = phi ptr [ %i.acm, %.lr.ph860.i ], [ %.31859.i.ph, %.lr.ph860.i.preheader274 ] ; 3 uses
  %.2460858.i = phi i32 [ %i.aco, %.lr.ph860.i ], [ %.2460858.i.ph, %.lr.ph860.i.preheader274 ]
  %.2463857.i = phi ptr [ %i.acn, %.lr.ph860.i ], [ %.2463857.i.ph, %.lr.ph860.i.preheader274 ] ; 3 uses
  %i.acc = load float, ptr %.2463857.i, align 4, !tbaa !32
  %i.acd = fmul fast float %i.acc, %i.yj
  %i.ace = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acd)
  %i.acf = fptosi float %i.ace to i32
  %spec.select.i505689.i = tail call i32 @llvm.smax.i32(i32 %i.acf, i32 -127)
  %.0.i506690.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i505689.i, i32 127)
  %.0.i506.i = trunc nsw i32 %.0.i506690.i to i8
  store i8 %.0.i506.i, ptr %.31859.i, align 1, !tbaa !17
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %.2463857.i, i64 %i.l
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !32
  %i.aci = fmul fast float %i.ach, %i.yl
  %i.acj = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aci)
  %i.ack = fptosi float %i.acj to i32
  %spec.select.i503691.i = tail call i32 @llvm.smax.i32(i32 %i.ack, i32 -127)
  %.0.i504692.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i503691.i, i32 127)
  %.0.i504.i = trunc nsw i32 %.0.i504692.i to i8
  %i.acl = getelementptr inbounds nuw i8, ptr %.31859.i, i64 1
  store i8 %.0.i504.i, ptr %i.acl, align 1, !tbaa !17
  %i.acm = getelementptr inbounds nuw i8, ptr %.31859.i, i64 2 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.2463857.i, i64 4
  %i.aco = add nuw nsw i32 %.2460858.i, 1         ; 2 uses
  %exitcond957.not.i = icmp eq i32 %i.aco, %5
  br i1 %exitcond957.not.i, label %._crit_edge861.i, label %.lr.ph860.i, !llvm.loop !212

._crit_edge861.i:                                 ; preds = %.lr.ph860.i, %middle.block, %.preheader693.i
  %.31.lcssa.i = phi ptr [ %.30.lcssa.i, %.preheader693.i ], [ %i.aas, %middle.block ], [ %i.acm, %.lr.ph860.i ] ; 2 uses
  %indvars.iv.next959.i = add nuw nsw i64 %indvars.iv958.i, 2 ; 3 uses
  %i.acp = icmp slt i64 %indvars.iv.next959.i, %invariant.op1107.i
  br i1 %i.acp, label %bb.m, label %.preheader.loopexit.i, !llvm.loop !213

bb.o:                                             ; preds = %._crit_edge884.i, %.lr.ph888.i
  %indvars.iv962.i = phi i64 [ %i.ya, %.lr.ph888.i ], [ %indvars.iv.next963.i, %._crit_edge884.i ] ; 2 uses
  %.32887.i = phi ptr [ %.27.lcssa.i, %.lr.ph888.i ], [ %.35.lcssa.i, %._crit_edge884.i ] ; 2 uses
  %i.acq = load ptr, ptr %0, align 8, !tbaa !14
  %i.acr = add nsw i64 %indvars.iv962.i, %i.yb    ; 2 uses
  %i.acs = mul i64 %i.acr, %i.l
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.acs
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.act, i64 %i.xx ; 2 uses
  %i.acv = load ptr, ptr %6, align 8, !tbaa !14
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.acr
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !32 ; 6 uses
  %i.acy = insertelement <4 x float> poison, float %i.acx, i64 0
  %i.acz = shufflevector <4 x float> %i.acy, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.xy, label %.lr.ph873.i, label %._crit_edge874.i

.lr.ph873.i:                                      ; preds = %bb.o, %.lr.ph873.i
  %.0871.i = phi i32 [ %i.adw, %.lr.ph873.i ], [ 0, %bb.o ]
  %.0436870.i = phi i32 [ %i.adz, %.lr.ph873.i ], [ 0, %bb.o ]
  %.0437869.i = phi ptr [ %i.ady, %.lr.ph873.i ], [ %i.acu, %bb.o ] ; 2 uses
  %.33868.i = phi ptr [ %i.adx, %.lr.ph873.i ], [ %.32887.i, %bb.o ] ; 3 uses
  %i.ada = load <4 x float>, ptr %.0437869.i, align 1, !tbaa !17
  %i.adb = fmul fast <4 x float> %i.ada, %i.acz   ; 2 uses
  %i.adc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.adb)
  %i.add = fadd fast <4 x float> %i.adc, %i.adb
  %i.ade = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.add)
  %i.adf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ade, <4 x i32> poison)
  %i.adg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adf, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.adh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adg, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.adi = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adh, <8 x i16> poison) ; 4 uses
  %i.adj = bitcast <16 x i8> %i.adi to <4 x i32>
  %i.adk = extractelement <4 x i32> %i.adj, i64 0 ; 2 uses
  store i32 %i.adk, ptr %.33868.i, align 4, !tbaa !23
  %i.adl = shl i32 %i.adk, 24
  %i.adm = ashr exact i32 %i.adl, 24
  %i.adn = extractelement <16 x i8> %i.adi, i64 1
  %i.ado = sext i8 %i.adn to i32
  %i.adp = extractelement <16 x i8> %i.adi, i64 2
  %i.adq = sext i8 %i.adp to i32
  %i.adr = extractelement <16 x i8> %i.adi, i64 3
  %i.ads = sext i8 %i.adr to i32
  %i.adt = add i32 %.0871.i, %i.ado
  %i.adu = add i32 %i.adt, %i.adq
  %i.adv = add i32 %i.adu, %i.ads
end_hunk_2
begin_hunk_3_@_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.vz = or disjoint i64 %indvars.iv.next.i, 7
  %i.wa = icmp samesign ult i64 %i.vz, %i.u
  br i1 %i.wa, label %bb.i, label %.preheader850.loopexit.i, !llvm.loop !239

.preheader847.loopexit.i:                         ; preds = %.loopexit849.i.us62, %.loopexit849.i.us52, %.loopexit849.i.us, %.loopexit849.i.preheader
  %.us-phi = phi ptr [ %.0536.lcssa.i, %.loopexit849.i.preheader ], [ %.23.i.us53, %.loopexit849.i.us52 ], [ %.23.i.us, %.loopexit849.i.us ], [ %.23.i.us63, %.loopexit849.i.us62 ]
  %.us-phi48 = phi i64 [ %i.an, %.loopexit849.i.preheader ], [ %indvars.iv.next1102.i.us54, %.loopexit849.i.us52 ], [ %indvars.iv.next1102.i.us, %.loopexit849.i.us ], [ %indvars.iv.next1102.i.us64, %.loopexit849.i.us62 ]
  %i.wb = trunc nuw nsw i64 %.us-phi48 to i32
  br label %.preheader847.i

.preheader847.i:                                  ; preds = %.preheader847.loopexit.i, %.preheader850.i
  %.1541.lcssa.i = phi i32 [ %.0540.lcssa.i, %.preheader850.i ], [ %i.wb, %.preheader847.loopexit.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.0536.lcssa.i, %.preheader850.i ], [ %.us-phi, %.preheader847.loopexit.i ] ; 2 uses
  %i.wc = or disjoint i32 %.1541.lcssa.i, 1
  %i.wd = icmp slt i32 %i.wc, %3
  br i1 %i.wd, label %.lr.ph998.i, label %.preheader.i

.lr.ph998.i:                                      ; preds = %.preheader847.i
  %i.we = sext i32 %4 to i64
  %i.wf = mul i64 %i.l, %i.we
  %i.wg = icmp sgt i32 %5, 7
  %.idx611.i = shl i64 %i.l, 5
  %i.wh = icmp sgt i32 %5, 3                      ; 3 uses
  %.idx610.i = shl i64 %i.l, 4                    ; 2 uses
  %.idx607.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx608.i = mul i64 %i.l, 12
  %i.wi = and i32 %5, -4
  %i.wj = zext nneg i32 %.1541.lcssa.i to i64
  %i.wk = sext i32 %3 to i64
  %i.wl = sext i32 %2 to i64
  %i.wm = sext i32 %i.c to i64
  %invariant.op1285.i = add nsw i64 %i.wk, -1
  br label %bb.m

.preheader.loopexit.i:                            ; preds = %.loopexit846.i
  %i.wn = trunc nuw nsw i64 %indvars.iv.next1106.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader847.i
  %.2542.lcssa.i = phi i32 [ %.1541.lcssa.i, %.preheader847.i ], [ %i.wn, %.preheader.loopexit.i ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader847.i ], [ %.35.i, %.preheader.loopexit.i ]
  %i.wo = icmp slt i32 %.2542.lcssa.i, %3
  br i1 %i.wo, label %.lr.ph1040.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph1040.i:                                     ; preds = %.preheader.i
  %i.wp = sext i32 %4 to i64
  %i.wq = mul i64 %i.l, %i.wp
  %i.wr = icmp sgt i32 %5, 7
  %.idx605.i = shl i64 %i.l, 5
  %i.ws = icmp sgt i32 %5, 3                      ; 3 uses
  %.idx604.i = shl i64 %i.l, 4                    ; 2 uses
  %i.wt = trunc i64 %i.l to i32
  %i.wu = insertelement <4 x i32> poison, i32 %i.wt, i64 0
  %i.wv = shufflevector <4 x i32> %i.wu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ww = mul <4 x i32> %i.wv, <i32 0, i32 1, i32 2, i32 3>
  %i.wx = and i32 %5, -4
  %i.wy = sext i32 %.2542.lcssa.i to i64
  %i.wz = sext i32 %2 to i64
  %i.xa = sext i32 %i.c to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %xtraiter251 = and i32 %5, 1
  %lcmp.mod252.not = icmp eq i32 %xtraiter251, 0
  br label %bb.t

bb.m:                                             ; preds = %.loopexit846.i, %.lr.ph998.i
  %indvars.iv1105.i = phi i64 [ %i.wj, %.lr.ph998.i ], [ %indvars.iv.next1106.i, %.loopexit846.i ] ; 2 uses
  %.24997.i = phi ptr [ %.12.lcssa.i, %.lr.ph998.i ], [ %.35.i, %.loopexit846.i ] ; 8 uses
  %i.xb = load ptr, ptr %0, align 8, !tbaa !14
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.wf
  %i.xd = add nsw i64 %indvars.iv1105.i, %i.wl    ; 4 uses
  %i.xe = mul nsw i64 %i.xd, %i.wm
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %i.xe ; 4 uses
  switch i32 %i.c, label %.loopexit846.i [
    i32 8, label %bb.n
    i32 4, label %bb.p
    i32 1, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.xg = load ptr, ptr %6, align 8, !tbaa !14
  %i.xh = getelementptr [4 x i8], ptr %i.xg, i64 %i.xd ; 2 uses
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !32
  %i.xj = insertelement <8 x float> poison, float %i.xi, i64 0
  %i.xk = shufflevector <8 x float> %i.xj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xl = getelementptr i8, ptr %i.xh, i64 4
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !32
  %i.xn = insertelement <8 x float> poison, float %i.xm, i64 0
  %i.xo = shufflevector <8 x float> %i.xn, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.wg, label %.lr.ph953.i, label %._crit_edge954.i

.lr.ph953.i:                                      ; preds = %bb.n, %.lr.ph953.i
  %.25951.i = phi ptr [ %i.ym, %.lr.ph953.i ], [ %.24997.i, %bb.n ] ; 2 uses
  %.0579950.i = phi i32 [ %i.yo, %.lr.ph953.i ], [ 0, %bb.n ]
  %.0580949.i = phi ptr [ %i.yn, %.lr.ph953.i ], [ %i.xf, %bb.n ] ; 3 uses
  %i.xp = phi <4 x i32> [ %i.yl, %.lr.ph953.i ], [ zeroinitializer, %bb.n ]
  %i.xq = load <8 x float>, ptr %.0580949.i, align 32, !tbaa !17
  %i.xr = getelementptr inbounds nuw i8, ptr %.0580949.i, i64 32
  %i.xs = load <8 x float>, ptr %i.xr, align 32, !tbaa !17
  %i.xt = fmul fast <8 x float> %i.xq, %i.xk      ; 2 uses
  %i.xu = fmul fast <8 x float> %i.xs, %i.xo      ; 2 uses
  %i.xv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xt)
  %i.xw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xu)
  %i.xx = fadd fast <8 x float> %i.xv, %i.xt
  %i.xy = fadd fast <8 x float> %i.xw, %i.xu
  %i.xz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xx)
  %i.ya = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xy)
  %i.yb = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.xz, <8 x i32> %i.ya)
  %i.yc = bitcast <16 x i16> %i.yb to <4 x i64>
  %i.yd = shufflevector <4 x i64> %i.yc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ye = bitcast <4 x i64> %i.yd to <16 x i16>
  %i.yf = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ye, <16 x i16> splat (i16 -127))
  %i.yg = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.yf, <16 x i16> splat (i16 127))
  %i.yh = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.yg, <16 x i16> poison)
  %i.yi = bitcast <32 x i8> %i.yh to <8 x i32>
  %i.yj = shufflevector <8 x i32> %i.yi, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.yk = bitcast <4 x i32> %i.yj to <16 x i8>
  %i.yl = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.xp, <16 x i8> splat (i8 127), <16 x i8> %i.yk) ; 2 uses
  store <4 x i32> %i.yj, ptr %.25951.i, align 16, !tbaa !17
  %i.ym = getelementptr inbounds nuw i8, ptr %.25951.i, i64 16 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.0580949.i, i64 %.idx611.i
  %i.yo = add nuw nsw i32 %.0579950.i, 8          ; 2 uses
  %i.yp = or disjoint i32 %i.yo, 7
  %i.yq = icmp slt i32 %i.yp, %5
  br i1 %i.yq, label %.lr.ph953.i, label %._crit_edge954.thread.i, !llvm.loop !240

._crit_edge954.thread.i:                          ; preds = %.lr.ph953.i
  %i.yr = shufflevector <4 x i32> %i.yl, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.o

._crit_edge954.i:                                 ; preds = %bb.n
  br i1 %i.wh, label %bb.o, label %.loopexit846.i

bb.o:                                             ; preds = %._crit_edge954.i, %._crit_edge954.thread.i
  %.25.lcssa1186.i = phi ptr [ %i.ym, %._crit_edge954.thread.i ], [ %.24997.i, %._crit_edge954.i ] ; 2 uses
  %.lcssa1184.i = phi <4 x i32> [ %i.yr, %._crit_edge954.thread.i ], [ zeroinitializer, %._crit_edge954.i ] ; 2 uses
  %i.ys = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa1184.i, <4 x i32> %.lcssa1184.i)
  %i.yt = bitcast <4 x i32> %i.ys to <2 x i64>
  %i.yu = extractelement <2 x i64> %i.yt, i64 0
  store i64 %i.yu, ptr %.25.lcssa1186.i, align 1, !tbaa !17
  %i.yv = getelementptr inbounds nuw i8, ptr %.25.lcssa1186.i, i64 8
  br label %.loopexit846.i

bb.p:                                             ; preds = %bb.m
  %i.yw = load ptr, ptr %6, align 8, !tbaa !14
  %i.yx = getelementptr [4 x i8], ptr %i.yw, i64 %i.xd ; 2 uses
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !32
  %i.yz = insertelement <4 x float> poison, float %i.yy, i64 0
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zb = getelementptr i8, ptr %i.yx, i64 4
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !32
  %i.zd = insertelement <4 x float> poison, float %i.zc, i64 0
  %i.ze = shufflevector <4 x float> %i.zd, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.wh, label %.lr.ph964.i, label %.loopexit846.i

.lr.ph964.i:                                      ; preds = %bb.p, %.lr.ph964.i
  %.28962.i = phi ptr [ %i.aal, %.lr.ph964.i ], [ %.24997.i, %bb.p ] ; 3 uses
  %.0578959.i = phi i32 [ %i.aan, %.lr.ph964.i ], [ 0, %bb.p ]
  %.2582958.i = phi ptr [ %i.aam, %.lr.ph964.i ], [ %i.xf, %bb.p ] ; 3 uses
  %i.zf = phi <2 x i32> [ %i.aak, %.lr.ph964.i ], [ zeroinitializer, %bb.p ]
  %i.zg = load <4 x float>, ptr %.2582958.i, align 16, !tbaa !17
  %i.zh = getelementptr inbounds nuw i8, ptr %.2582958.i, i64 16
  %i.zi = load <4 x float>, ptr %i.zh, align 16, !tbaa !17
  %i.zj = fmul fast <4 x float> %i.zg, %i.za      ; 2 uses
  %i.zk = fmul fast <4 x float> %i.zi, %i.ze      ; 2 uses
  %i.zl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zj)
  %i.zm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zk)
  %i.zn = fadd fast <4 x float> %i.zl, %i.zj
  %i.zo = fadd fast <4 x float> %i.zm, %i.zk
  %i.zp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zn)
  %i.zq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zo)
  %i.zr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.zp, <4 x i32> %i.zq)
  %i.zs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zr, <8 x i16> splat (i16 -127))
  %i.zt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zs, <8 x i16> splat (i16 127))
  %i.zu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zt, <8 x i16> poison) ; 5 uses
  %i.zv = bitcast <16 x i8> %i.zu to <2 x i64>
  %i.zw = extractelement <2 x i64> %i.zv, i64 0   ; 2 uses
  store i64 %i.zw, ptr %.28962.i, align 8, !tbaa !30
  %i.zx = trunc i64 %i.zw to i8
  %i.zy = shufflevector <16 x i8> %i.zu, <16 x i8> poison, <2 x i32> <i32 1, i32 4>
  %i.zz = sext <2 x i8> %i.zy to <2 x i32>
  %i.aaa = add <2 x i32> %i.zf, %i.zz
  %i.aab = shufflevector <16 x i8> %i.zu, <16 x i8> poison, <2 x i32> <i32 2, i32 5>
  %i.aac = sext <2 x i8> %i.aab to <2 x i32>
  %i.aad = add <2 x i32> %i.aaa, %i.aac
  %i.aae = shufflevector <16 x i8> %i.zu, <16 x i8> poison, <2 x i32> <i32 3, i32 6>
  %i.aaf = sext <2 x i8> %i.aae to <2 x i32>
  %i.aag = add <2 x i32> %i.aad, %i.aaf
  %i.aah = shufflevector <16 x i8> %i.zu, <16 x i8> poison, <2 x i32> <i32 poison, i32 7>
  %i.aai = insertelement <2 x i8> %i.aah, i8 %i.zx, i64 0
  %i.aaj = sext <2 x i8> %i.aai to <2 x i32>
  %i.aak = add <2 x i32> %i.aag, %i.aaj           ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.28962.i, i64 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.2582958.i, i64 %.idx610.i
  %i.aan = add nuw nsw i32 %.0578959.i, 4         ; 2 uses
  %i.aao = or disjoint i32 %i.aan, 3
  %i.aap = icmp slt i32 %i.aao, %5
  br i1 %i.aap, label %.lr.ph964.i, label %bb.q, !llvm.loop !241

bb.q:                                             ; preds = %.lr.ph964.i
  %i.aaq = mul nsw <2 x i32> %i.aak, splat (i32 127)
  store <2 x i32> %i.aaq, ptr %i.aal, align 8, !tbaa !23
  %i.aar = getelementptr inbounds nuw i8, ptr %.28962.i, i64 16
  br label %.loopexit846.i

bb.r:                                             ; preds = %bb.m
  %i.aas = load ptr, ptr %6, align 8, !tbaa !14
  %i.aat = getelementptr [4 x i8], ptr %i.aas, i64 %i.xd ; 2 uses
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !32 ; 2 uses
  %i.aav = getelementptr i8, ptr %i.aat, i64 4
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !32 ; 2 uses
  %i.aax = insertelement <4 x float> poison, float %i.aau, i64 0 ; 2 uses
  %i.aay = shufflevector <4 x float> %i.aax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaz = insertelement <4 x float> poison, float %i.aaw, i64 0 ; 2 uses
  %i.aba = shufflevector <4 x float> %i.aaz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abb = shufflevector <4 x float> %i.aax, <4 x float> %i.aaz, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.wh, label %.lr.ph976.i, label %._crit_edge977.i

.lr.ph976.i:                                      ; preds = %bb.r, %.lr.ph976.i
  %.31974.i = phi ptr [ %i.acy, %.lr.ph976.i ], [ %.24997.i, %bb.r ] ; 3 uses
  %.0573971.i = phi i32 [ %i.ada, %.lr.ph976.i ], [ 0, %bb.r ]
  %.4584970.i = phi ptr [ %i.acz, %.lr.ph976.i ], [ %i.xf, %bb.r ] ; 5 uses
  %i.abc = phi <2 x i32> [ %i.acx, %.lr.ph976.i ], [ zeroinitializer, %bb.r ]
  %i.abd = load i64, ptr %.4584970.i, align 1, !tbaa !17
  %i.abe = insertelement <2 x i64> poison, i64 %i.abd, i64 0
  %i.abf = bitcast <2 x i64> %i.abe to <4 x float>
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.4584970.i, i64 %i.l
  %i.abh = load i64, ptr %i.abg, align 1, !tbaa !17
  %i.abi = insertelement <2 x i64> poison, i64 %i.abh, i64 0
  %i.abj = bitcast <2 x i64> %i.abi to <4 x float>
  %i.abk = getelementptr inbounds nuw i8, ptr %.4584970.i, i64 %.idx607.i
  %i.abl = load i64, ptr %i.abk, align 1, !tbaa !17
  %i.abm = insertelement <2 x i64> poison, i64 %i.abl, i64 0
  %i.abn = bitcast <2 x i64> %i.abm to <4 x float>
  %i.abo = getelementptr inbounds nuw i8, ptr %.4584970.i, i64 %.idx608.i
  %i.abp = load i64, ptr %i.abo, align 1, !tbaa !17
  %i.abq = insertelement <2 x i64> poison, i64 %i.abp, i64 0
  %i.abr = bitcast <2 x i64> %i.abq to <4 x float>
  %i.abs = shufflevector <4 x float> %i.abf, <4 x float> %i.abj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.abt = shufflevector <4 x float> %i.abn, <4 x float> %i.abr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.abu = shufflevector <4 x float> %i.abs, <4 x float> %i.abt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.abv = shufflevector <4 x float> %i.abs, <4 x float> %i.abt, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.abw = fmul fast <4 x float> %i.aay, %i.abu   ; 2 uses
  %i.abx = fmul fast <4 x float> %i.aba, %i.abv   ; 2 uses
  %i.aby = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.abw)
  %i.abz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.abx)
  %i.aca = fadd fast <4 x float> %i.aby, %i.abw
  %i.acb = fadd fast <4 x float> %i.abz, %i.abx
  %i.acc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aca)
  %i.acd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acb)
  %i.ace = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.acc, <4 x i32> %i.acd)
  %i.acf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ace, <8 x i16> splat (i16 -127))
  %i.acg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.acf, <8 x i16> splat (i16 127))
  %i.ach = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.acg, <8 x i16> poison) ; 5 uses
  %i.aci = bitcast <16 x i8> %i.ach to <2 x i64>
  %i.acj = extractelement <2 x i64> %i.aci, i64 0 ; 2 uses
  store i64 %i.acj, ptr %.31974.i, align 8, !tbaa !30
  %i.ack = trunc i64 %i.acj to i8
  %i.acl = shufflevector <16 x i8> %i.ach, <16 x i8> poison, <2 x i32> <i32 1, i32 4>
  %i.acm = sext <2 x i8> %i.acl to <2 x i32>
  %i.acn = add <2 x i32> %i.abc, %i.acm
  %i.aco = shufflevector <16 x i8> %i.ach, <16 x i8> poison, <2 x i32> <i32 2, i32 5>
  %i.acp = sext <2 x i8> %i.aco to <2 x i32>
  %i.acq = add <2 x i32> %i.acn, %i.acp
  %i.acr = shufflevector <16 x i8> %i.ach, <16 x i8> poison, <2 x i32> <i32 3, i32 6>
  %i.acs = sext <2 x i8> %i.acr to <2 x i32>
  %i.act = add <2 x i32> %i.acq, %i.acs
  %i.acu = shufflevector <16 x i8> %i.ach, <16 x i8> poison, <2 x i32> <i32 poison, i32 7>
  %i.acv = insertelement <2 x i8> %i.acu, i8 %i.ack, i64 0
  %i.acw = sext <2 x i8> %i.acv to <2 x i32>
  %i.acx = add <2 x i32> %i.act, %i.acw           ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.31974.i, i64 8 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.4584970.i, i64 %.idx610.i ; 2 uses
  %i.ada = add nuw nsw i32 %.0573971.i, 4         ; 2 uses
  %i.adb = or disjoint i32 %i.ada, 3
  %i.adc = icmp slt i32 %i.adb, %5
  br i1 %i.adc, label %.lr.ph976.i, label %bb.s, !llvm.loop !242

bb.s:                                             ; preds = %.lr.ph976.i
  %i.add = mul nsw <2 x i32> %i.acx, splat (i32 127)
  store <2 x i32> %i.add, ptr %i.acy, align 8, !tbaa !23
  %i.ade = getelementptr inbounds nuw i8, ptr %.31974.i, i64 16
  br label %._crit_edge977.i

._crit_edge977.i:                                 ; preds = %bb.s, %bb.r
  %.0573.lcssa1209.i = phi i32 [ %i.wi, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.4584.lcssa1207.i = phi ptr [ %i.acz, %bb.s ], [ %i.xf, %bb.r ] ; 2 uses
  %.32.i = phi ptr [ %i.ade, %bb.s ], [ %.24997.i, %bb.r ] ; 2 uses
  %i.adf = or disjoint i32 %.0573.lcssa1209.i, 1
  %i.adg = icmp slt i32 %i.adf, %5
  br i1 %i.adg, label %.lr.ph987.i, label %.preheader845.i

.preheader845.i:                                  ; preds = %.lr.ph987.i, %._crit_edge977.i
  %.5585.lcssa.i = phi ptr [ %.4584.lcssa1207.i, %._crit_edge977.i ], [ %i.aeb, %.lr.ph987.i ]
  %.1574.lcssa.i = phi i32 [ %.0573.lcssa1209.i, %._crit_edge977.i ], [ %i.aec, %.lr.ph987.i ] ; 2 uses
  %.33.lcssa.i = phi ptr [ %.32.i, %._crit_edge977.i ], [ %i.aea, %.lr.ph987.i ] ; 2 uses
  %i.adh = icmp slt i32 %.1574.lcssa.i, %5
  br i1 %i.adh, label %.lr.ph994.i, label %.loopexit846.i

.lr.ph987.i:                                      ; preds = %._crit_edge977.i, %.lr.ph987.i
  %.33985.i = phi ptr [ %i.aea, %.lr.ph987.i ], [ %.32.i, %._crit_edge977.i ] ; 2 uses
  %.1574984.i = phi i32 [ %i.aec, %.lr.ph987.i ], [ %.0573.lcssa1209.i, %._crit_edge977.i ]
  %.5585983.i = phi ptr [ %i.aeb, %.lr.ph987.i ], [ %.4584.lcssa1207.i, %._crit_edge977.i ] ; 3 uses
  %i.adi = load i64, ptr %.5585983.i, align 1, !tbaa !17
  %i.adj = insertelement <2 x i64> poison, i64 %i.adi, i64 0
  %i.adk = bitcast <2 x i64> %i.adj to <4 x float>
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.5585983.i, i64 %i.l
  %i.adm = load i64, ptr %i.adl, align 1, !tbaa !17
  %i.adn = insertelement <2 x i64> poison, i64 %i.adm, i64 0
  %i.ado = bitcast <2 x i64> %i.adn to <4 x float>
  %i.adp = shufflevector <4 x float> %i.adk, <4 x float> %i.ado, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.adq = fmul fast <4 x float> %i.adp, %i.abb   ; 2 uses
  %i.adr = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.adq)
  %i.ads = fadd fast <4 x float> %i.adr, %i.adq
  %i.adt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ads)
  %i.adu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.adt, <4 x i32> poison)
  %i.adv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adu, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.adw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adv, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.adx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adw, <8 x i16> poison)
  %i.ady = bitcast <16 x i8> %i.adx to <4 x i32>
  %i.adz = extractelement <4 x i32> %i.ady, i64 0
  store i32 %i.adz, ptr %.33985.i, align 4, !tbaa !23
  %i.aea = getelementptr inbounds nuw i8, ptr %.33985.i, i64 4 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.5585983.i, i64 %.idx607.i ; 2 uses
  %i.aec = add nuw nsw i32 %.1574984.i, 2         ; 3 uses
  %i.aed = or disjoint i32 %i.aec, 1
  %i.aee = icmp slt i32 %i.aed, %5
  br i1 %i.aee, label %.lr.ph987.i, label %.preheader845.i, !llvm.loop !243

.lr.ph994.i:                                      ; preds = %.preheader845.i, %.lr.ph994.i
  %.34993.i = phi ptr [ %i.aep, %.lr.ph994.i ], [ %.33.lcssa.i, %.preheader845.i ] ; 3 uses
  %.2575992.i = phi i32 [ %i.aer, %.lr.ph994.i ], [ %.1574.lcssa.i, %.preheader845.i ]
  %.6586991.i = phi ptr [ %i.aeq, %.lr.ph994.i ], [ %.5585.lcssa.i, %.preheader845.i ] ; 3 uses
  %i.aef = load float, ptr %.6586991.i, align 4, !tbaa !32
  %i.aeg = fmul fast float %i.aef, %i.aau
  %i.aeh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aeg)
  %i.aei = fptosi float %i.aeh to i32
  %spec.select.i626840.i = tail call i32 @llvm.smax.i32(i32 %i.aei, i32 -127)
  %.0.i627841.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i626840.i, i32 127)
  %.0.i627.i = trunc nsw i32 %.0.i627841.i to i8
  store i8 %.0.i627.i, ptr %.34993.i, align 1, !tbaa !17
  %i.aej = getelementptr inbounds nuw i8, ptr %.6586991.i, i64 4
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !32
  %i.ael = fmul fast float %i.aek, %i.aaw
  %i.aem = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ael)
  %i.aen = fptosi float %i.aem to i32
  %spec.select.i624842.i = tail call i32 @llvm.smax.i32(i32 %i.aen, i32 -127)
  %.0.i625843.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i624842.i, i32 127)
  %.0.i625.i = trunc nsw i32 %.0.i625843.i to i8
  %i.aeo = getelementptr inbounds nuw i8, ptr %.34993.i, i64 1
  store i8 %.0.i625.i, ptr %i.aeo, align 1, !tbaa !17
  %i.aep = getelementptr inbounds nuw i8, ptr %.34993.i, i64 2 ; 2 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.6586991.i, i64 %i.l
  %i.aer = add nuw nsw i32 %.2575992.i, 1         ; 2 uses
  %exitcond1104.not.i = icmp eq i32 %i.aer, %5
  br i1 %exitcond1104.not.i, label %.loopexit846.i, label %.lr.ph994.i, !llvm.loop !244

.loopexit846.i:                                   ; preds = %.lr.ph994.i, %.preheader845.i, %bb.q, %bb.p, %bb.o, %._crit_edge954.i, %bb.m
  %.35.i = phi ptr [ %.24997.i, %bb.m ], [ %.33.lcssa.i, %.preheader845.i ], [ %i.yv, %bb.o ], [ %.24997.i, %bb.p ], [ %i.aar, %bb.q ], [ %.24997.i, %._crit_edge954.i ], [ %i.aep, %.lr.ph994.i ] ; 2 uses
  %indvars.iv.next1106.i = add nuw nsw i64 %indvars.iv1105.i, 2 ; 3 uses
  %i.aes = icmp slt i64 %indvars.iv.next1106.i, %invariant.op1285.i
  br i1 %i.aes, label %bb.m, label %.preheader.loopexit.i, !llvm.loop !245

bb.t:                                             ; preds = %.loopexit.i, %.lr.ph1040.i
  %indvars.iv1109.i = phi i64 [ %i.wy, %.lr.ph1040.i ], [ %indvars.iv.next1110.i, %.loopexit.i ] ; 2 uses
  %.361039.i = phi ptr [ %.24.lcssa.i, %.lr.ph1040.i ], [ %.46.i, %.loopexit.i ] ; 8 uses
  %i.aet = load ptr, ptr %0, align 8, !tbaa !14
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %i.wq
  %i.aev = add nsw i64 %indvars.iv1109.i, %i.wz   ; 2 uses
  %i.aew = mul nsw i64 %i.aev, %i.xa
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.aew ; 4 uses
  %i.aey = load ptr, ptr %6, align 8, !tbaa !14
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %i.aev
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !32 ; 6 uses
  switch i32 %i.c, label %.loopexit.i [
    i32 8, label %bb.u
    i32 4, label %bb.w
    i32 1, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.afb = insertelement <8 x float> poison, float %i.afa, i64 0
  %i.afc = shufflevector <8 x float> %i.afb, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.wr, label %.lr.ph1006.i, label %._crit_edge1007.i

.lr.ph1006.i:                                     ; preds = %bb.u, %.lr.ph1006.i
  %.371004.i = phi ptr [ %i.agc, %.lr.ph1006.i ], [ %.361039.i, %bb.u ] ; 2 uses
  %.05441003.i = phi i32 [ %op.rdx209, %.lr.ph1006.i ], [ 0, %bb.u ]
  %.05451002.i = phi i32 [ %i.age, %.lr.ph1006.i ], [ 0, %bb.u ]
  %.05461001.i = phi ptr [ %i.agd, %.lr.ph1006.i ], [ %i.aex, %bb.u ] ; 2 uses
  %i.afd = load <8 x float>, ptr %.05461001.i, align 32, !tbaa !17
  %i.afe = fmul fast <8 x float> %i.afd, %i.afc   ; 2 uses
  %i.aff = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.afe)
  %i.afg = fadd fast <8 x float> %i.aff, %i.afe
  %i.afh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afg)
  %i.afi = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.afh, <8 x i32> poison)
  %i.afj = bitcast <16 x i16> %i.afi to <8 x i32>
  %i.afk = shufflevector <8 x i32> %i.afj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.afl = bitcast <4 x i32> %i.afk to <8 x i16>
  %i.afm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afl, <8 x i16> splat (i16 -127))
  %i.afn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.afm, <8 x i16> splat (i16 127))
  %i.afo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.afn, <8 x i16> poison) ; 5 uses
  %i.afp = bitcast <16 x i8> %i.afo to <2 x i64>
  %i.afq = extractelement <2 x i64> %i.afp, i64 0 ; 2 uses
  store i64 %i.afq, ptr %.371004.i, align 8, !tbaa !30
  %i.afr = trunc i64 %i.afq to i8
  %i.afs = sext i8 %i.afr to i32
  %i.aft = shufflevector <16 x i8> %i.afo, <16 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.afu = extractelement <16 x i8> %i.afo, i64 5
  %i.afv = sext i8 %i.afu to i32
  %i.afw = extractelement <16 x i8> %i.afo, i64 6
  %i.afx = sext i8 %i.afw to i32
  %i.afy = extractelement <16 x i8> %i.afo, i64 7
  %i.afz = sext i8 %i.afy to i32
  %i.aga = sext <4 x i8> %i.aft to <4 x i32>
  %i.agb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aga)
  %op.rdx = add i32 %i.agb, %i.afv
  %op.rdx206 = add nsw i32 %i.afx, %i.afz
  %op.rdx207 = add i32 %.05441003.i, %i.afs
  %op.rdx208 = add i32 %op.rdx, %op.rdx206
  %op.rdx209 = add i32 %op.rdx208, %op.rdx207     ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.371004.i, i64 8 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.05461001.i, i64 %.idx605.i
  %i.age = add nuw nsw i32 %.05451002.i, 8        ; 2 uses
  %i.agf = or disjoint i32 %i.age, 7
  %i.agg = icmp slt i32 %i.agf, %5
  br i1 %i.agg, label %.lr.ph1006.i, label %._crit_edge1007.thread.i, !llvm.loop !246

._crit_edge1007.thread.i:                         ; preds = %.lr.ph1006.i
  %i.agh = mul nsw i32 %op.rdx209, 127
  br label %bb.v

._crit_edge1007.i:                                ; preds = %bb.u
  br i1 %i.ws, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %._crit_edge1007.i, %._crit_edge1007.thread.i
  %.37.lcssa1219.i = phi ptr [ %i.agc, %._crit_edge1007.thread.i ], [ %.361039.i, %._crit_edge1007.i ] ; 2 uses
  %.0544.lcssa1218.i = phi i32 [ %i.agh, %._crit_edge1007.thread.i ], [ 0, %._crit_edge1007.i ]
  store i32 %.0544.lcssa1218.i, ptr %.37.lcssa1219.i, align 4, !tbaa !23
  %i.agi = getelementptr inbounds nuw i8, ptr %.37.lcssa1219.i, i64 4
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.t
  %i.agj = insertelement <4 x float> poison, float %i.afa, i64 0
  %i.agk = shufflevector <4 x float> %i.agj, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ws, label %.lr.ph1016.i, label %.loopexit.i

.lr.ph1016.i:                                     ; preds = %bb.w, %.lr.ph1016.i
  %.401014.i = phi ptr [ %i.ahi, %.lr.ph1016.i ], [ %.361039.i, %bb.w ] ; 3 uses
  %.05381013.i = phi i32 [ %i.ahh, %.lr.ph1016.i ], [ 0, %bb.w ]
  %.05391012.i = phi i32 [ %i.ahk, %.lr.ph1016.i ], [ 0, %bb.w ]
  %.25481011.i = phi ptr [ %i.ahj, %.lr.ph1016.i ], [ %i.aex, %bb.w ] ; 2 uses
  %i.agl = load <4 x float>, ptr %.25481011.i, align 16, !tbaa !17
  %i.agm = fmul fast <4 x float> %i.agl, %i.agk   ; 2 uses
  %i.agn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agm)
  %i.ago = fadd fast <4 x float> %i.agn, %i.agm
  %i.agp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ago)
  %i.agq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.agp, <4 x i32> poison)
  %i.agr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.agq, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ags = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.agr, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.agt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ags, <8 x i16> poison) ; 4 uses
  %i.agu = bitcast <16 x i8> %i.agt to <4 x i32>
  %i.agv = extractelement <4 x i32> %i.agu, i64 0 ; 2 uses
  store i32 %i.agv, ptr %.401014.i, align 4, !tbaa !23
  %i.agw = shl i32 %i.agv, 24
  %i.agx = ashr exact i32 %i.agw, 24
  %i.agy = extractelement <16 x i8> %i.agt, i64 1
  %i.agz = sext i8 %i.agy to i32
  %i.aha = extractelement <16 x i8> %i.agt, i64 2
  %i.ahb = sext i8 %i.aha to i32
  %i.ahc = extractelement <16 x i8> %i.agt, i64 3
  %i.ahd = sext i8 %i.ahc to i32
  %i.ahe = add i32 %.05381013.i, %i.agz
  %i.ahf = add i32 %i.ahe, %i.ahb
  %i.ahg = add i32 %i.ahf, %i.ahd
  %i.ahh = add i32 %i.ahg, %i.agx                 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.401014.i, i64 4 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.25481011.i, i64 %.idx604.i
  %i.ahk = add nuw nsw i32 %.05391012.i, 4        ; 2 uses
  %i.ahl = or disjoint i32 %i.ahk, 3
  %i.ahm = icmp slt i32 %i.ahl, %5
end_hunk_3
begin_hunk_4_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %.epil.init1787 = phi <8 x i32> [ %i.qb, %.lr.ph2120.i.preheader ], [ %i.rg, %.unr-lcssa1784 ]
  tail call void @llvm.assume(i1 %lcmp.mod1790)
  br label %.lr.ph2120.i.epil

.lr.ph2120.i.epil:                                ; preds = %.lr.ph2120.i.epil, %.lr.ph2120.i.epil.preheader
  %.1311372118.i.epil = phi ptr [ %i.rr, %.lr.ph2120.i.epil ], [ %.1311372118.i.epil.init, %.lr.ph2120.i.epil.preheader ] ; 2 uses
  %.011722117.i.epil = phi ptr [ %i.rq, %.lr.ph2120.i.epil ], [ %.011722117.i.epil.init, %.lr.ph2120.i.epil.preheader ] ; 2 uses
  %i.rj = phi <8 x i32> [ %i.rp, %.lr.ph2120.i.epil ], [ %.epil.init1787, %.lr.ph2120.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph2120.i.epil ], [ 0, %.lr.ph2120.i.epil.preheader ]
  %i.rk = load <32 x i8>, ptr %.011722117.i.epil, align 1, !tbaa !17
  %i.rl = load float, ptr %.1311372118.i.epil, align 1, !tbaa !17
  %i.rm = insertelement <8 x float> poison, float %i.rl, i64 0
  %i.rn = shufflevector <8 x float> %i.rm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ro = bitcast <8 x float> %i.rn to <32 x i8>
  %i.rp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.rj, <32 x i8> %i.ro, <32 x i8> %i.rk) ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.011722117.i.epil, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %.1311372118.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1785
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph2120.i.epil, !llvm.loop !327

.epilog-lcssa:                                    ; preds = %.lr.ph2120.i.epil, %.unr-lcssa1784
  %.lcssa1767 = phi <8 x i32> [ %i.rg, %.unr-lcssa1784 ], [ %i.rp, %.lr.ph2120.i.epil ]
  %i.rs = getelementptr i8, ptr %.1211362143.i, i64 %i.s
  %scevgep2936.i = getelementptr i8, ptr %i.rs, i64 4
  %i.rt = load <8 x i32>, ptr %indvars.iv461, align 1, !tbaa !17
  %i.ru = sub <8 x i32> %.lcssa1767, %i.rt
  br label %._crit_edge2121.i

._crit_edge2121.i:                                ; preds = %.epilog-lcssa, %bb.n
  %.131137.lcssa3054.i = phi ptr [ %scevgep2936.i, %.epilog-lcssa ], [ %.1211362143.i, %bb.n ] ; 2 uses
  %.01176.lcssa3051.i = phi i32 [ %i.m, %.epilog-lcssa ], [ 0, %bb.n ] ; 3 uses
  %i.rv = phi <8 x i32> [ %i.ru, %.epilog-lcssa ], [ %i.qb, %bb.n ] ; 2 uses
  %.11173.i = phi ptr [ %i.lj, %.epilog-lcssa ], [ %.010732150.i, %bb.n ] ; 2 uses
  %i.rw = or disjoint i32 %.01176.lcssa3051.i, 1
  %i.rx = icmp slt i32 %i.rw, %8
  br i1 %i.rx, label %.lr.ph2130.i, label %.preheader1885.i

.preheader1885.i:                                 ; preds = %.lr.ph2130.i, %._crit_edge2121.i
  %.lcssa1986.i = phi <8 x i32> [ %i.rv, %._crit_edge2121.i ], [ %i.sv, %.lr.ph2130.i ] ; 3 uses
  %.11177.lcssa.i = phi i32 [ %.01176.lcssa3051.i, %._crit_edge2121.i ], [ %i.sy, %.lr.ph2130.i ] ; 5 uses
  %.21174.lcssa.i = phi ptr [ %.11173.i, %._crit_edge2121.i ], [ %i.sw, %.lr.ph2130.i ] ; 3 uses
  %.141138.lcssa.i = phi ptr [ %.131137.lcssa3054.i, %._crit_edge2121.i ], [ %i.sx, %.lr.ph2130.i ] ; 4 uses
  %i.ry = icmp slt i32 %.11177.lcssa.i, %8
  br i1 %i.ry, label %.lr.ph2138.i.preheader, label %._crit_edge2139.i

.lr.ph2138.i.preheader:                           ; preds = %.preheader1885.i
  %i.rz = sub i32 %8, %.11177.lcssa.i
  %.neg1910 = add i32 %.11177.lcssa.i, 1
  %xtraiter1793 = and i32 %i.rz, 1
  %lcmp.mod1794.not = icmp eq i32 %xtraiter1793, 0
  br i1 %lcmp.mod1794.not, label %.lr.ph2138.i.prol.loopexit, label %.lr.ph2138.i.prol

.lr.ph2138.i.prol:                                ; preds = %.lr.ph2138.i.preheader
  %i.sa = load <8 x i8>, ptr %.21174.lcssa.i, align 1, !tbaa !17
  %i.sb = load i8, ptr %.141138.lcssa.i, align 1, !tbaa !17
  %i.sc = sext i8 %i.sb to i16
  %i.sd = insertelement <8 x i16> poison, i16 %i.sc, i64 0
  %i.se = shufflevector <8 x i16> %i.sd, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sf = sext <8 x i8> %i.sa to <8 x i16>
  %i.sg = mul <8 x i16> %i.se, %i.sf
  %i.sh = sext <8 x i16> %i.sg to <8 x i32>
  %i.si = add <8 x i32> %.lcssa1986.i, %i.sh      ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.21174.lcssa.i, i64 8
  %i.sk = getelementptr inbounds nuw i8, ptr %.141138.lcssa.i, i64 1 ; 2 uses
  %i.sl = add nuw nsw i32 %.11177.lcssa.i, 1
  br label %.lr.ph2138.i.prol.loopexit

.lr.ph2138.i.prol.loopexit:                       ; preds = %.lr.ph2138.i.prol, %.lr.ph2138.i.preheader
  %.lcssa1773.unr = phi <8 x i32> [ poison, %.lr.ph2138.i.preheader ], [ %i.si, %.lr.ph2138.i.prol ]
  %.lcssa1772.unr = phi ptr [ poison, %.lr.ph2138.i.preheader ], [ %i.sk, %.lr.ph2138.i.prol ]
  %.1511392137.i.unr = phi ptr [ %.141138.lcssa.i, %.lr.ph2138.i.preheader ], [ %i.sk, %.lr.ph2138.i.prol ]
  %.311752136.i.unr = phi ptr [ %.21174.lcssa.i, %.lr.ph2138.i.preheader ], [ %i.sj, %.lr.ph2138.i.prol ]
  %.211782135.i.unr = phi i32 [ %.11177.lcssa.i, %.lr.ph2138.i.preheader ], [ %i.sl, %.lr.ph2138.i.prol ]
  %.unr1795 = phi <8 x i32> [ %.lcssa1986.i, %.lr.ph2138.i.preheader ], [ %i.si, %.lr.ph2138.i.prol ]
  %i.sm = icmp eq i32 %8, %.neg1910
  br i1 %i.sm, label %._crit_edge2139.i, label %.lr.ph2138.i

.lr.ph2130.i:                                     ; preds = %._crit_edge2121.i, %.lr.ph2130.i
  %.1411382128.i = phi ptr [ %i.sx, %.lr.ph2130.i ], [ %.131137.lcssa3054.i, %._crit_edge2121.i ] ; 2 uses
  %.211742127.i = phi ptr [ %i.sw, %.lr.ph2130.i ], [ %.11173.i, %._crit_edge2121.i ] ; 2 uses
  %.111772126.i = phi i32 [ %i.sy, %.lr.ph2130.i ], [ %.01176.lcssa3051.i, %._crit_edge2121.i ]
  %i.sn = phi <8 x i32> [ %i.sv, %.lr.ph2130.i ], [ %i.rv, %._crit_edge2121.i ]
  %i.so = load <16 x i8>, ptr %.211742127.i, align 1, !tbaa !17
  %i.sp = load float, ptr %.1411382128.i, align 1, !tbaa !17
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = sext <16 x i8> %i.so to <16 x i16>
  %i.ss = bitcast <4 x float> %i.sq to <16 x i8>
  %i.st = shufflevector <16 x i8> %i.ss, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.su = sext <16 x i8> %i.st to <16 x i16>
  %i.sv = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sn, <16 x i16> %i.sr, <16 x i16> %i.su) ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.211742127.i, i64 16 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.1411382128.i, i64 2 ; 2 uses
  %i.sy = add nuw nsw i32 %.111772126.i, 2        ; 3 uses
  %i.sz = or disjoint i32 %i.sy, 1
  %i.ta = icmp slt i32 %i.sz, %8
  br i1 %i.ta, label %.lr.ph2130.i, label %.preheader1885.i, !llvm.loop !328

.lr.ph2138.i:                                     ; preds = %.lr.ph2138.i.prol.loopexit, %.lr.ph2138.i
  %.1511392137.i = phi ptr [ %i.tx, %.lr.ph2138.i ], [ %.1511392137.i.unr, %.lr.ph2138.i.prol.loopexit ] ; 3 uses
  %.311752136.i = phi ptr [ %i.tw, %.lr.ph2138.i ], [ %.311752136.i.unr, %.lr.ph2138.i.prol.loopexit ] ; 3 uses
  %.211782135.i = phi i32 [ %i.ty, %.lr.ph2138.i ], [ %.211782135.i.unr, %.lr.ph2138.i.prol.loopexit ]
  %i.tb = phi <8 x i32> [ %i.tv, %.lr.ph2138.i ], [ %.unr1795, %.lr.ph2138.i.prol.loopexit ]
  %i.tc = load <8 x i8>, ptr %.311752136.i, align 1, !tbaa !17
  %i.td = load i8, ptr %.1511392137.i, align 1, !tbaa !17
  %i.te = sext i8 %i.td to i16
  %i.tf = insertelement <8 x i16> poison, i16 %i.te, i64 0
  %i.tg = shufflevector <8 x i16> %i.tf, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.th = sext <8 x i8> %i.tc to <8 x i16>
  %i.ti = mul <8 x i16> %i.tg, %i.th
  %i.tj = sext <8 x i16> %i.ti to <8 x i32>
  %i.tk = add <8 x i32> %i.tb, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %.311752136.i, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %.1511392137.i, i64 1
  %i.tn = load <8 x i8>, ptr %i.tl, align 1, !tbaa !17
  %i.to = load i8, ptr %i.tm, align 1, !tbaa !17
  %i.tp = sext i8 %i.to to i16
  %i.tq = insertelement <8 x i16> poison, i16 %i.tp, i64 0
  %i.tr = shufflevector <8 x i16> %i.tq, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ts = sext <8 x i8> %i.tn to <8 x i16>
  %i.tt = mul <8 x i16> %i.tr, %i.ts
  %i.tu = sext <8 x i16> %i.tt to <8 x i32>
  %i.tv = add <8 x i32> %i.tk, %i.tu              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.311752136.i, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %.1511392137.i, i64 2 ; 2 uses
  %i.ty = add nuw nsw i32 %.211782135.i, 2        ; 2 uses
  %exitcond2937.not.i.1 = icmp eq i32 %i.ty, %8
  br i1 %exitcond2937.not.i.1, label %._crit_edge2139.i, label %.lr.ph2138.i, !llvm.loop !329

._crit_edge2139.i:                                ; preds = %.lr.ph2138.i.prol.loopexit, %.lr.ph2138.i, %.preheader1885.i
  %.lcssa1987.i = phi <8 x i32> [ %.lcssa1986.i, %.preheader1885.i ], [ %.lcssa1773.unr, %.lr.ph2138.i.prol.loopexit ], [ %i.tv, %.lr.ph2138.i ]
  %.151139.lcssa.i = phi ptr [ %.141138.lcssa.i, %.preheader1885.i ], [ %.lcssa1772.unr, %.lr.ph2138.i.prol.loopexit ], [ %i.tx, %.lr.ph2138.i ]
  store <8 x i32> %.lcssa1987.i, ptr %.411162144.i, align 32, !tbaa !17
  %i.tz = getelementptr inbounds nuw i8, ptr %.411162144.i, i64 32 ; 2 uses
  %i.ua = add nuw nsw i32 %.311432142.i, 1        ; 2 uses
  %exitcond2938.not.i = icmp eq i32 %i.ua, %6
  br i1 %exitcond2938.not.i, label %._crit_edge2146.i, label %.lr.ph2145.i, !llvm.loop !330

._crit_edge2146.i:                                ; preds = %._crit_edge2139.i, %.preheader1889.i
  %.41116.lcssa.i = phi ptr [ %.31115.lcssa.i, %.preheader1889.i ], [ %i.tz, %._crit_edge2139.i ] ; 2 uses
  %i.ub = getelementptr inbounds i8, ptr %.010732150.i, i64 %i.j
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 %spec.select.idx.i ; 2 uses
  %i.uc = add nuw nsw i32 %.011202148.i, 8        ; 2 uses
  %i.ud = or disjoint i32 %i.uc, 7
  %i.ue = icmp slt i32 %i.ud, %4
  %scevgep459 = getelementptr i8, ptr %indvars.iv, i64 %i.v
  %scevgep462 = getelementptr i8, ptr %indvars.iv461, i64 %i.v
  br i1 %i.ue, label %.preheader1892.i, label %.preheader1884.loopexit.i, !llvm.loop !331

.preheader1883.i:                                 ; preds = %._crit_edge2304.i, %.preheader1883.lr.ph.i
  %indvars.iv465 = phi ptr [ %scevgep466, %._crit_edge2304.i ], [ %scevgep464, %.preheader1883.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep2943.i, %._crit_edge2304.i ], [ %scevgep2942.i, %.preheader1883.lr.ph.i ] ; 6 uses
  %.22308.i = phi ptr [ %spec.select1374.i, %._crit_edge2304.i ], [ %.01073.lcssa.i, %.preheader1883.lr.ph.i ] ; 12 uses
  %.511172307.i = phi ptr [ %.9.lcssa.i, %._crit_edge2304.i ], [ %.01112.lcssa.i, %.preheader1883.lr.ph.i ] ; 2 uses
  %.111212306.i = phi i32 [ %i.ame, %._crit_edge2304.i ], [ %.01120.lcssa.i, %.preheader1883.lr.ph.i ]
  br i1 %i.ae, label %.lr.ph2192.i, label %.preheader1882.i

.preheader1875.i:                                 ; preds = %._crit_edge2304.i, %.preheader1884.i
  %.11121.lcssa.i = phi i32 [ %.01120.lcssa.i, %.preheader1884.i ], [ %i.ame, %._crit_edge2304.i ] ; 3 uses
  %.51117.lcssa.i = phi ptr [ %.01112.lcssa.i, %.preheader1884.i ], [ %.9.lcssa.i, %._crit_edge2304.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.01073.lcssa.i, %.preheader1884.i ], [ %spec.select1374.i, %._crit_edge2304.i ] ; 4 uses
  %i.uf = or disjoint i32 %.11121.lcssa.i, 1
  %i.ug = icmp slt i32 %i.uf, %4
  br i1 %i.ug, label %.preheader1874.lr.ph.i, label %.preheader1866.i

.preheader1874.lr.ph.i:                           ; preds = %.preheader1875.i
  %i.uh = icmp sgt i32 %6, 7
  %i.ui = icmp eq i32 %7, 0                       ; 4 uses
  %i.uj = icmp sgt i32 %8, 3                      ; 5 uses
  %i.uk = shl i32 %8, 1
  %i.ul = sext i32 %i.uk to i64                   ; 3 uses
  %spec.select1375.idx.i = select i1 %i.uj, i64 8, i64 0 ; 3 uses
  %i.um = add i32 %8, -4                          ; 5 uses
  %i.un = and i32 %i.um, -4
  %i.uo = add i32 %i.un, 4                        ; 4 uses
  %i.up = and i32 %6, -8
  %i.uq = zext i32 %i.um to i64                   ; 2 uses
  %i.ur = lshr i64 %i.uq, 2                       ; 4 uses
  %i.us = shl nuw nsw i64 %i.ur, 4
  %i.ut = shl nuw nsw i64 %i.ur, 3                ; 2 uses
  %i.uu = add nuw nsw i64 %i.ut, 8                ; 2 uses
  %scevgep2954.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.uu
  %i.uv = and i64 %i.uq, 4294967292
  %i.uw = shl nuw nsw i64 %i.ur, 5
  %scevgep468 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ut
  %i.ux = add i32 %8, -2
  %i.uy = add nuw nsw i64 %i.ur, 1                ; 7 uses
  %i.uz = add i32 %8, -4                          ; 3 uses
  %i.va = lshr i32 %i.uz, 2                       ; 3 uses
  %i.vb = add nuw nsw i32 %i.va, 1                ; 4 uses
  %i.vc = icmp eq i32 %i.va, 0
  %unroll_iter1858 = and i32 %i.vb, 2147483646
  %i.vd = and i32 %i.uz, 4
  %lcmp.mod1851.not.not = icmp eq i32 %i.vd, 0
  %lcmp.mod1857 = trunc i32 %i.vb to i1
  %i.ve = icmp eq i32 %i.va, 0
  %unroll_iter1877 = and i32 %i.vb, 2147483646
  %i.vf = and i32 %i.uz, 4
  %lcmp.mod1871.not.not = icmp eq i32 %i.vf, 0
  %lcmp.mod1876 = trunc i32 %i.vb to i1
  %min.iters.check1162 = icmp samesign ult i32 %i.um, 28
  %n.vec1164 = and i64 %i.uy, 2147483640          ; 4 uses
  %i.vg = trunc nuw nsw i64 %n.vec1164 to i32
  %i.vh = shl i32 %i.vg, 2
  %i.vi = shl nuw nsw i64 %n.vec1164, 3           ; 2 uses
  %cmp.n1189 = icmp eq i64 %i.uy, %n.vec1164
  %i.vj = add i32 %8, -2
  %min.iters.check1027 = icmp samesign ult i32 %i.um, 12
  %min.iters.check1029 = icmp samesign ult i32 %i.um, 60
  %i.vk = and i64 %i.uy, 12
  %n.vec1031 = and i64 %i.uy, 2147483632          ; 6 uses
  %i.vl = trunc nuw nsw i64 %n.vec1031 to i32
  %i.vm = shl i32 %i.vl, 2
  %i.vn = shl nuw nsw i64 %n.vec1031, 3
  %i.vo = shl nuw nsw i64 %n.vec1031, 2
  %cmp.n1070 = icmp eq i64 %i.uy, %n.vec1031
  %min.epilog.iters.check1074 = icmp eq i64 %i.vk, 0
  %n.vec1079 = and i64 %i.uy, 2147483644          ; 5 uses
  %i.vp = trunc nuw nsw i64 %n.vec1079 to i32
  %i.vq = shl i32 %i.vp, 2
  %i.vr = shl nuw nsw i64 %n.vec1079, 3
  %i.vs = shl nuw nsw i64 %n.vec1079, 2
  %cmp.n1096 = icmp eq i64 %i.uy, %n.vec1079
  br label %.preheader1874.i

.preheader1882.i:                                 ; preds = %._crit_edge2183.i, %.preheader1883.i
  %.01223.lcssa.i = phi i32 [ 0, %.preheader1883.i ], [ %i.am, %._crit_edge2183.i ] ; 3 uses
  %.01179.lcssa.i = phi ptr [ %i.c, %.preheader1883.i ], [ %.31182.lcssa.i, %._crit_edge2183.i ] ; 2 uses
  %.61118.lcssa.i = phi ptr [ %.511172307.i, %.preheader1883.i ], [ %i.zr, %._crit_edge2183.i ] ; 2 uses
  %i.vt = or disjoint i32 %.01223.lcssa.i, 3
  %i.vu = icmp slt i32 %i.vt, %6
  br i1 %i.vu, label %.lr.ph2234.i.preheader, label %.preheader1881.i

.lr.ph2234.i.preheader:                           ; preds = %.preheader1882.i
  %i.vv = getelementptr inbounds nuw i8, ptr %indvars.iv465, i64 32
  br label %.lr.ph2234.i

.lr.ph2192.i:                                     ; preds = %.preheader1883.i, %._crit_edge2183.i
  %.611182191.i = phi ptr [ %i.zr, %._crit_edge2183.i ], [ %.511172307.i, %.preheader1883.i ] ; 9 uses
  %.011792190.i = phi ptr [ %.31182.lcssa.i, %._crit_edge2183.i ], [ %i.c, %.preheader1883.i ] ; 3 uses
  %.012232189.i = phi i32 [ %i.zs, %._crit_edge2183.i ], [ 0, %.preheader1883.i ]
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph2192.i
  %i.vw = load <8 x i32>, ptr %.611182191.i, align 32, !tbaa !17
  %i.vx = getelementptr inbounds nuw i8, ptr %.611182191.i, i64 32
  %i.vy = load <8 x i32>, ptr %i.vx, align 32, !tbaa !17
  %i.vz = getelementptr inbounds nuw i8, ptr %.611182191.i, i64 64
  %i.wa = load <8 x i32>, ptr %i.vz, align 32, !tbaa !17
  %i.wb = getelementptr inbounds nuw i8, ptr %.611182191.i, i64 96
  %i.wc = load <8 x i32>, ptr %i.wb, align 32, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph2192.i
  %i.wd = phi <8 x i32> [ %i.wa, %bb.o ], [ zeroinitializer, %.lr.ph2192.i ] ; 2 uses
  %i.we = phi <8 x i32> [ %i.vy, %bb.o ], [ zeroinitializer, %.lr.ph2192.i ] ; 2 uses
  %i.wf = phi <8 x i32> [ %i.vw, %bb.o ], [ zeroinitializer, %.lr.ph2192.i ] ; 2 uses
  %i.wg = phi <8 x i32> [ %i.wc, %bb.o ], [ zeroinitializer, %.lr.ph2192.i ] ; 2 uses
  br i1 %i.ag, label %.lr.ph2158.i, label %._crit_edge2159.i

.lr.ph2158.i:                                     ; preds = %bb.p, %.lr.ph2158.i
  %.111802156.i = phi ptr [ %i.wu, %.lr.ph2158.i ], [ %.011792190.i, %bb.p ] ; 2 uses
  %.012272155.i = phi ptr [ %i.wt, %.lr.ph2158.i ], [ %.22308.i, %bb.p ] ; 3 uses
  %.012482154.i = phi i32 [ %i.wv, %.lr.ph2158.i ], [ 0, %bb.p ]
  %i.wh = phi <8 x i32> [ %i.wp, %.lr.ph2158.i ], [ %i.wf, %bb.p ]
  %i.wi = phi <8 x i32> [ %i.wq, %.lr.ph2158.i ], [ %i.we, %bb.p ]
  %i.wj = phi <8 x i32> [ %i.wr, %.lr.ph2158.i ], [ %i.wd, %bb.p ]
  %i.wk = phi <8 x i32> [ %i.ws, %.lr.ph2158.i ], [ %i.wg, %bb.p ]
  %i.wl = load <16 x i8>, ptr %.012272155.i, align 1, !tbaa !17 ; 2 uses
  %i.wm = load <32 x i8>, ptr %.111802156.i, align 1, !tbaa !17 ; 3 uses
  %.cast1361.i = shufflevector <16 x i8> %i.wl, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wn = shufflevector <16 x i8> %i.wl, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.wo = shufflevector <32 x i8> %i.wm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.wp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wh, <32 x i8> %i.wm, <32 x i8> %.cast1361.i) ; 2 uses
  %i.wq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wi, <32 x i8> %i.wm, <32 x i8> %i.wn) ; 2 uses
  %i.wr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wj, <32 x i8> %i.wo, <32 x i8> %.cast1361.i) ; 2 uses
  %i.ws = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wk, <32 x i8> %i.wo, <32 x i8> %i.wn) ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.012272155.i, i64 16 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.111802156.i, i64 32
  %i.wv = add nuw nsw i32 %.012482154.i, 4        ; 2 uses
  %i.ww = or disjoint i32 %i.wv, 3
  %i.wx = icmp slt i32 %i.ww, %8
  br i1 %i.wx, label %.lr.ph2158.i, label %bb.q, !llvm.loop !332

bb.q:                                             ; preds = %.lr.ph2158.i
  %i.wy = getelementptr i8, ptr %.011792190.i, i64 %i.at
  %scevgep463 = getelementptr i8, ptr %i.wy, i64 32
  %i.wz = load <2 x i64>, ptr %i.wt, align 1, !tbaa !17
  %i.xa = shufflevector <2 x i64> %i.wz, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.xb = bitcast <4 x i64> %i.xa to <8 x i32>    ; 2 uses
  %i.xc = sub <8 x i32> %i.wp, %i.xb
  %i.xd = bitcast <4 x i64> %i.xa to <8 x i32>
  %i.xe = shufflevector <8 x i32> %i.xd, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.xf = sub <8 x i32> %i.wq, %i.xe
  %i.xg = sub <8 x i32> %i.wr, %i.xb
  %i.xh = sub <8 x i32> %i.ws, %i.xe
  %i.xi = getelementptr inbounds nuw i8, ptr %.012272155.i, i64 32
  br label %._crit_edge2159.i

._crit_edge2159.i:                                ; preds = %bb.q, %bb.p
  %.11180.lcssa3070.i = phi ptr [ %scevgep463, %bb.q ], [ %.011792190.i, %bb.p ] ; 2 uses
  %.01248.lcssa3067.i = phi i32 [ %i.al, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.xj = phi <8 x i32> [ %i.xh, %bb.q ], [ %i.wg, %bb.p ] ; 2 uses
  %i.xk = phi <8 x i32> [ %i.xg, %bb.q ], [ %i.wd, %bb.p ] ; 2 uses
  %i.xl = phi <8 x i32> [ %i.xf, %bb.q ], [ %i.we, %bb.p ] ; 2 uses
  %i.xm = phi <8 x i32> [ %i.xc, %bb.q ], [ %i.wf, %bb.p ] ; 2 uses
  %.11228.i = phi ptr [ %i.xi, %bb.q ], [ %.22308.i, %bb.p ] ; 2 uses
  %i.xn = or disjoint i32 %.01248.lcssa3067.i, 1
  %i.xo = icmp slt i32 %i.xn, %8
  br i1 %i.xo, label %.lr.ph2171.i, label %.preheader1879.i

.preheader1879.i:                                 ; preds = %.lr.ph2171.i, %._crit_edge2159.i
  %.lcssa1917.i = phi <8 x i32> [ %i.xj, %._crit_edge2159.i ], [ %i.yg, %.lr.ph2171.i ] ; 2 uses
  %.lcssa1916.i = phi <8 x i32> [ %i.xk, %._crit_edge2159.i ], [ %i.yf, %.lr.ph2171.i ] ; 2 uses
  %.lcssa1915.i = phi <8 x i32> [ %i.xl, %._crit_edge2159.i ], [ %i.yd, %.lr.ph2171.i ] ; 2 uses
  %.lcssa1914.i = phi <8 x i32> [ %i.xm, %._crit_edge2159.i ], [ %i.yb, %.lr.ph2171.i ] ; 2 uses
  %.11249.lcssa.i = phi i32 [ %.01248.lcssa3067.i, %._crit_edge2159.i ], [ %i.yj, %.lr.ph2171.i ] ; 2 uses
  %.21229.lcssa.i = phi ptr [ %.11228.i, %._crit_edge2159.i ], [ %i.yh, %.lr.ph2171.i ]
  %.21181.lcssa.i = phi ptr [ %.11180.lcssa3070.i, %._crit_edge2159.i ], [ %i.yi, %.lr.ph2171.i ] ; 2 uses
  %i.xp = icmp slt i32 %.11249.lcssa.i, %8
  br i1 %i.xp, label %.lr.ph2182.i, label %._crit_edge2183.i

.lr.ph2171.i:                                     ; preds = %._crit_edge2159.i, %.lr.ph2171.i
  %.211812169.i = phi ptr [ %i.yi, %.lr.ph2171.i ], [ %.11180.lcssa3070.i, %._crit_edge2159.i ] ; 2 uses
  %.212292168.i = phi ptr [ %i.yh, %.lr.ph2171.i ], [ %.11228.i, %._crit_edge2159.i ] ; 2 uses
  %.112492167.i = phi i32 [ %i.yj, %.lr.ph2171.i ], [ %.01248.lcssa3067.i, %._crit_edge2159.i ]
  %i.xq = phi <8 x i32> [ %i.yb, %.lr.ph2171.i ], [ %i.xm, %._crit_edge2159.i ]
  %i.xr = phi <8 x i32> [ %i.yd, %.lr.ph2171.i ], [ %i.xl, %._crit_edge2159.i ]
  %i.xs = phi <8 x i32> [ %i.yf, %.lr.ph2171.i ], [ %i.xk, %._crit_edge2159.i ]
  %i.xt = phi <8 x i32> [ %i.yg, %.lr.ph2171.i ], [ %i.xj, %._crit_edge2159.i ]
  %i.xu = load double, ptr %.212292168.i, align 1, !tbaa !17
  %i.xv = insertelement <2 x double> poison, double %i.xu, i64 0
  %i.xw = load <16 x i8>, ptr %.211812169.i, align 1, !tbaa !17
  %i.xx = bitcast <2 x double> %i.xv to <16 x i8>
  %i.xy = shufflevector <16 x i8> %i.xx, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xz = sext <16 x i8> %i.xy to <16 x i16>      ; 3 uses
  %i.ya = sext <16 x i8> %i.xw to <16 x i16>      ; 3 uses
  %i.yb = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xq, <16 x i16> %i.xz, <16 x i16> %i.ya) ; 2 uses
  %i.yc = shufflevector <16 x i16> %i.xz, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.yd = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xr, <16 x i16> %i.yc, <16 x i16> %i.ya) ; 2 uses
  %i.ye = shufflevector <16 x i16> %i.ya, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.yf = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xs, <16 x i16> %i.xz, <16 x i16> %i.ye) ; 2 uses
  %i.yg = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xt, <16 x i16> %i.yc, <16 x i16> %i.ye) ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.212292168.i, i64 8 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.211812169.i, i64 16 ; 2 uses
  %i.yj = add nuw nsw i32 %.112492167.i, 2        ; 3 uses
  %i.yk = or disjoint i32 %i.yj, 1
  %i.yl = icmp slt i32 %i.yk, %8
  br i1 %i.yl, label %.lr.ph2171.i, label %.preheader1879.i, !llvm.loop !333

.lr.ph2182.i:                                     ; preds = %.preheader1879.i, %.lr.ph2182.i
  %.311822181.i = phi ptr [ %i.zm, %.lr.ph2182.i ], [ %.21181.lcssa.i, %.preheader1879.i ] ; 2 uses
  %.312302180.i = phi ptr [ %i.zl, %.lr.ph2182.i ], [ %.21229.lcssa.i, %.preheader1879.i ] ; 2 uses
  %.212502179.i = phi i32 [ %i.zn, %.lr.ph2182.i ], [ %.11249.lcssa.i, %.preheader1879.i ]
  %i.ym = phi <8 x i32> [ %i.zh, %.lr.ph2182.i ], [ %.lcssa1914.i, %.preheader1879.i ]
  %i.yn = phi <8 x i32> [ %i.zi, %.lr.ph2182.i ], [ %.lcssa1915.i, %.preheader1879.i ]
  %i.yo = phi <8 x i32> [ %i.zj, %.lr.ph2182.i ], [ %.lcssa1916.i, %.preheader1879.i ]
  %i.yp = phi <8 x i32> [ %i.zk, %.lr.ph2182.i ], [ %.lcssa1917.i, %.preheader1879.i ]
  %i.yq = load float, ptr %.312302180.i, align 1, !tbaa !17
  %i.yr = insertelement <4 x float> poison, float %i.yq, i64 0
  %i.ys = load <8 x i8>, ptr %.311822181.i, align 1, !tbaa !17
  %i.yt = bitcast <4 x float> %i.yr to <16 x i8>
  %i.yu = shufflevector <16 x i8> %i.yt, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yv = sext <8 x i8> %i.yu to <8 x i16>        ; 3 uses
  %i.yw = sext <8 x i8> %i.ys to <8 x i16>        ; 3 uses
  %i.yx = shufflevector <8 x i16> %i.yw, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.yy = mul nsw <8 x i16> %i.yv, %i.yw
  %i.yz = sext <8 x i16> %i.yy to <8 x i32>
  %i.za = shufflevector <8 x i16> %i.yv, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.zb = mul nsw <8 x i16> %i.za, %i.yw
  %i.zc = sext <8 x i16> %i.zb to <8 x i32>
  %i.zd = mul nsw <8 x i16> %i.yx, %i.yv
  %i.ze = sext <8 x i16> %i.zd to <8 x i32>
  %i.zf = mul nsw <8 x i16> %i.yx, %i.za
  %i.zg = sext <8 x i16> %i.zf to <8 x i32>
  %i.zh = add <8 x i32> %i.ym, %i.yz              ; 2 uses
  %i.zi = add <8 x i32> %i.yn, %i.zc              ; 2 uses
  %i.zj = add <8 x i32> %i.yo, %i.ze              ; 2 uses
  %i.zk = add <8 x i32> %i.yp, %i.zg              ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.312302180.i, i64 4
  %i.zm = getelementptr inbounds nuw i8, ptr %.311822181.i, i64 8 ; 2 uses
  %i.zn = add nuw nsw i32 %.212502179.i, 1        ; 2 uses
  %exitcond2939.not.i = icmp eq i32 %i.zn, %8
  br i1 %exitcond2939.not.i, label %._crit_edge2183.i, label %.lr.ph2182.i, !llvm.loop !334

._crit_edge2183.i:                                ; preds = %.lr.ph2182.i, %.preheader1879.i
  %.lcssa1921.i = phi <8 x i32> [ %.lcssa1917.i, %.preheader1879.i ], [ %i.zk, %.lr.ph2182.i ]
  %.lcssa1920.i = phi <8 x i32> [ %.lcssa1916.i, %.preheader1879.i ], [ %i.zj, %.lr.ph2182.i ]
  %.lcssa1919.i = phi <8 x i32> [ %.lcssa1915.i, %.preheader1879.i ], [ %i.zi, %.lr.ph2182.i ]
  %.lcssa1918.i = phi <8 x i32> [ %.lcssa1914.i, %.preheader1879.i ], [ %i.zh, %.lr.ph2182.i ]
  %.31182.lcssa.i = phi ptr [ %.21181.lcssa.i, %.preheader1879.i ], [ %i.zm, %.lr.ph2182.i ] ; 2 uses
  store <8 x i32> %.lcssa1918.i, ptr %.611182191.i, align 32, !tbaa !17
  %i.zo = getelementptr inbounds nuw i8, ptr %.611182191.i, i64 32
  store <8 x i32> %.lcssa1919.i, ptr %i.zo, align 32, !tbaa !17
  %i.zp = getelementptr inbounds nuw i8, ptr %.611182191.i, i64 64
  store <8 x i32> %.lcssa1920.i, ptr %i.zp, align 32, !tbaa !17
  %i.zq = getelementptr inbounds nuw i8, ptr %.611182191.i, i64 96
  store <8 x i32> %.lcssa1921.i, ptr %i.zq, align 32, !tbaa !17
  %i.zr = getelementptr inbounds nuw i8, ptr %.611182191.i, i64 128 ; 2 uses
  %i.zs = add nuw nsw i32 %.012232189.i, 8        ; 2 uses
  %i.zt = or disjoint i32 %i.zs, 7
  %i.zu = icmp slt i32 %i.zt, %6
  br i1 %i.zu, label %.lr.ph2192.i, label %.preheader1882.i, !llvm.loop !335

.preheader1881.i:                                 ; preds = %._crit_edge2225.i, %.preheader1882.i
  %.11224.lcssa.i = phi i32 [ %.01223.lcssa.i, %.preheader1882.i ], [ %i.aej, %._crit_edge2225.i ] ; 3 uses
  %.41183.lcssa.i = phi ptr [ %.01179.lcssa.i, %.preheader1882.i ], [ %.71186.lcssa.i, %._crit_edge2225.i ] ; 2 uses
  %.71119.lcssa.i = phi ptr [ %.61118.lcssa.i, %.preheader1882.i ], [ %i.aei, %._crit_edge2225.i ] ; 2 uses
  %i.zv = or disjoint i32 %.11224.lcssa.i, 1
end_hunk_4
begin_hunk_5_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %epil.iter1832 = phi i32 [ %epil.iter1832.next, %.lr.ph2278.i.epil ], [ 0, %.lr.ph2278.i.epil.preheader ]
  %i.ajg = load <16 x i8>, ptr %.012922275.i.epil, align 1, !tbaa !17
  %i.ajh = load float, ptr %.1311922276.i.epil, align 1, !tbaa !17
  %i.aji = insertelement <4 x float> poison, float %i.ajh, i64 0
  %i.ajj = bitcast <4 x float> %i.aji to <16 x i8>
  %i.ajk = shufflevector <16 x i8> %i.ajj, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ajl = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ajf, <16 x i8> %i.ajk, <16 x i8> %i.ajg) ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.012922275.i.epil, i64 16
  %i.ajn = getelementptr inbounds nuw i8, ptr %.1311922276.i.epil, i64 4
  %epil.iter1832.next = add i32 %epil.iter1832, 1 ; 2 uses
  %epil.iter1832.cmp.not = icmp eq i32 %epil.iter1832.next, %xtraiter1831
  br i1 %epil.iter1832.cmp.not, label %.epilog-lcssa1836, label %.lr.ph2278.i.epil, !llvm.loop !345

.epilog-lcssa1836:                                ; preds = %.lr.ph2278.i.epil, %.unr-lcssa1830
  %.lcssa1698 = phi <4 x i32> [ %i.ajc, %.unr-lcssa1830 ], [ %i.ajl, %.lr.ph2278.i.epil ]
  %i.ajo = getelementptr i8, ptr %.1211912301.i, i64 %i.as
  %scevgep2946.i = getelementptr i8, ptr %i.ajo, i64 4
  %i.ajp = load <4 x i32>, ptr %indvars.iv.i, align 1, !tbaa !17
  %i.ajq = sub <4 x i32> %.lcssa1698, %i.ajp
  br label %._crit_edge2279.i

._crit_edge2279.i:                                ; preds = %.epilog-lcssa1836, %bb.y
  %.131192.lcssa3108.i = phi ptr [ %scevgep2946.i, %.epilog-lcssa1836 ], [ %.1211912301.i, %bb.y ] ; 2 uses
  %.01296.lcssa3105.i = phi i32 [ %i.al, %.epilog-lcssa1836 ], [ 0, %bb.y ] ; 3 uses
  %i.ajr = phi <4 x i32> [ %i.ajq, %.epilog-lcssa1836 ], [ %i.ahx, %bb.y ] ; 2 uses
  %.11293.i = phi ptr [ %i.aen, %.epilog-lcssa1836 ], [ %.22308.i, %bb.y ] ; 2 uses
  %i.ajs = or disjoint i32 %.01296.lcssa3105.i, 1
  %i.ajt = icmp slt i32 %i.ajs, %8
  br i1 %i.ajt, label %.lr.ph2288.i, label %.preheader1876.i

.preheader1876.i:                                 ; preds = %.lr.ph2288.i, %._crit_edge2279.i
  %.lcssa1941.i = phi <4 x i32> [ %i.ajr, %._crit_edge2279.i ], [ %i.akt, %.lr.ph2288.i ] ; 3 uses
  %.11297.lcssa.i = phi i32 [ %.01296.lcssa3105.i, %._crit_edge2279.i ], [ %i.akw, %.lr.ph2288.i ] ; 5 uses
  %.21294.lcssa.i = phi ptr [ %.11293.i, %._crit_edge2279.i ], [ %i.aku, %.lr.ph2288.i ] ; 3 uses
  %.141193.lcssa.i = phi ptr [ %.131192.lcssa3108.i, %._crit_edge2279.i ], [ %i.akv, %.lr.ph2288.i ] ; 4 uses
  %i.aju = icmp slt i32 %.11297.lcssa.i, %8
  br i1 %i.aju, label %.lr.ph2296.i.preheader, label %._crit_edge2297.i

.lr.ph2296.i.preheader:                           ; preds = %.preheader1876.i
  %i.ajv = sub i32 %8, %.11297.lcssa.i
  %.neg1911 = add i32 %.11297.lcssa.i, 1
  %xtraiter1841 = and i32 %i.ajv, 1
  %lcmp.mod1842.not = icmp eq i32 %xtraiter1841, 0
  br i1 %lcmp.mod1842.not, label %.lr.ph2296.i.prol.loopexit, label %.lr.ph2296.i.prol

.lr.ph2296.i.prol:                                ; preds = %.lr.ph2296.i.preheader
  %i.ajw = load <8 x i8>, ptr %.21294.lcssa.i, align 1, !tbaa !17
  %i.ajx = load i8, ptr %.141193.lcssa.i, align 1, !tbaa !17
  %i.ajy = sext i8 %i.ajx to i16
  %i.ajz = insertelement <8 x i16> poison, i16 %i.ajy, i64 0
  %i.aka = shufflevector <8 x i16> %i.ajz, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.akb = sext <8 x i8> %i.ajw to <8 x i16>      ; 2 uses
  %i.akc = mul <8 x i16> %i.aka, %i.akb
  %i.akd = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.akb, <8 x i16> %i.aka)
  %i.ake = shufflevector <8 x i16> %i.akc, <8 x i16> %i.akd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akf = bitcast <8 x i16> %i.ake to <4 x i32>
  %i.akg = add <4 x i32> %.lcssa1941.i, %i.akf    ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.21294.lcssa.i, i64 4
  %i.aki = getelementptr inbounds nuw i8, ptr %.141193.lcssa.i, i64 1 ; 2 uses
  %i.akj = add nuw nsw i32 %.11297.lcssa.i, 1
  br label %.lr.ph2296.i.prol.loopexit

.lr.ph2296.i.prol.loopexit:                       ; preds = %.lr.ph2296.i.prol, %.lr.ph2296.i.preheader
  %.lcssa1704.unr = phi <4 x i32> [ poison, %.lr.ph2296.i.preheader ], [ %i.akg, %.lr.ph2296.i.prol ]
  %.lcssa1703.unr = phi ptr [ poison, %.lr.ph2296.i.preheader ], [ %i.aki, %.lr.ph2296.i.prol ]
  %.1511942295.i.unr = phi ptr [ %.141193.lcssa.i, %.lr.ph2296.i.preheader ], [ %i.aki, %.lr.ph2296.i.prol ]
  %.312952294.i.unr = phi ptr [ %.21294.lcssa.i, %.lr.ph2296.i.preheader ], [ %i.akh, %.lr.ph2296.i.prol ]
  %.212982293.i.unr = phi i32 [ %.11297.lcssa.i, %.lr.ph2296.i.preheader ], [ %i.akj, %.lr.ph2296.i.prol ]
  %.unr1843 = phi <4 x i32> [ %.lcssa1941.i, %.lr.ph2296.i.preheader ], [ %i.akg, %.lr.ph2296.i.prol ]
  %i.akk = icmp eq i32 %8, %.neg1911
  br i1 %i.akk, label %._crit_edge2297.i, label %.lr.ph2296.i

.lr.ph2288.i:                                     ; preds = %._crit_edge2279.i, %.lr.ph2288.i
  %.1411932286.i = phi ptr [ %i.akv, %.lr.ph2288.i ], [ %.131192.lcssa3108.i, %._crit_edge2279.i ] ; 2 uses
  %.212942285.i = phi ptr [ %i.aku, %.lr.ph2288.i ], [ %.11293.i, %._crit_edge2279.i ] ; 2 uses
  %.112972284.i = phi i32 [ %i.akw, %.lr.ph2288.i ], [ %.01296.lcssa3105.i, %._crit_edge2279.i ]
  %i.akl = phi <4 x i32> [ %i.akt, %.lr.ph2288.i ], [ %i.ajr, %._crit_edge2279.i ]
  %i.akm = load <8 x i8>, ptr %.212942285.i, align 1, !tbaa !17
  %i.akn = load i16, ptr %.1411932286.i, align 2, !tbaa !404
  %i.ako = insertelement <8 x i16> poison, i16 %i.akn, i64 0
  %i.akp = sext <8 x i8> %i.akm to <8 x i16>
  %i.akq = bitcast <8 x i16> %i.ako to <16 x i8>
  %i.akr = shufflevector <16 x i8> %i.akq, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aks = sext <8 x i8> %i.akr to <8 x i16>
  %i.akt = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.akl, <8 x i16> %i.akp, <8 x i16> %i.aks) ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.212942285.i, i64 8 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.1411932286.i, i64 2 ; 2 uses
  %i.akw = add nuw nsw i32 %.112972284.i, 2       ; 3 uses
  %i.akx = or disjoint i32 %i.akw, 1
  %i.aky = icmp slt i32 %i.akx, %8
  br i1 %i.aky, label %.lr.ph2288.i, label %.preheader1876.i, !llvm.loop !346

.lr.ph2296.i:                                     ; preds = %.lr.ph2296.i.prol.loopexit, %.lr.ph2296.i
  %.1511942295.i = phi ptr [ %i.alz, %.lr.ph2296.i ], [ %.1511942295.i.unr, %.lr.ph2296.i.prol.loopexit ] ; 3 uses
  %.312952294.i = phi ptr [ %i.aly, %.lr.ph2296.i ], [ %.312952294.i.unr, %.lr.ph2296.i.prol.loopexit ] ; 3 uses
  %.212982293.i = phi i32 [ %i.ama, %.lr.ph2296.i ], [ %.212982293.i.unr, %.lr.ph2296.i.prol.loopexit ]
  %i.akz = phi <4 x i32> [ %i.alx, %.lr.ph2296.i ], [ %.unr1843, %.lr.ph2296.i.prol.loopexit ]
  %i.ala = load <8 x i8>, ptr %.312952294.i, align 1, !tbaa !17
  %i.alb = load i8, ptr %.1511942295.i, align 1, !tbaa !17
  %i.alc = sext i8 %i.alb to i16
  %i.ald = insertelement <8 x i16> poison, i16 %i.alc, i64 0
  %i.ale = shufflevector <8 x i16> %i.ald, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.alf = sext <8 x i8> %i.ala to <8 x i16>      ; 2 uses
  %i.alg = mul <8 x i16> %i.ale, %i.alf
  %i.alh = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.alf, <8 x i16> %i.ale)
  %i.ali = shufflevector <8 x i16> %i.alg, <8 x i16> %i.alh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alj = bitcast <8 x i16> %i.ali to <4 x i32>
  %i.alk = add <4 x i32> %i.akz, %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %.312952294.i, i64 4
  %i.alm = getelementptr inbounds nuw i8, ptr %.1511942295.i, i64 1
  %i.aln = load <8 x i8>, ptr %i.all, align 1, !tbaa !17
  %i.alo = load i8, ptr %i.alm, align 1, !tbaa !17
  %i.alp = sext i8 %i.alo to i16
  %i.alq = insertelement <8 x i16> poison, i16 %i.alp, i64 0
  %i.alr = shufflevector <8 x i16> %i.alq, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.als = sext <8 x i8> %i.aln to <8 x i16>      ; 2 uses
  %i.alt = mul <8 x i16> %i.alr, %i.als
  %i.alu = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.als, <8 x i16> %i.alr)
  %i.alv = shufflevector <8 x i16> %i.alt, <8 x i16> %i.alu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alw = bitcast <8 x i16> %i.alv to <4 x i32>
  %i.alx = add <4 x i32> %i.alk, %i.alw           ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.312952294.i, i64 8
  %i.alz = getelementptr inbounds nuw i8, ptr %.1511942295.i, i64 2 ; 2 uses
  %i.ama = add nuw nsw i32 %.212982293.i, 2       ; 2 uses
  %exitcond2947.not.i.1 = icmp eq i32 %i.ama, %8
  br i1 %exitcond2947.not.i.1, label %._crit_edge2297.i, label %.lr.ph2296.i, !llvm.loop !347

._crit_edge2297.i:                                ; preds = %.lr.ph2296.i.prol.loopexit, %.lr.ph2296.i, %.preheader1876.i
  %.lcssa1942.i = phi <4 x i32> [ %.lcssa1941.i, %.preheader1876.i ], [ %.lcssa1704.unr, %.lr.ph2296.i.prol.loopexit ], [ %i.alx, %.lr.ph2296.i ]
  %.151194.lcssa.i = phi ptr [ %.141193.lcssa.i, %.preheader1876.i ], [ %.lcssa1703.unr, %.lr.ph2296.i.prol.loopexit ], [ %i.alz, %.lr.ph2296.i ]
  store <4 x i32> %.lcssa1942.i, ptr %.92302.i, align 16, !tbaa !17
  %i.amb = getelementptr inbounds nuw i8, ptr %.92302.i, i64 16 ; 2 uses
  %i.amc = add nuw nsw i32 %.312262300.i, 1       ; 2 uses
  %exitcond2948.not.i = icmp eq i32 %i.amc, %6
  br i1 %exitcond2948.not.i, label %._crit_edge2304.i, label %.lr.ph2303.i, !llvm.loop !348

._crit_edge2304.i:                                ; preds = %._crit_edge2297.i, %.preheader1880.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader1880.i ], [ %i.amb, %._crit_edge2297.i ] ; 2 uses
  %i.amd = getelementptr inbounds i8, ptr %.22308.i, i64 %i.ai
  %spec.select1374.i = getelementptr inbounds nuw i8, ptr %i.amd, i64 %spec.select1374.idx.i ; 2 uses
  %i.ame = add nuw nsw i32 %.111212306.i, 4       ; 3 uses
  %i.amf = or disjoint i32 %i.ame, 3
  %i.amg = icmp slt i32 %i.amf, %4
  %i.amh = getelementptr i8, ptr %indvars.iv.i, i64 %spec.select1374.idx.i
  %scevgep2943.i = getelementptr i8, ptr %i.amh, i64 %i.ai
  %i.ami = getelementptr i8, ptr %indvars.iv465, i64 %spec.select1374.idx.i
  %scevgep466 = getelementptr i8, ptr %i.ami, i64 %i.ai
  br i1 %i.amg, label %.preheader1883.i, label %.preheader1875.i, !llvm.loop !349

.preheader1874.i:                                 ; preds = %._crit_edge2477.i, %.preheader1874.lr.ph.i
  %indvars.iv469 = phi ptr [ %scevgep470, %._crit_edge2477.i ], [ %scevgep468, %.preheader1874.lr.ph.i ] ; 3 uses
  %indvars.iv2955.i = phi ptr [ %scevgep2956.i, %._crit_edge2477.i ], [ %scevgep2954.i, %.preheader1874.lr.ph.i ] ; 5 uses
  %.42481.i = phi ptr [ %spec.select1375.i, %._crit_edge2477.i ], [ %.2.lcssa.i, %.preheader1874.lr.ph.i ] ; 42 uses
  %.102480.i = phi ptr [ %.14.lcssa.i, %._crit_edge2477.i ], [ %.51117.lcssa.i, %.preheader1874.lr.ph.i ] ; 2 uses
  %.211222479.i = phi i32 [ %i.czc, %._crit_edge2477.i ], [ %.11121.lcssa.i, %.preheader1874.lr.ph.i ]
  br i1 %i.uh, label %.lr.ph2344.i, label %.preheader1873.i

.preheader1866.i:                                 ; preds = %._crit_edge2477.i, %.preheader1875.i
  %.21122.lcssa.i = phi i32 [ %.11121.lcssa.i, %.preheader1875.i ], [ %i.czc, %._crit_edge2477.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.51117.lcssa.i, %.preheader1875.i ], [ %.14.lcssa.i, %._crit_edge2477.i ]
  %.4.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader1875.i ], [ %spec.select1375.i, %._crit_edge2477.i ] ; 3 uses
  %i.amj = icmp slt i32 %.21122.lcssa.i, %4
  br i1 %i.amj, label %.preheader1865.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader1865.lr.ph.i:                           ; preds = %.preheader1866.i
  %i.amk = icmp sgt i32 %6, 7
  %i.aml = icmp eq i32 %7, 0                      ; 4 uses
  %i.amm = icmp sgt i32 %8, 3                     ; 5 uses
  %i.amn = sext i32 %8 to i64                     ; 2 uses
  %spec.select1376.idx.i = select i1 %i.amm, i64 4, i64 0 ; 2 uses
  %i.amo = add i32 %8, -4                         ; 5 uses
  %i.amp = and i32 %i.amo, -4
  %i.amq = add i32 %i.amp, 4                      ; 4 uses
  %i.amr = and i32 %6, -8
  %i.ams = zext i32 %i.amo to i64                 ; 4 uses
  %i.amt = lshr i64 %i.ams, 2                     ; 4 uses
  %i.amu = shl nuw nsw i64 %i.amt, 4
  %i.amv = shl nuw nsw i64 %i.amt, 3
  %i.amw = and i64 %i.ams, 4294967292
  %i.amx = shl nuw nsw i64 %i.amt, 5
  %i.amy = and i64 %i.ams, 4294967292             ; 2 uses
  %scevgep472 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.amy
  %i.amz = add nsw i64 %spec.select1376.idx.i, %i.amn ; 2 uses
  %i.ana = getelementptr i8, ptr %.4.lcssa.i, i64 %i.amy
  %scevgep475 = getelementptr i8, ptr %i.ana, i64 4
  %i.anb = add i32 %8, -2
  %i.anc = add nuw nsw i64 %i.amt, 1              ; 5 uses
  %i.and = add i32 %8, -4                         ; 3 uses
  %i.ane = lshr i32 %i.and, 2
  %i.anf = add nuw nsw i32 %i.ane, 1              ; 4 uses
  %xtraiter1880 = and i32 %i.anf, 3               ; 3 uses
  %i.ang = icmp ult i32 %i.and, 12
  %unroll_iter1890 = and i32 %i.anf, 2147483644
  %lcmp.mod1884.not = icmp eq i32 %xtraiter1880, 0
  %lcmp.mod1889 = icmp ne i32 %xtraiter1880, 0
  %xtraiter1896 = and i32 %i.anf, 3               ; 3 uses
  %i.anh = icmp ult i32 %i.and, 12
  %unroll_iter1905 = and i32 %i.anf, 2147483644
  %lcmp.mod1900.not = icmp eq i32 %xtraiter1896, 0
  %lcmp.mod1904 = icmp ne i32 %xtraiter1896, 0
  %min.iters.check1397 = icmp samesign ult i32 %i.amo, 12
  %min.iters.check1399 = icmp ult i32 %i.amo, 60
  %i.ani = and i64 %i.anc, 12
  %n.vec1401 = and i64 %i.anc, 2147483632         ; 6 uses
  %i.anj = trunc nuw nsw i64 %n.vec1401 to i32
  %i.ank = shl i32 %i.anj, 2
  %i.anl = shl nuw nsw i64 %n.vec1401, 2
  %i.anm = shl nuw nsw i64 %n.vec1401, 3
  %cmp.n1440 = icmp eq i64 %i.anc, %n.vec1401
  %min.epilog.iters.check1444 = icmp eq i64 %i.ani, 0
  %n.vec1449 = and i64 %i.anc, 2147483644         ; 5 uses
  %i.ann = trunc nuw nsw i64 %n.vec1449 to i32
  %i.ano = shl i32 %i.ann, 2
  %i.anp = shl nuw nsw i64 %n.vec1449, 2
  %i.anq = shl nuw nsw i64 %n.vec1449, 3
  %cmp.n1466 = icmp eq i64 %i.anc, %n.vec1449
  %i.anr = lshr i64 %i.ams, 2
  %i.ans = add nuw nsw i64 %i.anr, 1              ; 2 uses
  %min.iters.check1248 = icmp samesign ult i32 %i.amo, 28
  %n.vec1250 = and i64 %i.ans, 2147483640         ; 4 uses
  %i.ant = trunc nuw nsw i64 %n.vec1250 to i32
  %i.anu = shl nuw nsw i32 %i.ant, 2
  %i.anv = shl nuw nsw i64 %n.vec1250, 2          ; 2 uses
  %cmp.n1268 = icmp eq i64 %i.ans, %n.vec1250
  br label %.preheader1865.i

.preheader1873.i:                                 ; preds = %._crit_edge2337.i, %.preheader1874.i
  %.01315.lcssa.i = phi i32 [ 0, %.preheader1874.i ], [ %i.up, %._crit_edge2337.i ] ; 3 uses
  %.01299.lcssa.i = phi ptr [ %i.c, %.preheader1874.i ], [ %.31302.lcssa.i, %._crit_edge2337.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.102480.i, %.preheader1874.i ], [ %i.asu, %._crit_edge2337.i ] ; 2 uses
  %i.anw = or disjoint i32 %.01315.lcssa.i, 3
  %i.anx = icmp slt i32 %i.anw, %6
  br i1 %i.anx, label %.lr.ph2380.i.preheader, label %.preheader1872.i

.lr.ph2380.i.preheader:                           ; preds = %.preheader1873.i
  %i.any = getelementptr inbounds nuw i8, ptr %indvars.iv469, i64 16
  br label %.lr.ph2380.i

.lr.ph2344.i:                                     ; preds = %.preheader1874.i, %._crit_edge2337.i
  %.112343.i = phi ptr [ %i.asu, %._crit_edge2337.i ], [ %.102480.i, %.preheader1874.i ] ; 5 uses
  %.012992342.i = phi ptr [ %.31302.lcssa.i, %._crit_edge2337.i ], [ %i.c, %.preheader1874.i ] ; 4 uses
  %.013152341.i = phi i32 [ %i.asv, %._crit_edge2337.i ], [ 0, %.preheader1874.i ]
  br i1 %i.ui, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph2344.i
  %i.anz = load <8 x i32>, ptr %.112343.i, align 1, !tbaa !17
  %i.aoa = getelementptr inbounds nuw i8, ptr %.112343.i, i64 32
  %i.aob = load <8 x i32>, ptr %i.aoa, align 1, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph2344.i
  %i.aoc = phi <8 x i32> [ %i.anz, %bb.z ], [ zeroinitializer, %.lr.ph2344.i ] ; 3 uses
  %i.aod = phi <8 x i32> [ %i.aob, %bb.z ], [ zeroinitializer, %.lr.ph2344.i ] ; 3 uses
  br i1 %i.uj, label %.lr.ph2316.i.preheader, label %._crit_edge2317.i

.lr.ph2316.i.preheader:                           ; preds = %bb.aa
  br i1 %i.vc, label %.lr.ph2316.i.epil.preheader, label %.lr.ph2316.i

.lr.ph2316.i:                                     ; preds = %.lr.ph2316.i.preheader, %.lr.ph2316.i
  %.113002314.i = phi ptr [ %i.aoz, %.lr.ph2316.i ], [ %.012992342.i, %.lr.ph2316.i.preheader ] ; 3 uses
  %.013192313.i = phi ptr [ %i.aoy, %.lr.ph2316.i ], [ %.42481.i, %.lr.ph2316.i.preheader ] ; 4 uses
  %i.aoe = phi <8 x i32> [ %i.aox, %.lr.ph2316.i ], [ %i.aod, %.lr.ph2316.i.preheader ]
  %i.aof = phi <8 x i32> [ %i.aow, %.lr.ph2316.i ], [ %i.aoc, %.lr.ph2316.i.preheader ]
  %niter1859 = phi i32 [ %niter1859.next.1, %.lr.ph2316.i ], [ 0, %.lr.ph2316.i.preheader ]
  %i.aog = load double, ptr %.013192313.i, align 1, !tbaa !17
  %i.aoh = insertelement <4 x double> poison, double %i.aog, i64 0
  %i.aoi = bitcast <4 x double> %i.aoh to <4 x i64>
  %i.aoj = shufflevector <4 x i64> %i.aoi, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i = bitcast <4 x i64> %i.aoj to <32 x i8> ; 2 uses
  %i.aok = shufflevector <32 x i8> %.cast1352.i, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.aol = load <32 x i8>, ptr %.113002314.i, align 1, !tbaa !17 ; 2 uses
  %i.aom = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aof, <32 x i8> %i.aol, <32 x i8> %.cast1352.i)
  %i.aon = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aoe, <32 x i8> %i.aol, <32 x i8> %i.aok)
  %i.aoo = getelementptr inbounds nuw i8, ptr %.013192313.i, i64 8
  %i.aop = getelementptr inbounds nuw i8, ptr %.113002314.i, i64 32
  %i.aoq = load double, ptr %i.aoo, align 1, !tbaa !17
  %i.aor = insertelement <4 x double> poison, double %i.aoq, i64 0
  %i.aos = bitcast <4 x double> %i.aor to <4 x i64>
  %i.aot = shufflevector <4 x i64> %i.aos, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i.1 = bitcast <4 x i64> %i.aot to <32 x i8> ; 2 uses
  %i.aou = shufflevector <32 x i8> %.cast1352.i.1, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.aov = load <32 x i8>, ptr %i.aop, align 1, !tbaa !17 ; 2 uses
  %i.aow = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aom, <32 x i8> %i.aov, <32 x i8> %.cast1352.i.1) ; 3 uses
  %i.aox = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aon, <32 x i8> %i.aov, <32 x i8> %i.aou) ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.013192313.i, i64 16 ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.113002314.i, i64 64 ; 2 uses
  %niter1859.next.1 = add i32 %niter1859, 2       ; 2 uses
  %niter1859.ncmp.1.not = icmp eq i32 %niter1859.next.1, %unroll_iter1858
  br i1 %niter1859.ncmp.1.not, label %.unr-lcssa1844, label %.lr.ph2316.i, !llvm.loop !350

.unr-lcssa1844:                                   ; preds = %.lr.ph2316.i
  %i.apa = getelementptr inbounds nuw i8, ptr %.013192313.i, i64 8
  br i1 %lcmp.mod1851.not.not, label %.lr.ph2316.i.epil.preheader, label %bb.ab

.lr.ph2316.i.epil.preheader:                      ; preds = %.unr-lcssa1844, %.lr.ph2316.i.preheader
  %.113002314.i.epil.init = phi ptr [ %.012992342.i, %.lr.ph2316.i.preheader ], [ %i.aoz, %.unr-lcssa1844 ]
  %.013192313.i.epil.init = phi ptr [ %.42481.i, %.lr.ph2316.i.preheader ], [ %i.aoy, %.unr-lcssa1844 ] ; 3 uses
  %.epil.init1848 = phi <8 x i32> [ %i.aod, %.lr.ph2316.i.preheader ], [ %i.aox, %.unr-lcssa1844 ]
  %.epil.init1850 = phi <8 x i32> [ %i.aoc, %.lr.ph2316.i.preheader ], [ %i.aow, %.unr-lcssa1844 ]
  tail call void @llvm.assume(i1 %lcmp.mod1857)
  %i.apb = load double, ptr %.013192313.i.epil.init, align 1, !tbaa !17
  %i.apc = insertelement <4 x double> poison, double %i.apb, i64 0
  %i.apd = bitcast <4 x double> %i.apc to <4 x i64>
  %i.ape = shufflevector <4 x i64> %i.apd, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i.epil = bitcast <4 x i64> %i.ape to <32 x i8> ; 2 uses
  %i.apf = shufflevector <32 x i8> %.cast1352.i.epil, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.apg = load <32 x i8>, ptr %.113002314.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aph = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.epil.init1850, <32 x i8> %i.apg, <32 x i8> %.cast1352.i.epil)
  %i.api = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.epil.init1848, <32 x i8> %i.apg, <32 x i8> %i.apf)
  %i.apj = getelementptr inbounds nuw i8, ptr %.013192313.i.epil.init, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.unr-lcssa1844, %.lr.ph2316.i.epil.preheader
  %.013192313.i.lcssa = phi ptr [ %i.apa, %.unr-lcssa1844 ], [ %.013192313.i.epil.init, %.lr.ph2316.i.epil.preheader ]
  %.lcssa1572 = phi <8 x i32> [ %i.aow, %.unr-lcssa1844 ], [ %i.aph, %.lr.ph2316.i.epil.preheader ]
  %.lcssa1571 = phi <8 x i32> [ %i.aox, %.unr-lcssa1844 ], [ %i.api, %.lr.ph2316.i.epil.preheader ]
  %.lcssa1570 = phi ptr [ %i.aoy, %.unr-lcssa1844 ], [ %i.apj, %.lr.ph2316.i.epil.preheader ]
  %i.apk = getelementptr i8, ptr %.012992342.i, i64 %i.uw
  %scevgep467 = getelementptr i8, ptr %i.apk, i64 32
  %i.apl = load double, ptr %.lcssa1570, align 1, !tbaa !17
  %i.apm = insertelement <4 x double> poison, double %i.apl, i64 0
  %i.apn = bitcast <4 x double> %i.apm to <4 x i64>
  %i.apo = shufflevector <4 x i64> %i.apn, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.app = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.apq = sub <8 x i32> %.lcssa1572, %i.app
  %i.apr = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.aps = shufflevector <8 x i32> %i.apr, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.apt = sub <8 x i32> %.lcssa1571, %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %.013192313.i.lcssa, i64 16
  br label %._crit_edge2317.i

._crit_edge2317.i:                                ; preds = %bb.ab, %bb.aa
  %.11300.lcssa3120.i = phi ptr [ %scevgep467, %bb.ab ], [ %.012992342.i, %bb.aa ] ; 2 uses
  %.01323.lcssa3117.i = phi i32 [ %i.uo, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.apv = phi <8 x i32> [ %i.apq, %bb.ab ], [ %i.aoc, %bb.aa ] ; 2 uses
  %i.apw = phi <8 x i32> [ %i.apt, %bb.ab ], [ %i.aod, %bb.aa ] ; 2 uses
  %.11320.i = phi ptr [ %i.apu, %bb.ab ], [ %.42481.i, %bb.aa ] ; 2 uses
  %i.apx = or disjoint i32 %.01323.lcssa3117.i, 1
  %i.apy = icmp slt i32 %i.apx, %8
  br i1 %i.apy, label %.lr.ph2327.i, label %.preheader1870.i

.preheader1870.i:                                 ; preds = %.lr.ph2327.i, %._crit_edge2317.i
  %.lcssa1901.i = phi <8 x i32> [ %i.apv, %._crit_edge2317.i ], [ %i.arc, %.lr.ph2327.i ] ; 3 uses
  %.lcssa1900.i = phi <8 x i32> [ %i.apw, %._crit_edge2317.i ], [ %i.are, %.lr.ph2327.i ] ; 3 uses
  %.11324.lcssa.i = phi i32 [ %.01323.lcssa3117.i, %._crit_edge2317.i ], [ %i.arh, %.lr.ph2327.i ] ; 5 uses
  %.21321.lcssa.i = phi ptr [ %.11320.i, %._crit_edge2317.i ], [ %i.arf, %.lr.ph2327.i ] ; 3 uses
  %.21301.lcssa.i = phi ptr [ %.11300.lcssa3120.i, %._crit_edge2317.i ], [ %i.arg, %.lr.ph2327.i ] ; 4 uses
  %i.apz = icmp slt i32 %.11324.lcssa.i, %8
  br i1 %i.apz, label %.lr.ph2336.i.preheader, label %._crit_edge2337.i

.lr.ph2336.i.preheader:                           ; preds = %.preheader1870.i
  %i.aqa = sub i32 %8, %.11324.lcssa.i
  %.neg1912 = add i32 %.11324.lcssa.i, 1
  %xtraiter1860 = and i32 %i.aqa, 1
  %lcmp.mod1861.not = icmp eq i32 %xtraiter1860, 0
  br i1 %lcmp.mod1861.not, label %.lr.ph2336.i.prol.loopexit, label %.lr.ph2336.i.prol

.lr.ph2336.i.prol:                                ; preds = %.lr.ph2336.i.preheader
  %i.aqb = load i16, ptr %.21321.lcssa.i, align 2, !tbaa !404
  %i.aqc = insertelement <8 x i16> poison, i16 %i.aqb, i64 0
  %i.aqd = load <8 x i8>, ptr %.21301.lcssa.i, align 1, !tbaa !17
  %i.aqe = bitcast <8 x i16> %i.aqc to <16 x i8>
  %i.aqf = shufflevector <16 x i8> %i.aqe, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aqg = sext <8 x i8> %i.aqf to <8 x i16>      ; 2 uses
  %i.aqh = sext <8 x i8> %i.aqd to <8 x i16>      ; 2 uses
  %i.aqi = shufflevector <8 x i16> %i.aqg, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aqj = mul nsw <8 x i16> %i.aqg, %i.aqh
  %i.aqk = sext <8 x i16> %i.aqj to <8 x i32>
  %i.aql = mul nsw <8 x i16> %i.aqi, %i.aqh
  %i.aqm = sext <8 x i16> %i.aql to <8 x i32>
  %i.aqn = add <8 x i32> %.lcssa1901.i, %i.aqk    ; 2 uses
  %i.aqo = add <8 x i32> %.lcssa1900.i, %i.aqm    ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.21321.lcssa.i, i64 2
  %i.aqq = getelementptr inbounds nuw i8, ptr %.21301.lcssa.i, i64 8 ; 2 uses
  %i.aqr = add nuw nsw i32 %.11324.lcssa.i, 1
  br label %.lr.ph2336.i.prol.loopexit

.lr.ph2336.i.prol.loopexit:                       ; preds = %.lr.ph2336.i.prol, %.lr.ph2336.i.preheader
  %.lcssa1580.unr = phi <8 x i32> [ poison, %.lr.ph2336.i.preheader ], [ %i.aqn, %.lr.ph2336.i.prol ]
  %.lcssa1579.unr = phi <8 x i32> [ poison, %.lr.ph2336.i.preheader ], [ %i.aqo, %.lr.ph2336.i.prol ]
  %.lcssa1578.unr = phi ptr [ poison, %.lr.ph2336.i.preheader ], [ %i.aqq, %.lr.ph2336.i.prol ]
  %.313022335.i.unr = phi ptr [ %.21301.lcssa.i, %.lr.ph2336.i.preheader ], [ %i.aqq, %.lr.ph2336.i.prol ]
  %.313222334.i.unr = phi ptr [ %.21321.lcssa.i, %.lr.ph2336.i.preheader ], [ %i.aqp, %.lr.ph2336.i.prol ]
  %.213252333.i.unr = phi i32 [ %.11324.lcssa.i, %.lr.ph2336.i.preheader ], [ %i.aqr, %.lr.ph2336.i.prol ]
  %.unr1862 = phi <8 x i32> [ %.lcssa1900.i, %.lr.ph2336.i.preheader ], [ %i.aqo, %.lr.ph2336.i.prol ]
  %.unr1863 = phi <8 x i32> [ %.lcssa1901.i, %.lr.ph2336.i.preheader ], [ %i.aqn, %.lr.ph2336.i.prol ]
  %i.aqs = icmp eq i32 %8, %.neg1912
  br i1 %i.aqs, label %._crit_edge2337.i, label %.lr.ph2336.i

.lr.ph2327.i:                                     ; preds = %._crit_edge2317.i, %.lr.ph2327.i
  %.213012325.i = phi ptr [ %i.arg, %.lr.ph2327.i ], [ %.11300.lcssa3120.i, %._crit_edge2317.i ] ; 2 uses
  %.213212324.i = phi ptr [ %i.arf, %.lr.ph2327.i ], [ %.11320.i, %._crit_edge2317.i ] ; 2 uses
  %.113242323.i = phi i32 [ %i.arh, %.lr.ph2327.i ], [ %.01323.lcssa3117.i, %._crit_edge2317.i ]
  %i.aqt = phi <8 x i32> [ %i.are, %.lr.ph2327.i ], [ %i.apw, %._crit_edge2317.i ]
  %i.aqu = phi <8 x i32> [ %i.arc, %.lr.ph2327.i ], [ %i.apv, %._crit_edge2317.i ]
  %i.aqv = load float, ptr %.213212324.i, align 1, !tbaa !17
  %i.aqw = insertelement <4 x float> poison, float %i.aqv, i64 0
  %i.aqx = load <16 x i8>, ptr %.213012325.i, align 1, !tbaa !17
  %i.aqy = bitcast <4 x float> %i.aqw to <16 x i8>
  %i.aqz = shufflevector <16 x i8> %i.aqy, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ara = sext <16 x i8> %i.aqz to <16 x i16>    ; 2 uses
  %i.arb = sext <16 x i8> %i.aqx to <16 x i16>    ; 2 uses
  %i.arc = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.aqu, <16 x i16> %i.ara, <16 x i16> %i.arb) ; 2 uses
  %i.ard = shufflevector <16 x i16> %i.ara, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.are = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.aqt, <16 x i16> %i.ard, <16 x i16> %i.arb) ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %.213212324.i, i64 4 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.213012325.i, i64 16 ; 2 uses
  %i.arh = add nuw nsw i32 %.113242323.i, 2       ; 3 uses
  %i.ari = or disjoint i32 %i.arh, 1
  %i.arj = icmp slt i32 %i.ari, %8
  br i1 %i.arj, label %.lr.ph2327.i, label %.preheader1870.i, !llvm.loop !351

.lr.ph2336.i:                                     ; preds = %.lr.ph2336.i.prol.loopexit, %.lr.ph2336.i
  %.313022335.i = phi ptr [ %i.asr, %.lr.ph2336.i ], [ %.313022335.i.unr, %.lr.ph2336.i.prol.loopexit ] ; 3 uses
  %.313222334.i = phi ptr [ %i.asq, %.lr.ph2336.i ], [ %.313222334.i.unr, %.lr.ph2336.i.prol.loopexit ] ; 3 uses
  %.213252333.i = phi i32 [ %i.ass, %.lr.ph2336.i ], [ %.213252333.i.unr, %.lr.ph2336.i.prol.loopexit ]
  %i.ark = phi <8 x i32> [ %i.asp, %.lr.ph2336.i ], [ %.unr1862, %.lr.ph2336.i.prol.loopexit ]
  %i.arl = phi <8 x i32> [ %i.aso, %.lr.ph2336.i ], [ %.unr1863, %.lr.ph2336.i.prol.loopexit ]
  %i.arm = load i16, ptr %.313222334.i, align 2, !tbaa !404
  %i.arn = insertelement <8 x i16> poison, i16 %i.arm, i64 0
  %i.aro = load <8 x i8>, ptr %.313022335.i, align 1, !tbaa !17
  %i.arp = bitcast <8 x i16> %i.arn to <16 x i8>
end_hunk_5
begin_hunk_6_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %.01074.lcssa3202.i = phi i32 [ %i.amq, %.loopexit ], [ 0, %bb.aq ] ; 5 uses
  %.141220.lcssa3198.i = phi ptr [ %scevgep2965.i, %.loopexit ], [ %.1312192662.i, %bb.aq ] ; 6 uses
  %.21083.i = phi i32 [ %i.ens, %.loopexit ], [ %.01081.i, %bb.aq ] ; 4 uses
  %.11078.i = phi ptr [ %i.dii, %.loopexit ], [ %.62670.i, %bb.aq ] ; 5 uses
  %i.ent = icmp slt i32 %.01074.lcssa3202.i, %8
  br i1 %i.ent, label %iter.check1225, label %._crit_edge2656.i

iter.check1225:                                   ; preds = %._crit_edge2628.i
  %i.enu = xor i32 %.01074.lcssa3202.i, -1
  %i.env = add i32 %8, %i.enu                     ; 3 uses
  %i.enw = zext i32 %i.env to i64
  %i.enx = add nuw nsw i64 %i.enw, 1              ; 5 uses
  %min.iters.check1198 = icmp ult i32 %i.env, 3
  br i1 %min.iters.check1198, label %.lr.ph2655.i.preheader, label %vector.main.loop.iter.check1199

vector.main.loop.iter.check1199:                  ; preds = %iter.check1225
  %min.iters.check1200 = icmp ult i32 %i.env, 31
  br i1 %min.iters.check1200, label %vec.epilog.ph1229, label %vector.ph1201

vector.ph1201:                                    ; preds = %vector.main.loop.iter.check1199
  %i.eny = and i64 %i.enx, 28
  %n.vec1202 = and i64 %i.enx, 8589934560         ; 6 uses
  %i.enz = trunc i64 %n.vec1202 to i32
  %i.eoa = add i32 %.01074.lcssa3202.i, %i.enz
  %i.eob = getelementptr i8, ptr %.11078.i, i64 %n.vec1202
  %i.eoc = getelementptr i8, ptr %.141220.lcssa3198.i, i64 %n.vec1202 ; 2 uses
  %i.eod = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21083.i, i64 0
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.ph1201, %vector.body1203
  %index1204 = phi i64 [ 0, %vector.ph1201 ], [ %index.next1219, %vector.body1203 ] ; 3 uses
  %vec.phi1205 = phi <8 x i32> [ %i.eod, %vector.ph1201 ], [ %i.eow, %vector.body1203 ]
  %vec.phi1206 = phi <8 x i32> [ zeroinitializer, %vector.ph1201 ], [ %i.eox, %vector.body1203 ]
  %vec.phi1207 = phi <8 x i32> [ zeroinitializer, %vector.ph1201 ], [ %i.eoy, %vector.body1203 ]
  %vec.phi1208 = phi <8 x i32> [ zeroinitializer, %vector.ph1201 ], [ %i.eoz, %vector.body1203 ]
  %next.gep1209 = getelementptr i8, ptr %.11078.i, i64 %index1204 ; 4 uses
  %next.gep1210 = getelementptr i8, ptr %.141220.lcssa3198.i, i64 %index1204 ; 4 uses
  %i.eoe = getelementptr i8, ptr %next.gep1209, i64 8
  %i.eof = getelementptr i8, ptr %next.gep1209, i64 16
  %i.eog = getelementptr i8, ptr %next.gep1209, i64 24
  %wide.load1211 = load <8 x i8>, ptr %next.gep1209, align 1, !tbaa !17
  %wide.load1212 = load <8 x i8>, ptr %i.eoe, align 1, !tbaa !17
  %wide.load1213 = load <8 x i8>, ptr %i.eof, align 1, !tbaa !17
  %wide.load1214 = load <8 x i8>, ptr %i.eog, align 1, !tbaa !17
  %i.eoh = sext <8 x i8> %wide.load1211 to <8 x i32>
  %i.eoi = sext <8 x i8> %wide.load1212 to <8 x i32>
  %i.eoj = sext <8 x i8> %wide.load1213 to <8 x i32>
  %i.eok = sext <8 x i8> %wide.load1214 to <8 x i32>
  %i.eol = getelementptr i8, ptr %next.gep1210, i64 8
  %i.eom = getelementptr i8, ptr %next.gep1210, i64 16
  %i.eon = getelementptr i8, ptr %next.gep1210, i64 24
  %wide.load1215 = load <8 x i8>, ptr %next.gep1210, align 1, !tbaa !17
  %wide.load1216 = load <8 x i8>, ptr %i.eol, align 1, !tbaa !17
  %wide.load1217 = load <8 x i8>, ptr %i.eom, align 1, !tbaa !17
  %wide.load1218 = load <8 x i8>, ptr %i.eon, align 1, !tbaa !17
  %i.eoo = sext <8 x i8> %wide.load1215 to <8 x i32>
  %i.eop = sext <8 x i8> %wide.load1216 to <8 x i32>
  %i.eoq = sext <8 x i8> %wide.load1217 to <8 x i32>
  %i.eor = sext <8 x i8> %wide.load1218 to <8 x i32>
  %i.eos = mul nsw <8 x i32> %i.eoo, %i.eoh
  %i.eot = mul nsw <8 x i32> %i.eop, %i.eoi
  %i.eou = mul nsw <8 x i32> %i.eoq, %i.eoj
  %i.eov = mul nsw <8 x i32> %i.eor, %i.eok
  %i.eow = add <8 x i32> %i.eos, %vec.phi1205     ; 2 uses
  %i.eox = add <8 x i32> %i.eot, %vec.phi1206     ; 2 uses
  %i.eoy = add <8 x i32> %i.eou, %vec.phi1207     ; 2 uses
  %i.eoz = add <8 x i32> %i.eov, %vec.phi1208     ; 2 uses
  %index.next1219 = add nuw i64 %index1204, 32    ; 2 uses
  %i.epa = icmp eq i64 %index.next1219, %n.vec1202
  br i1 %i.epa, label %middle.block1220, label %vector.body1203, !llvm.loop !398

middle.block1220:                                 ; preds = %vector.body1203
  %bin.rdx1221 = add <8 x i32> %i.eox, %i.eow
  %bin.rdx1222 = add <8 x i32> %i.eoy, %bin.rdx1221
  %bin.rdx1223 = add <8 x i32> %i.eoz, %bin.rdx1222
  %i.epb = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1223) ; 3 uses
  %cmp.n1224 = icmp eq i64 %i.enx, %n.vec1202
  br i1 %cmp.n1224, label %._crit_edge2656.i, label %vec.epilog.iter.check1226

vec.epilog.iter.check1226:                        ; preds = %middle.block1220
  %min.epilog.iters.check1228 = icmp eq i64 %i.eny, 0
  br i1 %min.epilog.iters.check1228, label %.lr.ph2655.i.preheader, label %vec.epilog.ph1229, !prof !26

vec.epilog.ph1229:                                ; preds = %vector.main.loop.iter.check1199, %vec.epilog.iter.check1226
  %vec.epilog.resume.val1230 = phi i64 [ %n.vec1202, %vec.epilog.iter.check1226 ], [ 0, %vector.main.loop.iter.check1199 ]
  %bc.merge.rdx1231 = phi i32 [ %i.epb, %vec.epilog.iter.check1226 ], [ %.21083.i, %vector.main.loop.iter.check1199 ]
  %n.vec1232 = and i64 %i.enx, 8589934588         ; 5 uses
  %i.epc = trunc i64 %n.vec1232 to i32
  %i.epd = add i32 %.01074.lcssa3202.i, %i.epc
  %i.epe = getelementptr i8, ptr %.11078.i, i64 %n.vec1232
  %i.epf = getelementptr i8, ptr %.141220.lcssa3198.i, i64 %n.vec1232 ; 2 uses
  %i.epg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1231, i64 0
  br label %vec.epilog.vector.body1233

vec.epilog.vector.body1233:                       ; preds = %vec.epilog.vector.body1233, %vec.epilog.ph1229
  %index1234 = phi i64 [ %vec.epilog.resume.val1230, %vec.epilog.ph1229 ], [ %index.next1240, %vec.epilog.vector.body1233 ] ; 3 uses
  %vec.phi1235 = phi <4 x i32> [ %i.epg, %vec.epilog.ph1229 ], [ %i.epk, %vec.epilog.vector.body1233 ]
  %next.gep1236 = getelementptr i8, ptr %.11078.i, i64 %index1234
  %next.gep1237 = getelementptr i8, ptr %.141220.lcssa3198.i, i64 %index1234
  %wide.load1238 = load <4 x i8>, ptr %next.gep1236, align 1, !tbaa !17
  %i.eph = sext <4 x i8> %wide.load1238 to <4 x i32>
  %wide.load1239 = load <4 x i8>, ptr %next.gep1237, align 1, !tbaa !17
  %i.epi = sext <4 x i8> %wide.load1239 to <4 x i32>
  %i.epj = mul nsw <4 x i32> %i.epi, %i.eph
  %i.epk = add <4 x i32> %i.epj, %vec.phi1235     ; 2 uses
  %index.next1240 = add nuw i64 %index1234, 4     ; 2 uses
  %i.epl = icmp eq i64 %index.next1240, %n.vec1232
  br i1 %i.epl, label %vec.epilog.middle.block1241, label %vec.epilog.vector.body1233, !llvm.loop !399

vec.epilog.middle.block1241:                      ; preds = %vec.epilog.vector.body1233
  %i.epm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.epk) ; 2 uses
  %cmp.n1242 = icmp eq i64 %i.enx, %n.vec1232
  br i1 %cmp.n1242, label %._crit_edge2656.i, label %.lr.ph2655.i.preheader

.lr.ph2655.i.preheader:                           ; preds = %iter.check1225, %vec.epilog.iter.check1226, %vec.epilog.middle.block1241
  %.210762653.i.ph = phi i32 [ %.01074.lcssa3202.i, %iter.check1225 ], [ %i.eoa, %vec.epilog.iter.check1226 ], [ %i.epd, %vec.epilog.middle.block1241 ]
  %.310802652.i.ph = phi ptr [ %.11078.i, %iter.check1225 ], [ %i.eob, %vec.epilog.iter.check1226 ], [ %i.epe, %vec.epilog.middle.block1241 ]
  %.310842651.i.ph = phi i32 [ %.21083.i, %iter.check1225 ], [ %i.epb, %vec.epilog.iter.check1226 ], [ %i.epm, %vec.epilog.middle.block1241 ]
  %.1612222650.i.ph = phi ptr [ %.141220.lcssa3198.i, %iter.check1225 ], [ %i.eoc, %vec.epilog.iter.check1226 ], [ %i.epf, %vec.epilog.middle.block1241 ]
  br label %.lr.ph2655.i

.lr.ph2655.i:                                     ; preds = %.lr.ph2655.i.preheader, %.lr.ph2655.i
  %.210762653.i = phi i32 [ %i.epv, %.lr.ph2655.i ], [ %.210762653.i.ph, %.lr.ph2655.i.preheader ]
  %.310802652.i = phi ptr [ %i.ept, %.lr.ph2655.i ], [ %.310802652.i.ph, %.lr.ph2655.i.preheader ] ; 2 uses
  %.310842651.i = phi i32 [ %i.eps, %.lr.ph2655.i ], [ %.310842651.i.ph, %.lr.ph2655.i.preheader ]
  %.1612222650.i = phi ptr [ %i.epu, %.lr.ph2655.i ], [ %.1612222650.i.ph, %.lr.ph2655.i.preheader ] ; 2 uses
  %i.epn = load i8, ptr %.310802652.i, align 1, !tbaa !17
  %i.epo = sext i8 %i.epn to i32
  %i.epp = load i8, ptr %.1612222650.i, align 1, !tbaa !17
  %i.epq = sext i8 %i.epp to i32
  %i.epr = mul nsw i32 %i.epq, %i.epo
  %i.eps = add nsw i32 %i.epr, %.310842651.i      ; 2 uses
  %i.ept = getelementptr inbounds nuw i8, ptr %.310802652.i, i64 1
  %i.epu = getelementptr inbounds nuw i8, ptr %.1612222650.i, i64 1 ; 2 uses
  %i.epv = add nuw nsw i32 %.210762653.i, 1       ; 2 uses
  %exitcond2966.not.i = icmp eq i32 %i.epv, %8
  br i1 %exitcond2966.not.i, label %._crit_edge2656.i, label %.lr.ph2655.i, !llvm.loop !400

._crit_edge2656.i:                                ; preds = %.lr.ph2655.i, %middle.block1220, %vec.epilog.middle.block1241, %._crit_edge2628.i
  %.161222.lcssa.i = phi ptr [ %.141220.lcssa3198.i, %._crit_edge2628.i ], [ %i.epf, %vec.epilog.middle.block1241 ], [ %i.eoc, %middle.block1220 ], [ %i.epu, %.lr.ph2655.i ]
  %.31084.lcssa.i = phi i32 [ %.21083.i, %._crit_edge2628.i ], [ %i.epm, %vec.epilog.middle.block1241 ], [ %i.epb, %middle.block1220 ], [ %i.eps, %.lr.ph2655.i ]
  store i32 %.31084.lcssa.i, ptr %.192664.i, align 4, !tbaa !23
  %i.epw = getelementptr inbounds nuw i8, ptr %.192664.i, i64 4 ; 2 uses
  %i.epx = add nuw nsw i32 %.312052663.i, 1       ; 2 uses
  %exitcond2967.not.i = icmp eq i32 %i.epx, %6
  br i1 %exitcond2967.not.i, label %._crit_edge2666.i, label %.lr.ph2665.i, !llvm.loop !401

._crit_edge2666.i:                                ; preds = %._crit_edge2656.i, %.preheader1862.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader1862.i ], [ %i.epw, %._crit_edge2656.i ]
  %i.epy = getelementptr inbounds i8, ptr %.62670.i, i64 %i.amn
  %spec.select1376.i = getelementptr inbounds nuw i8, ptr %i.epy, i64 %spec.select1376.idx.i
  %i.epz = add nuw nsw i32 %.311232668.i, 1       ; 2 uses
  %exitcond2968.not.i = icmp eq i32 %i.epz, %4
  %scevgep474 = getelementptr i8, ptr %indvars.iv473, i64 %i.amz
  %scevgep477 = getelementptr i8, ptr %indvars.iv476, i64 %i.amz
  br i1 %exitcond2968.not.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader1865.i, !llvm.loop !402

_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge2666.i, %bb.b, %.preheader1866.i
  ret void
}

declare void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32>, <16 x i16>, <16 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32>, <8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !6, i64 44}
!16 = !{!13, !11, i64 16}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 12}
!23 = !{!6, !6, i64 0}
!24 = !{!"branch_weights", i32 8, i32 120}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = !{!"branch_weights", i32 4, i32 28}
!27 = !{!13, !6, i64 24}
!28 = !{!13, !6, i64 40}
!29 = !{!13, !11, i64 64}
!30 = !{!11, !11, i64 0}
!31 = !{!"float", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, i1 false, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !18, !20, !21}
!49 = distinct !{!49, !18, !20, !21}
!50 = distinct !{!50, !18, !20}
!51 = distinct !{!51, !18, !20, !21}
!52 = distinct !{!52, !18, !20, !21}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !18, !20}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !18, !20, !21}
!61 = distinct !{!61, !18, !20}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !62}
!66 = distinct !{!66, !18, !20, !21}
!67 = distinct !{!67, !18, !20, !21}
!68 = distinct !{!68, i1 false, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !18, !20, !21}
!73 = distinct !{!73, !18, !20, !21}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !18, !20}
!76 = distinct !{!76, !18, !20}
!77 = distinct !{!77, !18}
!78 = !{!46}
!79 = !{!47}
!80 = !{!57}
!81 = !{!58}
!82 = !{!59}
!83 = !{!58, !57}
!84 = !{!63}
!85 = !{!64}
!86 = !{!65}
!87 = !{!64, !63}
!88 = !{!69}
!89 = !{!70}
!90 = !{!71}
!91 = !{!70, !69}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !18}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !18}
!110 = distinct !{!110, !18}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !18}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !18}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !18}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, i1 false, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !18, !20, !21}
!127 = distinct !{!127, !18, !20, !21}
!128 = distinct !{!128, !18, !20}
!129 = distinct !{!129, !18, !20}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18, !20, !21}
!132 = distinct !{!132, !18, !20, !21}
!133 = distinct !{!133, i1 false, !"LVerDomain"}
!134 = distinct !{!134, !133}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !133}
!137 = distinct !{!137, !18, !20, !21}
!138 = distinct !{!138, !18, !20, !21}
!139 = distinct !{!139, i1 false, !"LVerDomain"}
!140 = distinct !{!140, !139}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !139}
!143 = distinct !{!143, !18, !20, !21}
!144 = distinct !{!144, !18, !20, !21}
!145 = distinct !{!145, !18, !20}
!146 = distinct !{!146, i1 false, !"LVerDomain"}
!147 = distinct !{!147, !146}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !146}
!150 = distinct !{!150, !18, !20, !21}
!151 = distinct !{!151, !18, !20, !21}
!152 = distinct !{!152, !19}
!153 = distinct !{!153, !18, !20}
!154 = distinct !{!154, !18, !20}
!155 = distinct !{!155, !18}
!156 = !{!124}
!157 = !{!125}
!158 = !{!134}
!159 = !{!135}
!160 = !{!136}
!161 = !{!135, !134}
!162 = !{!140}
end_hunk_6
