Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_dec?download=true
inline.NumInlined: 132
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@VP8LDecodeAlphaImageStream:bb.a
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ef ; 2 uses
  %.pre.i141.i = load i8, ptr %i.eg, align 2, !tbaa !34
  br label %ReadSymbol.exit142.i

ReadSymbol.exit142.i:                             ; preds = %bb.o, %GetCopyLength.exit.i
  %i.eh = phi i8 [ %.pre.i141.i, %bb.o ], [ %i.dq, %GetCopyLength.exit.i ]
  %i.ei = phi i32 [ %i.du, %bb.o ], [ %.val19.i138.i, %GetCopyLength.exit.i ]
  %.0.i139.i = phi ptr [ %i.eg, %bb.o ], [ %i.dp, %GetCopyLength.exit.i ]
  %i.ej = zext i8 %i.eh to i32
  %i.ek = add nsw i32 %i.ei, %i.ej                ; 2 uses
  store i32 %i.ek, ptr %i.al, align 8, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i139.i, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !41 ; 2 uses
  %i.en = zext i16 %i.em to i32                   ; 3 uses
  %i.eo = icmp sgt i32 %i.ek, 31
  br i1 %i.eo, label %bb.p, label %VP8LFillBitWindow.exit143.i

bb.p:                                             ; preds = %ReadSymbol.exit142.i
  tail call void @VP8LDoFillBitWindow(ptr noundef nonnull %i.q) #7
  br label %VP8LFillBitWindow.exit143.i

VP8LFillBitWindow.exit143.i:                      ; preds = %bb.p, %ReadSymbol.exit142.i
  %i.ep = icmp ult i16 %i.em, 4
  br i1 %i.ep, label %GetCopyDistance.exit.i, label %bb.q

bb.q:                                             ; preds = %VP8LFillBitWindow.exit143.i
  %i.eq = add nsw i32 %i.en, -2
  %i.er = lshr i32 %i.eq, 1                       ; 2 uses
  %i.es = and i32 %i.en, 1
  %i.et = or disjoint i32 %i.es, 2
  %i.eu = shl i32 %i.et, %i.er
  %i.ev = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.q, i32 noundef %i.er) #7
  %i.ew = add i32 %i.ev, %i.eu
  br label %GetCopyDistance.exit.i

GetCopyDistance.exit.i:                           ; preds = %bb.q, %VP8LFillBitWindow.exit143.i
  %.0.in.i.i = phi i32 [ %i.ew, %bb.q ], [ %i.en, %VP8LFillBitWindow.exit143.i ] ; 2 uses
  %.0.i144.i = add i32 %.0.in.i.i, 1              ; 2 uses
  %i.ex = icmp sgt i32 %.0.i144.i, 120
  br i1 %i.ex, label %bb.r, label %bb.s

bb.r:                                             ; preds = %GetCopyDistance.exit.i
  %i.ey = add nsw i32 %.0.in.i.i, -119
  br label %PlaneCodeToDistance.exit.i

bb.s:                                             ; preds = %GetCopyDistance.exit.i
  %i.ez = sext i32 %.0.i144.i to i64
  %i.fa = getelementptr i8, ptr @kCodeToPlane, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !10
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = lshr i32 %i.fd, 4
  %i.ff = and i32 %i.fd, 15
  %i.fg = mul nsw i32 %i.fe, %i.j
  %reass.sub = sub i32 %i.fg, %i.ff
  %i.fh = add i32 %reass.sub, 8
  %i.fi = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 1)
  br label %PlaneCodeToDistance.exit.i

PlaneCodeToDistance.exit.i:                       ; preds = %bb.s, %bb.r
  %.0.i145.i = phi i32 [ %i.ey, %bb.r ], [ %i.fi, %bb.s ] ; 4 uses
  %i.fj = ptrtoint ptr %.1108194.i to i64         ; 3 uses
  %i.fk = sub i64 %i.fj, %i.am
  %i.fl = zext nneg i32 %.0.i145.i to i64         ; 2 uses
  %.not129.i = icmp slt i64 %i.fk, %i.fl
  br i1 %.not129.i, label %.thread174.i, label %bb.t

