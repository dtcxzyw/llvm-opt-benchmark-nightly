Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avxvnniint8?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii:bb.a
  %indvars.iv152.i = phi i64 [ %i.u, %.lr.ph67.i ], [ %indvars.iv.next153.i, %._crit_edge63.i ] ; 2 uses
  %.466.i = phi ptr [ %.0166.lcssa.i, %.lr.ph67.i ], [ %.7.lcssa.i, %._crit_edge63.i ] ; 3 uses
  %i.ec = add nsw i64 %indvars.iv152.i, %i.w
  %i.ed = load ptr, ptr %0, align 8, !tbaa !14
  %i.ee = load i32, ptr %i.p, align 4, !tbaa !15  ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul nsw i64 %i.ec, %i.ef
  %i.eh = load i64, ptr %i.q, align 8, !tbaa !16
  %i.ei = mul i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.r ; 3 uses
  %i.el = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %i.em = shufflevector <4 x i32> %i.el, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.en = mul <4 x i32> %i.em, <i32 0, i32 1, i32 2, i32 3> ; 11 uses
  br i1 %i.s, label %.lr.ph48.i.preheader, label %.preheader17.i

.lr.ph48.i.preheader:                             ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph48.i.epil.preheader, label %.lr.ph48.i

.preheader17.i.loopexit.unr-lcssa:                ; preds = %.lr.ph48.i
  br i1 %lcmp.mod307.not, label %.preheader17.i, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %.preheader17.i.loopexit.unr-lcssa, %.lr.ph48.i.preheader
  %.546.i.epil.init = phi ptr [ %.466.i, %.lr.ph48.i.preheader ], [ %i.fd, %.preheader17.i.loopexit.unr-lcssa ]
  %.017944.i.epil.init = phi ptr [ %i.ek, %.lr.ph48.i.preheader ], [ %i.fe, %.preheader17.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod310)
  br label %.lr.ph48.i.epil

.lr.ph48.i.epil:                                  ; preds = %.lr.ph48.i.epil, %.lr.ph48.i.epil.preheader
  %.546.i.epil = phi ptr [ %i.ep, %.lr.ph48.i.epil ], [ %.546.i.epil.init, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %.017944.i.epil = phi ptr [ %i.eq, %.lr.ph48.i.epil ], [ %.017944.i.epil.init, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %epil.iter306 = phi i32 [ %epil.iter306.next, %.lr.ph48.i.epil ], [ 0, %.lr.ph48.i.epil.preheader ]
  %i.eo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.017944.i.epil, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.eo, ptr %.546.i.epil, align 1, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %.546.i.epil, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.017944.i.epil, i64 4 ; 2 uses
  %epil.iter306.next = add i32 %epil.iter306, 1   ; 2 uses
  %epil.iter306.cmp.not = icmp eq i32 %epil.iter306.next, %xtraiter305
  br i1 %epil.iter306.cmp.not, label %.preheader17.i, label %.lr.ph48.i.epil, !llvm.loop !38

.preheader17.i:                                   ; preds = %.preheader17.i.loopexit.unr-lcssa, %.lr.ph48.i.epil, %bb.c
  %.0179.lcssa.i = phi ptr [ %i.ek, %bb.c ], [ %i.fe, %.preheader17.i.loopexit.unr-lcssa ], [ %i.eq, %.lr.ph48.i.epil ] ; 2 uses
  %.0176.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.t, %.lr.ph48.i.epil ], [ %i.t, %.preheader17.i.loopexit.unr-lcssa ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.466.i, %bb.c ], [ %i.fd, %.preheader17.i.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph48.i.epil ] ; 2 uses
  %i.er = or disjoint i32 %.0176.lcssa.i, 1
  %i.es = icmp slt i32 %i.er, %5
  br i1 %i.es, label %.lr.ph55.i, label %.preheader16.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.preheader, %.lr.ph48.i
  %.546.i = phi ptr [ %i.fd, %.lr.ph48.i ], [ %.466.i, %.lr.ph48.i.preheader ] ; 5 uses
  %.017944.i = phi ptr [ %i.fe, %.lr.ph48.i ], [ %i.ek, %.lr.ph48.i.preheader ] ; 5 uses
  %niter312 = phi i32 [ %niter312.next.3, %.lr.ph48.i ], [ 0, %.lr.ph48.i.preheader ]
  %i.et = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.017944.i, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.et, ptr %.546.i, align 1, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %.546.i, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.017944.i, i64 4
  %i.ew = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ev, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.ew, ptr %i.eu, align 1, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %.546.i, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %.017944.i, i64 8
  %i.ez = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ey, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.ez, ptr %i.ex, align 1, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %.546.i, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %.017944.i, i64 12
  %i.fc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.fb, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.fc, ptr %i.fa, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %.546.i, i64 64 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.017944.i, i64 16 ; 3 uses
  %niter312.next.3 = add nuw nsw i32 %niter312, 4 ; 2 uses
  %niter312.ncmp.3.not = icmp eq i32 %niter312.next.3, %unroll_iter311
  br i1 %niter312.ncmp.3.not, label %.preheader17.i.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !39

.preheader16.i:                                   ; preds = %.lr.ph55.i, %.preheader17.i
  %.1180.lcssa.i = phi ptr [ %.0179.lcssa.i, %.preheader17.i ], [ %i.fx, %.lr.ph55.i ] ; 2 uses
  %.1177.lcssa.i = phi i32 [ %.0176.lcssa.i, %.preheader17.i ], [ %i.fy, %.lr.ph55.i ] ; 5 uses
  %.6.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader17.i ], [ %i.fw, %.lr.ph55.i ] ; 3 uses
  %i.ff = icmp slt i32 %.1177.lcssa.i, %5
  br i1 %i.ff, label %.lr.ph62.i.preheader, label %._crit_edge63.i

.lr.ph62.i.preheader:                             ; preds = %.preheader16.i
  %i.fg = sub i32 %5, %.1177.lcssa.i
  %xtraiter313 = and i32 %i.fg, 3                 ; 2 uses
  %lcmp.mod314.not = icmp eq i32 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol

.lr.ph62.i.prol:                                  ; preds = %.lr.ph62.i.preheader, %.lr.ph62.i.prol
  %.761.i.prol = phi ptr [ %i.fm, %.lr.ph62.i.prol ], [ %.6.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %.217860.i.prol = phi i32 [ %i.fo, %.lr.ph62.i.prol ], [ %.1177.lcssa.i, %.lr.ph62.i.preheader ]
  %.218159.i.prol = phi ptr [ %i.fn, %.lr.ph62.i.prol ], [ %.1180.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %prol.iter315 = phi i32 [ %prol.iter315.next, %.lr.ph62.i.prol ], [ 0, %.lr.ph62.i.preheader ]
  %i.fh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.218159.i.prol, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.fi = bitcast <4 x i32> %i.fh to <16 x i8>
  %i.fj = shufflevector <16 x i8> %i.fi, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = bitcast <16 x i8> %i.fj to <4 x float>
  %i.fl = extractelement <4 x float> %i.fk, i64 0
  store float %i.fl, ptr %.761.i.prol, align 1, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %.761.i.prol, i64 4 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.218159.i.prol, i64 1 ; 2 uses
  %i.fo = add nuw nsw i32 %.217860.i.prol, 1      ; 2 uses
  %prol.iter315.next = add i32 %prol.iter315, 1   ; 2 uses
  %prol.iter315.cmp.not = icmp eq i32 %prol.iter315.next, %xtraiter313
  br i1 %prol.iter315.cmp.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol, !llvm.loop !40

.lr.ph62.i.prol.loopexit:                         ; preds = %.lr.ph62.i.prol, %.lr.ph62.i.preheader
  %.lcssa293.unr = phi ptr [ poison, %.lr.ph62.i.preheader ], [ %i.fm, %.lr.ph62.i.prol ]
  %.761.i.unr = phi ptr [ %.6.lcssa.i, %.lr.ph62.i.preheader ], [ %i.fm, %.lr.ph62.i.prol ]
  %.217860.i.unr = phi i32 [ %.1177.lcssa.i, %.lr.ph62.i.preheader ], [ %i.fo, %.lr.ph62.i.prol ]
  %.218159.i.unr = phi ptr [ %.1180.lcssa.i, %.lr.ph62.i.preheader ], [ %i.fn, %.lr.ph62.i.prol ]
  %i.fp = sub i32 %.1177.lcssa.i, %5
  %i.fq = icmp ugt i32 %i.fp, -4
  br i1 %i.fq, label %._crit_edge63.i, label %.lr.ph62.i

.lr.ph55.i:                                       ; preds = %.preheader17.i, %.lr.ph55.i
  %.654.i = phi ptr [ %i.fw, %.lr.ph55.i ], [ %.5.lcssa.i, %.preheader17.i ] ; 2 uses
  %.117753.i = phi i32 [ %i.fy, %.lr.ph55.i ], [ %.0176.lcssa.i, %.preheader17.i ]
  %.118052.i = phi ptr [ %i.fx, %.lr.ph55.i ], [ %.0179.lcssa.i, %.preheader17.i ] ; 2 uses
  %i.fr = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.118052.i, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.fs = bitcast <4 x i32> %i.fr to <16 x i8>
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = extractelement <2 x i64> %i.fu, i64 0
  store i64 %i.fv, ptr %.654.i, align 1, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %.654.i, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.118052.i, i64 2 ; 2 uses
  %i.fy = add nuw nsw i32 %.117753.i, 2           ; 3 uses
  %i.fz = or disjoint i32 %i.fy, 1
  %i.ga = icmp slt i32 %i.fz, %5
  br i1 %i.ga, label %.lr.ph55.i, label %.preheader16.i, !llvm.loop !41

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.prol.loopexit, %.lr.ph62.i
  %.761.i = phi ptr [ %i.hb, %.lr.ph62.i ], [ %.761.i.unr, %.lr.ph62.i.prol.loopexit ] ; 5 uses
  %.217860.i = phi i32 [ %i.hd, %.lr.ph62.i ], [ %.217860.i.unr, %.lr.ph62.i.prol.loopexit ]
  %.218159.i = phi ptr [ %i.hc, %.lr.ph62.i ], [ %.218159.i.unr, %.lr.ph62.i.prol.loopexit ] ; 5 uses
  %i.gb = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.218159.i, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gc = bitcast <4 x i32> %i.gb to <16 x i8>
  %i.gd = shufflevector <16 x i8> %i.gc, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = bitcast <16 x i8> %i.gd to <4 x float>
  %i.gf = extractelement <4 x float> %i.ge, i64 0
  store float %i.gf, ptr %.761.i, align 1, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %.761.i, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.218159.i, i64 1
  %i.gi = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gh, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gj = bitcast <4 x i32> %i.gi to <16 x i8>
  %i.gk = shufflevector <16 x i8> %i.gj, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = bitcast <16 x i8> %i.gk to <4 x float>
  %i.gm = extractelement <4 x float> %i.gl, i64 0
  store float %i.gm, ptr %i.gg, align 1, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %.761.i, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.218159.i, i64 2
  %i.gp = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.go, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gq = bitcast <4 x i32> %i.gp to <16 x i8>
  %i.gr = shufflevector <16 x i8> %i.gq, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = bitcast <16 x i8> %i.gr to <4 x float>
  %i.gt = extractelement <4 x float> %i.gs, i64 0
  store float %i.gt, ptr %i.gn, align 1, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %.761.i, i64 12
  %i.gv = getelementptr inbounds nuw i8, ptr %.218159.i, i64 3
  %i.gw = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gv, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gx = bitcast <4 x i32> %i.gw to <16 x i8>
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = bitcast <16 x i8> %i.gy to <4 x float>
  %i.ha = extractelement <4 x float> %i.gz, i64 0
  store float %i.ha, ptr %i.gu, align 1, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %.761.i, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.218159.i, i64 4
  %i.hd = add nuw nsw i32 %.217860.i, 4           ; 2 uses
  %exitcond151.not.i.3 = icmp eq i32 %i.hd, %5
  br i1 %exitcond151.not.i.3, label %._crit_edge63.i, label %.lr.ph62.i, !llvm.loop !42

._crit_edge63.i:                                  ; preds = %.lr.ph62.i.prol.loopexit, %.lr.ph62.i, %.preheader16.i
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader16.i ], [ %.lcssa293.unr, %.lr.ph62.i.prol.loopexit ], [ %i.hb, %.lr.ph62.i ] ; 2 uses
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 4 ; 3 uses
  %i.he = icmp slt i64 %indvars.iv.next153.i, %invariant.op.i
  br i1 %i.he, label %bb.c, label %.preheader15.loopexit.i, !llvm.loop !43

.preheader12.loopexit.i:                          ; preds = %._crit_edge94.i
  %i.hf = trunc nuw nsw i64 %indvars.iv.next157.i to i32
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %.preheader12.loopexit.i, %.preheader15.i
  %.2171.lcssa.i = phi i32 [ %.1170.lcssa.i, %.preheader15.i ], [ %i.hf, %.preheader12.loopexit.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader15.i ], [ %.11.lcssa.i, %.preheader12.loopexit.i ] ; 2 uses
  %i.hg = icmp slt i32 %.2171.lcssa.i, %3
  br i1 %i.hg, label %.lr.ph117.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph117.i:                                      ; preds = %.preheader12.i
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hj = sext i32 %4 to i64                      ; 4 uses
  %i.hk = icmp sgt i32 %5, 3
  br i1 %i.hk, label %.lr.ph105.us.preheader.i, label %.lr.ph117.split.i

.lr.ph105.us.preheader.i:                         ; preds = %.lr.ph117.i
  %i.hl = and i32 %5, 2147483644                  ; 7 uses
  %i.hm = sext i32 %.2171.lcssa.i to i64          ; 2 uses
  %i.hn = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count167.i = sext i32 %3 to i64
  %.not = icmp eq i32 %i.hl, %5
  %i.ho = add nsw i64 %i.hm, %i.hn
  %i.hp = or disjoint i32 %i.hl, 1
  %smax = tail call i32 @llvm.umax.i32(i32 %5, i32 %i.hp)
  %i.hq = xor i32 %i.hl, -1
  %i.hr = add nsw i32 %smax, %i.hq                ; 3 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 5 uses
  %i.hu = add nsw i32 %5, -4                      ; 4 uses
  %i.hv = and i32 %i.hu, -4
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = lshr i32 %i.hu, 2
  %narrow274 = add nuw nsw i32 %i.hx, 1
  %i.hy = zext nneg i32 %narrow274 to i64         ; 5 uses
  %min.iters.check233 = icmp ult i32 %i.hu, 12
  %min.iters.check235 = icmp ult i32 %i.hu, 60
  %i.hz = and i64 %i.hy, 12
  %n.vec237 = and i64 %i.hy, 2147483632           ; 5 uses
  %i.ia = trunc nuw nsw i64 %n.vec237 to i32
  %i.ib = shl nuw nsw i32 %i.ia, 2
  %i.ic = shl nuw nsw i64 %n.vec237, 2            ; 2 uses
  %cmp.n250 = icmp eq i64 %n.vec237, %i.hy
  %min.epilog.iters.check254 = icmp eq i64 %i.hz, 0
  %n.vec257 = and i64 %i.hy, 2147483644           ; 4 uses
  %i.id = trunc nuw nsw i64 %n.vec257 to i32
  %i.ie = shl nuw nsw i32 %i.id, 2
  %i.if = shl nuw nsw i64 %n.vec257, 2            ; 2 uses
  %cmp.n270 = icmp eq i64 %n.vec257, %i.hy
  %min.iters.check192 = icmp ult i32 %i.hr, 7
  %min.iters.check194 = icmp ult i32 %i.hr, 127
  %i.ig = and i64 %i.ht, 120
  %n.vec196 = and i64 %i.ht, 8589934464           ; 6 uses
  %i.ih = trunc i64 %n.vec196 to i32
  %i.ii = add i32 %i.hl, %i.ih
  %cmp.n207 = icmp eq i64 %i.ht, %n.vec196
  %min.epilog.iters.check211 = icmp eq i64 %i.ig, 0
  %n.vec214 = and i64 %i.ht, 8589934584           ; 5 uses
  %i.ij = trunc i64 %n.vec214 to i32
  %i.ik = add i32 %i.hl, %i.ij
  %cmp.n222 = icmp eq i64 %i.ht, %n.vec214
  br label %iter.check251

iter.check251:                                    ; preds = %._crit_edge113.us.i, %.lr.ph105.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge113.us.i ], [ 0, %.lr.ph105.us.preheader.i ] ; 2 uses
  %indvars.iv164.i = phi i64 [ %indvars.iv.next165.i, %._crit_edge113.us.i ], [ %i.hm, %.lr.ph105.us.preheader.i ] ; 2 uses
  %.12116.us.i = phi ptr [ %.14.lcssa.us.i, %._crit_edge113.us.i ], [ %.8.lcssa.i, %.lr.ph105.us.preheader.i ] ; 9 uses
  %.12116.us.i191 = ptrtoaddr ptr %.12116.us.i to i64
  %i.il = add i64 %i.ho, %indvar
  %i.im = add i64 %indvars.iv164.i, %i.hn
  %i.in = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.io = ptrtoaddr ptr %i.in to i64
  %i.ip = load i32, ptr %i.hh, align 4, !tbaa !15
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = mul i64 %i.im, %i.iq
  %i.is = load i64, ptr %i.hi, align 8, !tbaa !16 ; 2 uses
  %i.it = mul i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = getelementptr i8, ptr %i.in, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.hj  ; 7 uses
  br i1 %min.iters.check233, label %vec.epilog.scalar.ph253.preheader, label %vector.memcheck226

vector.memcheck226:                               ; preds = %iter.check251
  %i.iw = getelementptr i8, ptr %.12116.us.i, i64 %i.hw
  %scevgep227 = getelementptr i8, ptr %i.iw, i64 4
  %i.ix = getelementptr i8, ptr %i.in, i64 %i.hw
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.hj
  %scevgep228 = getelementptr i8, ptr %i.iy, i64 4
  %scevgep229 = getelementptr i8, ptr %scevgep228, i64 %i.it
  %bound0230 = icmp ult ptr %.12116.us.i, %scevgep229
  %bound1231 = icmp ult ptr %i.iv, %scevgep227
  %found.conflict232 = and i1 %bound0230, %bound1231
  br i1 %found.conflict232, label %vec.epilog.scalar.ph253.preheader, label %vector.main.loop.iter.check234

vector.main.loop.iter.check234:                   ; preds = %vector.memcheck226
  br i1 %min.iters.check235, label %vec.epilog.ph255, label %vector.ph236

vector.ph236:                                     ; preds = %vector.main.loop.iter.check234
  %i.iz = getelementptr i8, ptr %i.iv, i64 %i.ic  ; 2 uses
  %i.ja = getelementptr i8, ptr %.12116.us.i, i64 %i.ic ; 2 uses
  br label %vector.body238

