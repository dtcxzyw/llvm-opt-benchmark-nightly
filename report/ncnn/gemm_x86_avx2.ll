Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn21pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  %invariant.op263.i = add nsw i64 %i.ej, -1
  %i.el = add i32 %5, -2
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = and i64 %i.en, 8589934588
  %i.ep = and i64 %i.em, 4294967294
  %i.eq = add i32 %5, -2                          ; 3 uses
  %i.er = lshr i32 %i.eq, 1
  %narrow = add nuw i32 %i.er, 1
  %i.es = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check93 = icmp ult i32 %i.eq, 14
  %min.iters.check95 = icmp ult i32 %i.eq, 62
  %i.et = and i64 %i.es, 24
  %n.vec97 = and i64 %i.es, 4294967264            ; 6 uses
  %i.eu = trunc nuw i64 %n.vec97 to i32
  %i.ev = shl i32 %i.eu, 1
  %i.ew = shl nuw nsw i64 %n.vec97, 1             ; 2 uses
  %i.ex = shl nuw nsw i64 %n.vec97, 2
  %cmp.n110 = icmp eq i64 %n.vec97, %i.es
  %min.epilog.iters.check118 = icmp eq i64 %i.et, 0
  %n.vec120 = and i64 %i.es, 4294967288           ; 5 uses
  %i.ey = trunc nuw i64 %n.vec120 to i32
  %i.ez = shl i32 %i.ey, 1
  %i.fa = shl nuw nsw i64 %n.vec120, 1            ; 2 uses
  %i.fb = shl nuw nsw i64 %n.vec120, 2
  %cmp.n135 = icmp eq i64 %n.vec120, %i.es
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge180.i, %.lr.ph184.i
  %indvars.iv237.i = phi i64 [ %i.x, %.lr.ph184.i ], [ %indvars.iv.next238.i, %._crit_edge180.i ] ; 2 uses
  %.3183.i = phi ptr [ %.0121.lcssa.i, %.lr.ph184.i ], [ %.5.lcssa.i, %._crit_edge180.i ] ; 3 uses
  %i.fc = add nsw i64 %indvars.iv237.i, %i.z
  %i.fd = load ptr, ptr %0, align 8, !tbaa !14
  %i.fe = load i32, ptr %i.s, align 4, !tbaa !15  ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.fc, %i.ff
  %i.fh = load i64, ptr %i.t, align 8, !tbaa !16
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.u ; 3 uses
  %i.fl = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fn = mul <4 x i32> %i.fm, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  br i1 %i.v, label %.lr.ph172.i.preheader, label %.preheader149.i

.lr.ph172.i.preheader:                            ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph172.i.epil.preheader, label %.lr.ph172.i

.preheader149.i.loopexit.unr-lcssa:               ; preds = %.lr.ph172.i
  br i1 %lcmp.mod196.not, label %.preheader149.i, label %.lr.ph172.i.epil.preheader

