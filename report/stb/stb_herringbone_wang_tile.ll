Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw__corner_process_h_rect:bb.a
  %i.gd = icmp eq i64 %index.next321, %n.vec311
  br i1 %i.gd, label %middle.block322, label %vector.body318, !llvm.loop !185

middle.block322:                                  ; preds = %vector.body318
  %cmp.n323 = icmp eq i64 %i.ew, %n.vec311
  br i1 %cmp.n323, label %stbhw__draw_hline.exit162, label %vec.epilog.iter.check327

vec.epilog.iter.check327:                         ; preds = %middle.block322
  %min.epilog.iters.check328 = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check328, label %vec.epilog.scalar.ph326.preheader, label %vec.epilog.ph329, !prof !119

vec.epilog.ph329:                                 ; preds = %vector.main.loop.iter.check308, %vec.epilog.iter.check327
  %vec.epilog.resume.val324 = phi i64 [ %n.vec311, %vec.epilog.iter.check327 ], [ 0, %vector.main.loop.iter.check308 ]
  %n.vec330 = and i64 %i.ew, -2                   ; 3 uses
  %i.ge = add nsw i64 %n.vec330, %i.eu
  %i.gf = load i8, ptr %i.eo, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert331 = insertelement <2 x i8> poison, i8 %i.gf, i64 0
  %broadcast.splat332 = shufflevector <2 x i8> %broadcast.splatinsert331, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.gg = zext <2 x i8> %broadcast.splat332 to <2 x i16>
  %i.gh = load i8, ptr %i.ep, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert333 = insertelement <2 x i8> poison, i8 %i.gh, i64 0
  %broadcast.splat334 = shufflevector <2 x i8> %broadcast.splatinsert333, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.gi = zext <2 x i8> %broadcast.splat334 to <2 x i16>
  %i.gj = load i8, ptr %i.eq, align 1, !tbaa !62, !alias.scope !180
  %broadcast.splatinsert335 = insertelement <2 x i8> poison, i8 %i.gj, i64 0
  %broadcast.splat336 = shufflevector <2 x i8> %broadcast.splatinsert335, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.gk = zext <2 x i8> %broadcast.splat336 to <2 x i16>
  %i.gl = shl nuw nsw <2 x i16> %i.gk, splat (i16 1)
  %i.gm = add nuw nsw <2 x i16> %i.gl, splat (i16 255)
  %i.gn = udiv <2 x i16> %i.gm, splat (i16 3)
  %invariant.op467 = add i64 %i.eu, %i.ev
  %i.go = shufflevector <2 x i16> %i.gg, <2 x i16> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gp = shl nuw nsw <4 x i16> %i.go, splat (i16 1)
  %i.gq = add nuw nsw <4 x i16> %i.gp, splat (i16 255)
  %i.gr = udiv <4 x i16> %i.gq, splat (i16 3)
  %i.gs = shufflevector <2 x i16> %i.gn, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gt = shufflevector <4 x i16> %i.gr, <4 x i16> %i.gs, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec339 = trunc nuw <6 x i16> %i.gt to <6 x i8>
  br label %vec.epilog.vector.body337

vec.epilog.vector.body337:                        ; preds = %vec.epilog.vector.body337, %vec.epilog.ph329
  %index338 = phi i64 [ %vec.epilog.resume.val324, %vec.epilog.ph329 ], [ %index.next340, %vec.epilog.vector.body337 ] ; 2 uses
  %.reass468 = add i64 %index338, %invariant.op467
  %i.gu = mul nsw i64 %.reass468, 3
  %i.gv = getelementptr inbounds i8, ptr %i.et, i64 %i.gu
  store <6 x i8> %interleaved.vec339, ptr %i.gv, align 1, !alias.scope !183, !noalias !180
  %index.next340 = add nuw i64 %index338, 2       ; 2 uses
  %i.gw = icmp eq i64 %index.next340, %n.vec330
  br i1 %i.gw, label %vec.epilog.middle.block341, label %vec.epilog.vector.body337, !llvm.loop !186

vec.epilog.middle.block341:                       ; preds = %vec.epilog.vector.body337
  %cmp.n342 = icmp eq i64 %i.ew, %n.vec330
  br i1 %cmp.n342, label %stbhw__draw_hline.exit162, label %vec.epilog.scalar.ph326.preheader

vec.epilog.scalar.ph326.preheader:                ; preds = %vector.memcheck300, %iter.check325, %vec.epilog.iter.check327, %vec.epilog.middle.block341
  %indvars.iv35.i149.ph = phi i64 [ %i.eu, %iter.check325 ], [ %i.eu, %vector.memcheck300 ], [ %i.fg, %vec.epilog.iter.check327 ], [ %i.ge, %vec.epilog.middle.block341 ]
  br label %vec.epilog.scalar.ph326

vec.epilog.scalar.ph326:                          ; preds = %vec.epilog.scalar.ph326.preheader, %vec.epilog.scalar.ph326
  %indvars.iv35.i149 = phi i64 [ %indvars.iv.next36.i152, %vec.epilog.scalar.ph326 ], [ %indvars.iv35.i149.ph, %vec.epilog.scalar.ph326.preheader ] ; 2 uses
  %i.gx = add nsw i64 %indvars.iv35.i149, %i.ev
  %i.gy = load i8, ptr %i.eo, align 1, !tbaa !62
  %i.gz = zext i8 %i.gy to i16
  %i.ha = shl nuw nsw i16 %i.gz, 1
  %i.hb = add nuw nsw i16 %i.ha, 255
  %i.hc = udiv i16 %i.hb, 3
  %i.hd = trunc nuw i16 %i.hc to i8
  %i.he = load <2 x i8>, ptr %i.ep, align 1, !tbaa !62
  %i.hf = zext <2 x i8> %i.he to <2 x i16>
  %i.hg = shl nuw nsw <2 x i16> %i.hf, splat (i16 1)
  %i.hh = add nuw nsw <2 x i16> %i.hg, splat (i16 255)
  %i.hi = udiv <2 x i16> %i.hh, splat (i16 3)     ; 2 uses
  %i.hj = bitcast <2 x i16> %i.hi to <4 x i8>
  %i.hk = extractelement <4 x i8> %i.hj, i64 0
  %i.hl = bitcast <2 x i16> %i.hi to <4 x i8>
  %i.hm = extractelement <4 x i8> %i.hl, i64 2
  %i.hn = mul nsw i64 %i.gx, 3
  %i.ho = getelementptr inbounds i8, ptr %i.et, i64 %i.hn ; 3 uses
  store i8 %i.hd, ptr %i.ho, align 1
  %.sroa.4.0..sroa_idx.i.i150 = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  store i8 %i.hk, ptr %.sroa.4.0..sroa_idx.i.i150, align 1
  %.sroa.5.0..sroa_idx.i.i151 = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i8 %i.hm, ptr %.sroa.5.0..sroa_idx.i.i151, align 1
  %indvars.iv.next36.i152 = add nsw i64 %indvars.iv35.i149, 1 ; 2 uses
  %exitcond39.not.i153 = icmp eq i64 %indvars.iv.next36.i152, %wide.trip.count38.i148
  br i1 %exitcond39.not.i153, label %stbhw__draw_hline.exit162, label %vec.epilog.scalar.ph326, !llvm.loop !187

stbhw__draw_hline.exit162:                        ; preds = %vec.epilog.scalar.ph326, %vec.epilog.middle.block341, %middle.block322
  %i.hp = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.hq = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.hr = add nsw i32 %2, 1                       ; 2 uses
  %i.hs = sext i32 %6 to i64                      ; 4 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i170, label %._crit_edge.i163

.lr.ph.i170:                                      ; preds = %stbhw__draw_hline.exit162
  %i.hv = mul nsw i32 %1, 3
  %i.hw = sext i32 %i.hv to i64
  %invariant.gep.i = getelementptr i8, ptr %i.hp, i64 %i.hw ; 3 uses
  %i.hx = sext i32 %i.hr to i64                   ; 3 uses
  %i.hy = sext i32 %i.hq to i64                   ; 3 uses
  %wide.trip.count.i171 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter440 = and i64 %wide.trip.count.i171, 1
  %i.hz = icmp eq i32 %i.d, 1
  br i1 %i.hz, label %.epil.preheader439, label %.lr.ph.i170.new

.lr.ph.i170.new:                                  ; preds = %.lr.ph.i170
  %unroll_iter443 = and i64 %wide.trip.count.i171, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i170.new
  %indvars.iv.i172 = phi i64 [ 0, %.lr.ph.i170.new ], [ %indvars.iv.next.i173.1, %bb.d ] ; 3 uses
  %niter444 = phi i64 [ 0, %.lr.ph.i170.new ], [ %niter444.next.1, %bb.d ]
  %i.ia = add nsw i64 %indvars.iv.i172, %i.hx
  %i.ib = mul nsw i64 %i.ia, %i.hy
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ib
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i173 = or disjoint i64 %indvars.iv.i172, 1
  %i.ic = add nsw i64 %indvars.iv.next.i173, %i.hx
  %i.id = mul nsw i64 %i.ic, %i.hy
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.id
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i173.1 = add nuw nsw i64 %indvars.iv.i172, 2 ; 2 uses
  %niter444.next.1 = add i64 %niter444, 2         ; 2 uses
  %niter444.ncmp.1 = icmp eq i64 %niter444.next.1, %unroll_iter443
  br i1 %niter444.ncmp.1, label %._crit_edge.i163.loopexit.unr-lcssa, label %bb.d, !llvm.loop !122

._crit_edge.i163.loopexit.unr-lcssa:              ; preds = %bb.d
  %lcmp.mod441.not = icmp eq i64 %xtraiter440, 0
  br i1 %lcmp.mod441.not, label %._crit_edge.i163, label %.epil.preheader439

.epil.preheader439:                               ; preds = %._crit_edge.i163.loopexit.unr-lcssa, %.lr.ph.i170
  %indvars.iv.i172.epil.init = phi i64 [ 0, %.lr.ph.i170 ], [ %indvars.iv.next.i173.1, %._crit_edge.i163.loopexit.unr-lcssa ]
  %lcmp.mod442 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod442)
  %i.ie = add nsw i64 %indvars.iv.i172.epil.init, %i.hx
  %i.if = mul nsw i64 %i.ie, %i.hy
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %i.if
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i163

._crit_edge.i163:                                 ; preds = %.epil.preheader439, %._crit_edge.i163.loopexit.unr-lcssa, %stbhw__draw_hline.exit162
  br i1 %i.ai, label %.thread.i167, label %.lr.ph32.i164

.thread.i167:                                     ; preds = %._crit_edge.i163
  %i.ig = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ih = add nsw i32 %i.ig, -1
  %i.ii = and i32 %i.d, 1
  %spec.select.v.i168 = add nuw nsw i32 %i.ii, 1
  %spec.select.i169 = add nsw i32 %spec.select.v.i168, %i.ig
  br label %.lr.ph32.i164