vector.body238:                                   ; preds = %vector.ph236, %vector.body238
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next248, %vector.body238 ] ; 2 uses
  %i.jb = shl i64 %index239, 2                    ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.iv, i64 %i.jb
  %next.gep241 = getelementptr i8, ptr %.12116.us.i, i64 %i.jb
  %wide.vec242 = load <64 x i8>, ptr %next.gep240, align 1, !tbaa !17, !alias.scope !71
  store <64 x i8> %wide.vec242, ptr %next.gep241, align 1, !tbaa !17, !alias.scope !72, !noalias !71
  %index.next248 = add nuw i64 %index239, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next248, %n.vec237
  br i1 %i.jc, label %middle.block249, label %vector.body238, !llvm.loop !47

middle.block249:                                  ; preds = %vector.body238
  br i1 %cmp.n250, label %..preheader_crit_edge.us.i, label %vec.epilog.iter.check252

vec.epilog.iter.check252:                         ; preds = %middle.block249
  br i1 %min.epilog.iters.check254, label %vec.epilog.scalar.ph253.preheader, label %vec.epilog.ph255, !prof !22

vec.epilog.ph255:                                 ; preds = %vector.main.loop.iter.check234, %vec.epilog.iter.check252
  %vec.epilog.resume.val256 = phi i64 [ %n.vec237, %vec.epilog.iter.check252 ], [ 0, %vector.main.loop.iter.check234 ]
  %i.jd = getelementptr i8, ptr %i.iv, i64 %i.if  ; 2 uses
  %i.je = getelementptr i8, ptr %.12116.us.i, i64 %i.if ; 2 uses
  br label %vec.epilog.vector.body258

vec.epilog.vector.body258:                        ; preds = %vec.epilog.vector.body258, %vec.epilog.ph255
  %index259 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph255 ], [ %index.next268, %vec.epilog.vector.body258 ] ; 2 uses
  %i.jf = shl i64 %index259, 2                    ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.iv, i64 %i.jf
  %next.gep261 = getelementptr i8, ptr %.12116.us.i, i64 %i.jf
  %wide.vec262 = load <16 x i8>, ptr %next.gep260, align 1, !tbaa !17, !alias.scope !71
  store <16 x i8> %wide.vec262, ptr %next.gep261, align 1, !tbaa !17, !alias.scope !72, !noalias !71
  %index.next268 = add nuw i64 %index259, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next268, %n.vec257
  br i1 %i.jg, label %vec.epilog.middle.block269, label %vec.epilog.vector.body258, !llvm.loop !48

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body258
  br i1 %cmp.n270, label %..preheader_crit_edge.us.i, label %vec.epilog.scalar.ph253.preheader

vec.epilog.scalar.ph253.preheader:                ; preds = %iter.check251, %vector.memcheck226, %vec.epilog.iter.check252, %vec.epilog.middle.block269
  %.0103.us.i.ph = phi i32 [ 0, %iter.check251 ], [ 0, %vector.memcheck226 ], [ %i.ib, %vec.epilog.iter.check252 ], [ %i.ie, %vec.epilog.middle.block269 ]
  %.0156102.us.i.ph = phi ptr [ %i.iv, %iter.check251 ], [ %i.iv, %vector.memcheck226 ], [ %i.iz, %vec.epilog.iter.check252 ], [ %i.jd, %vec.epilog.middle.block269 ]
  %.13101.us.i.ph = phi ptr [ %.12116.us.i, %iter.check251 ], [ %.12116.us.i, %vector.memcheck226 ], [ %i.ja, %vec.epilog.iter.check252 ], [ %i.je, %vec.epilog.middle.block269 ]
  br label %vec.epilog.scalar.ph253

vec.epilog.scalar.ph253:                          ; preds = %vec.epilog.scalar.ph253.preheader, %vec.epilog.scalar.ph253
  %.0103.us.i = phi i32 [ %i.jt, %vec.epilog.scalar.ph253 ], [ %.0103.us.i.ph, %vec.epilog.scalar.ph253.preheader ]
  %.0156102.us.i = phi ptr [ %i.js, %vec.epilog.scalar.ph253 ], [ %.0156102.us.i.ph, %vec.epilog.scalar.ph253.preheader ] ; 5 uses
  %.13101.us.i = phi ptr [ %i.jr, %vec.epilog.scalar.ph253 ], [ %.13101.us.i.ph, %vec.epilog.scalar.ph253.preheader ] ; 5 uses
  %i.jh = load i8, ptr %.0156102.us.i, align 1, !tbaa !17
  store i8 %i.jh, ptr %.13101.us.i, align 1, !tbaa !17
  %i.ji = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !17
  %i.jk = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 1
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 2
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !17
  %i.jo = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 3
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !17
  %i.jr = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 4 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 4 ; 2 uses
  %i.jt = add nuw nsw i32 %.0103.us.i, 4          ; 2 uses
  %i.ju = or disjoint i32 %i.jt, 3
  %i.jv = icmp slt i32 %i.ju, %5
  br i1 %i.jv, label %vec.epilog.scalar.ph253, label %..preheader_crit_edge.us.i, !llvm.loop !49

.lr.ph112.us.i:                                   ; preds = %.lr.ph112.us.i.preheader, %.lr.ph112.us.i
  %.1111.us.i = phi i32 [ %i.jz, %.lr.ph112.us.i ], [ %.1111.us.i.ph, %.lr.ph112.us.i.preheader ]
  %.1157110.us.i = phi ptr [ %i.jy, %.lr.ph112.us.i ], [ %.1157110.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %.14109.us.i = phi ptr [ %i.jx, %.lr.ph112.us.i ], [ %.14109.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %i.jw = load i8, ptr %.1157110.us.i, align 1, !tbaa !17
  store i8 %i.jw, ptr %.14109.us.i, align 1, !tbaa !17
  %i.jx = getelementptr inbounds nuw i8, ptr %.14109.us.i, i64 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1157110.us.i, i64 1
  %i.jz = add nuw nsw i32 %.1111.us.i, 1          ; 2 uses
  %i.ka = icmp slt i32 %i.jz, %5
  br i1 %i.ka, label %.lr.ph112.us.i, label %._crit_edge113.us.i, !llvm.loop !50

._crit_edge113.us.i:                              ; preds = %.lr.ph112.us.i, %middle.block206, %vec.epilog.middle.block221, %..preheader_crit_edge.us.i
  %.14.lcssa.us.i = phi ptr [ %.lcssa84, %..preheader_crit_edge.us.i ], [ %i.kq, %vec.epilog.middle.block221 ], [ %i.kh, %middle.block206 ], [ %i.jx, %.lr.ph112.us.i ]
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond168.not.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check251, !llvm.loop !51

..preheader_crit_edge.us.i:                       ; preds = %vec.epilog.scalar.ph253, %vec.epilog.middle.block269, %middle.block249
  %.lcssa84 = phi ptr [ %i.je, %vec.epilog.middle.block269 ], [ %i.ja, %middle.block249 ], [ %i.jr, %vec.epilog.scalar.ph253 ] ; 7 uses
  %.lcssa = phi ptr [ %i.jd, %vec.epilog.middle.block269 ], [ %i.iz, %middle.block249 ], [ %i.js, %vec.epilog.scalar.ph253 ] ; 6 uses
  br i1 %.not, label %._crit_edge113.us.i, label %iter.check208

iter.check208:                                    ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check192, label %.lr.ph112.us.i.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %iter.check208
  %i.kb = mul i64 %i.il, %i.is
  %i.kc = mul i64 %i.kb, %i.iq
  %i.kd = add i64 %i.kc, %i.hj
  %i.ke = add i64 %i.kd, %i.io
  %i.kf = sub i64 %i.ke, %.12116.us.i191
  %diff.check = icmp ugt i64 %i.kf, -128
  br i1 %diff.check, label %.lr.ph112.us.i.preheader, label %vector.main.loop.iter.check193

vector.main.loop.iter.check193:                   ; preds = %vector.memcheck190
  br i1 %min.iters.check194, label %vec.epilog.ph212, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check193
  %i.kg = getelementptr i8, ptr %.lcssa, i64 %n.vec196
  %i.kh = getelementptr i8, ptr %.lcssa84, i64 %n.vec196 ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.ph195, %vector.body197
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next205, %vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.lcssa, i64 %index198 ; 4 uses
  %next.gep200 = getelementptr i8, ptr %.lcssa84, i64 %index198 ; 4 uses
  %i.ki = getelementptr i8, ptr %next.gep199, i64 32
  %i.kj = getelementptr i8, ptr %next.gep199, i64 64
  %i.kk = getelementptr i8, ptr %next.gep199, i64 96
  %wide.load201 = load <32 x i8>, ptr %next.gep199, align 1, !tbaa !17
  %wide.load202 = load <32 x i8>, ptr %i.ki, align 1, !tbaa !17
  %wide.load203 = load <32 x i8>, ptr %i.kj, align 1, !tbaa !17
  %wide.load204 = load <32 x i8>, ptr %i.kk, align 1, !tbaa !17
  %i.kl = getelementptr i8, ptr %next.gep200, i64 32
  %i.km = getelementptr i8, ptr %next.gep200, i64 64
  %i.kn = getelementptr i8, ptr %next.gep200, i64 96
  store <32 x i8> %wide.load201, ptr %next.gep200, align 1, !tbaa !17
  store <32 x i8> %wide.load202, ptr %i.kl, align 1, !tbaa !17
  store <32 x i8> %wide.load203, ptr %i.km, align 1, !tbaa !17
  store <32 x i8> %wide.load204, ptr %i.kn, align 1, !tbaa !17
  %index.next205 = add nuw i64 %index198, 128     ; 2 uses
  %i.ko = icmp eq i64 %index.next205, %n.vec196
  br i1 %i.ko, label %middle.block206, label %vector.body197, !llvm.loop !52

middle.block206:                                  ; preds = %vector.body197
  br i1 %cmp.n207, label %._crit_edge113.us.i, label %vec.epilog.iter.check209

vec.epilog.iter.check209:                         ; preds = %middle.block206
  br i1 %min.epilog.iters.check211, label %.lr.ph112.us.i.preheader, label %vec.epilog.ph212, !prof !23

vec.epilog.ph212:                                 ; preds = %vector.main.loop.iter.check193, %vec.epilog.iter.check209
  %vec.epilog.resume.val213 = phi i64 [ %n.vec196, %vec.epilog.iter.check209 ], [ 0, %vector.main.loop.iter.check193 ]
  %i.kp = getelementptr i8, ptr %.lcssa, i64 %n.vec214
  %i.kq = getelementptr i8, ptr %.lcssa84, i64 %n.vec214 ; 2 uses
  br label %vec.epilog.vector.body215

end_hunk_0
begin_hunk_1_@_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii:bb.a
  %indvars.iv152.i = phi i64 [ %i.u, %.lr.ph67.i ], [ %indvars.iv.next153.i, %._crit_edge63.i ] ; 2 uses
  %.466.i = phi ptr [ %.0166.lcssa.i, %.lr.ph67.i ], [ %.7.lcssa.i, %._crit_edge63.i ] ; 3 uses
  %i.ec = add nsw i64 %indvars.iv152.i, %i.w
  %i.ed = load ptr, ptr %0, align 8, !tbaa !14
  %i.ee = load i32, ptr %i.p, align 4, !tbaa !15  ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul nsw i64 %i.ec, %i.ef
  %i.eh = load i64, ptr %i.q, align 8, !tbaa !16
  %i.ei = mul i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.r ; 3 uses
  %i.el = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %i.em = shufflevector <4 x i32> %i.el, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.en = mul <4 x i32> %i.em, <i32 0, i32 1, i32 2, i32 3> ; 11 uses
  br i1 %i.s, label %.lr.ph48.i.preheader, label %.preheader17.i

.lr.ph48.i.preheader:                             ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph48.i.epil.preheader, label %.lr.ph48.i

.preheader17.i.loopexit.unr-lcssa:                ; preds = %.lr.ph48.i
  br i1 %lcmp.mod307.not, label %.preheader17.i, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %.preheader17.i.loopexit.unr-lcssa, %.lr.ph48.i.preheader
  %.546.i.epil.init = phi ptr [ %.466.i, %.lr.ph48.i.preheader ], [ %i.fd, %.preheader17.i.loopexit.unr-lcssa ]
  %.017944.i.epil.init = phi ptr [ %i.ek, %.lr.ph48.i.preheader ], [ %i.fe, %.preheader17.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod310)
  br label %.lr.ph48.i.epil

.lr.ph48.i.epil:                                  ; preds = %.lr.ph48.i.epil, %.lr.ph48.i.epil.preheader
  %.546.i.epil = phi ptr [ %i.ep, %.lr.ph48.i.epil ], [ %.546.i.epil.init, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %.017944.i.epil = phi ptr [ %i.eq, %.lr.ph48.i.epil ], [ %.017944.i.epil.init, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %epil.iter306 = phi i32 [ %epil.iter306.next, %.lr.ph48.i.epil ], [ 0, %.lr.ph48.i.epil.preheader ]
  %i.eo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.017944.i.epil, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.eo, ptr %.546.i.epil, align 1, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %.546.i.epil, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.017944.i.epil, i64 4 ; 2 uses
  %epil.iter306.next = add i32 %epil.iter306, 1   ; 2 uses
  %epil.iter306.cmp.not = icmp eq i32 %epil.iter306.next, %xtraiter305
  br i1 %epil.iter306.cmp.not, label %.preheader17.i, label %.lr.ph48.i.epil, !llvm.loop !105

.preheader17.i:                                   ; preds = %.preheader17.i.loopexit.unr-lcssa, %.lr.ph48.i.epil, %bb.c
  %.0179.lcssa.i = phi ptr [ %i.ek, %bb.c ], [ %i.fe, %.preheader17.i.loopexit.unr-lcssa ], [ %i.eq, %.lr.ph48.i.epil ] ; 2 uses
  %.0176.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.t, %.lr.ph48.i.epil ], [ %i.t, %.preheader17.i.loopexit.unr-lcssa ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.466.i, %bb.c ], [ %i.fd, %.preheader17.i.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph48.i.epil ] ; 2 uses
  %i.er = or disjoint i32 %.0176.lcssa.i, 1
  %i.es = icmp slt i32 %i.er, %5
  br i1 %i.es, label %.lr.ph55.i, label %.preheader16.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.preheader, %.lr.ph48.i
  %.546.i = phi ptr [ %i.fd, %.lr.ph48.i ], [ %.466.i, %.lr.ph48.i.preheader ] ; 5 uses
  %.017944.i = phi ptr [ %i.fe, %.lr.ph48.i ], [ %i.ek, %.lr.ph48.i.preheader ] ; 5 uses
  %niter312 = phi i32 [ %niter312.next.3, %.lr.ph48.i ], [ 0, %.lr.ph48.i.preheader ]
  %i.et = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.017944.i, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.et, ptr %.546.i, align 1, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %.546.i, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.017944.i, i64 4
  %i.ew = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ev, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.ew, ptr %i.eu, align 1, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %.546.i, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %.017944.i, i64 8
  %i.ez = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ey, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.ez, ptr %i.ex, align 1, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %.546.i, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %.017944.i, i64 12
  %i.fc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.fb, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  store <4 x i32> %i.fc, ptr %i.fa, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %.546.i, i64 64 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.017944.i, i64 16 ; 3 uses
  %niter312.next.3 = add nuw nsw i32 %niter312, 4 ; 2 uses
  %niter312.ncmp.3.not = icmp eq i32 %niter312.next.3, %unroll_iter311
  br i1 %niter312.ncmp.3.not, label %.preheader17.i.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !106

.preheader16.i:                                   ; preds = %.lr.ph55.i, %.preheader17.i
  %.1180.lcssa.i = phi ptr [ %.0179.lcssa.i, %.preheader17.i ], [ %i.fx, %.lr.ph55.i ] ; 2 uses
  %.1177.lcssa.i = phi i32 [ %.0176.lcssa.i, %.preheader17.i ], [ %i.fy, %.lr.ph55.i ] ; 5 uses
  %.6.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader17.i ], [ %i.fw, %.lr.ph55.i ] ; 3 uses
  %i.ff = icmp slt i32 %.1177.lcssa.i, %5
  br i1 %i.ff, label %.lr.ph62.i.preheader, label %._crit_edge63.i

.lr.ph62.i.preheader:                             ; preds = %.preheader16.i
  %i.fg = sub i32 %5, %.1177.lcssa.i
  %xtraiter313 = and i32 %i.fg, 3                 ; 2 uses
  %lcmp.mod314.not = icmp eq i32 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol

.lr.ph62.i.prol:                                  ; preds = %.lr.ph62.i.preheader, %.lr.ph62.i.prol
  %.761.i.prol = phi ptr [ %i.fm, %.lr.ph62.i.prol ], [ %.6.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %.217860.i.prol = phi i32 [ %i.fo, %.lr.ph62.i.prol ], [ %.1177.lcssa.i, %.lr.ph62.i.preheader ]
  %.218159.i.prol = phi ptr [ %i.fn, %.lr.ph62.i.prol ], [ %.1180.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %prol.iter315 = phi i32 [ %prol.iter315.next, %.lr.ph62.i.prol ], [ 0, %.lr.ph62.i.preheader ]
  %i.fh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.218159.i.prol, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.fi = bitcast <4 x i32> %i.fh to <16 x i8>
  %i.fj = shufflevector <16 x i8> %i.fi, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = bitcast <16 x i8> %i.fj to <4 x float>
  %i.fl = extractelement <4 x float> %i.fk, i64 0
  store float %i.fl, ptr %.761.i.prol, align 1, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %.761.i.prol, i64 4 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.218159.i.prol, i64 1 ; 2 uses
  %i.fo = add nuw nsw i32 %.217860.i.prol, 1      ; 2 uses
  %prol.iter315.next = add i32 %prol.iter315, 1   ; 2 uses
  %prol.iter315.cmp.not = icmp eq i32 %prol.iter315.next, %xtraiter313
  br i1 %prol.iter315.cmp.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol, !llvm.loop !107

.lr.ph62.i.prol.loopexit:                         ; preds = %.lr.ph62.i.prol, %.lr.ph62.i.preheader
  %.lcssa293.unr = phi ptr [ poison, %.lr.ph62.i.preheader ], [ %i.fm, %.lr.ph62.i.prol ]
  %.761.i.unr = phi ptr [ %.6.lcssa.i, %.lr.ph62.i.preheader ], [ %i.fm, %.lr.ph62.i.prol ]
  %.217860.i.unr = phi i32 [ %.1177.lcssa.i, %.lr.ph62.i.preheader ], [ %i.fo, %.lr.ph62.i.prol ]
  %.218159.i.unr = phi ptr [ %.1180.lcssa.i, %.lr.ph62.i.preheader ], [ %i.fn, %.lr.ph62.i.prol ]
  %i.fp = sub i32 %.1177.lcssa.i, %5
  %i.fq = icmp ugt i32 %i.fp, -4
  br i1 %i.fq, label %._crit_edge63.i, label %.lr.ph62.i

.lr.ph55.i:                                       ; preds = %.preheader17.i, %.lr.ph55.i
  %.654.i = phi ptr [ %i.fw, %.lr.ph55.i ], [ %.5.lcssa.i, %.preheader17.i ] ; 2 uses
  %.117753.i = phi i32 [ %i.fy, %.lr.ph55.i ], [ %.0176.lcssa.i, %.preheader17.i ]
  %.118052.i = phi ptr [ %i.fx, %.lr.ph55.i ], [ %.0179.lcssa.i, %.preheader17.i ] ; 2 uses
  %i.fr = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.118052.i, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.fs = bitcast <4 x i32> %i.fr to <16 x i8>
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = extractelement <2 x i64> %i.fu, i64 0
  store i64 %i.fv, ptr %.654.i, align 1, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %.654.i, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.118052.i, i64 2 ; 2 uses
  %i.fy = add nuw nsw i32 %.117753.i, 2           ; 3 uses
  %i.fz = or disjoint i32 %i.fy, 1
  %i.ga = icmp slt i32 %i.fz, %5
  br i1 %i.ga, label %.lr.ph55.i, label %.preheader16.i, !llvm.loop !108

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.prol.loopexit, %.lr.ph62.i
  %.761.i = phi ptr [ %i.hb, %.lr.ph62.i ], [ %.761.i.unr, %.lr.ph62.i.prol.loopexit ] ; 5 uses
  %.217860.i = phi i32 [ %i.hd, %.lr.ph62.i ], [ %.217860.i.unr, %.lr.ph62.i.prol.loopexit ]
  %.218159.i = phi ptr [ %i.hc, %.lr.ph62.i ], [ %.218159.i.unr, %.lr.ph62.i.prol.loopexit ] ; 5 uses
  %i.gb = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.218159.i, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gc = bitcast <4 x i32> %i.gb to <16 x i8>
  %i.gd = shufflevector <16 x i8> %i.gc, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = bitcast <16 x i8> %i.gd to <4 x float>
  %i.gf = extractelement <4 x float> %i.ge, i64 0
  store float %i.gf, ptr %.761.i, align 1, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %.761.i, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.218159.i, i64 1
  %i.gi = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gh, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gj = bitcast <4 x i32> %i.gi to <16 x i8>
  %i.gk = shufflevector <16 x i8> %i.gj, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = bitcast <16 x i8> %i.gk to <4 x float>
  %i.gm = extractelement <4 x float> %i.gl, i64 0
  store float %i.gm, ptr %i.gg, align 1, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %.761.i, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.218159.i, i64 2
  %i.gp = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.go, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gq = bitcast <4 x i32> %i.gp to <16 x i8>
  %i.gr = shufflevector <16 x i8> %i.gq, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = bitcast <16 x i8> %i.gr to <4 x float>
  %i.gt = extractelement <4 x float> %i.gs, i64 0
  store float %i.gt, ptr %i.gn, align 1, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %.761.i, i64 12
  %i.gv = getelementptr inbounds nuw i8, ptr %.218159.i, i64 3
  %i.gw = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gv, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.gx = bitcast <4 x i32> %i.gw to <16 x i8>
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = bitcast <16 x i8> %i.gy to <4 x float>
  %i.ha = extractelement <4 x float> %i.gz, i64 0
  store float %i.ha, ptr %i.gu, align 1, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %.761.i, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.218159.i, i64 4
  %i.hd = add nuw nsw i32 %.217860.i, 4           ; 2 uses
  %exitcond151.not.i.3 = icmp eq i32 %i.hd, %5
  br i1 %exitcond151.not.i.3, label %._crit_edge63.i, label %.lr.ph62.i, !llvm.loop !109

._crit_edge63.i:                                  ; preds = %.lr.ph62.i.prol.loopexit, %.lr.ph62.i, %.preheader16.i
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader16.i ], [ %.lcssa293.unr, %.lr.ph62.i.prol.loopexit ], [ %i.hb, %.lr.ph62.i ] ; 2 uses
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 4 ; 3 uses
  %i.he = icmp slt i64 %indvars.iv.next153.i, %invariant.op.i
  br i1 %i.he, label %bb.c, label %.preheader15.loopexit.i, !llvm.loop !110

.preheader12.loopexit.i:                          ; preds = %._crit_edge94.i
  %i.hf = trunc nuw nsw i64 %indvars.iv.next157.i to i32
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %.preheader12.loopexit.i, %.preheader15.i
  %.2171.lcssa.i = phi i32 [ %.1170.lcssa.i, %.preheader15.i ], [ %i.hf, %.preheader12.loopexit.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader15.i ], [ %.11.lcssa.i, %.preheader12.loopexit.i ] ; 2 uses
  %i.hg = icmp slt i32 %.2171.lcssa.i, %3
  br i1 %i.hg, label %.lr.ph117.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph117.i:                                      ; preds = %.preheader12.i
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hj = sext i32 %4 to i64                      ; 4 uses
  %i.hk = icmp sgt i32 %5, 3
  br i1 %i.hk, label %.lr.ph105.us.preheader.i, label %.lr.ph117.split.i

.lr.ph105.us.preheader.i:                         ; preds = %.lr.ph117.i
  %i.hl = and i32 %5, 2147483644                  ; 7 uses
  %i.hm = sext i32 %.2171.lcssa.i to i64          ; 2 uses
  %i.hn = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count167.i = sext i32 %3 to i64
  %.not = icmp eq i32 %i.hl, %5
  %i.ho = add nsw i64 %i.hm, %i.hn
  %i.hp = or disjoint i32 %i.hl, 1
  %smax = tail call i32 @llvm.umax.i32(i32 %5, i32 %i.hp)
  %i.hq = xor i32 %i.hl, -1
  %i.hr = add nsw i32 %smax, %i.hq                ; 3 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 5 uses
  %i.hu = add nsw i32 %5, -4                      ; 4 uses
  %i.hv = and i32 %i.hu, -4
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = lshr i32 %i.hu, 2
  %narrow274 = add nuw nsw i32 %i.hx, 1
  %i.hy = zext nneg i32 %narrow274 to i64         ; 5 uses
  %min.iters.check233 = icmp ult i32 %i.hu, 12
  %min.iters.check235 = icmp ult i32 %i.hu, 60
  %i.hz = and i64 %i.hy, 12
  %n.vec237 = and i64 %i.hy, 2147483632           ; 5 uses
  %i.ia = trunc nuw nsw i64 %n.vec237 to i32
  %i.ib = shl nuw nsw i32 %i.ia, 2
  %i.ic = shl nuw nsw i64 %n.vec237, 2            ; 2 uses
  %cmp.n250 = icmp eq i64 %n.vec237, %i.hy
  %min.epilog.iters.check254 = icmp eq i64 %i.hz, 0
  %n.vec257 = and i64 %i.hy, 2147483644           ; 4 uses
  %i.id = trunc nuw nsw i64 %n.vec257 to i32
  %i.ie = shl nuw nsw i32 %i.id, 2
  %i.if = shl nuw nsw i64 %n.vec257, 2            ; 2 uses
  %cmp.n270 = icmp eq i64 %n.vec257, %i.hy
  %min.iters.check192 = icmp ult i32 %i.hr, 7
  %min.iters.check194 = icmp ult i32 %i.hr, 127
  %i.ig = and i64 %i.ht, 120
  %n.vec196 = and i64 %i.ht, 8589934464           ; 6 uses
  %i.ih = trunc i64 %n.vec196 to i32
  %i.ii = add i32 %i.hl, %i.ih
  %cmp.n207 = icmp eq i64 %i.ht, %n.vec196
  %min.epilog.iters.check211 = icmp eq i64 %i.ig, 0
  %n.vec214 = and i64 %i.ht, 8589934584           ; 5 uses
  %i.ij = trunc i64 %n.vec214 to i32
  %i.ik = add i32 %i.hl, %i.ij
  %cmp.n222 = icmp eq i64 %i.ht, %n.vec214
  br label %iter.check251

iter.check251:                                    ; preds = %._crit_edge113.us.i, %.lr.ph105.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge113.us.i ], [ 0, %.lr.ph105.us.preheader.i ] ; 2 uses
  %indvars.iv164.i = phi i64 [ %indvars.iv.next165.i, %._crit_edge113.us.i ], [ %i.hm, %.lr.ph105.us.preheader.i ] ; 2 uses
  %.12116.us.i = phi ptr [ %.14.lcssa.us.i, %._crit_edge113.us.i ], [ %.8.lcssa.i, %.lr.ph105.us.preheader.i ] ; 9 uses
  %.12116.us.i191 = ptrtoaddr ptr %.12116.us.i to i64
  %i.il = add i64 %i.ho, %indvar
  %i.im = add i64 %indvars.iv164.i, %i.hn
  %i.in = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.io = ptrtoaddr ptr %i.in to i64
  %i.ip = load i32, ptr %i.hh, align 4, !tbaa !15
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = mul i64 %i.im, %i.iq
  %i.is = load i64, ptr %i.hi, align 8, !tbaa !16 ; 2 uses
  %i.it = mul i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = getelementptr i8, ptr %i.in, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.hj  ; 7 uses
  br i1 %min.iters.check233, label %vec.epilog.scalar.ph253.preheader, label %vector.memcheck226

vector.memcheck226:                               ; preds = %iter.check251
  %i.iw = getelementptr i8, ptr %.12116.us.i, i64 %i.hw
  %scevgep227 = getelementptr i8, ptr %i.iw, i64 4
  %i.ix = getelementptr i8, ptr %i.in, i64 %i.hw
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.hj
  %scevgep228 = getelementptr i8, ptr %i.iy, i64 4
  %scevgep229 = getelementptr i8, ptr %scevgep228, i64 %i.it
  %bound0230 = icmp ult ptr %.12116.us.i, %scevgep229
  %bound1231 = icmp ult ptr %i.iv, %scevgep227
  %found.conflict232 = and i1 %bound0230, %bound1231
  br i1 %found.conflict232, label %vec.epilog.scalar.ph253.preheader, label %vector.main.loop.iter.check234

vector.main.loop.iter.check234:                   ; preds = %vector.memcheck226
  br i1 %min.iters.check235, label %vec.epilog.ph255, label %vector.ph236

vector.ph236:                                     ; preds = %vector.main.loop.iter.check234
  %i.iz = getelementptr i8, ptr %i.iv, i64 %i.ic  ; 2 uses
  %i.ja = getelementptr i8, ptr %.12116.us.i, i64 %i.ic ; 2 uses
  br label %vector.body238

vector.body238:                                   ; preds = %vector.ph236, %vector.body238
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next248, %vector.body238 ] ; 2 uses
  %i.jb = shl i64 %index239, 2                    ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.iv, i64 %i.jb
  %next.gep241 = getelementptr i8, ptr %.12116.us.i, i64 %i.jb
  %wide.vec242 = load <64 x i8>, ptr %next.gep240, align 1, !tbaa !17, !alias.scope !138
  store <64 x i8> %wide.vec242, ptr %next.gep241, align 1, !tbaa !17, !alias.scope !139, !noalias !138
  %index.next248 = add nuw i64 %index239, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next248, %n.vec237
  br i1 %i.jc, label %middle.block249, label %vector.body238, !llvm.loop !114

middle.block249:                                  ; preds = %vector.body238
  br i1 %cmp.n250, label %..preheader_crit_edge.us.i, label %vec.epilog.iter.check252

vec.epilog.iter.check252:                         ; preds = %middle.block249
  br i1 %min.epilog.iters.check254, label %vec.epilog.scalar.ph253.preheader, label %vec.epilog.ph255, !prof !22

vec.epilog.ph255:                                 ; preds = %vector.main.loop.iter.check234, %vec.epilog.iter.check252
  %vec.epilog.resume.val256 = phi i64 [ %n.vec237, %vec.epilog.iter.check252 ], [ 0, %vector.main.loop.iter.check234 ]
  %i.jd = getelementptr i8, ptr %i.iv, i64 %i.if  ; 2 uses
  %i.je = getelementptr i8, ptr %.12116.us.i, i64 %i.if ; 2 uses
  br label %vec.epilog.vector.body258

vec.epilog.vector.body258:                        ; preds = %vec.epilog.vector.body258, %vec.epilog.ph255
  %index259 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph255 ], [ %index.next268, %vec.epilog.vector.body258 ] ; 2 uses
  %i.jf = shl i64 %index259, 2                    ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.iv, i64 %i.jf
  %next.gep261 = getelementptr i8, ptr %.12116.us.i, i64 %i.jf
  %wide.vec262 = load <16 x i8>, ptr %next.gep260, align 1, !tbaa !17, !alias.scope !138
  store <16 x i8> %wide.vec262, ptr %next.gep261, align 1, !tbaa !17, !alias.scope !139, !noalias !138
  %index.next268 = add nuw i64 %index259, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next268, %n.vec257
  br i1 %i.jg, label %vec.epilog.middle.block269, label %vec.epilog.vector.body258, !llvm.loop !115

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body258
  br i1 %cmp.n270, label %..preheader_crit_edge.us.i, label %vec.epilog.scalar.ph253.preheader