.lr.ph172.i.epil.preheader:                       ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.preheader
  %.4170.i.epil.init = phi ptr [ %.3183.i, %.lr.ph172.i.preheader ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ]
  %.0129168.i.epil.init = phi ptr [ %i.fk, %.lr.ph172.i.preheader ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph172.i.epil

.lr.ph172.i.epil:                                 ; preds = %.lr.ph172.i.epil, %.lr.ph172.i.epil.preheader
  %.4170.i.epil = phi ptr [ %i.ft, %.lr.ph172.i.epil ], [ %.4170.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %.0129168.i.epil = phi ptr [ %i.fu, %.lr.ph172.i.epil ], [ %.0129168.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %epil.iter195 = phi i32 [ %epil.iter195.next, %.lr.ph172.i.epil ], [ 0, %.lr.ph172.i.epil.preheader ]
  %i.fo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i.epil, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fp = bitcast <4 x i32> %i.fo to <16 x i8>
  %i.fq = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = bitcast <16 x i8> %i.fq to <2 x i64>
  %i.fs = extractelement <2 x i64> %i.fr, i64 0
  store i64 %i.fs, ptr %.4170.i.epil, align 1, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %.4170.i.epil, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0129168.i.epil, i64 2 ; 2 uses
  %epil.iter195.next = add i32 %epil.iter195, 1   ; 2 uses
  %epil.iter195.cmp.not = icmp eq i32 %epil.iter195.next, %xtraiter194
  br i1 %epil.iter195.cmp.not, label %.preheader149.i, label %.lr.ph172.i.epil, !llvm.loop !37

.preheader149.i:                                  ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.epil, %bb.g
  %.0129.lcssa.i = phi ptr [ %i.fk, %bb.g ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph172.i.epil ] ; 2 uses
  %.0127.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.w, %.lr.ph172.i.epil ], [ %i.w, %.preheader149.i.loopexit.unr-lcssa ] ; 5 uses
  %.4.lcssa.i = phi ptr [ %.3183.i, %bb.g ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph172.i.epil ] ; 3 uses
  %i.fv = icmp slt i32 %.0127.lcssa.i, %5
  br i1 %i.fv, label %.lr.ph179.i.preheader, label %._crit_edge180.i

.lr.ph179.i.preheader:                            ; preds = %.preheader149.i
  %i.fw = sub i32 %5, %.0127.lcssa.i
  %xtraiter202 = and i32 %i.fw, 3                 ; 2 uses
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol

.lr.ph179.i.prol:                                 ; preds = %.lr.ph179.i.preheader, %.lr.ph179.i.prol
  %.5178.i.prol = phi ptr [ %i.gc, %.lr.ph179.i.prol ], [ %.4.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %.1128177.i.prol = phi i32 [ %i.ge, %.lr.ph179.i.prol ], [ %.0127.lcssa.i, %.lr.ph179.i.preheader ]
  %.1130176.i.prol = phi ptr [ %i.gd, %.lr.ph179.i.prol ], [ %.0129.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %prol.iter204 = phi i32 [ %prol.iter204.next, %.lr.ph179.i.prol ], [ 0, %.lr.ph179.i.preheader ]
  %i.fx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i.prol, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fy = bitcast <4 x i32> %i.fx to <16 x i8>
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = bitcast <16 x i8> %i.fz to <4 x float>
  %i.gb = extractelement <4 x float> %i.ga, i64 0
  store float %i.gb, ptr %.5178.i.prol, align 1, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %.5178.i.prol, i64 4 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1130176.i.prol, i64 1 ; 2 uses
  %i.ge = add nuw nsw i32 %.1128177.i.prol, 1     ; 2 uses
  %prol.iter204.next = add i32 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i32 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol, !llvm.loop !38

.lr.ph179.i.prol.loopexit:                        ; preds = %.lr.ph179.i.prol, %.lr.ph179.i.preheader
  %.lcssa185.unr = phi ptr [ poison, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.5178.i.unr = phi ptr [ %.4.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.1128177.i.unr = phi i32 [ %.0127.lcssa.i, %.lr.ph179.i.preheader ], [ %i.ge, %.lr.ph179.i.prol ]
  %.1130176.i.unr = phi ptr [ %.0129.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gd, %.lr.ph179.i.prol ]
  %i.gf = sub i32 %.0127.lcssa.i, %5
  %i.gg = icmp ugt i32 %i.gf, -4
  br i1 %i.gg, label %._crit_edge180.i, label %.lr.ph179.i

.lr.ph172.i:                                      ; preds = %.lr.ph172.i.preheader, %.lr.ph172.i
  %.4170.i = phi ptr [ %i.hh, %.lr.ph172.i ], [ %.3183.i, %.lr.ph172.i.preheader ] ; 5 uses
  %.0129168.i = phi ptr [ %i.hi, %.lr.ph172.i ], [ %i.fk, %.lr.ph172.i.preheader ] ; 5 uses
  %niter201 = phi i32 [ %niter201.next.3, %.lr.ph172.i ], [ 0, %.lr.ph172.i.preheader ]
  %i.gh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gi = bitcast <4 x i32> %i.gh to <16 x i8>
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = bitcast <16 x i8> %i.gj to <2 x i64>
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  store i64 %i.gl, ptr %.4170.i, align 1, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %.4170.i, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 2
  %i.go = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gn, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gp = bitcast <4 x i32> %i.go to <16 x i8>
  %i.gq = shufflevector <16 x i8> %i.gp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gr = bitcast <16 x i8> %i.gq to <2 x i64>
  %i.gs = extractelement <2 x i64> %i.gr, i64 0
  store i64 %i.gs, ptr %i.gm, align 1, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %.4170.i, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 4
  %i.gv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gu, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gw = bitcast <4 x i32> %i.gv to <16 x i8>
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gy = bitcast <16 x i8> %i.gx to <2 x i64>
  %i.gz = extractelement <2 x i64> %i.gy, i64 0
  store i64 %i.gz, ptr %i.gt, align 1, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %.4170.i, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 6
  %i.hc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hb, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hd = bitcast <4 x i32> %i.hc to <16 x i8>
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = bitcast <16 x i8> %i.he to <2 x i64>
  %i.hg = extractelement <2 x i64> %i.hf, i64 0
  store i64 %i.hg, ptr %i.ha, align 1, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %.4170.i, i64 32 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 8 ; 3 uses
  %niter201.next.3 = add i32 %niter201, 4         ; 2 uses
  %niter201.ncmp.3.not = icmp eq i32 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3.not, label %.preheader149.i.loopexit.unr-lcssa, label %.lr.ph172.i, !llvm.loop !39

.lr.ph179.i:                                      ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i
  %.5178.i = phi ptr [ %i.ij, %.lr.ph179.i ], [ %.5178.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %.1128177.i = phi i32 [ %i.il, %.lr.ph179.i ], [ %.1128177.i.unr, %.lr.ph179.i.prol.loopexit ]
  %.1130176.i = phi ptr [ %i.ik, %.lr.ph179.i ], [ %.1130176.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %i.hj = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hk = bitcast <4 x i32> %i.hj to <16 x i8>
  %i.hl = shufflevector <16 x i8> %i.hk, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = bitcast <16 x i8> %i.hl to <4 x float>
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  store float %i.hn, ptr %.5178.i, align 1, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.5178.i, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 1
  %i.hq = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hp, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hr = bitcast <4 x i32> %i.hq to <16 x i8>
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = bitcast <16 x i8> %i.hs to <4 x float>
  %i.hu = extractelement <4 x float> %i.ht, i64 0
  store float %i.hu, ptr %i.ho, align 1, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %.5178.i, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 2
  %i.hx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hw, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hy = bitcast <4 x i32> %i.hx to <16 x i8>
  %i.hz = shufflevector <16 x i8> %i.hy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = bitcast <16 x i8> %i.hz to <4 x float>
  %i.ib = extractelement <4 x float> %i.ia, i64 0
  store float %i.ib, ptr %i.hv, align 1, !tbaa !17
  %i.ic = getelementptr inbounds nuw i8, ptr %.5178.i, i64 12
  %i.id = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 3
  %i.ie = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.id, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.if = bitcast <4 x i32> %i.ie to <16 x i8>
  %i.ig = shufflevector <16 x i8> %i.if, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ih = bitcast <16 x i8> %i.ig to <4 x float>
  %i.ii = extractelement <4 x float> %i.ih, i64 0
  store float %i.ii, ptr %i.ic, align 1, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.5178.i, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 4
  %i.il = add nuw nsw i32 %.1128177.i, 4          ; 2 uses
  %exitcond236.not.i.3 = icmp eq i32 %i.il, %5
  br i1 %exitcond236.not.i.3, label %._crit_edge180.i, label %.lr.ph179.i, !llvm.loop !40

._crit_edge180.i:                                 ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i, %.preheader149.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader149.i ], [ %.lcssa185.unr, %.lr.ph179.i.prol.loopexit ], [ %i.ij, %.lr.ph179.i ] ; 2 uses
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 4 ; 3 uses
  %i.im = icmp slt i64 %indvars.iv.next238.i, %invariant.op.i
  br i1 %i.im, label %bb.g, label %.preheader148.loopexit.i, !llvm.loop !41

.preheader.loopexit.i:                            ; preds = %._crit_edge202.i
  %i.in = trunc nuw nsw i64 %indvars.iv.next242.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader148.i
  %.2125.lcssa.i = phi i32 [ %.1124.lcssa.i, %.preheader148.i ], [ %i.in, %.preheader.loopexit.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader148.i ], [ %.8.lcssa.i, %.preheader.loopexit.i ]
  %i.io = icmp slt i32 %.2125.lcssa.i, %3
  br i1 %i.io, label %.lr.ph218.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph218.i:                                      ; preds = %.preheader.i
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ir = sext i32 %4 to i64                      ; 2 uses
  %i.is = icmp sgt i32 %5, 0
  br i1 %i.is, label %.lr.ph213.preheader.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph213.preheader.i:                            ; preds = %.lr.ph218.i
  %i.it = sext i32 %.2125.lcssa.i to i64
  %i.iu = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.iv = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check142 = icmp ult i32 %5, 8
  %min.iters.check144 = icmp ult i32 %5, 128
  %i.iw = and i64 %i.iv, 120
  %n.vec146 = and i64 %i.iv, 2147483520           ; 6 uses
  %i.ix = trunc nuw nsw i64 %n.vec146 to i32
  %cmp.n157 = icmp eq i64 %n.vec146, %i.iv
  %min.epilog.iters.check164 = icmp eq i64 %i.iw, 0
  %n.vec166 = and i64 %i.iv, 2147483640           ; 5 uses
  %i.iy = trunc nuw nsw i64 %n.vec166 to i32
  %cmp.n174 = icmp eq i64 %n.vec166, %i.iv
  br label %iter.check161

bb.h:                                             ; preds = %._crit_edge202.i, %.lr.ph206.i
  %indvars.iv241.i = phi i64 [ %i.ei, %.lr.ph206.i ], [ %indvars.iv.next242.i, %._crit_edge202.i ] ; 2 uses
  %.6205.i = phi ptr [ %.3.lcssa.i, %.lr.ph206.i ], [ %.8.lcssa.i, %._crit_edge202.i ] ; 10 uses
  %i.iz = add i64 %indvars.iv241.i, %i.ek         ; 2 uses
  %i.ja = load ptr, ptr %0, align 8, !tbaa !14    ; 4 uses
  %i.jb = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i64, ptr %i.ee, align 8, !tbaa !16
  %i.je = mul i64 %i.jd, %i.jc                    ; 2 uses
  %i.jf = mul i64 %i.je, %i.iz                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.ja, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 %i.ef  ; 8 uses
  %i.ji = add nsw i64 %i.iz, 1
  %i.jj = mul i64 %i.je, %i.ji                    ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %i.ef ; 7 uses
  br i1 %i.eg, label %iter.check115, label %.preheader147.i

iter.check115:                                    ; preds = %bb.h
  br i1 %min.iters.check93, label %.lr.ph192.i.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %iter.check115
  %i.jm = getelementptr i8, ptr %.6205.i, i64 %i.eo
  %scevgep80 = getelementptr i8, ptr %i.jm, i64 4 ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.ja, i64 %i.ef
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.jj
  %i.jn = getelementptr i8, ptr %i.ja, i64 %i.ep
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.ef
  %scevgep83 = getelementptr i8, ptr %i.jo, i64 2 ; 2 uses
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.jj
  %scevgep85 = getelementptr i8, ptr %scevgep83, i64 %i.jf
  %bound086 = icmp ult ptr %.6205.i, %scevgep84
  %bound187 = icmp ult ptr %scevgep82, %scevgep80
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %.6205.i, %scevgep85
  %bound190 = icmp ult ptr %i.jh, %scevgep80
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %found.conflict88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph192.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck79
  br i1 %min.iters.check95, label %vec.epilog.ph119, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.jp = getelementptr i8, ptr %i.jl, i64 %i.ew  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jh, i64 %i.ew  ; 2 uses
  %i.jr = getelementptr i8, ptr %.6205.i, i64 %i.ex ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next108, %vector.body98 ] ; 3 uses
  %i.js = shl i64 %index99, 1                     ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.jl, i64 %i.js
  %next.gep101 = getelementptr i8, ptr %i.jh, i64 %i.js
  %i.jt = shl i64 %index99, 2
  %next.gep102 = getelementptr i8, ptr %.6205.i, i64 %i.jt
  %wide.vec = load <64 x i8>, ptr %next.gep101, align 1, !tbaa !17, !alias.scope !63
  %wide.vec104 = load <64 x i8>, ptr %next.gep100, align 1, !tbaa !17, !alias.scope !64
  %interleaved.vec107 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec104, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec107, ptr %next.gep102, align 1, !tbaa !17, !alias.scope !65, !noalias !66
  %index.next108 = add nuw i64 %index99, 32       ; 2 uses
  %i.ju = icmp eq i64 %index.next108, %n.vec97
  br i1 %i.ju, label %middle.block109, label %vector.body98, !llvm.loop !46

middle.block109:                                  ; preds = %vector.body98
  br i1 %cmp.n110, label %.preheader147.i, label %vec.epilog.iter.check117

vec.epilog.iter.check117:                         ; preds = %middle.block109
  br i1 %min.epilog.iters.check118, label %.lr.ph192.i.preheader, label %vec.epilog.ph119, !prof !22

vec.epilog.ph119:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check117
  %vec.epilog.resume.val111 = phi i64 [ %n.vec97, %vec.epilog.iter.check117 ], [ 0, %vector.main.loop.iter.check94 ]
  %i.jv = getelementptr i8, ptr %i.jl, i64 %i.fa  ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jh, i64 %i.fa  ; 2 uses
  %i.jx = getelementptr i8, ptr %.6205.i, i64 %i.fb ; 2 uses
  br label %vec.epilog.vector.body121

vec.epilog.vector.body121:                        ; preds = %vec.epilog.vector.body121, %vec.epilog.ph119
  %index122 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph119 ], [ %index.next133, %vec.epilog.vector.body121 ] ; 3 uses
  %i.jy = shl i64 %index122, 1                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.jl, i64 %i.jy
  %next.gep124 = getelementptr i8, ptr %i.jh, i64 %i.jy
  %i.jz = shl i64 %index122, 2
  %next.gep125 = getelementptr i8, ptr %.6205.i, i64 %i.jz
  %wide.vec126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !17, !alias.scope !63
  %wide.vec129 = load <16 x i8>, ptr %next.gep123, align 1, !tbaa !17, !alias.scope !64
  %interleaved.vec132 = shufflevector <16 x i8> %wide.vec126, <16 x i8> %wide.vec129, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec132, ptr %next.gep125, align 1, !tbaa !17, !alias.scope !65, !noalias !66
  %index.next133 = add nuw i64 %index122, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next133, %n.vec120
  br i1 %i.ka, label %vec.epilog.middle.block134, label %vec.epilog.vector.body121, !llvm.loop !47

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body121
  br i1 %cmp.n135, label %.preheader147.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %vector.memcheck79, %iter.check115, %vec.epilog.iter.check117, %vec.epilog.middle.block134
  %.0116190.i.ph = phi i32 [ 0, %iter.check115 ], [ 0, %vector.memcheck79 ], [ %i.ev, %vec.epilog.iter.check117 ], [ %i.ez, %vec.epilog.middle.block134 ]
  %.0117189.i.ph = phi ptr [ %i.jl, %iter.check115 ], [ %i.jl, %vector.memcheck79 ], [ %i.jp, %vec.epilog.iter.check117 ], [ %i.jv, %vec.epilog.middle.block134 ]
  %.0119188.i.ph = phi ptr [ %i.jh, %iter.check115 ], [ %i.jh, %vector.memcheck79 ], [ %i.jq, %vec.epilog.iter.check117 ], [ %i.jw, %vec.epilog.middle.block134 ]
  %.7187.i.ph = phi ptr [ %.6205.i, %iter.check115 ], [ %.6205.i, %vector.memcheck79 ], [ %i.jr, %vec.epilog.iter.check117 ], [ %i.jx, %vec.epilog.middle.block134 ]
  br label %.lr.ph192.i

.preheader147.i:                                  ; preds = %.lr.ph192.i, %middle.block109, %vec.epilog.middle.block134, %bb.h
  %.7.lcssa.i = phi ptr [ %.6205.i, %bb.h ], [ %i.jx, %vec.epilog.middle.block134 ], [ %i.jr, %middle.block109 ], [ %i.lu, %.lr.ph192.i ] ; 10 uses
  %.0119.lcssa.i = phi ptr [ %i.jh, %bb.h ], [ %i.jw, %vec.epilog.middle.block134 ], [ %i.jq, %middle.block109 ], [ %i.lv, %.lr.ph192.i ] ; 8 uses
  %.0117.lcssa.i = phi ptr [ %i.jl, %bb.h ], [ %i.jv, %vec.epilog.middle.block134 ], [ %i.jp, %middle.block109 ], [ %i.lw, %.lr.ph192.i ] ; 8 uses
  %.0116.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.eh, %vec.epilog.middle.block134 ], [ %i.eh, %middle.block109 ], [ %i.eh, %.lr.ph192.i ] ; 7 uses
  %i.kb = icmp slt i32 %.0116.lcssa.i, %5
  br i1 %i.kb, label %iter.check, label %._crit_edge202.i

iter.check:                                       ; preds = %.preheader147.i
  %i.kc = xor i32 %.0116.lcssa.i, -1
  %i.kd = add i32 %5, %i.kc                       ; 3 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.kd, 7
  br i1 %min.iters.check, label %.lr.ph201.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.7.lcssa.i, i64 2
  %i.kg = xor i32 %.0116.lcssa.i, -1
  %i.kh = add i32 %5, %i.kg
  %i.ki = zext i32 %i.kh to i64                   ; 3 uses
  %i.kj = shl nuw nsw i64 %i.ki, 1
  %scevgep50 = getelementptr i8, ptr %scevgep, i64 %i.kj ; 2 uses
  %scevgep51 = getelementptr i8, ptr %.0117.lcssa.i, i64 1
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.ki
  %scevgep53 = getelementptr i8, ptr %.0119.lcssa.i, i64 1
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ki
  %bound0 = icmp ult ptr %.7.lcssa.i, %scevgep52
  %bound1 = icmp ult ptr %.0117.lcssa.i, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ult ptr %.7.lcssa.i, %scevgep54
  %bound156 = icmp ult ptr %.0119.lcssa.i, %scevgep50
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %.lr.ph201.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check58 = icmp ult i32 %i.kd, 31
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kk = and i64 %i.kf, 24
  %n.vec = and i64 %i.kf, 8589934560              ; 7 uses
  %i.kl = trunc i64 %n.vec to i32
  %i.km = add i32 %.0116.lcssa.i, %i.kl
  %i.kn = getelementptr i8, ptr %.0117.lcssa.i, i64 %n.vec
  %i.ko = getelementptr i8, ptr %.0119.lcssa.i, i64 %n.vec
  %i.kp = shl nuw nsw i64 %n.vec, 1
  %i.kq = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kp ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.0117.lcssa.i, i64 %index
  %next.gep59 = getelementptr i8, ptr %.0119.lcssa.i, i64 %index
  %i.kr = shl i64 %index, 1
  %next.gep60 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kr
  %wide.load = load <32 x i8>, ptr %next.gep59, align 1, !tbaa !17, !alias.scope !67
  %wide.load61 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !68
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load61, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep60, align 1, !tbaa !17, !alias.scope !69, !noalias !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
end_hunk_0
begin_hunk_1_@_ZN4ncnn21pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  %invariant.op263.i = add nsw i64 %i.ej, -1
  %i.el = add i32 %5, -2
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = and i64 %i.en, 8589934588
  %i.ep = and i64 %i.em, 4294967294
  %i.eq = add i32 %5, -2                          ; 3 uses
  %i.er = lshr i32 %i.eq, 1
  %narrow = add nuw i32 %i.er, 1
  %i.es = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check93 = icmp ult i32 %i.eq, 14
  %min.iters.check95 = icmp ult i32 %i.eq, 62
  %i.et = and i64 %i.es, 24
  %n.vec97 = and i64 %i.es, 4294967264            ; 6 uses
  %i.eu = trunc nuw i64 %n.vec97 to i32
  %i.ev = shl i32 %i.eu, 1
  %i.ew = shl nuw nsw i64 %n.vec97, 1             ; 2 uses
  %i.ex = shl nuw nsw i64 %n.vec97, 2
  %cmp.n110 = icmp eq i64 %n.vec97, %i.es
  %min.epilog.iters.check118 = icmp eq i64 %i.et, 0
  %n.vec120 = and i64 %i.es, 4294967288           ; 5 uses
  %i.ey = trunc nuw i64 %n.vec120 to i32
  %i.ez = shl i32 %i.ey, 1
  %i.fa = shl nuw nsw i64 %n.vec120, 1            ; 2 uses
  %i.fb = shl nuw nsw i64 %n.vec120, 2
  %cmp.n135 = icmp eq i64 %n.vec120, %i.es
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge180.i, %.lr.ph184.i
  %indvars.iv237.i = phi i64 [ %i.x, %.lr.ph184.i ], [ %indvars.iv.next238.i, %._crit_edge180.i ] ; 2 uses
  %.3183.i = phi ptr [ %.0121.lcssa.i, %.lr.ph184.i ], [ %.5.lcssa.i, %._crit_edge180.i ] ; 3 uses
  %i.fc = add nsw i64 %indvars.iv237.i, %i.z
  %i.fd = load ptr, ptr %0, align 8, !tbaa !14
  %i.fe = load i32, ptr %i.s, align 4, !tbaa !15  ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.fc, %i.ff
  %i.fh = load i64, ptr %i.t, align 8, !tbaa !16
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.u ; 3 uses
  %i.fl = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fn = mul <4 x i32> %i.fm, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  br i1 %i.v, label %.lr.ph172.i.preheader, label %.preheader149.i

.lr.ph172.i.preheader:                            ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph172.i.epil.preheader, label %.lr.ph172.i

.preheader149.i.loopexit.unr-lcssa:               ; preds = %.lr.ph172.i
  br i1 %lcmp.mod196.not, label %.preheader149.i, label %.lr.ph172.i.epil.preheader

.lr.ph172.i.epil.preheader:                       ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.preheader
  %.4170.i.epil.init = phi ptr [ %.3183.i, %.lr.ph172.i.preheader ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ]
  %.0129168.i.epil.init = phi ptr [ %i.fk, %.lr.ph172.i.preheader ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph172.i.epil

.lr.ph172.i.epil:                                 ; preds = %.lr.ph172.i.epil, %.lr.ph172.i.epil.preheader
  %.4170.i.epil = phi ptr [ %i.ft, %.lr.ph172.i.epil ], [ %.4170.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %.0129168.i.epil = phi ptr [ %i.fu, %.lr.ph172.i.epil ], [ %.0129168.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 2 uses
  %epil.iter195 = phi i32 [ %epil.iter195.next, %.lr.ph172.i.epil ], [ 0, %.lr.ph172.i.epil.preheader ]
  %i.fo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i.epil, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fp = bitcast <4 x i32> %i.fo to <16 x i8>
  %i.fq = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = bitcast <16 x i8> %i.fq to <2 x i64>
  %i.fs = extractelement <2 x i64> %i.fr, i64 0
  store i64 %i.fs, ptr %.4170.i.epil, align 1, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %.4170.i.epil, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0129168.i.epil, i64 2 ; 2 uses
  %epil.iter195.next = add i32 %epil.iter195, 1   ; 2 uses
  %epil.iter195.cmp.not = icmp eq i32 %epil.iter195.next, %xtraiter194
  br i1 %epil.iter195.cmp.not, label %.preheader149.i, label %.lr.ph172.i.epil, !llvm.loop !90

.preheader149.i:                                  ; preds = %.preheader149.i.loopexit.unr-lcssa, %.lr.ph172.i.epil, %bb.g
  %.0129.lcssa.i = phi ptr [ %i.fk, %bb.g ], [ %i.hi, %.preheader149.i.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph172.i.epil ] ; 2 uses
  %.0127.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.w, %.lr.ph172.i.epil ], [ %i.w, %.preheader149.i.loopexit.unr-lcssa ] ; 5 uses
  %.4.lcssa.i = phi ptr [ %.3183.i, %bb.g ], [ %i.hh, %.preheader149.i.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph172.i.epil ] ; 3 uses
  %i.fv = icmp slt i32 %.0127.lcssa.i, %5
  br i1 %i.fv, label %.lr.ph179.i.preheader, label %._crit_edge180.i

.lr.ph179.i.preheader:                            ; preds = %.preheader149.i
  %i.fw = sub i32 %5, %.0127.lcssa.i
  %xtraiter202 = and i32 %i.fw, 3                 ; 2 uses
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol

.lr.ph179.i.prol:                                 ; preds = %.lr.ph179.i.preheader, %.lr.ph179.i.prol
  %.5178.i.prol = phi ptr [ %i.gc, %.lr.ph179.i.prol ], [ %.4.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %.1128177.i.prol = phi i32 [ %i.ge, %.lr.ph179.i.prol ], [ %.0127.lcssa.i, %.lr.ph179.i.preheader ]
  %.1130176.i.prol = phi ptr [ %i.gd, %.lr.ph179.i.prol ], [ %.0129.lcssa.i, %.lr.ph179.i.preheader ] ; 2 uses
  %prol.iter204 = phi i32 [ %prol.iter204.next, %.lr.ph179.i.prol ], [ 0, %.lr.ph179.i.preheader ]
  %i.fx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i.prol, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.fy = bitcast <4 x i32> %i.fx to <16 x i8>
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = bitcast <16 x i8> %i.fz to <4 x float>
  %i.gb = extractelement <4 x float> %i.ga, i64 0
  store float %i.gb, ptr %.5178.i.prol, align 1, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %.5178.i.prol, i64 4 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1130176.i.prol, i64 1 ; 2 uses
  %i.ge = add nuw nsw i32 %.1128177.i.prol, 1     ; 2 uses
  %prol.iter204.next = add i32 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i32 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph179.i.prol.loopexit, label %.lr.ph179.i.prol, !llvm.loop !91

.lr.ph179.i.prol.loopexit:                        ; preds = %.lr.ph179.i.prol, %.lr.ph179.i.preheader
  %.lcssa185.unr = phi ptr [ poison, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.5178.i.unr = phi ptr [ %.4.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gc, %.lr.ph179.i.prol ]
  %.1128177.i.unr = phi i32 [ %.0127.lcssa.i, %.lr.ph179.i.preheader ], [ %i.ge, %.lr.ph179.i.prol ]
  %.1130176.i.unr = phi ptr [ %.0129.lcssa.i, %.lr.ph179.i.preheader ], [ %i.gd, %.lr.ph179.i.prol ]
  %i.gf = sub i32 %.0127.lcssa.i, %5
  %i.gg = icmp ugt i32 %i.gf, -4
  br i1 %i.gg, label %._crit_edge180.i, label %.lr.ph179.i

.lr.ph172.i:                                      ; preds = %.lr.ph172.i.preheader, %.lr.ph172.i
  %.4170.i = phi ptr [ %i.hh, %.lr.ph172.i ], [ %.3183.i, %.lr.ph172.i.preheader ] ; 5 uses
  %.0129168.i = phi ptr [ %i.hi, %.lr.ph172.i ], [ %i.fk, %.lr.ph172.i.preheader ] ; 5 uses
  %niter201 = phi i32 [ %niter201.next.3, %.lr.ph172.i ], [ 0, %.lr.ph172.i.preheader ]
  %i.gh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0129168.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gi = bitcast <4 x i32> %i.gh to <16 x i8>
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = bitcast <16 x i8> %i.gj to <2 x i64>
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  store i64 %i.gl, ptr %.4170.i, align 1, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %.4170.i, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 2
  %i.go = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gn, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gp = bitcast <4 x i32> %i.go to <16 x i8>
  %i.gq = shufflevector <16 x i8> %i.gp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gr = bitcast <16 x i8> %i.gq to <2 x i64>
  %i.gs = extractelement <2 x i64> %i.gr, i64 0
  store i64 %i.gs, ptr %i.gm, align 1, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %.4170.i, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 4
  %i.gv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.gu, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.gw = bitcast <4 x i32> %i.gv to <16 x i8>
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gy = bitcast <16 x i8> %i.gx to <2 x i64>
  %i.gz = extractelement <2 x i64> %i.gy, i64 0
  store i64 %i.gz, ptr %i.gt, align 1, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %.4170.i, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 6
  %i.hc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hb, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hd = bitcast <4 x i32> %i.hc to <16 x i8>
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = bitcast <16 x i8> %i.he to <2 x i64>
  %i.hg = extractelement <2 x i64> %i.hf, i64 0
  store i64 %i.hg, ptr %i.ha, align 1, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %.4170.i, i64 32 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0129168.i, i64 8 ; 3 uses
  %niter201.next.3 = add i32 %niter201, 4         ; 2 uses
  %niter201.ncmp.3.not = icmp eq i32 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3.not, label %.preheader149.i.loopexit.unr-lcssa, label %.lr.ph172.i, !llvm.loop !92

.lr.ph179.i:                                      ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i
  %.5178.i = phi ptr [ %i.ij, %.lr.ph179.i ], [ %.5178.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %.1128177.i = phi i32 [ %i.il, %.lr.ph179.i ], [ %.1128177.i.unr, %.lr.ph179.i.prol.loopexit ]
  %.1130176.i = phi ptr [ %i.ik, %.lr.ph179.i ], [ %.1130176.i.unr, %.lr.ph179.i.prol.loopexit ] ; 5 uses
  %i.hj = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1130176.i, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hk = bitcast <4 x i32> %i.hj to <16 x i8>
  %i.hl = shufflevector <16 x i8> %i.hk, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = bitcast <16 x i8> %i.hl to <4 x float>
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  store float %i.hn, ptr %.5178.i, align 1, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.5178.i, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 1
  %i.hq = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hp, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hr = bitcast <4 x i32> %i.hq to <16 x i8>
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = bitcast <16 x i8> %i.hs to <4 x float>
  %i.hu = extractelement <4 x float> %i.ht, i64 0
  store float %i.hu, ptr %i.ho, align 1, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %.5178.i, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 2
  %i.hx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.hw, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.hy = bitcast <4 x i32> %i.hx to <16 x i8>
  %i.hz = shufflevector <16 x i8> %i.hy, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = bitcast <16 x i8> %i.hz to <4 x float>
  %i.ib = extractelement <4 x float> %i.ia, i64 0
  store float %i.ib, ptr %i.hv, align 1, !tbaa !17
  %i.ic = getelementptr inbounds nuw i8, ptr %.5178.i, i64 12
  %i.id = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 3
  %i.ie = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.id, <4 x i32> %i.fn, <4 x i32> splat (i32 -1), i8 1)
  %i.if = bitcast <4 x i32> %i.ie to <16 x i8>
  %i.ig = shufflevector <16 x i8> %i.if, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ih = bitcast <16 x i8> %i.ig to <4 x float>
  %i.ii = extractelement <4 x float> %i.ih, i64 0
  store float %i.ii, ptr %i.ic, align 1, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.5178.i, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1130176.i, i64 4
  %i.il = add nuw nsw i32 %.1128177.i, 4          ; 2 uses
  %exitcond236.not.i.3 = icmp eq i32 %i.il, %5
  br i1 %exitcond236.not.i.3, label %._crit_edge180.i, label %.lr.ph179.i, !llvm.loop !93

._crit_edge180.i:                                 ; preds = %.lr.ph179.i.prol.loopexit, %.lr.ph179.i, %.preheader149.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader149.i ], [ %.lcssa185.unr, %.lr.ph179.i.prol.loopexit ], [ %i.ij, %.lr.ph179.i ] ; 2 uses
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 4 ; 3 uses
  %i.im = icmp slt i64 %indvars.iv.next238.i, %invariant.op.i
  br i1 %i.im, label %bb.g, label %.preheader148.loopexit.i, !llvm.loop !94

.preheader.loopexit.i:                            ; preds = %._crit_edge202.i
  %i.in = trunc nuw nsw i64 %indvars.iv.next242.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader148.i
  %.2125.lcssa.i = phi i32 [ %.1124.lcssa.i, %.preheader148.i ], [ %i.in, %.preheader.loopexit.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader148.i ], [ %.8.lcssa.i, %.preheader.loopexit.i ]
  %i.io = icmp slt i32 %.2125.lcssa.i, %3
  br i1 %i.io, label %.lr.ph218.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph218.i:                                      ; preds = %.preheader.i
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ir = sext i32 %4 to i64                      ; 2 uses
  %i.is = icmp sgt i32 %5, 0
  br i1 %i.is, label %.lr.ph213.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph213.preheader.i:                            ; preds = %.lr.ph218.i
  %i.it = sext i32 %.2125.lcssa.i to i64
  %i.iu = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.iv = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check142 = icmp ult i32 %5, 8
  %min.iters.check144 = icmp ult i32 %5, 128
  %i.iw = and i64 %i.iv, 120
  %n.vec146 = and i64 %i.iv, 2147483520           ; 6 uses
  %i.ix = trunc nuw nsw i64 %n.vec146 to i32
  %cmp.n157 = icmp eq i64 %n.vec146, %i.iv
  %min.epilog.iters.check164 = icmp eq i64 %i.iw, 0
  %n.vec166 = and i64 %i.iv, 2147483640           ; 5 uses
  %i.iy = trunc nuw nsw i64 %n.vec166 to i32
  %cmp.n174 = icmp eq i64 %n.vec166, %i.iv
  br label %iter.check161

bb.h:                                             ; preds = %._crit_edge202.i, %.lr.ph206.i
  %indvars.iv241.i = phi i64 [ %i.ei, %.lr.ph206.i ], [ %indvars.iv.next242.i, %._crit_edge202.i ] ; 2 uses
  %.6205.i = phi ptr [ %.3.lcssa.i, %.lr.ph206.i ], [ %.8.lcssa.i, %._crit_edge202.i ] ; 10 uses
  %i.iz = add i64 %indvars.iv241.i, %i.ek         ; 2 uses
  %i.ja = load ptr, ptr %0, align 8, !tbaa !14    ; 4 uses
  %i.jb = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i64, ptr %i.ee, align 8, !tbaa !16
  %i.je = mul i64 %i.jd, %i.jc                    ; 2 uses
  %i.jf = mul i64 %i.je, %i.iz                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.ja, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 %i.ef  ; 8 uses
  %i.ji = add nsw i64 %i.iz, 1
  %i.jj = mul i64 %i.je, %i.ji                    ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %i.ef ; 7 uses
  br i1 %i.eg, label %iter.check115, label %.preheader147.i

iter.check115:                                    ; preds = %bb.h
  br i1 %min.iters.check93, label %.lr.ph192.i.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %iter.check115
  %i.jm = getelementptr i8, ptr %.6205.i, i64 %i.eo
  %scevgep80 = getelementptr i8, ptr %i.jm, i64 4 ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.ja, i64 %i.ef
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.jj
  %i.jn = getelementptr i8, ptr %i.ja, i64 %i.ep
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.ef
  %scevgep83 = getelementptr i8, ptr %i.jo, i64 2 ; 2 uses
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.jj
  %scevgep85 = getelementptr i8, ptr %scevgep83, i64 %i.jf
  %bound086 = icmp ult ptr %.6205.i, %scevgep84
  %bound187 = icmp ult ptr %scevgep82, %scevgep80
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %.6205.i, %scevgep85
  %bound190 = icmp ult ptr %i.jh, %scevgep80
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %found.conflict88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph192.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck79
  br i1 %min.iters.check95, label %vec.epilog.ph119, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.jp = getelementptr i8, ptr %i.jl, i64 %i.ew  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jh, i64 %i.ew  ; 2 uses
  %i.jr = getelementptr i8, ptr %.6205.i, i64 %i.ex ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next108, %vector.body98 ] ; 3 uses
  %i.js = shl i64 %index99, 1                     ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.jl, i64 %i.js
  %next.gep101 = getelementptr i8, ptr %i.jh, i64 %i.js
  %i.jt = shl i64 %index99, 2
  %next.gep102 = getelementptr i8, ptr %.6205.i, i64 %i.jt
  %wide.vec = load <64 x i8>, ptr %next.gep101, align 1, !tbaa !17, !alias.scope !116
  %wide.vec104 = load <64 x i8>, ptr %next.gep100, align 1, !tbaa !17, !alias.scope !117
  %interleaved.vec107 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec104, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec107, ptr %next.gep102, align 1, !tbaa !17, !alias.scope !118, !noalias !119
  %index.next108 = add nuw i64 %index99, 32       ; 2 uses
  %i.ju = icmp eq i64 %index.next108, %n.vec97
  br i1 %i.ju, label %middle.block109, label %vector.body98, !llvm.loop !99

middle.block109:                                  ; preds = %vector.body98
  br i1 %cmp.n110, label %.preheader147.i, label %vec.epilog.iter.check117

vec.epilog.iter.check117:                         ; preds = %middle.block109
  br i1 %min.epilog.iters.check118, label %.lr.ph192.i.preheader, label %vec.epilog.ph119, !prof !22

vec.epilog.ph119:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check117
  %vec.epilog.resume.val111 = phi i64 [ %n.vec97, %vec.epilog.iter.check117 ], [ 0, %vector.main.loop.iter.check94 ]
  %i.jv = getelementptr i8, ptr %i.jl, i64 %i.fa  ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jh, i64 %i.fa  ; 2 uses
  %i.jx = getelementptr i8, ptr %.6205.i, i64 %i.fb ; 2 uses
  br label %vec.epilog.vector.body121

vec.epilog.vector.body121:                        ; preds = %vec.epilog.vector.body121, %vec.epilog.ph119
  %index122 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph119 ], [ %index.next133, %vec.epilog.vector.body121 ] ; 3 uses
  %i.jy = shl i64 %index122, 1                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.jl, i64 %i.jy
  %next.gep124 = getelementptr i8, ptr %i.jh, i64 %i.jy
  %i.jz = shl i64 %index122, 2
  %next.gep125 = getelementptr i8, ptr %.6205.i, i64 %i.jz
  %wide.vec126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !17, !alias.scope !116
  %wide.vec129 = load <16 x i8>, ptr %next.gep123, align 1, !tbaa !17, !alias.scope !117
  %interleaved.vec132 = shufflevector <16 x i8> %wide.vec126, <16 x i8> %wide.vec129, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec132, ptr %next.gep125, align 1, !tbaa !17, !alias.scope !118, !noalias !119
  %index.next133 = add nuw i64 %index122, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next133, %n.vec120
  br i1 %i.ka, label %vec.epilog.middle.block134, label %vec.epilog.vector.body121, !llvm.loop !100

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body121
  br i1 %cmp.n135, label %.preheader147.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %vector.memcheck79, %iter.check115, %vec.epilog.iter.check117, %vec.epilog.middle.block134
  %.0116190.i.ph = phi i32 [ 0, %iter.check115 ], [ 0, %vector.memcheck79 ], [ %i.ev, %vec.epilog.iter.check117 ], [ %i.ez, %vec.epilog.middle.block134 ]
  %.0117189.i.ph = phi ptr [ %i.jl, %iter.check115 ], [ %i.jl, %vector.memcheck79 ], [ %i.jp, %vec.epilog.iter.check117 ], [ %i.jv, %vec.epilog.middle.block134 ]
  %.0119188.i.ph = phi ptr [ %i.jh, %iter.check115 ], [ %i.jh, %vector.memcheck79 ], [ %i.jq, %vec.epilog.iter.check117 ], [ %i.jw, %vec.epilog.middle.block134 ]
  %.7187.i.ph = phi ptr [ %.6205.i, %iter.check115 ], [ %.6205.i, %vector.memcheck79 ], [ %i.jr, %vec.epilog.iter.check117 ], [ %i.jx, %vec.epilog.middle.block134 ]
  br label %.lr.ph192.i

.preheader147.i:                                  ; preds = %.lr.ph192.i, %middle.block109, %vec.epilog.middle.block134, %bb.h
  %.7.lcssa.i = phi ptr [ %.6205.i, %bb.h ], [ %i.jx, %vec.epilog.middle.block134 ], [ %i.jr, %middle.block109 ], [ %i.lu, %.lr.ph192.i ] ; 10 uses
  %.0119.lcssa.i = phi ptr [ %i.jh, %bb.h ], [ %i.jw, %vec.epilog.middle.block134 ], [ %i.jq, %middle.block109 ], [ %i.lv, %.lr.ph192.i ] ; 8 uses
  %.0117.lcssa.i = phi ptr [ %i.jl, %bb.h ], [ %i.jv, %vec.epilog.middle.block134 ], [ %i.jp, %middle.block109 ], [ %i.lw, %.lr.ph192.i ] ; 8 uses
  %.0116.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.eh, %vec.epilog.middle.block134 ], [ %i.eh, %middle.block109 ], [ %i.eh, %.lr.ph192.i ] ; 7 uses
  %i.kb = icmp slt i32 %.0116.lcssa.i, %5
  br i1 %i.kb, label %iter.check, label %._crit_edge202.i

iter.check:                                       ; preds = %.preheader147.i
  %i.kc = xor i32 %.0116.lcssa.i, -1
  %i.kd = add i32 %5, %i.kc                       ; 3 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.kd, 7
  br i1 %min.iters.check, label %.lr.ph201.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.7.lcssa.i, i64 2
  %i.kg = xor i32 %.0116.lcssa.i, -1
  %i.kh = add i32 %5, %i.kg
  %i.ki = zext i32 %i.kh to i64                   ; 3 uses
  %i.kj = shl nuw nsw i64 %i.ki, 1
  %scevgep50 = getelementptr i8, ptr %scevgep, i64 %i.kj ; 2 uses
  %scevgep51 = getelementptr i8, ptr %.0117.lcssa.i, i64 1
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.ki
  %scevgep53 = getelementptr i8, ptr %.0119.lcssa.i, i64 1
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ki
  %bound0 = icmp ult ptr %.7.lcssa.i, %scevgep52
  %bound1 = icmp ult ptr %.0117.lcssa.i, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ult ptr %.7.lcssa.i, %scevgep54
  %bound156 = icmp ult ptr %.0119.lcssa.i, %scevgep50
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %.lr.ph201.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check58 = icmp ult i32 %i.kd, 31
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kk = and i64 %i.kf, 24
  %n.vec = and i64 %i.kf, 8589934560              ; 7 uses
  %i.kl = trunc i64 %n.vec to i32
  %i.km = add i32 %.0116.lcssa.i, %i.kl
  %i.kn = getelementptr i8, ptr %.0117.lcssa.i, i64 %n.vec
  %i.ko = getelementptr i8, ptr %.0119.lcssa.i, i64 %n.vec
  %i.kp = shl nuw nsw i64 %n.vec, 1
  %i.kq = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kp ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.0117.lcssa.i, i64 %index
  %next.gep59 = getelementptr i8, ptr %.0119.lcssa.i, i64 %index
  %i.kr = shl i64 %index, 1
  %next.gep60 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.kr
  %wide.load = load <32 x i8>, ptr %next.gep59, align 1, !tbaa !17, !alias.scope !120
  %wide.load61 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !121
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load61, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep60, align 1, !tbaa !17, !alias.scope !122, !noalias !123
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
end_hunk_1
begin_hunk_2_@_ZN4ncnn29pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_:bb.a
.lr.ph397.i:                                      ; preds = %.preheader386.i, %.lr.ph397.i
  %.2396.i = phi ptr [ %i.ij, %.lr.ph397.i ], [ %.1279.lcssa.i, %.preheader386.i ] ; 2 uses
  %.1285395.i = phi ptr [ %i.ik, %.lr.ph397.i ], [ %.0284.lcssa.i, %.preheader386.i ] ; 2 uses
  %.1293394.i = phi i32 [ %i.il, %.lr.ph397.i ], [ %.0292.lcssa.i, %.preheader386.i ]
  %i.hv = load <8 x float>, ptr %.1285395.i, align 32, !tbaa !17
  %i.hw = fmul fast <8 x float> %i.hv, %i.gs      ; 2 uses
  %i.hx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.hw)
  %i.hy = fadd fast <8 x float> %i.hx, %i.hw
  %i.hz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hy)
  %i.ia = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.hz, <8 x i32> poison)
  %i.ib = bitcast <16 x i16> %i.ia to <8 x i32>
  %i.ic = shufflevector <8 x i32> %i.ib, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.id = bitcast <4 x i32> %i.ic to <8 x i16>
  %i.ie = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.id, <8 x i16> splat (i16 -127))
  %i.if = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ie, <8 x i16> splat (i16 127))
  %i.ig = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.if, <8 x i16> poison)
  %i.ih = bitcast <16 x i8> %i.ig to <2 x i64>
  %i.ii = extractelement <2 x i64> %i.ih, i64 0
  store i64 %i.ii, ptr %.2396.i, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %.2396.i, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1285395.i, i64 32
  %i.il = add nuw nsw i32 %.1293394.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.il, %5
  br i1 %exitcond.not.i, label %.loopexit381.i, label %.lr.ph397.i, !llvm.loop !144

