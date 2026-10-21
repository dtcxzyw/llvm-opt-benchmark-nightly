Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pixelshuffle_x86_fma?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn20PixelShuffle_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.bv = mul nsw <4 x i32> %broadcast.splat407, %i.bu
  %i.bw = sext <4 x i32> %i.bv to <4 x i64>
  %i.bx = add nsw <4 x i64> %broadcast.splat409, %i.bw
  %i.by = mul <4 x i64> %broadcast.splat411, %i.bx
  %wide.gep415 = getelementptr inbounds nuw i8, ptr %i.ap, <4 x i64> %i.by
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index413
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store <4 x ptr> %wide.gep415, ptr %i.ca, align 8, !tbaa !78
  %index.next416 = add nuw i64 %index413, 4       ; 2 uses
  %vec.ind.next417 = add <4 x i32> %vec.ind414, splat (i32 4)
  %i.cb = icmp eq i64 %index.next416, %n.vec403
  br i1 %i.cb, label %middle.block418, label %vector.body412, !llvm.loop !51

middle.block418:                                  ; preds = %vector.body412
  %cmp.n419 = icmp eq i64 %i.bs, %n.vec403
  br i1 %cmp.n419, label %._crit_edge, label %.noexc172.preheader424

.noexc172.preheader424:                           ; preds = %.noexc172.preheader, %middle.block418
  %indvars.iv.ph = phi i64 [ 1, %.noexc172.preheader ], [ %i.bt, %middle.block418 ]
  br label %.noexc172

._crit_edge:                                      ; preds = %.noexc172, %.noexc172.us, %middle.block418, %middle.block397
  %i.cc = phi ptr [ %i.ay, %middle.block397 ], [ %i.br, %middle.block418 ], [ %i.ay, %.noexc172.us ], [ %i.br, %.noexc172 ] ; 2 uses
  %i.cd = icmp eq i32 %.pr, 2
  br i1 %i.cd, label %bb.d, label %._crit_edge.thread

.noexc172:                                        ; preds = %.noexc172.preheader424, %.noexc172
  %indvars.iv = phi i64 [ %indvars.iv.next, %.noexc172 ], [ %indvars.iv.ph, %.noexc172.preheader424 ] ; 3 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %i.cf = add nsw i32 %i.bn, %i.ce
  %i.cg = mul nsw i32 %i.bl, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %indvars.iv305, %i.ch
  %.reass = mul i64 %factor.op.mul, %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.noexc172, !llvm.loop !52

bb.d:                                             ; preds = %._crit_edge
  %i.cl = load i32, ptr %8, align 4, !tbaa !15
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph240.preheader, label %.loopexit

.lr.ph240.preheader:                              ; preds = %bb.d
  %i.cn = load ptr, ptr %i.s, align 8, !tbaa !78
  %.pre309 = load i32, ptr %9, align 4, !tbaa !15
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %._crit_edge235
  %i.co = phi i32 [ %.pre309, %.lr.ph240.preheader ], [ %i.dj, %._crit_edge235 ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph240.preheader ], [ %indvars.iv.next300, %._crit_edge235 ] ; 2 uses
  %.0157238 = phi ptr [ %i.cc, %.lr.ph240.preheader ], [ %i.fg, %._crit_edge235 ] ; 9 uses
  %.0158237 = phi ptr [ %i.cn, %.lr.ph240.preheader ], [ %i.fh, %._crit_edge235 ] ; 9 uses
  %i.cp = shl nuw nsw i64 %indvars.iv299, 1
  %i.cq = add nuw nsw i64 %i.cp, %indvars.iv302
  %i.cr = mul i64 %i.aj, %i.cq
  %i.cs = getelementptr i8, ptr %i.af, i64 %i.cr  ; 9 uses
  %.not170223 = icmp slt i32 %i.co, 8
  br i1 %.not170223, label %.preheader201, label %.lr.ph226

