Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@_provide_raster_mask:bb.a
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fh = and i32 %invariant.op, 1
  %i.fi = add nsw i64 %wide.trip.count, -1
  br label %.preheader104

.preheader104.lr.ph.split.split.us:               ; preds = %.preheader104.lr.ph.split
  %invariant.op114 = add i32 %invariant.op110, 600
  %wide.trip.count136 = zext nneg i32 %i.eu to i64
  %wide.trip.count131 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter193 = and i64 %wide.trip.count131, 1
  %i.fj = icmp eq i32 %.pre, 1
  %unroll_iter = and i64 %wide.trip.count131, 2147483646
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %lcmp.mod195 = trunc i32 %.pre to i1
  br label %.preheader104.us

.preheader104.us:                                 ; preds = %._crit_edge.split.us.us, %.preheader104.lr.ph.split.split.us
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %._crit_edge.split.us.us ], [ 0, %.preheader104.lr.ph.split.split.us ] ; 3 uses
  %i.fk = mul nuw nsw i64 %indvars.iv133, %i.ex   ; 3 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv133 to i32
  %.reass115 = add i32 %invariant.op114, %i.fl
  %i.fm = srem i32 %.reass115, 6
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [6 x i8], ptr %i.et, i64 %i.fn ; 3 uses
  br i1 %i.fj, label %fcol.exit.us.us.epil.preheader, label %fcol.exit.us.us

fcol.exit.us.us:                                  ; preds = %.preheader104.us, %fcol.exit.us.us
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.1, %fcol.exit.us.us ], [ 0, %.preheader104.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %fcol.exit.us.us ], [ 0, %.preheader104.us ]
  %i.fp = add nuw nsw i64 %i.fk, %indvars.iv128   ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv128 to i32
  %.reass108.us = add i32 %invariant.op107, %i.fq
  %i.fr = srem i32 %.reass108.us, 6
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !97
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !12
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, f0x3F733333 ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn olt float %i.fy, 5.000000e-01
  %spec.select101.us.us = select i1 %i.fz, float 5.000000e-01, float %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fp
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !12
  %i.gc = fsub reassoc nsz arcp contract afn float %i.gb, %spec.select101.us.us
  %i.gd = fdiv reassoc nsz arcp contract afn float %i.gc, %spec.select101.us.us ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gd, 0.000000e+00
  %i.gf = select reassoc nsz arcp contract afn i1 %i.ge, float 0.000000e+00, float %i.gd
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.fp
  store float %i.gf, ptr %i.gg, align 4, !tbaa !12
  %indvars.iv.next129 = or disjoint i64 %indvars.iv128, 1 ; 2 uses
  %i.gh = add nuw nsw i64 %i.fk, %indvars.iv.next129 ; 2 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv.next129 to i32
  %.reass108.us.1 = add i32 %invariant.op107, %i.gi
  %i.gj = srem i32 %.reass108.us.1, 6
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.fo, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !97
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !12
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, f0x3F733333 ; 2 uses
  %i.gr = fcmp reassoc nsz arcp contract afn olt float %i.gq, 5.000000e-01
  %spec.select101.us.us.1 = select i1 %i.gr, float 5.000000e-01, float %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gh
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !12
  %i.gu = fsub reassoc nsz arcp contract afn float %i.gt, %spec.select101.us.us.1
  %i.gv = fdiv reassoc nsz arcp contract afn float %i.gu, %spec.select101.us.us.1 ; 2 uses
  %i.gw = fcmp reassoc nsz arcp contract afn olt float %i.gv, 0.000000e+00
  %i.gx = select reassoc nsz arcp contract afn i1 %i.gw, float 0.000000e+00, float %i.gv
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gh
  store float %i.gx, ptr %i.gy, align 4, !tbaa !12
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.us.unr-lcssa, label %fcol.exit.us.us

._crit_edge.split.us.us.unr-lcssa:                ; preds = %fcol.exit.us.us
  br i1 %lcmp.mod194.not, label %._crit_edge.split.us.us, label %fcol.exit.us.us.epil.preheader