.preheader385.i:                                  ; preds = %bb.i
  br i1 %i.s, label %.lr.ph403.i, label %.preheader383.i

.preheader383.i:                                  ; preds = %.lr.ph403.i, %.preheader385.i
  %.0300.lcssa.i = phi i32 [ 0, %.preheader385.i ], [ %i.x, %.lr.ph403.i ] ; 2 uses
  %.3287.lcssa.i = phi ptr [ %i.go, %.preheader385.i ], [ %i.jm, %.lr.ph403.i ]
  %.4.lcssa.i = phi ptr [ %.0278426.i, %.preheader385.i ], [ %i.jl, %.lr.ph403.i ] ; 2 uses
  %i.im = icmp slt i32 %.0300.lcssa.i, %5
  br i1 %i.im, label %.lr.ph410.i, label %.loopexit381.i

.lr.ph403.i:                                      ; preds = %.preheader385.i, %.lr.ph403.i
  %.4402.i = phi ptr [ %i.jl, %.lr.ph403.i ], [ %.0278426.i, %.preheader385.i ] ; 2 uses
  %.3287401.i = phi ptr [ %i.jm, %.lr.ph403.i ], [ %i.go, %.preheader385.i ] ; 3 uses
  %.0300400.i = phi i32 [ %i.jn, %.lr.ph403.i ], [ 0, %.preheader385.i ]
  %i.in = load <8 x float>, ptr %.3287401.i, align 1, !tbaa !17 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.3287401.i, i64 %.idx314.i
  %i.ip = load <8 x float>, ptr %i.io, align 1, !tbaa !17 ; 2 uses
  %i.iq = shufflevector <8 x float> %i.in, <8 x float> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ir = shufflevector <8 x float> %i.in, <8 x float> %i.ip, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.is = fmul fast <8 x float> %i.iq, %i.gs      ; 2 uses
  %i.it = fmul fast <8 x float> %i.ir, %i.gs      ; 2 uses
  %i.iu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.is)
  %i.iv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.it)
  %i.iw = fadd fast <8 x float> %i.iu, %i.is
  %i.ix = fadd fast <8 x float> %i.iv, %i.it
  %i.iy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iw)
  %i.iz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ix)
  %i.ja = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.iy, <8 x i32> %i.iz)
  %i.jb = bitcast <16 x i16> %i.ja to <4 x i64>
  %i.jc = shufflevector <4 x i64> %i.jb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.jd = bitcast <4 x i64> %i.jc to <16 x i16>
  %i.je = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.jd, <16 x i16> splat (i16 -127))
  %i.jf = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.je, <16 x i16> splat (i16 127))
  %i.jg = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.jf, <16 x i16> poison)
  %i.jh = bitcast <32 x i8> %i.jg to <8 x i32>
  %i.ji = shufflevector <8 x i32> %i.jh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jj = bitcast <4 x i32> %i.ji to <16 x i8>
  %i.jk = shufflevector <16 x i8> %i.jj, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.jk, ptr %.4402.i, align 1, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %.4402.i, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.3287401.i, i64 32 ; 2 uses
  %i.jn = add nuw nsw i32 %.0300400.i, 2          ; 2 uses
  %i.jo = or disjoint i32 %i.jn, 1
  %i.jp = icmp slt i32 %i.jo, %5
  br i1 %i.jp, label %.lr.ph403.i, label %.preheader383.i, !llvm.loop !145

.lr.ph410.i:                                      ; preds = %.preheader383.i, %.lr.ph410.i
  %.5409.i = phi ptr [ %i.kh, %.lr.ph410.i ], [ %.4.lcssa.i, %.preheader383.i ] ; 2 uses
  %.4288408.i = phi ptr [ %i.ki, %.lr.ph410.i ], [ %.3287.lcssa.i, %.preheader383.i ] ; 3 uses
  %.1301407.i = phi i32 [ %i.kj, %.lr.ph410.i ], [ %.0300.lcssa.i, %.preheader383.i ]
  %i.jq = load <4 x float>, ptr %.4288408.i, align 16, !tbaa !17
  %i.jr = getelementptr inbounds nuw i8, ptr %.4288408.i, i64 %.idx314.i
  %i.js = load <4 x float>, ptr %i.jr, align 16, !tbaa !17
  %i.jt = shufflevector <4 x float> %i.jq, <4 x float> %i.js, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ju = fmul fast <8 x float> %i.jt, %i.gs      ; 2 uses
  %i.jv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ju)
  %i.jw = fadd fast <8 x float> %i.jv, %i.ju
  %i.jx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jw)
  %i.jy = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.jx, <8 x i32> poison)
  %i.jz = bitcast <16 x i16> %i.jy to <8 x i32>
  %i.ka = shufflevector <8 x i32> %i.jz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kb = bitcast <4 x i32> %i.ka to <8 x i16>
  %i.kc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kb, <8 x i16> splat (i16 -127))
  %i.kd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kc, <8 x i16> splat (i16 127))
  %i.ke = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kd, <8 x i16> poison)
  %i.kf = bitcast <16 x i8> %i.ke to <2 x i64>
  %i.kg = extractelement <2 x i64> %i.kf, i64 0
  store i64 %i.kg, ptr %.5409.i, align 8, !tbaa !27
  %i.kh = getelementptr inbounds nuw i8, ptr %.5409.i, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.4288408.i, i64 16
  %i.kj = add nuw nsw i32 %.1301407.i, 1          ; 2 uses
  %exitcond537.not.i = icmp eq i32 %i.kj, %5
  br i1 %exitcond537.not.i, label %.loopexit381.i, label %.lr.ph410.i, !llvm.loop !146

.preheader382.i:                                  ; preds = %bb.i
  br i1 %i.s, label %.lr.ph416.i, label %.preheader380.i

.preheader380.i:                                  ; preds = %.lr.ph416.i, %.preheader382.i
  %.0302.lcssa.i = phi i32 [ 0, %.preheader382.i ], [ %i.x, %.lr.ph416.i ] ; 2 uses
  %.6290.lcssa.i = phi ptr [ %i.go, %.preheader382.i ], [ %i.li, %.lr.ph416.i ]
  %.7.lcssa.i = phi ptr [ %.0278426.i, %.preheader382.i ], [ %i.lh, %.lr.ph416.i ] ; 2 uses
  %i.kk = icmp slt i32 %.0302.lcssa.i, %5
  br i1 %i.kk, label %.lr.ph423.i, label %.loopexit381.i

.lr.ph416.i:                                      ; preds = %.preheader382.i, %.lr.ph416.i
  %.7415.i = phi ptr [ %i.lh, %.lr.ph416.i ], [ %.0278426.i, %.preheader382.i ] ; 2 uses
  %.6290414.i = phi ptr [ %i.li, %.lr.ph416.i ], [ %i.go, %.preheader382.i ] ; 3 uses
  %.0302413.i = phi i32 [ %i.lj, %.lr.ph416.i ], [ 0, %.preheader382.i ]
  %i.kl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6290414.i, <8 x i32> %i.w, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.km = getelementptr inbounds nuw i8, ptr %.6290414.i, i64 4
  %i.kn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.km, <8 x i32> %i.w, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ko = fmul fast <8 x float> %i.kl, %i.gs      ; 2 uses
  %i.kp = fmul fast <8 x float> %i.kn, %i.gs      ; 2 uses
  %i.kq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ko)
  %i.kr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kp)
  %i.ks = fadd fast <8 x float> %i.kq, %i.ko
  %i.kt = fadd fast <8 x float> %i.kr, %i.kp
  %i.ku = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ks)
  %i.kv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kt)
  %i.kw = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ku, <8 x i32> %i.kv)
  %i.kx = bitcast <16 x i16> %i.kw to <4 x i64>
  %i.ky = shufflevector <4 x i64> %i.kx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.kz = bitcast <4 x i64> %i.ky to <16 x i16>
  %i.la = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.kz, <16 x i16> splat (i16 -127))
  %i.lb = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.la, <16 x i16> splat (i16 127))
  %i.lc = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.lb, <16 x i16> poison)
  %i.ld = bitcast <32 x i8> %i.lc to <8 x i32>
  %i.le = shufflevector <8 x i32> %i.ld, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lf = bitcast <4 x i32> %i.le to <16 x i8>
  %i.lg = shufflevector <16 x i8> %i.lf, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.lg, ptr %.7415.i, align 1, !tbaa !17
  %i.lh = getelementptr inbounds nuw i8, ptr %.7415.i, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.6290414.i, i64 8 ; 2 uses
  %i.lj = add nuw nsw i32 %.0302413.i, 2          ; 2 uses
  %i.lk = or disjoint i32 %i.lj, 1
  %i.ll = icmp slt i32 %i.lk, %5
  br i1 %i.ll, label %.lr.ph416.i, label %.preheader380.i, !llvm.loop !147

.lr.ph423.i:                                      ; preds = %.preheader380.i, %.lr.ph423.i
  %.8422.i = phi ptr [ %i.ma, %.lr.ph423.i ], [ %.7.lcssa.i, %.preheader380.i ] ; 2 uses
  %.7291421.i = phi ptr [ %i.mb, %.lr.ph423.i ], [ %.6290.lcssa.i, %.preheader380.i ] ; 2 uses
  %.1303420.i = phi i32 [ %i.mc, %.lr.ph423.i ], [ %.0302.lcssa.i, %.preheader380.i ]
  %i.lm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.7291421.i, <8 x i32> %i.w, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ln = fmul fast <8 x float> %i.lm, %i.gs      ; 2 uses
  %i.lo = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ln)
  %i.lp = fadd fast <8 x float> %i.lo, %i.ln
  %i.lq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lp)
  %i.lr = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.lq, <8 x i32> poison)
  %i.ls = bitcast <16 x i16> %i.lr to <8 x i32>
  %i.lt = shufflevector <8 x i32> %i.ls, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lu = bitcast <4 x i32> %i.lt to <8 x i16>
  %i.lv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lu, <8 x i16> splat (i16 -127))
  %i.lw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lv, <8 x i16> splat (i16 127))
  %i.lx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lw, <8 x i16> poison)
  %i.ly = bitcast <16 x i8> %i.lx to <2 x i64>
  %i.lz = extractelement <2 x i64> %i.ly, i64 0
  store i64 %i.lz, ptr %.8422.i, align 8, !tbaa !27
  %i.ma = getelementptr inbounds nuw i8, ptr %.8422.i, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.7291421.i, i64 4
  %i.mc = add nuw nsw i32 %.1303420.i, 1          ; 2 uses
  %exitcond538.not.i = icmp eq i32 %i.mc, %5
  br i1 %exitcond538.not.i, label %.loopexit381.i, label %.lr.ph423.i, !llvm.loop !148

.loopexit381.i:                                   ; preds = %.lr.ph423.i, %.lr.ph410.i, %.lr.ph397.i, %.preheader380.i, %.preheader383.i, %.preheader386.i, %bb.i
  %.9.i = phi ptr [ %.0278426.i, %bb.i ], [ %.7.lcssa.i, %.preheader380.i ], [ %i.ij, %.lr.ph397.i ], [ %i.kh, %.lr.ph410.i ], [ %.4.lcssa.i, %.preheader383.i ], [ %.1279.lcssa.i, %.preheader386.i ], [ %i.ma, %.lr.ph423.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.md = or disjoint i64 %indvars.iv.next.i, 7
  %i.me = icmp samesign ult i64 %i.md, %i.y
  br i1 %i.me, label %bb.i, label %.preheader379.loopexit.i, !llvm.loop !149

.preheader372.loopexit.i:                         ; preds = %.loopexit374.i.us37, %.loopexit374.i.us, %.loopexit374.i.preheader
  %.us-phi = phi ptr [ %.0278.lcssa.i, %.loopexit374.i.preheader ], [ %.16.i.us, %.loopexit374.i.us ], [ %.16.i.us38, %.loopexit374.i.us37 ]
  %.us-phi32 = phi i64 [ %i.av, %.loopexit374.i.preheader ], [ %indvars.iv.next543.i.us, %.loopexit374.i.us ], [ %indvars.iv.next543.i.us39, %.loopexit374.i.us37 ]
  %i.mf = trunc nuw nsw i64 %.us-phi32 to i32
  br label %.preheader372.i

.preheader372.i:                                  ; preds = %.preheader372.loopexit.i, %.preheader379.i
  %.1281.lcssa.i = phi i32 [ %.0280.lcssa.i, %.preheader379.i ], [ %i.mf, %.preheader372.loopexit.i ] ; 3 uses
  %.10.lcssa.i = phi ptr [ %.0278.lcssa.i, %.preheader379.i ], [ %.us-phi, %.preheader372.loopexit.i ] ; 2 uses
  %i.mg = or disjoint i32 %.1281.lcssa.i, 1
  %i.mh = icmp slt i32 %i.mg, %3
  br i1 %i.mh, label %.lr.ph481.i, label %.preheader369.i

.lr.ph481.i:                                      ; preds = %.preheader372.i
  %i.mi = sext i32 %4 to i64
  %i.mj = icmp sgt i32 %5, 3
  %i.mk = and i32 %5, -4
  %i.ml = zext nneg i32 %.1281.lcssa.i to i64
  %i.mm = sext i32 %3 to i64
  %i.mn = sext i32 %2 to i64
  %invariant.op594.i = add nsw i64 %i.mm, -1
  %i.mo = shl nuw nsw i64 %i.m, 2                 ; 2 uses
  br label %bb.j

.preheader369.loopexit.i:                         ; preds = %._crit_edge.i
  %i.mp = trunc nuw nsw i64 %indvars.iv.next547.i to i32
  br label %.preheader369.i

.preheader369.i:                                  ; preds = %.preheader369.loopexit.i, %.preheader372.i
  %.2282.lcssa.i = phi i32 [ %.1281.lcssa.i, %.preheader372.i ], [ %i.mp, %.preheader369.loopexit.i ] ; 2 uses
  %.17.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader372.i ], [ %.20.lcssa.i, %.preheader369.loopexit.i ]
  %i.mq = icmp slt i32 %.2282.lcssa.i, %3
  br i1 %i.mq, label %.lr.ph500.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph500.i:                                      ; preds = %.preheader369.i
  %i.mr = sext i32 %4 to i64
  %i.ms = icmp sgt i32 %5, 3
  %i.mt = and i32 %5, -4
  %i.mu = sext i32 %.2282.lcssa.i to i64
  %i.mv = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph481.i
  %indvars.iv546.i = phi i64 [ %i.ml, %.lr.ph481.i ], [ %indvars.iv.next547.i, %._crit_edge.i ] ; 2 uses
  %.17480.i = phi ptr [ %.10.lcssa.i, %.lr.ph481.i ], [ %.20.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.mw = load ptr, ptr %0, align 8, !tbaa !14
  %i.mx = add nsw i64 %indvars.iv546.i, %i.mn     ; 2 uses
  %i.my = mul i64 %i.mx, %i.m
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.my
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.mi ; 2 uses
  %i.nb = load ptr, ptr %6, align 8, !tbaa !14
  %i.nc = getelementptr [4 x i8], ptr %i.nb, i64 %i.mx ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !30 ; 3 uses
  %i.ne = getelementptr i8, ptr %i.nc, i64 4
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !30 ; 3 uses
  %i.ng = insertelement <4 x float> poison, float %i.nd, i64 0 ; 2 uses
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ni = insertelement <4 x float> poison, float %i.nf, i64 0 ; 2 uses
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = shufflevector <4 x float> %i.ng, <4 x float> %i.ni, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.mj, label %.lr.ph463.i, label %.preheader371.i

.preheader371.i:                                  ; preds = %.lr.ph463.i, %bb.j
  %.0297.lcssa.i = phi ptr [ %i.na, %bb.j ], [ %i.oh, %.lr.ph463.i ] ; 2 uses
  %.0294.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.mk, %.lr.ph463.i ] ; 3 uses
  %.18.lcssa.i = phi ptr [ %.17480.i, %bb.j ], [ %i.og, %.lr.ph463.i ] ; 2 uses
  %i.nl = or disjoint i32 %.0294.lcssa.i, 1
  %i.nm = icmp slt i32 %i.nl, %5
  br i1 %i.nm, label %.lr.ph470.i, label %.preheader370.i

.lr.ph463.i:                                      ; preds = %bb.j, %.lr.ph463.i
  %.18462.i = phi ptr [ %i.og, %.lr.ph463.i ], [ %.17480.i, %bb.j ] ; 2 uses
  %.0294461.i = phi i32 [ %i.oi, %.lr.ph463.i ], [ 0, %bb.j ]
  %.0297460.i = phi ptr [ %i.oh, %.lr.ph463.i ], [ %i.na, %bb.j ] ; 3 uses
  %i.nn = load <4 x float>, ptr %.0297460.i, align 1, !tbaa !17
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.0297460.i, i64 %i.m
  %i.np = load <4 x float>, ptr %i.no, align 1, !tbaa !17
  %i.nq = fmul fast <4 x float> %i.nn, %i.nh      ; 2 uses
  %i.nr = fmul fast <4 x float> %i.np, %i.nj      ; 2 uses
  %i.ns = shufflevector <4 x float> %i.nq, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.nt = shufflevector <4 x float> %i.nq, <4 x float> %i.nr, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.nu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ns)
  %i.nv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nt)
  %i.nw = fadd fast <4 x float> %i.nu, %i.ns
  %i.nx = fadd fast <4 x float> %i.nv, %i.nt
  %i.ny = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nw)
  %i.nz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nx)
  %i.oa = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ny, <4 x i32> %i.nz)
  %i.ob = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.oa, <8 x i16> splat (i16 -127))
  %i.oc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ob, <8 x i16> splat (i16 127))
  %i.od = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.oc, <8 x i16> poison)
  %i.oe = bitcast <16 x i8> %i.od to <2 x i64>
  %i.of = extractelement <2 x i64> %i.oe, i64 0
  store i64 %i.of, ptr %.18462.i, align 8, !tbaa !27
  %i.og = getelementptr inbounds nuw i8, ptr %.18462.i, i64 8 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.0297460.i, i64 16 ; 2 uses
  %i.oi = add nuw nsw i32 %.0294461.i, 4          ; 2 uses
  %i.oj = or disjoint i32 %i.oi, 3
  %i.ok = icmp slt i32 %i.oj, %5
  br i1 %i.ok, label %.lr.ph463.i, label %.preheader371.i, !llvm.loop !150

.preheader370.i:                                  ; preds = %.lr.ph470.i, %.preheader371.i
  %.1298.lcssa.i = phi ptr [ %.0297.lcssa.i, %.preheader371.i ], [ %i.qd, %.lr.ph470.i ] ; 8 uses
  %.1295.lcssa.i = phi i32 [ %.0294.lcssa.i, %.preheader371.i ], [ %i.qe, %.lr.ph470.i ] ; 6 uses
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader371.i ], [ %i.qc, %.lr.ph470.i ] ; 8 uses
  %i.ol = icmp slt i32 %.1295.lcssa.i, %5
  br i1 %i.ol, label %.lr.ph477.i.preheader, label %._crit_edge.i

.lr.ph477.i.preheader:                            ; preds = %.preheader370.i
  %i.om = xor i32 %.1295.lcssa.i, -1
  %i.on = add i32 %5, %i.om                       ; 2 uses
  %i.oo = zext i32 %i.on to i64
  %i.op = add nuw nsw i64 %i.oo, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.on, 7
  br i1 %min.iters.check, label %.lr.ph477.i.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph477.i.preheader
  %scevgep = getelementptr i8, ptr %.19.lcssa.i, i64 2
  %i.oq = xor i32 %.1295.lcssa.i, -1
  %i.or = add i32 %5, %i.oq
  %i.os = zext i32 %i.or to i64                   ; 2 uses
  %i.ot = shl nuw nsw i64 %i.os, 1
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.ot ; 2 uses
  %scevgep128 = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.mo
  %i.ou = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.mo
  %scevgep129 = getelementptr i8, ptr %i.ou, i64 4
  %i.ov = shl nuw nsw i64 %i.os, 2                ; 2 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.ov
  %scevgep131 = getelementptr i8, ptr %.1298.lcssa.i, i64 4
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.ov
  %bound0 = icmp ult ptr %.19.lcssa.i, %scevgep130
  %bound1 = icmp ult ptr %scevgep128, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %.19.lcssa.i, %scevgep132
  %bound1134 = icmp ult ptr %.1298.lcssa.i, %scevgep127
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  br i1 %conflict.rdx, label %.lr.ph477.i.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.op, 8589934584              ; 5 uses
  %i.ow = shl nuw nsw i64 %n.vec, 1
  %i.ox = getelementptr i8, ptr %.19.lcssa.i, i64 %i.ow ; 2 uses
  %i.oy = trunc i64 %n.vec to i32
  %i.oz = add i32 %.1295.lcssa.i, %i.oy
  %i.pa = shl nuw nsw i64 %n.vec, 2
  %i.pb = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.pa
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.nd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <8 x float> poison, float %i.nf, i64 0
  %broadcast.splat137 = shufflevector <8 x float> %broadcast.splatinsert136, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.19.lcssa.i, i64 %i.pc
  %i.pd = shl i64 %index, 2
  %next.gep138 = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.pd ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep138, align 4, !tbaa !30, !alias.scope !167
  %i.pe = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %next.gep138, i64 %i.m
  %wide.load139 = load <8 x float>, ptr %i.pf, align 4, !tbaa !30, !alias.scope !168
  %i.pg = fmul fast <8 x float> %wide.load139, %broadcast.splat137
  %i.ph = shufflevector <8 x float> %i.pe, <8 x float> %i.pg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pi = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ph)
  %i.pj = fptosi <16 x float> %i.pi to <16 x i32>
  %i.pk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pj, <16 x i32> splat (i32 -127))
  %i.pl = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.pk, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.pl to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !169, !noalias !170
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pm = icmp eq i64 %index.next, %n.vec
  br i1 %i.pm, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.op, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph477.i.preheader185

