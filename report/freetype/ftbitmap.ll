Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Convert:bb.a
  %xtraiter400 = and i32 %i.cx, 1
  %lcmp.mod401.not = icmp eq i32 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0202, ptr align 1 %.0191, i64 %i.cy, i1 false)
  %i.cz = load i32, ptr %i.al, align 8, !tbaa !9
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %.0191, i64 %i.da
  %i.dc = load i32, ptr %i.au, align 8, !tbaa !9
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %.0202, i64 %i.dd
  %i.df = add nsw i32 %i.cx, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph291
  %.0189289.unr = phi i32 [ %i.cx, %.lr.ph291 ], [ %i.df, %.prol.loopexit.unr-lcssa ]
  %.2288.unr = phi ptr [ %.0191, %.lr.ph291 ], [ %i.db, %.prol.loopexit.unr-lcssa ]
  %.2204287.unr = phi ptr [ %.0202, %.lr.ph291 ], [ %i.de, %.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i32 %i.cx, 1
  br i1 %i.dg, label %.loopexit238, label %.lr.ph291.new

.lr.ph291.new:                                    ; preds = %.prol.loopexit, %.lr.ph291.new
  %.0189289 = phi i32 [ %i.dt, %.lr.ph291.new ], [ %.0189289.unr, %.prol.loopexit ]
  %.2288 = phi ptr [ %i.dp, %.lr.ph291.new ], [ %.2288.unr, %.prol.loopexit ] ; 2 uses
  %.2204287 = phi ptr [ %i.ds, %.lr.ph291.new ], [ %.2204287.unr, %.prol.loopexit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2204287, ptr align 1 %.2288, i64 %i.cy, i1 false)
  %i.dh = load i32, ptr %i.al, align 8, !tbaa !9
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %.2288, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.au, align 8, !tbaa !9
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %.2204287, i64 %i.dl ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dj, i64 %i.cy, i1 false)
  %i.dn = load i32, ptr %i.al, align 8, !tbaa !9
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.do
  %i.dq = load i32, ptr %i.au, align 8, !tbaa !9
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dm, i64 %i.dr
  %i.dt = add i32 %.0189289, -2                   ; 2 uses
  %.not229.1 = icmp eq i32 %i.dt, 0
  br i1 %.not229.1, label %.loopexit238, label %.lr.ph291.new, !llvm.loop !57

bb.aa:                                            ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 4, ptr %i.du, align 8, !tbaa !38
  %i.dv = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not225280 = icmp eq i32 %i.dv, 0
  br i1 %.not225280, label %.loopexit238, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph285, %.loopexit240
  %.0188283 = phi i32 [ %i.dv, %.lr.ph285 ], [ %i.gd, %.loopexit240 ]
  %.3282 = phi ptr [ %.0191, %.lr.ph285 ], [ %i.fz, %.loopexit240 ] ; 5 uses
  %.3205281 = phi ptr [ %.0202, %.lr.ph285 ], [ %i.gc, %.loopexit240 ] ; 8 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !33 ; 3 uses
  %i.dy = lshr i32 %i.dx, 2                       ; 4 uses
  %.not226268 = icmp eq i32 %i.dy, 0
  br i1 %.not226268, label %._crit_edge274, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %bb.ab
  %i.dz = and i32 %i.dx, 4
  %lcmp.mod398.not = icmp eq i32 %i.dz, 0
  br i1 %lcmp.mod398.not, label %.lr.ph273.prol.loopexit, label %.lr.ph273.prol

.lr.ph273.prol:                                   ; preds = %.lr.ph273.preheader
  %i.ea = load i8, ptr %.3282, align 1, !tbaa !25 ; 4 uses
  %i.eb = lshr i8 %i.ea, 6
  store i8 %i.eb, ptr %.3205281, align 1, !tbaa !25
  %i.ec = lshr i8 %i.ea, 4
  %i.ed = and i8 %i.ec, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %.3205281, i64 1
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !25
  %i.ef = lshr i8 %i.ea, 2
  %i.eg = and i8 %i.ef, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %.3205281, i64 2
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !25
  %i.ei = and i8 %i.ea, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %.3205281, i64 3
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %.3282, i64 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.3205281, i64 4 ; 2 uses
  %i.em = add nsw i32 %i.dy, -1
  br label %.lr.ph273.prol.loopexit

