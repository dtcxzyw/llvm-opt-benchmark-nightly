Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/histogram_enc?download=true
inline.NumInlined: 117
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@VP8LGetHistoImageSymbols:bb.a
  store i32 %i.cp, ptr %i.fr, align 8, !tbaa !18
  %indvars.iv.next.i.i65.epil = add nuw nsw i64 %indvars.iv.i.i64.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter355
  br i1 %epil.iter.cmp.not, label %VP8LHistogramSetClear.exit.i, label %.lr.ph.i.i63.epil, !llvm.loop !46

VP8LHistogramSetClear.exit.i:                     ; preds = %VP8LHistogramSetClear.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i63.epil, %.loopexit165
  %.val29.i = load ptr, ptr %28, align 8, !tbaa !24 ; 2 uses
  %.not2430.i = icmp eq ptr %.val29.i, null
  br i1 %.not2430.i, label %HistogramBuild.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %VP8LHistogramSetClear.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %28, i64 16
  br label %bb.g

bb.g:                                             ; preds = %VP8LRefsCursorNext.exit.i, %.lr.ph34.i
  %.val33.i = phi ptr [ %.val29.i, %.lr.ph34.i ], [ %.val.i, %VP8LRefsCursorNext.exit.i ] ; 2 uses
  %.032.i = phi i32 [ 0, %.lr.ph34.i ], [ %.1.lcssa.i, %VP8LRefsCursorNext.exit.i ] ; 3 uses
  %.01931.i = phi i32 [ 0, %.lr.ph34.i ], [ %.120.lcssa.i, %VP8LRefsCursorNext.exit.i ] ; 2 uses
  %i.ft = ashr i32 %.032.i, %5
  %i.fu = mul nsw i32 %i.ft, %i.cl
  %i.fv = ashr i32 %.01931.i, %5
  %i.fw = add nsw i32 %i.fu, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !32
  call fastcc void @HistogramAddSinglePixOrCopy(ptr noundef %i.fz, ptr noundef nonnull %.val33.i, ptr noundef null, i32 noundef 0)
  %i.ga = getelementptr i8, ptr %.val33.i, i64 2
  %.val23.i = load i16, ptr %i.ga, align 2, !tbaa !36
  %i.gb = zext i16 %.val23.i to i32
  %i.gc = add i32 %.01931.i, %i.gb                ; 3 uses
  %.not2225.i = icmp slt i32 %i.gc, %0
  br i1 %.not2225.i, label %._crit_edge.i, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.g, %.lr.ph.i62
  %.127.i = phi i32 [ %i.ge, %.lr.ph.i62 ], [ %.032.i, %bb.g ]
  %.12026.i = phi i32 [ %i.gd, %.lr.ph.i62 ], [ %i.gc, %bb.g ]
  %i.gd = sub nsw i32 %.12026.i, %0               ; 3 uses
  %i.ge = add nsw i32 %.127.i, 1                  ; 2 uses
  %.not22.i = icmp slt i32 %i.gd, %0
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i62, !llvm.loop !47

._crit_edge.i:                                    ; preds = %.lr.ph.i62, %bb.g
  %.120.lcssa.i = phi i32 [ %i.gc, %bb.g ], [ %i.gd, %.lr.ph.i62 ]
  %.1.lcssa.i = phi i32 [ %.032.i, %bb.g ], [ %i.ge, %.lr.ph.i62 ]
  %i.gf = load ptr, ptr %28, align 8, !tbaa !24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 3 uses
  store ptr %i.gg, ptr %28, align 8, !tbaa !24
  %i.gh = load ptr, ptr %i.fs, align 8, !tbaa !25
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.h, label %VP8LRefsCursorNext.exit.i

bb.h:                                             ; preds = %._crit_edge.i
  call void @VP8LRefsCursorNextBlock(ptr noundef nonnull %28) #10
  %.val.pre.i = load ptr, ptr %28, align 8, !tbaa !24
  br label %VP8LRefsCursorNext.exit.i

VP8LRefsCursorNext.exit.i:                        ; preds = %bb.h, %._crit_edge.i
  %.val.i = phi ptr [ %i.gg, %._crit_edge.i ], [ %.val.pre.i, %bb.h ] ; 2 uses
  %.not24.i = icmp eq ptr %.val.i, null
  br i1 %.not24.i, label %HistogramBuild.exit, label %bb.g, !llvm.loop !48

