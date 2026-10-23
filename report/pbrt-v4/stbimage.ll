Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL26stbi__process_frame_headerP10stbi__jpegi:bb.a
  %.not195 = icmp eq i32 %i.fg, 0
  %i.fi = icmp ugt i8 %.0.i214, 79
  %or.cond = or i1 %i.fi, %.not195
  br i1 %or.cond, label %.loopexit230, label %bb.aj

.loopexit230:                                     ; preds = %_ZL10stbi__get8P13stbi__context.exit215, %_ZL10stbi__get8P13stbi__context.exit215.thread
  %i.fj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.59, ptr %i.fj, align 8, !tbaa !19
  br label %.loopexit

bb.aj:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit215
  %i.fk = and i32 %i.ff, 15                       ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !88
  %i.fm = add nsw i32 %i.fk, -5
  %or.cond197 = icmp ult i32 %i.fm, -4
  br i1 %or.cond197, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.60, ptr %i.fn, align 8, !tbaa !19
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.fo = icmp ult ptr %i.fe, %i.fd
  br i1 %i.fo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  store ptr %i.fp, ptr %i.e, align 8, !tbaa !30
  %i.fq = load i8, ptr %i.fe, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit221

bb.an:                                            ; preds = %bb.al
  %i.fr = load i32, ptr %i.cr, align 8, !tbaa !27
  %.not.i216 = icmp eq i32 %i.fr, 0
  br i1 %.not.i216, label %_ZL10stbi__get8P13stbi__context.exit221.thread, label %bb.ao

_ZL10stbi__get8P13stbi__context.exit221.thread:   ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.fs, align 4, !tbaa !85
  br label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.ft = load ptr, ptr %i.cs, align 8, !tbaa !31
  %i.fu = load ptr, ptr %i.ct, align 8, !tbaa !25
  %i.fv = load i32, ptr %i.cv, align 4, !tbaa !26
  %i.fw = tail call noundef i32 %i.ft(ptr noundef %i.fu, ptr noundef nonnull %i.cu, i32 noundef %i.fv), !inline_history !6 ; 2 uses
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.fy = load ptr, ptr %i.cw, align 8, !tbaa !29
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = load i32, ptr %i.cx, align 8, !tbaa !28
  %i.ge = add nsw i32 %i.gd, %i.gc
  store i32 %i.ge, ptr %i.cx, align 8, !tbaa !28
  %i.gf = icmp eq i32 %i.fw, 0
  br i1 %i.gf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.cr, align 8, !tbaa !27
  store i8 0, ptr %i.cu, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i218

bb.aq:                                            ; preds = %bb.ao
  %i.gg = sext i32 %i.fw to i64
  %i.gh = getelementptr inbounds i8, ptr %i.cu, i64 %i.gg
  %.pre.i217 = load i8, ptr %i.cu, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i218

_ZL19stbi__refill_bufferP13stbi__context.exit.i218: ; preds = %bb.aq, %bb.ap
  %i.gi = phi i8 [ 0, %bb.ap ], [ %.pre.i217, %bb.aq ]
  %.sink.i.i219 = phi ptr [ %i.cy, %bb.ap ], [ %i.gh, %bb.aq ] ; 2 uses
  store ptr %.sink.i.i219, ptr %i.g, align 8, !tbaa !33
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit221

_ZL10stbi__get8P13stbi__context.exit221:          ; preds = %bb.am, %_ZL19stbi__refill_bufferP13stbi__context.exit.i218
  %i.gj = phi ptr [ %i.fd, %bb.am ], [ %.sink.i.i219, %_ZL19stbi__refill_bufferP13stbi__context.exit.i218 ]
  %i.gk = phi ptr [ %i.fp, %bb.am ], [ %i.cy, %_ZL19stbi__refill_bufferP13stbi__context.exit.i218 ]
  %.0.i220 = phi i8 [ %i.fq, %bb.am ], [ %i.gi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i218 ] ; 2 uses
  %i.gl = zext i8 %.0.i220 to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !85
  %i.gn = icmp ugt i8 %.0.i220, 3
  br i1 %i.gn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit221
  %i.go = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.61, ptr %i.go, align 8, !tbaa !19
  br label %.loopexit

