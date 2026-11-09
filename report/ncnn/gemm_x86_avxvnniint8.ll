Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avxvnniint8?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii:bb.a
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
  %niter326.next.3 = add nuw nsw i32 %niter326, 4 ; 2 uses
  %niter326.ncmp.3.not = icmp eq i32 %niter326.next.3, %unroll_iter325
  br i1 %niter326.ncmp.3.not, label %.preheader17.i.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !39

.preheader16.i:                                   ; preds = %.lr.ph55.i, %.preheader17.i
  %.1180.lcssa.i = phi ptr [ %.0179.lcssa.i, %.preheader17.i ], [ %i.fx, %.lr.ph55.i ] ; 2 uses
  %.1177.lcssa.i = phi i32 [ %.0176.lcssa.i, %.preheader17.i ], [ %i.fy, %.lr.ph55.i ] ; 5 uses
  %.6.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader17.i ], [ %i.fw, %.lr.ph55.i ] ; 3 uses
  %i.ff = icmp slt i32 %.1177.lcssa.i, %5
  br i1 %i.ff, label %.lr.ph62.i.preheader, label %._crit_edge63.i

.lr.ph62.i.preheader:                             ; preds = %.preheader16.i
  %i.fg = sub i32 %5, %.1177.lcssa.i
  %xtraiter327 = and i32 %i.fg, 3                 ; 2 uses
  %lcmp.mod328.not = icmp eq i32 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol

.lr.ph62.i.prol:                                  ; preds = %.lr.ph62.i.preheader, %.lr.ph62.i.prol
  %.761.i.prol = phi ptr [ %i.fm, %.lr.ph62.i.prol ], [ %.6.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %.217860.i.prol = phi i32 [ %i.fo, %.lr.ph62.i.prol ], [ %.1177.lcssa.i, %.lr.ph62.i.preheader ]
  %.218159.i.prol = phi ptr [ %i.fn, %.lr.ph62.i.prol ], [ %.1180.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %prol.iter329 = phi i32 [ %prol.iter329.next, %.lr.ph62.i.prol ], [ 0, %.lr.ph62.i.preheader ]
  %i.fh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.218159.i.prol, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.fi = bitcast <4 x i32> %i.fh to <16 x i8>
  %i.fj = shufflevector <16 x i8> %i.fi, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = bitcast <16 x i8> %i.fj to <4 x float>
  %i.fl = extractelement <4 x float> %i.fk, i64 0
  store float %i.fl, ptr %.761.i.prol, align 1, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %.761.i.prol, i64 4 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.218159.i.prol, i64 1 ; 2 uses
  %i.fo = add nuw nsw i32 %.217860.i.prol, 1      ; 2 uses
  %prol.iter329.next = add i32 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i32 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol, !llvm.loop !40

.lr.ph62.i.prol.loopexit:                         ; preds = %.lr.ph62.i.prol, %.lr.ph62.i.preheader
  %.lcssa307.unr = phi ptr [ poison, %.lr.ph62.i.preheader ], [ %i.fm, %.lr.ph62.i.prol ]
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
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader16.i ], [ %.lcssa307.unr, %.lr.ph62.i.prol.loopexit ], [ %i.hb, %.lr.ph62.i ] ; 2 uses
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
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.hp)
  %i.hq = xor i32 %i.hl, -1
  %i.hr = add nsw i32 %smax, %i.hq                ; 3 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 5 uses
  %i.hu = add nsw i32 %5, -4                      ; 3 uses
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = and i64 %i.hv, 4294967292               ; 2 uses
  %i.hx = lshr i64 %i.hv, 2
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 5 uses
  %min.iters.check244 = icmp ult i32 %i.hu, 12
  %min.iters.check250 = icmp ult i32 %i.hu, 60
  %i.hz = and i64 %i.hy, 12
  %n.vec252 = and i64 %i.hy, 2147483632           ; 5 uses
  %i.ia = trunc nuw nsw i64 %n.vec252 to i32
  %i.ib = shl i32 %i.ia, 2
  %i.ic = shl nuw nsw i64 %n.vec252, 2            ; 2 uses
  %cmp.n265 = icmp eq i64 %i.hy, %n.vec252
  %min.epilog.iters.check269 = icmp eq i64 %i.hz, 0
  %n.vec272 = and i64 %i.hy, 2147483644           ; 4 uses
  %i.id = trunc nuw nsw i64 %n.vec272 to i32
  %i.ie = shl i32 %i.id, 2
  %i.if = shl nuw nsw i64 %n.vec272, 2            ; 2 uses
  %cmp.n285 = icmp eq i64 %i.hy, %n.vec272
  %min.iters.check203 = icmp ult i32 %i.hr, 7
  %min.iters.check206 = icmp ult i32 %i.hr, 127
  %i.ig = and i64 %i.ht, 120
  %n.vec208 = and i64 %i.ht, 8589934464           ; 6 uses
  %i.ih = trunc i64 %n.vec208 to i32
  %i.ii = add i32 %i.hl, %i.ih
  %cmp.n219 = icmp eq i64 %i.ht, %n.vec208
  %min.epilog.iters.check223 = icmp eq i64 %i.ig, 0
  %n.vec226 = and i64 %i.ht, 8589934584           ; 5 uses
  %i.ij = trunc i64 %n.vec226 to i32
  %i.ik = add i32 %i.hl, %i.ij
  %cmp.n234 = icmp eq i64 %i.ht, %n.vec226
  br label %iter.check266

iter.check266:                                    ; preds = %._crit_edge113.us.i, %.lr.ph105.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge113.us.i ], [ 0, %.lr.ph105.us.preheader.i ] ; 2 uses
  %indvars.iv164.i = phi i64 [ %indvars.iv.next165.i, %._crit_edge113.us.i ], [ %i.hm, %.lr.ph105.us.preheader.i ] ; 2 uses
  %.12116.us.i = phi ptr [ %.14.lcssa.us.i, %._crit_edge113.us.i ], [ %.8.lcssa.i, %.lr.ph105.us.preheader.i ] ; 9 uses
  %.12116.us.i202 = ptrtoaddr ptr %.12116.us.i to i64
  %i.il = add i64 %indvars.iv164.i, %i.hn
  %i.im = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.in = ptrtoaddr ptr %i.im to i64
  %i.io = load i32, ptr %i.hh, align 4, !tbaa !15
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = mul i64 %i.il, %i.ip
  %i.ir = load i64, ptr %i.hi, align 8, !tbaa !16 ; 2 uses
  %i.is = mul i64 %i.iq, %i.ir                    ; 2 uses
  %i.it = getelementptr i8, ptr %i.im, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.hj  ; 7 uses
  br i1 %min.iters.check244, label %vec.epilog.scalar.ph268.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %iter.check266
  %i.iv = getelementptr i8, ptr %.12116.us.i, i64 %i.hw
  %i.iw = getelementptr i8, ptr %i.iv, i64 4
  %i.ix = getelementptr i8, ptr %i.im, i64 %i.hw
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.hj
  %i.iz = getelementptr i8, ptr %i.iy, i64 4
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.is
  %bound0246 = icmp ult ptr %.12116.us.i, %i.ja
  %bound1247 = icmp ult ptr %i.iu, %i.iw
  %found.conflict248 = and i1 %bound0246, %bound1247
  br i1 %found.conflict248, label %vec.epilog.scalar.ph268.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %vector.memcheck245
  br i1 %min.iters.check250, label %vec.epilog.ph270, label %vector.ph251

vector.ph251:                                     ; preds = %vector.main.loop.iter.check249
  %i.jb = getelementptr i8, ptr %i.iu, i64 %i.ic  ; 2 uses
  %i.jc = getelementptr i8, ptr %.12116.us.i, i64 %i.ic ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.ph251, %vector.body253
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next263, %vector.body253 ] ; 2 uses
  %i.jd = shl i64 %index254, 2                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %i.iu, i64 %i.jd
  %next.gep256 = getelementptr i8, ptr %.12116.us.i, i64 %i.jd
  %wide.vec257 = load <64 x i8>, ptr %next.gep255, align 1, !tbaa !17, !alias.scope !71
  store <64 x i8> %wide.vec257, ptr %next.gep256, align 1, !tbaa !17, !alias.scope !72, !noalias !71
  %index.next263 = add nuw i64 %index254, 16      ; 2 uses
  %i.je = icmp eq i64 %index.next263, %n.vec252
  br i1 %i.je, label %middle.block264, label %vector.body253, !llvm.loop !47

middle.block264:                                  ; preds = %vector.body253
  br i1 %cmp.n265, label %..preheader_crit_edge.us.i, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block264
  br i1 %min.epilog.iters.check269, label %vec.epilog.scalar.ph268.preheader, label %vec.epilog.ph270, !prof !22

vec.epilog.ph270:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check267
  %vec.epilog.resume.val271 = phi i64 [ %n.vec252, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check249 ]
  %i.jf = getelementptr i8, ptr %i.iu, i64 %i.if  ; 2 uses
  %i.jg = getelementptr i8, ptr %.12116.us.i, i64 %i.if ; 2 uses
  br label %vec.epilog.vector.body273

vec.epilog.vector.body273:                        ; preds = %vec.epilog.vector.body273, %vec.epilog.ph270
  %index274 = phi i64 [ %vec.epilog.resume.val271, %vec.epilog.ph270 ], [ %index.next283, %vec.epilog.vector.body273 ] ; 2 uses
  %i.jh = shl i64 %index274, 2                    ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.iu, i64 %i.jh
  %next.gep276 = getelementptr i8, ptr %.12116.us.i, i64 %i.jh
  %wide.vec277 = load <16 x i8>, ptr %next.gep275, align 1, !tbaa !17, !alias.scope !71
  store <16 x i8> %wide.vec277, ptr %next.gep276, align 1, !tbaa !17, !alias.scope !72, !noalias !71
  %index.next283 = add nuw i64 %index274, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next283, %n.vec272
  br i1 %i.ji, label %vec.epilog.middle.block284, label %vec.epilog.vector.body273, !llvm.loop !48

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body273
  br i1 %cmp.n285, label %..preheader_crit_edge.us.i, label %vec.epilog.scalar.ph268.preheader

vec.epilog.scalar.ph268.preheader:                ; preds = %iter.check266, %vector.memcheck245, %vec.epilog.iter.check267, %vec.epilog.middle.block284
  %.0103.us.i.ph = phi i32 [ 0, %iter.check266 ], [ 0, %vector.memcheck245 ], [ %i.ib, %vec.epilog.iter.check267 ], [ %i.ie, %vec.epilog.middle.block284 ]
  %.0156102.us.i.ph = phi ptr [ %i.iu, %iter.check266 ], [ %i.iu, %vector.memcheck245 ], [ %i.jb, %vec.epilog.iter.check267 ], [ %i.jf, %vec.epilog.middle.block284 ]
  %.13101.us.i.ph = phi ptr [ %.12116.us.i, %iter.check266 ], [ %.12116.us.i, %vector.memcheck245 ], [ %i.jc, %vec.epilog.iter.check267 ], [ %i.jg, %vec.epilog.middle.block284 ]
  br label %vec.epilog.scalar.ph268

vec.epilog.scalar.ph268:                          ; preds = %vec.epilog.scalar.ph268.preheader, %vec.epilog.scalar.ph268
  %.0103.us.i = phi i32 [ %i.jv, %vec.epilog.scalar.ph268 ], [ %.0103.us.i.ph, %vec.epilog.scalar.ph268.preheader ]
  %.0156102.us.i = phi ptr [ %i.ju, %vec.epilog.scalar.ph268 ], [ %.0156102.us.i.ph, %vec.epilog.scalar.ph268.preheader ] ; 5 uses
  %.13101.us.i = phi ptr [ %i.jt, %vec.epilog.scalar.ph268 ], [ %.13101.us.i.ph, %vec.epilog.scalar.ph268.preheader ] ; 5 uses
  %i.jj = load i8, ptr %.0156102.us.i, align 1, !tbaa !17
  store i8 %i.jj, ptr %.13101.us.i, align 1, !tbaa !17
  %i.jk = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !17
  %i.jm = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 1
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 2
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 3
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !17
  %i.jt = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 4 ; 2 uses
  %i.jv = add nuw nsw i32 %.0103.us.i, 4          ; 2 uses
  %i.jw = or disjoint i32 %i.jv, 3
  %i.jx = icmp slt i32 %i.jw, %5
  br i1 %i.jx, label %vec.epilog.scalar.ph268, label %..preheader_crit_edge.us.i, !llvm.loop !49

