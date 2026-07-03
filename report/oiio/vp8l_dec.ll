inline.NumInlined: 127
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@VP8LDecodeAlphaImageStream:bb.a
  %i.fs = add nsw i32 %i.fq, %i.fr                ; 2 uses
  store i32 %i.fs, ptr %i.at, align 8, !tbaa !49
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i157.i, i64 2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !40 ; 2 uses
  %i.fv = zext i16 %i.fu to i32                   ; 3 uses
  %i.fw = icmp sgt i32 %i.fs, 31
  br i1 %i.fw, label %bb.v, label %VP8LFillBitWindow.exit161.i

bb.v:                                             ; preds = %ReadSymbol.exit160.i
  tail call void @VP8LDoFillBitWindow(ptr noundef nonnull %i.q) #8
  br label %VP8LFillBitWindow.exit161.i

VP8LFillBitWindow.exit161.i:                      ; preds = %bb.v, %ReadSymbol.exit160.i
  %i.fx = icmp ult i16 %i.fu, 4
  br i1 %i.fx, label %GetCopyDistance.exit.i, label %bb.w

bb.w:                                             ; preds = %VP8LFillBitWindow.exit161.i
  %i.fy = add nsw i32 %i.fv, -2
  %i.fz = lshr i32 %i.fy, 1                       ; 2 uses
  %i.ga = and i32 %i.fv, 1
  %i.gb = or disjoint i32 %i.ga, 2
  %i.gc = shl i32 %i.gb, %i.fz
  %i.gd = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.q, i32 noundef %i.fz) #8
  %i.ge = add i32 %i.gd, %i.gc
  br label %GetCopyDistance.exit.i

GetCopyDistance.exit.i:                           ; preds = %bb.w, %VP8LFillBitWindow.exit161.i
  %.0.in.i.i = phi i32 [ %i.ge, %bb.w ], [ %i.fv, %VP8LFillBitWindow.exit161.i ] ; 2 uses
  %.0.i162.i = add i32 %.0.in.i.i, 1              ; 2 uses
  %i.gf = icmp sgt i32 %.0.i162.i, 120
  br i1 %i.gf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %GetCopyDistance.exit.i
  %i.gg = add nsw i32 %.0.in.i.i, -119
  br label %PlaneCodeToDistance.exit.i

bb.y:                                             ; preds = %GetCopyDistance.exit.i
  %i.gh = sext i32 %.0.i162.i to i64
  %i.gi = getelementptr i8, ptr @kCodeToPlane, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 -1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !7
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = lshr i32 %i.gl, 4
  %i.gn = and i32 %i.gl, 15
  %i.go = mul nsw i32 %i.gm, %i.j
  %reass.sub = sub i32 %i.go, %i.gn
  %i.gp = add i32 %reass.sub, 8
  %i.gq = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 1)
  br label %PlaneCodeToDistance.exit.i

PlaneCodeToDistance.exit.i:                       ; preds = %bb.y, %bb.x
  %.0.i163.i = phi i32 [ %i.gg, %bb.x ], [ %i.gq, %bb.y ] ; 5 uses
  %.not135.i = icmp slt i32 %.0116229.i, %.0.i163.i
  %i.gr = sub nsw i32 %i.r, %.0116229.i
  %.not136.i = icmp slt i32 %i.gr, %.0.i.i154.i
  %or.cond146.i = select i1 %.not135.i, i1 true, i1 %.not136.i
  br i1 %or.cond146.i, label %.thread203.i, label %bb.z