.lr.ph273.prol.loopexit:                          ; preds = %.lr.ph273.prol, %.lr.ph273.preheader
  %.lcssa392.unr = phi ptr [ poison, %.lr.ph273.preheader ], [ %i.ek, %.lr.ph273.prol ]
  %.lcssa391.unr = phi ptr [ poison, %.lr.ph273.preheader ], [ %i.el, %.lr.ph273.prol ]
  %.0183271.unr = phi i32 [ %i.dy, %.lr.ph273.preheader ], [ %i.em, %.lr.ph273.prol ]
  %.0185270.unr = phi ptr [ %.3205281, %.lr.ph273.preheader ], [ %i.el, %.lr.ph273.prol ]
  %.0187269.unr = phi ptr [ %.3282, %.lr.ph273.preheader ], [ %i.ek, %.lr.ph273.prol ]
  %i.en = icmp eq i32 %i.dy, 1
  br i1 %i.en, label %._crit_edge274.loopexit, label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.prol.loopexit, %.lr.ph273
  %.0183271 = phi i32 [ %i.fm, %.lr.ph273 ], [ %.0183271.unr, %.lr.ph273.prol.loopexit ]
  %.0185270 = phi ptr [ %i.fl, %.lr.ph273 ], [ %.0185270.unr, %.lr.ph273.prol.loopexit ] ; 9 uses
  %.0187269 = phi ptr [ %i.fk, %.lr.ph273 ], [ %.0187269.unr, %.lr.ph273.prol.loopexit ] ; 3 uses
  %i.eo = load i8, ptr %.0187269, align 1, !tbaa !25 ; 4 uses
  %i.ep = lshr i8 %i.eo, 6
  store i8 %i.ep, ptr %.0185270, align 1, !tbaa !25
  %i.eq = lshr i8 %i.eo, 4
  %i.er = and i8 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr %.0185270, i64 1
  store i8 %i.er, ptr %i.es, align 1, !tbaa !25
  %i.et = lshr i8 %i.eo, 2
  %i.eu = and i8 %i.et, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %.0185270, i64 2
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !25
  %i.ew = and i8 %i.eo, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %.0185270, i64 3
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !25
  %i.ey = getelementptr inbounds nuw i8, ptr %.0187269, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.0185270, i64 4
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !25  ; 4 uses
  %i.fb = lshr i8 %i.fa, 6
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !25
  %i.fc = lshr i8 %i.fa, 4
  %i.fd = and i8 %i.fc, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %.0185270, i64 5
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !25
  %i.ff = lshr i8 %i.fa, 2
  %i.fg = and i8 %i.ff, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %.0185270, i64 6
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !25
  %i.fi = and i8 %i.fa, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %.0185270, i64 7
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !25
  %i.fk = getelementptr inbounds nuw i8, ptr %.0187269, i64 2 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0185270, i64 8 ; 2 uses
  %i.fm = add nsw i32 %.0183271, -2               ; 2 uses
  %.not226.1 = icmp eq i32 %i.fm, 0
  br i1 %.not226.1, label %._crit_edge274.loopexit, label %.lr.ph273, !llvm.loop !58

._crit_edge274.loopexit:                          ; preds = %.lr.ph273, %.lr.ph273.prol.loopexit
  %.lcssa392 = phi ptr [ %.lcssa392.unr, %.lr.ph273.prol.loopexit ], [ %i.fk, %.lr.ph273 ]
  %.lcssa391 = phi ptr [ %.lcssa391.unr, %.lr.ph273.prol.loopexit ], [ %i.fl, %.lr.ph273 ]
  %.pre323 = load i32, ptr %i.dw, align 4, !tbaa !33
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %bb.ab
  %i.fn = phi i32 [ %i.dx, %bb.ab ], [ %.pre323, %._crit_edge274.loopexit ]
  %.0187.lcssa = phi ptr [ %.3282, %bb.ab ], [ %.lcssa392, %._crit_edge274.loopexit ]
  %.0185.lcssa = phi ptr [ %.3205281, %bb.ab ], [ %.lcssa391, %._crit_edge274.loopexit ] ; 3 uses
  %i.fo = and i32 %i.fn, 3                        ; 3 uses
  %.not227 = icmp eq i32 %i.fo, 0
  br i1 %.not227, label %.loopexit240, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge274
  %i.fp = load i8, ptr %.0187.lcssa, align 1, !tbaa !25 ; 3 uses
  %i.fq = lshr i8 %i.fp, 6
  store i8 %i.fq, ptr %.0185.lcssa, align 1, !tbaa !25
  %.not228 = icmp eq i32 %i.fo, 1
  br i1 %.not228, label %.loopexit240, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %.0185.lcssa, i64 1
  %i.fs = lshr i8 %i.fp, 4
  %i.ft = and i8 %i.fs, 3
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !25
  %.not228.1 = icmp eq i32 %i.fo, 2
  br i1 %.not228.1, label %.loopexit240, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fu = getelementptr inbounds nuw i8, ptr %.0185.lcssa, i64 2
  %i.fv = lshr i8 %i.fp, 2
  %i.fw = and i8 %i.fv, 3
  store i8 %i.fw, ptr %i.fu, align 1, !tbaa !25
  br label %.loopexit240