.lr.ph112.us.i:                                   ; preds = %.lr.ph112.us.i.preheader, %.lr.ph112.us.i
  %.1111.us.i = phi i32 [ %i.kb, %.lr.ph112.us.i ], [ %.1111.us.i.ph, %.lr.ph112.us.i.preheader ]
  %.1157110.us.i = phi ptr [ %i.ka, %.lr.ph112.us.i ], [ %.1157110.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %.14109.us.i = phi ptr [ %i.jz, %.lr.ph112.us.i ], [ %.14109.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %i.jy = load i8, ptr %.1157110.us.i, align 1, !tbaa !17
  store i8 %i.jy, ptr %.14109.us.i, align 1, !tbaa !17
  %i.jz = getelementptr inbounds nuw i8, ptr %.14109.us.i, i64 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1157110.us.i, i64 1
  %i.kb = add nuw nsw i32 %.1111.us.i, 1          ; 2 uses
  %i.kc = icmp slt i32 %i.kb, %5
  br i1 %i.kc, label %.lr.ph112.us.i, label %._crit_edge113.us.i, !llvm.loop !50

._crit_edge113.us.i:                              ; preds = %.lr.ph112.us.i, %middle.block218, %vec.epilog.middle.block233, %..preheader_crit_edge.us.i
  %.14.lcssa.us.i = phi ptr [ %.lcssa84, %..preheader_crit_edge.us.i ], [ %i.kt, %vec.epilog.middle.block233 ], [ %i.kk, %middle.block218 ], [ %i.jz, %.lr.ph112.us.i ]
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond168.not.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check266, !llvm.loop !51

..preheader_crit_edge.us.i:                       ; preds = %vec.epilog.scalar.ph268, %vec.epilog.middle.block284, %middle.block264
  %.lcssa84 = phi ptr [ %i.jg, %vec.epilog.middle.block284 ], [ %i.jc, %middle.block264 ], [ %i.jt, %vec.epilog.scalar.ph268 ] ; 7 uses
  %.lcssa = phi ptr [ %i.jf, %vec.epilog.middle.block284 ], [ %i.jb, %middle.block264 ], [ %i.ju, %vec.epilog.scalar.ph268 ] ; 6 uses
  br i1 %.not, label %._crit_edge113.us.i, label %iter.check220

iter.check220:                                    ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check203, label %.lr.ph112.us.i.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %iter.check220
  %i.kd = add i64 %i.ho, %indvar
  %i.ke = mul i64 %i.kd, %i.ir
  %i.kf = mul i64 %i.ke, %i.ip
  %i.kg = add i64 %i.kf, %i.in
  %i.kh = add i64 %i.kg, %i.hj
  %i.ki = sub i64 %i.kh, %.12116.us.i202
  %diff.check = icmp ugt i64 %i.ki, -128
  br i1 %diff.check, label %.lr.ph112.us.i.preheader, label %vector.main.loop.iter.check205

vector.main.loop.iter.check205:                   ; preds = %vector.memcheck204
  br i1 %min.iters.check206, label %vec.epilog.ph224, label %vector.ph207

vector.ph207:                                     ; preds = %vector.main.loop.iter.check205
  %i.kj = getelementptr i8, ptr %.lcssa, i64 %n.vec208
  %i.kk = getelementptr i8, ptr %.lcssa84, i64 %n.vec208 ; 2 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.ph207, %vector.body209
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %.lcssa, i64 %index210 ; 4 uses
  %next.gep212 = getelementptr i8, ptr %.lcssa84, i64 %index210 ; 4 uses
  %i.kl = getelementptr i8, ptr %next.gep211, i64 32
  %i.km = getelementptr i8, ptr %next.gep211, i64 64
  %i.kn = getelementptr i8, ptr %next.gep211, i64 96
  %wide.load213 = load <32 x i8>, ptr %next.gep211, align 1, !tbaa !17
  %wide.load214 = load <32 x i8>, ptr %i.kl, align 1, !tbaa !17
  %wide.load215 = load <32 x i8>, ptr %i.km, align 1, !tbaa !17
  %wide.load216 = load <32 x i8>, ptr %i.kn, align 1, !tbaa !17
  %i.ko = getelementptr i8, ptr %next.gep212, i64 32
  %i.kp = getelementptr i8, ptr %next.gep212, i64 64
  %i.kq = getelementptr i8, ptr %next.gep212, i64 96
  store <32 x i8> %wide.load213, ptr %next.gep212, align 1, !tbaa !17
  store <32 x i8> %wide.load214, ptr %i.ko, align 1, !tbaa !17
  store <32 x i8> %wide.load215, ptr %i.kp, align 1, !tbaa !17
  store <32 x i8> %wide.load216, ptr %i.kq, align 1, !tbaa !17
  %index.next217 = add nuw i64 %index210, 128     ; 2 uses
  %i.kr = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.kr, label %middle.block218, label %vector.body209, !llvm.loop !52

middle.block218:                                  ; preds = %vector.body209
  br i1 %cmp.n219, label %._crit_edge113.us.i, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block218
  br i1 %min.epilog.iters.check223, label %.lr.ph112.us.i.preheader, label %vec.epilog.ph224, !prof !23

vec.epilog.ph224:                                 ; preds = %vector.main.loop.iter.check205, %vec.epilog.iter.check221
  %vec.epilog.resume.val225 = phi i64 [ %n.vec208, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check205 ]
  %i.ks = getelementptr i8, ptr %.lcssa, i64 %n.vec226
  %i.kt = getelementptr i8, ptr %.lcssa84, i64 %n.vec226 ; 2 uses
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph224
  %index228 = phi i64 [ %vec.epilog.resume.val225, %vec.epilog.ph224 ], [ %index.next232, %vec.epilog.vector.body227 ] ; 3 uses
  %next.gep229 = getelementptr i8, ptr %.lcssa, i64 %index228
  %next.gep230 = getelementptr i8, ptr %.lcssa84, i64 %index228
  %wide.load231 = load <8 x i8>, ptr %next.gep229, align 1, !tbaa !17
  store <8 x i8> %wide.load231, ptr %next.gep230, align 1, !tbaa !17
  %index.next232 = add nuw i64 %index228, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next232, %n.vec226
  br i1 %i.ku, label %vec.epilog.middle.block233, label %vec.epilog.vector.body227, !llvm.loop !53

vec.epilog.middle.block233:                       ; preds = %vec.epilog.vector.body227
  br i1 %cmp.n234, label %._crit_edge113.us.i, label %.lr.ph112.us.i.preheader

.lr.ph112.us.i.preheader:                         ; preds = %iter.check220, %vector.memcheck204, %vec.epilog.iter.check221, %vec.epilog.middle.block233
  %.1111.us.i.ph = phi i32 [ %i.hl, %iter.check220 ], [ %i.hl, %vector.memcheck204 ], [ %i.ii, %vec.epilog.iter.check221 ], [ %i.ik, %vec.epilog.middle.block233 ]
  %.1157110.us.i.ph = phi ptr [ %.lcssa, %iter.check220 ], [ %.lcssa, %vector.memcheck204 ], [ %i.kj, %vec.epilog.iter.check221 ], [ %i.ks, %vec.epilog.middle.block233 ]
  %.14109.us.i.ph = phi ptr [ %.lcssa84, %iter.check220 ], [ %.lcssa84, %vector.memcheck204 ], [ %i.kk, %vec.epilog.iter.check221 ], [ %i.kt, %vec.epilog.middle.block233 ]
  br label %.lr.ph112.us.i

.lr.ph117.split.i:                                ; preds = %.lr.ph117.i
  %i.kv = icmp sgt i32 %5, 0
  br i1 %i.kv, label %.preheader.preheader.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph117.split.i
  %i.kw = sext i32 %.2171.lcssa.i to i64
  %i.kx = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %exitcond159.not.i = icmp eq i32 %5, 1
  %exitcond159.not.i.1 = icmp eq i32 %5, 2
  br label %.preheader.i

bb.d:                                             ; preds = %._crit_edge94.i, %.lr.ph98.i
  %indvars.iv156.i = phi i64 [ %i.dx, %.lr.ph98.i ], [ %indvars.iv.next157.i, %._crit_edge94.i ] ; 2 uses
  %.897.i = phi ptr [ %.4.lcssa.i, %.lr.ph98.i ], [ %.11.lcssa.i, %._crit_edge94.i ] ; 2 uses
  %i.ky = add nsw i64 %indvars.iv156.i, %i.dz     ; 2 uses
  %i.kz = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.la = load i32, ptr %i.ds, align 4, !tbaa !15
  %i.lb = sext i32 %i.la to i64
  %i.lc = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.ld = mul i64 %i.lc, %i.lb                    ; 2 uses
  %i.le = mul i64 %i.ld, %i.ky
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.du ; 2 uses
  %i.lh = add nsw i64 %i.ky, 1
  %i.li = mul i64 %i.ld, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.li
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %i.du ; 2 uses
  br i1 %i.dv, label %.lr.ph75.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %.lr.ph75.i, %bb.d
  %.9.lcssa.i = phi ptr [ %.897.i, %bb.d ], [ %i.ns, %.lr.ph75.i ] ; 10 uses
  %.0163.lcssa.i = phi ptr [ %i.lg, %bb.d ], [ %i.nt, %.lr.ph75.i ] ; 9 uses
  %.0160.lcssa.i = phi ptr [ %i.lk, %bb.d ], [ %i.nu, %.lr.ph75.i ] ; 9 uses
  %.0158.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.dw, %.lr.ph75.i ] ; 8 uses
  %i.ll = or disjoint i32 %.0158.lcssa.i, 1
  %i.lm = icmp slt i32 %i.ll, %5
  br i1 %i.lm, label %iter.check174, label %.preheader13.i

iter.check174:                                    ; preds = %.preheader14.i
  %i.ln = sub i32 %i.eb, %.0158.lcssa.i           ; 3 uses
  %i.lo = lshr i32 %i.ln, 1
  %narrow = add nuw i32 %i.lo, 1
  %i.lp = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check148 = icmp ult i32 %i.ln, 14
  br i1 %min.iters.check148, label %.lr.ph84.i.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %iter.check174
  %i.lq = sub i32 %i.ea, %.0158.lcssa.i
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = shl nuw nsw i64 %i.lr, 1
  %i.lt = and i64 %i.ls, 8589934588
  %i.lu = getelementptr i8, ptr %.9.lcssa.i, i64 %i.lt
  %i.lv = getelementptr i8, ptr %i.lu, i64 4      ; 2 uses
  %i.lw = and i64 %i.lr, 4294967294
  %i.lx = add nuw nsw i64 %i.lw, 2                ; 2 uses
  %i.ly = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.lx
  %i.lz = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.lx
  %bound0150 = icmp ult ptr %.9.lcssa.i, %i.ly
  %bound1151 = icmp ult ptr %.0160.lcssa.i, %i.lv
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %.9.lcssa.i, %i.lz
  %bound1154 = icmp ult ptr %.0163.lcssa.i, %i.lv
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  br i1 %conflict.rdx156, label %.lr.ph84.i.preheader, label %vector.main.loop.iter.check157

vector.main.loop.iter.check157:                   ; preds = %vector.memcheck149
  %min.iters.check158 = icmp ult i32 %i.ln, 62
  br i1 %min.iters.check158, label %vec.epilog.ph178, label %vector.ph159

vector.ph159:                                     ; preds = %vector.main.loop.iter.check157
  %i.ma = and i64 %i.lp, 24
  %n.vec160 = and i64 %i.lp, 4294967264           ; 6 uses
  %i.mb = trunc nuw i64 %n.vec160 to i32
  %i.mc = shl i32 %i.mb, 1
  %i.md = add i32 %.0158.lcssa.i, %i.mc           ; 2 uses
  %i.me = shl nuw nsw i64 %n.vec160, 1            ; 2 uses
  %i.mf = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.me ; 2 uses
  %i.mg = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.me ; 2 uses
  %i.mh = shl nuw nsw i64 %n.vec160, 2
  %i.mi = getelementptr i8, ptr %.9.lcssa.i, i64 %i.mh ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.ph159, %vector.body161
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next171, %vector.body161 ] ; 3 uses
  %i.mj = shl i64 %index162, 1                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.mj
  %next.gep164 = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.mj
  %i.mk = shl i64 %index162, 2
  %next.gep165 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.mk
  %wide.vec = load <64 x i8>, ptr %next.gep164, align 1, !tbaa !17, !alias.scope !73
  %wide.vec167 = load <64 x i8>, ptr %next.gep163, align 1, !tbaa !17, !alias.scope !74
  %interleaved.vec170 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec167, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec170, ptr %next.gep165, align 1, !tbaa !17, !alias.scope !75, !noalias !76
  %index.next171 = add nuw i64 %index162, 32      ; 2 uses
  %i.ml = icmp eq i64 %index.next171, %n.vec160
  br i1 %i.ml, label %middle.block172, label %vector.body161, !llvm.loop !58

middle.block172:                                  ; preds = %vector.body161
  %cmp.n173 = icmp eq i64 %n.vec160, %i.lp
  br i1 %cmp.n173, label %.preheader13.i, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %middle.block172
  %min.epilog.iters.check177 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check177, label %.lr.ph84.i.preheader, label %vec.epilog.ph178, !prof !24

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check157, %vec.epilog.iter.check175
  %vec.epilog.resume.val179 = phi i64 [ %n.vec160, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check157 ]
  %n.vec180 = and i64 %i.lp, 4294967288           ; 5 uses
  %i.mm = trunc nuw i64 %n.vec180 to i32
  %i.mn = shl i32 %i.mm, 1
  %i.mo = add i32 %.0158.lcssa.i, %i.mn           ; 2 uses
  %i.mp = shl nuw nsw i64 %n.vec180, 1            ; 2 uses
  %i.mq = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.mp ; 2 uses
  %i.mr = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.mp ; 2 uses
  %i.ms = shl nuw nsw i64 %n.vec180, 2
  %i.mt = getelementptr i8, ptr %.9.lcssa.i, i64 %i.ms ; 2 uses
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph178
  %index182 = phi i64 [ %vec.epilog.resume.val179, %vec.epilog.ph178 ], [ %index.next193, %vec.epilog.vector.body181 ] ; 3 uses
  %i.mu = shl i64 %index182, 1                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.mu
  %next.gep184 = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.mu
  %i.mv = shl i64 %index182, 2
  %next.gep185 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.mv
  %wide.vec186 = load <16 x i8>, ptr %next.gep184, align 1, !tbaa !17, !alias.scope !73
  %wide.vec189 = load <16 x i8>, ptr %next.gep183, align 1, !tbaa !17, !alias.scope !74
  %interleaved.vec192 = shufflevector <16 x i8> %wide.vec186, <16 x i8> %wide.vec189, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec192, ptr %next.gep185, align 1, !tbaa !17, !alias.scope !75, !noalias !76
  %index.next193 = add nuw i64 %index182, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next193, %n.vec180
  br i1 %i.mw, label %vec.epilog.middle.block194, label %vec.epilog.vector.body181, !llvm.loop !59

vec.epilog.middle.block194:                       ; preds = %vec.epilog.vector.body181
  %cmp.n195 = icmp eq i64 %n.vec180, %i.lp
  br i1 %cmp.n195, label %.preheader13.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %iter.check174, %vector.memcheck149, %vec.epilog.iter.check175, %vec.epilog.middle.block194
  %.115983.i.ph = phi i32 [ %.0158.lcssa.i, %iter.check174 ], [ %.0158.lcssa.i, %vector.memcheck149 ], [ %i.md, %vec.epilog.iter.check175 ], [ %i.mo, %vec.epilog.middle.block194 ]
  %.116182.i.ph = phi ptr [ %.0160.lcssa.i, %iter.check174 ], [ %.0160.lcssa.i, %vector.memcheck149 ], [ %i.mf, %vec.epilog.iter.check175 ], [ %i.mq, %vec.epilog.middle.block194 ]
  %.116481.i.ph = phi ptr [ %.0163.lcssa.i, %iter.check174 ], [ %.0163.lcssa.i, %vector.memcheck149 ], [ %i.mg, %vec.epilog.iter.check175 ], [ %i.mr, %vec.epilog.middle.block194 ]
  %.1080.i.ph = phi ptr [ %.9.lcssa.i, %iter.check174 ], [ %.9.lcssa.i, %vector.memcheck149 ], [ %i.mi, %vec.epilog.iter.check175 ], [ %i.mt, %vec.epilog.middle.block194 ]
  br label %.lr.ph84.i

.lr.ph75.i:                                       ; preds = %bb.d, %.lr.ph75.i
  %.015873.i = phi i32 [ %i.nv, %.lr.ph75.i ], [ 0, %bb.d ]
  %.016072.i = phi ptr [ %i.nu, %.lr.ph75.i ], [ %i.lk, %bb.d ] ; 5 uses
  %.016371.i = phi ptr [ %i.nt, %.lr.ph75.i ], [ %i.lg, %bb.d ] ; 5 uses
  %.970.i = phi ptr [ %i.ns, %.lr.ph75.i ], [ %.897.i, %bb.d ] ; 9 uses
  %i.mx = load i8, ptr %.016371.i, align 1, !tbaa !17
  store i8 %i.mx, ptr %.970.i, align 1, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.016371.i, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !17
  %i.na = getelementptr inbounds nuw i8, ptr %.970.i, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %.016371.i, i64 2
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %.970.i, i64 2
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %.016371.i, i64 3
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !17
  %i.ng = getelementptr inbounds nuw i8, ptr %.970.i, i64 3
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !17
  %i.nh = load i8, ptr %.016072.i, align 1, !tbaa !17
  %i.ni = getelementptr inbounds nuw i8, ptr %.970.i, i64 4
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !17
  %i.nj = getelementptr inbounds nuw i8, ptr %.016072.i, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %.970.i, i64 5
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !17
  %i.nm = getelementptr inbounds nuw i8, ptr %.016072.i, i64 2
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %.970.i, i64 6
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %.016072.i, i64 3
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.970.i, i64 7
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %.970.i, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.016371.i, i64 4 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.016072.i, i64 4 ; 2 uses
  %i.nv = add nuw nsw i32 %.015873.i, 4           ; 2 uses
  %i.nw = or disjoint i32 %i.nv, 3
  %i.nx = icmp slt i32 %i.nw, %5
  br i1 %i.nx, label %.lr.ph75.i, label %.preheader14.i, !llvm.loop !60

.preheader13.i:                                   ; preds = %.lr.ph84.i, %middle.block172, %vec.epilog.middle.block194, %.preheader14.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader14.i ], [ %i.mt, %vec.epilog.middle.block194 ], [ %i.mi, %middle.block172 ], [ %i.pw, %.lr.ph84.i ] ; 10 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader14.i ], [ %i.mr, %vec.epilog.middle.block194 ], [ %i.mg, %middle.block172 ], [ %i.px, %.lr.ph84.i ] ; 8 uses
  %.1161.lcssa.i = phi ptr [ %.0160.lcssa.i, %.preheader14.i ], [ %i.mq, %vec.epilog.middle.block194 ], [ %i.mf, %middle.block172 ], [ %i.py, %.lr.ph84.i ] ; 8 uses
  %.1159.lcssa.i = phi i32 [ %.0158.lcssa.i, %.preheader14.i ], [ %i.mo, %vec.epilog.middle.block194 ], [ %i.md, %middle.block172 ], [ %i.pz, %.lr.ph84.i ] ; 7 uses
  %i.ny = icmp slt i32 %.1159.lcssa.i, %5
  br i1 %i.ny, label %iter.check, label %._crit_edge94.i