fcol.exit.us.us.epil.preheader:                   ; preds = %._crit_edge.split.us.us.unr-lcssa, %.preheader104.us
  %indvars.iv128.epil.init = phi i64 [ 0, %.preheader104.us ], [ %indvars.iv.next129.1, %._crit_edge.split.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.gz = add nuw nsw i64 %i.fk, %indvars.iv128.epil.init ; 2 uses
  %i.ha = trunc nuw nsw i64 %indvars.iv128.epil.init to i32
  %.reass108.us.epil = add i32 %invariant.op107, %i.ha
  %i.hb = srem i32 %.reass108.us.epil, 6
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %i.fo, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !97
  %i.hf = zext i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !12
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, f0x3F733333 ; 2 uses
  %i.hj = fcmp reassoc nsz arcp contract afn olt float %i.hi, 5.000000e-01
  %spec.select101.us.us.epil = select i1 %i.hj, float 5.000000e-01, float %i.hi ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gz
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !12
  %i.hm = fsub reassoc nsz arcp contract afn float %i.hl, %spec.select101.us.us.epil
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.hm, %spec.select101.us.us.epil ; 2 uses
  %i.ho = fcmp reassoc nsz arcp contract afn olt float %i.hn, 0.000000e+00
  %i.hp = select reassoc nsz arcp contract afn i1 %i.ho, float 0.000000e+00, float %i.hn
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gz
  store float %i.hp, ptr %i.hq, align 4, !tbaa !12
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.unr-lcssa, %fcol.exit.us.us.epil.preheader
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit, label %.preheader104.us

.preheader104:                                    ; preds = %.preheader104.preheader, %._crit_edge.split
  %indvars.iv123 = phi i64 [ 0, %.preheader104.preheader ], [ %indvars.iv.next124, %._crit_edge.split ] ; 3 uses
  %i.hr = mul nuw nsw i64 %indvars.iv123, %i.ex   ; 4 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv123 to i32
  %.reass111 = add i32 %invariant.op110, %i.hs
  %i.ht = shl i32 %.reass111, 1
  %i.hu = and i32 %i.ht, 14                       ; 4 uses
  br i1 %or.cond187, label %fcol.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader104
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hv = add nuw nsw i64 %i.hr, %index           ; 2 uses
  %i.hw = add <8 x i32> %broadcast.splat163, %vec.ind
  %i.hx = and <8 x i32> %i.hw, splat (i32 1)
  %i.hy = or disjoint <8 x i32> %i.hx, %broadcast.splat
  %i.hz = shl nuw nsw <8 x i32> %i.hy, splat (i32 1)
  %i.ia = lshr <8 x i32> %broadcast.splat165, %i.hz
  %i.ib = and <8 x i32> %i.ia, splat (i32 3)
  %i.ic = zext nneg <8 x i32> %i.ib to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.b, <8 x i64> %i.ic
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float f0x3F733333) ; 2 uses
  %i.ie = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.id, splat (float 5.000000e-01)
  %i.if = select <8 x i1> %i.ie, <8 x float> splat (float 5.000000e-01), <8 x float> %i.id ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hv
  %wide.load = load <8 x float>, ptr %i.ig, align 4, !tbaa !12
  %i.ih = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.if
  %i.ii = fdiv reassoc nsz arcp contract afn <8 x float> %i.ih, %i.if ; 2 uses
  %i.ij = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ii, zeroinitializer
  %i.ik = select reassoc nsz arcp contract afn <8 x i1> %i.ij, <8 x float> zeroinitializer, <8 x float> %i.ii
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hv
  store <8 x float> %i.ik, ptr %i.il, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %fcol.exit.preheader

fcol.exit.preheader:                              ; preds = %.preheader104, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader104 ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %fcol.exit.prol.loopexit, label %fcol.exit.prol