.loopexit240:                                     ; preds = %bb.ac, %bb.ad, %bb.ae, %._crit_edge274
  %i.fx = load i32, ptr %i.al, align 8, !tbaa !9
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %.3282, i64 %i.fy
  %i.ga = load i32, ptr %i.au, align 8, !tbaa !9
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %.3205281, i64 %i.gb
  %i.gd = add i32 %.0188283, -1                   ; 2 uses
  %.not225 = icmp eq i32 %i.gd, 0
  br i1 %.not225, label %.loopexit238, label %bb.ab, !llvm.loop !59

bb.af:                                            ; preds = %bb.p
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 16, ptr %i.ge, align 8, !tbaa !38
  %i.gf = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not222262 = icmp eq i32 %i.gf, 0
  br i1 %.not222262, label %.loopexit238, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph267, %bb.ai
  %.0181265 = phi i32 [ %i.gf, %.lr.ph267 ], [ %i.jc, %bb.ai ]
  %.4264 = phi ptr [ %.0191, %.lr.ph267 ], [ %i.iy, %bb.ai ] ; 10 uses
  %.4206263 = phi ptr [ %.0202, %.lr.ph267 ], [ %i.jb, %bb.ai ] ; 11 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !33 ; 5 uses
  %i.gi = lshr i32 %i.gh, 1                       ; 6 uses
  %.not223254 = icmp eq i32 %i.gi, 0
  br i1 %.not223254, label %._crit_edge260, label %iter.check

iter.check:                                       ; preds = %bb.ag
  %4 = lshr i32 %i.gh, 1
  %i.gj = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %i.gh, 8
  br i1 %min.iters.check, label %.lr.ph259.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.4206263, i64 2
  %i.gk = add nsw i32 %i.gi, -1
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = shl nuw nsw i64 %i.gl, 1
  %scevgep367 = getelementptr i8, ptr %scevgep, i64 %i.gm
  %scevgep368 = getelementptr i8, ptr %.4264, i64 1
  %scevgep369 = getelementptr i8, ptr %scevgep368, i64 %i.gl
  %bound0 = icmp ult ptr %.4206263, %scevgep369
  %bound1 = icmp ult ptr %.4264, %scevgep367
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph259.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check370 = icmp ult i32 %i.gh, 32
  br i1 %min.iters.check370, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gn = and i64 %i.gj, 12
  %n.vec = and i64 %i.gj, 2147483632              ; 6 uses
  %i.go = trunc nuw nsw i64 %n.vec to i32
  %i.gp = sub nsw i32 %i.gi, %i.go
  %i.gq = shl nuw nsw i64 %n.vec, 1
  %i.gr = getelementptr i8, ptr %.4206263, i64 %i.gq ; 2 uses
  %i.gs = getelementptr i8, ptr %.4264, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gt = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.4206263, i64 %i.gt
  %i.gu = getelementptr i8, ptr %.4206263, i64 %i.gt
  %next.gep371 = getelementptr i8, ptr %i.gu, i64 16
  %next.gep372 = getelementptr i8, ptr %.4264, i64 %index ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep372, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep372, align 1, !tbaa !25, !alias.scope !60 ; 2 uses
  %wide.load373 = load <8 x i8>, ptr %i.gv, align 1, !tbaa !25, !alias.scope !60 ; 2 uses
  %i.gw = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.gx = lshr <8 x i8> %wide.load373, splat (i8 4)
  %i.gy = and <8 x i8> %wide.load, splat (i8 15)
  %i.gz = and <8 x i8> %wide.load373, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.gw, <8 x i8> %i.gy, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !25, !alias.scope !63, !noalias !60
  %interleaved.vec374 = shufflevector <8 x i8> %i.gx, <8 x i8> %i.gz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec374, ptr %next.gep371, align 1, !tbaa !25, !alias.scope !63, !noalias !60
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gj
  br i1 %cmp.n, label %._crit_edge260.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph259.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec377 = and i64 %i.gj, 2147483644           ; 5 uses
  %i.hb = trunc nuw nsw i64 %n.vec377 to i32
  %i.hc = sub nsw i32 %i.gi, %i.hb
  %i.hd = shl nuw nsw i64 %n.vec377, 1
  %i.he = getelementptr i8, ptr %.4206263, i64 %i.hd ; 2 uses
  %i.hf = getelementptr i8, ptr %.4264, i64 %n.vec377 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next383, %vec.epilog.vector.body ] ; 3 uses
  %i.hg = shl i64 %index378, 1
  %next.gep379 = getelementptr i8, ptr %.4206263, i64 %i.hg
  %next.gep380 = getelementptr i8, ptr %.4264, i64 %index378
  %wide.load381 = load <4 x i8>, ptr %next.gep380, align 1, !tbaa !25, !alias.scope !60 ; 2 uses
  %i.hh = lshr <4 x i8> %wide.load381, splat (i8 4)
  %i.hi = and <4 x i8> %wide.load381, splat (i8 15)
  %interleaved.vec382 = shufflevector <4 x i8> %i.hh, <4 x i8> %i.hi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec382, ptr %next.gep379, align 1, !tbaa !25, !alias.scope !63, !noalias !60
  %index.next383 = add nuw i64 %index378, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next383, %n.vec377
  br i1 %i.hj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n384 = icmp eq i64 %n.vec377, %i.gj
  br i1 %cmp.n384, label %._crit_edge260.loopexit, label %.lr.ph259.preheader