.lr.ph32.i164:                                    ; preds = %._crit_edge.i163, %.thread.i167
  %.046.i = phi i32 [ %spec.select.i169, %.thread.i167 ], [ %i.r, %._crit_edge.i163 ]
  %.02645.i = phi i32 [ %i.ih, %.thread.i167 ], [ %i.p, %._crit_edge.i163 ]
  %i.ij = sext i32 %i.hu to i64
  %i.ik = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 24), i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.im = mul nsw i32 %1, 3
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %invariant.gep34.i = getelementptr i8, ptr %i.hp, i64 %i.in
  %i.io = sext i32 %.02645.i to i64
  %i.ip = sext i32 %i.hr to i64                   ; 11 uses
  %i.iq = sext i32 %i.hq to i64
  %wide.trip.count40.i = sext i32 %.046.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph32.i164
  %indvars.iv37.i = phi i64 [ %i.io, %.lr.ph32.i164 ], [ %indvars.iv.next38.i, %bb.e ] ; 2 uses
  %i.ir = add nsw i64 %indvars.iv37.i, %i.ip
  %i.is = load i8, ptr %i.ik, align 1, !tbaa !62
  %i.it = zext i8 %i.is to i16
  %i.iu = shl nuw nsw i16 %i.it, 1
  %i.iv = add nuw nsw i16 %i.iu, 255
  %i.iw = udiv i16 %i.iv, 3
  %i.ix = trunc nuw i16 %i.iw to i8
  %i.iy = load <2 x i8>, ptr %i.il, align 1, !tbaa !62
  %i.iz = zext <2 x i8> %i.iy to <2 x i16>
  %i.ja = shl nuw nsw <2 x i16> %i.iz, splat (i16 1)
  %i.jb = add nuw nsw <2 x i16> %i.ja, splat (i16 255)
  %i.jc = udiv <2 x i16> %i.jb, splat (i16 3)     ; 2 uses
  %i.jd = bitcast <2 x i16> %i.jc to <4 x i8>
  %i.je = extractelement <4 x i8> %i.jd, i64 0
  %i.jf = bitcast <2 x i16> %i.jc to <4 x i8>
  %i.jg = extractelement <4 x i8> %i.jf, i64 2
  %i.jh = mul nsw i64 %i.ir, %i.iq
  %gep35.i = getelementptr i8, ptr %invariant.gep34.i, i64 %i.jh ; 3 uses
  store i8 %i.ix, ptr %gep35.i, align 1
  %.sroa.4.0..sroa_idx.i.i165 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 1
  store i8 %i.je, ptr %.sroa.4.0..sroa_idx.i.i165, align 1
  %.sroa.5.0..sroa_idx.i.i166 = getelementptr inbounds nuw i8, ptr %gep35.i, i64 2
  store i8 %i.jg, ptr %.sroa.5.0..sroa_idx.i.i166, align 1
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i
  br i1 %exitcond41.not.i, label %stbhw__draw_vline.exit, label %bb.e, !llvm.loop !123

stbhw__draw_vline.exit:                           ; preds = %bb.e
  %i.ji = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.jj = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.jk = shl nsw i32 %i.d, 1                     ; 7 uses
  %i.jl = add i32 %i.i, %i.jk                     ; 2 uses
  %i.jm = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.dt
  %i.jn = sext i32 %8 to i64                      ; 4 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i190, label %._crit_edge.i175

.lr.ph.i190:                                      ; preds = %stbhw__draw_vline.exit
  %i.jq = mul nsw i32 %i.jl, 3
  %i.jr = sext i32 %i.jq to i64
  %invariant.gep.i191 = getelementptr i8, ptr %i.ji, i64 %i.jr ; 3 uses
  %i.js = sext i32 %i.jj to i64                   ; 3 uses
  %wide.trip.count.i192 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter446 = and i64 %wide.trip.count.i192, 1
  %i.jt = icmp eq i32 %i.d, 1
  br i1 %i.jt, label %.epil.preheader445, label %.lr.ph.i190.new

.lr.ph.i190.new:                                  ; preds = %.lr.ph.i190
  %unroll_iter449 = and i64 %wide.trip.count.i192, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i190.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i190.new ], [ %indvars.iv.next.i195.1, %bb.f ] ; 3 uses
  %niter450 = phi i64 [ 0, %.lr.ph.i190.new ], [ %niter450.next.1, %bb.f ]
  %i.ju = add nsw i64 %indvars.iv.i193, %i.ip
  %i.jv = mul nsw i64 %i.ju, %i.js
  %gep.i194 = getelementptr i8, ptr %invariant.gep.i191, i64 %i.jv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i194, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i193, 1
  %i.jw = add nsw i64 %indvars.iv.next.i195, %i.ip
  %i.jx = mul nsw i64 %i.jw, %i.js
  %gep.i194.1 = getelementptr i8, ptr %invariant.gep.i191, i64 %i.jx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i194.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter450.next.1 = add i64 %niter450, 2         ; 2 uses
  %niter450.ncmp.1 = icmp eq i64 %niter450.next.1, %unroll_iter449
  br i1 %niter450.ncmp.1, label %._crit_edge.i175.loopexit.unr-lcssa, label %bb.f, !llvm.loop !122

._crit_edge.i175.loopexit.unr-lcssa:              ; preds = %bb.f
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %._crit_edge.i175, label %.epil.preheader445

.epil.preheader445:                               ; preds = %._crit_edge.i175.loopexit.unr-lcssa, %.lr.ph.i190
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i190 ], [ %indvars.iv.next.i195.1, %._crit_edge.i175.loopexit.unr-lcssa ]
  %lcmp.mod448 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod448)
  %i.jy = add nsw i64 %indvars.iv.i193.epil.init, %i.ip
  %i.jz = mul nsw i64 %i.jy, %i.js
  %gep.i194.epil = getelementptr i8, ptr %invariant.gep.i191, i64 %i.jz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i194.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i175

._crit_edge.i175:                                 ; preds = %.epil.preheader445, %._crit_edge.i175.loopexit.unr-lcssa, %stbhw__draw_vline.exit
  br i1 %i.ai, label %.thread.i187, label %.lr.ph32.i176

.thread.i187:                                     ; preds = %._crit_edge.i175
  %i.ka = sdiv i32 %i.d, 2                        ; 2 uses
  %i.kb = add nsw i32 %i.ka, -1
  %i.kc = and i32 %i.d, 1
  %spec.select.v.i188 = add nuw nsw i32 %i.kc, 1
  %spec.select.i189 = add nsw i32 %spec.select.v.i188, %i.ka
  br label %.lr.ph32.i176

.lr.ph32.i176:                                    ; preds = %._crit_edge.i175, %.thread.i187
  %.046.i177 = phi i32 [ %spec.select.i189, %.thread.i187 ], [ %i.r, %._crit_edge.i175 ]
  %.02645.i178 = phi i32 [ %i.kb, %.thread.i187 ], [ %i.p, %._crit_edge.i175 ]
  %i.kd = sext i32 %i.jp to i64
  %i.ke = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 96), i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kg = mul nsw i32 %i.jl, 3
  %i.kh = sext i32 %i.kg to i64                   ; 3 uses
  %invariant.gep34.i179 = getelementptr i8, ptr %i.ji, i64 %i.kh
  %i.ki = sext i32 %.02645.i178 to i64
  %i.kj = sext i32 %i.jj to i64
  %wide.trip.count40.i180 = sext i32 %.046.i177 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph32.i176
  %indvars.iv37.i181 = phi i64 [ %i.ki, %.lr.ph32.i176 ], [ %indvars.iv.next38.i185, %bb.g ] ; 2 uses
  %i.kk = add nsw i64 %indvars.iv37.i181, %i.ip
  %i.kl = load i8, ptr %i.ke, align 1, !tbaa !62
  %i.km = zext i8 %i.kl to i16
  %i.kn = shl nuw nsw i16 %i.km, 1
  %i.ko = add nuw nsw i16 %i.kn, 255
  %i.kp = udiv i16 %i.ko, 3
  %i.kq = trunc nuw i16 %i.kp to i8
  %i.kr = load <2 x i8>, ptr %i.kf, align 1, !tbaa !62
  %i.ks = zext <2 x i8> %i.kr to <2 x i16>
  %i.kt = shl nuw nsw <2 x i16> %i.ks, splat (i16 1)
  %i.ku = add nuw nsw <2 x i16> %i.kt, splat (i16 255)
  %i.kv = udiv <2 x i16> %i.ku, splat (i16 3)     ; 2 uses
  %i.kw = bitcast <2 x i16> %i.kv to <4 x i8>
  %i.kx = extractelement <4 x i8> %i.kw, i64 0
  %i.ky = bitcast <2 x i16> %i.kv to <4 x i8>
  %i.kz = extractelement <4 x i8> %i.ky, i64 2
  %i.la = mul nsw i64 %i.kk, %i.kj
  %gep35.i182 = getelementptr i8, ptr %invariant.gep34.i179, i64 %i.la ; 3 uses
  store i8 %i.kq, ptr %gep35.i182, align 1
  %.sroa.4.0..sroa_idx.i.i183 = getelementptr inbounds nuw i8, ptr %gep35.i182, i64 1
  store i8 %i.kx, ptr %.sroa.4.0..sroa_idx.i.i183, align 1
  %.sroa.5.0..sroa_idx.i.i184 = getelementptr inbounds nuw i8, ptr %gep35.i182, i64 2
  store i8 %i.kz, ptr %.sroa.5.0..sroa_idx.i.i184, align 1
  %indvars.iv.next38.i185 = add nsw i64 %indvars.iv37.i181, 1 ; 2 uses
  %exitcond41.not.i186 = icmp eq i64 %indvars.iv.next38.i185, %wide.trip.count40.i180
  br i1 %exitcond41.not.i186, label %stbhw__draw_vline.exit197, label %bb.g, !llvm.loop !123

stbhw__draw_vline.exit197:                        ; preds = %bb.g
  %i.lb = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.lc = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.ld = add i32 %i.d, 1                         ; 6 uses
  %i.le = add i32 %i.ld, %2                       ; 8 uses
  %i.lf = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.hs
  %i.lg = sext i32 %7 to i64                      ; 4 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i211, label %._crit_edge.i198

.lr.ph.i211:                                      ; preds = %stbhw__draw_vline.exit197
  %i.lj = mul nsw i32 %i.lc, %i.le
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.lb, i64 %i.lk ; 3 uses
  %wide.trip.count.i212 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter452 = and i64 %wide.trip.count.i212, 1
  %i.lm = icmp eq i32 %i.d, 1
  br i1 %i.lm, label %.epil.preheader451, label %.lr.ph.i211.new

.lr.ph.i211.new:                                  ; preds = %.lr.ph.i211
  %unroll_iter455 = and i64 %wide.trip.count.i212, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i211.new
  %indvars.iv.i213 = phi i64 [ 0, %.lr.ph.i211.new ], [ %indvars.iv.next.i214.1, %bb.h ] ; 3 uses
  %niter456 = phi i64 [ 0, %.lr.ph.i211.new ], [ %niter456.next.1, %bb.h ]
  %i.ln = add nsw i64 %indvars.iv.i213, %i.au
  %i.lo = mul nsw i64 %i.ln, 3
  %i.lp = getelementptr inbounds i8, ptr %i.ll, i64 %i.lo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lp, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i214 = or disjoint i64 %indvars.iv.i213, 1
  %i.lq = add nsw i64 %indvars.iv.next.i214, %i.au
  %i.lr = mul nsw i64 %i.lq, 3
  %i.ls = getelementptr inbounds i8, ptr %i.ll, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ls, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i214.1 = add nuw nsw i64 %indvars.iv.i213, 2 ; 2 uses
  %niter456.next.1 = add i64 %niter456, 2         ; 2 uses
  %niter456.ncmp.1 = icmp eq i64 %niter456.next.1, %unroll_iter455
  br i1 %niter456.ncmp.1, label %._crit_edge.i198.loopexit.unr-lcssa, label %bb.h, !llvm.loop !112

._crit_edge.i198.loopexit.unr-lcssa:              ; preds = %bb.h
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %._crit_edge.i198, label %.epil.preheader451

.epil.preheader451:                               ; preds = %._crit_edge.i198.loopexit.unr-lcssa, %.lr.ph.i211
  %indvars.iv.i213.epil.init = phi i64 [ 0, %.lr.ph.i211 ], [ %indvars.iv.next.i214.1, %._crit_edge.i198.loopexit.unr-lcssa ]
  %lcmp.mod454 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod454)
  %i.lt = add nsw i64 %indvars.iv.i213.epil.init, %i.au
  %i.lu = mul nsw i64 %i.lt, 3
  %i.lv = getelementptr inbounds i8, ptr %i.ll, i64 %i.lu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lv, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i198

