Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_decompress?download=true
inline.NumInlined: 744
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@HUF_readDTableX1_wksp:bb.a
  %broadcast.splatinsert352 = insertelement <4 x i8> poison, i8 %i.fl, i64 0
  %invariant.gep399 = getelementptr [2 x i8], ptr %i.c, i64 %i.gf
  br label %vec.epilog.vector.body354

vec.epilog.vector.body354:                        ; preds = %vec.epilog.vector.body354, %vec.epilog.ph350
  %index355 = phi i64 [ %vec.epilog.resume.val344, %vec.epilog.ph350 ], [ %index.next358, %vec.epilog.vector.body354 ] ; 3 uses
  %i.gu = getelementptr i8, ptr %invariant.gep307, i64 %index355
  %wide.load356 = load <4 x i8>, ptr %i.gu, align 1, !tbaa !17, !alias.scope !75
  %gep400 = getelementptr [2 x i8], ptr %invariant.gep399, i64 %index355
  %interleaved.vec357 = shufflevector <4 x i8> %broadcast.splatinsert352, <4 x i8> %wide.load356, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x i8> %interleaved.vec357, ptr %gep400, align 1, !tbaa !17, !alias.scope !76, !noalias !75
  %index.next358 = add nuw i64 %index355, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next358, %n.vec351
  br i1 %i.gv, label %vec.epilog.middle.block359, label %vec.epilog.vector.body354, !llvm.loop !64

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body354
  %cmp.n360 = icmp eq i64 %n.vec351, %wide.trip.count269
  br i1 %cmp.n360, label %.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %vector.memcheck, %iter.check346, %vec.epilog.iter.check348, %vec.epilog.middle.block359
  %indvars.iv264.ph = phi i64 [ %i.gf, %iter.check346 ], [ %i.gf, %vector.memcheck ], [ %i.gl, %vec.epilog.iter.check348 ], [ %i.gt, %vec.epilog.middle.block359 ] ; 2 uses
  %indvars.iv262.ph = phi i64 [ 0, %iter.check346 ], [ 0, %vector.memcheck ], [ %n.vec333, %vec.epilog.iter.check348 ], [ %n.vec351, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter390 = and i64 %wide.trip.count269, 3   ; 2 uses
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader, %.lr.ph200.prol
  %indvars.iv264.prol = phi i64 [ %indvars.iv.next265.prol, %.lr.ph200.prol ], [ %indvars.iv264.ph, %.lr.ph200.preheader ] ; 2 uses
  %indvars.iv262.prol = phi i64 [ %indvars.iv.next263.prol, %.lr.ph200.prol ], [ %indvars.iv262.ph, %.lr.ph200.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.prol ], [ 0, %.lr.ph200.preheader ]
  %gep308.prol = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262.prol
  %i.gw = load i8, ptr %gep308.prol, align 1, !tbaa !17
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264.prol ; 2 uses
  store i8 %i.fl, ptr %i.gx, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store i8 %i.gw, ptr %.sroa.4.0..sroa_idx.prol, align 1, !tbaa !17
  %indvars.iv.next265.prol = add nsw i64 %indvars.iv264.prol, 1 ; 2 uses
  %indvars.iv.next263.prol = add nuw nsw i64 %indvars.iv262.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter390
  br i1 %prol.iter.cmp.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol, !llvm.loop !65

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %indvars.iv264.unr = phi i64 [ %indvars.iv264.ph, %.lr.ph200.preheader ], [ %indvars.iv.next265.prol, %.lr.ph200.prol ]
  %indvars.iv262.unr = phi i64 [ %indvars.iv262.ph, %.lr.ph200.preheader ], [ %indvars.iv.next263.prol, %.lr.ph200.prol ]
  %i.gy = sub nsw i64 %indvars.iv262.ph, %wide.trip.count269
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.lr.ph200 ], [ %indvars.iv264.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %indvars.iv262 = phi i64 [ %indvars.iv.next263.3, %.lr.ph200 ], [ %indvars.iv262.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %i.ha = load i8, ptr %gep308, align 1, !tbaa !17
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  store i8 %i.fl, ptr %i.hb, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store i8 %i.ha, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !17
  %i.hc = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.1 = getelementptr i8, ptr %i.hc, i64 1
  %i.hd = load i8, ptr %gep308.1, align 1, !tbaa !17
  %i.he = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 2
  store i8 %i.fl, ptr %i.hf, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.1 = getelementptr i8, ptr %i.he, i64 3
  store i8 %i.hd, ptr %.sroa.4.0..sroa_idx.1, align 1, !tbaa !17
  %i.hg = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.2 = getelementptr i8, ptr %i.hg, i64 2
  %i.hh = load i8, ptr %gep308.2, align 1, !tbaa !17
  %i.hi = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  store i8 %i.fl, ptr %i.hj, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.2 = getelementptr i8, ptr %i.hi, i64 5
  store i8 %i.hh, ptr %.sroa.4.0..sroa_idx.2, align 1, !tbaa !17
  %i.hk = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.3 = getelementptr i8, ptr %i.hk, i64 3
  %i.hl = load i8, ptr %gep308.3, align 1, !tbaa !17
  %i.hm = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 6
  store i8 %i.fl, ptr %i.hn, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.3 = getelementptr i8, ptr %i.hm, i64 7
  store i8 %i.hl, ptr %.sroa.4.0..sroa_idx.3, align 1, !tbaa !17
  %indvars.iv.next265.3 = add nsw i64 %indvars.iv264, 4
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next263.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %.loopexit, label %.lr.ph200, !llvm.loop !66

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %indvars.iv255 = phi i64 [ %i.gb, %.lr.ph197.preheader.new ], [ %indvars.iv.next256.1, %.lr.ph197 ] ; 3 uses
  %indvars.iv253 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %indvars.iv.next254.1, %.lr.ph197 ] ; 3 uses
  %niter389 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %niter389.next.1, %.lr.ph197 ]
  %gep306 = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %i.ho = load i8, ptr %gep306, align 1, !tbaa !17 ; 2 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  store i8 %i.fl, ptr %i.hp, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  store i8 %i.ho, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !17
  %i.hq = getelementptr i8, ptr %i.hp, i64 2
  store i8 %i.fl, ptr %i.hq, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8 = getelementptr i8, ptr %i.hp, i64 3
  store i8 %i.ho, ptr %.sroa.5.0..sroa_idx8, align 1, !tbaa !17
  %i.hr = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %gep306.1 = getelementptr i8, ptr %i.hr, i64 1
  %i.hs = load i8, ptr %gep306.1, align 1, !tbaa !17 ; 2 uses
  %i.ht = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  store i8 %i.fl, ptr %i.hu, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx.1 = getelementptr i8, ptr %i.ht, i64 5
  store i8 %i.hs, ptr %.sroa.5.0..sroa_idx.1, align 1, !tbaa !17
  %i.hv = getelementptr i8, ptr %i.ht, i64 6
  store i8 %i.fl, ptr %i.hv, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8.1 = getelementptr i8, ptr %i.ht, i64 7
  store i8 %i.hs, ptr %.sroa.5.0..sroa_idx8.1, align 1, !tbaa !17
  %indvars.iv.next256.1 = add nsw i64 %indvars.iv255, 4 ; 2 uses
  %indvars.iv.next254.1 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %niter389.next.1 = add i64 %niter389, 2         ; 2 uses
  %niter389.ncmp.1 = icmp eq i64 %niter389.next.1, %unroll_iter388
  br i1 %niter389.ncmp.1, label %.loopexit.loopexit364.unr-lcssa, label %.lr.ph197, !llvm.loop !67

