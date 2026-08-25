Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_piz?download=true
inline.NumInlined: 43
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@internal_exr_apply_piz:bb.a
  %.2.i.1 = select i1 %.not.i.1, i16 %.2.i, i16 %spec.select.i.1 ; 5 uses
  %.1.i.1 = select i1 %.not.i.1, i16 %.1.i, i16 %spec.select32.i.1 ; 4 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond41.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 8192
  br i1 %exitcond41.not.i.1, label %bitmapFromData.exit, label %bb.d, !llvm.loop !27

bitmapFromData.exit:                              ; preds = %bb.d
  store i16 0, ptr %i.s, align 2, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bitmapFromData.exit
  %indvars.iv.i179 = phi i64 [ 1, %bitmapFromData.exit ], [ %indvars.iv.next.i182.1, %bb.f ] ; 5 uses
  %.01112.i = phi i16 [ 1, %bitmapFromData.exit ], [ %.1.i181.1, %bb.f ] ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.i179 to i32
  %i.bt = lshr i64 %indvars.iv.i179, 3
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = zext i8 %i.bw to i32
  %i.by = and i32 %i.bs, 7
  %i.bz = shl nuw nsw i32 1, %i.by
  %i.ca = and i32 %i.bz, %i.bx
  %.not.i180 = icmp ne i32 %i.ca, 0               ; 2 uses
  %.01112.sink.i = select i1 %.not.i180, i16 %.01112.i, i16 0
  %i.cb = zext i1 %.not.i180 to i16
  %.1.i181 = add i16 %.01112.i, %i.cb             ; 3 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i179
  store i16 %.01112.sink.i, ptr %i.cc, align 2, !tbaa !24
  %indvars.iv.next.i182 = add nuw nsw i64 %indvars.iv.i179, 1 ; 4 uses
  %exitcond.not.i183 = icmp eq i64 %indvars.iv.next.i182, 65536
  br i1 %exitcond.not.i183, label %forwardLutFromBitmap.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.i182 to i32
  %i.ce = lshr i64 %indvars.iv.next.i182, 3
  %i.cf = and i64 %i.ce, 536870911
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !23
  %i.ci = zext i8 %i.ch to i32
  %i.cj = and i32 %i.cd, 7
  %i.ck = shl nuw nsw i32 1, %i.cj
  %i.cl = and i32 %i.ck, %i.ci
  %.not.i180.1 = icmp ne i32 %i.cl, 0             ; 2 uses
  %.01112.sink.i.1 = select i1 %.not.i180.1, i16 %.1.i181, i16 0
  %i.cm = zext i1 %.not.i180.1 to i16
  %.1.i181.1 = add i16 %.1.i181, %i.cm
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i182
  store i16 %.01112.sink.i.1, ptr %i.cn, align 2, !tbaa !24
  %indvars.iv.next.i182.1 = add nuw nsw i64 %indvars.iv.i179, 2
  br label %bb.e

forwardLutFromBitmap.exit:                        ; preds = %bb.e
  %i.co = add i16 %.1.i181, -1
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.cq = icmp ugt i64 %i.f, 17
  br i1 %i.cq, label %.lr.ph.i187, label %.preheader.i

.preheader.i:                                     ; preds = %forwardLutFromBitmap.exit
  br i1 %.not38.i, label %applyLut.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.lr.ph.i187, %.preheader.i
  %.018.lcssa48.i = phi i64 [ %i.g, %.preheader.i ], [ %i.ds, %.lr.ph.i187 ] ; 3 uses
  %.019.lcssa47.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.dr, %.lr.ph.i187 ] ; 5 uses
  %i.cr = add nsw i64 %.018.lcssa48.i, -1
  %xtraiter278 = and i64 %.018.lcssa48.i, 3       ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 3
  br i1 %i.cs, label %.lr.ph25.i.epil.preheader, label %.lr.ph25.preheader.i.new

.lr.ph25.preheader.i.new:                         ; preds = %.lr.ph25.preheader.i
  %unroll_iter281 = and i64 %.018.lcssa48.i, 9223372036854775804
  br label %.lr.ph25.i

.lr.ph.i187:                                      ; preds = %forwardLutFromBitmap.exit, %.lr.ph.i187
  %.01822.i = phi i64 [ %i.ds, %.lr.ph.i187 ], [ %i.g, %forwardLutFromBitmap.exit ]
  %.01921.i = phi ptr [ %i.dr, %.lr.ph.i187 ], [ %i.cp, %forwardLutFromBitmap.exit ] ; 10 uses
  %.sroa.0.0.copyload.i = load i16, ptr %.01921.i, align 2, !alias.scope !31, !noalias !28
  %.sroa.6.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 2 ; 2 uses
  %.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %.sroa.8.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 4 ; 2 uses
  %.sroa.8.0.copyload.i = load i16, ptr %.sroa.8.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %.sroa.10.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 6 ; 2 uses
  %.sroa.10.0.copyload.i = load i16, ptr %.sroa.10.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %.sroa.12.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 8 ; 2 uses
  %.sroa.12.0.copyload.i = load i16, ptr %.sroa.12.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %.sroa.14.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 10 ; 2 uses
  %.sroa.14.0.copyload.i = load i16, ptr %.sroa.14.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %.sroa.16.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 12 ; 2 uses
  %.sroa.16.0.copyload.i = load i16, ptr %.sroa.16.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %.sroa.18.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 14 ; 2 uses
  %.sroa.18.0.copyload.i = load i16, ptr %.sroa.18.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %i.ct = zext i16 %.sroa.0.0.copyload.i to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  %i.cw = zext i16 %.sroa.6.0.copyload.i to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  %i.cz = zext i16 %.sroa.8.0.copyload.i to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  %i.dc = zext i16 %.sroa.10.0.copyload.i to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  %i.df = zext i16 %.sroa.12.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  %i.di = zext i16 %.sroa.14.0.copyload.i to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  %i.dl = zext i16 %.sroa.16.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  %i.do = zext i16 %.sroa.18.0.copyload.i to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  store i16 %i.cv, ptr %.01921.i, align 2, !alias.scope !31, !noalias !28
  store i16 %i.cy, ptr %.sroa.6.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  store i16 %i.db, ptr %.sroa.8.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  store i16 %i.de, ptr %.sroa.10.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  store i16 %i.dh, ptr %.sroa.12.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  store i16 %i.dk, ptr %.sroa.14.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  store i16 %i.dn, ptr %.sroa.16.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  store i16 %i.dq, ptr %.sroa.18.0..01921.sroa_idx.i, align 2, !alias.scope !31, !noalias !28
  %i.dr = getelementptr inbounds nuw i8, ptr %.01921.i, i64 16 ; 2 uses
  %i.ds = add nsw i64 %.01822.i, -8               ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 8
  br i1 %i.dt, label %.lr.ph.i187, label %.lr.ph25.preheader.i, !llvm.loop !33

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.preheader.i.new
  %.024.i = phi i64 [ 0, %.lr.ph25.preheader.i.new ], [ %i.er, %.lr.ph25.i ] ; 5 uses
  %niter282 = phi i64 [ 0, %.lr.ph25.preheader.i.new ], [ %niter282.next.3, %.lr.ph25.i ]
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  store i16 %i.dy, ptr %i.du, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.ec = zext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  store i16 %i.ee, ptr %i.ea, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.ei = zext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  store i16 %i.ek, ptr %i.eg, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 6 ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.eo = zext i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  store i16 %i.eq, ptr %i.em, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.er = add nuw nsw i64 %.024.i, 4              ; 2 uses
  %niter282.next.3 = add i64 %niter282, 4         ; 2 uses
  %niter282.ncmp.3 = icmp eq i64 %niter282.next.3, %unroll_iter281
  br i1 %niter282.ncmp.3, label %applyLut.exit.loopexit.unr-lcssa, label %.lr.ph25.i, !llvm.loop !34

applyLut.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph25.i
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %applyLut.exit, label %.lr.ph25.i.epil.preheader

.lr.ph25.i.epil.preheader:                        ; preds = %applyLut.exit.loopexit.unr-lcssa, %.lr.ph25.preheader.i
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %i.er, %applyLut.exit.loopexit.unr-lcssa ]
  %lcmp.mod280 = icmp ne i64 %xtraiter278, 0
  tail call void @llvm.assume(i1 %lcmp.mod280)
  br label %.lr.ph25.i.epil