bb.z:                                             ; preds = %PlaneCodeToDistance.exit.i
  %i.gs = zext nneg i32 %.0116229.i to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gs ; 16 uses
  %i.gu = zext i32 %.0.i163.i to i64
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv ; 17 uses
  %i.gx = icmp sgt i32 %.0.i.i154.i, 7
  br i1 %i.gx, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  switch i32 %.0.i163.i, label %bb.ae [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !7
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nuw i32 %i.gz, 16843009
  br label %.critedge.i.i

bb.ac:                                            ; preds = %bb.aa
  %.0.copyload8.i.i = load i16, ptr %i.gw, align 1
  %.0.insert.ext.i.i = zext i16 %.0.copyload8.i.i to i32
  %i.hb = mul nuw i32 %.0.insert.ext.i.i, 65537
  br label %.critedge.i.i

bb.ad:                                            ; preds = %bb.aa
  %.0.copyload.i.i = load i32, ptr %i.gw, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ad, %bb.ac, %bb.ab
  %.027.i.i = phi i32 [ %i.ha, %bb.ab ], [ %i.hb, %bb.ac ], [ %.0.copyload.i.i, %bb.ad ] ; 8 uses
  %i.hc = ptrtoint ptr %i.gt to i64
  %i.hd = and i64 %i.hc, 3
  %.not22.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not22.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i164.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i164.i, %.lr.ph.i.i164.i.1, %.lr.ph.i.i164.i.2, %.lr.ph.i.i164.i.3, %.critedge.i.i
  %.021.lcssa.i.i.i = phi ptr [ %i.gw, %.critedge.i.i ], [ %i.hj, %.lr.ph.i.i164.i ], [ %i.hp, %.lr.ph.i.i164.i.1 ], [ %i.hw, %.lr.ph.i.i164.i.2 ], [ %i.id, %.lr.ph.i.i164.i.3 ] ; 8 uses
  %.020.lcssa.i.i.i = phi ptr [ %i.gt, %.critedge.i.i ], [ %i.hl, %.lr.ph.i.i164.i ], [ %i.hr, %.lr.ph.i.i164.i.1 ], [ %i.hy, %.lr.ph.i.i164.i.2 ], [ %i.if, %.lr.ph.i.i164.i.3 ] ; 10 uses
  %.019.lcssa.i.i.i = phi i32 [ %.0.i.i154.i, %.critedge.i.i ], [ %.0.in.i.i.i, %.lr.ph.i.i164.i ], [ %i.ht, %.lr.ph.i.i164.i.1 ], [ %i.ia, %.lr.ph.i.i164.i.2 ], [ %i.ig, %.lr.ph.i.i164.i.3 ] ; 3 uses
  %.018.lcssa.i.i.i = phi i32 [ %.027.i.i, %.critedge.i.i ], [ %i.hm, %.lr.ph.i.i164.i ], [ %i.hs, %.lr.ph.i.i164.i.1 ], [ %i.hz, %.lr.ph.i.i164.i.2 ], [ %.027.i.i, %.lr.ph.i.i164.i.3 ] ; 2 uses
  %.020.lcssa.i.i.i91 = ptrtoaddr ptr %.020.lcssa.i.i.i to i64
  %.021.lcssa.i.i.i92 = ptrtoaddr ptr %.021.lcssa.i.i.i to i64
  %i.he = ashr i32 %.019.lcssa.i.i.i, 2           ; 5 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph31.preheader.i.i.i, label %._crit_edge.i.i166.i

.lr.ph31.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.he to i64 ; 3 uses
  %min.iters.check123 = icmp ult i32 %i.he, 8
  br i1 %min.iters.check123, label %.lr.ph31.i.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph31.preheader.i.i.i
  %n.vec126 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.018.lcssa.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next129, %vector.body127 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.020.lcssa.i.i.i, i64 %index128 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.hg, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.hh, align 4, !tbaa !3
  %index.next129 = add nuw i64 %index128, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next129, %n.vec126
  br i1 %i.hi, label %middle.block130, label %vector.body127, !llvm.loop !113

middle.block130:                                  ; preds = %vector.body127
  %cmp.n131 = icmp eq i64 %n.vec126, %wide.trip.count.i.i.i
  br i1 %cmp.n131, label %._crit_edge.i.i166.i, label %.lr.ph31.i.i.i.preheader

.lr.ph31.i.i.i.preheader:                         ; preds = %.lr.ph31.preheader.i.i.i, %middle.block130
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph31.preheader.i.i.i ], [ %n.vec126, %middle.block130 ]
  br label %.lr.ph31.i.i.i

.lr.ph.i.i164.i:                                  ; preds = %.critedge.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 1 ; 2 uses
  %i.hk = load i8, ptr %i.gw, align 1, !tbaa !7
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 3 uses
  store i8 %i.hk, ptr %i.gt, align 1, !tbaa !7
  %i.hm = tail call noundef i32 @llvm.fshl.i32(i32 %.027.i.i, i32 %.027.i.i, i32 24)
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = and i64 %i.hn, 3
  %.not.i.i165.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i165.i, label %.preheader.i.i.i, label %.lr.ph.i.i164.i.1

.lr.ph.i.i164.i.1:                                ; preds = %.lr.ph.i.i164.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 2 ; 2 uses
  %i.hq = load i8, ptr %i.hj, align 1, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 3 uses
  store i8 %i.hq, ptr %i.hl, align 1, !tbaa !7
  %i.hs = tail call i32 @llvm.fshl.i32(i32 %.027.i.i, i32 %.027.i.i, i32 16)
  %i.ht = add nsw i32 %.0.in.i.i.i, -1
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = and i64 %i.hu, 3
  %.not.i.i165.i.1 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i165.i.1, label %.preheader.i.i.i, label %.lr.ph.i.i164.i.2

.lr.ph.i.i164.i.2:                                ; preds = %.lr.ph.i.i164.i.1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gw, i64 3 ; 2 uses
  %i.hx = load i8, ptr %i.hp, align 1, !tbaa !7
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gt, i64 3 ; 3 uses
  store i8 %i.hx, ptr %i.hr, align 1, !tbaa !7
  %i.hz = tail call i32 @llvm.fshl.i32(i32 %.027.i.i, i32 %.027.i.i, i32 8)
  %i.ia = add nsw i32 %.0.in.i.i.i, -2
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = and i64 %i.ib, 3
  %.not.i.i165.i.2 = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i165.i.2, label %.preheader.i.i.i, label %.lr.ph.i.i164.i.3

.lr.ph.i.i164.i.3:                                ; preds = %.lr.ph.i.i164.i.2
  %i.id = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !7
  %i.if = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store i8 %i.ie, ptr %i.hy, align 1, !tbaa !7
  %i.ig = add nsw i32 %.0.in.i.i.i, -3
  br label %.preheader.i.i.i

.lr.ph31.i.i.i:                                   ; preds = %.lr.ph31.i.i.i.preheader, %.lr.ph31.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph31.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph31.i.i.i.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.020.lcssa.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %.018.lcssa.i.i.i, ptr %i.ih, align 4, !tbaa !3
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i167.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i167.i, label %._crit_edge.i.i166.i, label %.lr.ph31.i.i.i, !llvm.loop !114

._crit_edge.i.i166.i:                             ; preds = %.lr.ph31.i.i.i, %middle.block130, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.he, %middle.block130 ], [ %i.he, %.lr.ph31.i.i.i ] ; 2 uses
  %i.ii = shl nuw nsw i32 %.0.lcssa.i.i.i, 2
  %i.ij = icmp slt i32 %i.ii, %.019.lcssa.i.i.i
  br i1 %i.ij, label %iter.check109, label %CopyBlock8b.exit.i