._crit_edge.i198:                                 ; preds = %.epil.preheader451, %._crit_edge.i198.loopexit.unr-lcssa, %stbhw__draw_vline.exit197
  br i1 %i.ai, label %.thread.i208, label %iter.check369

.thread.i208:                                     ; preds = %._crit_edge.i198
  %i.lw = sdiv i32 %i.d, 2                        ; 2 uses
  %i.lx = add nsw i32 %i.lw, -1
  %i.ly = and i32 %i.d, 1
  %spec.select.v.i209 = add nuw nsw i32 %i.ly, 1
  %spec.select.i210 = add nsw i32 %spec.select.v.i209, %i.lw
  br label %iter.check369

iter.check369:                                    ; preds = %._crit_edge.i198, %.thread.i208
  %.044.i200 = phi i32 [ %spec.select.i210, %.thread.i208 ], [ %i.r, %._crit_edge.i198 ]
  %.02643.i201 = phi i32 [ %i.lx, %.thread.i208 ], [ %i.p, %._crit_edge.i198 ]
  %i.lz = sext i32 %i.li to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [3 x i8], ptr @stbhw__color, i64 %i.lz ; 6 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 2 ; 2 uses
  %i.md = mul nsw i32 %i.lc, %i.le
  %i.me = sext i32 %i.md to i64                   ; 3 uses
  %i.mf = getelementptr inbounds i8, ptr %i.lb, i64 %i.me ; 3 uses
  %i.mg = sext i32 %.02643.i201 to i64            ; 8 uses
  %wide.trip.count38.i202 = sext i32 %.044.i200 to i64 ; 3 uses
  %i.mh = sub nsw i64 %wide.trip.count38.i202, %i.mg ; 7 uses
  %min.iters.check351 = icmp ult i64 %i.mh, 2
  br i1 %min.iters.check351, label %vec.epilog.scalar.ph370.preheader, label %vector.memcheck344

vector.memcheck344:                               ; preds = %iter.check369
  %i.mi = add nsw i64 %i.mg, %i.au
  %i.mj = mul nsw i64 %i.mi, 3
  %i.mk = getelementptr i8, ptr %i.lb, i64 %i.mj
  %scevgep345 = getelementptr i8, ptr %i.mk, i64 %i.me
  %i.ml = add nsw i64 %wide.trip.count38.i202, %i.au
  %i.mm = mul nsw i64 %i.ml, 3
  %i.mn = getelementptr i8, ptr %i.lb, i64 %i.mm
  %scevgep346 = getelementptr i8, ptr %i.mn, i64 %i.me
  %i.mo = mul nsw i64 %i.lz, 3
  %i.mp = getelementptr i8, ptr @stbhw__color, i64 %i.mo
  %scevgep347 = getelementptr i8, ptr %i.mp, i64 3
end_hunk_0
begin_hunk_1_@stbhw__corner_process_h_rect:bb.a
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph398
  %index407 = phi i64 [ 0, %vector.ph398 ], [ %index.next409, %vector.body406 ] ; 2 uses
  %.reass474 = add i64 %index407, %invariant.op473
  %i.ri = mul nsw i64 %.reass474, 3
  %i.rj = getelementptr inbounds i8, ptr %i.qb, i64 %i.ri
  store <48 x i8> %interleaved.vec408, ptr %i.rj, align 1, !alias.scope !199, !noalias !196
  %index.next409 = add nuw i64 %index407, 16      ; 2 uses
  %i.rk = icmp eq i64 %index.next409, %n.vec399
  br i1 %i.rk, label %middle.block410, label %vector.body406, !llvm.loop !201

middle.block410:                                  ; preds = %vector.body406
  %cmp.n411 = icmp eq i64 %i.qd, %n.vec399
  br i1 %cmp.n411, label %stbhw__draw_hline.exit235, label %vec.epilog.iter.check415

vec.epilog.iter.check415:                         ; preds = %middle.block410
  %min.epilog.iters.check416 = icmp eq i64 %i.qm, 0
  br i1 %min.epilog.iters.check416, label %vec.epilog.scalar.ph414.preheader, label %vec.epilog.ph417, !prof !119

vec.epilog.ph417:                                 ; preds = %vector.main.loop.iter.check396, %vec.epilog.iter.check415
  %vec.epilog.resume.val412 = phi i64 [ %n.vec399, %vec.epilog.iter.check415 ], [ 0, %vector.main.loop.iter.check396 ]
  %n.vec418 = and i64 %i.qd, -2                   ; 3 uses
  %i.rl = add nsw i64 %n.vec418, %i.qc
  %i.rm = load i8, ptr %i.pw, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert419 = insertelement <2 x i8> poison, i8 %i.rm, i64 0
  %broadcast.splat420 = shufflevector <2 x i8> %broadcast.splatinsert419, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.rn = zext <2 x i8> %broadcast.splat420 to <2 x i16>
  %i.ro = load i8, ptr %i.px, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert421 = insertelement <2 x i8> poison, i8 %i.ro, i64 0
  %broadcast.splat422 = shufflevector <2 x i8> %broadcast.splatinsert421, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.rp = zext <2 x i8> %broadcast.splat422 to <2 x i16>
  %i.rq = load i8, ptr %i.py, align 1, !tbaa !62, !alias.scope !196
  %broadcast.splatinsert423 = insertelement <2 x i8> poison, i8 %i.rq, i64 0
  %broadcast.splat424 = shufflevector <2 x i8> %broadcast.splatinsert423, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.rr = zext <2 x i8> %broadcast.splat424 to <2 x i16>
  %i.rs = shl nuw nsw <2 x i16> %i.rr, splat (i16 1)
  %i.rt = add nuw nsw <2 x i16> %i.rs, splat (i16 255)
  %i.ru = udiv <2 x i16> %i.rt, splat (i16 3)
  %invariant.op475 = add i64 %i.qc, %i.ev
  %i.rv = shufflevector <2 x i16> %i.rn, <2 x i16> %i.rp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rw = shl nuw nsw <4 x i16> %i.rv, splat (i16 1)
  %i.rx = add nuw nsw <4 x i16> %i.rw, splat (i16 255)
  %i.ry = udiv <4 x i16> %i.rx, splat (i16 3)
  %i.rz = shufflevector <2 x i16> %i.ru, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sa = shufflevector <4 x i16> %i.ry, <4 x i16> %i.rz, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec427 = trunc nuw <6 x i16> %i.sa to <6 x i8>
  br label %vec.epilog.vector.body425

vec.epilog.vector.body425:                        ; preds = %vec.epilog.vector.body425, %vec.epilog.ph417
  %index426 = phi i64 [ %vec.epilog.resume.val412, %vec.epilog.ph417 ], [ %index.next428, %vec.epilog.vector.body425 ] ; 2 uses
  %.reass476 = add i64 %index426, %invariant.op475
  %i.sb = mul nsw i64 %.reass476, 3
  %i.sc = getelementptr inbounds i8, ptr %i.qb, i64 %i.sb
  store <6 x i8> %interleaved.vec427, ptr %i.sc, align 1, !alias.scope !199, !noalias !196
  %index.next428 = add nuw i64 %index426, 2       ; 2 uses
  %i.sd = icmp eq i64 %index.next428, %n.vec418
  br i1 %i.sd, label %vec.epilog.middle.block429, label %vec.epilog.vector.body425, !llvm.loop !202

vec.epilog.middle.block429:                       ; preds = %vec.epilog.vector.body425
  %cmp.n430 = icmp eq i64 %i.qd, %n.vec418
  br i1 %cmp.n430, label %stbhw__draw_hline.exit235, label %vec.epilog.scalar.ph414.preheader

vec.epilog.scalar.ph414.preheader:                ; preds = %vector.memcheck388, %iter.check413, %vec.epilog.iter.check415, %vec.epilog.middle.block429
  %indvars.iv35.i222.ph = phi i64 [ %i.qc, %iter.check413 ], [ %i.qc, %vector.memcheck388 ], [ %i.qn, %vec.epilog.iter.check415 ], [ %i.rl, %vec.epilog.middle.block429 ]
  br label %vec.epilog.scalar.ph414

vec.epilog.scalar.ph414:                          ; preds = %vec.epilog.scalar.ph414.preheader, %vec.epilog.scalar.ph414
  %indvars.iv35.i222 = phi i64 [ %indvars.iv.next36.i225, %vec.epilog.scalar.ph414 ], [ %indvars.iv35.i222.ph, %vec.epilog.scalar.ph414.preheader ] ; 2 uses
  %i.se = add nsw i64 %indvars.iv35.i222, %i.ev
  %i.sf = load i8, ptr %i.pw, align 1, !tbaa !62
  %i.sg = zext i8 %i.sf to i16
  %i.sh = shl nuw nsw i16 %i.sg, 1
  %i.si = add nuw nsw i16 %i.sh, 255
  %i.sj = udiv i16 %i.si, 3
  %i.sk = trunc nuw i16 %i.sj to i8
  %i.sl = load <2 x i8>, ptr %i.px, align 1, !tbaa !62
  %i.sm = zext <2 x i8> %i.sl to <2 x i16>
  %i.sn = shl nuw nsw <2 x i16> %i.sm, splat (i16 1)
  %i.so = add nuw nsw <2 x i16> %i.sn, splat (i16 255)
  %i.sp = udiv <2 x i16> %i.so, splat (i16 3)     ; 2 uses
  %i.sq = bitcast <2 x i16> %i.sp to <4 x i8>
  %i.sr = extractelement <4 x i8> %i.sq, i64 0
  %i.ss = bitcast <2 x i16> %i.sp to <4 x i8>
  %i.st = extractelement <4 x i8> %i.ss, i64 2
  %i.su = mul nsw i64 %i.se, 3
  %i.sv = getelementptr inbounds i8, ptr %i.qb, i64 %i.su ; 3 uses
  store i8 %i.sk, ptr %i.sv, align 1
  %.sroa.4.0..sroa_idx.i.i223 = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  store i8 %i.sr, ptr %.sroa.4.0..sroa_idx.i.i223, align 1
  %.sroa.5.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %i.sv, i64 2
  store i8 %i.st, ptr %.sroa.5.0..sroa_idx.i.i224, align 1
  %indvars.iv.next36.i225 = add nsw i64 %indvars.iv35.i222, 1 ; 2 uses
  %exitcond39.not.i226 = icmp eq i64 %indvars.iv.next36.i225, %wide.trip.count38.i221
  br i1 %exitcond39.not.i226, label %stbhw__draw_hline.exit235, label %vec.epilog.scalar.ph414, !llvm.loop !203

stbhw__draw_hline.exit235:                        ; preds = %vec.epilog.scalar.ph414, %vec.epilog.middle.block429, %middle.block410
  %i.sw = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 56
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.j
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !34
  %.not = icmp eq i32 %i.sz, 0
  br i1 %.not, label %stbhw__draw_clipped_corner.exit, label %bb.j

bb.j:                                             ; preds = %stbhw__draw_hline.exit235
  %i.ta = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.tb = load i32, ptr %i.g, align 8, !tbaa !102
  %i.tc = sext i32 %i.tb to i64                   ; 2 uses
  %i.td = icmp slt i32 %i.d, 1
  br i1 %i.td, label %stbhw__draw_clipped_corner.exit, label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.j
  %i.te = mul nsw i64 %i.tc, %i.ip
  %i.tf = getelementptr inbounds i8, ptr %i.ta, i64 %i.te
  %i.tg = mul nsw i64 %i.au, 3
  %i.th = getelementptr i8, ptr %i.tf, i64 %i.tg  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.th, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.ti = getelementptr i8, ptr %i.th, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ti, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.tj = icmp eq i32 %i.d, 1
  br i1 %i.tj, label %stbhw__draw_clipped_corner.exit, label %bb.k