.lr.ph25.i.epil:                                  ; preds = %.lr.ph25.i.epil, %.lr.ph25.i.epil.preheader
  %.024.i.epil = phi i64 [ %i.ex, %.lr.ph25.i.epil ], [ %.024.i.epil.init, %.lr.ph25.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph25.i.epil ], [ 0, %.lr.ph25.i.epil.preheader ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i.epil ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !24, !alias.scope !28, !noalias !31
  store i16 %i.ew, ptr %i.es, align 2, !tbaa !24, !alias.scope !31, !noalias !28
  %i.ex = add nuw nsw i64 %.024.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter278
  br i1 %epil.iter.cmp.not, label %applyLut.exit, label %.lr.ph25.i.epil, !llvm.loop !35

applyLut.exit:                                    ; preds = %applyLut.exit.loopexit.unr-lcssa, %.lr.ph25.i.epil, %.preheader.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !37
  %i.fa = icmp ult i64 %i.ez, 4
  br i1 %i.fa, label %.critedge, label %bb.m

bb.g:                                             ; preds = %.lr.ph210.a, %._crit_edge
  %i.fb = phi i32 [ %i.v, %.lr.ph210.a ], [ %i.fi, %._crit_edge ]
  %i.fc = phi i16 [ %.pre, %.lr.ph210.a ], [ %i.fj, %._crit_edge ] ; 2 uses
  %i.fd = phi i16 [ %.pre, %.lr.ph210.a ], [ %i.fk, %._crit_edge ] ; 2 uses
  %.0142208 = phi i32 [ 0, %.lr.ph210.a ], [ %i.fl, %._crit_edge ] ; 4 uses
  %.0146207 = phi ptr [ %i.x, %.lr.ph210.a ], [ %.1147.lcssa, %._crit_edge ] ; 2 uses
  %.lcssa199205206 = phi i64 [ undef, %.lr.ph210.a ], [ %.lcssa199, %._crit_edge ]
  %i.fe = load i32, ptr %i.y, align 8, !tbaa !38
  %i.ff = add nsw i32 %i.fe, %.0142208
  %i.fg = icmp sgt i16 %i.fd, 0
  br i1 %i.fg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !22
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre235 = load i32, ptr %i.u, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.fi = phi i32 [ %i.fb, %bb.g ], [ %.pre235, %._crit_edge.loopexit ] ; 2 uses
  %i.fj = phi i16 [ %i.fc, %bb.g ], [ %i.gj, %._crit_edge.loopexit ]
  %i.fk = phi i16 [ %i.fd, %bb.g ], [ %i.gj, %._crit_edge.loopexit ]
  %.lcssa199 = phi i64 [ %.lcssa199205206, %bb.g ], [ %i.ga, %._crit_edge.loopexit ] ; 2 uses
  %.1147.lcssa = phi ptr [ %.0146207, %bb.g ], [ %.2, %._crit_edge.loopexit ]
  store i64 %.lcssa199, ptr %i.a, align 8
  %i.fl = add nuw nsw i32 %.0142208, 1            ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %i.fi
  br i1 %i.fm, label %bb.g, label %._crit_edge211, !llvm.loop !39

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.fn = phi i16 [ %i.fc, %.lr.ph.preheader ], [ %i.gj, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.1147201 = phi ptr [ %.0146207, %.lr.ph.preheader ], [ %.2, %bb.l ] ; 4 uses
  %.0149200 = phi ptr [ %i.fh, %.lr.ph.preheader ], [ %.1150, %bb.l ] ; 3 uses
  %i.fo = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.fo, i64 %indvars.iv ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !41
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !44
  %i.fu = sext i32 %i.fr to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !45
  %i.fx = sext i8 %i.fw to i64
  %i.fy = mul nsw i64 %i.fx, %i.fu                ; 4 uses
  %i.fz = sext i32 %i.ft to i64
  %i.ga = mul i64 %i.fy, %i.fz                    ; 3 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.gc = getelementptr inbounds nuw i8, ptr %.0149200, i64 %i.ga ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !46 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.gg = srem i32 %i.ff, %i.ge
  %.not176 = icmp eq i32 %i.gg, 0
  br i1 %.not176, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.gh = udiv i32 %.0142208, %i.ge
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.pn177.in = phi i32 [ %i.gh, %bb.j ], [ %.0142208, %bb.h ]
  %.pn177 = zext i32 %.pn177.in to i64
  %.pn = mul i64 %i.fy, %.pn177
  %.0148 = getelementptr inbounds nuw i8, ptr %.0149200, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0148, ptr align 1 %.1147201, i64 %i.fy, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.1147201, i64 %i.fy
  %.pre234 = load i16, ptr %i.z, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %.lr.ph, %bb.k
  %i.gj = phi i16 [ %.pre234, %bb.k ], [ %i.fn, %.lr.ph ], [ %i.fn, %bb.i ] ; 4 uses
  %.1150 = phi ptr [ %i.gc, %bb.k ], [ %.0149200, %.lr.ph ], [ %i.gc, %bb.i ]
  %.2 = phi ptr [ %i.gi, %bb.k ], [ %.1147201, %.lr.ph ], [ %.1147201, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gk = sext i16 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next, %i.gk
  br i1 %i.gl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !47

bb.m:                                             ; preds = %applyLut.exit
  store i16 %.2.i.1, ptr %i.c, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.1.i.1, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %.not173 = icmp ugt i16 %.2.i.1, %.1.i.1
  br i1 %.not173, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow = sub nuw i16 %.1.i.1, %.2.i.1
  %i.go = zext i16 %narrow to i64                 ; 3 uses
  %i.gp = add nuw nsw i64 %i.go, 5
  %i.gq = load i64, ptr %i.ey, align 8, !tbaa !37
  %i.gr = icmp ugt i64 %i.gp, %i.gq
  br i1 %i.gr, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gs = add nuw nsw i64 %i.go, 1                ; 2 uses
  %i.gt = zext nneg i16 %.2.i.1 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.gt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gn, ptr noundef nonnull align 1 dereferenceable(1) %i.gu, i64 %i.gs, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs
  %i.gw = add nuw nsw i64 %i.go, 9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0153 = phi ptr [ %i.gv, %bb.o ], [ %i.gn, %bb.m ] ; 2 uses
  %.0151 = phi i64 [ %i.gw, %bb.o ], [ 8, %bb.m ] ; 4 uses
  %i.gx = load ptr, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !21 ; 2 uses
  %.not174216 = icmp sgt i16 %i.gz, 0
  br i1 %.not174216, label %.lr.ph220, label %.critedge178

.lr.ph220:                                        ; preds = %bb.p
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !40
  %i.hc = icmp ult i16 %i.co, 16384               ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph220, %._crit_edge215.split
  %i.hd = phi i16 [ %i.gz, %.lr.ph220 ], [ %i.ht, %._crit_edge215.split ] ; 2 uses
  %indvars.iv231 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next232, %._crit_edge215.split ] ; 2 uses
  %.0144217 = phi ptr [ %i.gx, %.lr.ph220 ], [ %i.hz, %._crit_edge215.split ] ; 2 uses
  %i.he = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %indvars.iv231 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !41 ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !44 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 25
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !45  ; 2 uses
  %i.hl = sdiv i8 %i.hk, 2                        ; 2 uses
  %i.hm = sext i8 %i.hl to i32                    ; 7 uses
  %i.hn = icmp sgt i8 %i.hk, 1
  br i1 %i.hn, label %bb.r, label %._crit_edge215.split

bb.r:                                             ; preds = %bb.q
  %i.ho = udiv i32 2147483647, %i.hm
  %i.hp = icmp sgt i32 %i.hg, %i.ho
  br i1 %i.hp, label %.critedge, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.r
  %i.hq = mul nsw i32 %i.hg, %i.hm
  %i.hr = tail call i32 @llvm.smin.i32(i32 %i.hg, i32 %i.hi) ; 2 uses
  %i.hs = sext i32 %i.hq to i64                   ; 3 uses
  %.not129.i = icmp slt i32 %i.hr, 2
  br i1 %.not129.i, label %._crit_edge215.split, label %.lr.ph133.i.preheader.preheader

.lr.ph133.i.preheader.preheader:                  ; preds = %.lr.ph214
  %wide.trip.count = zext nneg i32 %i.hm to i64
  br label %.lr.ph133.i.preheader

._crit_edge215.split.loopexit:                    ; preds = %wav_2D_encode.exit.loopexit
  %.pre236 = load i16, ptr %i.gy, align 8, !tbaa !21
  br label %._crit_edge215.split

._crit_edge215.split:                             ; preds = %bb.q, %._crit_edge215.split.loopexit, %.lr.ph214
  %i.ht = phi i16 [ %.pre236, %._crit_edge215.split.loopexit ], [ %i.hd, %.lr.ph214 ], [ %i.hd, %bb.q ] ; 2 uses
  %i.hu = sext i32 %i.hg to i64
  %i.hv = sext i32 %i.hi to i64
  %i.hw = mul nsw i64 %i.hv, %i.hu
  %i.hx = sext i8 %i.hl to i64
  %i.hy = mul i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.0144217, i64 %i.hy
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.ia = sext i16 %i.ht to i64
  %.not174 = icmp slt i64 %indvars.iv.next232, %i.ia
  br i1 %.not174, label %bb.q, label %.critedge178, !llvm.loop !48

.lr.ph133.i.preheader:                            ; preds = %.lr.ph133.i.preheader.preheader, %wav_2D_encode.exit.loopexit
  %indvars.iv228 = phi i64 [ 0, %.lr.ph133.i.preheader.preheader ], [ %indvars.iv.next229, %wav_2D_encode.exit.loopexit ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.0144217, i64 %indvars.iv228 ; 3 uses
  br label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.lr.ph133.i.preheader, %.loopexit.i
  %.095131.i = phi i32 [ %i.nv, %.loopexit.i ], [ 2, %.lr.ph133.i.preheader ] ; 7 uses
  %.096130.i = phi i32 [ %.095131.i, %.loopexit.i ], [ 1, %.lr.ph133.i.preheader ] ; 4 uses
  %i.ic = sub nsw i32 %i.hi, %.095131.i
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = mul nsw i64 %i.id, %i.hs                ; 2 uses
  %.idx.i = shl nsw i64 %i.ie, 1
  %i.if = getelementptr inbounds i8, ptr %i.ib, i64 %.idx.i
  %i.ig = sext i32 %.096130.i to i64
  %i.ih = mul nsw i64 %i.ig, %i.hs                ; 5 uses
  %i.ii = sext i32 %.095131.i to i64
  %i.ij = mul nsw i64 %i.ii, %i.hs
  %i.ik = mul nsw i32 %.096130.i, %i.hm           ; 2 uses
  %i.il = mul nsw i32 %.095131.i, %i.hm           ; 2 uses
  %.not97118.i = icmp slt i64 %i.ie, 0
  br i1 %.not97118.i, label %._crit_edge123.i, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %.lr.ph133.i
  %i.im = sub nsw i32 %i.hg, %.095131.i
  %i.in = mul nsw i32 %i.im, %i.hm                ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = sext i32 %i.ik to i64                   ; 4 uses
  %i.iq = sext i32 %i.il to i64                   ; 2 uses
  %i.ir = and i32 %.096130.i, %i.hg
  %.not101.i = icmp eq i32 %i.ir, 0               ; 3 uses
  %.idx135.i = shl nsw i64 %i.io, 1
  %.not100116.i = icmp slt i32 %i.in, 0
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph122.i
  %.094119.i = phi ptr [ %i.ib, %.lr.ph122.i ], [ %i.mp, %bb.w ] ; 7 uses
  %i.is = getelementptr inbounds i8, ptr %.094119.i, i64 %.idx135.i ; 2 uses
  br i1 %.not100116.i, label %._crit_edge.i190, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %bb.s
  br i1 %i.hc, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i188, %.lr.ph.split.us.i
  %.093117.us.i = phi ptr [ %i.jy, %.lr.ph.split.us.i ], [ %.094119.i, %.lr.ph.i188 ] ; 5 uses
  %i.it = getelementptr inbounds [2 x i8], ptr %.093117.us.i, i64 %i.ip ; 2 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %.093117.us.i, i64 %i.ih ; 3 uses
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.iu, i64 %i.ip ; 2 uses
  %i.iw = load i16, ptr %.093117.us.i, align 2, !tbaa !24 ; 2 uses
  %i.ix = load i16, ptr %i.it, align 2, !tbaa !24 ; 2 uses
  %i.iy = sext i16 %i.iw to i32
  %i.iz = sext i16 %i.ix to i32
  %i.ja = add nsw i32 %i.iz, %i.iy
  %i.jb = lshr i32 %i.ja, 1                       ; 2 uses
  %i.jc = trunc i32 %i.jb to i16
  %i.jd = sub i16 %i.iw, %i.ix                    ; 2 uses
  %i.je = load i16, ptr %i.iu, align 2, !tbaa !24 ; 2 uses
  %i.jf = load i16, ptr %i.iv, align 2, !tbaa !24 ; 2 uses
  %i.jg = sext i16 %i.je to i32
  %i.jh = sext i16 %i.jf to i32
  %i.ji = add nsw i32 %i.jh, %i.jg
  %i.jj = lshr i32 %i.ji, 1                       ; 2 uses
  %i.jk = trunc i32 %i.jj to i16
  %i.jl = sub i16 %i.je, %i.jf                    ; 2 uses
  %sext.us.i = shl i32 %i.jb, 16
  %i.jm = ashr exact i32 %sext.us.i, 16
  %sext114.us.i = shl i32 %i.jj, 16
  %i.jn = ashr exact i32 %sext114.us.i, 16
  %i.jo = add nsw i32 %i.jn, %i.jm
  %i.jp = lshr i32 %i.jo, 1
  %i.jq = trunc i32 %i.jp to i16
  %i.jr = sub i16 %i.jc, %i.jk
  store i16 %i.jq, ptr %.093117.us.i, align 2, !tbaa !24
  store i16 %i.jr, ptr %i.iu, align 2, !tbaa !24
  %i.js = sext i16 %i.jd to i32
  %i.jt = sext i16 %i.jl to i32
  %i.ju = add nsw i32 %i.jt, %i.js
  %i.jv = lshr i32 %i.ju, 1
  %i.jw = trunc i32 %i.jv to i16
  %i.jx = sub i16 %i.jd, %i.jl
  store i16 %i.jw, ptr %i.it, align 2, !tbaa !24
  store i16 %i.jx, ptr %i.iv, align 2, !tbaa !24
  %i.jy = getelementptr inbounds [2 x i8], ptr %.093117.us.i, i64 %i.iq ; 4 uses
  %.not100.us.i = icmp ugt ptr %i.jy, %i.is
  br i1 %.not100.us.i, label %._crit_edge.thread149.i, label %.lr.ph.split.us.i, !llvm.loop !49

.lr.ph.split.i:                                   ; preds = %.lr.ph.i188, %.lr.ph.split.i
  %.093117.i = phi ptr [ %i.lp, %.lr.ph.split.i ], [ %.094119.i, %.lr.ph.i188 ] ; 5 uses
  %i.jz = getelementptr inbounds [2 x i8], ptr %.093117.i, i64 %i.ip ; 2 uses
  %i.ka = getelementptr inbounds [2 x i8], ptr %.093117.i, i64 %i.ih ; 3 uses
  %i.kb = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ip ; 2 uses
  %i.kc = load i16, ptr %.093117.i, align 2, !tbaa !24
  %i.kd = load i16, ptr %i.jz, align 2, !tbaa !24
  %i.ke = xor i16 %i.kc, -32768
  %i.kf = zext i16 %i.ke to i32                   ; 2 uses
  %i.kg = zext i16 %i.kd to i32                   ; 2 uses
  %i.kh = add nuw nsw i32 %i.kf, %i.kg
  %i.ki = lshr i32 %i.kh, 1
  %i.kj = sub nsw i32 %i.kf, %i.kg                ; 2 uses
  %i.kk = lshr i32 %i.kj, 16
  %i.kl = and i32 %i.kk, 32768
  %i.km = load i16, ptr %i.ka, align 2, !tbaa !24
  %i.kn = load i16, ptr %i.kb, align 2, !tbaa !24
  %i.ko = xor i16 %i.km, -32768
  %i.kp = zext i16 %i.ko to i32                   ; 2 uses
  %i.kq = zext i16 %i.kn to i32                   ; 2 uses
  %i.kr = add nuw nsw i32 %i.kp, %i.kq
  %i.ks = lshr i32 %i.kr, 1
  %i.kt = sub nsw i32 %i.kp, %i.kq                ; 2 uses
  %i.ku = lshr i32 %i.kt, 16
  %i.kv = and i32 %i.ku, 32768
  %spec.select.i102.i = xor i32 %i.kv, %i.ks      ; 2 uses
  %i.kw = xor i32 %i.ki, %i.kl
  %i.kx = xor i32 %i.kw, 32768                    ; 2 uses
  %i.ky = add nuw nsw i32 %spec.select.i102.i, %i.kx
  %i.kz = lshr i32 %i.ky, 1
  %i.la = sub nsw i32 %i.kx, %spec.select.i102.i  ; 2 uses
  %i.lb = lshr i32 %i.la, 16
  %i.lc = and i32 %i.lb, 32768
  %spec.select.i103.i = xor i32 %i.lc, %i.kz
  %i.ld = trunc nuw i32 %spec.select.i103.i to i16
  store i16 %i.ld, ptr %.093117.i, align 2, !tbaa !24
  %i.le = trunc i32 %i.la to i16
  store i16 %i.le, ptr %i.ka, align 2, !tbaa !24
  %i.lf = and i32 %i.kj, 65535
  %i.lg = xor i32 %i.lf, 32768                    ; 2 uses
  %i.lh = and i32 %i.kt, 65535                    ; 2 uses
  %i.li = add nuw nsw i32 %i.lh, %i.lg
  %i.lj = lshr i32 %i.li, 1
  %i.lk = sub nsw i32 %i.lg, %i.lh                ; 2 uses
  %i.ll = lshr i32 %i.lk, 16
  %i.lm = and i32 %i.ll, 32768
  %spec.select.i104.i = xor i32 %i.lm, %i.lj
  %i.ln = trunc nuw i32 %spec.select.i104.i to i16
  store i16 %i.ln, ptr %i.jz, align 2, !tbaa !24
  %i.lo = trunc i32 %i.lk to i16
  store i16 %i.lo, ptr %i.kb, align 2, !tbaa !24
  %i.lp = getelementptr inbounds [2 x i8], ptr %.093117.i, i64 %i.iq ; 4 uses
  %.not100.i = icmp ugt ptr %i.lp, %i.is
  br i1 %.not100.i, label %._crit_edge.thread.i, label %.lr.ph.split.i, !llvm.loop !49

._crit_edge.i190:                                 ; preds = %bb.s
  br i1 %.not101.i, label %bb.w, label %bb.t

._crit_edge.thread149.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %.not101.i, label %bb.w, label %.thread151.i

.thread151.i:                                     ; preds = %._crit_edge.thread149.i
  %i.lq = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %i.ih
  br label %bb.u

._crit_edge.thread.i:                             ; preds = %.lr.ph.split.i
  br i1 %.not101.i, label %bb.w, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.lr = getelementptr inbounds [2 x i8], ptr %i.lp, i64 %i.ih
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge.i190
  %i.ls = getelementptr inbounds [2 x i8], ptr %.094119.i, i64 %i.ih ; 2 uses
  br i1 %i.hc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %.thread151.i
  %i.lt = phi ptr [ %i.lq, %.thread151.i ], [ %i.ls, %bb.t ] ; 2 uses
  %.093.lcssa146153.i = phi ptr [ %i.jy, %.thread151.i ], [ %.094119.i, %bb.t ] ; 2 uses
  %i.lu = load i16, ptr %.093.lcssa146153.i, align 2, !tbaa !24 ; 2 uses
  %i.lv = load i16, ptr %i.lt, align 2, !tbaa !24 ; 2 uses
  %i.lw = sext i16 %i.lu to i32
  %i.lx = sext i16 %i.lv to i32
  %i.ly = add nsw i32 %i.lx, %i.lw
  %i.lz = lshr i32 %i.ly, 1
  %i.ma = trunc i32 %i.lz to i16
  %i.mb = sub i16 %i.lu, %i.lv
  store i16 %i.ma, ptr %.093.lcssa146153.i, align 2, !tbaa !24
  store i16 %i.mb, ptr %i.lt, align 2, !tbaa !24
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %.thread.i
  %i.mc = phi ptr [ %i.lr, %.thread.i ], [ %i.ls, %bb.t ] ; 2 uses
  %.093.lcssa146148.i = phi ptr [ %i.lp, %.thread.i ], [ %.094119.i, %bb.t ] ; 2 uses
  %i.md = load i16, ptr %.093.lcssa146148.i, align 2, !tbaa !24
  %i.me = load i16, ptr %i.mc, align 2, !tbaa !24
  %i.mf = xor i16 %i.md, -32768
  %i.mg = zext i16 %i.mf to i32                   ; 2 uses
  %i.mh = zext i16 %i.me to i32                   ; 2 uses
  %i.mi = add nuw nsw i32 %i.mg, %i.mh
  %i.mj = lshr i32 %i.mi, 1
  %i.mk = sub nsw i32 %i.mg, %i.mh                ; 2 uses
  %i.ml = lshr i32 %i.mk, 16
  %i.mm = and i32 %i.ml, 32768
  %spec.select.i105.i = xor i32 %i.mm, %i.mj
  %i.mn = trunc nuw i32 %spec.select.i105.i to i16
  store i16 %i.mn, ptr %.093.lcssa146148.i, align 2, !tbaa !24
  %i.mo = trunc i32 %i.mk to i16
  store i16 %i.mo, ptr %i.mc, align 2, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.thread.i, %._crit_edge.thread149.i, %._crit_edge.i190
  %i.mp = getelementptr inbounds [2 x i8], ptr %.094119.i, i64 %i.ij ; 3 uses
  %.not97.i = icmp ugt ptr %i.mp, %i.if
  br i1 %.not97.i, label %._crit_edge123.i, label %bb.s, !llvm.loop !50

._crit_edge123.i:                                 ; preds = %bb.w, %.lr.ph133.i
  %.094.lcssa.i = phi ptr [ %i.ib, %.lr.ph133.i ], [ %i.mp, %bb.w ] ; 3 uses
  %i.mq = and i32 %.096130.i, %i.hi
  %.not98.i = icmp eq i32 %i.mq, 0
  br i1 %.not98.i, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge123.i
  %i.mr = sub nsw i32 %i.hg, %.095131.i
  %i.ms = mul nsw i32 %i.mr, %i.hm                ; 2 uses
  %i.mt = sext i32 %i.ms to i64
  %.idx136.i = shl nsw i64 %i.mt, 1
  %i.mu = getelementptr inbounds i8, ptr %.094.lcssa.i, i64 %.idx136.i ; 2 uses
  %.not99125.i = icmp slt i32 %i.ms, 0
  br i1 %.not99125.i, label %.loopexit.i, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %bb.x
  %i.mv = sext i32 %i.ik to i64                   ; 2 uses
  %i.mw = sext i32 %i.il to i64                   ; 2 uses
  br i1 %i.hc, label %.lr.ph128.split.us.i, label %.lr.ph128.split.i

.lr.ph128.split.us.i:                             ; preds = %.lr.ph128.i, %.lr.ph128.split.us.i
  %.0126.us.i = phi ptr [ %i.ng, %.lr.ph128.split.us.i ], [ %.094.lcssa.i, %.lr.ph128.i ] ; 4 uses
  %i.mx = getelementptr inbounds [2 x i8], ptr %.0126.us.i, i64 %i.mv ; 2 uses
  %i.my = load i16, ptr %.0126.us.i, align 2, !tbaa !24 ; 2 uses
  %i.mz = load i16, ptr %i.mx, align 2, !tbaa !24 ; 2 uses
  %i.na = sext i16 %i.my to i32
  %i.nb = sext i16 %i.mz to i32
  %i.nc = add nsw i32 %i.nb, %i.na
  %i.nd = lshr i32 %i.nc, 1
  %i.ne = trunc i32 %i.nd to i16
  %i.nf = sub i16 %i.my, %i.mz
  store i16 %i.ne, ptr %.0126.us.i, align 2, !tbaa !24
  store i16 %i.nf, ptr %i.mx, align 2, !tbaa !24
  %i.ng = getelementptr inbounds [2 x i8], ptr %.0126.us.i, i64 %i.mw ; 2 uses
  %.not99.us.i = icmp ugt ptr %i.ng, %i.mu
  br i1 %.not99.us.i, label %.loopexit.i, label %.lr.ph128.split.us.i, !llvm.loop !51

.lr.ph128.split.i:                                ; preds = %.lr.ph128.i, %.lr.ph128.split.i
  %.0126.i = phi ptr [ %i.nu, %.lr.ph128.split.i ], [ %.094.lcssa.i, %.lr.ph128.i ] ; 4 uses
  %i.nh = getelementptr inbounds [2 x i8], ptr %.0126.i, i64 %i.mv ; 2 uses
  %i.ni = load i16, ptr %.0126.i, align 2, !tbaa !24
  %i.nj = load i16, ptr %i.nh, align 2, !tbaa !24
  %i.nk = xor i16 %i.ni, -32768
  %i.nl = zext i16 %i.nk to i32                   ; 2 uses
  %i.nm = zext i16 %i.nj to i32                   ; 2 uses
  %i.nn = add nuw nsw i32 %i.nl, %i.nm
  %i.no = lshr i32 %i.nn, 1
  %i.np = sub nsw i32 %i.nl, %i.nm                ; 2 uses
  %i.nq = lshr i32 %i.np, 16
  %i.nr = and i32 %i.nq, 32768
  %spec.select.i106.i = xor i32 %i.nr, %i.no
  %i.ns = trunc nuw i32 %spec.select.i106.i to i16
  store i16 %i.ns, ptr %.0126.i, align 2, !tbaa !24
  %i.nt = trunc i32 %i.np to i16
  store i16 %i.nt, ptr %i.nh, align 2, !tbaa !24
  %i.nu = getelementptr inbounds [2 x i8], ptr %.0126.i, i64 %i.mw ; 2 uses
  %.not99.i = icmp ugt ptr %i.nu, %i.mu
  br i1 %.not99.i, label %.loopexit.i, label %.lr.ph128.split.i, !llvm.loop !51

.loopexit.i:                                      ; preds = %.lr.ph128.split.i, %.lr.ph128.split.us.i, %bb.x, %._crit_edge123.i
  %i.nv = shl i32 %.095131.i, 1                   ; 2 uses
  %.not.i189 = icmp sgt i32 %i.nv, %i.hr
  br i1 %.not.i189, label %wav_2D_encode.exit.loopexit, label %.lr.ph133.i, !llvm.loop !52

wav_2D_encode.exit.loopexit:                      ; preds = %.loopexit.i
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge215.split.loopexit, label %.lr.ph133.i.preheader, !llvm.loop !53

.critedge178:                                     ; preds = %._crit_edge215.split, %bb.p
  store i64 0, ptr %i.a, align 8, !tbaa !54
  %i.nw = load i64, ptr %i.ey, align 8, !tbaa !37 ; 2 uses
  %i.nx = icmp ugt i64 %.0151, %i.nw
  br i1 %i.nx, label %.critedge, label %bb.y

bb.y:                                             ; preds = %.critedge178
  %i.ny = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %i.nz = sub nuw i64 %i.nw, %.0151
  %i.oa = call i32 @internal_huf_compress(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ny, i64 noundef %i.nz, ptr noundef %i.gx, i64 noundef %i.g, ptr noundef %i.q, i64 noundef %i.d) #8
  switch i32 %i.oa, label %bb.ad [
    i32 0, label %bb.aa
    i32 4, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.ob = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.oc = load ptr, ptr %i.t, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ob, ptr align 1 %i.oc, i64 %i.f, i1 false)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.od = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.oe = add i64 %i.od, %.0151                   ; 2 uses
  %i.of = icmp ult i64 %i.oe, %i.f
  br i1 %i.of, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.og = trunc i64 %i.od to i32
  store i32 %i.og, ptr %.0153, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.oh = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.oi = load ptr, ptr %i.t, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oh, ptr align 1 %i.oi, i64 %i.f, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ab, %bb.ac, %bb.z
  %.1152 = phi i64 [ %i.f, %bb.z ], [ %.0151, %bb.y ], [ %i.oe, %bb.ab ], [ %i.f, %bb.ac ]
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.1152, ptr %i.oj, align 8, !tbaa !55
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.critedge178, %bb.n, %applyLut.exit, %bb.b, %bb.a, %bb.ad
  %.3 = phi i32 [ 1, %.critedge178 ], [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ 1, %applyLut.exit ], [ 1, %bb.n ], [ 0, %bb.ad ], [ 23, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @internal_exr_huf_compress_spare_bytes() local_unnamed_addr #2

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @applyLut(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %2, 8
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %.lr.ph, %.preheader
  %.018.lcssa48 = phi i64 [ %2, %.preheader ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.019.lcssa47 = phi ptr [ %1, %.preheader ], [ %i.ab, %.lr.ph ] ; 5 uses
  %i.b = add nsw i64 %.018.lcssa48, -1
  %xtraiter = and i64 %.018.lcssa48, 3            ; 3 uses
  %i.c = icmp ult i64 %i.b, 3
  br i1 %i.c, label %.lr.ph25.epil.preheader, label %.lr.ph25.preheader.new

.lr.ph25.preheader.new:                           ; preds = %.lr.ph25.preheader
  %unroll_iter = and i64 %.018.lcssa48, 12
  br label %.lr.ph25

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01822 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %bb.a ]
  %.01921 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %bb.a ] ; 10 uses
  %.sroa.0.0.copyload = load i16, ptr %.01921, align 2
  %.sroa.6.0..01921.sroa_idx = getelementptr inbounds nuw i8, ptr %.01921, i64 2 ; 2 uses
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..01921.sroa_idx, align 2
  %.sroa.8.0..01921.sroa_idx = getelementptr inbounds nuw i8, ptr %.01921, i64 4 ; 2 uses
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..01921.sroa_idx, align 2
  %.sroa.10.0..01921.sroa_idx = getelementptr inbounds nuw i8, ptr %.01921, i64 6 ; 2 uses
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..01921.sroa_idx, align 2
  %.sroa.12.0..01921.sroa_idx = getelementptr inbounds nuw i8, ptr %.01921, i64 8 ; 2 uses
  %.sroa.12.0.copyload = load i16, ptr %.sroa.12.0..01921.sroa_idx, align 2
  %.sroa.14.0..01921.sroa_idx = getelementptr inbounds nuw i8, ptr %.01921, i64 10 ; 2 uses
  %.sroa.14.0.copyload = load i16, ptr %.sroa.14.0..01921.sroa_idx, align 2
  %.sroa.16.0..01921.sroa_idx = getelementptr inbounds nuw i8, ptr %.01921, i64 12 ; 2 uses
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..01921.sroa_idx, align 2
  %.sroa.18.0..01921.sroa_idx = getelementptr inbounds nuw i8, ptr %.01921, i64 14 ; 2 uses
  %.sroa.18.0.copyload = load i16, ptr %.sroa.18.0..01921.sroa_idx, align 2
  %i.d = zext i16 %.sroa.0.0.copyload to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24
  %i.g = zext i16 %.sroa.6.0.copyload to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !24
  %i.j = zext i16 %.sroa.8.0.copyload to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !24
  %i.m = zext i16 %.sroa.10.0.copyload to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !24
  %i.p = zext i16 %.sroa.12.0.copyload to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !24
  %i.s = zext i16 %.sroa.14.0.copyload to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !24
  %i.v = zext i16 %.sroa.16.0.copyload to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !24
  %i.y = zext i16 %.sroa.18.0.copyload to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !24
  store i16 %i.f, ptr %.01921, align 2
  store i16 %i.i, ptr %.sroa.6.0..01921.sroa_idx, align 2
  store i16 %i.l, ptr %.sroa.8.0..01921.sroa_idx, align 2
  store i16 %i.o, ptr %.sroa.10.0..01921.sroa_idx, align 2
  store i16 %i.r, ptr %.sroa.12.0..01921.sroa_idx, align 2
  store i16 %i.u, ptr %.sroa.14.0..01921.sroa_idx, align 2
  store i16 %i.x, ptr %.sroa.16.0..01921.sroa_idx, align 2
  store i16 %i.aa, ptr %.sroa.18.0..01921.sroa_idx, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.01921, i64 16 ; 2 uses
  %i.ac = add nsw i64 %.01822, -8                 ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 8
  br i1 %i.ad, label %.lr.ph, label %.lr.ph25.preheader, !llvm.loop !33

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph25
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph25.epil.preheader

.lr.ph25.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph25.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph25.preheader ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph25.epil

.lr.ph25.epil:                                    ; preds = %.lr.ph25.epil, %.lr.ph25.epil.preheader
  %.024.epil = phi i64 [ %i.aj, %.lr.ph25.epil ], [ %.024.epil.init, %.lr.ph25.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph25.epil ], [ 0, %.lr.ph25.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47, i64 %.024.epil ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !24
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !24
  store i16 %i.ai, ptr %i.ae, align 2, !tbaa !24
  %i.aj = add nuw nsw i64 %.024.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph25.epil, !llvm.loop !56

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph25.epil, %.preheader
  ret void

.lr.ph25:                                         ; preds = %.lr.ph25, %.lr.ph25.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph25.preheader.new ], [ %i.bh, %.lr.ph25 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph25.preheader.new ], [ %niter.next.3, %.lr.ph25 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47, i64 %.024 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !24
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !24
  store i16 %i.ao, ptr %i.ak, align 2, !tbaa !24
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47, i64 %.024
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !24
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !24
  store i16 %i.au, ptr %i.aq, align 2, !tbaa !24
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47, i64 %.024
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !24
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !24
  store i16 %i.ba, ptr %i.aw, align 2, !tbaa !24
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47, i64 %.024
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 6 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !24
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !24
  store i16 %i.bg, ptr %i.bc, align 2, !tbaa !24
  %i.bh = add nuw nsw i64 %.024, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !34
}

declare i32 @internal_huf_compress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_piz(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @internal_exr_huf_decompress_spare_bytes() #8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = add i64 %i.a, %4
  %i.e = tail call i32 @internal_decode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.d) #8 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = add i64 %i.a, 139264
  %i.i = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef %i.h) #8 ; 2 uses
  %.not176 = icmp eq i32 %i.i, 0
  br i1 %.not176, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.a ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 131072 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.l, i8 0, i64 8192, i1 false)
  %i.m = icmp ult i64 %2, 4
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val187 = load i16, ptr %1, align 1            ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i16, ptr %i.n, align 1             ; 3 uses
  %i.o = icmp ugt i16 %.val, 8191
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not177 = icmp ugt i16 %.val187, %.val
  br i1 %.not177, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %reass.sub = sub nuw nsw i16 %.val, %.val187
  %narrow178 = add nuw nsw i16 %reass.sub, 1
  %i.p = zext nneg i16 %narrow178 to i64          ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 4                  ; 2 uses
  %.not179 = icmp ugt i64 %i.q, %2
  br i1 %.not179, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = zext nneg i16 %.val187 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.t, i64 %i.p, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.1150 = phi i64 [ %i.q, %bb.g ], [ 4, %bb.e ]  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  store i16 0, ptr %i.k, align 2, !tbaa !24, !alias.scope !62, !noalias !59
  br label %bb.i

.preheader.i:                                     ; preds = %bb.k
  %i.u = icmp ult i32 %.1.i, 65536
  br i1 %i.u, label %.lr.ph.preheader.i, label %reverseLutFromBitmap.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.v = shl nuw nsw i32 %.1.i, 1                 ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.w
  %narrow.i = sub nuw nsw i32 131072, %i.v
  %i.x = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.x, i1 false), !tbaa !24, !alias.scope !62, !noalias !59
  br label %reverseLutFromBitmap.exit

bb.i:                                             ; preds = %bb.n, %bb.h
  %.015.i = phi i32 [ 1, %bb.h ], [ %i.ax, %bb.n ] ; 5 uses
  %.01314.i = phi i32 [ 1, %bb.h ], [ %.1.i.1, %bb.n ] ; 3 uses
  %i.y = lshr i32 %.015.i, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23, !alias.scope !59, !noalias !62
  %i.ac = zext i8 %i.ab to i32
  %i.ad = and i32 %.015.i, 7
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = and i32 %i.ae, %i.ac
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = trunc nuw i32 %.015.i to i16
  %i.ah = add i32 %.01314.i, 1
  %i.ai = zext i32 %.01314.i to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.ai
  store i16 %i.ag, ptr %i.aj, align 2, !tbaa !24, !alias.scope !62, !noalias !59
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i = phi i32 [ %i.ah, %bb.j ], [ %.01314.i, %bb.i ] ; 6 uses
  %i.ak = add nuw nsw i32 %.015.i, 1              ; 4 uses
  %exitcond.not.i = icmp eq i32 %i.ak, 65536
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = lshr i32 %i.ak, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23, !alias.scope !59, !noalias !62
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i32 %i.ak, 7
  %i.ar = shl nuw nsw i32 1, %i.aq
  %i.as = and i32 %i.ar, %i.ap
  %.not.i.1 = icmp eq i32 %i.as, 0
  br i1 %.not.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = trunc nuw i32 %i.ak to i16
  %i.au = add i32 %.1.i, 1
  %i.av = zext i32 %.1.i to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.av
  store i16 %i.at, ptr %i.aw, align 2, !tbaa !24, !alias.scope !62, !noalias !59
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.1 = phi i32 [ %i.au, %bb.m ], [ %.1.i, %bb.l ]
  %i.ax = add nuw nsw i32 %.015.i, 2
  br label %bb.i

reverseLutFromBitmap.exit:                        ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.ay = trunc i32 %.1.i to i16
  %i.az = add i16 %i.ay, -1
  %i.ba = add nuw nsw i64 %.1150, 4               ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %2
  br i1 %i.bb, label %.critedge, label %bb.o

bb.o:                                             ; preds = %reverseLutFromBitmap.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.1150
  %.val188 = load i32, ptr %i.bc, align 1
  %i.bd = zext i32 %.val188 to i64                ; 2 uses
  %i.be = add nuw nsw i64 %i.ba, %i.bd
  %i.bf = icmp ugt i64 %i.be, %2
  br i1 %i.bf, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bi = lshr i64 %4, 1                          ; 2 uses
  %i.bj = tail call i32 @internal_huf_decompress(ptr noundef nonnull %0, ptr noundef nonnull %i.bh, i64 noundef %i.bd, ptr noundef %i.bg, i64 noundef %i.bi, ptr noundef nonnull %i.j, i64 noundef %i.a) #8 ; 2 uses
  %.not180 = icmp eq i32 %i.bj, 0
  br i1 %.not180, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !64  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !65 ; 2 uses
  %.not181196 = icmp sgt i16 %i.bm, 0
  br i1 %.not181196, label %.lr.ph200, label %.critedge186

.lr.ph200:                                        ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !66
  %i.bp = icmp ult i16 %i.az, 16384               ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph200, %._crit_edge
  %i.bq = phi i16 [ %i.bm, %.lr.ph200 ], [ %i.cg, %._crit_edge ]
  %indvars.iv219 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next220, %._crit_edge ] ; 2 uses
  %.0147197 = phi ptr [ %i.bk, %.lr.ph200 ], [ %i.cm, %._crit_edge ] ; 2 uses
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.bo, i64 %indvars.iv219 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !41 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !44 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 25
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !45  ; 2 uses
  %i.by = sdiv i8 %i.bx, 2                        ; 2 uses
  %i.bz = sext i8 %i.by to i32                    ; 7 uses
  %i.ca = icmp sgt i8 %i.bx, 1
  br i1 %i.ca, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %bb.r
  %i.cb = udiv i32 2147483647, %i.bz
  %i.cc = icmp sgt i32 %i.bt, %i.cb
  br i1 %i.cc, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cd = mul nsw i32 %i.bt, %i.bz
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.bv)
  %i.cf = sext i32 %i.cd to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %wav_2D_decode.exit
  %.pre = load i16, ptr %i.bl, align 8, !tbaa !65
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %._crit_edge.loopexit
  %i.cg = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.bq, %bb.r ] ; 2 uses
  %i.ch = sext i32 %i.bt to i64
  %i.ci = sext i32 %i.bv to i64
  %i.cj = mul nsw i64 %i.ci, %i.ch
  %i.ck = sext i8 %i.by to i64
  %i.cl = mul i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0147197, i64 %i.cl
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.cn = sext i16 %i.cg to i64
  %.not181 = icmp slt i64 %indvars.iv.next220, %i.cn
  br i1 %.not181, label %bb.r, label %.critedge186, !llvm.loop !67