bb.i:                                             ; preds = %bb.i, %.lr.ph194.new
  %indvars.iv246 = phi i64 [ %i.fx, %.lr.ph194.new ], [ %indvars.iv.next247.1, %bb.i ] ; 3 uses
  %indvars.iv244 = phi i64 [ 0, %.lr.ph194.new ], [ %indvars.iv.next245.1, %bb.i ] ; 3 uses
  %niter383 = phi i64 [ 0, %.lr.ph194.new ], [ %niter383.next.1, %bb.i ]
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %i.hw = load i8, ptr %gep304, align 1, !tbaa !17
  %i.hx = zext i8 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 8
  %i.hz = or disjoint i64 %i.hy, %i.fv
  %i.ia = mul nuw i64 %i.hz, 281479271743489
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246
  store i64 %i.ia, ptr %i.ib, align 1, !tbaa !23
  %i.ic = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %gep304.1 = getelementptr i8, ptr %i.ic, i64 1
  %i.id = load i8, ptr %gep304.1, align 1, !tbaa !17
  %i.ie = zext i8 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 8
  %i.ig = or disjoint i64 %i.if, %i.fv
  %i.ih = mul nuw i64 %i.ig, 281479271743489
  %i.ii = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv246
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  store i64 %i.ih, ptr %i.ij, align 1, !tbaa !23
  %indvars.iv.next247.1 = add nsw i64 %indvars.iv246, 8 ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter383.next.1 = add i64 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %.loopexit.loopexit365.unr-lcssa, label %bb.i, !llvm.loop !68

