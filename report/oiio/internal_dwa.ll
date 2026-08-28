Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/internal_dwa?download=true
inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctEncoder_execute:bb.a
  %i.dr = lshr i32 %i.dq, 13
  %i.ds = and i32 %i.cs, 32768
  %i.dt = or i32 %i.dr, %i.ds
  %i.du = trunc i32 %i.dt to i16
  br label %float_to_half.exit.us

bb.m:                                             ; preds = %bb.k
  %i.dv = or disjoint i16 %i.cu, 31744
  br label %float_to_half.exit.us

bb.n:                                             ; preds = %bb.j
  %i.dw = or disjoint i16 %i.cu, 31744            ; 2 uses
  %i.dx = icmp eq i32 %i.cr, 2139095040
  br i1 %i.dx, label %float_to_half.exit.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = lshr i32 %i.cr, 13
  %i.dz = and i32 %i.dy, 1023                     ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i16
  %i.ec = trunc nuw nsw i32 %i.dz to i16
  %i.ed = or i16 %i.ec, %i.eb
  %i.ee = or disjoint i16 %i.ed, %i.dw
  br label %float_to_half.exit.us

float_to_half.exit.us:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.f
  %.033.i.i.us = phi i16 [ %i.cu, %bb.f ], [ %i.ee, %bb.o ], [ %i.dv, %bb.m ], [ %i.du, %bb.l ], [ %i.dw, %bb.n ], [ %i.dk, %bb.i ], [ %i.dg, %bb.h ]
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.2188.us, i64 %indvars.iv247
  store i16 %.033.i.i.us, ptr %i.ef, align 2, !tbaa !92
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %._crit_edge186.us, label %bb.e, !llvm.loop !216

._crit_edge186.us:                                ; preds = %float_to_half.exit.us
  store ptr %.2188.us, ptr %i.cj, align 8, !tbaa !95
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.2188.us, i64 %i.ch ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.lr.ph185.us, !llvm.loop !217

.lr.ph190.split:                                  ; preds = %.lr.ph190.split, %.lr.ph190.split.preheader.new
  %indvars.iv242 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %indvars.iv.next243.7, %.lr.ph190.split ] ; 9 uses
  %.2188 = phi ptr [ %.1131192, %.lr.ph190.split.preheader.new ], [ %i.fd, %.lr.ph190.split ] ; 2 uses
  %niter412 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %niter412.next.7, %.lr.ph190.split ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  store ptr %.2188, ptr %i.eh, align 8, !tbaa !95
  %i.ei = getelementptr inbounds [2 x i8], ptr %.2188, i64 %i.ch ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !95
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.ch ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.el, ptr %i.en, align 8, !tbaa !95
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.ch ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !95
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.ch ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store ptr %i.er, ptr %i.et, align 8, !tbaa !95
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.ch ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !95
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ch ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !95
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.ch ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  store ptr %i.fa, ptr %i.fc, align 8, !tbaa !95
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.ch ; 3 uses
  %indvars.iv.next243.7 = add nuw nsw i64 %indvars.iv242, 8 ; 2 uses
  %niter412.next.7 = add i64 %niter412, 8         ; 2 uses
  %niter412.ncmp.7 = icmp eq i64 %niter412.next.7, %unroll_iter411
  br i1 %niter412.ncmp.7, label %.loopexit.loopexit402.unr-lcssa, label %.lr.ph190.split, !llvm.loop !217

.loopexit.loopexit402.unr-lcssa:                  ; preds = %.lr.ph190.split
  %lcmp.mod408.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod408.not, label %.loopexit, label %.lr.ph190.split.epil.preheader

.lr.ph190.split.epil.preheader:                   ; preds = %.loopexit.loopexit402.unr-lcssa, %.lr.ph190.split.preheader
  %indvars.iv242.epil.init = phi i64 [ 0, %.lr.ph190.split.preheader ], [ %indvars.iv.next243.7, %.loopexit.loopexit402.unr-lcssa ]
  %.2188.epil.init = phi ptr [ %.1131192, %.lr.ph190.split.preheader ], [ %i.fd, %.loopexit.loopexit402.unr-lcssa ]
  %lcmp.mod410 = icmp ne i64 %xtraiter406, 0
  tail call void @llvm.assume(i1 %lcmp.mod410)
  br label %.lr.ph190.split.epil