bb.t:                                             ; preds = %.lr.ph, %wav_2D_decode.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %wav_2D_decode.exit ] ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.095.i = phi i32 [ 1, %bb.t ], [ %i.co, %bb.u ] ; 4 uses
  %.not.i189 = icmp sgt i32 %.095.i, %i.ce
  %i.co = shl i32 %.095.i, 1
  br i1 %.not.i189, label %bb.v, label %bb.u, !llvm.loop !68

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0147197, i64 %indvars.iv ; 3 uses
  %i.cq = ashr i32 %.095.i, 2                     ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph140.preheader.i, label %wav_2D_decode.exit

.lr.ph140.preheader.i:                            ; preds = %bb.v
  %i.cs = lshr i32 %.095.i, 1
  br label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.loopexit.i, %.lr.ph140.preheader.i
  %.094138.i = phi i32 [ %.1137.i, %.loopexit.i ], [ %i.cs, %.lr.ph140.preheader.i ] ; 5 uses
  %.1137.i = phi i32 [ %i.gs, %.loopexit.i ], [ %i.cq, %.lr.ph140.preheader.i ] ; 6 uses
  %i.ct = sub nsw i32 %i.bv, %.094138.i
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, %i.cf                ; 2 uses
  %.idx.i = shl nsw i64 %i.cv, 1
  %i.cw = getelementptr inbounds i8, ptr %i.cp, i64 %.idx.i
  %i.cx = zext nneg i32 %.1137.i to i64
  %i.cy = mul nsw i64 %i.cx, %i.cf                ; 5 uses
  %i.cz = zext nneg i32 %.094138.i to i64
  %i.da = mul nsw i64 %i.cz, %i.cf
  %i.db = mul nuw nsw i32 %.1137.i, %i.bz         ; 2 uses
  %i.dc = mul nsw i32 %.094138.i, %i.bz           ; 2 uses
  %.not96126.i = icmp slt i64 %i.cv, 0
  br i1 %.not96126.i, label %._crit_edge131.i, label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.lr.ph140.i
  %i.dd = sub nsw i32 %i.bt, %.094138.i
  %i.de = mul nsw i32 %i.dd, %i.bz                ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = zext nneg i32 %i.db to i64              ; 4 uses
  %i.dh = sext i32 %i.dc to i64                   ; 2 uses
  %i.di = and i32 %.1137.i, %i.bt
  %.not100.i = icmp eq i32 %i.di, 0               ; 3 uses
  %.idx142.i = shl nsw i64 %i.df, 1
  %.not99124.i = icmp slt i32 %i.de, 0
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph130.i
  %.093127.i = phi ptr [ %i.cp, %.lr.ph130.i ], [ %i.fw, %bb.ab ] ; 7 uses
  %i.dj = getelementptr inbounds i8, ptr %.093127.i, i64 %.idx142.i ; 2 uses
  br i1 %.not99124.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  br i1 %i.bp, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.092125.us.i = phi ptr [ %i.et, %.lr.ph.split.us.i ], [ %.093127.i, %.lr.ph.i ] ; 5 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.092125.us.i, i64 %i.dg ; 2 uses
  %i.dl = getelementptr inbounds [2 x i8], ptr %.092125.us.i, i64 %i.cy ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.dg ; 2 uses
  %i.dn = load i16, ptr %.092125.us.i, align 2, !tbaa !24
  %i.do = load i16, ptr %i.dl, align 2, !tbaa !24
  %i.dp = load i16, ptr %i.dk, align 2, !tbaa !24
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !24
  %i.dr = zext i16 %i.dn to i32
  %i.ds = sext i16 %i.do to i32                   ; 3 uses
  %i.dt = sext i16 %i.dp to i32
  %i.du = sext i16 %i.dq to i32                   ; 3 uses
  %i.dv = and i32 %i.ds, 1
  %i.dw = add nuw nsw i32 %i.dv, %i.dr
  %i.dx = ashr i32 %i.ds, 1
  %i.dy = add nsw i32 %i.dw, %i.dx                ; 2 uses
  %i.dz = sub nsw i32 %i.dy, %i.ds
  %i.ea = and i32 %i.du, 1
  %i.eb = add nsw i32 %i.ea, %i.dt
  %i.ec = ashr i32 %i.du, 1
  %i.ed = add nsw i32 %i.eb, %i.ec                ; 4 uses
  %i.ee = sub nsw i32 %i.ed, %i.du                ; 3 uses
  %i.ef = and i32 %i.ed, 1
  %i.eg = add nsw i32 %i.ef, %i.dy
  %i.eh = ashr i32 %i.ed, 1
  %i.ei = add nsw i32 %i.eg, %i.eh                ; 2 uses
  %i.ej = sub nsw i32 %i.ei, %i.ed
  %i.ek = and i32 %i.ee, 1
  %i.el = add nsw i32 %i.dz, %i.ek
  %i.em = ashr i32 %i.ee, 1
  %i.en = add nsw i32 %i.el, %i.em                ; 2 uses
  %i.eo = sub nsw i32 %i.en, %i.ee
  %i.ep = trunc i32 %i.ei to i16
  store i16 %i.ep, ptr %.092125.us.i, align 2, !tbaa !24
  %i.eq = trunc i32 %i.ej to i16
  store i16 %i.eq, ptr %i.dk, align 2, !tbaa !24
  %i.er = trunc i32 %i.en to i16
  store i16 %i.er, ptr %i.dl, align 2, !tbaa !24
  %i.es = trunc i32 %i.eo to i16
  store i16 %i.es, ptr %i.dm, align 2, !tbaa !24
  %i.et = getelementptr inbounds [2 x i8], ptr %.092125.us.i, i64 %i.dh ; 4 uses
  %.not99.us.i = icmp ugt ptr %i.et, %i.dj
  br i1 %.not99.us.i, label %._crit_edge.thread158.i, label %.lr.ph.split.us.i, !llvm.loop !69

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.092125.i = phi ptr [ %i.ff, %.lr.ph.split.i ], [ %.093127.i, %.lr.ph.i ] ; 5 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.092125.i, i64 %i.dg ; 2 uses
  %i.ev = getelementptr inbounds [2 x i8], ptr %.092125.i, i64 %i.cy ; 3 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.dg ; 2 uses
  %i.ex = load i16, ptr %.092125.i, align 2, !tbaa !24
  %i.ey = load i16, ptr %i.ev, align 2, !tbaa !24 ; 2 uses
  %.tr.i.i = lshr i16 %i.ey, 1
  %.narrow.i.i = sub i16 %i.ex, %.tr.i.i          ; 2 uses
  %.narrow10.i.i = add i16 %.narrow.i.i, %i.ey
  %i.ez = xor i16 %.narrow10.i.i, -32768
  %i.fa = load i16, ptr %i.eu, align 2, !tbaa !24
  %i.fb = load i16, ptr %i.ew, align 2, !tbaa !24 ; 2 uses
  %.tr.i101.i = lshr i16 %i.fb, 1
  %.narrow.i102.i = sub i16 %i.fa, %.tr.i101.i    ; 3 uses
  %.narrow10.i103.i = add i16 %.narrow.i102.i, %i.fb
  %i.fc = xor i16 %.narrow10.i103.i, -32768       ; 2 uses
  %.tr.i104.i = lshr i16 %i.fc, 1
  %.narrow.i105.i = sub i16 %i.ez, %.tr.i104.i    ; 2 uses
  %.narrow10.i106.i = add i16 %.narrow.i105.i, %i.fc
  %i.fd = xor i16 %.narrow10.i106.i, -32768
  store i16 %.narrow.i105.i, ptr %i.eu, align 2, !tbaa !24
  store i16 %i.fd, ptr %.092125.i, align 2, !tbaa !24
  %.tr.i107.i = lshr i16 %.narrow.i102.i, 1
  %.narrow.i108.i = sub i16 %.narrow.i.i, %.tr.i107.i ; 2 uses
  %.narrow10.i109.i = add i16 %.narrow.i108.i, %.narrow.i102.i
  %i.fe = xor i16 %.narrow10.i109.i, -32768
  store i16 %.narrow.i108.i, ptr %i.ew, align 2, !tbaa !24
  store i16 %i.fe, ptr %i.ev, align 2, !tbaa !24
  %i.ff = getelementptr inbounds [2 x i8], ptr %.092125.i, i64 %i.dh ; 4 uses
  %.not99.i = icmp ugt ptr %i.ff, %i.dj
  br i1 %.not99.i, label %._crit_edge.thread.i, label %.lr.ph.split.i, !llvm.loop !69