bb.j:                                             ; preds = %bb.j, %.lr.ph191.new
  %indvars.iv237 = phi i64 [ %i.fs, %.lr.ph191.new ], [ %indvars.iv.next238.1, %bb.j ] ; 3 uses
  %indvars.iv235 = phi i64 [ 0, %.lr.ph191.new ], [ %indvars.iv.next236.1, %bb.j ] ; 3 uses
  %niter376 = phi i64 [ 0, %.lr.ph191.new ], [ %niter376.next.1, %bb.j ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235
  %i.ik = load i8, ptr %gep, align 1, !tbaa !17
  %i.il = zext i8 %i.ik to i64
  %i.im = shl nuw nsw i64 %i.il, 8
  %i.in = or disjoint i64 %i.im, %i.fq
  %i.io = mul nuw i64 %i.in, 281479271743489      ; 2 uses
  %i.ip = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237 ; 2 uses
  store i64 %i.io, ptr %i.ip, align 1, !tbaa !23
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i64 %i.io, ptr %i.iq, align 1, !tbaa !23
  %i.ir = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235
  %gep.1 = getelementptr i8, ptr %i.ir, i64 1
  %i.is = load i8, ptr %gep.1, align 1, !tbaa !17
  %i.it = zext i8 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 8
  %i.iv = or disjoint i64 %i.iu, %i.fq
  %i.iw = mul nuw i64 %i.iv, 281479271743489      ; 2 uses
  %i.ix = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv237 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 16
  store i64 %i.iw, ptr %i.iy, align 1, !tbaa !23
  %i.iz = getelementptr i8, ptr %i.ix, i64 24
  store i64 %i.iw, ptr %i.iz, align 1, !tbaa !23
  %indvars.iv.next238.1 = add nsw i64 %indvars.iv237, 16 ; 2 uses
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter376.next.1 = add i64 %niter376, 2         ; 2 uses
  %niter376.ncmp.1 = icmp eq i64 %niter376.next.1, %unroll_iter375
  br i1 %niter376.ncmp.1, label %.loopexit.loopexit366.unr-lcssa, label %bb.j, !llvm.loop !69

bb.k:                                             ; preds = %bb.h, %.split
  %i.ja = icmp sgt i32 %i.ff, 0
  br i1 %i.ja, label %.lr.ph208, label %.loopexit

.lr.ph208:                                        ; preds = %bb.k
  %.mask171 = and i32 %i.fk, 255
  %i.jb = zext nneg i32 %.mask171 to i64
  %i.jc = icmp sgt i32 %i.fi, 0
  br i1 %i.jc, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %.lr.ph208
  %i.jd = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.je = sext i32 %.0156210 to i64
  %i.jf = sext i32 %.0155212 to i64
  %wide.trip.count281 = zext nneg i32 %i.ff to i64
  %invariant.gep309 = getelementptr i8, ptr %i.fc, i64 %i.je
  %i.jg = add nsw i64 %i.jd, -1
  %i.jh = lshr i64 %i.jg, 4
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %xtraiter393 = and i64 %i.ji, 7                 ; 3 uses
  %i.jj = icmp ult i32 %i.fi, 113
  %unroll_iter397 = and i64 %i.ji, 1152921504606846968
  %lcmp.mod395.not = icmp eq i64 %xtraiter393, 0
  %lcmp.mod396 = icmp ne i64 %xtraiter393, 0
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %._crit_edge204
  %indvars.iv276 = phi i64 [ %i.jf, %.lr.ph203.preheader ], [ %indvars.iv.next277, %._crit_edge204 ] ; 2 uses
  %indvars.iv274 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next275, %._crit_edge204 ] ; 2 uses
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %indvars.iv274
  %i.jk = load i8, ptr %gep310, align 1, !tbaa !17
  %i.jl = zext i8 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 8
  %i.jn = or disjoint i64 %i.jm, %i.jb
  %i.jo = mul nuw i64 %i.jn, 281479271743489
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv276 ; 9 uses
  %i.jq = insertelement <4 x i64> poison, i64 %i.jo, i64 0
  %i.jr = shufflevector <4 x i64> %i.jq, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %i.jj, label %.epil.preheader392, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203, %.lr.ph203.new
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ] ; 9 uses
  %niter398 = phi i64 [ %niter398.next.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ]
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  store <4 x i64> %i.jr, ptr %i.js, align 1, !tbaa !23
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  store <4 x i64> %i.jr, ptr %i.ju, align 1, !tbaa !23
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store <4 x i64> %i.jr, ptr %i.jw, align 1, !tbaa !23
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  store <4 x i64> %i.jr, ptr %i.jy, align 1, !tbaa !23
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 128
  store <4 x i64> %i.jr, ptr %i.ka, align 1, !tbaa !23
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 160
  store <4 x i64> %i.jr, ptr %i.kc, align 1, !tbaa !23
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 192
  store <4 x i64> %i.jr, ptr %i.ke, align 1, !tbaa !23
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 224
  store <4 x i64> %i.jr, ptr %i.kg, align 1, !tbaa !23
  %indvars.iv.next272.7 = add nuw nsw i64 %indvars.iv271, 128 ; 2 uses
  %niter398.next.7 = add i64 %niter398, 8         ; 2 uses
  %niter398.ncmp.7.not = icmp eq i64 %niter398.next.7, %unroll_iter397
  br i1 %niter398.ncmp.7.not, label %._crit_edge204.unr-lcssa, label %.lr.ph203.new, !llvm.loop !70

._crit_edge204.unr-lcssa:                         ; preds = %.lr.ph203.new
  br i1 %lcmp.mod395.not, label %._crit_edge204, label %.epil.preheader392

.epil.preheader392:                               ; preds = %._crit_edge204.unr-lcssa, %.lr.ph203
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next272.7, %._crit_edge204.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod396)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader392
  %indvars.iv271.epil = phi i64 [ %indvars.iv271.epil.init, %.epil.preheader392 ], [ %indvars.iv.next272.epil, %bb.l ] ; 2 uses
  %epil.iter394 = phi i64 [ 0, %.epil.preheader392 ], [ %epil.iter394.next, %bb.l ]
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271.epil
  store <4 x i64> %i.jr, ptr %i.kh, align 1, !tbaa !23
  %indvars.iv.next272.epil = add nuw nsw i64 %indvars.iv271.epil, 16
  %epil.iter394.next = add i64 %epil.iter394, 1   ; 2 uses
  %epil.iter394.cmp.not = icmp eq i64 %epil.iter394.next, %xtraiter393
  br i1 %epil.iter394.cmp.not, label %._crit_edge204, label %bb.l, !llvm.loop !71