bb.as:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit221.thread, %_ZL10stbi__get8P13stbi__context.exit221
  %i.gp = phi ptr [ %i.fd, %_ZL10stbi__get8P13stbi__context.exit221.thread ], [ %i.gj, %_ZL10stbi__get8P13stbi__context.exit221 ]
  %i.gq = phi ptr [ %i.fe, %_ZL10stbi__get8P13stbi__context.exit221.thread ], [ %i.gk, %_ZL10stbi__get8P13stbi__context.exit221 ]
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %i.gr = load i32, ptr %i.cf, align 8, !tbaa !58 ; 9 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next269, %i.gs
  br i1 %i.gt, label %bb.v, label %._crit_edge245, !llvm.loop !452

._crit_edge245:                                   ; preds = %bb.as
  %.not190 = icmp eq i32 %1, 0
  br i1 %.not190, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %._crit_edge245
  %i.gu = load <2 x i32>, ptr %i.a, align 8, !tbaa !20 ; 4 uses
  %i.gv = extractelement <2 x i32> %i.gu, i64 0
  %i.gw = extractelement <2 x i32> %i.gu, i64 1
  %i.gx = tail call fastcc noundef i32 @_ZL21stbi__mad3sizes_validiiii(i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef %i.gr, i32 noundef 0)
  %.not191 = icmp eq i32 %i.gx, 0
  br i1 %.not191, label %bb.au, label %.preheader229

.preheader229:                                    ; preds = %bb.at
  %i.gy = icmp sgt i32 %i.gr, 0                   ; 2 uses
  br i1 %i.gy, label %iter.check398, label %._crit_edge254

iter.check398:                                    ; preds = %.preheader229
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 6 uses
  %wide.trip.count274 = zext nneg i32 %i.gr to i64 ; 6 uses
  %min.iters.check350 = icmp ult i32 %i.gr, 8
  br i1 %min.iters.check350, label %vec.epilog.scalar.ph399.preheader, label %vector.main.loop.iter.check351

vector.main.loop.iter.check351:                   ; preds = %iter.check398
  %min.iters.check352 = icmp ult i32 %i.gr, 32
  br i1 %min.iters.check352, label %vec.epilog.ph402, label %vector.ph353