.lr.ph190.split.epil:                             ; preds = %.lr.ph190.split.epil, %.lr.ph190.split.epil.preheader
  %indvars.iv242.epil = phi i64 [ %indvars.iv.next243.epil, %.lr.ph190.split.epil ], [ %indvars.iv242.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %.2188.epil = phi ptr [ %i.ff, %.lr.ph190.split.epil ], [ %.2188.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %epil.iter407 = phi i64 [ %epil.iter407.next, %.lr.ph190.split.epil ], [ 0, %.lr.ph190.split.epil.preheader ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv242.epil
  store ptr %.2188.epil, ptr %i.fe, align 8, !tbaa !95
  %i.ff = getelementptr inbounds [2 x i8], ptr %.2188.epil, i64 %i.ch ; 2 uses
  %indvars.iv.next243.epil = add nuw nsw i64 %indvars.iv242.epil, 1
  %epil.iter407.next = add i64 %epil.iter407, 1   ; 2 uses
  %epil.iter407.cmp.not = icmp eq i64 %epil.iter407.next, %xtraiter406
  br i1 %epil.iter407.cmp.not, label %.loopexit, label %.lr.ph190.split.epil, !llvm.loop !218

.loopexit:                                        ; preds = %.loopexit.loopexit402.unr-lcssa, %.lr.ph190.split.epil, %._crit_edge186.us, %.preheader164, %.lr.ph195
  %.3 = phi ptr [ %.1131192, %.lr.ph195 ], [ %.1131192, %.preheader164 ], [ %i.eg, %._crit_edge186.us ], [ %i.fd, %.loopexit.loopexit402.unr-lcssa ], [ %i.ff, %.lr.ph190.split.epil ]
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !219

.preheader163.loopexit.unr-lcssa:                 ; preds = %bb.q
  %lcmp.mod416.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod416.not, label %.preheader163, label %.epil.preheader413

.epil.preheader413:                               ; preds = %.preheader163.loopexit.unr-lcssa, %.lr.ph199
  %indvars.iv262.epil.init = phi i64 [ 1, %.lr.ph199 ], [ %indvars.iv.next263.3, %.preheader163.loopexit.unr-lcssa ]
  %lcmp.mod417 = icmp ne i64 %xtraiter414, 0
  tail call void @llvm.assume(i1 %lcmp.mod417)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader413
  %indvars.iv262.epil = phi i64 [ %indvars.iv262.epil.init, %.epil.preheader413 ], [ %indvars.iv.next263.epil, %bb.p ] ; 2 uses
  %epil.iter415 = phi i64 [ 0, %.epil.preheader413 ], [ %epil.iter415.next, %bb.p ]
  %i.fg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262.epil ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !120
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 384
  %i.fk = load ptr, ptr %i.fj, align 32, !tbaa !213
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.bu
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !120
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 384
  store ptr %i.fl, ptr %i.fn, align 32, !tbaa !213
  %indvars.iv.next263.epil = add nuw nsw i64 %indvars.iv262.epil, 1
  %epil.iter415.next = add i64 %epil.iter415, 1   ; 2 uses
  %epil.iter415.cmp.not = icmp eq i64 %epil.iter415.next, %xtraiter414
  br i1 %epil.iter415.cmp.not, label %.preheader163, label %bb.p, !llvm.loop !220

.preheader163:                                    ; preds = %.preheader163.loopexit.unr-lcssa, %bb.p, %._crit_edge196.thread, %._crit_edge196
  %i.fo = phi ptr [ %i.x, %._crit_edge196.thread ], [ %i.br, %._crit_edge196 ], [ %i.br, %bb.p ], [ %i.br, %.preheader163.loopexit.unr-lcssa ] ; 5 uses
  %.0130377380 = phi ptr [ null, %._crit_edge196.thread ], [ %.0130.ph, %._crit_edge196 ], [ %.0130.ph, %bb.p ], [ %.0130.ph, %.preheader163.loopexit.unr-lcssa ] ; 2 uses
  %i.fp = icmp sgt i32 %i.p, 0
  br i1 %i.fp, label %.preheader162.lr.ph, label %._crit_edge220.split

.preheader162.lr.ph:                              ; preds = %.preheader163
  %i.fq = icmp sgt i32 %i.j, 0
  %i.fr = icmp eq i32 %i.d, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 720
  br i1 %i.fq, label %.preheader162.preheader, label %._crit_edge220.split

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %wide.trip.count306 = zext nneg i32 %i.p to i64
  %wide.trip.count301 = zext nneg i32 %i.j to i64
  %wide.trip.count278 = zext nneg i32 %i.d to i64
  %wide.trip.count291 = zext nneg i32 %i.d to i64
  %wide.trip.count296 = zext nneg i32 %i.d to i64
  %scevgep = getelementptr i8, ptr %i.fo, i64 256 ; 2 uses
  br label %.preheader162

bb.q:                                             ; preds = %bb.q, %.lr.ph199.new
  %indvars.iv262 = phi i64 [ 1, %.lr.ph199.new ], [ %indvars.iv.next263.3, %bb.q ] ; 5 uses
  %niter419 = phi i64 [ 0, %.lr.ph199.new ], [ %niter419.next.3, %bb.q ]
  %i.fy = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !120
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 384
  %i.gc = load ptr, ptr %i.gb, align 32, !tbaa !213
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.bu ; 2 uses
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !120
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 384
  store ptr %i.gd, ptr %i.gf, align 32, !tbaa !213
  %i.gg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.bu ; 2 uses
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !120
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 384
  store ptr %i.gi, ptr %i.gk, align 32, !tbaa !213
  %i.gl = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.bu ; 2 uses
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !120
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 384
  store ptr %i.gn, ptr %i.gp, align 32, !tbaa !213
  %i.gq = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gr = getelementptr i8, ptr %i.gq, i64 24
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.bu
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !120
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 384
  store ptr %i.gs, ptr %i.gu, align 32, !tbaa !213
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %niter419.next.3 = add i64 %niter419, 4         ; 2 uses
  %niter419.ncmp.3 = icmp eq i64 %niter419.next.3, %unroll_iter418
  br i1 %niter419.ncmp.3, label %.preheader163.loopexit.unr-lcssa, label %bb.q, !llvm.loop !221

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge216
  %indvars.iv303 = phi i64 [ 0, %.preheader162.preheader ], [ %indvars.iv.next304, %._crit_edge216 ] ; 2 uses
  %.0157218 = phi ptr [ %i.r, %.preheader162.preheader ], [ %.2159.lcssa, %._crit_edge216 ]
  %3 = shl nuw nsw i64 %indvars.iv303, 3          ; 2 uses
  %i.gv = load ptr, ptr %i.fs, align 8            ; 5 uses
  %i.gw = load ptr, ptr %i.ft, align 16           ; 5 uses
  %scevgep389 = getelementptr i8, ptr %i.gv, i64 256 ; 2 uses
  %scevgep390 = getelementptr i8, ptr %i.gw, i64 256 ; 2 uses
  %bound0 = icmp ult ptr %i.fo, %scevgep389
  %bound1 = icmp ult ptr %i.gv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0391 = icmp ult ptr %i.fo, %scevgep390
  %bound1392 = icmp ult ptr %i.gw, %scevgep
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx = or i1 %found.conflict, %found.conflict393
  %bound0394 = icmp ult ptr %i.gv, %scevgep390
  %bound1395 = icmp ult ptr %i.gw, %scevgep389
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx, %found.conflict396
  br label %.preheader161

._crit_edge220.split:                             ; preds = %._crit_edge216, %.preheader162.lr.ph, %.preheader163
  %.not147 = icmp eq ptr %.0130377380, null
  br i1 %.not147, label %bb.fg, label %bb.ff

.preheader161:                                    ; preds = %.preheader162, %._crit_edge212
  %indvars.iv298 = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next299, %._crit_edge212 ] ; 2 uses
  %.1158214 = phi ptr [ %.0157218, %.preheader162 ], [ %.2159.lcssa, %._crit_edge212 ] ; 2 uses
  br i1 %i.u, label %.preheader160.lr.ph, label %._crit_edge212

.preheader160.lr.ph:                              ; preds = %.preheader161
  %i.gx = load i32, ptr %i.e, align 4, !tbaa !209 ; 3 uses
  %reass.add = shl i32 %i.gx, 1
  %i.gy = add nsw i32 %i.gx, -1
  %i.gz = load i32, ptr %i.k, align 8, !tbaa !210 ; 4 uses
  %reass.add150 = shl i32 %i.gz, 1                ; 2 uses
  %i.ha = add nsw i32 %i.gz, -1                   ; 2 uses
  %i.hb = load ptr, ptr %2, align 8, !tbaa !222   ; 9 uses
  %.not151 = icmp eq ptr %i.hb, null
  %i.hc = trunc i64 %indvars.iv298 to i32
  %4 = shl i32 %i.hc, 3
  %5 = insertelement <8 x i32> poison, i32 %4, i64 0
  %6 = shufflevector <8 x i32> %5, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %7 = or disjoint <8 x i32> %6, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %8 = insertelement <8 x i32> poison, i32 %i.gx, i64 0
  %9 = shufflevector <8 x i32> %8, <8 x i32> poison, <8 x i32> zeroinitializer
  %10 = icmp slt <8 x i32> %7, %9
  %11 = xor <8 x i32> %6, <i32 -8, i32 -7, i32 -6, i32 -5, i32 -4, i32 -3, i32 -2, i32 -1>
  %12 = insertelement <8 x i32> poison, i32 %reass.add, i64 0
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <8 x i32> zeroinitializer
  %14 = add <8 x i32> %13, %11
  %15 = select <8 x i1> %10, <8 x i32> %7, <8 x i32> %14 ; 3 uses
  %16 = icmp slt <8 x i32> %15, zeroinitializer   ; 2 uses
  %17 = shufflevector <8 x i1> %16, <8 x i1> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hd = insertelement <4 x i32> poison, i32 %i.gy, i64 0
  %i.he = shufflevector <4 x i32> %i.hd, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %18 = shufflevector <8 x i32> %15, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %19 = select <4 x i1> %17, <4 x i32> %i.he, <4 x i32> %18 ; 4 uses
  %20 = extractelement <4 x i32> %19, i64 3
  %21 = sext i32 %20 to i64                       ; 2 uses
  %22 = extractelement <4 x i32> %19, i64 2
  %23 = sext i32 %22 to i64                       ; 2 uses
  %24 = extractelement <4 x i32> %19, i64 1
  %25 = sext i32 %24 to i64                       ; 2 uses
  %26 = extractelement <4 x i32> %19, i64 0
  %27 = sext i32 %26 to i64                       ; 2 uses
  %28 = shufflevector <8 x i1> %16, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %29 = shufflevector <8 x i32> %15, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hf = select <4 x i1> %28, <4 x i32> %i.he, <4 x i32> %29 ; 4 uses
  %i.hg = extractelement <4 x i32> %i.hf, i64 3
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = extractelement <4 x i32> %i.hf, i64 2
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = extractelement <4 x i32> %i.hf, i64 1
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = extractelement <4 x i32> %i.hf, i64 0
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  br i1 %.not151, label %.preheader160.us, label %.preheader160

.preheader160.us:                                 ; preds = %.preheader160.lr.ph, %.split203.us.us
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %.split203.us.us ], [ 0, %.preheader160.lr.ph ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv288
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !120 ; 9 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 392
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !113
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %half_to_float.exit.us.us.us.7, %.preheader160.us
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %half_to_float.exit.us.us.us.7 ], [ 0, %.preheader160.us ] ; 3 uses
  %i.hs = add nuw nsw i64 %indvars.iv284, %3
  %i.ht = trunc nuw i64 %i.hs to i32              ; 3 uses
  %.not149.us.us = icmp sgt i32 %i.gz, %i.ht
  %i.hu = xor i32 %i.ht, -1
  %i.hv = add i32 %reass.add150, %i.hu
  %.0113.us.us = select i1 %.not149.us.us, i32 %i.ht, i32 %i.hv ; 2 uses
  %i.hw = icmp slt i32 %.0113.us.us, 0
  %.1.us.us = select i1 %i.hw, i32 %i.ha, i32 %.0113.us.us
  %i.hx = sext i32 %.1.us.us to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !95 ; 8 uses
  %i.ia = shl nuw nsw i64 %indvars.iv284, 3       ; 8 uses
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %21
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !92 ; 2 uses
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 13
  %i.if = and i32 %i.ie, 268427264                ; 6 uses
  %.signext.i.i.us.us.us = sext i16 %i.ic to i32
  %i.ig = and i32 %.signext.i.i.us.us.us, -2147483648 ; 3 uses
  %i.ih = icmp samesign ugt i32 %i.if, 8388607
  br i1 %i.ih, label %bb.t, label %bb.r, !prof !185

bb.r:                                             ; preds = %.preheader.us.us
  %.not.i.i153.us.us.us = icmp eq i32 %i.if, 0
  br i1 %.not.i.i153.us.us.us, label %half_to_float.exit.us.us.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ii = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.if, i1 true)
  %i.ij = add nsw i32 %i.ii, -8                   ; 2 uses
  %i.ik = shl i32 %i.if, %i.ij
  %i.il = or i32 %i.ig, %i.ik
  %i.im = or i32 %i.il, 947912704
  %i.in = shl nuw nsw i32 %i.ij, 23
  %i.io = sub nuw i32 %i.im, %i.in
  br label %half_to_float.exit.us.us.us