._crit_edge204:                                   ; preds = %bb.l, %._crit_edge204.unr-lcssa
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, %i.jd
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph203, !llvm.loop !72

.loopexit.loopexit364.unr-lcssa:                  ; preds = %.lr.ph197
  %lcmp.mod386.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod386.not, label %.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.loopexit.loopexit364.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv255.epil.init = phi i64 [ %i.gb, %.lr.ph197.preheader ], [ %indvars.iv.next256.1, %.loopexit.loopexit364.unr-lcssa ]
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next254.1, %.loopexit.loopexit364.unr-lcssa ]
  %lcmp.mod387 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod387)
  %gep306.epil = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253.epil.init
  %i.ki = load i8, ptr %gep306.epil, align 1, !tbaa !17 ; 2 uses
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255.epil.init ; 4 uses
  store i8 %i.fl, ptr %i.kj, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  store i8 %i.ki, ptr %.sroa.5.0..sroa_idx.epil, align 1, !tbaa !17
  %i.kk = getelementptr i8, ptr %i.kj, i64 2
  store i8 %i.fl, ptr %i.kk, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8.epil = getelementptr i8, ptr %i.kj, i64 3
  store i8 %i.ki, ptr %.sroa.5.0..sroa_idx8.epil, align 1, !tbaa !17
  br label %.loopexit

.loopexit.loopexit365.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod380.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod380.not, label %.loopexit, label %.epil.preheader377

.epil.preheader377:                               ; preds = %.loopexit.loopexit365.unr-lcssa, %.lr.ph194
  %indvars.iv246.epil.init = phi i64 [ %i.fx, %.lr.ph194 ], [ %indvars.iv.next247.1, %.loopexit.loopexit365.unr-lcssa ]
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next245.1, %.loopexit.loopexit365.unr-lcssa ]
  %lcmp.mod381 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %gep304.epil = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244.epil.init
  %i.kl = load i8, ptr %gep304.epil, align 1, !tbaa !17
  %i.km = zext i8 %i.kl to i64
  %i.kn = shl nuw nsw i64 %i.km, 8
  %i.ko = or disjoint i64 %i.kn, %i.fv
  %i.kp = mul nuw i64 %i.ko, 281479271743489
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246.epil.init
  store i64 %i.kp, ptr %i.kq, align 1, !tbaa !23
  br label %.loopexit

.loopexit.loopexit366.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod373.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod373.not, label %.loopexit, label %.epil.preheader370

.epil.preheader370:                               ; preds = %.loopexit.loopexit366.unr-lcssa, %.lr.ph191
  %indvars.iv237.epil.init = phi i64 [ %i.fs, %.lr.ph191 ], [ %indvars.iv.next238.1, %.loopexit.loopexit366.unr-lcssa ]
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next236.1, %.loopexit.loopexit366.unr-lcssa ]
  %lcmp.mod374 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod374)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235.epil.init
  %i.kr = load i8, ptr %gep.epil, align 1, !tbaa !17
  %i.ks = zext i8 %i.kr to i64
  %i.kt = shl nuw nsw i64 %i.ks, 8
  %i.ku = or disjoint i64 %i.kt, %i.fq
  %i.kv = mul nuw i64 %i.ku, 281479271743489      ; 2 uses
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237.epil.init ; 2 uses
  store i64 %i.kv, ptr %i.kw, align 1, !tbaa !23
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %i.kv, ptr %i.kx, align 1, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader370, %.loopexit.loopexit366.unr-lcssa, %.epil.preheader377, %.loopexit.loopexit365.unr-lcssa, %.lr.ph197.epil.preheader, %.loopexit.loopexit364.unr-lcssa, %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge204, %middle.block342, %vec.epilog.middle.block359, %.preheader177, %.preheader175, %.preheader173, %.preheader, %bb.k, %.lr.ph208
  %i.ky = add nsw i32 %i.ff, %.0156210
  %i.kz = mul nsw i32 %i.ff, %i.fi
  %i.la = add nsw i32 %i.kz, %.0155212
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.fd
  br i1 %exitcond287.not, label %.critedge, label %bb.h, !llvm.loop !73