iter.check109:                                    ; preds = %._crit_edge.i.i166.i
  %i.ik = zext nneg i32 %.0.lcssa.i.i.i to i64
  %i.il = shl nuw nsw i64 %i.ik, 2                ; 6 uses
  %wide.trip.count46.i.i.i = zext nneg i32 %.019.lcssa.i.i.i to i64 ; 4 uses
  %i.im = sub nsw i64 %wide.trip.count46.i.i.i, %i.il ; 7 uses
  %min.iters.check94 = icmp ult i64 %i.im, 8
  %i.in = sub i64 %.020.lcssa.i.i.i91, %.021.lcssa.i.i.i92
  %diff.check93 = icmp ult i64 %i.in, 32
  %or.cond = select i1 %min.iters.check94, i1 true, i1 %diff.check93
  br i1 %or.cond, label %.lr.ph35.i.i.i.preheader, label %vector.main.loop.iter.check95

vector.main.loop.iter.check95:                    ; preds = %iter.check109
  %min.iters.check96 = icmp ult i64 %i.im, 32
  br i1 %min.iters.check96, label %vec.epilog.ph113, label %vector.ph97

vector.ph97:                                      ; preds = %vector.main.loop.iter.check95
  %n.mod.vf98 = and i64 %i.im, 24
  %n.vec99 = and i64 %i.im, -32                   ; 4 uses
  %i.io = add nsw i64 %i.il, %n.vec99
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph97
  %index101 = phi i64 [ 0, %vector.ph97 ], [ %index.next104, %vector.body100 ] ; 2 uses
  %i.ip = add i64 %i.il, %index101                ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load102 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !7
  %wide.load103 = load <16 x i8>, ptr %i.ir, align 1, !tbaa !7
  %i.is = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %i.ip ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <16 x i8> %wide.load102, ptr %i.is, align 1, !tbaa !7
  store <16 x i8> %wide.load103, ptr %i.it, align 1, !tbaa !7
  %index.next104 = add nuw i64 %index101, 32      ; 2 uses
  %i.iu = icmp eq i64 %index.next104, %n.vec99
  br i1 %i.iu, label %middle.block105, label %vector.body100, !llvm.loop !115

middle.block105:                                  ; preds = %vector.body100
  %cmp.n106 = icmp eq i64 %i.im, %n.vec99
  br i1 %cmp.n106, label %CopyBlock8b.exit.i, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block105
  %min.epilog.iters.check112 = icmp eq i64 %n.mod.vf98, 0
  br i1 %min.epilog.iters.check112, label %.lr.ph35.i.i.i.preheader, label %vec.epilog.ph113, !prof !116

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check95, %vec.epilog.iter.check111
  %vec.epilog.resume.val107 = phi i64 [ %n.vec99, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check95 ]
  %n.vec115 = and i64 %i.im, -8                   ; 3 uses
  %i.iv = add nsw i64 %i.il, %n.vec115
  br label %vec.epilog.vector.body116

vec.epilog.vector.body116:                        ; preds = %vec.epilog.vector.body116, %vec.epilog.ph113
  %index117 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph113 ], [ %index.next119, %vec.epilog.vector.body116 ] ; 2 uses
  %i.iw = add i64 %i.il, %index117                ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %i.iw
  %wide.load118 = load <8 x i8>, ptr %i.ix, align 1, !tbaa !7
  %i.iy = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %i.iw
  store <8 x i8> %wide.load118, ptr %i.iy, align 1, !tbaa !7
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.iz, label %vec.epilog.middle.block120, label %vec.epilog.vector.body116, !llvm.loop !117

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body116
  %cmp.n121 = icmp eq i64 %i.im, %n.vec115
  br i1 %cmp.n121, label %CopyBlock8b.exit.i, label %.lr.ph35.i.i.i.preheader

.lr.ph35.i.i.i.preheader:                         ; preds = %iter.check109, %vec.epilog.iter.check111, %vec.epilog.middle.block120
  %indvars.iv43.i.i.i.ph = phi i64 [ %i.il, %iter.check109 ], [ %i.io, %vec.epilog.iter.check111 ], [ %i.iv, %vec.epilog.middle.block120 ] ; 4 uses
  %i.ja = sub nsw i64 %wide.trip.count46.i.i.i, %indvars.iv43.i.i.i.ph
  %xtraiter = and i64 %i.ja, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph35.i.i.i.prol.loopexit, label %.lr.ph35.i.i.i.prol