bb.t:                                             ; preds = %.preheader.us.us
  %i.ip = or disjoint i32 %i.if, %i.ig            ; 2 uses
  %i.iq = icmp samesign ult i32 %i.if, 260046848
  br i1 %i.iq, label %bb.v, label %bb.u, !prof !185

bb.u:                                             ; preds = %bb.t
  %i.ir = or i32 %i.ip, 2139095040
  br label %half_to_float.exit.us.us.us

bb.v:                                             ; preds = %bb.t
  %i.is = add nuw nsw i32 %i.ip, 939524096
  br label %half_to_float.exit.us.us.us

half_to_float.exit.us.us.us:                      ; preds = %bb.v, %bb.u, %bb.s, %bb.r
  %.sroa.0.0.i.i.us.us.us = phi i32 [ %i.is, %bb.v ], [ %i.ir, %bb.u ], [ %i.io, %bb.s ], [ %i.ig, %bb.r ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  store i32 %.sroa.0.0.i.i.us.us.us, ptr %i.it, align 4, !tbaa !182
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %23
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !92 ; 2 uses
  %i.iw = zext i16 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iw, 13
  %i.iy = and i32 %i.ix, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.1 = sext i16 %i.iv to i32
  %i.iz = and i32 %.signext.i.i.us.us.us.1, -2147483648 ; 3 uses
  %i.ja = icmp samesign ugt i32 %i.iy, 8388607
  br i1 %i.ja, label %bb.y, label %bb.w, !prof !185

bb.w:                                             ; preds = %half_to_float.exit.us.us.us
  %.not.i.i153.us.us.us.1 = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i153.us.us.us.1, label %half_to_float.exit.us.us.us.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jb = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.iy, i1 true)
  %i.jc = add nsw i32 %i.jb, -8                   ; 2 uses
  %i.jd = shl i32 %i.iy, %i.jc
  %i.je = or i32 %i.iz, %i.jd
  %i.jf = or i32 %i.je, 947912704
  %i.jg = shl nuw nsw i32 %i.jc, 23
  %i.jh = sub nuw i32 %i.jf, %i.jg
  br label %half_to_float.exit.us.us.us.1