._crit_edge.i:                                    ; preds = %bb.w
  br i1 %.not100.i, label %bb.ab, label %bb.x

._crit_edge.thread158.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %.not100.i, label %bb.ab, label %.thread160.i

.thread160.i:                                     ; preds = %._crit_edge.thread158.i
  %i.fg = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.cy
  br label %bb.y

._crit_edge.thread.i:                             ; preds = %.lr.ph.split.i
  br i1 %.not100.i, label %bb.ab, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %i.cy
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge.i
  %i.fi = getelementptr inbounds [2 x i8], ptr %.093127.i, i64 %i.cy ; 2 uses
  br i1 %i.bp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %.thread160.i
  %i.fj = phi ptr [ %i.fg, %.thread160.i ], [ %i.fi, %bb.x ] ; 2 uses
  %.092.lcssa154162.i = phi ptr [ %i.et, %.thread160.i ], [ %.093127.i, %bb.x ] ; 2 uses
  %i.fk = load i16, ptr %.092.lcssa154162.i, align 2, !tbaa !24
  %i.fl = load i16, ptr %i.fj, align 2, !tbaa !24 ; 3 uses
  %i.fm = and i16 %i.fl, 1
  %i.fn = add i16 %i.fm, %i.fk
  %i.fo = ashr i16 %i.fl, 1
  %i.fp = add i16 %i.fn, %i.fo                    ; 2 uses
  %i.fq = sub i16 %i.fp, %i.fl
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %.thread.i
  %i.fr = phi ptr [ %i.fh, %.thread.i ], [ %i.fi, %bb.x ] ; 2 uses
  %.092.lcssa154157.i = phi ptr [ %i.ff, %.thread.i ], [ %.093127.i, %bb.x ] ; 2 uses
  %i.fs = load i16, ptr %.092.lcssa154157.i, align 2, !tbaa !24
  %i.ft = load i16, ptr %i.fr, align 2, !tbaa !24 ; 2 uses
  %.tr.i110.i = lshr i16 %i.ft, 1
  %.narrow.i111.i = sub i16 %i.fs, %.tr.i110.i    ; 2 uses
  %.narrow10.i112.i = add i16 %.narrow.i111.i, %i.ft
  %i.fu = xor i16 %.narrow10.i112.i, -32768
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fv = phi ptr [ %i.fr, %bb.z ], [ %i.fj, %bb.y ]
  %.092.lcssa154156.i = phi ptr [ %.092.lcssa154157.i, %bb.z ], [ %.092.lcssa154162.i, %bb.y ]
  %storemerge.i = phi i16 [ %.narrow.i111.i, %bb.z ], [ %i.fq, %bb.y ]
  %.0121.i = phi i16 [ %i.fu, %bb.z ], [ %i.fp, %bb.y ]
  store i16 %storemerge.i, ptr %i.fv, align 2, !tbaa !24
  store i16 %.0121.i, ptr %.092.lcssa154156.i, align 2, !tbaa !24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.thread.i, %._crit_edge.thread158.i, %._crit_edge.i
  %i.fw = getelementptr inbounds [2 x i8], ptr %.093127.i, i64 %i.da ; 3 uses
  %.not96.i = icmp ugt ptr %i.fw, %i.cw
  br i1 %.not96.i, label %._crit_edge131.i, label %bb.w, !llvm.loop !70