vec.epilog.scalar.ph253.preheader:                ; preds = %iter.check251, %vector.memcheck226, %vec.epilog.iter.check252, %vec.epilog.middle.block269
  %.0103.us.i.ph = phi i32 [ 0, %iter.check251 ], [ 0, %vector.memcheck226 ], [ %i.ib, %vec.epilog.iter.check252 ], [ %i.ie, %vec.epilog.middle.block269 ]
  %.0156102.us.i.ph = phi ptr [ %i.iv, %iter.check251 ], [ %i.iv, %vector.memcheck226 ], [ %i.iz, %vec.epilog.iter.check252 ], [ %i.jd, %vec.epilog.middle.block269 ]
  %.13101.us.i.ph = phi ptr [ %.12116.us.i, %iter.check251 ], [ %.12116.us.i, %vector.memcheck226 ], [ %i.ja, %vec.epilog.iter.check252 ], [ %i.je, %vec.epilog.middle.block269 ]
  br label %vec.epilog.scalar.ph253

vec.epilog.scalar.ph253:                          ; preds = %vec.epilog.scalar.ph253.preheader, %vec.epilog.scalar.ph253
  %.0103.us.i = phi i32 [ %i.jt, %vec.epilog.scalar.ph253 ], [ %.0103.us.i.ph, %vec.epilog.scalar.ph253.preheader ]
  %.0156102.us.i = phi ptr [ %i.js, %vec.epilog.scalar.ph253 ], [ %.0156102.us.i.ph, %vec.epilog.scalar.ph253.preheader ] ; 5 uses
  %.13101.us.i = phi ptr [ %i.jr, %vec.epilog.scalar.ph253 ], [ %.13101.us.i.ph, %vec.epilog.scalar.ph253.preheader ] ; 5 uses
  %i.jh = load i8, ptr %.0156102.us.i, align 1, !tbaa !17
  store i8 %i.jh, ptr %.13101.us.i, align 1, !tbaa !17
  %i.ji = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !17
  %i.jk = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 1
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 2
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !17
  %i.jo = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 3
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !17
  %i.jr = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 4 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 4 ; 2 uses
  %i.jt = add nuw nsw i32 %.0103.us.i, 4          ; 2 uses
  %i.ju = or disjoint i32 %i.jt, 3
  %i.jv = icmp slt i32 %i.ju, %5
  br i1 %i.jv, label %vec.epilog.scalar.ph253, label %..preheader_crit_edge.us.i, !llvm.loop !116