bb.t:                                             ; preds = %PlaneCodeToDistance.exit.i
  %i.fm = sub i64 %i.an, %i.fj
  %i.fn = sext i32 %.0.i.i136.i to i64            ; 12 uses
  %.not130.i = icmp slt i64 %i.fm, %i.fn
  br i1 %.not130.i, label %.thread174.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = sub nsw i64 0, %i.fl
  %i.fp = getelementptr inbounds i8, ptr %.1108194.i, i64 %i.fo ; 13 uses
  %i.fq = icmp sgt i32 %.0.i.i136.i, 7
  br i1 %i.fq, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  switch i32 %.0.i145.i, label %bb.z [
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 4, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.fr = load i8, ptr %i.fp, align 1, !tbaa !10
  %i.fs = zext i8 %i.fr to i32
  %i.ft = mul nuw i32 %i.fs, 16843009
  br label %.critedge.i.i

bb.x:                                             ; preds = %bb.v
  %.0.copyload8.i.i = load i16, ptr %i.fp, align 1
  %.0.insert.ext.i.i = zext i16 %.0.copyload8.i.i to i32
  %i.fu = mul nuw i32 %.0.insert.ext.i.i, 65537
  br label %.critedge.i.i

bb.y:                                             ; preds = %bb.v
  %.0.copyload.i.i = load i32, ptr %i.fp, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.y, %bb.x, %bb.w
  %.027.i.i = phi i32 [ %i.ft, %bb.w ], [ %i.fu, %bb.x ], [ %.0.copyload.i.i, %bb.y ] ; 2 uses
  %i.fv = and i64 %i.fj, 3
  %.not22.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not22.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.critedge.i.i
  %.021.lcssa.i.i.i = phi ptr [ %i.fp, %.critedge.i.i ], [ %i.gb, %.lr.ph.i.i.i ] ; 8 uses
  %.020.lcssa.i.i.i = phi ptr [ %.1108194.i, %.critedge.i.i ], [ %i.gd, %.lr.ph.i.i.i ] ; 10 uses
  %.019.lcssa.i.i.i = phi i32 [ %.0.i.i136.i, %.critedge.i.i ], [ %i.gf, %.lr.ph.i.i.i ] ; 3 uses
  %.018.lcssa.i.i.i = phi i32 [ %.027.i.i, %.critedge.i.i ], [ %i.ge, %.lr.ph.i.i.i ] ; 2 uses
  %.020.lcssa.i.i.i93 = ptrtoaddr ptr %.020.lcssa.i.i.i to i64
  %.021.lcssa.i.i.i94 = ptrtoaddr ptr %.021.lcssa.i.i.i to i64
  %i.fw = ashr i32 %.019.lcssa.i.i.i, 2           ; 5 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph31.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph31.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.fw to i64 ; 3 uses
  %min.iters.check123 = icmp ult i32 %i.fw, 8
  br i1 %min.iters.check123, label %.lr.ph31.i.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph31.preheader.i.i.i
  %n.vec125 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.018.lcssa.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next128, %vector.body126 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.020.lcssa.i.i.i, i64 %index127 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.fy, align 4, !tbaa !11
  store <4 x i32> %broadcast.splat, ptr %i.fz, align 4, !tbaa !11
  %index.next128 = add nuw i64 %index127, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next128, %n.vec125
  br i1 %i.ga, label %middle.block129, label %vector.body126, !llvm.loop !131

middle.block129:                                  ; preds = %vector.body126
  %cmp.n130 = icmp eq i64 %n.vec125, %wide.trip.count.i.i.i
  br i1 %cmp.n130, label %._crit_edge.i.i.i, label %.lr.ph31.i.i.i.preheader

.lr.ph31.i.i.i.preheader:                         ; preds = %.lr.ph31.preheader.i.i.i, %middle.block129
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph31.preheader.i.i.i ], [ %n.vec125, %middle.block129 ]
  br label %.lr.ph31.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph.i.i.i
  %.01826.i.i.i = phi i32 [ %i.ge, %.lr.ph.i.i.i ], [ %.027.i.i, %.critedge.i.i ] ; 2 uses
  %.01925.i.i.i = phi i32 [ %i.gf, %.lr.ph.i.i.i ], [ %.0.i.i136.i, %.critedge.i.i ]
  %.02024.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i ], [ %.1108194.i, %.critedge.i.i ] ; 2 uses
  %.02123.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i ], [ %i.fp, %.critedge.i.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.02123.i.i.i, i64 1 ; 2 uses
  %i.gc = load i8, ptr %.02123.i.i.i, align 1, !tbaa !10
  %i.gd = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 1 ; 3 uses
  store i8 %i.gc, ptr %.02024.i.i.i, align 1, !tbaa !10
  %i.ge = tail call noundef i32 @llvm.fshl.i32(i32 %.01826.i.i.i, i32 %.01826.i.i.i, i32 24) ; 2 uses
  %i.gf = add nsw i32 %.01925.i.i.i, -1           ; 2 uses
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = and i64 %i.gg, 3
  %.not.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !132

.lr.ph31.i.i.i:                                   ; preds = %.lr.ph31.i.i.i.preheader, %.lr.ph31.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph31.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph31.i.i.i.preheader ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.020.lcssa.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %.018.lcssa.i.i.i, ptr %i.gi, align 4, !tbaa !11
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph31.i.i.i, !llvm.loop !133

._crit_edge.i.i.i:                                ; preds = %.lr.ph31.i.i.i, %middle.block129, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.fw, %middle.block129 ], [ %i.fw, %.lr.ph31.i.i.i ] ; 2 uses
  %i.gj = shl nuw nsw i32 %.0.lcssa.i.i.i, 2
  %i.gk = icmp slt i32 %i.gj, %.019.lcssa.i.i.i
  br i1 %i.gk, label %iter.check110, label %.loopexit.i