.lr.ph35.i.i.i.prol:                              ; preds = %.lr.ph35.i.i.i.preheader, %.lr.ph35.i.i.i.prol
  %indvars.iv43.i.i.i.prol = phi i64 [ %indvars.iv.next44.i.i.i.prol, %.lr.ph35.i.i.i.prol ], [ %indvars.iv43.i.i.i.ph, %.lr.ph35.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph35.i.i.i.prol ], [ 0, %.lr.ph35.i.i.i.preheader ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv43.i.i.i.prol
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !7
  %i.jd = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv43.i.i.i.prol
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.prol = add nuw nsw i64 %indvars.iv43.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph35.i.i.i.prol.loopexit, label %.lr.ph35.i.i.i.prol, !llvm.loop !118

.lr.ph35.i.i.i.prol.loopexit:                     ; preds = %.lr.ph35.i.i.i.prol, %.lr.ph35.i.i.i.preheader
  %indvars.iv43.i.i.i.unr = phi i64 [ %indvars.iv43.i.i.i.ph, %.lr.ph35.i.i.i.preheader ], [ %indvars.iv.next44.i.i.i.prol, %.lr.ph35.i.i.i.prol ]
  %i.je = sub nsw i64 %indvars.iv43.i.i.i.ph, %wide.trip.count46.i.i.i
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %CopyBlock8b.exit.i, label %.lr.ph35.i.i.i

.lr.ph35.i.i.i:                                   ; preds = %.lr.ph35.i.i.i.prol.loopexit, %.lr.ph35.i.i.i
  %indvars.iv43.i.i.i = phi i64 [ %indvars.iv.next44.i.i.i.3, %.lr.ph35.i.i.i ], [ %indvars.iv43.i.i.i.unr, %.lr.ph35.i.i.i.prol.loopexit ] ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv43.i.i.i
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !7
  %i.ji = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv43.i.i.i
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i = add nuw nsw i64 %indvars.iv43.i.i.i, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !7
  %i.jl = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.1 = add nuw nsw i64 %indvars.iv43.i.i.i, 2 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !7
  %i.jo = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.1
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.2 = add nuw nsw i64 %indvars.iv43.i.i.i, 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !7
  %i.jr = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.2
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.3 = add nuw nsw i64 %indvars.iv43.i.i.i, 4 ; 2 uses
  %exitcond47.not.i.i.i.3 = icmp eq i64 %indvars.iv.next44.i.i.i.3, %wide.trip.count46.i.i.i
  br i1 %exitcond47.not.i.i.i.3, label %CopyBlock8b.exit.i, label %.lr.ph35.i.i.i, !llvm.loop !119

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %.not.i.i = icmp slt i32 %.0.i163.i, %.0.i.i154.i
  br i1 %.not.i.i, label %iter.check, label %bb.af

iter.check:                                       ; preds = %bb.ae
  %wide.trip.count.i.i = zext i32 %.0.i.i154.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.0.i.i154.i, 4
  %diff.check = icmp ult i32 %.0.i163.i, 32
  %or.cond133 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond133, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i32 %.0.i.i154.i, 32
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %wide.load = load <16 x i8>, ptr %i.js, align 1, !tbaa !7
  %wide.load83 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !7
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gt, i64 %index ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store <16 x i8> %wide.load, ptr %i.ju, align 1, !tbaa !7
  store <16 x i8> %wide.load83, ptr %i.jv, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %CopyBlock8b.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index86
  %wide.load87 = load <4 x i8>, ptr %i.jx, align 1, !tbaa !7
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %index86
  store <4 x i8> %wide.load87, ptr %i.jy, align 1, !tbaa !7
  %index.next88 = add nuw i64 %index86, 4         ; 2 uses
  %i.jz = icmp eq i64 %index.next88, %n.vec85
  br i1 %i.jz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %n.vec85, %wide.trip.count.i.i
  br i1 %cmp.n89, label %CopyBlock8b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec85, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter144 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i.i.prol
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !7
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.prol
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !7
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !123

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.kd = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ke = icmp ugt i64 %i.kd, -4
  br i1 %i.ke, label %CopyBlock8b.exit.i, label %.lr.ph.i.i

bb.af:                                            ; preds = %bb.ae
  %i.kf = sext i32 %.0.i.i154.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.gw, i64 %i.kf, i1 false)
  br label %CopyBlock8b.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i.i
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !7
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next.i.i
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !7
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next.i.i
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !7
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next.i.i.1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !7
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next.i.i.1
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !7
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next.i.i.2
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next.i.i.2
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !7
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %CopyBlock8b.exit.i, label %.lr.ph.i.i, !llvm.loop !124

CopyBlock8b.exit.i:                               ; preds = %.lr.ph35.i.i.i.prol.loopexit, %.lr.ph35.i.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block105, %vec.epilog.middle.block120, %middle.block, %vec.epilog.middle.block, %bb.af, %._crit_edge.i.i166.i
  %i.ks = add nsw i32 %.0.i.i154.i, %.0116229.i   ; 3 uses
  %i.kt = add nsw i32 %.0.i.i154.i, %.0111230.i   ; 3 uses
  %.not137223.i = icmp slt i32 %i.kt, %i.j
  br i1 %.not137223.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %CopyBlock8b.exit.i, %bb.aj
  %.1107225.i = phi i32 [ %i.kv, %bb.aj ], [ %.0106232.i, %CopyBlock8b.exit.i ] ; 4 uses
  %.1112224.i = phi i32 [ %i.ku, %bb.aj ], [ %i.kt, %CopyBlock8b.exit.i ]
  %i.ku = sub nsw i32 %.1112224.i, %i.j           ; 3 uses
  %i.kv = add nsw i32 %.1107225.i, 1              ; 6 uses
  %.not139.not.i = icmp slt i32 %.1107225.i, %1
  %i.kw = and i32 %i.kv, 15
  %i.kx = icmp eq i32 %i.kw, 0
  %or.cond148.i = select i1 %.not139.not.i, i1 %i.kx, i1 false
  br i1 %or.cond148.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ky = load ptr, ptr %i.au, align 8, !tbaa !73 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 56
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !74 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 12 ; 3 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !107
  %switch.i168.i = icmp ult i32 %i.lc, 2
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 128
  %.in.i169.i = select i1 %switch.i168.i, ptr %i.ld, ptr %i.c
  %i.le = load i32, ptr %.in.i169.i, align 4, !tbaa !3
  %i.lf = load i32, ptr %i.c, align 4, !tbaa !106
  %..i170.i = tail call i32 @llvm.smax.i32(i32 %i.lf, i32 %i.le) ; 5 uses
  %.not210.i = icmp slt i32 %.1107225.i, %..i170.i
  br i1 %.not210.i, label %ExtractPalettedAlphaRows.exit178.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lg = load i32, ptr %i.ky, align 8, !tbaa !75 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 200
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !108
  %i.lj = mul nsw i32 %i.lg, %..i170.i
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.li, i64 %i.lk ; 2 uses
  %i.lm = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.ln = load i32, ptr %i.i, align 4, !tbaa !70
  %i.lo = mul nsw i32 %i.ln, %..i170.i
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %i.lm, i64 %i.lp
  tail call void @VP8LColorIndexInverseTransformAlpha(ptr noundef nonnull %i.av, i32 noundef %..i170.i, i32 noundef %i.kv, ptr noundef %i.lq, ptr noundef %i.ll) #8
  %i.lr = load i32, ptr %i.lb, align 4, !tbaa !107
  %.not.i.i171.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i.i171.i, label %ExtractPalettedAlphaRows.exit178.i, label %.lr.ph.i.i172.i