.lr.ph112.us.i:                                   ; preds = %.lr.ph112.us.i.preheader, %.lr.ph112.us.i
  %.1111.us.i = phi i32 [ %i.jz, %.lr.ph112.us.i ], [ %.1111.us.i.ph, %.lr.ph112.us.i.preheader ]
  %.1157110.us.i = phi ptr [ %i.jy, %.lr.ph112.us.i ], [ %.1157110.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %.14109.us.i = phi ptr [ %i.jx, %.lr.ph112.us.i ], [ %.14109.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %i.jw = load i8, ptr %.1157110.us.i, align 1, !tbaa !17
  store i8 %i.jw, ptr %.14109.us.i, align 1, !tbaa !17
  %i.jx = getelementptr inbounds nuw i8, ptr %.14109.us.i, i64 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1157110.us.i, i64 1
  %i.jz = add nuw nsw i32 %.1111.us.i, 1          ; 2 uses
  %i.ka = icmp slt i32 %i.jz, %5
  br i1 %i.ka, label %.lr.ph112.us.i, label %._crit_edge113.us.i, !llvm.loop !117

._crit_edge113.us.i:                              ; preds = %.lr.ph112.us.i, %middle.block206, %vec.epilog.middle.block221, %..preheader_crit_edge.us.i
  %.14.lcssa.us.i = phi ptr [ %.lcssa84, %..preheader_crit_edge.us.i ], [ %i.kq, %vec.epilog.middle.block221 ], [ %i.kh, %middle.block206 ], [ %i.jx, %.lr.ph112.us.i ]
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond168.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check251, !llvm.loop !118

..preheader_crit_edge.us.i:                       ; preds = %vec.epilog.scalar.ph253, %vec.epilog.middle.block269, %middle.block249
  %.lcssa84 = phi ptr [ %i.je, %vec.epilog.middle.block269 ], [ %i.ja, %middle.block249 ], [ %i.jr, %vec.epilog.scalar.ph253 ] ; 7 uses
  %.lcssa = phi ptr [ %i.jd, %vec.epilog.middle.block269 ], [ %i.iz, %middle.block249 ], [ %i.js, %vec.epilog.scalar.ph253 ] ; 6 uses
  br i1 %.not, label %._crit_edge113.us.i, label %iter.check208

iter.check208:                                    ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check192, label %.lr.ph112.us.i.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %iter.check208
  %i.kb = mul i64 %i.il, %i.is
  %i.kc = mul i64 %i.kb, %i.iq
  %i.kd = add i64 %i.kc, %i.hj
  %i.ke = add i64 %i.kd, %i.io
  %i.kf = sub i64 %i.ke, %.12116.us.i191
  %diff.check = icmp ugt i64 %i.kf, -128
  br i1 %diff.check, label %.lr.ph112.us.i.preheader, label %vector.main.loop.iter.check193

vector.main.loop.iter.check193:                   ; preds = %vector.memcheck190
  br i1 %min.iters.check194, label %vec.epilog.ph212, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check193
  %i.kg = getelementptr i8, ptr %.lcssa, i64 %n.vec196
  %i.kh = getelementptr i8, ptr %.lcssa84, i64 %n.vec196 ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.ph195, %vector.body197
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next205, %vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.lcssa, i64 %index198 ; 4 uses
  %next.gep200 = getelementptr i8, ptr %.lcssa84, i64 %index198 ; 4 uses
  %i.ki = getelementptr i8, ptr %next.gep199, i64 32
  %i.kj = getelementptr i8, ptr %next.gep199, i64 64
  %i.kk = getelementptr i8, ptr %next.gep199, i64 96
  %wide.load201 = load <32 x i8>, ptr %next.gep199, align 1, !tbaa !17
  %wide.load202 = load <32 x i8>, ptr %i.ki, align 1, !tbaa !17
  %wide.load203 = load <32 x i8>, ptr %i.kj, align 1, !tbaa !17
  %wide.load204 = load <32 x i8>, ptr %i.kk, align 1, !tbaa !17
  %i.kl = getelementptr i8, ptr %next.gep200, i64 32
  %i.km = getelementptr i8, ptr %next.gep200, i64 64
  %i.kn = getelementptr i8, ptr %next.gep200, i64 96
  store <32 x i8> %wide.load201, ptr %next.gep200, align 1, !tbaa !17
  store <32 x i8> %wide.load202, ptr %i.kl, align 1, !tbaa !17
  store <32 x i8> %wide.load203, ptr %i.km, align 1, !tbaa !17
  store <32 x i8> %wide.load204, ptr %i.kn, align 1, !tbaa !17
  %index.next205 = add nuw i64 %index198, 128     ; 2 uses
  %i.ko = icmp eq i64 %index.next205, %n.vec196
  br i1 %i.ko, label %middle.block206, label %vector.body197, !llvm.loop !119

middle.block206:                                  ; preds = %vector.body197
  br i1 %cmp.n207, label %._crit_edge113.us.i, label %vec.epilog.iter.check209

vec.epilog.iter.check209:                         ; preds = %middle.block206
  br i1 %min.epilog.iters.check211, label %.lr.ph112.us.i.preheader, label %vec.epilog.ph212, !prof !23

vec.epilog.ph212:                                 ; preds = %vector.main.loop.iter.check193, %vec.epilog.iter.check209
  %vec.epilog.resume.val213 = phi i64 [ %n.vec196, %vec.epilog.iter.check209 ], [ 0, %vector.main.loop.iter.check193 ]
  %i.kp = getelementptr i8, ptr %.lcssa, i64 %n.vec214
  %i.kq = getelementptr i8, ptr %.lcssa84, i64 %n.vec214 ; 2 uses
  br label %vec.epilog.vector.body215

end_hunk_1
begin_hunk_2_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  br i1 %i.pa, label %.lr.ph652.i, label %.preheader411.i

.lr.ph644.i:                                      ; preds = %.lr.ph644.i.preheader, %.lr.ph644.i
  %.131092642.i = phi ptr [ %i.qh, %.lr.ph644.i ], [ %.121091665.i, %.lr.ph644.i.preheader ] ; 5 uses
  %.01123641.i = phi ptr [ %i.qg, %.lr.ph644.i ], [ %.01067672.i, %.lr.ph644.i.preheader ] ; 5 uses
  %i.pb = phi <8 x i32> [ %i.qf, %.lr.ph644.i ], [ %i.oo, %.lr.ph644.i.preheader ]
  %niter1775 = phi i32 [ %niter1775.next.3, %.lr.ph644.i ], [ 0, %.lr.ph644.i.preheader ]
  %i.pc = load <32 x i8>, ptr %.01123641.i, align 1, !tbaa !17
  %i.pd = load float, ptr %.131092642.i, align 1, !tbaa !17
  %i.pe = insertelement <8 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <8 x float> %i.pe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pg = bitcast <8 x float> %i.pf to <32 x i8>
  %i.ph = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.pb, <32 x i8> %i.pg, <32 x i8> %i.pc)
  %i.pi = getelementptr inbounds nuw i8, ptr %.01123641.i, i64 32
  %i.pj = getelementptr inbounds nuw i8, ptr %.131092642.i, i64 4
  %i.pk = load <32 x i8>, ptr %i.pi, align 1, !tbaa !17
  %i.pl = load float, ptr %i.pj, align 1, !tbaa !17
  %i.pm = insertelement <8 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <8 x float> %i.pm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.po = bitcast <8 x float> %i.pn to <32 x i8>
  %i.pp = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.ph, <32 x i8> %i.po, <32 x i8> %i.pk)
  %i.pq = getelementptr inbounds nuw i8, ptr %.01123641.i, i64 64
  %i.pr = getelementptr inbounds nuw i8, ptr %.131092642.i, i64 8
  %i.ps = load <32 x i8>, ptr %i.pq, align 1, !tbaa !17
  %i.pt = load float, ptr %i.pr, align 1, !tbaa !17
  %i.pu = insertelement <8 x float> poison, float %i.pt, i64 0
  %i.pv = shufflevector <8 x float> %i.pu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pw = bitcast <8 x float> %i.pv to <32 x i8>
  %i.px = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.pp, <32 x i8> %i.pw, <32 x i8> %i.ps)
  %i.py = getelementptr inbounds nuw i8, ptr %.01123641.i, i64 96
  %i.pz = getelementptr inbounds nuw i8, ptr %.131092642.i, i64 12
  %i.qa = load <32 x i8>, ptr %i.py, align 1, !tbaa !17
  %i.qb = load float, ptr %i.pz, align 1, !tbaa !17
  %i.qc = insertelement <8 x float> poison, float %i.qb, i64 0
  %i.qd = shufflevector <8 x float> %i.qc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qe = bitcast <8 x float> %i.qd to <32 x i8>
  %i.qf = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.px, <32 x i8> %i.qe, <32 x i8> %i.qa) ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.01123641.i, i64 128 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.131092642.i, i64 16 ; 2 uses
  %niter1775.next.3 = add nuw nsw i32 %niter1775, 4 ; 2 uses
  %niter1775.ncmp.3.not = icmp eq i32 %niter1775.next.3, %unroll_iter1774
  br i1 %niter1775.ncmp.3.not, label %.preheader412.loopexit.i.unr-lcssa, label %.lr.ph644.i, !llvm.loop !305

.preheader411.i:                                  ; preds = %.lr.ph652.i, %.preheader412.i
  %.lcssa516.i = phi <8 x i32> [ %.lcssa515.i, %.preheader412.i ], [ %i.rf, %.lr.ph652.i ] ; 3 uses
  %.11127.lcssa.i = phi i32 [ %.01126.lcssa.i, %.preheader412.i ], [ %i.ri, %.lr.ph652.i ] ; 5 uses
  %.11124.lcssa.i = phi ptr [ %.01123.lcssa.i, %.preheader412.i ], [ %i.rg, %.lr.ph652.i ] ; 3 uses
  %.141093.lcssa.i = phi ptr [ %.131092.lcssa.i, %.preheader412.i ], [ %i.rh, %.lr.ph652.i ] ; 4 uses
  %i.qi = icmp slt i32 %.11127.lcssa.i, %8
  br i1 %i.qi, label %.lr.ph660.i.preheader, label %._crit_edge661.i

.lr.ph660.i.preheader:                            ; preds = %.preheader411.i
  %i.qj = sub i32 %8, %.11127.lcssa.i
  %.neg1875 = add i32 %.11127.lcssa.i, 1
  %xtraiter1776 = and i32 %i.qj, 1
  %lcmp.mod1777.not = icmp eq i32 %xtraiter1776, 0
  br i1 %lcmp.mod1777.not, label %.lr.ph660.i.prol.loopexit, label %.lr.ph660.i.prol

.lr.ph660.i.prol:                                 ; preds = %.lr.ph660.i.preheader
  %i.qk = load <8 x i8>, ptr %.11124.lcssa.i, align 1, !tbaa !17
  %i.ql = load i8, ptr %.141093.lcssa.i, align 1, !tbaa !17
  %i.qm = sext i8 %i.ql to i16
  %i.qn = insertelement <8 x i16> poison, i16 %i.qm, i64 0
  %i.qo = shufflevector <8 x i16> %i.qn, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.qp = sext <8 x i8> %i.qk to <8 x i16>
  %i.qq = mul <8 x i16> %i.qo, %i.qp
  %i.qr = sext <8 x i16> %i.qq to <8 x i32>
  %i.qs = add <8 x i32> %.lcssa516.i, %i.qr       ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.11124.lcssa.i, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %.141093.lcssa.i, i64 1 ; 2 uses
  %i.qv = add nuw nsw i32 %.11127.lcssa.i, 1
  br label %.lr.ph660.i.prol.loopexit

.lr.ph660.i.prol.loopexit:                        ; preds = %.lr.ph660.i.prol, %.lr.ph660.i.preheader
  %.lcssa1756.unr = phi <8 x i32> [ poison, %.lr.ph660.i.preheader ], [ %i.qs, %.lr.ph660.i.prol ]
  %.lcssa1755.unr = phi ptr [ poison, %.lr.ph660.i.preheader ], [ %i.qu, %.lr.ph660.i.prol ]
  %.151094659.i.unr = phi ptr [ %.141093.lcssa.i, %.lr.ph660.i.preheader ], [ %i.qu, %.lr.ph660.i.prol ]
  %.21125658.i.unr = phi ptr [ %.11124.lcssa.i, %.lr.ph660.i.preheader ], [ %i.qt, %.lr.ph660.i.prol ]
  %.21128657.i.unr = phi i32 [ %.11127.lcssa.i, %.lr.ph660.i.preheader ], [ %i.qv, %.lr.ph660.i.prol ]
  %.unr1778 = phi <8 x i32> [ %.lcssa516.i, %.lr.ph660.i.preheader ], [ %i.qs, %.lr.ph660.i.prol ]
  %i.qw = icmp eq i32 %8, %.neg1875
  br i1 %i.qw, label %._crit_edge661.i, label %.lr.ph660.i

.lr.ph652.i:                                      ; preds = %.preheader412.i, %.lr.ph652.i
  %.141093651.i = phi ptr [ %i.rh, %.lr.ph652.i ], [ %.131092.lcssa.i, %.preheader412.i ] ; 2 uses
  %.11124650.i = phi ptr [ %i.rg, %.lr.ph652.i ], [ %.01123.lcssa.i, %.preheader412.i ] ; 2 uses
  %.11127649.i = phi i32 [ %i.ri, %.lr.ph652.i ], [ %.01126.lcssa.i, %.preheader412.i ]
  %i.qx = phi <8 x i32> [ %i.rf, %.lr.ph652.i ], [ %.lcssa515.i, %.preheader412.i ]
  %i.qy = load <16 x i8>, ptr %.11124650.i, align 1, !tbaa !17
  %i.qz = load float, ptr %.141093651.i, align 1, !tbaa !17
  %i.ra = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.rb = sext <16 x i8> %i.qy to <16 x i16>
  %i.rc = bitcast <4 x float> %i.ra to <16 x i8>
  %i.rd = shufflevector <16 x i8> %i.rc, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.re = sext <16 x i8> %i.rd to <16 x i16>
  %i.rf = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.qx, <16 x i16> %i.rb, <16 x i16> %i.re) ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.11124650.i, i64 16 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.141093651.i, i64 2 ; 2 uses
  %i.ri = add nuw nsw i32 %.11127649.i, 2         ; 3 uses
  %i.rj = or disjoint i32 %i.ri, 1
  %i.rk = icmp slt i32 %i.rj, %8
  br i1 %i.rk, label %.lr.ph652.i, label %.preheader411.i, !llvm.loop !306

.lr.ph660.i:                                      ; preds = %.lr.ph660.i.prol.loopexit, %.lr.ph660.i
  %.151094659.i = phi ptr [ %i.sh, %.lr.ph660.i ], [ %.151094659.i.unr, %.lr.ph660.i.prol.loopexit ] ; 3 uses
  %.21125658.i = phi ptr [ %i.sg, %.lr.ph660.i ], [ %.21125658.i.unr, %.lr.ph660.i.prol.loopexit ] ; 3 uses
  %.21128657.i = phi i32 [ %i.si, %.lr.ph660.i ], [ %.21128657.i.unr, %.lr.ph660.i.prol.loopexit ]
  %i.rl = phi <8 x i32> [ %i.sf, %.lr.ph660.i ], [ %.unr1778, %.lr.ph660.i.prol.loopexit ]
  %i.rm = load <8 x i8>, ptr %.21125658.i, align 1, !tbaa !17
  %i.rn = load i8, ptr %.151094659.i, align 1, !tbaa !17
  %i.ro = sext i8 %i.rn to i16
  %i.rp = insertelement <8 x i16> poison, i16 %i.ro, i64 0
  %i.rq = shufflevector <8 x i16> %i.rp, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.rr = sext <8 x i8> %i.rm to <8 x i16>
  %i.rs = mul <8 x i16> %i.rq, %i.rr
  %i.rt = sext <8 x i16> %i.rs to <8 x i32>
  %i.ru = add <8 x i32> %i.rl, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %.21125658.i, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %.151094659.i, i64 1
  %i.rx = load <8 x i8>, ptr %i.rv, align 1, !tbaa !17
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !17
  %i.rz = sext i8 %i.ry to i16
  %i.sa = insertelement <8 x i16> poison, i16 %i.rz, i64 0
  %i.sb = shufflevector <8 x i16> %i.sa, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sc = sext <8 x i8> %i.rx to <8 x i16>
  %i.sd = mul <8 x i16> %i.sb, %i.sc
  %i.se = sext <8 x i16> %i.sd to <8 x i32>
  %i.sf = add <8 x i32> %i.ru, %i.se              ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.21125658.i, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %.151094659.i, i64 2 ; 2 uses
  %i.si = add nuw nsw i32 %.21128657.i, 2         ; 2 uses
  %exitcond1441.not.i.1 = icmp eq i32 %i.si, %8
  br i1 %exitcond1441.not.i.1, label %._crit_edge661.i, label %.lr.ph660.i, !llvm.loop !307

._crit_edge661.i:                                 ; preds = %.lr.ph660.i.prol.loopexit, %.lr.ph660.i, %.preheader411.i
  %.lcssa517.i = phi <8 x i32> [ %.lcssa516.i, %.preheader411.i ], [ %.lcssa1756.unr, %.lr.ph660.i.prol.loopexit ], [ %i.sf, %.lr.ph660.i ]
  %.151094.lcssa.i = phi ptr [ %.141093.lcssa.i, %.preheader411.i ], [ %.lcssa1755.unr, %.lr.ph660.i.prol.loopexit ], [ %i.sh, %.lr.ph660.i ]
  store <8 x i32> %.lcssa517.i, ptr %.4666.i, align 32, !tbaa !17
  %i.sj = getelementptr inbounds nuw i8, ptr %.4666.i, i64 32 ; 2 uses
  %i.sk = add nuw nsw i32 %.31098664.i, 1         ; 2 uses
  %exitcond1442.not.i = icmp eq i32 %i.sk, %6
  br i1 %exitcond1442.not.i, label %._crit_edge668.i, label %.lr.ph667.i, !llvm.loop !308

._crit_edge668.i:                                 ; preds = %._crit_edge661.i, %.preheader419.i
  %.4.lcssa.i = phi ptr [ %.31074.lcssa.i, %.preheader419.i ], [ %i.sj, %._crit_edge661.i ] ; 2 uses
  %i.sl = getelementptr inbounds i8, ptr %.01067672.i, i64 %i.f ; 2 uses
  %i.sm = add nuw nsw i32 %.01075670.i, 8         ; 2 uses
  %i.sn = or disjoint i32 %i.sm, 7
  %i.so = icmp slt i32 %i.sn, %4
  %scevgep1437.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.f
  br i1 %i.so, label %.preheader422.i, label %.preheader410.loopexit.i, !llvm.loop !309

.preheader409.i:                                  ; preds = %._crit_edge818.i, %.preheader409.lr.ph.i
  %indvars.iv1447.i = phi ptr [ %scevgep1446.i, %.preheader409.lr.ph.i ], [ %scevgep1448.i, %._crit_edge818.i ] ; 4 uses
  %.11068822.i = phi ptr [ %.01067.lcssa.i, %.preheader409.lr.ph.i ], [ %i.ajg, %._crit_edge818.i ] ; 12 uses
  %.5821.i = phi ptr [ %.01071.lcssa.i, %.preheader409.lr.ph.i ], [ %.9.lcssa.i, %._crit_edge818.i ] ; 2 uses
  %.11076820.i = phi i32 [ %.01075.lcssa.i, %.preheader409.lr.ph.i ], [ %i.ajh, %._crit_edge818.i ]
  br i1 %i.z, label %.lr.ph712.i, label %.preheader408.i

.preheader397.i:                                  ; preds = %._crit_edge818.i, %.preheader410.i
  %.11076.lcssa.i = phi i32 [ %.01075.lcssa.i, %.preheader410.i ], [ %i.ajh, %._crit_edge818.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.01071.lcssa.i, %.preheader410.i ], [ %.9.lcssa.i, %._crit_edge818.i ] ; 2 uses
  %.11068.lcssa.i = phi ptr [ %.01067.lcssa.i, %.preheader410.i ], [ %i.ajg, %._crit_edge818.i ] ; 3 uses
  %i.sp = or disjoint i32 %.11076.lcssa.i, 1
  %i.sq = icmp slt i32 %i.sp, %4
  br i1 %i.sq, label %.preheader396.lr.ph.i, label %.preheader384.i