bb.k:                                             ; preds = %.split.us.2.i
  %i.tk = add nsw i64 %i.ip, 1
  %i.tl = mul nsw i64 %i.tk, %i.tc
  %i.tm = getelementptr inbounds i8, ptr %i.ta, i64 %i.tl
  %i.tn = mul nsw i64 %i.au, 3
  %i.to = getelementptr inbounds i8, ptr %i.tm, i64 %i.tn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.to, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit

stbhw__draw_clipped_corner.exit:                  ; preds = %bb.j, %bb.k, %.split.us.2.i, %stbhw__draw_hline.exit235
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 72
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.l
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !34
  %.not139 = icmp eq i32 %i.ts, 0
  br i1 %.not139, label %stbhw__draw_clipped_corner.exit240, label %bb.l

bb.l:                                             ; preds = %stbhw__draw_clipped_corner.exit
  %i.tt = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.tu = load i32, ptr %i.g, align 8, !tbaa !102
  %i.tv = add nsw i32 %i.ld, %1
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  %i.tx = sext i32 %i.tu to i64                   ; 2 uses
  %i.ty = icmp slt i32 %i.d, 1
  %i.tz = mul nsw i64 %i.tx, %i.ip
  %i.ua = getelementptr inbounds i8, ptr %i.tt, i64 %i.tz ; 2 uses
  br i1 %i.ty, label %stbhw__draw_clipped_corner.exit240, label %.preheader.split.split.preheader.2.i236

.preheader.split.split.preheader.2.i236:          ; preds = %bb.l
  %i.ub = icmp eq i32 %i.d, 1
  %.pre279 = mul nsw i64 %i.tw, 3                 ; 2 uses
  br i1 %i.ub, label %.preheader.split.split.1.2.i, label %bb.m

bb.m:                                             ; preds = %.preheader.split.split.preheader.2.i236
  %i.uc = getelementptr i8, ptr %i.ua, i64 %.pre279
  %i.ud = getelementptr i8, ptr %i.uc, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ud, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.1.2.i

.preheader.split.split.1.2.i:                     ; preds = %.preheader.split.split.preheader.2.i236, %bb.m
  %i.ue = getelementptr i8, ptr %i.ua, i64 %.pre279 ; 3 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.uf, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ue, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %.not269 = icmp slt i32 %i.ld, %i.jk
  br i1 %.not269, label %bb.n, label %.split.us.2.i238

bb.n:                                             ; preds = %.preheader.split.split.1.2.i
  %i.ug = getelementptr i8, ptr %i.ue, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ug, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.2.i238

.split.us.2.i238:                                 ; preds = %bb.n, %.preheader.split.split.1.2.i
  %i.uh = icmp eq i32 %i.d, 1
  br i1 %i.uh, label %stbhw__draw_clipped_corner.exit240, label %.preheader.split.split.us.3.i239

.preheader.split.split.us.3.i239:                 ; preds = %.split.us.2.i238
  %i.ui = add nsw i64 %i.ip, 1
  %i.uj = mul nsw i64 %i.ui, %i.tx
  %i.uk = getelementptr inbounds i8, ptr %i.tt, i64 %i.uj
  %i.ul = mul nsw i64 %i.tw, 3
  %i.um = getelementptr i8, ptr %i.uk, i64 %i.ul  ; 2 uses
  %i.un = getelementptr i8, ptr %i.um, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.un, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.um, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit240

stbhw__draw_clipped_corner.exit240:               ; preds = %bb.l, %.preheader.split.split.us.3.i239, %.split.us.2.i238, %stbhw__draw_clipped_corner.exit
  %i.uo = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 88
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.dt
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !34
  %.not140 = icmp eq i32 %i.ur, 0
  br i1 %.not140, label %stbhw__draw_clipped_corner.exit253, label %bb.o

bb.o:                                             ; preds = %stbhw__draw_clipped_corner.exit240
  %i.us = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.ut = load i32, ptr %i.g, align 8, !tbaa !102
  %i.uu = or disjoint i32 %i.jk, 1                ; 5 uses
  %i.uv = add nsw i32 %i.uu, %1
  %9 = sext i32 %i.uu to i64                      ; 3 uses
  %10 = sext i32 %i.jk to i64                     ; 3 uses
  %i.uw = sext i32 %i.uv to i64                   ; 3 uses
  %i.ux = sext i32 %i.ut to i64                   ; 2 uses
  %i.uy = icmp slt i32 %i.d, 1
  %11 = mul nsw i64 %i.ux, %i.ip
  %12 = getelementptr inbounds i8, ptr %i.us, i64 %11 ; 2 uses
  br i1 %i.uy, label %stbhw__draw_clipped_corner.exit253, label %.preheader.split.split.preheader.2.i241

.preheader.split.split.preheader.2.i241:          ; preds = %bb.o
  %13 = add nsw i64 %9, -2
  %14 = icmp slt i32 %i.uu, 3
  %15 = icmp sgt i64 %13, %10
  %or.cond.247.i242 = or i1 %14, %15
  br i1 %or.cond.247.i242, label %.preheader.split.split.1.2.i243, label %16

16:                                               ; preds = %.preheader.split.split.preheader.2.i241
  %17 = mul nsw i64 %i.uw, 3
  %18 = getelementptr i8, ptr %12, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %19, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.1.2.i243

.preheader.split.split.1.2.i243:                  ; preds = %16, %.preheader.split.split.preheader.2.i241
  %20 = add nsw i64 %9, -1
  %21 = icmp slt i32 %i.uu, 2
  %22 = icmp sgt i64 %20, %10
  %or.cond.1.2.i244 = or i1 %21, %22
  br i1 %or.cond.1.2.i244, label %.split.us.2.i249, label %bb.p

bb.p:                                             ; preds = %.preheader.split.split.1.2.i243
  %i.uz = mul nsw i64 %i.uw, 3
  %i.va = getelementptr i8, ptr %12, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.va, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vb, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.2.i249

.split.us.2.i249:                                 ; preds = %.preheader.split.split.1.2.i243, %bb.p
  %23 = icmp eq i32 %i.d, 1
  %24 = add nsw i64 %i.ip, 1
  %25 = mul nsw i64 %24, %i.ux
  %26 = getelementptr inbounds i8, ptr %i.us, i64 %25
  br i1 %23, label %stbhw__draw_clipped_corner.exit253, label %.preheader.split.split.us.3.i250

.preheader.split.split.us.3.i250:                 ; preds = %.split.us.2.i249
  %27 = add nsw i64 %9, -1
  %28 = icmp slt i32 %i.uu, 2
  %29 = icmp sgt i64 %27, %10
  %or.cond.us34.1.3.i251 = or i1 %28, %29
  br i1 %or.cond.us34.1.3.i251, label %stbhw__draw_clipped_corner.exit253, label %bb.q

bb.q:                                             ; preds = %.preheader.split.split.us.3.i250
  %i.vc = mul nsw i64 %i.uw, 3
  %i.vd = getelementptr i8, ptr %26, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ve, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit253

stbhw__draw_clipped_corner.exit253:               ; preds = %bb.o, %.preheader.split.split.us.3.i250, %bb.q, %.split.us.2.i249, %stbhw__draw_clipped_corner.exit240
  %i.vf = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.hs
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !34
  %.not141 = icmp eq i32 %i.vi, 0
  br i1 %.not141, label %stbhw__draw_clipped_corner.exit266, label %bb.r

bb.r:                                             ; preds = %stbhw__draw_clipped_corner.exit253
  %i.vj = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.vk = load i32, ptr %i.g, align 8, !tbaa !102
  %i.vl = sext i32 %i.le to i64                   ; 2 uses
  %i.vm = sext i32 %i.vk to i64                   ; 2 uses
  %i.vn = icmp slt i32 %i.d, 2
  br i1 %i.vn, label %.split.us.i, label %.split.us.i.thread

.split.us.i.thread:                               ; preds = %bb.r
  %i.vo = add nsw i64 %i.vl, -2
  %i.vp = mul nsw i64 %i.vo, %i.vm
  %i.vq = getelementptr inbounds i8, ptr %i.vj, i64 %i.vp
  %i.vr = mul nsw i64 %i.au, 3
  %i.vs = getelementptr inbounds i8, ptr %i.vq, i64 %i.vr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vs, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.preheader.1.i

.split.us.i:                                      ; preds = %bb.r
  %.not280 = icmp eq i32 %i.d, 1
  br i1 %.not280, label %.preheader.split.split.preheader.1.i, label %stbhw__draw_clipped_corner.exit266

.preheader.split.split.preheader.1.i:             ; preds = %.split.us.i.thread, %.split.us.i
  %i.vt = add nsw i64 %i.vl, -1
  %i.vu = mul nsw i64 %i.vt, %i.vm
  %i.vv = getelementptr inbounds i8, ptr %i.vj, i64 %i.vu
  %i.vw = mul nsw i64 %i.au, 3
  %i.vx = getelementptr i8, ptr %i.vv, i64 %i.vw  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vx, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.vy = getelementptr i8, ptr %i.vx, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vy, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit266

stbhw__draw_clipped_corner.exit266:               ; preds = %.preheader.split.split.preheader.1.i, %.split.us.i, %stbhw__draw_clipped_corner.exit253
  %i.vz = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 56
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.lg
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !34
  %.not142 = icmp eq i32 %i.wc, 0
  %.pre272.pre275 = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.pre274.pre277 = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  br i1 %.not142, label %bb.t, label %bb.s