.preheader201.loopexit:                           ; preds = %.lr.ph226
  %i.ct = trunc nuw nsw i64 %indvars.iv280 to i32
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.loopexit, %.lr.ph240
  %i.cu = phi i32 [ %i.co, %.lr.ph240 ], [ %i.dg, %.preheader201.loopexit ] ; 2 uses
  %.0160.lcssa = phi i32 [ 0, %.lr.ph240 ], [ %i.ct, %.preheader201.loopexit ] ; 3 uses
  %i.cv = or disjoint i32 %.0160.lcssa, 4
  %.not171228 = icmp sgt i32 %i.cv, %i.cu
  br i1 %.not171228, label %.preheader, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %.preheader201
  %i.cw = zext nneg i32 %.0160.lcssa to i64       ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 4
  br label %.lr.ph230

.lr.ph226:                                        ; preds = %.lr.ph240, %.lr.ph226
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %.lr.ph226 ], [ 0, %.lr.ph240 ] ; 4 uses
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.lr.ph226 ], [ 8, %.lr.ph240 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv282
  %i.cz = load <8 x float>, ptr %i.cy, align 1, !tbaa !83 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv282
  %i.db = load <8 x float>, ptr %i.da, align 1, !tbaa !83 ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dd = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %.idx321 = shl nuw nsw i64 %indvars.iv282, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx321 ; 2 uses
  store <8 x float> %i.dc, ptr %i.de, align 1, !tbaa !83
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store <8 x float> %i.dd, ptr %i.df, align 1, !tbaa !83
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 8 ; 2 uses
  %i.dg = load i32, ptr %9, align 4, !tbaa !15    ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %.not170 = icmp sgt i64 %indvars.iv.next281, %i.dh
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 8
  br i1 %.not170, label %.preheader201.loopexit, label %.lr.ph226, !llvm.loop !53

.preheader.loopexit:                              ; preds = %.lr.ph230
  %i.di = trunc nuw nsw i64 %indvars.iv287 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader201
  %i.dj = phi i32 [ %i.cu, %.preheader201 ], [ %i.er, %.preheader.loopexit ] ; 4 uses
  %.1161.lcssa = phi i32 [ %.0160.lcssa, %.preheader201 ], [ %i.di, %.preheader.loopexit ] ; 2 uses
  %i.dk = icmp slt i32 %.1161.lcssa, %i.dj
  br i1 %i.dk, label %.lr.ph234.preheader, label %._crit_edge235

.lr.ph234.preheader:                              ; preds = %.preheader
  %i.dl = zext i32 %.1161.lcssa to i64            ; 7 uses
  %wide.trip.count297 = zext i32 %i.dj to i64     ; 6 uses
  %i.dm = sub nsw i64 %wide.trip.count297, %i.dl  ; 3 uses
  %min.iters.check373 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check373, label %.lr.ph234.preheader422, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph234.preheader
  %i.dn = shl nuw nsw i64 %i.dl, 3
  %scevgep359 = getelementptr i8, ptr %i.cs, i64 %i.dn ; 2 uses
  %i.do = shl nuw nsw i64 %wide.trip.count297, 3
  %scevgep360 = getelementptr i8, ptr %i.cs, i64 %i.do ; 2 uses
  %i.dp = shl nuw nsw i64 %i.dl, 2                ; 2 uses
  %scevgep361 = getelementptr i8, ptr %.0157238, i64 %i.dp
  %i.dq = shl nuw nsw i64 %wide.trip.count297, 2  ; 2 uses
  %scevgep362 = getelementptr i8, ptr %.0157238, i64 %i.dq
  %scevgep363 = getelementptr i8, ptr %.0158237, i64 %i.dp
  %scevgep364 = getelementptr i8, ptr %.0158237, i64 %i.dq
  %bound0365 = icmp ult ptr %scevgep359, %scevgep362
  %bound1366 = icmp ult ptr %scevgep361, %scevgep360
  %found.conflict367 = and i1 %bound0365, %bound1366
  %bound0368 = icmp ult ptr %scevgep359, %scevgep364
  %bound1369 = icmp ult ptr %scevgep363, %scevgep360
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx371 = or i1 %found.conflict367, %found.conflict370
  br i1 %conflict.rdx371, label %.lr.ph234.preheader422, label %vector.ph374

vector.ph374:                                     ; preds = %vector.memcheck358
  %n.vec375 = and i64 %i.dm, -4                   ; 3 uses
  %i.dr = add nsw i64 %n.vec375, %i.dl
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next384, %vector.body376 ] ; 2 uses
  %i.ds = add nuw i64 %index377, %i.dl            ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %wide.load378 = load <2 x float>, ptr %i.dt, align 4, !tbaa !85, !alias.scope !86
  %wide.load379 = load <2 x float>, ptr %i.du, align 4, !tbaa !85, !alias.scope !86
  %i.dv = shl nuw nsw i64 %i.ds, 3
  %i.dw = shl i64 %i.ds, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dv
  %i.dy = getelementptr i8, ptr %i.cs, i64 %i.dw
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %i.ds ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %wide.load380 = load <2 x float>, ptr %i.ea, align 4, !tbaa !85, !alias.scope !87
  %wide.load381 = load <2 x float>, ptr %i.eb, align 4, !tbaa !85, !alias.scope !87
  %interleaved.vec382 = shufflevector <2 x float> %wide.load378, <2 x float> %wide.load380, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec382, ptr %i.dx, align 4, !tbaa !85, !alias.scope !88, !noalias !89
  %interleaved.vec383 = shufflevector <2 x float> %wide.load379, <2 x float> %wide.load381, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec383, ptr %i.dz, align 4, !tbaa !85, !alias.scope !88, !noalias !89
  %index.next384 = add nuw i64 %index377, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next384, %n.vec375
  br i1 %i.ec, label %middle.block385, label %vector.body376, !llvm.loop !58