.preheader396.lr.ph.i:                            ; preds = %.preheader397.i
  %i.sr = icmp sgt i32 %6, 7
  %i.ss = icmp eq i32 %7, 0                       ; 4 uses
  %i.st = icmp sgt i32 %8, 3                      ; 4 uses
  %i.su = shl i32 %8, 1
  %i.sv = sext i32 %i.su to i64                   ; 2 uses
  %i.sw = add i32 %8, -4                          ; 5 uses
  %i.sx = and i32 %i.sw, -4
  %i.sy = add i32 %i.sx, 4                        ; 4 uses
  %i.sz = and i32 %6, -8
  %i.ta = zext i32 %i.sw to i64                   ; 2 uses
  %i.tb = lshr i64 %i.ta, 2                       ; 4 uses
  %i.tc = shl nuw nsw i64 %i.tb, 4
  %i.td = shl nuw nsw i64 %i.tb, 3
  %i.te = add nuw nsw i64 %i.td, 8                ; 2 uses
  %scevgep1457.i = getelementptr i8, ptr %.11068.lcssa.i, i64 %i.te
  %i.tf = and i64 %i.ta, 4294967292
  %i.tg = shl nuw nsw i64 %i.tb, 5
  %i.th = add i32 %8, -2
  %i.ti = add nuw nsw i64 %i.tb, 1                ; 7 uses
  %i.tj = add i32 %8, -4                          ; 3 uses
  %i.tk = lshr i32 %i.tj, 2                       ; 3 uses
  %i.tl = add nuw nsw i32 %i.tk, 1                ; 4 uses
  %i.tm = icmp eq i32 %i.tk, 0
  %unroll_iter1832 = and i32 %i.tl, 2147483646
  %i.tn = and i32 %i.tj, 4
  %lcmp.mod1827.not.not = icmp eq i32 %i.tn, 0
  %lcmp.mod1831 = trunc i32 %i.tl to i1
  %i.to = icmp eq i32 %i.tk, 0
  %unroll_iter1848 = and i32 %i.tl, 2147483646
  %i.tp = and i32 %i.tj, 4
  %lcmp.mod1844.not.not = icmp eq i32 %i.tp, 0
  %lcmp.mod1847 = trunc i32 %i.tl to i1
  %min.iters.check1145 = icmp samesign ult i32 %i.sw, 28
  %n.vec1147 = and i64 %i.ti, 2147483640          ; 4 uses
  %i.tq = trunc nuw nsw i64 %n.vec1147 to i32
  %i.tr = shl i32 %i.tq, 2
  %i.ts = shl nuw nsw i64 %n.vec1147, 3           ; 2 uses
  %cmp.n1172 = icmp eq i64 %i.ti, %n.vec1147
  %i.tt = add i32 %8, -2
  %min.iters.check1010 = icmp samesign ult i32 %i.sw, 12
  %min.iters.check1012 = icmp samesign ult i32 %i.sw, 60
  %i.tu = and i64 %i.ti, 12
  %n.vec1014 = and i64 %i.ti, 2147483632          ; 6 uses
  %i.tv = trunc nuw nsw i64 %n.vec1014 to i32
  %i.tw = shl i32 %i.tv, 2
  %i.tx = shl nuw nsw i64 %n.vec1014, 3
  %i.ty = shl nuw nsw i64 %n.vec1014, 2
  %cmp.n1053 = icmp eq i64 %i.ti, %n.vec1014
  %min.epilog.iters.check1057 = icmp eq i64 %i.tu, 0
  %n.vec1062 = and i64 %i.ti, 2147483644          ; 5 uses
  %i.tz = trunc nuw nsw i64 %n.vec1062 to i32
  %i.ua = shl i32 %i.tz, 2
  %i.ub = shl nuw nsw i64 %n.vec1062, 3
  %i.uc = shl nuw nsw i64 %n.vec1062, 2
  %cmp.n1079 = icmp eq i64 %i.ti, %n.vec1062
  br label %.preheader396.i

.preheader408.i:                                  ; preds = %._crit_edge703.i, %.preheader409.i
  %.01208.lcssa.i = phi i32 [ 0, %.preheader409.i ], [ %i.ah, %._crit_edge703.i ] ; 3 uses
  %.01129.lcssa.i = phi ptr [ %.val8, %.preheader409.i ], [ %.31132.lcssa.i, %._crit_edge703.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.5821.i, %.preheader409.i ], [ %i.xn, %._crit_edge703.i ] ; 2 uses
  %i.ud = or disjoint i32 %.01208.lcssa.i, 3
  %i.ue = icmp slt i32 %i.ud, %6
  br i1 %i.ue, label %.lr.ph752.i, label %.preheader407.i

.lr.ph712.i:                                      ; preds = %.preheader409.i, %._crit_edge703.i
  %.6711.i = phi ptr [ %i.xn, %._crit_edge703.i ], [ %.5821.i, %.preheader409.i ] ; 9 uses
  %.01129710.i = phi ptr [ %.31132.lcssa.i, %._crit_edge703.i ], [ %.val8, %.preheader409.i ] ; 3 uses
  %.01208709.i = phi i32 [ %i.xo, %._crit_edge703.i ], [ 0, %.preheader409.i ]
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph712.i
  %i.uf = load <8 x i32>, ptr %.6711.i, align 32, !tbaa !17
  %i.ug = getelementptr inbounds nuw i8, ptr %.6711.i, i64 32
  %i.uh = load <8 x i32>, ptr %i.ug, align 32, !tbaa !17
  %i.ui = getelementptr inbounds nuw i8, ptr %.6711.i, i64 64
  %i.uj = load <8 x i32>, ptr %i.ui, align 32, !tbaa !17
  %i.uk = getelementptr inbounds nuw i8, ptr %.6711.i, i64 96
  %i.ul = load <8 x i32>, ptr %i.uk, align 32, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph712.i
  %i.um = phi <8 x i32> [ %i.uj, %bb.j ], [ zeroinitializer, %.lr.ph712.i ] ; 2 uses
  %i.un = phi <8 x i32> [ %i.uh, %bb.j ], [ zeroinitializer, %.lr.ph712.i ] ; 2 uses
  %i.uo = phi <8 x i32> [ %i.uf, %bb.j ], [ zeroinitializer, %.lr.ph712.i ] ; 2 uses
  %i.up = phi <8 x i32> [ %i.ul, %bb.j ], [ zeroinitializer, %.lr.ph712.i ] ; 2 uses
  br i1 %i.ab, label %.lr.ph680.i, label %.preheader405.i

.preheader405.i.loopexit:                         ; preds = %.lr.ph680.i
  %i.uq = getelementptr i8, ptr %.01129710.i, i64 %i.ao
  %scevgep456 = getelementptr i8, ptr %i.uq, i64 32
  br label %.preheader405.i

.preheader405.i:                                  ; preds = %.preheader405.i.loopexit, %bb.k
  %.lcssa443.i = phi <8 x i32> [ %i.up, %bb.k ], [ %i.vf, %.preheader405.i.loopexit ] ; 2 uses
  %.lcssa442.i = phi <8 x i32> [ %i.um, %bb.k ], [ %i.ve, %.preheader405.i.loopexit ] ; 2 uses
  %.lcssa441.i = phi <8 x i32> [ %i.un, %bb.k ], [ %i.vd, %.preheader405.i.loopexit ] ; 2 uses
  %.lcssa440.i = phi <8 x i32> [ %i.uo, %bb.k ], [ %i.vc, %.preheader405.i.loopexit ] ; 2 uses
  %.01215.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.ag, %.preheader405.i.loopexit ] ; 3 uses
  %.01212.lcssa.i = phi ptr [ %.11068822.i, %bb.k ], [ %i.vg, %.preheader405.i.loopexit ] ; 2 uses
  %.11130.lcssa.i = phi ptr [ %.01129710.i, %bb.k ], [ %scevgep456, %.preheader405.i.loopexit ] ; 2 uses
  %i.ur = or disjoint i32 %.01215.lcssa.i, 1
  %i.us = icmp slt i32 %i.ur, %8
  br i1 %i.us, label %.lr.ph691.i, label %.preheader404.i

.lr.ph680.i:                                      ; preds = %bb.k, %.lr.ph680.i
  %.11130678.i = phi ptr [ %i.vh, %.lr.ph680.i ], [ %.01129710.i, %bb.k ] ; 2 uses
  %.01212677.i = phi ptr [ %i.vg, %.lr.ph680.i ], [ %.11068822.i, %bb.k ] ; 2 uses
  %.01215676.i = phi i32 [ %i.vi, %.lr.ph680.i ], [ 0, %bb.k ]
  %i.ut = phi <8 x i32> [ %i.vc, %.lr.ph680.i ], [ %i.uo, %bb.k ]
  %i.uu = phi <8 x i32> [ %i.vd, %.lr.ph680.i ], [ %i.un, %bb.k ]
  %i.uv = phi <8 x i32> [ %i.ve, %.lr.ph680.i ], [ %i.um, %bb.k ]
  %i.uw = phi <8 x i32> [ %i.vf, %.lr.ph680.i ], [ %i.up, %bb.k ]
  %i.ux = load <16 x i8>, ptr %.01212677.i, align 1, !tbaa !17 ; 2 uses
  %i.uy = load <32 x i8>, ptr %.11130678.i, align 1, !tbaa !17 ; 3 uses
  %i.uz = shufflevector <16 x i8> %i.ux, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.va = shufflevector <16 x i8> %i.ux, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.vb = shufflevector <32 x i8> %i.uy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.vc = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.ut, <32 x i8> %i.uy, <32 x i8> %i.uz) ; 2 uses
  %i.vd = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.uu, <32 x i8> %i.uy, <32 x i8> %i.va) ; 2 uses
  %i.ve = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.uv, <32 x i8> %i.vb, <32 x i8> %i.uz) ; 2 uses
  %i.vf = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.uw, <32 x i8> %i.vb, <32 x i8> %i.va) ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.01212677.i, i64 16 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.11130678.i, i64 32
  %i.vi = add nuw nsw i32 %.01215676.i, 4         ; 2 uses
  %i.vj = or disjoint i32 %i.vi, 3
  %i.vk = icmp slt i32 %i.vj, %8
  br i1 %i.vk, label %.lr.ph680.i, label %.preheader405.i.loopexit, !llvm.loop !310

.preheader404.i:                                  ; preds = %.lr.ph691.i, %.preheader405.i
  %.lcssa447.i = phi <8 x i32> [ %.lcssa443.i, %.preheader405.i ], [ %i.wc, %.lr.ph691.i ] ; 2 uses
  %.lcssa446.i = phi <8 x i32> [ %.lcssa442.i, %.preheader405.i ], [ %i.wb, %.lr.ph691.i ] ; 2 uses
  %.lcssa445.i = phi <8 x i32> [ %.lcssa441.i, %.preheader405.i ], [ %i.vz, %.lr.ph691.i ] ; 2 uses
  %.lcssa444.i = phi <8 x i32> [ %.lcssa440.i, %.preheader405.i ], [ %i.vx, %.lr.ph691.i ] ; 2 uses
  %.11216.lcssa.i = phi i32 [ %.01215.lcssa.i, %.preheader405.i ], [ %i.wf, %.lr.ph691.i ] ; 2 uses
  %.11213.lcssa.i = phi ptr [ %.01212.lcssa.i, %.preheader405.i ], [ %i.wd, %.lr.ph691.i ]
  %.21131.lcssa.i = phi ptr [ %.11130.lcssa.i, %.preheader405.i ], [ %i.we, %.lr.ph691.i ] ; 2 uses
  %i.vl = icmp slt i32 %.11216.lcssa.i, %8
  br i1 %i.vl, label %.lr.ph702.i, label %._crit_edge703.i

.lr.ph691.i:                                      ; preds = %.preheader405.i, %.lr.ph691.i
  %.21131690.i = phi ptr [ %i.we, %.lr.ph691.i ], [ %.11130.lcssa.i, %.preheader405.i ] ; 2 uses
  %.11213689.i = phi ptr [ %i.wd, %.lr.ph691.i ], [ %.01212.lcssa.i, %.preheader405.i ] ; 2 uses
  %.11216688.i = phi i32 [ %i.wf, %.lr.ph691.i ], [ %.01215.lcssa.i, %.preheader405.i ]
  %i.vm = phi <8 x i32> [ %i.vx, %.lr.ph691.i ], [ %.lcssa440.i, %.preheader405.i ]
  %i.vn = phi <8 x i32> [ %i.vz, %.lr.ph691.i ], [ %.lcssa441.i, %.preheader405.i ]
  %i.vo = phi <8 x i32> [ %i.wb, %.lr.ph691.i ], [ %.lcssa442.i, %.preheader405.i ]
  %i.vp = phi <8 x i32> [ %i.wc, %.lr.ph691.i ], [ %.lcssa443.i, %.preheader405.i ]
  %i.vq = load double, ptr %.11213689.i, align 1, !tbaa !17
  %i.vr = insertelement <2 x double> poison, double %i.vq, i64 0
  %i.vs = load <16 x i8>, ptr %.21131690.i, align 1, !tbaa !17
  %i.vt = bitcast <2 x double> %i.vr to <16 x i8>
  %i.vu = shufflevector <16 x i8> %i.vt, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vv = sext <16 x i8> %i.vu to <16 x i16>      ; 3 uses
  %i.vw = sext <16 x i8> %i.vs to <16 x i16>      ; 3 uses
  %i.vx = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vm, <16 x i16> %i.vv, <16 x i16> %i.vw) ; 2 uses
  %i.vy = shufflevector <16 x i16> %i.vv, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.vz = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vn, <16 x i16> %i.vy, <16 x i16> %i.vw) ; 2 uses
  %i.wa = shufflevector <16 x i16> %i.vw, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.wb = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vo, <16 x i16> %i.vv, <16 x i16> %i.wa) ; 2 uses
  %i.wc = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.vp, <16 x i16> %i.vy, <16 x i16> %i.wa) ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.11213689.i, i64 8 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.21131690.i, i64 16 ; 2 uses
  %i.wf = add nuw nsw i32 %.11216688.i, 2         ; 3 uses
  %i.wg = or disjoint i32 %i.wf, 1
  %i.wh = icmp slt i32 %i.wg, %8
  br i1 %i.wh, label %.lr.ph691.i, label %.preheader404.i, !llvm.loop !311

.lr.ph702.i:                                      ; preds = %.preheader404.i, %.lr.ph702.i
  %.31132701.i = phi ptr [ %i.xi, %.lr.ph702.i ], [ %.21131.lcssa.i, %.preheader404.i ] ; 2 uses
  %.21214700.i = phi ptr [ %i.xh, %.lr.ph702.i ], [ %.11213.lcssa.i, %.preheader404.i ] ; 2 uses
  %.21217699.i = phi i32 [ %i.xj, %.lr.ph702.i ], [ %.11216.lcssa.i, %.preheader404.i ]
  %i.wi = phi <8 x i32> [ %i.xd, %.lr.ph702.i ], [ %.lcssa444.i, %.preheader404.i ]
  %i.wj = phi <8 x i32> [ %i.xe, %.lr.ph702.i ], [ %.lcssa445.i, %.preheader404.i ]
  %i.wk = phi <8 x i32> [ %i.xf, %.lr.ph702.i ], [ %.lcssa446.i, %.preheader404.i ]
  %i.wl = phi <8 x i32> [ %i.xg, %.lr.ph702.i ], [ %.lcssa447.i, %.preheader404.i ]
  %i.wm = load float, ptr %.21214700.i, align 1, !tbaa !17
  %i.wn = insertelement <4 x float> poison, float %i.wm, i64 0
  %i.wo = load <8 x i8>, ptr %.31132701.i, align 1, !tbaa !17
  %i.wp = bitcast <4 x float> %i.wn to <16 x i8>
  %i.wq = shufflevector <16 x i8> %i.wp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.wr = sext <8 x i8> %i.wq to <8 x i16>        ; 3 uses
  %i.ws = sext <8 x i8> %i.wo to <8 x i16>        ; 3 uses
  %i.wt = shufflevector <8 x i16> %i.ws, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.wu = mul nsw <8 x i16> %i.wr, %i.ws
  %i.wv = sext <8 x i16> %i.wu to <8 x i32>
  %i.ww = shufflevector <8 x i16> %i.wr, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.wx = mul nsw <8 x i16> %i.ww, %i.ws
  %i.wy = sext <8 x i16> %i.wx to <8 x i32>
  %i.wz = mul nsw <8 x i16> %i.wt, %i.wr
  %i.xa = sext <8 x i16> %i.wz to <8 x i32>
  %i.xb = mul nsw <8 x i16> %i.wt, %i.ww
  %i.xc = sext <8 x i16> %i.xb to <8 x i32>
  %i.xd = add <8 x i32> %i.wi, %i.wv              ; 2 uses
  %i.xe = add <8 x i32> %i.wj, %i.wy              ; 2 uses
  %i.xf = add <8 x i32> %i.wk, %i.xa              ; 2 uses
  %i.xg = add <8 x i32> %i.wl, %i.xc              ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.21214700.i, i64 4
  %i.xi = getelementptr inbounds nuw i8, ptr %.31132701.i, i64 8 ; 2 uses
  %i.xj = add nuw nsw i32 %.21217699.i, 1         ; 2 uses
  %exitcond1443.not.i = icmp eq i32 %i.xj, %8
  br i1 %exitcond1443.not.i, label %._crit_edge703.i, label %.lr.ph702.i, !llvm.loop !312

._crit_edge703.i:                                 ; preds = %.lr.ph702.i, %.preheader404.i
  %.lcssa451.i = phi <8 x i32> [ %.lcssa447.i, %.preheader404.i ], [ %i.xg, %.lr.ph702.i ]
  %.lcssa450.i = phi <8 x i32> [ %.lcssa446.i, %.preheader404.i ], [ %i.xf, %.lr.ph702.i ]
  %.lcssa449.i = phi <8 x i32> [ %.lcssa445.i, %.preheader404.i ], [ %i.xe, %.lr.ph702.i ]
  %.lcssa448.i = phi <8 x i32> [ %.lcssa444.i, %.preheader404.i ], [ %i.xd, %.lr.ph702.i ]
  %.31132.lcssa.i = phi ptr [ %.21131.lcssa.i, %.preheader404.i ], [ %i.xi, %.lr.ph702.i ] ; 2 uses
  store <8 x i32> %.lcssa448.i, ptr %.6711.i, align 32, !tbaa !17
  %i.xk = getelementptr inbounds nuw i8, ptr %.6711.i, i64 32
  store <8 x i32> %.lcssa449.i, ptr %i.xk, align 32, !tbaa !17
  %i.xl = getelementptr inbounds nuw i8, ptr %.6711.i, i64 64
  store <8 x i32> %.lcssa450.i, ptr %i.xl, align 32, !tbaa !17
  %i.xm = getelementptr inbounds nuw i8, ptr %.6711.i, i64 96
  store <8 x i32> %.lcssa451.i, ptr %i.xm, align 32, !tbaa !17
  %i.xn = getelementptr inbounds nuw i8, ptr %.6711.i, i64 128 ; 2 uses
  %i.xo = add nuw nsw i32 %.01208709.i, 8         ; 2 uses
  %i.xp = or disjoint i32 %i.xo, 7
  %i.xq = icmp slt i32 %i.xp, %6
  br i1 %i.xq, label %.lr.ph712.i, label %.preheader408.i, !llvm.loop !313

.preheader407.i:                                  ; preds = %._crit_edge743.i, %.preheader408.i
  %.11209.lcssa.i = phi i32 [ %.01208.lcssa.i, %.preheader408.i ], [ %i.abs, %._crit_edge743.i ] ; 3 uses
  %.41133.lcssa.i = phi ptr [ %.01129.lcssa.i, %.preheader408.i ], [ %.71136.lcssa.i, %._crit_edge743.i ] ; 2 uses
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader408.i ], [ %i.abr, %._crit_edge743.i ] ; 2 uses
  %i.xr = or disjoint i32 %.11209.lcssa.i, 1
  %i.xs = icmp slt i32 %i.xr, %6
  br i1 %i.xs, label %.lr.ph786.i, label %.preheader406.i