fcol.exit.prol:                                   ; preds = %fcol.exit.preheader
  %i.in = add nuw nsw i64 %i.hr, %indvars.iv.ph   ; 2 uses
  %.tr.i.i.prol = or disjoint i32 %i.fh, %i.hu
  %i.io = shl nuw nsw i32 %.tr.i.i.prol, 1
  %i.ip = lshr i32 %i.q, %i.io
  %i.iq = and i32 %i.ip, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, f0x3F733333 ; 2 uses
  %i.iv = fcmp reassoc nsz arcp contract afn olt float %i.iu, 5.000000e-01
  %spec.select101.prol = select i1 %i.iv, float 5.000000e-01, float %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.in
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !12
  %i.iy = fsub reassoc nsz arcp contract afn float %i.ix, %spec.select101.prol
  %i.iz = fdiv reassoc nsz arcp contract afn float %i.iy, %spec.select101.prol ; 2 uses
  %i.ja = fcmp reassoc nsz arcp contract afn olt float %i.iz, 0.000000e+00
  %i.jb = select reassoc nsz arcp contract afn i1 %i.ja, float 0.000000e+00, float %i.iz
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.in
  store float %i.jb, ptr %i.jc, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %fcol.exit.prol.loopexit

fcol.exit.prol.loopexit:                          ; preds = %fcol.exit.prol, %fcol.exit.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %fcol.exit.preheader ], [ %indvars.iv.next.prol, %fcol.exit.prol ] ; 2 uses
  %i.jd = icmp eq i64 %indvars.iv.ph, %i.fi
  br i1 %i.jd, label %._crit_edge.split, label %fcol.exit.preheader.new

fcol.exit.preheader.new:                          ; preds = %fcol.exit.prol.loopexit
  %i.je = trunc nsw i64 %indvars.iv.unr to i32
  %i.jf = add i32 %i.ff, %i.je
  %i.jg = and i32 %i.jf, 1
  %.tr.i.i = or disjoint i32 %i.jg, %i.hu
  %i.jh = shl nuw nsw i32 %.tr.i.i, 1
  %i.ji = lshr i32 %i.q, %i.jh
  %i.jj = and i32 %i.ji, 3
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jk
  br label %fcol.exit

._crit_edge.split:                                ; preds = %fcol.exit.prol.loopexit, %fcol.exit, %middle.block
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.loopexit, label %.preheader104

fcol.exit:                                        ; preds = %fcol.exit, %fcol.exit.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %fcol.exit.preheader.new ], [ %indvars.iv.next.1, %fcol.exit ] ; 3 uses
  %i.jm = add nuw nsw i64 %i.hr, %indvars.iv      ; 2 uses
  %5 = load float, ptr %i.jl, align 4, !tbaa !12
  %6 = fmul reassoc nsz arcp contract afn float %5, f0x3F733333 ; 2 uses
  %7 = fcmp reassoc nsz arcp contract afn olt float %6, 5.000000e-01
  %spec.select101 = select i1 %7, float 5.000000e-01, float %6 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !12
  %i.jp = fsub reassoc nsz arcp contract afn float %i.jo, %spec.select101
  %8 = fdiv reassoc nsz arcp contract afn float %i.jp, %spec.select101 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn olt float %8, 0.000000e+00
  %i.jr = select reassoc nsz arcp contract afn i1 %i.jq, float 0.000000e+00, float %8
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jm
  store float %i.jr, ptr %i.js, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jt = add nuw nsw i64 %i.hr, %indvars.iv.next ; 2 uses
  %i.ju = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.ju
  %i.jv = and i32 %.reass.1, 1
  %.tr.i.i.1 = or disjoint i32 %i.jv, %i.hu
  %i.jw = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.jx = lshr i32 %i.q, %i.jw
  %i.jy = and i32 %i.jx, 3
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !12
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, f0x3F733333 ; 2 uses
  %i.kd = fcmp reassoc nsz arcp contract afn olt float %i.kc, 5.000000e-01
  %spec.select101.1 = select i1 %i.kd, float 5.000000e-01, float %i.kc ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jt
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !12
  %i.kg = fsub reassoc nsz arcp contract afn float %i.kf, %spec.select101.1
  %i.kh = fdiv reassoc nsz arcp contract afn float %i.kg, %spec.select101.1 ; 2 uses
  %i.ki = fcmp reassoc nsz arcp contract afn olt float %i.kh, 0.000000e+00
  %i.kj = select reassoc nsz arcp contract afn i1 %i.ki, float 0.000000e+00, float %i.kh
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jt
  store float %i.kj, ptr %i.kk, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.split, label %fcol.exit, !llvm.loop !476

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %._crit_edge, %bb.d, %.preheader104.lr.ph, %.preheader103, %.preheader.lr.ph
  %i.kl = phi i32 [ %i.eu, %._crit_edge.split.us.us ], [ %i.ah, %._crit_edge ], [ %i.ah, %.preheader.lr.ph ], [ %i.eu, %bb.d ], [ %i.eu, %.preheader104.lr.ph ], [ %i.ah, %.preheader103 ], [ %i.eu, %._crit_edge.split ]
  %i.km = phi i32 [ %.pre, %._crit_edge.split.us.us ], [ %.pre152, %._crit_edge ], [ %.pre152, %.preheader.lr.ph ], [ %.pre, %bb.d ], [ %.pre, %.preheader104.lr.ph ], [ %.pre152, %.preheader103 ], [ %.pre, %._crit_edge.split ]
  tail call void @dt_gaussian_fast_blur(ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i32 noundef %i.km, i32 noundef %i.kl, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 1) #33
  tail call void @free(ptr noundef nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.091 = phi ptr [ %i.k, %.loopexit ], [ null, %bb.b ]
  ret ptr %.091
}