bb.y:                                             ; preds = %half_to_float.exit.us.us.us
  %i.ji = or disjoint i32 %i.iy, %i.iz            ; 2 uses
  %i.jj = icmp samesign ult i32 %i.iy, 260046848
  br i1 %i.jj, label %bb.aa, label %bb.z, !prof !185

bb.z:                                             ; preds = %bb.y
  %i.jk = or i32 %i.ji, 2139095040
  br label %half_to_float.exit.us.us.us.1

bb.aa:                                            ; preds = %bb.y
  %i.jl = add nuw nsw i32 %i.ji, 939524096
  br label %half_to_float.exit.us.us.us.1

half_to_float.exit.us.us.us.1:                    ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %.sroa.0.0.i.i.us.us.us.1 = phi i32 [ %i.jl, %bb.aa ], [ %i.jk, %bb.z ], [ %i.jh, %bb.x ], [ %i.iz, %bb.w ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store i32 %.sroa.0.0.i.i.us.us.us.1, ptr %i.jn, align 4, !tbaa !182
  %i.jo = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %25
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !92 ; 2 uses
  %i.jq = zext i16 %i.jp to i32
  %i.jr = shl nuw nsw i32 %i.jq, 13
  %i.js = and i32 %i.jr, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.2 = sext i16 %i.jp to i32
  %i.jt = and i32 %.signext.i.i.us.us.us.2, -2147483648 ; 3 uses
  %i.ju = icmp samesign ugt i32 %i.js, 8388607
  br i1 %i.ju, label %bb.ad, label %bb.ab, !prof !185

bb.ab:                                            ; preds = %half_to_float.exit.us.us.us.1
  %.not.i.i153.us.us.us.2 = icmp eq i32 %i.js, 0
  br i1 %.not.i.i153.us.us.us.2, label %half_to_float.exit.us.us.us.2, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jv = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.js, i1 true)
  %i.jw = add nsw i32 %i.jv, -8                   ; 2 uses
  %i.jx = shl i32 %i.js, %i.jw
  %i.jy = or i32 %i.jt, %i.jx
  %i.jz = or i32 %i.jy, 947912704
  %i.ka = shl nuw nsw i32 %i.jw, 23
  %i.kb = sub nuw i32 %i.jz, %i.ka
  br label %half_to_float.exit.us.us.us.2

bb.ad:                                            ; preds = %half_to_float.exit.us.us.us.1
  %i.kc = or disjoint i32 %i.js, %i.jt            ; 2 uses
  %i.kd = icmp samesign ult i32 %i.js, 260046848
  br i1 %i.kd, label %bb.af, label %bb.ae, !prof !185

bb.ae:                                            ; preds = %bb.ad
  %i.ke = or i32 %i.kc, 2139095040
  br label %half_to_float.exit.us.us.us.2

bb.af:                                            ; preds = %bb.ad
  %i.kf = add nuw nsw i32 %i.kc, 939524096
  br label %half_to_float.exit.us.us.us.2

half_to_float.exit.us.us.us.2:                    ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %.sroa.0.0.i.i.us.us.us.2 = phi i32 [ %i.kf, %bb.af ], [ %i.ke, %bb.ae ], [ %i.kb, %bb.ac ], [ %i.jt, %bb.ab ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 %.sroa.0.0.i.i.us.us.us.2, ptr %i.kh, align 4, !tbaa !182
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %27
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !92 ; 2 uses
  %i.kk = zext i16 %i.kj to i32
  %i.kl = shl nuw nsw i32 %i.kk, 13
  %i.km = and i32 %i.kl, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.3 = sext i16 %i.kj to i32
  %i.kn = and i32 %.signext.i.i.us.us.us.3, -2147483648 ; 3 uses
  %i.ko = icmp samesign ugt i32 %i.km, 8388607
  br i1 %i.ko, label %bb.ai, label %bb.ag, !prof !185

bb.ag:                                            ; preds = %half_to_float.exit.us.us.us.2
  %.not.i.i153.us.us.us.3 = icmp eq i32 %i.km, 0
  br i1 %.not.i.i153.us.us.us.3, label %half_to_float.exit.us.us.us.3, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kp = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.km, i1 true)
  %i.kq = add nsw i32 %i.kp, -8                   ; 2 uses
  %i.kr = shl i32 %i.km, %i.kq
  %i.ks = or i32 %i.kn, %i.kr
  %i.kt = or i32 %i.ks, 947912704
  %i.ku = shl nuw nsw i32 %i.kq, 23
  %i.kv = sub nuw i32 %i.kt, %i.ku
  br label %half_to_float.exit.us.us.us.3

bb.ai:                                            ; preds = %half_to_float.exit.us.us.us.2
  %i.kw = or disjoint i32 %i.km, %i.kn            ; 2 uses
  %i.kx = icmp samesign ult i32 %i.km, 260046848
  br i1 %i.kx, label %bb.ak, label %bb.aj, !prof !185

bb.aj:                                            ; preds = %bb.ai
  %i.ky = or i32 %i.kw, 2139095040
  br label %half_to_float.exit.us.us.us.3

bb.ak:                                            ; preds = %bb.ai
  %i.kz = add nuw nsw i32 %i.kw, 939524096
  br label %half_to_float.exit.us.us.us.3

half_to_float.exit.us.us.us.3:                    ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.ag
  %.sroa.0.0.i.i.us.us.us.3 = phi i32 [ %i.kz, %bb.ak ], [ %i.ky, %bb.aj ], [ %i.kv, %bb.ah ], [ %i.kn, %bb.ag ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  store i32 %.sroa.0.0.i.i.us.us.us.3, ptr %i.lb, align 4, !tbaa !182
  %i.lc = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.hh
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !92 ; 2 uses
  %i.le = zext i16 %i.ld to i32
  %i.lf = shl nuw nsw i32 %i.le, 13
  %i.lg = and i32 %i.lf, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.4 = sext i16 %i.ld to i32
  %i.lh = and i32 %.signext.i.i.us.us.us.4, -2147483648 ; 3 uses
  %i.li = icmp samesign ugt i32 %i.lg, 8388607
  br i1 %i.li, label %bb.an, label %bb.al, !prof !185

bb.al:                                            ; preds = %half_to_float.exit.us.us.us.3
  %.not.i.i153.us.us.us.4 = icmp eq i32 %i.lg, 0
  br i1 %.not.i.i153.us.us.us.4, label %half_to_float.exit.us.us.us.4, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lj = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.lg, i1 true)
  %i.lk = add nsw i32 %i.lj, -8                   ; 2 uses
  %i.ll = shl i32 %i.lg, %i.lk
  %i.lm = or i32 %i.lh, %i.ll
  %i.ln = or i32 %i.lm, 947912704
  %i.lo = shl nuw nsw i32 %i.lk, 23
  %i.lp = sub nuw i32 %i.ln, %i.lo
  br label %half_to_float.exit.us.us.us.4