.lr.ph477.i.preheader185:                         ; preds = %vector.memcheck, %.lr.ph477.i.preheader, %middle.block
  %.20476.i.ph = phi ptr [ %.19.lcssa.i, %vector.memcheck ], [ %.19.lcssa.i, %.lr.ph477.i.preheader ], [ %i.ox, %middle.block ]
  %.2296475.i.ph = phi i32 [ %.1295.lcssa.i, %vector.memcheck ], [ %.1295.lcssa.i, %.lr.ph477.i.preheader ], [ %i.oz, %middle.block ]
  %.2299474.i.ph = phi ptr [ %.1298.lcssa.i, %vector.memcheck ], [ %.1298.lcssa.i, %.lr.ph477.i.preheader ], [ %i.pb, %middle.block ]
  br label %.lr.ph477.i

.lr.ph470.i:                                      ; preds = %.preheader371.i, %.lr.ph470.i
  %.19469.i = phi ptr [ %i.qc, %.lr.ph470.i ], [ %.18.lcssa.i, %.preheader371.i ] ; 2 uses
  %.1295468.i = phi i32 [ %i.qe, %.lr.ph470.i ], [ %.0294.lcssa.i, %.preheader371.i ]
  %.1298467.i = phi ptr [ %i.qd, %.lr.ph470.i ], [ %.0297.lcssa.i, %.preheader371.i ] ; 3 uses
  %i.pn = load i64, ptr %.1298467.i, align 1, !tbaa !17
  %i.po = insertelement <2 x i64> poison, i64 %i.pn, i64 0
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.1298467.i, i64 %i.m
  %i.pq = load i64, ptr %i.pp, align 1, !tbaa !17
  %.uncasted.i = insertelement <2 x i64> %i.po, i64 %i.pq, i64 1
  %i.pr = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.ps = fmul fast <4 x float> %i.nk, %i.pr      ; 2 uses
  %i.pt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ps)
  %i.pu = fadd fast <4 x float> %i.pt, %i.ps
  %i.pv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pu) ; 2 uses
  %i.pw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.pv, <4 x i32> %i.pv)
  %i.px = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pw, <8 x i16> splat (i16 -127))
  %i.py = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.px, <8 x i16> splat (i16 127))
  %i.pz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.py, <8 x i16> poison)
  %i.qa = bitcast <16 x i8> %i.pz to <4 x i32>
  %i.qb = extractelement <4 x i32> %i.qa, i64 0
  store i32 %i.qb, ptr %.19469.i, align 4, !tbaa !28
  %i.qc = getelementptr inbounds nuw i8, ptr %.19469.i, i64 4 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.1298467.i, i64 8 ; 2 uses
  %i.qe = add nuw nsw i32 %.1295468.i, 2          ; 3 uses
  %i.qf = or disjoint i32 %i.qe, 1
  %i.qg = icmp slt i32 %i.qf, %5
  br i1 %i.qg, label %.lr.ph470.i, label %.preheader370.i, !llvm.loop !156

.lr.ph477.i:                                      ; preds = %.lr.ph477.i.preheader185, %.lr.ph477.i
  %.20476.i = phi ptr [ %i.qr, %.lr.ph477.i ], [ %.20476.i.ph, %.lr.ph477.i.preheader185 ] ; 3 uses
  %.2296475.i = phi i32 [ %i.qt, %.lr.ph477.i ], [ %.2296475.i.ph, %.lr.ph477.i.preheader185 ]
  %.2299474.i = phi ptr [ %i.qs, %.lr.ph477.i ], [ %.2299474.i.ph, %.lr.ph477.i.preheader185 ] ; 3 uses
  %i.qh = load float, ptr %.2299474.i, align 4, !tbaa !30
  %i.qi = fmul fast float %i.qh, %i.nd
  %i.qj = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.qi)
  %i.qk = fptosi float %i.qj to i32
  %spec.select.i317365.i = tail call i32 @llvm.smax.i32(i32 %i.qk, i32 -127)
  %.0.i318366.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i317365.i, i32 127)
  %.0.i318.i = trunc nsw i32 %.0.i318366.i to i8
  store i8 %.0.i318.i, ptr %.20476.i, align 1, !tbaa !17
end_hunk_2
begin_hunk_3_@_ZN4ncnn39transpose_pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_:bb.a
  %i.nj = shufflevector <8 x i16> %i.nh, <8 x i16> %i.ni, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nk = shufflevector <8 x i16> %i.nh, <8 x i16> %i.ni, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nl = bitcast <8 x i16> %i.nj to <4 x i32>    ; 2 uses
  %i.nm = bitcast <8 x i16> %i.nk to <4 x i32>    ; 2 uses
  %i.nn = shufflevector <4 x i32> %i.nl, <4 x i32> %i.nm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.no = shufflevector <4 x i32> %i.nl, <4 x i32> %i.nm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.nn, ptr %.9673.i, align 16, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %.9673.i, i64 16
  store <4 x i32> %i.no, ptr %i.np, align 16, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %.9673.i, i64 32 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0465672.i, i64 %.idx498.i
  %i.ns = add nuw nsw i32 %.0474671.i, 8          ; 2 uses
  %i.nt = or disjoint i32 %i.ns, 7
  %i.nu = icmp slt i32 %i.nt, %5
  br i1 %i.nu, label %.lr.ph674.i, label %.loopexit634.i, !llvm.loop !178

bb.k:                                             ; preds = %bb.i
  %i.nv = load ptr, ptr %6, align 8, !tbaa !14
  %i.nw = getelementptr [4 x i8], ptr %i.nv, i64 %i.ky ; 4 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !30
  %i.ny = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oa = getelementptr i8, ptr %i.nw, i64 4
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !30
  %i.oc = insertelement <4 x float> poison, float %i.ob, i64 0
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oe = getelementptr i8, ptr %i.nw, i64 8
  %i.of = load float, ptr %i.oe, align 4, !tbaa !30
  %i.og = insertelement <4 x float> poison, float %i.of, i64 0
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = getelementptr i8, ptr %i.nw, i64 12
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !30
  %i.ok = insertelement <4 x float> poison, float %i.oj, i64 0
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ey, label %.lr.ph680.i, label %.loopexit634.i

.lr.ph680.i:                                      ; preds = %bb.k, %.lr.ph680.i
  %.11679.i = phi ptr [ %i.pu, %.lr.ph680.i ], [ %.8696.i, %bb.k ] ; 2 uses
  %.2467678.i = phi ptr [ %i.pv, %.lr.ph680.i ], [ %i.la, %bb.k ] ; 5 uses
  %.0484677.i = phi i32 [ %i.pw, %.lr.ph680.i ], [ 0, %bb.k ]
  %i.om = load <4 x float>, ptr %.2467678.i, align 16, !tbaa !17
  %i.on = getelementptr inbounds nuw i8, ptr %.2467678.i, i64 16
  %i.oo = load <4 x float>, ptr %i.on, align 16, !tbaa !17
  %i.op = getelementptr inbounds nuw i8, ptr %.2467678.i, i64 32
  %i.oq = load <4 x float>, ptr %i.op, align 16, !tbaa !17
  %i.or = getelementptr inbounds nuw i8, ptr %.2467678.i, i64 48
  %i.os = load <4 x float>, ptr %i.or, align 16, !tbaa !17
  %i.ot = fmul fast <4 x float> %i.om, %i.nz      ; 2 uses
  %i.ou = fmul fast <4 x float> %i.oo, %i.od      ; 2 uses
  %i.ov = fmul fast <4 x float> %i.oq, %i.oh      ; 2 uses
  %i.ow = fmul fast <4 x float> %i.os, %i.ol      ; 2 uses
  %i.ox = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ot)
  %i.oy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ou)
  %i.oz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ov)
  %i.pa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ow)
  %i.pb = fadd fast <4 x float> %i.ox, %i.ot
  %i.pc = fadd fast <4 x float> %i.oy, %i.ou
  %i.pd = fadd fast <4 x float> %i.oz, %i.ov
  %i.pe = fadd fast <4 x float> %i.pa, %i.ow
  %i.pf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pb)
  %i.pg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pc)
  %i.ph = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pd)
  %i.pi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pe)
  %i.pj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.pf, <4 x i32> %i.pg)
  %i.pk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ph, <4 x i32> %i.pi)
  %i.pl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pj, <8 x i16> splat (i16 -127))
  %i.pm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.pl, <8 x i16> splat (i16 127))
  %i.pn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pk, <8 x i16> splat (i16 -127))
  %i.po = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.pn, <8 x i16> splat (i16 127))
  %i.pp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.pm, <8 x i16> %i.po)
  %i.pq = bitcast <16 x i8> %i.pp to <8 x i16>
  %i.pr = shufflevector <8 x i16> %i.pq, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.ps = bitcast <8 x i16> %i.pr to <4 x i32>
  %i.pt = shufflevector <4 x i32> %i.ps, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.pt, ptr %.11679.i, align 16, !tbaa !17
  %i.pu = getelementptr inbounds nuw i8, ptr %.11679.i, i64 16 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.2467678.i, i64 %.idx497.i
  %i.pw = add nuw nsw i32 %.0484677.i, 4          ; 2 uses
  %i.px = or disjoint i32 %i.pw, 3
  %i.py = icmp slt i32 %i.px, %5
  br i1 %i.py, label %.lr.ph680.i, label %.loopexit634.i, !llvm.loop !179

bb.l:                                             ; preds = %bb.i
  %i.pz = load ptr, ptr %6, align 8, !tbaa !14
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %i.ez
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv804.i
  %i.qc = load <4 x float>, ptr %i.qb, align 16, !tbaa !17 ; 5 uses
  br i1 %i.fa, label %.lr.ph686.i, label %.preheader633.i

.preheader633.i:                                  ; preds = %.lr.ph686.i, %bb.l
  %.0485.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.fb, %.lr.ph686.i ] ; 4 uses
  %.4469.lcssa.i = phi ptr [ %i.la, %bb.l ], [ %i.rn, %.lr.ph686.i ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.8696.i, %bb.l ], [ %i.rm, %.lr.ph686.i ] ; 4 uses
  %i.qd = icmp slt i32 %.0485.lcssa.i, %5
  br i1 %i.qd, label %.lr.ph693.i.preheader, label %.loopexit634.i

.lr.ph693.i.preheader:                            ; preds = %.preheader633.i
  %.neg = or disjoint i32 %.0485.lcssa.i, 1
  br i1 %lcmp.mod.not, label %.lr.ph693.i.prol.loopexit, label %.lr.ph693.i.prol

.lr.ph693.i.prol:                                 ; preds = %.lr.ph693.i.preheader
  %i.qe = load <4 x float>, ptr %.4469.lcssa.i, align 1, !tbaa !17
  %i.qf = fmul fast <4 x float> %i.qe, %i.qc      ; 2 uses
  %i.qg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qf)
  %i.qh = fadd fast <4 x float> %i.qg, %i.qf
  %i.qi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qh) ; 2 uses
  %i.qj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qi, <4 x i32> %i.qi)
  %i.qk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qj, <8 x i16> splat (i16 -127))
  %i.ql = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qk, <8 x i16> splat (i16 127))
  %i.qm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ql, <8 x i16> poison)
  %i.qn = bitcast <16 x i8> %i.qm to <4 x i32>
  %i.qo = extractelement <4 x i32> %i.qn, i64 0
  store i32 %i.qo, ptr %.13.lcssa.i, align 4, !tbaa !28
  %i.qp = getelementptr inbounds nuw i8, ptr %.13.lcssa.i, i64 4 ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.4469.lcssa.i, i64 %i.m
  %i.qr = or disjoint i32 %.0485.lcssa.i, 1
  br label %.lr.ph693.i.prol.loopexit

.lr.ph693.i.prol.loopexit:                        ; preds = %.lr.ph693.i.prol, %.lr.ph693.i.preheader
  %.lcssa165.unr = phi ptr [ poison, %.lr.ph693.i.preheader ], [ %i.qp, %.lr.ph693.i.prol ]
  %.14692.i.unr = phi ptr [ %.13.lcssa.i, %.lr.ph693.i.preheader ], [ %i.qp, %.lr.ph693.i.prol ]
  %.5470691.i.unr = phi ptr [ %.4469.lcssa.i, %.lr.ph693.i.preheader ], [ %i.qq, %.lr.ph693.i.prol ]
  %.1486690.i.unr = phi i32 [ %.0485.lcssa.i, %.lr.ph693.i.preheader ], [ %i.qr, %.lr.ph693.i.prol ]
  %i.qs = icmp eq i32 %5, %.neg
  br i1 %i.qs, label %.loopexit634.i, label %.lr.ph693.i

.lr.ph686.i:                                      ; preds = %bb.l, %.lr.ph686.i
  %.13685.i = phi ptr [ %i.rm, %.lr.ph686.i ], [ %.8696.i, %bb.l ] ; 2 uses
  %.4469684.i = phi ptr [ %i.rn, %.lr.ph686.i ], [ %i.la, %bb.l ] ; 3 uses
  %.0485683.i = phi i32 [ %i.ro, %.lr.ph686.i ], [ 0, %bb.l ]
  %i.qt = load <4 x float>, ptr %.4469684.i, align 1, !tbaa !17
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.4469684.i, i64 %i.m
  %i.qv = load <4 x float>, ptr %i.qu, align 1, !tbaa !17
  %i.qw = fmul fast <4 x float> %i.qt, %i.qc      ; 2 uses
  %i.qx = fmul fast <4 x float> %i.qv, %i.qc      ; 2 uses
  %i.qy = shufflevector <4 x float> %i.qw, <4 x float> %i.qx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qz = shufflevector <4 x float> %i.qw, <4 x float> %i.qx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ra = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qy)
  %i.rb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qz)
  %i.rc = fadd fast <4 x float> %i.ra, %i.qy
  %i.rd = fadd fast <4 x float> %i.rb, %i.qz
  %i.re = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rc)
  %i.rf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rd)
  %i.rg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.re, <4 x i32> %i.rf)
  %i.rh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rg, <8 x i16> splat (i16 -127))
  %i.ri = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rh, <8 x i16> splat (i16 127))
  %i.rj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ri, <8 x i16> poison)
  %i.rk = bitcast <16 x i8> %i.rj to <2 x i64>
  %i.rl = extractelement <2 x i64> %i.rk, i64 0
  store i64 %i.rl, ptr %.13685.i, align 8, !tbaa !27
  %i.rm = getelementptr inbounds nuw i8, ptr %.13685.i, i64 8 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.4469684.i, i64 %.idx496.i ; 2 uses
  %i.ro = add nuw nsw i32 %.0485683.i, 2          ; 2 uses
  %i.rp = or disjoint i32 %i.ro, 1
  %i.rq = icmp slt i32 %i.rp, %5
  br i1 %i.rq, label %.lr.ph686.i, label %.preheader633.i, !llvm.loop !180

.lr.ph693.i:                                      ; preds = %.lr.ph693.i.prol.loopexit, %.lr.ph693.i
  %.14692.i = phi ptr [ %i.sp, %.lr.ph693.i ], [ %.14692.i.unr, %.lr.ph693.i.prol.loopexit ] ; 3 uses
  %.5470691.i = phi ptr [ %i.sq, %.lr.ph693.i ], [ %.5470691.i.unr, %.lr.ph693.i.prol.loopexit ] ; 2 uses
  %.1486690.i = phi i32 [ %i.sr, %.lr.ph693.i ], [ %.1486690.i.unr, %.lr.ph693.i.prol.loopexit ]
  %i.rr = load <4 x float>, ptr %.5470691.i, align 1, !tbaa !17
  %i.rs = fmul fast <4 x float> %i.rr, %i.qc      ; 2 uses
  %i.rt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.rs)
  %i.ru = fadd fast <4 x float> %i.rt, %i.rs
  %i.rv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ru) ; 2 uses
  %i.rw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rv, <4 x i32> %i.rv)
  %i.rx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rw, <8 x i16> splat (i16 -127))
  %i.ry = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rx, <8 x i16> splat (i16 127))
  %i.rz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ry, <8 x i16> poison)
  %i.sa = bitcast <16 x i8> %i.rz to <4 x i32>
  %i.sb = extractelement <4 x i32> %i.sa, i64 0
  store i32 %i.sb, ptr %.14692.i, align 4, !tbaa !28
  %i.sc = getelementptr inbounds nuw i8, ptr %.14692.i, i64 4
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.5470691.i, i64 %i.m ; 2 uses
  %i.se = load <4 x float>, ptr %i.sd, align 1, !tbaa !17
  %i.sf = fmul fast <4 x float> %i.se, %i.qc      ; 2 uses
  %i.sg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sf)
  %i.sh = fadd fast <4 x float> %i.sg, %i.sf
  %i.si = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sh) ; 2 uses
  %i.sj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.si, <4 x i32> %i.si)
  %i.sk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sj, <8 x i16> splat (i16 -127))
  %i.sl = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sk, <8 x i16> splat (i16 127))
  %i.sm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sl, <8 x i16> poison)
  %i.sn = bitcast <16 x i8> %i.sm to <4 x i32>
  %i.so = extractelement <4 x i32> %i.sn, i64 0
  store i32 %i.so, ptr %i.sc, align 4, !tbaa !28
  %i.sp = getelementptr inbounds nuw i8, ptr %.14692.i, i64 8 ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.m
  %i.sr = add nuw nsw i32 %.1486690.i, 2          ; 2 uses
  %exitcond803.not.i.1 = icmp eq i32 %i.sr, %5
  br i1 %exitcond803.not.i.1, label %.loopexit634.i, label %.lr.ph693.i, !llvm.loop !181

.loopexit634.i:                                   ; preds = %.lr.ph693.i.prol.loopexit, %.lr.ph693.i, %.lr.ph680.i, %.lr.ph674.i, %.preheader633.i, %bb.k, %bb.j, %bb.i
  %.15.i = phi ptr [ %.8696.i, %bb.i ], [ %.13.lcssa.i, %.preheader633.i ], [ %i.nq, %.lr.ph674.i ], [ %i.pu, %.lr.ph680.i ], [ %.8696.i, %bb.k ], [ %.8696.i, %bb.j ], [ %.lcssa165.unr, %.lr.ph693.i.prol.loopexit ], [ %i.sp, %.lr.ph693.i ] ; 2 uses
  %indvars.iv.next805.i = add nuw nsw i64 %indvars.iv804.i, 4 ; 3 uses
  %i.ss = icmp slt i64 %indvars.iv.next805.i, %invariant.op.i
  br i1 %i.ss, label %bb.i, label %.preheader632.loopexit.i, !llvm.loop !182

.preheader625.loopexit.i:                         ; preds = %.loopexit628.i
  %i.st = trunc nuw nsw i64 %indvars.iv.next809.i to i32
  br label %.preheader625.i

.preheader625.i:                                  ; preds = %.preheader625.loopexit.i, %.preheader632.i
  %.2446.lcssa.i = phi i32 [ %.1445.lcssa.i, %.preheader632.i ], [ %i.st, %.preheader625.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader632.i ], [ %.24.i, %.preheader625.loopexit.i ]
  %i.su = icmp slt i32 %.2446.lcssa.i, %3
  br i1 %i.su, label %.lr.ph762.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph762.i:                                      ; preds = %.preheader625.i
  %i.sv = sext i32 %4 to i64
  %i.sw = mul i64 %i.m, %i.sv
  %i.sx = icmp sgt i32 %5, 7
  %.idx489.i = shl i64 %i.m, 5
  %i.sy = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx488.i = shl i64 %i.m, 4                    ; 2 uses
  %i.sz = trunc i64 %i.m to i32
  %i.ta = insertelement <4 x i32> poison, i32 %i.sz, i64 0
  %i.tb = shufflevector <4 x i32> %i.ta, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tc = mul <4 x i32> %i.tb, <i32 0, i32 1, i32 2, i32 3>
  %i.td = and i32 %5, -4
  %i.te = sext i32 %.2446.lcssa.i to i64
  %i.tf = sext i32 %2 to i64
  %i.tg = sext i32 %i.d to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %xtraiter175 = and i32 %5, 1
  %lcmp.mod176.not = icmp eq i32 %xtraiter175, 0
  br label %bb.q

bb.m:                                             ; preds = %.loopexit628.i, %.lr.ph733.i
  %indvars.iv808.i = phi i64 [ %i.ks, %.lr.ph733.i ], [ %indvars.iv.next809.i, %.loopexit628.i ] ; 2 uses
  %.16732.i = phi ptr [ %.8.lcssa.i, %.lr.ph733.i ], [ %.24.i, %.loopexit628.i ] ; 7 uses
  %i.th = load ptr, ptr %0, align 8, !tbaa !14
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ko
  %i.tj = add nsw i64 %indvars.iv808.i, %i.ku     ; 4 uses
  %i.tk = mul nsw i64 %i.tj, %i.kv
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.tk ; 4 uses
  switch i32 %i.d, label %.loopexit628.i [
    i32 8, label %bb.n
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.tm = load ptr, ptr %6, align 8, !tbaa !14
  %i.tn = getelementptr [4 x i8], ptr %i.tm, i64 %i.tj ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !30
  %i.tp = insertelement <8 x float> poison, float %i.to, i64 0
  %i.tq = shufflevector <8 x float> %i.tp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tr = getelementptr i8, ptr %i.tn, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !30
  %i.tt = insertelement <8 x float> poison, float %i.ts, i64 0
  %i.tu = shufflevector <8 x float> %i.tt, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.kp, label %.lr.ph703.i, label %.loopexit628.i

.lr.ph703.i:                                      ; preds = %bb.n, %.lr.ph703.i
  %.17702.i = phi ptr [ %i.ur, %.lr.ph703.i ], [ %.16732.i, %bb.n ] ; 2 uses
  %.0476701.i = phi i32 [ %i.ut, %.lr.ph703.i ], [ 0, %bb.n ]
  %.0477700.i = phi ptr [ %i.us, %.lr.ph703.i ], [ %i.tl, %bb.n ] ; 3 uses
  %i.tv = load <8 x float>, ptr %.0477700.i, align 32, !tbaa !17
  %i.tw = getelementptr inbounds nuw i8, ptr %.0477700.i, i64 32
  %i.tx = load <8 x float>, ptr %i.tw, align 32, !tbaa !17
  %i.ty = fmul fast <8 x float> %i.tv, %i.tq      ; 2 uses
  %i.tz = fmul fast <8 x float> %i.tx, %i.tu      ; 2 uses
  %i.ua = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ty)
  %i.ub = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tz)
  %i.uc = fadd fast <8 x float> %i.ua, %i.ty
  %i.ud = fadd fast <8 x float> %i.ub, %i.tz
  %i.ue = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uc)
  %i.uf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ud)
  %i.ug = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ue, <8 x i32> %i.uf)
  %i.uh = bitcast <16 x i16> %i.ug to <4 x i64>
  %i.ui = shufflevector <4 x i64> %i.uh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uj = bitcast <4 x i64> %i.ui to <16 x i16>
  %i.uk = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uj, <16 x i16> splat (i16 -127))
  %i.ul = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.uk, <16 x i16> splat (i16 127))
  %i.um = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ul, <16 x i16> poison)
  %i.un = bitcast <32 x i8> %i.um to <8 x i32>
  %i.uo = shufflevector <8 x i32> %i.un, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.up = bitcast <4 x i32> %i.uo to <8 x i16>
  %i.uq = shufflevector <8 x i16> %i.up, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.uq, ptr %.17702.i, align 16, !tbaa !17
  %i.ur = getelementptr inbounds nuw i8, ptr %.17702.i, i64 16 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0477700.i, i64 %.idx495.i
  %i.ut = add nuw nsw i32 %.0476701.i, 8          ; 2 uses
  %i.uu = or disjoint i32 %i.ut, 7
  %i.uv = icmp slt i32 %i.uu, %5
  br i1 %i.uv, label %.lr.ph703.i, label %.loopexit628.i, !llvm.loop !183