.lr.ph752.i:                                      ; preds = %.preheader408.i, %._crit_edge743.i
  %.7751.i = phi ptr [ %i.abr, %._crit_edge743.i ], [ %.6.lcssa.i, %.preheader408.i ] ; 9 uses
  %.41133750.i = phi ptr [ %.71136.lcssa.i, %._crit_edge743.i ], [ %.01129.lcssa.i, %.preheader408.i ] ; 4 uses
  %.11209749.i = phi i32 [ %i.abs, %._crit_edge743.i ], [ %.01208.lcssa.i, %.preheader408.i ]
  br i1 %i.aa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph752.i
  %i.xt = load <4 x i32>, ptr %.7751.i, align 16, !tbaa !17
  %i.xu = getelementptr inbounds nuw i8, ptr %.7751.i, i64 16
  %i.xv = load <4 x i32>, ptr %i.xu, align 16, !tbaa !17
  %i.xw = getelementptr inbounds nuw i8, ptr %.7751.i, i64 32
end_hunk_2
begin_hunk_3_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.01230791.i = phi ptr [ %i.agv, %.lr.ph794.i ], [ %.11068822.i, %.lr.ph794.i.preheader ] ; 5 uses
  %i.afq = phi <4 x i32> [ %i.agu, %.lr.ph794.i ], [ %i.afd, %.lr.ph794.i.preheader ]
  %niter1817 = phi i32 [ %niter1817.next.3, %.lr.ph794.i ], [ 0, %.lr.ph794.i.preheader ]
  %i.afr = load <16 x i8>, ptr %.01230791.i, align 1, !tbaa !17
  %i.afs = load float, ptr %.131142792.i, align 1, !tbaa !17
  %i.aft = insertelement <4 x float> poison, float %i.afs, i64 0
  %i.afu = bitcast <4 x float> %i.aft to <16 x i8>
  %i.afv = shufflevector <16 x i8> %i.afu, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.afw = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afq, <16 x i8> %i.afv, <16 x i8> %i.afr)
  %i.afx = getelementptr inbounds nuw i8, ptr %.01230791.i, i64 16
  %i.afy = getelementptr inbounds nuw i8, ptr %.131142792.i, i64 4
  %i.afz = load <16 x i8>, ptr %i.afx, align 1, !tbaa !17
  %i.aga = load float, ptr %i.afy, align 1, !tbaa !17
  %i.agb = insertelement <4 x float> poison, float %i.aga, i64 0
  %i.agc = bitcast <4 x float> %i.agb to <16 x i8>
  %i.agd = shufflevector <16 x i8> %i.agc, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.age = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.afw, <16 x i8> %i.agd, <16 x i8> %i.afz)
  %i.agf = getelementptr inbounds nuw i8, ptr %.01230791.i, i64 32
  %i.agg = getelementptr inbounds nuw i8, ptr %.131142792.i, i64 8
  %i.agh = load <16 x i8>, ptr %i.agf, align 1, !tbaa !17
  %i.agi = load float, ptr %i.agg, align 1, !tbaa !17
  %i.agj = insertelement <4 x float> poison, float %i.agi, i64 0
  %i.agk = bitcast <4 x float> %i.agj to <16 x i8>
  %i.agl = shufflevector <16 x i8> %i.agk, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agm = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.age, <16 x i8> %i.agl, <16 x i8> %i.agh)
  %i.agn = getelementptr inbounds nuw i8, ptr %.01230791.i, i64 48
  %i.ago = getelementptr inbounds nuw i8, ptr %.131142792.i, i64 12
  %i.agp = load <16 x i8>, ptr %i.agn, align 1, !tbaa !17
  %i.agq = load float, ptr %i.ago, align 1, !tbaa !17
  %i.agr = insertelement <4 x float> poison, float %i.agq, i64 0
  %i.ags = bitcast <4 x float> %i.agr to <16 x i8>
  %i.agt = shufflevector <16 x i8> %i.ags, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agu = tail call <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32> %i.agm, <16 x i8> %i.agt, <16 x i8> %i.agp) ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.01230791.i, i64 64 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.131142792.i, i64 16 ; 2 uses
  %niter1817.next.3 = add nuw nsw i32 %niter1817, 4 ; 2 uses
  %niter1817.ncmp.3.not = icmp eq i32 %niter1817.next.3, %unroll_iter1816
  br i1 %niter1817.ncmp.3.not, label %.preheader399.loopexit.i.unr-lcssa, label %.lr.ph794.i, !llvm.loop !323

.preheader398.i:                                  ; preds = %.lr.ph802.i, %.preheader399.i
  %.lcssa471.i = phi <4 x i32> [ %.lcssa470.i, %.preheader399.i ], [ %i.ahw, %.lr.ph802.i ] ; 3 uses
  %.11234.lcssa.i = phi i32 [ %.01233.lcssa.i, %.preheader399.i ], [ %i.ahz, %.lr.ph802.i ] ; 5 uses
  %.11231.lcssa.i = phi ptr [ %.01230.lcssa.i, %.preheader399.i ], [ %i.ahx, %.lr.ph802.i ] ; 3 uses
  %.141143.lcssa.i = phi ptr [ %.131142.lcssa.i, %.preheader399.i ], [ %i.ahy, %.lr.ph802.i ] ; 4 uses
  %i.agx = icmp slt i32 %.11234.lcssa.i, %8
  br i1 %i.agx, label %.lr.ph810.i.preheader, label %._crit_edge811.i

.lr.ph810.i.preheader:                            ; preds = %.preheader398.i
  %i.agy = sub i32 %8, %.11234.lcssa.i
  %.neg1876 = add i32 %.11234.lcssa.i, 1
  %xtraiter1818 = and i32 %i.agy, 1
  %lcmp.mod1819.not = icmp eq i32 %xtraiter1818, 0
  br i1 %lcmp.mod1819.not, label %.lr.ph810.i.prol.loopexit, label %.lr.ph810.i.prol

.lr.ph810.i.prol:                                 ; preds = %.lr.ph810.i.preheader
  %i.agz = load <8 x i8>, ptr %.11231.lcssa.i, align 1, !tbaa !17
  %i.aha = load i8, ptr %.141143.lcssa.i, align 1, !tbaa !17
  %i.ahb = sext i8 %i.aha to i16
  %i.ahc = insertelement <8 x i16> poison, i16 %i.ahb, i64 0
  %i.ahd = shufflevector <8 x i16> %i.ahc, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ahe = sext <8 x i8> %i.agz to <8 x i16>      ; 2 uses
  %i.ahf = mul <8 x i16> %i.ahd, %i.ahe
  %i.ahg = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ahe, <8 x i16> %i.ahd)
  %i.ahh = shufflevector <8 x i16> %i.ahf, <8 x i16> %i.ahg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahi = bitcast <8 x i16> %i.ahh to <4 x i32>
  %i.ahj = add <4 x i32> %.lcssa471.i, %i.ahi     ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.11231.lcssa.i, i64 4
  %i.ahl = getelementptr inbounds nuw i8, ptr %.141143.lcssa.i, i64 1 ; 2 uses
  %i.ahm = add nuw nsw i32 %.11234.lcssa.i, 1
  br label %.lr.ph810.i.prol.loopexit

.lr.ph810.i.prol.loopexit:                        ; preds = %.lr.ph810.i.prol, %.lr.ph810.i.preheader
  %.lcssa1686.unr = phi <4 x i32> [ poison, %.lr.ph810.i.preheader ], [ %i.ahj, %.lr.ph810.i.prol ]
  %.lcssa1685.unr = phi ptr [ poison, %.lr.ph810.i.preheader ], [ %i.ahl, %.lr.ph810.i.prol ]
  %.151144809.i.unr = phi ptr [ %.141143.lcssa.i, %.lr.ph810.i.preheader ], [ %i.ahl, %.lr.ph810.i.prol ]
  %.21232808.i.unr = phi ptr [ %.11231.lcssa.i, %.lr.ph810.i.preheader ], [ %i.ahk, %.lr.ph810.i.prol ]
  %.21235807.i.unr = phi i32 [ %.11234.lcssa.i, %.lr.ph810.i.preheader ], [ %i.ahm, %.lr.ph810.i.prol ]
  %.unr1820 = phi <4 x i32> [ %.lcssa471.i, %.lr.ph810.i.preheader ], [ %i.ahj, %.lr.ph810.i.prol ]
  %i.ahn = icmp eq i32 %8, %.neg1876
  br i1 %i.ahn, label %._crit_edge811.i, label %.lr.ph810.i

.lr.ph802.i:                                      ; preds = %.preheader399.i, %.lr.ph802.i
  %.141143801.i = phi ptr [ %i.ahy, %.lr.ph802.i ], [ %.131142.lcssa.i, %.preheader399.i ] ; 2 uses
  %.11231800.i = phi ptr [ %i.ahx, %.lr.ph802.i ], [ %.01230.lcssa.i, %.preheader399.i ] ; 2 uses
  %.11234799.i = phi i32 [ %i.ahz, %.lr.ph802.i ], [ %.01233.lcssa.i, %.preheader399.i ]
  %i.aho = phi <4 x i32> [ %i.ahw, %.lr.ph802.i ], [ %.lcssa470.i, %.preheader399.i ]
  %i.ahp = load <8 x i8>, ptr %.11231800.i, align 1, !tbaa !17
  %i.ahq = load i16, ptr %.141143801.i, align 2, !tbaa !382
  %i.ahr = insertelement <8 x i16> poison, i16 %i.ahq, i64 0
  %i.ahs = sext <8 x i8> %i.ahp to <8 x i16>
  %i.aht = bitcast <8 x i16> %i.ahr to <16 x i8>
  %i.ahu = shufflevector <16 x i8> %i.aht, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ahv = sext <8 x i8> %i.ahu to <8 x i16>
  %i.ahw = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.aho, <8 x i16> %i.ahs, <8 x i16> %i.ahv) ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.11231800.i, i64 8 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.141143801.i, i64 2 ; 2 uses
  %i.ahz = add nuw nsw i32 %.11234799.i, 2        ; 3 uses
  %i.aia = or disjoint i32 %i.ahz, 1
  %i.aib = icmp slt i32 %i.aia, %8
  br i1 %i.aib, label %.lr.ph802.i, label %.preheader398.i, !llvm.loop !324

.lr.ph810.i:                                      ; preds = %.lr.ph810.i.prol.loopexit, %.lr.ph810.i
  %.151144809.i = phi ptr [ %i.ajc, %.lr.ph810.i ], [ %.151144809.i.unr, %.lr.ph810.i.prol.loopexit ] ; 3 uses
  %.21232808.i = phi ptr [ %i.ajb, %.lr.ph810.i ], [ %.21232808.i.unr, %.lr.ph810.i.prol.loopexit ] ; 3 uses
  %.21235807.i = phi i32 [ %i.ajd, %.lr.ph810.i ], [ %.21235807.i.unr, %.lr.ph810.i.prol.loopexit ]
  %i.aic = phi <4 x i32> [ %i.aja, %.lr.ph810.i ], [ %.unr1820, %.lr.ph810.i.prol.loopexit ]
  %i.aid = load <8 x i8>, ptr %.21232808.i, align 1, !tbaa !17
  %i.aie = load i8, ptr %.151144809.i, align 1, !tbaa !17
  %i.aif = sext i8 %i.aie to i16
  %i.aig = insertelement <8 x i16> poison, i16 %i.aif, i64 0
  %i.aih = shufflevector <8 x i16> %i.aig, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aii = sext <8 x i8> %i.aid to <8 x i16>      ; 2 uses
  %i.aij = mul <8 x i16> %i.aih, %i.aii
  %i.aik = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.aii, <8 x i16> %i.aih)
  %i.ail = shufflevector <8 x i16> %i.aij, <8 x i16> %i.aik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aim = bitcast <8 x i16> %i.ail to <4 x i32>
  %i.ain = add <4 x i32> %i.aic, %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %.21232808.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.151144809.i, i64 1
  %i.aiq = load <8 x i8>, ptr %i.aio, align 1, !tbaa !17
  %i.air = load i8, ptr %i.aip, align 1, !tbaa !17
  %i.ais = sext i8 %i.air to i16
  %i.ait = insertelement <8 x i16> poison, i16 %i.ais, i64 0
  %i.aiu = shufflevector <8 x i16> %i.ait, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aiv = sext <8 x i8> %i.aiq to <8 x i16>      ; 2 uses
  %i.aiw = mul <8 x i16> %i.aiu, %i.aiv
  %i.aix = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.aiv, <8 x i16> %i.aiu)
  %i.aiy = shufflevector <8 x i16> %i.aiw, <8 x i16> %i.aix, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aiz = bitcast <8 x i16> %i.aiy to <4 x i32>
  %i.aja = add <4 x i32> %i.ain, %i.aiz           ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.21232808.i, i64 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %.151144809.i, i64 2 ; 2 uses
  %i.ajd = add nuw nsw i32 %.21235807.i, 2        ; 2 uses
  %exitcond1452.not.i.1 = icmp eq i32 %i.ajd, %8
  br i1 %exitcond1452.not.i.1, label %._crit_edge811.i, label %.lr.ph810.i, !llvm.loop !325

._crit_edge811.i:                                 ; preds = %.lr.ph810.i.prol.loopexit, %.lr.ph810.i, %.preheader398.i
  %.lcssa472.i = phi <4 x i32> [ %.lcssa471.i, %.preheader398.i ], [ %.lcssa1686.unr, %.lr.ph810.i.prol.loopexit ], [ %i.aja, %.lr.ph810.i ]
  %.151144.lcssa.i = phi ptr [ %.141143.lcssa.i, %.preheader398.i ], [ %.lcssa1685.unr, %.lr.ph810.i.prol.loopexit ], [ %i.ajc, %.lr.ph810.i ]
  store <4 x i32> %.lcssa472.i, ptr %.9816.i, align 16, !tbaa !17
  %i.aje = getelementptr inbounds nuw i8, ptr %.9816.i, i64 16 ; 2 uses
  %i.ajf = add nuw nsw i32 %.31211814.i, 1        ; 2 uses
  %exitcond1453.not.i = icmp eq i32 %i.ajf, %6
  br i1 %exitcond1453.not.i, label %._crit_edge818.i, label %.lr.ph817.i, !llvm.loop !326

._crit_edge818.i:                                 ; preds = %._crit_edge811.i, %.preheader406.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader406.i ], [ %i.aje, %._crit_edge811.i ] ; 2 uses
  %i.ajg = getelementptr inbounds i8, ptr %.11068822.i, i64 %i.ad ; 2 uses
  %i.ajh = add nuw nsw i32 %.11076820.i, 4        ; 3 uses
  %i.aji = or disjoint i32 %i.ajh, 3
  %i.ajj = icmp slt i32 %i.aji, %4
  %scevgep1448.i = getelementptr i8, ptr %indvars.iv1447.i, i64 %i.ad
  br i1 %i.ajj, label %.preheader409.i, label %.preheader397.i, !llvm.loop !327

.preheader396.i:                                  ; preds = %._crit_edge983.i, %.preheader396.lr.ph.i
  %indvars.iv1458.i = phi ptr [ %scevgep1457.i, %.preheader396.lr.ph.i ], [ %scevgep1459.i, %._crit_edge983.i ] ; 4 uses
  %.21069987.i = phi ptr [ %.11068.lcssa.i, %.preheader396.lr.ph.i ], [ %i.cux, %._crit_edge983.i ] ; 42 uses
  %.10986.i = phi ptr [ %.5.lcssa.i, %.preheader396.lr.ph.i ], [ %.14.lcssa.i, %._crit_edge983.i ] ; 2 uses
  %.21077985.i = phi i32 [ %.11076.lcssa.i, %.preheader396.lr.ph.i ], [ %i.cuy, %._crit_edge983.i ]
  br i1 %i.sr, label %.lr.ph856.i, label %.preheader395.i

.preheader384.i:                                  ; preds = %._crit_edge983.i, %.preheader397.i
  %.21077.lcssa.i = phi i32 [ %.11076.lcssa.i, %.preheader397.i ], [ %i.cuy, %._crit_edge983.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader397.i ], [ %.14.lcssa.i, %._crit_edge983.i ]
  %.21069.lcssa.i = phi ptr [ %.11068.lcssa.i, %.preheader397.i ], [ %i.cux, %._crit_edge983.i ] ; 2 uses
  %i.ajk = icmp slt i32 %.21077.lcssa.i, %4
  br i1 %i.ajk, label %.preheader383.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader383.lr.ph.i:                            ; preds = %.preheader384.i
  %i.ajl = icmp sgt i32 %6, 7
  %i.ajm = icmp eq i32 %7, 0                      ; 4 uses
  %i.ajn = icmp sgt i32 %8, 3                     ; 4 uses
  %i.ajo = sext i32 %8 to i64                     ; 2 uses
  %i.ajp = add i32 %8, -4                         ; 5 uses
  %i.ajq = and i32 %i.ajp, -4
  %i.ajr = add i32 %i.ajq, 4                      ; 4 uses
  %i.ajs = and i32 %6, -8
  %i.ajt = zext i32 %i.ajp to i64                 ; 3 uses
  %i.aju = lshr i64 %i.ajt, 2                     ; 4 uses
  %i.ajv = shl nuw nsw i64 %i.aju, 4
  %i.ajw = and i64 %i.ajt, 4294967292
  %i.ajx = add nuw nsw i64 %i.ajw, 4              ; 2 uses
  %scevgep1468.i = getelementptr i8, ptr %.21069.lcssa.i, i64 %i.ajx
  %i.ajy = shl nuw nsw i64 %i.aju, 3
  %i.ajz = shl nuw nsw i64 %i.aju, 5
  %i.aka = add i32 %8, -2
  %i.akb = add nuw nsw i64 %i.aju, 1              ; 5 uses
  %i.akc = add i32 %8, -4                         ; 3 uses
  %i.akd = lshr i32 %i.akc, 2
  %i.ake = add nuw nsw i32 %i.akd, 1              ; 4 uses
  %xtraiter1850 = and i32 %i.ake, 3               ; 3 uses
  %i.akf = icmp ult i32 %i.akc, 12
  %unroll_iter1858 = and i32 %i.ake, 2147483644
  %lcmp.mod1854.not = icmp eq i32 %xtraiter1850, 0
  %lcmp.mod1857 = icmp ne i32 %xtraiter1850, 0
  %xtraiter1863 = and i32 %i.ake, 3               ; 3 uses
  %i.akg = icmp ult i32 %i.akc, 12
  %unroll_iter1870 = and i32 %i.ake, 2147483644
  %lcmp.mod1867.not = icmp eq i32 %xtraiter1863, 0
  %lcmp.mod1869 = icmp ne i32 %xtraiter1863, 0
  %min.iters.check1380 = icmp samesign ult i32 %i.ajp, 12
  %min.iters.check1382 = icmp ult i32 %i.ajp, 60
  %i.akh = and i64 %i.akb, 12
  %n.vec1384 = and i64 %i.akb, 2147483632         ; 6 uses
  %i.aki = trunc nuw nsw i64 %n.vec1384 to i32
  %i.akj = shl i32 %i.aki, 2
  %i.akk = shl nuw nsw i64 %n.vec1384, 2
  %i.akl = shl nuw nsw i64 %n.vec1384, 3
  %cmp.n1423 = icmp eq i64 %i.akb, %n.vec1384
  %min.epilog.iters.check1427 = icmp eq i64 %i.akh, 0
  %n.vec1432 = and i64 %i.akb, 2147483644         ; 5 uses
  %i.akm = trunc nuw nsw i64 %n.vec1432 to i32
  %i.akn = shl i32 %i.akm, 2
  %i.ako = shl nuw nsw i64 %n.vec1432, 2
  %i.akp = shl nuw nsw i64 %n.vec1432, 3
  %cmp.n1449 = icmp eq i64 %i.akb, %n.vec1432
  %i.akq = lshr i64 %i.ajt, 2
  %i.akr = add nuw nsw i64 %i.akq, 1              ; 2 uses
  %min.iters.check1231 = icmp samesign ult i32 %i.ajp, 28
  %n.vec1233 = and i64 %i.akr, 2147483640         ; 4 uses
  %i.aks = trunc nuw nsw i64 %n.vec1233 to i32
  %i.akt = shl nuw nsw i32 %i.aks, 2
  %i.aku = shl nuw nsw i64 %n.vec1233, 2          ; 2 uses
  %cmp.n1251 = icmp eq i64 %i.akr, %n.vec1233
  br label %.preheader383.i

