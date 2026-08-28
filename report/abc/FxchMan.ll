Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/FxchMan?download=true
inline.NumInlined: 365
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Fxch_ManUpdate:bb.a
  %i.fl = lshr i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check631 = icmp ult i64 %i.fk, 44
  %i.fn = sub i64 %.043.lcssa.i628, %.0.lcssa.i269627
  %diff.check629 = icmp ugt i64 %i.fn, -32
  %or.cond645 = select i1 %min.iters.check631, i1 true, i1 %diff.check629
  br i1 %or.cond645, label %.lr.ph66.i.preheader659, label %vector.ph632

vector.ph632:                                     ; preds = %.lr.ph66.i.preheader
  %n.vec633 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.fo = shl i64 %n.vec633, 2                    ; 2 uses
  %i.fp = getelementptr i8, ptr %.0.lcssa.i269, i64 %i.fo ; 2 uses
  %i.fq = getelementptr i8, ptr %.043.lcssa.i, i64 %i.fo
  br label %vector.body634

vector.body634:                                   ; preds = %vector.body634, %vector.ph632
  %index635 = phi i64 [ 0, %vector.ph632 ], [ %index.next640, %vector.body634 ] ; 2 uses
  %i.fr = shl i64 %index635, 2                    ; 2 uses
  %next.gep636 = getelementptr i8, ptr %.0.lcssa.i269, i64 %i.fr ; 2 uses
  %next.gep637 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.fr ; 2 uses
  %i.fs = getelementptr i8, ptr %next.gep637, i64 16
  %wide.load638 = load <4 x i32>, ptr %next.gep637, align 4, !tbaa !63
  %wide.load639 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !63
  %i.ft = getelementptr i8, ptr %next.gep636, i64 16
  store <4 x i32> %wide.load638, ptr %next.gep636, align 4, !tbaa !63
  store <4 x i32> %wide.load639, ptr %i.ft, align 4, !tbaa !63
  %index.next640 = add nuw i64 %index635, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next640, %n.vec633
  br i1 %i.fu, label %middle.block641, label %vector.body634, !llvm.loop !120

middle.block641:                                  ; preds = %vector.body634
  %cmp.n642 = icmp eq i64 %i.fm, %n.vec633
  br i1 %cmp.n642, label %Vec_IntTwoRemoveCommon.exit, label %.lr.ph66.i.preheader659