bb.an:                                            ; preds = %half_to_float.exit.us.us.us.3
  %i.lq = or disjoint i32 %i.lg, %i.lh            ; 2 uses
  %i.lr = icmp samesign ult i32 %i.lg, 260046848
  br i1 %i.lr, label %bb.ap, label %bb.ao, !prof !185

bb.ao:                                            ; preds = %bb.an
  %i.ls = or i32 %i.lq, 2139095040
  br label %half_to_float.exit.us.us.us.4

bb.ap:                                            ; preds = %bb.an
  %i.lt = add nuw nsw i32 %i.lq, 939524096
  br label %half_to_float.exit.us.us.us.4

half_to_float.exit.us.us.us.4:                    ; preds = %bb.ap, %bb.ao, %bb.am, %bb.al
  %.sroa.0.0.i.i.us.us.us.4 = phi i32 [ %i.lt, %bb.ap ], [ %i.ls, %bb.ao ], [ %i.lp, %bb.am ], [ %i.lh, %bb.al ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i32 %.sroa.0.0.i.i.us.us.us.4, ptr %i.lv, align 4, !tbaa !182
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.hj
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !92 ; 2 uses
  %i.ly = zext i16 %i.lx to i32
  %i.lz = shl nuw nsw i32 %i.ly, 13
  %i.ma = and i32 %i.lz, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.5 = sext i16 %i.lx to i32
  %i.mb = and i32 %.signext.i.i.us.us.us.5, -2147483648 ; 3 uses
  %i.mc = icmp samesign ugt i32 %i.ma, 8388607
  br i1 %i.mc, label %bb.as, label %bb.aq, !prof !185

bb.aq:                                            ; preds = %half_to_float.exit.us.us.us.4
  %.not.i.i153.us.us.us.5 = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i153.us.us.us.5, label %half_to_float.exit.us.us.us.5, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.md = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ma, i1 true)
  %i.me = add nsw i32 %i.md, -8                   ; 2 uses
  %i.mf = shl i32 %i.ma, %i.me
  %i.mg = or i32 %i.mb, %i.mf
  %i.mh = or i32 %i.mg, 947912704
  %i.mi = shl nuw nsw i32 %i.me, 23
  %i.mj = sub nuw i32 %i.mh, %i.mi
  br label %half_to_float.exit.us.us.us.5

bb.as:                                            ; preds = %half_to_float.exit.us.us.us.4
  %i.mk = or disjoint i32 %i.ma, %i.mb            ; 2 uses
  %i.ml = icmp samesign ult i32 %i.ma, 260046848
  br i1 %i.ml, label %bb.au, label %bb.at, !prof !185

bb.at:                                            ; preds = %bb.as
  %i.mm = or i32 %i.mk, 2139095040
  br label %half_to_float.exit.us.us.us.5

bb.au:                                            ; preds = %bb.as
  %i.mn = add nuw nsw i32 %i.mk, 939524096
  br label %half_to_float.exit.us.us.us.5

half_to_float.exit.us.us.us.5:                    ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq
  %.sroa.0.0.i.i.us.us.us.5 = phi i32 [ %i.mn, %bb.au ], [ %i.mm, %bb.at ], [ %i.mj, %bb.ar ], [ %i.mb, %bb.aq ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 20
  store i32 %.sroa.0.0.i.i.us.us.us.5, ptr %i.mp, align 4, !tbaa !182
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.hl
  %i.mr = load i16, ptr %i.mq, align 2, !tbaa !92 ; 2 uses
  %i.ms = zext i16 %i.mr to i32
  %i.mt = shl nuw nsw i32 %i.ms, 13
  %i.mu = and i32 %i.mt, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.6 = sext i16 %i.mr to i32
  %i.mv = and i32 %.signext.i.i.us.us.us.6, -2147483648 ; 3 uses
  %i.mw = icmp samesign ugt i32 %i.mu, 8388607
  br i1 %i.mw, label %bb.ax, label %bb.av, !prof !185

bb.av:                                            ; preds = %half_to_float.exit.us.us.us.5
  %.not.i.i153.us.us.us.6 = icmp eq i32 %i.mu, 0
  br i1 %.not.i.i153.us.us.us.6, label %half_to_float.exit.us.us.us.6, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mx = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.mu, i1 true)
  %i.my = add nsw i32 %i.mx, -8                   ; 2 uses
  %i.mz = shl i32 %i.mu, %i.my
  %i.na = or i32 %i.mv, %i.mz
  %i.nb = or i32 %i.na, 947912704
  %i.nc = shl nuw nsw i32 %i.my, 23
  %i.nd = sub nuw i32 %i.nb, %i.nc
  br label %half_to_float.exit.us.us.us.6

bb.ax:                                            ; preds = %half_to_float.exit.us.us.us.5
  %i.ne = or disjoint i32 %i.mu, %i.mv            ; 2 uses
  %i.nf = icmp samesign ult i32 %i.mu, 260046848
  br i1 %i.nf, label %bb.az, label %bb.ay, !prof !185

bb.ay:                                            ; preds = %bb.ax
  %i.ng = or i32 %i.ne, 2139095040
  br label %half_to_float.exit.us.us.us.6

bb.az:                                            ; preds = %bb.ax
  %i.nh = add nuw nsw i32 %i.ne, 939524096
  br label %half_to_float.exit.us.us.us.6

half_to_float.exit.us.us.us.6:                    ; preds = %bb.az, %bb.ay, %bb.aw, %bb.av
  %.sroa.0.0.i.i.us.us.us.6 = phi i32 [ %i.nh, %bb.az ], [ %i.ng, %bb.ay ], [ %i.nd, %bb.aw ], [ %i.mv, %bb.av ]
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  store i32 %.sroa.0.0.i.i.us.us.us.6, ptr %i.nj, align 4, !tbaa !182
  %i.nk = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.hn
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !92 ; 2 uses
  %i.nm = zext i16 %i.nl to i32
  %i.nn = shl nuw nsw i32 %i.nm, 13
  %i.no = and i32 %i.nn, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.7 = sext i16 %i.nl to i32
  %i.np = and i32 %.signext.i.i.us.us.us.7, -2147483648 ; 3 uses
  %i.nq = icmp samesign ugt i32 %i.no, 8388607
  br i1 %i.nq, label %bb.bc, label %bb.ba, !prof !185

