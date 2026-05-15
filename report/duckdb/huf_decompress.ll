inline.NumInlined: 722
inline.NumDeleted: 36
begin_hunk_0_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %indvars.iv.i.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.us.i ], [ %indvars.iv.next.i.us.us.i.7, %.loopexit.i.us.us.i.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter393, 0
  call void @llvm.assume(i1 %lcmp.mod396)
  br label %.lr.ph.i.us.us.i.epil

.lr.ph.i.us.us.i.epil:                            ; preds = %.lr.ph.i.us.us.i.epil, %.lr.ph.i.us.us.i.epil.preheader
  %indvars.iv.i.us.us.i.epil = phi i64 [ %indvars.iv.i.us.us.i.epil.init, %.lr.ph.i.us.us.i.epil.preheader ], [ %indvars.iv.next.i.us.us.i.epil, %.lr.ph.i.us.us.i.epil ] ; 2 uses
  %epil.iter394 = phi i64 [ 0, %.lr.ph.i.us.us.i.epil.preheader ], [ %epil.iter394.next, %.lr.ph.i.us.us.i.epil ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.us.i.epil
  store <4 x i64> %i.gb, ptr %i.gv, align 2
  %indvars.iv.next.i.us.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.us.i.epil, 8
  %epil.iter394.next = add i64 %epil.iter394, 1   ; 2 uses
  %epil.iter394.cmp.not = icmp eq i64 %epil.iter394.next, %xtraiter393
  br i1 %epil.iter394.cmp.not, label %.loopexit.i.us.us.i, label %.lr.ph.i.us.us.i.epil, !llvm.loop !56

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.us.i.epil, %.preheader.i.us.us.i, %bb.j, %bb.i
  %i.gw = add i32 %.05367.us.us.i, %i.fd
  %indvars.iv.next80.i = add nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.gx = trunc nsw i64 %indvars.iv.next80.i to i32
  %.not57.us.us.i = icmp eq i32 %i.ew, %i.gx
  br i1 %.not57.us.us.i, label %.loopexit.i, label %.lr.ph.split.us.split.us.i, !llvm.loop !57

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fn, %.lr.ph.i ] ; 2 uses
  %.05367.i = phi i32 [ %i.sb, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fb, %.lr.ph.i ] ; 5 uses
  %i.gy = sext i32 %.05367.i to i64
  %i.gz = sext i32 %.05367.i to i64
  %i.ha = sext i32 %.05367.i to i64
  %i.hb = sext i32 %.05367.i to i64
  %i.hc = getelementptr [4 x i8], ptr %i.e, i64 %i.hb ; 13 uses
  %i.hd = getelementptr inbounds i8, ptr %i.em, i64 %indvars.iv.i
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !47
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  br i1 %i.fh, label %bb.k, label %.loopexit.i.i

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.hg = or disjoint i32 %i.fj, %i.hf
  %i.hh = zext i32 %i.hg to i64
  %i.hi = mul nuw i64 %i.hh, 4294967297           ; 4 uses
  %i.hj = load i32, ptr %i.fl, align 4, !tbaa !3  ; 3 uses
  switch i32 %i.fd, label %.preheader.i.i [
    i32 2, label %bb.l
    i32 4, label %bb.m
  ]

.preheader.i.i:                                   ; preds = %bb.k
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.hl = zext nneg i32 %i.hj to i64
  %i.hm = insertelement <4 x i64> poison, i64 %i.hi, i64 0
  %i.hn = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.ho = add nsw i64 %i.hl, -1
  %i.hp = lshr i64 %i.ho, 3
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %xtraiter369 = and i64 %i.hq, 7                 ; 3 uses
  %i.hr = icmp ult i32 %i.hj, 57
  br i1 %i.hr, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter373 = and i64 %i.hq, 4611686018427387896
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.k
  store i64 %i.hi, ptr %i.hc, align 2
  br label %.loopexit.i.i

bb.m:                                             ; preds = %bb.k
  store i64 %i.hi, ptr %i.hc, align 2
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %i.hi, ptr %i.hs, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter374 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter374.next.7, %.lr.ph.i.i ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  store <4 x i64> %i.hn, ptr %i.ht, align 2
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store <4 x i64> %i.hn, ptr %i.hv, align 2
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  store <4 x i64> %i.hn, ptr %i.hx, align 2
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  store <4 x i64> %i.hn, ptr %i.hz, align 2
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 128
  store <4 x i64> %i.hn, ptr %i.ib, align 2
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 160
  store <4 x i64> %i.hn, ptr %i.id, align 2
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 192
  store <4 x i64> %i.hn, ptr %i.if, align 2
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 224
  store <4 x i64> %i.hn, ptr %i.ih, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter374.next.7 = add nuw nsw i64 %niter374, 8 ; 2 uses
  %niter374.ncmp.7.not = icmp eq i64 %niter374.next.7, %unroll_iter373
  br i1 %niter374.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !55

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod371.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod371.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod372 = icmp ne i64 %xtraiter369, 0
  call void @llvm.assume(i1 %lcmp.mod372)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter370 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter370.next, %.lr.ph.i.i.epil ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.hn, ptr %i.ii, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter370.next = add i64 %epil.iter370, 1   ; 2 uses
  %epil.iter370.cmp.not = icmp eq i64 %epil.iter370.next, %xtraiter369
  br i1 %epil.iter370.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !58

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.m, %bb.l, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op137 = or disjoint i32 %i.hf, 33554432 ; 5 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i ] ; 4 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3  ; 2 uses
  %i.in = trunc nsw i64 %indvars.iv55.i.i to i32
  %i.io = sub i32 %i.fm, %i.in                    ; 6 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = zext i32 %i.iq to i64                   ; 4 uses
  %i.is = getelementptr [4 x i8], ptr %i.hc, i64 %i.ir ; 24 uses
  %i.it = sext i32 %i.ik to i64                   ; 9 uses
  %i.iu = getelementptr i8, ptr %i.em, i64 %i.it  ; 20 uses
  %i.iv = sext i32 %i.im to i64                   ; 15 uses
  %i.iw = getelementptr i8, ptr %i.em, i64 %i.iv  ; 8 uses
  %i.ix = sub i32 %spec.store.select, %i.io
  %i.iy = and i32 %i.ix, 31                       ; 2 uses
  %i.iz = shl nuw i32 1, %i.iy
  %.not82116.i.i = icmp eq i32 %i.ik, %i.im       ; 5 uses
  switch i32 %i.iy, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.n
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.ja = shl i32 %i.io, 16
  %invariant.op.reass = add i32 %i.ja, %invariant.op137 ; 3 uses
  %i.jb = sub nsw i64 %i.iv, %i.it
  %xtraiter375 = and i64 %i.jb, 1
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.jc = load i8, ptr %i.iu, align 1, !tbaa !47
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.je, %invariant.op.reass
  %i.jf = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.jg = mul nuw i64 %i.jf, 4294967297           ; 4 uses
  store i64 %i.jg, ptr %i.is, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.jg, ptr %i.jh, align 2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i64 %i.jg, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store i64 %i.jg, ptr %i.jj, align 2
  %i.jk = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.is, %.lr.ph.i58.i ], [ %i.jk, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.iu, %.lr.ph.i58.i ], [ %i.jl, %.prol.loopexit.unr-lcssa ]
  %i.jm = add nsw i64 %i.iv, -1
  %i.jn = icmp eq i64 %i.jm, %i.it
  br i1 %i.jn, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.n
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.jo = shl i32 %i.io, 16
  %invariant.op133.reass = add i32 %i.jo, %invariant.op137 ; 6 uses
  %i.jp = sub nsw i64 %i.iv, %i.it                ; 3 uses
  %min.iters.check322 = icmp ult i64 %i.jp, 8
  br i1 %min.iters.check322, label %scalar.ph321.preheader, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph98.i.i
  %i.jq = shl nsw i64 %i.iv, 4
  %i.jr = add nsw i64 %i.gy, %i.ir
  %i.js = shl nsw i64 %i.jr, 2
  %i.jt = add nsw i64 %i.jq, %i.js
  %i.ju = shl nsw i64 %i.it, 4
  %i.jv = sub nsw i64 %i.jt, %i.ju
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.jv
  %bound0318 = icmp ult ptr %i.is, %i.iw
  %bound1319 = icmp ult ptr %i.iu, %scevgep317
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %scalar.ph321.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck315
  %n.vec325 = and i64 %i.jp, -2                   ; 4 uses
  %i.jw = shl nsw i64 %n.vec325, 4
  %i.jx = getelementptr i8, ptr %i.is, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.iu, i64 %n.vec325
  %broadcast.splatinsert326 = insertelement <2 x i32> poison, i32 %invariant.op133.reass, i64 0
  %broadcast.splat327 = shufflevector <2 x i32> %broadcast.splatinsert326, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph323
  %index329 = phi i64 [ 0, %vector.ph323 ], [ %index.next338, %vector.body328 ] ; 4 uses
  %i.jz = shl i64 %index329, 4                    ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.is, i64 %i.jz
  %i.ka = getelementptr i8, ptr %i.is, i64 %i.jz
  %next.gep331 = getelementptr i8, ptr %i.ka, i64 16
  %next.gep332 = getelementptr i8, ptr %i.iu, i64 %index329
  %i.kb = getelementptr i8, ptr %i.iu, i64 %index329
  %next.gep333 = getelementptr i8, ptr %i.kb, i64 1
  %i.kc = load i8, ptr %next.gep332, align 1, !tbaa !47, !alias.scope !59
  %broadcast.splatinsert334 = insertelement <2 x i8> poison, i8 %i.kc, i64 0
  %broadcast.splat335 = shufflevector <2 x i8> %broadcast.splatinsert334, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.kd = load i8, ptr %next.gep333, align 1, !tbaa !47, !alias.scope !59
  %broadcast.splatinsert336 = insertelement <2 x i8> poison, i8 %i.kd, i64 0
  %broadcast.splat337 = shufflevector <2 x i8> %broadcast.splatinsert336, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ke = zext <2 x i8> %broadcast.splat335 to <2 x i32>
  %i.kf = zext <2 x i8> %broadcast.splat337 to <2 x i32>
  %i.kg = shl nuw nsw <2 x i32> %i.ke, splat (i32 8)
  %i.kh = shl nuw nsw <2 x i32> %i.kf, splat (i32 8)
  %i.ki = or disjoint <2 x i32> %i.kg, %broadcast.splat327
  %i.kj = or disjoint <2 x i32> %i.kh, %broadcast.splat327
  %i.kk = zext <2 x i32> %i.ki to <2 x i64>
  %i.kl = zext <2 x i32> %i.kj to <2 x i64>
  %i.km = mul nuw <2 x i64> %i.kk, splat (i64 4294967297)
  %i.kn = mul nuw <2 x i64> %i.kl, splat (i64 4294967297)
  store <2 x i64> %i.km, ptr %next.gep330, align 2
  store <2 x i64> %i.kn, ptr %next.gep331, align 2
  %index.next338 = add nuw i64 %index329, 2       ; 2 uses
  %i.ko = icmp eq i64 %index.next338, %n.vec325
  br i1 %i.ko, label %middle.block339, label %vector.body328, !llvm.loop !62