iter.check:                                       ; preds = %.preheader13.i
  %i.nz = xor i32 %.1159.lcssa.i, -1
  %i.oa = add i32 %5, %i.nz                       ; 3 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.oa, 7
  br i1 %min.iters.check, label %.lr.ph93.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.od = xor i32 %.1159.lcssa.i, -1
  %i.oe = add i32 %5, %i.od
  %i.of = zext i32 %i.oe to i64                   ; 2 uses
  %i.og = shl nuw nsw i64 %i.of, 1
  %i.oh = getelementptr i8, ptr %.10.lcssa.i, i64 %i.og
  %i.oi = getelementptr i8, ptr %i.oh, i64 2      ; 2 uses
  %i.oj = add nuw nsw i64 %i.of, 1                ; 2 uses
  %i.ok = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.oj
  %i.ol = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.oj
  %bound0 = icmp ult ptr %.10.lcssa.i, %i.ok
  %bound1 = icmp ult ptr %.1161.lcssa.i, %i.oi
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %.10.lcssa.i, %i.ol
  %bound1116 = icmp ult ptr %.1164.lcssa.i, %i.oi
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  br i1 %conflict.rdx, label %.lr.ph93.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check118 = icmp ult i32 %i.oa, 31
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.om = and i64 %i.oc, 24
  %n.vec = and i64 %i.oc, 8589934560              ; 7 uses
  %i.on = trunc i64 %n.vec to i32
  %i.oo = add i32 %.1159.lcssa.i, %i.on
  %i.op = getelementptr i8, ptr %.1161.lcssa.i, i64 %n.vec
  %i.oq = getelementptr i8, ptr %.1164.lcssa.i, i64 %n.vec
  %i.or = shl nuw nsw i64 %n.vec, 1
  %i.os = getelementptr i8, ptr %.10.lcssa.i, i64 %i.or ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.1161.lcssa.i, i64 %index
  %next.gep119 = getelementptr i8, ptr %.1164.lcssa.i, i64 %index
  %i.ot = shl i64 %index, 1
  %next.gep120 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.ot
  %wide.load = load <32 x i8>, ptr %next.gep119, align 1, !tbaa !17, !alias.scope !77
  %wide.load121 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !78
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load121, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep120, align 1, !tbaa !17, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii:bb.a
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
  %niter326.next.3 = add nuw nsw i32 %niter326, 4 ; 2 uses
  %niter326.ncmp.3.not = icmp eq i32 %niter326.next.3, %unroll_iter325
  br i1 %niter326.ncmp.3.not, label %.preheader17.i.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !106

.preheader16.i:                                   ; preds = %.lr.ph55.i, %.preheader17.i
  %.1180.lcssa.i = phi ptr [ %.0179.lcssa.i, %.preheader17.i ], [ %i.fx, %.lr.ph55.i ] ; 2 uses
  %.1177.lcssa.i = phi i32 [ %.0176.lcssa.i, %.preheader17.i ], [ %i.fy, %.lr.ph55.i ] ; 5 uses
  %.6.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader17.i ], [ %i.fw, %.lr.ph55.i ] ; 3 uses
  %i.ff = icmp slt i32 %.1177.lcssa.i, %5
  br i1 %i.ff, label %.lr.ph62.i.preheader, label %._crit_edge63.i

.lr.ph62.i.preheader:                             ; preds = %.preheader16.i
  %i.fg = sub i32 %5, %.1177.lcssa.i
  %xtraiter327 = and i32 %i.fg, 3                 ; 2 uses
  %lcmp.mod328.not = icmp eq i32 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol

.lr.ph62.i.prol:                                  ; preds = %.lr.ph62.i.preheader, %.lr.ph62.i.prol
  %.761.i.prol = phi ptr [ %i.fm, %.lr.ph62.i.prol ], [ %.6.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %.217860.i.prol = phi i32 [ %i.fo, %.lr.ph62.i.prol ], [ %.1177.lcssa.i, %.lr.ph62.i.preheader ]
  %.218159.i.prol = phi ptr [ %i.fn, %.lr.ph62.i.prol ], [ %.1180.lcssa.i, %.lr.ph62.i.preheader ] ; 2 uses
  %prol.iter329 = phi i32 [ %prol.iter329.next, %.lr.ph62.i.prol ], [ 0, %.lr.ph62.i.preheader ]
  %i.fh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.218159.i.prol, <4 x i32> %i.en, <4 x i32> splat (i32 -1), i8 1)
  %i.fi = bitcast <4 x i32> %i.fh to <16 x i8>
  %i.fj = shufflevector <16 x i8> %i.fi, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = bitcast <16 x i8> %i.fj to <4 x float>
  %i.fl = extractelement <4 x float> %i.fk, i64 0
  store float %i.fl, ptr %.761.i.prol, align 1, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %.761.i.prol, i64 4 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.218159.i.prol, i64 1 ; 2 uses
  %i.fo = add nuw nsw i32 %.217860.i.prol, 1      ; 2 uses
  %prol.iter329.next = add i32 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i32 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.lr.ph62.i.prol.loopexit, label %.lr.ph62.i.prol, !llvm.loop !107

.lr.ph62.i.prol.loopexit:                         ; preds = %.lr.ph62.i.prol, %.lr.ph62.i.preheader
  %.lcssa307.unr = phi ptr [ poison, %.lr.ph62.i.preheader ], [ %i.fm, %.lr.ph62.i.prol ]
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
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader16.i ], [ %.lcssa307.unr, %.lr.ph62.i.prol.loopexit ], [ %i.hb, %.lr.ph62.i ] ; 2 uses
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
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.hp)
  %i.hq = xor i32 %i.hl, -1
  %i.hr = add nsw i32 %smax, %i.hq                ; 3 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 5 uses
  %i.hu = add nsw i32 %5, -4                      ; 3 uses
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = and i64 %i.hv, 4294967292               ; 2 uses
  %i.hx = lshr i64 %i.hv, 2
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 5 uses
  %min.iters.check244 = icmp ult i32 %i.hu, 12
  %min.iters.check250 = icmp ult i32 %i.hu, 60
  %i.hz = and i64 %i.hy, 12
  %n.vec252 = and i64 %i.hy, 2147483632           ; 5 uses
  %i.ia = trunc nuw nsw i64 %n.vec252 to i32
  %i.ib = shl i32 %i.ia, 2
  %i.ic = shl nuw nsw i64 %n.vec252, 2            ; 2 uses
  %cmp.n265 = icmp eq i64 %i.hy, %n.vec252
  %min.epilog.iters.check269 = icmp eq i64 %i.hz, 0
  %n.vec272 = and i64 %i.hy, 2147483644           ; 4 uses
  %i.id = trunc nuw nsw i64 %n.vec272 to i32
  %i.ie = shl i32 %i.id, 2
  %i.if = shl nuw nsw i64 %n.vec272, 2            ; 2 uses
  %cmp.n285 = icmp eq i64 %i.hy, %n.vec272
  %min.iters.check203 = icmp ult i32 %i.hr, 7
  %min.iters.check206 = icmp ult i32 %i.hr, 127
  %i.ig = and i64 %i.ht, 120
  %n.vec208 = and i64 %i.ht, 8589934464           ; 6 uses
  %i.ih = trunc i64 %n.vec208 to i32
  %i.ii = add i32 %i.hl, %i.ih
  %cmp.n219 = icmp eq i64 %i.ht, %n.vec208
  %min.epilog.iters.check223 = icmp eq i64 %i.ig, 0
  %n.vec226 = and i64 %i.ht, 8589934584           ; 5 uses
  %i.ij = trunc i64 %n.vec226 to i32
  %i.ik = add i32 %i.hl, %i.ij
  %cmp.n234 = icmp eq i64 %i.ht, %n.vec226
  br label %iter.check266

iter.check266:                                    ; preds = %._crit_edge113.us.i, %.lr.ph105.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge113.us.i ], [ 0, %.lr.ph105.us.preheader.i ] ; 2 uses
  %indvars.iv164.i = phi i64 [ %indvars.iv.next165.i, %._crit_edge113.us.i ], [ %i.hm, %.lr.ph105.us.preheader.i ] ; 2 uses
  %.12116.us.i = phi ptr [ %.14.lcssa.us.i, %._crit_edge113.us.i ], [ %.8.lcssa.i, %.lr.ph105.us.preheader.i ] ; 9 uses
  %.12116.us.i202 = ptrtoaddr ptr %.12116.us.i to i64
  %i.il = add i64 %indvars.iv164.i, %i.hn
  %i.im = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.in = ptrtoaddr ptr %i.im to i64
  %i.io = load i32, ptr %i.hh, align 4, !tbaa !15
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = mul i64 %i.il, %i.ip
  %i.ir = load i64, ptr %i.hi, align 8, !tbaa !16 ; 2 uses
  %i.is = mul i64 %i.iq, %i.ir                    ; 2 uses
  %i.it = getelementptr i8, ptr %i.im, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.hj  ; 7 uses
  br i1 %min.iters.check244, label %vec.epilog.scalar.ph268.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %iter.check266
  %i.iv = getelementptr i8, ptr %.12116.us.i, i64 %i.hw
  %i.iw = getelementptr i8, ptr %i.iv, i64 4
  %i.ix = getelementptr i8, ptr %i.im, i64 %i.hw
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.hj
  %i.iz = getelementptr i8, ptr %i.iy, i64 4
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.is
  %bound0246 = icmp ult ptr %.12116.us.i, %i.ja
  %bound1247 = icmp ult ptr %i.iu, %i.iw
  %found.conflict248 = and i1 %bound0246, %bound1247
  br i1 %found.conflict248, label %vec.epilog.scalar.ph268.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %vector.memcheck245
  br i1 %min.iters.check250, label %vec.epilog.ph270, label %vector.ph251

vector.ph251:                                     ; preds = %vector.main.loop.iter.check249
  %i.jb = getelementptr i8, ptr %i.iu, i64 %i.ic  ; 2 uses
  %i.jc = getelementptr i8, ptr %.12116.us.i, i64 %i.ic ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.ph251, %vector.body253
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next263, %vector.body253 ] ; 2 uses
  %i.jd = shl i64 %index254, 2                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %i.iu, i64 %i.jd
  %next.gep256 = getelementptr i8, ptr %.12116.us.i, i64 %i.jd
  %wide.vec257 = load <64 x i8>, ptr %next.gep255, align 1, !tbaa !17, !alias.scope !138
  store <64 x i8> %wide.vec257, ptr %next.gep256, align 1, !tbaa !17, !alias.scope !139, !noalias !138
  %index.next263 = add nuw i64 %index254, 16      ; 2 uses
  %i.je = icmp eq i64 %index.next263, %n.vec252
  br i1 %i.je, label %middle.block264, label %vector.body253, !llvm.loop !114

middle.block264:                                  ; preds = %vector.body253
  br i1 %cmp.n265, label %..preheader_crit_edge.us.i, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block264
  br i1 %min.epilog.iters.check269, label %vec.epilog.scalar.ph268.preheader, label %vec.epilog.ph270, !prof !22

vec.epilog.ph270:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check267
  %vec.epilog.resume.val271 = phi i64 [ %n.vec252, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check249 ]
  %i.jf = getelementptr i8, ptr %i.iu, i64 %i.if  ; 2 uses
  %i.jg = getelementptr i8, ptr %.12116.us.i, i64 %i.if ; 2 uses
  br label %vec.epilog.vector.body273

vec.epilog.vector.body273:                        ; preds = %vec.epilog.vector.body273, %vec.epilog.ph270
  %index274 = phi i64 [ %vec.epilog.resume.val271, %vec.epilog.ph270 ], [ %index.next283, %vec.epilog.vector.body273 ] ; 2 uses
  %i.jh = shl i64 %index274, 2                    ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.iu, i64 %i.jh
  %next.gep276 = getelementptr i8, ptr %.12116.us.i, i64 %i.jh
  %wide.vec277 = load <16 x i8>, ptr %next.gep275, align 1, !tbaa !17, !alias.scope !138
  store <16 x i8> %wide.vec277, ptr %next.gep276, align 1, !tbaa !17, !alias.scope !139, !noalias !138
  %index.next283 = add nuw i64 %index274, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next283, %n.vec272
  br i1 %i.ji, label %vec.epilog.middle.block284, label %vec.epilog.vector.body273, !llvm.loop !115

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body273
  br i1 %cmp.n285, label %..preheader_crit_edge.us.i, label %vec.epilog.scalar.ph268.preheader

vec.epilog.scalar.ph268.preheader:                ; preds = %iter.check266, %vector.memcheck245, %vec.epilog.iter.check267, %vec.epilog.middle.block284
  %.0103.us.i.ph = phi i32 [ 0, %iter.check266 ], [ 0, %vector.memcheck245 ], [ %i.ib, %vec.epilog.iter.check267 ], [ %i.ie, %vec.epilog.middle.block284 ]
  %.0156102.us.i.ph = phi ptr [ %i.iu, %iter.check266 ], [ %i.iu, %vector.memcheck245 ], [ %i.jb, %vec.epilog.iter.check267 ], [ %i.jf, %vec.epilog.middle.block284 ]
  %.13101.us.i.ph = phi ptr [ %.12116.us.i, %iter.check266 ], [ %.12116.us.i, %vector.memcheck245 ], [ %i.jc, %vec.epilog.iter.check267 ], [ %i.jg, %vec.epilog.middle.block284 ]
  br label %vec.epilog.scalar.ph268

vec.epilog.scalar.ph268:                          ; preds = %vec.epilog.scalar.ph268.preheader, %vec.epilog.scalar.ph268
  %.0103.us.i = phi i32 [ %i.jv, %vec.epilog.scalar.ph268 ], [ %.0103.us.i.ph, %vec.epilog.scalar.ph268.preheader ]
  %.0156102.us.i = phi ptr [ %i.ju, %vec.epilog.scalar.ph268 ], [ %.0156102.us.i.ph, %vec.epilog.scalar.ph268.preheader ] ; 5 uses
  %.13101.us.i = phi ptr [ %i.jt, %vec.epilog.scalar.ph268 ], [ %.13101.us.i.ph, %vec.epilog.scalar.ph268.preheader ] ; 5 uses
  %i.jj = load i8, ptr %.0156102.us.i, align 1, !tbaa !17
  store i8 %i.jj, ptr %.13101.us.i, align 1, !tbaa !17
  %i.jk = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !17
  %i.jm = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 1
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 2
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 3
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !17
  %i.jt = getelementptr inbounds nuw i8, ptr %.13101.us.i, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0156102.us.i, i64 4 ; 2 uses
  %i.jv = add nuw nsw i32 %.0103.us.i, 4          ; 2 uses
  %i.jw = or disjoint i32 %i.jv, 3
  %i.jx = icmp slt i32 %i.jw, %5
  br i1 %i.jx, label %vec.epilog.scalar.ph268, label %..preheader_crit_edge.us.i, !llvm.loop !116