vector.ph353:                                     ; preds = %vector.main.loop.iter.check351
  %i.ha = and i64 %wide.trip.count274, 24
  %n.vec354 = and i64 %wide.trip.count274, 2147483616 ; 4 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.ph353, %vector.body355
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next387, %vector.body355 ]
  %vec.ind357 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph353 ], [ %vec.ind.next388, %vector.body355 ] ; 5 uses
  %vec.phi = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.hf, %vector.body355 ]
  %vec.phi358 = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.hg, %vector.body355 ]
  %vec.phi359 = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.hh, %vector.body355 ]
  %vec.phi360 = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.hi, %vector.body355 ]
  %vec.phi361 = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.hb, %vector.body355 ]
  %vec.phi362 = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.hc, %vector.body355 ]
  %vec.phi363 = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.hd, %vector.body355 ]
  %vec.phi364 = phi <8 x i32> [ splat (i32 1), %vector.ph353 ], [ %i.he, %vector.body355 ]
  %step.add365 = add nuw <8 x i64> %vec.ind357, splat (i64 8)
  %step.add.2366 = add nuw <8 x i64> %vec.ind357, splat (i64 16)
  %step.add.3367 = add nuw <8 x i64> %vec.ind357, splat (i64 24)
  %wide.gep368 = getelementptr inbounds nuw [96 x i8], ptr %i.gz, <8 x i64> %vec.ind357 ; 2 uses
  %wide.gep369 = getelementptr inbounds nuw [96 x i8], ptr %i.gz, <8 x i64> %step.add365 ; 2 uses
  %wide.gep370 = getelementptr inbounds nuw [96 x i8], ptr %i.gz, <8 x i64> %step.add.2366 ; 2 uses
  %wide.gep371 = getelementptr inbounds nuw [96 x i8], ptr %i.gz, <8 x i64> %step.add.3367 ; 2 uses
  %wide.gep372 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep368, i64 4
  %wide.gep373 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep369, i64 4
  %wide.gep374 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep370, i64 4
  %wide.gep375 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep371, i64 4
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep372, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather376 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep373, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather377 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep374, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather378 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep375, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.hb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather, <8 x i32> %vec.phi361) ; 2 uses
  %i.hc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather376, <8 x i32> %vec.phi362) ; 2 uses
  %i.hd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather377, <8 x i32> %vec.phi363) ; 2 uses
  %i.he = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather378, <8 x i32> %vec.phi364) ; 2 uses
  %wide.gep379 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep368, i64 8
  %wide.gep380 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep369, i64 8
  %wide.gep381 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep370, i64 8
  %wide.gep382 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep371, i64 8
  %wide.masked.gather383 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep379, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !88
  %wide.masked.gather384 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep380, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !88
  %wide.masked.gather385 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep381, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !88
  %wide.masked.gather386 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep382, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !88
  %i.hf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather383, <8 x i32> %vec.phi) ; 2 uses
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather384, <8 x i32> %vec.phi358) ; 2 uses
  %i.hh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather385, <8 x i32> %vec.phi359) ; 2 uses
  %i.hi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather386, <8 x i32> %vec.phi360) ; 2 uses
  %index.next387 = add nuw i64 %index356, 32      ; 2 uses
  %vec.ind.next388 = add nuw <8 x i64> %vec.ind357, splat (i64 32)
  %i.hj = icmp eq i64 %index.next387, %n.vec354
  br i1 %i.hj, label %middle.block389, label %vector.body355, !llvm.loop !453

middle.block389:                                  ; preds = %vector.body355
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hf, <8 x i32> %i.hg)
  %rdx.minmax390 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.hh)
  %rdx.minmax391 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax390, <8 x i32> %i.hi)
  %i.hk = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax391) ; 3 uses
  %rdx.minmax392 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hb, <8 x i32> %i.hc)
  %rdx.minmax393 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax392, <8 x i32> %i.hd)
  %rdx.minmax394 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax393, <8 x i32> %i.he)
  %i.hl = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax394) ; 3 uses
  %cmp.n395 = icmp eq i64 %n.vec354, %wide.trip.count274
  br i1 %cmp.n395, label %.lr.ph253, label %vec.epilog.iter.check400

vec.epilog.iter.check400:                         ; preds = %middle.block389
  %min.epilog.iters.check401 = icmp eq i64 %i.ha, 0
  br i1 %min.epilog.iters.check401, label %vec.epilog.scalar.ph399.preheader, label %vec.epilog.ph402, !prof !104

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check351, %vec.epilog.iter.check400
  %vec.epilog.resume.val396 = phi i64 [ %n.vec354, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check351 ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.hk, %vec.epilog.iter.check400 ], [ 1, %vector.main.loop.iter.check351 ]
  %bc.merge.rdx397 = phi i32 [ %i.hl, %vec.epilog.iter.check400 ], [ 1, %vector.main.loop.iter.check351 ]
  %n.vec403 = and i64 %wide.trip.count274, 2147483640 ; 3 uses
  %broadcast.splatinsert404.a = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat405.a = shufflevector <8 x i32> %broadcast.splatinsert404.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert406 = insertelement <8 x i32> poison, i32 %bc.merge.rdx397, i64 0
  %broadcast.splat407 = shufflevector <8 x i32> %broadcast.splatinsert406, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert408 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val396, i64 0
  %broadcast.splat409 = shufflevector <8 x i64> %broadcast.splatinsert408, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction410 = or disjoint <8 x i64> %broadcast.splat409, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body411