middle.block339:                                  ; preds = %vector.body328
  %cmp.n340 = icmp eq i64 %i.jp, %n.vec325
  br i1 %cmp.n340, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph321.preheader

scalar.ph321.preheader:                           ; preds = %vector.memcheck315, %.lr.ph98.i.i, %middle.block339
  %.297.i.i.ph = phi ptr [ %i.is, %vector.memcheck315 ], [ %i.is, %.lr.ph98.i.i ], [ %i.jx, %middle.block339 ] ; 2 uses
  %.27696.i.i.ph = phi ptr [ %i.iu, %vector.memcheck315 ], [ %i.iu, %.lr.ph98.i.i ], [ %i.jy, %middle.block339 ] ; 3 uses
  %i.kp = add i64 %i.a, %i.iv
  %.27696.i.i.ph378 = ptrtoint ptr %.27696.i.i.ph to i64 ; 2 uses
  %i.kq = sub i64 %i.kp, %.27696.i.i.ph378
  %i.kr = add i64 %i.eo, %i.iv
  %i.ks = sub i64 %i.kr, %.27696.i.i.ph378
  %xtraiter379 = and i64 %i.kq, 3                 ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %scalar.ph321.prol.loopexit, label %scalar.ph321.prol

scalar.ph321.prol:                                ; preds = %scalar.ph321.preheader, %scalar.ph321.prol
  %.297.i.i.prol = phi ptr [ %i.kz, %scalar.ph321.prol ], [ %.297.i.i.ph, %scalar.ph321.preheader ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.la, %scalar.ph321.prol ], [ %.27696.i.i.ph, %scalar.ph321.preheader ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %scalar.ph321.prol ], [ 0, %scalar.ph321.preheader ]
  %i.kt = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !47
  %i.ku = zext i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ku, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.kv, %invariant.op133.reass
  %i.kw = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.kx = mul nuw i64 %i.kw, 4294967297           ; 2 uses
  store i64 %i.kx, ptr %.297.i.i.prol, align 2
  %i.ky = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.kx, ptr %i.ky, align 2
  %i.kz = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %scalar.ph321.prol.loopexit, label %scalar.ph321.prol, !llvm.loop !63