bb.s:                                             ; preds = %stbhw__draw_clipped_corner.exit266
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre272.pre275, i32 noundef %.pre274.pre277, i32 noundef %1, i32 noundef %2, i32 noundef %i.jk, i32 noundef %i.d, i32 noundef %i.ld, i32 noundef %i.ld)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  %.pre272.pre = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre274.pre = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %stbhw__draw_clipped_corner.exit266
  %.pre274 = phi i32 [ %.pre274.pre, %bb.s ], [ %.pre274.pre277, %stbhw__draw_clipped_corner.exit266 ] ; 2 uses
  %.pre272 = phi ptr [ %.pre272.pre, %bb.s ], [ %.pre272.pre275, %stbhw__draw_clipped_corner.exit266 ] ; 2 uses
  %i.wd = phi ptr [ %.pre, %bb.s ], [ %i.vz, %stbhw__draw_clipped_corner.exit266 ]
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 72
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.jn
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !34
  %.not143 = icmp eq i32 %i.wg, 0
  br i1 %.not143, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.wh = or disjoint i32 %i.jk, 1
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre272, i32 noundef %.pre274, i32 noundef %1, i32 noundef %2, i32 noundef %i.jk, i32 noundef %i.d, i32 noundef %i.wh, i32 noundef %i.ld)
  %.pre271 = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre273 = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.wi = phi i32 [ %.pre273, %bb.u ], [ %.pre274, %bb.t ]
  %i.wj = phi ptr [ %.pre271, %bb.u ], [ %.pre272, %bb.t ]
  %i.wk = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.j
  %i.wl = mul nsw i32 %i.wi, %2
  %i.wm = sext i32 %i.wl to i64
  %i.wn = getelementptr inbounds i8, ptr %i.wj, i64 %i.wm
  %i.wo = getelementptr inbounds i8, ptr %i.wn, i64 %i.in
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wo, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.wk, i64 3, i1 false)
  %i.wp = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.wq = load i32, ptr %i.g, align 8, !tbaa !102
  %i.wr = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.l
  %i.ws = mul nsw i32 %i.wq, %2
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds i8, ptr %i.wp, i64 %i.wt
  %i.wv = mul nsw i32 %i.dq, 3
  %i.ww = sext i32 %i.wv to i64                   ; 2 uses
  %i.wx = getelementptr inbounds i8, ptr %i.wu, i64 %i.ww
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.wr, i64 3, i1 false)
  %i.wy = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.wz = load i32, ptr %i.g, align 8, !tbaa !102
  %i.xa = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.dt
  %i.xb = mul nsw i32 %i.wz, %2
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds i8, ptr %i.wy, i64 %i.xc
  %i.xe = getelementptr inbounds i8, ptr %i.xd, i64 %i.kh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xe, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xa, i64 3, i1 false)
  %i.xf = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.xg = load i32, ptr %i.g, align 8, !tbaa !102
  %i.xh = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.hs
  %i.xi = mul nsw i32 %i.xg, %i.le
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.xf, i64 %i.xj
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 %i.in
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xl, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xh, i64 3, i1 false)
  %i.xm = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.xn = load i32, ptr %i.g, align 8, !tbaa !102
  %i.xo = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.lg
  %i.xp = mul nsw i32 %i.xn, %i.le
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds i8, ptr %i.xm, i64 %i.xq
  %i.xs = getelementptr inbounds i8, ptr %i.xr, i64 %i.ww
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xs, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xo, i64 3, i1 false)
  %i.xt = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.xu = load i32, ptr %i.g, align 8, !tbaa !102
  %i.xv = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.jn
  %i.xw = mul nsw i32 %i.xu, %i.le
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds i8, ptr %i.xt, i64 %i.xx
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 %i.kh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xv, i64 3, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__corner_process_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 47 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = add i32 %1, 1                            ; 2 uses
  %i.j = sext i32 %3 to i64                       ; 3 uses
  %i.k = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.j ; 2 uses
  %i.l = sext i32 %6 to i64                       ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34
  %i.o = mul nsw i32 %i.d, 3
  %i.p = sdiv i32 %i.o, 8                         ; 7 uses
  %i.q = mul nsw i32 %i.d, 5
  %i.r = sdiv i32 %i.q, 8                         ; 7 uses
  %i.s = icmp sgt i32 %i.d, 0                     ; 6 uses
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.t = mul nsw i32 %i.h, %2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.i to i64                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i32 %i.d, 1
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.y = add nsw i64 %indvars.iv.i, %i.w
  %i.z = mul nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ab = add nsw i64 %indvars.iv.next.i, %i.w
  %i.ac = mul nsw i64 %i.ab, 3
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod362 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod362)
  %i.ae = add nsw i64 %indvars.iv.i.epil.init, %i.w
  %i.af = mul nsw i64 %i.ae, 3
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %i.ah = sub nsw i32 %i.r, %i.p
  %i.ai = icmp slt i32 %i.ah, 2                   ; 6 uses
  br i1 %i.ai, label %.thread.i, label %iter.check
end_hunk_1
begin_hunk_2_@stbhw__corner_process_v_rect:bb.a
  %wide.trip.count.i196 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter376 = and i64 %wide.trip.count.i196, 1
  %i.hk = icmp eq i32 %i.d, 1
  br i1 %i.hk, label %.epil.preheader375, label %.lr.ph.i194.new

.lr.ph.i194.new:                                  ; preds = %.lr.ph.i194
  %unroll_iter379 = and i64 %wide.trip.count.i196, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i194.new
  %indvars.iv.i197 = phi i64 [ 0, %.lr.ph.i194.new ], [ %indvars.iv.next.i199.1, %bb.g ] ; 3 uses
  %niter380 = phi i64 [ 0, %.lr.ph.i194.new ], [ %niter380.next.1, %bb.g ]
  %i.hl = add nsw i64 %indvars.iv.i197, %i.hi
  %i.hm = mul nsw i64 %i.hl, %i.hj
  %gep.i198 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.hm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i199 = or disjoint i64 %indvars.iv.i197, 1
  %i.hn = add nsw i64 %indvars.iv.next.i199, %i.hi
  %i.ho = mul nsw i64 %i.hn, %i.hj
  %gep.i198.1 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.ho
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i199.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter380.next.1 = add i64 %niter380, 2         ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %._crit_edge.i179.loopexit.unr-lcssa, label %bb.g, !llvm.loop !122

._crit_edge.i179.loopexit.unr-lcssa:              ; preds = %bb.g
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %._crit_edge.i179, label %.epil.preheader375

.epil.preheader375:                               ; preds = %._crit_edge.i179.loopexit.unr-lcssa, %.lr.ph.i194
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.lr.ph.i194 ], [ %indvars.iv.next.i199.1, %._crit_edge.i179.loopexit.unr-lcssa ]
  %lcmp.mod378 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.hp = add nsw i64 %indvars.iv.i197.epil.init, %i.hi
  %i.hq = mul nsw i64 %i.hp, %i.hj
  %gep.i198.epil = getelementptr i8, ptr %invariant.gep.i195, i64 %i.hq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i179

._crit_edge.i179:                                 ; preds = %.epil.preheader375, %._crit_edge.i179.loopexit.unr-lcssa, %stbhw__draw_vline.exit178
  br i1 %i.ai, label %.thread.i191, label %.lr.ph32.i180

.thread.i191:                                     ; preds = %._crit_edge.i179
  %i.hr = sdiv i32 %i.d, 2                        ; 2 uses
  %i.hs = add nsw i32 %i.hr, -1
  %i.ht = and i32 %i.d, 1
  %spec.select.v.i192 = add nuw nsw i32 %i.ht, 1
  %spec.select.i193 = add nsw i32 %spec.select.v.i192, %i.hr
  br label %.lr.ph32.i180

.lr.ph32.i180:                                    ; preds = %._crit_edge.i179, %.thread.i191
  %.046.i181 = phi i32 [ %spec.select.i193, %.thread.i191 ], [ %i.r, %._crit_edge.i179 ]
  %.02645.i182 = phi i32 [ %i.hs, %.thread.i191 ], [ %i.p, %._crit_edge.i179 ]
  %i.hu = sext i32 %i.hh to i64
  %i.hv = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 96), i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %invariant.gep34.i183 = getelementptr i8, ptr %i.ha, i64 %i.em
  %i.hx = sext i32 %.02645.i182 to i64
  %i.hy = sext i32 %i.hd to i64                   ; 5 uses
  %i.hz = sext i32 %i.hb to i64
  %wide.trip.count40.i184 = sext i32 %.046.i181 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph32.i180
  %indvars.iv37.i185 = phi i64 [ %i.hx, %.lr.ph32.i180 ], [ %indvars.iv.next38.i189, %bb.h ] ; 2 uses
  %i.ia = add nsw i64 %indvars.iv37.i185, %i.hy
  %i.ib = load i8, ptr %i.hv, align 1, !tbaa !62
  %i.ic = zext i8 %i.ib to i16
  %i.id = shl nuw nsw i16 %i.ic, 1
  %i.ie = add nuw nsw i16 %i.id, 255
  %i.if = udiv i16 %i.ie, 3
  %i.ig = trunc nuw i16 %i.if to i8
  %i.ih = load <2 x i8>, ptr %i.hw, align 1, !tbaa !62
  %i.ii = zext <2 x i8> %i.ih to <2 x i16>
  %i.ij = shl nuw nsw <2 x i16> %i.ii, splat (i16 1)
  %i.ik = add nuw nsw <2 x i16> %i.ij, splat (i16 255)
  %i.il = udiv <2 x i16> %i.ik, splat (i16 3)     ; 2 uses
  %i.im = bitcast <2 x i16> %i.il to <4 x i8>
  %i.in = extractelement <4 x i8> %i.im, i64 0
  %i.io = bitcast <2 x i16> %i.il to <4 x i8>
  %i.ip = extractelement <4 x i8> %i.io, i64 2
  %i.iq = mul nsw i64 %i.ia, %i.hz
  %gep35.i186 = getelementptr i8, ptr %invariant.gep34.i183, i64 %i.iq ; 3 uses
  store i8 %i.ig, ptr %gep35.i186, align 1
  %.sroa.4.0..sroa_idx.i.i187 = getelementptr inbounds nuw i8, ptr %gep35.i186, i64 1
  store i8 %i.in, ptr %.sroa.4.0..sroa_idx.i.i187, align 1
  %.sroa.5.0..sroa_idx.i.i188 = getelementptr inbounds nuw i8, ptr %gep35.i186, i64 2
  store i8 %i.ip, ptr %.sroa.5.0..sroa_idx.i.i188, align 1
  %indvars.iv.next38.i189 = add nsw i64 %indvars.iv37.i185, 1 ; 2 uses
  %exitcond41.not.i190 = icmp eq i64 %indvars.iv.next38.i189, %wide.trip.count40.i184
  br i1 %exitcond41.not.i190, label %stbhw__draw_vline.exit201, label %bb.h, !llvm.loop !123

stbhw__draw_vline.exit201:                        ; preds = %bb.h
  %i.ir = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.is = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.it = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.fm
  %i.iu = sext i32 %8 to i64                      ; 4 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i217, label %._crit_edge.i202

.lr.ph.i217:                                      ; preds = %stbhw__draw_vline.exit201
  %invariant.gep.i218 = getelementptr i8, ptr %i.ir, i64 %i.gg ; 3 uses
  %i.ix = sext i32 %i.is to i64                   ; 3 uses
  %wide.trip.count.i219 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter382 = and i64 %wide.trip.count.i219, 1
  %i.iy = icmp eq i32 %i.d, 1
  br i1 %i.iy, label %.epil.preheader381, label %.lr.ph.i217.new

.lr.ph.i217.new:                                  ; preds = %.lr.ph.i217
  %unroll_iter385 = and i64 %wide.trip.count.i219, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i217.new
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.i217.new ], [ %indvars.iv.next.i222.1, %bb.i ] ; 3 uses
  %niter386 = phi i64 [ 0, %.lr.ph.i217.new ], [ %niter386.next.1, %bb.i ]
  %i.iz = add nsw i64 %indvars.iv.i220, %i.hy
  %i.ja = mul nsw i64 %i.iz, %i.ix
  %gep.i221 = getelementptr i8, ptr %invariant.gep.i218, i64 %i.ja
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i222 = or disjoint i64 %indvars.iv.i220, 1
  %i.jb = add nsw i64 %indvars.iv.next.i222, %i.hy
  %i.jc = mul nsw i64 %i.jb, %i.ix
  %gep.i221.1 = getelementptr i8, ptr %invariant.gep.i218, i64 %i.jc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i222.1 = add nuw nsw i64 %indvars.iv.i220, 2 ; 2 uses
  %niter386.next.1 = add i64 %niter386, 2         ; 2 uses
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %._crit_edge.i202.loopexit.unr-lcssa, label %bb.i, !llvm.loop !122

._crit_edge.i202.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %._crit_edge.i202, label %.epil.preheader381

.epil.preheader381:                               ; preds = %._crit_edge.i202.loopexit.unr-lcssa, %.lr.ph.i217
  %indvars.iv.i220.epil.init = phi i64 [ 0, %.lr.ph.i217 ], [ %indvars.iv.next.i222.1, %._crit_edge.i202.loopexit.unr-lcssa ]
  %lcmp.mod384 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod384)
  %i.jd = add nsw i64 %indvars.iv.i220.epil.init, %i.hy
  %i.je = mul nsw i64 %i.jd, %i.ix
  %gep.i221.epil = getelementptr i8, ptr %invariant.gep.i218, i64 %i.je
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %.epil.preheader381, %._crit_edge.i202.loopexit.unr-lcssa, %stbhw__draw_vline.exit201
  br i1 %i.ai, label %.thread.i214, label %.lr.ph32.i203