.lr.ph.i.i172.i:                                  ; preds = %bb.ah
  %i.ls = getelementptr inbounds nuw i8, ptr %i.la, i64 208 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !109
  %i.lu = sext i32 %i.lg to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i172.i
  %.019.i.i173.i = phi ptr [ %i.lt, %.lr.ph.i.i172.i ], [ %.01617.i.i175.i, %bb.ai ]
  %.01518.i.i174.i = phi i32 [ %..i170.i, %.lr.ph.i.i172.i ], [ %i.ma, %bb.ai ] ; 2 uses
  %.01617.i.i175.i = phi ptr [ %i.ll, %.lr.ph.i.i172.i ], [ %i.lz, %bb.ai ] ; 5 uses
  %i.lv = load i32, ptr %i.lb, align 4, !tbaa !107
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr @WebPUnfilters, i64 %i.lw
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !29
  tail call void %i.ly(ptr noundef %.019.i.i173.i, ptr noundef %.01617.i.i175.i, ptr noundef %.01617.i.i175.i, i32 noundef %i.lg) #8, !inline_history !110
  %i.lz = getelementptr inbounds i8, ptr %.01617.i.i175.i, i64 %i.lu
  %i.ma = add i32 %.01518.i.i174.i, 1
  %exitcond.not.i.i176.i = icmp eq i32 %.01518.i.i174.i, %.1107225.i
  br i1 %exitcond.not.i.i176.i, label %._crit_edge.i.i177.i, label %bb.ai, !llvm.loop !111

._crit_edge.i.i177.i:                             ; preds = %bb.ai
  store ptr %.01617.i.i175.i, ptr %i.ls, align 8, !tbaa !109
  br label %ExtractPalettedAlphaRows.exit178.i

ExtractPalettedAlphaRows.exit178.i:               ; preds = %._crit_edge.i.i177.i, %bb.ah, %bb.ag
  store i32 %i.kv, ptr %i.aw, align 4, !tbaa !112
  store i32 %i.kv, ptr %i.c, align 4, !tbaa !106
  br label %bb.aj

bb.aj:                                            ; preds = %ExtractPalettedAlphaRows.exit178.i, %.lr.ph.i
  %.not137.i = icmp slt i32 %i.ku, %i.j
  br i1 %.not137.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %bb.aj, %CopyBlock8b.exit.i
  %.1112.lcssa.i = phi i32 [ %i.kt, %CopyBlock8b.exit.i ], [ %i.ku, %bb.aj ] ; 4 uses
  %.1107.lcssa.i = phi i32 [ %.0106232.i, %CopyBlock8b.exit.i ], [ %i.kv, %bb.aj ] ; 3 uses
  %i.mb = icmp sge i32 %i.ks, %i.s
  %i.mc = and i32 %.1112.lcssa.i, %i.u
  %.not138.i = icmp eq i32 %i.mc, 0
  %or.cond149.i = select i1 %i.mb, i1 true, i1 %.not138.i
  br i1 %or.cond149.i, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i
  %i.md = load i32, ptr %i.x, align 4, !tbaa !99  ; 3 uses
end_hunk_0
begin_hunk_1_@ProcessRows:bb.a
  br label %bb.m

bb.m:                                             ; preds = %ExportYUVA.exit.i, %.lr.ph.i56
  %.028.i = phi ptr [ %i.ao, %.lr.ph.i56 ], [ %i.dt, %ExportYUVA.exit.i ] ; 3 uses
  %.02327.i = phi i32 [ 0, %.lr.ph.i56 ], [ %i.dq, %ExportYUVA.exit.i ] ; 2 uses
  %.02426.i = phi i32 [ %i.df, %.lr.ph.i56 ], [ %i.fs, %ExportYUVA.exit.i ] ; 2 uses
  %i.di = sub nsw i32 %i.av, %.02327.i            ; 2 uses
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !156
  %i.dk = tail call i32 @WebPRescaleNeededLines(ptr noundef %i.dj, i32 noundef %i.di) #8 ; 2 uses
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !156
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !170
  tail call void @WebPMultARGBRows(ptr noundef %.028.i, i32 noundef %i.q, i32 noundef %i.dn, i32 noundef %i.dk, i32 noundef 0) #8
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !156
  %i.dp = tail call i32 @WebPRescalerImport(ptr noundef %i.do, i32 noundef %i.di, ptr noundef %.028.i, i32 noundef %i.q) #8
  %i.dq = add nsw i32 %i.dp, %.02327.i            ; 2 uses
  %i.dr = mul nsw i32 %i.dk, %i.q
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %.028.i, i64 %i.ds
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !156 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !172 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 52
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !173 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ea = getelementptr i8, ptr %i.du, i64 56     ; 2 uses
  %i.eb = getelementptr i8, ptr %i.du, i64 64     ; 2 uses
  %.val.i15.i.i = load i32, ptr %i.ea, align 8, !tbaa !174
  %.val2.i16.i.i = load i32, ptr %i.eb, align 8, !tbaa !175
  %.not3.i17.i.i = icmp slt i32 %.val2.i16.i.i, %.val.i15.i.i
  br i1 %.not3.i17.i.i, label %WebPRescalerHasPendingOutput.exit.lr.ph.i.i, label %ExportYUVA.exit.i