iter.check110:                                    ; preds = %._crit_edge.i.i.i
  %i.gl = zext nneg i32 %.0.lcssa.i.i.i to i64
  %i.gm = shl nuw nsw i64 %i.gl, 2                ; 6 uses
  %wide.trip.count46.i.i.i = zext nneg i32 %.019.lcssa.i.i.i to i64 ; 4 uses
  %i.gn = sub nsw i64 %wide.trip.count46.i.i.i, %i.gm ; 7 uses
  %min.iters.check96 = icmp ult i64 %i.gn, 8
  %i.go = sub i64 %.021.lcssa.i.i.i94, %.020.lcssa.i.i.i93
  %diff.check95 = icmp ugt i64 %i.go, -32
  %or.cond = select i1 %min.iters.check96, i1 true, i1 %diff.check95
  br i1 %or.cond, label %.lr.ph35.i.i.i.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %iter.check110
  %min.iters.check98 = icmp ult i64 %i.gn, 32
  br i1 %min.iters.check98, label %vec.epilog.ph114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.gp = and i64 %i.gn, 24
  %n.vec100 = and i64 %i.gn, -32                  ; 4 uses
  %i.gq = add nsw i64 %i.gm, %n.vec100
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph99, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body101 ] ; 2 uses
  %i.gr = add nuw i64 %i.gm, %index102            ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load103 = load <16 x i8>, ptr %i.gs, align 1, !tbaa !10
  %wide.load104 = load <16 x i8>, ptr %i.gt, align 1, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %i.gr ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <16 x i8> %wide.load103, ptr %i.gu, align 1, !tbaa !10
  store <16 x i8> %wide.load104, ptr %i.gv, align 1, !tbaa !10
  %index.next105 = add nuw i64 %index102, 32      ; 2 uses
  %i.gw = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.gw, label %middle.block106, label %vector.body101, !llvm.loop !134

middle.block106:                                  ; preds = %vector.body101
  %cmp.n107 = icmp eq i64 %i.gn, %n.vec100
  br i1 %cmp.n107, label %.loopexit.i, label %vec.epilog.iter.check112

vec.epilog.iter.check112:                         ; preds = %middle.block106
  %min.epilog.iters.check113 = icmp eq i64 %i.gp, 0
  br i1 %min.epilog.iters.check113, label %.lr.ph35.i.i.i.preheader, label %vec.epilog.ph114, !prof !145

vec.epilog.ph114:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check112
  %vec.epilog.resume.val108 = phi i64 [ %n.vec100, %vec.epilog.iter.check112 ], [ 0, %vector.main.loop.iter.check97 ]
  %n.vec115 = and i64 %i.gn, -8                   ; 3 uses
  %i.gx = add nsw i64 %i.gm, %n.vec115
  br label %vec.epilog.vector.body116

vec.epilog.vector.body116:                        ; preds = %vec.epilog.vector.body116, %vec.epilog.ph114
  %index117 = phi i64 [ %vec.epilog.resume.val108, %vec.epilog.ph114 ], [ %index.next119, %vec.epilog.vector.body116 ] ; 2 uses
  %i.gy = add nuw i64 %i.gm, %index117            ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %i.gy
  %wide.load118 = load <8 x i8>, ptr %i.gz, align 1, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %i.gy
  store <8 x i8> %wide.load118, ptr %i.ha, align 1, !tbaa !10
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.hb, label %vec.epilog.middle.block120, label %vec.epilog.vector.body116, !llvm.loop !135

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body116
  %cmp.n121 = icmp eq i64 %i.gn, %n.vec115
  br i1 %cmp.n121, label %.loopexit.i, label %.lr.ph35.i.i.i.preheader