bb.ba:                                            ; preds = %half_to_float.exit.us.us.us.6
  %.not.i.i153.us.us.us.7 = icmp eq i32 %i.no, 0
  br i1 %.not.i.i153.us.us.us.7, label %half_to_float.exit.us.us.us.7, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nr = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.no, i1 true)
  %i.ns = add nsw i32 %i.nr, -8                   ; 2 uses
  %i.nt = shl i32 %i.no, %i.ns
  %i.nu = or i32 %i.np, %i.nt
  %i.nv = or i32 %i.nu, 947912704
  %i.nw = shl nuw nsw i32 %i.ns, 23
  %i.nx = sub nuw i32 %i.nv, %i.nw
  br label %half_to_float.exit.us.us.us.7

bb.bc:                                            ; preds = %half_to_float.exit.us.us.us.6
  %i.ny = or disjoint i32 %i.no, %i.np            ; 2 uses
  %i.nz = icmp samesign ult i32 %i.no, 260046848
  br i1 %i.nz, label %bb.be, label %bb.bd, !prof !185

bb.bd:                                            ; preds = %bb.bc
  %i.oa = or i32 %i.ny, 2139095040
  br label %half_to_float.exit.us.us.us.7

bb.be:                                            ; preds = %bb.bc
  %i.ob = add nuw nsw i32 %i.ny, 939524096
  br label %half_to_float.exit.us.us.us.7

half_to_float.exit.us.us.us.7:                    ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba
  %.sroa.0.0.i.i.us.us.us.7 = phi i32 [ %i.ob, %bb.be ], [ %i.oa, %bb.bd ], [ %i.nx, %bb.bb ], [ %i.np, %bb.ba ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 28
  store i32 %.sroa.0.0.i.i.us.us.us.7, ptr %i.od, align 4, !tbaa !182
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next285, 8
  br i1 %exitcond287.not, label %.split203.us.us, label %.preheader.us.us, !llvm.loop !223

.split203.us.us:                                  ; preds = %half_to_float.exit.us.us.us.7
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge205, label %.preheader160.us, !llvm.loop !224

._crit_edge216:                                   ; preds = %._crit_edge212
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge220.split, label %.preheader162, !llvm.loop !225

.preheader160:                                    ; preds = %.preheader160.lr.ph, %.split203
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %.split203 ], [ 0, %.preheader160.lr.ph ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv275
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !120 ; 9 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 392
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !113
  br label %.preheader

._crit_edge205:                                   ; preds = %.split203, %.split203.us.us
  br i1 %i.fr, label %vector.memcheck, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %vector.body, %.preheader221, %._crit_edge205
  br label %.lr.ph211

vector.memcheck:                                  ; preds = %._crit_edge205
  br i1 %conflict.rdx397, label %.preheader221, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.oi, align 4, !tbaa !182, !alias.scope !226, !noalias !229 ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index ; 2 uses
  %wide.load398 = load <4 x float>, ptr %i.oj, align 4, !tbaa !182, !alias.scope !232, !noalias !233 ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index ; 2 uses
  %wide.load399 = load <4 x float>, ptr %i.ok, align 4, !tbaa !182, !alias.scope !233 ; 3 uses
  %i.ol = fmul <4 x float> %wide.load398, splat (float 7.152000e-01)
  %i.om = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.126000e-01), <4 x float> %i.ol)
  %i.on = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load399, <4 x float> splat (float 7.220000e-02), <4 x float> %i.om)
  store <4 x float> %i.on, ptr %i.oi, align 4, !tbaa !182, !alias.scope !226, !noalias !229
  %i.oo = fmul <4 x float> %wide.load398, splat (float -3.854000e-01)
  %i.op = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float -1.146000e-01), <4 x float> %i.oo)
  %i.oq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load399, <4 x float> splat (float 5.000000e-01), <4 x float> %i.op)
  store <4 x float> %i.oq, ptr %i.oj, align 4, !tbaa !182, !alias.scope !232, !noalias !233
  %i.or = fmul <4 x float> %wide.load398, splat (float -4.542000e-01)
  %i.os = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 5.000000e-01), <4 x float> %i.or)
  %i.ot = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load399, <4 x float> splat (float -4.580000e-02), <4 x float> %i.os)
  store <4 x float> %i.ot, ptr %i.ok, align 4, !tbaa !182, !alias.scope !233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ou = icmp eq i64 %index.next, 64
  br i1 %i.ou, label %.lr.ph211.preheader, label %vector.body, !llvm.loop !234

.preheader:                                       ; preds = %.preheader160, %half_to_float.exit.7
  %indvars.iv271 = phi i64 [ 0, %.preheader160 ], [ %indvars.iv.next272, %half_to_float.exit.7 ] ; 3 uses
  %i.ov = add nuw nsw i64 %indvars.iv271, %3
  %i.ow = trunc nuw i64 %i.ov to i32              ; 3 uses
  %.not149 = icmp sgt i32 %i.gz, %i.ow
  %i.ox = xor i32 %i.ow, -1
  %i.oy = add i32 %reass.add150, %i.ox
  %.0113 = select i1 %.not149, i32 %i.ow, i32 %i.oy ; 2 uses
  %i.oz = icmp slt i32 %.0113, 0
  %.1 = select i1 %i.oz, i32 %i.ha, i32 %.0113
  %i.pa = sext i32 %.1 to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !95 ; 8 uses
  %i.pd = shl nuw nsw i64 %indvars.iv271, 3       ; 8 uses
  %i.pe = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %21
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !92
  %i.pg = zext i16 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.pg
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !92 ; 2 uses
  %i.pj = zext i16 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pj, 13
  %i.pl = and i32 %i.pk, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.pi to i32
  %i.pm = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.pn = icmp samesign ugt i32 %i.pl, 8388607
  br i1 %i.pn, label %bb.bf, label %bb.bi, !prof !185

.split203:                                        ; preds = %half_to_float.exit.7
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge205, label %.preheader160, !llvm.loop !224

bb.bf:                                            ; preds = %.preheader
  %i.po = or disjoint i32 %i.pl, %i.pm            ; 2 uses
  %i.pp = icmp samesign ult i32 %i.pl, 260046848
  br i1 %i.pp, label %bb.bg, label %bb.bh, !prof !185

bb.bg:                                            ; preds = %bb.bf
  %i.pq = add nuw nsw i32 %i.po, 939524096
  br label %half_to_float.exit

bb.bh:                                            ; preds = %bb.bf
  %i.pr = or i32 %i.po, 2139095040
  br label %half_to_float.exit