WebPRescalerHasPendingOutput.exit.lr.ph.i.i:      ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  br label %WebPRescalerHasPendingOutput.exit.i.i58

WebPRescalerHasPendingOutput.exit.i.i58:          ; preds = %ConvertToYUVA.exit.i.i, %WebPRescalerHasPendingOutput.exit.lr.ph.i.i
  %.019.i.i = phi i32 [ 0, %WebPRescalerHasPendingOutput.exit.lr.ph.i.i ], [ %i.fr, %ConvertToYUVA.exit.i.i ] ; 2 uses
  %.01318.i.i = phi i32 [ %.02426.i, %WebPRescalerHasPendingOutput.exit.lr.ph.i.i ], [ %i.fq, %ConvertToYUVA.exit.i.i ] ; 5 uses
  %i.ed = load i32, ptr %i.dz, align 8, !tbaa !176
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %ExportYUVA.exit.i, label %bb.n

bb.n:                                             ; preds = %WebPRescalerHasPendingOutput.exit.i.i58
  tail call void @WebPRescalerExportRow(ptr noundef nonnull %i.du) #8
  %i.ef = load ptr, ptr @WebPMultARGBRow, align 8, !tbaa !29
  tail call void %i.ef(ptr noundef %i.dw, i32 noundef %i.dy, i32 noundef 1) #8, !inline_history !181
  %i.eg = load ptr, ptr %i.ax, align 8, !tbaa !65 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr @WebPConvertARGBToY, align 8, !tbaa !29
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !182
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !184
  %i.em = mul nsw i32 %i.el, %.01318.i.i
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ej, i64 %i.en
  tail call void %i.ei(ptr noundef %i.dw, ptr noundef %i.eo, i32 noundef %i.dy) #8, !inline_history !185
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !186
  %i.er = ashr i32 %.01318.i.i, 1                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 52
  %i.et = load i32, ptr %i.es, align 4, !tbaa !187
  %i.eu = mul nsw i32 %i.et, %i.er
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.eq, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !188
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !189
  %i.fb = mul nsw i32 %i.fa, %i.er
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.ey, i64 %i.fc
  %i.fe = load ptr, ptr @WebPConvertARGBToUV, align 8, !tbaa !29
  %i.ff = and i32 %.01318.i.i, 1
  %i.fg = xor i32 %i.ff, 1
  tail call void %i.fe(ptr noundef %i.dw, ptr noundef %i.ew, ptr noundef %i.fd, i32 noundef %i.dy, i32 noundef %i.fg) #8, !inline_history !185
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i, label %ConvertToYUVA.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 60
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !191
  %i.fl = mul nsw i32 %i.fk, %.01318.i.i
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 %i.fm
  %i.fo = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !29
  %i.fp = tail call i32 %i.fo(ptr noundef nonnull %i.ec, i32 noundef 0, i32 noundef %i.dy, i32 noundef 1, ptr noundef nonnull %i.fn, i32 noundef 0) #8, !inline_history !185 ; 0 uses
  br label %ConvertToYUVA.exit.i.i

ConvertToYUVA.exit.i.i:                           ; preds = %bb.o, %bb.n
  %i.fq = add nsw i32 %.01318.i.i, 1
  %i.fr = add nuw nsw i32 %.019.i.i, 1            ; 2 uses
  %.val.i.i.i59 = load i32, ptr %i.ea, align 8, !tbaa !174
  %.val2.i.i.i60 = load i32, ptr %i.eb, align 8, !tbaa !175
  %.not3.i.i.i61 = icmp slt i32 %.val2.i.i.i60, %.val.i.i.i59
  br i1 %.not3.i.i.i61, label %WebPRescalerHasPendingOutput.exit.i.i58, label %ExportYUVA.exit.i, !llvm.loop !192

ExportYUVA.exit.i:                                ; preds = %ConvertToYUVA.exit.i.i, %WebPRescalerHasPendingOutput.exit.i.i58, %bb.m
  %.0.lcssa.i.i57 = phi i32 [ 0, %bb.m ], [ %i.fr, %ConvertToYUVA.exit.i.i ], [ %.019.i.i, %WebPRescalerHasPendingOutput.exit.i.i58 ]
  %i.fs = add nsw i32 %.0.lcssa.i.i57, %.02426.i  ; 2 uses
  %i.ft = icmp slt i32 %i.dq, %i.av
  br i1 %i.ft, label %bb.m, label %EmitRescaledRowsYUVA.exit, !llvm.loop !193

bb.p:                                             ; preds = %bb.k
  br i1 %i.dg, label %.lr.ph.i63, label %EmitRescaledRowsYUVA.exit

.lr.ph.i63:                                       ; preds = %bb.p
  %i.fu = sext i32 %i.q to i64
  br label %bb.q