.lr.ph35.i.i.i.preheader:                         ; preds = %iter.check110, %vec.epilog.iter.check112, %vec.epilog.middle.block120
  %indvars.iv43.i.i.i.ph = phi i64 [ %i.gm, %iter.check110 ], [ %i.gq, %vec.epilog.iter.check112 ], [ %i.gx, %vec.epilog.middle.block120 ] ; 4 uses
  %i.hc = sub nsw i64 %wide.trip.count46.i.i.i, %indvars.iv43.i.i.i.ph
  %xtraiter = and i64 %i.hc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph35.i.i.i.prol.loopexit, label %.lr.ph35.i.i.i.prol

.lr.ph35.i.i.i.prol:                              ; preds = %.lr.ph35.i.i.i.preheader, %.lr.ph35.i.i.i.prol
  %indvars.iv43.i.i.i.prol = phi i64 [ %indvars.iv.next44.i.i.i.prol, %.lr.ph35.i.i.i.prol ], [ %indvars.iv43.i.i.i.ph, %.lr.ph35.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph35.i.i.i.prol ], [ 0, %.lr.ph35.i.i.i.preheader ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv43.i.i.i.prol
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv43.i.i.i.prol
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !10
  %indvars.iv.next44.i.i.i.prol = add nuw nsw i64 %indvars.iv43.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph35.i.i.i.prol.loopexit, label %.lr.ph35.i.i.i.prol, !llvm.loop !136

.lr.ph35.i.i.i.prol.loopexit:                     ; preds = %.lr.ph35.i.i.i.prol, %.lr.ph35.i.i.i.preheader
  %indvars.iv43.i.i.i.unr = phi i64 [ %indvars.iv43.i.i.i.ph, %.lr.ph35.i.i.i.preheader ], [ %indvars.iv.next44.i.i.i.prol, %.lr.ph35.i.i.i.prol ]
  %i.hg = sub nsw i64 %indvars.iv43.i.i.i.ph, %wide.trip.count46.i.i.i
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %.loopexit.i, label %.lr.ph35.i.i.i

.lr.ph35.i.i.i:                                   ; preds = %.lr.ph35.i.i.i.prol.loopexit, %.lr.ph35.i.i.i
  %indvars.iv43.i.i.i = phi i64 [ %indvars.iv.next44.i.i.i.3, %.lr.ph35.i.i.i ], [ %indvars.iv43.i.i.i.unr, %.lr.ph35.i.i.i.prol.loopexit ] ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv43.i.i.i
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv43.i.i.i
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !10
  %indvars.iv.next44.i.i.i = add nuw nsw i64 %indvars.iv43.i.i.i, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !10
  %indvars.iv.next44.i.i.i.1 = add nuw nsw i64 %indvars.iv43.i.i.i, 2 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.1
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !10
  %indvars.iv.next44.i.i.i.2 = add nuw nsw i64 %indvars.iv43.i.i.i, 3 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.2
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !10
  %indvars.iv.next44.i.i.i.3 = add nuw nsw i64 %indvars.iv43.i.i.i, 4 ; 2 uses
  %exitcond47.not.i.i.i.3 = icmp eq i64 %indvars.iv.next44.i.i.i.3, %wide.trip.count46.i.i.i
  br i1 %exitcond47.not.i.i.i.3, label %.loopexit.i, label %.lr.ph35.i.i.i, !llvm.loop !137

bb.z:                                             ; preds = %bb.v, %bb.u
  %.not.i.i = icmp slt i32 %.0.i145.i, %.0.i.i136.i
  br i1 %.not.i.i, label %iter.check, label %bb.aa

iter.check:                                       ; preds = %bb.z
  %wide.trip.count.i.i = zext i32 %.0.i.i136.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.0.i.i136.i, 4
  %i.hu = add i32 %.0.i145.i, -1
  %diff.check = icmp ult i32 %i.hu, 31
  %or.cond132 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond132, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %.0.i.i136.i, 32
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hv = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load = load <16 x i8>, ptr %i.hw, align 1, !tbaa !10
  %wide.load86 = load <16 x i8>, ptr %i.hx, align 1, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %.1108194.i, i64 %index ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store <16 x i8> %wide.load, ptr %i.hy, align 1, !tbaa !10
  store <16 x i8> %wide.load86, ptr %i.hz, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index88
  %wide.load89 = load <4 x i8>, ptr %i.ib, align 1, !tbaa !10
  %i.ic = getelementptr inbounds nuw i8, ptr %.1108194.i, i64 %index88
  store <4 x i8> %wide.load89, ptr %i.ic, align 1, !tbaa !10
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.id = icmp eq i64 %index.next90, %n.vec87
  br i1 %i.id, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %n.vec87, %wide.trip.count.i.i
  br i1 %cmp.n91, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec87, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter144 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.i.i.prol
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !10
  %i.ig = getelementptr inbounds nuw i8, ptr %.1108194.i, i64 %indvars.iv.i.i.prol
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !10
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !140

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ih = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ii = icmp ugt i64 %i.ih, -4
  br i1 %i.ii, label %.loopexit.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1108194.i, ptr align 1 %i.fp, i64 %i.fn, i1 false)
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.i.i
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !10
  %i.il = getelementptr inbounds nuw i8, ptr %.1108194.i, i64 %indvars.iv.i.i
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.next.i.i
  %i.in = load i8, ptr %i.im, align 1, !tbaa !10
  %i.io = getelementptr inbounds nuw i8, ptr %.1108194.i, i64 %indvars.iv.next.i.i
  store i8 %i.in, ptr %i.io, align 1, !tbaa !10
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.next.i.i.1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %.1108194.i, i64 %indvars.iv.next.i.i.1
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !10
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.next.i.i.2
  %i.it = load i8, ptr %i.is, align 1, !tbaa !10
  %i.iu = getelementptr inbounds nuw i8, ptr %.1108194.i, i64 %indvars.iv.next.i.i.2
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !10
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !141