middle.block385:                                  ; preds = %vector.body376
  %cmp.n386 = icmp eq i64 %i.dm, %n.vec375
  br i1 %cmp.n386, label %._crit_edge235, label %.lr.ph234.preheader422

.lr.ph234.preheader422:                           ; preds = %vector.memcheck358, %.lr.ph234.preheader, %middle.block385
  %indvars.iv294.ph = phi i64 [ %i.dl, %vector.memcheck358 ], [ %i.dl, %.lr.ph234.preheader ], [ %i.dr, %middle.block385 ] ; 7 uses
  %i.ed = sub nsw i64 %wide.trip.count297, %indvars.iv294.ph
  %xtraiter = and i64 %i.ed, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph234.prol.loopexit, label %.lr.ph234.prol

.lr.ph234.prol:                                   ; preds = %.lr.ph234.preheader422
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv294.ph
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !85
  %.idx323.prol = shl nuw nsw i64 %indvars.iv294.ph, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx323.prol ; 2 uses
  store float %i.ef, ptr %i.eg, align 4, !tbaa !85
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv294.ph
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !85
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store float %i.ei, ptr %i.ej, align 4, !tbaa !85
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph234.prol.loopexit

.lr.ph234.prol.loopexit:                          ; preds = %.lr.ph234.prol, %.lr.ph234.preheader422
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph234.preheader422 ], [ %indvars.iv.next295.prol, %.lr.ph234.prol ]
  %i.ek = add nsw i64 %wide.trip.count297, -1
  %i.el = icmp eq i64 %indvars.iv294.ph, %i.ek
  br i1 %i.el, label %._crit_edge235, label %.lr.ph234

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %indvars.iv289 = phi i64 [ %i.cw, %.lr.ph230.preheader ], [ %indvars.iv.next290, %.lr.ph230 ] ; 4 uses
  %indvars.iv287 = phi i64 [ %i.cx, %.lr.ph230.preheader ], [ %indvars.iv.next288, %.lr.ph230 ] ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv289
  %i.en = load <4 x float>, ptr %i.em, align 1, !tbaa !83
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv289
  %i.ep = load <4 x float>, ptr %i.eo, align 1, !tbaa !83
  %.idx322 = shl nuw nsw i64 %indvars.iv289, 3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx322
  %10 = shufflevector <4 x float> %i.en, <4 x float> %i.ep, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %10, ptr %i.eq, align 1, !tbaa !83
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 4 ; 2 uses
  %i.er = load i32, ptr %9, align 4, !tbaa !15    ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next288 to i32
  %.not171 = icmp slt i32 %i.er, %i.es
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 4
  br i1 %.not171, label %.preheader.loopexit, label %.lr.ph230, !llvm.loop !59