bb.o:                                             ; preds = %bb.m
  %i.uw = load ptr, ptr %6, align 8, !tbaa !14
  %i.ux = getelementptr [4 x i8], ptr %i.uw, i64 %i.tj ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !30
  %i.uz = insertelement <4 x float> poison, float %i.uy, i64 0 ; 2 uses
  %i.va = getelementptr i8, ptr %i.ux, i64 4
  %i.vb = load float, ptr %i.va, align 4, !tbaa !30
  %i.vc = insertelement <4 x float> poison, float %i.vb, i64 0 ; 2 uses
  br i1 %i.kq, label %.lr.ph709.i.preheader, label %.loopexit628.i

.lr.ph709.i.preheader:                            ; preds = %bb.o
  %i.vd = shufflevector <4 x float> %i.uz, <4 x float> %i.vc, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.ve = shufflevector <4 x float> %i.uz, <4 x float> %i.vc, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph709.i

.lr.ph709.i:                                      ; preds = %.lr.ph709.i.preheader, %.lr.ph709.i
  %.19708.i = phi ptr [ %i.vy, %.lr.ph709.i ], [ %.16732.i, %.lr.ph709.i.preheader ] ; 2 uses
  %.0475707.i = phi i32 [ %i.wa, %.lr.ph709.i ], [ 0, %.lr.ph709.i.preheader ]
  %.2479706.i = phi ptr [ %i.vz, %.lr.ph709.i ], [ %i.tl, %.lr.ph709.i.preheader ] ; 3 uses
  %i.vf = load <4 x float>, ptr %.2479706.i, align 16, !tbaa !17 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.2479706.i, i64 16
  %i.vh = load <4 x float>, ptr %i.vg, align 16, !tbaa !17 ; 2 uses
  %i.vi = shufflevector <4 x float> %i.vf, <4 x float> %i.vh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vj = fmul fast <4 x float> %i.vi, %i.vd      ; 2 uses
  %i.vk = shufflevector <4 x float> %i.vf, <4 x float> %i.vh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.vl = fmul fast <4 x float> %i.vk, %i.ve      ; 2 uses
  %i.vm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vj)
  %i.vn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vl)
  %i.vo = fadd fast <4 x float> %i.vm, %i.vj
  %i.vp = fadd fast <4 x float> %i.vn, %i.vl
  %i.vq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vo)
  %i.vr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vp)
  %i.vs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vq, <4 x i32> %i.vr)
  %i.vt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vs, <8 x i16> splat (i16 -127))
  %i.vu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vt, <8 x i16> splat (i16 127))
  %i.vv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vu, <8 x i16> poison)
  %i.vw = bitcast <16 x i8> %i.vv to <2 x i64>
  %i.vx = extractelement <2 x i64> %i.vw, i64 0
  store i64 %i.vx, ptr %.19708.i, align 8, !tbaa !27
  %i.vy = getelementptr inbounds nuw i8, ptr %.19708.i, i64 8 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.2479706.i, i64 %.idx494.i
  %i.wa = add nuw nsw i32 %.0475707.i, 4          ; 2 uses
  %i.wb = or disjoint i32 %i.wa, 3
  %i.wc = icmp slt i32 %i.wb, %5
  br i1 %i.wc, label %.lr.ph709.i, label %.loopexit628.i, !llvm.loop !184

bb.p:                                             ; preds = %bb.m
  %i.wd = load ptr, ptr %6, align 8, !tbaa !14
  %i.we = getelementptr [4 x i8], ptr %i.wd, i64 %i.tj ; 2 uses
  %i.wf = load float, ptr %i.we, align 4, !tbaa !30 ; 2 uses
  %i.wg = getelementptr i8, ptr %i.we, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !30 ; 2 uses
  %i.wi = insertelement <4 x float> poison, float %i.wf, i64 0 ; 2 uses
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = insertelement <4 x float> poison, float %i.wh, i64 0 ; 2 uses
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wm = shufflevector <4 x float> %i.wi, <4 x float> %i.wk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.kq, label %.lr.ph715.i, label %.preheader629.i

.preheader629.i:                                  ; preds = %.lr.ph715.i, %bb.p
  %.4481.lcssa.i = phi ptr [ %i.tl, %bb.p ], [ %i.xz, %.lr.ph715.i ] ; 2 uses
  %.0471.lcssa.i = phi i32 [ 0, %bb.p ], [ %i.kr, %.lr.ph715.i ] ; 3 uses
  %.21.lcssa.i = phi ptr [ %.16732.i, %bb.p ], [ %i.xy, %.lr.ph715.i ] ; 2 uses
  %i.wn = or disjoint i32 %.0471.lcssa.i, 1
  %i.wo = icmp slt i32 %i.wn, %5
  br i1 %i.wo, label %.lr.ph722.i, label %.preheader627.i

.lr.ph715.i:                                      ; preds = %bb.p, %.lr.ph715.i
  %.21714.i = phi ptr [ %i.xy, %.lr.ph715.i ], [ %.16732.i, %bb.p ] ; 2 uses
  %.0471713.i = phi i32 [ %i.ya, %.lr.ph715.i ], [ 0, %bb.p ]
  %.4481712.i = phi ptr [ %i.xz, %.lr.ph715.i ], [ %i.tl, %bb.p ] ; 5 uses
  %i.wp = load i64, ptr %.4481712.i, align 1, !tbaa !17
  %i.wq = insertelement <2 x i64> poison, i64 %i.wp, i64 0
  %i.wr = bitcast <2 x i64> %i.wq to <4 x float>
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %.4481712.i, i64 %i.m
  %i.wt = load i64, ptr %i.ws, align 1, !tbaa !17
  %i.wu = insertelement <2 x i64> poison, i64 %i.wt, i64 0
  %i.wv = bitcast <2 x i64> %i.wu to <4 x float>
  %i.ww = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx491.i
  %i.wx = load i64, ptr %i.ww, align 1, !tbaa !17
  %i.wy = insertelement <2 x i64> poison, i64 %i.wx, i64 0
  %i.wz = bitcast <2 x i64> %i.wy to <4 x float>
  %i.xa = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx492.i
  %i.xb = load i64, ptr %i.xa, align 1, !tbaa !17
  %i.xc = insertelement <2 x i64> poison, i64 %i.xb, i64 0
  %i.xd = bitcast <2 x i64> %i.xc to <4 x float>
  %i.xe = shufflevector <4 x float> %i.wr, <4 x float> %i.wv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xf = shufflevector <4 x float> %i.wz, <4 x float> %i.xd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xg = shufflevector <4 x float> %i.xe, <4 x float> %i.xf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xh = shufflevector <4 x float> %i.xe, <4 x float> %i.xf, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.xi = fmul fast <4 x float> %i.wj, %i.xg      ; 2 uses
  %i.xj = fmul fast <4 x float> %i.wl, %i.xh      ; 2 uses
  %i.xk = shufflevector <4 x float> %i.xi, <4 x float> %i.xj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.xl = shufflevector <4 x float> %i.xi, <4 x float> %i.xj, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.xm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xk)
  %i.xn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xl)
  %i.xo = fadd fast <4 x float> %i.xm, %i.xk
  %i.xp = fadd fast <4 x float> %i.xn, %i.xl
  %i.xq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xo)
  %i.xr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xp)
  %i.xs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.xq, <4 x i32> %i.xr)
  %i.xt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xs, <8 x i16> splat (i16 -127))
  %i.xu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xt, <8 x i16> splat (i16 127))
  %i.xv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xu, <8 x i16> poison)
  %i.xw = bitcast <16 x i8> %i.xv to <2 x i64>
  %i.xx = extractelement <2 x i64> %i.xw, i64 0
  store i64 %i.xx, ptr %.21714.i, align 8, !tbaa !27
  %i.xy = getelementptr inbounds nuw i8, ptr %.21714.i, i64 8 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx494.i ; 2 uses
  %i.ya = add nuw nsw i32 %.0471713.i, 4          ; 2 uses
  %i.yb = or disjoint i32 %i.ya, 3
  %i.yc = icmp slt i32 %i.yb, %5
end_hunk_3
begin_hunk_4_@_ZN4ncnn29pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif:bb.a
  %.1263376.i = phi ptr [ %i.ie, %.lr.ph378.i ], [ %.0262.lcssa.i, %.preheader367.i ] ; 2 uses
  %.1271375.i = phi i32 [ %i.if, %.lr.ph378.i ], [ %.0270.lcssa.i, %.preheader367.i ]
  %i.hp = load <8 x float>, ptr %.1263376.i, align 32, !tbaa !17
  %i.hq = fmul fast <8 x float> %i.hp, %i.s       ; 2 uses
  %i.hr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.hq)
  %i.hs = fadd fast <8 x float> %i.hr, %i.hq
  %i.ht = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hs)
  %i.hu = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ht, <8 x i32> poison)
  %i.hv = bitcast <16 x i16> %i.hu to <8 x i32>
  %i.hw = shufflevector <8 x i32> %i.hv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hx = bitcast <4 x i32> %i.hw to <8 x i16>
  %i.hy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hx, <8 x i16> splat (i16 -127))
  %i.hz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hy, <8 x i16> splat (i16 127))
  %i.ia = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hz, <8 x i16> poison)
  %i.ib = bitcast <16 x i8> %i.ia to <2 x i64>
  %i.ic = extractelement <2 x i64> %i.ib, i64 0
  store i64 %i.ic, ptr %.2377.i, align 8, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %.2377.i, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.1263376.i, i64 32
  %i.if = add nuw nsw i32 %.1271375.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.if, %5
  br i1 %exitcond.not.i, label %.loopexit362.i, label %.lr.ph378.i, !llvm.loop !200

.preheader366.i:                                  ; preds = %bb.i
  br i1 %i.t, label %.lr.ph384.i, label %.preheader364.i

.preheader364.i:                                  ; preds = %.lr.ph384.i, %.preheader366.i
  %.0278.lcssa.i = phi i32 [ 0, %.preheader366.i ], [ %i.y, %.lr.ph384.i ] ; 2 uses
  %.3265.lcssa.i = phi ptr [ %i.gm, %.preheader366.i ], [ %i.je, %.lr.ph384.i ]
  %.4.lcssa.i = phi ptr [ %.0256407.i, %.preheader366.i ], [ %i.jd, %.lr.ph384.i ] ; 2 uses
  %i.ig = icmp slt i32 %.0278.lcssa.i, %5
  br i1 %i.ig, label %.lr.ph391.i, label %.loopexit362.i

.lr.ph384.i:                                      ; preds = %.preheader366.i, %.lr.ph384.i
  %.4383.i = phi ptr [ %i.jd, %.lr.ph384.i ], [ %.0256407.i, %.preheader366.i ] ; 2 uses
  %.3265382.i = phi ptr [ %i.je, %.lr.ph384.i ], [ %i.gm, %.preheader366.i ] ; 3 uses
  %.0278381.i = phi i32 [ %i.jf, %.lr.ph384.i ], [ 0, %.preheader366.i ]
  %i.ih = load <8 x float>, ptr %.3265382.i, align 1, !tbaa !17
  %i.ii = getelementptr inbounds nuw i8, ptr %.3265382.i, i64 %.idx292.i
  %i.ij = load <8 x float>, ptr %i.ii, align 1, !tbaa !17
  %i.ik = fmul fast <8 x float> %i.ih, %i.s       ; 2 uses
  %i.il = fmul fast <8 x float> %i.ij, %i.s       ; 2 uses
  %i.im = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ik)
  %i.in = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.il)
  %i.io = fadd fast <8 x float> %i.im, %i.ik
  %i.ip = fadd fast <8 x float> %i.in, %i.il
  %i.iq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.io)
  %i.ir = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ip)
  %i.is = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.iq, <8 x i32> %i.ir)
  %i.it = bitcast <16 x i16> %i.is to <4 x i64>
  %i.iu = shufflevector <4 x i64> %i.it, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.iv = bitcast <4 x i64> %i.iu to <16 x i16>
  %i.iw = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.iv, <16 x i16> splat (i16 -127))
  %i.ix = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.iw, <16 x i16> splat (i16 127))
  %i.iy = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ix, <16 x i16> poison)
  %i.iz = bitcast <32 x i8> %i.iy to <8 x i32>
  %i.ja = shufflevector <8 x i32> %i.iz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jb = bitcast <4 x i32> %i.ja to <16 x i8>
  %i.jc = shufflevector <16 x i8> %i.jb, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 8, i32 12, i32 9, i32 13, i32 10, i32 14, i32 11, i32 15>
  store <16 x i8> %i.jc, ptr %.4383.i, align 1, !tbaa !17
  %i.jd = getelementptr inbounds nuw i8, ptr %.4383.i, i64 16 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.3265382.i, i64 32 ; 2 uses
  %i.jf = add nuw nsw i32 %.0278381.i, 2          ; 2 uses
  %i.jg = or disjoint i32 %i.jf, 1
  %i.jh = icmp slt i32 %i.jg, %5
  br i1 %i.jh, label %.lr.ph384.i, label %.preheader364.i, !llvm.loop !201

.lr.ph391.i:                                      ; preds = %.preheader364.i, %.lr.ph391.i
  %.5390.i = phi ptr [ %i.jz, %.lr.ph391.i ], [ %.4.lcssa.i, %.preheader364.i ] ; 2 uses
  %.4266389.i = phi ptr [ %i.ka, %.lr.ph391.i ], [ %.3265.lcssa.i, %.preheader364.i ] ; 3 uses
  %.1279388.i = phi i32 [ %i.kb, %.lr.ph391.i ], [ %.0278.lcssa.i, %.preheader364.i ]
  %i.ji = load <4 x float>, ptr %.4266389.i, align 16, !tbaa !17
  %i.jj = getelementptr inbounds nuw i8, ptr %.4266389.i, i64 %.idx292.i
  %i.jk = load <4 x float>, ptr %i.jj, align 16, !tbaa !17
  %i.jl = shufflevector <4 x float> %i.ji, <4 x float> %i.jk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jm = fmul fast <8 x float> %i.jl, %i.s       ; 2 uses
  %i.jn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jm)
  %i.jo = fadd fast <8 x float> %i.jn, %i.jm
  %i.jp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jo)
  %i.jq = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.jp, <8 x i32> poison)
  %i.jr = bitcast <16 x i16> %i.jq to <8 x i32>
  %i.js = shufflevector <8 x i32> %i.jr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jt = bitcast <4 x i32> %i.js to <8 x i16>
  %i.ju = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jt, <8 x i16> splat (i16 -127))
  %i.jv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ju, <8 x i16> splat (i16 127))
  %i.jw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jv, <8 x i16> poison)
  %i.jx = bitcast <16 x i8> %i.jw to <2 x i64>
  %i.jy = extractelement <2 x i64> %i.jx, i64 0
  store i64 %i.jy, ptr %.5390.i, align 8, !tbaa !27
  %i.jz = getelementptr inbounds nuw i8, ptr %.5390.i, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.4266389.i, i64 16
  %i.kb = add nuw nsw i32 %.1279388.i, 1          ; 2 uses
  %exitcond518.not.i = icmp eq i32 %i.kb, %5
  br i1 %exitcond518.not.i, label %.loopexit362.i, label %.lr.ph391.i, !llvm.loop !202

.preheader363.i:                                  ; preds = %bb.i
  br i1 %i.t, label %.lr.ph397.i, label %.preheader361.i

.preheader361.i:                                  ; preds = %.lr.ph397.i, %.preheader363.i
  %.0280.lcssa.i = phi i32 [ 0, %.preheader363.i ], [ %i.y, %.lr.ph397.i ] ; 2 uses
  %.6268.lcssa.i = phi ptr [ %i.gm, %.preheader363.i ], [ %i.la, %.lr.ph397.i ]
  %.7.lcssa.i = phi ptr [ %.0256407.i, %.preheader363.i ], [ %i.kz, %.lr.ph397.i ] ; 2 uses
  %i.kc = icmp slt i32 %.0280.lcssa.i, %5
  br i1 %i.kc, label %.lr.ph404.i, label %.loopexit362.i

.lr.ph397.i:                                      ; preds = %.preheader363.i, %.lr.ph397.i
  %.7396.i = phi ptr [ %i.kz, %.lr.ph397.i ], [ %.0256407.i, %.preheader363.i ] ; 2 uses
  %.6268395.i = phi ptr [ %i.la, %.lr.ph397.i ], [ %i.gm, %.preheader363.i ] ; 3 uses
  %.0280394.i = phi i32 [ %i.lb, %.lr.ph397.i ], [ 0, %.preheader363.i ]
  %i.kd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6268395.i, <8 x i32> %i.x, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ke = getelementptr inbounds nuw i8, ptr %.6268395.i, i64 4
  %i.kf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ke, <8 x i32> %i.x, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.kg = fmul fast <8 x float> %i.kd, %i.s       ; 2 uses
  %i.kh = fmul fast <8 x float> %i.kf, %i.s       ; 2 uses
  %i.ki = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kg)
  %i.kj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kh)
  %i.kk = fadd fast <8 x float> %i.ki, %i.kg
  %i.kl = fadd fast <8 x float> %i.kj, %i.kh
  %i.km = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kk)
  %i.kn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kl)
  %i.ko = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.km, <8 x i32> %i.kn)
  %i.kp = bitcast <16 x i16> %i.ko to <4 x i64>
  %i.kq = shufflevector <4 x i64> %i.kp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.kr = bitcast <4 x i64> %i.kq to <16 x i16>
  %i.ks = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.kr, <16 x i16> splat (i16 -127))
  %i.kt = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ks, <16 x i16> splat (i16 127))
  %i.ku = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.kt, <16 x i16> poison)
  %i.kv = bitcast <32 x i8> %i.ku to <8 x i32>
  %i.kw = shufflevector <8 x i32> %i.kv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kx = bitcast <4 x i32> %i.kw to <16 x i8>
  %i.ky = shufflevector <16 x i8> %i.kx, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.ky, ptr %.7396.i, align 1, !tbaa !17
  %i.kz = getelementptr inbounds nuw i8, ptr %.7396.i, i64 16 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.6268395.i, i64 8 ; 2 uses
  %i.lb = add nuw nsw i32 %.0280394.i, 2          ; 2 uses
  %i.lc = or disjoint i32 %i.lb, 1
  %i.ld = icmp slt i32 %i.lc, %5
  br i1 %i.ld, label %.lr.ph397.i, label %.preheader361.i, !llvm.loop !203

.lr.ph404.i:                                      ; preds = %.preheader361.i, %.lr.ph404.i
  %.8403.i = phi ptr [ %i.ls, %.lr.ph404.i ], [ %.7.lcssa.i, %.preheader361.i ] ; 2 uses
  %.7269402.i = phi ptr [ %i.lt, %.lr.ph404.i ], [ %.6268.lcssa.i, %.preheader361.i ] ; 2 uses
  %.1281401.i = phi i32 [ %i.lu, %.lr.ph404.i ], [ %.0280.lcssa.i, %.preheader361.i ]
  %i.le = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.7269402.i, <8 x i32> %i.x, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.lf = fmul fast <8 x float> %i.le, %i.s       ; 2 uses
  %i.lg = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lf)
  %i.lh = fadd fast <8 x float> %i.lg, %i.lf
  %i.li = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lh)
  %i.lj = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.li, <8 x i32> poison)
  %i.lk = bitcast <16 x i16> %i.lj to <8 x i32>
  %i.ll = shufflevector <8 x i32> %i.lk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lm = bitcast <4 x i32> %i.ll to <8 x i16>
  %i.ln = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lm, <8 x i16> splat (i16 -127))
  %i.lo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ln, <8 x i16> splat (i16 127))
  %i.lp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lo, <8 x i16> poison)
  %i.lq = bitcast <16 x i8> %i.lp to <2 x i64>
  %i.lr = extractelement <2 x i64> %i.lq, i64 0
  store i64 %i.lr, ptr %.8403.i, align 8, !tbaa !27
  %i.ls = getelementptr inbounds nuw i8, ptr %.8403.i, i64 8 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.7269402.i, i64 4
  %i.lu = add nuw nsw i32 %.1281401.i, 1          ; 2 uses
  %exitcond519.not.i = icmp eq i32 %i.lu, %5
  br i1 %exitcond519.not.i, label %.loopexit362.i, label %.lr.ph404.i, !llvm.loop !204

.loopexit362.i:                                   ; preds = %.lr.ph404.i, %.lr.ph391.i, %.lr.ph378.i, %.preheader361.i, %.preheader364.i, %.preheader367.i, %bb.i
  %.9.i = phi ptr [ %.0256407.i, %bb.i ], [ %.7.lcssa.i, %.preheader361.i ], [ %i.id, %.lr.ph378.i ], [ %i.jz, %.lr.ph391.i ], [ %.4.lcssa.i, %.preheader364.i ], [ %.1257.lcssa.i, %.preheader367.i ], [ %i.ls, %.lr.ph404.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.lv = or disjoint i64 %indvars.iv.next.i, 7
  %i.lw = icmp samesign ult i64 %i.lv, %i.z
  br i1 %i.lw, label %bb.i, label %.preheader360.loopexit.i, !llvm.loop !205

.preheader353.loopexit.i:                         ; preds = %.loopexit355.i.us37, %.loopexit355.i.us, %.loopexit355.i.preheader
  %.us-phi = phi ptr [ %.0256.lcssa.i, %.loopexit355.i.preheader ], [ %.16.i.us, %.loopexit355.i.us ], [ %.16.i.us38, %.loopexit355.i.us37 ]
  %.us-phi32 = phi i64 [ %i.ax, %.loopexit355.i.preheader ], [ %indvars.iv.next524.i.us, %.loopexit355.i.us ], [ %indvars.iv.next524.i.us39, %.loopexit355.i.us37 ]
  %i.lx = trunc nuw nsw i64 %.us-phi32 to i32
  br label %.preheader353.i

.preheader353.i:                                  ; preds = %.preheader353.loopexit.i, %.preheader360.i
  %.1259.lcssa.i = phi i32 [ %.0258.lcssa.i, %.preheader360.i ], [ %i.lx, %.preheader353.loopexit.i ] ; 3 uses
  %.10.lcssa.i = phi ptr [ %.0256.lcssa.i, %.preheader360.i ], [ %.us-phi, %.preheader353.loopexit.i ] ; 2 uses
  %i.ly = or disjoint i32 %.1259.lcssa.i, 1
  %i.lz = icmp slt i32 %i.ly, %3
  br i1 %i.lz, label %.lr.ph462.i, label %.preheader350.i

.lr.ph462.i:                                      ; preds = %.preheader353.i
  %i.ma = sext i32 %4 to i64
  %i.mb = insertelement <4 x float> poison, float %6, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.md = icmp sgt i32 %5, 3
  %i.me = and i32 %5, -4
  %i.mf = zext nneg i32 %.1259.lcssa.i to i64
  %i.mg = sext i32 %3 to i64
  %i.mh = sext i32 %2 to i64
  %invariant.op575.i = add nsw i64 %i.mg, -1
  %i.mi = shl nuw nsw i64 %i.m, 2                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.j

.preheader350.loopexit.i:                         ; preds = %._crit_edge.i
  %i.mj = trunc nuw nsw i64 %indvars.iv.next528.i to i32
  br label %.preheader350.i

.preheader350.i:                                  ; preds = %.preheader350.loopexit.i, %.preheader353.i
  %.2260.lcssa.i = phi i32 [ %.1259.lcssa.i, %.preheader353.i ], [ %i.mj, %.preheader350.loopexit.i ] ; 2 uses
  %.17.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader353.i ], [ %.20.lcssa.i, %.preheader350.loopexit.i ]
  %i.mk = icmp slt i32 %.2260.lcssa.i, %3
  br i1 %i.mk, label %.lr.ph481.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph481.i:                                      ; preds = %.preheader350.i
  %i.ml = sext i32 %4 to i64
  %i.mm = insertelement <4 x float> poison, float %6, i64 0
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mo = icmp sgt i32 %5, 3
  %i.mp = and i32 %5, -4
  %i.mq = sext i32 %.2260.lcssa.i to i64
  %i.mr = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %broadcast.splatinsert153 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat154 = shufflevector <8 x float> %broadcast.splatinsert153, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert170 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat171 = shufflevector <4 x float> %broadcast.splatinsert170, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph462.i
  %indvars.iv527.i = phi i64 [ %i.mf, %.lr.ph462.i ], [ %indvars.iv.next528.i, %._crit_edge.i ] ; 2 uses
  %.17461.i = phi ptr [ %.10.lcssa.i, %.lr.ph462.i ], [ %.20.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ms = load ptr, ptr %0, align 8, !tbaa !14
  %i.mt = add nsw i64 %indvars.iv527.i, %i.mh
  %i.mu = mul i64 %i.mt, %i.m
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mu
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.ma ; 2 uses
  br i1 %i.md, label %.lr.ph444.i, label %.preheader352.i

.preheader352.i:                                  ; preds = %.lr.ph444.i, %bb.j
  %.0275.lcssa.i = phi ptr [ %i.mw, %bb.j ], [ %i.nt, %.lr.ph444.i ] ; 2 uses
  %.0272.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.me, %.lr.ph444.i ] ; 3 uses
  %.18.lcssa.i = phi ptr [ %.17461.i, %bb.j ], [ %i.ns, %.lr.ph444.i ] ; 2 uses
  %i.mx = or disjoint i32 %.0272.lcssa.i, 1
  %i.my = icmp slt i32 %i.mx, %5
  br i1 %i.my, label %.lr.ph451.i, label %.preheader351.i