bb.q:                                             ; preds = %ConvertToYUVA.exit.i, %.lr.ph.i63
  %.013.i = phi i32 [ %i.df, %.lr.ph.i63 ], [ %i.hi, %ConvertToYUVA.exit.i ] ; 5 uses
  %.0912.i = phi i32 [ %i.av, %.lr.ph.i63 ], [ %i.fv, %ConvertToYUVA.exit.i ] ; 2 uses
  %.01011.i = phi ptr [ %i.ao, %.lr.ph.i63 ], [ %i.hh, %ConvertToYUVA.exit.i ] ; 4 uses
  %i.fv = add nsw i32 %.0912.i, -1
  %i.fw = load ptr, ptr %i.ax, align 8, !tbaa !65 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr @WebPConvertARGBToY, align 8, !tbaa !29
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !182
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !184
  %i.gc = mul nsw i32 %i.gb, %.013.i
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.fz, i64 %i.gd
  tail call void %i.fy(ptr noundef %.01011.i, ptr noundef %i.ge, i32 noundef %i.at) #8, !inline_history !194
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !186
  %i.gh = ashr i32 %.013.i, 1                     ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 52
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !187
  %i.gk = mul nsw i32 %i.gj, %i.gh
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gg, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !188
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !189
  %i.gr = mul nsw i32 %i.gq, %i.gh
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.go, i64 %i.gs
  %i.gu = load ptr, ptr @WebPConvertARGBToUV, align 8, !tbaa !29
  %i.gv = and i32 %.013.i, 1
  %i.gw = xor i32 %i.gv, 1
  tail call void %i.gu(ptr noundef %.01011.i, ptr noundef %i.gm, ptr noundef %i.gt, i32 noundef %i.at, i32 noundef %i.gw) #8, !inline_history !194
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !190 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i, label %ConvertToYUVA.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fw, i64 60
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !191
  %i.hb = mul nsw i32 %i.ha, %.013.i
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %i.gy, i64 %i.hc
  %i.he = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %.01011.i, i64 3
  %i.hg = tail call i32 %i.he(ptr noundef nonnull %i.hf, i32 noundef 0, i32 noundef %i.at, i32 noundef 1, ptr noundef nonnull %i.hd, i32 noundef 0) #8, !inline_history !194 ; 0 uses
  br label %ConvertToYUVA.exit.i

ConvertToYUVA.exit.i:                             ; preds = %bb.r, %bb.q
  %i.hh = getelementptr inbounds i8, ptr %.01011.i, i64 %i.fu
  %i.hi = add nsw i32 %.013.i, 1                  ; 2 uses
  %i.hj = icmp samesign ugt i32 %.0912.i, 1
  br i1 %i.hj, label %bb.q, label %EmitRescaledRowsYUVA.exit, !llvm.loop !195

EmitRescaledRowsYUVA.exit:                        ; preds = %ExportYUVA.exit.i, %ConvertToYUVA.exit.i, %bb.p, %bb.l
  %i.hk = phi i32 [ %i.hi, %ConvertToYUVA.exit.i ], [ %i.df, %bb.l ], [ %i.df, %bb.p ], [ %i.fs, %ExportYUVA.exit.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !112
  br label %SetCropWindow.exit.thread

SetCropWindow.exit.thread:                        ; preds = %ApplyInverseTransforms.exit, %EmitRescaledRowsYUVA.exit, %EmitRescaledRowsRGBA.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !106
  ret void
}

declare i32 @VP8LReadBits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @VP8LBuildHuffmanTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @VP8LDoFillBitWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @VP8LColorCacheClear(ptr noundef) local_unnamed_addr #3

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @VP8LColorIndexInverseTransformAlpha(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @CopyBlock32b(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b ; 11 uses
  %i.d = icmp slt i32 %1, 3
  %i.e = icmp sgt i32 %2, 3
  %or.cond = and i1 %i.d, %i.e
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = icmp eq i64 %i.g, 0
  %or.cond31 = and i1 %i.h, %or.cond
  br i1 %or.cond31, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = shl nuw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, %i.k
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.0.copyload = load i64, ptr %i.c, align 4      ; 2 uses
  %i.n = trunc i64 %.0.copyload to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.j, %bb.c ], [ %i.n, %bb.d ]
  %.026 = phi i64 [ %i.m, %bb.c ], [ %.0.copyload, %bb.d ] ; 3 uses
  %i.p = and i64 %i.f, 4
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %.lr.ph.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %0, align 4, !tbaa !3
  %i.s = tail call i64 @llvm.fshl.i64(i64 %.026, i64 %.026, i64 32)
  %i.t = add nsw i32 %2, -1
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f, %bb.e
  %.019.i = phi ptr [ %i.q, %bb.f ], [ %i.c, %bb.e ]
  %.018.i = phi ptr [ %i.r, %bb.f ], [ %0, %bb.e ] ; 3 uses
  %.017.i = phi i32 [ %i.t, %bb.f ], [ %2, %bb.e ] ; 4 uses
  %.016.i = phi i64 [ %i.s, %bb.f ], [ %.026, %bb.e ] ; 2 uses
  %i.u = lshr i32 %.017.i, 1
  %wide.trip.count.i = zext nneg i32 %i.u to i64  ; 3 uses
  %min.iters.check37 = icmp ult i32 %.017.i, 8
  br i1 %min.iters.check37, label %.lr.ph.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph.preheader.i
  %n.vec40 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.016.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next43, %vector.body41 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.018.i, i64 %index42 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.v, align 8, !tbaa !130
  store <2 x i64> %broadcast.splat, ptr %i.w, align 8, !tbaa !130
  %index.next43 = add nuw i64 %index42, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next43, %n.vec40
  br i1 %i.x, label %middle.block44, label %vector.body41, !llvm.loop !196

middle.block44:                                   ; preds = %vector.body41
  %cmp.n45 = icmp eq i64 %n.vec40, %wide.trip.count.i
  br i1 %cmp.n45, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block44
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec40, %middle.block44 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.018.i, i64 %indvars.iv.i
  store i64 %.016.i, ptr %i.y, align 8, !tbaa !130
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !197

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block44
  %i.z = and i32 %.017.i, 1
  %.not20.i = icmp eq i32 %i.z, 0
  br i1 %.not20.i, label %CopySmallPattern32b.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.aa = and i32 %.017.i, -2
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.019.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.018.i, i64 %i.ab
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  br label %CopySmallPattern32b.exit

bb.h:                                             ; preds = %bb.a
  %.not = icmp slt i32 %1, %2
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.af = icmp sgt i32 %2, 0
  br i1 %i.af, label %.lr.ph.preheader, label %CopySmallPattern32b.exit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %diff.check = icmp ult i32 %1, 8
  %or.cond47 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond47, label %.lr.ph.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !3
  %wide.load35 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load, ptr %i.ai, align 4, !tbaa !3
  store <4 x i32> %wide.load35, ptr %i.aj, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %CopySmallPattern32b.exit, label %.lr.ph.preheader48

.lr.ph.preheader48:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader48, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader48 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader48 ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.prol
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !199

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader48
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader48 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ao = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %CopySmallPattern32b.exit, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.aq = sext i32 %2 to i64
  %i.ar = shl nsw i64 %i.aq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %i.c, i64 %i.ar, i1 false)
  br label %CopySmallPattern32b.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.1
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.2
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %CopySmallPattern32b.exit, label %.lr.ph, !llvm.loop !200