.lr.ph234:                                        ; preds = %.lr.ph234.prol.loopexit, %.lr.ph234
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %.lr.ph234 ], [ %indvars.iv294.unr, %.lr.ph234.prol.loopexit ] ; 5 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv294
  %i.eu = load float, ptr %i.et, align 4, !tbaa !85
  %.idx323 = shl nuw nsw i64 %indvars.iv294, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx323 ; 2 uses
  store float %i.eu, ptr %i.ev, align 4, !tbaa !85
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv294
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !85
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store float %i.ex, ptr %i.ey, align 4, !tbaa !85
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv.next295
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !85
  %.idx323.1 = shl nuw nsw i64 %indvars.iv.next295, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx323.1 ; 2 uses
  store float %i.fa, ptr %i.fb, align 4, !tbaa !85
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv.next295
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !85
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store float %i.fd, ptr %i.fe, align 4, !tbaa !85
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 2 uses
  %exitcond298.not.1 = icmp eq i64 %indvars.iv.next295.1, %wide.trip.count297
  br i1 %exitcond298.not.1, label %._crit_edge235, label %.lr.ph234, !llvm.loop !60

._crit_edge235:                                   ; preds = %.lr.ph234.prol.loopexit, %.lr.ph234, %middle.block385, %.preheader
  %i.ff = sext i32 %i.dj to i64                   ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %.0157238, i64 %i.ff
  %i.fh = getelementptr inbounds [4 x i8], ptr %.0158237, i64 %i.ff
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.fi = load i32, ptr %8, align 4, !tbaa !15
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next300, %i.fj
  br i1 %i.fk, label %.lr.ph240, label %.loopexit, !llvm.loop !61

._crit_edge.thread:                               ; preds = %bb.c, %.lr.ph.split.us, %.lr.ph.split, %._crit_edge
  %i.fl = phi ptr [ %i.cc, %._crit_edge ], [ %i.br, %.lr.ph.split ], [ undef, %bb.c ], [ %i.ay, %.lr.ph.split.us ]
  %i.fm = load i32, ptr %8, align 4, !tbaa !15
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph222.preheader, label %.loopexit