.lr.ph259.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0178257.ph = phi i32 [ %i.gi, %iter.check ], [ %i.gi, %vector.memcheck ], [ %i.gp, %vec.epilog.iter.check ], [ %i.hc, %vec.epilog.middle.block ] ; 4 uses
  %.0179256.ph = phi ptr [ %.4206263, %iter.check ], [ %.4206263, %vector.memcheck ], [ %i.gr, %vec.epilog.iter.check ], [ %i.he, %vec.epilog.middle.block ] ; 2 uses
  %.0180255.ph = phi ptr [ %.4264, %iter.check ], [ %.4264, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.hf, %vec.epilog.middle.block ] ; 2 uses
  %i.hk = add nsw i32 %.0178257.ph, -1
  %xtraiter = and i32 %.0178257.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol

.lr.ph259.prol:                                   ; preds = %.lr.ph259.preheader, %.lr.ph259.prol
  %.0178257.prol = phi i32 [ %i.hr, %.lr.ph259.prol ], [ %.0178257.ph, %.lr.ph259.preheader ]
  %.0179256.prol = phi ptr [ %i.hq, %.lr.ph259.prol ], [ %.0179256.ph, %.lr.ph259.preheader ] ; 3 uses
  %.0180255.prol = phi ptr [ %i.hp, %.lr.ph259.prol ], [ %.0180255.ph, %.lr.ph259.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph259.prol ], [ 0, %.lr.ph259.preheader ]
  %i.hl = load i8, ptr %.0180255.prol, align 1, !tbaa !25 ; 2 uses
  %i.hm = lshr i8 %i.hl, 4
  store i8 %i.hm, ptr %.0179256.prol, align 1, !tbaa !25
  %i.hn = and i8 %i.hl, 15
  %i.ho = getelementptr inbounds nuw i8, ptr %.0179256.prol, i64 1
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !25
  %i.hp = getelementptr inbounds nuw i8, ptr %.0180255.prol, i64 1 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0179256.prol, i64 2 ; 3 uses
  %i.hr = add nsw i32 %.0178257.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol, !llvm.loop !68