bb.bi:                                            ; preds = %.preheader
  %.not.i.i153 = icmp eq i32 %i.pl, 0
  br i1 %.not.i.i153, label %half_to_float.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ps = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.pl, i1 true)
  %i.pt = add nsw i32 %i.ps, -8                   ; 2 uses
  %i.pu = shl i32 %i.pl, %i.pt
  %i.pv = or i32 %i.pm, %i.pu
  %i.pw = or i32 %i.pv, 947912704
  %i.px = shl nuw nsw i32 %i.pt, 23
  %i.py = sub nuw i32 %i.pw, %i.px
  br label %half_to_float.exit

half_to_float.exit:                               ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.sroa.0.0.i.i = phi i32 [ %i.pq, %bb.bg ], [ %i.pr, %bb.bh ], [ %i.py, %bb.bj ], [ %i.pm, %bb.bi ]
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pd
  store i32 %.sroa.0.0.i.i, ptr %i.pz, align 4, !tbaa !182
  %i.qa = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %23
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !92
  %i.qc = zext i16 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.qc
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !92 ; 2 uses
  %i.qf = zext i16 %i.qe to i32
  %i.qg = shl nuw nsw i32 %i.qf, 13
  %i.qh = and i32 %i.qg, 268427264                ; 6 uses
  %.signext.i.i.1 = sext i16 %i.qe to i32
  %i.qi = and i32 %.signext.i.i.1, -2147483648    ; 3 uses
  %i.qj = icmp samesign ugt i32 %i.qh, 8388607
  br i1 %i.qj, label %bb.bm, label %bb.bk, !prof !185

bb.bk:                                            ; preds = %half_to_float.exit
  %.not.i.i153.1 = icmp eq i32 %i.qh, 0
  br i1 %.not.i.i153.1, label %half_to_float.exit.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qk = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.qh, i1 true)
  %i.ql = add nsw i32 %i.qk, -8                   ; 2 uses
  %i.qm = shl i32 %i.qh, %i.ql
  %i.qn = or i32 %i.qi, %i.qm
  %i.qo = or i32 %i.qn, 947912704
  %i.qp = shl nuw nsw i32 %i.ql, 23
  %i.qq = sub nuw i32 %i.qo, %i.qp
  br label %half_to_float.exit.1

bb.bm:                                            ; preds = %half_to_float.exit
  %i.qr = or disjoint i32 %i.qh, %i.qi            ; 2 uses
  %i.qs = icmp samesign ult i32 %i.qh, 260046848
  br i1 %i.qs, label %bb.bo, label %bb.bn, !prof !185

bb.bn:                                            ; preds = %bb.bm
  %i.qt = or i32 %i.qr, 2139095040
  br label %half_to_float.exit.1

bb.bo:                                            ; preds = %bb.bm
  %i.qu = add nuw nsw i32 %i.qr, 939524096
  br label %half_to_float.exit.1

half_to_float.exit.1:                             ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk
  %.sroa.0.0.i.i.1 = phi i32 [ %i.qu, %bb.bo ], [ %i.qt, %bb.bn ], [ %i.qq, %bb.bl ], [ %i.qi, %bb.bk ]
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pd
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  store i32 %.sroa.0.0.i.i.1, ptr %i.qw, align 4, !tbaa !182
  %i.qx = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %25
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !92
  %i.qz = zext i16 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.qz
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !92 ; 2 uses
  %i.rc = zext i16 %i.rb to i32
  %i.rd = shl nuw nsw i32 %i.rc, 13
  %i.re = and i32 %i.rd, 268427264                ; 6 uses
  %.signext.i.i.2 = sext i16 %i.rb to i32
  %i.rf = and i32 %.signext.i.i.2, -2147483648    ; 3 uses
  %i.rg = icmp samesign ugt i32 %i.re, 8388607
  br i1 %i.rg, label %bb.br, label %bb.bp, !prof !185

bb.bp:                                            ; preds = %half_to_float.exit.1
  %.not.i.i153.2 = icmp eq i32 %i.re, 0
  br i1 %.not.i.i153.2, label %half_to_float.exit.2, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rh = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.re, i1 true)
  %i.ri = add nsw i32 %i.rh, -8                   ; 2 uses
  %i.rj = shl i32 %i.re, %i.ri
  %i.rk = or i32 %i.rf, %i.rj
  %i.rl = or i32 %i.rk, 947912704
  %i.rm = shl nuw nsw i32 %i.ri, 23
  %i.rn = sub nuw i32 %i.rl, %i.rm
  br label %half_to_float.exit.2

bb.br:                                            ; preds = %half_to_float.exit.1
  %i.ro = or disjoint i32 %i.re, %i.rf            ; 2 uses
  %i.rp = icmp samesign ult i32 %i.re, 260046848
  br i1 %i.rp, label %bb.bt, label %bb.bs, !prof !185

bb.bs:                                            ; preds = %bb.br
  %i.rq = or i32 %i.ro, 2139095040
  br label %half_to_float.exit.2

bb.bt:                                            ; preds = %bb.br
  %i.rr = add nuw nsw i32 %i.ro, 939524096
  br label %half_to_float.exit.2

half_to_float.exit.2:                             ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp
  %.sroa.0.0.i.i.2 = phi i32 [ %i.rr, %bb.bt ], [ %i.rq, %bb.bs ], [ %i.rn, %bb.bq ], [ %i.rf, %bb.bp ]
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pd
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i32 %.sroa.0.0.i.i.2, ptr %i.rt, align 4, !tbaa !182
  %i.ru = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %27
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !92
  %i.rw = zext i16 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.rw
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !92 ; 2 uses
  %i.rz = zext i16 %i.ry to i32
  %i.sa = shl nuw nsw i32 %i.rz, 13
  %i.sb = and i32 %i.sa, 268427264                ; 6 uses
  %.signext.i.i.3 = sext i16 %i.ry to i32
  %i.sc = and i32 %.signext.i.i.3, -2147483648    ; 3 uses
  %i.sd = icmp samesign ugt i32 %i.sb, 8388607
  br i1 %i.sd, label %bb.bw, label %bb.bu, !prof !185

bb.bu:                                            ; preds = %half_to_float.exit.2
  %.not.i.i153.3 = icmp eq i32 %i.sb, 0
  br i1 %.not.i.i153.3, label %half_to_float.exit.3, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.se = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sb, i1 true)
  %i.sf = add nsw i32 %i.se, -8                   ; 2 uses
  %i.sg = shl i32 %i.sb, %i.sf
  %i.sh = or i32 %i.sc, %i.sg
  %i.si = or i32 %i.sh, 947912704
  %i.sj = shl nuw nsw i32 %i.sf, 23
  %i.sk = sub nuw i32 %i.si, %i.sj
  br label %half_to_float.exit.3