.lr.ph222.preheader:                              ; preds = %._crit_edge.thread
  %i.fo = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.fp = load ptr, ptr %i.t, align 16, !tbaa !78
  %i.fq = load ptr, ptr %i.s, align 8, !tbaa !78
  %.pre = load i32, ptr %9, align 4, !tbaa !15
  br label %.lr.ph222

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %._crit_edge215
  %i.fr = phi i32 [ %.pre, %.lr.ph222.preheader ], [ %i.fx, %._crit_edge215 ] ; 2 uses
  %indvars.iv277 = phi i64 [ 0, %.lr.ph222.preheader ], [ %indvars.iv.next278, %._crit_edge215 ] ; 2 uses
  %.0153219 = phi ptr [ %i.fo, %.lr.ph222.preheader ], [ %i.ix, %._crit_edge215 ] ; 8 uses
  %.0154218 = phi ptr [ %i.fp, %.lr.ph222.preheader ], [ %i.iw, %._crit_edge215 ] ; 8 uses
  %.0155217 = phi ptr [ %i.fq, %.lr.ph222.preheader ], [ %i.iv, %._crit_edge215 ] ; 8 uses
  %.0156216 = phi ptr [ %i.fl, %.lr.ph222.preheader ], [ %i.iu, %._crit_edge215 ] ; 8 uses
  %i.fs = shl nuw nsw i64 %indvars.iv277, 2
  %i.ft = add nuw nsw i64 %i.fs, %indvars.iv302
  %i.fu = mul i64 %i.aj, %i.ft
  %i.fv = getelementptr i8, ptr %i.af, i64 %i.fu  ; 7 uses
  %.not169207 = icmp slt i32 %i.fr, 4
  br i1 %.not169207, label %.preheader202, label %.lr.ph210

.preheader202.loopexit:                           ; preds = %.lr.ph210
  %i.fw = trunc nuw nsw i64 %indvars.iv265 to i32
  br label %.preheader202

.preheader202:                                    ; preds = %.preheader202.loopexit, %.lr.ph222
  %i.fx = phi i32 [ %i.fr, %.lr.ph222 ], [ %i.ht, %.preheader202.loopexit ] ; 4 uses
  %.0151.lcssa = phi i32 [ 0, %.lr.ph222 ], [ %i.fw, %.preheader202.loopexit ] ; 2 uses
  %i.fy = icmp slt i32 %.0151.lcssa, %i.fx
  br i1 %i.fy, label %.lr.ph214.preheader, label %._crit_edge215

.lr.ph214.preheader:                              ; preds = %.preheader202
  %i.fz = zext i32 %.0151.lcssa to i64            ; 7 uses
  %wide.trip.count275 = zext nneg i32 %i.fx to i64 ; 6 uses
  %i.ga = sub nsw i64 %wide.trip.count275, %i.fz  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ga, 16
  br i1 %min.iters.check, label %.lr.ph214.preheader421, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph214.preheader
  %i.gb = shl nuw nsw i64 %i.fz, 4
  %scevgep = getelementptr i8, ptr %i.fv, i64 %i.gb ; 4 uses
  %i.gc = shl nuw nsw i64 %wide.trip.count275, 4
  %scevgep335 = getelementptr i8, ptr %i.fv, i64 %i.gc ; 4 uses
  %i.gd = shl nuw nsw i64 %i.fz, 2                ; 4 uses
  %scevgep336 = getelementptr i8, ptr %.0156216, i64 %i.gd
  %i.ge = shl nuw nsw i64 %wide.trip.count275, 2  ; 4 uses
  %scevgep337 = getelementptr i8, ptr %.0156216, i64 %i.ge
  %scevgep338 = getelementptr i8, ptr %.0155217, i64 %i.gd
  %scevgep339 = getelementptr i8, ptr %.0155217, i64 %i.ge
  %scevgep340 = getelementptr i8, ptr %.0154218, i64 %i.gd
  %scevgep341 = getelementptr i8, ptr %.0154218, i64 %i.ge
  %scevgep342 = getelementptr i8, ptr %.0153219, i64 %i.gd
  %scevgep343 = getelementptr i8, ptr %.0153219, i64 %i.ge
  %bound0 = icmp ult ptr %scevgep, %scevgep337
  %bound1 = icmp ult ptr %scevgep336, %scevgep335
  %found.conflict = and i1 %bound0, %bound1
  %bound0344 = icmp ult ptr %scevgep, %scevgep339
  %bound1345 = icmp ult ptr %scevgep338, %scevgep335
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx = or i1 %found.conflict, %found.conflict346
  %bound0347 = icmp ult ptr %scevgep, %scevgep341
  %bound1348 = icmp ult ptr %scevgep340, %scevgep335
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %conflict.rdx, %found.conflict349
  %bound0351 = icmp ult ptr %scevgep, %scevgep343
  %bound1352 = icmp ult ptr %scevgep342, %scevgep335
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %conflict.rdx350, %found.conflict353
  br i1 %conflict.rdx354, label %.lr.ph214.preheader421, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ga, -8                      ; 3 uses
  %i.gf = add nsw i64 %n.vec, %i.fz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gg = add nuw i64 %index, %i.fz               ; 5 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %i.gg
  %wide.load = load <8 x float>, ptr %i.gh, align 4, !tbaa !85, !alias.scope !90
  %i.gi = shl nuw nsw i64 %i.gg, 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %i.gg
  %wide.load355 = load <8 x float>, ptr %i.gk, align 4, !tbaa !85, !alias.scope !91
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %i.gg
  %wide.load356 = load <8 x float>, ptr %i.gl, align 4, !tbaa !85, !alias.scope !92
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %i.gg
  %wide.load357 = load <8 x float>, ptr %i.gm, align 4, !tbaa !85, !alias.scope !93
  %i.gn = shufflevector <8 x float> %wide.load, <8 x float> %wide.load355, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.go = shufflevector <8 x float> %wide.load356, <8 x float> %wide.load357, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gn, <16 x float> %i.go, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.gj, align 4, !tbaa !85, !alias.scope !94, !noalias !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br i1 %cmp.n, label %._crit_edge215, label %.lr.ph214.preheader421