.thread.i214:                                     ; preds = %._crit_edge.i202
  %i.jf = sdiv i32 %i.d, 2                        ; 2 uses
  %i.jg = add nsw i32 %i.jf, -1
  %i.jh = and i32 %i.d, 1
  %spec.select.v.i215 = add nuw nsw i32 %i.jh, 1
  %spec.select.i216 = add nsw i32 %spec.select.v.i215, %i.jf
  br label %.lr.ph32.i203

.lr.ph32.i203:                                    ; preds = %._crit_edge.i202, %.thread.i214
  %.046.i204 = phi i32 [ %spec.select.i216, %.thread.i214 ], [ %i.r, %._crit_edge.i202 ]
  %.02645.i205 = phi i32 [ %i.jg, %.thread.i214 ], [ %i.p, %._crit_edge.i202 ]
  %i.ji = sext i32 %i.iw to i64
  %i.jj = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 120), i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  %invariant.gep34.i206 = getelementptr i8, ptr %i.ir, i64 %i.gg
  %i.jl = sext i32 %.02645.i205 to i64
  %i.jm = sext i32 %i.is to i64
  %wide.trip.count40.i207 = sext i32 %.046.i204 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph32.i203
  %indvars.iv37.i208 = phi i64 [ %i.jl, %.lr.ph32.i203 ], [ %indvars.iv.next38.i212, %bb.j ] ; 2 uses
  %i.jn = add nsw i64 %indvars.iv37.i208, %i.hy
  %i.jo = load i8, ptr %i.jj, align 1, !tbaa !62
  %i.jp = zext i8 %i.jo to i16
  %i.jq = shl nuw nsw i16 %i.jp, 1
  %i.jr = add nuw nsw i16 %i.jq, 255
  %i.js = udiv i16 %i.jr, 3
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = load <2 x i8>, ptr %i.jk, align 1, !tbaa !62
  %i.jv = zext <2 x i8> %i.ju to <2 x i16>
  %i.jw = shl nuw nsw <2 x i16> %i.jv, splat (i16 1)
  %i.jx = add nuw nsw <2 x i16> %i.jw, splat (i16 255)
  %i.jy = udiv <2 x i16> %i.jx, splat (i16 3)     ; 2 uses
  %i.jz = bitcast <2 x i16> %i.jy to <4 x i8>
  %i.ka = extractelement <4 x i8> %i.jz, i64 0
  %i.kb = bitcast <2 x i16> %i.jy to <4 x i8>
  %i.kc = extractelement <4 x i8> %i.kb, i64 2
  %i.kd = mul nsw i64 %i.jn, %i.jm
  %gep35.i209 = getelementptr i8, ptr %invariant.gep34.i206, i64 %i.kd ; 3 uses
  store i8 %i.jt, ptr %gep35.i209, align 1
  %.sroa.4.0..sroa_idx.i.i210 = getelementptr inbounds nuw i8, ptr %gep35.i209, i64 1
  store i8 %i.ka, ptr %.sroa.4.0..sroa_idx.i.i210, align 1
  %.sroa.5.0..sroa_idx.i.i211 = getelementptr inbounds nuw i8, ptr %gep35.i209, i64 2
  store i8 %i.kc, ptr %.sroa.5.0..sroa_idx.i.i211, align 1
  %indvars.iv.next38.i212 = add nsw i64 %indvars.iv37.i208, 1 ; 2 uses
  %exitcond41.not.i213 = icmp eq i64 %indvars.iv.next38.i212, %wide.trip.count40.i207
  br i1 %exitcond41.not.i213, label %stbhw__draw_vline.exit224, label %bb.j, !llvm.loop !123

stbhw__draw_vline.exit224:                        ; preds = %bb.j
  %i.ke = load ptr, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.kf = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  %i.kg = shl nsw i32 %i.d, 1                     ; 8 uses
  %i.kh = add i32 %i.dq, %i.kg                    ; 4 uses
  %i.ki = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.hf
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.iu
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !34
  br i1 %i.s, label %.lr.ph.i238, label %._crit_edge.i225

.lr.ph.i238:                                      ; preds = %stbhw__draw_vline.exit224
  %i.kl = mul nsw i32 %i.kf, %i.kh
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %i.ke, i64 %i.km ; 3 uses
  %wide.trip.count.i239 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter388 = and i64 %wide.trip.count.i239, 1
  %i.ko = icmp eq i32 %i.d, 1
  br i1 %i.ko, label %.epil.preheader387, label %.lr.ph.i238.new

.lr.ph.i238.new:                                  ; preds = %.lr.ph.i238
  %unroll_iter391 = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i238.new
  %indvars.iv.i240 = phi i64 [ 0, %.lr.ph.i238.new ], [ %indvars.iv.next.i241.1, %bb.k ] ; 3 uses
  %niter392 = phi i64 [ 0, %.lr.ph.i238.new ], [ %niter392.next.1, %bb.k ]
  %i.kp = add nsw i64 %indvars.iv.i240, %i.au
  %i.kq = mul nsw i64 %i.kp, 3
  %i.kr = getelementptr inbounds i8, ptr %i.kn, i64 %i.kq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kr, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i241 = or disjoint i64 %indvars.iv.i240, 1
  %i.ks = add nsw i64 %indvars.iv.next.i241, %i.au
  %i.kt = mul nsw i64 %i.ks, 3
  %i.ku = getelementptr inbounds i8, ptr %i.kn, i64 %i.kt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ku, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i241.1 = add nuw nsw i64 %indvars.iv.i240, 2 ; 2 uses
  %niter392.next.1 = add i64 %niter392, 2         ; 2 uses
  %niter392.ncmp.1 = icmp eq i64 %niter392.next.1, %unroll_iter391
  br i1 %niter392.ncmp.1, label %._crit_edge.i225.loopexit.unr-lcssa, label %bb.k, !llvm.loop !112

._crit_edge.i225.loopexit.unr-lcssa:              ; preds = %bb.k
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %._crit_edge.i225, label %.epil.preheader387

.epil.preheader387:                               ; preds = %._crit_edge.i225.loopexit.unr-lcssa, %.lr.ph.i238
  %indvars.iv.i240.epil.init = phi i64 [ 0, %.lr.ph.i238 ], [ %indvars.iv.next.i241.1, %._crit_edge.i225.loopexit.unr-lcssa ]
  %lcmp.mod390 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod390)
  %i.kv = add nsw i64 %indvars.iv.i240.epil.init, %i.au
  %i.kw = mul nsw i64 %i.kv, 3
  %i.kx = getelementptr inbounds i8, ptr %i.kn, i64 %i.kw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kx, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i225

._crit_edge.i225:                                 ; preds = %.epil.preheader387, %._crit_edge.i225.loopexit.unr-lcssa, %stbhw__draw_vline.exit224
  br i1 %i.ai, label %.thread.i235, label %iter.check343

.thread.i235:                                     ; preds = %._crit_edge.i225
  %i.ky = sdiv i32 %i.d, 2                        ; 2 uses
  %i.kz = add nsw i32 %i.ky, -1
  %i.la = and i32 %i.d, 1
  %spec.select.v.i236 = add nuw nsw i32 %i.la, 1
  %spec.select.i237 = add nsw i32 %spec.select.v.i236, %i.ky
  br label %iter.check343

iter.check343:                                    ; preds = %._crit_edge.i225, %.thread.i235
  %.044.i227 = phi i32 [ %spec.select.i237, %.thread.i235 ], [ %i.r, %._crit_edge.i225 ]
  %.02643.i228 = phi i32 [ %i.kz, %.thread.i235 ], [ %i.p, %._crit_edge.i225 ]
  %i.lb = sext i32 %i.kk to i64                   ; 2 uses
  %i.lc = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 72), i64 %i.lb ; 6 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 2 ; 2 uses
  %i.lf = mul nsw i32 %i.kf, %i.kh
  %i.lg = sext i32 %i.lf to i64                   ; 3 uses
  %i.lh = getelementptr inbounds i8, ptr %i.ke, i64 %i.lg ; 3 uses
  %i.li = sext i32 %.02643.i228 to i64            ; 8 uses
  %wide.trip.count38.i229 = sext i32 %.044.i227 to i64 ; 3 uses
  %i.lj = sub nsw i64 %wide.trip.count38.i229, %i.li ; 7 uses
  %min.iters.check325 = icmp ult i64 %i.lj, 2
  br i1 %min.iters.check325, label %vec.epilog.scalar.ph344.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %iter.check343
  %i.lk = add nsw i64 %i.li, %i.au
  %i.ll = mul nsw i64 %i.lk, 3
  %i.lm = getelementptr i8, ptr %i.ke, i64 %i.ll
  %scevgep319 = getelementptr i8, ptr %i.lm, i64 %i.lg
  %i.ln = add nsw i64 %wide.trip.count38.i229, %i.au
  %i.lo = mul nsw i64 %i.ln, 3
  %i.lp = getelementptr i8, ptr %i.ke, i64 %i.lo
  %scevgep320 = getelementptr i8, ptr %i.lp, i64 %i.lg
  %i.lq = mul nsw i64 %i.lb, 3
  %i.lr = getelementptr i8, ptr @stbhw__color, i64 %i.lq
  %scevgep321 = getelementptr i8, ptr %i.lr, i64 75
  %bound0322 = icmp ult ptr %scevgep319, %scevgep321
  %bound1323 = icmp ult ptr %i.lc, %scevgep320
  %found.conflict324 = and i1 %bound0322, %bound1323
  br i1 %found.conflict324, label %vec.epilog.scalar.ph344.preheader, label %vector.main.loop.iter.check326

vector.main.loop.iter.check326:                   ; preds = %vector.memcheck318
  %min.iters.check327 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check327, label %vec.epilog.ph347, label %vector.ph328

vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %i.ls = and i64 %i.lj, 14
  %n.vec329 = and i64 %i.lj, -16                  ; 4 uses
  %i.lt = add nsw i64 %n.vec329, %i.li
  %i.lu = load i8, ptr %i.lc, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert330 = insertelement <16 x i8> poison, i8 %i.lu, i64 0
  %broadcast.splat331 = shufflevector <16 x i8> %broadcast.splatinsert330, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lv = zext <16 x i8> %broadcast.splat331 to <16 x i16>
  %i.lw = shl nuw nsw <16 x i16> %i.lv, splat (i16 1)
  %i.lx = add nuw nsw <16 x i16> %i.lw, splat (i16 255)
  %i.ly = udiv <16 x i16> %i.lx, splat (i16 3)
  %i.lz = trunc nuw <16 x i16> %i.ly to <16 x i8>
  %i.ma = load i8, ptr %i.ld, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert332 = insertelement <16 x i8> poison, i8 %i.ma, i64 0
  %broadcast.splat333 = shufflevector <16 x i8> %broadcast.splatinsert332, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mb = zext <16 x i8> %broadcast.splat333 to <16 x i16>
  %i.mc = shl nuw nsw <16 x i16> %i.mb, splat (i16 1)
  %i.md = add nuw nsw <16 x i16> %i.mc, splat (i16 255)
  %i.me = udiv <16 x i16> %i.md, splat (i16 3)
  %i.mf = trunc nuw <16 x i16> %i.me to <16 x i8>
  %i.mg = load i8, ptr %i.le, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert334 = insertelement <16 x i8> poison, i8 %i.mg, i64 0
  %broadcast.splat335 = shufflevector <16 x i8> %broadcast.splatinsert334, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mh = zext <16 x i8> %broadcast.splat335 to <16 x i16>
  %i.mi = shl nuw nsw <16 x i16> %i.mh, splat (i16 1)
  %i.mj = add nuw nsw <16 x i16> %i.mi, splat (i16 255)
  %i.mk = udiv <16 x i16> %i.mj, splat (i16 3)
  %invariant.op395 = add i64 %i.li, %i.au
  %i.ml = shufflevector <16 x i8> %i.lz, <16 x i8> %i.mf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mm = shufflevector <16 x i16> %i.mk, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mn = trunc nuw <32 x i16> %i.mm to <32 x i8>
  %interleaved.vec338 = shufflevector <32 x i8> %i.ml, <32 x i8> %i.mn, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph328
  %index337 = phi i64 [ 0, %vector.ph328 ], [ %index.next339, %vector.body336 ] ; 2 uses
  %.reass396 = add i64 %index337, %invariant.op395
  %i.mo = mul nsw i64 %.reass396, 3
  %i.mp = getelementptr inbounds i8, ptr %i.lh, i64 %i.mo
  store <48 x i8> %interleaved.vec338, ptr %i.mp, align 1, !alias.scope !215, !noalias !212
  %index.next339 = add nuw i64 %index337, 16      ; 2 uses
  %i.mq = icmp eq i64 %index.next339, %n.vec329
  br i1 %i.mq, label %middle.block340, label %vector.body336, !llvm.loop !217