scalar.ph321.prol.loopexit:                       ; preds = %scalar.ph321.prol, %scalar.ph321.preheader
  %.297.i.i.unr = phi ptr [ %.297.i.i.ph, %scalar.ph321.preheader ], [ %i.kz, %scalar.ph321.prol ]
  %.27696.i.i.unr = phi ptr [ %.27696.i.i.ph, %scalar.ph321.preheader ], [ %i.la, %scalar.ph321.prol ]
  %i.lb = icmp ult i64 %i.ks, 3
  br i1 %i.lb, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph321

.preheader86.i.i:                                 ; preds = %bb.n
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.lc = shl i32 %i.io, 16
  %invariant.op134.reass = add i32 %i.lc, %invariant.op137 ; 6 uses
  %i.ld = sub nsw i64 %i.iv, %i.it                ; 3 uses
  %min.iters.check295 = icmp ult i64 %i.ld, 8
  br i1 %min.iters.check295, label %scalar.ph294.preheader, label %vector.memcheck288

vector.memcheck288:                               ; preds = %.lr.ph104.i.i
  %i.le = shl nsw i64 %i.iv, 3
  %i.lf = add nsw i64 %i.gz, %i.ir
  %i.lg = shl nsw i64 %i.lf, 2
  %i.lh = add nsw i64 %i.le, %i.lg
  %i.li = shl nsw i64 %i.it, 3
  %i.lj = sub nsw i64 %i.lh, %i.li
  %scevgep290 = getelementptr i8, ptr %scevgep289, i64 %i.lj
  %bound0291 = icmp ult ptr %i.is, %i.iw
  %bound1292 = icmp ult ptr %i.iu, %scevgep290
  %found.conflict293 = and i1 %bound0291, %bound1292
  br i1 %found.conflict293, label %scalar.ph294.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %vector.memcheck288
  %n.vec298 = and i64 %i.ld, -4                   ; 4 uses
  %i.lk = shl nsw i64 %n.vec298, 3
  %i.ll = getelementptr i8, ptr %i.is, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.iu, i64 %n.vec298
  %broadcast.splatinsert299 = insertelement <2 x i32> poison, i32 %invariant.op134.reass, i64 0
  %broadcast.splat300 = shufflevector <2 x i32> %broadcast.splatinsert299, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph296
  %index302 = phi i64 [ 0, %vector.ph296 ], [ %index.next310, %vector.body301 ] ; 3 uses
  %i.ln = shl i64 %index302, 3                    ; 2 uses
  %next.gep303 = getelementptr i8, ptr %i.is, i64 %i.ln
  %i.lo = getelementptr i8, ptr %i.is, i64 %i.ln
  %next.gep304 = getelementptr i8, ptr %i.lo, i64 16
  %next.gep305 = getelementptr i8, ptr %i.iu, i64 %index302 ; 2 uses
  %i.lp = getelementptr i8, ptr %next.gep305, i64 2
  %wide.load306 = load <2 x i8>, ptr %next.gep305, align 1, !tbaa !47, !alias.scope !64
  %wide.load307 = load <2 x i8>, ptr %i.lp, align 1, !tbaa !47, !alias.scope !64
  %i.lq = zext <2 x i8> %wide.load306 to <2 x i32>
  %i.lr = zext <2 x i8> %wide.load307 to <2 x i32>
  %i.ls = shl nuw nsw <2 x i32> %i.lq, splat (i32 8)
  %i.lt = shl nuw nsw <2 x i32> %i.lr, splat (i32 8)
  %i.lu = or disjoint <2 x i32> %i.ls, %broadcast.splat300
  %i.lv = or disjoint <2 x i32> %i.lt, %broadcast.splat300
  %interleaved.vec308 = shufflevector <2 x i32> %i.lu, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec308, ptr %next.gep303, align 2, !alias.scope !67, !noalias !64
  %interleaved.vec309 = shufflevector <2 x i32> %i.lv, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec309, ptr %next.gep304, align 2, !alias.scope !67, !noalias !64
  %index.next310 = add nuw i64 %index302, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next310, %n.vec298
  br i1 %i.lw, label %middle.block311, label %vector.body301, !llvm.loop !69