.lr.ph214.preheader421:                           ; preds = %vector.memcheck, %.lr.ph214.preheader, %middle.block
  %indvars.iv272.ph = phi i64 [ %i.fz, %vector.memcheck ], [ %i.fz, %.lr.ph214.preheader ], [ %i.gf, %middle.block ] ; 9 uses
  %i.gq = sub nsw i64 %wide.trip.count275, %indvars.iv272.ph
  %xtraiter429 = and i64 %i.gq, 1
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.lr.ph214.prol.loopexit, label %.lr.ph214.prol

.lr.ph214.prol:                                   ; preds = %.lr.ph214.preheader421
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv272.ph
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !85
  %.idx320.prol = shl nuw nsw i64 %indvars.iv272.ph, 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx320.prol ; 4 uses
  store float %i.gs, ptr %i.gt, align 4, !tbaa !85
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv272.ph
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !85
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store float %i.gv, ptr %i.gw, align 4, !tbaa !85
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv272.ph
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !85
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store float %i.gy, ptr %i.gz, align 4, !tbaa !85
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv272.ph
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !85
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store float %i.hb, ptr %i.hc, align 4, !tbaa !85
  %indvars.iv.next273.prol = add nuw nsw i64 %indvars.iv272.ph, 1
  br label %.lr.ph214.prol.loopexit

.lr.ph214.prol.loopexit:                          ; preds = %.lr.ph214.prol, %.lr.ph214.preheader421
  %indvars.iv272.unr = phi i64 [ %indvars.iv272.ph, %.lr.ph214.preheader421 ], [ %indvars.iv.next273.prol, %.lr.ph214.prol ]
  %i.hd = add nsw i64 %wide.trip.count275, -1
  %i.he = icmp eq i64 %indvars.iv272.ph, %i.hd
  br i1 %i.he, label %._crit_edge215, label %.lr.ph214