._crit_edge131.i:                                 ; preds = %bb.ab, %.lr.ph140.i
  %.093.lcssa.i = phi ptr [ %i.cp, %.lr.ph140.i ], [ %i.fw, %bb.ab ] ; 3 uses
  %i.fx = and i32 %.1137.i, %i.bv
  %.not97.i = icmp eq i32 %i.fx, 0
  br i1 %.not97.i, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge131.i
  %i.fy = sub nsw i32 %i.bt, %.094138.i
  %i.fz = mul nsw i32 %i.fy, %i.bz                ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %.idx143.i = shl nsw i64 %i.ga, 1
  %i.gb = getelementptr inbounds i8, ptr %.093.lcssa.i, i64 %.idx143.i ; 2 uses
  %.not98133.i = icmp slt i32 %i.fz, 0
  br i1 %.not98133.i, label %.loopexit.i, label %.lr.ph136.i

.lr.ph136.i:                                      ; preds = %bb.ac
  %i.gc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.gd = sext i32 %i.dc to i64                   ; 2 uses
  br i1 %i.bp, label %.lr.ph136.split.us.i, label %.lr.ph136.split.i

.lr.ph136.split.us.i:                             ; preds = %.lr.ph136.i, %.lr.ph136.split.us.i
  %.0134.us.i = phi ptr [ %i.gm, %.lr.ph136.split.us.i ], [ %.093.lcssa.i, %.lr.ph136.i ] ; 4 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.0134.us.i, i64 %i.gc ; 2 uses
  %i.gf = load i16, ptr %.0134.us.i, align 2, !tbaa !24
  %i.gg = load i16, ptr %i.ge, align 2, !tbaa !24 ; 3 uses
  %i.gh = and i16 %i.gg, 1
  %i.gi = add i16 %i.gh, %i.gf
  %i.gj = ashr i16 %i.gg, 1
  %i.gk = add i16 %i.gi, %i.gj                    ; 2 uses
  %i.gl = sub i16 %i.gk, %i.gg
  store i16 %i.gl, ptr %i.ge, align 2, !tbaa !24
  store i16 %i.gk, ptr %.0134.us.i, align 2, !tbaa !24
  %i.gm = getelementptr inbounds [2 x i8], ptr %.0134.us.i, i64 %i.gd ; 2 uses
  %.not98.us.i = icmp ugt ptr %i.gm, %i.gb
  br i1 %.not98.us.i, label %.loopexit.i, label %.lr.ph136.split.us.i, !llvm.loop !71