bb.bw:                                            ; preds = %half_to_float.exit.2
  %i.sl = or disjoint i32 %i.sb, %i.sc            ; 2 uses
  %i.sm = icmp samesign ult i32 %i.sb, 260046848
  br i1 %i.sm, label %bb.by, label %bb.bx, !prof !185

bb.bx:                                            ; preds = %bb.bw
  %i.sn = or i32 %i.sl, 2139095040
  br label %half_to_float.exit.3

bb.by:                                            ; preds = %bb.bw
  %i.so = add nuw nsw i32 %i.sl, 939524096
  br label %half_to_float.exit.3

half_to_float.exit.3:                             ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bu
  %.sroa.0.0.i.i.3 = phi i32 [ %i.so, %bb.by ], [ %i.sn, %bb.bx ], [ %i.sk, %bb.bv ], [ %i.sc, %bb.bu ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pd
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 12
  store i32 %.sroa.0.0.i.i.3, ptr %i.sq, align 4, !tbaa !182
  %i.sr = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %i.hh
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !92
  %i.st = zext i16 %i.ss to i64
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.st
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !92 ; 2 uses
  %i.sw = zext i16 %i.sv to i32
  %i.sx = shl nuw nsw i32 %i.sw, 13
  %i.sy = and i32 %i.sx, 268427264                ; 6 uses
  %.signext.i.i.4 = sext i16 %i.sv to i32
  %i.sz = and i32 %.signext.i.i.4, -2147483648    ; 3 uses
  %i.ta = icmp samesign ugt i32 %i.sy, 8388607
  br i1 %i.ta, label %bb.cb, label %bb.bz, !prof !185

bb.bz:                                            ; preds = %half_to_float.exit.3
  %.not.i.i153.4 = icmp eq i32 %i.sy, 0
  br i1 %.not.i.i153.4, label %half_to_float.exit.4, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tb = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sy, i1 true)
  %i.tc = add nsw i32 %i.tb, -8                   ; 2 uses
  %i.td = shl i32 %i.sy, %i.tc
  %i.te = or i32 %i.sz, %i.td
  %i.tf = or i32 %i.te, 947912704
  %i.tg = shl nuw nsw i32 %i.tc, 23
  %i.th = sub nuw i32 %i.tf, %i.tg
  br label %half_to_float.exit.4

bb.cb:                                            ; preds = %half_to_float.exit.3
  %i.ti = or disjoint i32 %i.sy, %i.sz            ; 2 uses
  %i.tj = icmp samesign ult i32 %i.sy, 260046848
  br i1 %i.tj, label %bb.cd, label %bb.cc, !prof !185

bb.cc:                                            ; preds = %bb.cb
  %i.tk = or i32 %i.ti, 2139095040
  br label %half_to_float.exit.4

bb.cd:                                            ; preds = %bb.cb
  %i.tl = add nuw nsw i32 %i.ti, 939524096
  br label %half_to_float.exit.4

half_to_float.exit.4:                             ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.bz
  %.sroa.0.0.i.i.4 = phi i32 [ %i.tl, %bb.cd ], [ %i.tk, %bb.cc ], [ %i.th, %bb.ca ], [ %i.sz, %bb.bz ]
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pd
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  store i32 %.sroa.0.0.i.i.4, ptr %i.tn, align 4, !tbaa !182
  %i.to = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %i.hj
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !92
  %i.tq = zext i16 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.tq
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !92 ; 2 uses
  %i.tt = zext i16 %i.ts to i32
  %i.tu = shl nuw nsw i32 %i.tt, 13
  %i.tv = and i32 %i.tu, 268427264                ; 6 uses
  %.signext.i.i.5 = sext i16 %i.ts to i32
  %i.tw = and i32 %.signext.i.i.5, -2147483648    ; 3 uses
  %i.tx = icmp samesign ugt i32 %i.tv, 8388607
  br i1 %i.tx, label %bb.cg, label %bb.ce, !prof !185

bb.ce:                                            ; preds = %half_to_float.exit.4
  %.not.i.i153.5 = icmp eq i32 %i.tv, 0
  br i1 %.not.i.i153.5, label %half_to_float.exit.5, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ty = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.tv, i1 true)
  %i.tz = add nsw i32 %i.ty, -8                   ; 2 uses
  %i.ua = shl i32 %i.tv, %i.tz
  %i.ub = or i32 %i.tw, %i.ua
  %i.uc = or i32 %i.ub, 947912704
  %i.ud = shl nuw nsw i32 %i.tz, 23
  %i.ue = sub nuw i32 %i.uc, %i.ud
  br label %half_to_float.exit.5

bb.cg:                                            ; preds = %half_to_float.exit.4
  %i.uf = or disjoint i32 %i.tv, %i.tw            ; 2 uses
  %i.ug = icmp samesign ult i32 %i.tv, 260046848
  br i1 %i.ug, label %bb.ci, label %bb.ch, !prof !185

bb.ch:                                            ; preds = %bb.cg
  %i.uh = or i32 %i.uf, 2139095040
  br label %half_to_float.exit.5

bb.ci:                                            ; preds = %bb.cg
  %i.ui = add nuw nsw i32 %i.uf, 939524096
  br label %half_to_float.exit.5

half_to_float.exit.5:                             ; preds = %bb.ci, %bb.ch, %bb.cf, %bb.ce
  %.sroa.0.0.i.i.5 = phi i32 [ %i.ui, %bb.ci ], [ %i.uh, %bb.ch ], [ %i.ue, %bb.cf ], [ %i.tw, %bb.ce ]
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pd
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  store i32 %.sroa.0.0.i.i.5, ptr %i.uk, align 4, !tbaa !182
  %i.ul = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %i.hl
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !92
  %i.un = zext i16 %i.um to i64
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.un
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !92 ; 2 uses
  %i.uq = zext i16 %i.up to i32
  %i.ur = shl nuw nsw i32 %i.uq, 13
  %i.us = and i32 %i.ur, 268427264                ; 6 uses
  %.signext.i.i.6 = sext i16 %i.up to i32
  %i.ut = and i32 %.signext.i.i.6, -2147483648    ; 3 uses
  %i.uu = icmp samesign ugt i32 %i.us, 8388607
  br i1 %i.uu, label %bb.cl, label %bb.cj, !prof !185

bb.cj:                                            ; preds = %half_to_float.exit.5
  %.not.i.i153.6 = icmp eq i32 %i.us, 0
  br i1 %.not.i.i153.6, label %half_to_float.exit.6, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.uv = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.us, i1 true)
  %i.uw = add nsw i32 %i.uv, -8                   ; 2 uses
  %i.ux = shl i32 %i.us, %i.uw
end_hunk_0