.lr.ph112.us.i:                                   ; preds = %.lr.ph112.us.i.preheader, %.lr.ph112.us.i
  %.1111.us.i = phi i32 [ %i.kb, %.lr.ph112.us.i ], [ %.1111.us.i.ph, %.lr.ph112.us.i.preheader ]
  %.1157110.us.i = phi ptr [ %i.ka, %.lr.ph112.us.i ], [ %.1157110.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %.14109.us.i = phi ptr [ %i.jz, %.lr.ph112.us.i ], [ %.14109.us.i.ph, %.lr.ph112.us.i.preheader ] ; 2 uses
  %i.jy = load i8, ptr %.1157110.us.i, align 1, !tbaa !17
  store i8 %i.jy, ptr %.14109.us.i, align 1, !tbaa !17
  %i.jz = getelementptr inbounds nuw i8, ptr %.14109.us.i, i64 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1157110.us.i, i64 1
  %i.kb = add nuw nsw i32 %.1111.us.i, 1          ; 2 uses
  %i.kc = icmp slt i32 %i.kb, %5
  br i1 %i.kc, label %.lr.ph112.us.i, label %._crit_edge113.us.i, !llvm.loop !117

._crit_edge113.us.i:                              ; preds = %.lr.ph112.us.i, %middle.block218, %vec.epilog.middle.block233, %..preheader_crit_edge.us.i
  %.14.lcssa.us.i = phi ptr [ %.lcssa84, %..preheader_crit_edge.us.i ], [ %i.kt, %vec.epilog.middle.block233 ], [ %i.kk, %middle.block218 ], [ %i.jz, %.lr.ph112.us.i ]
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond168.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check266, !llvm.loop !118

..preheader_crit_edge.us.i:                       ; preds = %vec.epilog.scalar.ph268, %vec.epilog.middle.block284, %middle.block264
  %.lcssa84 = phi ptr [ %i.jg, %vec.epilog.middle.block284 ], [ %i.jc, %middle.block264 ], [ %i.jt, %vec.epilog.scalar.ph268 ] ; 7 uses
  %.lcssa = phi ptr [ %i.jf, %vec.epilog.middle.block284 ], [ %i.jb, %middle.block264 ], [ %i.ju, %vec.epilog.scalar.ph268 ] ; 6 uses
  br i1 %.not, label %._crit_edge113.us.i, label %iter.check220

iter.check220:                                    ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check203, label %.lr.ph112.us.i.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %iter.check220
  %i.kd = add i64 %i.ho, %indvar
  %i.ke = mul i64 %i.kd, %i.ir
  %i.kf = mul i64 %i.ke, %i.ip
  %i.kg = add i64 %i.kf, %i.in
  %i.kh = add i64 %i.kg, %i.hj
  %i.ki = sub i64 %i.kh, %.12116.us.i202
  %diff.check = icmp ugt i64 %i.ki, -128
  br i1 %diff.check, label %.lr.ph112.us.i.preheader, label %vector.main.loop.iter.check205

vector.main.loop.iter.check205:                   ; preds = %vector.memcheck204
  br i1 %min.iters.check206, label %vec.epilog.ph224, label %vector.ph207

vector.ph207:                                     ; preds = %vector.main.loop.iter.check205
  %i.kj = getelementptr i8, ptr %.lcssa, i64 %n.vec208
  %i.kk = getelementptr i8, ptr %.lcssa84, i64 %n.vec208 ; 2 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.ph207, %vector.body209
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %.lcssa, i64 %index210 ; 4 uses
  %next.gep212 = getelementptr i8, ptr %.lcssa84, i64 %index210 ; 4 uses
  %i.kl = getelementptr i8, ptr %next.gep211, i64 32
  %i.km = getelementptr i8, ptr %next.gep211, i64 64
  %i.kn = getelementptr i8, ptr %next.gep211, i64 96
  %wide.load213 = load <32 x i8>, ptr %next.gep211, align 1, !tbaa !17
  %wide.load214 = load <32 x i8>, ptr %i.kl, align 1, !tbaa !17
  %wide.load215 = load <32 x i8>, ptr %i.km, align 1, !tbaa !17
  %wide.load216 = load <32 x i8>, ptr %i.kn, align 1, !tbaa !17
  %i.ko = getelementptr i8, ptr %next.gep212, i64 32
  %i.kp = getelementptr i8, ptr %next.gep212, i64 64
  %i.kq = getelementptr i8, ptr %next.gep212, i64 96
  store <32 x i8> %wide.load213, ptr %next.gep212, align 1, !tbaa !17
  store <32 x i8> %wide.load214, ptr %i.ko, align 1, !tbaa !17
  store <32 x i8> %wide.load215, ptr %i.kp, align 1, !tbaa !17
  store <32 x i8> %wide.load216, ptr %i.kq, align 1, !tbaa !17
  %index.next217 = add nuw i64 %index210, 128     ; 2 uses
  %i.kr = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.kr, label %middle.block218, label %vector.body209, !llvm.loop !119

middle.block218:                                  ; preds = %vector.body209
  br i1 %cmp.n219, label %._crit_edge113.us.i, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block218
  br i1 %min.epilog.iters.check223, label %.lr.ph112.us.i.preheader, label %vec.epilog.ph224, !prof !23

vec.epilog.ph224:                                 ; preds = %vector.main.loop.iter.check205, %vec.epilog.iter.check221
  %vec.epilog.resume.val225 = phi i64 [ %n.vec208, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check205 ]
  %i.ks = getelementptr i8, ptr %.lcssa, i64 %n.vec226
  %i.kt = getelementptr i8, ptr %.lcssa84, i64 %n.vec226 ; 2 uses
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph224
  %index228 = phi i64 [ %vec.epilog.resume.val225, %vec.epilog.ph224 ], [ %index.next232, %vec.epilog.vector.body227 ] ; 3 uses
  %next.gep229 = getelementptr i8, ptr %.lcssa, i64 %index228
  %next.gep230 = getelementptr i8, ptr %.lcssa84, i64 %index228
  %wide.load231 = load <8 x i8>, ptr %next.gep229, align 1, !tbaa !17
  store <8 x i8> %wide.load231, ptr %next.gep230, align 1, !tbaa !17
  %index.next232 = add nuw i64 %index228, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next232, %n.vec226
  br i1 %i.ku, label %vec.epilog.middle.block233, label %vec.epilog.vector.body227, !llvm.loop !120

vec.epilog.middle.block233:                       ; preds = %vec.epilog.vector.body227
  br i1 %cmp.n234, label %._crit_edge113.us.i, label %.lr.ph112.us.i.preheader

.lr.ph112.us.i.preheader:                         ; preds = %iter.check220, %vector.memcheck204, %vec.epilog.iter.check221, %vec.epilog.middle.block233
  %.1111.us.i.ph = phi i32 [ %i.hl, %iter.check220 ], [ %i.hl, %vector.memcheck204 ], [ %i.ii, %vec.epilog.iter.check221 ], [ %i.ik, %vec.epilog.middle.block233 ]
  %.1157110.us.i.ph = phi ptr [ %.lcssa, %iter.check220 ], [ %.lcssa, %vector.memcheck204 ], [ %i.kj, %vec.epilog.iter.check221 ], [ %i.ks, %vec.epilog.middle.block233 ]
  %.14109.us.i.ph = phi ptr [ %.lcssa84, %iter.check220 ], [ %.lcssa84, %vector.memcheck204 ], [ %i.kk, %vec.epilog.iter.check221 ], [ %i.kt, %vec.epilog.middle.block233 ]
  br label %.lr.ph112.us.i

.lr.ph117.split.i:                                ; preds = %.lr.ph117.i
  %i.kv = icmp sgt i32 %5, 0
  br i1 %i.kv, label %.preheader.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph117.split.i
  %i.kw = sext i32 %.2171.lcssa.i to i64
  %i.kx = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %exitcond159.not.i = icmp eq i32 %5, 1
  %exitcond159.not.i.1 = icmp eq i32 %5, 2
  br label %.preheader.i

bb.d:                                             ; preds = %._crit_edge94.i, %.lr.ph98.i
  %indvars.iv156.i = phi i64 [ %i.dx, %.lr.ph98.i ], [ %indvars.iv.next157.i, %._crit_edge94.i ] ; 2 uses
  %.897.i = phi ptr [ %.4.lcssa.i, %.lr.ph98.i ], [ %.11.lcssa.i, %._crit_edge94.i ] ; 2 uses
  %i.ky = add nsw i64 %indvars.iv156.i, %i.dz     ; 2 uses
  %i.kz = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.la = load i32, ptr %i.ds, align 4, !tbaa !15
  %i.lb = sext i32 %i.la to i64
  %i.lc = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.ld = mul i64 %i.lc, %i.lb                    ; 2 uses
  %i.le = mul i64 %i.ld, %i.ky
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.du ; 2 uses
  %i.lh = add nsw i64 %i.ky, 1
  %i.li = mul i64 %i.ld, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.li
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %i.du ; 2 uses
  br i1 %i.dv, label %.lr.ph75.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %.lr.ph75.i, %bb.d
  %.9.lcssa.i = phi ptr [ %.897.i, %bb.d ], [ %i.ns, %.lr.ph75.i ] ; 10 uses
  %.0163.lcssa.i = phi ptr [ %i.lg, %bb.d ], [ %i.nt, %.lr.ph75.i ] ; 9 uses
  %.0160.lcssa.i = phi ptr [ %i.lk, %bb.d ], [ %i.nu, %.lr.ph75.i ] ; 9 uses
  %.0158.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.dw, %.lr.ph75.i ] ; 8 uses
  %i.ll = or disjoint i32 %.0158.lcssa.i, 1
  %i.lm = icmp slt i32 %i.ll, %5
  br i1 %i.lm, label %iter.check174, label %.preheader13.i

iter.check174:                                    ; preds = %.preheader14.i
  %i.ln = sub i32 %i.eb, %.0158.lcssa.i           ; 3 uses
  %i.lo = lshr i32 %i.ln, 1
  %narrow = add nuw i32 %i.lo, 1
  %i.lp = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check148 = icmp ult i32 %i.ln, 14
  br i1 %min.iters.check148, label %.lr.ph84.i.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %iter.check174
  %i.lq = sub i32 %i.ea, %.0158.lcssa.i
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = shl nuw nsw i64 %i.lr, 1
  %i.lt = and i64 %i.ls, 8589934588
  %i.lu = getelementptr i8, ptr %.9.lcssa.i, i64 %i.lt
  %i.lv = getelementptr i8, ptr %i.lu, i64 4      ; 2 uses
  %i.lw = and i64 %i.lr, 4294967294
  %i.lx = add nuw nsw i64 %i.lw, 2                ; 2 uses
  %i.ly = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.lx
  %i.lz = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.lx
  %bound0150 = icmp ult ptr %.9.lcssa.i, %i.ly
  %bound1151 = icmp ult ptr %.0160.lcssa.i, %i.lv
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %.9.lcssa.i, %i.lz
  %bound1154 = icmp ult ptr %.0163.lcssa.i, %i.lv
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  br i1 %conflict.rdx156, label %.lr.ph84.i.preheader, label %vector.main.loop.iter.check157

vector.main.loop.iter.check157:                   ; preds = %vector.memcheck149
  %min.iters.check158 = icmp ult i32 %i.ln, 62
  br i1 %min.iters.check158, label %vec.epilog.ph178, label %vector.ph159

vector.ph159:                                     ; preds = %vector.main.loop.iter.check157
  %i.ma = and i64 %i.lp, 24
  %n.vec160 = and i64 %i.lp, 4294967264           ; 6 uses
  %i.mb = trunc nuw i64 %n.vec160 to i32
  %i.mc = shl i32 %i.mb, 1
  %i.md = add i32 %.0158.lcssa.i, %i.mc           ; 2 uses
  %i.me = shl nuw nsw i64 %n.vec160, 1            ; 2 uses
  %i.mf = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.me ; 2 uses
  %i.mg = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.me ; 2 uses
  %i.mh = shl nuw nsw i64 %n.vec160, 2
  %i.mi = getelementptr i8, ptr %.9.lcssa.i, i64 %i.mh ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.ph159, %vector.body161
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next171, %vector.body161 ] ; 3 uses
  %i.mj = shl i64 %index162, 1                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.mj
  %next.gep164 = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.mj
  %i.mk = shl i64 %index162, 2
  %next.gep165 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.mk
  %wide.vec = load <64 x i8>, ptr %next.gep164, align 1, !tbaa !17, !alias.scope !140
  %wide.vec167 = load <64 x i8>, ptr %next.gep163, align 1, !tbaa !17, !alias.scope !141
  %interleaved.vec170 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec167, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec170, ptr %next.gep165, align 1, !tbaa !17, !alias.scope !142, !noalias !143
  %index.next171 = add nuw i64 %index162, 32      ; 2 uses
  %i.ml = icmp eq i64 %index.next171, %n.vec160
  br i1 %i.ml, label %middle.block172, label %vector.body161, !llvm.loop !125

middle.block172:                                  ; preds = %vector.body161
  %cmp.n173 = icmp eq i64 %n.vec160, %i.lp
  br i1 %cmp.n173, label %.preheader13.i, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %middle.block172
  %min.epilog.iters.check177 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check177, label %.lr.ph84.i.preheader, label %vec.epilog.ph178, !prof !24

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check157, %vec.epilog.iter.check175
  %vec.epilog.resume.val179 = phi i64 [ %n.vec160, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check157 ]
  %n.vec180 = and i64 %i.lp, 4294967288           ; 5 uses
  %i.mm = trunc nuw i64 %n.vec180 to i32
  %i.mn = shl i32 %i.mm, 1
  %i.mo = add i32 %.0158.lcssa.i, %i.mn           ; 2 uses
  %i.mp = shl nuw nsw i64 %n.vec180, 1            ; 2 uses
  %i.mq = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.mp ; 2 uses
  %i.mr = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.mp ; 2 uses
  %i.ms = shl nuw nsw i64 %n.vec180, 2
  %i.mt = getelementptr i8, ptr %.9.lcssa.i, i64 %i.ms ; 2 uses
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph178
  %index182 = phi i64 [ %vec.epilog.resume.val179, %vec.epilog.ph178 ], [ %index.next193, %vec.epilog.vector.body181 ] ; 3 uses
  %i.mu = shl i64 %index182, 1                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %.0160.lcssa.i, i64 %i.mu
  %next.gep184 = getelementptr i8, ptr %.0163.lcssa.i, i64 %i.mu
  %i.mv = shl i64 %index182, 2
  %next.gep185 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.mv
  %wide.vec186 = load <16 x i8>, ptr %next.gep184, align 1, !tbaa !17, !alias.scope !140
  %wide.vec189 = load <16 x i8>, ptr %next.gep183, align 1, !tbaa !17, !alias.scope !141
  %interleaved.vec192 = shufflevector <16 x i8> %wide.vec186, <16 x i8> %wide.vec189, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec192, ptr %next.gep185, align 1, !tbaa !17, !alias.scope !142, !noalias !143
  %index.next193 = add nuw i64 %index182, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next193, %n.vec180
  br i1 %i.mw, label %vec.epilog.middle.block194, label %vec.epilog.vector.body181, !llvm.loop !126

vec.epilog.middle.block194:                       ; preds = %vec.epilog.vector.body181
  %cmp.n195 = icmp eq i64 %n.vec180, %i.lp
  br i1 %cmp.n195, label %.preheader13.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %iter.check174, %vector.memcheck149, %vec.epilog.iter.check175, %vec.epilog.middle.block194
  %.115983.i.ph = phi i32 [ %.0158.lcssa.i, %iter.check174 ], [ %.0158.lcssa.i, %vector.memcheck149 ], [ %i.md, %vec.epilog.iter.check175 ], [ %i.mo, %vec.epilog.middle.block194 ]
  %.116182.i.ph = phi ptr [ %.0160.lcssa.i, %iter.check174 ], [ %.0160.lcssa.i, %vector.memcheck149 ], [ %i.mf, %vec.epilog.iter.check175 ], [ %i.mq, %vec.epilog.middle.block194 ]
  %.116481.i.ph = phi ptr [ %.0163.lcssa.i, %iter.check174 ], [ %.0163.lcssa.i, %vector.memcheck149 ], [ %i.mg, %vec.epilog.iter.check175 ], [ %i.mr, %vec.epilog.middle.block194 ]
  %.1080.i.ph = phi ptr [ %.9.lcssa.i, %iter.check174 ], [ %.9.lcssa.i, %vector.memcheck149 ], [ %i.mi, %vec.epilog.iter.check175 ], [ %i.mt, %vec.epilog.middle.block194 ]
  br label %.lr.ph84.i