.critedge:                                        ; preds = %.loopexit, %HUF_rescaleStats.exit, %bb.b, %bb.a
  %.1 = phi i64 [ -44, %HUF_rescaleStats.exit ], [ -44, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i64 @HUF_readDTableX2_wksp(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.d = and i32 %.val, 255                       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 4          ; 11 uses
  %i.f = icmp ult i64 %4, 2124
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 676 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 10 uses
  %i.j = icmp samesign ugt i32 %i.d, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.i, i8 0, i64 112, i1 false)
  br i1 %i.j, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 992 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.m = call i64 @HUF_readStats_wksp(ptr noundef nonnull %i.k, i64 noundef 256, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef 876, i32 noundef %5) #15 ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.b, align 4, !tbaa !16   ; 5 uses
  %i.p = icmp ugt i32 %i.o, %i.d
  br i1 %i.p, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %i.o, 1                  ; 5 uses
  br label %bb.f
end_hunk_0
begin_hunk_1_@HUF_readDTableX2_wksp:bb.a
  %min.iters.check256 = icmp ult i32 %i.ga, 31
  br i1 %min.iters.check256, label %.loopexit.i.us.us74.i.preheader330, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.loopexit.i.us.us74.i.preheader
  %i.gd = xor i32 %i.eu, -1
  %i.ge = add i32 %i.ew, %i.gd                    ; 2 uses
  %mul.result = shl i32 %i.ge, 2
  %mul.overflow = icmp ugt i32 %i.ge, 1073741823
  %i.gf = add i32 %i.fb, %mul.result
  %i.gg = icmp slt i32 %i.gf, %i.fb
  %i.gh = or i1 %i.gg, %mul.overflow
  br i1 %i.gh, label %.loopexit.i.us.us74.i.preheader330, label %vector.memcheck243

vector.memcheck243:                               ; preds = %vector.scevcheck
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.fn
  %i.gi = xor i32 %i.eu, -1
  %i.gj = add i32 %i.ew, %i.gi
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr i8, ptr %scevgep246, i64 %i.fn
  %scevgep247 = getelementptr i8, ptr %i.gl, i64 %i.gk
  %i.gm = sext i32 %i.fb to i64
  %i.gn = shl nsw i64 %i.gm, 2                    ; 2 uses
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.gn
  %i.go = shl nuw nsw i64 %i.gk, 4
  %i.gp = getelementptr i8, ptr %scevgep250, i64 %i.go
  %scevgep251 = getelementptr i8, ptr %i.gp, i64 %i.gn
  %bound0252 = icmp ult ptr %scevgep245, %scevgep251
  %bound1253 = icmp ult ptr %scevgep249, %scevgep247
  %found.conflict254 = and i1 %bound0252, %bound1253
  br i1 %found.conflict254, label %.loopexit.i.us.us74.i.preheader330, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck243
  %n.vec258 = and i64 %i.gc, 8589934590           ; 4 uses
  %i.gq = add nsw i64 %n.vec258, %i.fn
  %i.gr = trunc i64 %n.vec258 to i32
  %i.gs = shl i32 %i.gr, 2
  %i.gt = add i32 %i.fb, %i.gs
  %broadcast.splatinsert259 = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat260 = shufflevector <2 x i32> %broadcast.splatinsert259, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph257
  %index262 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body261 ] ; 3 uses
  %i.gu = add i64 %index262, %i.fn                ; 2 uses
  %i.gv = trunc i64 %index262 to i32
  %i.gw = shl i32 %i.gv, 2
  %i.gx = add i32 %i.fb, %i.gw                    ; 2 uses
  %i.gy = add i32 %i.gx, 4
  %i.gz = sext i32 %i.gx to i64
  %i.ha = sext i32 %i.gy to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gz
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ha
  %i.hd = getelementptr inbounds i8, ptr %i.eo, i64 %i.gu
  %i.he = getelementptr i8, ptr %i.eo, i64 %i.gu
  %i.hf = getelementptr i8, ptr %i.he, i64 1
  %i.hg = load i8, ptr %i.hd, align 1, !tbaa !127, !alias.scope !128, !noalias !129
  %broadcast.splatinsert263 = insertelement <2 x i8> poison, i8 %i.hg, i64 0
  %broadcast.splat264 = shufflevector <2 x i8> %broadcast.splatinsert263, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hh = load i8, ptr %i.hf, align 1, !tbaa !127, !alias.scope !128, !noalias !129
  %broadcast.splatinsert265 = insertelement <2 x i8> poison, i8 %i.hh, i64 0
  %broadcast.splat266 = shufflevector <2 x i8> %broadcast.splatinsert265, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hi = zext <2 x i8> %broadcast.splat264 to <2 x i32>
  %i.hj = zext <2 x i8> %broadcast.splat266 to <2 x i32>
  %i.hk = or disjoint <2 x i32> %broadcast.splat260, %i.hi
  %i.hl = or disjoint <2 x i32> %broadcast.splat260, %i.hj
  %i.hm = zext <2 x i32> %i.hk to <2 x i64>
  %i.hn = zext <2 x i32> %i.hl to <2 x i64>
  %i.ho = mul nuw <2 x i64> %i.hm, splat (i64 4294967297)
  %i.hp = mul nuw <2 x i64> %i.hn, splat (i64 4294967297)
  store <2 x i64> %i.ho, ptr %i.hb, align 2, !alias.scope !129
  store <2 x i64> %i.hp, ptr %i.hc, align 2, !alias.scope !129
  %index.next267 = add nuw i64 %index262, 2       ; 2 uses
  %i.hq = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.hq, label %middle.block268, label %vector.body261, !llvm.loop !90

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.gc, %n.vec258
  br i1 %cmp.n269, label %.loopexit.i, label %.loopexit.i.us.us74.i.preheader330