HistogramBuild.exit:                              ; preds = %VP8LRefsCursorNext.exit.i, %VP8LHistogramSetClear.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #10
  %i.gj = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 15 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !29
  store i32 0, ptr %7, align 8, !tbaa !31
  %i.gm = load i32, ptr %i.y, align 4, !tbaa !30
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.i68, label %.thread139

.lr.ph.i68:                                       ; preds = %HistogramBuild.exit, %bb.o
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %bb.o ], [ 0, %HistogramBuild.exit ] ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.i69 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !32 ; 24 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2056
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 1032
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 3244
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 3304 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 3264 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 3240
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !18 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  %i.gz = shl nuw i32 1, %i.gx
  %i.ha = add nuw nsw i32 %i.gz, 280
  %i.hb = select i1 %i.gy, i32 %i.ha, i32 280
  %i.hc = load ptr, ptr %i.gp, align 8, !tbaa !19
  %i.hd = call fastcc i64 @PopulationCost(ptr noundef %i.hc, i32 noundef %i.hb, ptr noundef nonnull %i.gt, ptr noundef nonnull %i.gu)
  store i64 %i.hd, ptr %i.gv, align 8, !tbaa !42
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 3246
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 3305 ; 2 uses
  %i.hg = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.gs, i32 noundef 256, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 3272 ; 2 uses
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !42
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gp, i64 3248
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 3306 ; 2 uses
  %i.hk = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.gr, i32 noundef 256, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hj)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 3280 ; 2 uses
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !42
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gp, i64 3250
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gp, i64 3307 ; 2 uses
  %i.ho = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.gq, i32 noundef 256, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gp, i64 3288 ; 2 uses
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !42
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3080
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gp, i64 3252
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gp, i64 3308 ; 2 uses
  %i.ht = call fastcc i64 @PopulationCost(ptr noundef nonnull %i.hq, i32 noundef 40, ptr noundef nonnull %i.hr, ptr noundef nonnull %i.hs) ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gp, i64 3296
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !42
  %i.hv = load i64, ptr %i.gv, align 8, !tbaa !42
  %i.hw = load i64, ptr %i.hh, align 8, !tbaa !42
  %i.hx = load i64, ptr %i.hl, align 8, !tbaa !42
  %i.hy = load i64, ptr %i.hp, align 8, !tbaa !42
  %i.hz = add i64 %i.hv, %i.ht
  %i.ia = add i64 %i.hz, %i.hw
  %i.ib = add i64 %i.ia, %i.hx
  %i.ic = add i64 %i.ib, %i.hy
  %i.id = getelementptr inbounds nuw i8, ptr %i.gp, i64 3256
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !71
  %i.ie = load i8, ptr %i.gu, align 8, !tbaa !21
  %.not.i = icmp eq i8 %i.ie, 0
  br i1 %.not.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph.i68
  %i.if = load i8, ptr %i.hf, align 1, !tbaa !21
  %.not19.i = icmp eq i8 %i.if, 0
  br i1 %.not19.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ig = load i8, ptr %i.hj, align 2, !tbaa !21
  %.not20.i = icmp eq i8 %i.ig, 0
  br i1 %.not20.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ih = load i8, ptr %i.hn, align 1, !tbaa !21
  %.not21.i = icmp eq i8 %i.ih, 0
  br i1 %.not21.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ii = load i8, ptr %i.hs, align 4, !tbaa !21
  %.not22.i71 = icmp eq i8 %i.ii, 0
  br i1 %.not22.i71, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.go, align 8, !tbaa !32
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.i68
  %i.ij = load i32, ptr %7, align 8, !tbaa !31
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !32 ; 4 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !19 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 3240
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !18 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 0                   ; 2 uses
  %i.ir = shl nuw i32 1, %i.ip
  %i.is = add nuw nsw i32 %i.ir, 280
  %i.it = select i1 %i.iq, i32 %i.is, i32 280
  %i.iu = shl i32 4, %i.ip
  %i.iv = add nuw i32 %i.iu, 4432
  %i.iw = select i1 %i.iq, i32 %i.iv, i32 4432
  %i.ix = sext i32 %i.iw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.im, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gp, i64 %i.ix, i1 false)
  store ptr %i.in, ptr %i.im, align 8, !tbaa !19
  %i.iy = load ptr, ptr %i.gp, align 8, !tbaa !19
  %i.iz = sext i32 %i.it to i64
  %i.ja = shl nsw i64 %i.iz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.in, ptr noundef nonnull align 4 dereferenceable(1) %i.iy, i64 %i.ja, i1 false)
  %i.jb = load i32, ptr %7, align 8, !tbaa !31
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %7, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %i.jd = load i32, ptr %i.y, align 4, !tbaa !30
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next.i70, %i.je
  br i1 %i.jf, label %.lr.ph.i68, label %HistogramCopyAndAnalyze.exit, !llvm.loop !49

