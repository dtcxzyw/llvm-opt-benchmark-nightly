Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourTileCacheBuilder?download=true
inline.NumInlined: 236
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z23dtBuildTileCacheRegionsP16dtTileCacheAllocR16dtTileCacheLayeri:bb.a
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv398
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 165
  store i8 -1, ptr %i.fx, align 1, !tbaa !119
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv398
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 189
  store i8 -1, ptr %i.fz, align 1, !tbaa !119
  %indvars.iv.next399.7 = add nuw nsw i64 %indvars.iv398, 8 ; 2 uses
  %niter550.next.7 = add i64 %niter550, 8         ; 2 uses
  %niter550.ncmp.7 = icmp eq i64 %niter550.next.7, %unroll_iter549
  br i1 %niter550.ncmp.7, label %.preheader322.loopexit.unr-lcssa, label %.lr.ph343

.preheader321:                                    ; preds = %.preheader321.preheader, %._crit_edge
  %indvars.iv413 = phi i64 [ 0, %.preheader321.preheader ], [ %indvars.iv.next414, %._crit_edge ] ; 4 uses
  %i.ga = mul nuw nsw i64 %indvars.iv413, %i.fi
  %.not245 = icmp eq i64 %indvars.iv413, 0
  %i.gb = add nsw i64 %indvars.iv413, -1
  %i.gc = mul nuw nsw i64 %i.gb, %i.fi
  br i1 %.not245, label %.lr.ph345.split.us, label %.lr.ph345.split

.lr.ph345.split.us:                               ; preds = %.preheader321
  %i.gd = load ptr, ptr %i.j, align 8, !tbaa !64  ; 3 uses
  br i1 %i.fj, label %.epil.preheader551, label %.lr.ph345.split.us.new