vec.epilog.vector.body411:                        ; preds = %vec.epilog.vector.body411, %vec.epilog.ph402
  %index412 = phi i64 [ %vec.epilog.resume.val396, %vec.epilog.ph402 ], [ %index.next421, %vec.epilog.vector.body411 ]
  %vec.ind413 = phi <8 x i64> [ %induction410, %vec.epilog.ph402 ], [ %vec.ind.next422, %vec.epilog.vector.body411 ] ; 2 uses
  %vec.phi414 = phi <8 x i32> [ %broadcast.splat405.a, %vec.epilog.ph402 ], [ %i.hn, %vec.epilog.vector.body411 ]
  %vec.phi415 = phi <8 x i32> [ %broadcast.splat407, %vec.epilog.ph402 ], [ %i.hm, %vec.epilog.vector.body411 ]
  %wide.gep416 = getelementptr inbounds nuw [96 x i8], ptr %i.gz, <8 x i64> %vec.ind413 ; 2 uses
  %wide.gep417 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep416, i64 4
  %wide.masked.gather418 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep417, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.hm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather418, <8 x i32> %vec.phi415) ; 2 uses
  %wide.gep419 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep416, i64 8
  %wide.masked.gather420 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep419, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !88
  %i.hn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.masked.gather420, <8 x i32> %vec.phi414) ; 2 uses
  %index.next421 = add nuw i64 %index412, 8       ; 2 uses
  %vec.ind.next422 = add nuw nsw <8 x i64> %vec.ind413, splat (i64 8)
  %i.ho = icmp eq i64 %index.next421, %n.vec403
  br i1 %i.ho, label %vec.epilog.middle.block423, label %vec.epilog.vector.body411, !llvm.loop !454

vec.epilog.middle.block423:                       ; preds = %vec.epilog.vector.body411
  %i.hp = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.hn) ; 2 uses
  %i.hq = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.hm) ; 2 uses
  %cmp.n424 = icmp eq i64 %n.vec403, %wide.trip.count274
  br i1 %cmp.n424, label %.lr.ph253, label %vec.epilog.scalar.ph399.preheader

vec.epilog.scalar.ph399.preheader:                ; preds = %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block423
  %indvars.iv271.ph = phi i64 [ 0, %iter.check398 ], [ %n.vec354, %vec.epilog.iter.check400 ], [ %n.vec403, %vec.epilog.middle.block423 ]
  %.0248.ph = phi i32 [ 1, %iter.check398 ], [ %i.hk, %vec.epilog.iter.check400 ], [ %i.hp, %vec.epilog.middle.block423 ]
  %.0175247.ph = phi i32 [ 1, %iter.check398 ], [ %i.hl, %vec.epilog.iter.check400 ], [ %i.hq, %vec.epilog.middle.block423 ]
  br label %vec.epilog.scalar.ph399

bb.au:                                            ; preds = %bb.at
  %i.hr = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.hr, align 8, !tbaa !19
  br label %.loopexit