.loopexit.i:                                      ; preds = %.lr.ph35.i.i.i.prol.loopexit, %.lr.ph35.i.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block106, %vec.epilog.middle.block120, %middle.block, %vec.epilog.middle.block, %bb.aa, %._crit_edge.i.i.i, %bb.k
  %.sink.i = phi i64 [ 1, %bb.k ], [ %i.fn, %middle.block ], [ %i.fn, %._crit_edge.i.i.i ], [ %i.fn, %bb.aa ], [ %i.fn, %middle.block106 ], [ %i.fn, %vec.epilog.middle.block ], [ %i.fn, %.lr.ph.i.i.prol.loopexit ], [ %i.fn, %vec.epilog.middle.block120 ], [ %i.fn, %.lr.ph.i.i ], [ %i.fn, %.lr.ph35.i.i.i ], [ %i.fn, %.lr.ph35.i.i.i.prol.loopexit ]
  %i.iv = getelementptr inbounds i8, ptr %.1108194.i, i64 %.sink.i ; 4 uses
  %i.iw = load i32, ptr %i.ab, align 4, !tbaa !46
  %.not.i146.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i146.i, label %bb.ab, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i
  store i32 1, ptr %i.ab, align 4, !tbaa !46
  br label %._crit_edge.i

bb.ab:                                            ; preds = %.loopexit.i
  %i.ix = load i64, ptr %i.ao, align 8, !tbaa !83
  %i.iy = load i64, ptr %i.ap, align 8, !tbaa !84
  %i.iz = icmp eq i64 %i.ix, %i.iy
  br i1 %i.iz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ja = load i32, ptr %i.al, align 8, !tbaa !44
  %i.jb = icmp sgt i32 %i.ja, 64
  %i.jc = zext i1 %i.jb to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jd = phi i32 [ %i.jc, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  store i32 %i.jd, ptr %i.ab, align 4, !tbaa !46
  %.not126.i = icmp eq i32 %i.jd, 0
  %i.je = icmp ult ptr %i.iv, %.0106.i
  %i.jf = select i1 %.not126.i, i1 %i.je, i1 false
  br i1 %i.jf, label %bb.h, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %bb.ad, %.thread.i, %bb.g
  %i.jg = phi i32 [ 0, %bb.g ], [ 1, %.thread.i ], [ %i.jd, %bb.ad ]
  %.1108.lcssa.i = phi ptr [ %.0107206.i, %bb.g ], [ %i.iv, %.thread.i ], [ %i.iv, %bb.ad ] ; 4 uses
  %i.jh = ptrtoint ptr %.1108.lcssa.i to i64
  %i.ji = ptrtoint ptr %.0107206.i to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = add nsw i32 %.0114205.i, %i.jk          ; 3 uses
  %.not127196.i = icmp slt i32 %i.jl, %i.j
  br i1 %.not127196.i, label %.loopexit182.i, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %._crit_edge.i, %bb.ah
  %.1115198.i = phi i32 [ %i.jm, %bb.ah ], [ %i.jl, %._crit_edge.i ]
  %.1118197.i = phi i32 [ %i.jn, %bb.ah ], [ %.0117204.i, %._crit_edge.i ] ; 4 uses
  %i.jm = sub nsw i32 %.1115198.i, %i.j           ; 3 uses
  %i.jn = add nsw i32 %.1118197.i, 1              ; 6 uses
  %.not128.not.i = icmp slt i32 %.1118197.i, %1
  %i.jo = and i32 %i.jn, 15
  %i.jp = icmp eq i32 %i.jo, 0
  %or.cond.i = select i1 %.not128.not.i, i1 %i.jp, i1 false
  br i1 %or.cond.i, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %.lr.ph200.i
  %i.jq = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !63 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 12 ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !85
  %switch.i.i = icmp ult i32 %i.ju, 2
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 128
  %.in.i.i = select i1 %switch.i.i, ptr %i.jv, ptr %i.c
  %i.jw = load i32, ptr %.in.i.i, align 4, !tbaa !11
  %i.jx = load i32, ptr %i.c, align 4, !tbaa !82
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.jx, i32 %i.jw) ; 5 uses
  %.not179.i = icmp slt i32 %.1118197.i, %..i.i
  br i1 %.not179.i, label %ExtractPalettedAlphaRows.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jy = load i32, ptr %i.jq, align 8, !tbaa !64 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 200
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !86
  %i.kb = mul nsw i32 %i.jy, %..i.i
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr %i.ka, i64 %i.kc ; 2 uses
  %i.ke = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.kf = load i32, ptr %i.i, align 4, !tbaa !60
  %i.kg = mul nsw i32 %i.kf, %..i.i
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 %i.kh
  tail call void @VP8LColorIndexInverseTransformAlpha(ptr noundef nonnull %i.ar, i32 noundef %..i.i, i32 noundef %i.jn, ptr noundef %i.ki, ptr noundef %i.kd) #7
  %i.kj = load i32, ptr %i.jt, align 4, !tbaa !85
  %.not.i.i147.i = icmp eq i32 %i.kj, 0
  br i1 %.not.i.i147.i, label %ExtractPalettedAlphaRows.exit.i, label %.lr.ph.i.i148.i