.lr.ph345.split.us.new:                           ; preds = %.lr.ph345.split.us, %_ZL13addUniqueLastPhRhh.exit265.us.1
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.1, %_ZL13addUniqueLastPhRhh.exit265.us.1 ], [ 0, %.lr.ph345.split.us ] ; 4 uses
  %niter557 = phi i64 [ %niter557.next.1, %_ZL13addUniqueLastPhRhh.exit265.us.1 ], [ 0, %.lr.ph345.split.us ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv408
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !66  ; 2 uses
  %i.gg = icmp eq i8 %i.gf, -1
  br i1 %i.gg, label %_ZL13addUniqueLastPhRhh.exit265.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph345.split.us.new
  %i.gh = zext i8 %i.gf to i64
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.gh ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !120
  %i.gk = add nsw i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !120
  %i.gl = load ptr, ptr %i.fg, align 8, !tbaa !65
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv408
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !66
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 22
  store i8 %i.gn, ptr %i.go, align 2, !tbaa !121
  br label %_ZL13addUniqueLastPhRhh.exit265.us

_ZL13addUniqueLastPhRhh.exit265.us:               ; preds = %bb.af, %.lr.ph345.split.us.new
  %indvars.iv.next409 = or disjoint i64 %indvars.iv408, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv.next409
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !66  ; 2 uses
  %i.gr = icmp eq i8 %i.gq, -1
  br i1 %i.gr, label %_ZL13addUniqueLastPhRhh.exit265.us.1, label %bb.ag

bb.ag:                                            ; preds = %_ZL13addUniqueLastPhRhh.exit265.us
  %i.gs = zext i8 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.gs ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !120
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !120
  %i.gw = load ptr, ptr %i.fg, align 8, !tbaa !65
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next409
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !66
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 22
  store i8 %i.gy, ptr %i.gz, align 2, !tbaa !121
  br label %_ZL13addUniqueLastPhRhh.exit265.us.1

_ZL13addUniqueLastPhRhh.exit265.us.1:             ; preds = %bb.ag, %_ZL13addUniqueLastPhRhh.exit265.us
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %niter557.next.1 = add i64 %niter557, 2         ; 2 uses
  %niter557.ncmp.1 = icmp eq i64 %niter557.next.1, %unroll_iter556
  br i1 %niter557.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph345.split.us.new

.preheader320:                                    ; preds = %._crit_edge, %.preheader321.lr.ph, %.preheader322
  br i1 %.not374, label %._crit_edge359.thread, label %.lr.ph348.preheader

._crit_edge359.thread:                            ; preds = %.preheader320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  br label %.preheader318.preheader

.preheader318.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph362
  %lcmp.mod574.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod574.not, label %.preheader318.preheader, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %.preheader318.preheader.loopexit.unr-lcssa, %._crit_edge359
  %indvars.iv438.epil.init = phi i64 [ 0, %._crit_edge359 ], [ %indvars.iv.next439.3, %.preheader318.preheader.loopexit.unr-lcssa ]
  %lcmp.mod575 = icmp ne i64 %xtraiter572, 0
  tail call void @llvm.assume(i1 %lcmp.mod575)
  br label %.lr.ph362.epil

.lr.ph362.epil:                                   ; preds = %.lr.ph362.epil, %.lr.ph362.epil.preheader
  %indvars.iv438.epil = phi i64 [ %indvars.iv438.epil.init, %.lr.ph362.epil.preheader ], [ %indvars.iv.next439.epil, %.lr.ph362.epil ] ; 2 uses
  %epil.iter573 = phi i64 [ 0, %.lr.ph362.epil.preheader ], [ %epil.iter573.next, %.lr.ph362.epil ]
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv438.epil
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 21
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !119
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hd
  store i8 1, ptr %i.he, align 1, !tbaa !66
  %indvars.iv.next439.epil = add nuw nsw i64 %indvars.iv438.epil, 1
  %epil.iter573.next = add i64 %epil.iter573, 1   ; 2 uses
  %epil.iter573.cmp.not = icmp eq i64 %epil.iter573.next, %xtraiter572
  br i1 %epil.iter573.cmp.not, label %.preheader318.preheader, label %.lr.ph362.epil, !llvm.loop !106

.preheader318.preheader:                          ; preds = %.preheader318.preheader.loopexit.unr-lcssa, %.lr.ph362.epil, %._crit_edge359.thread
  br label %.preheader318

.lr.ph348.preheader:                              ; preds = %.preheader320
  %wide.trip.count421 = zext i8 %.0216.lcssa to i64 ; 9 uses
  %xtraiter558 = and i64 %wide.trip.count421, 7   ; 3 uses
  %i.hf = icmp ult i8 %.0216.lcssa, 8
  br i1 %i.hf, label %.lr.ph348.epil.preheader, label %.lr.ph348.preheader.new

.lr.ph348.preheader.new:                          ; preds = %.lr.ph348.preheader
  %unroll_iter562 = and i64 %wide.trip.count421, 248
  br label %.lr.ph348

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZL13addUniqueLastPhRhh.exit265.us.1
  br i1 %lcmp.mod554.not, label %._crit_edge, label %.epil.preheader551

.epil.preheader551:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph345.split.us
  %indvars.iv408.epil.init = phi i64 [ 0, %.lr.ph345.split.us ], [ %indvars.iv.next409.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod555)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv408.epil.init
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !66  ; 2 uses
  %i.hi = icmp eq i8 %i.hh, -1
  br i1 %i.hi, label %._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %.epil.preheader551
  %i.hj = zext i8 %i.hh to i64
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.hj ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !120
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !120
  %i.hn = load ptr, ptr %i.fg, align 8, !tbaa !65
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv408.epil.init
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !66
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 22
  store i8 %i.hp, ptr %i.hq, align 2, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZL13addUniqueLastPhRhh.exit265, %._crit_edge.loopexit.unr-lcssa, %bb.ah, %.epil.preheader551
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %.preheader320, label %.preheader321

.lr.ph345.split:                                  ; preds = %.preheader321, %_ZL13addUniqueLastPhRhh.exit265
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %_ZL13addUniqueLastPhRhh.exit265 ], [ 0, %.preheader321 ] ; 3 uses
  %i.hr = add nuw nsw i64 %indvars.iv403, %i.ga   ; 3 uses
  %i.hs = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !66  ; 5 uses
  %i.hv = icmp eq i8 %i.hu, -1
  br i1 %i.hv, label %_ZL13addUniqueLastPhRhh.exit265, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph345.split
  %i.hw = zext i8 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.hw ; 5 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !120
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !120
  %i.ia = load ptr, ptr %i.fg, align 8, !tbaa !65 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hr
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !66  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 22
  store i8 %i.ic, ptr %i.id, align 2, !tbaa !121
  %i.ie = add nsw i64 %indvars.iv403, %i.gc       ; 3 uses
  %i.if = getelementptr inbounds i8, ptr %i.ia, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !66
  %.not.i258 = icmp eq i8 %i.ic, %i.ig
  br i1 %.not.i258, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit260, label %_ZL13addUniqueLastPhRhh.exit265