.lr.ph75.i:                                       ; preds = %bb.d, %.lr.ph75.i
  %.015873.i = phi i32 [ %i.nv, %.lr.ph75.i ], [ 0, %bb.d ]
  %.016072.i = phi ptr [ %i.nu, %.lr.ph75.i ], [ %i.lk, %bb.d ] ; 5 uses
  %.016371.i = phi ptr [ %i.nt, %.lr.ph75.i ], [ %i.lg, %bb.d ] ; 5 uses
  %.970.i = phi ptr [ %i.ns, %.lr.ph75.i ], [ %.897.i, %bb.d ] ; 9 uses
  %i.mx = load i8, ptr %.016371.i, align 1, !tbaa !17
  store i8 %i.mx, ptr %.970.i, align 1, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.016371.i, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !17
  %i.na = getelementptr inbounds nuw i8, ptr %.970.i, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %.016371.i, i64 2
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %.970.i, i64 2
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %.016371.i, i64 3
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !17
  %i.ng = getelementptr inbounds nuw i8, ptr %.970.i, i64 3
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !17
  %i.nh = load i8, ptr %.016072.i, align 1, !tbaa !17
  %i.ni = getelementptr inbounds nuw i8, ptr %.970.i, i64 4
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !17
  %i.nj = getelementptr inbounds nuw i8, ptr %.016072.i, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %.970.i, i64 5
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !17
  %i.nm = getelementptr inbounds nuw i8, ptr %.016072.i, i64 2
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %.970.i, i64 6
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %.016072.i, i64 3
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.970.i, i64 7
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %.970.i, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.016371.i, i64 4 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.016072.i, i64 4 ; 2 uses
  %i.nv = add nuw nsw i32 %.015873.i, 4           ; 2 uses
  %i.nw = or disjoint i32 %i.nv, 3
  %i.nx = icmp slt i32 %i.nw, %5
  br i1 %i.nx, label %.lr.ph75.i, label %.preheader14.i, !llvm.loop !127

.preheader13.i:                                   ; preds = %.lr.ph84.i, %middle.block172, %vec.epilog.middle.block194, %.preheader14.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader14.i ], [ %i.mt, %vec.epilog.middle.block194 ], [ %i.mi, %middle.block172 ], [ %i.pw, %.lr.ph84.i ] ; 10 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader14.i ], [ %i.mr, %vec.epilog.middle.block194 ], [ %i.mg, %middle.block172 ], [ %i.px, %.lr.ph84.i ] ; 8 uses
  %.1161.lcssa.i = phi ptr [ %.0160.lcssa.i, %.preheader14.i ], [ %i.mq, %vec.epilog.middle.block194 ], [ %i.mf, %middle.block172 ], [ %i.py, %.lr.ph84.i ] ; 8 uses
  %.1159.lcssa.i = phi i32 [ %.0158.lcssa.i, %.preheader14.i ], [ %i.mo, %vec.epilog.middle.block194 ], [ %i.md, %middle.block172 ], [ %i.pz, %.lr.ph84.i ] ; 7 uses
  %i.ny = icmp slt i32 %.1159.lcssa.i, %5
  br i1 %i.ny, label %iter.check, label %._crit_edge94.i

iter.check:                                       ; preds = %.preheader13.i
  %i.nz = xor i32 %.1159.lcssa.i, -1
  %i.oa = add i32 %5, %i.nz                       ; 3 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.oa, 7
  br i1 %min.iters.check, label %.lr.ph93.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.od = xor i32 %.1159.lcssa.i, -1
  %i.oe = add i32 %5, %i.od
  %i.of = zext i32 %i.oe to i64                   ; 2 uses
  %i.og = shl nuw nsw i64 %i.of, 1
  %i.oh = getelementptr i8, ptr %.10.lcssa.i, i64 %i.og
  %i.oi = getelementptr i8, ptr %i.oh, i64 2      ; 2 uses
  %i.oj = add nuw nsw i64 %i.of, 1                ; 2 uses
  %i.ok = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.oj
  %i.ol = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.oj
  %bound0 = icmp ult ptr %.10.lcssa.i, %i.ok
  %bound1 = icmp ult ptr %.1161.lcssa.i, %i.oi
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %.10.lcssa.i, %i.ol
  %bound1116 = icmp ult ptr %.1164.lcssa.i, %i.oi
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  br i1 %conflict.rdx, label %.lr.ph93.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check118 = icmp ult i32 %i.oa, 31
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.om = and i64 %i.oc, 24
  %n.vec = and i64 %i.oc, 8589934560              ; 7 uses
  %i.on = trunc i64 %n.vec to i32
  %i.oo = add i32 %.1159.lcssa.i, %i.on
  %i.op = getelementptr i8, ptr %.1161.lcssa.i, i64 %n.vec
  %i.oq = getelementptr i8, ptr %.1164.lcssa.i, i64 %n.vec
  %i.or = shl nuw nsw i64 %n.vec, 1
  %i.os = getelementptr i8, ptr %.10.lcssa.i, i64 %i.or ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.1161.lcssa.i, i64 %index
  %next.gep119 = getelementptr i8, ptr %.1164.lcssa.i, i64 %index
  %i.ot = shl i64 %index, 1
  %next.gep120 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.ot
  %wide.load = load <32 x i8>, ptr %next.gep119, align 1, !tbaa !17, !alias.scope !144
  %wide.load121 = load <32 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !145
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load121, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep120, align 1, !tbaa !17, !alias.scope !146, !noalias !147
  %index.next = add nuw i64 %index, 32            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_:bb.a
  %i.ud = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tm)
  %i.ue = fadd fast <8 x float> %i.uc, %i.tk
  %i.uf = fadd fast <8 x float> %i.ud, %i.tm
  %i.ug = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ue)
  %i.uh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uf)
  %i.ui = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ug, <8 x i32> %i.uh)
  %i.uj = bitcast <16 x i16> %i.ui to <4 x i64>
  %i.uk = shufflevector <4 x i64> %i.uj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ul = bitcast <4 x i64> %i.uk to <16 x i16>
  %i.um = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ul, <16 x i16> splat (i16 -127))
  %i.un = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.um, <16 x i16> splat (i16 127))
  %i.uo = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.un, <16 x i16> poison)
  %i.up = bitcast <32 x i8> %i.uo to <8 x i32>
  %i.uq = shufflevector <8 x i32> %i.up, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ur = bitcast <4 x i32> %i.ub to <16 x i8>
  %i.us = bitcast <4 x i32> %i.uq to <16 x i8>
  %i.ut = shufflevector <16 x i8> %i.ur, <16 x i8> %i.us, <32 x i32> <i32 0, i32 16, i32 8, i32 24, i32 1, i32 17, i32 9, i32 25, i32 2, i32 18, i32 10, i32 26, i32 3, i32 19, i32 11, i32 27, i32 4, i32 20, i32 12, i32 28, i32 5, i32 21, i32 13, i32 29, i32 6, i32 22, i32 14, i32 30, i32 7, i32 23, i32 15, i32 31>
  store <32 x i8> %i.ut, ptr %.9216.i, align 1, !tbaa !17
  %i.uu = getelementptr inbounds nuw i8, ptr %.9216.i, i64 32 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.8403215.i, i64 16 ; 2 uses
  %i.uw = add nuw nsw i32 %.0418214.i, 4          ; 2 uses
  %i.ux = or disjoint i32 %i.uw, 3
  %i.uy = icmp slt i32 %i.ux, %5
  br i1 %i.uy, label %.lr.ph217.i, label %.preheader166.i, !llvm.loop !179

.preheader164.i:                                  ; preds = %.lr.ph224.i, %.preheader166.i
  %.1419.lcssa.i = phi i32 [ %.0418.lcssa.i, %.preheader166.i ], [ %i.vy, %.lr.ph224.i ] ; 2 uses
  %.9404.lcssa.i = phi ptr [ %.8403.lcssa.i, %.preheader166.i ], [ %i.vx, %.lr.ph224.i ]
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader166.i ], [ %i.vw, %.lr.ph224.i ] ; 2 uses
  %i.uz = icmp slt i32 %.1419.lcssa.i, %5
  br i1 %i.uz, label %.lr.ph231.i, label %.loopexit165.i

.lr.ph224.i:                                      ; preds = %.preheader166.i, %.lr.ph224.i
  %.10223.i = phi ptr [ %i.vw, %.lr.ph224.i ], [ %.9.lcssa.i, %.preheader166.i ] ; 2 uses
  %.9404222.i = phi ptr [ %i.vx, %.lr.ph224.i ], [ %.8403.lcssa.i, %.preheader166.i ] ; 3 uses
  %.1419221.i = phi i32 [ %i.vy, %.lr.ph224.i ], [ %.0418.lcssa.i, %.preheader166.i ]
  %i.va = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.9404222.i, <8 x i32> %i.t, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vb = getelementptr inbounds nuw i8, ptr %.9404222.i, i64 4
  %i.vc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.vb, <8 x i32> %i.t, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vd = fmul fast <8 x float> %i.va, %i.ke      ; 2 uses
  %i.ve = fmul fast <8 x float> %i.vc, %i.ke      ; 2 uses
  %i.vf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vd)
  %i.vg = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ve)
  %i.vh = fadd fast <8 x float> %i.vf, %i.vd
  %i.vi = fadd fast <8 x float> %i.vg, %i.ve
  %i.vj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vh)
  %i.vk = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vi)
  %i.vl = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.vj, <8 x i32> %i.vk)
  %i.vm = bitcast <16 x i16> %i.vl to <4 x i64>
  %i.vn = shufflevector <4 x i64> %i.vm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.vo = bitcast <4 x i64> %i.vn to <16 x i16>
  %i.vp = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.vo, <16 x i16> splat (i16 -127))
  %i.vq = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.vp, <16 x i16> splat (i16 127))
  %i.vr = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.vq, <16 x i16> poison)
  %i.vs = bitcast <32 x i8> %i.vr to <8 x i32>
  %i.vt = shufflevector <8 x i32> %i.vs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vu = bitcast <4 x i32> %i.vt to <16 x i8>
  %i.vv = shufflevector <16 x i8> %i.vu, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.vv, ptr %.10223.i, align 1, !tbaa !17
  %i.vw = getelementptr inbounds nuw i8, ptr %.10223.i, i64 16 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.9404222.i, i64 8 ; 2 uses
  %i.vy = add nuw nsw i32 %.1419221.i, 2          ; 3 uses
  %i.vz = or disjoint i32 %i.vy, 1
  %i.wa = icmp slt i32 %i.vz, %5
  br i1 %i.wa, label %.lr.ph224.i, label %.preheader164.i, !llvm.loop !180

.lr.ph231.i:                                      ; preds = %.preheader164.i, %.lr.ph231.i
  %.11230.i = phi ptr [ %i.wp, %.lr.ph231.i ], [ %.10.lcssa.i, %.preheader164.i ] ; 2 uses
  %.10405229.i = phi ptr [ %i.wq, %.lr.ph231.i ], [ %.9404.lcssa.i, %.preheader164.i ] ; 2 uses
  %.2420228.i = phi i32 [ %i.wr, %.lr.ph231.i ], [ %.1419.lcssa.i, %.preheader164.i ]
  %i.wb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.10405229.i, <8 x i32> %i.t, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.wc = fmul fast <8 x float> %i.wb, %i.ke      ; 2 uses
  %i.wd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wc)
  %i.we = fadd fast <8 x float> %i.wd, %i.wc
  %i.wf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.we)
  %i.wg = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.wf, <8 x i32> poison)
  %i.wh = bitcast <16 x i16> %i.wg to <8 x i32>
  %i.wi = shufflevector <8 x i32> %i.wh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wj = bitcast <4 x i32> %i.wi to <8 x i16>
  %i.wk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wj, <8 x i16> splat (i16 -127))
  %i.wl = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wk, <8 x i16> splat (i16 127))
  %i.wm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wl, <8 x i16> poison)
  %i.wn = bitcast <16 x i8> %i.wm to <2 x i64>
  %i.wo = extractelement <2 x i64> %i.wn, i64 0
  store i64 %i.wo, ptr %.11230.i, align 8, !tbaa !27
  %i.wp = getelementptr inbounds nuw i8, ptr %.11230.i, i64 8 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.10405229.i, i64 4
  %i.wr = add nuw nsw i32 %.2420228.i, 1          ; 2 uses
  %exitcond376.not.i = icmp eq i32 %i.wr, %5
  br i1 %exitcond376.not.i, label %.loopexit165.i, label %.lr.ph231.i, !llvm.loop !181

.loopexit165.i:                                   ; preds = %.lr.ph231.i, %.lr.ph211.i, %.lr.ph191.i, %.preheader164.i, %.preheader168.i, %.preheader172.i, %bb.b
  %.12.i = phi ptr [ %.0389234.i, %bb.b ], [ %.10.lcssa.i, %.preheader164.i ], [ %i.nu, %.lr.ph191.i ], [ %i.rv, %.lr.ph211.i ], [ %.6.lcssa.i, %.preheader168.i ], [ %.2.lcssa.i, %.preheader172.i ], [ %i.wp, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.ws = or disjoint i64 %indvars.iv.next.i, 7
  %i.wt = icmp samesign ult i64 %i.ws, %i.v
  br i1 %i.wt, label %bb.b, label %.preheader163.loopexit.i, !llvm.loop !182

.preheader155.loopexit.i:                         ; preds = %.loopexit.i.us51, %.loopexit.i.us, %.loopexit.i.preheader
  %.us-phi = phi ptr [ %.0389.lcssa.i, %.loopexit.i.preheader ], [ %.21.i.us, %.loopexit.i.us ], [ %.21.i.us52, %.loopexit.i.us51 ]
  %.us-phi47 = phi i64 [ %i.ap, %.loopexit.i.preheader ], [ %indvars.iv.next381.i.us, %.loopexit.i.us ], [ %indvars.iv.next381.i.us53, %.loopexit.i.us51 ]
  %i.wu = trunc nuw nsw i64 %.us-phi47 to i32
  br label %.preheader155.i

.preheader155.i:                                  ; preds = %.preheader155.loopexit.i, %.preheader163.i
  %.1392.lcssa.i = phi i32 [ %.0391.lcssa.i, %.preheader163.i ], [ %i.wu, %.preheader155.loopexit.i ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.0389.lcssa.i, %.preheader163.i ], [ %.us-phi, %.preheader155.loopexit.i ] ; 2 uses
  %i.wv = or disjoint i32 %.1392.lcssa.i, 1
  %i.ww = icmp slt i32 %i.wv, %3
  br i1 %i.ww, label %.lr.ph303.i, label %.preheader152.i

.lr.ph303.i:                                      ; preds = %.preheader155.i
  %i.wx = sext i32 %4 to i64
  %i.wy = icmp sgt i32 %5, 3
  %i.wz = and i32 %5, -4
  %i.xa = zext nneg i32 %.1392.lcssa.i to i64
  %i.xb = sext i32 %3 to i64
  %i.xc = sext i32 %2 to i64
  %invariant.op447.i = add nsw i64 %i.xb, -1
  %i.xd = shl i64 %i.k, 2                         ; 2 uses
  br label %bb.c

.preheader152.loopexit.i:                         ; preds = %._crit_edge.i
  %i.xe = trunc nuw nsw i64 %indvars.iv.next385.i to i32
  br label %.preheader152.i

.preheader152.i:                                  ; preds = %.preheader152.loopexit.i, %.preheader155.i
  %.2393.lcssa.i = phi i32 [ %.1392.lcssa.i, %.preheader155.i ], [ %i.xe, %.preheader152.loopexit.i ] ; 2 uses
  %.22.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader155.i ], [ %.25.lcssa.i, %.preheader152.loopexit.i ]
  %i.xf = icmp slt i32 %.2393.lcssa.i, %3
  br i1 %i.xf, label %.lr.ph322.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph322.i:                                      ; preds = %.preheader152.i
  %i.xg = sext i32 %4 to i64
  %i.xh = icmp sgt i32 %5, 3
  %i.xi = and i32 %5, -4
  %i.xj = sext i32 %.2393.lcssa.i to i64
  %i.xk = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph303.i
  %indvars.iv384.i = phi i64 [ %i.xa, %.lr.ph303.i ], [ %indvars.iv.next385.i, %._crit_edge.i ] ; 2 uses
  %.22302.i = phi ptr [ %.13.lcssa.i, %.lr.ph303.i ], [ %.25.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.xl = load ptr, ptr %0, align 8, !tbaa !14
  %i.xm = add nsw i64 %indvars.iv384.i, %i.xc     ; 2 uses
  %i.xn = mul i64 %i.xm, %i.k
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.xn
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %i.wx ; 2 uses
  %i.xq = load ptr, ptr %6, align 8, !tbaa !14
  %i.xr = getelementptr [4 x i8], ptr %i.xq, i64 %i.xm ; 2 uses
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !30 ; 3 uses
  %i.xt = getelementptr i8, ptr %i.xr, i64 4
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !30 ; 3 uses
  %i.xv = insertelement <4 x float> poison, float %i.xs, i64 0 ; 2 uses
  %i.xw = shufflevector <4 x float> %i.xv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xx = insertelement <4 x float> poison, float %i.xu, i64 0 ; 2 uses
  %i.xy = shufflevector <4 x float> %i.xx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xz = shufflevector <4 x float> %i.xv, <4 x float> %i.xx, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.wy, label %.lr.ph285.i, label %.preheader154.i

.preheader154.i:                                  ; preds = %.lr.ph285.i, %bb.c
  %.0409.lcssa.i = phi ptr [ %i.xp, %bb.c ], [ %i.yu, %.lr.ph285.i ] ; 2 uses
  %.0406.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.wz, %.lr.ph285.i ] ; 3 uses
  %.23.lcssa.i = phi ptr [ %.22302.i, %bb.c ], [ %i.yt, %.lr.ph285.i ] ; 2 uses
  %i.ya = or disjoint i32 %.0406.lcssa.i, 1
  %i.yb = icmp slt i32 %i.ya, %5
  br i1 %i.yb, label %.lr.ph292.i, label %.preheader153.i