middle.block340:                                  ; preds = %vector.body336
  %cmp.n341 = icmp eq i64 %i.lj, %n.vec329
  br i1 %cmp.n341, label %stbhw__draw_hline.exit243, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block340
  %min.epilog.iters.check346 = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check346, label %vec.epilog.scalar.ph344.preheader, label %vec.epilog.ph347, !prof !119

vec.epilog.ph347:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check345
  %vec.epilog.resume.val342 = phi i64 [ %n.vec329, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec348 = and i64 %i.lj, -2                   ; 3 uses
  %i.mr = add nsw i64 %n.vec348, %i.li
  %i.ms = load i8, ptr %i.lc, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert349 = insertelement <2 x i8> poison, i8 %i.ms, i64 0
  %broadcast.splat350 = shufflevector <2 x i8> %broadcast.splatinsert349, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mt = zext <2 x i8> %broadcast.splat350 to <2 x i16>
  %i.mu = load i8, ptr %i.ld, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert351 = insertelement <2 x i8> poison, i8 %i.mu, i64 0
  %broadcast.splat352 = shufflevector <2 x i8> %broadcast.splatinsert351, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mv = zext <2 x i8> %broadcast.splat352 to <2 x i16>
  %i.mw = load i8, ptr %i.le, align 1, !tbaa !62, !alias.scope !212
  %broadcast.splatinsert353 = insertelement <2 x i8> poison, i8 %i.mw, i64 0
  %broadcast.splat354 = shufflevector <2 x i8> %broadcast.splatinsert353, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mx = zext <2 x i8> %broadcast.splat354 to <2 x i16>
  %i.my = shl nuw nsw <2 x i16> %i.mx, splat (i16 1)
  %i.mz = add nuw nsw <2 x i16> %i.my, splat (i16 255)
  %i.na = udiv <2 x i16> %i.mz, splat (i16 3)
  %invariant.op397 = add i64 %i.li, %i.au
  %i.nb = shufflevector <2 x i16> %i.mt, <2 x i16> %i.mv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nc = shl nuw nsw <4 x i16> %i.nb, splat (i16 1)
  %i.nd = add nuw nsw <4 x i16> %i.nc, splat (i16 255)
  %i.ne = udiv <4 x i16> %i.nd, splat (i16 3)
  %i.nf = shufflevector <2 x i16> %i.na, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x i16> %i.ne, <4 x i16> %i.nf, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec357 = trunc nuw <6 x i16> %i.ng to <6 x i8>
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph347
  %index356 = phi i64 [ %vec.epilog.resume.val342, %vec.epilog.ph347 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 2 uses
  %.reass398 = add i64 %index356, %invariant.op397
  %i.nh = mul nsw i64 %.reass398, 3
  %i.ni = getelementptr inbounds i8, ptr %i.lh, i64 %i.nh
  store <6 x i8> %interleaved.vec357, ptr %i.ni, align 1, !alias.scope !215, !noalias !212
  %index.next358 = add nuw i64 %index356, 2       ; 2 uses
  %i.nj = icmp eq i64 %index.next358, %n.vec348
  br i1 %i.nj, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !218

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %i.lj, %n.vec348
  br i1 %cmp.n360, label %stbhw__draw_hline.exit243, label %vec.epilog.scalar.ph344.preheader

vec.epilog.scalar.ph344.preheader:                ; preds = %vector.memcheck318, %iter.check343, %vec.epilog.iter.check345, %vec.epilog.middle.block359
  %indvars.iv35.i230.ph = phi i64 [ %i.li, %iter.check343 ], [ %i.li, %vector.memcheck318 ], [ %i.lt, %vec.epilog.iter.check345 ], [ %i.mr, %vec.epilog.middle.block359 ]
  br label %vec.epilog.scalar.ph344

vec.epilog.scalar.ph344:                          ; preds = %vec.epilog.scalar.ph344.preheader, %vec.epilog.scalar.ph344
  %indvars.iv35.i230 = phi i64 [ %indvars.iv.next36.i233, %vec.epilog.scalar.ph344 ], [ %indvars.iv35.i230.ph, %vec.epilog.scalar.ph344.preheader ] ; 2 uses
  %i.nk = add nsw i64 %indvars.iv35.i230, %i.au
  %i.nl = load i8, ptr %i.lc, align 1, !tbaa !62
  %i.nm = zext i8 %i.nl to i16
  %i.nn = shl nuw nsw i16 %i.nm, 1
  %i.no = add nuw nsw i16 %i.nn, 255
  %i.np = udiv i16 %i.no, 3
  %i.nq = trunc nuw i16 %i.np to i8
  %i.nr = load <2 x i8>, ptr %i.ld, align 1, !tbaa !62
  %i.ns = zext <2 x i8> %i.nr to <2 x i16>
  %i.nt = shl nuw nsw <2 x i16> %i.ns, splat (i16 1)
  %i.nu = add nuw nsw <2 x i16> %i.nt, splat (i16 255)
  %i.nv = udiv <2 x i16> %i.nu, splat (i16 3)     ; 2 uses
  %i.nw = bitcast <2 x i16> %i.nv to <4 x i8>
  %i.nx = extractelement <4 x i8> %i.nw, i64 0
  %i.ny = bitcast <2 x i16> %i.nv to <4 x i8>
  %i.nz = extractelement <4 x i8> %i.ny, i64 2
  %i.oa = mul nsw i64 %i.nk, 3
  %i.ob = getelementptr inbounds i8, ptr %i.lh, i64 %i.oa ; 3 uses
  store i8 %i.nq, ptr %i.ob, align 1
  %.sroa.4.0..sroa_idx.i.i231 = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store i8 %i.nx, ptr %.sroa.4.0..sroa_idx.i.i231, align 1
  %.sroa.5.0..sroa_idx.i.i232 = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  store i8 %i.nz, ptr %.sroa.5.0..sroa_idx.i.i232, align 1
  %indvars.iv.next36.i233 = add nsw i64 %indvars.iv35.i230, 1 ; 2 uses
  %exitcond39.not.i234 = icmp eq i64 %indvars.iv.next36.i233, %wide.trip.count38.i229
  br i1 %exitcond39.not.i234, label %stbhw__draw_hline.exit243, label %vec.epilog.scalar.ph344, !llvm.loop !219

stbhw__draw_hline.exit243:                        ; preds = %vec.epilog.scalar.ph344, %vec.epilog.middle.block359, %middle.block340
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 40
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.j
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !34
  %.not = icmp eq i32 %i.of, 0
  br i1 %.not, label %stbhw__draw_clipped_corner.exit, label %bb.l

bb.l:                                             ; preds = %stbhw__draw_hline.exit243
  %i.og = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.oh = load i32, ptr %i.g, align 8, !tbaa !102
  %i.oi = sext i32 %i.oh to i64                   ; 2 uses
  %i.oj = icmp slt i32 %i.d, 1
  br i1 %i.oj, label %stbhw__draw_clipped_corner.exit, label %.preheader.split.split.preheader.2.i

.preheader.split.split.preheader.2.i:             ; preds = %bb.l
  %i.ok = mul nsw i64 %i.oi, %i.eo
  %i.ol = getelementptr inbounds i8, ptr %i.og, i64 %i.ok
  %i.om = mul nsw i64 %i.au, 3
  %i.on = getelementptr i8, ptr %i.ol, i64 %i.om  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.on, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.oo = icmp eq i32 %i.d, 1
  br i1 %i.oo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.split.split.preheader.2.i
  %i.op = getelementptr i8, ptr %i.on, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.op, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.split.split.preheader.2.i
  %i.oq = add nsw i64 %i.eo, 1
  %i.or = mul nsw i64 %i.oq, %i.oi
  %i.os = getelementptr inbounds i8, ptr %i.og, i64 %i.or
  %i.ot = mul nsw i64 %i.au, 3
  %i.ou = getelementptr inbounds i8, ptr %i.os, i64 %i.ot
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ou, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit

stbhw__draw_clipped_corner.exit:                  ; preds = %bb.l, %bb.n, %stbhw__draw_hline.exit243
  %i.ov = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %i.dr
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !34
  %.not139 = icmp eq i32 %i.oy, 0
  br i1 %.not139, label %stbhw__draw_clipped_corner.exit248, label %bb.o

bb.o:                                             ; preds = %stbhw__draw_clipped_corner.exit
  %i.oz = load ptr, ptr %i.e, align 8, !tbaa !101 ; 6 uses
  %i.pa = load i32, ptr %i.g, align 8, !tbaa !102
  %i.pb = add nsw i32 %i.fj, %2
  %i.pc = sext i32 %i.pb to i64                   ; 6 uses
  %i.pd = sext i32 %i.pa to i64                   ; 6 uses
  %i.pe = icmp slt i32 %i.d, 2
  br i1 %i.pe, label %.split.us.i, label %bb.p

.split.us.i:                                      ; preds = %bb.o
  %.not298 = icmp eq i32 %i.d, 1
  br i1 %.not298, label %.preheader.split.split.preheader.2.i244.thread.thread, label %.split.us.1.i

bb.p:                                             ; preds = %bb.o
  %i.pf = add nsw i64 %i.pc, -2
  %i.pg = mul nsw i64 %i.pf, %i.pd
  %i.ph = getelementptr inbounds i8, ptr %i.oz, i64 %i.pg
  %i.pi = mul nsw i64 %i.au, 3
  %i.pj = getelementptr inbounds i8, ptr %i.ph, i64 %i.pi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pj, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.pk = add nsw i64 %i.pc, -1
  %i.pl = mul nsw i64 %i.pk, %i.pd
  %i.pm = getelementptr inbounds i8, ptr %i.oz, i64 %i.pl
  %i.pn = mul nsw i64 %i.au, 3
  %i.po = getelementptr i8, ptr %i.pm, i64 %i.pn  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.po, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.pp = getelementptr i8, ptr %i.po, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pp, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %bb.p, %.split.us.i
  %.not283 = icmp slt i32 %i.d, %i.kg
  br i1 %.not283, label %.preheader.split.split.preheader.2.i244.thread, label %.split.us.2.i246

.preheader.split.split.preheader.2.i244.thread.thread: ; preds = %.split.us.i
  %i.pq = add nsw i64 %i.pc, -1
  %i.pr = mul nsw i64 %i.pq, %i.pd
  %i.ps = getelementptr inbounds i8, ptr %i.oz, i64 %i.pr
  %i.pt = mul nsw i64 %i.au, 3                    ; 2 uses
  %i.pu = getelementptr i8, ptr %i.ps, i64 %i.pt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pu, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %.pn297 = mul nsw i64 %i.pd, %i.pc
  %i.pv = getelementptr inbounds i8, ptr %i.oz, i64 %.pn297
  %i.pw = getelementptr i8, ptr %i.pv, i64 %i.pt
  br label %.split.us.2.i246.sink.split

.preheader.split.split.preheader.2.i244.thread:   ; preds = %.split.us.1.i
  %.pre293 = mul nsw i64 %i.au, 3
  %.pn = mul nsw i64 %i.pd, %i.pc
  %i.px = getelementptr inbounds i8, ptr %i.oz, i64 %.pn
  %i.py = getelementptr i8, ptr %i.px, i64 %.pre293 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.py, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.pz = icmp samesign ult i32 %i.d, 2
  br i1 %i.pz, label %.split.us.2.i246, label %bb.q

bb.q:                                             ; preds = %.preheader.split.split.preheader.2.i244.thread
  %i.qa = getelementptr i8, ptr %i.py, i64 3
  br label %.split.us.2.i246.sink.split

.split.us.2.i246.sink.split:                      ; preds = %bb.q, %.preheader.split.split.preheader.2.i244.thread.thread
  %.sink = phi ptr [ %i.pw, %.preheader.split.split.preheader.2.i244.thread.thread ], [ %i.qa, %bb.q ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sink, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.2.i246

.split.us.2.i246:                                 ; preds = %.split.us.2.i246.sink.split, %.preheader.split.split.preheader.2.i244.thread, %.split.us.1.i
  %.not284 = icmp slt i32 %i.fj, %i.kg
  br i1 %.not284, label %.preheader.split.split.us.3.i247.thread, label %stbhw__draw_clipped_corner.exit248

.preheader.split.split.us.3.i247.thread:          ; preds = %.split.us.2.i246
  %i.qb = add nsw i64 %i.pc, 1
  %i.qc = mul nsw i64 %i.qb, %i.pd
  %i.qd = getelementptr inbounds i8, ptr %i.oz, i64 %i.qc
  %i.qe = mul nsw i64 %i.au, 3
  %i.qf = getelementptr inbounds i8, ptr %i.qd, i64 %i.qe
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qf, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit248

stbhw__draw_clipped_corner.exit248:               ; preds = %.preheader.split.split.us.3.i247.thread, %.split.us.2.i246, %stbhw__draw_clipped_corner.exit
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 72
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.hf
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !34
  %.not140 = icmp eq i32 %i.qj, 0
  br i1 %.not140, label %stbhw__draw_clipped_corner.exit262, label %bb.r

bb.r:                                             ; preds = %stbhw__draw_clipped_corner.exit248
  %9 = load ptr, ptr %i.e, align 8, !tbaa !101    ; 2 uses
  %10 = load i32, ptr %i.g, align 8, !tbaa !102
  %i.qk = or disjoint i32 %i.kg, 1                ; 4 uses
  %11 = add nsw i32 %i.qk, %2
  %12 = sext i32 %i.qk to i64                     ; 2 uses
  %13 = sext i32 %i.kg to i64                     ; 2 uses
  %14 = sext i32 %11 to i64                       ; 2 uses
  %15 = sext i32 %10 to i64                       ; 2 uses
  %16 = add nsw i64 %12, -2
  %i.ql = icmp slt i32 %i.qk, 3
  %17 = icmp sgt i64 %16, %13
  %or.cond31.i249 = or i1 %i.ql, %17
  br i1 %or.cond31.i249, label %.split.us.i251, label %18

18:                                               ; preds = %bb.r
  %19 = add nsw i64 %14, -2
  %20 = mul nsw i64 %19, %15
  %21 = getelementptr inbounds i8, ptr %9, i64 %20
  %22 = mul nsw i64 %i.au, 3
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %23, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.i251

.split.us.i251:                                   ; preds = %18, %bb.r
  %24 = add nsw i64 %12, -1
  %25 = icmp slt i32 %i.qk, 2
  %26 = icmp sgt i64 %24, %13
  %or.cond31.1.i252 = or i1 %25, %26
  br i1 %or.cond31.1.i252, label %stbhw__draw_clipped_corner.exit262, label %.preheader.split.split.preheader.1.i253

.preheader.split.split.preheader.1.i253:          ; preds = %.split.us.i251
  %i.qm = add nsw i64 %14, -1
  %i.qn = mul nsw i64 %i.qm, %15
  %i.qo = getelementptr inbounds i8, ptr %9, i64 %i.qn
  %i.qp = mul nsw i64 %i.au, 3
  %i.qq = getelementptr i8, ptr %i.qo, i64 %i.qp  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qq, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.qr = icmp slt i32 %i.d, 2
  br i1 %i.qr, label %stbhw__draw_clipped_corner.exit262, label %bb.s

bb.s:                                             ; preds = %.preheader.split.split.preheader.1.i253
  %i.qs = getelementptr i8, ptr %i.qq, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qs, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit262

stbhw__draw_clipped_corner.exit262:               ; preds = %bb.s, %.preheader.split.split.preheader.1.i253, %.split.us.i251, %stbhw__draw_clipped_corner.exit248
  %i.qt = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 56
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.l
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !34
  %.not141 = icmp eq i32 %i.qw, 0
  br i1 %.not141, label %stbhw__draw_clipped_corner.exit276, label %bb.t

bb.t:                                             ; preds = %stbhw__draw_clipped_corner.exit262
  %i.qx = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.qy = load i32, ptr %i.g, align 8, !tbaa !102
  %i.qz = sext i32 %i.fk to i64                   ; 2 uses
  %i.ra = sext i32 %i.qy to i64                   ; 2 uses
  %i.rb = icmp slt i32 %i.d, 1
  %i.rc = mul nsw i64 %i.ra, %i.eo
  %i.rd = getelementptr inbounds i8, ptr %i.qx, i64 %i.rc ; 2 uses
  br i1 %i.rb, label %stbhw__draw_clipped_corner.exit276, label %.preheader.split.split.preheader.2.i271

.preheader.split.split.preheader.2.i271:          ; preds = %bb.t
  %i.re = icmp eq i32 %i.d, 1
  %.pre294 = mul nsw i64 %i.qz, 3                 ; 2 uses
  br i1 %i.re, label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, label %bb.u

bb.u:                                             ; preds = %.preheader.split.split.preheader.2.i271
  %i.rf = getelementptr i8, ptr %i.rd, i64 %.pre294
  %i.rg = getelementptr i8, ptr %i.rf, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rg, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge

.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge: ; preds = %.preheader.split.split.preheader.2.i271, %bb.u
  %i.rh = getelementptr i8, ptr %i.rd, i64 %.pre294
  %i.ri = getelementptr i8, ptr %i.rh, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ri, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.rj = add nsw i64 %i.eo, 1
  %i.rk = mul nsw i64 %i.rj, %i.ra
  %i.rl = getelementptr inbounds i8, ptr %i.qx, i64 %i.rk
  %i.rm = mul nsw i64 %i.qz, 3
  %i.rn = getelementptr i8, ptr %i.rl, i64 %i.rm
  %i.ro = getelementptr i8, ptr %i.rn, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ro, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit276

stbhw__draw_clipped_corner.exit276:               ; preds = %bb.t, %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, %stbhw__draw_clipped_corner.exit262
  %i.rp = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 40
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.fm
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !34
  %.not142 = icmp eq i32 %i.rs, 0
  %.pre286.pre289 = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.pre288.pre291 = load i32, ptr %i.g, align 8, !tbaa !102 ; 2 uses
  br i1 %.not142, label %bb.w, label %bb.v

bb.v:                                             ; preds = %stbhw__draw_clipped_corner.exit276
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286.pre289, i32 noundef %.pre288.pre291, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kg, i32 noundef %i.fj, i32 noundef %i.fj)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  %.pre286.pre = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre288.pre = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %stbhw__draw_clipped_corner.exit276
  %.pre288 = phi i32 [ %.pre288.pre, %bb.v ], [ %.pre288.pre291, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %.pre286 = phi ptr [ %.pre286.pre, %bb.v ], [ %.pre286.pre289, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %i.rt = phi ptr [ %.pre, %bb.v ], [ %i.rp, %stbhw__draw_clipped_corner.exit276 ]
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 88
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.iu
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !34
  %.not143 = icmp eq i32 %i.rw, 0
  br i1 %.not143, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.rx = or disjoint i32 %i.kg, 1
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286, i32 noundef %.pre288, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kg, i32 noundef %i.fj, i32 noundef %i.rx)
  %.pre285 = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre287 = load i32, ptr %i.g, align 8, !tbaa !102
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ry = phi i32 [ %.pre287, %bb.x ], [ %.pre288, %bb.w ]
  %i.rz = phi ptr [ %.pre285, %bb.x ], [ %.pre286, %bb.w ]
  %i.sa = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.j
  %i.sb = mul nsw i32 %i.ry, %2
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr %i.rz, i64 %i.sc
  %i.se = getelementptr inbounds i8, ptr %i.sd, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.se, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sa, i64 3, i1 false)
  %i.sf = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.sg = load i32, ptr %i.g, align 8, !tbaa !102
  %i.sh = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.dr
  %i.si = mul nsw i32 %i.sg, %i.hc
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds i8, ptr %i.sf, i64 %i.sj
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sl, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sh, i64 3, i1 false)
  %i.sm = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.sn = load i32, ptr %i.g, align 8, !tbaa !102
  %i.so = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.hf
  %i.sp = mul nsw i32 %i.sn, %i.kh
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds i8, ptr %i.sm, i64 %i.sq
  %i.ss = getelementptr inbounds i8, ptr %i.sr, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ss, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.so, i64 3, i1 false)
  %i.st = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.su = load i32, ptr %i.g, align 8, !tbaa !102
  %i.sv = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.l
  %i.sw = mul nsw i32 %i.su, %2
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds i8, ptr %i.st, i64 %i.sx
  %i.sz = getelementptr inbounds i8, ptr %i.sy, i64 %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sv, i64 3, i1 false)
  %i.ta = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.tb = load i32, ptr %i.g, align 8, !tbaa !102
  %i.tc = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.fm
  %i.td = mul nsw i32 %i.tb, %i.hc
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds i8, ptr %i.ta, i64 %i.te
  %i.tg = getelementptr inbounds i8, ptr %i.tf, i64 %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tc, i64 3, i1 false)
  %i.th = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.ti = load i32, ptr %i.g, align 8, !tbaa !102
  %i.tj = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.iu
  %i.tk = mul nsw i32 %i.ti, %i.kh
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds i8, ptr %i.th, i64 %i.tl
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tn, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tj, i64 3, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_make_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw__process, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %3, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %4, ptr %i.d, align 8, !tbaa !102
  store ptr null, ptr %5, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !14
  %i.f = load i32, ptr %0, align 4, !tbaa !33
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %spec.select = select i1 %.not, ptr @stbhw__edge_process_h_rect, ptr @stbhw__corner_process_h_rect
  %spec.select76 = select i1 %.not, ptr @stbhw__edge_process_v_rect, ptr @stbhw__corner_process_v_rect
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %spec.select, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %spec.select76, ptr %i.h, align 8, !tbaa !25
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = mul nsw i32 %2, 3
  %i.k = sext i32 %i.j to i64                     ; 9 uses
  %i.l = sext i32 %4 to i64                       ; 9 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.m = icmp ult i32 %3, 8
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.b ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.b ]
  %i.n = mul nsw i64 %indvars.iv, %i.l
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.p = mul nsw i64 %indvars.iv.next, %i.l
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.r = mul nsw i64 %indvars.iv.next.1, %i.l
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.t = mul nsw i64 %indvars.iv.next.2, %i.l
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %i.v = mul nsw i64 %indvars.iv.next.3, %i.l
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %i.x = mul nsw i64 %indvars.iv.next.4, %i.l
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %i.z = mul nsw i64 %indvars.iv.next.5, %i.l
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 -1, i64 %i.k, i1 false)
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %i.ab = mul nsw i64 %indvars.iv.next.6, %i.l
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
end_hunk_2