.lr.ph210:                                        ; preds = %.lr.ph222, %.lr.ph210
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %.lr.ph210 ], [ 0, %.lr.ph222 ] ; 6 uses
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %.lr.ph210 ], [ 4, %.lr.ph222 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv267
  %i.hg = load <4 x float>, ptr %i.hf, align 1, !tbaa !83 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv267
  %i.hi = load <4 x float>, ptr %i.hh, align 1, !tbaa !83 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv267
  %i.hk = load <4 x float>, ptr %i.hj, align 1, !tbaa !83 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv267
  %i.hm = load <4 x float>, ptr %i.hl, align 1, !tbaa !83 ; 2 uses
  %i.hn = shufflevector <4 x float> %i.hg, <4 x float> %i.hi, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ho = shufflevector <4 x float> %i.hk, <4 x float> %i.hm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.hp = shufflevector <4 x float> %i.hg, <4 x float> %i.hi, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.hq = shufflevector <4 x float> %i.hk, <4 x float> %i.hm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %.idx = shl nuw nsw i64 %indvars.iv267, 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx ; 2 uses
  %11 = shufflevector <4 x float> %i.hn, <4 x float> %i.ho, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  store <8 x float> %11, ptr %i.hr, align 1, !tbaa !83
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %12 = shufflevector <4 x float> %i.hp, <4 x float> %i.hq, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  store <8 x float> %12, ptr %i.hs, align 1, !tbaa !83
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %i.ht = load i32, ptr %9, align 4, !tbaa !15    ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %.not169 = icmp sgt i64 %indvars.iv.next266, %i.hu
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 4
  br i1 %.not169, label %.preheader202.loopexit, label %.lr.ph210, !llvm.loop !69

.lr.ph214:                                        ; preds = %.lr.ph214.prol.loopexit, %.lr.ph214
  %indvars.iv272 = phi i64 [ %indvars.iv.next273.1, %.lr.ph214 ], [ %indvars.iv272.unr, %.lr.ph214.prol.loopexit ] ; 7 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv272
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !85
  %.idx320 = shl nuw nsw i64 %indvars.iv272, 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx320 ; 4 uses
  store float %i.hw, ptr %i.hx, align 4, !tbaa !85
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv272
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !85
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store float %i.hz, ptr %i.ia, align 4, !tbaa !85
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv272
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !85
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store float %i.ic, ptr %i.id, align 4, !tbaa !85
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv272
  %i.if = load float, ptr %i.ie, align 4, !tbaa !85
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store float %i.if, ptr %i.ig, align 4, !tbaa !85
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 5 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0156216, i64 %indvars.iv.next273
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !85
  %.idx320.1 = shl nuw nsw i64 %indvars.iv.next273, 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx320.1 ; 4 uses
  store float %i.ii, ptr %i.ij, align 4, !tbaa !85
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.0155217, i64 %indvars.iv.next273
  %i.il = load float, ptr %i.ik, align 4, !tbaa !85
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store float %i.il, ptr %i.im, align 4, !tbaa !85
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0154218, i64 %indvars.iv.next273
  %i.io = load float, ptr %i.in, align 4, !tbaa !85
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store float %i.io, ptr %i.ip, align 4, !tbaa !85
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0153219, i64 %indvars.iv.next273
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !85
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store float %i.ir, ptr %i.is, align 4, !tbaa !85
  %indvars.iv.next273.1 = add nuw nsw i64 %indvars.iv272, 2 ; 2 uses
  %exitcond276.not.1 = icmp eq i64 %indvars.iv.next273.1, %wide.trip.count275
  br i1 %exitcond276.not.1, label %._crit_edge215, label %.lr.ph214, !llvm.loop !70

._crit_edge215:                                   ; preds = %.lr.ph214.prol.loopexit, %.lr.ph214, %middle.block, %.preheader202
  %i.it = sext i32 %i.fx to i64                   ; 4 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %.0156216, i64 %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %.0155217, i64 %i.it
  %i.iw = getelementptr inbounds [4 x i8], ptr %.0154218, i64 %i.it
  %i.ix = getelementptr inbounds [4 x i8], ptr %.0153219, i64 %i.it
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.iy = load i32, ptr %8, align 4, !tbaa !15
  %i.iz = sext i32 %i.iy to i64
  %i.ja = icmp slt i64 %indvars.iv.next278, %i.iz
  br i1 %i.ja, label %.lr.ph222, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %._crit_edge235, %._crit_edge215, %._crit_edge.thread, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %i.jb = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next303, %i.jc
  br i1 %i.jd, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !72

._crit_edge247:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge247, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !35 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!13, !6, i64 44}
!15 = !{!6, !6, i64 0}
!16 = !{!13, !11, i64 16}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !11, i64 8, !5, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIiSaIiEE", !23, i64 0}
!25 = !{!"p1 _ZTSN4ncnn3MatE", !9, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !28, i64 0}
!30 = !{!"_ZTSN4ncnn5LayerE", !17, i64 8, !17, i64 9, !17, i64 10, !17, i64 11, !17, i64 12, !17, i64 13, !17, i64 14, !17, i64 15, !17, i64 16, !17, i64 17, !17, i64 18, !17, i64 19, !17, i64 20, !17, i64 21, !17, i64 22, !17, i64 23, !17, i64 24, !17, i64 25, !17, i64 26, !17, i64 27, !6, i64 28, !9, i64 32, !6, i64 40, !20, i64 48, !20, i64 80, !24, i64 112, !24, i64 136, !29, i64 160, !29, i64 184}
!31 = !{!"_ZTSN4ncnn12PixelShuffleE", !30, i64 0, !6, i64 208, !6, i64 212}
!32 = !{!13, !9, i64 0}
!33 = !{!13, !11, i64 64}
!34 = !{i64 2, i64 -1, i64 -1, i1 true}
!35 = !{!34}
!36 = !{!13, !6, i64 48}
!37 = !{!13, !6, i64 56}
!38 = !{!31, !6, i64 208}
!39 = !{!"_ZTSN4ncnn6OptionE", !17, i64 0, !17, i64 1, !17, i64 2, !17, i64 3, !6, i64 4, !12, i64 8, !12, i64 16, !6, i64 24, !17, i64 28, !17, i64 29, !17, i64 30, !17, i64 31, !17, i64 32, !17, i64 33, !17, i64 34, !17, i64 35, !17, i64 36, !17, i64 37, !17, i64 38, !17, i64 39, !6, i64 40, !17, i64 44, !17, i64 45, !17, i64 46, !17, i64 47, !5, i64 48, !17, i64 49, !17, i64 50, !17, i64 51, !17, i64 52, !17, i64 53, !17, i64 54, !17, i64 55, !17, i64 56, !17, i64 57, !17, i64 58, !17, i64 59, !17, i64 60, !17, i64 61, !17, i64 62, !17, i64 63}
!40 = !{!39, !12, i64 8}
!41 = !{!39, !6, i64 4}
!42 = !{!"vtable pointer", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{!44, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!45 = distinct !{!45, !44, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!46 = distinct !{!46, !74}
!47 = distinct !{!47, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!48 = distinct !{!48, !47, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!49 = distinct !{!49, !79, !80, !81, !82}
!50 = distinct !{!50, !79, !80, !82, !81}
!51 = distinct !{!51, !79, !80, !81, !82}
!52 = distinct !{!52, !79, !80, !82, !81}
!53 = distinct !{!53, !79}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !79, !81, !82}
!59 = distinct !{!59, !79}
!60 = distinct !{!60, !79, !81}
!61 = distinct !{!61, !79}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !62}
!66 = distinct !{!66, !62}
!67 = distinct !{!67, !62}
!68 = distinct !{!68, !79, !81, !82}
!69 = distinct !{!69, !79}
!70 = distinct !{!70, !79, !81}
!71 = distinct !{!71, !79}
!72 = distinct !{!72, !79}
!73 = !{!45}
!74 = !{!"llvm.loop.unswitch.partial.disable"}
!75 = !{!31, !6, i64 212}
!76 = !{!48}
!77 = !{!"p1 float", !9, i64 0}
!78 = !{!77, !77, i64 0}
end_hunk_0