.lr.ph285.i:                                      ; preds = %bb.c, %.lr.ph285.i
  %.23284.i = phi ptr [ %i.yt, %.lr.ph285.i ], [ %.22302.i, %bb.c ] ; 2 uses
  %.0406283.i = phi i32 [ %i.yv, %.lr.ph285.i ], [ 0, %bb.c ]
  %.0409282.i = phi ptr [ %i.yu, %.lr.ph285.i ], [ %i.xp, %bb.c ] ; 3 uses
  %i.yc = load <4 x float>, ptr %.0409282.i, align 1, !tbaa !17
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.0409282.i, i64 %i.k
  %i.ye = load <4 x float>, ptr %i.yd, align 1, !tbaa !17
  %i.yf = fmul fast <4 x float> %i.yc, %i.xw      ; 2 uses
  %i.yg = fmul fast <4 x float> %i.ye, %i.xy      ; 2 uses
  %i.yh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yf)
  %i.yi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yg)
  %i.yj = fadd fast <4 x float> %i.yh, %i.yf
  %i.yk = fadd fast <4 x float> %i.yi, %i.yg
  %i.yl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yj)
  %i.ym = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yk)
  %i.yn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yl, <4 x i32> %i.ym)
  %i.yo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yn, <8 x i16> splat (i16 -127))
  %i.yp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yo, <8 x i16> splat (i16 127))
  %i.yq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.yp, <8 x i16> poison)
  %i.yr = bitcast <16 x i8> %i.yq to <2 x i64>
  %i.ys = extractelement <2 x i64> %i.yr, i64 0
  store i64 %i.ys, ptr %.23284.i, align 8, !tbaa !27
  %i.yt = getelementptr inbounds nuw i8, ptr %.23284.i, i64 8 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.0409282.i, i64 16 ; 2 uses
  %i.yv = add nuw nsw i32 %.0406283.i, 4          ; 2 uses
  %i.yw = or disjoint i32 %i.yv, 3
  %i.yx = icmp slt i32 %i.yw, %5
  br i1 %i.yx, label %.lr.ph285.i, label %.preheader154.i, !llvm.loop !183

.preheader153.i:                                  ; preds = %.lr.ph292.i, %.preheader154.i
  %.1410.lcssa.i = phi ptr [ %.0409.lcssa.i, %.preheader154.i ], [ %i.aau, %.lr.ph292.i ] ; 8 uses
  %.1407.lcssa.i = phi i32 [ %.0406.lcssa.i, %.preheader154.i ], [ %i.aav, %.lr.ph292.i ] ; 6 uses
  %.24.lcssa.i = phi ptr [ %.23.lcssa.i, %.preheader154.i ], [ %i.aat, %.lr.ph292.i ] ; 8 uses
  %i.yy = icmp slt i32 %.1407.lcssa.i, %5
  br i1 %i.yy, label %.lr.ph299.i.preheader, label %._crit_edge.i

.lr.ph299.i.preheader:                            ; preds = %.preheader153.i
  %i.yz = xor i32 %.1407.lcssa.i, -1
  %i.za = add i32 %5, %i.yz                       ; 2 uses
  %i.zb = zext i32 %i.za to i64
  %i.zc = add nuw nsw i64 %i.zb, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.za, 7
  br i1 %min.iters.check, label %.lr.ph299.i.preheader247, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph299.i.preheader
  %7 = xor i32 %.1407.lcssa.i, -1
  %8 = add i32 %5, %7
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.zd = shl nuw nsw i64 %9, 1
  %i.ze = getelementptr i8, ptr %.24.lcssa.i, i64 %i.zd
  %i.zf = getelementptr i8, ptr %i.ze, i64 2      ; 2 uses
  %i.zg = getelementptr i8, ptr %.1410.lcssa.i, i64 %i.xd
  %i.zh = shl nuw nsw i64 %9, 2                   ; 2 uses
  %i.zi = getelementptr i8, ptr %.1410.lcssa.i, i64 %i.xd
  %i.zj = getelementptr i8, ptr %i.zi, i64 4
  %i.zk = getelementptr i8, ptr %i.zj, i64 %i.zh
  %i.zl = getelementptr i8, ptr %.1410.lcssa.i, i64 %i.zh
  %i.zm = getelementptr i8, ptr %i.zl, i64 4
  %bound0 = icmp ult ptr %.24.lcssa.i, %i.zk
  %bound1 = icmp ult ptr %i.zg, %i.zf
  %found.conflict = and i1 %bound0, %bound1
  %bound0195 = icmp ult ptr %.24.lcssa.i, %i.zm
  %bound1196 = icmp ult ptr %.1410.lcssa.i, %i.zf
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx = or i1 %found.conflict, %found.conflict197
  br i1 %conflict.rdx, label %.lr.ph299.i.preheader247, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zc, 8589934584              ; 5 uses
  %i.zn = shl nuw nsw i64 %n.vec, 1
  %i.zo = getelementptr i8, ptr %.24.lcssa.i, i64 %i.zn ; 2 uses
  %i.zp = trunc i64 %n.vec to i32
  %i.zq = add i32 %.1407.lcssa.i, %i.zp
  %i.zr = shl nuw nsw i64 %n.vec, 2
  %i.zs = getelementptr i8, ptr %.1410.lcssa.i, i64 %i.zr
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.xs, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <8 x float> poison, float %i.xu, i64 0
  %broadcast.splat199 = shufflevector <8 x float> %broadcast.splatinsert198, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.zt = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.24.lcssa.i, i64 %i.zt
  %i.zu = shl i64 %index, 2
  %next.gep200 = getelementptr i8, ptr %.1410.lcssa.i, i64 %i.zu ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep200, align 4, !tbaa !30, !alias.scope !200
  %i.zv = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %next.gep200, i64 %i.k
  %wide.load201 = load <8 x float>, ptr %i.zw, align 4, !tbaa !30, !alias.scope !201
  %i.zx = fmul fast <8 x float> %wide.load201, %broadcast.splat199
  %i.zy = shufflevector <8 x float> %i.zv, <8 x float> %i.zx, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.zz = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.zy)
  %i.aaa = fptosi <16 x float> %i.zz to <16 x i32>
  %i.aab = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aaa, <16 x i32> splat (i32 -127))
  %i.aac = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aab, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.aac to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !202, !noalias !203
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aad = icmp eq i64 %index.next, %n.vec
  br i1 %i.aad, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph299.i.preheader247

.lr.ph299.i.preheader247:                         ; preds = %vector.memcheck, %.lr.ph299.i.preheader, %middle.block
  %.25298.i.ph = phi ptr [ %.24.lcssa.i, %vector.memcheck ], [ %.24.lcssa.i, %.lr.ph299.i.preheader ], [ %i.zo, %middle.block ]
  %.2408297.i.ph = phi i32 [ %.1407.lcssa.i, %vector.memcheck ], [ %.1407.lcssa.i, %.lr.ph299.i.preheader ], [ %i.zq, %middle.block ]
  %.2411296.i.ph = phi ptr [ %.1410.lcssa.i, %vector.memcheck ], [ %.1410.lcssa.i, %.lr.ph299.i.preheader ], [ %i.zs, %middle.block ]
  br label %.lr.ph299.i

.lr.ph292.i:                                      ; preds = %.preheader154.i, %.lr.ph292.i
  %.24291.i = phi ptr [ %i.aat, %.lr.ph292.i ], [ %.23.lcssa.i, %.preheader154.i ] ; 2 uses
  %.1407290.i = phi i32 [ %i.aav, %.lr.ph292.i ], [ %.0406.lcssa.i, %.preheader154.i ]
  %.1410289.i = phi ptr [ %i.aau, %.lr.ph292.i ], [ %.0409.lcssa.i, %.preheader154.i ] ; 3 uses
  %i.aae = load i64, ptr %.1410289.i, align 1, !tbaa !17
  %i.aaf = insertelement <2 x i64> poison, i64 %i.aae, i64 0
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %.1410289.i, i64 %i.k
  %i.aah = load i64, ptr %i.aag, align 1, !tbaa !17
  %.uncasted.i = insertelement <2 x i64> %i.aaf, i64 %i.aah, i64 1
  %i.aai = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.aaj = fmul fast <4 x float> %i.xz, %i.aai    ; 2 uses
  %i.aak = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aaj)
  %i.aal = fadd fast <4 x float> %i.aak, %i.aaj
  %i.aam = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aal)
  %i.aan = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aam, <4 x i32> poison)
  %i.aao = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aan, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aap = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aao, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aaq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aap, <8 x i16> poison)
  %i.aar = bitcast <16 x i8> %i.aaq to <4 x i32>
  %i.aas = extractelement <4 x i32> %i.aar, i64 0
  store i32 %i.aas, ptr %.24291.i, align 4, !tbaa !28
  %i.aat = getelementptr inbounds nuw i8, ptr %.24291.i, i64 4 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.1410289.i, i64 8 ; 2 uses
  %i.aav = add nuw nsw i32 %.1407290.i, 2         ; 3 uses
  %i.aaw = or disjoint i32 %i.aav, 1
  %i.aax = icmp slt i32 %i.aaw, %5
  br i1 %i.aax, label %.lr.ph292.i, label %.preheader153.i, !llvm.loop !189

.lr.ph299.i:                                      ; preds = %.lr.ph299.i.preheader247, %.lr.ph299.i
  %.25298.i = phi ptr [ %i.abi, %.lr.ph299.i ], [ %.25298.i.ph, %.lr.ph299.i.preheader247 ] ; 3 uses
  %.2408297.i = phi i32 [ %i.abk, %.lr.ph299.i ], [ %.2408297.i.ph, %.lr.ph299.i.preheader247 ]
  %.2411296.i = phi ptr [ %i.abj, %.lr.ph299.i ], [ %.2411296.i.ph, %.lr.ph299.i.preheader247 ] ; 3 uses
  %i.aay = load float, ptr %.2411296.i, align 4, !tbaa !30
  %i.aaz = fmul fast float %i.aay, %i.xs
  %i.aba = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aaz)
  %i.abb = fptosi float %i.aba to i32
  %spec.select.i446148.i = tail call i32 @llvm.smax.i32(i32 %i.abb, i32 -127)
  %.0.i447149.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i446148.i, i32 127)
  %.0.i447.i = trunc nsw i32 %.0.i447149.i to i8
  store i8 %.0.i447.i, ptr %.25298.i, align 1, !tbaa !17
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.2411296.i, i64 %i.k
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !30
  %i.abe = fmul fast float %i.abd, %i.xu
  %i.abf = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abe)
  %i.abg = fptosi float %i.abf to i32
  %spec.select.i444150.i = tail call i32 @llvm.smax.i32(i32 %i.abg, i32 -127)
  %.0.i445151.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i444150.i, i32 127)
  %.0.i445.i = trunc nsw i32 %.0.i445151.i to i8
  %i.abh = getelementptr inbounds nuw i8, ptr %.25298.i, i64 1
  store i8 %.0.i445.i, ptr %i.abh, align 1, !tbaa !17
  %i.abi = getelementptr inbounds nuw i8, ptr %.25298.i, i64 2 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.2411296.i, i64 4
  %i.abk = add nuw nsw i32 %.2408297.i, 1         ; 2 uses
  %exitcond383.not.i = icmp eq i32 %i.abk, %5
  br i1 %exitcond383.not.i, label %._crit_edge.i, label %.lr.ph299.i, !llvm.loop !190

._crit_edge.i:                                    ; preds = %.lr.ph299.i, %middle.block, %.preheader153.i
  %.25.lcssa.i = phi ptr [ %.24.lcssa.i, %.preheader153.i ], [ %i.zo, %middle.block ], [ %i.abi, %.lr.ph299.i ] ; 2 uses
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv384.i, 2 ; 3 uses
  %i.abl = icmp slt i64 %indvars.iv.next385.i, %invariant.op447.i
  br i1 %i.abl, label %bb.c, label %.preheader152.loopexit.i, !llvm.loop !191

bb.d:                                             ; preds = %._crit_edge318.i, %.lr.ph322.i
  %indvars.iv388.i = phi i64 [ %i.xj, %.lr.ph322.i ], [ %indvars.iv.next389.i, %._crit_edge318.i ] ; 2 uses
  %.26321.i = phi ptr [ %.22.lcssa.i, %.lr.ph322.i ], [ %.28.lcssa.i, %._crit_edge318.i ] ; 2 uses
  %i.abm = load ptr, ptr %0, align 8, !tbaa !14
  %i.abn = add nsw i64 %indvars.iv388.i, %i.xk    ; 2 uses
  %i.abo = mul i64 %i.abn, %i.k
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %i.abo
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.xg ; 2 uses
  %i.abr = load ptr, ptr %6, align 8, !tbaa !14
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %i.abn
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !30 ; 6 uses
  %i.abu = insertelement <4 x float> poison, float %i.abt, i64 0
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.xh, label %.lr.ph310.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph310.i, %bb.d
  %.27.lcssa.i = phi ptr [ %.26321.i, %bb.d ], [ %i.afc, %.lr.ph310.i ] ; 9 uses
  %.0387.lcssa.i = phi ptr [ %i.abq, %bb.d ], [ %i.afd, %.lr.ph310.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.xi, %.lr.ph310.i ] ; 7 uses
  %i.abw = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.abw, label %iter.check, label %._crit_edge318.i

iter.check:                                       ; preds = %.preheader.i
  %i.abx = xor i32 %.0.lcssa.i, -1
  %i.aby = add i32 %5, %i.abx                     ; 3 uses
  %i.abz = zext i32 %i.aby to i64
  %i.aca = add nuw nsw i64 %i.abz, 1              ; 5 uses
  %min.iters.check212 = icmp ult i32 %i.aby, 3
  br i1 %min.iters.check212, label %.lr.ph317.i.preheader, label %vector.memcheck213

vector.memcheck213:                               ; preds = %iter.check
  %i.acb = xor i32 %.0.lcssa.i, -1
  %i.acc = add i32 %5, %i.acb
  %i.acd = zext i32 %i.acc to i64                 ; 2 uses
  %i.ace = getelementptr i8, ptr %.27.lcssa.i, i64 %i.acd
  %i.acf = getelementptr i8, ptr %i.ace, i64 1
  %i.acg = shl nuw nsw i64 %i.acd, 2
  %i.ach = getelementptr i8, ptr %.0387.lcssa.i, i64 %i.acg
  %i.aci = getelementptr i8, ptr %i.ach, i64 4
  %bound0214 = icmp ult ptr %.27.lcssa.i, %i.aci
  %bound1215 = icmp ult ptr %.0387.lcssa.i, %i.acf
  %found.conflict216 = and i1 %bound0214, %bound1215
  br i1 %found.conflict216, label %.lr.ph317.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck213
  %min.iters.check217 = icmp ult i32 %i.aby, 31
  br i1 %min.iters.check217, label %vec.epilog.ph, label %vector.ph218