middle.block311:                                  ; preds = %vector.body301
  %cmp.n312 = icmp eq i64 %i.ld, %n.vec298
  br i1 %cmp.n312, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph294.preheader

scalar.ph294.preheader:                           ; preds = %vector.memcheck288, %.lr.ph104.i.i, %middle.block311
  %.1103.i.i.ph = phi ptr [ %i.is, %vector.memcheck288 ], [ %i.is, %.lr.ph104.i.i ], [ %i.ll, %middle.block311 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.iu, %vector.memcheck288 ], [ %i.iu, %.lr.ph104.i.i ], [ %i.lm, %middle.block311 ] ; 3 uses
  %i.lx = add i64 %i.a, %i.iv
  %.175102.i.i.ph382 = ptrtoint ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.ly = sub i64 %i.lx, %.175102.i.i.ph382
  %i.lz = add i64 %i.ep, %i.iv
  %i.ma = sub i64 %i.lz, %.175102.i.i.ph382
  %xtraiter383 = and i64 %i.ly, 3                 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %scalar.ph294.prol.loopexit, label %scalar.ph294.prol

scalar.ph294.prol:                                ; preds = %scalar.ph294.preheader, %scalar.ph294.prol
  %.1103.i.i.prol = phi ptr [ %i.mf, %scalar.ph294.prol ], [ %.1103.i.i.ph, %scalar.ph294.preheader ] ; 3 uses
  %.175102.i.i.prol = phi ptr [ %i.mg, %scalar.ph294.prol ], [ %.175102.i.i.ph, %scalar.ph294.preheader ] ; 2 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %scalar.ph294.prol ], [ 0, %scalar.ph294.preheader ]
  %i.mb = load i8, ptr %.175102.i.i.prol, align 1, !tbaa !47
  %i.mc = zext i8 %i.mb to i32
  %i.md = shl nuw nsw i32 %i.mc, 8
  %.reass106.reass.i.reass.i.reass.prol = or disjoint i32 %i.md, %invariant.op134.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %.1103.i.i.prol, align 2
  %i.me = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 4
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %i.me, align 2
  %i.mf = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 8 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.175102.i.i.prol, i64 1 ; 2 uses
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %scalar.ph294.prol.loopexit, label %scalar.ph294.prol, !llvm.loop !70

scalar.ph294.prol.loopexit:                       ; preds = %scalar.ph294.prol, %scalar.ph294.preheader
  %.1103.i.i.unr = phi ptr [ %.1103.i.i.ph, %scalar.ph294.preheader ], [ %i.mf, %scalar.ph294.prol ]
  %.175102.i.i.unr = phi ptr [ %.175102.i.i.ph, %scalar.ph294.preheader ], [ %i.mg, %scalar.ph294.prol ]
  %i.mh = icmp ult i64 %i.ma, 3
  br i1 %i.mh, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph294

.preheader84.i.i:                                 ; preds = %bb.n
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph110.i.i

.lr.ph110.i.i:                                    ; preds = %.preheader84.i.i
  %i.mi = shl i32 %i.io, 16
  %invariant.op135.reass = add i32 %i.mi, %invariant.op137 ; 6 uses
  %i.mj = sub nsw i64 %i.iv, %i.it                ; 3 uses
  %min.iters.check271 = icmp ult i64 %i.mj, 8
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.memcheck264
end_hunk_0