.lr.ph136.split.i:                                ; preds = %.lr.ph136.i, %.lr.ph136.split.i
  %.0134.i = phi ptr [ %i.gr, %.lr.ph136.split.i ], [ %.093.lcssa.i, %.lr.ph136.i ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %.0134.i, i64 %i.gc ; 2 uses
  %i.go = load i16, ptr %.0134.i, align 2, !tbaa !24
  %i.gp = load i16, ptr %i.gn, align 2, !tbaa !24 ; 2 uses
  %.tr.i113.i = lshr i16 %i.gp, 1
  %.narrow.i114.i = sub i16 %i.go, %.tr.i113.i    ; 2 uses
  %.narrow10.i115.i = add i16 %.narrow.i114.i, %i.gp
  %i.gq = xor i16 %.narrow10.i115.i, -32768
  store i16 %.narrow.i114.i, ptr %i.gn, align 2, !tbaa !24
  store i16 %i.gq, ptr %.0134.i, align 2, !tbaa !24
  %i.gr = getelementptr inbounds [2 x i8], ptr %.0134.i, i64 %i.gd ; 2 uses
  %.not98.i = icmp ugt ptr %i.gr, %i.gb
  br i1 %.not98.i, label %.loopexit.i, label %.lr.ph136.split.i, !llvm.loop !71

.loopexit.i:                                      ; preds = %.lr.ph136.split.i, %.lr.ph136.split.us.i, %bb.ac, %._crit_edge131.i
  %i.gs = lshr i32 %.1137.i, 1                    ; 2 uses
  %.not144.i = icmp eq i32 %i.gs, 0
  br i1 %.not144.i, label %wav_2D_decode.exit, label %.lr.ph140.i, !llvm.loop !72

wav_2D_decode.exit:                               ; preds = %.loopexit.i, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.t, !llvm.loop !73

.critedge186:                                     ; preds = %._crit_edge, %bb.q
  tail call fastcc void @applyLut(ptr noundef nonnull %i.k, ptr noundef %i.bk, i64 noundef %i.bi)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !74 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph212, label %._crit_edge213

.lr.ph212:                                        ; preds = %.critedge186
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre225 = load i16, ptr %i.bl, align 8, !tbaa !65 ; 2 uses
  br label %bb.ad

._crit_edge213:                                   ; preds = %._crit_edge207, %.critedge186
  %.0154.lcssa = phi i64 [ 0, %.critedge186 ], [ %.1155.lcssa, %._crit_edge207 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.0154.lcssa, ptr %i.gy, align 8, !tbaa !75
  %i.gz = icmp eq i64 %.0154.lcssa, %4
  %i.ha = select i1 %i.gz, i32 0, i32 23
  br label %.critedge

bb.ad:                                            ; preds = %.lr.ph212, %._crit_edge207
  %i.hb = phi i32 [ %i.gu, %.lr.ph212 ], [ %i.hi, %._crit_edge207 ]
  %i.hc = phi i16 [ %.pre225, %.lr.ph212 ], [ %i.hj, %._crit_edge207 ] ; 2 uses
  %i.hd = phi i16 [ %.pre225, %.lr.ph212 ], [ %i.hk, %._crit_edge207 ] ; 2 uses
  %.0143211 = phi i32 [ 0, %.lr.ph212 ], [ %i.hl, %._crit_edge207 ] ; 4 uses
  %.0154210 = phi i64 [ 0, %.lr.ph212 ], [ %.1155.lcssa, %._crit_edge207 ] ; 2 uses
  %.0157209 = phi ptr [ %3, %.lr.ph212 ], [ %.1158.lcssa, %._crit_edge207 ] ; 2 uses
  %i.he = load i32, ptr %i.gw, align 8, !tbaa !76
  %i.hf = add nsw i32 %i.he, %.0143211
  %i.hg = icmp sgt i16 %i.hd, 0
  br i1 %i.hg, label %.lr.ph206.preheader, label %._crit_edge207

.lr.ph206.preheader:                              ; preds = %bb.ad
  %i.hh = load ptr, ptr %i.b, align 8, !tbaa !64
  br label %.lr.ph206

._crit_edge207.loopexit:                          ; preds = %bb.ai
  %.pre227 = load i32, ptr %i.gt, align 4, !tbaa !74
  br label %._crit_edge207

._crit_edge207:                                   ; preds = %._crit_edge207.loopexit, %bb.ad
  %i.hi = phi i32 [ %i.hb, %bb.ad ], [ %.pre227, %._crit_edge207.loopexit ] ; 2 uses
  %i.hj = phi i16 [ %i.hc, %bb.ad ], [ %i.ik, %._crit_edge207.loopexit ]
  %i.hk = phi i16 [ %i.hd, %bb.ad ], [ %i.ik, %._crit_edge207.loopexit ]
  %.1158.lcssa = phi ptr [ %.0157209, %bb.ad ], [ %.2159, %._crit_edge207.loopexit ]
  %.1155.lcssa = phi i64 [ %.0154210, %bb.ad ], [ %.2156, %._crit_edge207.loopexit ] ; 2 uses
  %i.hl = add nuw nsw i32 %.0143211, 1            ; 2 uses
  %i.hm = icmp slt i32 %i.hl, %i.hi
  br i1 %i.hm, label %bb.ad, label %._crit_edge213, !llvm.loop !77

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.ai
  %i.hn = phi i16 [ %i.hc, %.lr.ph206.preheader ], [ %i.ik, %bb.ai ] ; 2 uses
  %indvars.iv222 = phi i64 [ 0, %.lr.ph206.preheader ], [ %indvars.iv.next223, %bb.ai ] ; 2 uses
  %.0152203 = phi ptr [ %i.hh, %.lr.ph206.preheader ], [ %.1153, %bb.ai ] ; 3 uses
  %.1155202 = phi i64 [ %.0154210, %.lr.ph206.preheader ], [ %.2156, %bb.ai ] ; 3 uses
  %.1158201 = phi ptr [ %.0157209, %.lr.ph206.preheader ], [ %.2159, %bb.ai ] ; 4 uses
  %i.ho = load ptr, ptr %i.gx, align 8, !tbaa !66
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %i.ho, i64 %indvars.iv222 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !41
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 25
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !45
  %i.hv = sext i8 %i.hu to i64
  %i.hw = mul nsw i64 %i.hv, %i.hs                ; 6 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph206
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !44
  %i.ia = sext i32 %i.hz to i64
  %i.ib = mul i64 %i.hw, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %.0152203, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !46 ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ig = srem i32 %i.hf, %i.ie
  %.not182 = icmp eq i32 %i.ig, 0
  br i1 %.not182, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ih = udiv i32 %.0143211, %i.ie
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag
  %.pn183.in = phi i32 [ %i.ih, %bb.ag ], [ %.0143211, %bb.ae ]
  %.pn183 = zext i32 %.pn183.in to i64
  %.pn = mul i64 %i.hw, %.pn183
  %.0151 = getelementptr inbounds nuw i8, ptr %.0152203, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1158201, ptr align 1 %.0151, i64 %i.hw, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %.1158201, i64 %i.hw
  %i.ij = add i64 %i.hw, %.1155202
  %.pre226 = load i16, ptr %i.bl, align 8, !tbaa !65
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %.lr.ph206, %bb.ah
  %i.ik = phi i16 [ %.pre226, %bb.ah ], [ %i.hn, %.lr.ph206 ], [ %i.hn, %bb.af ] ; 4 uses
  %.2159 = phi ptr [ %i.ii, %bb.ah ], [ %.1158201, %.lr.ph206 ], [ %.1158201, %bb.af ] ; 2 uses
  %.2156 = phi i64 [ %i.ij, %bb.ah ], [ %.1155202, %.lr.ph206 ], [ %.1155202, %bb.af ] ; 2 uses
  %.1153 = phi ptr [ %i.ic, %bb.ah ], [ %.0152203, %.lr.ph206 ], [ %i.ic, %bb.af ]
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %i.il = sext i16 %i.ik to i64
  %i.im = icmp slt i64 %indvars.iv.next223, %i.il
  br i1 %i.im, label %.lr.ph206, label %._crit_edge207.loopexit, !llvm.loop !78

.critedge:                                        ; preds = %bb.s, %bb.f, %bb.p, %bb.o, %reverseLutFromBitmap.exit, %bb.d, %bb.c, %bb.b, %bb.a, %._crit_edge213
  %.5 = phi i32 [ 23, %bb.f ], [ %i.e, %bb.a ], [ %i.i, %bb.b ], [ 23, %bb.c ], [ %i.bj, %bb.p ], [ 23, %reverseLutFromBitmap.exit ], [ 23, %bb.o ], [ %i.ha, %._crit_edge213 ], [ 23, %bb.d ], [ 23, %bb.s ]
  ret i32 %.5
}

declare i64 @internal_exr_huf_decompress_spare_bytes() local_unnamed_addr #2

declare i32 @internal_decode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @internal_huf_decompress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 168}
!9 = !{!"_exr_encode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !11, i64 96, !11, i64 104, !10, i64 112, !10, i64 120, !15, i64 128, !10, i64 136, !11, i64 144, !10, i64 152, !10, i64 160, !11, i64 168, !10, i64 176, !10, i64 184, !11, i64 192, !10, i64 200, !11, i64 208, !10, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !6, i64 272}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"p1 _ZTS19_priv_exr_context_t", !11, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!9, !10, i64 112}
!17 = !{!9, !10, i64 72}
!18 = !{!9, !11, i64 208}
!19 = !{!9, !5, i64 44}
!20 = !{!9, !11, i64 104}
!21 = !{!9, !12, i64 16}
!22 = !{!9, !11, i64 192}
!23 = !{!6, !6, i64 0}
!24 = !{!12, !12, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!29}
!29 = distinct !{!29, !30, !"applyLut: argument 0"}
!30 = distinct !{!30, !"applyLut"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"applyLut: argument 1"}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!9, !10, i64 184}
!38 = !{!9, !5, i64 40}
!39 = distinct !{!39, !26}
!40 = !{!9, !11, i64 8}
!41 = !{!42, !5, i64 12}
!42 = !{!"", !43, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !12, i64 26, !12, i64 28, !12, i64 30, !5, i64 32, !5, i64 36, !6, i64 40}
!43 = !{!"p1 omnipotent char", !11, i64 0}
!44 = !{!42, !5, i64 8}
!45 = !{!42, !6, i64 25}
!46 = !{!42, !5, i64 20}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !26}
!53 = distinct !{!53, !26}
!54 = !{!10, !10, i64 0}
!55 = !{!9, !10, i64 176}
!56 = distinct !{!56, !36}
!57 = !{!58, !11, i64 200}
!58 = !{!"_exr_decode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !5, i64 96, !5, i64 100, !10, i64 104, !11, i64 112, !11, i64 120, !10, i64 128, !11, i64 136, !10, i64 144, !11, i64 152, !10, i64 160, !15, i64 168, !10, i64 176, !11, i64 184, !10, i64 192, !11, i64 200, !10, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !6, i64 264}
!59 = !{!60}
!60 = distinct !{!60, !61, !"reverseLutFromBitmap: argument 0"}
!61 = distinct !{!61, !"reverseLutFromBitmap"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"reverseLutFromBitmap: argument 1"}
!64 = !{!58, !11, i64 184}
!65 = !{!58, !12, i64 16}
!66 = !{!58, !11, i64 8}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26}
!74 = !{!58, !5, i64 44}
!75 = !{!58, !10, i64 104}
!76 = !{!58, !5, i64 40}
!77 = distinct !{!77, !26}
!78 = distinct !{!78, !26}
end_hunk_0