declare void @dt_iop_piece_set_raster(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interpolate_color_xtrans(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 -1, 2) %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef range(i32 0, 4) %9) unnamed_addr #16 {
bb.a:
  %i.a = alloca [3 x [3 x i32]], align 16         ; 12 uses
  %i.b = alloca [4 x float], align 16             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -3, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 3, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_laplacian_bayer.wb, i64 16, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 13 uses
  %i.j = select i1 %i.i, i32 0, i32 %6
  %i.k = select i1 %i.i, i32 %6, i32 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !79   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %.inv175 = icmp slt i32 %5, 0
  %i.p = select i1 %.inv175, i64 %i.o, i64 %i.n   ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.inv175187 = icmp slt i32 %5, 0
  %i.r = select i1 %.inv175187, i64 -1, i64 1     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79   ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = sub nsw i64 %i.r, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.in176.v = phi i64 [ 8, %bb.c ], [ 12, %bb.b ]
  %i.w = phi i32 [ %i.t, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.x = phi i64 [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %i.y = phi i64 [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 5 uses
  %i.z = phi i64 [ %i.u, %bb.c ], [ 1, %bb.b ]
  %i.aa = icmp eq i32 %5, 1                       ; 2 uses
  %.in176 = getelementptr inbounds nuw i8, ptr %3, i64 %.in176.v
  %i.ab = load i32, ptr %.in176, align 4, !tbaa !15 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1
  %.0163 = select i1 %i.aa, i32 0, i32 %i.ac      ; 4 uses
  %.0162 = select i1 %i.aa, i32 %i.ab, i32 -1     ; 2 uses
  %.not178191 = icmp eq i32 %.0163, %.0162
  br i1 %.not178191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.0163.sink = select i1 %i.i, i32 %.0163, i32 %6
  %i.ad = sext i32 %.0163.sink to i64             ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  %i.ah = sext i32 %i.ag to i64
  %.sink222 = select i1 %i.i, i32 %6, i32 %.0163
  %i.ai = sext i32 %.sink222 to i64               ; 2 uses
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  %i.am = sext i32 %i.w to i64
  %i.an = mul nsw i64 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = icmp eq i32 %9, 3                       ; 2 uses
  %i.at = add nsw i32 %i.w, -1
  br label %bb.e

._crit_edge:                                      ; preds = %bb.af, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.af
  %.0158197 = phi i32 [ %.0163, %.lr.ph ], [ %i.hl, %bb.af ] ; 3 uses
  %.1196 = phi ptr [ %i.ao, %.lr.ph ], [ %i.hj, %bb.af ] ; 4 uses
  %.1161194 = phi ptr [ %i.ak, %.lr.ph ], [ %i.hk, %bb.af ] ; 7 uses
  %.0164193 = phi i32 [ %i.k, %.lr.ph ], [ %.0164..0158, %bb.af ] ; 4 uses
  %.0166192 = phi i32 [ %i.j, %.lr.ph ], [ %.0158..0166, %bb.af ] ; 4 uses
  %i.au = add nsw i32 %.0164193, -1
  %i.av = add nsw i32 %.0166192, -1
  %i.aw = add nsw i32 %.0164193, 1
  %i.ax = add nsw i32 %.0166192, 1
  %.0158..0166 = select i1 %i.i, i32 %.0158197, i32 %.0166192 ; 5 uses
  %.0164..0158 = select i1 %i.i, i32 %.0164193, i32 %.0158197 ; 5 uses
  %i.ay = add nsw i32 %.0164..0158, %5            ; 3 uses
  %i.az = select i1 %i.i, i32 %.0164193, i32 %i.ay
  %i.ba = add nsw i32 %.0158..0166, %5            ; 3 uses
  %i.bb = select i1 %i.i, i32 %i.ba, i32 %.0166192
  %i.bc = select i1 %i.i, i32 %i.au, i32 %i.ay
  %i.bd = select i1 %i.i, i32 %i.ba, i32 %i.av
  %i.be = select i1 %i.i, i32 %i.aw, i32 %i.ay
  %i.bf = select i1 %i.i, i32 %i.ba, i32 %i.ax
  %i.bg = insertelement <8 x i32> poison, i32 %.0164..0158, i64 0
  %i.bh = insertelement <8 x i32> %i.bg, i32 %.0158..0166, i64 1
  %i.bi = insertelement <8 x i32> %i.bh, i32 %i.az, i64 2
  %i.bj = insertelement <8 x i32> %i.bi, i32 %i.bb, i64 3
  %i.bk = insertelement <8 x i32> %i.bj, i32 %i.bc, i64 4
  %i.bl = insertelement <8 x i32> %i.bk, i32 %i.bd, i64 5
  %i.bm = insertelement <8 x i32> %i.bl, i32 %i.be, i64 6
  %i.bn = insertelement <8 x i32> %i.bm, i32 %i.bf, i64 7
  %i.bo = add nsw <8 x i32> %i.bn, splat (i32 600)
  %i.bp = srem <8 x i32> %i.bo, splat (i32 6)     ; 8 uses
  %i.bq = extractelement <8 x i32> %i.bp, i64 0
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [6 x i8], ptr %8, i64 %i.br
  %i.bt = extractelement <8 x i32> %i.bp, i64 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !97  ; 3 uses
  %i.bx = extractelement <8 x i32> %i.bp, i64 2
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [6 x i8], ptr %8, i64 %i.by
  %i.ca = extractelement <8 x i32> %i.bp, i64 3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !97  ; 2 uses
  %i.ce = extractelement <8 x i32> %i.bp, i64 4
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [6 x i8], ptr %8, i64 %i.cf
  %i.ch = extractelement <8 x i32> %i.bp, i64 5
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !97  ; 2 uses
  %i.cl = extractelement <8 x i32> %i.bp, i64 6
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [6 x i8], ptr %8, i64 %i.cm
  %i.co = extractelement <8 x i32> %i.bp, i64 7
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !97
  %i.cs = zext i8 %i.cr to i64                    ; 2 uses
  %i.ct = zext i8 %i.bw to i64                    ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12 ; 6 uses
  %i.cw = zext i8 %i.cd to i64                    ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12 ; 3 uses
  %i.cz = zext i8 %i.ck to i64                    ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cs
end_hunk_0