HistogramCopyAndAnalyze.exit:                     ; preds = %bb.o
  %.pre197 = load i32, ptr %7, align 8, !tbaa !31 ; 7 uses
  %i.jg = shl nuw nsw i32 %i.ch, 1
  %i.jh = icmp sgt i32 %.pre197, %i.jg
  %i.ji = icmp slt i32 %3, 100
  %i.jj = and i1 %i.ji, %i.jh
  br i1 %i.jj, label %bb.p, label %.thread139

bb.p:                                             ; preds = %HistogramCopyAndAnalyze.exit
  %i.jk = icmp slt i32 %3, 90
  br i1 %i.jk, label %bb.q, label %UpdateDominantCostRange.exit.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.jl = icmp sgt i32 %i.k, 256
  %spec.select.i = select i1 %i.jl, i32 8, i32 16
  %i.jm = icmp sgt i32 %i.k, 512
  %.1.i = select i1 %i.jm, i32 4, i32 %spec.select.i
  %i.jn = icmp sgt i32 %i.k, 1024
  %.2.i = select i1 %i.jn, i32 2, i32 %.1.i
  %i.jo = icmp slt i32 %3, 51
  %i.jp = zext i1 %i.jo to i32
  %spec.select11.i = lshr exact i32 %.2.i, %i.jp
  %i.jq = zext nneg i32 %spec.select11.i to i64
  br label %UpdateDominantCostRange.exit.preheader.i

UpdateDominantCostRange.exit.preheader.i:         ; preds = %bb.q, %bb.p
  %.3.i = phi i64 [ 16, %bb.p ], [ %i.jq, %bb.q ]
  %.val60 = load ptr, ptr %i.gk, align 8, !tbaa !29 ; 19 uses
  %wide.trip.count.i73 = zext nneg i32 %.pre197 to i64 ; 6 uses
  br label %UpdateDominantCostRange.exit.i