.lr.ph259.prol.loopexit:                          ; preds = %.lr.ph259.prol, %.lr.ph259.preheader
  %.lcssa395.unr = phi ptr [ poison, %.lr.ph259.preheader ], [ %i.hp, %.lr.ph259.prol ]
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph259.preheader ], [ %i.hq, %.lr.ph259.prol ]
  %.0178257.unr = phi i32 [ %.0178257.ph, %.lr.ph259.preheader ], [ %i.hr, %.lr.ph259.prol ]
  %.0179256.unr = phi ptr [ %.0179256.ph, %.lr.ph259.preheader ], [ %i.hq, %.lr.ph259.prol ]
  %.0180255.unr = phi ptr [ %.0180255.ph, %.lr.ph259.preheader ], [ %i.hp, %.lr.ph259.prol ]
  %i.hs = icmp ult i32 %i.hk, 3
  br i1 %i.hs, label %._crit_edge260.loopexit, label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259
  %.0178257 = phi i32 [ %i.ir, %.lr.ph259 ], [ %.0178257.unr, %.lr.ph259.prol.loopexit ]
  %.0179256 = phi ptr [ %i.iq, %.lr.ph259 ], [ %.0179256.unr, %.lr.ph259.prol.loopexit ] ; 9 uses
  %.0180255 = phi ptr [ %i.ip, %.lr.ph259 ], [ %.0180255.unr, %.lr.ph259.prol.loopexit ] ; 5 uses
  %i.ht = load i8, ptr %.0180255, align 1, !tbaa !25 ; 2 uses
  %i.hu = lshr i8 %i.ht, 4
  store i8 %i.hu, ptr %.0179256, align 1, !tbaa !25
  %i.hv = and i8 %i.ht, 15
  %i.hw = getelementptr inbounds nuw i8, ptr %.0179256, i64 1
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !25
  %i.hx = getelementptr inbounds nuw i8, ptr %.0180255, i64 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.0179256, i64 2
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !25  ; 2 uses
  %i.ia = lshr i8 %i.hz, 4
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !25
  %i.ib = and i8 %i.hz, 15
  %i.ic = getelementptr inbounds nuw i8, ptr %.0179256, i64 3
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !25
  %i.id = getelementptr inbounds nuw i8, ptr %.0180255, i64 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.0179256, i64 4
  %i.if = load i8, ptr %i.id, align 1, !tbaa !25  ; 2 uses
  %i.ig = lshr i8 %i.if, 4
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !25
  %i.ih = and i8 %i.if, 15
  %i.ii = getelementptr inbounds nuw i8, ptr %.0179256, i64 5
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %.0180255, i64 3
  %i.ik = getelementptr inbounds nuw i8, ptr %.0179256, i64 6
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !25  ; 2 uses
  %i.im = lshr i8 %i.il, 4
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !25
  %i.in = and i8 %i.il, 15
  %i.io = getelementptr inbounds nuw i8, ptr %.0179256, i64 7
  store i8 %i.in, ptr %i.io, align 1, !tbaa !25
  %i.ip = getelementptr inbounds nuw i8, ptr %.0180255, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0179256, i64 8 ; 2 uses
  %i.ir = add nsw i32 %.0178257, -4               ; 2 uses
  %.not223.3 = icmp eq i32 %i.ir, 0
  br i1 %.not223.3, label %._crit_edge260.loopexit, label %.lr.ph259, !llvm.loop !69

._crit_edge260.loopexit:                          ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259, %vec.epilog.middle.block, %middle.block
  %.lcssa366 = phi ptr [ %i.hf, %vec.epilog.middle.block ], [ %i.gs, %middle.block ], [ %.lcssa395.unr, %.lr.ph259.prol.loopexit ], [ %i.ip, %.lr.ph259 ]
  %.lcssa365 = phi ptr [ %i.he, %vec.epilog.middle.block ], [ %i.gr, %middle.block ], [ %.lcssa394.unr, %.lr.ph259.prol.loopexit ], [ %i.iq, %.lr.ph259 ]
  %.pre322 = load i32, ptr %i.gg, align 4, !tbaa !33
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %._crit_edge260.loopexit, %bb.ag
  %i.is = phi i32 [ %i.gh, %bb.ag ], [ %.pre322, %._crit_edge260.loopexit ]
  %.0180.lcssa = phi ptr [ %.4264, %bb.ag ], [ %.lcssa366, %._crit_edge260.loopexit ]
  %.0179.lcssa = phi ptr [ %.4206263, %bb.ag ], [ %.lcssa365, %._crit_edge260.loopexit ]
  %i.it = and i32 %i.is, 1
  %.not224 = icmp eq i32 %i.it, 0
  br i1 %.not224, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge260
  %i.iu = load i8, ptr %.0180.lcssa, align 1, !tbaa !25
  %i.iv = lshr i8 %i.iu, 4
  store i8 %i.iv, ptr %.0179.lcssa, align 1, !tbaa !25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge260
  %i.iw = load i32, ptr %i.al, align 8, !tbaa !9
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %.4264, i64 %i.ix
  %i.iz = load i32, ptr %i.au, align 8, !tbaa !9
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds i8, ptr %.4206263, i64 %i.ja
  %i.jc = add i32 %.0181265, -1                   ; 2 uses
  %.not222 = icmp eq i32 %i.jc, 0
  br i1 %.not222, label %.loopexit238, label %bb.ag, !llvm.loop !70

bb.aj:                                            ; preds = %bb.p
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 256, ptr %i.jd, align 8, !tbaa !38
  %i.je = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not220248 = icmp eq i32 %i.je, 0
end_hunk_0
