Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__rasterizeSortedEdges:bb.a
  %.sink43.i = phi float [ %i.ct, %nsvg__roundf.exit.i ], [ %i.cw, %bb.s ], [ %i.cy, %bb.t ]
  %i.cz = fptosi float %.sink43.i to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !252
  %i.db = fsub float %i.ag, %i.bo
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.co, float %i.db, float %i.cl)
  %i.dd = fmul float %i.dc, 1.024000e+03          ; 3 uses
  %i.de = fcmp ult float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.v, label %bb.u

bb.u:                                             ; preds = %nsvg__roundf.exit31.i
  %i.df = fadd float %i.dd, 5.000000e-01
  %i.dg = tail call float @llvm.floor.f32(float %i.df)
  br label %bb.w

bb.v:                                             ; preds = %nsvg__roundf.exit31.i
  %i.dh = fadd float %i.dd, -5.000000e-01
  %i.di = tail call float @llvm.ceil.f32(float %i.dh)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dj = phi float [ %i.dg, %bb.u ], [ %i.di, %bb.v ]
  %i.dk = fptosi float %i.dj to i32               ; 3 uses
  store i32 %i.dk, ptr %.0.i, align 8, !tbaa !253
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store float %i.br, ptr %i.dl, align 8, !tbaa !250
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !251
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !122
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !258
  %.0..0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !248 ; 4 uses
  %i.dq = icmp eq ptr %.0..0..0..0., null
  br i1 %i.dq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !248
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.dr = load i32, ptr %.0..0..0..0., align 8, !tbaa !253
  %i.ds = icmp sgt i32 %i.dr, %i.dk
  br i1 %i.ds, label %bb.z, label %.preheader

bb.z:                                             ; preds = %bb.y
  store ptr %.0..0..0..0., ptr %i.dm, align 8, !tbaa !251
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !248
  br label %bb.ab