vector.ph218:                                     ; preds = %vector.main.loop.iter.check
  %i.acj = and i64 %i.aca, 28
  %n.vec219 = and i64 %i.aca, 8589934560          ; 6 uses
  %i.ack = trunc i64 %n.vec219 to i32
  %i.acl = add i32 %.0.lcssa.i, %i.ack
  %i.acm = shl nuw nsw i64 %n.vec219, 2
  %i.acn = getelementptr i8, ptr %.0387.lcssa.i, i64 %i.acm
  %i.aco = getelementptr i8, ptr %.27.lcssa.i, i64 %n.vec219 ; 2 uses
  %broadcast.splatinsert220 = insertelement <8 x float> poison, float %i.abt, i64 0
  %broadcast.splat221 = shufflevector <8 x float> %broadcast.splatinsert220, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.ph218, %vector.body222
  %index223 = phi i64 [ 0, %vector.ph218 ], [ %index.next230, %vector.body222 ] ; 3 uses
  %i.acp = shl i64 %index223, 2
  %next.gep224 = getelementptr i8, ptr %.0387.lcssa.i, i64 %i.acp ; 4 uses
  %next.gep225 = getelementptr i8, ptr %.27.lcssa.i, i64 %index223 ; 4 uses
  %i.acq = getelementptr i8, ptr %next.gep224, i64 32
  %i.acr = getelementptr i8, ptr %next.gep224, i64 64
  %i.acs = getelementptr i8, ptr %next.gep224, i64 96
  %wide.load226 = load <8 x float>, ptr %next.gep224, align 4, !tbaa !30, !alias.scope !204
  %wide.load227 = load <8 x float>, ptr %i.acq, align 4, !tbaa !30, !alias.scope !204
  %wide.load228 = load <8 x float>, ptr %i.acr, align 4, !tbaa !30, !alias.scope !204
  %wide.load229 = load <8 x float>, ptr %i.acs, align 4, !tbaa !30, !alias.scope !204
  %i.act = fmul fast <8 x float> %wide.load226, %broadcast.splat221
  %i.acu = fmul fast <8 x float> %wide.load227, %broadcast.splat221
  %i.acv = fmul fast <8 x float> %wide.load228, %broadcast.splat221
  %i.acw = fmul fast <8 x float> %wide.load229, %broadcast.splat221
  %i.acx = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.act)
  %i.acy = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.acu)
  %i.acz = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.acv)
  %i.ada = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.acw)
  %i.adb = fptosi <8 x float> %i.acx to <8 x i32>
end_hunk_2
begin_hunk_3_@_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif:bb.a
  %i.sk = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.sj, <16 x i16> poison)
  %i.sl = bitcast <32 x i8> %i.sk to <4 x i64>
  %i.sm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.rw)
  %i.sn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.rx)
  %i.so = fadd fast <8 x float> %i.sm, %i.rw
  %i.sp = fadd fast <8 x float> %i.sn, %i.rx
  %i.sq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.so)
  %i.sr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sp)
  %i.ss = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.sq, <8 x i32> %i.sr)
  %i.st = bitcast <16 x i16> %i.ss to <4 x i64>
  %i.su = shufflevector <4 x i64> %i.st, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.sv = bitcast <4 x i64> %i.su to <16 x i16>
  %i.sw = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.sv, <16 x i16> splat (i16 -127))
  %i.sx = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.sw, <16 x i16> splat (i16 127))
  %i.sy = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.sx, <16 x i16> poison)
  %i.sz = bitcast <32 x i8> %i.sy to <4 x i64>
  %i.ta = shufflevector <4 x i64> %i.sl, <4 x i64> %i.sz, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i64> %i.ta, ptr %.9199.i, align 1, !tbaa !17
  %i.tb = getelementptr inbounds nuw i8, ptr %.9199.i, i64 32 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.8348198.i, i64 16 ; 2 uses
  %i.td = add nuw nsw i32 %.0363197.i, 4          ; 2 uses
  %i.te = or disjoint i32 %i.td, 3
  %i.tf = icmp slt i32 %i.te, %5
  br i1 %i.tf, label %.lr.ph200.i, label %.preheader149.i, !llvm.loop !242

.preheader147.i:                                  ; preds = %.lr.ph207.i, %.preheader149.i
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader149.i ], [ %i.uf, %.lr.ph207.i ] ; 2 uses
  %.9349.lcssa.i = phi ptr [ %.8348.lcssa.i, %.preheader149.i ], [ %i.ue, %.lr.ph207.i ]
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader149.i ], [ %i.ud, %.lr.ph207.i ] ; 2 uses
  %i.tg = icmp slt i32 %.1364.lcssa.i, %5
  br i1 %i.tg, label %.lr.ph214.i, label %.loopexit148.i

.lr.ph207.i:                                      ; preds = %.preheader149.i, %.lr.ph207.i
  %.10206.i = phi ptr [ %i.ud, %.lr.ph207.i ], [ %.9.lcssa.i, %.preheader149.i ] ; 2 uses
  %.9349205.i = phi ptr [ %i.ue, %.lr.ph207.i ], [ %.8348.lcssa.i, %.preheader149.i ] ; 3 uses
  %.1364204.i = phi i32 [ %i.uf, %.lr.ph207.i ], [ %.0363.lcssa.i, %.preheader149.i ]
  %i.th = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.9349205.i, <8 x i32> %i.u, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ti = getelementptr inbounds nuw i8, ptr %.9349205.i, i64 4
  %i.tj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ti, <8 x i32> %i.u, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.tk = fmul fast <8 x float> %i.th, %i.p       ; 2 uses
  %i.tl = fmul fast <8 x float> %i.tj, %i.p       ; 2 uses
  %i.tm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tk)
  %i.tn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tl)
  %i.to = fadd fast <8 x float> %i.tm, %i.tk
  %i.tp = fadd fast <8 x float> %i.tn, %i.tl
  %i.tq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.to)
  %i.tr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tp)
  %i.ts = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.tq, <8 x i32> %i.tr)
  %i.tt = bitcast <16 x i16> %i.ts to <4 x i64>
  %i.tu = shufflevector <4 x i64> %i.tt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.tv = bitcast <4 x i64> %i.tu to <16 x i16>
  %i.tw = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.tv, <16 x i16> splat (i16 -127))
  %i.tx = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.tw, <16 x i16> splat (i16 127))
  %i.ty = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.tx, <16 x i16> poison)
  %i.tz = bitcast <32 x i8> %i.ty to <8 x i32>
  %i.ua = shufflevector <8 x i32> %i.tz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ub = bitcast <4 x i32> %i.ua to <16 x i8>
  %i.uc = shufflevector <16 x i8> %i.ub, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.uc, ptr %.10206.i, align 1, !tbaa !17
  %i.ud = getelementptr inbounds nuw i8, ptr %.10206.i, i64 16 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.9349205.i, i64 8 ; 2 uses
  %i.uf = add nuw nsw i32 %.1364204.i, 2          ; 3 uses
  %i.ug = or disjoint i32 %i.uf, 1
  %i.uh = icmp slt i32 %i.ug, %5
  br i1 %i.uh, label %.lr.ph207.i, label %.preheader147.i, !llvm.loop !243

.lr.ph214.i:                                      ; preds = %.preheader147.i, %.lr.ph214.i
  %.11213.i = phi ptr [ %i.uw, %.lr.ph214.i ], [ %.10.lcssa.i, %.preheader147.i ] ; 2 uses
  %.10350212.i = phi ptr [ %i.ux, %.lr.ph214.i ], [ %.9349.lcssa.i, %.preheader147.i ] ; 2 uses
  %.2365211.i = phi i32 [ %i.uy, %.lr.ph214.i ], [ %.1364.lcssa.i, %.preheader147.i ]
  %i.ui = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.10350212.i, <8 x i32> %i.u, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.uj = fmul fast <8 x float> %i.ui, %i.p       ; 2 uses
  %i.uk = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.uj)
  %i.ul = fadd fast <8 x float> %i.uk, %i.uj
  %i.um = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ul)
  %i.un = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.um, <8 x i32> poison)
  %i.uo = bitcast <16 x i16> %i.un to <8 x i32>
  %i.up = shufflevector <8 x i32> %i.uo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.uq = bitcast <4 x i32> %i.up to <8 x i16>
  %i.ur = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.uq, <8 x i16> splat (i16 -127))
  %i.us = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ur, <8 x i16> splat (i16 127))
  %i.ut = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.us, <8 x i16> poison)
  %i.uu = bitcast <16 x i8> %i.ut to <2 x i64>
  %i.uv = extractelement <2 x i64> %i.uu, i64 0
  store i64 %i.uv, ptr %.11213.i, align 8, !tbaa !27
  %i.uw = getelementptr inbounds nuw i8, ptr %.11213.i, i64 8 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.10350212.i, i64 4
  %i.uy = add nuw nsw i32 %.2365211.i, 1          ; 2 uses
  %exitcond359.not.i = icmp eq i32 %i.uy, %5
  br i1 %exitcond359.not.i, label %.loopexit148.i, label %.lr.ph214.i, !llvm.loop !244

.loopexit148.i:                                   ; preds = %.lr.ph214.i, %.lr.ph194.i, %.lr.ph174.i, %.preheader147.i, %.preheader151.i, %.preheader155.i, %bb.b
  %.12.i = phi ptr [ %.0334217.i, %bb.b ], [ %.10.lcssa.i, %.preheader147.i ], [ %i.nd, %.lr.ph174.i ], [ %i.qw, %.lr.ph194.i ], [ %.6.lcssa.i, %.preheader151.i ], [ %.2.lcssa.i, %.preheader155.i ], [ %i.uw, %.lr.ph214.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.uz = or disjoint i64 %indvars.iv.next.i, 7
  %i.va = icmp samesign ult i64 %i.uz, %i.w
  br i1 %i.va, label %bb.b, label %.preheader146.loopexit.i, !llvm.loop !245

.preheader138.loopexit.i:                         ; preds = %.loopexit.i.us51, %.loopexit.i.us, %.loopexit.i.preheader
  %.us-phi = phi ptr [ %.0334.lcssa.i, %.loopexit.i.preheader ], [ %.21.i.us, %.loopexit.i.us ], [ %.21.i.us52, %.loopexit.i.us51 ]
  %.us-phi47 = phi i64 [ %i.at, %.loopexit.i.preheader ], [ %indvars.iv.next364.i.us, %.loopexit.i.us ], [ %indvars.iv.next364.i.us53, %.loopexit.i.us51 ]
  %i.vb = trunc nuw nsw i64 %.us-phi47 to i32
  br label %.preheader138.i

.preheader138.i:                                  ; preds = %.preheader138.loopexit.i, %.preheader146.i
  %.1337.lcssa.i = phi i32 [ %.0336.lcssa.i, %.preheader146.i ], [ %i.vb, %.preheader138.loopexit.i ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.0334.lcssa.i, %.preheader146.i ], [ %.us-phi, %.preheader138.loopexit.i ] ; 2 uses
  %i.vc = or disjoint i32 %.1337.lcssa.i, 1
  %i.vd = icmp slt i32 %i.vc, %3
  br i1 %i.vd, label %.lr.ph286.i, label %.preheader135.i

.lr.ph286.i:                                      ; preds = %.preheader138.i
  %i.ve = sext i32 %4 to i64
  %i.vf = insertelement <4 x float> poison, float %6, i64 0
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.vh = icmp sgt i32 %5, 3
  %i.vi = and i32 %5, -4
  %i.vj = zext nneg i32 %.1337.lcssa.i to i64
  %i.vk = sext i32 %3 to i64
  %i.vl = sext i32 %2 to i64
  %invariant.op430.i = add nsw i64 %i.vk, -1
  %i.vm = shl i64 %i.k, 2                         ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.c

.preheader135.loopexit.i:                         ; preds = %._crit_edge.i
  %i.vn = trunc nuw nsw i64 %indvars.iv.next368.i to i32
  br label %.preheader135.i

.preheader135.i:                                  ; preds = %.preheader135.loopexit.i, %.preheader138.i
  %.2338.lcssa.i = phi i32 [ %.1337.lcssa.i, %.preheader138.i ], [ %i.vn, %.preheader135.loopexit.i ] ; 2 uses
  %.22.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader138.i ], [ %.25.lcssa.i, %.preheader135.loopexit.i ]
  %i.vo = icmp slt i32 %.2338.lcssa.i, %3
  br i1 %i.vo, label %.lr.ph305.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph305.i:                                      ; preds = %.preheader135.i
  %i.vp = sext i32 %4 to i64
  %i.vq = insertelement <4 x float> poison, float %6, i64 0
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vs = icmp sgt i32 %5, 3
  %i.vt = and i32 %5, -4
  %i.vu = sext i32 %.2338.lcssa.i to i64
  %i.vv = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %broadcast.splatinsert218 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat219 = shufflevector <8 x float> %broadcast.splatinsert218, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert232 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat233 = shufflevector <4 x float> %broadcast.splatinsert232, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph286.i
  %indvars.iv367.i = phi i64 [ %i.vj, %.lr.ph286.i ], [ %indvars.iv.next368.i, %._crit_edge.i ] ; 2 uses
  %.22285.i = phi ptr [ %.13.lcssa.i, %.lr.ph286.i ], [ %.25.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.vw = load ptr, ptr %0, align 8, !tbaa !14
  %i.vx = add nsw i64 %indvars.iv367.i, %i.vl
  %i.vy = mul i64 %i.vx, %i.k
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.vy
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.ve ; 2 uses
  br i1 %i.vh, label %.lr.ph268.i, label %.preheader137.i

.preheader137.i:                                  ; preds = %.lr.ph268.i, %bb.c
  %.0354.lcssa.i = phi ptr [ %i.wa, %bb.c ], [ %i.wv, %.lr.ph268.i ] ; 2 uses
  %.0351.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.vi, %.lr.ph268.i ] ; 3 uses
  %.23.lcssa.i = phi ptr [ %.22285.i, %bb.c ], [ %i.wu, %.lr.ph268.i ] ; 2 uses
  %i.wb = or disjoint i32 %.0351.lcssa.i, 1
  %i.wc = icmp slt i32 %i.wb, %5
  br i1 %i.wc, label %.lr.ph275.i, label %.preheader136.i

.lr.ph268.i:                                      ; preds = %bb.c, %.lr.ph268.i
  %.23267.i = phi ptr [ %i.wu, %.lr.ph268.i ], [ %.22285.i, %bb.c ] ; 2 uses
  %.0351266.i = phi i32 [ %i.ww, %.lr.ph268.i ], [ 0, %bb.c ]
  %.0354265.i = phi ptr [ %i.wv, %.lr.ph268.i ], [ %i.wa, %bb.c ] ; 3 uses
  %i.wd = load <4 x float>, ptr %.0354265.i, align 1, !tbaa !17
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %.0354265.i, i64 %i.k
  %i.wf = load <4 x float>, ptr %i.we, align 1, !tbaa !17
  %i.wg = fmul fast <4 x float> %i.wd, %i.vg      ; 2 uses
  %i.wh = fmul fast <4 x float> %i.wf, %i.vg      ; 2 uses
  %i.wi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wg)
  %i.wj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wh)
  %i.wk = fadd fast <4 x float> %i.wi, %i.wg
  %i.wl = fadd fast <4 x float> %i.wj, %i.wh
  %i.wm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wk)
  %i.wn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wl)
  %i.wo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wm, <4 x i32> %i.wn)
  %i.wp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wo, <8 x i16> splat (i16 -127))
  %i.wq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wp, <8 x i16> splat (i16 127))
  %i.wr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wq, <8 x i16> poison)
  %i.ws = bitcast <16 x i8> %i.wr to <2 x i64>
  %i.wt = extractelement <2 x i64> %i.ws, i64 0
  store i64 %i.wt, ptr %.23267.i, align 8, !tbaa !27
  %i.wu = getelementptr inbounds nuw i8, ptr %.23267.i, i64 8 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.0354265.i, i64 16 ; 2 uses
  %i.ww = add nuw nsw i32 %.0351266.i, 4          ; 2 uses
  %i.wx = or disjoint i32 %i.ww, 3
  %i.wy = icmp slt i32 %i.wx, %5
  br i1 %i.wy, label %.lr.ph268.i, label %.preheader137.i, !llvm.loop !246