.lr.ph444.i:                                      ; preds = %bb.j, %.lr.ph444.i
  %.18443.i = phi ptr [ %i.ns, %.lr.ph444.i ], [ %.17461.i, %bb.j ] ; 2 uses
  %.0272442.i = phi i32 [ %i.nu, %.lr.ph444.i ], [ 0, %bb.j ]
  %.0275441.i = phi ptr [ %i.nt, %.lr.ph444.i ], [ %i.mw, %bb.j ] ; 3 uses
  %i.mz = load <4 x float>, ptr %.0275441.i, align 1, !tbaa !17
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.0275441.i, i64 %i.m
  %i.nb = load <4 x float>, ptr %i.na, align 1, !tbaa !17
  %i.nc = fmul fast <4 x float> %i.mz, %i.mc      ; 2 uses
  %i.nd = fmul fast <4 x float> %i.nb, %i.mc      ; 2 uses
  %i.ne = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.nf = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ng = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ne)
  %i.nh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nf)
  %i.ni = fadd fast <4 x float> %i.ng, %i.ne
  %i.nj = fadd fast <4 x float> %i.nh, %i.nf
  %i.nk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ni)
  %i.nl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nj)
  %i.nm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nk, <4 x i32> %i.nl)
  %i.nn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nm, <8 x i16> splat (i16 -127))
  %i.no = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nn, <8 x i16> splat (i16 127))
  %i.np = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.no, <8 x i16> poison)
  %i.nq = bitcast <16 x i8> %i.np to <2 x i64>
  %i.nr = extractelement <2 x i64> %i.nq, i64 0
  store i64 %i.nr, ptr %.18443.i, align 8, !tbaa !27
  %i.ns = getelementptr inbounds nuw i8, ptr %.18443.i, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0275441.i, i64 16 ; 2 uses
  %i.nu = add nuw nsw i32 %.0272442.i, 4          ; 2 uses
  %i.nv = or disjoint i32 %i.nu, 3
  %i.nw = icmp slt i32 %i.nv, %5
  br i1 %i.nw, label %.lr.ph444.i, label %.preheader352.i, !llvm.loop !206

.preheader351.i:                                  ; preds = %.lr.ph451.i, %.preheader352.i
  %.1276.lcssa.i = phi ptr [ %.0275.lcssa.i, %.preheader352.i ], [ %i.pp, %.lr.ph451.i ] ; 8 uses
  %.1273.lcssa.i = phi i32 [ %.0272.lcssa.i, %.preheader352.i ], [ %i.pq, %.lr.ph451.i ] ; 6 uses
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader352.i ], [ %i.po, %.lr.ph451.i ] ; 8 uses
  %i.nx = icmp slt i32 %.1273.lcssa.i, %5
  br i1 %i.nx, label %.lr.ph458.i.preheader, label %._crit_edge.i

.lr.ph458.i.preheader:                            ; preds = %.preheader351.i
  %i.ny = xor i32 %.1273.lcssa.i, -1
  %i.nz = add i32 %5, %i.ny                       ; 2 uses
  %i.oa = zext i32 %i.nz to i64
  %i.ob = add nuw nsw i64 %i.oa, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.nz, 7
  br i1 %min.iters.check, label %.lr.ph458.i.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph458.i.preheader
  %scevgep = getelementptr i8, ptr %.19.lcssa.i, i64 2
  %i.oc = xor i32 %.1273.lcssa.i, -1
  %i.od = add i32 %5, %i.oc
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = shl nuw nsw i64 %i.oe, 1
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.of ; 2 uses
  %scevgep128 = getelementptr i8, ptr %.1276.lcssa.i, i64 %i.mi
  %i.og = getelementptr i8, ptr %.1276.lcssa.i, i64 %i.mi
  %scevgep129 = getelementptr i8, ptr %i.og, i64 4
  %i.oh = shl nuw nsw i64 %i.oe, 2                ; 2 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.oh
  %scevgep131 = getelementptr i8, ptr %.1276.lcssa.i, i64 4
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.oh
  %bound0 = icmp ult ptr %.19.lcssa.i, %scevgep130
  %bound1 = icmp ult ptr %scevgep128, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %.19.lcssa.i, %scevgep132
  %bound1134 = icmp ult ptr %.1276.lcssa.i, %scevgep127
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  br i1 %conflict.rdx, label %.lr.ph458.i.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ob, 8589934584              ; 5 uses
  %i.oi = shl nuw nsw i64 %n.vec, 1
  %i.oj = getelementptr i8, ptr %.19.lcssa.i, i64 %i.oi ; 2 uses
  %i.ok = trunc i64 %n.vec to i32
  %i.ol = add i32 %.1273.lcssa.i, %i.ok
  %i.om = shl nuw nsw i64 %n.vec, 2
  %i.on = getelementptr i8, ptr %.1276.lcssa.i, i64 %i.om
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.oo = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.19.lcssa.i, i64 %i.oo
  %i.op = shl i64 %index, 2
  %next.gep136 = getelementptr i8, ptr %.1276.lcssa.i, i64 %i.op ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep136, align 4, !tbaa !30, !alias.scope !223
  %i.oq = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %next.gep136, i64 %i.m
  %wide.load137 = load <8 x float>, ptr %i.or, align 4, !tbaa !30, !alias.scope !224
  %i.os = fmul fast <8 x float> %wide.load137, %broadcast.splat
  %i.ot = shufflevector <8 x float> %i.oq, <8 x float> %i.os, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ou = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ot)
  %i.ov = fptosi <16 x float> %i.ou to <16 x i32>
  %i.ow = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ov, <16 x i32> splat (i32 -127))
  %i.ox = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ow, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.ox to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !225, !noalias !226
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oy = icmp eq i64 %index.next, %n.vec
  br i1 %i.oy, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ob, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph458.i.preheader183

.lr.ph458.i.preheader183:                         ; preds = %vector.memcheck, %.lr.ph458.i.preheader, %middle.block
  %.20457.i.ph = phi ptr [ %.19.lcssa.i, %vector.memcheck ], [ %.19.lcssa.i, %.lr.ph458.i.preheader ], [ %i.oj, %middle.block ]
  %.2274456.i.ph = phi i32 [ %.1273.lcssa.i, %vector.memcheck ], [ %.1273.lcssa.i, %.lr.ph458.i.preheader ], [ %i.ol, %middle.block ]
  %.2277455.i.ph = phi ptr [ %.1276.lcssa.i, %vector.memcheck ], [ %.1276.lcssa.i, %.lr.ph458.i.preheader ], [ %i.on, %middle.block ]
  br label %.lr.ph458.i

.lr.ph451.i:                                      ; preds = %.preheader352.i, %.lr.ph451.i
  %.19450.i = phi ptr [ %i.po, %.lr.ph451.i ], [ %.18.lcssa.i, %.preheader352.i ] ; 2 uses
  %.1273449.i = phi i32 [ %i.pq, %.lr.ph451.i ], [ %.0272.lcssa.i, %.preheader352.i ]
  %.1276448.i = phi ptr [ %i.pp, %.lr.ph451.i ], [ %.0275.lcssa.i, %.preheader352.i ] ; 3 uses
  %i.oz = load i64, ptr %.1276448.i, align 1, !tbaa !17
  %i.pa = insertelement <2 x i64> poison, i64 %i.oz, i64 0
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.1276448.i, i64 %i.m
  %i.pc = load i64, ptr %i.pb, align 1, !tbaa !17
  %.uncasted.i = insertelement <2 x i64> %i.pa, i64 %i.pc, i64 1
  %i.pd = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.pe = fmul fast <4 x float> %i.mc, %i.pd      ; 2 uses
  %i.pf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.pe)
  %i.pg = fadd fast <4 x float> %i.pf, %i.pe
  %i.ph = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pg) ; 2 uses
  %i.pi = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ph, <4 x i32> %i.ph)
  %i.pj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pi, <8 x i16> splat (i16 -127))
  %i.pk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.pj, <8 x i16> splat (i16 127))
  %i.pl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.pk, <8 x i16> poison)
  %i.pm = bitcast <16 x i8> %i.pl to <4 x i32>
  %i.pn = extractelement <4 x i32> %i.pm, i64 0
  store i32 %i.pn, ptr %.19450.i, align 4, !tbaa !28
  %i.po = getelementptr inbounds nuw i8, ptr %.19450.i, i64 4 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.1276448.i, i64 8 ; 2 uses
  %i.pq = add nuw nsw i32 %.1273449.i, 2          ; 3 uses
  %i.pr = or disjoint i32 %i.pq, 1
  %i.ps = icmp slt i32 %i.pr, %5
  br i1 %i.ps, label %.lr.ph451.i, label %.preheader351.i, !llvm.loop !212

.lr.ph458.i:                                      ; preds = %.lr.ph458.i.preheader183, %.lr.ph458.i
  %.20457.i = phi ptr [ %i.qd, %.lr.ph458.i ], [ %.20457.i.ph, %.lr.ph458.i.preheader183 ] ; 3 uses
  %.2274456.i = phi i32 [ %i.qf, %.lr.ph458.i ], [ %.2274456.i.ph, %.lr.ph458.i.preheader183 ]
  %.2277455.i = phi ptr [ %i.qe, %.lr.ph458.i ], [ %.2277455.i.ph, %.lr.ph458.i.preheader183 ] ; 3 uses
  %i.pt = load float, ptr %.2277455.i, align 4, !tbaa !30
  %i.pu = fmul fast float %i.pt, %6
  %i.pv = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.pu)
  %i.pw = fptosi float %i.pv to i32
  %spec.select.i295346.i = tail call i32 @llvm.smax.i32(i32 %i.pw, i32 -127)
  %.0.i296347.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i295346.i, i32 127)
  %.0.i296.i = trunc nsw i32 %.0.i296347.i to i8
  store i8 %.0.i296.i, ptr %.20457.i, align 1, !tbaa !17
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.2277455.i, i64 %i.m
  %i.py = load float, ptr %i.px, align 4, !tbaa !30
  %i.pz = fmul fast float %i.py, %6
  %i.qa = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.pz)
  %i.qb = fptosi float %i.qa to i32
  %spec.select.i293348.i = tail call i32 @llvm.smax.i32(i32 %i.qb, i32 -127)
  %.0.i294349.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i293348.i, i32 127)
  %.0.i294.i = trunc nsw i32 %.0.i294349.i to i8
end_hunk_4
begin_hunk_5_@_ZN4ncnn39transpose_pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif:bb.a
  %i.qq = or disjoint i32 %.0404.lcssa.i.us.us.us, 1
  %i.qr = icmp slt i32 %i.qq, %5
  br i1 %i.qr, label %.lr.ph640.i.us.us.us, label %.preheader547.i.us.us.us

.lr.ph640.i.us.us.us:                             ; preds = %.preheader549.i.us.us.us, %.lr.ph640.i.us.us.us
  %.22639.i.us.us.us = phi ptr [ %i.rk, %.lr.ph640.i.us.us.us ], [ %.21.lcssa.i.us.us.us, %.preheader549.i.us.us.us ] ; 2 uses
  %.1405638.i.us.us.us = phi i32 [ %i.rm, %.lr.ph640.i.us.us.us ], [ %.0404.lcssa.i.us.us.us, %.preheader549.i.us.us.us ]
  %.5417637.i.us.us.us = phi ptr [ %i.rl, %.lr.ph640.i.us.us.us ], [ %.4416.lcssa.i.us.us.us, %.preheader549.i.us.us.us ] ; 3 uses
  %i.qs = load i64, ptr %.5417637.i.us.us.us, align 1, !tbaa !17
  %i.qt = insertelement <2 x i64> poison, i64 %i.qs, i64 0
  %i.qu = bitcast <2 x i64> %i.qt to <4 x float>
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.5417637.i.us.us.us, i64 %i.m
  %i.qw = load i64, ptr %i.qv, align 1, !tbaa !17
  %i.qx = insertelement <2 x i64> poison, i64 %i.qw, i64 0
  %i.qy = bitcast <2 x i64> %i.qx to <4 x float>
  %i.qz = shufflevector <4 x float> %i.qu, <4 x float> %i.qy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ra = fmul fast <4 x float> %i.qz, %i.og      ; 2 uses
  %i.rb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ra)
  %i.rc = fadd fast <4 x float> %i.rb, %i.ra
  %i.rd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rc) ; 2 uses
  %i.re = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rd, <4 x i32> %i.rd)
  %i.rf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.re, <8 x i16> splat (i16 -127))
  %i.rg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rf, <8 x i16> splat (i16 127))
  %i.rh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.rg, <8 x i16> poison)
  %i.ri = bitcast <16 x i8> %i.rh to <4 x i32>
  %i.rj = extractelement <4 x i32> %i.ri, i64 0
  store i32 %i.rj, ptr %.22639.i.us.us.us, align 4, !tbaa !28
  %i.rk = getelementptr inbounds nuw i8, ptr %.22639.i.us.us.us, i64 4 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.5417637.i.us.us.us, i64 %.idx423.i ; 2 uses
  %i.rm = add nuw nsw i32 %.1405638.i.us.us.us, 2 ; 3 uses
  %i.rn = or disjoint i32 %i.rm, 1
  %i.ro = icmp slt i32 %i.rn, %5
  br i1 %i.ro, label %.lr.ph640.i.us.us.us, label %.preheader547.i.us.us.us, !llvm.loop !239

.preheader547.i.us.us.us:                         ; preds = %.lr.ph640.i.us.us.us, %.preheader549.i.us.us.us
  %.5417.lcssa.i.us.us.us = phi ptr [ %.4416.lcssa.i.us.us.us, %.preheader549.i.us.us.us ], [ %i.rl, %.lr.ph640.i.us.us.us ]
  %.1405.lcssa.i.us.us.us = phi i32 [ %.0404.lcssa.i.us.us.us, %.preheader549.i.us.us.us ], [ %i.rm, %.lr.ph640.i.us.us.us ] ; 2 uses
  %.22.lcssa.i.us.us.us = phi ptr [ %.21.lcssa.i.us.us.us, %.preheader549.i.us.us.us ], [ %i.rk, %.lr.ph640.i.us.us.us ] ; 2 uses
  %i.rp = icmp slt i32 %.1405.lcssa.i.us.us.us, %5
  br i1 %i.rp, label %.lr.ph647.i.us.us.us, label %.loopexit548.i.us.us.us

.lr.ph647.i.us.us.us:                             ; preds = %.preheader547.i.us.us.us, %.lr.ph647.i.us.us.us
  %.23646.i.us.us.us = phi ptr [ %i.sa, %.lr.ph647.i.us.us.us ], [ %.22.lcssa.i.us.us.us, %.preheader547.i.us.us.us ] ; 3 uses
  %.2406645.i.us.us.us = phi i32 [ %i.sc, %.lr.ph647.i.us.us.us ], [ %.1405.lcssa.i.us.us.us, %.preheader547.i.us.us.us ]
  %.6418644.i.us.us.us = phi ptr [ %i.sb, %.lr.ph647.i.us.us.us ], [ %.5417.lcssa.i.us.us.us, %.preheader547.i.us.us.us ] ; 3 uses
  %i.rq = load float, ptr %.6418644.i.us.us.us, align 4, !tbaa !30
  %i.rr = fmul fast float %i.rq, %6
  %i.rs = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rr)
  %i.rt = fptosi float %i.rs to i32
  %spec.select.i436539.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.rt, i32 -127)
  %.0.i437540.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i436539.i.us.us.us, i32 127)
  %.0.i437.i.us.us.us = trunc nsw i32 %.0.i437540.i.us.us.us to i8
  store i8 %.0.i437.i.us.us.us, ptr %.23646.i.us.us.us, align 1, !tbaa !17
  %i.ru = getelementptr inbounds nuw i8, ptr %.6418644.i.us.us.us, i64 4
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !30
  %i.rw = fmul fast float %i.rv, %6
  %i.rx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rw)
  %i.ry = fptosi float %i.rx to i32
  %spec.select.i434541.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.ry, i32 -127)
  %.0.i435542.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i434541.i.us.us.us, i32 127)
  %.0.i435.i.us.us.us = trunc nsw i32 %.0.i435542.i.us.us.us to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %.23646.i.us.us.us, i64 1
  store i8 %.0.i435.i.us.us.us, ptr %i.rz, align 1, !tbaa !17
  %i.sa = getelementptr inbounds nuw i8, ptr %.23646.i.us.us.us, i64 2 ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.6418644.i.us.us.us, i64 %i.m
  %i.sc = add nuw nsw i32 %.2406645.i.us.us.us, 1 ; 2 uses
  %exitcond746.not.i.us.us.us = icmp eq i32 %i.sc, %5
  br i1 %exitcond746.not.i.us.us.us, label %.loopexit548.i.us.us.us, label %.lr.ph647.i.us.us.us, !llvm.loop !240

.loopexit548.i.us.us.us:                          ; preds = %.lr.ph647.i.us.us.us, %.preheader547.i.us.us.us
  %.24.i.us.us.us = phi ptr [ %.22.lcssa.i.us.us.us, %.preheader547.i.us.us.us ], [ %i.sa, %.lr.ph647.i.us.us.us ] ; 2 uses
  %indvars.iv.next748.i.us.us.us = add nuw nsw i64 %indvars.iv747.i.us.us.us, 2 ; 3 uses
  %i.sd = icmp slt i64 %indvars.iv.next748.i.us.us.us, %invariant.op815.i
  br i1 %i.sd, label %.loopexit551.i.us.us.us, label %.preheader545.loopexit.i, !llvm.loop !241

.loopexit551.i.us:                                ; preds = %.loopexit551.i.us.preheader, %.loopexit548.i.loopexit8.us
  %indvars.iv747.i.us = phi i64 [ %indvars.iv.next748.i.us, %.loopexit548.i.loopexit8.us ], [ %i.ok, %.loopexit551.i.us.preheader ] ; 2 uses
  %.16650.i.us = phi ptr [ %i.ta, %.loopexit548.i.loopexit8.us ], [ %.8.lcssa.i, %.loopexit551.i.us.preheader ]
  %i.se = add nsw i64 %indvars.iv747.i.us, %i.om
  %i.sf = mul nsw i64 %i.se, %i.on
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.oq, i64 %i.sf
  br label %.lr.ph627.i.us

.lr.ph627.i.us:                                   ; preds = %.lr.ph627.i.us, %.loopexit551.i.us
  %.19626.i.us = phi ptr [ %i.ta, %.lr.ph627.i.us ], [ %.16650.i.us, %.loopexit551.i.us ] ; 2 uses
  %.0408625.i.us = phi i32 [ %i.tc, %.lr.ph627.i.us ], [ 0, %.loopexit551.i.us ]
  %.2414624.i.us = phi ptr [ %i.tb, %.lr.ph627.i.us ], [ %i.sg, %.loopexit551.i.us ] ; 3 uses
  %i.sh = load <4 x float>, ptr %.2414624.i.us, align 16, !tbaa !17
  %i.si = getelementptr inbounds nuw i8, ptr %.2414624.i.us, i64 16
  %i.sj = load <4 x float>, ptr %i.si, align 16, !tbaa !17
  %i.sk = fmul fast <4 x float> %i.sh, %i.og      ; 2 uses
  %i.sl = fmul fast <4 x float> %i.sj, %i.og      ; 2 uses
  %i.sm = shufflevector <4 x float> %i.sk, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.sn = shufflevector <4 x float> %i.sk, <4 x float> %i.sl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.so = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sm)
  %i.sp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sn)
  %i.sq = fadd fast <4 x float> %i.so, %i.sm
  %i.sr = fadd fast <4 x float> %i.sp, %i.sn
  %i.ss = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sq)
  %i.st = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sr)
  %i.su = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ss, <4 x i32> %i.st)
  %i.sv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.su, <8 x i16> splat (i16 -127))
  %i.sw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sv, <8 x i16> splat (i16 127))
  %i.sx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sw, <8 x i16> poison)
  %i.sy = bitcast <16 x i8> %i.sx to <2 x i64>
  %i.sz = extractelement <2 x i64> %i.sy, i64 0
  store i64 %i.sz, ptr %.19626.i.us, align 8, !tbaa !27
  %i.ta = getelementptr inbounds nuw i8, ptr %.19626.i.us, i64 8 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.2414624.i.us, i64 %.idx426.i
  %i.tc = add nuw nsw i32 %.0408625.i.us, 4       ; 2 uses
  %i.td = or disjoint i32 %i.tc, 3
  %i.te = icmp slt i32 %i.td, %5
  br i1 %i.te, label %.lr.ph627.i.us, label %.loopexit548.i.loopexit8.us, !llvm.loop !242

.loopexit548.i.loopexit8.us:                      ; preds = %.lr.ph627.i.us
  %indvars.iv.next748.i.us = add nuw nsw i64 %indvars.iv747.i.us, 2 ; 3 uses
  %i.tf = icmp slt i64 %indvars.iv.next748.i.us, %invariant.op815.i
  br i1 %i.tf, label %.loopexit551.i.us, label %.preheader545.loopexit.i, !llvm.loop !241