.lr.ph.i78:                                       ; preds = %UpdateDominantCostRange.exit.i
  %.not.i.i.i = icmp eq i64 %spec.select.i75, %.sroa.6.1.i ; 2 uses
  %i.jr = sub i64 %spec.select.i75, %.sroa.6.1.i
  %i.js = uitofp i64 %i.jr to double              ; 4 uses
  %.not.i12.i.i = icmp eq i64 %.sroa.10.1.i, %.sroa.14.1.i
  %i.jt = sub i64 %.sroa.10.1.i, %.sroa.14.1.i
  %i.ju = uitofp i64 %i.jt to double
  %.not.i15.i.i = icmp eq i64 %.sroa.18.1.i, %.sroa.22.1.i
  %i.jv = sub i64 %.sroa.18.1.i, %.sroa.22.1.i
  %i.jw = uitofp i64 %i.jv to double
  br i1 %i.cg, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i78, %GetBinIdForEntropy.exit17.i.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %GetBinIdForEntropy.exit17.i.us.i ], [ 0, %.lr.ph.i78 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv36.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !32 ; 4 uses
  br i1 %.not.i.i.i, label %GetBinIdForEntropy.exit.i.us.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 3264
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !42
  %i.kb = sub i64 %i.ka, %.sroa.6.1.i
  %i.kc = uitofp i64 %i.kb to double
  %i.kd = fmul nnan double %i.kc, f0x400FFFFF79C842FA
  %i.ke = fdiv double %i.kd, %i.js
  %i.kf = fptosi double %i.ke to i32
  %i.kg = shl i32 %i.kf, 4
  br label %GetBinIdForEntropy.exit.i.us.i

GetBinIdForEntropy.exit.i.us.i:                   ; preds = %bb.r, %.lr.ph.split.us.i
  %.0.i.i.us.i = phi i32 [ %i.kg, %bb.r ], [ 0, %.lr.ph.split.us.i ]
  br i1 %.not.i12.i.i, label %GetBinIdForEntropy.exit14.i.us.i, label %bb.s

bb.s:                                             ; preds = %GetBinIdForEntropy.exit.i.us.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 3272
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !42
  %i.kj = sub i64 %i.ki, %.sroa.14.1.i
  %i.kk = uitofp i64 %i.kj to double
  %i.kl = fmul nnan double %i.kk, f0x400FFFFF79C842FA
  %i.km = fdiv double %i.kl, %i.ju
  %i.kn = fptosi double %i.km to i32
  %i.ko = shl i32 %i.kn, 2
  br label %GetBinIdForEntropy.exit14.i.us.i

GetBinIdForEntropy.exit14.i.us.i:                 ; preds = %bb.s, %GetBinIdForEntropy.exit.i.us.i
  %.0.i13.i.us.i = phi i32 [ %i.ko, %bb.s ], [ 0, %GetBinIdForEntropy.exit.i.us.i ]
  %i.kp = add i32 %.0.i13.i.us.i, %.0.i.i.us.i
  br i1 %.not.i15.i.i, label %GetBinIdForEntropy.exit17.i.us.i, label %bb.t

bb.t:                                             ; preds = %GetBinIdForEntropy.exit14.i.us.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jy, i64 3280
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !42
  %i.ks = sub i64 %i.kr, %.sroa.22.1.i
  %i.kt = uitofp i64 %i.ks to double
  %i.ku = fmul nnan double %i.kt, f0x400FFFFF79C842FA
  %i.kv = fdiv double %i.ku, %i.jw
  %i.kw = fptosi double %i.kv to i32
  br label %GetBinIdForEntropy.exit17.i.us.i

GetBinIdForEntropy.exit17.i.us.i:                 ; preds = %bb.t, %GetBinIdForEntropy.exit14.i.us.i
  %.0.i16.i.us.i = phi i32 [ %i.kw, %bb.t ], [ 0, %GetBinIdForEntropy.exit14.i.us.i ]
  %i.kx = add nsw i32 %i.kp, %.0.i16.i.us.i
  %i.ky = trunc i32 %i.kx to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jy, i64 3310
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !72
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i73
  br i1 %exitcond40.not.i, label %HistogramAnalyzeEntropyBin.exit, label %.lr.ph.split.us.i, !llvm.loop !50

.lr.ph.split.i:                                   ; preds = %.lr.ph.i78
  br i1 %.not.i.i.i, label %GetBinIdForEntropy.exit.i.us21.i.preheader, label %GetBinIdForEntropy.exit.i.i.preheader

GetBinIdForEntropy.exit.i.i.preheader:            ; preds = %.lr.ph.split.i
  %xtraiter360 = and i64 %wide.trip.count.i73, 1
  %i.la = icmp eq i32 %.pre197, 1
  br i1 %i.la, label %GetBinIdForEntropy.exit.i.i.epil.preheader, label %GetBinIdForEntropy.exit.i.i.preheader.new

GetBinIdForEntropy.exit.i.i.preheader.new:        ; preds = %GetBinIdForEntropy.exit.i.i.preheader
  %unroll_iter364 = and i64 %wide.trip.count.i73, 2147483646
  br label %GetBinIdForEntropy.exit.i.i

GetBinIdForEntropy.exit.i.us21.i.preheader:       ; preds = %.lr.ph.split.i
  %xtraiter366 = and i64 %wide.trip.count.i73, 7  ; 3 uses
  %i.lb = add i32 %.pre197, -1
  %i.lc = icmp ult i32 %i.lb, 7
  br i1 %i.lc, label %GetBinIdForEntropy.exit.i.us21.i.epil.preheader, label %GetBinIdForEntropy.exit.i.us21.i.preheader.new

GetBinIdForEntropy.exit.i.us21.i.preheader.new:   ; preds = %GetBinIdForEntropy.exit.i.us21.i.preheader
  %unroll_iter370 = and i64 %wide.trip.count.i73, 2147483640
  br label %GetBinIdForEntropy.exit.i.us21.i

GetBinIdForEntropy.exit.i.us21.i:                 ; preds = %GetBinIdForEntropy.exit.i.us21.i, %GetBinIdForEntropy.exit.i.us21.i.preheader.new
  %indvars.iv31.i = phi i64 [ 0, %GetBinIdForEntropy.exit.i.us21.i.preheader.new ], [ %indvars.iv.next32.i.7, %GetBinIdForEntropy.exit.i.us21.i ] ; 9 uses
  %niter371 = phi i64 [ 0, %GetBinIdForEntropy.exit.i.us21.i.preheader.new ], [ %niter371.next.7, %GetBinIdForEntropy.exit.i.us21.i ]
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !32
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 3310
  store i16 0, ptr %i.lf, align 2, !tbaa !72
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 3310
  store i16 0, ptr %i.lj, align 2, !tbaa !72
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 3310
  store i16 0, ptr %i.ln, align 2, !tbaa !72
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 3310
  store i16 0, ptr %i.lr, align 2, !tbaa !72
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 3310
  store i16 0, ptr %i.lv, align 2, !tbaa !72
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 3310
  store i16 0, ptr %i.lz, align 2, !tbaa !72
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !32
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 3310
  store i16 0, ptr %i.md, align 2, !tbaa !72
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv31.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 3310
  store i16 0, ptr %i.mh, align 2, !tbaa !72
  %indvars.iv.next32.i.7 = add nuw nsw i64 %indvars.iv31.i, 8 ; 2 uses
  %niter371.next.7 = add i64 %niter371, 8         ; 2 uses
  %niter371.ncmp.7 = icmp eq i64 %niter371.next.7, %unroll_iter370
  br i1 %niter371.ncmp.7, label %HistogramAnalyzeEntropyBin.exit.loopexit.unr-lcssa, label %GetBinIdForEntropy.exit.i.us21.i, !llvm.loop !50

UpdateDominantCostRange.exit.i:                   ; preds = %UpdateDominantCostRange.exit.i, %UpdateDominantCostRange.exit.preheader.i
  %indvars.iv.i74 = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %indvars.iv.next.i76, %UpdateDominantCostRange.exit.i ] ; 2 uses
  %.sroa.0.012.i = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %spec.select.i75, %UpdateDominantCostRange.exit.i ]
  %.sroa.6.011.i = phi i64 [ -1, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.6.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.10.010.i = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.10.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.14.09.i = phi i64 [ -1, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.14.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.18.08.i = phi i64 [ 0, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.18.1.i, %UpdateDominantCostRange.exit.i ]
  %.sroa.22.07.i = phi i64 [ -1, %UpdateDominantCostRange.exit.preheader.i ], [ %.sroa.22.1.i, %UpdateDominantCostRange.exit.i ]
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv.i74
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !32 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 3264
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !42 ; 2 uses
  %spec.select.i75 = call i64 @llvm.umax.i64(i64 %.sroa.0.012.i, i64 %i.ml) ; 3 uses
  %.sroa.6.1.i = call i64 @llvm.umin.i64(i64 %.sroa.6.011.i, i64 %i.ml) ; 7 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 3272
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !42 ; 2 uses
  %.sroa.10.1.i = call i64 @llvm.umax.i64(i64 %.sroa.10.010.i, i64 %i.mn) ; 3 uses
  %.sroa.14.1.i = call i64 @llvm.umin.i64(i64 %.sroa.14.09.i, i64 %i.mn) ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 3280
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !42 ; 2 uses
  %.sroa.18.1.i = call i64 @llvm.umax.i64(i64 %.sroa.18.08.i, i64 %i.mp) ; 3 uses
  %.sroa.22.1.i = call i64 @llvm.umin.i64(i64 %.sroa.22.07.i, i64 %i.mp) ; 4 uses
  %indvars.iv.next.i76 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %indvars.iv.next.i76, %wide.trip.count.i73
  br i1 %exitcond.not.i77, label %.lr.ph.i78, label %UpdateDominantCostRange.exit.i, !llvm.loop !51

GetBinIdForEntropy.exit.i.i:                      ; preds = %GetBinIdForEntropy.exit.i.i, %GetBinIdForEntropy.exit.i.i.preheader.new
  %indvars.iv26.i = phi i64 [ 0, %GetBinIdForEntropy.exit.i.i.preheader.new ], [ %indvars.iv.next27.i.1, %GetBinIdForEntropy.exit.i.i ] ; 3 uses
  %niter365 = phi i64 [ 0, %GetBinIdForEntropy.exit.i.i.preheader.new ], [ %niter365.next.1, %GetBinIdForEntropy.exit.i.i ]
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv26.i
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !32 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 3264
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !42
  %i.mu = sub i64 %i.mt, %.sroa.6.1.i
  %i.mv = uitofp i64 %i.mu to double
  %i.mw = fmul nnan double %i.mv, f0x400FFFFF79C842FA
  %i.mx = fdiv double %i.mw, %i.js
  %i.my = fptosi double %i.mx to i32
  %i.mz = trunc i32 %i.my to i16
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 3310
  store i16 %i.mz, ptr %i.na, align 2, !tbaa !72
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv26.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !32 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 3264
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !42
  %i.ng = sub i64 %i.nf, %.sroa.6.1.i
  %i.nh = uitofp i64 %i.ng to double
  %i.ni = fmul nnan double %i.nh, f0x400FFFFF79C842FA
  %i.nj = fdiv double %i.ni, %i.js
end_hunk_0