.lr.ph.i.i148.i:                                  ; preds = %bb.af
  %i.kk = getelementptr inbounds nuw i8, ptr %i.js, i64 208 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !87
  %i.km = sext i32 %i.jy to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i.i148.i
  %.019.i.i.i = phi ptr [ %i.kl, %.lr.ph.i.i148.i ], [ %.01617.i.i.i, %bb.ag ]
  %.01518.i.i.i = phi i32 [ %..i.i, %.lr.ph.i.i148.i ], [ %i.ks, %bb.ag ] ; 2 uses
  %.01617.i.i.i = phi ptr [ %i.kd, %.lr.ph.i.i148.i ], [ %i.kr, %bb.ag ] ; 5 uses
  %i.kn = load i32, ptr %i.jt, align 4, !tbaa !85
  %i.ko = zext i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr @WebPUnfilters, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !32
  tail call void %i.kq(ptr noundef %.019.i.i.i, ptr noundef %.01617.i.i.i, ptr noundef %.01617.i.i.i, i32 noundef %i.jy) #7, !inline_history !143
  %i.kr = getelementptr inbounds i8, ptr %.01617.i.i.i, i64 %i.km
  %i.ks = add i32 %.01518.i.i.i, 1
  %exitcond.not.i.i149.i = icmp eq i32 %.01518.i.i.i, %.1118197.i
  br i1 %exitcond.not.i.i149.i, label %._crit_edge.i.i150.i, label %bb.ag, !llvm.loop !0

._crit_edge.i.i150.i:                             ; preds = %bb.ag
  store ptr %.01617.i.i.i, ptr %i.kk, align 8, !tbaa !87
end_hunk_0