.preheader136.i:                                  ; preds = %.lr.ph275.i, %.preheader137.i
  %.1355.lcssa.i = phi ptr [ %.0354.lcssa.i, %.preheader137.i ], [ %i.yv, %.lr.ph275.i ] ; 8 uses
  %.1352.lcssa.i = phi i32 [ %.0351.lcssa.i, %.preheader137.i ], [ %i.yw, %.lr.ph275.i ] ; 6 uses
  %.24.lcssa.i = phi ptr [ %.23.lcssa.i, %.preheader137.i ], [ %i.yu, %.lr.ph275.i ] ; 8 uses
  %i.wz = icmp slt i32 %.1352.lcssa.i, %5
  br i1 %i.wz, label %.lr.ph282.i.preheader, label %._crit_edge.i

.lr.ph282.i.preheader:                            ; preds = %.preheader136.i
  %i.xa = xor i32 %.1352.lcssa.i, -1
  %i.xb = add i32 %5, %i.xa                       ; 2 uses
  %i.xc = zext i32 %i.xb to i64
  %i.xd = add nuw nsw i64 %i.xc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.xb, 7
  br i1 %min.iters.check, label %.lr.ph282.i.preheader245, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph282.i.preheader
  %7 = xor i32 %.1352.lcssa.i, -1
  %8 = add i32 %5, %7
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.xe = shl nuw nsw i64 %9, 1
  %i.xf = getelementptr i8, ptr %.24.lcssa.i, i64 %i.xe
  %i.xg = getelementptr i8, ptr %i.xf, i64 2      ; 2 uses
  %i.xh = getelementptr i8, ptr %.1355.lcssa.i, i64 %i.vm
  %i.xi = shl nuw nsw i64 %9, 2                   ; 2 uses
  %i.xj = getelementptr i8, ptr %.1355.lcssa.i, i64 %i.vm
  %i.xk = getelementptr i8, ptr %i.xj, i64 4
  %i.xl = getelementptr i8, ptr %i.xk, i64 %i.xi
  %i.xm = getelementptr i8, ptr %.1355.lcssa.i, i64 %i.xi
  %i.xn = getelementptr i8, ptr %i.xm, i64 4
  %bound0 = icmp ult ptr %.24.lcssa.i, %i.xl
  %bound1 = icmp ult ptr %i.xh, %i.xg
  %found.conflict = and i1 %bound0, %bound1
  %bound0195 = icmp ult ptr %.24.lcssa.i, %i.xn
  %bound1196 = icmp ult ptr %.1355.lcssa.i, %i.xg
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx = or i1 %found.conflict, %found.conflict197
  br i1 %conflict.rdx, label %.lr.ph282.i.preheader245, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.xd, 8589934584              ; 5 uses
  %i.xo = shl nuw nsw i64 %n.vec, 1
  %i.xp = getelementptr i8, ptr %.24.lcssa.i, i64 %i.xo ; 2 uses
  %i.xq = trunc i64 %n.vec to i32
  %i.xr = add i32 %.1352.lcssa.i, %i.xq
  %i.xs = shl nuw nsw i64 %n.vec, 2
  %i.xt = getelementptr i8, ptr %.1355.lcssa.i, i64 %i.xs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.24.lcssa.i, i64 %i.xu
  %i.xv = shl i64 %index, 2
  %next.gep198 = getelementptr i8, ptr %.1355.lcssa.i, i64 %i.xv ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep198, align 4, !tbaa !30, !alias.scope !263
  %i.xw = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %next.gep198, i64 %i.k
  %wide.load199 = load <8 x float>, ptr %i.xx, align 4, !tbaa !30, !alias.scope !264
  %i.xy = fmul fast <8 x float> %wide.load199, %broadcast.splat
  %i.xz = shufflevector <8 x float> %i.xw, <8 x float> %i.xy, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ya = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.xz)
  %i.yb = fptosi <16 x float> %i.ya to <16 x i32>
  %i.yc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.yb, <16 x i32> splat (i32 -127))
  %i.yd = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.yc, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.yd to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !265, !noalias !266
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ye = icmp eq i64 %index.next, %n.vec
  br i1 %i.ye, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.xd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph282.i.preheader245

.lr.ph282.i.preheader245:                         ; preds = %vector.memcheck, %.lr.ph282.i.preheader, %middle.block
  %.25281.i.ph = phi ptr [ %.24.lcssa.i, %vector.memcheck ], [ %.24.lcssa.i, %.lr.ph282.i.preheader ], [ %i.xp, %middle.block ]
  %.2353280.i.ph = phi i32 [ %.1352.lcssa.i, %vector.memcheck ], [ %.1352.lcssa.i, %.lr.ph282.i.preheader ], [ %i.xr, %middle.block ]
  %.2356279.i.ph = phi ptr [ %.1355.lcssa.i, %vector.memcheck ], [ %.1355.lcssa.i, %.lr.ph282.i.preheader ], [ %i.xt, %middle.block ]
  br label %.lr.ph282.i

.lr.ph275.i:                                      ; preds = %.preheader137.i, %.lr.ph275.i
  %.24274.i = phi ptr [ %i.yu, %.lr.ph275.i ], [ %.23.lcssa.i, %.preheader137.i ] ; 2 uses
  %.1352273.i = phi i32 [ %i.yw, %.lr.ph275.i ], [ %.0351.lcssa.i, %.preheader137.i ]
  %.1355272.i = phi ptr [ %i.yv, %.lr.ph275.i ], [ %.0354.lcssa.i, %.preheader137.i ] ; 3 uses
  %i.yf = load i64, ptr %.1355272.i, align 1, !tbaa !17
  %i.yg = insertelement <2 x i64> poison, i64 %i.yf, i64 0
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %.1355272.i, i64 %i.k
  %i.yi = load i64, ptr %i.yh, align 1, !tbaa !17
  %.uncasted.i = insertelement <2 x i64> %i.yg, i64 %i.yi, i64 1
  %i.yj = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.yk = fmul fast <4 x float> %i.vg, %i.yj      ; 2 uses
  %i.yl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yk)
  %i.ym = fadd fast <4 x float> %i.yl, %i.yk
  %i.yn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ym)
  %i.yo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yn, <4 x i32> poison)
  %i.yp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yo, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.yq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yp, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.yr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.yq, <8 x i16> poison)
  %i.ys = bitcast <16 x i8> %i.yr to <4 x i32>
  %i.yt = extractelement <4 x i32> %i.ys, i64 0
  store i32 %i.yt, ptr %.24274.i, align 4, !tbaa !28
  %i.yu = getelementptr inbounds nuw i8, ptr %.24274.i, i64 4 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.1355272.i, i64 8 ; 2 uses
  %i.yw = add nuw nsw i32 %.1352273.i, 2          ; 3 uses
  %i.yx = or disjoint i32 %i.yw, 1
  %i.yy = icmp slt i32 %i.yx, %5
  br i1 %i.yy, label %.lr.ph275.i, label %.preheader136.i, !llvm.loop !252

.lr.ph282.i:                                      ; preds = %.lr.ph282.i.preheader245, %.lr.ph282.i
  %.25281.i = phi ptr [ %i.zj, %.lr.ph282.i ], [ %.25281.i.ph, %.lr.ph282.i.preheader245 ] ; 3 uses
  %.2353280.i = phi i32 [ %i.zl, %.lr.ph282.i ], [ %.2353280.i.ph, %.lr.ph282.i.preheader245 ]
  %.2356279.i = phi ptr [ %i.zk, %.lr.ph282.i ], [ %.2356279.i.ph, %.lr.ph282.i.preheader245 ] ; 3 uses
  %i.yz = load float, ptr %.2356279.i, align 4, !tbaa !30
  %i.za = fmul fast float %i.yz, %6
  %i.zb = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.za)
  %i.zc = fptosi float %i.zb to i32
  %spec.select.i391131.i = tail call i32 @llvm.smax.i32(i32 %i.zc, i32 -127)
  %.0.i392132.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i391131.i, i32 127)
  %.0.i392.i = trunc nsw i32 %.0.i392132.i to i8
  store i8 %.0.i392.i, ptr %.25281.i, align 1, !tbaa !17
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.2356279.i, i64 %i.k
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !30
  %i.zf = fmul fast float %i.ze, %6
  %i.zg = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zf)
  %i.zh = fptosi float %i.zg to i32
  %spec.select.i389133.i = tail call i32 @llvm.smax.i32(i32 %i.zh, i32 -127)
  %.0.i390134.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i389133.i, i32 127)
  %.0.i390.i = trunc nsw i32 %.0.i390134.i to i8
  %i.zi = getelementptr inbounds nuw i8, ptr %.25281.i, i64 1
  store i8 %.0.i390.i, ptr %i.zi, align 1, !tbaa !17
  %i.zj = getelementptr inbounds nuw i8, ptr %.25281.i, i64 2 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.2356279.i, i64 4
  %i.zl = add nuw nsw i32 %.2353280.i, 1          ; 2 uses
  %exitcond366.not.i = icmp eq i32 %i.zl, %5
  br i1 %exitcond366.not.i, label %._crit_edge.i, label %.lr.ph282.i, !llvm.loop !253

._crit_edge.i:                                    ; preds = %.lr.ph282.i, %middle.block, %.preheader136.i
  %.25.lcssa.i = phi ptr [ %.24.lcssa.i, %.preheader136.i ], [ %i.xp, %middle.block ], [ %i.zj, %.lr.ph282.i ] ; 2 uses
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 2 ; 3 uses
  %i.zm = icmp slt i64 %indvars.iv.next368.i, %invariant.op430.i
  br i1 %i.zm, label %bb.c, label %.preheader135.loopexit.i, !llvm.loop !254

bb.d:                                             ; preds = %._crit_edge301.i, %.lr.ph305.i
  %indvars.iv371.i = phi i64 [ %i.vu, %.lr.ph305.i ], [ %indvars.iv.next372.i, %._crit_edge301.i ] ; 2 uses
  %.26304.i = phi ptr [ %.22.lcssa.i, %.lr.ph305.i ], [ %.28.lcssa.i, %._crit_edge301.i ] ; 2 uses
  %i.zn = load ptr, ptr %0, align 8, !tbaa !14
  %i.zo = add nsw i64 %indvars.iv371.i, %i.vv
  %i.zp = mul i64 %i.zo, %i.k
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %i.zp
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %i.vp ; 2 uses
  br i1 %i.vs, label %.lr.ph293.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph293.i, %bb.d
  %.27.lcssa.i = phi ptr [ %.26304.i, %bb.d ], [ %i.acy, %.lr.ph293.i ] ; 9 uses
  %.0332.lcssa.i = phi ptr [ %i.zr, %bb.d ], [ %i.acz, %.lr.ph293.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.vt, %.lr.ph293.i ] ; 7 uses
  %i.zs = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.zs, label %iter.check, label %._crit_edge301.i

iter.check:                                       ; preds = %.preheader.i
  %i.zt = xor i32 %.0.lcssa.i, -1
  %i.zu = add i32 %5, %i.zt                       ; 3 uses
  %i.zv = zext i32 %i.zu to i64
  %i.zw = add nuw nsw i64 %i.zv, 1                ; 5 uses
  %min.iters.check210 = icmp ult i32 %i.zu, 3
  br i1 %min.iters.check210, label %.lr.ph300.i.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check
  %i.zx = xor i32 %.0.lcssa.i, -1
  %i.zy = add i32 %5, %i.zx
  %i.zz = zext i32 %i.zy to i64                   ; 2 uses
  %i.aaa = getelementptr i8, ptr %.27.lcssa.i, i64 %i.zz
  %i.aab = getelementptr i8, ptr %i.aaa, i64 1
  %i.aac = shl nuw nsw i64 %i.zz, 2
  %i.aad = getelementptr i8, ptr %.0332.lcssa.i, i64 %i.aac
  %i.aae = getelementptr i8, ptr %i.aad, i64 4
  %bound0212 = icmp ult ptr %.27.lcssa.i, %i.aae
  %bound1213 = icmp ult ptr %.0332.lcssa.i, %i.aab
  %found.conflict214 = and i1 %bound0212, %bound1213
  br i1 %found.conflict214, label %.lr.ph300.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck211
  %min.iters.check215 = icmp ult i32 %i.zu, 31
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check
  %i.aaf = and i64 %i.zw, 28
  %n.vec217 = and i64 %i.zw, 8589934560           ; 6 uses
  %i.aag = trunc i64 %n.vec217 to i32
  %i.aah = add i32 %.0.lcssa.i, %i.aag
  %i.aai = shl nuw nsw i64 %n.vec217, 2
  %i.aaj = getelementptr i8, ptr %.0332.lcssa.i, i64 %i.aai
  %i.aak = getelementptr i8, ptr %.27.lcssa.i, i64 %n.vec217 ; 2 uses
  br label %vector.body220

vector.body220:                                   ; preds = %vector.ph216, %vector.body220
  %index221 = phi i64 [ 0, %vector.ph216 ], [ %index.next228, %vector.body220 ] ; 3 uses
  %i.aal = shl i64 %index221, 2
  %next.gep222 = getelementptr i8, ptr %.0332.lcssa.i, i64 %i.aal ; 4 uses
  %next.gep223 = getelementptr i8, ptr %.27.lcssa.i, i64 %index221 ; 4 uses
  %i.aam = getelementptr i8, ptr %next.gep222, i64 32
  %i.aan = getelementptr i8, ptr %next.gep222, i64 64
  %i.aao = getelementptr i8, ptr %next.gep222, i64 96
  %wide.load224 = load <8 x float>, ptr %next.gep222, align 4, !tbaa !30, !alias.scope !267
  %wide.load225 = load <8 x float>, ptr %i.aam, align 4, !tbaa !30, !alias.scope !267
  %wide.load226 = load <8 x float>, ptr %i.aan, align 4, !tbaa !30, !alias.scope !267
  %wide.load227 = load <8 x float>, ptr %i.aao, align 4, !tbaa !30, !alias.scope !267
  %i.aap = fmul fast <8 x float> %wide.load224, %broadcast.splat219
  %i.aaq = fmul fast <8 x float> %wide.load225, %broadcast.splat219
  %i.aar = fmul fast <8 x float> %wide.load226, %broadcast.splat219
  %i.aas = fmul fast <8 x float> %wide.load227, %broadcast.splat219
  %i.aat = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aap)
  %i.aau = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aaq)
  %i.aav = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aar)
  %i.aaw = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aas)
  %i.aax = fptosi <8 x float> %i.aat to <8 x i32>
  %i.aay = fptosi <8 x float> %i.aau to <8 x i32>
  %i.aaz = fptosi <8 x float> %i.aav to <8 x i32>
  %i.aba = fptosi <8 x float> %i.aaw to <8 x i32>
  %i.abb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aax, <8 x i32> splat (i32 -127))
  %i.abc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aay, <8 x i32> splat (i32 -127))
  %i.abd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aaz, <8 x i32> splat (i32 -127))
  %i.abe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aba, <8 x i32> splat (i32 -127))
  %i.abf = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abb, <8 x i32> splat (i32 127))
  %i.abg = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abc, <8 x i32> splat (i32 127))
  %i.abh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abd, <8 x i32> splat (i32 127))
  %i.abi = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.abe, <8 x i32> splat (i32 127))
end_hunk_3