.lr.ph592.i.preheader:                            ; preds = %.lr.ph615.i, %.loopexit554.i.loopexit11
  %indvars.iv743.i = phi i64 [ %indvars.iv.next744.i, %.loopexit554.i.loopexit11 ], [ %i.ey, %.lr.ph615.i ] ; 2 uses
  %.8614.i = phi ptr [ %i.vj, %.loopexit554.i.loopexit11 ], [ %.0373.lcssa.i, %.lr.ph615.i ]
  %i.tg = load ptr, ptr %0, align 8, !tbaa !14
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.eo
  %i.ti = add nsw i64 %indvars.iv743.i, %i.fa
  %i.tj = mul nsw i64 %i.ti, %i.fb
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.th, i64 %i.tj
  br label %.lr.ph592.i

.lr.ph592.i:                                      ; preds = %.lr.ph592.i.preheader, %.lr.ph592.i
  %.9591.i = phi ptr [ %i.vj, %.lr.ph592.i ], [ %.8614.i, %.lr.ph592.i.preheader ] ; 3 uses
  %.0397590.i = phi ptr [ %i.vk, %.lr.ph592.i ], [ %i.tk, %.lr.ph592.i.preheader ] ; 5 uses
  %.0403589.i = phi i32 [ %i.vl, %.lr.ph592.i ], [ 0, %.lr.ph592.i.preheader ]
  %i.tl = load <8 x float>, ptr %.0397590.i, align 32, !tbaa !17
  %i.tm = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 32
  %i.tn = load <8 x float>, ptr %i.tm, align 32, !tbaa !17
  %i.to = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 64
  %i.tp = load <8 x float>, ptr %i.to, align 32, !tbaa !17
  %i.tq = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 96
  %i.tr = load <8 x float>, ptr %i.tq, align 32, !tbaa !17
  %i.ts = fmul fast <8 x float> %i.tl, %i.er      ; 2 uses
  %i.tt = fmul fast <8 x float> %i.tn, %i.er      ; 2 uses
  %i.tu = fmul fast <8 x float> %i.tp, %i.er      ; 2 uses
  %i.tv = fmul fast <8 x float> %i.tr, %i.er      ; 2 uses
  %i.tw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ts)
  %i.tx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tu)
  %i.ty = fadd fast <8 x float> %i.tw, %i.ts
  %i.tz = fadd fast <8 x float> %i.tx, %i.tu
  %i.ua = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ty)
  %i.ub = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tz)
  %i.uc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ua, <8 x i32> %i.ub)
  %i.ud = bitcast <16 x i16> %i.uc to <4 x i64>
  %i.ue = shufflevector <4 x i64> %i.ud, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uf = bitcast <4 x i64> %i.ue to <16 x i16>
  %i.ug = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uf, <16 x i16> splat (i16 -127))
  %i.uh = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ug, <16 x i16> splat (i16 127))
  %i.ui = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.uh, <16 x i16> poison)
  %i.uj = bitcast <32 x i8> %i.ui to <8 x i32>
  %i.uk = shufflevector <8 x i32> %i.uj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ul = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tt)
  %i.um = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tv)
  %i.un = fadd fast <8 x float> %i.ul, %i.tt
  %i.uo = fadd fast <8 x float> %i.um, %i.tv
  %i.up = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.un)
  %i.uq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uo)
  %i.ur = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.up, <8 x i32> %i.uq)
  %i.us = bitcast <16 x i16> %i.ur to <4 x i64>
  %i.ut = shufflevector <4 x i64> %i.us, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uu = bitcast <4 x i64> %i.ut to <16 x i16>
  %i.uv = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uu, <16 x i16> splat (i16 -127))
  %i.uw = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.uv, <16 x i16> splat (i16 127))
  %i.ux = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.uw, <16 x i16> poison)
  %i.uy = bitcast <32 x i8> %i.ux to <8 x i32>
  %i.uz = shufflevector <8 x i32> %i.uy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.va = bitcast <4 x i32> %i.uk to <8 x i16>    ; 2 uses
  %i.vb = bitcast <4 x i32> %i.uz to <8 x i16>    ; 2 uses
  %i.vc = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vd = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ve = bitcast <8 x i16> %i.vc to <4 x i32>    ; 2 uses
  %i.vf = bitcast <8 x i16> %i.vd to <4 x i32>    ; 2 uses
  %i.vg = shufflevector <4 x i32> %i.ve, <4 x i32> %i.vf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vh = shufflevector <4 x i32> %i.ve, <4 x i32> %i.vf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.vg, ptr %.9591.i, align 16, !tbaa !17
  %i.vi = getelementptr inbounds nuw i8, ptr %.9591.i, i64 16
  store <4 x i32> %i.vh, ptr %i.vi, align 16, !tbaa !17
  %i.vj = getelementptr inbounds nuw i8, ptr %.9591.i, i64 32 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 %.idx430.i
  %i.vl = add nuw nsw i32 %.0403589.i, 8          ; 2 uses
  %i.vm = or disjoint i32 %i.vl, 7
  %i.vn = icmp slt i32 %i.vm, %5
  br i1 %i.vn, label %.lr.ph592.i, label %.loopexit554.i.loopexit11, !llvm.loop !243

.loopexit554.i.loopexit11:                        ; preds = %.lr.ph592.i
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 4 ; 3 uses
  %i.vo = icmp slt i64 %indvars.iv.next744.i, %invariant.op.i
  br i1 %i.vo, label %.lr.ph592.i.preheader, label %.preheader552.loopexit.i, !llvm.loop !235

.preheader545.loopexit.i:                         ; preds = %.loopexit548.i.loopexit9, %.loopexit548.i.loopexit8.us, %.loopexit548.i.us.us.us, %.loopexit551.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.8.lcssa.i, %.loopexit551.i.us.us.preheader ], [ %i.ta, %.loopexit548.i.loopexit8.us ], [ %.24.i.us.us.us, %.loopexit548.i.us.us.us ], [ %i.zu, %.loopexit548.i.loopexit9 ]
  %.us-phi48 = phi i64 [ %i.ow, %.loopexit551.i.us.us.preheader ], [ %indvars.iv.next748.i.us, %.loopexit548.i.loopexit8.us ], [ %indvars.iv.next748.i.us.us.us, %.loopexit548.i.us.us.us ], [ %indvars.iv.next748.i, %.loopexit548.i.loopexit9 ]
  %i.vp = trunc nuw nsw i64 %.us-phi48 to i32
  br label %.preheader545.i

.preheader545.i:                                  ; preds = %.preheader545.loopexit.i, %.preheader552.i
  %.2378.lcssa.i = phi i32 [ %.1377.lcssa.i, %.preheader552.i ], [ %i.vp, %.preheader545.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader552.i ], [ %.us-phi47, %.preheader545.loopexit.i ] ; 2 uses
  %i.vq = icmp slt i32 %.2378.lcssa.i, %3
  br i1 %i.vq, label %.lr.ph680.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph680.i:                                      ; preds = %.preheader545.i
  %i.vr = sext i32 %4 to i64
  %i.vs = mul i64 %i.m, %i.vr                     ; 2 uses
  %i.vt = icmp ne i32 %i.d, 8
  %i.vu = insertelement <8 x float> poison, float %6, i64 0
  %i.vv = shufflevector <8 x float> %i.vu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vw = icmp slt i32 %5, 8
  %.idx421.i = shl i64 %i.m, 5
  %i.vx = icmp ne i32 %i.d, 4
  %i.vy = insertelement <4 x float> poison, float %6, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = icmp slt i32 %5, 4
  %.idx420.i = shl i64 %i.m, 4                    ; 2 uses
  %i.wb = icmp eq i32 %i.d, 1
  %i.wc = icmp sgt i32 %5, 3
  %i.wd = trunc i64 %i.m to i32
  %i.we = insertelement <4 x i32> poison, i32 %i.wd, i64 0
  %i.wf = shufflevector <4 x i32> %i.we, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wg = mul <4 x i32> %i.wf, <i32 0, i32 1, i32 2, i32 3>
  %i.wh = and i32 %5, -4
  %i.wi = sext i32 %.2378.lcssa.i to i64          ; 2 uses
  %i.wj = sext i32 %2 to i64                      ; 2 uses
  %i.wk = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %brmerge700.i = or i1 %i.vw, %i.vt
  %brmerge703.i = or i1 %i.wa, %i.vx
  br i1 %brmerge700.i, label %.loopexit544.i.us.preheader, label %.lr.ph657.i.preheader.preheader

.loopexit544.i.us.preheader:                      ; preds = %.lr.ph680.i
  %xtraiter182 = and i32 %5, 1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br label %.loopexit544.i.us

.lr.ph657.i.preheader.preheader:                  ; preds = %.lr.ph680.i
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !14
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.pre87, i64 %i.vs
  br label %.lr.ph657.i.preheader

.loopexit544.i.us:                                ; preds = %.loopexit544.i.us.preheader, %.loopexit.i.us
  %indvars.iv751.i.us = phi i64 [ %indvars.iv.next752.i.us, %.loopexit.i.us ], [ %i.wi, %.loopexit544.i.us.preheader ] ; 2 uses
  %.25679.i.us = phi ptr [ %.32.i.us, %.loopexit.i.us ], [ %.16.lcssa.i, %.loopexit544.i.us.preheader ] ; 4 uses
  %i.wm = load ptr, ptr %0, align 8, !tbaa !14
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.vs
  %i.wo = add nsw i64 %indvars.iv751.i.us, %i.wj
  %i.wp = mul nsw i64 %i.wo, %i.wk
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.wn, i64 %i.wp ; 3 uses
  br i1 %brmerge703.i, label %.loopexit543.i.us, label %.lr.ph663.i.us

.lr.ph663.i.us:                                   ; preds = %.loopexit544.i.us, %.lr.ph663.i.us
  %.28662.i.us = phi ptr [ %i.xc, %.lr.ph663.i.us ], [ %.25679.i.us, %.loopexit544.i.us ] ; 2 uses
  %.0375661.i.us = phi i32 [ %i.xe, %.lr.ph663.i.us ], [ 0, %.loopexit544.i.us ]
  %.2383660.i.us = phi ptr [ %i.xd, %.lr.ph663.i.us ], [ %i.wq, %.loopexit544.i.us ] ; 2 uses
  %i.wr = load <4 x float>, ptr %.2383660.i.us, align 16, !tbaa !17
  %i.ws = fmul fast <4 x float> %i.wr, %i.vz      ; 2 uses
  %i.wt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ws)
  %i.wu = fadd fast <4 x float> %i.wt, %i.ws
  %i.wv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wu) ; 2 uses
  %i.ww = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wv, <4 x i32> %i.wv)
  %i.wx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ww, <8 x i16> splat (i16 -127))
  %i.wy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wx, <8 x i16> splat (i16 127))
  %i.wz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wy, <8 x i16> poison)
  %i.xa = bitcast <16 x i8> %i.wz to <4 x i32>
  %i.xb = extractelement <4 x i32> %i.xa, i64 0
  store i32 %i.xb, ptr %.28662.i.us, align 4, !tbaa !28
  %i.xc = getelementptr inbounds nuw i8, ptr %.28662.i.us, i64 4 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.2383660.i.us, i64 %.idx420.i
  %i.xe = add nuw nsw i32 %.0375661.i.us, 4       ; 2 uses
  %i.xf = or disjoint i32 %i.xe, 3
  %i.xg = icmp slt i32 %i.xf, %5
  br i1 %i.xg, label %.lr.ph663.i.us, label %.loopexit.i.us, !llvm.loop !244

.loopexit543.i.us:                                ; preds = %.loopexit544.i.us
  br i1 %i.wb, label %bb.i, label %.loopexit.i.us

bb.i:                                             ; preds = %.loopexit543.i.us
  br i1 %i.wc, label %.lr.ph669.i.us, label %.preheader.i.us

.lr.ph669.i.us:                                   ; preds = %bb.i, %.lr.ph669.i.us
  %.0668.i.us = phi i32 [ %i.xu, %.lr.ph669.i.us ], [ 0, %bb.i ]
  %.30667.i.us = phi ptr [ %i.xs, %.lr.ph669.i.us ], [ %.25679.i.us, %bb.i ] ; 2 uses
  %.4385666.i.us = phi ptr [ %i.xt, %.lr.ph669.i.us ], [ %i.wq, %bb.i ] ; 2 uses
  %i.xh = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.4385666.i.us, <4 x i32> %i.wg, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.xi = fmul fast <4 x float> %i.xh, %i.vz      ; 2 uses
  %i.xj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xi)
  %i.xk = fadd fast <4 x float> %i.xj, %i.xi
  %i.xl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xk) ; 2 uses
  %i.xm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.xl, <4 x i32> %i.xl)
  %i.xn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xm, <8 x i16> splat (i16 -127))
  %i.xo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xn, <8 x i16> splat (i16 127))
  %i.xp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xo, <8 x i16> poison)
  %i.xq = bitcast <16 x i8> %i.xp to <4 x i32>
  %i.xr = extractelement <4 x i32> %i.xq, i64 0
  store i32 %i.xr, ptr %.30667.i.us, align 4, !tbaa !28
  %i.xs = getelementptr inbounds nuw i8, ptr %.30667.i.us, i64 4 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.4385666.i.us, i64 %.idx420.i ; 2 uses
  %i.xu = add nuw nsw i32 %.0668.i.us, 4          ; 2 uses
  %i.xv = or disjoint i32 %i.xu, 3
  %i.xw = icmp slt i32 %i.xv, %5
  br i1 %i.xw, label %.lr.ph669.i.us, label %.preheader.i.us, !llvm.loop !245

.preheader.i.us:                                  ; preds = %.lr.ph669.i.us, %bb.i
  %.4385.lcssa.i.us = phi ptr [ %i.wq, %bb.i ], [ %i.xt, %.lr.ph669.i.us ] ; 3 uses
  %.30.lcssa.i.us = phi ptr [ %.25679.i.us, %bb.i ], [ %i.xs, %.lr.ph669.i.us ] ; 4 uses
  %.0.lcssa.i.us = phi i32 [ 0, %bb.i ], [ %i.wh, %.lr.ph669.i.us ] ; 4 uses
  %i.xx = icmp slt i32 %.0.lcssa.i.us, %5
  br i1 %i.xx, label %.lr.ph676.i.us.preheader, label %.loopexit.i.us

.lr.ph676.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg184 = or disjoint i32 %.0.lcssa.i.us, 1
  br i1 %lcmp.mod183.not, label %.lr.ph676.i.us.prol.loopexit, label %.lr.ph676.i.us.prol

.lr.ph676.i.us.prol:                              ; preds = %.lr.ph676.i.us.preheader
  %i.xy = load float, ptr %.4385.lcssa.i.us, align 4, !tbaa !30
  %i.xz = fmul fast float %i.xy, %6
  %i.ya = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.xz)
  %i.yb = fptosi float %i.ya to i32
  %spec.select.i537.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.yb, i32 -127)
  %.0.i538.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i537.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i538.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.30.lcssa.i.us, align 1, !tbaa !17
  %i.yc = getelementptr inbounds nuw i8, ptr %.30.lcssa.i.us, i64 1 ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.4385.lcssa.i.us, i64 %i.m
  %i.ye = or disjoint i32 %.0.lcssa.i.us, 1
  br label %.lr.ph676.i.us.prol.loopexit

.lr.ph676.i.us.prol.loopexit:                     ; preds = %.lr.ph676.i.us.prol, %.lr.ph676.i.us.preheader
  %.lcssa155.unr = phi ptr [ poison, %.lr.ph676.i.us.preheader ], [ %i.yc, %.lr.ph676.i.us.prol ]
  %.1675.i.us.unr = phi i32 [ %.0.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.ye, %.lr.ph676.i.us.prol ]
  %.31674.i.us.unr = phi ptr [ %.30.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.yc, %.lr.ph676.i.us.prol ]
  %.5386673.i.us.unr = phi ptr [ %.4385.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.yd, %.lr.ph676.i.us.prol ]
  %i.yf = icmp eq i32 %5, %.neg184
  br i1 %i.yf, label %.loopexit.i.us, label %.lr.ph676.i.us

.lr.ph676.i.us:                                   ; preds = %.lr.ph676.i.us.prol.loopexit, %.lr.ph676.i.us
  %.1675.i.us = phi i32 [ %i.ys, %.lr.ph676.i.us ], [ %.1675.i.us.unr, %.lr.ph676.i.us.prol.loopexit ]
  %.31674.i.us = phi ptr [ %i.yq, %.lr.ph676.i.us ], [ %.31674.i.us.unr, %.lr.ph676.i.us.prol.loopexit ] ; 3 uses
  %.5386673.i.us = phi ptr [ %i.yr, %.lr.ph676.i.us ], [ %.5386673.i.us.unr, %.lr.ph676.i.us.prol.loopexit ] ; 2 uses
  %i.yg = load float, ptr %.5386673.i.us, align 4, !tbaa !30
  %i.yh = fmul fast float %i.yg, %6
  %i.yi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.yh)
  %i.yj = fptosi float %i.yi to i32
  %spec.select.i537.i.us = tail call i32 @llvm.smax.i32(i32 %i.yj, i32 -127)
  %.0.i538.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i537.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i538.i.us to i8
  store i8 %.0.i.i.us, ptr %.31674.i.us, align 1, !tbaa !17
  %i.yk = getelementptr inbounds nuw i8, ptr %.31674.i.us, i64 1
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.5386673.i.us, i64 %i.m ; 2 uses
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !30
  %i.yn = fmul fast float %i.ym, %6
  %i.yo = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.yn)
  %i.yp = fptosi float %i.yo to i32
  %spec.select.i537.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.yp, i32 -127)
  %.0.i538.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i537.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i538.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.yk, align 1, !tbaa !17
  %i.yq = getelementptr inbounds nuw i8, ptr %.31674.i.us, i64 2 ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %i.m
  %i.ys = add nuw nsw i32 %.1675.i.us, 2          ; 2 uses
  %exitcond750.not.i.us.1 = icmp eq i32 %i.ys, %5
  br i1 %exitcond750.not.i.us.1, label %.loopexit.i.us, label %.lr.ph676.i.us, !llvm.loop !246

.loopexit.i.us:                                   ; preds = %.lr.ph663.i.us, %.lr.ph676.i.us.prol.loopexit, %.lr.ph676.i.us, %.preheader.i.us, %.loopexit543.i.us
  %.32.i.us = phi ptr [ %.25679.i.us, %.loopexit543.i.us ], [ %.30.lcssa.i.us, %.preheader.i.us ], [ %i.yq, %.lr.ph676.i.us ], [ %.lcssa155.unr, %.lr.ph676.i.us.prol.loopexit ], [ %i.xc, %.lr.ph663.i.us ]
  %indvars.iv.next752.i.us = add nuw nsw i64 %indvars.iv751.i.us, 1 ; 2 uses
  %exitcond754.not.i.us = icmp eq i64 %indvars.iv.next752.i.us, %wide.trip.count.i
  br i1 %exitcond754.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit544.i.us, !llvm.loop !247

.lr.ph621.i.preheader:                            ; preds = %.lr.ph651.i, %.loopexit548.i.loopexit9
  %indvars.iv747.i = phi i64 [ %indvars.iv.next748.i, %.loopexit548.i.loopexit9 ], [ %i.ok, %.lr.ph651.i ] ; 2 uses
  %.16650.i = phi ptr [ %i.zu, %.loopexit548.i.loopexit9 ], [ %.8.lcssa.i, %.lr.ph651.i ]
  %i.yt = load ptr, ptr %0, align 8, !tbaa !14
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %i.oa
  %i.yv = add nsw i64 %indvars.iv747.i, %i.om
  %i.yw = mul nsw i64 %i.yv, %i.on
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.yw
  br label %.lr.ph621.i

.lr.ph621.i:                                      ; preds = %.lr.ph621.i.preheader, %.lr.ph621.i
  %.17620.i = phi ptr [ %i.zu, %.lr.ph621.i ], [ %.16650.i, %.lr.ph621.i.preheader ] ; 2 uses
  %.0411619.i = phi i32 [ %i.zw, %.lr.ph621.i ], [ 0, %.lr.ph621.i.preheader ]
  %.0412618.i = phi ptr [ %i.zv, %.lr.ph621.i ], [ %i.yx, %.lr.ph621.i.preheader ] ; 3 uses
  %i.yy = load <8 x float>, ptr %.0412618.i, align 32, !tbaa !17
  %i.yz = getelementptr inbounds nuw i8, ptr %.0412618.i, i64 32
  %i.za = load <8 x float>, ptr %i.yz, align 32, !tbaa !17
  %i.zb = fmul fast <8 x float> %i.yy, %i.od      ; 2 uses
  %i.zc = fmul fast <8 x float> %i.za, %i.od      ; 2 uses
  %i.zd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.zb)
  %i.ze = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.zc)
  %i.zf = fadd fast <8 x float> %i.zd, %i.zb
  %i.zg = fadd fast <8 x float> %i.ze, %i.zc
  %i.zh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zf)
  %i.zi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zg)
end_hunk_5
begin_hunk_6_@_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  %i.ath = getelementptr inbounds nuw i8, ptr %.321632.i, i64 %.sink1862.i ; 2 uses
  br i1 %i.bs, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ati = fadd fast <4 x float> %.131195.i, %i.asb
  %i.atj = fadd fast <4 x float> %.01086.i, %i.asc
  br label %.thread1403.i

bb.eu:                                            ; preds = %bb.es
  %i.atk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.131195.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.asb)
  %i.atl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.01086.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.asc)
  br label %.thread1403.i

bb.ev:                                            ; preds = %bb.eo
  %i.atm = load <2 x float>, ptr %.321632.i, align 4, !tbaa !30
  %i.atn = fmul fast <2 x float> %i.atm, %i.cg    ; 2 uses
  %i.ato = shufflevector <2 x float> %i.atn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.atp = shufflevector <2 x float> %i.atn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.atq = fadd fast <4 x float> %i.ato, %i.asb
  %i.atr = fadd fast <4 x float> %i.atp, %i.asc
  %i.ats = getelementptr inbounds nuw i8, ptr %.321632.i, i64 8
  br label %.thread1403.i

.thread1403.i:                                    ; preds = %bb.ev, %bb.eu, %bb.et, %bb.eo, %bb.en, %.thread1394.i, %.lr.ph1633.i
  %.151197.i = phi nsz <4 x float> [ %.1211941628.i, %.lr.ph1633.i ], [ %i.ato, %bb.ev ], [ %.1211941628.i, %bb.eo ], [ %.131195.i, %bb.et ], [ %.131195.i, %bb.eu ], [ %.1211941628.i, %.thread1394.i ], [ %.1211941628.i, %bb.en ] ; 2 uses
  %.41097.i = phi nsz <4 x float> [ %i.asb, %.lr.ph1633.i ], [ %i.atq, %bb.ev ], [ %i.asb, %bb.eo ], [ %i.ati, %bb.et ], [ %i.atk, %bb.eu ], [ %i.asd, %.thread1394.i ], [ %i.asf, %bb.en ]
  %.41091.i = phi nsz <4 x float> [ %i.asc, %.lr.ph1633.i ], [ %i.atr, %bb.ev ], [ %i.asc, %bb.eo ], [ %i.atj, %bb.et ], [ %i.atl, %bb.eu ], [ %i.ase, %.thread1394.i ], [ %i.asg, %bb.en ]
  %.35.i = phi ptr [ null, %.lr.ph1633.i ], [ %i.ats, %bb.ev ], [ %.321632.i, %bb.eo ], [ %i.ath, %bb.et ], [ %i.ath, %bb.eu ], [ %.321632.i, %.thread1394.i ], [ %.321632.i, %bb.en ] ; 2 uses
  %.51098.i = fmul reassoc nsz arcp contract afn <4 x float> %.41097.i, %i.bw ; 6 uses
  %.51092.i = fmul reassoc nsz arcp contract afn <4 x float> %.41091.i, %i.bw ; 6 uses
  br i1 %.not1960.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %.thread1403.i
  store <4 x float> %.51098.i, ptr %.718821630.i, align 1, !tbaa !17
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %.718821630.i, i64 %i.k
  store <4 x float> %.51092.i, ptr %i.att, align 1, !tbaa !17
  %i.atu = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 %.idx1985.i
  br label %bb.ez