.loopexit.i.us.us74.i.preheader330:               ; preds = %vector.memcheck243, %vector.scevcheck, %.loopexit.i.us.us74.i.preheader, %middle.block268
  %indvars.iv87.i.ph = phi i64 [ %i.fn, %vector.memcheck243 ], [ %i.fn, %vector.scevcheck ], [ %i.fn, %.loopexit.i.us.us74.i.preheader ], [ %i.gq, %middle.block268 ] ; 4 uses
  %.05267.us.us73.i.ph = phi i32 [ %i.fb, %vector.memcheck243 ], [ %i.fb, %vector.scevcheck ], [ %i.fb, %.loopexit.i.us.us74.i.preheader ], [ %i.gt, %middle.block268 ] ; 3 uses
  %i.hr = trunc i64 %indvars.iv87.i.ph to i32     ; 2 uses
  %i.hs = sub i32 %i.ew, %i.hr
  %.neg = add i32 %i.hr, 1
  %xtraiter374 = and i32 %i.hs, 1
  %lcmp.mod375.not = icmp eq i32 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.loopexit.i.us.us74.i.prol.loopexit, label %.loopexit.i.us.us74.i.prol

.loopexit.i.us.us74.i.prol:                       ; preds = %.loopexit.i.us.us74.i.preheader330
  %i.ht = sext i32 %.05267.us.us73.i.ph to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ht ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i.ph
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !127
  %i.hx = zext i8 %i.hw to i32
  %i.hy = or disjoint i32 %i.fj, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = mul nuw i64 %i.hz, 4294967297           ; 2 uses
  store i64 %i.ia, ptr %i.hu, align 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i64 %i.ia, ptr %i.ib, align 2
  %i.ic = add i32 %.05267.us.us73.i.ph, 4
  %indvars.iv.next88.i.prol = add nsw i64 %indvars.iv87.i.ph, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader330
  %indvars.iv87.i.unr = phi i64 [ %indvars.iv87.i.ph, %.loopexit.i.us.us74.i.preheader330 ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05267.us.us73.i.unr = phi i32 [ %.05267.us.us73.i.ph, %.loopexit.i.us.us74.i.preheader330 ], [ %i.ic, %.loopexit.i.us.us74.i.prol ]
  %i.id = icmp eq i32 %i.ew, %.neg
  br i1 %i.id, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.loopexit.i.us.us.i ], [ %indvars.iv90.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %.05267.us.us.i = phi i32 [ %i.iw, %.loopexit.i.us.us.i ], [ %.05267.us.us.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %i.ie = sext i32 %.05267.us.us.i to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ie
  %i.ig = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !127
  %i.ii = zext i8 %i.ih to i32
  %i.ij = or disjoint i32 %i.fj, %i.ii
  %i.ik = zext i32 %i.ij to i64
  %i.il = mul nuw i64 %i.ik, 4294967297
  store i64 %i.il, ptr %i.if, align 2
  %i.im = add i32 %.05267.us.us.i, 2
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.iq = getelementptr i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !127
  %i.is = zext i8 %i.ir to i32
  %i.it = or disjoint i32 %i.fj, %i.is
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul nuw i64 %i.iu, 4294967297
  store i64 %i.iv, ptr %i.io, align 2
  %i.iw = add i32 %.05267.us.us.i, 4
  %indvars.iv.next91.i.1 = add nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %i.ix = trunc nsw i64 %indvars.iv.next91.i.1 to i32
  %.not57.us.us.i.1 = icmp eq i32 %i.ew, %i.ix
  br i1 %.not57.us.us.i.1, label %.loopexit.i, label %.loopexit.i.us.us.i, !llvm.loop !91

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.1, %.loopexit.i.us.us74.i ], [ %indvars.iv87.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %.05267.us.us73.i = phi i32 [ %i.js, %.loopexit.i.us.us74.i ], [ %.05267.us.us73.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %i.iy = sext i32 %.05267.us.us73.i to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !127
  %i.jc = zext i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.fj, %i.jc
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul nuw i64 %i.je, 4294967297           ; 2 uses
  store i64 %i.jf, ptr %i.iz, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %i.jf, ptr %i.jg, align 2
  %i.jh = add i32 %.05267.us.us73.i, 4
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jl = getelementptr i8, ptr %i.jk, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !127
  %i.jn = zext i8 %i.jm to i32
  %i.jo = or disjoint i32 %i.fj, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = mul nuw i64 %i.jp, 4294967297           ; 2 uses
  store i64 %i.jq, ptr %i.jj, align 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i64 %i.jq, ptr %i.jr, align 2
  %i.js = add i32 %.05267.us.us73.i, 8
  %indvars.iv.next88.i.1 = add nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.jt = trunc nsw i64 %indvars.iv.next88.i.1 to i32
  %.not57.us.us75.i.1 = icmp eq i32 %i.ew, %i.jt
  br i1 %.not57.us.us75.i.1, label %.loopexit.i, label %.loopexit.i.us.us74.i, !llvm.loop !92

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i, %.loopexit.i.us.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fn, %.lr.ph.split.us.i ] ; 2 uses
  %.05267.us.i = phi i32 [ %i.lb, %.loopexit.i.us.i ], [ %i.fb, %.lr.ph.split.us.i ] ; 2 uses
  %i.ju = sext i32 %.05267.us.i to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ju ; 9 uses
  %i.jw = load i32, ptr %i.fl, align 4, !tbaa !16 ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 0
  br i1 %i.jx, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.jy = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv93.i
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !127
  %i.ka = zext i8 %i.jz to i32
  %i.kb = or disjoint i32 %i.fj, %i.ka
  %i.kc = zext i32 %i.kb to i64
  %i.kd = mul nuw i64 %i.kc, 4294967297
  %i.ke = zext nneg i32 %i.jw to i64
  %i.kf = insertelement <4 x i64> poison, i64 %i.kd, i64 0
  %i.kg = shufflevector <4 x i64> %i.kf, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.kh = add nsw i64 %i.ke, -1
  %i.ki = lshr i64 %i.kh, 3
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %xtraiter380 = and i64 %i.kj, 7                 ; 3 uses
  %i.kk = icmp ult i32 %i.jw, 57
  br i1 %i.kk, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter384 = and i64 %i.kj, 2305843009213693944
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter385 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter385.next.7, %.lr.ph.i.us.i ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.kg, ptr %i.kl, align 2
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store <4 x i64> %i.kg, ptr %i.kn, align 2
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  store <4 x i64> %i.kg, ptr %i.kp, align 2
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 96
  store <4 x i64> %i.kg, ptr %i.kr, align 2
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 128
  store <4 x i64> %i.kg, ptr %i.kt, align 2
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 160
  store <4 x i64> %i.kg, ptr %i.kv, align 2
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 192
  store <4 x i64> %i.kg, ptr %i.kx, align 2
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 224
  store <4 x i64> %i.kg, ptr %i.kz, align 2
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 64 ; 2 uses
  %niter385.next.7 = add nuw nsw i64 %niter385, 8 ; 2 uses
  %niter385.ncmp.7.not = icmp eq i64 %niter385.next.7, %unroll_iter384
  br i1 %niter385.ncmp.7.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !93

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod382.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.7, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter380, 0
  call void @llvm.assume(i1 %lcmp.mod383)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter381 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter381.next, %.lr.ph.i.us.i.epil ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.us.i.epil
  store <4 x i64> %i.kg, ptr %i.la, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter381.next = add i64 %epil.iter381, 1   ; 2 uses
  %epil.iter381.cmp.not = icmp eq i64 %epil.iter381.next, %xtraiter380
  br i1 %epil.iter381.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !94

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i
  %i.lb = add i32 %.05267.us.i, %i.fd
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.lc = trunc nsw i64 %indvars.iv.next94.i to i32
  %.not57.us.i = icmp eq i32 %i.ew, %i.lc
  br i1 %.not57.us.i, label %.loopexit.i, label %.preheader.i.us.i, !llvm.loop !91

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %HUF_fillDTableX2Level2.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %HUF_fillDTableX2Level2.exit.loopexit.i ], [ %i.fn, %.lr.ph.i ] ; 2 uses
  %.05267.i = phi i32 [ %i.vb, %HUF_fillDTableX2Level2.exit.loopexit.i ], [ %i.fb, %.lr.ph.i ] ; 2 uses
  %i.ld = sext i32 %.05267.i to i64               ; 3 uses
  %i.le = getelementptr [4 x i8], ptr %i.e, i64 %i.ld ; 13 uses
  %i.lf = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.i
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !127
  %i.lh = zext i8 %i.lg to i32                    ; 2 uses
  br i1 %i.fh, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.li = or disjoint i32 %i.fj, %i.lh
  %i.lj = zext i32 %i.li to i64
  %i.lk = mul nuw i64 %i.lj, 4294967297           ; 4 uses
  %i.ll = load i32, ptr %i.fl, align 4, !tbaa !16 ; 3 uses
  switch i32 %i.fd, label %.preheader.i.i [
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

.preheader.i.i:                                   ; preds = %bb.i
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = insertelement <4 x i64> poison, i64 %i.lk, i64 0
  %i.lp = shufflevector <4 x i64> %i.lo, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.lq = add nsw i64 %i.ln, -1
  %i.lr = lshr i64 %i.lq, 3
  %i.ls = add nuw nsw i64 %i.lr, 1                ; 2 uses
  %xtraiter349 = and i64 %i.ls, 7                 ; 3 uses
  %i.lt = icmp ult i32 %i.ll, 57
  br i1 %i.lt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter353 = and i64 %i.ls, 2305843009213693944
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.lk, ptr %i.le, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.lk, ptr %i.le, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i64 %i.lk, ptr %i.lu, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter354 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter354.next.7, %.lr.ph.i.i ]
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  store <4 x i64> %i.lp, ptr %i.lv, align 2
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  store <4 x i64> %i.lp, ptr %i.lx, align 2
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  store <4 x i64> %i.lp, ptr %i.lz, align 2
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 96
  store <4 x i64> %i.lp, ptr %i.mb, align 2
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 128
  store <4 x i64> %i.lp, ptr %i.md, align 2
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 160
  store <4 x i64> %i.lp, ptr %i.mf, align 2
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 192
  store <4 x i64> %i.lp, ptr %i.mh, align 2
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 224
  store <4 x i64> %i.lp, ptr %i.mj, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter354.next.7 = add nuw nsw i64 %niter354, 8 ; 2 uses
  %niter354.ncmp.7.not = icmp eq i64 %niter354.next.7, %unroll_iter353
  br i1 %niter354.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !93

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod351.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter349, 0
  call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter350 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter350.next, %.lr.ph.i.i.epil ]
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.lp, ptr %i.mk, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !95

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.lh, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %HUF_fillDTableX2ForWeight.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %HUF_fillDTableX2ForWeight.exit.i ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !16 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !16 ; 2 uses
  %i.mp = trunc nsw i64 %indvars.iv55.i.i to i32
  %i.mq = sub i32 %i.fm, %i.mp                    ; 6 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !16
  %i.mt = zext i32 %i.ms to i64                   ; 3 uses
  %i.mu = getelementptr [4 x i8], ptr %i.le, i64 %i.mt ; 20 uses
  %i.mv = sext i32 %i.mm to i64                   ; 9 uses
  %i.mw = getelementptr i8, ptr %i.eo, i64 %i.mv  ; 16 uses
  %i.mx = sext i32 %i.mo to i64                   ; 13 uses
  %i.my = getelementptr i8, ptr %i.eo, i64 %i.mx  ; 7 uses
  %i.mz = sub i32 %spec.store.select, %i.mq
  %i.na = and i32 %i.mz, 31                       ; 2 uses
  %i.nb = shl nuw i32 1, %i.na
  %.not82116.i.i = icmp eq i32 %i.mm, %i.mo       ; 5 uses
  switch i32 %i.na, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.nc = shl i32 %i.mq, 16
  %invariant.op.reass = add i32 %i.nc, %invariant.op139 ; 3 uses
  %i.nd = sub nsw i64 %i.mx, %i.mv
  %xtraiter355 = and i64 %i.nd, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.ne = load i8, ptr %i.mw, align 1, !tbaa !127
  %i.nf = zext i8 %i.ne to i32
  %i.ng = shl nuw nsw i32 %i.nf, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.ng, %invariant.op.reass
  %i.nh = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.ni = mul nuw i64 %i.nh, 4294967297           ; 4 uses
  store i64 %i.ni, ptr %i.mu, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store i64 %i.ni, ptr %i.nj, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store i64 %i.ni, ptr %i.nk, align 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store i64 %i.ni, ptr %i.nl, align 2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.mu, %.lr.ph.i58.i ], [ %i.nm, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.mw, %.lr.ph.i58.i ], [ %i.nn, %.prol.loopexit.unr-lcssa ]
  %i.no = add nsw i64 %i.mx, -1
  %i.np = icmp eq i64 %i.no, %i.mv
  br i1 %i.np, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.nq = shl i32 %i.mq, 16
  %invariant.op135.reass = add i32 %i.nq, %invariant.op139 ; 5 uses
  %i.nr = sub nsw i64 %i.mx, %i.mv
  %xtraiter360 = and i64 %i.nr, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.prol.loopexit359, label %.prol.preheader358