_Z11isConnectedRK16dtTileCacheLayeriii.exit260:   ; preds = %bb.ai
  %i.ih = load ptr, ptr %i.fh, align 8, !tbaa !67 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.hr
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !66
  %i.ik = zext i8 %i.ij to i32
  %i.il = getelementptr inbounds i8, ptr %i.ih, i64 %i.ie
  %i.im = load i8, ptr %i.il, align 1, !tbaa !66
  %i.in = zext i8 %i.im to i32
  %i.io = sub nsw i32 %i.ik, %i.in
  %i.ip = tail call noundef i32 @llvm.abs.i32(i32 %i.io, i1 true)
  %.not315 = icmp sgt i32 %i.ip, %2
  br i1 %.not315, label %_ZL13addUniqueLastPhRhh.exit265, label %bb.aj

bb.aj:                                            ; preds = %_Z11isConnectedRK16dtTileCacheLayeriii.exit260
  %i.iq = getelementptr inbounds i8, ptr %i.hs, i64 %i.ie
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !66  ; 5 uses
  %.not246 = icmp eq i8 %i.ir, -1
  %.not247 = icmp eq i8 %i.ir, %i.hu
  %or.cond = or i1 %.not246, %.not247
  br i1 %or.cond, label %_ZL13addUniqueLastPhRhh.exit265, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hx, i64 20 ; 3 uses
  %i.iu = load i8, ptr %i.it, align 4, !tbaa !66  ; 2 uses
  %.not.i261 = icmp eq i8 %i.iu, 0
  br i1 %.not.i261, label %._crit_edge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iv = zext i8 %i.iu to i64                    ; 2 uses
  %3 = getelementptr i8, ptr %i.is, i64 %i.iv
  %i.iw = getelementptr i8, ptr %3, i64 -1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !66
  %i.iy = icmp eq i8 %i.ix, %i.ir
  br i1 %i.iy, label %_ZL13addUniqueLastPhRhh.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.al, %bb.ak
  %.pre-phi.i = phi i64 [ %i.iv, %bb.al ], [ 0, %bb.ak ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 %.pre-phi.i
  store i8 %i.ir, ptr %i.iz, align 1, !tbaa !66
  %i.ja = load i8, ptr %i.it, align 4, !tbaa !66
  %i.jb = add i8 %i.ja, 1
  store i8 %i.jb, ptr %i.it, align 4, !tbaa !66
  br label %_ZL13addUniqueLastPhRhh.exit

_ZL13addUniqueLastPhRhh.exit:                     ; preds = %bb.al, %._crit_edge.i
  %i.jc = zext i8 %i.ir to i64
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 20 ; 3 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !66  ; 2 uses
  %.not.i262 = icmp eq i8 %i.jg, 0
  br i1 %.not.i262, label %._crit_edge.i263, label %bb.am

bb.am:                                            ; preds = %_ZL13addUniqueLastPhRhh.exit
  %i.jh = zext i8 %i.jg to i64                    ; 2 uses
  %4 = getelementptr i8, ptr %i.je, i64 %i.jh
  %i.ji = getelementptr i8, ptr %4, i64 -1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !66
  %i.jk = icmp eq i8 %i.jj, %i.hu
  br i1 %i.jk, label %_ZL13addUniqueLastPhRhh.exit265, label %._crit_edge.i263

._crit_edge.i263:                                 ; preds = %bb.am, %_ZL13addUniqueLastPhRhh.exit
  %.pre-phi.i264 = phi i64 [ %i.jh, %bb.am ], [ 0, %_ZL13addUniqueLastPhRhh.exit ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 %.pre-phi.i264
  store i8 %i.hu, ptr %i.jl, align 1, !tbaa !66
  %i.jm = load i8, ptr %i.jf, align 1, !tbaa !66
  %i.jn = add i8 %i.jm, 1
  store i8 %i.jn, ptr %i.jf, align 1, !tbaa !66
  br label %_ZL13addUniqueLastPhRhh.exit265

_ZL13addUniqueLastPhRhh.exit265:                  ; preds = %bb.ai, %._crit_edge.i263, %bb.am, %_Z11isConnectedRK16dtTileCacheLayeriii.exit260, %bb.aj, %.lr.ph345.split
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %._crit_edge, label %.lr.ph345.split

.lr.ph358.unr-lcssa:                              ; preds = %.lr.ph348
  %lcmp.mod560.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod560.not, label %.lr.ph358, label %.lr.ph348.epil.preheader

.lr.ph348.epil.preheader:                         ; preds = %.lr.ph358.unr-lcssa, %.lr.ph348.preheader
  %indvars.iv418.epil.init = phi i64 [ 0, %.lr.ph348.preheader ], [ %indvars.iv.next419.7, %.lr.ph358.unr-lcssa ]
  %lcmp.mod561 = icmp ne i64 %xtraiter558, 0
  tail call void @llvm.assume(i1 %lcmp.mod561)
  br label %.lr.ph348.epil

.lr.ph348.epil:                                   ; preds = %.lr.ph348.epil, %.lr.ph348.epil.preheader
  %indvars.iv418.epil = phi i64 [ %indvars.iv418.epil.init, %.lr.ph348.epil.preheader ], [ %indvars.iv.next419.epil, %.lr.ph348.epil ] ; 3 uses
  %epil.iter559 = phi i64 [ 0, %.lr.ph348.epil.preheader ], [ %epil.iter559.next, %.lr.ph348.epil ]
  %i.jo = trunc i64 %indvars.iv418.epil to i8
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv418.epil
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 21
  store i8 %i.jo, ptr %i.jq, align 1, !tbaa !119
  %indvars.iv.next419.epil = add nuw nsw i64 %indvars.iv418.epil, 1
  %epil.iter559.next = add i64 %epil.iter559, 1   ; 2 uses
  %epil.iter559.cmp.not = icmp eq i64 %epil.iter559.next, %xtraiter558
  br i1 %epil.iter559.cmp.not, label %.lr.ph358, label %.lr.ph348.epil, !llvm.loop !107

.lr.ph358:                                        ; preds = %.lr.ph348.epil, %.lr.ph358.unr-lcssa
  %wide.trip.count436 = zext i8 %.0216.lcssa to i64 ; 2 uses
  %min.iters.check = icmp ult i8 %.0216.lcssa, 8
  %min.iters.check491 = icmp ult i8 %.0216.lcssa, 16
  %i.jr = and i64 %wide.trip.count421, 8
  %n.vec = and i64 %wide.trip.count421, 240       ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count421
  %min.epilog.iters.check.not.not = icmp eq i64 %i.jr, 0
  %n.vec522 = and i64 %wide.trip.count421, 248    ; 3 uses
  %cmp.n543 = icmp eq i64 %n.vec522, %wide.trip.count421
  br label %bb.an

.lr.ph348:                                        ; preds = %.lr.ph348, %.lr.ph348.preheader.new
  %indvars.iv418 = phi i64 [ 0, %.lr.ph348.preheader.new ], [ %indvars.iv.next419.7, %.lr.ph348 ] ; 10 uses
  %niter563 = phi i64 [ 0, %.lr.ph348.preheader.new ], [ %niter563.next.7, %.lr.ph348 ]
  %i.js = trunc i64 %indvars.iv418 to i8
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv418
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 21
  store i8 %i.js, ptr %i.ju, align 1, !tbaa !119
  %indvars.iv.next419 = or disjoint i64 %indvars.iv418, 1 ; 2 uses
  %i.jv = trunc i64 %indvars.iv.next419 to i8
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.next419
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 21
  store i8 %i.jv, ptr %i.jx, align 1, !tbaa !119
  %indvars.iv.next419.1 = or disjoint i64 %indvars.iv418, 2 ; 2 uses
  %i.jy = trunc i64 %indvars.iv.next419.1 to i8
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.next419.1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 21
  store i8 %i.jy, ptr %i.ka, align 1, !tbaa !119
  %indvars.iv.next419.2 = or disjoint i64 %indvars.iv418, 3 ; 2 uses
  %i.kb = trunc i64 %indvars.iv.next419.2 to i8
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.next419.2
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 21
  store i8 %i.kb, ptr %i.kd, align 1, !tbaa !119
  %indvars.iv.next419.3 = or disjoint i64 %indvars.iv418, 4 ; 2 uses
  %i.ke = trunc i64 %indvars.iv.next419.3 to i8
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.next419.3
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 21
  store i8 %i.ke, ptr %i.kg, align 1, !tbaa !119
  %indvars.iv.next419.4 = or disjoint i64 %indvars.iv418, 5 ; 2 uses
  %i.kh = trunc i64 %indvars.iv.next419.4 to i8
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.next419.4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 21
  store i8 %i.kh, ptr %i.kj, align 1, !tbaa !119
  %indvars.iv.next419.5 = or disjoint i64 %indvars.iv418, 6 ; 2 uses
  %i.kk = trunc i64 %indvars.iv.next419.5 to i8
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.next419.5
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 21
  store i8 %i.kk, ptr %i.km, align 1, !tbaa !119
  %indvars.iv.next419.6 = or disjoint i64 %indvars.iv418, 7 ; 2 uses
  %i.kn = trunc i64 %indvars.iv.next419.6 to i8
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv.next419.6
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 21
  store i8 %i.kn, ptr %i.kp, align 1, !tbaa !119
  %indvars.iv.next419.7 = add nuw nsw i64 %indvars.iv418, 8 ; 2 uses
  %niter563.next.7 = add i64 %niter563, 8         ; 2 uses
  %niter563.ncmp.7 = icmp eq i64 %niter563.next.7, %unroll_iter562
  br i1 %niter563.ncmp.7, label %.lr.ph358.unr-lcssa, label %.lr.ph348

._crit_edge359:                                   ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %xtraiter572 = and i64 %wide.trip.count421, 3   ; 3 uses
  %i.kq = icmp ult i8 %.0216.lcssa, 4
  br i1 %i.kq, label %.lr.ph362.epil.preheader, label %._crit_edge359.new

._crit_edge359.new:                               ; preds = %._crit_edge359
  %unroll_iter576 = and i64 %wide.trip.count421, 252
  br label %.lr.ph362

bb.an:                                            ; preds = %.lr.ph358, %.loopexit
  %indvars.iv433 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next434, %.loopexit ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv433 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 20
  %i.kt = load i8, ptr %i.ks, align 4, !tbaa !122 ; 2 uses
  %.not379 = icmp eq i8 %i.kt, 0
  br i1 %.not379, label %.loopexit, label %.lr.ph353

.lr.ph353:                                        ; preds = %bb.an
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 21
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !119 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 22
  %wide.trip.count426 = zext i8 %i.kt to i64
  br label %bb.ao

._crit_edge354:                                   ; preds = %bb.at
  %.not243 = icmp eq i32 %.2201, -1
  br i1 %.not243, label %.loopexit, label %iter.check

bb.ao:                                            ; preds = %.lr.ph353, %bb.at
  %indvars.iv423 = phi i64 [ 0, %.lr.ph353 ], [ %indvars.iv.next424, %bb.at ] ; 2 uses
  %.0198350 = phi i32 [ 0, %.lr.ph353 ], [ %.2, %bb.at ] ; 5 uses
  %.0199349 = phi i32 [ -1, %.lr.ph353 ], [ %.2201, %bb.at ] ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %indvars.iv423
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !66  ; 2 uses
  %i.la = zext i8 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.la ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 21
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !119 ; 4 uses
  %i.le = icmp eq i8 %i.kw, %i.ld
  br i1 %i.le, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lf = load i8, ptr %i.kx, align 2, !tbaa !121
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 22
  %i.lh = load i8, ptr %i.lg, align 2, !tbaa !121
  %.not244 = icmp eq i8 %i.lf, %i.lh
  br i1 %.not244, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.li = load i32, ptr %i.lb, align 4, !tbaa !120 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, %.0198350
  br i1 %i.lj, label %.lr.ph22.i, label %bb.at

.lr.ph22.i:                                       ; preds = %bb.aq, %.loopexit.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.loopexit.i ], [ 0, %bb.aq ] ; 2 uses
  %.01720.i = phi i32 [ %.3.i, %.loopexit.i ], [ 0, %bb.aq ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv27.i ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 21
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !119
  %.not.i266 = icmp eq i8 %i.lm, %i.kw
  br i1 %.not.i266, label %bb.ar, label %.loopexit.i

bb.ar:                                            ; preds = %.lr.ph22.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 20
  %i.lo = load i8, ptr %i.ln, align 4, !tbaa !122 ; 4 uses
  %.not25.i = icmp eq i8 %i.lo, 0
  br i1 %.not25.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 4 ; 3 uses
  %wide.trip.count.i = zext i8 %i.lo to i64       ; 2 uses
  %xtraiter565 = and i64 %wide.trip.count.i, 1
  %i.lq = icmp eq i8 %i.lo, 1
  br i1 %i.lq, label %.epil.preheader564, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter570 = and i64 %wide.trip.count.i, 254
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.as ] ; 3 uses
  %.118.i = phi i32 [ %.01720.i, %.lr.ph.i.new ], [ %spec.select.i.1, %bb.as ]
  %niter571 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter571.next.1, %bb.as ]
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv.i
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !66
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 21
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !119
  %i.lx = icmp eq i8 %i.lw, %i.ld
  %i.ly = zext i1 %i.lx to i32
  %spec.select.i = add nsw i32 %.118.i, %i.ly
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !66
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 21
end_hunk_0