.preheader:                                       ; preds = %bb.y, %bb.aa
  %.0 = phi ptr [ %i.du, %bb.aa ], [ %.0..0..0..0., %bb.y ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !251 ; 4 uses
  %.not110 = icmp eq ptr %i.du, null
  br i1 %.not110, label %.critedge4, label %bb.aa

bb.aa:                                            ; preds = %.preheader
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !253
  %i.dw = icmp slt i32 %i.dv, %i.dk
  br i1 %i.dw, label %.preheader, label %.critedge4, !llvm.loop !234

.critedge4:                                       ; preds = %.preheader, %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.du, ptr %i.dm, align 8, !tbaa !251
  store ptr %.0.i, ptr %i.dx, align 8, !tbaa !251
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.critedge4, %bb.x, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bl
  br i1 %exitcond.not, label %.critedge2, label %bb.j, !llvm.loop !235

.critedge2.loopexit.split.loop.exit206:           ; preds = %bb.j
  %i.dy = trunc nsw i64 %indvars.iv to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ab, %.critedge2.loopexit.split.loop.exit206, %.preheader137
  %.290.lcssa = phi i32 [ %.189157, %.preheader137 ], [ %i.dy, %.critedge2.loopexit.split.loop.exit206 ], [ %i.bh, %bb.ab ] ; 2 uses
  %.0..0..0..0.94 = load ptr, ptr %i.a, align 8, !tbaa !248 ; 5 uses
  %.not111 = icmp eq ptr %.0..0..0..0.94, null
  br i1 %.not111, label %nsvg__fillActiveEdges.exit, label %bb.ac

bb.ac:                                            ; preds = %.critedge2
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !101 ; 12 uses
  %i.ea = load i32, ptr %i.f, align 8, !tbaa !103 ; 6 uses
  switch i8 %5, label %nsvg__fillActiveEdges.exit [
    i8 0, label %.preheader.i
    i8 1, label %.preheader48.i
  ]

.preheader.i:                                     ; preds = %bb.ac, %nsvg__fillScanline.exit.i
  %.6130 = phi i32 [ %.7131, %nsvg__fillScanline.exit.i ], [ %.0124155, %bb.ac ] ; 3 uses
  %.6 = phi i32 [ %.7, %nsvg__fillScanline.exit.i ], [ %.0121156, %bb.ac ] ; 3 uses
  %.052.i = phi ptr [ %i.gk, %nsvg__fillScanline.exit.i ], [ %.0..0..0..0.94, %bb.ac ] ; 5 uses
  %.03151.i = phi i32 [ %.132.i, %nsvg__fillScanline.exit.i ], [ 0, %bb.ac ] ; 2 uses
  %.03350.i = phi i32 [ %.134.i, %nsvg__fillScanline.exit.i ], [ 0, %bb.ac ] ; 10 uses
  %i.eb = icmp eq i32 %.03151.i, 0
  br i1 %i.eb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader.i
  %i.ec = load i32, ptr %.052.i, align 8, !tbaa !253
  %i.ed = getelementptr inbounds nuw i8, ptr %.052.i, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !258
  br label %nsvg__fillScanline.exit.i

bb.ae:                                            ; preds = %.preheader.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.052.i, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !258
  %i.eh = add nsw i32 %i.eg, %.03151.i            ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.af, label %nsvg__fillScanline.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i32, ptr %.052.i, align 8, !tbaa !253 ; 3 uses
  %i.ek = ashr i32 %.03350.i, 10                  ; 7 uses
  %i.el = ashr i32 %i.ej, 10                      ; 6 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 %.6130) ; 6 uses
  %.8 = tail call i32 @llvm.smax.i32(i32 %i.el, i32 %.6) ; 6 uses
  %i.em = icmp slt i32 %i.ek, %i.ea
  %i.en = icmp sgt i32 %i.el, -1
  %or.cond.i.i = and i1 %i.em, %i.en
  br i1 %or.cond.i.i, label %bb.ag, label %nsvg__fillScanline.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.eo = icmp eq i32 %i.ek, %i.el
  br i1 %i.eo, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ep = zext nneg i32 %i.ek to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ep ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !17
  %i.es = sub nsw i32 %i.ej, %.03350.i
  %i.et = mul nsw i32 %i.es, 51
  %i.eu = lshr i32 %i.et, 10
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = add i8 %i.er, %i.ev
  store i8 %i.ew, ptr %i.eq, align 1, !tbaa !17
  br label %nsvg__fillScanline.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.ex = icmp sgt i32 %i.ek, -1
  br i1 %i.ex, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ey = zext nneg i32 %i.ek to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !17
  %i.fb = and i32 %.03350.i, 1023
  %i.fc = sub nuw nsw i32 1024, %i.fb
  %i.fd = mul nuw nsw i32 %i.fc, 51
  %i.fe = lshr i32 %i.fd, 10
  %i.ff = trunc nuw nsw i32 %i.fe to i8
  %i.fg = add i8 %i.fa, %i.ff
  store i8 %i.fg, ptr %i.ez, align 1, !tbaa !17
  %i.fh = add nuw nsw i32 %i.ek, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.047.i.i = phi i32 [ %i.fh, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.fi = icmp slt i32 %i.el, %i.ea
  br i1 %i.fi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fj = zext nneg i32 %i.el to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fj ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !17
  %i.fm = and i32 %i.ej, 1023
  %i.fn = mul nuw nsw i32 %i.fm, 51
  %i.fo = lshr i32 %i.fn, 10
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  %i.fq = add i8 %i.fl, %i.fp
  store i8 %i.fq, ptr %i.fk, align 1, !tbaa !17
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i.i = phi i32 [ %i.el, %bb.al ], [ %i.ea, %bb.ak ] ; 2 uses
  %i.fr = icmp slt i32 %.047.i.i, %.0.i.i
  br i1 %i.fr, label %iter.check, label %nsvg__fillScanline.exit.i

iter.check:                                       ; preds = %bb.am
  %i.fs = zext i32 %.047.i.i to i64               ; 7 uses
  %i.ft = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.fu = add nuw nsw i64 %i.fs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 %i.ft)
  %i.fv = sub nsw i64 %umax, %i.fs                ; 7 uses
  %min.iters.check = icmp ult i64 %i.fv, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i64 %i.fv, 32
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fw = and i64 %i.fv, 24
  %n.vec = and i64 %i.fv, -32                     ; 4 uses
  %i.fx = add nsw i64 %n.vec, %i.fs
  %invariant.gep255 = getelementptr i8, ptr %i.dz, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep256 = getelementptr i8, ptr %invariant.gep255, i64 %index ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %gep256, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep256, align 1, !tbaa !17
  %wide.load214 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !17
  %i.fz = add <16 x i8> %wide.load, splat (i8 51)
  %i.ga = add <16 x i8> %wide.load214, splat (i8 51)
  store <16 x i8> %i.fz, ptr %gep256, align 1, !tbaa !17
  store <16 x i8> %i.ga, ptr %i.fy, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %nsvg__fillScanline.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !259

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec215 = and i64 %i.fv, -8                   ; 3 uses
  %i.gc = add nsw i64 %n.vec215, %i.fs
  %invariant.gep257 = getelementptr i8, ptr %i.dz, i64 %i.fs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index216 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 2 uses
  %gep258 = getelementptr i8, ptr %invariant.gep257, i64 %index216 ; 2 uses
  %wide.load217 = load <8 x i8>, ptr %gep258, align 1, !tbaa !17
  %i.gd = add <8 x i8> %wide.load217, splat (i8 51)
  store <8 x i8> %i.gd, ptr %gep258, align 1, !tbaa !17
  %index.next218 = add nuw i64 %index216, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next218, %n.vec215
  br i1 %i.ge, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !237

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n219 = icmp eq i64 %i.fv, %n.vec215
  br i1 %cmp.n219, label %nsvg__fillScanline.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.fs, %iter.check ], [ %i.fx, %vec.epilog.iter.check ], [ %i.gc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.i.i ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !17
  %i.gh = add i8 %i.gg, 51
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ft
  br i1 %i.gi, label %.lr.ph.i.i, label %nsvg__fillScanline.exit.i, !llvm.loop !238

nsvg__fillScanline.exit.i:                        ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.am, %bb.ah, %bb.af, %bb.ae, %bb.ad
  %.7131 = phi i32 [ %.6130, %bb.ad ], [ %spec.select, %bb.ah ], [ %.6130, %bb.ae ], [ %spec.select, %bb.am ], [ %spec.select, %bb.af ], [ %spec.select, %middle.block ], [ %spec.select, %vec.epilog.middle.block ], [ %spec.select, %.lr.ph.i.i ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.ad ], [ %.8, %bb.ah ], [ %.6, %bb.ae ], [ %.8, %bb.am ], [ %.8, %bb.af ], [ %.8, %middle.block ], [ %.8, %vec.epilog.middle.block ], [ %.8, %.lr.ph.i.i ] ; 2 uses
  %.134.i = phi i32 [ %i.ec, %bb.ad ], [ %.03350.i, %bb.ah ], [ %.03350.i, %bb.ae ], [ %.03350.i, %bb.am ], [ %.03350.i, %bb.af ], [ %.03350.i, %middle.block ], [ %.03350.i, %vec.epilog.middle.block ], [ %.03350.i, %.lr.ph.i.i ]
  %.132.i = phi i32 [ %i.ee, %bb.ad ], [ 0, %bb.ah ], [ %i.eh, %bb.ae ], [ 0, %bb.am ], [ 0, %bb.af ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.052.i, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !251 ; 2 uses
  %.not.i112 = icmp eq ptr %i.gk, null
  br i1 %.not.i112, label %nsvg__fillActiveEdges.exit, label %.preheader.i, !llvm.loop !239

.preheader48.i:                                   ; preds = %bb.ac, %nsvg__fillScanline.exit47.i
  %.3127 = phi i32 [ %.5129, %nsvg__fillScanline.exit47.i ], [ %.0124155, %bb.ac ] ; 2 uses
  %.3 = phi i32 [ %.5, %nsvg__fillScanline.exit47.i ], [ %.0121156, %bb.ac ] ; 2 uses
  %.235.i = phi i32 [ %.336.i, %nsvg__fillScanline.exit47.i ], [ 0, %bb.ac ] ; 9 uses
  %.2.i = phi i32 [ %.3.i, %nsvg__fillScanline.exit47.i ], [ 0, %bb.ac ]
  %.1.i = phi ptr [ %i.in, %nsvg__fillScanline.exit47.i ], [ %.0..0..0..0.94, %bb.ac ] ; 2 uses
  %i.gl = icmp eq i32 %.2.i, 0
  %i.gm = load i32, ptr %.1.i, align 8, !tbaa !253 ; 4 uses
  br i1 %i.gl, label %nsvg__fillScanline.exit47.i, label %bb.an

bb.an:                                            ; preds = %.preheader48.i
  %i.gn = ashr i32 %.235.i, 10                    ; 7 uses
  %i.go = ashr i32 %i.gm, 10                      ; 6 uses
  %spec.select134 = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 %.3127) ; 6 uses
  %.4 = tail call i32 @llvm.smax.i32(i32 %i.go, i32 %.3) ; 6 uses
  %i.gp = icmp slt i32 %i.gn, %i.ea
  %i.gq = icmp sgt i32 %i.go, -1
  %or.cond.i40.i = and i1 %i.gp, %i.gq
  br i1 %or.cond.i40.i, label %bb.ao, label %nsvg__fillScanline.exit47.i

bb.ao:                                            ; preds = %bb.an
  %i.gr = icmp eq i32 %i.gn, %i.go
  br i1 %i.gr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gs = zext nneg i32 %i.gn to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.gs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !17
  %i.gv = sub nsw i32 %i.gm, %.235.i
  %i.gw = mul nsw i32 %i.gv, 51
  %i.gx = lshr i32 %i.gw, 10
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = add i8 %i.gu, %i.gy
  store i8 %i.gz, ptr %i.gt, align 1, !tbaa !17
  br label %nsvg__fillScanline.exit47.i

bb.aq:                                            ; preds = %bb.ao
  %i.ha = icmp sgt i32 %i.gn, -1
  br i1 %i.ha, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hb = zext nneg i32 %i.gn to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !17
  %i.he = and i32 %.235.i, 1023
  %i.hf = sub nuw nsw i32 1024, %i.he
  %i.hg = mul nuw nsw i32 %i.hf, 51
  %i.hh = lshr i32 %i.hg, 10
  %i.hi = trunc nuw nsw i32 %i.hh to i8
  %i.hj = add i8 %i.hd, %i.hi
  store i8 %i.hj, ptr %i.hc, align 1, !tbaa !17
  %i.hk = add nuw nsw i32 %i.gn, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.047.i41.i = phi i32 [ %i.hk, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.hl = icmp slt i32 %i.go, %i.ea
  br i1 %i.hl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hm = zext nneg i32 %i.go to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !17
  %i.hp = and i32 %i.gm, 1023
  %i.hq = mul nuw nsw i32 %i.hp, 51
  %i.hr = lshr i32 %i.hq, 10
  %i.hs = trunc nuw nsw i32 %i.hr to i8
  %i.ht = add i8 %i.ho, %i.hs
  store i8 %i.ht, ptr %i.hn, align 1, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.i42.i = phi i32 [ %i.go, %bb.at ], [ %i.ea, %bb.as ] ; 2 uses
  %i.hu = icmp slt i32 %.047.i41.i, %.0.i42.i
  br i1 %i.hu, label %iter.check235, label %nsvg__fillScanline.exit47.i

iter.check235:                                    ; preds = %bb.au
  %i.hv = zext i32 %.047.i41.i to i64             ; 7 uses
  %i.hw = zext nneg i32 %.0.i42.i to i64          ; 2 uses
  %i.hx = add nuw nsw i64 %i.hv, 1
  %umax221 = tail call i64 @llvm.umax.i64(i64 %i.hx, i64 %i.hw)
  %i.hy = sub nsw i64 %umax221, %i.hv             ; 7 uses
  %min.iters.check222 = icmp ult i64 %i.hy, 8
  br i1 %min.iters.check222, label %.lr.ph.i44.i.preheader, label %vector.main.loop.iter.check223

vector.main.loop.iter.check223:                   ; preds = %iter.check235
  %min.iters.check224 = icmp ult i64 %i.hy, 32
  br i1 %min.iters.check224, label %vec.epilog.ph239, label %vector.ph225

vector.ph225:                                     ; preds = %vector.main.loop.iter.check223
  %i.hz = and i64 %i.hy, 24
  %n.vec226 = and i64 %i.hy, -32                  ; 4 uses
  %i.ia = add nsw i64 %n.vec226, %i.hv
  %invariant.gep = getelementptr i8, ptr %i.dz, i64 %i.hv
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index228 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load229 = load <16 x i8>, ptr %gep, align 1, !tbaa !17
  %wide.load230 = load <16 x i8>, ptr %i.ib, align 1, !tbaa !17
  %i.ic = add <16 x i8> %wide.load229, splat (i8 51)
  %i.id = add <16 x i8> %wide.load230, splat (i8 51)
  store <16 x i8> %i.ic, ptr %gep, align 1, !tbaa !17
  store <16 x i8> %i.id, ptr %i.ib, align 1, !tbaa !17
  %index.next231 = add nuw i64 %index228, 32      ; 2 uses
  %i.ie = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.ie, label %middle.block232, label %vector.body227, !llvm.loop !240

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %i.hy, %n.vec226
  br i1 %cmp.n233, label %nsvg__fillScanline.exit47.i, label %vec.epilog.iter.check237

vec.epilog.iter.check237:                         ; preds = %middle.block232
  %min.epilog.iters.check238 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check238, label %.lr.ph.i44.i.preheader, label %vec.epilog.ph239, !prof !259

vec.epilog.ph239:                                 ; preds = %vector.main.loop.iter.check223, %vec.epilog.iter.check237
  %vec.epilog.resume.val234 = phi i64 [ %n.vec226, %vec.epilog.iter.check237 ], [ 0, %vector.main.loop.iter.check223 ]
  %n.vec240 = and i64 %i.hy, -8                   ; 3 uses
  %i.if = add nsw i64 %n.vec240, %i.hv
  %invariant.gep253 = getelementptr i8, ptr %i.dz, i64 %i.hv
  br label %vec.epilog.vector.body241

vec.epilog.vector.body241:                        ; preds = %vec.epilog.vector.body241, %vec.epilog.ph239
  %index242 = phi i64 [ %vec.epilog.resume.val234, %vec.epilog.ph239 ], [ %index.next244, %vec.epilog.vector.body241 ] ; 2 uses
  %gep254 = getelementptr i8, ptr %invariant.gep253, i64 %index242 ; 2 uses
  %wide.load243 = load <8 x i8>, ptr %gep254, align 1, !tbaa !17
  %i.ig = add <8 x i8> %wide.load243, splat (i8 51)
  store <8 x i8> %i.ig, ptr %gep254, align 1, !tbaa !17
  %index.next244 = add nuw i64 %index242, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.ih, label %vec.epilog.middle.block245, label %vec.epilog.vector.body241, !llvm.loop !241

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body241
  %cmp.n246 = icmp eq i64 %i.hy, %n.vec240
  br i1 %cmp.n246, label %nsvg__fillScanline.exit47.i, label %.lr.ph.i44.i.preheader

.lr.ph.i44.i.preheader:                           ; preds = %iter.check235, %vec.epilog.iter.check237, %vec.epilog.middle.block245
  %indvars.iv.i45.i.ph = phi i64 [ %i.hv, %iter.check235 ], [ %i.ia, %vec.epilog.iter.check237 ], [ %i.if, %vec.epilog.middle.block245 ]
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader, %.lr.ph.i44.i
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i46.i, %.lr.ph.i44.i ], [ %indvars.iv.i45.i.ph, %.lr.ph.i44.i.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.i45.i ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !17
  %i.ik = add i8 %i.ij, 51
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !17
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %i.il = icmp samesign ult i64 %indvars.iv.next.i46.i, %i.hw
  br i1 %i.il, label %.lr.ph.i44.i, label %nsvg__fillScanline.exit47.i, !llvm.loop !242

nsvg__fillScanline.exit47.i:                      ; preds = %.lr.ph.i44.i, %middle.block232, %vec.epilog.middle.block245, %bb.au, %bb.ap, %bb.an, %.preheader48.i
  %.5129 = phi i32 [ %.3127, %.preheader48.i ], [ %spec.select134, %bb.ap ], [ %spec.select134, %bb.an ], [ %spec.select134, %bb.au ], [ %spec.select134, %middle.block232 ], [ %spec.select134, %vec.epilog.middle.block245 ], [ %spec.select134, %.lr.ph.i44.i ] ; 2 uses
  %.5 = phi i32 [ %.3, %.preheader48.i ], [ %.4, %bb.ap ], [ %.4, %bb.an ], [ %.4, %bb.au ], [ %.4, %middle.block232 ], [ %.4, %vec.epilog.middle.block245 ], [ %.4, %.lr.ph.i44.i ] ; 2 uses
  %.336.i = phi i32 [ %i.gm, %.preheader48.i ], [ %.235.i, %bb.ap ], [ %.235.i, %bb.an ], [ %.235.i, %bb.au ], [ %.235.i, %middle.block232 ], [ %.235.i, %vec.epilog.middle.block245 ], [ %.235.i, %.lr.ph.i44.i ]
  %.3.i = phi i32 [ 1, %.preheader48.i ], [ 0, %bb.ap ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %middle.block232 ], [ 0, %vec.epilog.middle.block245 ], [ 0, %.lr.ph.i44.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !251 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.in, null
  br i1 %.old1.not.i, label %nsvg__fillActiveEdges.exit, label %.preheader48.i

nsvg__fillActiveEdges.exit:                       ; preds = %nsvg__fillScanline.exit47.i, %nsvg__fillScanline.exit.i, %bb.ac, %.critedge2
  %.1125 = phi i32 [ %.0124155, %.critedge2 ], [ %.0124155, %bb.ac ], [ %.7131, %nsvg__fillScanline.exit.i ], [ %.5129, %nsvg__fillScanline.exit47.i ] ; 2 uses
  %.1122 = phi i32 [ %.0121156, %.critedge2 ], [ %.0121156, %bb.ac ], [ %.7, %nsvg__fillScanline.exit.i ], [ %.5, %nsvg__fillScanline.exit47.i ] ; 2 uses
  %i.io = add nuw nsw i32 %.083158, 1             ; 2 uses
  %exitcond166.not = icmp eq i32 %i.io, 5
  br i1 %exitcond166.not, label %bb.av, label %bb.c, !llvm.loop !243

bb.av:                                            ; preds = %nsvg__fillActiveEdges.exit
  %spec.select135 = tail call i32 @llvm.smax.i32(i32 %.1125, i32 0) ; 6 uses
  %i.ip = load i32, ptr %i.f, align 8, !tbaa !103
  %i.iq = add nsw i32 %i.ip, -1
  %.2123 = tail call i32 @llvm.smin.i32(i32 %.1122, i32 %i.iq) ; 2 uses
  %.not105 = icmp sgt i32 %spec.select135, %.2123
  br i1 %.not105, label %nsvg__scanlineSolid.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ir = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.is = load i32, ptr %i.m, align 8, !tbaa !105
  %i.it = mul nsw i32 %i.is, %.082160
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds i8, ptr %i.ir, i64 %i.iu
  %i.iw = shl nuw nsw i32 %spec.select135, 2
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ix ; 3 uses
  %i.iz = sub nuw nsw i32 %.2123, %spec.select135 ; 3 uses
  %i.ja = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.jb = zext nneg i32 %spec.select135 to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb ; 3 uses
  %i.jd = load i8, ptr %4, align 4, !tbaa !132
  switch i8 %i.jd, label %nsvg__scanlineSolid.exit [
    i8 1, label %.lr.ph184.i
    i8 2, label %.lr.ph180.i
    i8 3, label %.lr.ph.i
  ]

.lr.ph184.i:                                      ; preds = %bb.aw
  %i.je = load i32, ptr %i.u, align 4, !tbaa !133 ; 4 uses
  %i.jf = lshr i32 %i.je, 24
  %i.jg = lshr i32 %i.je, 16
  %i.jh = and i32 %i.jg, 255
  %i.ji = lshr i32 %i.je, 8
  %i.jj = and i32 %i.ji, 255
  %i.jk = and i32 %i.je, 255
  %i.jl = mul nuw nsw i32 %i.jf, 257
  %i.jm = mul nuw nsw i32 %i.jk, 257
  %i.jn = mul nuw nsw i32 %i.jj, 257
  %i.jo = mul nuw nsw i32 %i.jh, 257
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph184.i
  %.0183.i = phi ptr [ %i.iy, %.lr.ph184.i ], [ %i.ll, %bb.ax ] ; 6 uses
  %.0159182.i = phi ptr [ %i.jc, %.lr.ph184.i ], [ %i.lk, %bb.ax ] ; 2 uses
  %.0162181.i = phi i32 [ 0, %.lr.ph184.i ], [ %i.lm, %bb.ax ] ; 2 uses
  %i.jp = load i8, ptr %.0159182.i, align 1, !tbaa !17
  %i.jq = zext i8 %i.jp to i32
  %i.jr = mul nuw nsw i32 %i.jl, %i.jq
  %i.js = add nuw nsw i32 %i.jr, 257
  %i.jt = lshr i32 %i.js, 16                      ; 5 uses
  %i.ju = xor i32 %i.jt, 255
  %i.jv = mul nuw nsw i32 %i.jm, %i.jt
  %i.jw = add nuw nsw i32 %i.jv, 257
  %i.jx = lshr i32 %i.jw, 16
  %i.jy = mul nuw nsw i32 %i.jn, %i.jt
  %i.jz = add nuw nsw i32 %i.jy, 257
  %i.ka = lshr i32 %i.jz, 16
  %i.kb = mul nuw nsw i32 %i.jo, %i.jt
  %i.kc = add nuw nsw i32 %i.kb, 257
  %i.kd = lshr i32 %i.kc, 16
  %i.ke = load i8, ptr %.0183.i, align 1, !tbaa !17
  %i.kf = zext i8 %i.ke to i32
  %i.kg = mul nuw nsw i32 %i.ju, 257              ; 4 uses
  %i.kh = mul nuw nsw i32 %i.kg, %i.kf
  %i.ki = add nuw nsw i32 %i.kh, 257
  %i.kj = lshr i32 %i.ki, 16
  %i.kk = add nuw nsw i32 %i.kj, %i.jx
  %i.kl = getelementptr inbounds nuw i8, ptr %.0183.i, i64 1 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !17
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.kg, %i.kn
  %i.kp = add nuw nsw i32 %i.ko, 257
  %i.kq = lshr i32 %i.kp, 16
  %i.kr = add nuw nsw i32 %i.kq, %i.ka
  %i.ks = getelementptr inbounds nuw i8, ptr %.0183.i, i64 2 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !17
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul nuw nsw i32 %i.kg, %i.ku
  %i.kw = add nuw nsw i32 %i.kv, 257
  %i.kx = lshr i32 %i.kw, 16
  %i.ky = add nuw nsw i32 %i.kx, %i.kd
  %i.kz = getelementptr inbounds nuw i8, ptr %.0183.i, i64 3 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !17
  %i.lb = zext i8 %i.la to i32
  %i.lc = mul nuw nsw i32 %i.kg, %i.lb
  %i.ld = add nuw nsw i32 %i.lc, 257
  %i.le = lshr i32 %i.ld, 16
  %i.lf = add nuw nsw i32 %i.le, %i.jt
  %i.lg = trunc i32 %i.kk to i8
  store i8 %i.lg, ptr %.0183.i, align 1, !tbaa !17
  %i.lh = trunc i32 %i.kr to i8
  store i8 %i.lh, ptr %i.kl, align 1, !tbaa !17
  %i.li = trunc i32 %i.ky to i8
  store i8 %i.li, ptr %i.ks, align 1, !tbaa !17
  %i.lj = trunc i32 %i.lf to i8
  store i8 %i.lj, ptr %i.kz, align 1, !tbaa !17
  %i.lk = getelementptr inbounds nuw i8, ptr %.0159182.i, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %.0183.i, i64 4
  %i.lm = add nuw nsw i32 %.0162181.i, 1
  %exitcond188.not.i = icmp eq i32 %.0162181.i, %i.iz
  br i1 %exitcond188.not.i, label %nsvg__scanlineSolid.exit, label %bb.ax, !llvm.loop !244

.lr.ph180.i:                                      ; preds = %bb.aw
  %i.ln = uitofp nneg i32 %.082160 to float
  %i.lo = uitofp nneg i32 %spec.select135 to float
  %i.lp = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %i.lo, i64 1
  %i.lr = fsub <2 x float> %i.lq, %i.y
  %i.ls = fdiv <2 x float> %i.lr, %i.w            ; 2 uses
  %i.lt = extractelement <2 x float> %i.ls, i64 1
  %i.lu = extractelement <2 x float> %i.ls, i64 0
  br label %bb.ay

bb.ay:                                            ; preds = %nsvg__clampf.exit.i, %.lr.ph180.i
  %.1179.i = phi ptr [ %i.iy, %.lr.ph180.i ], [ %i.op, %nsvg__clampf.exit.i ] ; 6 uses
  %.1160178.i = phi ptr [ %i.jc, %.lr.ph180.i ], [ %i.oo, %nsvg__clampf.exit.i ] ; 2 uses
  %.0165177.i = phi float [ %i.lt, %.lr.ph180.i ], [ %i.oq, %nsvg__clampf.exit.i ] ; 2 uses
  %.0166176.i = phi i32 [ 0, %.lr.ph180.i ], [ %i.or, %nsvg__clampf.exit.i ] ; 2 uses
  %i.lv = load float, ptr %i.r, align 4, !tbaa !31
  %i.lw = load float, ptr %i.s, align 4, !tbaa !31
  %i.lx = fmul float %i.lu, %i.lw
  %i.ly = tail call float @llvm.fmuladd.f32(float %.0165177.i, float %i.lv, float %i.lx)
  %i.lz = load float, ptr %i.t, align 4, !tbaa !31
  %i.ma = fadd float %i.lz, %i.ly
  %i.mb = fmul float %i.ma, 2.550000e+02          ; 4 uses
  %i.mc = fcmp uno float %i.mb, 0.000000e+00
end_hunk_0