.preheader395.i:                                  ; preds = %._crit_edge849.i, %.preheader396.i
  %.01252.lcssa.i = phi i32 [ 0, %.preheader396.i ], [ %i.sz, %._crit_edge849.i ] ; 3 uses
  %.01236.lcssa.i = phi ptr [ %.val8, %.preheader396.i ], [ %.31239.lcssa.i, %._crit_edge849.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.10986.i, %.preheader396.i ], [ %i.api, %._crit_edge849.i ] ; 2 uses
  %i.akv = or disjoint i32 %.01252.lcssa.i, 3
  %i.akw = icmp slt i32 %i.akv, %6
  br i1 %i.akw, label %.lr.ph890.i, label %.preheader394.i

.lr.ph856.i:                                      ; preds = %.preheader396.i, %._crit_edge849.i
  %.11855.i = phi ptr [ %i.api, %._crit_edge849.i ], [ %.10986.i, %.preheader396.i ] ; 5 uses
  %.01236854.i = phi ptr [ %.31239.lcssa.i, %._crit_edge849.i ], [ %.val8, %.preheader396.i ] ; 4 uses
  %.01252853.i = phi i32 [ %i.apj, %._crit_edge849.i ], [ 0, %.preheader396.i ]
  br i1 %i.ss, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph856.i
  %i.akx = load <8 x i32>, ptr %.11855.i, align 1, !tbaa !17
  %i.aky = getelementptr inbounds nuw i8, ptr %.11855.i, i64 32
  %i.akz = load <8 x i32>, ptr %i.aky, align 1, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph856.i
  %i.ala = phi <8 x i32> [ %i.akx, %bb.r ], [ zeroinitializer, %.lr.ph856.i ] ; 3 uses
  %i.alb = phi <8 x i32> [ %i.akz, %bb.r ], [ zeroinitializer, %.lr.ph856.i ] ; 3 uses
  br i1 %i.st, label %.lr.ph830.i.preheader, label %.preheader392.i

.lr.ph830.i.preheader:                            ; preds = %bb.s
  br i1 %i.tm, label %.lr.ph830.i.epil.preheader, label %.lr.ph830.i

.preheader392.i.loopexit.unr-lcssa:               ; preds = %.lr.ph830.i
  br i1 %lcmp.mod1827.not.not, label %.lr.ph830.i.epil.preheader, label %.preheader392.i.loopexit

.lr.ph830.i.epil.preheader:                       ; preds = %.preheader392.i.loopexit.unr-lcssa, %.lr.ph830.i.preheader
  %.11237828.i.epil.init = phi ptr [ %.01236854.i, %.lr.ph830.i.preheader ], [ %i.amm, %.preheader392.i.loopexit.unr-lcssa ]
  %.01262827.i.epil.init = phi ptr [ %.21069987.i, %.lr.ph830.i.preheader ], [ %i.aml, %.preheader392.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init1824 = phi <8 x i32> [ %i.alb, %.lr.ph830.i.preheader ], [ %i.amk, %.preheader392.i.loopexit.unr-lcssa ]
  %.epil.init1826 = phi <8 x i32> [ %i.ala, %.lr.ph830.i.preheader ], [ %i.amj, %.preheader392.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1831)
  %i.alc = load double, ptr %.01262827.i.epil.init, align 1, !tbaa !17
  %i.ald = insertelement <4 x double> poison, double %i.alc, i64 0
  %i.ale = bitcast <4 x double> %i.ald to <4 x i64>
  %i.alf = shufflevector <4 x i64> %i.ale, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alg = bitcast <4 x i64> %i.alf to <32 x i8>  ; 2 uses
  %i.alh = shufflevector <32 x i8> %i.alg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.ali = load <32 x i8>, ptr %.11237828.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.alj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1826, <32 x i8> %i.ali, <32 x i8> %i.alg)
  %i.alk = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %.epil.init1824, <32 x i8> %i.ali, <32 x i8> %i.alh)
  %i.all = getelementptr inbounds nuw i8, ptr %.01262827.i.epil.init, i64 8
  br label %.preheader392.i.loopexit

.preheader392.i.loopexit:                         ; preds = %.preheader392.i.loopexit.unr-lcssa, %.lr.ph830.i.epil.preheader
  %.lcssa1551 = phi <8 x i32> [ %i.amj, %.preheader392.i.loopexit.unr-lcssa ], [ %i.alj, %.lr.ph830.i.epil.preheader ]
  %.lcssa1550 = phi <8 x i32> [ %i.amk, %.preheader392.i.loopexit.unr-lcssa ], [ %i.alk, %.lr.ph830.i.epil.preheader ]
  %.lcssa1549 = phi ptr [ %i.aml, %.preheader392.i.loopexit.unr-lcssa ], [ %i.all, %.lr.ph830.i.epil.preheader ]
  %i.alm = getelementptr i8, ptr %.01236854.i, i64 %i.tg
  %scevgep457 = getelementptr i8, ptr %i.alm, i64 32
  br label %.preheader392.i

.preheader392.i:                                  ; preds = %.preheader392.i.loopexit, %bb.s
  %.lcssa429.i = phi <8 x i32> [ %i.ala, %bb.s ], [ %.lcssa1551, %.preheader392.i.loopexit ] ; 2 uses
  %.lcssa428.i = phi <8 x i32> [ %i.alb, %bb.s ], [ %.lcssa1550, %.preheader392.i.loopexit ] ; 2 uses
  %.01265.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.sy, %.preheader392.i.loopexit ] ; 3 uses
  %.01262.lcssa.i = phi ptr [ %.21069987.i, %bb.s ], [ %.lcssa1549, %.preheader392.i.loopexit ] ; 2 uses
  %.11237.lcssa.i = phi ptr [ %.01236854.i, %bb.s ], [ %scevgep457, %.preheader392.i.loopexit ] ; 2 uses
  %i.aln = or disjoint i32 %.01265.lcssa.i, 1
  %i.alo = icmp slt i32 %i.aln, %8
  br i1 %i.alo, label %.lr.ph839.i, label %.preheader391.i

.lr.ph830.i:                                      ; preds = %.lr.ph830.i.preheader, %.lr.ph830.i
  %.11237828.i = phi ptr [ %i.amm, %.lr.ph830.i ], [ %.01236854.i, %.lr.ph830.i.preheader ] ; 3 uses
  %.01262827.i = phi ptr [ %i.aml, %.lr.ph830.i ], [ %.21069987.i, %.lr.ph830.i.preheader ] ; 3 uses
  %i.alp = phi <8 x i32> [ %i.amk, %.lr.ph830.i ], [ %i.alb, %.lr.ph830.i.preheader ]
  %i.alq = phi <8 x i32> [ %i.amj, %.lr.ph830.i ], [ %i.ala, %.lr.ph830.i.preheader ]
  %niter1833 = phi i32 [ %niter1833.next.1, %.lr.ph830.i ], [ 0, %.lr.ph830.i.preheader ]
  %i.alr = load double, ptr %.01262827.i, align 1, !tbaa !17
  %i.als = insertelement <4 x double> poison, double %i.alr, i64 0
  %i.alt = bitcast <4 x double> %i.als to <4 x i64>
  %i.alu = shufflevector <4 x i64> %i.alt, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.alv = bitcast <4 x i64> %i.alu to <32 x i8>  ; 2 uses
  %i.alw = shufflevector <32 x i8> %i.alv, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.alx = load <32 x i8>, ptr %.11237828.i, align 1, !tbaa !17 ; 2 uses
  %i.aly = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alq, <32 x i8> %i.alx, <32 x i8> %i.alv)
  %i.alz = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alp, <32 x i8> %i.alx, <32 x i8> %i.alw)
  %i.ama = getelementptr inbounds nuw i8, ptr %.01262827.i, i64 8
  %i.amb = getelementptr inbounds nuw i8, ptr %.11237828.i, i64 32
  %i.amc = load double, ptr %i.ama, align 1, !tbaa !17
  %i.amd = insertelement <4 x double> poison, double %i.amc, i64 0
  %i.ame = bitcast <4 x double> %i.amd to <4 x i64>
  %i.amf = shufflevector <4 x i64> %i.ame, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.amg = bitcast <4 x i64> %i.amf to <32 x i8>  ; 2 uses
  %i.amh = shufflevector <32 x i8> %i.amg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.ami = load <32 x i8>, ptr %i.amb, align 1, !tbaa !17 ; 2 uses
  %i.amj = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.aly, <32 x i8> %i.ami, <32 x i8> %i.amg) ; 3 uses
  %i.amk = tail call <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32> %i.alz, <32 x i8> %i.ami, <32 x i8> %i.amh) ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.01262827.i, i64 16 ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.11237828.i, i64 64 ; 2 uses
  %niter1833.next.1 = add i32 %niter1833, 2       ; 2 uses
  %niter1833.ncmp.1.not = icmp eq i32 %niter1833.next.1, %unroll_iter1832
  br i1 %niter1833.ncmp.1.not, label %.preheader392.i.loopexit.unr-lcssa, label %.lr.ph830.i, !llvm.loop !328

.preheader391.i:                                  ; preds = %.lr.ph839.i, %.preheader392.i
  %.lcssa431.i = phi <8 x i32> [ %.lcssa429.i, %.preheader392.i ], [ %i.anq, %.lr.ph839.i ] ; 3 uses
  %.lcssa430.i = phi <8 x i32> [ %.lcssa428.i, %.preheader392.i ], [ %i.ans, %.lr.ph839.i ] ; 3 uses
  %.11266.lcssa.i = phi i32 [ %.01265.lcssa.i, %.preheader392.i ], [ %i.anv, %.lr.ph839.i ] ; 5 uses
  %.11263.lcssa.i = phi ptr [ %.01262.lcssa.i, %.preheader392.i ], [ %i.ant, %.lr.ph839.i ] ; 3 uses
  %.21238.lcssa.i = phi ptr [ %.11237.lcssa.i, %.preheader392.i ], [ %i.anu, %.lr.ph839.i ] ; 4 uses
  %i.amn = icmp slt i32 %.11266.lcssa.i, %8
  br i1 %i.amn, label %.lr.ph848.i.preheader, label %._crit_edge849.i

.lr.ph848.i.preheader:                            ; preds = %.preheader391.i
  %i.amo = sub i32 %8, %.11266.lcssa.i
  %.neg1877 = add i32 %.11266.lcssa.i, 1
  %xtraiter1834 = and i32 %i.amo, 1
  %lcmp.mod1835.not = icmp eq i32 %xtraiter1834, 0
  br i1 %lcmp.mod1835.not, label %.lr.ph848.i.prol.loopexit, label %.lr.ph848.i.prol

.lr.ph848.i.prol:                                 ; preds = %.lr.ph848.i.preheader
  %i.amp = load i16, ptr %.11263.lcssa.i, align 2, !tbaa !382
  %i.amq = insertelement <8 x i16> poison, i16 %i.amp, i64 0
  %i.amr = load <8 x i8>, ptr %.21238.lcssa.i, align 1, !tbaa !17
  %i.ams = bitcast <8 x i16> %i.amq to <16 x i8>
  %i.amt = shufflevector <16 x i8> %i.ams, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amu = sext <8 x i8> %i.amt to <8 x i16>      ; 2 uses
  %i.amv = sext <8 x i8> %i.amr to <8 x i16>      ; 2 uses
  %i.amw = shufflevector <8 x i16> %i.amu, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.amx = mul nsw <8 x i16> %i.amu, %i.amv
  %i.amy = sext <8 x i16> %i.amx to <8 x i32>
  %i.amz = mul nsw <8 x i16> %i.amw, %i.amv
  %i.ana = sext <8 x i16> %i.amz to <8 x i32>
  %i.anb = add <8 x i32> %.lcssa431.i, %i.amy     ; 2 uses
  %i.anc = add <8 x i32> %.lcssa430.i, %i.ana     ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %.11263.lcssa.i, i64 2
  %i.ane = getelementptr inbounds nuw i8, ptr %.21238.lcssa.i, i64 8 ; 2 uses
  %i.anf = add nuw nsw i32 %.11266.lcssa.i, 1
  br label %.lr.ph848.i.prol.loopexit

.lr.ph848.i.prol.loopexit:                        ; preds = %.lr.ph848.i.prol, %.lr.ph848.i.preheader
  %.lcssa1559.unr = phi <8 x i32> [ poison, %.lr.ph848.i.preheader ], [ %i.anb, %.lr.ph848.i.prol ]
  %.lcssa1558.unr = phi <8 x i32> [ poison, %.lr.ph848.i.preheader ], [ %i.anc, %.lr.ph848.i.prol ]
  %.lcssa1557.unr = phi ptr [ poison, %.lr.ph848.i.preheader ], [ %i.ane, %.lr.ph848.i.prol ]
  %.31239847.i.unr = phi ptr [ %.21238.lcssa.i, %.lr.ph848.i.preheader ], [ %i.ane, %.lr.ph848.i.prol ]
  %.21264846.i.unr = phi ptr [ %.11263.lcssa.i, %.lr.ph848.i.preheader ], [ %i.and, %.lr.ph848.i.prol ]
  %.21267845.i.unr = phi i32 [ %.11266.lcssa.i, %.lr.ph848.i.preheader ], [ %i.anf, %.lr.ph848.i.prol ]
  %.unr1836 = phi <8 x i32> [ %.lcssa430.i, %.lr.ph848.i.preheader ], [ %i.anc, %.lr.ph848.i.prol ]
  %.unr1837 = phi <8 x i32> [ %.lcssa431.i, %.lr.ph848.i.preheader ], [ %i.anb, %.lr.ph848.i.prol ]
  %i.ang = icmp eq i32 %8, %.neg1877
  br i1 %i.ang, label %._crit_edge849.i, label %.lr.ph848.i

.lr.ph839.i:                                      ; preds = %.preheader392.i, %.lr.ph839.i
  %.21238838.i = phi ptr [ %i.anu, %.lr.ph839.i ], [ %.11237.lcssa.i, %.preheader392.i ] ; 2 uses
  %.11263837.i = phi ptr [ %i.ant, %.lr.ph839.i ], [ %.01262.lcssa.i, %.preheader392.i ] ; 2 uses
  %.11266836.i = phi i32 [ %i.anv, %.lr.ph839.i ], [ %.01265.lcssa.i, %.preheader392.i ]
  %i.anh = phi <8 x i32> [ %i.ans, %.lr.ph839.i ], [ %.lcssa428.i, %.preheader392.i ]
  %i.ani = phi <8 x i32> [ %i.anq, %.lr.ph839.i ], [ %.lcssa429.i, %.preheader392.i ]
  %i.anj = load float, ptr %.11263837.i, align 1, !tbaa !17
  %i.ank = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anl = load <16 x i8>, ptr %.21238838.i, align 1, !tbaa !17
  %i.anm = bitcast <4 x float> %i.ank to <16 x i8>
  %i.ann = shufflevector <16 x i8> %i.anm, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ano = sext <16 x i8> %i.ann to <16 x i16>    ; 2 uses
  %i.anp = sext <16 x i8> %i.anl to <16 x i16>    ; 2 uses
  %i.anq = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ani, <16 x i16> %i.ano, <16 x i16> %i.anp) ; 2 uses
  %i.anr = shufflevector <16 x i16> %i.ano, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.ans = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.anh, <16 x i16> %i.anr, <16 x i16> %i.anp) ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.11263837.i, i64 4 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.21238838.i, i64 16 ; 2 uses
  %i.anv = add nuw nsw i32 %.11266836.i, 2        ; 3 uses
  %i.anw = or disjoint i32 %i.anv, 1
  %i.anx = icmp slt i32 %i.anw, %8
  br i1 %i.anx, label %.lr.ph839.i, label %.preheader391.i, !llvm.loop !329

.lr.ph848.i:                                      ; preds = %.lr.ph848.i.prol.loopexit, %.lr.ph848.i
  %.31239847.i = phi ptr [ %i.apf, %.lr.ph848.i ], [ %.31239847.i.unr, %.lr.ph848.i.prol.loopexit ] ; 3 uses
  %.21264846.i = phi ptr [ %i.ape, %.lr.ph848.i ], [ %.21264846.i.unr, %.lr.ph848.i.prol.loopexit ] ; 3 uses
  %.21267845.i = phi i32 [ %i.apg, %.lr.ph848.i ], [ %.21267845.i.unr, %.lr.ph848.i.prol.loopexit ]
  %i.any = phi <8 x i32> [ %i.apd, %.lr.ph848.i ], [ %.unr1836, %.lr.ph848.i.prol.loopexit ]
  %i.anz = phi <8 x i32> [ %i.apc, %.lr.ph848.i ], [ %.unr1837, %.lr.ph848.i.prol.loopexit ]
  %i.aoa = load i16, ptr %.21264846.i, align 2, !tbaa !382
  %i.aob = insertelement <8 x i16> poison, i16 %i.aoa, i64 0
  %i.aoc = load <8 x i8>, ptr %.31239847.i, align 1, !tbaa !17
  %i.aod = bitcast <8 x i16> %i.aob to <16 x i8>
  %i.aoe = shufflevector <16 x i8> %i.aod, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aof = sext <8 x i8> %i.aoe to <8 x i16>      ; 2 uses
  %i.aog = sext <8 x i8> %i.aoc to <8 x i16>      ; 2 uses
  %i.aoh = shufflevector <8 x i16> %i.aof, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aoi = mul nsw <8 x i16> %i.aof, %i.aog
  %i.aoj = sext <8 x i16> %i.aoi to <8 x i32>
  %i.aok = mul nsw <8 x i16> %i.aoh, %i.aog
  %i.aol = sext <8 x i16> %i.aok to <8 x i32>
  %i.aom = add <8 x i32> %i.anz, %i.aoj
  %i.aon = add <8 x i32> %i.any, %i.aol
  %i.aoo = getelementptr inbounds nuw i8, ptr %.21264846.i, i64 2
  %i.aop = getelementptr inbounds nuw i8, ptr %.31239847.i, i64 8
  %i.aoq = load i16, ptr %i.aoo, align 2, !tbaa !382
  %i.aor = insertelement <8 x i16> poison, i16 %i.aoq, i64 0
  %i.aos = load <8 x i8>, ptr %i.aop, align 1, !tbaa !17
  %i.aot = bitcast <8 x i16> %i.aor to <16 x i8>