.lr.ph253:                                        ; preds = %vec.epilog.scalar.ph399, %vec.epilog.middle.block423, %middle.block389
  %spec.select.lcssa = phi i32 [ %i.hq, %vec.epilog.middle.block423 ], [ %i.hl, %middle.block389 ], [ %spec.select, %vec.epilog.scalar.ph399 ] ; 3 uses
  %.1.lcssa = phi i32 [ %i.hp, %vec.epilog.middle.block423 ], [ %i.hk, %middle.block389 ], [ %.1, %vec.epilog.scalar.ph399 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count279 = zext nneg i32 %i.gr to i64
  %i.ht = insertelement <2 x i32> poison, i32 %spec.select.lcssa, i64 0
  %i.hu = insertelement <2 x i32> %i.ht, i32 %.1.lcssa, i64 1
  br label %bb.aw

vec.epilog.scalar.ph399:                          ; preds = %vec.epilog.scalar.ph399.preheader, %vec.epilog.scalar.ph399
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %vec.epilog.scalar.ph399 ], [ %indvars.iv271.ph, %vec.epilog.scalar.ph399.preheader ] ; 2 uses
  %.0248 = phi i32 [ %.1, %vec.epilog.scalar.ph399 ], [ %.0248.ph, %vec.epilog.scalar.ph399.preheader ]
  %.0175247 = phi i32 [ %spec.select, %vec.epilog.scalar.ph399 ], [ %.0175247.ph, %vec.epilog.scalar.ph399.preheader ]
  %i.hv = getelementptr inbounds nuw [96 x i8], ptr %i.gz, i64 %indvars.iv271 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !89
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.hx, i32 %.0175247) ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !88
  %.1 = tail call i32 @llvm.smax.i32(i32 %i.hz, i32 %.0248) ; 2 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.lr.ph253, label %vec.epilog.scalar.ph399, !llvm.loop !455

bb.av:                                            ; preds = %bb.ay
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count279
  br i1 %exitcond280.not, label %._crit_edge254, label %bb.aw, !llvm.loop !456