.lr.ph66.i.preheader659:                          ; preds = %.lr.ph66.i.preheader, %middle.block641
  %.265.i.ph = phi ptr [ %.0.lcssa.i269, %.lr.ph66.i.preheader ], [ %i.fp, %middle.block641 ]
  %.24564.i.ph = phi ptr [ %.043.lcssa.i, %.lr.ph66.i.preheader ], [ %i.fq, %middle.block641 ]
  br label %.lr.ph66.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.preheader661, %.lr.ph62.i
  %.24261.i = phi ptr [ %i.fx, %.lr.ph62.i ], [ %.24261.i.ph, %.lr.ph62.i.preheader661 ] ; 2 uses
  %.24860.i = phi ptr [ %i.fv, %.lr.ph62.i ], [ %.24860.i.ph, %.lr.ph62.i.preheader661 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.24860.i, i64 4 ; 2 uses
  %i.fw = load i32, ptr %.24860.i, align 4, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %.24261.i, i64 4 ; 2 uses
  store i32 %i.fw, ptr %.24261.i, align 4, !tbaa !63
  %i.fy = icmp ult ptr %i.fv, %i.da
  br i1 %i.fy, label %.lr.ph62.i, label %.preheader.i, !llvm.loop !121

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader659, %.lr.ph66.i
  %.265.i = phi ptr [ %i.gb, %.lr.ph66.i ], [ %.265.i.ph, %.lr.ph66.i.preheader659 ] ; 2 uses
  %.24564.i = phi ptr [ %i.fz, %.lr.ph66.i ], [ %.24564.i.ph, %.lr.ph66.i.preheader659 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.24564.i, i64 4 ; 2 uses
  %i.ga = load i32, ptr %.24564.i, align 4, !tbaa !63
  %i.gb = getelementptr inbounds nuw i8, ptr %.265.i, i64 4 ; 2 uses
  store i32 %i.ga, ptr %.265.i, align 4, !tbaa !63
  %i.gc = icmp ult ptr %i.fz, %i.dc
  br i1 %i.gc, label %.lr.ph66.i, label %Vec_IntTwoRemoveCommon.exit, !llvm.loop !122

Vec_IntTwoRemoveCommon.exit:                      ; preds = %.lr.ph66.i, %middle.block641, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.0.lcssa.i269, %.preheader.i ], [ %i.fp, %middle.block641 ], [ %i.gb, %.lr.ph66.i ]
  %i.gd = load ptr, ptr %i.cv, align 8, !tbaa !26
  %i.ge = ptrtoint ptr %.242.lcssa.i to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = lshr exact i64 %i.gg, 2
  %i.gi = trunc i64 %i.gh to i32
  store i32 %i.gi, ptr %i.bo, align 4, !tbaa !27
  %i.gj = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.gk = ptrtoint ptr %.2.lcssa.i to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = lshr exact i64 %i.gm, 2
  %i.go = trunc i64 %i.gn to i32
  store i32 %i.go, ptr %i.cg, align 4, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %Vec_IntTwoRemoveCommon.exit, %Vec_IntAppend.exit
  %.0196 = phi i32 [ %i.bd, %Vec_IntTwoRemoveCommon.exit ], [ -1, %Vec_IntAppend.exit ] ; 3 uses
  %.0195 = phi i32 [ %i.bg, %Vec_IntTwoRemoveCommon.exit ], [ -1, %Vec_IntAppend.exit ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !45 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 4 uses
  store i32 0, ptr %i.gr, align 4, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !41
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  %.val216 = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.gv = getelementptr inbounds [16 x i8], ptr %.val216, i64 %i.l ; 4 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 4      ; 3 uses
  %.val67.i282 = load i32, ptr %i.gw, align 4, !tbaa !27
  %i.gx = icmp sgt i32 %.val67.i282, 0
  br i1 %i.gx, label %.lr.ph.i283, label %Vec_IntAppend.exit299

.lr.ph.i283:                                      ; preds = %bb.af
  %i.gy = getelementptr i8, ptr %i.gv, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %Vec_IntPush.exit.i288, %.lr.ph.i283
  %indvars.iv.i284 = phi i64 [ 0, %.lr.ph.i283 ], [ %indvars.iv.next.i289, %Vec_IntPush.exit.i288 ] ; 2 uses
  %.val.i285 = load ptr, ptr %i.gy, align 8, !tbaa !26
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val.i285, i64 %indvars.iv.i284
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !63
  %i.hc = load i32, ptr %i.gr, align 4, !tbaa !27 ; 7 uses
  %i.hd = load i32, ptr %i.gq, align 8, !tbaa !24
  %i.he = icmp eq i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.ah, label %.Vec_IntPush.exit_crit_edge.i286

.Vec_IntPush.exit_crit_edge.i286:                 ; preds = %bb.ag
  %.pre.i287 = load ptr, ptr %i.gz, align 8, !tbaa !26
  br label %Vec_IntPush.exit.i288

bb.ah:                                            ; preds = %bb.ag
  %i.hf = icmp slt i32 %i.hc, 16
  br i1 %i.hf, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load ptr, ptr %i.gz, align 8, !tbaa !26 ; 2 uses
  %.not9.i.i.i298 = icmp eq ptr %i.hg, null
  br i1 %.not9.i.i.i298, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hg, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i295

bb.ak:                                            ; preds = %bb.ai
  %i.hi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i295

bb.al:                                            ; preds = %bb.ah
  %i.hj = icmp samesign ult i32 %i.hc, 1073741823
  %i.hk = shl nuw nsw i32 %i.hc, 1
  %spec.select.i.i291 = select i1 %i.hj, i32 %i.hk, i32 2147483647 ; 4 uses
  %.not.i9.i.i292 = icmp samesign ult i32 %i.hc, %spec.select.i.i291
  %.pre10.i293 = load ptr, ptr %i.gz, align 8, !tbaa !26 ; 3 uses
  br i1 %.not.i9.i.i292, label %bb.am, label %Vec_IntPush.exit.i288

bb.am:                                            ; preds = %bb.al
  %.not9.i10.i.i294 = icmp eq ptr %.pre10.i293, null
  %i.hl = zext nneg i32 %spec.select.i.i291 to i64
  %i.hm = shl nuw nsw i64 %i.hl, 2                ; 2 uses
  br i1 %.not9.i10.i.i294, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hn = tail call ptr @realloc(ptr noundef nonnull %.pre10.i293, i64 noundef %i.hm) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i295

bb.ao:                                            ; preds = %bb.am
  %i.ho = tail call noalias ptr @malloc(i64 noundef %i.hm) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i295

Vec_IntGrow.exit11.sink.split.i.i295:             ; preds = %bb.ao, %bb.an, %bb.ak, %bb.aj
  %i.hp = phi ptr [ %i.hi, %bb.ak ], [ %i.hh, %bb.aj ], [ %i.hn, %bb.an ], [ %i.ho, %bb.ao ] ; 2 uses
  %spec.select.sink.i.i296 = phi i32 [ 16, %bb.ak ], [ 16, %bb.aj ], [ %spec.select.i.i291, %bb.an ], [ %spec.select.i.i291, %bb.ao ]
  store ptr %i.hp, ptr %i.gz, align 8, !tbaa !26
  store i32 %spec.select.sink.i.i296, ptr %i.gq, align 8, !tbaa !24
  %.pre11.i297 = load i32, ptr %i.gr, align 4, !tbaa !27
  br label %Vec_IntPush.exit.i288

Vec_IntPush.exit.i288:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i295, %bb.al, %.Vec_IntPush.exit_crit_edge.i286
  %i.hq = phi i32 [ %i.hc, %.Vec_IntPush.exit_crit_edge.i286 ], [ %i.hc, %bb.al ], [ %.pre11.i297, %Vec_IntGrow.exit11.sink.split.i.i295 ] ; 2 uses
  %i.hr = phi ptr [ %.pre.i287, %.Vec_IntPush.exit_crit_edge.i286 ], [ %.pre10.i293, %bb.al ], [ %i.hp, %Vec_IntGrow.exit11.sink.split.i.i295 ]
  %i.hs = add nsw i32 %i.hq, 1
  store i32 %i.hs, ptr %i.gr, align 4, !tbaa !27
  %i.ht = sext i32 %i.hq to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.ht
  store i32 %i.hb, ptr %i.hu, align 4, !tbaa !63
  %indvars.iv.next.i289 = add nuw nsw i64 %indvars.iv.i284, 1 ; 2 uses
  %.val6.i290 = load i32, ptr %i.gw, align 4, !tbaa !27
  %i.hv = sext i32 %.val6.i290 to i64
  %i.hw = icmp slt i64 %indvars.iv.next.i289, %i.hv
  br i1 %i.hw, label %bb.ag, label %Vec_IntAppend.exit299, !llvm.loop !116

Vec_IntAppend.exit299:                            ; preds = %Vec_IntPush.exit.i288, %bb.af
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %i.hy, null
  br i1 %.not.i, label %Vec_IntErase.exit, label %bb.ap

bb.ap:                                            ; preds = %Vec_IntAppend.exit299
  tail call void @free(ptr noundef nonnull %i.hy) #22
  store ptr null, ptr %i.hx, align 8, !tbaa !26
  br label %Vec_IntErase.exit

Vec_IntErase.exit:                                ; preds = %Vec_IntAppend.exit299, %bb.ap
  store i32 0, ptr %i.gw, align 4, !tbaa !27
  store i32 0, ptr %i.gv, align 8, !tbaa !24
  %i.hz = load ptr, ptr %i.gp, align 8, !tbaa !45 ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 4
  %.val240404 = load i32, ptr %i.ia, align 4, !tbaa !27
  %i.ib = icmp sgt i32 %.val240404, 1
  br i1 %i.ib, label %.critedge, label %Vec_IntUniqifyPairs.exit

.critedge:                                        ; preds = %Vec_IntErase.exit, %bb.av
  %.pre477488 = phi ptr [ %.pre477489, %bb.av ], [ %i.hz, %Vec_IntErase.exit ] ; 2 uses
  %i.ic = phi ptr [ %i.jh, %bb.av ], [ %i.hz, %Vec_IntErase.exit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %bb.av ], [ 0, %Vec_IntErase.exit ] ; 4 uses
  %i.id = or disjoint i64 %indvars.iv, 1          ; 7 uses
  %i.ie = getelementptr i8, ptr %i.ic, i64 8      ; 3 uses
  %.val229 = load ptr, ptr %i.ie, align 8, !tbaa !26 ; 7 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val229, i64 %indvars.iv ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !63 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.val229, i64 %i.id
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !63 ; 2 uses
  %i.ij = icmp sgt i32 %i.ig, %i.ii
  br i1 %i.ij, label %Vec_IntSetEntry.exit, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre492 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.av

Vec_IntSetEntry.exit:                             ; preds = %.critedge
  store i32 %i.ii, ptr %i.if, align 4, !tbaa !63
  %i.ik = add nuw nsw i64 %indvars.iv, 2          ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 4 ; 3 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !27 ; 3 uses
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %.not.i.not.i306 = icmp slt i64 %i.id, %i.in
  br i1 %.not.i.not.i306, label %Vec_IntSetEntry.exit322, label %bb.aq

bb.aq:                                            ; preds = %Vec_IntSetEntry.exit
  %i.io = load i32, ptr %i.ic, align 8, !tbaa !24 ; 4 uses
  %i.ip = shl nsw i32 %i.io, 1                    ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %.not.i.i.not.i308.a = icmp slt i64 %i.id, %i.iq
  br i1 %.not.i.i.not.i308.a, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ir = shl nuw nsw i64 %i.ik, 2
  %i.is = tail call ptr @realloc(ptr noundef nonnull %.val229, i64 noundef %i.ir) #23 ; 2 uses
  store ptr %i.is, ptr %i.ie, align 8, !tbaa !26
  %i.it = trunc nuw nsw i64 %i.ik to i32
  br label %Vec_IntGrow.exit.sink.split.i.i310

bb.as:                                            ; preds = %bb.aq
  %2 = sext i32 %i.io to i64
  %.not.i.i.not.i308 = icmp slt i64 %i.id, %2
  br i1 %.not.i.i.not.i308, label %Vec_IntGrow.exit.i.i313, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iu = icmp slt i32 %i.io, 1073741823
  %spec.select.i.i319 = select i1 %i.iu, i32 %i.ip, i32 2147483647 ; 3 uses
  %.not.i22.i.i320 = icmp slt i32 %i.io, %spec.select.i.i319
  br i1 %.not.i22.i.i320, label %bb.au, label %Vec_IntGrow.exit.i.i313

bb.au:                                            ; preds = %bb.at
  %i.iv = sext i32 %spec.select.i.i319 to i64
  %i.iw = shl nuw nsw i64 %i.iv, 2
  %i.ix = tail call ptr @realloc(ptr noundef nonnull %.val229, i64 noundef %i.iw) #23 ; 2 uses
  store ptr %i.ix, ptr %i.ie, align 8, !tbaa !26
  br label %Vec_IntGrow.exit.sink.split.i.i310

Vec_IntGrow.exit.sink.split.i.i310:               ; preds = %bb.au, %bb.ar
  %i.iy = phi ptr [ %i.ix, %bb.au ], [ %i.is, %bb.ar ]
  %spec.select.sink.i.i311 = phi i32 [ %spec.select.i.i319, %bb.au ], [ %i.it, %bb.ar ]
  store i32 %spec.select.sink.i.i311, ptr %i.ic, align 8, !tbaa !24
  %.pre.i312 = load i32, ptr %i.il, align 4, !tbaa !27 ; 2 uses
  %.pre491 = sext i32 %.pre.i312 to i64
  br label %Vec_IntGrow.exit.i.i313

Vec_IntGrow.exit.i.i313:                          ; preds = %Vec_IntGrow.exit.sink.split.i.i310, %bb.at, %bb.as
  %.pre-phi = phi i64 [ %.pre491, %Vec_IntGrow.exit.sink.split.i.i310 ], [ %i.in, %bb.at ], [ %i.in, %bb.as ] ; 2 uses
  %3 = phi ptr [ %i.iy, %Vec_IntGrow.exit.sink.split.i.i310 ], [ %.val229, %bb.at ], [ %.val229, %bb.as ] ; 2 uses
  %4 = phi i32 [ %.pre.i312, %Vec_IntGrow.exit.sink.split.i.i310 ], [ %i.im, %bb.at ], [ %i.im, %bb.as ]
  %.not4.i314 = icmp sgt i64 %.pre-phi, %i.id
  br i1 %.not4.i314, label %._crit_edge.i.i317, label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %Vec_IntGrow.exit.i.i313
  %i.iz = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i316 = getelementptr i8, ptr %3, i64 %i.iz
  %i.ja = trunc nuw nsw i64 %i.id to i32
  %i.jb = sub i32 %i.ja, %4
  %i.jc = zext i32 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 2
  %i.je = add nuw nsw i64 %i.jd, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i316, i8 0, i64 %i.je, i1 false), !tbaa !63
  br label %._crit_edge.i.i317

._crit_edge.i.i317:                               ; preds = %.lr.ph.i.i315, %Vec_IntGrow.exit.i.i313
  %i.jf = trunc nuw nsw i64 %i.ik to i32
  store i32 %i.jf, ptr %i.il, align 4, !tbaa !27
  %.pre477.pre = load ptr, ptr %i.gp, align 8, !tbaa !45
  br label %Vec_IntSetEntry.exit322

Vec_IntSetEntry.exit322:                          ; preds = %Vec_IntSetEntry.exit, %._crit_edge.i.i317
  %.pre477 = phi ptr [ %.pre477488, %Vec_IntSetEntry.exit ], [ %.pre477.pre, %._crit_edge.i.i317 ] ; 2 uses
  %.val.i318 = phi ptr [ %.val229, %Vec_IntSetEntry.exit ], [ %3, %._crit_edge.i.i317 ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.val.i318, i64 %i.id
  store i32 %i.ig, ptr %i.jg, align 4, !tbaa !63
  br label %bb.av

bb.av:                                            ; preds = %.critedge._crit_edge, %Vec_IntSetEntry.exit322
  %indvars.iv.next.pre-phi = phi i64 [ %.pre492, %.critedge._crit_edge ], [ %i.ik, %Vec_IntSetEntry.exit322 ] ; 2 uses
  %.pre477489 = phi ptr [ %.pre477488, %.critedge._crit_edge ], [ %.pre477, %Vec_IntSetEntry.exit322 ]
  %i.jh = phi ptr [ %i.ic, %.critedge._crit_edge ], [ %.pre477, %Vec_IntSetEntry.exit322 ] ; 4 uses
  %i.ji = or disjoint i64 %indvars.iv.next.pre-phi, 1
  %i.jj = getelementptr i8, ptr %i.jh, i64 4
  %.val240 = load i32, ptr %i.jj, align 4, !tbaa !27 ; 3 uses
  %i.jk = sext i32 %.val240 to i64
  %i.jl = icmp slt i64 %i.ji, %i.jk
  br i1 %i.jl, label %.critedge, label %._crit_edge, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.av
  %i.jm = getelementptr i8, ptr %i.jh, i64 4      ; 3 uses
  %i.jn = icmp slt i32 %.val240, 4
  br i1 %i.jn, label %Vec_IntUniqifyPairs.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  %i.jo = getelementptr i8, ptr %i.jh, i64 8      ; 2 uses
  %.val31.i = load ptr, ptr %i.jo, align 8, !tbaa !26
  %i.jp = lshr i32 %.val240, 1
  %i.jq = zext nneg i32 %i.jp to i64
  tail call void @qsort(ptr noundef %.val31.i, i64 noundef %i.jq, i64 noundef 8, ptr noundef nonnull @Vec_IntSortCompare1) #22
  %i.jr = load i32, ptr %i.jm, align 4, !tbaa !27 ; 2 uses
  %i.js = icmp sgt i32 %i.jr, 3
  br i1 %i.js, label %.lr.ph.i324, label %._crit_edge.i

.lr.ph.i324:                                      ; preds = %bb.aw
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !26 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.lr.ph.i324
  %i.ju = phi i32 [ %i.jr, %.lr.ph.i324 ], [ %i.ki, %bb.az ]
  %indvars.iv.i325 = phi i64 [ 1, %.lr.ph.i324 ], [ %indvars.iv.next.i329, %bb.az ] ; 2 uses
  %.033.i = phi i32 [ 1, %.lr.ph.i324 ], [ %.1.i328, %bb.az ] ; 3 uses
  %.idx.i326 = shl nuw nsw i64 %indvars.iv.i325, 3
  %i.jv = getelementptr i8, ptr %i.jt, i64 %.idx.i326 ; 4 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !63 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jv, i64 -8
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !63
  %.not.i327 = icmp eq i32 %i.jw, %i.jy
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !63 ; 2 uses
  br i1 %.not.i327, label %bb.ay, label %._crit_edge37.i

bb.ay:                                            ; preds = %bb.ax
  %i.kb = getelementptr i8, ptr %i.jv, i64 -4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !63
  %.not30.i = icmp eq i32 %i.ka, %i.kc
  br i1 %.not30.i, label %bb.az, label %._crit_edge37.i

._crit_edge37.i:                                  ; preds = %bb.ay, %bb.ax
  %i.kd = shl nsw i32 %.033.i, 1
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ke ; 2 uses
  store i32 %i.jw, ptr %i.kf, align 4, !tbaa !63
  %i.kg = getelementptr i8, ptr %i.kf, i64 4
  store i32 %i.ka, ptr %i.kg, align 4, !tbaa !63
  %i.kh = add nsw i32 %.033.i, 1
  %.pre38.i = load i32, ptr %i.jm, align 4, !tbaa !27
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge37.i, %bb.ay
  %i.ki = phi i32 [ %.pre38.i, %._crit_edge37.i ], [ %i.ju, %bb.ay ] ; 2 uses
  %.1.i328 = phi i32 [ %i.kh, %._crit_edge37.i ], [ %.033.i, %bb.ay ] ; 2 uses
  %indvars.iv.next.i329 = add nuw nsw i64 %indvars.iv.i325, 1 ; 2 uses
  %i.kj = sdiv i32 %i.ki, 2
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv.next.i329, %i.kk
  br i1 %i.kl, label %bb.ax, label %._crit_edge.i.loopexit, !llvm.loop !124

._crit_edge.i.loopexit:                           ; preds = %bb.az
  %i.km = shl nsw i32 %.1.i328, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.aw
  %.0.lcssa.i323 = phi i32 [ 2, %bb.aw ], [ %i.km, %._crit_edge.i.loopexit ]
  store i32 %.0.lcssa.i323, ptr %i.jm, align 4, !tbaa !27
  br label %Vec_IntUniqifyPairs.exit

Vec_IntUniqifyPairs.exit:                         ; preds = %Vec_IntErase.exit, %._crit_edge, %._crit_edge.i
  %i.kn = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  %.val239408 = load i32, ptr %i.ko, align 4, !tbaa !27
  %i.kp = icmp sgt i32 %.val239408, 0
  br i1 %i.kp, label %.lr.ph, label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %bb.bb, %Vec_IntUniqifyPairs.exit
  %i.kq = load ptr, ptr %i.gp, align 8, !tbaa !45 ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 4
  %.val238410 = load i32, ptr %i.kr, align 4, !tbaa !27
  %i.ks = icmp sgt i32 %.val238410, 0
  br i1 %i.ks, label %.lr.ph412, label %.critedge4

.lr.ph:                                           ; preds = %Vec_IntUniqifyPairs.exit, %bb.bb
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %bb.bb ], [ 0, %Vec_IntUniqifyPairs.exit ] ; 2 uses
  %i.kt = phi ptr [ %i.le, %bb.bb ], [ %i.kn, %Vec_IntUniqifyPairs.exit ]
  %i.ku = getelementptr i8, ptr %i.kt, i64 8
  %.val227 = load ptr, ptr %i.ku, align 8, !tbaa !26
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.val227, i64 %indvars.iv451
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !63 ; 3 uses
  tail call fastcc void @Fxch_ManDivSingleCube(ptr noundef nonnull %0, i32 noundef %i.kw, i32 noundef 0, i32 noundef 1)
  %i.kx = load ptr, ptr %0, align 8, !tbaa !8
  %i.ky = getelementptr i8, ptr %i.kx, i64 8
  %.val246 = load ptr, ptr %i.ky, align 8, !tbaa !40
  %i.kz = sext i32 %i.kw to i64
  %i.la = getelementptr inbounds [16 x i8], ptr %.val246, i64 %i.kz
  %i.lb = getelementptr i8, ptr %i.la, i64 8
  %.val2.i = load ptr, ptr %i.lb, align 8, !tbaa !26
  %i.lc = load i32, ptr %.val2.i, align 4, !tbaa !63
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph
  tail call fastcc void @Fxch_ManDivDoubleCube(ptr noundef nonnull %0, i32 noundef %i.kw, i32 noundef 0, i32 noundef 1)
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.ba
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %i.le = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 4
  %.val239 = load i32, ptr %i.lf, align 4, !tbaa !27
  %i.lg = sext i32 %.val239 to i64
  %i.lh = icmp slt i64 %indvars.iv.next452, %i.lg
  br i1 %i.lh, label %.lr.ph, label %.critedge2.preheader, !llvm.loop !125

.lr.ph412:                                        ; preds = %.critedge2.preheader, %.critedge2
  %indvars.iv454 = phi i64 [ %indvars.iv.next455, %.critedge2 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %i.li = phi ptr [ %i.lt, %.critedge2 ], [ %i.kq, %.critedge2.preheader ]
  %i.lj = getelementptr i8, ptr %i.li, i64 8
  %.val226 = load ptr, ptr %i.lj, align 8, !tbaa !26
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.val226, i64 %indvars.iv454
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !63 ; 3 uses
  tail call fastcc void @Fxch_ManDivSingleCube(ptr noundef nonnull %0, i32 noundef %i.ll, i32 noundef 0, i32 noundef 1)
  %i.lm = load ptr, ptr %0, align 8, !tbaa !8
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  %.val245 = load ptr, ptr %i.ln, align 8, !tbaa !40
  %i.lo = sext i32 %i.ll to i64
  %i.lp = getelementptr inbounds [16 x i8], ptr %.val245, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 8
  %.val2.i330 = load ptr, ptr %i.lq, align 8, !tbaa !26
  %i.lr = load i32, ptr %.val2.i330, align 4, !tbaa !63
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.bc, label %.critedge2

bb.bc:                                            ; preds = %.lr.ph412
  tail call fastcc void @Fxch_ManDivDoubleCube(ptr noundef nonnull %0, i32 noundef %i.ll, i32 noundef 0, i32 noundef 1)
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph412, %bb.bc
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %i.lt = load ptr, ptr %i.gp, align 8, !tbaa !45 ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 4
  %.val238 = load i32, ptr %i.lu, align 4, !tbaa !27
  %i.lv = sext i32 %.val238 to i64
  %i.lw = icmp slt i64 %indvars.iv.next455, %i.lv
  br i1 %i.lw, label %.lr.ph412, label %.critedge4, !llvm.loop !126

.critedge4:                                       ; preds = %.critedge2, %.critedge2.preheader
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !46
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i32 0, ptr %i.lz, align 4, !tbaa !27
  %i.ma = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.mb = tail call i32 @Fxch_DivIsNotConstant1(ptr noundef %i.ma) #22
  %.not = icmp eq i32 %i.mb, 0
  br i1 %.not, label %Fxch_ManExtractDivFromCube.exit, label %bb.bd

bb.bd:                                            ; preds = %.critedge4
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !61 ; 6 uses
  %i.me = add nsw i32 %i.md, 1
  store i32 %i.me, ptr %i.mc, align 8, !tbaa !61
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !96
  %i.mh = icmp sgt i32 %i.mg, 0
  br i1 %i.mh, label %.lr.ph.i344, label %._crit_edge.i331

.lr.ph.i344:                                      ; preds = %bb.bd
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !127
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.lr.ph.i344
  %indvars.iv.i345 = phi i64 [ 0, %.lr.ph.i344 ], [ %indvars.iv.next.i346, %bb.be ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.i345
  store i32 0, ptr %i.mk, align 4, !tbaa !63
  %indvars.iv.next.i346 = add nuw nsw i64 %indvars.iv.i345, 1 ; 2 uses
  %i.ml = load i32, ptr %i.mf, align 8, !tbaa !96
  %i.mm = sext i32 %i.ml to i64
  %i.mn = icmp slt i64 %indvars.iv.next.i346, %i.mm
  br i1 %i.mn, label %bb.be, label %._crit_edge.i331, !llvm.loop !128

._crit_edge.i331:                                 ; preds = %bb.be, %bb.bd
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !52 ; 6 uses
  %i.mq = tail call i32 @Gia_ManRandom(i32 noundef 0) #22
end_hunk_0