bb.ex:                                            ; preds = %.thread1403.i
  switch i32 %i.b, label %bb.ez [
    i32 4, label %.thread1408.i
    i32 1, label %bb.ey
  ]

.thread1408.i:                                    ; preds = %bb.ex
  store <4 x float> %.51098.i, ptr %.718821630.i, align 16, !tbaa !17
  %i.atv = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 16
  store <4 x float> %.51092.i, ptr %i.atv, align 16, !tbaa !17
  %i.atw = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 32
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %.sroa.0153.0.vec.extract.i = extractelement <4 x float> %.51098.i, i64 0
  store float %.sroa.0153.0.vec.extract.i, ptr %.718821630.i, align 4, !tbaa !30
  %.sroa.7154.16.vec.extract.i = extractelement <4 x float> %.51092.i, i64 0
  %i.atx = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 4
  store float %.sroa.7154.16.vec.extract.i, ptr %i.atx, align 4, !tbaa !30
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.718821630.i, i64 %i.k
  %i.atz = shufflevector <4 x float> %.51098.i, <4 x float> %.51092.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.atz, ptr %i.aty, align 4, !tbaa !30
  %i.aua = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 %.idx1985.i
  %i.aub = shufflevector <4 x float> %.51098.i, <4 x float> %.51092.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aub, ptr %i.aua, align 4, !tbaa !30
  %i.auc = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 %.idx1986.i
  %i.aud = shufflevector <4 x float> %.51098.i, <4 x float> %.51092.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aud, ptr %i.auc, align 4, !tbaa !30
  %i.aue = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.thread1408.i, %bb.ex, %bb.ew
  %.91884.i = phi ptr [ %i.atu, %bb.ew ], [ %i.aue, %bb.ey ], [ %.718821630.i, %bb.ex ], [ %i.atw, %.thread1408.i ] ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.818381631.i, i64 32 ; 2 uses
  %i.aug = add nuw nsw i32 %.219081629.i, 2       ; 3 uses
  %i.auh = or disjoint i32 %i.aug, 1
  %i.aui = icmp slt i32 %i.auh, %7
  br i1 %i.aui, label %.lr.ph1633.i, label %.preheader1552.i, !llvm.loop !257

.lr.ph1644.i:                                     ; preds = %.preheader1552.i, %bb.fm
  %.361643.i = phi ptr [ %.39.i, %bb.fm ], [ %.32.lcssa.i, %.preheader1552.i ] ; 12 uses
  %.918391642.i = phi ptr [ %i.avp, %bb.fm ], [ %.81838.lcssa.i, %.preheader1552.i ] ; 2 uses
  %.1018851641.i = phi ptr [ %.121887.i, %bb.fm ], [ %.71882.lcssa.i, %.preheader1552.i ] ; 10 uses
  %.319091640.i = phi i32 [ %i.avq, %bb.fm ], [ %.21908.lcssa.i, %.preheader1552.i ]
  %.1611981639.i = phi <4 x float> [ %.191201.i, %bb.fm ], [ %.121194.lcssa.i, %.preheader1552.i ] ; 6 uses
  %i.auj = load <4 x i32>, ptr %.918391642.i, align 16, !tbaa !17
  %i.auk = sitofp fast <4 x i32> %i.auj to <4 x float>
  %i.aul = fmul fast <4 x float> %i.acs, %i.auk   ; 6 uses
  %.not1962.i = icmp eq ptr %.361643.i, null
  br i1 %.not1962.i, label %.thread1417.i, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph1644.i
  br i1 %i.bk, label %.thread1410.i, label %bb.fb

.thread1410.i:                                    ; preds = %bb.fa
  %i.aum = fadd fast <4 x float> %i.aul, %.1611981639.i
  br label %.thread1417.i

bb.fb:                                            ; preds = %bb.fa
  br i1 %or.cond11.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aun = fadd fast <4 x float> %i.aul, %.1611981639.i
  br label %.thread1417.i

bb.fd:                                            ; preds = %bb.fb
  switch i32 %3, label %.thread1417.i [
    i32 3, label %bb.fe
    i32 4, label %bb.fi
  ]

bb.fe:                                            ; preds = %bb.fd
  br i1 %i.br, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.auo = load <4 x float>, ptr %.361643.i, align 1, !tbaa !17
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.aup = load float, ptr %.361643.i, align 4, !tbaa !30
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %.361643.i, i64 %i.t
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !30
  %i.aus = getelementptr inbounds nuw i8, ptr %.361643.i, i64 %.idx1978.i
  %i.aut = load float, ptr %i.aus, align 4, !tbaa !30
  %i.auu = getelementptr inbounds nuw i8, ptr %.361643.i, i64 %.idx1979.i
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !30
  %i.auw = insertelement <4 x float> poison, float %i.aup, i64 0
  %i.aux = insertelement <4 x float> %i.auw, float %i.aur, i64 1
  %i.auy = insertelement <4 x float> %i.aux, float %i.aut, i64 2
  %i.auz = insertelement <4 x float> %i.auy, float %i.auv, i64 3
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.sink1863.i = phi i64 [ 4, %bb.fg ], [ 16, %bb.ff ]
  %.171199.i = phi nsz <4 x float> [ %i.auz, %bb.fg ], [ %i.auo, %bb.ff ] ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.361643.i, i64 %.sink1863.i
  %i.avb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.171199.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.aul)
  br label %.thread1417.i

bb.fi:                                            ; preds = %bb.fd
  %i.avc = load float, ptr %.361643.i, align 4, !tbaa !30
  %i.avd = fmul fast float %i.avc, %10
  %i.ave = insertelement <4 x float> poison, float %i.avd, i64 0
  %i.avf = shufflevector <4 x float> %i.ave, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avg = fadd fast <4 x float> %i.avf, %i.aul
  %i.avh = getelementptr inbounds nuw i8, ptr %.361643.i, i64 4
  br label %.thread1417.i

.thread1417.i:                                    ; preds = %bb.fi, %bb.fh, %bb.fd, %bb.fc, %.thread1410.i, %.lr.ph1644.i
  %.191201.i = phi nsz <4 x float> [ %.1611981639.i, %.lr.ph1644.i ], [ %i.avf, %bb.fi ], [ %.1611981639.i, %bb.fd ], [ %.171199.i, %bb.fh ], [ %.1611981639.i, %.thread1410.i ], [ %.1611981639.i, %bb.fc ]
  %.31067.i = phi nsz <4 x float> [ %i.aul, %.lr.ph1644.i ], [ %i.avg, %bb.fi ], [ %i.aul, %bb.fd ], [ %i.avb, %bb.fh ], [ %i.aum, %.thread1410.i ], [ %i.aun, %bb.fc ]
  %.39.i = phi ptr [ null, %.lr.ph1644.i ], [ %i.avh, %bb.fi ], [ %.361643.i, %bb.fd ], [ %i.ava, %bb.fh ], [ %.361643.i, %.thread1410.i ], [ %.361643.i, %bb.fc ] ; 2 uses
  %i.avi = fmul fast <4 x float> %.31067.i, %i.bv ; 6 uses
  br i1 %.not1960.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.thread1417.i
  store <4 x float> %i.avi, ptr %.1018851641.i, align 1, !tbaa !17
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %.1018851641.i, i64 %i.k
  br label %bb.fm

bb.fk:                                            ; preds = %.thread1417.i
  switch i32 %i.b, label %bb.fm [
    i32 4, label %.thread1421.i
    i32 1, label %bb.fl
  ]

.thread1421.i:                                    ; preds = %bb.fk
  store <4 x float> %i.avi, ptr %.1018851641.i, align 16, !tbaa !17
  %i.avk = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 16
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %.sroa.0146.0.vec.extract.i = extractelement <4 x float> %i.avi, i64 0
  store float %.sroa.0146.0.vec.extract.i, ptr %.1018851641.i, align 4, !tbaa !30
  %.sroa.0146.4.vec.extract.i = extractelement <4 x float> %i.avi, i64 1
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.1018851641.i, i64 %i.k
  store float %.sroa.0146.4.vec.extract.i, ptr %i.avl, align 4, !tbaa !30
  %.sroa.0146.8.vec.extract.i = extractelement <4 x float> %i.avi, i64 2
  %i.avm = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 %.idx1985.i
  store float %.sroa.0146.8.vec.extract.i, ptr %i.avm, align 4, !tbaa !30
  %.sroa.0146.12.vec.extract.i = extractelement <4 x float> %i.avi, i64 3
  %i.avn = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 %.idx1986.i
  store float %.sroa.0146.12.vec.extract.i, ptr %i.avn, align 4, !tbaa !30
  %i.avo = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 4
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.thread1421.i, %bb.fk, %bb.fj
  %.121887.i = phi ptr [ %i.avj, %bb.fj ], [ %i.avo, %bb.fl ], [ %.1018851641.i, %bb.fk ], [ %i.avk, %.thread1421.i ]
  %i.avp = getelementptr inbounds nuw i8, ptr %.918391642.i, i64 16 ; 2 uses
  %i.avq = add nuw nsw i32 %.319091640.i, 1       ; 2 uses
  %exitcond1778.not.i = icmp eq i32 %i.avq, %7
  br i1 %exitcond1778.not.i, label %._crit_edge1645.i, label %.lr.ph1644.i, !llvm.loop !258

._crit_edge1645.i:                                ; preds = %bb.fm, %.preheader1552.i
  %.91839.lcssa.i = phi ptr [ %.81838.lcssa.i, %.preheader1552.i ], [ %i.avp, %bb.fm ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader1552.i ], [ %.39.i, %bb.fm ] ; 2 uses
  %indvars.iv.next1780.i = add nuw nsw i64 %indvars.iv1779.i, 4 ; 3 uses
  %i.avr = icmp slt i64 %indvars.iv.next1780.i, %invariant.op1849.i
  br i1 %i.avr, label %bb.cg, label %.preheader1551.loopexit.i, !llvm.loop !259

.preheader1547.loopexit.i:                        ; preds = %._crit_edge1693.i
  %i.avs = trunc nuw nsw i64 %indvars.iv.next1784.i to i32
  br label %.preheader1547.i

.preheader1547.i:                                 ; preds = %.preheader1547.loopexit.i, %.preheader1551.i
  %.21852.lcssa.i = phi i32 [ %.11851.lcssa.i, %.preheader1551.i ], [ %i.avs, %.preheader1547.loopexit.i ] ; 2 uses
  %.101840.lcssa.i = phi ptr [ %.51835.lcssa.i, %.preheader1551.i ], [ %.141844.lcssa.i, %.preheader1547.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader1551.i ], [ %.53.lcssa.i, %.preheader1547.loopexit.i ]
  %i.avt = icmp slt i32 %.21852.lcssa.i, %5
  br i1 %i.avt, label %.lr.ph1745.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph1745.i:                                     ; preds = %.preheader1547.i
  %.not.i = icmp eq i32 %11, 0                    ; 5 uses
  %i.avu = sext i32 %6 to i64                     ; 4 uses
  %i.avv = mul i64 %i.k, %i.avu
  %i.avw = icmp eq i32 %3, 0
  %or.cond31.i = icmp ult i32 %3, 3               ; 5 uses
  %i.avx = sext i32 %4 to i64                     ; 3 uses
  %i.avy = icmp sgt i32 %7, 7
  %i.avz = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.avz, 2           ; 4 uses
  %i.awa = insertelement <4 x float> poison, float %10, i64 0
  %i.awb = shufflevector <4 x float> %i.awa, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.awc = fcmp fast une float %9, 1.000000e+00
  %i.awd = insertelement <4 x float> poison, float %9, i64 0
  %i.awe = shufflevector <4 x float> %i.awd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.awf = select ninf nsz i1 %i.awc, <4 x float> %i.awe, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.awg = icmp eq i64 %i.k, 1                    ; 2 uses
  %.idx1943.i = shl i64 %i.k, 3                   ; 3 uses
  %.idx1944.i = mul i64 %i.k, 12                  ; 2 uses
  %.idx1945.i = shl i64 %i.k, 4                   ; 5 uses
  %.idx1946.i = mul i64 %i.k, 20
  %.idx1947.i = mul i64 %i.k, 24
  %.idx1948.i = mul i64 %i.k, 28
  %.idx1949.i = shl i64 %i.k, 5                   ; 4 uses
  %i.awh = and i32 %7, -8
  %i.awi = sext i32 %.21852.lcssa.i to i64
  %i.awj = sext i32 %i.b to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.awk = insertelement <2 x float> poison, float %10, i64 0
  %i.awl = shufflevector <2 x float> %i.awk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hm

bb.fn:                                            ; preds = %._crit_edge1693.i, %.lr.ph1700.i
  %indvars.iv1783.i = phi i64 [ %i.abu, %.lr.ph1700.i ], [ %indvars.iv.next1784.i, %._crit_edge1693.i ] ; 4 uses
  %.401699.i = phi ptr [ %.20.lcssa.i, %.lr.ph1700.i ], [ %.53.lcssa.i, %._crit_edge1693.i ] ; 4 uses
  %.1018401698.i = phi ptr [ %.51835.lcssa.i, %.lr.ph1700.i ], [ %.141844.lcssa.i, %._crit_edge1693.i ] ; 2 uses
  %i.awm = load ptr, ptr %2, align 8, !tbaa !14   ; 2 uses
  br i1 %.not1950.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.abg
  %i.awo = add nsw i64 %indvars.iv1783.i, %i.abl  ; 2 uses
  %i.awp = mul nsw i64 %i.awo, %i.abw
  %i.awq = getelementptr inbounds [4 x i8], ptr %i.awn, i64 %i.awp
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.awr = add nsw i64 %indvars.iv1783.i, %i.abl  ; 2 uses
  %i.aws = mul i64 %i.awr, %i.k
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.aws
  %i.awu = getelementptr inbounds [4 x i8], ptr %i.awt, i64 %i.abf
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pre-phi.i = phi i64 [ %i.awr, %bb.fp ], [ %i.awo, %bb.fo ] ; 2 uses
  %.01897.i = phi ptr [ %i.awu, %bb.fp ], [ %i.awq, %bb.fo ] ; 2 uses
  %i.awv = load ptr, ptr %8, align 8, !tbaa !14
  %i.aww = getelementptr [4 x i8], ptr %i.awv, i64 %.pre-phi.i
  %i.awx = load <2 x float>, ptr %i.aww, align 4, !tbaa !30 ; 4 uses
  %i.awy = shufflevector <2 x float> %i.awx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.awz = shufflevector <2 x float> %i.awx, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.axa = shufflevector <2 x float> %i.awx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not1951.i = icmp eq ptr %.401699.i, null
  br i1 %.not1951.i, label %.thread1439.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.aca, label %.thread1423.i, label %bb.fs

.thread1423.i:                                    ; preds = %bb.fr
  %i.axb = load float, ptr %.401699.i, align 4, !tbaa !30
  %i.axc = fmul fast float %i.axb, %10            ; 3 uses
  %i.axd = insertelement <4 x float> poison, float %i.axc, i64 0
  %i.axe = shufflevector <4 x float> %i.axd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.axc, i64 0
  br label %.thread1439.i

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.acb, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.axg = load ptr, ptr %1, align 8, !tbaa !14
  %i.axh = getelementptr inbounds [4 x i8], ptr %i.axg, i64 %i.abl
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.axh, i64 %indvars.iv1783.i ; 2 uses
  %i.axj = load <2 x float>, ptr %i.axi, align 4, !tbaa !30
  %i.axk = fmul fast <2 x float> %i.axj, %i.abz   ; 4 uses
  %i.axl = extractelement <2 x float> %i.axk, i64 0
  %i.axm = shufflevector <2 x float> %i.axk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.axn = shufflevector <2 x float> %i.axk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread1439.i

bb.fu:                                            ; preds = %bb.fs
  switch i32 %3, label %.thread1439.i [
    i32 3, label %bb.fv
    i32 4, label %bb.fw
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.axo = load ptr, ptr %1, align 8, !tbaa !14
  %i.axp = mul i64 %.pre-phi.i, %i.t
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.axp
  %i.axr = getelementptr inbounds [4 x i8], ptr %i.axq, i64 %i.abf
  br label %.thread1439.i

bb.fw:                                            ; preds = %bb.fu
  %i.axs = load ptr, ptr %1, align 8, !tbaa !14
  %i.axt = getelementptr inbounds [4 x i8], ptr %i.axs, i64 %i.abf
  br label %.thread1439.i

.thread1439.i:                                    ; preds = %bb.fw, %bb.fv, %bb.fu, %bb.ft, %.thread1423.i, %bb.fq
  %.21050.i = phi nsz <4 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ %i.axe, %.thread1423.i ], [ %i.axm, %bb.ft ] ; 2 uses
  %.11041.i = phi nsz <4 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ zeroinitializer, %.thread1423.i ], [ %i.axn, %bb.ft ] ; 2 uses
  %.21896.i = phi nsz float [ 0.000000e+00, %bb.fq ], [ 0.000000e+00, %bb.fw ], [ 0.000000e+00, %bb.fu ], [ 0.000000e+00, %bb.fv ], [ %i.axc, %.thread1423.i ], [ %i.axl, %bb.ft ]
  %.43.i = phi ptr [ null, %bb.fq ], [ %i.axt, %bb.fw ], [ %.401699.i, %bb.fu ], [ %i.axr, %bb.fv ], [ %.401699.i, %.thread1423.i ], [ %i.axi, %bb.ft ] ; 2 uses
  %i.axu = phi <2 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ %i.axf, %.thread1423.i ], [ %i.axk, %bb.ft ] ; 3 uses
  %i.axv = shufflevector <2 x float> %i.axu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.abm, label %.lr.ph1661.i, label %.preheader1550.i

.preheader1550.i:                                 ; preds = %bb.gn, %.thread1439.i
  %.31051.lcssa.i = phi <4 x float> [ %.21050.i, %.thread1439.i ], [ %.51053.i, %bb.gn ]
  %.21042.lcssa.i = phi <4 x float> [ %.11041.i, %.thread1439.i ], [ %.41044.i, %bb.gn ]
  %.11898.lcssa.i = phi ptr [ %.01897.i, %.thread1439.i ], [ %i.bbj, %bb.gn ] ; 2 uses
  %.01888.lcssa.i = phi i32 [ 0, %.thread1439.i ], [ %i.abt, %bb.gn ] ; 3 uses
  %.111841.lcssa.i = phi ptr [ %.1018401698.i, %.thread1439.i ], [ %i.bbk, %bb.gn ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread1439.i ], [ %.46.i, %bb.gn ] ; 2 uses
  %i.axw = or disjoint i32 %.01888.lcssa.i, 3
  %i.axx = icmp slt i32 %i.axw, %7
  br i1 %i.axx, label %.lr.ph1674.i, label %.preheader1549.i

.lr.ph1661.i:                                     ; preds = %.thread1439.i, %bb.gn
  %.441660.i = phi ptr [ %.46.i, %bb.gn ], [ %.43.i, %.thread1439.i ] ; 11 uses
  %.1118411659.i = phi ptr [ %i.bbk, %bb.gn ], [ %.1018401698.i, %.thread1439.i ] ; 5 uses
  %.018881658.i = phi i32 [ %i.bbl, %bb.gn ], [ 0, %.thread1439.i ]
  %.118981657.i = phi ptr [ %i.bbj, %bb.gn ], [ %.01897.i, %.thread1439.i ] ; 20 uses
  %.210421656.i = phi <4 x float> [ %.41044.i, %bb.gn ], [ %.11041.i, %.thread1439.i ] ; 6 uses
  %.310511655.i = phi <4 x float> [ %.51053.i, %bb.gn ], [ %.21050.i, %.thread1439.i ] ; 10 uses
  %i.axy = load <4 x i32>, ptr %.1118411659.i, align 16, !tbaa !17
  %i.axz = sitofp fast <4 x i32> %i.axy to <4 x float> ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 16
  %i.ayb = load <4 x i32>, ptr %i.aya, align 16, !tbaa !17
  %i.ayc = sitofp fast <4 x i32> %i.ayb to <4 x float> ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 32
  %i.aye = load <4 x i32>, ptr %i.ayd, align 16, !tbaa !17
  %i.ayf = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 48
  %i.ayg = load <4 x i32>, ptr %i.ayf, align 16, !tbaa !17
  %i.ayh = sitofp <4 x i32> %i.aye to <4 x float>
  %i.ayi = shufflevector <4 x float> %i.ayh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ayj = sitofp <4 x i32> %i.ayg to <4 x float>
  %i.ayk = shufflevector <4 x float> %i.ayj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ayl = shufflevector <4 x float> %i.axz, <4 x float> %i.ayi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aym = shufflevector <4 x float> %i.axz, <4 x float> %i.ayi, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ayn = shufflevector <4 x float> %i.ayc, <4 x float> %i.ayk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ayo = shufflevector <4 x float> %i.ayc, <4 x float> %i.ayk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ayp = shufflevector <4 x float> %i.ayl, <4 x float> %i.aym, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ayq = shufflevector <4 x float> %i.ayn, <4 x float> %i.ayo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ayr = shufflevector <4 x float> %i.ayl, <4 x float> %i.aym, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ays = shufflevector <4 x float> %i.ayn, <4 x float> %i.ayo, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ayt = shufflevector <4 x float> %i.ayr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ayu = shufflevector <4 x float> %i.ays, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ayv = fmul fast <4 x float> %i.awz, %i.ayp   ; 7 uses
  %i.ayw = fmul fast <4 x float> %i.awz, %i.ayq   ; 7 uses
  %i.ayx = fmul fast <4 x float> %i.ayt, %i.axa   ; 7 uses
  %i.ayy = fmul fast <4 x float> %i.ayu, %i.axa   ; 7 uses
  %.not1957.i = icmp eq ptr %.441660.i, null
  br i1 %.not1957.i, label %.thread1458.i, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph1661.i
  br i1 %i.aca, label %.thread1445.i, label %bb.fy

.thread1445.i:                                    ; preds = %bb.fx
  %i.ayz = fadd fast <4 x float> %i.ayv, %.310511655.i
  %i.aza = fadd fast <4 x float> %i.ayw, %.310511655.i
  %i.azb = fadd fast <4 x float> %i.ayx, %.310511655.i
  %i.azc = fadd fast <4 x float> %i.ayy, %.310511655.i
  br label %.thread1458.i

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.acb, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.azd = fadd fast <4 x float> %i.ayv, %.310511655.i
  %i.aze = fadd fast <4 x float> %i.ayw, %.310511655.i
  %i.azf = fadd fast <4 x float> %i.ayx, %.210421656.i
  %i.azg = fadd fast <4 x float> %i.ayy, %.210421656.i
  br label %.thread1458.i

bb.ga:                                            ; preds = %bb.fy
  switch i32 %3, label %.thread1458.i [
    i32 3, label %bb.gb
    i32 4, label %bb.gf
  ]

end_hunk_6