bb.aw:                                            ; preds = %.lr.ph253, %bb.av
  %indvars.iv276 = phi i64 [ 0, %.lr.ph253 ], [ %indvars.iv.next277, %bb.av ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [96 x i8], ptr %i.hs, i64 %indvars.iv276 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !89
  %i.id = srem i32 %spec.select.lcssa, %i.ic
  %.not193 = icmp eq i32 %i.id, 0
  br i1 %.not193, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ie = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.59, ptr %i.ie, align 8, !tbaa !19
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !88
  %i.ih = srem i32 %.1.lcssa, %i.ig
  %.not194 = icmp eq i32 %i.ih, 0
  br i1 %.not194, label %bb.av, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ii = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.60, ptr %i.ii, align 8, !tbaa !19
  br label %.loopexit

._crit_edge254:                                   ; preds = %bb.av, %.preheader229
  %.0.lcssa313 = phi i32 [ 1, %.preheader229 ], [ %.1.lcssa, %bb.av ]
  %.0175.lcssa311 = phi i32 [ 1, %.preheader229 ], [ %spec.select.lcssa, %bb.av ]
  %i.ij = phi <2 x i32> [ splat (i32 1), %.preheader229 ], [ %i.hu, %bb.av ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 18056
  store i32 %.0175.lcssa311, ptr %i.ik, align 8, !tbaa !458
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 18060
  store i32 %.0.lcssa313, ptr %i.il, align 4, !tbaa !459
  %i.im = shl nsw <2 x i32> %i.ij, splat (i32 3)  ; 3 uses
  %i.in = add <2 x i32> %i.gu, splat (i32 -1)
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 18064
  %i.ip = add <2 x i32> %i.in, %i.im
  %i.iq = udiv <2 x i32> %i.ip, %i.im             ; 2 uses
  %i.ir = shufflevector <2 x i32> %i.iq, <2 x i32> %i.im, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ir, ptr %i.io, align 8, !tbaa !20
  br i1 %i.gy, label %.lr.ph257, label %.loopexit

.lr.ph257:                                        ; preds = %._crit_edge254
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %i.it = add nsw <2 x i32> %i.ij, splat (i32 -1)
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 18480
  %wide.trip.count284 = zext nneg i32 %i.gr to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph257, %bb.bg
  %indvars.iv281 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next282, %bb.bg ] ; 4 uses
  %i.iv = getelementptr inbounds nuw [96 x i8], ptr %i.is, i64 %indvars.iv281 ; 9 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  %i.iz = load <2 x i32>, ptr %i.iw, align 4, !tbaa !20 ; 2 uses
  %i.ja = mul <2 x i32> %i.iz, %i.gu
  %i.jb = add <2 x i32> %i.it, %i.ja
  %i.jc = udiv <2 x i32> %i.jb, %i.ij
  store <2 x i32> %i.jc, ptr %i.ix, align 4, !tbaa !20
  %i.jd = mul nsw <2 x i32> %i.iz, %i.iq          ; 2 uses
  %i.je = shl nsw <2 x i32> %i.jd, splat (i32 3)  ; 2 uses
  %i.jf = extractelement <2 x i32> %i.je, i64 0   ; 3 uses
  store i32 %i.jf, ptr %i.iy, align 4, !tbaa !87
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.jh = extractelement <2 x i32> %i.je, i64 1   ; 3 uses
  store i32 %i.jh, ptr %i.jg, align 8, !tbaa !460
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false)
  %i.jk = tail call fastcc noundef ptr @_ZL17stbi__malloc_mad2iii(i32 noundef %i.jf, i32 noundef %i.jh, i32 noundef 15) ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !93
  %i.jm = icmp eq ptr %i.jk, null
  br i1 %i.jm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jn = trunc nuw nsw i64 %indvars.iv281 to i32
  %i.jo = add nuw nsw i32 %i.jn, 1
  %i.jp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.jp, align 8, !tbaa !19
  tail call fastcc void @_ZL26stbi__free_jpeg_componentsP10stbi__jpegii(ptr noundef %0, i32 noundef %i.jo)
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jq = ptrtoint ptr %i.jk to i64
  %i.jr = add i64 %i.jq, 15
  %i.js = and i64 %i.jr, -16
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !86
  %i.jv = load i32, ptr %i.iu, align 8, !tbaa !80
  %.not192 = icmp eq i32 %i.jv, 0
  br i1 %.not192, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iv, i64 88
  store <2 x i32> %i.jd, ptr %i.jw, align 8, !tbaa !20
  %i.jx = tail call fastcc noundef ptr @_ZL17stbi__malloc_mad3iiii(i32 noundef %i.jf, i32 noundef %i.jh, i32 noundef 2, i32 noundef 15) ; 3 uses
  store ptr %i.jx, ptr %i.jj, align 8, !tbaa !94
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jz = trunc nuw nsw i64 %indvars.iv281 to i32
  %i.ka = add nuw nsw i32 %i.jz, 1
  %i.kb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.kb, align 8, !tbaa !19
  tail call fastcc void @_ZL26stbi__free_jpeg_componentsP10stbi__jpegii(ptr noundef %0, i32 noundef %i.ka)
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.kc = ptrtoint ptr %i.jx to i64
  %i.kd = add i64 %i.kc, 15
  %i.ke = and i64 %i.kd, -16
  %i.kf = inttoptr i64 %i.ke to ptr
  store ptr %i.kf, ptr %i.ji, align 8, !tbaa !91
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.bf
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count284
  br i1 %exitcond285.not, label %.loopexit, label %bb.ba, !llvm.loop !457

.loopexit:                                        ; preds = %bb.bg, %._crit_edge254, %._crit_edge245, %bb.be, %bb.bb, %bb.az, %bb.ax, %bb.au, %bb.ar, %bb.ak, %.loopexit230, %bb.u, %_ZL10stbi__get8P13stbi__context.exit203.thread, %bb.n, %bb.l, %bb.j, %_ZL10stbi__get8P13stbi__context.exit.thread, %bb.b
  %.0179 = phi i32 [ 0, %bb.b ], [ 0, %_ZL10stbi__get8P13stbi__context.exit.thread ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.au ], [ 0, %_ZL10stbi__get8P13stbi__context.exit203.thread ], [ 0, %bb.u ], [ 0, %.loopexit230 ], [ 0, %bb.ak ], [ 0, %bb.ar ], [ 1, %._crit_edge245 ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.bb ], [ 0, %bb.be ], [ 1, %._crit_edge254 ], [ 1, %bb.bg ]
  ret i32 %.0179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi__build_huffmanP13stbi__huffmanPi(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #30 {
.preheader64:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 24 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !20
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader64, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader64 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
end_hunk_0