CopySmallPattern32b.exit:                         ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %bb.g, %._crit_edge.i, %bb.i
  ret void
}

declare void @VP8LColorCacheCopy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @VP8LInverseTransform(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPRescalerInit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPRescaleNeededLines(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WebPMultARGBRows(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPRescalerImport(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WebPRescalerExportRow(ptr noundef) local_unnamed_addr #3

declare void @VP8LConvertFromBGRA(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS10HTreeGroup", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !4, i64 0}
!14 = !{!"VP8LDecoder", !4, i64 0, !4, i64 4, !15, i64 8, !16, i64 16, !17, i64 24, !17, i64 32, !18, i64 40, !4, i64 80, !18, i64 88, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !21, i64 152, !4, i64 272, !5, i64 280, !4, i64 376, !20, i64 384, !26, i64 392}
!15 = !{!"p1 _ZTS5VP8Io", !12, i64 0}
!16 = !{!"p1 _ZTS13WebPDecBuffer", !12, i64 0}
!17 = !{!"p1 int", !12, i64 0}
!18 = !{!"", !19, i64 0, !20, i64 8, !19, i64 16, !19, i64 24, !4, i64 32, !4, i64 36}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"", !4, i64 0, !22, i64 8, !22, i64 24, !4, i64 40, !4, i64 44, !4, i64 48, !17, i64 56, !4, i64 64, !11, i64 72, !23, i64 80}
!22 = !{!"", !17, i64 0, !4, i64 8, !4, i64 12}
!23 = !{!"HuffmanTables", !24, i64 0, !25, i64 32}
!24 = !{!"HuffmanTablesSegment", !12, i64 0, !12, i64 8, !25, i64 16, !4, i64 24}
!25 = !{!"p1 _ZTS20HuffmanTablesSegment", !12, i64 0}
!26 = !{!"p1 _ZTS12WebPRescaler", !12, i64 0}
!27 = !{!23, !25, i64 32}
!28 = !{!24, !12, i64 8}
!29 = !{!12, !12, i64 0}
!30 = !{!31, !5, i64 0}
!31 = !{!"", !5, i64 0, !9, i64 2}
!32 = distinct !{!32, !33, !34, !35}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !33, !35, !34}
!37 = !{!38, !4, i64 40}
!38 = !{!"HTreeGroup", !5, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !5, i64 56}
!39 = !{!38, !4, i64 48}
!40 = !{!31, !9, i64 2}
!41 = !{!38, !4, i64 44}
!42 = !{!38, !4, i64 52}
!43 = !{!44, !4, i64 0}
!44 = !{!"", !4, i64 0, !4, i64 4}
!45 = !{!44, !4, i64 4}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = !{!18, !4, i64 32}
!50 = !{!24, !12, i64 0}
!51 = !{!18, !19, i64 0}
!52 = distinct !{!52, !33, !34, !35}
!53 = distinct !{!53, !33, !35, !34}
!54 = !{!18, !4, i64 36}
!55 = !{!14, !4, i64 4}
!56 = !{!21, !17, i64 56}
!57 = !{!21, !11, i64 72}
!58 = !{!14, !17, i64 24}
!59 = !{!14, !4, i64 272}
!60 = !{!61, !17, i64 16}
!61 = !{!"VP8LTransform", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !17, i64 16}
!62 = distinct !{!62, !33}
!63 = !{!14, !4, i64 376}
!64 = !{!14, !20, i64 384}
!65 = !{!14, !16, i64 16}
!66 = !{!67, !4, i64 0}
!67 = !{!"ALPHDecoder", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !68, i64 24, !69, i64 32, !4, i64 192, !20, i64 200, !20, i64 208}
!68 = !{!"p1 _ZTS11VP8LDecoder", !12, i64 0}
!69 = !{!"VP8Io", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !4, i64 48, !4, i64 52, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !4, i64 88, !19, i64 96, !20, i64 104, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !20, i64 152}
!70 = !{!14, !4, i64 132}
!71 = !{!67, !4, i64 4}
!72 = !{!14, !4, i64 136}
!73 = !{!14, !15, i64 8}
!74 = !{!69, !12, i64 56}
!75 = !{!69, !4, i64 0}
!76 = !{!69, !4, i64 4}
!77 = !{!61, !4, i64 0}
!78 = !{!21, !4, i64 0}
!79 = !{!21, !4, i64 64}
!80 = distinct !{!80, !33}
!81 = !{!67, !4, i64 192}
!82 = !{!14, !17, i64 32}
!83 = !{!67, !68, i64 24}
!84 = distinct !{null}
!85 = !{!61, !4, i64 8}
!86 = !{!61, !4, i64 12}
!87 = !{!61, !4, i64 4}
!88 = !{!89}
end_hunk_1