end_hunk_3
begin_hunk_4_@_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii:bb.a

vector.main.loop.iter.check1182:                  ; preds = %iter.check1208
  %min.iters.check1183 = icmp ult i32 %i.eik, 31
  br i1 %min.iters.check1183, label %vec.epilog.ph1212, label %vector.ph1184

vector.ph1184:                                    ; preds = %vector.main.loop.iter.check1182
  %i.ein = and i64 %i.eim, 28
  %n.vec1185 = and i64 %i.eim, 8589934560         ; 6 uses
  %i.eio = trunc i64 %n.vec1185 to i32
  %i.eip = add i32 %.01037.lcssa.i, %i.eio
  %i.eiq = getelementptr i8, ptr %.01038.lcssa.i, i64 %n.vec1185
  %i.eir = getelementptr i8, ptr %.141169.lcssa.i, i64 %n.vec1185 ; 2 uses
  %i.eis = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.11042.lcssa.i, i64 0
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.ph1184, %vector.body1186
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1202, %vector.body1186 ] ; 3 uses
  %vec.phi1188 = phi <8 x i32> [ %i.eis, %vector.ph1184 ], [ %i.ejl, %vector.body1186 ]
  %vec.phi1189 = phi <8 x i32> [ zeroinitializer, %vector.ph1184 ], [ %i.ejm, %vector.body1186 ]
  %vec.phi1190 = phi <8 x i32> [ zeroinitializer, %vector.ph1184 ], [ %i.ejn, %vector.body1186 ]
  %vec.phi1191 = phi <8 x i32> [ zeroinitializer, %vector.ph1184 ], [ %i.ejo, %vector.body1186 ]
  %next.gep1192 = getelementptr i8, ptr %.01038.lcssa.i, i64 %index1187 ; 4 uses
  %next.gep1193 = getelementptr i8, ptr %.141169.lcssa.i, i64 %index1187 ; 4 uses
  %i.eit = getelementptr i8, ptr %next.gep1192, i64 8
  %i.eiu = getelementptr i8, ptr %next.gep1192, i64 16
  %i.eiv = getelementptr i8, ptr %next.gep1192, i64 24
  %wide.load1194 = load <8 x i8>, ptr %next.gep1192, align 1, !tbaa !17
  %wide.load1195 = load <8 x i8>, ptr %i.eit, align 1, !tbaa !17
  %wide.load1196 = load <8 x i8>, ptr %i.eiu, align 1, !tbaa !17
  %wide.load1197 = load <8 x i8>, ptr %i.eiv, align 1, !tbaa !17
  %i.eiw = sext <8 x i8> %wide.load1194 to <8 x i32>
  %i.eix = sext <8 x i8> %wide.load1195 to <8 x i32>
  %i.eiy = sext <8 x i8> %wide.load1196 to <8 x i32>
  %i.eiz = sext <8 x i8> %wide.load1197 to <8 x i32>
  %i.eja = getelementptr i8, ptr %next.gep1193, i64 8
  %i.ejb = getelementptr i8, ptr %next.gep1193, i64 16
  %i.ejc = getelementptr i8, ptr %next.gep1193, i64 24
  %wide.load1198 = load <8 x i8>, ptr %next.gep1193, align 1, !tbaa !17
  %wide.load1199 = load <8 x i8>, ptr %i.eja, align 1, !tbaa !17
  %wide.load1200 = load <8 x i8>, ptr %i.ejb, align 1, !tbaa !17
  %wide.load1201 = load <8 x i8>, ptr %i.ejc, align 1, !tbaa !17
  %i.ejd = sext <8 x i8> %wide.load1198 to <8 x i32>
  %i.eje = sext <8 x i8> %wide.load1199 to <8 x i32>
  %i.ejf = sext <8 x i8> %wide.load1200 to <8 x i32>
  %i.ejg = sext <8 x i8> %wide.load1201 to <8 x i32>
  %i.ejh = mul nsw <8 x i32> %i.ejd, %i.eiw
  %i.eji = mul nsw <8 x i32> %i.eje, %i.eix
  %i.ejj = mul nsw <8 x i32> %i.ejf, %i.eiy
  %i.ejk = mul nsw <8 x i32> %i.ejg, %i.eiz
  %i.ejl = add <8 x i32> %i.ejh, %vec.phi1188     ; 2 uses
  %i.ejm = add <8 x i32> %i.eji, %vec.phi1189     ; 2 uses
  %i.ejn = add <8 x i32> %i.ejj, %vec.phi1190     ; 2 uses
  %i.ejo = add <8 x i32> %i.ejk, %vec.phi1191     ; 2 uses
  %index.next1202 = add nuw i64 %index1187, 32    ; 2 uses
  %i.ejp = icmp eq i64 %index.next1202, %n.vec1185
  br i1 %i.ejp, label %middle.block1203, label %vector.body1186, !llvm.loop !375

middle.block1203:                                 ; preds = %vector.body1186
  %bin.rdx1204 = add <8 x i32> %i.ejm, %i.ejl
  %bin.rdx1205 = add <8 x i32> %i.ejn, %bin.rdx1204
  %bin.rdx1206 = add <8 x i32> %i.ejo, %bin.rdx1205
  %i.ejq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1206) ; 3 uses
  %cmp.n1207 = icmp eq i64 %i.eim, %n.vec1185
  br i1 %cmp.n1207, label %._crit_edge1154.i, label %vec.epilog.iter.check1209

vec.epilog.iter.check1209:                        ; preds = %middle.block1203
  %min.epilog.iters.check1211 = icmp eq i64 %i.ein, 0
  br i1 %min.epilog.iters.check1211, label %.lr.ph1153.i.preheader, label %vec.epilog.ph1212, !prof !31

vec.epilog.ph1212:                                ; preds = %vector.main.loop.iter.check1182, %vec.epilog.iter.check1209
  %vec.epilog.resume.val1213 = phi i64 [ %n.vec1185, %vec.epilog.iter.check1209 ], [ 0, %vector.main.loop.iter.check1182 ]
  %bc.merge.rdx1214 = phi i32 [ %i.ejq, %vec.epilog.iter.check1209 ], [ %.11042.lcssa.i, %vector.main.loop.iter.check1182 ]
  %n.vec1215 = and i64 %i.eim, 8589934588         ; 5 uses
  %i.ejr = trunc i64 %n.vec1215 to i32
  %i.ejs = add i32 %.01037.lcssa.i, %i.ejr
  %i.ejt = getelementptr i8, ptr %.01038.lcssa.i, i64 %n.vec1215
  %i.eju = getelementptr i8, ptr %.141169.lcssa.i, i64 %n.vec1215 ; 2 uses
  %i.ejv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1214, i64 0
  br label %vec.epilog.vector.body1216

vec.epilog.vector.body1216:                       ; preds = %vec.epilog.vector.body1216, %vec.epilog.ph1212
  %index1217 = phi i64 [ %vec.epilog.resume.val1213, %vec.epilog.ph1212 ], [ %index.next1223, %vec.epilog.vector.body1216 ] ; 3 uses
  %vec.phi1218 = phi <4 x i32> [ %i.ejv, %vec.epilog.ph1212 ], [ %i.ejz, %vec.epilog.vector.body1216 ]
  %next.gep1219 = getelementptr i8, ptr %.01038.lcssa.i, i64 %index1217
  %next.gep1220 = getelementptr i8, ptr %.141169.lcssa.i, i64 %index1217
  %wide.load1221 = load <4 x i8>, ptr %next.gep1219, align 1, !tbaa !17
  %i.ejw = sext <4 x i8> %wide.load1221 to <4 x i32>
  %wide.load1222 = load <4 x i8>, ptr %next.gep1220, align 1, !tbaa !17
  %i.ejx = sext <4 x i8> %wide.load1222 to <4 x i32>
  %i.ejy = mul nsw <4 x i32> %i.ejx, %i.ejw
  %i.ejz = add <4 x i32> %i.ejy, %vec.phi1218     ; 2 uses
  %index.next1223 = add nuw i64 %index1217, 4     ; 2 uses
  %i.eka = icmp eq i64 %index.next1223, %n.vec1215
  br i1 %i.eka, label %vec.epilog.middle.block1224, label %vec.epilog.vector.body1216, !llvm.loop !376

vec.epilog.middle.block1224:                      ; preds = %vec.epilog.vector.body1216
  %i.ekb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ejz) ; 2 uses
  %cmp.n1225 = icmp eq i64 %i.eim, %n.vec1215
  br i1 %cmp.n1225, label %._crit_edge1154.i, label %.lr.ph1153.i.preheader

.lr.ph1153.i.preheader:                           ; preds = %iter.check1208, %vec.epilog.iter.check1209, %vec.epilog.middle.block1224
  %.21151.i.ph = phi i32 [ %.01037.lcssa.i, %iter.check1208 ], [ %i.eip, %vec.epilog.iter.check1209 ], [ %i.ejs, %vec.epilog.middle.block1224 ]
  %.210401150.i.ph = phi ptr [ %.01038.lcssa.i, %iter.check1208 ], [ %i.eiq, %vec.epilog.iter.check1209 ], [ %i.ejt, %vec.epilog.middle.block1224 ]
  %.210431149.i.ph = phi i32 [ %.11042.lcssa.i, %iter.check1208 ], [ %i.ejq, %vec.epilog.iter.check1209 ], [ %i.ekb, %vec.epilog.middle.block1224 ]
  %.1611711148.i.ph = phi ptr [ %.141169.lcssa.i, %iter.check1208 ], [ %i.eir, %vec.epilog.iter.check1209 ], [ %i.eju, %vec.epilog.middle.block1224 ]
  br label %.lr.ph1153.i

.lr.ph1127.i:                                     ; preds = %.lr.ph1127.i.preheader1491, %.lr.ph1127.i
  %.010371125.i = phi i32 [ %i.ekj, %.lr.ph1127.i ], [ %.010371125.i.ph, %.lr.ph1127.i.preheader1491 ]
  %.010381124.i = phi ptr [ %i.ekh, %.lr.ph1127.i ], [ %.010381124.i.ph, %.lr.ph1127.i.preheader1491 ] ; 2 uses
  %slprdx.acc = phi <4 x i32> [ %slprdx.acc1458, %.lr.ph1127.i ], [ %slprdx.acc.ph, %.lr.ph1127.i.preheader1491 ]
  %.1411691122.i = phi ptr [ %i.eki, %.lr.ph1127.i ], [ %.1411691122.i.ph, %.lr.ph1127.i.preheader1491 ] ; 2 uses
  %i.ekc = load <4 x i8>, ptr %.010381124.i, align 1, !tbaa !17
  %i.ekd = sext <4 x i8> %i.ekc to <4 x i32>
  %i.eke = load <4 x i8>, ptr %.1411691122.i, align 1, !tbaa !17
  %i.ekf = sext <4 x i8> %i.eke to <4 x i32>
  %i.ekg = mul nsw <4 x i32> %i.ekf, %i.ekd
  %slprdx.acc1458 = add <4 x i32> %slprdx.acc, %i.ekg ; 2 uses
  %i.ekh = getelementptr inbounds nuw i8, ptr %.010381124.i, i64 4
  %i.eki = getelementptr inbounds nuw i8, ptr %.1411691122.i, i64 4
  %i.ekj = add nuw nsw i32 %.010371125.i, 4       ; 2 uses
  %i.ekk = or disjoint i32 %i.ekj, 3
  %i.ekl = icmp slt i32 %i.ekk, %8
  br i1 %i.ekl, label %.lr.ph1127.i, label %.preheader.loopexit.i.loopexit, !llvm.loop !377

.lr.ph1153.i:                                     ; preds = %.lr.ph1153.i.preheader, %.lr.ph1153.i
  %.21151.i = phi i32 [ %i.eku, %.lr.ph1153.i ], [ %.21151.i.ph, %.lr.ph1153.i.preheader ]
  %.210401150.i = phi ptr [ %i.eks, %.lr.ph1153.i ], [ %.210401150.i.ph, %.lr.ph1153.i.preheader ] ; 2 uses
  %.210431149.i = phi i32 [ %i.ekr, %.lr.ph1153.i ], [ %.210431149.i.ph, %.lr.ph1153.i.preheader ]
  %.1611711148.i = phi ptr [ %i.ekt, %.lr.ph1153.i ], [ %.1611711148.i.ph, %.lr.ph1153.i.preheader ] ; 2 uses
  %i.ekm = load i8, ptr %.210401150.i, align 1, !tbaa !17
  %i.ekn = sext i8 %i.ekm to i32
  %i.eko = load i8, ptr %.1611711148.i, align 1, !tbaa !17
  %i.ekp = sext i8 %i.eko to i32
  %i.ekq = mul nsw i32 %i.ekp, %i.ekn
  %i.ekr = add nsw i32 %i.ekq, %.210431149.i      ; 2 uses
  %i.eks = getelementptr inbounds nuw i8, ptr %.210401150.i, i64 1
  %i.ekt = getelementptr inbounds nuw i8, ptr %.1611711148.i, i64 1 ; 2 uses
  %i.eku = add nuw nsw i32 %.21151.i, 1           ; 2 uses
  %exitcond1474.not.i = icmp eq i32 %i.eku, %8
  br i1 %exitcond1474.not.i, label %._crit_edge1154.i, label %.lr.ph1153.i, !llvm.loop !378

._crit_edge1154.i:                                ; preds = %.lr.ph1153.i, %middle.block1203, %vec.epilog.middle.block1224, %.preheader.i
  %.161171.lcssa.i = phi ptr [ %.141169.lcssa.i, %.preheader.i ], [ %i.eju, %vec.epilog.middle.block1224 ], [ %i.eir, %middle.block1203 ], [ %i.ekt, %.lr.ph1153.i ]
  %.21043.lcssa.i = phi i32 [ %.11042.lcssa.i, %.preheader.i ], [ %i.ekb, %vec.epilog.middle.block1224 ], [ %i.ejq, %middle.block1203 ], [ %i.ekr, %.lr.ph1153.i ]
  store i32 %.21043.lcssa.i, ptr %.191162.i, align 4, !tbaa !28
  %i.ekv = getelementptr inbounds nuw i8, ptr %.191162.i, i64 4 ; 2 uses
  %i.ekw = add nuw nsw i32 %.311541161.i, 1       ; 2 uses
  %exitcond1475.not.i = icmp eq i32 %i.ekw, %6
  br i1 %exitcond1475.not.i, label %._crit_edge1164.i, label %.lr.ph1163.i, !llvm.loop !379

._crit_edge1164.i:                                ; preds = %._crit_edge1154.i, %.preheader380.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader380.i ], [ %i.ekv, %._crit_edge1154.i ]
  %i.ekx = getelementptr inbounds i8, ptr %.310701168.i, i64 %i.ajo
  %i.eky = add nuw nsw i32 %.310781166.i, 1       ; 2 uses
  %scevgep1470.i = getelementptr i8, ptr %indvars.iv1469.i, i64 %i.ajo
  %exitcond1476.not.i = icmp eq i32 %i.eky, %4
  br i1 %exitcond1476.not.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader383.i, !llvm.loop !380

_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge1164.i, %.preheader384.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.vpdpbssd.256(<8 x i32>, <32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx2.vpdpbssd.128(<4 x i32>, <16 x i8>, <16 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32>, <16 x i16>, <16 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32>, <8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+avxvnniint8,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+avxvnniint8,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 12}
!23 = !{!"branch_weights", i32 8, i32 120}
!24 = !{!"branch_weights", i32 8, i32 24}
!25 = !{!13, !6, i64 24}
!26 = !{!13, !6, i64 40}
!27 = !{!11, !11, i64 0}
!28 = !{!6, !6, i64 0}
!29 = !{!"float", !5, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"branch_weights", i32 4, i32 28}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !19, !20, !21}
!48 = distinct !{!48, !19, !20, !21}
!49 = distinct !{!49, !19, !20}
!50 = distinct !{!50, !19, !20}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19, !20, !21}
!53 = distinct !{!53, !19, !20, !21}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !19, !20, !21}
!59 = distinct !{!59, !19, !20, !21}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, i1 false, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = distinct !{!65, !19, !20, !21}
!66 = distinct !{!66, !19, !20, !21}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !19, !20}
!69 = distinct !{!69, !19, !20}
!70 = distinct !{!70, !19}
!71 = !{!45}
!72 = !{!46}
!73 = !{!55}
!74 = !{!56}
!75 = !{!57}
!76 = !{!56, !55}
!77 = !{!62}
!78 = !{!63}
!79 = !{!64}
!80 = !{!63, !62}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !18}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !19, !20, !21}
!115 = distinct !{!115, !19, !20, !21}
!116 = distinct !{!116, !19, !20}
!117 = distinct !{!117, !19, !20}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19, !20, !21}
!120 = distinct !{!120, !19, !20, !21}
!121 = distinct !{!121, i1 false, !"LVerDomain"}
!122 = distinct !{!122, !121}
!123 = distinct !{!123, !121}
!124 = distinct !{!124, !121}
!125 = distinct !{!125, !19, !20, !21}
!126 = distinct !{!126, !19, !20, !21}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, i1 false, !"LVerDomain"}
!129 = distinct !{!129, !128}
!130 = distinct !{!130, !128}
!131 = distinct !{!131, !128}
!132 = distinct !{!132, !19, !20, !21}
!133 = distinct !{!133, !19, !20, !21}
!134 = distinct !{!134, !18}
!135 = distinct !{!135, !19, !20}
!136 = distinct !{!136, !19, !20}
!137 = distinct !{!137, !19}
!138 = !{!112}
!139 = !{!113}
!140 = !{!122}
!141 = !{!123}
!142 = !{!124}
!143 = !{!123, !122}
!144 = !{!129}
!145 = !{!130}
!146 = !{!131}
!147 = !{!130, !129}
!148 = distinct !{!148, !19}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !19}
!151 = distinct !{!151, !19}
!152 = distinct !{!152, !19}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !19}
!155 = distinct !{!155, !19}
!156 = distinct !{!156, !19}
end_hunk_4