.prol.preheader358:                               ; preds = %.lr.ph98.i.i, %.prol.preheader358
  %.297.i.i.prol = phi ptr [ %i.ny, %.prol.preheader358 ], [ %i.mu, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.nz, %.prol.preheader358 ], [ %i.mw, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %.prol.preheader358 ], [ 0, %.lr.ph98.i.i ]
  %i.ns = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !127
  %i.nt = zext i8 %i.ns to i32
  %i.nu = shl nuw nsw i32 %i.nt, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.nu, %invariant.op135.reass
  %i.nv = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.nw = mul nuw i64 %i.nv, 4294967297           ; 2 uses
  store i64 %i.nw, ptr %.297.i.i.prol, align 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.nw, ptr %i.nx, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %.prol.loopexit359, label %.prol.preheader358, !llvm.loop !96

.prol.loopexit359:                                ; preds = %.prol.preheader358, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.mu, %.lr.ph98.i.i ], [ %i.ny, %.prol.preheader358 ]
  %.27696.i.i.unr = phi ptr [ %i.mw, %.lr.ph98.i.i ], [ %i.nz, %.prol.preheader358 ]
  %i.oa = sub nsw i64 %i.mv, %i.mx
  %i.ob = icmp ugt i64 %i.oa, -4
  br i1 %i.ob, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.oc = shl i32 %i.mq, 16
  %invariant.op136.reass = add i32 %i.oc, %invariant.op139 ; 6 uses
  %i.od = sub nsw i64 %i.mx, %i.mv                ; 3 uses
  %min.iters.check302 = icmp ult i64 %i.od, 10
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.memcheck295

vector.memcheck295:                               ; preds = %.lr.ph104.i.i
  %i.oe = shl nsw i64 %i.mx, 3
  %i.of = add nsw i64 %i.ld, %i.mt
  %i.og = shl nsw i64 %i.of, 2
  %i.oh = add nsw i64 %i.oe, %i.og
  %i.oi = shl nsw i64 %i.mv, 3
  %i.oj = sub nsw i64 %i.oh, %i.oi
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.oj
  %bound0298 = icmp ult ptr %i.mu, %i.my
  %bound1299 = icmp ult ptr %i.mw, %scevgep297
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %scalar.ph301.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck295
  %n.vec304 = and i64 %i.od, -4                   ; 4 uses
  %i.ok = shl nsw i64 %n.vec304, 3
  %i.ol = getelementptr i8, ptr %i.mu, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.mw, i64 %n.vec304
  %broadcast.splatinsert305 = insertelement <2 x i32> poison, i32 %invariant.op136.reass, i64 0
  %broadcast.splat306 = shufflevector <2 x i32> %broadcast.splatinsert305, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

end_hunk_1
