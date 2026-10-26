Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86_avx512?download=true
inline.NumInlined: 683
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %broadcast.splat578 = shufflevector <1 x i32> %i.as, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.at = sitofp fast <16 x i32> %broadcast.splat578 to <16 x float>
  br label %vector.body583

vector.body583:                                   ; preds = %vector.ph573, %vector.body583
  %index584 = phi i64 [ 0, %vector.ph573 ], [ %index.next598, %vector.body583 ] ; 3 uses
  %i.au = mul i64 %index584, 24
  %next.gep585 = getelementptr i8, ptr %.1.lcssa, i64 %i.au
  %i.av = shl i64 %index584, 3
  %next.gep586 = getelementptr i8, ptr %.0249.lcssa, i64 %i.av
  %wide.vec = load <32 x float>, ptr %next.gep586, align 4, !tbaa !40, !alias.scope !96 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec587 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.aw = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.ax = fadd fast <16 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fmul fast <16 x float> %i.ax, %i.ar
  %i.az = fadd fast <16 x float> %i.ay, splat (float -5.000000e-01) ; 2 uses
  %i.ba = fmul fast <16 x float> %strided.vec587, splat (float 5.000000e-01)
  %i.bb = fadd fast <16 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fmul fast <16 x float> %i.bb, %i.at
  %i.bd = fadd fast <16 x float> %i.bc, splat (float -5.000000e-01) ; 2 uses
  %i.be = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.az)
  %i.bf = fptosi <16 x float> %i.be to <16 x i32> ; 7 uses
  %i.bg = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bd)
  %i.bh = fptosi <16 x float> %i.bg to <16 x i32> ; 7 uses
  %i.bi = add nsw <16 x i32> %i.bf, splat (i32 1) ; 3 uses
  %i.bj = add nsw <16 x i32> %i.bh, splat (i32 1) ; 2 uses
  %i.bk = icmp sgt <16 x i32> %i.bf, splat (i32 -1)
  %i.bl = icmp sgt <16 x i32> %broadcast.splat576, %i.bf
  %i.bm = and <16 x i1> %i.bk, %i.bl              ; 2 uses
  %i.bn = icmp sgt <16 x i32> %i.bf, splat (i32 -2)
  %i.bo = icmp slt <16 x i32> %i.bi, %broadcast.splat576
  %i.bp = and <16 x i1> %i.bn, %i.bo              ; 2 uses
  %i.bq = icmp sgt <16 x i32> %i.bh, splat (i32 -1)
  %i.br = icmp sgt <16 x i32> %broadcast.splat578, %i.bh
  %i.bs = and <16 x i1> %i.bq, %i.br              ; 2 uses
  %i.bt = icmp sgt <16 x i32> %i.bh, splat (i32 -2)
  %i.bu = icmp slt <16 x i32> %i.bj, %broadcast.splat578
  %i.bv = and <16 x i1> %i.bt, %i.bu              ; 2 uses
  %i.bw = and <16 x i1> %i.bm, %i.bs              ; 2 uses
  %i.bx = and <16 x i1> %i.bp, %i.bs              ; 2 uses
  %i.by = and <16 x i1> %i.bm, %i.bv              ; 2 uses
  %i.bz = and <16 x i1> %i.bp, %i.bv              ; 2 uses
  %i.ca = mul nuw nsw <16 x i32> %broadcast.splat576, %i.bh
  %i.cb = add nsw <16 x i32> %i.ca, %i.bf
  %wide.masked.gather588 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.bw, <16 x i32> poison), !tbaa !16, !alias.scope !97
  %i.cc = mul nsw <16 x i32> %wide.masked.gather588, %i.cb
  %i.cd = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat646 = shufflevector <1 x i32> %i.cd, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ce = mul nsw <16 x i32> %broadcast.splat646, %i.bh
  %i.cf = add nsw <16 x i32> %i.ce, %i.bi
  %wide.masked.gather591 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.bx, <16 x i32> poison), !tbaa !16, !alias.scope !97
  %i.cg = mul nsw <16 x i32> %i.cf, %wide.masked.gather591
  %i.ch = mul nsw <16 x i32> %broadcast.splat646, %i.bj ; 2 uses
  %i.ci = add nsw <16 x i32> %i.ch, %i.bf
  %wide.masked.gather593 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.by, <16 x i32> poison), !tbaa !16, !alias.scope !97
  %i.cj = mul nsw <16 x i32> %i.ci, %wide.masked.gather593
  %i.ck = add nsw <16 x i32> %i.ch, %i.bi
  %wide.masked.gather595 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.bz, <16 x i32> poison), !tbaa !16, !alias.scope !97
  %i.cl = mul nsw <16 x i32> %i.ck, %wide.masked.gather595
  %i.cm = sitofp fast <16 x i32> %i.bf to <16 x float>
  %i.cn = fsub fast <16 x float> %i.az, %i.cm
  %i.co = sitofp fast <16 x i32> %i.bh to <16 x float>
  %i.cp = fsub fast <16 x float> %i.bd, %i.co
  %i.cq = bitcast <16 x i32> %i.cc to <16 x float>
  %i.cr = select <16 x i1> %i.bw, <16 x float> %i.cq, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cs = bitcast <16 x i32> %i.cg to <16 x float>
  %i.ct = select <16 x i1> %i.bx, <16 x float> %i.cs, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cu = bitcast <16 x i32> %i.cj to <16 x float>
  %i.cv = select <16 x i1> %i.by, <16 x float> %i.cu, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cw = bitcast <16 x i32> %i.cl to <16 x float>
  %i.cx = select <16 x i1> %i.bz, <16 x float> %i.cw, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cy = shufflevector <16 x float> %i.cr, <16 x float> %i.ct, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cz = shufflevector <16 x float> %i.cv, <16 x float> %i.cx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.da = shufflevector <32 x float> %i.cy, <32 x float> %i.cz, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.db = shufflevector <16 x float> %i.cn, <16 x float> %i.cp, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec597 = shufflevector <64 x float> %i.da, <64 x float> %i.db, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x float> %interleaved.vec597, ptr %next.gep585, align 4, !tbaa !41, !alias.scope !98, !noalias !99
  %index.next598 = add nuw i64 %index584, 16      ; 2 uses
  %i.dc = icmp eq i64 %index.next598, %n.vec574
  br i1 %i.dc, label %middle.block599, label %vector.body583, !llvm.loop !76

middle.block599:                                  ; preds = %vector.body583
  %cmp.n600 = icmp eq i64 %n.vec574, %i.ab
  br i1 %cmp.n600, label %._crit_edge, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block599
  %min.epilog.iters.check604 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check604, label %.lr.ph449.preheader, label %vec.epilog.ph605, !prof !45

vec.epilog.ph605:                                 ; preds = %vector.main.loop.iter.check571, %vec.epilog.iter.check602
  %vec.epilog.resume.val606 = phi i64 [ %n.vec574, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check571 ]
  %n.vec607 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.dd = mul nuw nsw i64 %n.vec607, 24
  %i.de = getelementptr i8, ptr %.1.lcssa, i64 %i.dd ; 2 uses
  %i.df = shl nuw nsw i64 %n.vec607, 3
  %i.dg = getelementptr i8, ptr %.0249.lcssa, i64 %i.df
  %i.dh = trunc nuw i64 %n.vec607 to i32
  %i.di = shl i32 %i.dh, 1
  %i.dj = add i32 %.0251.lcssa, %i.di
  %i.dk = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat609 = shufflevector <1 x i32> %i.dk, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dl = sitofp fast <4 x i32> %broadcast.splat609 to <4 x float>
  %i.dm = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat611 = shufflevector <1 x i32> %i.dm, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dn = sitofp fast <4 x i32> %broadcast.splat611 to <4 x float>
  br label %vec.epilog.vector.body616

vec.epilog.vector.body616:                        ; preds = %vec.epilog.vector.body616, %vec.epilog.ph605
  %index617 = phi i64 [ %vec.epilog.resume.val606, %vec.epilog.ph605 ], [ %index.next633, %vec.epilog.vector.body616 ] ; 3 uses
  %i.do = mul i64 %index617, 24
  %next.gep618 = getelementptr i8, ptr %.1.lcssa, i64 %i.do
  %i.dp = shl i64 %index617, 3
  %next.gep619 = getelementptr i8, ptr %.0249.lcssa, i64 %i.dp
  %wide.vec620 = load <8 x float>, ptr %next.gep619, align 4, !tbaa !40, !alias.scope !96 ; 2 uses
  %strided.vec621 = shufflevector <8 x float> %wide.vec620, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec622 = shufflevector <8 x float> %wide.vec620, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dq = fmul fast <4 x float> %strided.vec621, splat (float 5.000000e-01)
  %i.dr = fadd fast <4 x float> %i.dq, splat (float 5.000000e-01)
  %i.ds = fmul fast <4 x float> %i.dr, %i.dl
  %i.dt = fadd fast <4 x float> %i.ds, splat (float -5.000000e-01) ; 2 uses
  %i.du = fmul fast <4 x float> %strided.vec622, splat (float 5.000000e-01)
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fmul fast <4 x float> %i.dv, %i.dn
  %i.dx = fadd fast <4 x float> %i.dw, splat (float -5.000000e-01) ; 2 uses
  %i.dy = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.dt)
  %i.dz = fptosi <4 x float> %i.dy to <4 x i32>   ; 7 uses
  %i.ea = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.dx)
  %i.eb = fptosi <4 x float> %i.ea to <4 x i32>   ; 7 uses
  %i.ec = add nsw <4 x i32> %i.dz, splat (i32 1)  ; 3 uses
  %i.ed = add nsw <4 x i32> %i.eb, splat (i32 1)  ; 2 uses
  %i.ee = icmp sgt <4 x i32> %i.dz, splat (i32 -1)
  %i.ef = icmp sgt <4 x i32> %broadcast.splat609, %i.dz
  %i.eg = and <4 x i1> %i.ee, %i.ef               ; 2 uses
  %i.eh = icmp sgt <4 x i32> %i.dz, splat (i32 -2)
  %i.ei = icmp slt <4 x i32> %i.ec, %broadcast.splat609
  %i.ej = and <4 x i1> %i.eh, %i.ei               ; 2 uses
  %i.ek = icmp sgt <4 x i32> %i.eb, splat (i32 -1)
  %i.el = icmp sgt <4 x i32> %broadcast.splat611, %i.eb
  %i.em = and <4 x i1> %i.ek, %i.el               ; 2 uses
  %i.en = icmp sgt <4 x i32> %i.eb, splat (i32 -2)
  %i.eo = icmp slt <4 x i32> %i.ed, %broadcast.splat611
  %i.ep = and <4 x i1> %i.en, %i.eo               ; 2 uses
  %i.eq = and <4 x i1> %i.eg, %i.em               ; 2 uses
  %i.er = and <4 x i1> %i.ej, %i.em               ; 2 uses
  %i.es = and <4 x i1> %i.eg, %i.ep               ; 2 uses
  %i.et = and <4 x i1> %i.ej, %i.ep               ; 2 uses
  %i.eu = mul nuw nsw <4 x i32> %broadcast.splat609, %i.eb
  %i.ev = add nsw <4 x i32> %i.eu, %i.dz
  %wide.masked.gather623 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.eq, <4 x i32> poison), !tbaa !16, !alias.scope !97
  %i.ew = mul nsw <4 x i32> %wide.masked.gather623, %i.ev
  %i.ex = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat649 = shufflevector <1 x i32> %i.ex, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ey = mul nsw <4 x i32> %broadcast.splat649, %i.eb
  %i.ez = add nsw <4 x i32> %i.ey, %i.ec
  %wide.masked.gather626 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.er, <4 x i32> poison), !tbaa !16, !alias.scope !97
  %i.fa = mul nsw <4 x i32> %i.ez, %wide.masked.gather626
  %i.fb = mul nsw <4 x i32> %broadcast.splat649, %i.ed ; 2 uses
  %i.fc = add nsw <4 x i32> %i.fb, %i.dz
  %wide.masked.gather628 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.es, <4 x i32> poison), !tbaa !16, !alias.scope !97
  %i.fd = mul nsw <4 x i32> %i.fc, %wide.masked.gather628
  %i.fe = add nsw <4 x i32> %i.fb, %i.ec
  %wide.masked.gather630 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.et, <4 x i32> poison), !tbaa !16, !alias.scope !97
  %i.ff = mul nsw <4 x i32> %i.fe, %wide.masked.gather630
  %i.fg = sitofp fast <4 x i32> %i.dz to <4 x float>
  %i.fh = fsub fast <4 x float> %i.dt, %i.fg
  %i.fi = sitofp fast <4 x i32> %i.eb to <4 x float>
  %i.fj = fsub fast <4 x float> %i.dx, %i.fi
  %i.fk = shufflevector <4 x i1> %i.eq, <4 x i1> %i.er, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fl = shufflevector <4 x i32> %i.ew, <4 x i32> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fm = shufflevector <4 x i1> %i.es, <4 x i1> %i.et, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fn = shufflevector <4 x i32> %i.fd, <4 x i32> %i.ff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fo = shufflevector <8 x i1> %i.fk, <8 x i1> %i.fm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fp = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fq = bitcast <16 x i32> %i.fp to <16 x float>
  %i.fr = select <16 x i1> %i.fo, <16 x float> %i.fq, <16 x float> splat (float -nan(0x3FFFFF))
  %i.fs = shufflevector <4 x float> %i.fh, <4 x float> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec632 = shufflevector <16 x float> %i.fr, <16 x float> %i.fs, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec632, ptr %next.gep618, align 4, !tbaa !41, !alias.scope !98, !noalias !99
  %index.next633 = add nuw i64 %index617, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next633, %n.vec607
  br i1 %i.ft, label %vec.epilog.middle.block634, label %vec.epilog.vector.body616, !llvm.loop !77

vec.epilog.middle.block634:                       ; preds = %vec.epilog.vector.body616
  %cmp.n635 = icmp eq i64 %n.vec607, %i.ab
  br i1 %cmp.n635, label %._crit_edge, label %.lr.ph449.preheader

.lr.ph449.preheader:                              ; preds = %iter.check601, %vector.memcheck558, %vec.epilog.iter.check602, %vec.epilog.middle.block634
  %.2448.ph = phi ptr [ %.1.lcssa, %iter.check601 ], [ %.1.lcssa, %vector.memcheck558 ], [ %i.ak, %vec.epilog.iter.check602 ], [ %i.de, %vec.epilog.middle.block634 ]
  %.1250447.ph = phi ptr [ %.0249.lcssa, %iter.check601 ], [ %.0249.lcssa, %vector.memcheck558 ], [ %i.am, %vec.epilog.iter.check602 ], [ %i.dg, %vec.epilog.middle.block634 ]
  %.1252446.ph = phi i32 [ %.0251.lcssa, %iter.check601 ], [ %.0251.lcssa, %vector.memcheck558 ], [ %i.ap, %vec.epilog.iter.check602 ], [ %i.dj, %vec.epilog.middle.block634 ]
  br label %.lr.ph449

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.je, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.jd, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.jf, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.fu = load <8 x float>, ptr %.0249440, align 1, !tbaa !41 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.fw = load <8 x float>, ptr %i.fv, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.fu, <8 x float> %i.fw, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.fu, <8 x float> %i.fw, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fx = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = insertelement <8 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.gb = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.gc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gb, <8 x float> nofpclass(nan inf) %i.ga, <8 x float> splat (float -1.000000e+00))
  %i.gd = fmul fast <8 x float> %i.gc, splat (float 5.000000e-01) ; 2 uses
  %i.ge = load i32, ptr %i.o, align 8, !tbaa !38
  %i.gf = sitofp fast i32 %i.ge to float
  %i.gg = insertelement <8 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <8 x float> %i.gg, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.gi = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.gj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> nofpclass(nan inf) %i.gh, <8 x float> splat (float -1.000000e+00))
  %i.gk = fmul fast <8 x float> %i.gj, splat (float 5.000000e-01) ; 2 uses
  %i.gl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gd, i32 1) ; 5 uses
  %i.gm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gk, i32 1) ; 5 uses
  %i.gn = fadd fast <8 x float> %i.gl, splat (float 1.000000e+00) ; 2 uses
  %i.go = fadd fast <8 x float> %i.gm, splat (float 1.000000e+00) ; 2 uses
  %i.gp = fcmp fast ogt <8 x float> %i.gl, splat (float -1.000000e+00)
  %i.gq = fcmp fast ogt <8 x float> %i.ga, %i.gl
  %i.gr = and <8 x i1> %i.gp, %i.gq               ; 2 uses
  %i.gs = fcmp fast ogt <8 x float> %i.gn, splat (float -1.000000e+00)
  %i.gt = fcmp fast ogt <8 x float> %i.ga, %i.gn
  %i.gu = and <8 x i1> %i.gs, %i.gt               ; 2 uses
  %i.gv = fcmp fast ogt <8 x float> %i.gm, splat (float -1.000000e+00)
  %i.gw = fcmp fast ogt <8 x float> %i.gh, %i.gm
  %i.gx = and <8 x i1> %i.gv, %i.gw
  %i.gy = sext <8 x i1> %i.gx to <8 x i32>
  %i.gz = fcmp fast ogt <8 x float> %i.go, splat (float -1.000000e+00)
  %i.ha = fcmp fast ogt <8 x float> %i.gh, %i.go
  %i.hb = and <8 x i1> %i.gz, %i.ha               ; 2 uses
  %i.hc = bitcast <8 x i32> %i.gy to <8 x float>  ; 2 uses
  %i.hd = select <8 x i1> %i.gr, <8 x float> %i.hc, <8 x float> zeroinitializer
  %i.he = select <8 x i1> %i.gu, <8 x float> %i.hc, <8 x float> zeroinitializer
  %i.hf = and <8 x i1> %i.gr, %i.hb
  %i.hg = and <8 x i1> %i.gu, %i.hb
  %i.hh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gm, <8 x float> nofpclass(nan inf) %i.ga, <8 x float> nofpclass(nan inf) %i.gl)
  %i.hi = load i32, ptr %i.p, align 8, !tbaa !16
  %i.hj = sitofp fast i32 %i.hi to float
  %i.hk = insertelement <8 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.hm = fmul fast <8 x float> %i.hl, %i.hh      ; 3 uses
  %i.hn = fadd fast <8 x float> %i.hm, %i.hl
  %i.ho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ga, <8 x float> nofpclass(nan inf) %i.hl, <8 x float> nofpclass(nan inf) %i.hm) ; 2 uses
  %i.hp = fadd fast <8 x float> %i.ho, %i.hl
  %i.hq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.hm, <8 x float> nofpclass(nan inf) %i.hd)
  %i.hr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.hn, <8 x float> nofpclass(nan inf) %i.he)
  %i.hs = select <8 x i1> %i.hf, <8 x float> %i.ho, <8 x float> splat (float -1.000000e+00)
  %i.ht = select <8 x i1> %i.hg, <8 x float> %i.hp, <8 x float> splat (float -1.000000e+00)
  %i.hu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hq) ; 2 uses
  %i.hv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hr) ; 2 uses
  %i.hw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hs) ; 2 uses
  %i.hx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ht) ; 2 uses
  %i.hy = fsub fast <8 x float> %i.gd, %i.gl      ; 2 uses
  %i.hz = fsub fast <8 x float> %i.gk, %i.gm      ; 2 uses
  %i.ia = shufflevector <8 x i32> %i.hu, <8 x i32> %i.hv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ib = bitcast <8 x i32> %i.ia to <8 x float>
  %i.ic = shufflevector <8 x i32> %i.hu, <8 x i32> %i.hv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.id = bitcast <8 x i32> %i.ic to <8 x float>
  %i.ie = shufflevector <8 x i32> %i.hw, <8 x i32> %i.hx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.if = bitcast <8 x i32> %i.ie to <8 x float>
  %i.ig = shufflevector <8 x i32> %i.hw, <8 x i32> %i.hx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ih = bitcast <8 x i32> %i.ig to <8 x float>
  %i.ii = shufflevector <8 x float> %i.hy, <8 x float> %i.hz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ij = shufflevector <8 x float> %i.hy, <8 x float> %i.hz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ik = shufflevector <8 x i32> %i.ia, <8 x i32> %i.ie, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.il = bitcast <8 x i32> %i.ik to <8 x float>  ; 2 uses
  %i.im = shufflevector <8 x float> %i.ii, <8 x float> %i.ib, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.in = shufflevector <8 x float> %i.if, <8 x float> %i.ii, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.io = shufflevector <8 x i32> %i.ic, <8 x i32> %i.ig, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ip = bitcast <8 x i32> %i.io to <8 x float>  ; 2 uses
  %i.iq = shufflevector <8 x float> %i.ij, <8 x float> %i.id, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ir = shufflevector <8 x float> %i.ih, <8 x float> %i.ij, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.is = shufflevector <8 x float> %i.il, <8 x float> %i.im, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.it = shufflevector <8 x float> %i.in, <8 x float> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.iu = shufflevector <8 x float> %i.iq, <8 x float> %i.ir, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.iv = shufflevector <8 x float> %i.il, <8 x float> %i.im, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.iw = shufflevector <8 x float> %i.in, <8 x float> %i.ip, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ix = shufflevector <8 x float> %i.iq, <8 x float> %i.ir, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.is, ptr %.1441, align 1, !tbaa !41
  %i.iy = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.it, ptr %i.iy, align 1, !tbaa !41
  %i.iz = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.iu, ptr %i.iz, align 1, !tbaa !41
  %i.ja = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.iv, ptr %i.ja, align 1, !tbaa !41
  %i.jb = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.iw, ptr %i.jb, align 1, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.ix, ptr %i.jc, align 1, !tbaa !41
  %i.jd = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.jf = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.jg = or disjoint i32 %i.jf, 15
  %i.jh = icmp slt i32 %i.jg, %i.e
  br i1 %i.jh, label %.lr.ph442, label %.preheader, !llvm.loop !78

.lr.ph449:                                        ; preds = %.lr.ph449.preheader, %bb.h
  %.2448 = phi ptr [ %i.lq, %bb.h ], [ %.2448.ph, %.lr.ph449.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.lp, %bb.h ], [ %.1250447.ph, %.lr.ph449.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.lr, %bb.h ], [ %.1252446.ph, %.lr.ph449.preheader ]
  %i.ji = load <2 x float>, ptr %.1250447, align 4, !tbaa !40
  %i.jj = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.jk = sitofp <2 x i32> %i.jj to <2 x float>
  %i.jl = fmul fast <2 x float> %i.ji, splat (float 5.000000e-01)
  %i.jm = fadd fast <2 x float> %i.jl, splat (float 5.000000e-01)
  %i.jn = fmul fast <2 x float> %i.jm, %i.jk
  %i.jo = fadd fast <2 x float> %i.jn, splat (float -5.000000e-01) ; 2 uses
  %i.jp = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.jo)
  %i.jq = fptosi <2 x float> %i.jp to <2 x i32>   ; 5 uses
  %i.jr = extractelement <2 x i32> %i.jq, i64 0   ; 4 uses
  %i.js = add nsw i32 %i.jr, 1                    ; 3 uses
  %i.jt = extractelement <2 x i32> %i.jq, i64 1   ; 4 uses
  %i.ju = add nsw i32 %i.jt, 1                    ; 3 uses
  %i.jv = icmp sgt i32 %i.jr, -2
  %i.jw = extractelement <2 x i32> %i.jj, i64 0   ; 2 uses
  %i.jx = icmp slt i32 %i.js, %i.jw
  %i.jy = and i1 %i.jv, %i.jx                     ; 2 uses
  %i.jz = icmp sgt <2 x i32> %i.jq, splat (i32 -1)
  %i.ka = icmp sgt <2 x i32> %i.jj, %i.jq
  %i.kb = and <2 x i1> %i.jz, %i.ka               ; 2 uses
  %i.kc = icmp sgt i32 %i.jt, -2
  %i.kd = extractelement <2 x i32> %i.jj, i64 1
  %i.ke = icmp slt i32 %i.ju, %i.kd
  %i.kf = and i1 %i.kc, %i.ke                     ; 2 uses
  %i.kg = extractelement <2 x i1> %i.kb, i64 0    ; 2 uses
  %i.kh = extractelement <2 x i1> %i.kb, i64 1    ; 2 uses
  %i.ki = and i1 %i.kg, %i.kh
  %i.kj = and i1 %i.jy, %i.kh
  %i.kk = and i1 %i.kg, %i.kf
  %i.kl = and i1 %i.jy, %i.kf
  %i.km = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.ki, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.kn = mul nuw nsw i32 %i.jw, %i.jt
  %i.ko = add nsw i32 %i.kn, %i.jr
  %i.kp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.kq = mul nsw i32 %i.kp, %i.ko
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.kr = phi i32 [ %i.kq, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.kr, ptr %.2448, align 4, !tbaa !23
  br i1 %i.kj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ks = load i32, ptr %i.n, align 4, !tbaa !37
  %i.kt = mul nsw i32 %i.ks, %i.jt
  %i.ku = add nsw i32 %i.kt, %i.js
  %i.kv = load i32, ptr %i.p, align 8, !tbaa !16
  %i.kw = mul nsw i32 %i.ku, %i.kv
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.kx = phi i32 [ %i.kw, %bb.c ], [ -1, %bb.b ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !23
  br i1 %i.kk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.kz = load i32, ptr %i.n, align 4, !tbaa !37
  %i.la = mul nsw i32 %i.kz, %i.ju
  %i.lb = add nsw i32 %i.la, %i.jr
  %i.lc = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ld = mul nsw i32 %i.lb, %i.lc
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.le = phi i32 [ %i.ld, %bb.e ], [ -1, %bb.d ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !23
  br i1 %i.kl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.lg = load i32, ptr %i.n, align 4, !tbaa !37
  %i.lh = mul nsw i32 %i.lg, %i.ju
  %i.li = add nsw i32 %i.lh, %i.js
  %i.lj = load i32, ptr %i.p, align 8, !tbaa !16
  %i.lk = mul nsw i32 %i.li, %i.lj
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ll = phi i32 [ %i.lk, %bb.g ], [ -1, %bb.f ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !23
  %i.ln = sitofp <2 x i32> %i.jq to <2 x float>
  %i.lo = fsub fast <2 x float> %i.jo, %i.ln
  store <2 x float> %i.lo, ptr %i.km, align 4, !tbaa !40
  %i.lp = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.lr = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.ls = icmp slt i32 %i.lr, %i.e
  br i1 %i.ls, label %.lr.ph449, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.h, %middle.block599, %vec.epilog.middle.block634, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.de, %vec.epilog.middle.block634 ], [ %i.ak, %middle.block599 ], [ %i.lq, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lt = load i32, ptr %i.h, align 8, !tbaa !17
  %i.lu = sext i32 %i.lt to i64
  %i.lv = icmp slt i64 %indvars.iv.next, %i.lu
  br i1 %i.lv, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !80

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.lw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !100 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !19, !noalias !101
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !18, !noalias !101
  %i.mb = mul i64 %i.ma, %i.lz
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mb ; 2 uses
  %i.md = icmp sgt i32 %i.e, 7
end_hunk_0
begin_hunk_1_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.at = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat578 = shufflevector <1 x i32> %i.at, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.au = add nsw <16 x i32> %broadcast.splat578, splat (i32 -1)
  %i.av = sitofp fast <16 x i32> %i.au to <16 x float>
  br label %vector.body583

vector.body583:                                   ; preds = %vector.ph573, %vector.body583
  %index584 = phi i64 [ 0, %vector.ph573 ], [ %index.next598, %vector.body583 ] ; 3 uses
  %i.aw = mul i64 %index584, 24
  %next.gep585 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw
  %i.ax = shl i64 %index584, 3
  %next.gep586 = getelementptr i8, ptr %.0249.lcssa, i64 %i.ax
  %wide.vec = load <32 x float>, ptr %next.gep586, align 4, !tbaa !40, !alias.scope !135 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec587 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ay = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.az = fadd fast <16 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <16 x float> %i.az, %i.as     ; 2 uses
  %i.bb = fmul fast <16 x float> %strided.vec587, splat (float 5.000000e-01)
  %i.bc = fadd fast <16 x float> %i.bb, splat (float 5.000000e-01)
  %i.bd = fmul fast <16 x float> %i.bc, %i.av     ; 2 uses
  %i.be = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.ba)
  %i.bf = fptosi <16 x float> %i.be to <16 x i32> ; 7 uses
  %i.bg = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bd)
  %i.bh = fptosi <16 x float> %i.bg to <16 x i32> ; 7 uses
  %i.bi = add nsw <16 x i32> %i.bf, splat (i32 1) ; 3 uses
  %i.bj = add nsw <16 x i32> %i.bh, splat (i32 1) ; 2 uses
  %i.bk = icmp sgt <16 x i32> %i.bf, splat (i32 -1)
  %i.bl = icmp sgt <16 x i32> %broadcast.splat576, %i.bf
  %i.bm = and <16 x i1> %i.bk, %i.bl              ; 2 uses
  %i.bn = icmp sgt <16 x i32> %i.bf, splat (i32 -2)
  %i.bo = icmp slt <16 x i32> %i.bi, %broadcast.splat576
  %i.bp = and <16 x i1> %i.bn, %i.bo              ; 2 uses
  %i.bq = icmp sgt <16 x i32> %i.bh, splat (i32 -1)
  %i.br = icmp sgt <16 x i32> %broadcast.splat578, %i.bh
  %i.bs = and <16 x i1> %i.bq, %i.br              ; 2 uses
  %i.bt = icmp sgt <16 x i32> %i.bh, splat (i32 -2)
  %i.bu = icmp slt <16 x i32> %i.bj, %broadcast.splat578
  %i.bv = and <16 x i1> %i.bt, %i.bu              ; 2 uses
  %i.bw = and <16 x i1> %i.bm, %i.bs              ; 2 uses
  %i.bx = and <16 x i1> %i.bp, %i.bs              ; 2 uses
  %i.by = and <16 x i1> %i.bm, %i.bv              ; 2 uses
  %i.bz = and <16 x i1> %i.bp, %i.bv              ; 2 uses
  %i.ca = mul nuw nsw <16 x i32> %broadcast.splat576, %i.bh
  %i.cb = add nsw <16 x i32> %i.ca, %i.bf
  %wide.masked.gather588 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.bw, <16 x i32> poison), !tbaa !16, !alias.scope !136
  %i.cc = mul nsw <16 x i32> %wide.masked.gather588, %i.cb
  %i.cd = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat646 = shufflevector <1 x i32> %i.cd, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ce = mul nsw <16 x i32> %broadcast.splat646, %i.bh
  %i.cf = add nsw <16 x i32> %i.ce, %i.bi
  %wide.masked.gather591 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.bx, <16 x i32> poison), !tbaa !16, !alias.scope !136
  %i.cg = mul nsw <16 x i32> %i.cf, %wide.masked.gather591
  %i.ch = mul nsw <16 x i32> %broadcast.splat646, %i.bj ; 2 uses
  %i.ci = add nsw <16 x i32> %i.ch, %i.bf
  %wide.masked.gather593 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.by, <16 x i32> poison), !tbaa !16, !alias.scope !136
  %i.cj = mul nsw <16 x i32> %i.ci, %wide.masked.gather593
  %i.ck = add nsw <16 x i32> %i.ch, %i.bi
  %wide.masked.gather595 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat582, <16 x i1> %i.bz, <16 x i32> poison), !tbaa !16, !alias.scope !136
  %i.cl = mul nsw <16 x i32> %i.ck, %wide.masked.gather595
  %i.cm = sitofp fast <16 x i32> %i.bf to <16 x float>
  %i.cn = fsub fast <16 x float> %i.ba, %i.cm
  %i.co = sitofp fast <16 x i32> %i.bh to <16 x float>
  %i.cp = fsub fast <16 x float> %i.bd, %i.co
  %i.cq = bitcast <16 x i32> %i.cc to <16 x float>
  %i.cr = select <16 x i1> %i.bw, <16 x float> %i.cq, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cs = bitcast <16 x i32> %i.cg to <16 x float>
  %i.ct = select <16 x i1> %i.bx, <16 x float> %i.cs, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cu = bitcast <16 x i32> %i.cj to <16 x float>
  %i.cv = select <16 x i1> %i.by, <16 x float> %i.cu, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cw = bitcast <16 x i32> %i.cl to <16 x float>
  %i.cx = select <16 x i1> %i.bz, <16 x float> %i.cw, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cy = shufflevector <16 x float> %i.cr, <16 x float> %i.ct, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cz = shufflevector <16 x float> %i.cv, <16 x float> %i.cx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.da = shufflevector <32 x float> %i.cy, <32 x float> %i.cz, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.db = shufflevector <16 x float> %i.cn, <16 x float> %i.cp, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec597 = shufflevector <64 x float> %i.da, <64 x float> %i.db, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x float> %interleaved.vec597, ptr %next.gep585, align 4, !tbaa !41, !alias.scope !137, !noalias !138
  %index.next598 = add nuw i64 %index584, 16      ; 2 uses
  %i.dc = icmp eq i64 %index.next598, %n.vec574
  br i1 %i.dc, label %middle.block599, label %vector.body583, !llvm.loop !115

middle.block599:                                  ; preds = %vector.body583
  %cmp.n600 = icmp eq i64 %n.vec574, %i.ab
  br i1 %cmp.n600, label %._crit_edge, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block599
  %min.epilog.iters.check604 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check604, label %.lr.ph449.preheader, label %vec.epilog.ph605, !prof !45

vec.epilog.ph605:                                 ; preds = %vector.main.loop.iter.check571, %vec.epilog.iter.check602
  %vec.epilog.resume.val606 = phi i64 [ %n.vec574, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check571 ]
  %n.vec607 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.dd = mul nuw nsw i64 %n.vec607, 24
  %i.de = getelementptr i8, ptr %.1.lcssa, i64 %i.dd ; 2 uses
  %i.df = shl nuw nsw i64 %n.vec607, 3
  %i.dg = getelementptr i8, ptr %.0249.lcssa, i64 %i.df
  %i.dh = trunc nuw i64 %n.vec607 to i32
  %i.di = shl i32 %i.dh, 1
  %i.dj = add i32 %.0251.lcssa, %i.di
  %i.dk = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat609 = shufflevector <1 x i32> %i.dk, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dl = add nsw <4 x i32> %broadcast.splat609, splat (i32 -1)
  %i.dm = sitofp fast <4 x i32> %i.dl to <4 x float>
  %i.dn = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat611 = shufflevector <1 x i32> %i.dn, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.do = add nsw <4 x i32> %broadcast.splat611, splat (i32 -1)
  %i.dp = sitofp fast <4 x i32> %i.do to <4 x float>
  br label %vec.epilog.vector.body616

vec.epilog.vector.body616:                        ; preds = %vec.epilog.vector.body616, %vec.epilog.ph605
  %index617 = phi i64 [ %vec.epilog.resume.val606, %vec.epilog.ph605 ], [ %index.next633, %vec.epilog.vector.body616 ] ; 3 uses
  %i.dq = mul i64 %index617, 24
  %next.gep618 = getelementptr i8, ptr %.1.lcssa, i64 %i.dq
  %i.dr = shl i64 %index617, 3
  %next.gep619 = getelementptr i8, ptr %.0249.lcssa, i64 %i.dr
  %wide.vec620 = load <8 x float>, ptr %next.gep619, align 4, !tbaa !40, !alias.scope !135 ; 2 uses
  %strided.vec621 = shufflevector <8 x float> %wide.vec620, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec622 = shufflevector <8 x float> %wide.vec620, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ds = fmul fast <4 x float> %strided.vec621, splat (float 5.000000e-01)
  %i.dt = fadd fast <4 x float> %i.ds, splat (float 5.000000e-01)
  %i.du = fmul fast <4 x float> %i.dt, %i.dm      ; 2 uses
  %i.dv = fmul fast <4 x float> %strided.vec622, splat (float 5.000000e-01)
  %i.dw = fadd fast <4 x float> %i.dv, splat (float 5.000000e-01)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dp      ; 2 uses
  %i.dy = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.du)
  %i.dz = fptosi <4 x float> %i.dy to <4 x i32>   ; 7 uses
  %i.ea = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.dx)
  %i.eb = fptosi <4 x float> %i.ea to <4 x i32>   ; 7 uses
  %i.ec = add nsw <4 x i32> %i.dz, splat (i32 1)  ; 3 uses
  %i.ed = add nsw <4 x i32> %i.eb, splat (i32 1)  ; 2 uses
  %i.ee = icmp sgt <4 x i32> %i.dz, splat (i32 -1)
  %i.ef = icmp sgt <4 x i32> %broadcast.splat609, %i.dz
  %i.eg = and <4 x i1> %i.ee, %i.ef               ; 2 uses
  %i.eh = icmp sgt <4 x i32> %i.dz, splat (i32 -2)
  %i.ei = icmp slt <4 x i32> %i.ec, %broadcast.splat609
  %i.ej = and <4 x i1> %i.eh, %i.ei               ; 2 uses
  %i.ek = icmp sgt <4 x i32> %i.eb, splat (i32 -1)
  %i.el = icmp sgt <4 x i32> %broadcast.splat611, %i.eb
  %i.em = and <4 x i1> %i.ek, %i.el               ; 2 uses
  %i.en = icmp sgt <4 x i32> %i.eb, splat (i32 -2)
  %i.eo = icmp slt <4 x i32> %i.ed, %broadcast.splat611
  %i.ep = and <4 x i1> %i.en, %i.eo               ; 2 uses
  %i.eq = and <4 x i1> %i.eg, %i.em               ; 2 uses
  %i.er = and <4 x i1> %i.ej, %i.em               ; 2 uses
  %i.es = and <4 x i1> %i.eg, %i.ep               ; 2 uses
  %i.et = and <4 x i1> %i.ej, %i.ep               ; 2 uses
  %i.eu = mul nuw nsw <4 x i32> %broadcast.splat609, %i.eb
  %i.ev = add nsw <4 x i32> %i.eu, %i.dz
  %wide.masked.gather623 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.eq, <4 x i32> poison), !tbaa !16, !alias.scope !136
  %i.ew = mul nsw <4 x i32> %wide.masked.gather623, %i.ev
  %i.ex = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat649 = shufflevector <1 x i32> %i.ex, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ey = mul nsw <4 x i32> %broadcast.splat649, %i.eb
  %i.ez = add nsw <4 x i32> %i.ey, %i.ec
  %wide.masked.gather626 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.er, <4 x i32> poison), !tbaa !16, !alias.scope !136
  %i.fa = mul nsw <4 x i32> %i.ez, %wide.masked.gather626
  %i.fb = mul nsw <4 x i32> %broadcast.splat649, %i.ed ; 2 uses
  %i.fc = add nsw <4 x i32> %i.fb, %i.dz
  %wide.masked.gather628 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.es, <4 x i32> poison), !tbaa !16, !alias.scope !136
  %i.fd = mul nsw <4 x i32> %i.fc, %wide.masked.gather628
  %i.fe = add nsw <4 x i32> %i.fb, %i.ec
  %wide.masked.gather630 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat615, <4 x i1> %i.et, <4 x i32> poison), !tbaa !16, !alias.scope !136
  %i.ff = mul nsw <4 x i32> %i.fe, %wide.masked.gather630
  %i.fg = sitofp fast <4 x i32> %i.dz to <4 x float>
  %i.fh = fsub fast <4 x float> %i.du, %i.fg
  %i.fi = sitofp fast <4 x i32> %i.eb to <4 x float>
  %i.fj = fsub fast <4 x float> %i.dx, %i.fi
  %i.fk = shufflevector <4 x i1> %i.eq, <4 x i1> %i.er, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fl = shufflevector <4 x i32> %i.ew, <4 x i32> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fm = shufflevector <4 x i1> %i.es, <4 x i1> %i.et, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fn = shufflevector <4 x i32> %i.fd, <4 x i32> %i.ff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fo = shufflevector <8 x i1> %i.fk, <8 x i1> %i.fm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fp = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fq = bitcast <16 x i32> %i.fp to <16 x float>
  %i.fr = select <16 x i1> %i.fo, <16 x float> %i.fq, <16 x float> splat (float -nan(0x3FFFFF))
  %i.fs = shufflevector <4 x float> %i.fh, <4 x float> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec632 = shufflevector <16 x float> %i.fr, <16 x float> %i.fs, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec632, ptr %next.gep618, align 4, !tbaa !41, !alias.scope !137, !noalias !138
  %index.next633 = add nuw i64 %index617, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next633, %n.vec607
  br i1 %i.ft, label %vec.epilog.middle.block634, label %vec.epilog.vector.body616, !llvm.loop !116

vec.epilog.middle.block634:                       ; preds = %vec.epilog.vector.body616
  %cmp.n635 = icmp eq i64 %n.vec607, %i.ab
  br i1 %cmp.n635, label %._crit_edge, label %.lr.ph449.preheader

.lr.ph449.preheader:                              ; preds = %iter.check601, %vector.memcheck558, %vec.epilog.iter.check602, %vec.epilog.middle.block634
  %.2448.ph = phi ptr [ %.1.lcssa, %iter.check601 ], [ %.1.lcssa, %vector.memcheck558 ], [ %i.ak, %vec.epilog.iter.check602 ], [ %i.de, %vec.epilog.middle.block634 ]
  %.1250447.ph = phi ptr [ %.0249.lcssa, %iter.check601 ], [ %.0249.lcssa, %vector.memcheck558 ], [ %i.am, %vec.epilog.iter.check602 ], [ %i.dg, %vec.epilog.middle.block634 ]
  %.1252446.ph = phi i32 [ %.0251.lcssa, %iter.check601 ], [ %.0251.lcssa, %vector.memcheck558 ], [ %i.ap, %vec.epilog.iter.check602 ], [ %i.dj, %vec.epilog.middle.block634 ]
  br label %.lr.ph449

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.jg, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.jf, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.jh, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.fu = load <8 x float>, ptr %.0249440, align 1, !tbaa !41 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.fw = load <8 x float>, ptr %i.fv, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.fu, <8 x float> %i.fw, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.fu, <8 x float> %i.fw, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fx = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = insertelement <8 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.gb = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.gc = fadd fast <8 x float> %i.gb, splat (float 5.000000e-01)
  %i.gd = fadd fast <8 x float> %i.ga, splat (float -1.000000e+00)
  %i.ge = fmul fast <8 x float> %i.gd, %i.gc      ; 2 uses
  %i.gf = load i32, ptr %i.o, align 8, !tbaa !38
  %i.gg = sitofp fast i32 %i.gf to float
  %i.gh = insertelement <8 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <8 x float> %i.gh, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.gj = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.gk = fadd fast <8 x float> %i.gj, splat (float 5.000000e-01)
  %i.gl = fadd fast <8 x float> %i.gi, splat (float -1.000000e+00)
  %i.gm = fmul fast <8 x float> %i.gl, %i.gk      ; 2 uses
  %i.gn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ge, i32 1) ; 5 uses
  %i.go = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gm, i32 1) ; 5 uses
  %i.gp = fadd fast <8 x float> %i.gn, splat (float 1.000000e+00) ; 2 uses
  %i.gq = fadd fast <8 x float> %i.go, splat (float 1.000000e+00) ; 2 uses
  %i.gr = fcmp fast ogt <8 x float> %i.gn, splat (float -1.000000e+00)
  %i.gs = fcmp fast ogt <8 x float> %i.ga, %i.gn
  %i.gt = and <8 x i1> %i.gr, %i.gs               ; 2 uses
  %i.gu = fcmp fast ogt <8 x float> %i.gp, splat (float -1.000000e+00)
  %i.gv = fcmp fast ogt <8 x float> %i.ga, %i.gp
  %i.gw = and <8 x i1> %i.gu, %i.gv               ; 2 uses
  %i.gx = fcmp fast ogt <8 x float> %i.go, splat (float -1.000000e+00)
  %i.gy = fcmp fast ogt <8 x float> %i.gi, %i.go
  %i.gz = and <8 x i1> %i.gx, %i.gy
  %i.ha = sext <8 x i1> %i.gz to <8 x i32>
  %i.hb = fcmp fast ogt <8 x float> %i.gq, splat (float -1.000000e+00)
  %i.hc = fcmp fast ogt <8 x float> %i.gi, %i.gq
  %i.hd = and <8 x i1> %i.hb, %i.hc               ; 2 uses
  %i.he = bitcast <8 x i32> %i.ha to <8 x float>  ; 2 uses
  %i.hf = select <8 x i1> %i.gt, <8 x float> %i.he, <8 x float> zeroinitializer
  %i.hg = select <8 x i1> %i.gw, <8 x float> %i.he, <8 x float> zeroinitializer
  %i.hh = and <8 x i1> %i.gt, %i.hd
  %i.hi = and <8 x i1> %i.gw, %i.hd
  %i.hj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.go, <8 x float> nofpclass(nan inf) %i.ga, <8 x float> nofpclass(nan inf) %i.gn)
  %i.hk = load i32, ptr %i.p, align 8, !tbaa !16
  %i.hl = sitofp fast i32 %i.hk to float
  %i.hm = insertelement <8 x float> poison, float %i.hl, i64 0
  %i.hn = shufflevector <8 x float> %i.hm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ho = fmul fast <8 x float> %i.hn, %i.hj      ; 3 uses
  %i.hp = fadd fast <8 x float> %i.ho, %i.hn
  %i.hq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ga, <8 x float> nofpclass(nan inf) %i.hn, <8 x float> nofpclass(nan inf) %i.ho) ; 2 uses
  %i.hr = fadd fast <8 x float> %i.hq, %i.hn
  %i.hs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ho, <8 x float> nofpclass(nan inf) %i.hf)
  %i.ht = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.hp, <8 x float> nofpclass(nan inf) %i.hg)
  %i.hu = select <8 x i1> %i.hh, <8 x float> %i.hq, <8 x float> splat (float -1.000000e+00)
  %i.hv = select <8 x i1> %i.hi, <8 x float> %i.hr, <8 x float> splat (float -1.000000e+00)
  %i.hw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hs) ; 2 uses
  %i.hx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ht) ; 2 uses
  %i.hy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hu) ; 2 uses
  %i.hz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hv) ; 2 uses
  %i.ia = fsub fast <8 x float> %i.ge, %i.gn      ; 2 uses
  %i.ib = fsub fast <8 x float> %i.gm, %i.go      ; 2 uses
  %i.ic = shufflevector <8 x i32> %i.hw, <8 x i32> %i.hx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.id = bitcast <8 x i32> %i.ic to <8 x float>
  %i.ie = shufflevector <8 x i32> %i.hw, <8 x i32> %i.hx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.if = bitcast <8 x i32> %i.ie to <8 x float>
  %i.ig = shufflevector <8 x i32> %i.hy, <8 x i32> %i.hz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ih = bitcast <8 x i32> %i.ig to <8 x float>
  %i.ii = shufflevector <8 x i32> %i.hy, <8 x i32> %i.hz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ij = bitcast <8 x i32> %i.ii to <8 x float>
  %i.ik = shufflevector <8 x float> %i.ia, <8 x float> %i.ib, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.il = shufflevector <8 x float> %i.ia, <8 x float> %i.ib, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.im = shufflevector <8 x i32> %i.ic, <8 x i32> %i.ig, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.in = bitcast <8 x i32> %i.im to <8 x float>  ; 2 uses
  %i.io = shufflevector <8 x float> %i.ik, <8 x float> %i.id, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ip = shufflevector <8 x float> %i.ih, <8 x float> %i.ik, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.iq = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ii, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ir = bitcast <8 x i32> %i.iq to <8 x float>  ; 2 uses
  %i.is = shufflevector <8 x float> %i.il, <8 x float> %i.if, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.it = shufflevector <8 x float> %i.ij, <8 x float> %i.il, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.iu = shufflevector <8 x float> %i.in, <8 x float> %i.io, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.iv = shufflevector <8 x float> %i.ip, <8 x float> %i.ir, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.iw = shufflevector <8 x float> %i.is, <8 x float> %i.it, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ix = shufflevector <8 x float> %i.in, <8 x float> %i.io, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.iy = shufflevector <8 x float> %i.ip, <8 x float> %i.ir, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.iz = shufflevector <8 x float> %i.is, <8 x float> %i.it, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.iu, ptr %.1441, align 1, !tbaa !41
  %i.ja = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.iv, ptr %i.ja, align 1, !tbaa !41
  %i.jb = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.iw, ptr %i.jb, align 1, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.ix, ptr %i.jc, align 1, !tbaa !41
  %i.jd = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.iy, ptr %i.jd, align 1, !tbaa !41
  %i.je = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.iz, ptr %i.je, align 1, !tbaa !41
  %i.jf = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.jh = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.ji = or disjoint i32 %i.jh, 15
  %i.jj = icmp slt i32 %i.ji, %i.e
  br i1 %i.jj, label %.lr.ph442, label %.preheader, !llvm.loop !117

.lr.ph449:                                        ; preds = %.lr.ph449.preheader, %bb.h
  %.2448 = phi ptr [ %i.ls, %bb.h ], [ %.2448.ph, %.lr.ph449.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.lr, %bb.h ], [ %.1250447.ph, %.lr.ph449.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.lt, %bb.h ], [ %.1252446.ph, %.lr.ph449.preheader ]
  %i.jk = load <2 x float>, ptr %.1250447, align 4, !tbaa !40
  %i.jl = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.jm = fmul fast <2 x float> %i.jk, splat (float 5.000000e-01)
  %i.jn = fadd fast <2 x float> %i.jm, splat (float 5.000000e-01)
  %i.jo = add nsw <2 x i32> %i.jl, splat (i32 -1)
  %i.jp = sitofp <2 x i32> %i.jo to <2 x float>
  %i.jq = fmul fast <2 x float> %i.jn, %i.jp      ; 2 uses
  %i.jr = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.jq)
  %i.js = fptosi <2 x float> %i.jr to <2 x i32>   ; 5 uses
  %i.jt = extractelement <2 x i32> %i.js, i64 0   ; 4 uses
  %i.ju = add nsw i32 %i.jt, 1                    ; 3 uses
  %i.jv = extractelement <2 x i32> %i.js, i64 1   ; 4 uses
  %i.jw = add nsw i32 %i.jv, 1                    ; 3 uses
  %i.jx = icmp sgt i32 %i.jt, -2
  %i.jy = extractelement <2 x i32> %i.jl, i64 0   ; 2 uses
  %i.jz = icmp slt i32 %i.ju, %i.jy
  %i.ka = and i1 %i.jx, %i.jz                     ; 2 uses
  %i.kb = icmp sgt <2 x i32> %i.js, splat (i32 -1)
  %i.kc = icmp sgt <2 x i32> %i.jl, %i.js
  %i.kd = and <2 x i1> %i.kb, %i.kc               ; 2 uses
  %i.ke = icmp sgt i32 %i.jv, -2
  %i.kf = extractelement <2 x i32> %i.jl, i64 1
  %i.kg = icmp slt i32 %i.jw, %i.kf
  %i.kh = and i1 %i.ke, %i.kg                     ; 2 uses
  %i.ki = extractelement <2 x i1> %i.kd, i64 0    ; 2 uses
  %i.kj = extractelement <2 x i1> %i.kd, i64 1    ; 2 uses
  %i.kk = and i1 %i.ki, %i.kj
  %i.kl = and i1 %i.ka, %i.kj
  %i.km = and i1 %i.ki, %i.kh
  %i.kn = and i1 %i.ka, %i.kh
  %i.ko = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.kk, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.kp = mul nuw nsw i32 %i.jy, %i.jv
  %i.kq = add nsw i32 %i.kp, %i.jt
  %i.kr = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ks = mul nsw i32 %i.kr, %i.kq
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.kt = phi i32 [ %i.ks, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.kt, ptr %.2448, align 4, !tbaa !23
  br i1 %i.kl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ku = load i32, ptr %i.n, align 4, !tbaa !37
  %i.kv = mul nsw i32 %i.ku, %i.jv
  %i.kw = add nsw i32 %i.kv, %i.ju
  %i.kx = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ky = mul nsw i32 %i.kw, %i.kx
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.kz = phi i32 [ %i.ky, %bb.c ], [ -1, %bb.b ]
  %i.la = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !23
  br i1 %i.km, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.lb = load i32, ptr %i.n, align 4, !tbaa !37
  %i.lc = mul nsw i32 %i.lb, %i.jw
  %i.ld = add nsw i32 %i.lc, %i.jt
  %i.le = load i32, ptr %i.p, align 8, !tbaa !16
  %i.lf = mul nsw i32 %i.ld, %i.le
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.lg = phi i32 [ %i.lf, %bb.e ], [ -1, %bb.d ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !23
  br i1 %i.kn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.li = load i32, ptr %i.n, align 4, !tbaa !37
  %i.lj = mul nsw i32 %i.li, %i.jw
  %i.lk = add nsw i32 %i.lj, %i.ju
  %i.ll = load i32, ptr %i.p, align 8, !tbaa !16
  %i.lm = mul nsw i32 %i.lk, %i.ll
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ln = phi i32 [ %i.lm, %bb.g ], [ -1, %bb.f ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !23
  %i.lp = sitofp <2 x i32> %i.js to <2 x float>
  %i.lq = fsub fast <2 x float> %i.jq, %i.lp
  store <2 x float> %i.lq, ptr %i.ko, align 4, !tbaa !40
  %i.lr = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.lt = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.lu = icmp slt i32 %i.lt, %i.e
  br i1 %i.lu, label %.lr.ph449, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.h, %middle.block599, %vec.epilog.middle.block634, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.de, %vec.epilog.middle.block634 ], [ %i.ak, %middle.block599 ], [ %i.ls, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lv = load i32, ptr %i.h, align 8, !tbaa !17
  %i.lw = sext i32 %i.lv to i64
  %i.lx = icmp slt i64 %indvars.iv.next, %i.lw
  br i1 %i.lx, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !119

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.ly = load ptr, ptr %1, align 8, !tbaa !20, !noalias !139 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !19, !noalias !140
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !18, !noalias !140
  %i.md = mul i64 %i.mc, %i.mb
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.md ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %wide.vec = load <32 x float>, ptr %next.gep592, align 4, !tbaa !40, !alias.scope !174 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec593 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ay = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.az = fadd fast <16 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <16 x float> %i.az, %i.ar
  %i.bb = fadd fast <16 x float> %i.ba, splat (float -5.000000e-01)
  %i.bc = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bb, <16 x float> zeroinitializer)
  %i.bd = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bc, <16 x float> %i.as) ; 2 uses
  %i.be = fmul fast <16 x float> %strided.vec593, splat (float 5.000000e-01)
  %i.bf = fadd fast <16 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = fmul fast <16 x float> %i.bf, %i.au
  %i.bh = fadd fast <16 x float> %i.bg, splat (float -5.000000e-01)
  %i.bi = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bh, <16 x float> zeroinitializer)
  %i.bj = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bi, <16 x float> %i.av) ; 2 uses
  %i.bk = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bd)
  %i.bl = fptosi <16 x float> %i.bk to <16 x i32> ; 7 uses
  %i.bm = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bj)
  %i.bn = fptosi <16 x float> %i.bm to <16 x i32> ; 7 uses
  %i.bo = add nsw <16 x i32> %i.bl, splat (i32 1) ; 3 uses
  %i.bp = add nsw <16 x i32> %i.bn, splat (i32 1) ; 2 uses
  %i.bq = icmp sgt <16 x i32> %i.bl, splat (i32 -1)
  %i.br = icmp sgt <16 x i32> %broadcast.splat582, %i.bl
  %i.bs = and <16 x i1> %i.bq, %i.br              ; 2 uses
  %i.bt = icmp sgt <16 x i32> %i.bl, splat (i32 -2)
  %i.bu = icmp slt <16 x i32> %i.bo, %broadcast.splat582
  %i.bv = and <16 x i1> %i.bt, %i.bu              ; 2 uses
  %i.bw = icmp sgt <16 x i32> %i.bn, splat (i32 -1)
  %i.bx = icmp sgt <16 x i32> %broadcast.splat584, %i.bn
  %i.by = and <16 x i1> %i.bw, %i.bx              ; 2 uses
  %i.bz = icmp sgt <16 x i32> %i.bn, splat (i32 -2)
  %i.ca = icmp slt <16 x i32> %i.bp, %broadcast.splat584
  %i.cb = and <16 x i1> %i.bz, %i.ca              ; 2 uses
  %i.cc = and <16 x i1> %i.bs, %i.by              ; 2 uses
  %i.cd = and <16 x i1> %i.bv, %i.by              ; 2 uses
  %i.ce = and <16 x i1> %i.bs, %i.cb              ; 2 uses
  %i.cf = and <16 x i1> %i.bv, %i.cb              ; 2 uses
  %i.cg = mul nuw nsw <16 x i32> %broadcast.splat582, %i.bn
  %i.ch = add nsw <16 x i32> %i.cg, %i.bl
  %wide.masked.gather594 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cc, <16 x i32> poison), !tbaa !16, !alias.scope !175
  %i.ci = mul nsw <16 x i32> %wide.masked.gather594, %i.ch
  %i.cj = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat652 = shufflevector <1 x i32> %i.cj, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ck = mul nsw <16 x i32> %broadcast.splat652, %i.bn
  %i.cl = add nsw <16 x i32> %i.ck, %i.bo
  %wide.masked.gather597 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cd, <16 x i32> poison), !tbaa !16, !alias.scope !175
  %i.cm = mul nsw <16 x i32> %i.cl, %wide.masked.gather597
  %i.cn = mul nsw <16 x i32> %broadcast.splat652, %i.bp ; 2 uses
  %i.co = add nsw <16 x i32> %i.cn, %i.bl
  %wide.masked.gather599 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.ce, <16 x i32> poison), !tbaa !16, !alias.scope !175
  %i.cp = mul nsw <16 x i32> %i.co, %wide.masked.gather599
  %i.cq = add nsw <16 x i32> %i.cn, %i.bo
  %wide.masked.gather601 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cf, <16 x i32> poison), !tbaa !16, !alias.scope !175
  %i.cr = mul nsw <16 x i32> %i.cq, %wide.masked.gather601
  %i.cs = sitofp fast <16 x i32> %i.bl to <16 x float>
  %i.ct = fsub fast <16 x float> %i.bd, %i.cs
  %i.cu = sitofp fast <16 x i32> %i.bn to <16 x float>
  %i.cv = fsub fast <16 x float> %i.bj, %i.cu
  %i.cw = bitcast <16 x i32> %i.ci to <16 x float>
  %i.cx = select <16 x i1> %i.cc, <16 x float> %i.cw, <16 x float> splat (float -nan(0x3FFFFF))
  %i.cy = bitcast <16 x i32> %i.cm to <16 x float>
  %i.cz = select <16 x i1> %i.cd, <16 x float> %i.cy, <16 x float> splat (float -nan(0x3FFFFF))
  %i.da = bitcast <16 x i32> %i.cp to <16 x float>
  %i.db = select <16 x i1> %i.ce, <16 x float> %i.da, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dc = bitcast <16 x i32> %i.cr to <16 x float>
  %i.dd = select <16 x i1> %i.cf, <16 x float> %i.dc, <16 x float> splat (float -nan(0x3FFFFF))
  %i.de = shufflevector <16 x float> %i.cx, <16 x float> %i.cz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.df = shufflevector <16 x float> %i.db, <16 x float> %i.dd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dg = shufflevector <32 x float> %i.de, <32 x float> %i.df, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dh = shufflevector <16 x float> %i.ct, <16 x float> %i.cv, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec603 = shufflevector <64 x float> %i.dg, <64 x float> %i.dh, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x float> %interleaved.vec603, ptr %next.gep591, align 4, !tbaa !41, !alias.scope !176, !noalias !177
  %index.next604 = add nuw i64 %index590, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next604, %n.vec580
  br i1 %i.di, label %middle.block605, label %vector.body589, !llvm.loop !154

middle.block605:                                  ; preds = %vector.body589
  %cmp.n606 = icmp eq i64 %n.vec580, %i.ab
  br i1 %cmp.n606, label %._crit_edge, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block605
  %min.epilog.iters.check610 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check610, label %.lr.ph455.preheader, label %vec.epilog.ph611, !prof !45

vec.epilog.ph611:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check608
  %vec.epilog.resume.val612 = phi i64 [ %n.vec580, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check577 ]
  %n.vec613 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.dj = mul nuw nsw i64 %n.vec613, 24
  %i.dk = getelementptr i8, ptr %.1.lcssa, i64 %i.dj ; 2 uses
  %i.dl = shl nuw nsw i64 %n.vec613, 3
  %i.dm = getelementptr i8, ptr %.0249.lcssa, i64 %i.dl
  %i.dn = trunc nuw i64 %n.vec613 to i32
  %i.do = shl i32 %i.dn, 1
  %i.dp = add i32 %.0251.lcssa, %i.do
  %i.dq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat615 = shufflevector <1 x i32> %i.dq, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dr = sitofp fast <4 x i32> %broadcast.splat615 to <4 x float> ; 2 uses
  %i.ds = fadd fast <4 x float> %i.dr, splat (float -1.000000e+00)
  %i.dt = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat617 = shufflevector <1 x i32> %i.dt, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.du = sitofp fast <4 x i32> %broadcast.splat617 to <4 x float> ; 2 uses
  %i.dv = fadd fast <4 x float> %i.du, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body622

vec.epilog.vector.body622:                        ; preds = %vec.epilog.vector.body622, %vec.epilog.ph611
  %index623 = phi i64 [ %vec.epilog.resume.val612, %vec.epilog.ph611 ], [ %index.next639, %vec.epilog.vector.body622 ] ; 3 uses
  %i.dw = mul i64 %index623, 24
  %next.gep624 = getelementptr i8, ptr %.1.lcssa, i64 %i.dw
  %i.dx = shl i64 %index623, 3
  %next.gep625 = getelementptr i8, ptr %.0249.lcssa, i64 %i.dx
  %wide.vec626 = load <8 x float>, ptr %next.gep625, align 4, !tbaa !40, !alias.scope !174 ; 2 uses
  %strided.vec627 = shufflevector <8 x float> %wide.vec626, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec628 = shufflevector <8 x float> %wide.vec626, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dy = fmul fast <4 x float> %strided.vec627, splat (float 5.000000e-01)
  %i.dz = fadd fast <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ea = fmul fast <4 x float> %i.dz, %i.dr
  %i.eb = fadd fast <4 x float> %i.ea, splat (float -5.000000e-01)
  %i.ec = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.eb, <4 x float> zeroinitializer)
  %i.ed = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ec, <4 x float> %i.ds) ; 2 uses
  %i.ee = fmul fast <4 x float> %strided.vec628, splat (float 5.000000e-01)
  %i.ef = fadd fast <4 x float> %i.ee, splat (float 5.000000e-01)
  %i.eg = fmul fast <4 x float> %i.ef, %i.du
  %i.eh = fadd fast <4 x float> %i.eg, splat (float -5.000000e-01)
  %i.ei = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.eh, <4 x float> zeroinitializer)
  %i.ej = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ei, <4 x float> %i.dv) ; 2 uses
  %i.ek = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ed)
  %i.el = fptosi <4 x float> %i.ek to <4 x i32>   ; 7 uses
  %i.em = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ej)
  %i.en = fptosi <4 x float> %i.em to <4 x i32>   ; 7 uses
  %i.eo = add nsw <4 x i32> %i.el, splat (i32 1)  ; 3 uses
  %i.ep = add nsw <4 x i32> %i.en, splat (i32 1)  ; 2 uses
  %i.eq = icmp sgt <4 x i32> %i.el, splat (i32 -1)
  %i.er = icmp sgt <4 x i32> %broadcast.splat615, %i.el
  %i.es = and <4 x i1> %i.eq, %i.er               ; 2 uses
  %i.et = icmp sgt <4 x i32> %i.el, splat (i32 -2)
  %i.eu = icmp slt <4 x i32> %i.eo, %broadcast.splat615
  %i.ev = and <4 x i1> %i.et, %i.eu               ; 2 uses
  %i.ew = icmp sgt <4 x i32> %i.en, splat (i32 -1)
  %i.ex = icmp sgt <4 x i32> %broadcast.splat617, %i.en
  %i.ey = and <4 x i1> %i.ew, %i.ex               ; 2 uses
  %i.ez = icmp sgt <4 x i32> %i.en, splat (i32 -2)
  %i.fa = icmp slt <4 x i32> %i.ep, %broadcast.splat617
  %i.fb = and <4 x i1> %i.ez, %i.fa               ; 2 uses
  %i.fc = and <4 x i1> %i.es, %i.ey               ; 2 uses
  %i.fd = and <4 x i1> %i.ev, %i.ey               ; 2 uses
  %i.fe = and <4 x i1> %i.es, %i.fb               ; 2 uses
  %i.ff = and <4 x i1> %i.ev, %i.fb               ; 2 uses
  %i.fg = mul nuw nsw <4 x i32> %broadcast.splat615, %i.en
  %i.fh = add nsw <4 x i32> %i.fg, %i.el
  %wide.masked.gather629 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fc, <4 x i32> poison), !tbaa !16, !alias.scope !175
  %i.fi = mul nsw <4 x i32> %wide.masked.gather629, %i.fh
  %i.fj = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat655 = shufflevector <1 x i32> %i.fj, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fk = mul nsw <4 x i32> %broadcast.splat655, %i.en
  %i.fl = add nsw <4 x i32> %i.fk, %i.eo
  %wide.masked.gather632 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fd, <4 x i32> poison), !tbaa !16, !alias.scope !175
  %i.fm = mul nsw <4 x i32> %i.fl, %wide.masked.gather632
  %i.fn = mul nsw <4 x i32> %broadcast.splat655, %i.ep ; 2 uses
  %i.fo = add nsw <4 x i32> %i.fn, %i.el
  %wide.masked.gather634 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fe, <4 x i32> poison), !tbaa !16, !alias.scope !175
  %i.fp = mul nsw <4 x i32> %i.fo, %wide.masked.gather634
  %i.fq = add nsw <4 x i32> %i.fn, %i.eo
  %wide.masked.gather636 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.ff, <4 x i32> poison), !tbaa !16, !alias.scope !175
  %i.fr = mul nsw <4 x i32> %i.fq, %wide.masked.gather636
  %i.fs = sitofp fast <4 x i32> %i.el to <4 x float>
  %i.ft = fsub fast <4 x float> %i.ed, %i.fs
  %i.fu = sitofp fast <4 x i32> %i.en to <4 x float>
  %i.fv = fsub fast <4 x float> %i.ej, %i.fu
  %i.fw = shufflevector <4 x i1> %i.fc, <4 x i1> %i.fd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fx = shufflevector <4 x i32> %i.fi, <4 x i32> %i.fm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fy = shufflevector <4 x i1> %i.fe, <4 x i1> %i.ff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fz = shufflevector <4 x i32> %i.fp, <4 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ga = shufflevector <8 x i1> %i.fw, <8 x i1> %i.fy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gb = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gc = bitcast <16 x i32> %i.gb to <16 x float>
  %i.gd = select <16 x i1> %i.ga, <16 x float> %i.gc, <16 x float> splat (float -nan(0x3FFFFF))
  %i.ge = shufflevector <4 x float> %i.ft, <4 x float> %i.fv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec638 = shufflevector <16 x float> %i.gd, <16 x float> %i.ge, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec638, ptr %next.gep624, align 4, !tbaa !41, !alias.scope !176, !noalias !177
  %index.next639 = add nuw i64 %index623, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next639, %n.vec613
  br i1 %i.gf, label %vec.epilog.middle.block640, label %vec.epilog.vector.body622, !llvm.loop !155

vec.epilog.middle.block640:                       ; preds = %vec.epilog.vector.body622
  %cmp.n641 = icmp eq i64 %n.vec613, %i.ab
  br i1 %cmp.n641, label %._crit_edge, label %.lr.ph455.preheader

.lr.ph455.preheader:                              ; preds = %iter.check607, %vector.memcheck564, %vec.epilog.iter.check608, %vec.epilog.middle.block640
  %.2454.ph = phi ptr [ %.1.lcssa, %iter.check607 ], [ %.1.lcssa, %vector.memcheck564 ], [ %i.ak, %vec.epilog.iter.check608 ], [ %i.dk, %vec.epilog.middle.block640 ]
  %.1250453.ph = phi ptr [ %.0249.lcssa, %iter.check607 ], [ %.0249.lcssa, %vector.memcheck564 ], [ %i.am, %vec.epilog.iter.check608 ], [ %i.dm, %vec.epilog.middle.block640 ]
  %.1252452.ph = phi i32 [ %.0251.lcssa, %iter.check607 ], [ %.0251.lcssa, %vector.memcheck564 ], [ %i.ap, %vec.epilog.iter.check608 ], [ %i.dp, %vec.epilog.middle.block640 ]
  br label %.lr.ph455

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.jw, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.jv, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.jx, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.gg = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.gi = load <8 x float>, ptr %i.gh, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.gg, <8 x float> %i.gi, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.gg, <8 x float> %i.gi, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gj = load i32, ptr %i.n, align 4, !tbaa !37
  %i.gk = sitofp fast i32 %i.gj to float
  %i.gl = insertelement <8 x float> poison, float %i.gk, i64 0
  %i.gm = shufflevector <8 x float> %i.gl, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.gn = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.go = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gn, <8 x float> nofpclass(nan inf) %i.gm, <8 x float> splat (float -1.000000e+00))
  %i.gp = fmul fast <8 x float> %i.go, splat (float 5.000000e-01)
  %i.gq = fadd fast <8 x float> %i.gm, splat (float -1.000000e+00)
  %i.gr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gp, <8 x float> zeroinitializer)
  %i.gs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) %i.gr) ; 2 uses
  %i.gt = load i32, ptr %i.o, align 8, !tbaa !38
  %i.gu = sitofp fast i32 %i.gt to float
  %i.gv = insertelement <8 x float> poison, float %i.gu, i64 0
  %i.gw = shufflevector <8 x float> %i.gv, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.gx = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.gy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) %i.gw, <8 x float> splat (float -1.000000e+00))
  %i.gz = fmul fast <8 x float> %i.gy, splat (float 5.000000e-01)
  %i.ha = fadd fast <8 x float> %i.gw, splat (float -1.000000e+00)
  %i.hb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gz, <8 x float> zeroinitializer)
  %i.hc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> nofpclass(nan inf) %i.hb) ; 2 uses
  %i.hd = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gs, i32 1) ; 5 uses
  %i.he = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hc, i32 1) ; 5 uses
  %i.hf = fadd fast <8 x float> %i.hd, splat (float 1.000000e+00) ; 2 uses
  %i.hg = fadd fast <8 x float> %i.he, splat (float 1.000000e+00) ; 2 uses
  %i.hh = fcmp fast ogt <8 x float> %i.hd, splat (float -1.000000e+00)
  %i.hi = fcmp fast ogt <8 x float> %i.gm, %i.hd
  %i.hj = and <8 x i1> %i.hh, %i.hi               ; 2 uses
  %i.hk = fcmp fast ogt <8 x float> %i.hf, splat (float -1.000000e+00)
  %i.hl = fcmp fast ogt <8 x float> %i.gm, %i.hf
  %i.hm = and <8 x i1> %i.hk, %i.hl               ; 2 uses
  %i.hn = fcmp fast ogt <8 x float> %i.he, splat (float -1.000000e+00)
  %i.ho = fcmp fast ogt <8 x float> %i.gw, %i.he
  %i.hp = and <8 x i1> %i.hn, %i.ho
  %i.hq = sext <8 x i1> %i.hp to <8 x i32>
  %i.hr = fcmp fast ogt <8 x float> %i.hg, splat (float -1.000000e+00)
  %i.hs = fcmp fast ogt <8 x float> %i.gw, %i.hg
  %i.ht = and <8 x i1> %i.hr, %i.hs               ; 2 uses
  %i.hu = bitcast <8 x i32> %i.hq to <8 x float>  ; 2 uses
  %i.hv = select <8 x i1> %i.hj, <8 x float> %i.hu, <8 x float> zeroinitializer
  %i.hw = select <8 x i1> %i.hm, <8 x float> %i.hu, <8 x float> zeroinitializer
  %i.hx = and <8 x i1> %i.hj, %i.ht
  %i.hy = and <8 x i1> %i.hm, %i.ht
  %i.hz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.he, <8 x float> nofpclass(nan inf) %i.gm, <8 x float> nofpclass(nan inf) %i.hd)
  %i.ia = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ib = sitofp fast i32 %i.ia to float
  %i.ic = insertelement <8 x float> poison, float %i.ib, i64 0
  %i.id = shufflevector <8 x float> %i.ic, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ie = fmul fast <8 x float> %i.id, %i.hz      ; 3 uses
  %i.if = fadd fast <8 x float> %i.ie, %i.id
  %i.ig = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gm, <8 x float> nofpclass(nan inf) %i.id, <8 x float> nofpclass(nan inf) %i.ie) ; 2 uses
  %i.ih = fadd fast <8 x float> %i.ig, %i.id
  %i.ii = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ie, <8 x float> nofpclass(nan inf) %i.hv)
  %i.ij = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.if, <8 x float> nofpclass(nan inf) %i.hw)
  %i.ik = select <8 x i1> %i.hx, <8 x float> %i.ig, <8 x float> splat (float -1.000000e+00)
  %i.il = select <8 x i1> %i.hy, <8 x float> %i.ih, <8 x float> splat (float -1.000000e+00)
  %i.im = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ii) ; 2 uses
  %i.in = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ij) ; 2 uses
  %i.io = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ik) ; 2 uses
  %i.ip = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.il) ; 2 uses
  %i.iq = fsub fast <8 x float> %i.gs, %i.hd      ; 2 uses
  %i.ir = fsub fast <8 x float> %i.hc, %i.he      ; 2 uses
  %i.is = shufflevector <8 x i32> %i.im, <8 x i32> %i.in, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.it = bitcast <8 x i32> %i.is to <8 x float>
  %i.iu = shufflevector <8 x i32> %i.im, <8 x i32> %i.in, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.iv = bitcast <8 x i32> %i.iu to <8 x float>
  %i.iw = shufflevector <8 x i32> %i.io, <8 x i32> %i.ip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ix = bitcast <8 x i32> %i.iw to <8 x float>
  %i.iy = shufflevector <8 x i32> %i.io, <8 x i32> %i.ip, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>
  %i.ja = shufflevector <8 x float> %i.iq, <8 x float> %i.ir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jb = shufflevector <8 x float> %i.iq, <8 x float> %i.ir, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jc = shufflevector <8 x i32> %i.is, <8 x i32> %i.iw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jd = bitcast <8 x i32> %i.jc to <8 x float>  ; 2 uses
  %i.je = shufflevector <8 x float> %i.ja, <8 x float> %i.it, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jf = shufflevector <8 x float> %i.ix, <8 x float> %i.ja, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jg = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jh = bitcast <8 x i32> %i.jg to <8 x float>  ; 2 uses
  %i.ji = shufflevector <8 x float> %i.jb, <8 x float> %i.iv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jj = shufflevector <8 x float> %i.iz, <8 x float> %i.jb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jk = shufflevector <8 x float> %i.jd, <8 x float> %i.je, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jl = shufflevector <8 x float> %i.jf, <8 x float> %i.jh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jm = shufflevector <8 x float> %i.ji, <8 x float> %i.jj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jn = shufflevector <8 x float> %i.jd, <8 x float> %i.je, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jo = shufflevector <8 x float> %i.jf, <8 x float> %i.jh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jp = shufflevector <8 x float> %i.ji, <8 x float> %i.jj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.jk, ptr %.1447, align 1, !tbaa !41
  %i.jq = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.jl, ptr %i.jq, align 1, !tbaa !41
  %i.jr = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.jm, ptr %i.jr, align 1, !tbaa !41
  %i.js = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.jn, ptr %i.js, align 1, !tbaa !41
  %i.jt = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.jo, ptr %i.jt, align 1, !tbaa !41
  %i.ju = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.jp, ptr %i.ju, align 1, !tbaa !41
  %i.jv = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.jx = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.jy = or disjoint i32 %i.jx, 15
  %i.jz = icmp slt i32 %i.jy, %i.e
  br i1 %i.jz, label %.lr.ph448, label %.preheader, !llvm.loop !156

.lr.ph455:                                        ; preds = %.lr.ph455.preheader, %bb.h
  %.2454 = phi ptr [ %i.ml, %bb.h ], [ %.2454.ph, %.lr.ph455.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.mk, %bb.h ], [ %.1250453.ph, %.lr.ph455.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.mm, %bb.h ], [ %.1252452.ph, %.lr.ph455.preheader ]
  %i.ka = load <2 x float>, ptr %.1250453, align 4, !tbaa !40
  %i.kb = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.kc = sitofp <2 x i32> %i.kb to <2 x float>   ; 2 uses
  %i.kd = fmul fast <2 x float> %i.ka, splat (float 5.000000e-01)
  %i.ke = fadd fast <2 x float> %i.kd, splat (float 5.000000e-01)
  %i.kf = fmul fast <2 x float> %i.ke, %i.kc
  %i.kg = fadd fast <2 x float> %i.kf, splat (float -5.000000e-01)
  %i.kh = fadd fast <2 x float> %i.kc, splat (float -1.000000e+00)
  %i.ki = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kg, <2 x float> zeroinitializer)
  %i.kj = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ki, <2 x float> %i.kh) ; 2 uses
  %i.kk = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.kj)
  %i.kl = fptosi <2 x float> %i.kk to <2 x i32>   ; 5 uses
  %i.km = extractelement <2 x i32> %i.kl, i64 0   ; 4 uses
  %i.kn = add nsw i32 %i.km, 1                    ; 3 uses
  %i.ko = extractelement <2 x i32> %i.kl, i64 1   ; 4 uses
  %i.kp = add nsw i32 %i.ko, 1                    ; 3 uses
  %i.kq = icmp sgt i32 %i.km, -2
  %i.kr = extractelement <2 x i32> %i.kb, i64 0   ; 2 uses
  %i.ks = icmp slt i32 %i.kn, %i.kr
  %i.kt = and i1 %i.kq, %i.ks                     ; 2 uses
  %i.ku = icmp sgt <2 x i32> %i.kl, splat (i32 -1)
  %i.kv = icmp sgt <2 x i32> %i.kb, %i.kl
  %i.kw = and <2 x i1> %i.ku, %i.kv               ; 2 uses
  %i.kx = icmp sgt i32 %i.ko, -2
  %i.ky = extractelement <2 x i32> %i.kb, i64 1
  %i.kz = icmp slt i32 %i.kp, %i.ky
  %i.la = and i1 %i.kx, %i.kz                     ; 2 uses
  %i.lb = extractelement <2 x i1> %i.kw, i64 0    ; 2 uses
  %i.lc = extractelement <2 x i1> %i.kw, i64 1    ; 2 uses
  %i.ld = and i1 %i.lb, %i.lc
  %i.le = and i1 %i.kt, %i.lc
  %i.lf = and i1 %i.lb, %i.la
  %i.lg = and i1 %i.kt, %i.la
  %i.lh = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.ld, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.li = mul nuw nsw i32 %i.kr, %i.ko
  %i.lj = add nsw i32 %i.li, %i.km
  %i.lk = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ll = mul nsw i32 %i.lk, %i.lj
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.lm = phi i32 [ %i.ll, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.lm, ptr %.2454, align 4, !tbaa !23
  br i1 %i.le, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ln = load i32, ptr %i.n, align 4, !tbaa !37
  %i.lo = mul nsw i32 %i.ln, %i.ko
  %i.lp = add nsw i32 %i.lo, %i.kn
  %i.lq = load i32, ptr %i.p, align 8, !tbaa !16
  %i.lr = mul nsw i32 %i.lp, %i.lq
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ls = phi i32 [ %i.lr, %bb.c ], [ -1, %bb.b ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !23
  br i1 %i.lf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.lu = load i32, ptr %i.n, align 4, !tbaa !37
  %i.lv = mul nsw i32 %i.lu, %i.kp
  %i.lw = add nsw i32 %i.lv, %i.km
  %i.lx = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ly = mul nsw i32 %i.lw, %i.lx
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.lz = phi i32 [ %i.ly, %bb.e ], [ -1, %bb.d ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !23
  br i1 %i.lg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.mb = load i32, ptr %i.n, align 4, !tbaa !37
  %i.mc = mul nsw i32 %i.mb, %i.kp
  %i.md = add nsw i32 %i.mc, %i.kn
  %i.me = load i32, ptr %i.p, align 8, !tbaa !16
  %i.mf = mul nsw i32 %i.md, %i.me
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.mg = phi i32 [ %i.mf, %bb.g ], [ -1, %bb.f ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !23
  %i.mi = sitofp <2 x i32> %i.kl to <2 x float>
  %i.mj = fsub fast <2 x float> %i.kj, %i.mi
  store <2 x float> %i.mj, ptr %i.lh, align 4, !tbaa !40
  %i.mk = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.mm = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.mn = icmp slt i32 %i.mm, %i.e
  br i1 %i.mn, label %.lr.ph455, label %._crit_edge, !llvm.loop !157

._crit_edge:                                      ; preds = %bb.h, %middle.block605, %vec.epilog.middle.block640, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dk, %vec.epilog.middle.block640 ], [ %i.ak, %middle.block605 ], [ %i.ml, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mo = load i32, ptr %i.h, align 8, !tbaa !17
  %i.mp = sext i32 %i.mo to i64
  %i.mq = icmp slt i64 %indvars.iv.next, %i.mp
  br i1 %i.mq, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !158

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.mr = load ptr, ptr %1, align 8, !tbaa !20, !noalias !178 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_2
begin_hunk_3_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %wide.vec = load <32 x float>, ptr %next.gep592, align 4, !tbaa !40, !alias.scope !213 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec593 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bc = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.bd = fadd fast <16 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul fast <16 x float> %i.bd, %i.as
  %i.bf = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.be, <16 x float> zeroinitializer)
  %i.bg = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bf, <16 x float> %i.au) ; 2 uses
  %i.bh = fmul fast <16 x float> %strided.vec593, splat (float 5.000000e-01)
  %i.bi = fadd fast <16 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul fast <16 x float> %i.bi, %i.ax
  %i.bk = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bj, <16 x float> zeroinitializer)
  %i.bl = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bk, <16 x float> %i.az) ; 2 uses
  %i.bm = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bg)
  %i.bn = fptosi <16 x float> %i.bm to <16 x i32> ; 7 uses
  %i.bo = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bl)
  %i.bp = fptosi <16 x float> %i.bo to <16 x i32> ; 7 uses
  %i.bq = add nsw <16 x i32> %i.bn, splat (i32 1) ; 3 uses
  %i.br = add nsw <16 x i32> %i.bp, splat (i32 1) ; 2 uses
  %i.bs = icmp sgt <16 x i32> %i.bn, splat (i32 -1)
  %i.bt = icmp sgt <16 x i32> %broadcast.splat582, %i.bn
  %i.bu = and <16 x i1> %i.bs, %i.bt              ; 2 uses
  %i.bv = icmp sgt <16 x i32> %i.bn, splat (i32 -2)
  %i.bw = icmp slt <16 x i32> %i.bq, %broadcast.splat582
  %i.bx = and <16 x i1> %i.bv, %i.bw              ; 2 uses
  %i.by = icmp sgt <16 x i32> %i.bp, splat (i32 -1)
  %i.bz = icmp sgt <16 x i32> %broadcast.splat584, %i.bp
  %i.ca = and <16 x i1> %i.by, %i.bz              ; 2 uses
  %i.cb = icmp sgt <16 x i32> %i.bp, splat (i32 -2)
  %i.cc = icmp slt <16 x i32> %i.br, %broadcast.splat584
  %i.cd = and <16 x i1> %i.cb, %i.cc              ; 2 uses
  %i.ce = and <16 x i1> %i.bu, %i.ca              ; 2 uses
  %i.cf = and <16 x i1> %i.bx, %i.ca              ; 2 uses
  %i.cg = and <16 x i1> %i.bu, %i.cd              ; 2 uses
  %i.ch = and <16 x i1> %i.bx, %i.cd              ; 2 uses
  %i.ci = mul nuw nsw <16 x i32> %broadcast.splat582, %i.bp
  %i.cj = add nsw <16 x i32> %i.ci, %i.bn
  %wide.masked.gather594 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.ce, <16 x i32> poison), !tbaa !16, !alias.scope !214
  %i.ck = mul nsw <16 x i32> %wide.masked.gather594, %i.cj
  %i.cl = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat652 = shufflevector <1 x i32> %i.cl, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cm = mul nsw <16 x i32> %broadcast.splat652, %i.bp
  %i.cn = add nsw <16 x i32> %i.cm, %i.bq
  %wide.masked.gather597 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cf, <16 x i32> poison), !tbaa !16, !alias.scope !214
  %i.co = mul nsw <16 x i32> %i.cn, %wide.masked.gather597
  %i.cp = mul nsw <16 x i32> %broadcast.splat652, %i.br ; 2 uses
  %i.cq = add nsw <16 x i32> %i.cp, %i.bn
  %wide.masked.gather599 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cg, <16 x i32> poison), !tbaa !16, !alias.scope !214
  %i.cr = mul nsw <16 x i32> %i.cq, %wide.masked.gather599
  %i.cs = add nsw <16 x i32> %i.cp, %i.bq
  %wide.masked.gather601 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.ch, <16 x i32> poison), !tbaa !16, !alias.scope !214
  %i.ct = mul nsw <16 x i32> %i.cs, %wide.masked.gather601
  %i.cu = sitofp fast <16 x i32> %i.bn to <16 x float>
  %i.cv = fsub fast <16 x float> %i.bg, %i.cu
  %i.cw = sitofp fast <16 x i32> %i.bp to <16 x float>
  %i.cx = fsub fast <16 x float> %i.bl, %i.cw
  %i.cy = bitcast <16 x i32> %i.ck to <16 x float>
  %i.cz = select <16 x i1> %i.ce, <16 x float> %i.cy, <16 x float> splat (float -nan(0x3FFFFF))
  %i.da = bitcast <16 x i32> %i.co to <16 x float>
  %i.db = select <16 x i1> %i.cf, <16 x float> %i.da, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dc = bitcast <16 x i32> %i.cr to <16 x float>
  %i.dd = select <16 x i1> %i.cg, <16 x float> %i.dc, <16 x float> splat (float -nan(0x3FFFFF))
  %i.de = bitcast <16 x i32> %i.ct to <16 x float>
  %i.df = select <16 x i1> %i.ch, <16 x float> %i.de, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dg = shufflevector <16 x float> %i.cz, <16 x float> %i.db, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dh = shufflevector <16 x float> %i.dd, <16 x float> %i.df, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.di = shufflevector <32 x float> %i.dg, <32 x float> %i.dh, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dj = shufflevector <16 x float> %i.cv, <16 x float> %i.cx, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec603 = shufflevector <64 x float> %i.di, <64 x float> %i.dj, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x float> %interleaved.vec603, ptr %next.gep591, align 4, !tbaa !41, !alias.scope !215, !noalias !216
  %index.next604 = add nuw i64 %index590, 16      ; 2 uses
  %i.dk = icmp eq i64 %index.next604, %n.vec580
  br i1 %i.dk, label %middle.block605, label %vector.body589, !llvm.loop !193

middle.block605:                                  ; preds = %vector.body589
  %cmp.n606 = icmp eq i64 %n.vec580, %i.ab
  br i1 %cmp.n606, label %._crit_edge, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block605
  %min.epilog.iters.check610 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check610, label %.lr.ph455.preheader, label %vec.epilog.ph611, !prof !45

vec.epilog.ph611:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check608
  %vec.epilog.resume.val612 = phi i64 [ %n.vec580, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check577 ]
  %n.vec613 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.dl = mul nuw nsw i64 %n.vec613, 24
  %i.dm = getelementptr i8, ptr %.1.lcssa, i64 %i.dl ; 2 uses
  %i.dn = shl nuw nsw i64 %n.vec613, 3
  %i.do = getelementptr i8, ptr %.0249.lcssa, i64 %i.dn
  %i.dp = trunc nuw i64 %n.vec613 to i32
  %i.dq = shl i32 %i.dp, 1
  %i.dr = add i32 %.0251.lcssa, %i.dq
  %i.ds = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat615 = shufflevector <1 x i32> %i.ds, <1 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.dt = add nsw <4 x i32> %broadcast.splat615, splat (i32 -1)
  %i.du = sitofp fast <4 x i32> %i.dt to <4 x float>
  %i.dv = sitofp fast <4 x i32> %broadcast.splat615 to <4 x float>
  %i.dw = fadd fast <4 x float> %i.dv, splat (float -1.000000e+00)
  %i.dx = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat617 = shufflevector <1 x i32> %i.dx, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dy = add nsw <4 x i32> %broadcast.splat617, splat (i32 -1)
  %i.dz = sitofp fast <4 x i32> %i.dy to <4 x float>
  %i.ea = sitofp fast <4 x i32> %broadcast.splat617 to <4 x float>
  %i.eb = fadd fast <4 x float> %i.ea, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body622

vec.epilog.vector.body622:                        ; preds = %vec.epilog.vector.body622, %vec.epilog.ph611
  %index623 = phi i64 [ %vec.epilog.resume.val612, %vec.epilog.ph611 ], [ %index.next639, %vec.epilog.vector.body622 ] ; 3 uses
  %i.ec = mul i64 %index623, 24
  %next.gep624 = getelementptr i8, ptr %.1.lcssa, i64 %i.ec
  %i.ed = shl i64 %index623, 3
  %next.gep625 = getelementptr i8, ptr %.0249.lcssa, i64 %i.ed
  %wide.vec626 = load <8 x float>, ptr %next.gep625, align 4, !tbaa !40, !alias.scope !213 ; 2 uses
  %strided.vec627 = shufflevector <8 x float> %wide.vec626, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec628 = shufflevector <8 x float> %wide.vec626, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ee = fmul fast <4 x float> %strided.vec627, splat (float 5.000000e-01)
  %i.ef = fadd fast <4 x float> %i.ee, splat (float 5.000000e-01)
  %i.eg = fmul fast <4 x float> %i.ef, %i.du
  %i.eh = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.eg, <4 x float> zeroinitializer)
  %i.ei = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.eh, <4 x float> %i.dw) ; 2 uses
  %i.ej = fmul fast <4 x float> %strided.vec628, splat (float 5.000000e-01)
  %i.ek = fadd fast <4 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fmul fast <4 x float> %i.ek, %i.dz
  %i.em = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.el, <4 x float> zeroinitializer)
  %i.en = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.em, <4 x float> %i.eb) ; 2 uses
  %i.eo = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ei)
  %i.ep = fptosi <4 x float> %i.eo to <4 x i32>   ; 7 uses
  %i.eq = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.en)
  %i.er = fptosi <4 x float> %i.eq to <4 x i32>   ; 7 uses
  %i.es = add nsw <4 x i32> %i.ep, splat (i32 1)  ; 3 uses
  %i.et = add nsw <4 x i32> %i.er, splat (i32 1)  ; 2 uses
  %i.eu = icmp sgt <4 x i32> %i.ep, splat (i32 -1)
  %i.ev = icmp sgt <4 x i32> %broadcast.splat615, %i.ep
  %i.ew = and <4 x i1> %i.eu, %i.ev               ; 2 uses
  %i.ex = icmp sgt <4 x i32> %i.ep, splat (i32 -2)
  %i.ey = icmp slt <4 x i32> %i.es, %broadcast.splat615
  %i.ez = and <4 x i1> %i.ex, %i.ey               ; 2 uses
  %i.fa = icmp sgt <4 x i32> %i.er, splat (i32 -1)
  %i.fb = icmp sgt <4 x i32> %broadcast.splat617, %i.er
  %i.fc = and <4 x i1> %i.fa, %i.fb               ; 2 uses
  %i.fd = icmp sgt <4 x i32> %i.er, splat (i32 -2)
  %i.fe = icmp slt <4 x i32> %i.et, %broadcast.splat617
  %i.ff = and <4 x i1> %i.fd, %i.fe               ; 2 uses
  %i.fg = and <4 x i1> %i.ew, %i.fc               ; 2 uses
  %i.fh = and <4 x i1> %i.ez, %i.fc               ; 2 uses
  %i.fi = and <4 x i1> %i.ew, %i.ff               ; 2 uses
  %i.fj = and <4 x i1> %i.ez, %i.ff               ; 2 uses
  %i.fk = mul nuw nsw <4 x i32> %broadcast.splat615, %i.er
  %i.fl = add nsw <4 x i32> %i.fk, %i.ep
  %wide.masked.gather629 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fg, <4 x i32> poison), !tbaa !16, !alias.scope !214
  %i.fm = mul nsw <4 x i32> %wide.masked.gather629, %i.fl
  %i.fn = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat655 = shufflevector <1 x i32> %i.fn, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fo = mul nsw <4 x i32> %broadcast.splat655, %i.er
  %i.fp = add nsw <4 x i32> %i.fo, %i.es
  %wide.masked.gather632 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fh, <4 x i32> poison), !tbaa !16, !alias.scope !214
  %i.fq = mul nsw <4 x i32> %i.fp, %wide.masked.gather632
  %i.fr = mul nsw <4 x i32> %broadcast.splat655, %i.et ; 2 uses
  %i.fs = add nsw <4 x i32> %i.fr, %i.ep
  %wide.masked.gather634 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fi, <4 x i32> poison), !tbaa !16, !alias.scope !214
  %i.ft = mul nsw <4 x i32> %i.fs, %wide.masked.gather634
  %i.fu = add nsw <4 x i32> %i.fr, %i.es
  %wide.masked.gather636 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fj, <4 x i32> poison), !tbaa !16, !alias.scope !214
  %i.fv = mul nsw <4 x i32> %i.fu, %wide.masked.gather636
  %i.fw = sitofp fast <4 x i32> %i.ep to <4 x float>
  %i.fx = fsub fast <4 x float> %i.ei, %i.fw
  %i.fy = sitofp fast <4 x i32> %i.er to <4 x float>
  %i.fz = fsub fast <4 x float> %i.en, %i.fy
  %i.ga = shufflevector <4 x i1> %i.fg, <4 x i1> %i.fh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gb = shufflevector <4 x i32> %i.fm, <4 x i32> %i.fq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gc = shufflevector <4 x i1> %i.fi, <4 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gd = shufflevector <4 x i32> %i.ft, <4 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ge = shufflevector <8 x i1> %i.ga, <8 x i1> %i.gc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gf = shufflevector <8 x i32> %i.gb, <8 x i32> %i.gd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gg = bitcast <16 x i32> %i.gf to <16 x float>
  %i.gh = select <16 x i1> %i.ge, <16 x float> %i.gg, <16 x float> splat (float -nan(0x3FFFFF))
  %i.gi = shufflevector <4 x float> %i.fx, <4 x float> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec638 = shufflevector <16 x float> %i.gh, <16 x float> %i.gi, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec638, ptr %next.gep624, align 4, !tbaa !41, !alias.scope !215, !noalias !216
  %index.next639 = add nuw i64 %index623, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next639, %n.vec613
  br i1 %i.gj, label %vec.epilog.middle.block640, label %vec.epilog.vector.body622, !llvm.loop !194

vec.epilog.middle.block640:                       ; preds = %vec.epilog.vector.body622
  %cmp.n641 = icmp eq i64 %n.vec613, %i.ab
  br i1 %cmp.n641, label %._crit_edge, label %.lr.ph455.preheader

.lr.ph455.preheader:                              ; preds = %iter.check607, %vector.memcheck564, %vec.epilog.iter.check608, %vec.epilog.middle.block640
  %.2454.ph = phi ptr [ %.1.lcssa, %iter.check607 ], [ %.1.lcssa, %vector.memcheck564 ], [ %i.ak, %vec.epilog.iter.check608 ], [ %i.dm, %vec.epilog.middle.block640 ]
  %.1250453.ph = phi ptr [ %.0249.lcssa, %iter.check607 ], [ %.0249.lcssa, %vector.memcheck564 ], [ %i.am, %vec.epilog.iter.check608 ], [ %i.do, %vec.epilog.middle.block640 ]
  %.1252452.ph = phi i32 [ %.0251.lcssa, %iter.check607 ], [ %.0251.lcssa, %vector.memcheck564 ], [ %i.ap, %vec.epilog.iter.check608 ], [ %i.dr, %vec.epilog.middle.block640 ]
  br label %.lr.ph455

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.ka, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.jz, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.kb, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.gk = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.gm = load <8 x float>, ptr %i.gl, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gn = load i32, ptr %i.n, align 4, !tbaa !37
  %i.go = sitofp fast i32 %i.gn to float
  %i.gp = insertelement <8 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <8 x float> %i.gp, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.gr = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.gs = fadd fast <8 x float> %i.gr, splat (float 5.000000e-01)
  %i.gt = fadd fast <8 x float> %i.gq, splat (float -1.000000e+00) ; 2 uses
  %i.gu = fmul fast <8 x float> %i.gt, %i.gs
  %i.gv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gu, <8 x float> zeroinitializer)
  %i.gw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gt, <8 x float> nofpclass(nan inf) %i.gv) ; 2 uses
  %i.gx = load i32, ptr %i.o, align 8, !tbaa !38
  %i.gy = sitofp fast i32 %i.gx to float
  %i.gz = insertelement <8 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <8 x float> %i.gz, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.hb = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.hc = fadd fast <8 x float> %i.hb, splat (float 5.000000e-01)
  %i.hd = fadd fast <8 x float> %i.ha, splat (float -1.000000e+00) ; 2 uses
  %i.he = fmul fast <8 x float> %i.hd, %i.hc
  %i.hf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.he, <8 x float> zeroinitializer)
  %i.hg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hd, <8 x float> nofpclass(nan inf) %i.hf) ; 2 uses
  %i.hh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gw, i32 1) ; 5 uses
  %i.hi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hg, i32 1) ; 5 uses
  %i.hj = fadd fast <8 x float> %i.hh, splat (float 1.000000e+00) ; 2 uses
  %i.hk = fadd fast <8 x float> %i.hi, splat (float 1.000000e+00) ; 2 uses
  %i.hl = fcmp fast ogt <8 x float> %i.hh, splat (float -1.000000e+00)
  %i.hm = fcmp fast ogt <8 x float> %i.gq, %i.hh
  %i.hn = and <8 x i1> %i.hl, %i.hm               ; 2 uses
  %i.ho = fcmp fast ogt <8 x float> %i.hj, splat (float -1.000000e+00)
  %i.hp = fcmp fast ogt <8 x float> %i.gq, %i.hj
  %i.hq = and <8 x i1> %i.ho, %i.hp               ; 2 uses
  %i.hr = fcmp fast ogt <8 x float> %i.hi, splat (float -1.000000e+00)
  %i.hs = fcmp fast ogt <8 x float> %i.ha, %i.hi
  %i.ht = and <8 x i1> %i.hr, %i.hs
  %i.hu = sext <8 x i1> %i.ht to <8 x i32>
  %i.hv = fcmp fast ogt <8 x float> %i.hk, splat (float -1.000000e+00)
  %i.hw = fcmp fast ogt <8 x float> %i.ha, %i.hk
  %i.hx = and <8 x i1> %i.hv, %i.hw               ; 2 uses
  %i.hy = bitcast <8 x i32> %i.hu to <8 x float>  ; 2 uses
  %i.hz = select <8 x i1> %i.hn, <8 x float> %i.hy, <8 x float> zeroinitializer
  %i.ia = select <8 x i1> %i.hq, <8 x float> %i.hy, <8 x float> zeroinitializer
  %i.ib = and <8 x i1> %i.hn, %i.hx
  %i.ic = and <8 x i1> %i.hq, %i.hx
  %i.id = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) %i.hh)
  %i.ie = load i32, ptr %i.p, align 8, !tbaa !16
  %i.if = sitofp fast i32 %i.ie to float
  %i.ig = insertelement <8 x float> poison, float %i.if, i64 0
  %i.ih = shufflevector <8 x float> %i.ig, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ii = fmul fast <8 x float> %i.ih, %i.id      ; 3 uses
  %i.ij = fadd fast <8 x float> %i.ii, %i.ih
  %i.ik = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) %i.ih, <8 x float> nofpclass(nan inf) %i.ii) ; 2 uses
  %i.il = fadd fast <8 x float> %i.ik, %i.ih
  %i.im = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ii, <8 x float> nofpclass(nan inf) %i.hz)
  %i.in = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ij, <8 x float> nofpclass(nan inf) %i.ia)
  %i.io = select <8 x i1> %i.ib, <8 x float> %i.ik, <8 x float> splat (float -1.000000e+00)
  %i.ip = select <8 x i1> %i.ic, <8 x float> %i.il, <8 x float> splat (float -1.000000e+00)
  %i.iq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.im) ; 2 uses
  %i.ir = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.in) ; 2 uses
  %i.is = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.io) ; 2 uses
  %i.it = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ip) ; 2 uses
  %i.iu = fsub fast <8 x float> %i.gw, %i.hh      ; 2 uses
  %i.iv = fsub fast <8 x float> %i.hg, %i.hi      ; 2 uses
  %i.iw = shufflevector <8 x i32> %i.iq, <8 x i32> %i.ir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ix = bitcast <8 x i32> %i.iw to <8 x float>
  %i.iy = shufflevector <8 x i32> %i.iq, <8 x i32> %i.ir, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>
  %i.ja = shufflevector <8 x i32> %i.is, <8 x i32> %i.it, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jb = bitcast <8 x i32> %i.ja to <8 x float>
  %i.jc = shufflevector <8 x i32> %i.is, <8 x i32> %i.it, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jd = bitcast <8 x i32> %i.jc to <8 x float>
  %i.je = shufflevector <8 x float> %i.iu, <8 x float> %i.iv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jf = shufflevector <8 x float> %i.iu, <8 x float> %i.iv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jg = shufflevector <8 x i32> %i.iw, <8 x i32> %i.ja, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jh = bitcast <8 x i32> %i.jg to <8 x float>  ; 2 uses
  %i.ji = shufflevector <8 x float> %i.je, <8 x float> %i.ix, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jj = shufflevector <8 x float> %i.jb, <8 x float> %i.je, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jk = shufflevector <8 x i32> %i.iy, <8 x i32> %i.jc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jl = bitcast <8 x i32> %i.jk to <8 x float>  ; 2 uses
  %i.jm = shufflevector <8 x float> %i.jf, <8 x float> %i.iz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jn = shufflevector <8 x float> %i.jd, <8 x float> %i.jf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jo = shufflevector <8 x float> %i.jh, <8 x float> %i.ji, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jp = shufflevector <8 x float> %i.jj, <8 x float> %i.jl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jq = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jr = shufflevector <8 x float> %i.jh, <8 x float> %i.ji, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.js = shufflevector <8 x float> %i.jj, <8 x float> %i.jl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jt = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.jo, ptr %.1447, align 1, !tbaa !41
  %i.ju = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.jp, ptr %i.ju, align 1, !tbaa !41
  %i.jv = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.jq, ptr %i.jv, align 1, !tbaa !41
  %i.jw = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.jr, ptr %i.jw, align 1, !tbaa !41
  %i.jx = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.js, ptr %i.jx, align 1, !tbaa !41
  %i.jy = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.jt, ptr %i.jy, align 1, !tbaa !41
  %i.jz = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.kb = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.kc = or disjoint i32 %i.kb, 15
  %i.kd = icmp slt i32 %i.kc, %i.e
  br i1 %i.kd, label %.lr.ph448, label %.preheader, !llvm.loop !195

.lr.ph455:                                        ; preds = %.lr.ph455.preheader, %bb.h
  %.2454 = phi ptr [ %i.mq, %bb.h ], [ %.2454.ph, %.lr.ph455.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.mp, %bb.h ], [ %.1250453.ph, %.lr.ph455.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.mr, %bb.h ], [ %.1252452.ph, %.lr.ph455.preheader ]
  %i.ke = load <2 x float>, ptr %.1250453, align 4, !tbaa !40
  %i.kf = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 5 uses
  %i.kg = fmul fast <2 x float> %i.ke, splat (float 5.000000e-01)
  %i.kh = fadd fast <2 x float> %i.kg, splat (float 5.000000e-01)
  %i.ki = add nsw <2 x i32> %i.kf, splat (i32 -1)
  %i.kj = sitofp <2 x i32> %i.ki to <2 x float>
  %i.kk = fmul fast <2 x float> %i.kh, %i.kj
  %i.kl = sitofp <2 x i32> %i.kf to <2 x float>
  %i.km = fadd fast <2 x float> %i.kl, splat (float -1.000000e+00)
  %i.kn = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kk, <2 x float> zeroinitializer)
  %i.ko = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.kn, <2 x float> %i.km) ; 2 uses
  %i.kp = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ko)
  %i.kq = fptosi <2 x float> %i.kp to <2 x i32>   ; 5 uses
  %i.kr = extractelement <2 x i32> %i.kq, i64 0   ; 4 uses
  %i.ks = add nsw i32 %i.kr, 1                    ; 3 uses
  %i.kt = extractelement <2 x i32> %i.kq, i64 1   ; 4 uses
  %i.ku = add nsw i32 %i.kt, 1                    ; 3 uses
  %i.kv = icmp sgt i32 %i.kr, -2
  %i.kw = extractelement <2 x i32> %i.kf, i64 0   ; 2 uses
  %i.kx = icmp slt i32 %i.ks, %i.kw
  %i.ky = and i1 %i.kv, %i.kx                     ; 2 uses
  %i.kz = icmp sgt <2 x i32> %i.kq, splat (i32 -1)
  %i.la = icmp sgt <2 x i32> %i.kf, %i.kq
  %i.lb = and <2 x i1> %i.kz, %i.la               ; 2 uses
  %i.lc = icmp sgt i32 %i.kt, -2
  %i.ld = extractelement <2 x i32> %i.kf, i64 1
  %i.le = icmp slt i32 %i.ku, %i.ld
  %i.lf = and i1 %i.lc, %i.le                     ; 2 uses
  %i.lg = extractelement <2 x i1> %i.lb, i64 0    ; 2 uses
  %i.lh = extractelement <2 x i1> %i.lb, i64 1    ; 2 uses
  %i.li = and i1 %i.lg, %i.lh
  %i.lj = and i1 %i.ky, %i.lh
  %i.lk = and i1 %i.lg, %i.lf
  %i.ll = and i1 %i.ky, %i.lf
  %i.lm = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.li, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.ln = mul nuw nsw i32 %i.kw, %i.kt
  %i.lo = add nsw i32 %i.ln, %i.kr
  %i.lp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.lq = mul nsw i32 %i.lp, %i.lo
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.lr = phi i32 [ %i.lq, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.lr, ptr %.2454, align 4, !tbaa !23
  br i1 %i.lj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ls = load i32, ptr %i.n, align 4, !tbaa !37
  %i.lt = mul nsw i32 %i.ls, %i.kt
  %i.lu = add nsw i32 %i.lt, %i.ks
  %i.lv = load i32, ptr %i.p, align 8, !tbaa !16
  %i.lw = mul nsw i32 %i.lu, %i.lv
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.lx = phi i32 [ %i.lw, %bb.c ], [ -1, %bb.b ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !23
  br i1 %i.lk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.lz = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ma = mul nsw i32 %i.lz, %i.ku
  %i.mb = add nsw i32 %i.ma, %i.kr
  %i.mc = load i32, ptr %i.p, align 8, !tbaa !16
  %i.md = mul nsw i32 %i.mb, %i.mc
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.me = phi i32 [ %i.md, %bb.e ], [ -1, %bb.d ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !23
  br i1 %i.ll, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.mg = load i32, ptr %i.n, align 4, !tbaa !37
  %i.mh = mul nsw i32 %i.mg, %i.ku
  %i.mi = add nsw i32 %i.mh, %i.ks
  %i.mj = load i32, ptr %i.p, align 8, !tbaa !16
  %i.mk = mul nsw i32 %i.mi, %i.mj
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ml = phi i32 [ %i.mk, %bb.g ], [ -1, %bb.f ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !23
  %i.mn = sitofp <2 x i32> %i.kq to <2 x float>
  %i.mo = fsub fast <2 x float> %i.ko, %i.mn
  store <2 x float> %i.mo, ptr %i.lm, align 4, !tbaa !40
  %i.mp = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.mr = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.ms = icmp slt i32 %i.mr, %i.e
  br i1 %i.ms, label %.lr.ph455, label %._crit_edge, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.h, %middle.block605, %vec.epilog.middle.block640, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dm, %vec.epilog.middle.block640 ], [ %i.ak, %middle.block605 ], [ %i.mq, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mt = load i32, ptr %i.h, align 8, !tbaa !17
  %i.mu = sext i32 %i.mt to i64
  %i.mv = icmp slt i64 %indvars.iv.next, %i.mu
  br i1 %i.mv, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !197

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.mw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !217 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.bl = fmul fast <16 x float> %i.bk, %i.av
  %i.bm = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bl)
  %i.bn = fsub fast <16 x float> %i.bm, %i.av
  %i.bo = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bn)
  %i.bp = fsub fast <16 x float> %i.aw, %i.bo
  %i.bq = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bp, <16 x float> zeroinitializer)
  %i.br = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bq, <16 x float> %i.ax) ; 2 uses
  %i.bs = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bi)
  %i.bt = fptosi <16 x float> %i.bs to <16 x i32> ; 7 uses
  %i.bu = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.br)
  %i.bv = fptosi <16 x float> %i.bu to <16 x i32> ; 7 uses
  %i.bw = add nsw <16 x i32> %i.bt, splat (i32 1) ; 3 uses
  %i.bx = add nsw <16 x i32> %i.bv, splat (i32 1) ; 2 uses
  %i.by = icmp sgt <16 x i32> %i.bt, splat (i32 -1)
  %i.bz = icmp sgt <16 x i32> %broadcast.splat589, %i.bt
  %i.ca = and <16 x i1> %i.by, %i.bz              ; 2 uses
  %i.cb = icmp sgt <16 x i32> %i.bt, splat (i32 -2)
  %i.cc = icmp slt <16 x i32> %i.bw, %broadcast.splat589
  %i.cd = and <16 x i1> %i.cb, %i.cc              ; 2 uses
  %i.ce = icmp sgt <16 x i32> %i.bv, splat (i32 -1)
  %i.cf = icmp sgt <16 x i32> %broadcast.splat591, %i.bv
  %i.cg = and <16 x i1> %i.ce, %i.cf              ; 2 uses
  %i.ch = icmp sgt <16 x i32> %i.bv, splat (i32 -2)
  %i.ci = icmp slt <16 x i32> %i.bx, %broadcast.splat591
  %i.cj = and <16 x i1> %i.ch, %i.ci              ; 2 uses
  %i.ck = and <16 x i1> %i.ca, %i.cg              ; 2 uses
  %i.cl = and <16 x i1> %i.cd, %i.cg              ; 2 uses
  %i.cm = and <16 x i1> %i.ca, %i.cj              ; 2 uses
  %i.cn = and <16 x i1> %i.cd, %i.cj              ; 2 uses
  %i.co = mul nuw nsw <16 x i32> %broadcast.splat589, %i.bv
  %i.cp = add nsw <16 x i32> %i.co, %i.bt
  %wide.masked.gather601 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat595, <16 x i1> %i.ck, <16 x i32> poison), !tbaa !16, !alias.scope !253
  %i.cq = mul nsw <16 x i32> %wide.masked.gather601, %i.cp
  %i.cr = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat659 = shufflevector <1 x i32> %i.cr, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cs = mul nsw <16 x i32> %broadcast.splat659, %i.bv
  %i.ct = add nsw <16 x i32> %i.cs, %i.bw
  %wide.masked.gather604 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat595, <16 x i1> %i.cl, <16 x i32> poison), !tbaa !16, !alias.scope !253
  %i.cu = mul nsw <16 x i32> %i.ct, %wide.masked.gather604
  %i.cv = mul nsw <16 x i32> %broadcast.splat659, %i.bx ; 2 uses
  %i.cw = add nsw <16 x i32> %i.cv, %i.bt
  %wide.masked.gather606 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat595, <16 x i1> %i.cm, <16 x i32> poison), !tbaa !16, !alias.scope !253
  %i.cx = mul nsw <16 x i32> %i.cw, %wide.masked.gather606
  %i.cy = add nsw <16 x i32> %i.cv, %i.bw
  %wide.masked.gather608 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat595, <16 x i1> %i.cn, <16 x i32> poison), !tbaa !16, !alias.scope !253
  %i.cz = mul nsw <16 x i32> %i.cy, %wide.masked.gather608
  %i.da = sitofp fast <16 x i32> %i.bt to <16 x float>
  %i.db = fsub fast <16 x float> %i.bi, %i.da
  %i.dc = sitofp fast <16 x i32> %i.bv to <16 x float>
  %i.dd = fsub fast <16 x float> %i.br, %i.dc
  %i.de = bitcast <16 x i32> %i.cq to <16 x float>
  %i.df = select <16 x i1> %i.ck, <16 x float> %i.de, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dg = bitcast <16 x i32> %i.cu to <16 x float>
  %i.dh = select <16 x i1> %i.cl, <16 x float> %i.dg, <16 x float> splat (float -nan(0x3FFFFF))
  %i.di = bitcast <16 x i32> %i.cx to <16 x float>
  %i.dj = select <16 x i1> %i.cm, <16 x float> %i.di, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dk = bitcast <16 x i32> %i.cz to <16 x float>
  %i.dl = select <16 x i1> %i.cn, <16 x float> %i.dk, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dm = shufflevector <16 x float> %i.df, <16 x float> %i.dh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dn = shufflevector <16 x float> %i.dj, <16 x float> %i.dl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.do = shufflevector <32 x float> %i.dm, <32 x float> %i.dn, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dp = shufflevector <16 x float> %i.db, <16 x float> %i.dd, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec610 = shufflevector <64 x float> %i.do, <64 x float> %i.dp, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x float> %interleaved.vec610, ptr %next.gep598, align 4, !tbaa !41, !alias.scope !254, !noalias !255
  %index.next611 = add nuw i64 %index597, 16      ; 2 uses
  %i.dq = icmp eq i64 %index.next611, %n.vec587
  br i1 %i.dq, label %middle.block612, label %vector.body596, !llvm.loop !232

middle.block612:                                  ; preds = %vector.body596
  %cmp.n613 = icmp eq i64 %n.vec587, %i.ab
  br i1 %cmp.n613, label %._crit_edge, label %vec.epilog.iter.check615

vec.epilog.iter.check615:                         ; preds = %middle.block612
  %min.epilog.iters.check617 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check617, label %.lr.ph462.preheader, label %vec.epilog.ph618, !prof !45

vec.epilog.ph618:                                 ; preds = %vector.main.loop.iter.check584, %vec.epilog.iter.check615
  %vec.epilog.resume.val619 = phi i64 [ %n.vec587, %vec.epilog.iter.check615 ], [ 0, %vector.main.loop.iter.check584 ]
  %n.vec620 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.dr = mul nuw nsw i64 %n.vec620, 24
  %i.ds = getelementptr i8, ptr %.1.lcssa, i64 %i.dr ; 2 uses
  %i.dt = shl nuw nsw i64 %n.vec620, 3
  %i.du = getelementptr i8, ptr %.0249.lcssa, i64 %i.dt
  %i.dv = trunc nuw i64 %n.vec620 to i32
  %i.dw = shl i32 %i.dv, 1
  %i.dx = add i32 %.0251.lcssa, %i.dw
  %i.dy = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat622 = shufflevector <1 x i32> %i.dy, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dz = sitofp fast <4 x i32> %broadcast.splat622 to <4 x float> ; 4 uses
  %i.ea = fadd fast <4 x float> %i.dz, splat (float -5.000000e-01)
  %i.eb = fadd fast <4 x float> %i.dz, splat (float -1.000000e+00)
  %i.ec = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat624 = shufflevector <1 x i32> %i.ec, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ed = sitofp fast <4 x i32> %broadcast.splat624 to <4 x float> ; 4 uses
  %i.ee = fadd fast <4 x float> %i.ed, splat (float -5.000000e-01)
  %i.ef = fadd fast <4 x float> %i.ed, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body629

vec.epilog.vector.body629:                        ; preds = %vec.epilog.vector.body629, %vec.epilog.ph618
  %index630 = phi i64 [ %vec.epilog.resume.val619, %vec.epilog.ph618 ], [ %index.next646, %vec.epilog.vector.body629 ] ; 3 uses
  %i.eg = mul i64 %index630, 24
  %next.gep631 = getelementptr i8, ptr %.1.lcssa, i64 %i.eg
  %i.eh = shl i64 %index630, 3
  %next.gep632 = getelementptr i8, ptr %.0249.lcssa, i64 %i.eh
  %wide.vec633 = load <8 x float>, ptr %next.gep632, align 4, !tbaa !40, !alias.scope !252 ; 2 uses
  %strided.vec634 = shufflevector <8 x float> %wide.vec633, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec635 = shufflevector <8 x float> %wide.vec633, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ei = fmul fast <4 x float> %strided.vec634, splat (float 5.000000e-01)
  %i.ej = fadd fast <4 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = fmul fast <4 x float> %i.ej, %i.dz
  %i.el = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ek)
  %i.em = fsub fast <4 x float> %i.el, %i.dz
  %i.en = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.em)
  %i.eo = fsub fast <4 x float> %i.ea, %i.en
  %i.ep = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.eo, <4 x float> zeroinitializer)
  %i.eq = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ep, <4 x float> %i.eb) ; 2 uses
  %i.er = fmul fast <4 x float> %strided.vec635, splat (float 5.000000e-01)
  %i.es = fadd fast <4 x float> %i.er, splat (float 5.000000e-01)
  %i.et = fmul fast <4 x float> %i.es, %i.ed
  %i.eu = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.et)
  %i.ev = fsub fast <4 x float> %i.eu, %i.ed
  %i.ew = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ev)
  %i.ex = fsub fast <4 x float> %i.ee, %i.ew
  %i.ey = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ex, <4 x float> zeroinitializer)
  %i.ez = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ey, <4 x float> %i.ef) ; 2 uses
  %i.fa = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.eq)
  %i.fb = fptosi <4 x float> %i.fa to <4 x i32>   ; 7 uses
  %i.fc = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ez)
  %i.fd = fptosi <4 x float> %i.fc to <4 x i32>   ; 7 uses
  %i.fe = add nsw <4 x i32> %i.fb, splat (i32 1)  ; 3 uses
  %i.ff = add nsw <4 x i32> %i.fd, splat (i32 1)  ; 2 uses
  %i.fg = icmp sgt <4 x i32> %i.fb, splat (i32 -1)
  %i.fh = icmp sgt <4 x i32> %broadcast.splat622, %i.fb
  %i.fi = and <4 x i1> %i.fg, %i.fh               ; 2 uses
  %i.fj = icmp sgt <4 x i32> %i.fb, splat (i32 -2)
  %i.fk = icmp slt <4 x i32> %i.fe, %broadcast.splat622
  %i.fl = and <4 x i1> %i.fj, %i.fk               ; 2 uses
  %i.fm = icmp sgt <4 x i32> %i.fd, splat (i32 -1)
  %i.fn = icmp sgt <4 x i32> %broadcast.splat624, %i.fd
  %i.fo = and <4 x i1> %i.fm, %i.fn               ; 2 uses
  %i.fp = icmp sgt <4 x i32> %i.fd, splat (i32 -2)
  %i.fq = icmp slt <4 x i32> %i.ff, %broadcast.splat624
  %i.fr = and <4 x i1> %i.fp, %i.fq               ; 2 uses
  %i.fs = and <4 x i1> %i.fi, %i.fo               ; 2 uses
  %i.ft = and <4 x i1> %i.fl, %i.fo               ; 2 uses
  %i.fu = and <4 x i1> %i.fi, %i.fr               ; 2 uses
  %i.fv = and <4 x i1> %i.fl, %i.fr               ; 2 uses
  %i.fw = mul nuw nsw <4 x i32> %broadcast.splat622, %i.fd
  %i.fx = add nsw <4 x i32> %i.fw, %i.fb
  %wide.masked.gather636 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat628, <4 x i1> %i.fs, <4 x i32> poison), !tbaa !16, !alias.scope !253
  %i.fy = mul nsw <4 x i32> %wide.masked.gather636, %i.fx
  %i.fz = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat662 = shufflevector <1 x i32> %i.fz, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ga = mul nsw <4 x i32> %broadcast.splat662, %i.fd
  %i.gb = add nsw <4 x i32> %i.ga, %i.fe
  %wide.masked.gather639 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat628, <4 x i1> %i.ft, <4 x i32> poison), !tbaa !16, !alias.scope !253
  %i.gc = mul nsw <4 x i32> %i.gb, %wide.masked.gather639
  %i.gd = mul nsw <4 x i32> %broadcast.splat662, %i.ff ; 2 uses
  %i.ge = add nsw <4 x i32> %i.gd, %i.fb
  %wide.masked.gather641 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat628, <4 x i1> %i.fu, <4 x i32> poison), !tbaa !16, !alias.scope !253
  %i.gf = mul nsw <4 x i32> %i.ge, %wide.masked.gather641
  %i.gg = add nsw <4 x i32> %i.gd, %i.fe
  %wide.masked.gather643 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat628, <4 x i1> %i.fv, <4 x i32> poison), !tbaa !16, !alias.scope !253
  %i.gh = mul nsw <4 x i32> %i.gg, %wide.masked.gather643
  %i.gi = sitofp fast <4 x i32> %i.fb to <4 x float>
  %i.gj = fsub fast <4 x float> %i.eq, %i.gi
  %i.gk = sitofp fast <4 x i32> %i.fd to <4 x float>
  %i.gl = fsub fast <4 x float> %i.ez, %i.gk
  %i.gm = shufflevector <4 x i1> %i.fs, <4 x i1> %i.ft, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gn = shufflevector <4 x i32> %i.fy, <4 x i32> %i.gc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.go = shufflevector <4 x i1> %i.fu, <4 x i1> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gp = shufflevector <4 x i32> %i.gf, <4 x i32> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gq = shufflevector <8 x i1> %i.gm, <8 x i1> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gr = shufflevector <8 x i32> %i.gn, <8 x i32> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gs = bitcast <16 x i32> %i.gr to <16 x float>
  %i.gt = select <16 x i1> %i.gq, <16 x float> %i.gs, <16 x float> splat (float -nan(0x3FFFFF))
  %i.gu = shufflevector <4 x float> %i.gj, <4 x float> %i.gl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec645 = shufflevector <16 x float> %i.gt, <16 x float> %i.gu, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec645, ptr %next.gep631, align 4, !tbaa !41, !alias.scope !254, !noalias !255
  %index.next646 = add nuw i64 %index630, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next646, %n.vec620
  br i1 %i.gv, label %vec.epilog.middle.block647, label %vec.epilog.vector.body629, !llvm.loop !233

vec.epilog.middle.block647:                       ; preds = %vec.epilog.vector.body629
  %cmp.n648 = icmp eq i64 %n.vec620, %i.ab
  br i1 %cmp.n648, label %._crit_edge, label %.lr.ph462.preheader

.lr.ph462.preheader:                              ; preds = %iter.check614, %vector.memcheck571, %vec.epilog.iter.check615, %vec.epilog.middle.block647
  %.2461.ph = phi ptr [ %.1.lcssa, %iter.check614 ], [ %.1.lcssa, %vector.memcheck571 ], [ %i.ak, %vec.epilog.iter.check615 ], [ %i.ds, %vec.epilog.middle.block647 ]
  %.1250460.ph = phi ptr [ %.0249.lcssa, %iter.check614 ], [ %.0249.lcssa, %vector.memcheck571 ], [ %i.am, %vec.epilog.iter.check615 ], [ %i.du, %vec.epilog.middle.block647 ]
  %.1252459.ph = phi i32 [ %.0251.lcssa, %iter.check614 ], [ %.0251.lcssa, %vector.memcheck571 ], [ %i.ap, %vec.epilog.iter.check615 ], [ %i.dx, %vec.epilog.middle.block647 ]
  br label %.lr.ph462

.lr.ph455:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph455
  %.1454 = phi ptr [ %i.ky, %.lr.ph455 ], [ %.0465, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249453 = phi ptr [ %i.kx, %.lr.ph455 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251452 = phi i32 [ %i.kz, %.lr.ph455 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.gw = load <8 x float>, ptr %.0249453, align 1, !tbaa !41 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0249453, i64 32
  %i.gy = load <8 x float>, ptr %i.gx, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.gw, <8 x float> %i.gy, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.gw, <8 x float> %i.gy, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gz = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ha = sitofp fast i32 %i.gz to float
  %i.hb = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.hd = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.he = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hd, <8 x float> nofpclass(nan inf) %i.hc, <8 x float> splat (float -1.000000e+00))
  %i.hf = fmul fast <8 x float> %i.he, splat (float 5.000000e-01)
  %i.hg = fadd fast <8 x float> %i.hc, splat (float -1.000000e+00)
  %i.hh = fadd fast <8 x float> %i.hf, splat (float 5.000000e-01)
  %i.hi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hh)
  %i.hj = fsub fast <8 x float> %i.hi, %i.hc
  %i.hk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hj)
  %i.hl = fadd fast <8 x float> %i.hc, splat (float -5.000000e-01)
  %i.hm = fsub fast <8 x float> %i.hl, %i.hk
  %i.hn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> zeroinitializer)
  %i.ho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hg, <8 x float> nofpclass(nan inf) %i.hn) ; 2 uses
  %i.hp = load i32, ptr %i.o, align 8, !tbaa !38
  %i.hq = sitofp fast i32 %i.hp to float
  %i.hr = insertelement <8 x float> poison, float %i.hq, i64 0
  %i.hs = shufflevector <8 x float> %i.hr, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ht = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.hu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ht, <8 x float> nofpclass(nan inf) %i.hs, <8 x float> splat (float -1.000000e+00))
  %i.hv = fmul fast <8 x float> %i.hu, splat (float 5.000000e-01)
  %i.hw = fadd fast <8 x float> %i.hs, splat (float -1.000000e+00)
  %i.hx = fadd fast <8 x float> %i.hv, splat (float 5.000000e-01)
  %i.hy = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hx)
  %i.hz = fsub fast <8 x float> %i.hy, %i.hs
  %i.ia = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hz)
  %i.ib = fadd fast <8 x float> %i.hs, splat (float -5.000000e-01)
  %i.ic = fsub fast <8 x float> %i.ib, %i.ia
  %i.id = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ic, <8 x float> zeroinitializer)
  %i.ie = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %i.id) ; 2 uses
  %i.if = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ho, i32 1) ; 5 uses
  %i.ig = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ie, i32 1) ; 5 uses
  %i.ih = fadd fast <8 x float> %i.if, splat (float 1.000000e+00) ; 2 uses
  %i.ii = fadd fast <8 x float> %i.ig, splat (float 1.000000e+00) ; 2 uses
  %i.ij = fcmp fast ogt <8 x float> %i.if, splat (float -1.000000e+00)
  %i.ik = fcmp fast ogt <8 x float> %i.hc, %i.if
  %i.il = and <8 x i1> %i.ij, %i.ik               ; 2 uses
  %i.im = fcmp fast ogt <8 x float> %i.ih, splat (float -1.000000e+00)
  %i.in = fcmp fast ogt <8 x float> %i.hc, %i.ih
  %i.io = and <8 x i1> %i.im, %i.in               ; 2 uses
  %i.ip = fcmp fast ogt <8 x float> %i.ig, splat (float -1.000000e+00)
  %i.iq = fcmp fast ogt <8 x float> %i.hs, %i.ig
  %i.ir = and <8 x i1> %i.ip, %i.iq
  %i.is = sext <8 x i1> %i.ir to <8 x i32>
  %i.it = fcmp fast ogt <8 x float> %i.ii, splat (float -1.000000e+00)
  %i.iu = fcmp fast ogt <8 x float> %i.hs, %i.ii
  %i.iv = and <8 x i1> %i.it, %i.iu               ; 2 uses
  %i.iw = bitcast <8 x i32> %i.is to <8 x float>  ; 2 uses
  %i.ix = select <8 x i1> %i.il, <8 x float> %i.iw, <8 x float> zeroinitializer
  %i.iy = select <8 x i1> %i.io, <8 x float> %i.iw, <8 x float> zeroinitializer
  %i.iz = and <8 x i1> %i.il, %i.iv
  %i.ja = and <8 x i1> %i.io, %i.iv
  %i.jb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ig, <8 x float> nofpclass(nan inf) %i.hc, <8 x float> nofpclass(nan inf) %i.if)
  %i.jc = load i32, ptr %i.p, align 8, !tbaa !16
  %i.jd = sitofp fast i32 %i.jc to float
  %i.je = insertelement <8 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.jg = fmul fast <8 x float> %i.jf, %i.jb      ; 3 uses
  %i.jh = fadd fast <8 x float> %i.jg, %i.jf
  %i.ji = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hc, <8 x float> nofpclass(nan inf) %i.jf, <8 x float> nofpclass(nan inf) %i.jg) ; 2 uses
  %i.jj = fadd fast <8 x float> %i.ji, %i.jf
  %i.jk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.jg, <8 x float> nofpclass(nan inf) %i.ix)
  %i.jl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.jh, <8 x float> nofpclass(nan inf) %i.iy)
  %i.jm = select <8 x i1> %i.iz, <8 x float> %i.ji, <8 x float> splat (float -1.000000e+00)
  %i.jn = select <8 x i1> %i.ja, <8 x float> %i.jj, <8 x float> splat (float -1.000000e+00)
  %i.jo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jk) ; 2 uses
  %i.jp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jl) ; 2 uses
  %i.jq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jm) ; 2 uses
  %i.jr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jn) ; 2 uses
  %i.js = fsub fast <8 x float> %i.ho, %i.if      ; 2 uses
  %i.jt = fsub fast <8 x float> %i.ie, %i.ig      ; 2 uses
  %i.ju = shufflevector <8 x i32> %i.jo, <8 x i32> %i.jp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jv = bitcast <8 x i32> %i.ju to <8 x float>
  %i.jw = shufflevector <8 x i32> %i.jo, <8 x i32> %i.jp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jx = bitcast <8 x i32> %i.jw to <8 x float>
  %i.jy = shufflevector <8 x i32> %i.jq, <8 x i32> %i.jr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jz = bitcast <8 x i32> %i.jy to <8 x float>
  %i.ka = shufflevector <8 x i32> %i.jq, <8 x i32> %i.jr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kb = bitcast <8 x i32> %i.ka to <8 x float>
  %i.kc = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kd = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ke = shufflevector <8 x i32> %i.ju, <8 x i32> %i.jy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kf = bitcast <8 x i32> %i.ke to <8 x float>  ; 2 uses
  %i.kg = shufflevector <8 x float> %i.kc, <8 x float> %i.jv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kh = shufflevector <8 x float> %i.jz, <8 x float> %i.kc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ki = shufflevector <8 x i32> %i.jw, <8 x i32> %i.ka, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kj = bitcast <8 x i32> %i.ki to <8 x float>  ; 2 uses
  %i.kk = shufflevector <8 x float> %i.kd, <8 x float> %i.jx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kl = shufflevector <8 x float> %i.kb, <8 x float> %i.kd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.km = shufflevector <8 x float> %i.kf, <8 x float> %i.kg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kn = shufflevector <8 x float> %i.kh, <8 x float> %i.kj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ko = shufflevector <8 x float> %i.kk, <8 x float> %i.kl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kp = shufflevector <8 x float> %i.kf, <8 x float> %i.kg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kq = shufflevector <8 x float> %i.kh, <8 x float> %i.kj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kr = shufflevector <8 x float> %i.kk, <8 x float> %i.kl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.km, ptr %.1454, align 1, !tbaa !41
  %i.ks = getelementptr inbounds nuw i8, ptr %.1454, i64 32
  store <8 x float> %i.kn, ptr %i.ks, align 1, !tbaa !41
  %i.kt = getelementptr inbounds nuw i8, ptr %.1454, i64 64
  store <8 x float> %i.ko, ptr %i.kt, align 1, !tbaa !41
  %i.ku = getelementptr inbounds nuw i8, ptr %.1454, i64 96
  store <8 x float> %i.kp, ptr %i.ku, align 1, !tbaa !41
  %i.kv = getelementptr inbounds nuw i8, ptr %.1454, i64 128
  store <8 x float> %i.kq, ptr %i.kv, align 1, !tbaa !41
  %i.kw = getelementptr inbounds nuw i8, ptr %.1454, i64 160
  store <8 x float> %i.kr, ptr %i.kw, align 1, !tbaa !41
  %i.kx = getelementptr inbounds nuw i8, ptr %.0249453, i64 64 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1454, i64 192 ; 2 uses
  %i.kz = add nuw nsw i32 %.0251452, 16           ; 2 uses
  %i.la = or disjoint i32 %i.kz, 15
  %i.lb = icmp slt i32 %i.la, %i.e
  br i1 %i.lb, label %.lr.ph455, label %.preheader, !llvm.loop !234

.lr.ph462:                                        ; preds = %.lr.ph462.preheader, %bb.h
  %.2461 = phi ptr [ %i.nr, %bb.h ], [ %.2461.ph, %.lr.ph462.preheader ] ; 6 uses
  %.1250460 = phi ptr [ %i.nq, %bb.h ], [ %.1250460.ph, %.lr.ph462.preheader ] ; 2 uses
  %.1252459 = phi i32 [ %i.ns, %bb.h ], [ %.1252459.ph, %.lr.ph462.preheader ]
  %i.lc = load <2 x float>, ptr %.1250460, align 4, !tbaa !40
  %i.ld = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.le = sitofp <2 x i32> %i.ld to <2 x float>   ; 4 uses
  %i.lf = fmul fast <2 x float> %i.lc, splat (float 5.000000e-01)
  %i.lg = fadd fast <2 x float> %i.lf, splat (float 5.000000e-01)
  %i.lh = fmul fast <2 x float> %i.lg, %i.le
  %i.li = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lh)
  %i.lj = fsub fast <2 x float> %i.li, %i.le
  %i.lk = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lj)
  %i.ll = fadd fast <2 x float> %i.le, splat (float -5.000000e-01)
  %i.lm = fsub fast <2 x float> %i.ll, %i.lk
  %i.ln = fadd fast <2 x float> %i.le, splat (float -1.000000e+00)
  %i.lo = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lm, <2 x float> zeroinitializer)
  %i.lp = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lo, <2 x float> %i.ln) ; 2 uses
  %i.lq = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.lp)
  %i.lr = fptosi <2 x float> %i.lq to <2 x i32>   ; 5 uses
  %i.ls = extractelement <2 x i32> %i.lr, i64 0   ; 4 uses
  %i.lt = add nsw i32 %i.ls, 1                    ; 3 uses
  %i.lu = extractelement <2 x i32> %i.lr, i64 1   ; 4 uses
  %i.lv = add nsw i32 %i.lu, 1                    ; 3 uses
  %i.lw = icmp sgt i32 %i.ls, -2
  %i.lx = extractelement <2 x i32> %i.ld, i64 0   ; 2 uses
  %i.ly = icmp slt i32 %i.lt, %i.lx
  %i.lz = and i1 %i.lw, %i.ly                     ; 2 uses
  %i.ma = icmp sgt <2 x i32> %i.lr, splat (i32 -1)
  %i.mb = icmp sgt <2 x i32> %i.ld, %i.lr
  %i.mc = and <2 x i1> %i.ma, %i.mb               ; 2 uses
  %i.md = icmp sgt i32 %i.lu, -2
  %i.me = extractelement <2 x i32> %i.ld, i64 1
  %i.mf = icmp slt i32 %i.lv, %i.me
  %i.mg = and i1 %i.md, %i.mf                     ; 2 uses
  %i.mh = extractelement <2 x i1> %i.mc, i64 0    ; 2 uses
  %i.mi = extractelement <2 x i1> %i.mc, i64 1    ; 2 uses
  %i.mj = and i1 %i.mh, %i.mi
  %i.mk = and i1 %i.lz, %i.mi
  %i.ml = and i1 %i.mh, %i.mg
  %i.mm = and i1 %i.lz, %i.mg
  %i.mn = getelementptr inbounds nuw i8, ptr %.2461, i64 16
  br i1 %i.mj, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph462
  %i.mo = mul nuw nsw i32 %i.lx, %i.lu
  %i.mp = add nsw i32 %i.mo, %i.ls
  %i.mq = load i32, ptr %i.p, align 8, !tbaa !16
  %i.mr = mul nsw i32 %i.mq, %i.mp
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph462, %bb.a
  %i.ms = phi i32 [ %i.mr, %bb.a ], [ -1, %.lr.ph462 ]
  store i32 %i.ms, ptr %.2461, align 4, !tbaa !23
  br i1 %i.mk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.mt = load i32, ptr %i.n, align 4, !tbaa !37
  %i.mu = mul nsw i32 %i.mt, %i.lu
  %i.mv = add nsw i32 %i.mu, %i.lt
  %i.mw = load i32, ptr %i.p, align 8, !tbaa !16
  %i.mx = mul nsw i32 %i.mv, %i.mw
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.my = phi i32 [ %i.mx, %bb.c ], [ -1, %bb.b ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.2461, i64 4
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !23
  br i1 %i.ml, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.na = load i32, ptr %i.n, align 4, !tbaa !37
  %i.nb = mul nsw i32 %i.na, %i.lv
  %i.nc = add nsw i32 %i.nb, %i.ls
  %i.nd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ne = mul nsw i32 %i.nc, %i.nd
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.nf = phi i32 [ %i.ne, %bb.e ], [ -1, %bb.d ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.2461, i64 8
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !23
  br i1 %i.mm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.nh = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ni = mul nsw i32 %i.nh, %i.lv
  %i.nj = add nsw i32 %i.ni, %i.lt
  %i.nk = load i32, ptr %i.p, align 8, !tbaa !16
  %i.nl = mul nsw i32 %i.nj, %i.nk
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.nm = phi i32 [ %i.nl, %bb.g ], [ -1, %bb.f ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.2461, i64 12
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !23
  %i.no = sitofp <2 x i32> %i.lr to <2 x float>
  %i.np = fsub fast <2 x float> %i.lp, %i.no
  store <2 x float> %i.np, ptr %i.mn, align 4, !tbaa !40
  %i.nq = getelementptr inbounds nuw i8, ptr %.1250460, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.2461, i64 24 ; 2 uses
  %i.ns = add nuw nsw i32 %.1252459, 2            ; 2 uses
  %i.nt = icmp slt i32 %i.ns, %i.e
  br i1 %i.nt, label %.lr.ph462, label %._crit_edge, !llvm.loop !235

._crit_edge:                                      ; preds = %bb.h, %middle.block612, %vec.epilog.middle.block647, %.preheader
end_hunk_4
begin_hunk_5_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.bp = fsub fast <16 x float> %i.bo, %i.ax
  %i.bq = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bp)
  %i.br = fsub fast <16 x float> %i.ax, %i.bq
  %i.bs = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.br, <16 x float> zeroinitializer)
  %i.bt = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bs, <16 x float> %i.az) ; 2 uses
  %i.bu = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bk)
  %i.bv = fptosi <16 x float> %i.bu to <16 x i32> ; 7 uses
  %i.bw = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bt)
  %i.bx = fptosi <16 x float> %i.bw to <16 x i32> ; 7 uses
  %i.by = add nsw <16 x i32> %i.bv, splat (i32 1) ; 3 uses
  %i.bz = add nsw <16 x i32> %i.bx, splat (i32 1) ; 2 uses
  %i.ca = icmp sgt <16 x i32> %i.bv, splat (i32 -1)
  %i.cb = icmp sgt <16 x i32> %broadcast.splat582, %i.bv
  %i.cc = and <16 x i1> %i.ca, %i.cb              ; 2 uses
  %i.cd = icmp sgt <16 x i32> %i.bv, splat (i32 -2)
  %i.ce = icmp slt <16 x i32> %i.by, %broadcast.splat582
  %i.cf = and <16 x i1> %i.cd, %i.ce              ; 2 uses
  %i.cg = icmp sgt <16 x i32> %i.bx, splat (i32 -1)
  %i.ch = icmp sgt <16 x i32> %broadcast.splat584, %i.bx
  %i.ci = and <16 x i1> %i.cg, %i.ch              ; 2 uses
  %i.cj = icmp sgt <16 x i32> %i.bx, splat (i32 -2)
  %i.ck = icmp slt <16 x i32> %i.bz, %broadcast.splat584
  %i.cl = and <16 x i1> %i.cj, %i.ck              ; 2 uses
  %i.cm = and <16 x i1> %i.cc, %i.ci              ; 2 uses
  %i.cn = and <16 x i1> %i.cf, %i.ci              ; 2 uses
  %i.co = and <16 x i1> %i.cc, %i.cl              ; 2 uses
  %i.cp = and <16 x i1> %i.cf, %i.cl              ; 2 uses
  %i.cq = mul nuw nsw <16 x i32> %broadcast.splat582, %i.bx
  %i.cr = add nsw <16 x i32> %i.cq, %i.bv
  %wide.masked.gather594 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cm, <16 x i32> poison), !tbaa !16, !alias.scope !292
  %i.cs = mul nsw <16 x i32> %wide.masked.gather594, %i.cr
  %i.ct = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat652 = shufflevector <1 x i32> %i.ct, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cu = mul nsw <16 x i32> %broadcast.splat652, %i.bx
  %i.cv = add nsw <16 x i32> %i.cu, %i.by
  %wide.masked.gather597 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cn, <16 x i32> poison), !tbaa !16, !alias.scope !292
  %i.cw = mul nsw <16 x i32> %i.cv, %wide.masked.gather597
  %i.cx = mul nsw <16 x i32> %broadcast.splat652, %i.bz ; 2 uses
  %i.cy = add nsw <16 x i32> %i.cx, %i.bv
  %wide.masked.gather599 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.co, <16 x i32> poison), !tbaa !16, !alias.scope !292
  %i.cz = mul nsw <16 x i32> %i.cy, %wide.masked.gather599
  %i.da = add nsw <16 x i32> %i.cx, %i.by
  %wide.masked.gather601 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat588, <16 x i1> %i.cp, <16 x i32> poison), !tbaa !16, !alias.scope !292
  %i.db = mul nsw <16 x i32> %i.da, %wide.masked.gather601
  %i.dc = sitofp fast <16 x i32> %i.bv to <16 x float>
  %i.dd = fsub fast <16 x float> %i.bk, %i.dc
  %i.de = sitofp fast <16 x i32> %i.bx to <16 x float>
  %i.df = fsub fast <16 x float> %i.bt, %i.de
  %i.dg = bitcast <16 x i32> %i.cs to <16 x float>
  %i.dh = select <16 x i1> %i.cm, <16 x float> %i.dg, <16 x float> splat (float -nan(0x3FFFFF))
  %i.di = bitcast <16 x i32> %i.cw to <16 x float>
  %i.dj = select <16 x i1> %i.cn, <16 x float> %i.di, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dk = bitcast <16 x i32> %i.cz to <16 x float>
  %i.dl = select <16 x i1> %i.co, <16 x float> %i.dk, <16 x float> splat (float -nan(0x3FFFFF))
  %i.dm = bitcast <16 x i32> %i.db to <16 x float>
  %i.dn = select <16 x i1> %i.cp, <16 x float> %i.dm, <16 x float> splat (float -nan(0x3FFFFF))
  %i.do = shufflevector <16 x float> %i.dh, <16 x float> %i.dj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dp = shufflevector <16 x float> %i.dl, <16 x float> %i.dn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dq = shufflevector <32 x float> %i.do, <32 x float> %i.dp, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dr = shufflevector <16 x float> %i.dd, <16 x float> %i.df, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec603 = shufflevector <64 x float> %i.dq, <64 x float> %i.dr, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x float> %interleaved.vec603, ptr %next.gep591, align 4, !tbaa !41, !alias.scope !293, !noalias !294
  %index.next604 = add nuw i64 %index590, 16      ; 2 uses
  %i.ds = icmp eq i64 %index.next604, %n.vec580
  br i1 %i.ds, label %middle.block605, label %vector.body589, !llvm.loop !271

middle.block605:                                  ; preds = %vector.body589
  %cmp.n606 = icmp eq i64 %n.vec580, %i.ab
  br i1 %cmp.n606, label %._crit_edge, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block605
  %min.epilog.iters.check610 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check610, label %.lr.ph455.preheader, label %vec.epilog.ph611, !prof !45

vec.epilog.ph611:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check608
  %vec.epilog.resume.val612 = phi i64 [ %n.vec580, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check577 ]
  %n.vec613 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.dt = mul nuw nsw i64 %n.vec613, 24
  %i.du = getelementptr i8, ptr %.1.lcssa, i64 %i.dt ; 2 uses
  %i.dv = shl nuw nsw i64 %n.vec613, 3
  %i.dw = getelementptr i8, ptr %.0249.lcssa, i64 %i.dv
  %i.dx = trunc nuw i64 %n.vec613 to i32
  %i.dy = shl i32 %i.dx, 1
  %i.dz = add i32 %.0251.lcssa, %i.dy
  %i.ea = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat615 = shufflevector <1 x i32> %i.ea, <1 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.eb = add nsw <4 x i32> %broadcast.splat615, splat (i32 -1)
  %i.ec = sitofp fast <4 x i32> %i.eb to <4 x float> ; 3 uses
  %i.ed = sitofp fast <4 x i32> %broadcast.splat615 to <4 x float>
  %i.ee = fadd fast <4 x float> %i.ed, splat (float -1.000000e+00)
  %i.ef = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat617 = shufflevector <1 x i32> %i.ef, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.eg = add nsw <4 x i32> %broadcast.splat617, splat (i32 -1)
  %i.eh = sitofp fast <4 x i32> %i.eg to <4 x float> ; 3 uses
  %i.ei = sitofp fast <4 x i32> %broadcast.splat617 to <4 x float>
  %i.ej = fadd fast <4 x float> %i.ei, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body622

vec.epilog.vector.body622:                        ; preds = %vec.epilog.vector.body622, %vec.epilog.ph611
  %index623 = phi i64 [ %vec.epilog.resume.val612, %vec.epilog.ph611 ], [ %index.next639, %vec.epilog.vector.body622 ] ; 3 uses
  %i.ek = mul i64 %index623, 24
  %next.gep624 = getelementptr i8, ptr %.1.lcssa, i64 %i.ek
  %i.el = shl i64 %index623, 3
  %next.gep625 = getelementptr i8, ptr %.0249.lcssa, i64 %i.el
  %wide.vec626 = load <8 x float>, ptr %next.gep625, align 4, !tbaa !40, !alias.scope !291 ; 2 uses
  %strided.vec627 = shufflevector <8 x float> %wide.vec626, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec628 = shufflevector <8 x float> %wide.vec626, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.em = fmul fast <4 x float> %strided.vec627, splat (float 5.000000e-01)
  %i.en = fadd fast <4 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fmul fast <4 x float> %i.en, %i.ec
  %i.ep = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.eo)
  %i.eq = fsub fast <4 x float> %i.ep, %i.ec
  %i.er = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.eq)
  %i.es = fsub fast <4 x float> %i.ec, %i.er
  %i.et = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.es, <4 x float> zeroinitializer)
  %i.eu = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.et, <4 x float> %i.ee) ; 2 uses
  %i.ev = fmul fast <4 x float> %strided.vec628, splat (float 5.000000e-01)
  %i.ew = fadd fast <4 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = fmul fast <4 x float> %i.ew, %i.eh
  %i.ey = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ex)
  %i.ez = fsub fast <4 x float> %i.ey, %i.eh
  %i.fa = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ez)
  %i.fb = fsub fast <4 x float> %i.eh, %i.fa
  %i.fc = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fb, <4 x float> zeroinitializer)
  %i.fd = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fc, <4 x float> %i.ej) ; 2 uses
  %i.fe = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.eu)
  %i.ff = fptosi <4 x float> %i.fe to <4 x i32>   ; 7 uses
  %i.fg = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.fd)
  %i.fh = fptosi <4 x float> %i.fg to <4 x i32>   ; 7 uses
  %i.fi = add nsw <4 x i32> %i.ff, splat (i32 1)  ; 3 uses
  %i.fj = add nsw <4 x i32> %i.fh, splat (i32 1)  ; 2 uses
  %i.fk = icmp sgt <4 x i32> %i.ff, splat (i32 -1)
  %i.fl = icmp sgt <4 x i32> %broadcast.splat615, %i.ff
  %i.fm = and <4 x i1> %i.fk, %i.fl               ; 2 uses
  %i.fn = icmp sgt <4 x i32> %i.ff, splat (i32 -2)
  %i.fo = icmp slt <4 x i32> %i.fi, %broadcast.splat615
  %i.fp = and <4 x i1> %i.fn, %i.fo               ; 2 uses
  %i.fq = icmp sgt <4 x i32> %i.fh, splat (i32 -1)
  %i.fr = icmp sgt <4 x i32> %broadcast.splat617, %i.fh
  %i.fs = and <4 x i1> %i.fq, %i.fr               ; 2 uses
  %i.ft = icmp sgt <4 x i32> %i.fh, splat (i32 -2)
  %i.fu = icmp slt <4 x i32> %i.fj, %broadcast.splat617
  %i.fv = and <4 x i1> %i.ft, %i.fu               ; 2 uses
  %i.fw = and <4 x i1> %i.fm, %i.fs               ; 2 uses
  %i.fx = and <4 x i1> %i.fp, %i.fs               ; 2 uses
  %i.fy = and <4 x i1> %i.fm, %i.fv               ; 2 uses
  %i.fz = and <4 x i1> %i.fp, %i.fv               ; 2 uses
  %i.ga = mul nuw nsw <4 x i32> %broadcast.splat615, %i.fh
  %i.gb = add nsw <4 x i32> %i.ga, %i.ff
  %wide.masked.gather629 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fw, <4 x i32> poison), !tbaa !16, !alias.scope !292
  %i.gc = mul nsw <4 x i32> %wide.masked.gather629, %i.gb
  %i.gd = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat655 = shufflevector <1 x i32> %i.gd, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ge = mul nsw <4 x i32> %broadcast.splat655, %i.fh
  %i.gf = add nsw <4 x i32> %i.ge, %i.fi
  %wide.masked.gather632 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fx, <4 x i32> poison), !tbaa !16, !alias.scope !292
  %i.gg = mul nsw <4 x i32> %i.gf, %wide.masked.gather632
  %i.gh = mul nsw <4 x i32> %broadcast.splat655, %i.fj ; 2 uses
  %i.gi = add nsw <4 x i32> %i.gh, %i.ff
  %wide.masked.gather634 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fy, <4 x i32> poison), !tbaa !16, !alias.scope !292
  %i.gj = mul nsw <4 x i32> %i.gi, %wide.masked.gather634
  %i.gk = add nsw <4 x i32> %i.gh, %i.fi
  %wide.masked.gather636 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat621, <4 x i1> %i.fz, <4 x i32> poison), !tbaa !16, !alias.scope !292
  %i.gl = mul nsw <4 x i32> %i.gk, %wide.masked.gather636
  %i.gm = sitofp fast <4 x i32> %i.ff to <4 x float>
  %i.gn = fsub fast <4 x float> %i.eu, %i.gm
  %i.go = sitofp fast <4 x i32> %i.fh to <4 x float>
  %i.gp = fsub fast <4 x float> %i.fd, %i.go
  %i.gq = shufflevector <4 x i1> %i.fw, <4 x i1> %i.fx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = shufflevector <4 x i32> %i.gc, <4 x i32> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gs = shufflevector <4 x i1> %i.fy, <4 x i1> %i.fz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gt = shufflevector <4 x i32> %i.gj, <4 x i32> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gu = shufflevector <8 x i1> %i.gq, <8 x i1> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gv = shufflevector <8 x i32> %i.gr, <8 x i32> %i.gt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gw = bitcast <16 x i32> %i.gv to <16 x float>
  %i.gx = select <16 x i1> %i.gu, <16 x float> %i.gw, <16 x float> splat (float -nan(0x3FFFFF))
  %i.gy = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec638 = shufflevector <16 x float> %i.gx, <16 x float> %i.gy, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec638, ptr %next.gep624, align 4, !tbaa !41, !alias.scope !293, !noalias !294
  %index.next639 = add nuw i64 %index623, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next639, %n.vec613
  br i1 %i.gz, label %vec.epilog.middle.block640, label %vec.epilog.vector.body622, !llvm.loop !272

vec.epilog.middle.block640:                       ; preds = %vec.epilog.vector.body622
  %cmp.n641 = icmp eq i64 %n.vec613, %i.ab
  br i1 %cmp.n641, label %._crit_edge, label %.lr.ph455.preheader

.lr.ph455.preheader:                              ; preds = %iter.check607, %vector.memcheck564, %vec.epilog.iter.check608, %vec.epilog.middle.block640
  %.2454.ph = phi ptr [ %.1.lcssa, %iter.check607 ], [ %.1.lcssa, %vector.memcheck564 ], [ %i.ak, %vec.epilog.iter.check608 ], [ %i.du, %vec.epilog.middle.block640 ]
  %.1250453.ph = phi ptr [ %.0249.lcssa, %iter.check607 ], [ %.0249.lcssa, %vector.memcheck564 ], [ %i.am, %vec.epilog.iter.check608 ], [ %i.dw, %vec.epilog.middle.block640 ]
  %.1252452.ph = phi i32 [ %.0251.lcssa, %iter.check607 ], [ %.0251.lcssa, %vector.memcheck564 ], [ %i.ap, %vec.epilog.iter.check608 ], [ %i.dz, %vec.epilog.middle.block640 ]
  br label %.lr.ph455

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.ku, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.kt, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.kv, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.ha = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.hc = load <8 x float>, ptr %i.hb, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hd = load i32, ptr %i.n, align 4, !tbaa !37
  %i.he = sitofp fast i32 %i.hd to float
  %i.hf = insertelement <8 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <8 x float> %i.hf, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.hh = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.hi = fadd fast <8 x float> %i.hh, splat (float 5.000000e-01)
  %i.hj = fadd fast <8 x float> %i.hg, splat (float -1.000000e+00) ; 3 uses
  %i.hk = fmul fast <8 x float> %i.hj, %i.hi
  %i.hl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.hk)
  %i.hm = fsub fast <8 x float> %i.hl, %i.hj
  %i.hn = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hm)
  %i.ho = fsub fast <8 x float> %i.hj, %i.hn      ; 2 uses
  %i.hp = load i32, ptr %i.o, align 8, !tbaa !38
  %i.hq = sitofp fast i32 %i.hp to float
  %i.hr = insertelement <8 x float> poison, float %i.hq, i64 0
  %i.hs = shufflevector <8 x float> %i.hr, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ht = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.hu = fadd fast <8 x float> %i.ht, splat (float 5.000000e-01)
  %i.hv = fadd fast <8 x float> %i.hs, splat (float -1.000000e+00) ; 3 uses
  %i.hw = fmul fast <8 x float> %i.hv, %i.hu
  %i.hx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.hw)
  %i.hy = fsub fast <8 x float> %i.hx, %i.hv
  %i.hz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hy)
  %i.ia = fsub fast <8 x float> %i.hv, %i.hz      ; 2 uses
  %i.ib = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ho, i32 1) ; 5 uses
  %i.ic = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ia, i32 1) ; 5 uses
  %i.id = fadd fast <8 x float> %i.ib, splat (float 1.000000e+00) ; 2 uses
  %i.ie = fadd fast <8 x float> %i.ic, splat (float 1.000000e+00) ; 2 uses
  %i.if = fcmp fast ogt <8 x float> %i.ib, splat (float -1.000000e+00)
  %i.ig = fcmp fast ogt <8 x float> %i.hg, %i.ib
  %i.ih = and <8 x i1> %i.if, %i.ig               ; 2 uses
  %i.ii = fcmp fast ogt <8 x float> %i.id, splat (float -1.000000e+00)
  %i.ij = fcmp fast ogt <8 x float> %i.hg, %i.id
  %i.ik = and <8 x i1> %i.ii, %i.ij               ; 2 uses
  %i.il = fcmp fast ogt <8 x float> %i.ic, splat (float -1.000000e+00)
  %i.im = fcmp fast ogt <8 x float> %i.hs, %i.ic
  %i.in = and <8 x i1> %i.il, %i.im
  %i.io = sext <8 x i1> %i.in to <8 x i32>
  %i.ip = fcmp fast ogt <8 x float> %i.ie, splat (float -1.000000e+00)
  %i.iq = fcmp fast ogt <8 x float> %i.hs, %i.ie
  %i.ir = and <8 x i1> %i.ip, %i.iq               ; 2 uses
  %i.is = bitcast <8 x i32> %i.io to <8 x float>  ; 2 uses
  %i.it = select <8 x i1> %i.ih, <8 x float> %i.is, <8 x float> zeroinitializer
  %i.iu = select <8 x i1> %i.ik, <8 x float> %i.is, <8 x float> zeroinitializer
  %i.iv = and <8 x i1> %i.ih, %i.ir
  %i.iw = and <8 x i1> %i.ik, %i.ir
  %i.ix = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ic, <8 x float> nofpclass(nan inf) %i.hg, <8 x float> nofpclass(nan inf) %i.ib)
  %i.iy = load i32, ptr %i.p, align 8, !tbaa !16
  %i.iz = sitofp fast i32 %i.iy to float
  %i.ja = insertelement <8 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <8 x float> %i.ja, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.jc = fmul fast <8 x float> %i.jb, %i.ix      ; 3 uses
  %i.jd = fadd fast <8 x float> %i.jc, %i.jb
  %i.je = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hg, <8 x float> nofpclass(nan inf) %i.jb, <8 x float> nofpclass(nan inf) %i.jc) ; 2 uses
  %i.jf = fadd fast <8 x float> %i.je, %i.jb
  %i.jg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.jc, <8 x float> nofpclass(nan inf) %i.it)
  %i.jh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.jd, <8 x float> nofpclass(nan inf) %i.iu)
  %i.ji = select <8 x i1> %i.iv, <8 x float> %i.je, <8 x float> splat (float -1.000000e+00)
  %i.jj = select <8 x i1> %i.iw, <8 x float> %i.jf, <8 x float> splat (float -1.000000e+00)
  %i.jk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jg) ; 2 uses
  %i.jl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jh) ; 2 uses
  %i.jm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ji) ; 2 uses
  %i.jn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jj) ; 2 uses
  %i.jo = fsub fast <8 x float> %i.ho, %i.ib      ; 2 uses
  %i.jp = fsub fast <8 x float> %i.ia, %i.ic      ; 2 uses
  %i.jq = shufflevector <8 x i32> %i.jk, <8 x i32> %i.jl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jr = bitcast <8 x i32> %i.jq to <8 x float>
  %i.js = shufflevector <8 x i32> %i.jk, <8 x i32> %i.jl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jt = bitcast <8 x i32> %i.js to <8 x float>
  %i.ju = shufflevector <8 x i32> %i.jm, <8 x i32> %i.jn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jv = bitcast <8 x i32> %i.ju to <8 x float>
  %i.jw = shufflevector <8 x i32> %i.jm, <8 x i32> %i.jn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jx = bitcast <8 x i32> %i.jw to <8 x float>
  %i.jy = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jz = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ka = shufflevector <8 x i32> %i.jq, <8 x i32> %i.ju, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kb = bitcast <8 x i32> %i.ka to <8 x float>  ; 2 uses
  %i.kc = shufflevector <8 x float> %i.jy, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kd = shufflevector <8 x float> %i.jv, <8 x float> %i.jy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ke = shufflevector <8 x i32> %i.js, <8 x i32> %i.jw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kf = bitcast <8 x i32> %i.ke to <8 x float>  ; 2 uses
  %i.kg = shufflevector <8 x float> %i.jz, <8 x float> %i.jt, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kh = shufflevector <8 x float> %i.jx, <8 x float> %i.jz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ki = shufflevector <8 x float> %i.kb, <8 x float> %i.kc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kj = shufflevector <8 x float> %i.kd, <8 x float> %i.kf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kk = shufflevector <8 x float> %i.kg, <8 x float> %i.kh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kl = shufflevector <8 x float> %i.kb, <8 x float> %i.kc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.km = shufflevector <8 x float> %i.kd, <8 x float> %i.kf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kn = shufflevector <8 x float> %i.kg, <8 x float> %i.kh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ki, ptr %.1447, align 1, !tbaa !41
  %i.ko = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.kj, ptr %i.ko, align 1, !tbaa !41
  %i.kp = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.kk, ptr %i.kp, align 1, !tbaa !41
  %i.kq = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.kl, ptr %i.kq, align 1, !tbaa !41
  %i.kr = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.km, ptr %i.kr, align 1, !tbaa !41
  %i.ks = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.kn, ptr %i.ks, align 1, !tbaa !41
  %i.kt = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.kv = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.kw = or disjoint i32 %i.kv, 15
  %i.kx = icmp slt i32 %i.kw, %i.e
  br i1 %i.kx, label %.lr.ph448, label %.preheader, !llvm.loop !273

.lr.ph455:                                        ; preds = %.lr.ph455.preheader, %bb.h
  %.2454 = phi ptr [ %i.no, %bb.h ], [ %.2454.ph, %.lr.ph455.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.nn, %bb.h ], [ %.1250453.ph, %.lr.ph455.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.np, %bb.h ], [ %.1252452.ph, %.lr.ph455.preheader ]
  %i.ky = load <2 x float>, ptr %.1250453, align 4, !tbaa !40
  %i.kz = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 5 uses
  %i.la = fmul fast <2 x float> %i.ky, splat (float 5.000000e-01)
  %i.lb = fadd fast <2 x float> %i.la, splat (float 5.000000e-01)
  %i.lc = add nsw <2 x i32> %i.kz, splat (i32 -1)
  %i.ld = sitofp <2 x i32> %i.lc to <2 x float>   ; 3 uses
  %i.le = fmul fast <2 x float> %i.lb, %i.ld
  %i.lf = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.le)
  %i.lg = fsub fast <2 x float> %i.lf, %i.ld
  %i.lh = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lg)
  %i.li = fsub fast <2 x float> %i.ld, %i.lh
  %i.lj = sitofp <2 x i32> %i.kz to <2 x float>
  %i.lk = fadd fast <2 x float> %i.lj, splat (float -1.000000e+00)
  %i.ll = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.li, <2 x float> zeroinitializer)
  %i.lm = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ll, <2 x float> %i.lk) ; 2 uses
  %i.ln = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.lm)
  %i.lo = fptosi <2 x float> %i.ln to <2 x i32>   ; 5 uses
  %i.lp = extractelement <2 x i32> %i.lo, i64 0   ; 4 uses
  %i.lq = add nsw i32 %i.lp, 1                    ; 3 uses
  %i.lr = extractelement <2 x i32> %i.lo, i64 1   ; 4 uses
  %i.ls = add nsw i32 %i.lr, 1                    ; 3 uses
  %i.lt = icmp sgt i32 %i.lp, -2
  %i.lu = extractelement <2 x i32> %i.kz, i64 0   ; 2 uses
  %i.lv = icmp slt i32 %i.lq, %i.lu
  %i.lw = and i1 %i.lt, %i.lv                     ; 2 uses
  %i.lx = icmp sgt <2 x i32> %i.lo, splat (i32 -1)
  %i.ly = icmp sgt <2 x i32> %i.kz, %i.lo
  %i.lz = and <2 x i1> %i.lx, %i.ly               ; 2 uses
  %i.ma = icmp sgt i32 %i.lr, -2
  %i.mb = extractelement <2 x i32> %i.kz, i64 1
  %i.mc = icmp slt i32 %i.ls, %i.mb
  %i.md = and i1 %i.ma, %i.mc                     ; 2 uses
  %i.me = extractelement <2 x i1> %i.lz, i64 0    ; 2 uses
  %i.mf = extractelement <2 x i1> %i.lz, i64 1    ; 2 uses
  %i.mg = and i1 %i.me, %i.mf
  %i.mh = and i1 %i.lw, %i.mf
  %i.mi = and i1 %i.me, %i.md
  %i.mj = and i1 %i.lw, %i.md
  %i.mk = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.mg, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.ml = mul nuw nsw i32 %i.lu, %i.lr
  %i.mm = add nsw i32 %i.ml, %i.lp
  %i.mn = load i32, ptr %i.p, align 8, !tbaa !16
  %i.mo = mul nsw i32 %i.mn, %i.mm
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.mp = phi i32 [ %i.mo, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.mp, ptr %.2454, align 4, !tbaa !23
  br i1 %i.mh, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.mq = load i32, ptr %i.n, align 4, !tbaa !37
  %i.mr = mul nsw i32 %i.mq, %i.lr
  %i.ms = add nsw i32 %i.mr, %i.lq
  %i.mt = load i32, ptr %i.p, align 8, !tbaa !16
  %i.mu = mul nsw i32 %i.ms, %i.mt
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.mv = phi i32 [ %i.mu, %bb.c ], [ -1, %bb.b ]
  %i.mw = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !23
  br i1 %i.mi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.mx = load i32, ptr %i.n, align 4, !tbaa !37
  %i.my = mul nsw i32 %i.mx, %i.ls
  %i.mz = add nsw i32 %i.my, %i.lp
  %i.na = load i32, ptr %i.p, align 8, !tbaa !16
  %i.nb = mul nsw i32 %i.mz, %i.na
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.nc = phi i32 [ %i.nb, %bb.e ], [ -1, %bb.d ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !23
  br i1 %i.mj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ne = load i32, ptr %i.n, align 4, !tbaa !37
  %i.nf = mul nsw i32 %i.ne, %i.ls
  %i.ng = add nsw i32 %i.nf, %i.lq
  %i.nh = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ni = mul nsw i32 %i.ng, %i.nh
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.nj = phi i32 [ %i.ni, %bb.g ], [ -1, %bb.f ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !23
  %i.nl = sitofp <2 x i32> %i.lo to <2 x float>
  %i.nm = fsub fast <2 x float> %i.lm, %i.nl
  store <2 x float> %i.nm, ptr %i.mk, align 4, !tbaa !40
  %i.nn = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.np = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.nq = icmp slt i32 %i.np, %i.e
  br i1 %i.nq, label %.lr.ph455, label %._crit_edge, !llvm.loop !274

._crit_edge:                                      ; preds = %bb.h, %middle.block605, %vec.epilog.middle.block640, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.du, %vec.epilog.middle.block640 ], [ %i.ak, %middle.block605 ], [ %i.no, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nr = load i32, ptr %i.h, align 8, !tbaa !17
end_hunk_5
begin_hunk_6_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %.4443 = phi ptr [ %i.acj, %bb.q ], [ %.4443.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %.1254442 = phi i32 [ %i.ack, %bb.q ], [ %.1254442.ph, %vec.epilog.scalar.ph.preheader ]
  %.1256441 = phi ptr [ %i.aci, %bb.q ], [ %.1256441.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1258440 = phi ptr [ %i.ach, %bb.q ], [ %.1258440.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zp = load float, ptr %.1258440, align 4, !tbaa !40
  %i.zq = load float, ptr %.1256441, align 4, !tbaa !40
  %i.zr = load <2 x i32>, ptr %i.oh, align 4, !tbaa !23 ; 5 uses
  %i.zs = insertelement <2 x float> poison, float %i.zp, i64 0
  %i.zt = insertelement <2 x float> %i.zs, float %i.zq, i64 1
  %i.zu = fmul fast <2 x float> %i.zt, splat (float 5.000000e-01)
  %i.zv = fadd fast <2 x float> %i.zu, splat (float 5.000000e-01)
  %i.zw = add nsw <2 x i32> %i.zr, splat (i32 -1)
  %i.zx = sitofp <2 x i32> %i.zw to <2 x float>   ; 3 uses
  %i.zy = fmul fast <2 x float> %i.zv, %i.zx
  %i.zz = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zy)
  %i.aaa = fsub fast <2 x float> %i.zz, %i.zx
  %i.aab = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aaa)
  %i.aac = fsub fast <2 x float> %i.zx, %i.aab
  %i.aad = sitofp <2 x i32> %i.zr to <2 x float>
  %i.aae = fadd fast <2 x float> %i.aad, splat (float -1.000000e+00)
  %i.aaf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aac, <2 x float> zeroinitializer)
  %i.aag = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aaf, <2 x float> %i.aae) ; 2 uses
  %i.aah = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.aag)
  %i.aai = fptosi <2 x float> %i.aah to <2 x i32> ; 5 uses
  %i.aaj = extractelement <2 x i32> %i.aai, i64 0 ; 4 uses
  %i.aak = add nsw i32 %i.aaj, 1                  ; 3 uses
  %i.aal = extractelement <2 x i32> %i.aai, i64 1 ; 4 uses
  %i.aam = add nsw i32 %i.aal, 1                  ; 3 uses
  %i.aan = icmp sgt i32 %i.aaj, -2
  %i.aao = extractelement <2 x i32> %i.zr, i64 0  ; 2 uses
  %i.aap = icmp slt i32 %i.aak, %i.aao
  %i.aaq = and i1 %i.aan, %i.aap                  ; 2 uses
  %i.aar = icmp sgt <2 x i32> %i.aai, splat (i32 -1)
  %i.aas = icmp sgt <2 x i32> %i.zr, %i.aai
  %i.aat = and <2 x i1> %i.aar, %i.aas            ; 2 uses
  %i.aau = icmp sgt i32 %i.aal, -2
  %i.aav = extractelement <2 x i32> %i.zr, i64 1
  %i.aaw = icmp slt i32 %i.aam, %i.aav
  %i.aax = and i1 %i.aau, %i.aaw                  ; 2 uses
  %i.aay = extractelement <2 x i1> %i.aat, i64 0  ; 2 uses
  %i.aaz = extractelement <2 x i1> %i.aat, i64 1  ; 2 uses
  %i.aba = and i1 %i.aay, %i.aaz
  %i.abb = and i1 %i.aaq, %i.aaz
  %i.abc = and i1 %i.aay, %i.aax
  %i.abd = and i1 %i.aaq, %i.aax
  %i.abe = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.aba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph
  %i.abf = mul nuw nsw i32 %i.aao, %i.aal
  %i.abg = add nsw i32 %i.abf, %i.aaj
  %i.abh = load i32, ptr %i.oj, align 8, !tbaa !16
  %i.abi = mul nsw i32 %i.abh, %i.abg
  br label %bb.k

bb.k:                                             ; preds = %vec.epilog.scalar.ph, %bb.j
  %i.abj = phi i32 [ %i.abi, %bb.j ], [ -1, %vec.epilog.scalar.ph ]
  store i32 %i.abj, ptr %.4443, align 4, !tbaa !23
  br i1 %i.abb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.abk = load i32, ptr %i.oh, align 4, !tbaa !37
  %i.abl = mul nsw i32 %i.abk, %i.aal
  %i.abm = add nsw i32 %i.abl, %i.aak
  %i.abn = load i32, ptr %i.oj, align 8, !tbaa !16
  %i.abo = mul nsw i32 %i.abm, %i.abn
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.abp = phi i32 [ %i.abo, %bb.l ], [ -1, %bb.k ]
  %i.abq = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.abp, ptr %i.abq, align 4, !tbaa !23
  br i1 %i.abc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.abr = load i32, ptr %i.oh, align 4, !tbaa !37
  %i.abs = mul nsw i32 %i.abr, %i.aam
  %i.abt = add nsw i32 %i.abs, %i.aaj
  %i.abu = load i32, ptr %i.oj, align 8, !tbaa !16
  %i.abv = mul nsw i32 %i.abt, %i.abu
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.abw = phi i32 [ %i.abv, %bb.n ], [ -1, %bb.m ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.abw, ptr %i.abx, align 4, !tbaa !23
  br i1 %i.abd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aby = load i32, ptr %i.oh, align 4, !tbaa !37
  %i.abz = mul nsw i32 %i.aby, %i.aam
  %i.aca = add nsw i32 %i.abz, %i.aak
  %i.acb = load i32, ptr %i.oj, align 8, !tbaa !16
  %i.acc = mul nsw i32 %i.aca, %i.acb
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.acd = phi i32 [ %i.acc, %bb.p ], [ -1, %bb.o ]
  %i.ace = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !23
  %i.acf = sitofp <2 x i32> %i.aai to <2 x float>
  %i.acg = fsub fast <2 x float> %i.aag, %i.acf
  store <2 x float> %i.acg, ptr %i.abe, align 4, !tbaa !40
  %i.ach = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.aci = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.acj = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.ack = add nuw nsw i32 %.1254442, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ack, %i.e
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !288

.loopexit:                                        ; preds = %bb.q, %._crit_edge, %middle.block, %vec.epilog.middle.block, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 19 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !333 ; 4 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit122.us.preheader, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split

_ZN4ncnn3MatD2Ev.exit122.us.preheader:            ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.q = and i32 %i.e, 2147483632                 ; 7 uses
  %i.r = icmp slt i32 %i.q, %i.e
  %i.s = xor i32 %i.q, -1
  %i.t = add nsw i32 %i.e, %i.s
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %scevgep406 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.x = shl nuw nsw i64 %i.v, 3
  %i.y = xor i32 %i.q, -1
  %i.z = add nsw i32 %i.e, %i.y                   ; 3 uses
  %i.aa = lshr i32 %i.z, 1
  %narrow466 = add nuw i32 %i.aa, 1
  %i.ab = zext i32 %narrow466 to i64              ; 5 uses
  %min.iters.check415 = icmp ult i32 %i.z, 6
  %min.iters.check417 = icmp ult i32 %i.z, 30
  %i.ac = and i64 %i.ab, 12
  %n.vec419 = and i64 %i.ab, 4294967280           ; 6 uses
  %i.ad = shl nuw nsw i64 %n.vec419, 2
  %i.ae = shl nuw nsw i64 %n.vec419, 3
  %i.af = trunc nuw i64 %n.vec419 to i32
  %i.ag = shl i32 %i.af, 1
  %i.ah = add i32 %i.q, %i.ag
  %broadcast.splatinsert424 = insertelement <16 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat425 = shufflevector <16 x ptr> %broadcast.splatinsert424, <16 x ptr> poison, <16 x i32> zeroinitializer
  %cmp.n437 = icmp eq i64 %n.vec419, %i.ab
  %min.epilog.iters.check441 = icmp eq i64 %i.ac, 0
  %n.vec444 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.ai = shl nuw nsw i64 %n.vec444, 2
  %i.aj = shl nuw nsw i64 %n.vec444, 3
  %i.ak = trunc nuw i64 %n.vec444 to i32
  %i.al = shl i32 %i.ak, 1
  %i.am = add i32 %i.q, %i.al
  %broadcast.splatinsert449 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat450 = shufflevector <4 x ptr> %broadcast.splatinsert449, <4 x ptr> poison, <4 x i32> zeroinitializer
  %cmp.n462 = icmp eq i64 %n.vec444, %i.ab
  br label %_ZN4ncnn3MatD2Ev.exit122.us

_ZN4ncnn3MatD2Ev.exit122.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit122.us.preheader, %._crit_edge.us
  %indvars.iv267 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %indvars.iv.next268, %._crit_edge.us ] ; 2 uses
  %.0255.us = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.0255.us404 = ptrtoaddr ptr %.0255.us to i64
  %i.an = load ptr, ptr %1, align 8, !tbaa !20, !noalias !334 ; 2 uses
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !334
  %i.ap = mul i64 %i.ao, %indvars.iv267
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !334
  %i.ar = mul i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122.us, %bb.a
  %indvar = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %indvar.next, %bb.a ] ; 2 uses
  %.1244.us = phi ptr [ %.0255.us, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.cf, %bb.a ] ; 2 uses
  %.0117243.us = phi ptr [ %i.as, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.ce, %bb.a ] ; 3 uses
  %.0119242.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.cg, %bb.a ]
  %i.at = load <8 x float>, ptr %.0117243.us, align 1, !tbaa !41 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0117243.us, i64 32
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.at, <8 x float> %i.av, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.at, <8 x float> %i.av, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.aw = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ax = sitofp fast i32 %i.aw to float
  %i.ay = insertelement <8 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ba = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float -1.000000e+00))
  %i.bc = fmul fast <8 x float> %i.bb, splat (float 5.000000e-01)
  %i.bd = load i32, ptr %i.o, align 8, !tbaa !38
  %i.be = sitofp fast i32 %i.bd to float
  %i.bf = insertelement <8 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bh = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.bi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> splat (float -1.000000e+00))
  %i.bj = fmul fast <8 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fadd fast <8 x float> %i.bc, splat (float 5.000000e-01)
  %i.bl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bk, i32 1) ; 3 uses
  %i.bm = fadd fast <8 x float> %i.bj, splat (float 5.000000e-01)
  %i.bn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bm, i32 1) ; 3 uses
  %i.bo = fcmp fast ogt <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bp = fcmp fast ogt <8 x float> %i.az, %i.bl
  %i.bq = and <8 x i1> %i.bo, %i.bp
  %i.br = fcmp fast ogt <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.bs = fcmp fast ogt <8 x float> %i.bg, %i.bn
  %i.bt = and <8 x i1> %i.br, %i.bs
  %i.bu = and <8 x i1> %i.bq, %i.bt
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bn, <8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bl)
  %i.bw = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bx = sitofp fast i32 %i.bw to float
  %i.by = insertelement <8 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <8 x float> %i.by, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ca = fmul fast <8 x float> %i.bz, %i.bv
  %i.cb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca)
  %i.cc = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cd = select <8 x i1> %i.bu, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.cd, ptr %.1244.us, align 1, !tbaa !41
  %i.ce = getelementptr i8, ptr %.0117243.us, i64 64 ; 8 uses
  %i.cf = getelementptr i8, ptr %.1244.us, i64 32 ; 11 uses
  %i.cg = add nuw nsw i32 %.0119242.us, 16        ; 2 uses
  %i.ch = or disjoint i32 %i.cg, 15
  %i.ci = icmp slt i32 %i.ch, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ci, label %bb.a, label %..preheader_crit_edge.us, !llvm.loop !306

.lr.ph252.us:                                     ; preds = %.lr.ph252.us.preheader, %bb.c
  %.2251.us = phi ptr [ %i.dh, %bb.c ], [ %.2251.us.ph, %.lr.ph252.us.preheader ] ; 2 uses
  %.1118250.us = phi ptr [ %i.dg, %bb.c ], [ %.1118250.us.ph, %.lr.ph252.us.preheader ] ; 2 uses
  %.1120249.us = phi i32 [ %i.di, %bb.c ], [ %.1120249.us.ph, %.lr.ph252.us.preheader ]
  %i.cj = load <2 x float>, ptr %.1118250.us, align 4, !tbaa !40
  %i.ck = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.cl = sitofp <2 x i32> %i.ck to <2 x float>
  %i.cm = fmul fast <2 x float> %i.cj, splat (float 5.000000e-01)
  %i.cn = fadd fast <2 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fmul fast <2 x float> %i.cn, %i.cl
  %i.cp = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.co)
  %i.cq = fptosi <2 x float> %i.cp to <2 x i32>   ; 3 uses
  %i.cr = extractelement <2 x i32> %i.cq, i64 0   ; 2 uses
  %i.cs = extractelement <2 x i32> %i.cq, i64 1   ; 2 uses
  %i.ct = or i32 %i.cs, %i.cr
  %i.cu = icmp sgt i32 %i.ct, -1
  %i.cv = icmp sgt <2 x i32> %i.ck, %i.cq         ; 2 uses
  %i.cw = extractelement <2 x i1> %i.cv, i64 0
  %i.cx = and i1 %i.cw, %i.cu
  %i.cy = extractelement <2 x i1> %i.cv, i64 1
  %i.cz = and i1 %i.cy, %i.cx
  br i1 %i.cz, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph252.us
  %i.da = extractelement <2 x i32> %i.ck, i64 0
  %i.db = mul nuw nsw i32 %i.da, %i.cs
  %i.dc = add nsw i32 %i.db, %i.cr
  %i.dd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.de = mul nsw i32 %i.dd, %i.dc
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph252.us
  %i.df = phi i32 [ %i.de, %bb.b ], [ -1, %.lr.ph252.us ]
  store i32 %i.df, ptr %.2251.us, align 4, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %.1118250.us, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.2251.us, i64 4 ; 2 uses
  %i.di = add nuw nsw i32 %.1120249.us, 2         ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.e
  br i1 %i.dj, label %.lr.ph252.us, label %._crit_edge.us, !llvm.loop !307

._crit_edge.us:                                   ; preds = %bb.c, %middle.block436, %vec.epilog.middle.block461, %..preheader_crit_edge.us
  %.2.lcssa.us = phi ptr [ %i.cf, %..preheader_crit_edge.us ], [ %i.ew, %vec.epilog.middle.block461 ], [ %i.du, %middle.block436 ], [ %i.dh, %bb.c ]
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next268, %i.dl
  br i1 %i.dm, label %_ZN4ncnn3MatD2Ev.exit122.us, label %.loopexit, !llvm.loop !308

..preheader_crit_edge.us:                         ; preds = %bb.a
  br i1 %i.r, label %iter.check438, label %._crit_edge.us

iter.check438:                                    ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check415, label %.lr.ph252.us.preheader, label %vector.memcheck403

vector.memcheck403:                               ; preds = %iter.check438
  %i.dn = ptrtoaddr ptr %i.cf to i64
  %reass.sub = sub i64 %i.dn, %.0255.us404
  %i.do = getelementptr i8, ptr %.0255.us, i64 %i.w
  %i.dp = getelementptr i8, ptr %i.do, i64 %reass.sub
  %scevgep405 = getelementptr i8, ptr %i.dp, i64 4 ; 2 uses
  %i.dq = shl nuw nsw i64 %indvar, 6
  %i.dr = getelementptr i8, ptr %i.an, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.x
  %i.dt = getelementptr i8, ptr %i.ds, i64 72
  %scevgep407 = getelementptr i8, ptr %i.dt, i64 %i.ar
  %bound0408 = icmp ult ptr %i.cf, %scevgep406
  %bound1409 = icmp ult ptr %i.p, %scevgep405
  %found.conflict410 = and i1 %bound0408, %bound1409
  %bound0411 = icmp ult ptr %i.cf, %scevgep407
  %bound1412 = icmp ult ptr %i.ce, %scevgep405
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %found.conflict410, %found.conflict413
  br i1 %conflict.rdx414, label %.lr.ph252.us.preheader, label %vector.main.loop.iter.check416

vector.main.loop.iter.check416:                   ; preds = %vector.memcheck403
  br i1 %min.iters.check417, label %vec.epilog.ph442, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check416
  %i.du = getelementptr i8, ptr %i.cf, i64 %i.ad  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.ce, i64 %i.ae
  %i.dw = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat421 = shufflevector <1 x i32> %i.dw, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dx = sitofp fast <16 x i32> %broadcast.splat421 to <16 x float>
  %i.dy = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat423 = shufflevector <1 x i32> %i.dy, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dz = sitofp fast <16 x i32> %broadcast.splat423 to <16 x float>
  br label %vector.body426

vector.body426:                                   ; preds = %vector.ph418, %vector.body426
  %index427 = phi i64 [ 0, %vector.ph418 ], [ %index.next435, %vector.body426 ] ; 3 uses
  %i.ea = shl i64 %index427, 2
  %next.gep428 = getelementptr i8, ptr %i.cf, i64 %i.ea
  %i.eb = shl i64 %index427, 3
  %next.gep429 = getelementptr i8, ptr %i.ce, i64 %i.eb
  %wide.vec430 = load <32 x float>, ptr %next.gep429, align 4, !tbaa !40, !alias.scope !335 ; 2 uses
  %strided.vec431 = shufflevector <32 x float> %wide.vec430, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec432 = shufflevector <32 x float> %wide.vec430, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ec = fmul fast <16 x float> %strided.vec431, splat (float 5.000000e-01)
  %i.ed = fadd fast <16 x float> %i.ec, splat (float 5.000000e-01)
  %i.ee = fmul fast <16 x float> %i.ed, %i.dx
  %i.ef = fmul fast <16 x float> %strided.vec432, splat (float 5.000000e-01)
  %i.eg = fadd fast <16 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = fmul fast <16 x float> %i.eg, %i.dz
  %i.ei = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.ee)
  %i.ej = fptosi <16 x float> %i.ei to <16 x i32> ; 3 uses
  %i.ek = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.eh)
  %i.el = fptosi <16 x float> %i.ek to <16 x i32> ; 3 uses
  %i.em = icmp sgt <16 x i32> %broadcast.splat421, %i.ej
  %i.en = or <16 x i32> %i.el, %i.ej
  %i.eo = icmp sgt <16 x i32> %i.en, splat (i32 -1)
  %i.ep = and <16 x i1> %i.em, %i.eo
  %i.eq = icmp sgt <16 x i32> %broadcast.splat423, %i.el
  %i.er = and <16 x i1> %i.eq, %i.ep              ; 2 uses
  %i.es = mul nuw nsw <16 x i32> %broadcast.splat421, %i.el
  %i.et = add nsw <16 x i32> %i.es, %i.ej
  %wide.masked.gather433 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat425, <16 x i1> %i.er, <16 x i32> poison), !tbaa !16, !alias.scope !336
  %i.eu = mul nsw <16 x i32> %wide.masked.gather433, %i.et
  %predphi434 = select <16 x i1> %i.er, <16 x i32> %i.eu, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi434, ptr %next.gep428, align 4, !tbaa !23, !alias.scope !337, !noalias !338
  %index.next435 = add nuw i64 %index427, 16      ; 2 uses
  %i.ev = icmp eq i64 %index.next435, %n.vec419
  br i1 %i.ev, label %middle.block436, label %vector.body426, !llvm.loop !313

middle.block436:                                  ; preds = %vector.body426
  br i1 %cmp.n437, label %._crit_edge.us, label %vec.epilog.iter.check439

vec.epilog.iter.check439:                         ; preds = %middle.block436
  br i1 %min.epilog.iters.check441, label %.lr.ph252.us.preheader, label %vec.epilog.ph442, !prof !45

vec.epilog.ph442:                                 ; preds = %vector.main.loop.iter.check416, %vec.epilog.iter.check439
  %vec.epilog.resume.val443 = phi i64 [ %n.vec419, %vec.epilog.iter.check439 ], [ 0, %vector.main.loop.iter.check416 ]
  %i.ew = getelementptr i8, ptr %i.cf, i64 %i.ai  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ce, i64 %i.aj
  %i.ey = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat446 = shufflevector <1 x i32> %i.ey, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ez = sitofp fast <4 x i32> %broadcast.splat446 to <4 x float>
  %i.fa = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat448 = shufflevector <1 x i32> %i.fa, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fb = sitofp fast <4 x i32> %broadcast.splat448 to <4 x float>
  br label %vec.epilog.vector.body451

vec.epilog.vector.body451:                        ; preds = %vec.epilog.vector.body451, %vec.epilog.ph442
  %index452 = phi i64 [ %vec.epilog.resume.val443, %vec.epilog.ph442 ], [ %index.next460, %vec.epilog.vector.body451 ] ; 3 uses
  %i.fc = shl i64 %index452, 2
  %next.gep453 = getelementptr i8, ptr %i.cf, i64 %i.fc
  %i.fd = shl i64 %index452, 3
  %next.gep454 = getelementptr i8, ptr %i.ce, i64 %i.fd
  %wide.vec455 = load <8 x float>, ptr %next.gep454, align 4, !tbaa !40, !alias.scope !335 ; 2 uses
  %strided.vec456 = shufflevector <8 x float> %wide.vec455, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec457 = shufflevector <8 x float> %wide.vec455, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fe = fmul fast <4 x float> %strided.vec456, splat (float 5.000000e-01)
  %i.ff = fadd fast <4 x float> %i.fe, splat (float 5.000000e-01)
  %i.fg = fmul fast <4 x float> %i.ff, %i.ez
  %i.fh = fmul fast <4 x float> %strided.vec457, splat (float 5.000000e-01)
  %i.fi = fadd fast <4 x float> %i.fh, splat (float 5.000000e-01)
  %i.fj = fmul fast <4 x float> %i.fi, %i.fb
  %i.fk = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.fg)
  %i.fl = fptosi <4 x float> %i.fk to <4 x i32>   ; 3 uses
  %i.fm = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.fj)
  %i.fn = fptosi <4 x float> %i.fm to <4 x i32>   ; 3 uses
  %i.fo = icmp sgt <4 x i32> %broadcast.splat446, %i.fl
  %i.fp = or <4 x i32> %i.fn, %i.fl
  %i.fq = icmp sgt <4 x i32> %i.fp, splat (i32 -1)
  %i.fr = and <4 x i1> %i.fo, %i.fq
  %i.fs = icmp sgt <4 x i32> %broadcast.splat448, %i.fn
  %i.ft = and <4 x i1> %i.fs, %i.fr               ; 2 uses
  %i.fu = mul nuw nsw <4 x i32> %broadcast.splat446, %i.fn
  %i.fv = add nsw <4 x i32> %i.fu, %i.fl
  %wide.masked.gather458 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat450, <4 x i1> %i.ft, <4 x i32> poison), !tbaa !16, !alias.scope !336
end_hunk_6
begin_hunk_7_@_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit123
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  %scevgep332 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %broadcast.splatinsert351 = insertelement <16 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat352 = shufflevector <16 x ptr> %broadcast.splatinsert351, <16 x ptr> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert374 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat375 = shufflevector <4 x ptr> %broadcast.splatinsert374, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !377
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !377
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !377
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph245, label %.preheader

.preheader:                                       ; preds = %.lr.ph245, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph245 ] ; 7 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.es, %.lr.ph245 ] ; 8 uses
  %.1.lcssa = phi ptr [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.et, %.lr.ph245 ] ; 10 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %iter.check363, label %._crit_edge

iter.check363:                                    ; preds = %.preheader
  %i.y = xor i32 %.0119.lcssa, -1
  %i.z = add i32 %i.e, %i.y                       ; 3 uses
  %i.aa = lshr i32 %i.z, 1
  %narrow = add nuw i32 %i.aa, 1
  %i.ab = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check342 = icmp ult i32 %i.z, 6
  br i1 %min.iters.check342, label %.lr.ph252.preheader, label %vector.memcheck330

vector.memcheck330:                               ; preds = %iter.check363
  %scevgep = getelementptr i8, ptr %.1.lcssa, i64 4
  %i.ac = xor i32 %.0119.lcssa, -1
  %i.ad = add i32 %i.e, %i.ac
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep331 = getelementptr i8, ptr %scevgep, i64 %i.ag ; 2 uses
  %scevgep333 = getelementptr i8, ptr %.0117.lcssa, i64 8
  %i.ah = shl nuw nsw i64 %i.af, 3
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.ah
  %bound0335 = icmp ult ptr %.1.lcssa, %scevgep332
  %bound1336 = icmp ult ptr %i.p, %scevgep331
  %found.conflict337 = and i1 %bound0335, %bound1336
  %bound0338 = icmp ult ptr %.1.lcssa, %scevgep334
  %bound1339 = icmp ult ptr %.0117.lcssa, %scevgep331
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %found.conflict337, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph252.preheader, label %vector.main.loop.iter.check343

vector.main.loop.iter.check343:                   ; preds = %vector.memcheck330
  %min.iters.check344 = icmp ult i32 %i.z, 30
  br i1 %min.iters.check344, label %vec.epilog.ph367, label %vector.ph345

vector.ph345:                                     ; preds = %vector.main.loop.iter.check343
  %i.ai = and i64 %i.ab, 12
  %n.vec346 = and i64 %i.ab, 4294967280           ; 6 uses
  %i.aj = shl nuw nsw i64 %n.vec346, 2
  %i.ak = getelementptr i8, ptr %.1.lcssa, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %n.vec346, 3
  %i.am = getelementptr i8, ptr %.0117.lcssa, i64 %i.al
  %i.an = trunc nuw i64 %n.vec346 to i32
  %i.ao = shl i32 %i.an, 1
  %i.ap = add i32 %.0119.lcssa, %i.ao
  %i.aq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat348 = shufflevector <1 x i32> %i.aq, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ar = add nsw <16 x i32> %broadcast.splat348, splat (i32 -1)
  %i.as = sitofp fast <16 x i32> %i.ar to <16 x float>
  %i.at = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat350 = shufflevector <1 x i32> %i.at, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.au = add nsw <16 x i32> %broadcast.splat350, splat (i32 -1)
  %i.av = sitofp fast <16 x i32> %i.au to <16 x float>
  br label %vector.body353

vector.body353:                                   ; preds = %vector.ph345, %vector.body353
  %index354 = phi i64 [ 0, %vector.ph345 ], [ %index.next360, %vector.body353 ] ; 3 uses
  %i.aw = shl i64 %index354, 2
  %next.gep355 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw
  %i.ax = shl i64 %index354, 3
  %next.gep356 = getelementptr i8, ptr %.0117.lcssa, i64 %i.ax
  %wide.vec = load <32 x float>, ptr %next.gep356, align 4, !tbaa !40, !alias.scope !378 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec357 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ay = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.az = fadd fast <16 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <16 x float> %i.az, %i.as
  %i.bb = fmul fast <16 x float> %strided.vec357, splat (float 5.000000e-01)
  %i.bc = fadd fast <16 x float> %i.bb, splat (float 5.000000e-01)
  %i.bd = fmul fast <16 x float> %i.bc, %i.av
  %i.be = fadd fast <16 x float> %i.ba, splat (float 5.000000e-01)
  %i.bf = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.be)
  %i.bg = fptosi <16 x float> %i.bf to <16 x i32> ; 3 uses
  %i.bh = fadd fast <16 x float> %i.bd, splat (float 5.000000e-01)
  %i.bi = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bh)
  %i.bj = fptosi <16 x float> %i.bi to <16 x i32> ; 3 uses
  %i.bk = icmp sgt <16 x i32> %broadcast.splat348, %i.bg
  %i.bl = or <16 x i32> %i.bj, %i.bg
  %i.bm = icmp sgt <16 x i32> %i.bl, splat (i32 -1)
  %i.bn = and <16 x i1> %i.bk, %i.bm
  %i.bo = icmp sgt <16 x i32> %broadcast.splat350, %i.bj
  %i.bp = and <16 x i1> %i.bo, %i.bn              ; 2 uses
  %i.bq = mul nuw nsw <16 x i32> %broadcast.splat348, %i.bj
  %i.br = add nsw <16 x i32> %i.bq, %i.bg
  %wide.masked.gather358 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat352, <16 x i1> %i.bp, <16 x i32> poison), !tbaa !16, !alias.scope !379
  %i.bs = mul nsw <16 x i32> %wide.masked.gather358, %i.br
  %predphi359 = select <16 x i1> %i.bp, <16 x i32> %i.bs, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi359, ptr %next.gep355, align 4, !tbaa !23, !alias.scope !380, !noalias !381
  %index.next360 = add nuw i64 %index354, 16      ; 2 uses
  %i.bt = icmp eq i64 %index.next360, %n.vec346
  br i1 %i.bt, label %middle.block361, label %vector.body353, !llvm.loop !358

middle.block361:                                  ; preds = %vector.body353
  %cmp.n362 = icmp eq i64 %n.vec346, %i.ab
  br i1 %cmp.n362, label %._crit_edge, label %vec.epilog.iter.check364

vec.epilog.iter.check364:                         ; preds = %middle.block361
  %min.epilog.iters.check366 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check366, label %.lr.ph252.preheader, label %vec.epilog.ph367, !prof !45

vec.epilog.ph367:                                 ; preds = %vector.main.loop.iter.check343, %vec.epilog.iter.check364
  %vec.epilog.resume.val368 = phi i64 [ %n.vec346, %vec.epilog.iter.check364 ], [ 0, %vector.main.loop.iter.check343 ]
  %n.vec369 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.bu = shl nuw nsw i64 %n.vec369, 2
  %i.bv = getelementptr i8, ptr %.1.lcssa, i64 %i.bu ; 2 uses
  %i.bw = shl nuw nsw i64 %n.vec369, 3
  %i.bx = getelementptr i8, ptr %.0117.lcssa, i64 %i.bw
  %i.by = trunc nuw i64 %n.vec369 to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = add i32 %.0119.lcssa, %i.bz
  %i.cb = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat371 = shufflevector <1 x i32> %i.cb, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cc = add nsw <4 x i32> %broadcast.splat371, splat (i32 -1)
  %i.cd = sitofp fast <4 x i32> %i.cc to <4 x float>
  %i.ce = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat373 = shufflevector <1 x i32> %i.ce, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cf = add nsw <4 x i32> %broadcast.splat373, splat (i32 -1)
  %i.cg = sitofp fast <4 x i32> %i.cf to <4 x float>
  br label %vec.epilog.vector.body376

vec.epilog.vector.body376:                        ; preds = %vec.epilog.vector.body376, %vec.epilog.ph367
  %index377 = phi i64 [ %vec.epilog.resume.val368, %vec.epilog.ph367 ], [ %index.next385, %vec.epilog.vector.body376 ] ; 3 uses
  %i.ch = shl i64 %index377, 2
  %next.gep378 = getelementptr i8, ptr %.1.lcssa, i64 %i.ch
  %i.ci = shl i64 %index377, 3
  %next.gep379 = getelementptr i8, ptr %.0117.lcssa, i64 %i.ci
  %wide.vec380 = load <8 x float>, ptr %next.gep379, align 4, !tbaa !40, !alias.scope !378 ; 2 uses
  %strided.vec381 = shufflevector <8 x float> %wide.vec380, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec382 = shufflevector <8 x float> %wide.vec380, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cj = fmul fast <4 x float> %strided.vec381, splat (float 5.000000e-01)
  %i.ck = fadd fast <4 x float> %i.cj, splat (float 5.000000e-01)
  %i.cl = fmul fast <4 x float> %i.ck, %i.cd
  %i.cm = fmul fast <4 x float> %strided.vec382, splat (float 5.000000e-01)
  %i.cn = fadd fast <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fmul fast <4 x float> %i.cn, %i.cg
  %i.cp = fadd fast <4 x float> %i.cl, splat (float 5.000000e-01)
  %i.cq = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.cp)
  %i.cr = fptosi <4 x float> %i.cq to <4 x i32>   ; 3 uses
  %i.cs = fadd fast <4 x float> %i.co, splat (float 5.000000e-01)
  %i.ct = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.cs)
  %i.cu = fptosi <4 x float> %i.ct to <4 x i32>   ; 3 uses
  %i.cv = icmp sgt <4 x i32> %broadcast.splat371, %i.cr
  %i.cw = or <4 x i32> %i.cu, %i.cr
  %i.cx = icmp sgt <4 x i32> %i.cw, splat (i32 -1)
  %i.cy = and <4 x i1> %i.cv, %i.cx
  %i.cz = icmp sgt <4 x i32> %broadcast.splat373, %i.cu
  %i.da = and <4 x i1> %i.cz, %i.cy               ; 2 uses
  %i.db = mul nuw nsw <4 x i32> %broadcast.splat371, %i.cu
  %i.dc = add nsw <4 x i32> %i.db, %i.cr
  %wide.masked.gather383 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat375, <4 x i1> %i.da, <4 x i32> poison), !tbaa !16, !alias.scope !379
  %i.dd = mul nsw <4 x i32> %wide.masked.gather383, %i.dc
  %predphi384 = select <4 x i1> %i.da, <4 x i32> %i.dd, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi384, ptr %next.gep378, align 4, !tbaa !23, !alias.scope !380, !noalias !381
  %index.next385 = add nuw i64 %index377, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next385, %n.vec369
  br i1 %i.de, label %vec.epilog.middle.block386, label %vec.epilog.vector.body376, !llvm.loop !359

vec.epilog.middle.block386:                       ; preds = %vec.epilog.vector.body376
  %cmp.n387 = icmp eq i64 %n.vec369, %i.ab
  br i1 %cmp.n387, label %._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %iter.check363, %vector.memcheck330, %vec.epilog.iter.check364, %vec.epilog.middle.block386
  %.2251.ph = phi ptr [ %.1.lcssa, %iter.check363 ], [ %.1.lcssa, %vector.memcheck330 ], [ %i.ak, %vec.epilog.iter.check364 ], [ %i.bv, %vec.epilog.middle.block386 ]
  %.1118250.ph = phi ptr [ %.0117.lcssa, %iter.check363 ], [ %.0117.lcssa, %vector.memcheck330 ], [ %i.am, %vec.epilog.iter.check364 ], [ %i.bx, %vec.epilog.middle.block386 ]
  %.1120249.ph = phi i32 [ %.0119.lcssa, %iter.check363 ], [ %.0119.lcssa, %vector.memcheck330 ], [ %i.ap, %vec.epilog.iter.check364 ], [ %i.ca, %vec.epilog.middle.block386 ]
  br label %.lr.ph252

.lr.ph245:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph245
  %.1244 = phi ptr [ %i.et, %.lr.ph245 ], [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117243 = phi ptr [ %i.es, %.lr.ph245 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119242 = phi i32 [ %i.eu, %.lr.ph245 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.df = load <8 x float>, ptr %.0117243, align 1, !tbaa !41 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0117243, i64 32
  %i.dh = load <8 x float>, ptr %i.dg, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.df, <8 x float> %i.dh, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.df, <8 x float> %i.dh, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.di = load i32, ptr %i.n, align 4, !tbaa !37
  %i.dj = sitofp fast i32 %i.di to float
  %i.dk = insertelement <8 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <8 x float> %i.dk, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.dm = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.dn = fadd fast <8 x float> %i.dm, splat (float 5.000000e-01)
  %i.do = fadd fast <8 x float> %i.dl, splat (float -1.000000e+00)
  %i.dp = fmul fast <8 x float> %i.do, %i.dn
  %i.dq = load i32, ptr %i.o, align 8, !tbaa !38
  %i.dr = sitofp fast i32 %i.dq to float
  %i.ds = insertelement <8 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <8 x float> %i.ds, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.du = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.dv = fadd fast <8 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fadd fast <8 x float> %i.dt, splat (float -1.000000e+00)
  %i.dx = fmul fast <8 x float> %i.dw, %i.dv
  %i.dy = fadd fast <8 x float> %i.dp, splat (float 5.000000e-01)
  %i.dz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dy, i32 1) ; 3 uses
  %i.ea = fadd fast <8 x float> %i.dx, splat (float 5.000000e-01)
  %i.eb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ea, i32 1) ; 3 uses
  %i.ec = fcmp fast ogt <8 x float> %i.dz, splat (float -1.000000e+00)
  %i.ed = fcmp fast ogt <8 x float> %i.dl, %i.dz
  %i.ee = and <8 x i1> %i.ec, %i.ed
  %i.ef = fcmp fast ogt <8 x float> %i.eb, splat (float -1.000000e+00)
  %i.eg = fcmp fast ogt <8 x float> %i.dt, %i.eb
  %i.eh = and <8 x i1> %i.ef, %i.eg
  %i.ei = and <8 x i1> %i.ee, %i.eh
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.dz)
  %i.ek = load i32, ptr %i.p, align 8, !tbaa !16
  %i.el = sitofp fast i32 %i.ek to float
  %i.em = insertelement <8 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eo = fmul fast <8 x float> %i.en, %i.ej
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo)
  %i.eq = bitcast <8 x i32> %i.ep to <8 x float>
  %i.er = select <8 x i1> %i.ei, <8 x float> %i.eq, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.er, ptr %.1244, align 1, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %.0117243, i64 64 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1244, i64 32 ; 2 uses
  %i.eu = add nuw nsw i32 %.0119242, 16           ; 2 uses
  %i.ev = or disjoint i32 %i.eu, 15
  %i.ew = icmp slt i32 %i.ev, %i.e
  br i1 %i.ew, label %.lr.ph245, label %.preheader, !llvm.loop !360

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.b
  %.2251 = phi ptr [ %i.fx, %bb.b ], [ %.2251.ph, %.lr.ph252.preheader ] ; 2 uses
  %.1118250 = phi ptr [ %i.fw, %bb.b ], [ %.1118250.ph, %.lr.ph252.preheader ] ; 2 uses
  %.1120249 = phi i32 [ %i.fy, %bb.b ], [ %.1120249.ph, %.lr.ph252.preheader ]
  %i.ex = load <2 x float>, ptr %.1118250, align 4, !tbaa !40
  %i.ey = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.ez = fmul fast <2 x float> %i.ex, splat (float 5.000000e-01)
  %i.fa = fadd fast <2 x float> %i.ez, splat (float 5.000000e-01)
  %i.fb = add nsw <2 x i32> %i.ey, splat (i32 -1)
  %i.fc = sitofp <2 x i32> %i.fb to <2 x float>
  %i.fd = fmul fast <2 x float> %i.fa, %i.fc
  %i.fe = fadd fast <2 x float> %i.fd, splat (float 5.000000e-01)
  %i.ff = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fe)
  %i.fg = fptosi <2 x float> %i.ff to <2 x i32>   ; 3 uses
  %i.fh = extractelement <2 x i32> %i.fg, i64 0   ; 2 uses
  %i.fi = extractelement <2 x i32> %i.fg, i64 1   ; 2 uses
  %i.fj = or i32 %i.fi, %i.fh
  %i.fk = icmp sgt i32 %i.fj, -1
  %i.fl = icmp sgt <2 x i32> %i.ey, %i.fg         ; 2 uses
  %i.fm = extractelement <2 x i1> %i.fl, i64 0
  %i.fn = and i1 %i.fm, %i.fk
  %i.fo = extractelement <2 x i1> %i.fl, i64 1
  %i.fp = and i1 %i.fo, %i.fn
  br i1 %i.fp, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph252
  %i.fq = extractelement <2 x i32> %i.ey, i64 0
  %i.fr = mul nuw nsw i32 %i.fq, %i.fi
  %i.fs = add nsw i32 %i.fr, %i.fh
  %i.ft = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fu = mul nsw i32 %i.ft, %i.fs
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph252, %bb.a
  %i.fv = phi i32 [ %i.fu, %bb.a ], [ -1, %.lr.ph252 ]
  store i32 %i.fv, ptr %.2251, align 4, !tbaa !23
  %i.fw = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.fy = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.e
  br i1 %i.fz, label %.lr.ph252, label %._crit_edge, !llvm.loop !361

._crit_edge:                                      ; preds = %bb.b, %middle.block361, %vec.epilog.middle.block386, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.bv, %vec.epilog.middle.block386 ], [ %i.ak, %middle.block361 ], [ %i.fx, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ga = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next, %i.gb
  br i1 %i.gc, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !362

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.gd = load ptr, ptr %1, align 8, !tbaa !20, !noalias !382 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !19, !noalias !383
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !18, !noalias !383
  %i.gi = mul i64 %i.gh, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gi ; 2 uses
  %i.gk = icmp sgt i32 %i.e, 7
  br i1 %i.gk, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader228.loopexit:                           ; preds = %bb.c
  %i.go = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.gd, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ll, %.preheader228.loopexit ] ; 8 uses
  %.0112.lcssa = phi ptr [ %i.gj, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.lm, %.preheader228.loopexit ] ; 8 uses
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.go, %.preheader228.loopexit ] ; 7 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ln, %.preheader228.loopexit ] ; 10 uses
  %i.gp = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.gp, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader228
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.gt = xor i32 %.0110.lcssa, -1
  %i.gu = add i32 %i.e, %i.gt                     ; 3 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.gu, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gx = xor i32 %.0110.lcssa, -1
  %i.gy = add i32 %i.e, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2
  %i.hb = add nuw nsw i64 %i.ha, 4                ; 3 uses
  %i.hc = getelementptr i8, ptr %.3.lcssa, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.he = getelementptr i8, ptr %.0112.lcssa, i64 %i.hb
  %i.hf = getelementptr i8, ptr %.0114.lcssa, i64 %i.hb
  %bound0 = icmp ult ptr %.3.lcssa, %i.hd
  %bound1 = icmp ult ptr %i.gs, %i.hc
  %found.conflict = and i1 %bound0, %bound1
  %bound0295 = icmp ult ptr %.3.lcssa, %i.he
  %bound1296 = icmp ult ptr %.0112.lcssa, %i.hc
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx = or i1 %found.conflict, %found.conflict297
  %bound0298 = icmp ult ptr %.3.lcssa, %i.hf
  %bound1299 = icmp ult ptr %.0114.lcssa, %i.hc
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx301 = or i1 %conflict.rdx, %found.conflict300
  br i1 %conflict.rdx301, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check302 = icmp ult i32 %i.gu, 15
  br i1 %min.iters.check302, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hg = and i64 %i.gw, 12
  %n.vec = and i64 %i.gw, 8589934576              ; 5 uses
  %i.hh = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.hi = getelementptr i8, ptr %.3.lcssa, i64 %i.hh
  %i.hj = trunc i64 %n.vec to i32
  %i.hk = add i32 %.0110.lcssa, %i.hj
  %i.hl = getelementptr i8, ptr %.0112.lcssa, i64 %i.hh
  %i.hm = getelementptr i8, ptr %.0114.lcssa, i64 %i.hh
  %i.hn = load <1 x i32>, ptr %i.gq, align 4
  %broadcast.splat = shufflevector <1 x i32> %i.hn, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ho = add nsw <16 x i32> %broadcast.splat, splat (i32 -1)
  %i.hp = sitofp fast <16 x i32> %i.ho to <16 x float>
  %i.hq = load <1 x i32>, ptr %i.gr, align 8
  %broadcast.splat304 = shufflevector <1 x i32> %i.hq, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.hr = add nsw <16 x i32> %broadcast.splat304, splat (i32 -1)
  %i.hs = sitofp fast <16 x i32> %i.hr to <16 x float>
  %broadcast.splatinsert305 = insertelement <16 x ptr> poison, ptr %i.gs, i64 0
  %broadcast.splat306 = shufflevector <16 x ptr> %broadcast.splatinsert305, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ht = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.lcssa, i64 %i.ht
  %next.gep307 = getelementptr i8, ptr %.0112.lcssa, i64 %i.ht
  %next.gep308 = getelementptr i8, ptr %.0114.lcssa, i64 %i.ht
  %wide.load = load <16 x float>, ptr %next.gep308, align 4, !tbaa !40, !alias.scope !384
  %wide.load309 = load <16 x float>, ptr %next.gep307, align 4, !tbaa !40, !alias.scope !385
  %i.hu = fmul fast <16 x float> %wide.load, splat (float 5.000000e-01)
  %i.hv = fadd fast <16 x float> %i.hu, splat (float 5.000000e-01)
  %i.hw = fmul fast <16 x float> %i.hv, %i.hp
  %i.hx = fmul fast <16 x float> %wide.load309, splat (float 5.000000e-01)
  %i.hy = fadd fast <16 x float> %i.hx, splat (float 5.000000e-01)
  %i.hz = fmul fast <16 x float> %i.hy, %i.hs
  %i.ia = fadd fast <16 x float> %i.hw, splat (float 5.000000e-01)
  %i.ib = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.ia)
  %i.ic = fptosi <16 x float> %i.ib to <16 x i32> ; 3 uses
  %i.id = fadd fast <16 x float> %i.hz, splat (float 5.000000e-01)
  %i.ie = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.id)
  %i.if = fptosi <16 x float> %i.ie to <16 x i32> ; 3 uses
  %i.ig = icmp sgt <16 x i32> %broadcast.splat, %i.ic
  %i.ih = or <16 x i32> %i.if, %i.ic
  %i.ii = icmp sgt <16 x i32> %i.ih, splat (i32 -1)
  %i.ij = and <16 x i1> %i.ig, %i.ii
  %i.ik = icmp sgt <16 x i32> %broadcast.splat304, %i.if
  %i.il = and <16 x i1> %i.ik, %i.ij              ; 2 uses
  %i.im = mul nuw nsw <16 x i32> %broadcast.splat, %i.if
  %i.in = add nsw <16 x i32> %i.im, %i.ic
  %wide.masked.gather = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat306, <16 x i1> %i.il, <16 x i32> poison), !tbaa !16, !alias.scope !386
  %i.io = mul nsw <16 x i32> %wide.masked.gather, %i.in
  %predphi = select <16 x i1> %i.il, <16 x i32> %i.io, <16 x i32> splat (i32 -1)
end_hunk_7
begin_hunk_8_@_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit123
  %.0261 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !416
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !416
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !416
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 7 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.fi, %.lr.ph251 ] ; 8 uses
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.fj, %.lr.ph251 ] ; 10 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %iter.check369, label %._crit_edge

iter.check369:                                    ; preds = %.preheader
  %i.y = xor i32 %.0119.lcssa, -1
  %i.z = add i32 %i.e, %i.y                       ; 3 uses
  %i.aa = lshr i32 %i.z, 1
  %narrow = add nuw i32 %i.aa, 1
  %i.ab = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check348 = icmp ult i32 %i.z, 6
  br i1 %min.iters.check348, label %.lr.ph258.preheader, label %vector.memcheck336

vector.memcheck336:                               ; preds = %iter.check369
  %scevgep = getelementptr i8, ptr %.1.lcssa, i64 4
  %i.ac = xor i32 %.0119.lcssa, -1
  %i.ad = add i32 %i.e, %i.ac
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep337 = getelementptr i8, ptr %scevgep, i64 %i.ag ; 2 uses
  %scevgep339 = getelementptr i8, ptr %.0117.lcssa, i64 8
  %i.ah = shl nuw nsw i64 %i.af, 3
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.ah
  %bound0341 = icmp ult ptr %.1.lcssa, %scevgep338
  %bound1342 = icmp ult ptr %i.p, %scevgep337
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %.1.lcssa, %scevgep340
  %bound1345 = icmp ult ptr %.0117.lcssa, %scevgep337
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  br i1 %conflict.rdx347, label %.lr.ph258.preheader, label %vector.main.loop.iter.check349

vector.main.loop.iter.check349:                   ; preds = %vector.memcheck336
  %min.iters.check350 = icmp ult i32 %i.z, 30
  br i1 %min.iters.check350, label %vec.epilog.ph373, label %vector.ph351

vector.ph351:                                     ; preds = %vector.main.loop.iter.check349
  %i.ai = and i64 %i.ab, 12
  %n.vec352 = and i64 %i.ab, 4294967280           ; 6 uses
  %i.aj = shl nuw nsw i64 %n.vec352, 2
  %i.ak = getelementptr i8, ptr %.1.lcssa, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %n.vec352, 3
  %i.am = getelementptr i8, ptr %.0117.lcssa, i64 %i.al
  %i.an = trunc nuw i64 %n.vec352 to i32
  %i.ao = shl i32 %i.an, 1
  %i.ap = add i32 %.0119.lcssa, %i.ao
  %i.aq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat354 = shufflevector <1 x i32> %i.aq, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ar = sitofp fast <16 x i32> %broadcast.splat354 to <16 x float> ; 2 uses
  %i.as = fadd fast <16 x float> %i.ar, splat (float -1.000000e+00)
  %i.at = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat356 = shufflevector <1 x i32> %i.at, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.au = sitofp fast <16 x i32> %broadcast.splat356 to <16 x float> ; 2 uses
  %i.av = fadd fast <16 x float> %i.au, splat (float -1.000000e+00)
  br label %vector.body359

vector.body359:                                   ; preds = %vector.ph351, %vector.body359
  %index360 = phi i64 [ 0, %vector.ph351 ], [ %index.next366, %vector.body359 ] ; 3 uses
  %i.aw = shl i64 %index360, 2
  %next.gep361 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw
  %i.ax = shl i64 %index360, 3
  %next.gep362 = getelementptr i8, ptr %.0117.lcssa, i64 %i.ax
  %wide.vec = load <32 x float>, ptr %next.gep362, align 4, !tbaa !40, !alias.scope !417 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec363 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ay = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.az = fadd fast <16 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <16 x float> %i.az, %i.ar
  %i.bb = fadd fast <16 x float> %i.ba, splat (float -5.000000e-01)
  %i.bc = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bb, <16 x float> zeroinitializer)
  %i.bd = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bc, <16 x float> %i.as)
  %i.be = fmul fast <16 x float> %strided.vec363, splat (float 5.000000e-01)
  %i.bf = fadd fast <16 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = fmul fast <16 x float> %i.bf, %i.au
  %i.bh = fadd fast <16 x float> %i.bg, splat (float -5.000000e-01)
  %i.bi = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bh, <16 x float> zeroinitializer)
  %i.bj = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bi, <16 x float> %i.av)
  %i.bk = fadd fast <16 x float> %i.bd, splat (float 5.000000e-01)
  %i.bl = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bk)
  %i.bm = fptosi <16 x float> %i.bl to <16 x i32> ; 3 uses
  %i.bn = fadd fast <16 x float> %i.bj, splat (float 5.000000e-01)
  %i.bo = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bn)
  %i.bp = fptosi <16 x float> %i.bo to <16 x i32> ; 3 uses
  %i.bq = icmp sgt <16 x i32> %broadcast.splat354, %i.bm
  %i.br = or <16 x i32> %i.bp, %i.bm
  %i.bs = icmp sgt <16 x i32> %i.br, splat (i32 -1)
  %i.bt = and <16 x i1> %i.bq, %i.bs
  %i.bu = icmp sgt <16 x i32> %broadcast.splat356, %i.bp
  %i.bv = and <16 x i1> %i.bu, %i.bt              ; 2 uses
  %i.bw = mul nuw nsw <16 x i32> %broadcast.splat354, %i.bp
  %i.bx = add nsw <16 x i32> %i.bw, %i.bm
  %wide.masked.gather364 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat358, <16 x i1> %i.bv, <16 x i32> poison), !tbaa !16, !alias.scope !418
  %i.by = mul nsw <16 x i32> %wide.masked.gather364, %i.bx
  %predphi365 = select <16 x i1> %i.bv, <16 x i32> %i.by, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi365, ptr %next.gep361, align 4, !tbaa !23, !alias.scope !419, !noalias !420
  %index.next366 = add nuw i64 %index360, 16      ; 2 uses
  %i.bz = icmp eq i64 %index.next366, %n.vec352
  br i1 %i.bz, label %middle.block367, label %vector.body359, !llvm.loop !397

middle.block367:                                  ; preds = %vector.body359
  %cmp.n368 = icmp eq i64 %n.vec352, %i.ab
  br i1 %cmp.n368, label %._crit_edge, label %vec.epilog.iter.check370

vec.epilog.iter.check370:                         ; preds = %middle.block367
  %min.epilog.iters.check372 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check372, label %.lr.ph258.preheader, label %vec.epilog.ph373, !prof !45

vec.epilog.ph373:                                 ; preds = %vector.main.loop.iter.check349, %vec.epilog.iter.check370
  %vec.epilog.resume.val374 = phi i64 [ %n.vec352, %vec.epilog.iter.check370 ], [ 0, %vector.main.loop.iter.check349 ]
  %n.vec375 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.ca = shl nuw nsw i64 %n.vec375, 2
  %i.cb = getelementptr i8, ptr %.1.lcssa, i64 %i.ca ; 2 uses
  %i.cc = shl nuw nsw i64 %n.vec375, 3
  %i.cd = getelementptr i8, ptr %.0117.lcssa, i64 %i.cc
  %i.ce = trunc nuw i64 %n.vec375 to i32
  %i.cf = shl i32 %i.ce, 1
  %i.cg = add i32 %.0119.lcssa, %i.cf
  %i.ch = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat377 = shufflevector <1 x i32> %i.ch, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ci = sitofp fast <4 x i32> %broadcast.splat377 to <4 x float> ; 2 uses
  %i.cj = fadd fast <4 x float> %i.ci, splat (float -1.000000e+00)
  %i.ck = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat379 = shufflevector <1 x i32> %i.ck, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cl = sitofp fast <4 x i32> %broadcast.splat379 to <4 x float> ; 2 uses
  %i.cm = fadd fast <4 x float> %i.cl, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph373
  %index383 = phi i64 [ %vec.epilog.resume.val374, %vec.epilog.ph373 ], [ %index.next391, %vec.epilog.vector.body382 ] ; 3 uses
  %i.cn = shl i64 %index383, 2
  %next.gep384 = getelementptr i8, ptr %.1.lcssa, i64 %i.cn
  %i.co = shl i64 %index383, 3
  %next.gep385 = getelementptr i8, ptr %.0117.lcssa, i64 %i.co
  %wide.vec386 = load <8 x float>, ptr %next.gep385, align 4, !tbaa !40, !alias.scope !417 ; 2 uses
  %strided.vec387 = shufflevector <8 x float> %wide.vec386, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec388 = shufflevector <8 x float> %wide.vec386, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cp = fmul fast <4 x float> %strided.vec387, splat (float 5.000000e-01)
  %i.cq = fadd fast <4 x float> %i.cp, splat (float 5.000000e-01)
  %i.cr = fmul fast <4 x float> %i.cq, %i.ci
  %i.cs = fadd fast <4 x float> %i.cr, splat (float -5.000000e-01)
  %i.ct = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cs, <4 x float> zeroinitializer)
  %i.cu = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ct, <4 x float> %i.cj)
  %i.cv = fmul fast <4 x float> %strided.vec388, splat (float 5.000000e-01)
  %i.cw = fadd fast <4 x float> %i.cv, splat (float 5.000000e-01)
  %i.cx = fmul fast <4 x float> %i.cw, %i.cl
  %i.cy = fadd fast <4 x float> %i.cx, splat (float -5.000000e-01)
  %i.cz = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cy, <4 x float> zeroinitializer)
  %i.da = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cz, <4 x float> %i.cm)
  %i.db = fadd fast <4 x float> %i.cu, splat (float 5.000000e-01)
  %i.dc = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.db)
  %i.dd = fptosi <4 x float> %i.dc to <4 x i32>   ; 3 uses
  %i.de = fadd fast <4 x float> %i.da, splat (float 5.000000e-01)
  %i.df = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.de)
  %i.dg = fptosi <4 x float> %i.df to <4 x i32>   ; 3 uses
  %i.dh = icmp sgt <4 x i32> %broadcast.splat377, %i.dd
  %i.di = or <4 x i32> %i.dg, %i.dd
  %i.dj = icmp sgt <4 x i32> %i.di, splat (i32 -1)
  %i.dk = and <4 x i1> %i.dh, %i.dj
  %i.dl = icmp sgt <4 x i32> %broadcast.splat379, %i.dg
  %i.dm = and <4 x i1> %i.dl, %i.dk               ; 2 uses
  %i.dn = mul nuw nsw <4 x i32> %broadcast.splat377, %i.dg
  %i.do = add nsw <4 x i32> %i.dn, %i.dd
  %wide.masked.gather389 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat381, <4 x i1> %i.dm, <4 x i32> poison), !tbaa !16, !alias.scope !418
  %i.dp = mul nsw <4 x i32> %wide.masked.gather389, %i.do
  %predphi390 = select <4 x i1> %i.dm, <4 x i32> %i.dp, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi390, ptr %next.gep384, align 4, !tbaa !23, !alias.scope !419, !noalias !420
  %index.next391 = add nuw i64 %index383, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next391, %n.vec375
  br i1 %i.dq, label %vec.epilog.middle.block392, label %vec.epilog.vector.body382, !llvm.loop !398

vec.epilog.middle.block392:                       ; preds = %vec.epilog.vector.body382
  %cmp.n393 = icmp eq i64 %n.vec375, %i.ab
  br i1 %cmp.n393, label %._crit_edge, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %iter.check369, %vector.memcheck336, %vec.epilog.iter.check370, %vec.epilog.middle.block392
  %.2257.ph = phi ptr [ %.1.lcssa, %iter.check369 ], [ %.1.lcssa, %vector.memcheck336 ], [ %i.ak, %vec.epilog.iter.check370 ], [ %i.cb, %vec.epilog.middle.block392 ]
  %.1118256.ph = phi ptr [ %.0117.lcssa, %iter.check369 ], [ %.0117.lcssa, %vector.memcheck336 ], [ %i.am, %vec.epilog.iter.check370 ], [ %i.cd, %vec.epilog.middle.block392 ]
  %.1120255.ph = phi i32 [ %.0119.lcssa, %iter.check369 ], [ %.0119.lcssa, %vector.memcheck336 ], [ %i.ap, %vec.epilog.iter.check370 ], [ %i.cg, %vec.epilog.middle.block392 ]
  br label %.lr.ph258

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.fj, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.fi, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.fk, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.dr = load <8 x float>, ptr %.0117249, align 1, !tbaa !41 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.dt = load <8 x float>, ptr %i.ds, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.dr, <8 x float> %i.dt, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.dr, <8 x float> %i.dt, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.du = load i32, ptr %i.n, align 4, !tbaa !37
  %i.dv = sitofp fast i32 %i.du to float
  %i.dw = insertelement <8 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <8 x float> %i.dw, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.dy = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.dx, <8 x float> splat (float -1.000000e+00))
  %i.ea = fmul fast <8 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fadd fast <8 x float> %i.dx, splat (float -1.000000e+00)
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ea, <8 x float> zeroinitializer)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.ec)
  %i.ee = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ef = sitofp fast i32 %i.ee to float
  %i.eg = insertelement <8 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ei = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ei, <8 x float> nofpclass(nan inf) %i.eh, <8 x float> splat (float -1.000000e+00))
  %i.ek = fmul fast <8 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fadd fast <8 x float> %i.eh, splat (float -1.000000e+00)
  %i.em = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> zeroinitializer)
  %i.en = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %i.em)
  %i.eo = fadd fast <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.ep = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eo, i32 1) ; 3 uses
  %i.eq = fadd fast <8 x float> %i.en, splat (float 5.000000e-01)
  %i.er = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eq, i32 1) ; 3 uses
  %i.es = fcmp fast ogt <8 x float> %i.ep, splat (float -1.000000e+00)
  %i.et = fcmp fast ogt <8 x float> %i.dx, %i.ep
  %i.eu = and <8 x i1> %i.es, %i.et
  %i.ev = fcmp fast ogt <8 x float> %i.er, splat (float -1.000000e+00)
  %i.ew = fcmp fast ogt <8 x float> %i.eh, %i.er
  %i.ex = and <8 x i1> %i.ev, %i.ew
  %i.ey = and <8 x i1> %i.eu, %i.ex
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.ep)
  %i.fa = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fb = sitofp fast i32 %i.fa to float
  %i.fc = insertelement <8 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <8 x float> %i.fc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fe = fmul fast <8 x float> %i.fd, %i.ez
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fe)
  %i.fg = bitcast <8 x i32> %i.ff to <8 x float>
  %i.fh = select <8 x i1> %i.ey, <8 x float> %i.fg, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fh, ptr %.1250, align 1, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.fk = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.fl = or disjoint i32 %i.fk, 15
  %i.fm = icmp slt i32 %i.fl, %i.e
  br i1 %i.fm, label %.lr.ph251, label %.preheader, !llvm.loop !399

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.b
  %.2257 = phi ptr [ %i.gq, %bb.b ], [ %.2257.ph, %.lr.ph258.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.gp, %bb.b ], [ %.1118256.ph, %.lr.ph258.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.gr, %bb.b ], [ %.1120255.ph, %.lr.ph258.preheader ]
  %i.fn = load <2 x float>, ptr %.1118256, align 4, !tbaa !40
  %i.fo = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>   ; 2 uses
  %i.fq = fmul fast <2 x float> %i.fn, splat (float 5.000000e-01)
  %i.fr = fadd fast <2 x float> %i.fq, splat (float 5.000000e-01)
  %i.fs = fmul fast <2 x float> %i.fr, %i.fp
  %i.ft = fadd fast <2 x float> %i.fs, splat (float -5.000000e-01)
  %i.fu = fadd fast <2 x float> %i.fp, splat (float -1.000000e+00)
  %i.fv = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ft, <2 x float> zeroinitializer)
  %i.fw = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fv, <2 x float> %i.fu)
  %i.fx = fadd fast <2 x float> %i.fw, splat (float 5.000000e-01)
  %i.fy = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fx)
  %i.fz = fptosi <2 x float> %i.fy to <2 x i32>   ; 3 uses
  %i.ga = extractelement <2 x i32> %i.fz, i64 0   ; 2 uses
  %i.gb = extractelement <2 x i32> %i.fz, i64 1   ; 2 uses
  %i.gc = or i32 %i.gb, %i.ga
  %i.gd = icmp sgt i32 %i.gc, -1
  %i.ge = icmp sgt <2 x i32> %i.fo, %i.fz         ; 2 uses
  %i.gf = extractelement <2 x i1> %i.ge, i64 0
  %i.gg = and i1 %i.gf, %i.gd
  %i.gh = extractelement <2 x i1> %i.ge, i64 1
  %i.gi = and i1 %i.gh, %i.gg
  br i1 %i.gi, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.gj = extractelement <2 x i32> %i.fo, i64 0
  %i.gk = mul nuw nsw i32 %i.gj, %i.gb
  %i.gl = add nsw i32 %i.gk, %i.ga
  %i.gm = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gn = mul nsw i32 %i.gm, %i.gl
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.go = phi i32 [ %i.gn, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.go, ptr %.2257, align 4, !tbaa !23
  %i.gp = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.gr = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.gs = icmp slt i32 %i.gr, %i.e
  br i1 %i.gs, label %.lr.ph258, label %._crit_edge, !llvm.loop !400

._crit_edge:                                      ; preds = %bb.b, %middle.block367, %vec.epilog.middle.block392, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cb, %vec.epilog.middle.block392 ], [ %i.ak, %middle.block367 ], [ %i.gq, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gt = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next, %i.gu
  br i1 %i.gv, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !401

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.gw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !421 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !19, !noalias !422
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !18, !noalias !422
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hb ; 2 uses
  %i.hd = icmp sgt i32 %i.e, 7
  br i1 %i.hd, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.hh = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.gw, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.mu, %.preheader234.loopexit ] ; 8 uses
  %.0112.lcssa = phi ptr [ %i.hc, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.mv, %.preheader234.loopexit ] ; 8 uses
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.hh, %.preheader234.loopexit ] ; 7 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.mw, %.preheader234.loopexit ] ; 10 uses
  %i.hi = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.hi, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader234
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hm = xor i32 %.0110.lcssa, -1
  %i.hn = add i32 %i.e, %i.hm                     ; 3 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hn, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hq = xor i32 %.0110.lcssa, -1
  %i.hr = add i32 %i.e, %i.hq
  %i.hs = zext i32 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, 2
  %i.hu = add nuw nsw i64 %i.ht, 4                ; 3 uses
  %i.hv = getelementptr i8, ptr %.3.lcssa, i64 %i.hu ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hx = getelementptr i8, ptr %.0112.lcssa, i64 %i.hu
  %i.hy = getelementptr i8, ptr %.0114.lcssa, i64 %i.hu
  %bound0 = icmp ult ptr %.3.lcssa, %i.hw
  %bound1 = icmp ult ptr %i.hl, %i.hv
  %found.conflict = and i1 %bound0, %bound1
  %bound0301 = icmp ult ptr %.3.lcssa, %i.hx
  %bound1302 = icmp ult ptr %.0112.lcssa, %i.hv
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx = or i1 %found.conflict, %found.conflict303
  %bound0304 = icmp ult ptr %.3.lcssa, %i.hy
  %bound1305 = icmp ult ptr %.0114.lcssa, %i.hv
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx, %found.conflict306
  br i1 %conflict.rdx307, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check308 = icmp ult i32 %i.hn, 15
  br i1 %min.iters.check308, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hz = and i64 %i.hp, 12
  %n.vec = and i64 %i.hp, 8589934576              ; 5 uses
  %i.ia = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.ib = getelementptr i8, ptr %.3.lcssa, i64 %i.ia
  %i.ic = trunc i64 %n.vec to i32
  %i.id = add i32 %.0110.lcssa, %i.ic
  %i.ie = getelementptr i8, ptr %.0112.lcssa, i64 %i.ia
  %i.if = getelementptr i8, ptr %.0114.lcssa, i64 %i.ia
  %i.ig = load <1 x i32>, ptr %i.hj, align 4
  %broadcast.splat = shufflevector <1 x i32> %i.ig, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ih = sitofp fast <16 x i32> %broadcast.splat to <16 x float> ; 2 uses
  %i.ii = fadd fast <16 x float> %i.ih, splat (float -1.000000e+00)
  %i.ij = load <1 x i32>, ptr %i.hk, align 8
  %broadcast.splat310 = shufflevector <1 x i32> %i.ij, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ik = sitofp fast <16 x i32> %broadcast.splat310 to <16 x float> ; 2 uses
  %i.il = fadd fast <16 x float> %i.ik, splat (float -1.000000e+00)
  %broadcast.splatinsert311 = insertelement <16 x ptr> poison, ptr %i.hl, i64 0
  %broadcast.splat312 = shufflevector <16 x ptr> %broadcast.splatinsert311, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.im = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.lcssa, i64 %i.im
  %next.gep313 = getelementptr i8, ptr %.0112.lcssa, i64 %i.im
  %next.gep314 = getelementptr i8, ptr %.0114.lcssa, i64 %i.im
  %wide.load = load <16 x float>, ptr %next.gep314, align 4, !tbaa !40, !alias.scope !423
  %wide.load315 = load <16 x float>, ptr %next.gep313, align 4, !tbaa !40, !alias.scope !424
  %i.in = fmul fast <16 x float> %wide.load, splat (float 5.000000e-01)
  %i.io = fadd fast <16 x float> %i.in, splat (float 5.000000e-01)
  %i.ip = fmul fast <16 x float> %i.io, %i.ih
  %i.iq = fadd fast <16 x float> %i.ip, splat (float -5.000000e-01)
  %i.ir = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.iq, <16 x float> zeroinitializer)
  %i.is = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ir, <16 x float> %i.ii)
  %i.it = fmul fast <16 x float> %wide.load315, splat (float 5.000000e-01)
  %i.iu = fadd fast <16 x float> %i.it, splat (float 5.000000e-01)
  %i.iv = fmul fast <16 x float> %i.iu, %i.ik
  %i.iw = fadd fast <16 x float> %i.iv, splat (float -5.000000e-01)
  %i.ix = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.iw, <16 x float> zeroinitializer)
  %i.iy = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ix, <16 x float> %i.il)
  %i.iz = fadd fast <16 x float> %i.is, splat (float 5.000000e-01)
  %i.ja = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.iz)
  %i.jb = fptosi <16 x float> %i.ja to <16 x i32> ; 3 uses
  %i.jc = fadd fast <16 x float> %i.iy, splat (float 5.000000e-01)
  %i.jd = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.jc)
  %i.je = fptosi <16 x float> %i.jd to <16 x i32> ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit123
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !455
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 7 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.fm, %.lr.ph251 ] ; 8 uses
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.fn, %.lr.ph251 ] ; 10 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %iter.check369, label %._crit_edge

iter.check369:                                    ; preds = %.preheader
  %i.y = xor i32 %.0119.lcssa, -1
  %i.z = add i32 %i.e, %i.y                       ; 3 uses
  %i.aa = lshr i32 %i.z, 1
  %narrow = add nuw i32 %i.aa, 1
  %i.ab = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check348 = icmp ult i32 %i.z, 6
  br i1 %min.iters.check348, label %.lr.ph258.preheader, label %vector.memcheck336

vector.memcheck336:                               ; preds = %iter.check369
  %scevgep = getelementptr i8, ptr %.1.lcssa, i64 4
  %i.ac = xor i32 %.0119.lcssa, -1
  %i.ad = add i32 %i.e, %i.ac
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep337 = getelementptr i8, ptr %scevgep, i64 %i.ag ; 2 uses
  %scevgep339 = getelementptr i8, ptr %.0117.lcssa, i64 8
  %i.ah = shl nuw nsw i64 %i.af, 3
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.ah
  %bound0341 = icmp ult ptr %.1.lcssa, %scevgep338
  %bound1342 = icmp ult ptr %i.p, %scevgep337
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %.1.lcssa, %scevgep340
  %bound1345 = icmp ult ptr %.0117.lcssa, %scevgep337
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  br i1 %conflict.rdx347, label %.lr.ph258.preheader, label %vector.main.loop.iter.check349

vector.main.loop.iter.check349:                   ; preds = %vector.memcheck336
  %min.iters.check350 = icmp ult i32 %i.z, 30
  br i1 %min.iters.check350, label %vec.epilog.ph373, label %vector.ph351

vector.ph351:                                     ; preds = %vector.main.loop.iter.check349
  %i.ai = and i64 %i.ab, 12
  %n.vec352 = and i64 %i.ab, 4294967280           ; 6 uses
  %i.aj = shl nuw nsw i64 %n.vec352, 2
  %i.ak = getelementptr i8, ptr %.1.lcssa, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %n.vec352, 3
  %i.am = getelementptr i8, ptr %.0117.lcssa, i64 %i.al
  %i.an = trunc nuw i64 %n.vec352 to i32
  %i.ao = shl i32 %i.an, 1
  %i.ap = add i32 %.0119.lcssa, %i.ao
  %i.aq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat354 = shufflevector <1 x i32> %i.aq, <1 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ar = add nsw <16 x i32> %broadcast.splat354, splat (i32 -1)
  %i.as = sitofp fast <16 x i32> %i.ar to <16 x float>
  %i.at = sitofp fast <16 x i32> %broadcast.splat354 to <16 x float>
  %i.au = fadd fast <16 x float> %i.at, splat (float -1.000000e+00)
  %i.av = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat356 = shufflevector <1 x i32> %i.av, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.aw = add nsw <16 x i32> %broadcast.splat356, splat (i32 -1)
  %i.ax = sitofp fast <16 x i32> %i.aw to <16 x float>
  %i.ay = sitofp fast <16 x i32> %broadcast.splat356 to <16 x float>
  %i.az = fadd fast <16 x float> %i.ay, splat (float -1.000000e+00)
  br label %vector.body359

vector.body359:                                   ; preds = %vector.ph351, %vector.body359
  %index360 = phi i64 [ 0, %vector.ph351 ], [ %index.next366, %vector.body359 ] ; 3 uses
  %i.ba = shl i64 %index360, 2
  %next.gep361 = getelementptr i8, ptr %.1.lcssa, i64 %i.ba
  %i.bb = shl i64 %index360, 3
  %next.gep362 = getelementptr i8, ptr %.0117.lcssa, i64 %i.bb
  %wide.vec = load <32 x float>, ptr %next.gep362, align 4, !tbaa !40, !alias.scope !456 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec363 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bc = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.bd = fadd fast <16 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul fast <16 x float> %i.bd, %i.as
  %i.bf = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.be, <16 x float> zeroinitializer)
  %i.bg = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bf, <16 x float> %i.au)
  %i.bh = fmul fast <16 x float> %strided.vec363, splat (float 5.000000e-01)
  %i.bi = fadd fast <16 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul fast <16 x float> %i.bi, %i.ax
  %i.bk = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bj, <16 x float> zeroinitializer)
  %i.bl = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bk, <16 x float> %i.az)
  %i.bm = fadd fast <16 x float> %i.bg, splat (float 5.000000e-01)
  %i.bn = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bm)
  %i.bo = fptosi <16 x float> %i.bn to <16 x i32> ; 3 uses
  %i.bp = fadd fast <16 x float> %i.bl, splat (float 5.000000e-01)
  %i.bq = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bp)
  %i.br = fptosi <16 x float> %i.bq to <16 x i32> ; 3 uses
  %i.bs = icmp sgt <16 x i32> %broadcast.splat354, %i.bo
  %i.bt = or <16 x i32> %i.br, %i.bo
  %i.bu = icmp sgt <16 x i32> %i.bt, splat (i32 -1)
  %i.bv = and <16 x i1> %i.bs, %i.bu
  %i.bw = icmp sgt <16 x i32> %broadcast.splat356, %i.br
  %i.bx = and <16 x i1> %i.bw, %i.bv              ; 2 uses
  %i.by = mul nuw nsw <16 x i32> %broadcast.splat354, %i.br
  %i.bz = add nsw <16 x i32> %i.by, %i.bo
  %wide.masked.gather364 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat358, <16 x i1> %i.bx, <16 x i32> poison), !tbaa !16, !alias.scope !457
  %i.ca = mul nsw <16 x i32> %wide.masked.gather364, %i.bz
  %predphi365 = select <16 x i1> %i.bx, <16 x i32> %i.ca, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi365, ptr %next.gep361, align 4, !tbaa !23, !alias.scope !458, !noalias !459
  %index.next366 = add nuw i64 %index360, 16      ; 2 uses
  %i.cb = icmp eq i64 %index.next366, %n.vec352
  br i1 %i.cb, label %middle.block367, label %vector.body359, !llvm.loop !436

middle.block367:                                  ; preds = %vector.body359
  %cmp.n368 = icmp eq i64 %n.vec352, %i.ab
  br i1 %cmp.n368, label %._crit_edge, label %vec.epilog.iter.check370

vec.epilog.iter.check370:                         ; preds = %middle.block367
  %min.epilog.iters.check372 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check372, label %.lr.ph258.preheader, label %vec.epilog.ph373, !prof !45

vec.epilog.ph373:                                 ; preds = %vector.main.loop.iter.check349, %vec.epilog.iter.check370
  %vec.epilog.resume.val374 = phi i64 [ %n.vec352, %vec.epilog.iter.check370 ], [ 0, %vector.main.loop.iter.check349 ]
  %n.vec375 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.cc = shl nuw nsw i64 %n.vec375, 2
  %i.cd = getelementptr i8, ptr %.1.lcssa, i64 %i.cc ; 2 uses
  %i.ce = shl nuw nsw i64 %n.vec375, 3
  %i.cf = getelementptr i8, ptr %.0117.lcssa, i64 %i.ce
  %i.cg = trunc nuw i64 %n.vec375 to i32
  %i.ch = shl i32 %i.cg, 1
  %i.ci = add i32 %.0119.lcssa, %i.ch
  %i.cj = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat377 = shufflevector <1 x i32> %i.cj, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ck = add nsw <4 x i32> %broadcast.splat377, splat (i32 -1)
  %i.cl = sitofp fast <4 x i32> %i.ck to <4 x float>
  %i.cm = sitofp fast <4 x i32> %broadcast.splat377 to <4 x float>
  %i.cn = fadd fast <4 x float> %i.cm, splat (float -1.000000e+00)
  %i.co = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat379 = shufflevector <1 x i32> %i.co, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cp = add nsw <4 x i32> %broadcast.splat379, splat (i32 -1)
  %i.cq = sitofp fast <4 x i32> %i.cp to <4 x float>
  %i.cr = sitofp fast <4 x i32> %broadcast.splat379 to <4 x float>
  %i.cs = fadd fast <4 x float> %i.cr, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph373
  %index383 = phi i64 [ %vec.epilog.resume.val374, %vec.epilog.ph373 ], [ %index.next391, %vec.epilog.vector.body382 ] ; 3 uses
  %i.ct = shl i64 %index383, 2
  %next.gep384 = getelementptr i8, ptr %.1.lcssa, i64 %i.ct
  %i.cu = shl i64 %index383, 3
  %next.gep385 = getelementptr i8, ptr %.0117.lcssa, i64 %i.cu
  %wide.vec386 = load <8 x float>, ptr %next.gep385, align 4, !tbaa !40, !alias.scope !456 ; 2 uses
  %strided.vec387 = shufflevector <8 x float> %wide.vec386, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec388 = shufflevector <8 x float> %wide.vec386, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cv = fmul fast <4 x float> %strided.vec387, splat (float 5.000000e-01)
  %i.cw = fadd fast <4 x float> %i.cv, splat (float 5.000000e-01)
  %i.cx = fmul fast <4 x float> %i.cw, %i.cl
  %i.cy = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cx, <4 x float> zeroinitializer)
  %i.cz = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cy, <4 x float> %i.cn)
  %i.da = fmul fast <4 x float> %strided.vec388, splat (float 5.000000e-01)
  %i.db = fadd fast <4 x float> %i.da, splat (float 5.000000e-01)
  %i.dc = fmul fast <4 x float> %i.db, %i.cq
  %i.dd = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer)
  %i.de = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dd, <4 x float> %i.cs)
  %i.df = fadd fast <4 x float> %i.cz, splat (float 5.000000e-01)
  %i.dg = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.df)
  %i.dh = fptosi <4 x float> %i.dg to <4 x i32>   ; 3 uses
  %i.di = fadd fast <4 x float> %i.de, splat (float 5.000000e-01)
  %i.dj = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.di)
  %i.dk = fptosi <4 x float> %i.dj to <4 x i32>   ; 3 uses
  %i.dl = icmp sgt <4 x i32> %broadcast.splat377, %i.dh
  %i.dm = or <4 x i32> %i.dk, %i.dh
  %i.dn = icmp sgt <4 x i32> %i.dm, splat (i32 -1)
  %i.do = and <4 x i1> %i.dl, %i.dn
  %i.dp = icmp sgt <4 x i32> %broadcast.splat379, %i.dk
  %i.dq = and <4 x i1> %i.dp, %i.do               ; 2 uses
  %i.dr = mul nuw nsw <4 x i32> %broadcast.splat377, %i.dk
  %i.ds = add nsw <4 x i32> %i.dr, %i.dh
  %wide.masked.gather389 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat381, <4 x i1> %i.dq, <4 x i32> poison), !tbaa !16, !alias.scope !457
  %i.dt = mul nsw <4 x i32> %wide.masked.gather389, %i.ds
  %predphi390 = select <4 x i1> %i.dq, <4 x i32> %i.dt, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi390, ptr %next.gep384, align 4, !tbaa !23, !alias.scope !458, !noalias !459
  %index.next391 = add nuw i64 %index383, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next391, %n.vec375
  br i1 %i.du, label %vec.epilog.middle.block392, label %vec.epilog.vector.body382, !llvm.loop !437

vec.epilog.middle.block392:                       ; preds = %vec.epilog.vector.body382
  %cmp.n393 = icmp eq i64 %n.vec375, %i.ab
  br i1 %cmp.n393, label %._crit_edge, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %iter.check369, %vector.memcheck336, %vec.epilog.iter.check370, %vec.epilog.middle.block392
  %.2257.ph = phi ptr [ %.1.lcssa, %iter.check369 ], [ %.1.lcssa, %vector.memcheck336 ], [ %i.ak, %vec.epilog.iter.check370 ], [ %i.cd, %vec.epilog.middle.block392 ]
  %.1118256.ph = phi ptr [ %.0117.lcssa, %iter.check369 ], [ %.0117.lcssa, %vector.memcheck336 ], [ %i.am, %vec.epilog.iter.check370 ], [ %i.cf, %vec.epilog.middle.block392 ]
  %.1120255.ph = phi i32 [ %.0119.lcssa, %iter.check369 ], [ %.0119.lcssa, %vector.memcheck336 ], [ %i.ap, %vec.epilog.iter.check370 ], [ %i.ci, %vec.epilog.middle.block392 ]
  br label %.lr.ph258

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.fn, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.fm, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.fo, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.dv = load <8 x float>, ptr %.0117249, align 1, !tbaa !41 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.dx = load <8 x float>, ptr %i.dw, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.dv, <8 x float> %i.dx, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.dv, <8 x float> %i.dx, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dy = load i32, ptr %i.n, align 4, !tbaa !37
  %i.dz = sitofp fast i32 %i.dy to float
  %i.ea = insertelement <8 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <8 x float> %i.ea, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ec = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.ed = fadd fast <8 x float> %i.ec, splat (float 5.000000e-01)
  %i.ee = fadd fast <8 x float> %i.eb, splat (float -1.000000e+00) ; 2 uses
  %i.ef = fmul fast <8 x float> %i.ee, %i.ed
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> zeroinitializer)
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.eg)
  %i.ei = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ej = sitofp fast i32 %i.ei to float
  %i.ek = insertelement <8 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.em = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.en = fadd fast <8 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fadd fast <8 x float> %i.el, splat (float -1.000000e+00) ; 2 uses
  %i.ep = fmul fast <8 x float> %i.eo, %i.en
  %i.eq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> zeroinitializer)
  %i.er = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eo, <8 x float> nofpclass(nan inf) %i.eq)
  %i.es = fadd fast <8 x float> %i.eh, splat (float 5.000000e-01)
  %i.et = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.es, i32 1) ; 3 uses
  %i.eu = fadd fast <8 x float> %i.er, splat (float 5.000000e-01)
  %i.ev = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eu, i32 1) ; 3 uses
  %i.ew = fcmp fast ogt <8 x float> %i.et, splat (float -1.000000e+00)
  %i.ex = fcmp fast ogt <8 x float> %i.eb, %i.et
  %i.ey = and <8 x i1> %i.ew, %i.ex
  %i.ez = fcmp fast ogt <8 x float> %i.ev, splat (float -1.000000e+00)
  %i.fa = fcmp fast ogt <8 x float> %i.el, %i.ev
  %i.fb = and <8 x i1> %i.ez, %i.fa
  %i.fc = and <8 x i1> %i.ey, %i.fb
  %i.fd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ev, <8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.et)
  %i.fe = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ff = sitofp fast i32 %i.fe to float
  %i.fg = insertelement <8 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <8 x float> %i.fg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fi = fmul fast <8 x float> %i.fh, %i.fd
  %i.fj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fi)
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>
  %i.fl = select <8 x i1> %i.fc, <8 x float> %i.fk, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fl, ptr %.1250, align 1, !tbaa !41
  %i.fm = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.fo = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.fp = or disjoint i32 %i.fo, 15
  %i.fq = icmp slt i32 %i.fp, %i.e
  br i1 %i.fq, label %.lr.ph251, label %.preheader, !llvm.loop !438

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.b
  %.2257 = phi ptr [ %i.gv, %bb.b ], [ %.2257.ph, %.lr.ph258.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.gu, %bb.b ], [ %.1118256.ph, %.lr.ph258.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.gw, %bb.b ], [ %.1120255.ph, %.lr.ph258.preheader ]
  %i.fr = load <2 x float>, ptr %.1118256, align 4, !tbaa !40
  %i.fs = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.ft = fmul fast <2 x float> %i.fr, splat (float 5.000000e-01)
  %i.fu = fadd fast <2 x float> %i.ft, splat (float 5.000000e-01)
  %i.fv = add nsw <2 x i32> %i.fs, splat (i32 -1)
  %i.fw = sitofp <2 x i32> %i.fv to <2 x float>
  %i.fx = fmul fast <2 x float> %i.fu, %i.fw
  %i.fy = sitofp <2 x i32> %i.fs to <2 x float>
  %i.fz = fadd fast <2 x float> %i.fy, splat (float -1.000000e+00)
  %i.ga = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fx, <2 x float> zeroinitializer)
  %i.gb = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ga, <2 x float> %i.fz)
  %i.gc = fadd fast <2 x float> %i.gb, splat (float 5.000000e-01)
  %i.gd = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gc)
  %i.ge = fptosi <2 x float> %i.gd to <2 x i32>   ; 3 uses
  %i.gf = extractelement <2 x i32> %i.ge, i64 0   ; 2 uses
  %i.gg = extractelement <2 x i32> %i.ge, i64 1   ; 2 uses
  %i.gh = or i32 %i.gg, %i.gf
  %i.gi = icmp sgt i32 %i.gh, -1
  %i.gj = icmp sgt <2 x i32> %i.fs, %i.ge         ; 2 uses
  %i.gk = extractelement <2 x i1> %i.gj, i64 0
  %i.gl = and i1 %i.gk, %i.gi
  %i.gm = extractelement <2 x i1> %i.gj, i64 1
  %i.gn = and i1 %i.gm, %i.gl
  br i1 %i.gn, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.go = extractelement <2 x i32> %i.fs, i64 0
  %i.gp = mul nuw nsw i32 %i.go, %i.gg
  %i.gq = add nsw i32 %i.gp, %i.gf
  %i.gr = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gs = mul nsw i32 %i.gr, %i.gq
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.gt = phi i32 [ %i.gs, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.gt, ptr %.2257, align 4, !tbaa !23
  %i.gu = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.gw = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.gx = icmp slt i32 %i.gw, %i.e
  br i1 %i.gx, label %.lr.ph258, label %._crit_edge, !llvm.loop !439

._crit_edge:                                      ; preds = %bb.b, %middle.block367, %vec.epilog.middle.block392, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cd, %vec.epilog.middle.block392 ], [ %i.ak, %middle.block367 ], [ %i.gv, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gy = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp slt i64 %indvars.iv.next, %i.gz
  br i1 %i.ha, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !440

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.hb = load ptr, ptr %1, align 8, !tbaa !20, !noalias !460 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !19, !noalias !461
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !18, !noalias !461
  %i.hg = mul i64 %i.hf, %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hg ; 2 uses
  %i.hi = icmp sgt i32 %i.e, 7
  br i1 %i.hi, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.hm = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.hb, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.nd, %.preheader234.loopexit ] ; 8 uses
  %.0112.lcssa = phi ptr [ %i.hh, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ne, %.preheader234.loopexit ] ; 8 uses
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.hm, %.preheader234.loopexit ] ; 7 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.nf, %.preheader234.loopexit ] ; 10 uses
  %i.hn = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.hn, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader234
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hr = xor i32 %.0110.lcssa, -1
  %i.hs = add i32 %i.e, %i.hr                     ; 3 uses
  %i.ht = zext i32 %i.hs to i64
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hs, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hv = xor i32 %.0110.lcssa, -1
  %i.hw = add i32 %i.e, %i.hv
  %i.hx = zext i32 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 4                ; 3 uses
  %i.ia = getelementptr i8, ptr %.3.lcssa, i64 %i.hz ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ic = getelementptr i8, ptr %.0112.lcssa, i64 %i.hz
  %i.id = getelementptr i8, ptr %.0114.lcssa, i64 %i.hz
  %bound0 = icmp ult ptr %.3.lcssa, %i.ib
  %bound1 = icmp ult ptr %i.hq, %i.ia
  %found.conflict = and i1 %bound0, %bound1
  %bound0301 = icmp ult ptr %.3.lcssa, %i.ic
  %bound1302 = icmp ult ptr %.0112.lcssa, %i.ia
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx = or i1 %found.conflict, %found.conflict303
  %bound0304 = icmp ult ptr %.3.lcssa, %i.id
  %bound1305 = icmp ult ptr %.0114.lcssa, %i.ia
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx, %found.conflict306
  br i1 %conflict.rdx307, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check308 = icmp ult i32 %i.hs, 15
  br i1 %min.iters.check308, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ie = and i64 %i.hu, 12
  %n.vec = and i64 %i.hu, 8589934576              ; 5 uses
  %i.if = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.ig = getelementptr i8, ptr %.3.lcssa, i64 %i.if
  %i.ih = trunc i64 %n.vec to i32
  %i.ii = add i32 %.0110.lcssa, %i.ih
  %i.ij = getelementptr i8, ptr %.0112.lcssa, i64 %i.if
  %i.ik = getelementptr i8, ptr %.0114.lcssa, i64 %i.if
  %i.il = load <1 x i32>, ptr %i.ho, align 4
  %broadcast.splat = shufflevector <1 x i32> %i.il, <1 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.im = add nsw <16 x i32> %broadcast.splat, splat (i32 -1)
  %i.in = sitofp fast <16 x i32> %i.im to <16 x float>
  %i.io = sitofp fast <16 x i32> %broadcast.splat to <16 x float>
  %i.ip = fadd fast <16 x float> %i.io, splat (float -1.000000e+00)
  %i.iq = load <1 x i32>, ptr %i.hp, align 8
  %broadcast.splat310 = shufflevector <1 x i32> %i.iq, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ir = add nsw <16 x i32> %broadcast.splat310, splat (i32 -1)
  %i.is = sitofp fast <16 x i32> %i.ir to <16 x float>
  %i.it = sitofp fast <16 x i32> %broadcast.splat310 to <16 x float>
  %i.iu = fadd fast <16 x float> %i.it, splat (float -1.000000e+00)
  %broadcast.splatinsert311 = insertelement <16 x ptr> poison, ptr %i.hq, i64 0
  %broadcast.splat312 = shufflevector <16 x ptr> %broadcast.splatinsert311, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iv = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.lcssa, i64 %i.iv
  %next.gep313 = getelementptr i8, ptr %.0112.lcssa, i64 %i.iv
  %next.gep314 = getelementptr i8, ptr %.0114.lcssa, i64 %i.iv
  %wide.load = load <16 x float>, ptr %next.gep314, align 4, !tbaa !40, !alias.scope !462
  %wide.load315 = load <16 x float>, ptr %next.gep313, align 4, !tbaa !40, !alias.scope !463
  %i.iw = fmul fast <16 x float> %wide.load, splat (float 5.000000e-01)
  %i.ix = fadd fast <16 x float> %i.iw, splat (float 5.000000e-01)
  %i.iy = fmul fast <16 x float> %i.ix, %i.in
  %i.iz = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.iy, <16 x float> zeroinitializer)
  %i.ja = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.iz, <16 x float> %i.ip)
  %i.jb = fmul fast <16 x float> %wide.load315, splat (float 5.000000e-01)
  %i.jc = fadd fast <16 x float> %i.jb, splat (float 5.000000e-01)
  %i.jd = fmul fast <16 x float> %i.jc, %i.is
  %i.je = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.jd, <16 x float> zeroinitializer)
  %i.jf = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.je, <16 x float> %i.iu)
  %i.jg = fadd fast <16 x float> %i.ja, splat (float 5.000000e-01)
  %i.jh = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.jg)
  %i.ji = fptosi <16 x float> %i.jh to <16 x i32> ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit123
iter.check376:                                    ; preds = %.preheader
  %i.y = xor i32 %.0119.lcssa, -1
  %i.z = add i32 %i.e, %i.y                       ; 3 uses
  %i.aa = lshr i32 %i.z, 1
  %narrow = add nuw i32 %i.aa, 1
  %i.ab = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check355 = icmp ult i32 %i.z, 6
  br i1 %min.iters.check355, label %.lr.ph265.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %iter.check376
  %scevgep = getelementptr i8, ptr %.1.lcssa, i64 4
  %i.ac = xor i32 %.0119.lcssa, -1
  %i.ad = add i32 %i.e, %i.ac
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep344 = getelementptr i8, ptr %scevgep, i64 %i.ag ; 2 uses
  %scevgep346 = getelementptr i8, ptr %.0117.lcssa, i64 8
  %i.ah = shl nuw nsw i64 %i.af, 3
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.ah
  %bound0348 = icmp ult ptr %.1.lcssa, %scevgep345
  %bound1349 = icmp ult ptr %i.p, %scevgep344
  %found.conflict350 = and i1 %bound0348, %bound1349
  %bound0351 = icmp ult ptr %.1.lcssa, %scevgep347
  %bound1352 = icmp ult ptr %.0117.lcssa, %scevgep344
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %found.conflict350, %found.conflict353
  br i1 %conflict.rdx354, label %.lr.ph265.preheader, label %vector.main.loop.iter.check356

vector.main.loop.iter.check356:                   ; preds = %vector.memcheck343
  %min.iters.check357 = icmp ult i32 %i.z, 30
  br i1 %min.iters.check357, label %vec.epilog.ph380, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check356
  %i.ai = and i64 %i.ab, 12
  %n.vec359 = and i64 %i.ab, 4294967280           ; 6 uses
  %i.aj = shl nuw nsw i64 %n.vec359, 2
  %i.ak = getelementptr i8, ptr %.1.lcssa, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %n.vec359, 3
  %i.am = getelementptr i8, ptr %.0117.lcssa, i64 %i.al
  %i.an = trunc nuw i64 %n.vec359 to i32
  %i.ao = shl i32 %i.an, 1
  %i.ap = add i32 %.0119.lcssa, %i.ao
  %i.aq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat361 = shufflevector <1 x i32> %i.aq, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ar = sitofp fast <16 x i32> %broadcast.splat361 to <16 x float> ; 4 uses
  %i.as = fadd fast <16 x float> %i.ar, splat (float -5.000000e-01)
  %i.at = fadd fast <16 x float> %i.ar, splat (float -1.000000e+00)
  %i.au = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat363 = shufflevector <1 x i32> %i.au, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.av = sitofp fast <16 x i32> %broadcast.splat363 to <16 x float> ; 4 uses
  %i.aw = fadd fast <16 x float> %i.av, splat (float -5.000000e-01)
  %i.ax = fadd fast <16 x float> %i.av, splat (float -1.000000e+00)
  br label %vector.body366

vector.body366:                                   ; preds = %vector.ph358, %vector.body366
  %index367 = phi i64 [ 0, %vector.ph358 ], [ %index.next373, %vector.body366 ] ; 3 uses
  %i.ay = shl i64 %index367, 2
  %next.gep368 = getelementptr i8, ptr %.1.lcssa, i64 %i.ay
  %i.az = shl i64 %index367, 3
  %next.gep369 = getelementptr i8, ptr %.0117.lcssa, i64 %i.az
  %wide.vec = load <32 x float>, ptr %next.gep369, align 4, !tbaa !40, !alias.scope !495 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec370 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ba = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.bb = fadd fast <16 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fmul fast <16 x float> %i.bb, %i.ar
  %i.bd = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bc)
  %i.be = fsub fast <16 x float> %i.bd, %i.ar
  %i.bf = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.be)
  %i.bg = fsub fast <16 x float> %i.as, %i.bf
  %i.bh = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bg, <16 x float> zeroinitializer)
  %i.bi = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bh, <16 x float> %i.at)
  %i.bj = fmul fast <16 x float> %strided.vec370, splat (float 5.000000e-01)
  %i.bk = fadd fast <16 x float> %i.bj, splat (float 5.000000e-01)
  %i.bl = fmul fast <16 x float> %i.bk, %i.av
  %i.bm = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bl)
  %i.bn = fsub fast <16 x float> %i.bm, %i.av
  %i.bo = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bn)
  %i.bp = fsub fast <16 x float> %i.aw, %i.bo
  %i.bq = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bp, <16 x float> zeroinitializer)
  %i.br = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bq, <16 x float> %i.ax)
  %i.bs = fadd fast <16 x float> %i.bi, splat (float 5.000000e-01)
  %i.bt = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bs)
  %i.bu = fptosi <16 x float> %i.bt to <16 x i32> ; 3 uses
  %i.bv = fadd fast <16 x float> %i.br, splat (float 5.000000e-01)
  %i.bw = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bv)
  %i.bx = fptosi <16 x float> %i.bw to <16 x i32> ; 3 uses
  %i.by = icmp sgt <16 x i32> %broadcast.splat361, %i.bu
  %i.bz = or <16 x i32> %i.bx, %i.bu
  %i.ca = icmp sgt <16 x i32> %i.bz, splat (i32 -1)
  %i.cb = and <16 x i1> %i.by, %i.ca
  %i.cc = icmp sgt <16 x i32> %broadcast.splat363, %i.bx
  %i.cd = and <16 x i1> %i.cc, %i.cb              ; 2 uses
  %i.ce = mul nuw nsw <16 x i32> %broadcast.splat361, %i.bx
  %i.cf = add nsw <16 x i32> %i.ce, %i.bu
  %wide.masked.gather371 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat365, <16 x i1> %i.cd, <16 x i32> poison), !tbaa !16, !alias.scope !496
  %i.cg = mul nsw <16 x i32> %wide.masked.gather371, %i.cf
  %predphi372 = select <16 x i1> %i.cd, <16 x i32> %i.cg, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi372, ptr %next.gep368, align 4, !tbaa !23, !alias.scope !497, !noalias !498
  %index.next373 = add nuw i64 %index367, 16      ; 2 uses
  %i.ch = icmp eq i64 %index.next373, %n.vec359
  br i1 %i.ch, label %middle.block374, label %vector.body366, !llvm.loop !475

middle.block374:                                  ; preds = %vector.body366
  %cmp.n375 = icmp eq i64 %n.vec359, %i.ab
  br i1 %cmp.n375, label %._crit_edge, label %vec.epilog.iter.check377

vec.epilog.iter.check377:                         ; preds = %middle.block374
  %min.epilog.iters.check379 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check379, label %.lr.ph265.preheader, label %vec.epilog.ph380, !prof !45

vec.epilog.ph380:                                 ; preds = %vector.main.loop.iter.check356, %vec.epilog.iter.check377
  %vec.epilog.resume.val381 = phi i64 [ %n.vec359, %vec.epilog.iter.check377 ], [ 0, %vector.main.loop.iter.check356 ]
  %n.vec382 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.ci = shl nuw nsw i64 %n.vec382, 2
  %i.cj = getelementptr i8, ptr %.1.lcssa, i64 %i.ci ; 2 uses
  %i.ck = shl nuw nsw i64 %n.vec382, 3
  %i.cl = getelementptr i8, ptr %.0117.lcssa, i64 %i.ck
  %i.cm = trunc nuw i64 %n.vec382 to i32
  %i.cn = shl i32 %i.cm, 1
  %i.co = add i32 %.0119.lcssa, %i.cn
  %i.cp = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat384 = shufflevector <1 x i32> %i.cp, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cq = sitofp fast <4 x i32> %broadcast.splat384 to <4 x float> ; 4 uses
  %i.cr = fadd fast <4 x float> %i.cq, splat (float -5.000000e-01)
  %i.cs = fadd fast <4 x float> %i.cq, splat (float -1.000000e+00)
  %i.ct = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat386 = shufflevector <1 x i32> %i.ct, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cu = sitofp fast <4 x i32> %broadcast.splat386 to <4 x float> ; 4 uses
  %i.cv = fadd fast <4 x float> %i.cu, splat (float -5.000000e-01)
  %i.cw = fadd fast <4 x float> %i.cu, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body389

vec.epilog.vector.body389:                        ; preds = %vec.epilog.vector.body389, %vec.epilog.ph380
  %index390 = phi i64 [ %vec.epilog.resume.val381, %vec.epilog.ph380 ], [ %index.next398, %vec.epilog.vector.body389 ] ; 3 uses
  %i.cx = shl i64 %index390, 2
  %next.gep391 = getelementptr i8, ptr %.1.lcssa, i64 %i.cx
  %i.cy = shl i64 %index390, 3
  %next.gep392 = getelementptr i8, ptr %.0117.lcssa, i64 %i.cy
  %wide.vec393 = load <8 x float>, ptr %next.gep392, align 4, !tbaa !40, !alias.scope !495 ; 2 uses
  %strided.vec394 = shufflevector <8 x float> %wide.vec393, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec395 = shufflevector <8 x float> %wide.vec393, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cz = fmul fast <4 x float> %strided.vec394, splat (float 5.000000e-01)
  %i.da = fadd fast <4 x float> %i.cz, splat (float 5.000000e-01)
  %i.db = fmul fast <4 x float> %i.da, %i.cq
  %i.dc = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.db)
  %i.dd = fsub fast <4 x float> %i.dc, %i.cq
  %i.de = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dd)
  %i.df = fsub fast <4 x float> %i.cr, %i.de
  %i.dg = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer)
  %i.dh = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dg, <4 x float> %i.cs)
  %i.di = fmul fast <4 x float> %strided.vec395, splat (float 5.000000e-01)
  %i.dj = fadd fast <4 x float> %i.di, splat (float 5.000000e-01)
  %i.dk = fmul fast <4 x float> %i.dj, %i.cu
  %i.dl = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dk)
  %i.dm = fsub fast <4 x float> %i.dl, %i.cu
  %i.dn = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dm)
  %i.do = fsub fast <4 x float> %i.cv, %i.dn
  %i.dp = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.do, <4 x float> zeroinitializer)
  %i.dq = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dp, <4 x float> %i.cw)
  %i.dr = fadd fast <4 x float> %i.dh, splat (float 5.000000e-01)
  %i.ds = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.dr)
  %i.dt = fptosi <4 x float> %i.ds to <4 x i32>   ; 3 uses
  %i.du = fadd fast <4 x float> %i.dq, splat (float 5.000000e-01)
  %i.dv = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.du)
  %i.dw = fptosi <4 x float> %i.dv to <4 x i32>   ; 3 uses
  %i.dx = icmp sgt <4 x i32> %broadcast.splat384, %i.dt
  %i.dy = or <4 x i32> %i.dw, %i.dt
  %i.dz = icmp sgt <4 x i32> %i.dy, splat (i32 -1)
  %i.ea = and <4 x i1> %i.dx, %i.dz
  %i.eb = icmp sgt <4 x i32> %broadcast.splat386, %i.dw
  %i.ec = and <4 x i1> %i.eb, %i.ea               ; 2 uses
  %i.ed = mul nuw nsw <4 x i32> %broadcast.splat384, %i.dw
  %i.ee = add nsw <4 x i32> %i.ed, %i.dt
  %wide.masked.gather396 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat388, <4 x i1> %i.ec, <4 x i32> poison), !tbaa !16, !alias.scope !496
  %i.ef = mul nsw <4 x i32> %wide.masked.gather396, %i.ee
  %predphi397 = select <4 x i1> %i.ec, <4 x i32> %i.ef, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi397, ptr %next.gep391, align 4, !tbaa !23, !alias.scope !497, !noalias !498
  %index.next398 = add nuw i64 %index390, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next398, %n.vec382
  br i1 %i.eg, label %vec.epilog.middle.block399, label %vec.epilog.vector.body389, !llvm.loop !476

vec.epilog.middle.block399:                       ; preds = %vec.epilog.vector.body389
  %cmp.n400 = icmp eq i64 %n.vec382, %i.ab
  br i1 %cmp.n400, label %._crit_edge, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %iter.check376, %vector.memcheck343, %vec.epilog.iter.check377, %vec.epilog.middle.block399
  %.2264.ph = phi ptr [ %.1.lcssa, %iter.check376 ], [ %.1.lcssa, %vector.memcheck343 ], [ %i.ak, %vec.epilog.iter.check377 ], [ %i.cj, %vec.epilog.middle.block399 ]
  %.1118263.ph = phi ptr [ %.0117.lcssa, %iter.check376 ], [ %.0117.lcssa, %vector.memcheck343 ], [ %i.am, %vec.epilog.iter.check377 ], [ %i.cl, %vec.epilog.middle.block399 ]
  %.1120262.ph = phi i32 [ %.0119.lcssa, %iter.check376 ], [ %.0119.lcssa, %vector.memcheck343 ], [ %i.ap, %vec.epilog.iter.check377 ], [ %i.co, %vec.epilog.middle.block399 ]
  br label %.lr.ph265

.lr.ph258:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph258
  %.1257 = phi ptr [ %i.gl, %.lr.ph258 ], [ %.0268, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117256 = phi ptr [ %i.gk, %.lr.ph258 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119255 = phi i32 [ %i.gm, %.lr.ph258 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.eh = load <8 x float>, ptr %.0117256, align 1, !tbaa !41 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0117256, i64 32
  %i.ej = load <8 x float>, ptr %i.ei, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.eh, <8 x float> %i.ej, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.eh, <8 x float> %i.ej, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ek = load i32, ptr %i.n, align 4, !tbaa !37
  %i.el = sitofp fast i32 %i.ek to float
  %i.em = insertelement <8 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.eo = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.ep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eo, <8 x float> nofpclass(nan inf) %i.en, <8 x float> splat (float -1.000000e+00))
  %i.eq = fmul fast <8 x float> %i.ep, splat (float 5.000000e-01)
  %i.er = fadd fast <8 x float> %i.en, splat (float -1.000000e+00)
  %i.es = fadd fast <8 x float> %i.eq, splat (float 5.000000e-01)
  %i.et = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.es)
  %i.eu = fsub fast <8 x float> %i.et, %i.en
  %i.ev = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eu)
  %i.ew = fadd fast <8 x float> %i.en, splat (float -5.000000e-01)
  %i.ex = fsub fast <8 x float> %i.ew, %i.ev
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> zeroinitializer)
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.ey)
  %i.fa = load i32, ptr %i.o, align 8, !tbaa !38
  %i.fb = sitofp fast i32 %i.fa to float
  %i.fc = insertelement <8 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <8 x float> %i.fc, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.fe = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.ff = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fe, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float -1.000000e+00))
  %i.fg = fmul fast <8 x float> %i.ff, splat (float 5.000000e-01)
  %i.fh = fadd fast <8 x float> %i.fd, splat (float -1.000000e+00)
  %i.fi = fadd fast <8 x float> %i.fg, splat (float 5.000000e-01)
  %i.fj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fi)
  %i.fk = fsub fast <8 x float> %i.fj, %i.fd
  %i.fl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fk)
  %i.fm = fadd fast <8 x float> %i.fd, splat (float -5.000000e-01)
  %i.fn = fsub fast <8 x float> %i.fm, %i.fl
  %i.fo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> zeroinitializer)
  %i.fp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fo)
  %i.fq = fadd fast <8 x float> %i.ez, splat (float 5.000000e-01)
  %i.fr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fq, i32 1) ; 3 uses
  %i.fs = fadd fast <8 x float> %i.fp, splat (float 5.000000e-01)
  %i.ft = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fs, i32 1) ; 3 uses
  %i.fu = fcmp fast ogt <8 x float> %i.fr, splat (float -1.000000e+00)
  %i.fv = fcmp fast ogt <8 x float> %i.en, %i.fr
  %i.fw = and <8 x i1> %i.fu, %i.fv
  %i.fx = fcmp fast ogt <8 x float> %i.ft, splat (float -1.000000e+00)
  %i.fy = fcmp fast ogt <8 x float> %i.fd, %i.ft
  %i.fz = and <8 x i1> %i.fx, %i.fy
  %i.ga = and <8 x i1> %i.fw, %i.fz
  %i.gb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.en, <8 x float> nofpclass(nan inf) %i.fr)
  %i.gc = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gd = sitofp fast i32 %i.gc to float
  %i.ge = insertelement <8 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <8 x float> %i.ge, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gg = fmul fast <8 x float> %i.gf, %i.gb
  %i.gh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gg)
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>
  %i.gj = select <8 x i1> %i.ga, <8 x float> %i.gi, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.gj, ptr %.1257, align 1, !tbaa !41
  %i.gk = getelementptr inbounds nuw i8, ptr %.0117256, i64 64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.1257, i64 32 ; 2 uses
  %i.gm = add nuw nsw i32 %.0119255, 16           ; 2 uses
  %i.gn = or disjoint i32 %i.gm, 15
  %i.go = icmp slt i32 %i.gn, %i.e
  br i1 %i.go, label %.lr.ph258, label %.preheader, !llvm.loop !477

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.b
  %.2264 = phi ptr [ %i.hw, %bb.b ], [ %.2264.ph, %.lr.ph265.preheader ] ; 2 uses
  %.1118263 = phi ptr [ %i.hv, %bb.b ], [ %.1118263.ph, %.lr.ph265.preheader ] ; 2 uses
  %.1120262 = phi i32 [ %i.hx, %bb.b ], [ %.1120262.ph, %.lr.ph265.preheader ]
  %i.gp = load <2 x float>, ptr %.1118263, align 4, !tbaa !40
  %i.gq = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.gr = sitofp <2 x i32> %i.gq to <2 x float>   ; 4 uses
  %i.gs = fmul fast <2 x float> %i.gp, splat (float 5.000000e-01)
  %i.gt = fadd fast <2 x float> %i.gs, splat (float 5.000000e-01)
  %i.gu = fmul fast <2 x float> %i.gt, %i.gr
  %i.gv = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gu)
  %i.gw = fsub fast <2 x float> %i.gv, %i.gr
  %i.gx = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gw)
  %i.gy = fadd fast <2 x float> %i.gr, splat (float -5.000000e-01)
  %i.gz = fsub fast <2 x float> %i.gy, %i.gx
  %i.ha = fadd fast <2 x float> %i.gr, splat (float -1.000000e+00)
  %i.hb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gz, <2 x float> zeroinitializer)
  %i.hc = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hb, <2 x float> %i.ha)
  %i.hd = fadd fast <2 x float> %i.hc, splat (float 5.000000e-01)
  %i.he = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.hd)
  %i.hf = fptosi <2 x float> %i.he to <2 x i32>   ; 3 uses
  %i.hg = extractelement <2 x i32> %i.hf, i64 0   ; 2 uses
  %i.hh = extractelement <2 x i32> %i.hf, i64 1   ; 2 uses
  %i.hi = or i32 %i.hh, %i.hg
  %i.hj = icmp sgt i32 %i.hi, -1
  %i.hk = icmp sgt <2 x i32> %i.gq, %i.hf         ; 2 uses
  %i.hl = extractelement <2 x i1> %i.hk, i64 0
  %i.hm = and i1 %i.hl, %i.hj
  %i.hn = extractelement <2 x i1> %i.hk, i64 1
  %i.ho = and i1 %i.hn, %i.hm
  br i1 %i.ho, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph265
  %i.hp = extractelement <2 x i32> %i.gq, i64 0
  %i.hq = mul nuw nsw i32 %i.hp, %i.hh
  %i.hr = add nsw i32 %i.hq, %i.hg
  %i.hs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ht = mul nsw i32 %i.hs, %i.hr
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph265, %bb.a
  %i.hu = phi i32 [ %i.ht, %bb.a ], [ -1, %.lr.ph265 ]
  store i32 %i.hu, ptr %.2264, align 4, !tbaa !23
  %i.hv = getelementptr inbounds nuw i8, ptr %.1118263, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.2264, i64 4 ; 2 uses
  %i.hx = add nuw nsw i32 %.1120262, 2            ; 2 uses
  %i.hy = icmp slt i32 %i.hx, %i.e
  br i1 %i.hy, label %.lr.ph265, label %._crit_edge, !llvm.loop !478

._crit_edge:                                      ; preds = %bb.b, %middle.block374, %vec.epilog.middle.block399, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cj, %vec.epilog.middle.block399 ], [ %i.ak, %middle.block374 ], [ %i.hw, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hz = load i32, ptr %i.h, align 8, !tbaa !17
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp slt i64 %indvars.iv.next, %i.ia
  br i1 %i.ib, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !479

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.ic = load ptr, ptr %1, align 8, !tbaa !20, !noalias !499 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.if = load i64, ptr %i.id, align 8, !tbaa !19, !noalias !500
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !18, !noalias !500
  %i.ih = mul i64 %i.ig, %i.if
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ih ; 2 uses
  %i.ij = icmp sgt i32 %i.e, 7
  br i1 %i.ij, label %.lr.ph, label %.preheader241

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader241.loopexit:                           ; preds = %bb.c
  %i.in = and i32 %i.e, 2147483640
  br label %.preheader241

.preheader241:                                    ; preds = %.preheader241.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.ic, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.pc, %.preheader241.loopexit ] ; 8 uses
  %.0112.lcssa = phi ptr [ %i.ii, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.pd, %.preheader241.loopexit ] ; 8 uses
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.in, %.preheader241.loopexit ] ; 7 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.pe, %.preheader241.loopexit ] ; 10 uses
  %i.io = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.io, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader241
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.is = xor i32 %.0110.lcssa, -1
  %i.it = add i32 %i.e, %i.is                     ; 3 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.it, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iw = xor i32 %.0110.lcssa, -1
  %i.ix = add i32 %i.e, %i.iw
  %i.iy = zext i32 %i.ix to i64
  %i.iz = shl nuw nsw i64 %i.iy, 2
  %i.ja = add nuw nsw i64 %i.iz, 4                ; 3 uses
  %i.jb = getelementptr i8, ptr %.3.lcssa, i64 %i.ja ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jd = getelementptr i8, ptr %.0112.lcssa, i64 %i.ja
  %i.je = getelementptr i8, ptr %.0114.lcssa, i64 %i.ja
  %bound0 = icmp ult ptr %.3.lcssa, %i.jc
  %bound1 = icmp ult ptr %i.ir, %i.jb
  %found.conflict = and i1 %bound0, %bound1
  %bound0308 = icmp ult ptr %.3.lcssa, %i.jd
  %bound1309 = icmp ult ptr %.0112.lcssa, %i.jb
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx = or i1 %found.conflict, %found.conflict310
  %bound0311 = icmp ult ptr %.3.lcssa, %i.je
  %bound1312 = icmp ult ptr %.0114.lcssa, %i.jb
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx314 = or i1 %conflict.rdx, %found.conflict313
  br i1 %conflict.rdx314, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check315 = icmp ult i32 %i.it, 15
  br i1 %min.iters.check315, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jf = and i64 %i.iv, 12
  %n.vec = and i64 %i.iv, 8589934576              ; 5 uses
  %i.jg = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.jh = getelementptr i8, ptr %.3.lcssa, i64 %i.jg
  %i.ji = trunc i64 %n.vec to i32
  %i.jj = add i32 %.0110.lcssa, %i.ji
  %i.jk = getelementptr i8, ptr %.0112.lcssa, i64 %i.jg
  %i.jl = getelementptr i8, ptr %.0114.lcssa, i64 %i.jg
  %i.jm = load <1 x i32>, ptr %i.ip, align 4
  %broadcast.splat = shufflevector <1 x i32> %i.jm, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.jn = sitofp fast <16 x i32> %broadcast.splat to <16 x float> ; 4 uses
  %i.jo = fadd fast <16 x float> %i.jn, splat (float -5.000000e-01)
  %i.jp = fadd fast <16 x float> %i.jn, splat (float -1.000000e+00)
  %i.jq = load <1 x i32>, ptr %i.iq, align 8
  %broadcast.splat317 = shufflevector <1 x i32> %i.jq, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.jr = sitofp fast <16 x i32> %broadcast.splat317 to <16 x float> ; 4 uses
  %i.js = fadd fast <16 x float> %i.jr, splat (float -5.000000e-01)
  %i.jt = fadd fast <16 x float> %i.jr, splat (float -1.000000e+00)
  %broadcast.splatinsert318 = insertelement <16 x ptr> poison, ptr %i.ir, i64 0
  %broadcast.splat319 = shufflevector <16 x ptr> %broadcast.splatinsert318, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ju = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.lcssa, i64 %i.ju
  %next.gep320 = getelementptr i8, ptr %.0112.lcssa, i64 %i.ju
  %next.gep321 = getelementptr i8, ptr %.0114.lcssa, i64 %i.ju
  %wide.load = load <16 x float>, ptr %next.gep321, align 4, !tbaa !40, !alias.scope !501
  %wide.load322 = load <16 x float>, ptr %next.gep320, align 4, !tbaa !40, !alias.scope !502
  %i.jv = fmul fast <16 x float> %wide.load, splat (float 5.000000e-01)
  %i.jw = fadd fast <16 x float> %i.jv, splat (float 5.000000e-01)
  %i.jx = fmul fast <16 x float> %i.jw, %i.jn
  %i.jy = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.jx)
  %i.jz = fsub fast <16 x float> %i.jy, %i.jn
  %i.ka = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.jz)
end_hunk_10
begin_hunk_11_@_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit123
  %narrow = add nuw i32 %i.aa, 1
  %i.ab = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check351 = icmp ult i32 %i.z, 6
  br i1 %min.iters.check351, label %.lr.ph261.preheader, label %vector.memcheck339

vector.memcheck339:                               ; preds = %iter.check372
  %scevgep = getelementptr i8, ptr %.1.lcssa, i64 4
  %i.ac = xor i32 %.0119.lcssa, -1
  %i.ad = add i32 %i.e, %i.ac
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep340 = getelementptr i8, ptr %scevgep, i64 %i.ag ; 2 uses
  %scevgep342 = getelementptr i8, ptr %.0117.lcssa, i64 8
  %i.ah = shl nuw nsw i64 %i.af, 3
  %scevgep343 = getelementptr i8, ptr %scevgep342, i64 %i.ah
  %bound0344 = icmp ult ptr %.1.lcssa, %scevgep341
  %bound1345 = icmp ult ptr %i.p, %scevgep340
  %found.conflict346 = and i1 %bound0344, %bound1345
  %bound0347 = icmp ult ptr %.1.lcssa, %scevgep343
  %bound1348 = icmp ult ptr %.0117.lcssa, %scevgep340
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %found.conflict346, %found.conflict349
  br i1 %conflict.rdx350, label %.lr.ph261.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck339
  %min.iters.check353 = icmp ult i32 %i.z, 30
  br i1 %min.iters.check353, label %vec.epilog.ph376, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.ai = and i64 %i.ab, 12
  %n.vec355 = and i64 %i.ab, 4294967280           ; 6 uses
  %i.aj = shl nuw nsw i64 %n.vec355, 2
  %i.ak = getelementptr i8, ptr %.1.lcssa, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %n.vec355, 3
  %i.am = getelementptr i8, ptr %.0117.lcssa, i64 %i.al
  %i.an = trunc nuw i64 %n.vec355 to i32
  %i.ao = shl i32 %i.an, 1
  %i.ap = add i32 %.0119.lcssa, %i.ao
  %i.aq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat357 = shufflevector <1 x i32> %i.aq, <1 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ar = add nsw <16 x i32> %broadcast.splat357, splat (i32 -1)
  %i.as = sitofp fast <16 x i32> %i.ar to <16 x float> ; 3 uses
  %i.at = sitofp fast <16 x i32> %broadcast.splat357 to <16 x float>
  %i.au = fadd fast <16 x float> %i.at, splat (float -1.000000e+00)
  %i.av = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat359 = shufflevector <1 x i32> %i.av, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.aw = add nsw <16 x i32> %broadcast.splat359, splat (i32 -1)
  %i.ax = sitofp fast <16 x i32> %i.aw to <16 x float> ; 3 uses
  %i.ay = sitofp fast <16 x i32> %broadcast.splat359 to <16 x float>
  %i.az = fadd fast <16 x float> %i.ay, splat (float -1.000000e+00)
  br label %vector.body362

vector.body362:                                   ; preds = %vector.ph354, %vector.body362
  %index363 = phi i64 [ 0, %vector.ph354 ], [ %index.next369, %vector.body362 ] ; 3 uses
  %i.ba = shl i64 %index363, 2
  %next.gep364 = getelementptr i8, ptr %.1.lcssa, i64 %i.ba
  %i.bb = shl i64 %index363, 3
  %next.gep365 = getelementptr i8, ptr %.0117.lcssa, i64 %i.bb
  %wide.vec = load <32 x float>, ptr %next.gep365, align 4, !tbaa !40, !alias.scope !534 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec366 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bc = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.bd = fadd fast <16 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul fast <16 x float> %i.bd, %i.as
  %i.bf = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.be)
  %i.bg = fsub fast <16 x float> %i.bf, %i.as
  %i.bh = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bg)
  %i.bi = fsub fast <16 x float> %i.as, %i.bh
  %i.bj = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bi, <16 x float> zeroinitializer)
  %i.bk = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bj, <16 x float> %i.au)
  %i.bl = fmul fast <16 x float> %strided.vec366, splat (float 5.000000e-01)
  %i.bm = fadd fast <16 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = fmul fast <16 x float> %i.bm, %i.ax
  %i.bo = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bn)
  %i.bp = fsub fast <16 x float> %i.bo, %i.ax
  %i.bq = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bp)
  %i.br = fsub fast <16 x float> %i.ax, %i.bq
  %i.bs = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.br, <16 x float> zeroinitializer)
  %i.bt = tail call nnan ninf nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bs, <16 x float> %i.az)
  %i.bu = fadd fast <16 x float> %i.bk, splat (float 5.000000e-01)
  %i.bv = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bu)
  %i.bw = fptosi <16 x float> %i.bv to <16 x i32> ; 3 uses
  %i.bx = fadd fast <16 x float> %i.bt, splat (float 5.000000e-01)
  %i.by = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.bx)
  %i.bz = fptosi <16 x float> %i.by to <16 x i32> ; 3 uses
  %i.ca = icmp sgt <16 x i32> %broadcast.splat357, %i.bw
  %i.cb = or <16 x i32> %i.bz, %i.bw
  %i.cc = icmp sgt <16 x i32> %i.cb, splat (i32 -1)
  %i.cd = and <16 x i1> %i.ca, %i.cc
  %i.ce = icmp sgt <16 x i32> %broadcast.splat359, %i.bz
  %i.cf = and <16 x i1> %i.ce, %i.cd              ; 2 uses
  %i.cg = mul nuw nsw <16 x i32> %broadcast.splat357, %i.bz
  %i.ch = add nsw <16 x i32> %i.cg, %i.bw
  %wide.masked.gather367 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat361, <16 x i1> %i.cf, <16 x i32> poison), !tbaa !16, !alias.scope !535
  %i.ci = mul nsw <16 x i32> %wide.masked.gather367, %i.ch
  %predphi368 = select <16 x i1> %i.cf, <16 x i32> %i.ci, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi368, ptr %next.gep364, align 4, !tbaa !23, !alias.scope !536, !noalias !537
  %index.next369 = add nuw i64 %index363, 16      ; 2 uses
  %i.cj = icmp eq i64 %index.next369, %n.vec355
  br i1 %i.cj, label %middle.block370, label %vector.body362, !llvm.loop !514

middle.block370:                                  ; preds = %vector.body362
  %cmp.n371 = icmp eq i64 %n.vec355, %i.ab
  br i1 %cmp.n371, label %._crit_edge, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block370
  %min.epilog.iters.check375 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check375, label %.lr.ph261.preheader, label %vec.epilog.ph376, !prof !45

vec.epilog.ph376:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check373
  %vec.epilog.resume.val377 = phi i64 [ %n.vec355, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec378 = and i64 %i.ab, 4294967292           ; 5 uses
  %i.ck = shl nuw nsw i64 %n.vec378, 2
  %i.cl = getelementptr i8, ptr %.1.lcssa, i64 %i.ck ; 2 uses
  %i.cm = shl nuw nsw i64 %n.vec378, 3
  %i.cn = getelementptr i8, ptr %.0117.lcssa, i64 %i.cm
  %i.co = trunc nuw i64 %n.vec378 to i32
  %i.cp = shl i32 %i.co, 1
  %i.cq = add i32 %.0119.lcssa, %i.cp
  %i.cr = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat380 = shufflevector <1 x i32> %i.cr, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cs = add nsw <4 x i32> %broadcast.splat380, splat (i32 -1)
  %i.ct = sitofp fast <4 x i32> %i.cs to <4 x float> ; 3 uses
  %i.cu = sitofp fast <4 x i32> %broadcast.splat380 to <4 x float>
  %i.cv = fadd fast <4 x float> %i.cu, splat (float -1.000000e+00)
  %i.cw = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat382 = shufflevector <1 x i32> %i.cw, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cx = add nsw <4 x i32> %broadcast.splat382, splat (i32 -1)
  %i.cy = sitofp fast <4 x i32> %i.cx to <4 x float> ; 3 uses
  %i.cz = sitofp fast <4 x i32> %broadcast.splat382 to <4 x float>
  %i.da = fadd fast <4 x float> %i.cz, splat (float -1.000000e+00)
  br label %vec.epilog.vector.body385

vec.epilog.vector.body385:                        ; preds = %vec.epilog.vector.body385, %vec.epilog.ph376
  %index386 = phi i64 [ %vec.epilog.resume.val377, %vec.epilog.ph376 ], [ %index.next394, %vec.epilog.vector.body385 ] ; 3 uses
  %i.db = shl i64 %index386, 2
  %next.gep387 = getelementptr i8, ptr %.1.lcssa, i64 %i.db
  %i.dc = shl i64 %index386, 3
  %next.gep388 = getelementptr i8, ptr %.0117.lcssa, i64 %i.dc
  %wide.vec389 = load <8 x float>, ptr %next.gep388, align 4, !tbaa !40, !alias.scope !534 ; 2 uses
  %strided.vec390 = shufflevector <8 x float> %wide.vec389, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec391 = shufflevector <8 x float> %wide.vec389, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dd = fmul fast <4 x float> %strided.vec390, splat (float 5.000000e-01)
  %i.de = fadd fast <4 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = fmul fast <4 x float> %i.de, %i.ct
  %i.dg = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.df)
  %i.dh = fsub fast <4 x float> %i.dg, %i.ct
  %i.di = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dh)
  %i.dj = fsub fast <4 x float> %i.ct, %i.di
  %i.dk = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dj, <4 x float> zeroinitializer)
  %i.dl = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dk, <4 x float> %i.cv)
  %i.dm = fmul fast <4 x float> %strided.vec391, splat (float 5.000000e-01)
  %i.dn = fadd fast <4 x float> %i.dm, splat (float 5.000000e-01)
  %i.do = fmul fast <4 x float> %i.dn, %i.cy
  %i.dp = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.do)
  %i.dq = fsub fast <4 x float> %i.dp, %i.cy
  %i.dr = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dq)
  %i.ds = fsub fast <4 x float> %i.cy, %i.dr
  %i.dt = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ds, <4 x float> zeroinitializer)
  %i.du = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dt, <4 x float> %i.da)
  %i.dv = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.dw = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.dv)
  %i.dx = fptosi <4 x float> %i.dw to <4 x i32>   ; 3 uses
  %i.dy = fadd fast <4 x float> %i.du, splat (float 5.000000e-01)
  %i.dz = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.dy)
  %i.ea = fptosi <4 x float> %i.dz to <4 x i32>   ; 3 uses
  %i.eb = icmp sgt <4 x i32> %broadcast.splat380, %i.dx
  %i.ec = or <4 x i32> %i.ea, %i.dx
  %i.ed = icmp sgt <4 x i32> %i.ec, splat (i32 -1)
  %i.ee = and <4 x i1> %i.eb, %i.ed
  %i.ef = icmp sgt <4 x i32> %broadcast.splat382, %i.ea
  %i.eg = and <4 x i1> %i.ef, %i.ee               ; 2 uses
  %i.eh = mul nuw nsw <4 x i32> %broadcast.splat380, %i.ea
  %i.ei = add nsw <4 x i32> %i.eh, %i.dx
  %wide.masked.gather392 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat384, <4 x i1> %i.eg, <4 x i32> poison), !tbaa !16, !alias.scope !535
  %i.ej = mul nsw <4 x i32> %wide.masked.gather392, %i.ei
  %predphi393 = select <4 x i1> %i.eg, <4 x i32> %i.ej, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi393, ptr %next.gep387, align 4, !tbaa !23, !alias.scope !536, !noalias !537
  %index.next394 = add nuw i64 %index386, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next394, %n.vec378
  br i1 %i.ek, label %vec.epilog.middle.block395, label %vec.epilog.vector.body385, !llvm.loop !515

vec.epilog.middle.block395:                       ; preds = %vec.epilog.vector.body385
  %cmp.n396 = icmp eq i64 %n.vec378, %i.ab
  br i1 %cmp.n396, label %._crit_edge, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %iter.check372, %vector.memcheck339, %vec.epilog.iter.check373, %vec.epilog.middle.block395
  %.2260.ph = phi ptr [ %.1.lcssa, %iter.check372 ], [ %.1.lcssa, %vector.memcheck339 ], [ %i.ak, %vec.epilog.iter.check373 ], [ %i.cl, %vec.epilog.middle.block395 ]
  %.1118259.ph = phi ptr [ %.0117.lcssa, %iter.check372 ], [ %.0117.lcssa, %vector.memcheck339 ], [ %i.am, %vec.epilog.iter.check373 ], [ %i.cn, %vec.epilog.middle.block395 ]
  %.1120258.ph = phi i32 [ %.0119.lcssa, %iter.check372 ], [ %.0119.lcssa, %vector.memcheck339 ], [ %i.ap, %vec.epilog.iter.check373 ], [ %i.cq, %vec.epilog.middle.block395 ]
  br label %.lr.ph261

.lr.ph254:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph254
  %.1253 = phi ptr [ %i.gh, %.lr.ph254 ], [ %.0264, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117252 = phi ptr [ %i.gg, %.lr.ph254 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119251 = phi i32 [ %i.gi, %.lr.ph254 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.el = load <8 x float>, ptr %.0117252, align 1, !tbaa !41 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0117252, i64 32
  %i.en = load <8 x float>, ptr %i.em, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.el, <8 x float> %i.en, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.el, <8 x float> %i.en, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eo = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ep = sitofp fast i32 %i.eo to float
  %i.eq = insertelement <8 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <8 x float> %i.eq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.es = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.et = fadd fast <8 x float> %i.es, splat (float 5.000000e-01)
  %i.eu = fadd fast <8 x float> %i.er, splat (float -1.000000e+00) ; 2 uses
  %i.ev = fmul fast <8 x float> %i.eu, %i.et
  %i.ew = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ev)
  %i.ex = fsub fast <8 x float> %i.ew, %i.eu
  %i.ey = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ex)
  %i.ez = load i32, ptr %i.o, align 8, !tbaa !38
  %i.fa = sitofp fast i32 %i.ez to float
  %i.fb = insertelement <8 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.fd = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.fe = fadd fast <8 x float> %i.fd, splat (float 5.000000e-01)
  %i.ff = fadd fast <8 x float> %i.fc, splat (float -1.000000e+00) ; 2 uses
  %i.fg = fmul fast <8 x float> %i.ff, %i.fe
  %i.fh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.fg)
  %i.fi = fsub fast <8 x float> %i.fh, %i.ff
  %i.fj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fi)
  %i.fk = fadd fast <8 x float> %i.er, splat (float -5.000000e-01)
  %i.fl = fsub fast <8 x float> %i.fk, %i.ey
  %i.fm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fl, i32 1) ; 3 uses
  %i.fn = fadd fast <8 x float> %i.fc, splat (float -5.000000e-01)
  %i.fo = fsub fast <8 x float> %i.fn, %i.fj
  %i.fp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fo, i32 1) ; 3 uses
  %i.fq = fcmp fast ogt <8 x float> %i.fm, splat (float -1.000000e+00)
  %i.fr = fcmp fast ogt <8 x float> %i.er, %i.fm
  %i.fs = and <8 x i1> %i.fq, %i.fr
  %i.ft = fcmp fast ogt <8 x float> %i.fp, splat (float -1.000000e+00)
  %i.fu = fcmp fast ogt <8 x float> %i.fc, %i.fp
  %i.fv = and <8 x i1> %i.ft, %i.fu
  %i.fw = and <8 x i1> %i.fs, %i.fv
  %i.fx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fp, <8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.fm)
  %i.fy = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fz = sitofp fast i32 %i.fy to float
  %i.ga = insertelement <8 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <8 x float> %i.ga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gc = fmul fast <8 x float> %i.gb, %i.fx
  %i.gd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gc)
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = select <8 x i1> %i.fw, <8 x float> %i.ge, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.gf, ptr %.1253, align 1, !tbaa !41
  %i.gg = getelementptr inbounds nuw i8, ptr %.0117252, i64 64 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.1253, i64 32 ; 2 uses
  %i.gi = add nuw nsw i32 %.0119251, 16           ; 2 uses
  %i.gj = or disjoint i32 %i.gi, 15
  %i.gk = icmp slt i32 %i.gj, %i.e
  br i1 %i.gk, label %.lr.ph254, label %.preheader, !llvm.loop !516

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.b
  %.2260 = phi ptr [ %i.ht, %bb.b ], [ %.2260.ph, %.lr.ph261.preheader ] ; 2 uses
  %.1118259 = phi ptr [ %i.hs, %bb.b ], [ %.1118259.ph, %.lr.ph261.preheader ] ; 2 uses
  %.1120258 = phi i32 [ %i.hu, %bb.b ], [ %.1120258.ph, %.lr.ph261.preheader ]
  %i.gl = load <2 x float>, ptr %.1118259, align 4, !tbaa !40
  %i.gm = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.gn = fmul fast <2 x float> %i.gl, splat (float 5.000000e-01)
  %i.go = fadd fast <2 x float> %i.gn, splat (float 5.000000e-01)
  %i.gp = add nsw <2 x i32> %i.gm, splat (i32 -1)
  %i.gq = sitofp <2 x i32> %i.gp to <2 x float>   ; 3 uses
  %i.gr = fmul fast <2 x float> %i.go, %i.gq
  %i.gs = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gr)
  %i.gt = fsub fast <2 x float> %i.gs, %i.gq
  %i.gu = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gt)
  %i.gv = fsub fast <2 x float> %i.gq, %i.gu
  %i.gw = sitofp <2 x i32> %i.gm to <2 x float>
  %i.gx = fadd fast <2 x float> %i.gw, splat (float -1.000000e+00)
  %i.gy = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gv, <2 x float> zeroinitializer)
  %i.gz = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gy, <2 x float> %i.gx)
  %i.ha = fadd fast <2 x float> %i.gz, splat (float 5.000000e-01)
  %i.hb = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ha)
  %i.hc = fptosi <2 x float> %i.hb to <2 x i32>   ; 3 uses
  %i.hd = extractelement <2 x i32> %i.hc, i64 0   ; 2 uses
  %i.he = extractelement <2 x i32> %i.hc, i64 1   ; 2 uses
  %i.hf = or i32 %i.he, %i.hd
  %i.hg = icmp sgt i32 %i.hf, -1
  %i.hh = icmp sgt <2 x i32> %i.gm, %i.hc         ; 2 uses
  %i.hi = extractelement <2 x i1> %i.hh, i64 0
  %i.hj = and i1 %i.hi, %i.hg
  %i.hk = extractelement <2 x i1> %i.hh, i64 1
  %i.hl = and i1 %i.hk, %i.hj
  br i1 %i.hl, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph261
  %i.hm = extractelement <2 x i32> %i.gm, i64 0
  %i.hn = mul nuw nsw i32 %i.hm, %i.he
  %i.ho = add nsw i32 %i.hn, %i.hd
  %i.hp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.hq = mul nsw i32 %i.hp, %i.ho
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph261, %bb.a
  %i.hr = phi i32 [ %i.hq, %bb.a ], [ -1, %.lr.ph261 ]
  store i32 %i.hr, ptr %.2260, align 4, !tbaa !23
  %i.hs = getelementptr inbounds nuw i8, ptr %.1118259, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.2260, i64 4 ; 2 uses
  %i.hu = add nuw nsw i32 %.1120258, 2            ; 2 uses
  %i.hv = icmp slt i32 %i.hu, %i.e
  br i1 %i.hv, label %.lr.ph261, label %._crit_edge, !llvm.loop !517

._crit_edge:                                      ; preds = %bb.b, %middle.block370, %vec.epilog.middle.block395, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cl, %vec.epilog.middle.block395 ], [ %i.ak, %middle.block370 ], [ %i.ht, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hw = load i32, ptr %i.h, align 8, !tbaa !17
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp slt i64 %indvars.iv.next, %i.hx
  br i1 %i.hy, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !518

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.hz = load ptr, ptr %1, align 8, !tbaa !20, !noalias !538 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !19, !noalias !539
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !18, !noalias !539
  %i.ie = mul i64 %i.id, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ie ; 2 uses
  %i.ig = icmp sgt i32 %i.e, 7
  br i1 %i.ig, label %.lr.ph, label %.preheader237

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader237.loopexit:                           ; preds = %bb.c
  %i.ik = and i32 %i.e, 2147483640
  br label %.preheader237

.preheader237:                                    ; preds = %.preheader237.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.hz, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ov, %.preheader237.loopexit ] ; 8 uses
  %.0112.lcssa = phi ptr [ %i.if, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ow, %.preheader237.loopexit ] ; 8 uses
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ik, %.preheader237.loopexit ] ; 7 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ox, %.preheader237.loopexit ] ; 10 uses
  %i.il = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.il, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader237
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ip = xor i32 %.0110.lcssa, -1
  %i.iq = add i32 %i.e, %i.ip                     ; 3 uses
  %i.ir = zext i32 %i.iq to i64
  %i.is = add nuw nsw i64 %i.ir, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.iq, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.it = xor i32 %.0110.lcssa, -1
  %i.iu = add i32 %i.e, %i.it
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 2
  %i.ix = add nuw nsw i64 %i.iw, 4                ; 3 uses
  %i.iy = getelementptr i8, ptr %.3.lcssa, i64 %i.ix ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ja = getelementptr i8, ptr %.0112.lcssa, i64 %i.ix
  %i.jb = getelementptr i8, ptr %.0114.lcssa, i64 %i.ix
  %bound0 = icmp ult ptr %.3.lcssa, %i.iz
  %bound1 = icmp ult ptr %i.io, %i.iy
  %found.conflict = and i1 %bound0, %bound1
  %bound0304 = icmp ult ptr %.3.lcssa, %i.ja
  %bound1305 = icmp ult ptr %.0112.lcssa, %i.iy
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx = or i1 %found.conflict, %found.conflict306
  %bound0307 = icmp ult ptr %.3.lcssa, %i.jb
  %bound1308 = icmp ult ptr %.0114.lcssa, %i.iy
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx, %found.conflict309
  br i1 %conflict.rdx310, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check311 = icmp ult i32 %i.iq, 15
  br i1 %min.iters.check311, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jc = and i64 %i.is, 12
  %n.vec = and i64 %i.is, 8589934576              ; 5 uses
  %i.jd = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.je = getelementptr i8, ptr %.3.lcssa, i64 %i.jd
  %i.jf = trunc i64 %n.vec to i32
  %i.jg = add i32 %.0110.lcssa, %i.jf
  %i.jh = getelementptr i8, ptr %.0112.lcssa, i64 %i.jd
  %i.ji = getelementptr i8, ptr %.0114.lcssa, i64 %i.jd
  %i.jj = load <1 x i32>, ptr %i.im, align 4
  %broadcast.splat = shufflevector <1 x i32> %i.jj, <1 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.jk = add nsw <16 x i32> %broadcast.splat, splat (i32 -1)
  %i.jl = sitofp fast <16 x i32> %i.jk to <16 x float> ; 3 uses
  %i.jm = sitofp fast <16 x i32> %broadcast.splat to <16 x float>
  %i.jn = fadd fast <16 x float> %i.jm, splat (float -1.000000e+00)
  %i.jo = load <1 x i32>, ptr %i.in, align 8
  %broadcast.splat313 = shufflevector <1 x i32> %i.jo, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.jp = add nsw <16 x i32> %broadcast.splat313, splat (i32 -1)
  %i.jq = sitofp fast <16 x i32> %i.jp to <16 x float> ; 3 uses
  %i.jr = sitofp fast <16 x i32> %broadcast.splat313 to <16 x float>
  %i.js = fadd fast <16 x float> %i.jr, splat (float -1.000000e+00)
  %broadcast.splatinsert314 = insertelement <16 x ptr> poison, ptr %i.io, i64 0
  %broadcast.splat315 = shufflevector <16 x ptr> %broadcast.splatinsert314, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jt = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.lcssa, i64 %i.jt
  %next.gep316 = getelementptr i8, ptr %.0112.lcssa, i64 %i.jt
  %next.gep317 = getelementptr i8, ptr %.0114.lcssa, i64 %i.jt
  %wide.load = load <16 x float>, ptr %next.gep317, align 4, !tbaa !40, !alias.scope !540
  %wide.load318 = load <16 x float>, ptr %next.gep316, align 4, !tbaa !40, !alias.scope !541
  %i.ju = fmul fast <16 x float> %wide.load, splat (float 5.000000e-01)
  %i.jv = fadd fast <16 x float> %i.ju, splat (float 5.000000e-01)
  %i.jw = fmul fast <16 x float> %i.jv, %i.jl
  %i.jx = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.jw)
  %i.jy = fsub fast <16 x float> %i.jx, %i.jl
  %i.jz = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %i.jy)
end_hunk_11
begin_hunk_12_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.el = add nsw <16 x i32> %i.dw, %i.bs
  %wide.masked.gather967 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ek, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.em = mul nsw <16 x i32> %wide.masked.gather967, %i.el
  %predphi968 = select <16 x i1> %i.ed, <16 x i32> %i.em, <16 x i32> splat (i32 -1)
  %wide.gep969 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 52 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi968, <16 x ptr> align 4 %wide.gep969, <16 x i1> %i.cq), !tbaa !23, !alias.scope !572, !noalias !573
  %wide.gep970 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 56 ; 3 uses
  %i.en = add <16 x i32> %i.bf, splat (i32 2)
  %i.eo = sitofp fast <16 x i32> %i.en to <16 x float>
  %i.ep = fptosi <16 x float> %i.eo to <16 x i32> ; 5 uses
  %i.eq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1072 = shufflevector <1 x i32> %i.eq, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.er = mul nsw <16 x i32> %broadcast.splat1072, %i.ep ; 3 uses
  %i.es = icmp sgt <16 x i32> %i.ep, splat (i32 -1) ; 2 uses
  %i.et = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1075 = shufflevector <1 x i32> %i.et, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.eu = icmp sgt <16 x i32> %broadcast.splat1075, %i.ep
  %i.ev = and <16 x i1> %i.es, %i.eu              ; 3 uses
  %i.ew = and <16 x i1> %i.bv, %i.ev              ; 2 uses
  %i.ex = and <16 x i1> %i.cb, %i.ev              ; 2 uses
  %i.ey = and <16 x i1> %i.ce, %i.ev
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep970, <16 x i1> %i.cq), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ez = select <16 x i1> %i.cq, <16 x i1> %i.ew, <16 x i1> zeroinitializer
  %i.fa = add nsw <16 x i32> %i.er, %i.bd
  %wide.masked.gather973 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ez, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fb = mul nsw <16 x i32> %wide.masked.gather973, %i.fa
  %predphi974 = select <16 x i1> %i.ew, <16 x i32> %i.fb, <16 x i32> splat (i32 -1)
  %wide.gep975 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 60 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi974, <16 x ptr> align 4 %wide.gep975, <16 x i1> %i.cq), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fc = select <16 x i1> %i.cq, <16 x i1> %i.ex, <16 x i1> zeroinitializer
  %i.fd = add nsw <16 x i32> %i.er, %i.bq
  %wide.masked.gather976 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fc, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fe = mul nsw <16 x i32> %wide.masked.gather976, %i.fd
  %predphi977 = select <16 x i1> %i.ex, <16 x i32> %i.fe, <16 x i32> splat (i32 -1)
  %wide.gep978 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi977, <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.cq), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ff = select <16 x i1> %i.cq, <16 x i1> %i.ey, <16 x i1> zeroinitializer ; 2 uses
  %i.fg = add nsw <16 x i32> %i.er, %i.bs
  %wide.masked.gather979 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ff, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fh = mul nsw <16 x i32> %wide.masked.gather979, %i.fg
  %i.fi = xor <16 x i1> %i.cm, splat (i1 true)
  %i.fj = select <16 x i1> %i.cg, <16 x i1> %i.fi, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep936, <16 x i1> %i.fj), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep939, <16 x i1> %i.fj), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep942, <16 x i1> %i.fj), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fk = select <16 x i1> %i.cg, <16 x i1> %i.cm, <16 x i1> zeroinitializer ; 7 uses
  %i.fl = add nsw <16 x i32> %i.cj, %i.bo
  %wide.masked.gather980 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fk, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fm = mul nsw <16 x i32> %wide.masked.gather980, %i.fl
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.fm, <16 x ptr> align 4 %wide.gep936, <16 x i1> %i.fk), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fn = select <16 x i1> %i.fk, <16 x i1> %i.cn, <16 x i1> zeroinitializer
  %wide.masked.gather981 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fn, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fo = mul nsw <16 x i32> %wide.masked.gather981, %i.cs
  %predphi982 = select <16 x i1> %i.cn, <16 x i32> %i.fo, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi982, <16 x ptr> align 4 %wide.gep939, <16 x i1> %i.fk), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fp = select <16 x i1> %i.fk, <16 x i1> %i.co, <16 x i1> zeroinitializer
  %wide.masked.gather983 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fp, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fq = mul nsw <16 x i32> %wide.masked.gather983, %i.cv
  %predphi984 = select <16 x i1> %i.co, <16 x i32> %i.fq, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi984, <16 x ptr> align 4 %wide.gep942, <16 x i1> %i.fk), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fr = select <16 x i1> %i.fk, <16 x i1> %i.cp, <16 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather985 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fr, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fs = mul nsw <16 x i32> %wide.masked.gather985, %i.cy
  %predphi986 = select <16 x i1> %i.fr, <16 x i32> %i.fs, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi986, <16 x ptr> align 4 %wide.gep945, <16 x i1> %i.cg), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ft = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1078 = shufflevector <1 x i32> %i.ft, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fu = mul nsw <16 x i32> %broadcast.splat1078, %i.bf ; 4 uses
  %i.fv = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1081 = shufflevector <1 x i32> %i.fv, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fw = icmp sgt <16 x i32> %broadcast.splat1081, %i.bf
  %i.fx = and <16 x i1> %i.dc, %i.fw              ; 4 uses
  %i.fy = and <16 x i1> %i.cb, %i.fx              ; 2 uses
  %i.fz = and <16 x i1> %i.ce, %i.fx
  %i.ga = xor <16 x i1> %i.fx, splat (i1 true)
  %i.gb = select <16 x i1> %i.cg, <16 x i1> %i.ga, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep946, <16 x i1> %i.gb), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep951, <16 x i1> %i.gb), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.gb), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gc = select <16 x i1> %i.cg, <16 x i1> %i.fx, <16 x i1> zeroinitializer ; 7 uses
  %i.gd = add nsw <16 x i32> %i.fu, %i.bo
  %wide.masked.gather989 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gc, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ge = mul nsw <16 x i32> %wide.masked.gather989, %i.gd
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.ge, <16 x ptr> align 4 %wide.gep946, <16 x i1> %i.gc), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gf = select <16 x i1> %i.gc, <16 x i1> %i.bv, <16 x i1> zeroinitializer
  %i.gg = add nsw <16 x i32> %i.fu, %i.bd
  %wide.masked.gather990 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gf, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gh = mul nsw <16 x i32> %wide.masked.gather990, %i.gg
  %predphi991 = select <16 x i1> %i.bv, <16 x i32> %i.gh, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi991, <16 x ptr> align 4 %wide.gep951, <16 x i1> %i.gc), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gi = select <16 x i1> %i.gc, <16 x i1> %i.fy, <16 x i1> zeroinitializer
  %i.gj = add nsw <16 x i32> %i.fu, %i.bq
  %wide.masked.gather992 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gi, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gk = mul nsw <16 x i32> %wide.masked.gather992, %i.gj
  %predphi993 = select <16 x i1> %i.fy, <16 x i32> %i.gk, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi993, <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.gc), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gl = select <16 x i1> %i.gc, <16 x i1> %i.fz, <16 x i1> zeroinitializer ; 2 uses
  %i.gm = add nsw <16 x i32> %i.fu, %i.bs
  %wide.masked.gather994 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gl, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gn = mul nsw <16 x i32> %wide.masked.gather994, %i.gm
  %predphi995 = select <16 x i1> %i.gl, <16 x i32> %i.gn, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi995, <16 x ptr> align 4 %wide.gep957, <16 x i1> %i.cg), !tbaa !23, !alias.scope !572, !noalias !573
  %i.go = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1084 = shufflevector <1 x i32> %i.go, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gp = mul nsw <16 x i32> %broadcast.splat1084, %i.du ; 4 uses
  %i.gq = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1087 = shufflevector <1 x i32> %i.gq, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gr = icmp sgt <16 x i32> %broadcast.splat1087, %i.du
  %i.gs = and <16 x i1> %i.dx, %i.gr              ; 4 uses
  %i.gt = and <16 x i1> %i.cb, %i.gs              ; 2 uses
  %i.gu = and <16 x i1> %i.ce, %i.gs
  %i.gv = xor <16 x i1> %i.gs, splat (i1 true)
  %i.gw = select <16 x i1> %i.cg, <16 x i1> %i.gv, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep958, <16 x i1> %i.gw), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep963, <16 x i1> %i.gw), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gw), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gx = select <16 x i1> %i.cg, <16 x i1> %i.gs, <16 x i1> zeroinitializer ; 7 uses
  %i.gy = add nsw <16 x i32> %i.gp, %i.bo
  %wide.masked.gather998 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gx, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gz = mul nsw <16 x i32> %wide.masked.gather998, %i.gy
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.gz, <16 x ptr> align 4 %wide.gep958, <16 x i1> %i.gx), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ha = select <16 x i1> %i.gx, <16 x i1> %i.bv, <16 x i1> zeroinitializer
  %i.hb = add nsw <16 x i32> %i.gp, %i.bd
  %wide.masked.gather999 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ha, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hc = mul nsw <16 x i32> %wide.masked.gather999, %i.hb
  %predphi1000 = select <16 x i1> %i.bv, <16 x i32> %i.hc, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1000, <16 x ptr> align 4 %wide.gep963, <16 x i1> %i.gx), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hd = select <16 x i1> %i.gx, <16 x i1> %i.gt, <16 x i1> zeroinitializer
  %i.he = add nsw <16 x i32> %i.gp, %i.bq
  %wide.masked.gather1001 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hd, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hf = mul nsw <16 x i32> %wide.masked.gather1001, %i.he
  %predphi1002 = select <16 x i1> %i.gt, <16 x i32> %i.hf, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1002, <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gx), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hg = select <16 x i1> %i.gx, <16 x i1> %i.gu, <16 x i1> zeroinitializer ; 2 uses
  %i.hh = add nsw <16 x i32> %i.gp, %i.bs
  %wide.masked.gather1003 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hg, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hi = mul nsw <16 x i32> %wide.masked.gather1003, %i.hh
  %predphi1004 = select <16 x i1> %i.hg, <16 x i32> %i.hi, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1004, <16 x ptr> align 4 %wide.gep969, <16 x i1> %i.cg), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hj = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1090 = shufflevector <1 x i32> %i.hj, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hk = mul nsw <16 x i32> %broadcast.splat1090, %i.ep ; 4 uses
  %i.hl = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1093 = shufflevector <1 x i32> %i.hl, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hm = icmp sgt <16 x i32> %broadcast.splat1093, %i.ep
  %i.hn = and <16 x i1> %i.es, %i.hm              ; 4 uses
  %i.ho = and <16 x i1> %i.cb, %i.hn              ; 2 uses
  %i.hp = and <16 x i1> %i.ce, %i.hn
  %i.hq = xor <16 x i1> %i.hn, splat (i1 true)
  %i.hr = select <16 x i1> %i.cg, <16 x i1> %i.hq, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep970, <16 x i1> %i.hr), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep975, <16 x i1> %i.hr), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hr), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hs = select <16 x i1> %i.cg, <16 x i1> %i.hn, <16 x i1> zeroinitializer ; 7 uses
  %i.ht = add nsw <16 x i32> %i.hk, %i.bo
  %wide.masked.gather1007 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hs, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hu = mul nsw <16 x i32> %wide.masked.gather1007, %i.ht
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.hu, <16 x ptr> align 4 %wide.gep970, <16 x i1> %i.hs), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hv = select <16 x i1> %i.hs, <16 x i1> %i.bv, <16 x i1> zeroinitializer
  %i.hw = add nsw <16 x i32> %i.hk, %i.bd
  %wide.masked.gather1008 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hv, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hx = mul nsw <16 x i32> %wide.masked.gather1008, %i.hw
  %predphi1009 = select <16 x i1> %i.bv, <16 x i32> %i.hx, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1009, <16 x ptr> align 4 %wide.gep975, <16 x i1> %i.hs), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hy = select <16 x i1> %i.hs, <16 x i1> %i.ho, <16 x i1> zeroinitializer
  %i.hz = add nsw <16 x i32> %i.hk, %i.bq
  %wide.masked.gather1010 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hy, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ia = mul nsw <16 x i32> %wide.masked.gather1010, %i.hz
  %predphi1011 = select <16 x i1> %i.ho, <16 x i32> %i.ia, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1011, <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hs), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ib = select <16 x i1> %i.hs, <16 x i1> %i.hp, <16 x i1> zeroinitializer ; 2 uses
  %i.ic = add nsw <16 x i32> %i.hk, %i.bs
  %wide.masked.gather1012 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ib, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.id = mul nsw <16 x i32> %wide.masked.gather1012, %i.ic
  %predphi1013 = select <16 x i1> %i.ff, <16 x i32> %i.fh, <16 x i32> splat (i32 -1)
  %predphi1014 = select <16 x i1> %i.ib, <16 x i32> %i.id, <16 x i32> %predphi1013
  %wide.gep1015 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 68
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1014, <16 x ptr> align 4 %wide.gep1015, <16 x i1> splat (i1 true)), !tbaa !23, !alias.scope !572, !noalias !573
  %index.next1016 = add nuw i64 %index930, 16     ; 2 uses
  %ptr.ind1017 = getelementptr i8, ptr %pointer.phi931, i64 1152
  %i.ie = icmp eq i64 %index.next1016, %n.vec918
  br i1 %i.ie, label %middle.block1018, label %vector.body929, !llvm.loop !553

middle.block1018:                                 ; preds = %vector.body929
  %cmp.n1019 = icmp eq i64 %n.vec918, %i.ab
  br i1 %cmp.n1019, label %._crit_edge, label %.lr.ph533.preheader1109

.lr.ph533.preheader1109:                          ; preds = %vector.memcheck903, %.lr.ph533.preheader, %middle.block1018
  %.3532.ph = phi ptr [ %.1.lcssa, %vector.memcheck903 ], [ %.1.lcssa, %.lr.ph533.preheader ], [ %i.aj, %middle.block1018 ]
  %.1394531.ph = phi i32 [ %.0393.lcssa, %vector.memcheck903 ], [ %.0393.lcssa, %.lr.ph533.preheader ], [ %i.am, %middle.block1018 ]
  %.1396530.ph = phi ptr [ %.0395.lcssa, %vector.memcheck903 ], [ %.0395.lcssa, %.lr.ph533.preheader ], [ %i.ao, %middle.block1018 ]
  br label %.lr.ph533

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.qp, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.qr, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.qq, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.if = load <8 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0395517, i64 32
  %i.ih = load <8 x float>, ptr %i.ig, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.if, <8 x float> %i.ih, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.if, <8 x float> %i.ih, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ii = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ij = sitofp fast i32 %i.ii to float
  %i.ik = insertelement <8 x float> poison, float %i.ij, i64 0
  %i.il = shufflevector <8 x float> %i.ik, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.im = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.in = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.im, <8 x float> nofpclass(nan inf) %i.il, <8 x float> splat (float -1.000000e+00))
  %i.io = fmul fast <8 x float> %i.in, splat (float 5.000000e-01) ; 2 uses
  %i.ip = load i32, ptr %i.o, align 8, !tbaa !38
  %i.iq = sitofp fast i32 %i.ip to float
  %i.ir = insertelement <8 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <8 x float> %i.ir, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.it = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.iu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.it, <8 x float> nofpclass(nan inf) %i.is, <8 x float> splat (float -1.000000e+00))
  %i.iv = fmul fast <8 x float> %i.iu, splat (float 5.000000e-01) ; 2 uses
  %i.iw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.io, i32 1) ; 10 uses
  %i.ix = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iv, i32 1) ; 7 uses
  %i.iy = fadd fast <8 x float> %i.iw, splat (float -1.000000e+00) ; 6 uses
  %i.iz = fadd fast <8 x float> %i.iw, splat (float 1.000000e+00) ; 6 uses
  %i.ja = fadd fast <8 x float> %i.iw, splat (float 2.000000e+00) ; 6 uses
  %i.jb = fcmp fast ogt <8 x float> %i.iy, splat (float -1.000000e+00)
  %i.jc = fcmp fast ogt <8 x float> %i.il, %i.iy
  %i.jd = and <8 x i1> %i.jb, %i.jc               ; 4 uses
  %i.je = fcmp fast ogt <8 x float> %i.iw, splat (float -1.000000e+00)
  %i.jf = fcmp fast ogt <8 x float> %i.il, %i.iw
  %i.jg = and <8 x i1> %i.je, %i.jf               ; 4 uses
  %i.jh = fcmp fast ogt <8 x float> %i.iz, splat (float -1.000000e+00)
  %i.ji = fcmp fast ogt <8 x float> %i.il, %i.iz
  %i.jj = and <8 x i1> %i.jh, %i.ji               ; 4 uses
  %i.jk = fcmp fast ogt <8 x float> %i.ja, splat (float -1.000000e+00)
  %i.jl = fcmp fast ogt <8 x float> %i.il, %i.ja
  %i.jm = and <8 x i1> %i.jk, %i.jl               ; 4 uses
  %i.jn = load i32, ptr %i.p, align 8, !tbaa !16
  %i.jo = sitofp fast i32 %i.jn to float
  %i.jp = insertelement <8 x float> poison, float %i.jo, i64 0
  %i.jq = shufflevector <8 x float> %i.jp, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.jr = fadd fast <8 x float> %i.ix, splat (float -1.000000e+00) ; 3 uses
  %i.js = fcmp fast ogt <8 x float> %i.jr, splat (float -1.000000e+00)
  %i.jt = fcmp fast ogt <8 x float> %i.is, %i.jr
  %i.ju = and <8 x i1> %i.js, %i.jt               ; 4 uses
  %i.jv = fmul fast <8 x float> %i.jr, %i.il      ; 4 uses
  %i.jw = fadd fast <8 x float> %i.jv, %i.iy
  %i.jx = fmul fast <8 x float> %i.jq, %i.jw
  %i.jy = fadd fast <8 x float> %i.jv, %i.iw
  %i.jz = fmul fast <8 x float> %i.jq, %i.jy
  %i.ka = fadd fast <8 x float> %i.jv, %i.iz
  %i.kb = fmul fast <8 x float> %i.jq, %i.ka
  %i.kc = fadd fast <8 x float> %i.jv, %i.ja
  %i.kd = fmul fast <8 x float> %i.jq, %i.kc
  %i.ke = and <8 x i1> %i.jd, %i.ju
  %i.kf = select <8 x i1> %i.ke, <8 x float> %i.jx, <8 x float> splat (float -1.000000e+00)
  %i.kg = and <8 x i1> %i.jg, %i.ju
  %i.kh = select <8 x i1> %i.kg, <8 x float> %i.jz, <8 x float> splat (float -1.000000e+00)
  %i.ki = and <8 x i1> %i.jj, %i.ju
  %i.kj = select <8 x i1> %i.ki, <8 x float> %i.kb, <8 x float> splat (float -1.000000e+00)
  %i.kk = and <8 x i1> %i.jm, %i.ju
  %i.kl = select <8 x i1> %i.kk, <8 x float> %i.kd, <8 x float> splat (float -1.000000e+00)
  %i.km = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kf) ; 2 uses
  %i.kn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.ko = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kj) ; 2 uses
  %i.kp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kl) ; 2 uses
  %i.kq = fcmp fast ogt <8 x float> %i.ix, splat (float -1.000000e+00)
  %i.kr = fcmp fast ogt <8 x float> %i.is, %i.ix
  %i.ks = and <8 x i1> %i.kq, %i.kr               ; 4 uses
  %i.kt = fmul fast <8 x float> %i.ix, %i.il      ; 4 uses
  %i.ku = fadd fast <8 x float> %i.kt, %i.iy
  %i.kv = fmul fast <8 x float> %i.jq, %i.ku
  %i.kw = fadd fast <8 x float> %i.kt, %i.iw
  %i.kx = fmul fast <8 x float> %i.jq, %i.kw
  %i.ky = fadd fast <8 x float> %i.kt, %i.iz
  %i.kz = fmul fast <8 x float> %i.jq, %i.ky
  %i.la = fadd fast <8 x float> %i.kt, %i.ja
  %i.lb = fmul fast <8 x float> %i.jq, %i.la
  %i.lc = and <8 x i1> %i.jd, %i.ks
  %i.ld = select <8 x i1> %i.lc, <8 x float> %i.kv, <8 x float> splat (float -1.000000e+00)
  %i.le = and <8 x i1> %i.jg, %i.ks
  %i.lf = select <8 x i1> %i.le, <8 x float> %i.kx, <8 x float> splat (float -1.000000e+00)
  %i.lg = and <8 x i1> %i.jj, %i.ks
  %i.lh = select <8 x i1> %i.lg, <8 x float> %i.kz, <8 x float> splat (float -1.000000e+00)
  %i.li = and <8 x i1> %i.jm, %i.ks
  %i.lj = select <8 x i1> %i.li, <8 x float> %i.lb, <8 x float> splat (float -1.000000e+00)
  %i.lk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ld) ; 2 uses
  %i.ll = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lf) ; 2 uses
  %i.lm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lh) ; 2 uses
  %i.ln = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lj) ; 2 uses
  %i.lo = fadd fast <8 x float> %i.ix, splat (float 1.000000e+00) ; 3 uses
  %i.lp = fcmp fast ogt <8 x float> %i.lo, splat (float -1.000000e+00)
  %i.lq = fcmp fast ogt <8 x float> %i.is, %i.lo
  %i.lr = and <8 x i1> %i.lp, %i.lq               ; 4 uses
  %i.ls = fmul fast <8 x float> %i.lo, %i.il      ; 4 uses
  %i.lt = fadd fast <8 x float> %i.ls, %i.iy
  %i.lu = fmul fast <8 x float> %i.jq, %i.lt
  %i.lv = fadd fast <8 x float> %i.ls, %i.iw
  %i.lw = fmul fast <8 x float> %i.jq, %i.lv
  %i.lx = fadd fast <8 x float> %i.ls, %i.iz
  %i.ly = fmul fast <8 x float> %i.jq, %i.lx
  %i.lz = fadd fast <8 x float> %i.ls, %i.ja
  %i.ma = fmul fast <8 x float> %i.jq, %i.lz
  %i.mb = and <8 x i1> %i.jd, %i.lr
  %i.mc = select <8 x i1> %i.mb, <8 x float> %i.lu, <8 x float> splat (float -1.000000e+00)
  %i.md = and <8 x i1> %i.jg, %i.lr
  %i.me = select <8 x i1> %i.md, <8 x float> %i.lw, <8 x float> splat (float -1.000000e+00)
  %i.mf = and <8 x i1> %i.jj, %i.lr
  %i.mg = select <8 x i1> %i.mf, <8 x float> %i.ly, <8 x float> splat (float -1.000000e+00)
  %i.mh = and <8 x i1> %i.jm, %i.lr
  %i.mi = select <8 x i1> %i.mh, <8 x float> %i.ma, <8 x float> splat (float -1.000000e+00)
  %i.mj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mc) ; 2 uses
  %i.mk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.me) ; 2 uses
  %i.ml = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mg) ; 2 uses
  %i.mm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mi) ; 2 uses
  %i.mn = fadd fast <8 x float> %i.ix, splat (float 2.000000e+00) ; 3 uses
  %i.mo = fcmp fast ogt <8 x float> %i.mn, splat (float -1.000000e+00)
  %i.mp = fcmp fast ogt <8 x float> %i.is, %i.mn
  %i.mq = and <8 x i1> %i.mo, %i.mp               ; 4 uses
  %i.mr = fmul fast <8 x float> %i.mn, %i.il      ; 4 uses
  %i.ms = fadd fast <8 x float> %i.mr, %i.iy
  %i.mt = fmul fast <8 x float> %i.jq, %i.ms
  %i.mu = fadd fast <8 x float> %i.mr, %i.iw
  %i.mv = fmul fast <8 x float> %i.jq, %i.mu
  %i.mw = fadd fast <8 x float> %i.mr, %i.iz
  %i.mx = fmul fast <8 x float> %i.jq, %i.mw
  %i.my = fadd fast <8 x float> %i.mr, %i.ja
  %i.mz = fmul fast <8 x float> %i.jq, %i.my
  %i.na = and <8 x i1> %i.jd, %i.mq
  %i.nb = select <8 x i1> %i.na, <8 x float> %i.mt, <8 x float> splat (float -1.000000e+00)
  %i.nc = and <8 x i1> %i.jg, %i.mq
  %i.nd = select <8 x i1> %i.nc, <8 x float> %i.mv, <8 x float> splat (float -1.000000e+00)
  %i.ne = and <8 x i1> %i.jj, %i.mq
  %i.nf = select <8 x i1> %i.ne, <8 x float> %i.mx, <8 x float> splat (float -1.000000e+00)
  %i.ng = and <8 x i1> %i.jm, %i.mq
  %i.nh = select <8 x i1> %i.ng, <8 x float> %i.mz, <8 x float> splat (float -1.000000e+00)
  %i.ni = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nb) ; 2 uses
  %i.nj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nd) ; 2 uses
  %i.nk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nf) ; 2 uses
  %i.nl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nh) ; 2 uses
  %i.nm = fsub fast <8 x float> %i.io, %i.iw      ; 2 uses
  %i.nn = fsub fast <8 x float> %i.iv, %i.ix      ; 2 uses
  %i.no = shufflevector <8 x float> %i.nm, <8 x float> %i.nn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.np = shufflevector <8 x float> %i.nm, <8 x float> %i.nn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nq = shufflevector <8 x i32> %i.km, <8 x i32> %i.kn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nr = bitcast <8 x i32> %i.nq to <8 x float>
  %i.ns = shufflevector <8 x i32> %i.km, <8 x i32> %i.kn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nt = bitcast <8 x i32> %i.ns to <8 x float>
  %i.nu = shufflevector <8 x i32> %i.ko, <8 x i32> %i.kp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nv = shufflevector <8 x i32> %i.ko, <8 x i32> %i.kp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nw = shufflevector <8 x i32> %i.lk, <8 x i32> %i.ll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nx = shufflevector <8 x i32> %i.lk, <8 x i32> %i.ll, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ny = shufflevector <8 x i32> %i.lm, <8 x i32> %i.ln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nz = shufflevector <8 x i32> %i.lm, <8 x i32> %i.ln, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oa = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ob = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oc = shufflevector <8 x i32> %i.ml, <8 x i32> %i.mm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.od = shufflevector <8 x i32> %i.ml, <8 x i32> %i.mm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oe = shufflevector <8 x i32> %i.ni, <8 x i32> %i.nj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.of = shufflevector <8 x i32> %i.ni, <8 x i32> %i.nj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.og = shufflevector <8 x i32> %i.nk, <8 x i32> %i.nl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.oh = bitcast <8 x i32> %i.og to <8 x float>
  %i.oi = shufflevector <8 x i32> %i.nk, <8 x i32> %i.nl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oj = bitcast <8 x i32> %i.oi to <8 x float>
  %i.ok = shufflevector <8 x float> %i.no, <8 x float> %i.nr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ol = shufflevector <8 x i32> %i.nu, <8 x i32> %i.nw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.om = bitcast <8 x i32> %i.ol to <8 x float>  ; 2 uses
  %i.on = shufflevector <8 x i32> %i.ny, <8 x i32> %i.oa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oo = shufflevector <8 x i32> %i.oc, <8 x i32> %i.oe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.op = shufflevector <8 x float> %i.oh, <8 x float> %i.no, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.oq = shufflevector <8 x i32> %i.nq, <8 x i32> %i.nu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.or = bitcast <8 x i32> %i.oq to <8 x float>  ; 2 uses
  %i.os = shufflevector <8 x i32> %i.nw, <8 x i32> %i.ny, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ot = shufflevector <8 x i32> %i.oa, <8 x i32> %i.oc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ou = shufflevector <8 x i32> %i.oe, <8 x i32> %i.og, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ov = bitcast <8 x i32> %i.ou to <8 x float>  ; 2 uses
  %i.ow = shufflevector <8 x float> %i.np, <8 x float> %i.nt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ox = shufflevector <8 x i32> %i.nv, <8 x i32> %i.nx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oy = shufflevector <8 x i32> %i.nz, <8 x i32> %i.ob, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oz = shufflevector <8 x i32> %i.od, <8 x i32> %i.of, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.pa = bitcast <8 x i32> %i.oz to <8 x float>  ; 2 uses
  %i.pb = shufflevector <8 x float> %i.oj, <8 x float> %i.np, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.pc = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pd = shufflevector <8 x i32> %i.nx, <8 x i32> %i.nz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pe = shufflevector <8 x i32> %i.ob, <8 x i32> %i.od, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pf = shufflevector <8 x i32> %i.of, <8 x i32> %i.oi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pg = shufflevector <8 x float> %i.ok, <8 x float> %i.om, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ph = shufflevector <8 x i32> %i.on, <8 x i32> %i.oo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pi = shufflevector <8 x float> %i.op, <8 x float> %i.or, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pj = shufflevector <8 x i32> %i.os, <8 x i32> %i.ot, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pk = shufflevector <8 x float> %i.ov, <8 x float> %i.ow, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pl = shufflevector <8 x i32> %i.ox, <8 x i32> %i.oy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pm = shufflevector <8 x float> %i.pa, <8 x float> %i.pb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pn = shufflevector <8 x i32> %i.pc, <8 x i32> %i.pd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.po = shufflevector <8 x i32> %i.pe, <8 x i32> %i.pf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pp = shufflevector <8 x float> %i.ok, <8 x float> %i.om, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pq = shufflevector <8 x i32> %i.on, <8 x i32> %i.oo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pr = shufflevector <8 x float> %i.op, <8 x float> %i.or, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ps = shufflevector <8 x i32> %i.os, <8 x i32> %i.ot, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pt = shufflevector <8 x float> %i.ov, <8 x float> %i.ow, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pu = shufflevector <8 x i32> %i.ox, <8 x i32> %i.oy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pv = shufflevector <8 x float> %i.pa, <8 x float> %i.pb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pw = shufflevector <8 x i32> %i.pc, <8 x i32> %i.pd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.px = shufflevector <8 x i32> %i.pe, <8 x i32> %i.pf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.pg, ptr %.1519, align 1, !tbaa !41
  %i.py = getelementptr inbounds nuw i8, ptr %.1519, i64 32
  store <8 x i32> %i.ph, ptr %i.py, align 1, !tbaa !41
  %i.pz = getelementptr inbounds nuw i8, ptr %.1519, i64 64
  store <8 x float> %i.pi, ptr %i.pz, align 1, !tbaa !41
  %i.qa = getelementptr inbounds nuw i8, ptr %.1519, i64 96
  store <8 x i32> %i.pj, ptr %i.qa, align 1, !tbaa !41
  %i.qb = getelementptr inbounds nuw i8, ptr %.1519, i64 128
  store <8 x float> %i.pk, ptr %i.qb, align 1, !tbaa !41
  %i.qc = getelementptr inbounds nuw i8, ptr %.1519, i64 160
  store <8 x i32> %i.pl, ptr %i.qc, align 1, !tbaa !41
  %i.qd = getelementptr inbounds nuw i8, ptr %.1519, i64 192
  store <8 x float> %i.pm, ptr %i.qd, align 1, !tbaa !41
  %i.qe = getelementptr inbounds nuw i8, ptr %.1519, i64 224
end_hunk_12
begin_hunk_13_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.el = add nsw <16 x i32> %i.dw, %i.bs
  %wide.masked.gather967 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ek, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.em = mul nsw <16 x i32> %wide.masked.gather967, %i.el
  %predphi968 = select <16 x i1> %i.ed, <16 x i32> %i.em, <16 x i32> splat (i32 -1)
  %wide.gep969 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 52 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi968, <16 x ptr> align 4 %wide.gep969, <16 x i1> %i.cq), !tbaa !23, !alias.scope !609, !noalias !610
  %wide.gep970 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 56 ; 3 uses
  %i.en = add <16 x i32> %i.bf, splat (i32 2)
  %i.eo = sitofp fast <16 x i32> %i.en to <16 x float>
  %i.ep = fptosi <16 x float> %i.eo to <16 x i32> ; 5 uses
  %i.eq = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1072 = shufflevector <1 x i32> %i.eq, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.er = mul nsw <16 x i32> %broadcast.splat1072, %i.ep ; 3 uses
  %i.es = icmp sgt <16 x i32> %i.ep, splat (i32 -1) ; 2 uses
  %i.et = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1075 = shufflevector <1 x i32> %i.et, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.eu = icmp sgt <16 x i32> %broadcast.splat1075, %i.ep
  %i.ev = and <16 x i1> %i.es, %i.eu              ; 3 uses
  %i.ew = and <16 x i1> %i.bv, %i.ev              ; 2 uses
  %i.ex = and <16 x i1> %i.cb, %i.ev              ; 2 uses
  %i.ey = and <16 x i1> %i.ce, %i.ev
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep970, <16 x i1> %i.cq), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ez = select <16 x i1> %i.cq, <16 x i1> %i.ew, <16 x i1> zeroinitializer
  %i.fa = add nsw <16 x i32> %i.er, %i.bd
  %wide.masked.gather973 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ez, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fb = mul nsw <16 x i32> %wide.masked.gather973, %i.fa
  %predphi974 = select <16 x i1> %i.ew, <16 x i32> %i.fb, <16 x i32> splat (i32 -1)
  %wide.gep975 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 60 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi974, <16 x ptr> align 4 %wide.gep975, <16 x i1> %i.cq), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fc = select <16 x i1> %i.cq, <16 x i1> %i.ex, <16 x i1> zeroinitializer
  %i.fd = add nsw <16 x i32> %i.er, %i.bq
  %wide.masked.gather976 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fc, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fe = mul nsw <16 x i32> %wide.masked.gather976, %i.fd
  %predphi977 = select <16 x i1> %i.ex, <16 x i32> %i.fe, <16 x i32> splat (i32 -1)
  %wide.gep978 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi977, <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.cq), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ff = select <16 x i1> %i.cq, <16 x i1> %i.ey, <16 x i1> zeroinitializer ; 2 uses
  %i.fg = add nsw <16 x i32> %i.er, %i.bs
  %wide.masked.gather979 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ff, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fh = mul nsw <16 x i32> %wide.masked.gather979, %i.fg
  %i.fi = xor <16 x i1> %i.cm, splat (i1 true)
  %i.fj = select <16 x i1> %i.cg, <16 x i1> %i.fi, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep936, <16 x i1> %i.fj), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep939, <16 x i1> %i.fj), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep942, <16 x i1> %i.fj), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fk = select <16 x i1> %i.cg, <16 x i1> %i.cm, <16 x i1> zeroinitializer ; 7 uses
  %i.fl = add nsw <16 x i32> %i.cj, %i.bo
  %wide.masked.gather980 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fk, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fm = mul nsw <16 x i32> %wide.masked.gather980, %i.fl
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.fm, <16 x ptr> align 4 %wide.gep936, <16 x i1> %i.fk), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fn = select <16 x i1> %i.fk, <16 x i1> %i.cn, <16 x i1> zeroinitializer
  %wide.masked.gather981 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fn, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fo = mul nsw <16 x i32> %wide.masked.gather981, %i.cs
  %predphi982 = select <16 x i1> %i.cn, <16 x i32> %i.fo, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi982, <16 x ptr> align 4 %wide.gep939, <16 x i1> %i.fk), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fp = select <16 x i1> %i.fk, <16 x i1> %i.co, <16 x i1> zeroinitializer
  %wide.masked.gather983 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fp, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fq = mul nsw <16 x i32> %wide.masked.gather983, %i.cv
  %predphi984 = select <16 x i1> %i.co, <16 x i32> %i.fq, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi984, <16 x ptr> align 4 %wide.gep942, <16 x i1> %i.fk), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fr = select <16 x i1> %i.fk, <16 x i1> %i.cp, <16 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather985 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.fr, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fs = mul nsw <16 x i32> %wide.masked.gather985, %i.cy
  %predphi986 = select <16 x i1> %i.fr, <16 x i32> %i.fs, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi986, <16 x ptr> align 4 %wide.gep945, <16 x i1> %i.cg), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ft = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1078 = shufflevector <1 x i32> %i.ft, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fu = mul nsw <16 x i32> %broadcast.splat1078, %i.bf ; 4 uses
  %i.fv = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1081 = shufflevector <1 x i32> %i.fv, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fw = icmp sgt <16 x i32> %broadcast.splat1081, %i.bf
  %i.fx = and <16 x i1> %i.dc, %i.fw              ; 4 uses
  %i.fy = and <16 x i1> %i.cb, %i.fx              ; 2 uses
  %i.fz = and <16 x i1> %i.ce, %i.fx
  %i.ga = xor <16 x i1> %i.fx, splat (i1 true)
  %i.gb = select <16 x i1> %i.cg, <16 x i1> %i.ga, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep946, <16 x i1> %i.gb), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep951, <16 x i1> %i.gb), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.gb), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gc = select <16 x i1> %i.cg, <16 x i1> %i.fx, <16 x i1> zeroinitializer ; 7 uses
  %i.gd = add nsw <16 x i32> %i.fu, %i.bo
  %wide.masked.gather989 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gc, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ge = mul nsw <16 x i32> %wide.masked.gather989, %i.gd
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.ge, <16 x ptr> align 4 %wide.gep946, <16 x i1> %i.gc), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gf = select <16 x i1> %i.gc, <16 x i1> %i.bv, <16 x i1> zeroinitializer
  %i.gg = add nsw <16 x i32> %i.fu, %i.bd
  %wide.masked.gather990 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gf, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gh = mul nsw <16 x i32> %wide.masked.gather990, %i.gg
  %predphi991 = select <16 x i1> %i.bv, <16 x i32> %i.gh, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi991, <16 x ptr> align 4 %wide.gep951, <16 x i1> %i.gc), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gi = select <16 x i1> %i.gc, <16 x i1> %i.fy, <16 x i1> zeroinitializer
  %i.gj = add nsw <16 x i32> %i.fu, %i.bq
  %wide.masked.gather992 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gi, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gk = mul nsw <16 x i32> %wide.masked.gather992, %i.gj
  %predphi993 = select <16 x i1> %i.fy, <16 x i32> %i.gk, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi993, <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.gc), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gl = select <16 x i1> %i.gc, <16 x i1> %i.fz, <16 x i1> zeroinitializer ; 2 uses
  %i.gm = add nsw <16 x i32> %i.fu, %i.bs
  %wide.masked.gather994 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gl, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gn = mul nsw <16 x i32> %wide.masked.gather994, %i.gm
  %predphi995 = select <16 x i1> %i.gl, <16 x i32> %i.gn, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi995, <16 x ptr> align 4 %wide.gep957, <16 x i1> %i.cg), !tbaa !23, !alias.scope !609, !noalias !610
  %i.go = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1084 = shufflevector <1 x i32> %i.go, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gp = mul nsw <16 x i32> %broadcast.splat1084, %i.du ; 4 uses
  %i.gq = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1087 = shufflevector <1 x i32> %i.gq, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gr = icmp sgt <16 x i32> %broadcast.splat1087, %i.du
  %i.gs = and <16 x i1> %i.dx, %i.gr              ; 4 uses
  %i.gt = and <16 x i1> %i.cb, %i.gs              ; 2 uses
  %i.gu = and <16 x i1> %i.ce, %i.gs
  %i.gv = xor <16 x i1> %i.gs, splat (i1 true)
  %i.gw = select <16 x i1> %i.cg, <16 x i1> %i.gv, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep958, <16 x i1> %i.gw), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep963, <16 x i1> %i.gw), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gw), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gx = select <16 x i1> %i.cg, <16 x i1> %i.gs, <16 x i1> zeroinitializer ; 7 uses
  %i.gy = add nsw <16 x i32> %i.gp, %i.bo
  %wide.masked.gather998 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.gx, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gz = mul nsw <16 x i32> %wide.masked.gather998, %i.gy
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.gz, <16 x ptr> align 4 %wide.gep958, <16 x i1> %i.gx), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ha = select <16 x i1> %i.gx, <16 x i1> %i.bv, <16 x i1> zeroinitializer
  %i.hb = add nsw <16 x i32> %i.gp, %i.bd
  %wide.masked.gather999 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ha, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hc = mul nsw <16 x i32> %wide.masked.gather999, %i.hb
  %predphi1000 = select <16 x i1> %i.bv, <16 x i32> %i.hc, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1000, <16 x ptr> align 4 %wide.gep963, <16 x i1> %i.gx), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hd = select <16 x i1> %i.gx, <16 x i1> %i.gt, <16 x i1> zeroinitializer
  %i.he = add nsw <16 x i32> %i.gp, %i.bq
  %wide.masked.gather1001 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hd, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hf = mul nsw <16 x i32> %wide.masked.gather1001, %i.he
  %predphi1002 = select <16 x i1> %i.gt, <16 x i32> %i.hf, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1002, <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gx), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hg = select <16 x i1> %i.gx, <16 x i1> %i.gu, <16 x i1> zeroinitializer ; 2 uses
  %i.hh = add nsw <16 x i32> %i.gp, %i.bs
  %wide.masked.gather1003 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hg, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hi = mul nsw <16 x i32> %wide.masked.gather1003, %i.hh
  %predphi1004 = select <16 x i1> %i.hg, <16 x i32> %i.hi, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1004, <16 x ptr> align 4 %wide.gep969, <16 x i1> %i.cg), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hj = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1090 = shufflevector <1 x i32> %i.hj, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hk = mul nsw <16 x i32> %broadcast.splat1090, %i.ep ; 4 uses
  %i.hl = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1093 = shufflevector <1 x i32> %i.hl, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hm = icmp sgt <16 x i32> %broadcast.splat1093, %i.ep
  %i.hn = and <16 x i1> %i.es, %i.hm              ; 4 uses
  %i.ho = and <16 x i1> %i.cb, %i.hn              ; 2 uses
  %i.hp = and <16 x i1> %i.ce, %i.hn
  %i.hq = xor <16 x i1> %i.hn, splat (i1 true)
  %i.hr = select <16 x i1> %i.cg, <16 x i1> %i.hq, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep970, <16 x i1> %i.hr), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep975, <16 x i1> %i.hr), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hr), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hs = select <16 x i1> %i.cg, <16 x i1> %i.hn, <16 x i1> zeroinitializer ; 7 uses
  %i.ht = add nsw <16 x i32> %i.hk, %i.bo
  %wide.masked.gather1007 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hs, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hu = mul nsw <16 x i32> %wide.masked.gather1007, %i.ht
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.hu, <16 x ptr> align 4 %wide.gep970, <16 x i1> %i.hs), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hv = select <16 x i1> %i.hs, <16 x i1> %i.bv, <16 x i1> zeroinitializer
  %i.hw = add nsw <16 x i32> %i.hk, %i.bd
  %wide.masked.gather1008 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hv, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hx = mul nsw <16 x i32> %wide.masked.gather1008, %i.hw
  %predphi1009 = select <16 x i1> %i.bv, <16 x i32> %i.hx, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1009, <16 x ptr> align 4 %wide.gep975, <16 x i1> %i.hs), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hy = select <16 x i1> %i.hs, <16 x i1> %i.ho, <16 x i1> zeroinitializer
  %i.hz = add nsw <16 x i32> %i.hk, %i.bq
  %wide.masked.gather1010 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.hy, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ia = mul nsw <16 x i32> %wide.masked.gather1010, %i.hz
  %predphi1011 = select <16 x i1> %i.ho, <16 x i32> %i.ia, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1011, <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hs), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ib = select <16 x i1> %i.hs, <16 x i1> %i.hp, <16 x i1> zeroinitializer ; 2 uses
  %i.ic = add nsw <16 x i32> %i.hk, %i.bs
  %wide.masked.gather1012 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat928, <16 x i1> %i.ib, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.id = mul nsw <16 x i32> %wide.masked.gather1012, %i.ic
  %predphi1013 = select <16 x i1> %i.ff, <16 x i32> %i.fh, <16 x i32> splat (i32 -1)
  %predphi1014 = select <16 x i1> %i.ib, <16 x i32> %i.id, <16 x i32> %predphi1013
  %wide.gep1015 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep932, i64 68
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1014, <16 x ptr> align 4 %wide.gep1015, <16 x i1> splat (i1 true)), !tbaa !23, !alias.scope !609, !noalias !610
  %index.next1016 = add nuw i64 %index930, 16     ; 2 uses
  %ptr.ind1017 = getelementptr i8, ptr %pointer.phi931, i64 1152
  %i.ie = icmp eq i64 %index.next1016, %n.vec918
  br i1 %i.ie, label %middle.block1018, label %vector.body929, !llvm.loop !590

middle.block1018:                                 ; preds = %vector.body929
  %cmp.n1019 = icmp eq i64 %n.vec918, %i.ab
  br i1 %cmp.n1019, label %._crit_edge, label %.lr.ph533.preheader1109

.lr.ph533.preheader1109:                          ; preds = %vector.memcheck903, %.lr.ph533.preheader, %middle.block1018
  %.3532.ph = phi ptr [ %.1.lcssa, %vector.memcheck903 ], [ %.1.lcssa, %.lr.ph533.preheader ], [ %i.aj, %middle.block1018 ]
  %.1394531.ph = phi i32 [ %.0393.lcssa, %vector.memcheck903 ], [ %.0393.lcssa, %.lr.ph533.preheader ], [ %i.am, %middle.block1018 ]
  %.1396530.ph = phi ptr [ %.0395.lcssa, %vector.memcheck903 ], [ %.0395.lcssa, %.lr.ph533.preheader ], [ %i.ao, %middle.block1018 ]
  br label %.lr.ph533

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.qr, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.qt, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.qs, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.if = load <8 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0395517, i64 32
  %i.ih = load <8 x float>, ptr %i.ig, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.if, <8 x float> %i.ih, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.if, <8 x float> %i.ih, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ii = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ij = sitofp fast i32 %i.ii to float
  %i.ik = insertelement <8 x float> poison, float %i.ij, i64 0
  %i.il = shufflevector <8 x float> %i.ik, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.im = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.in = fadd fast <8 x float> %i.im, splat (float 5.000000e-01)
  %i.io = fadd fast <8 x float> %i.il, splat (float -1.000000e+00)
  %i.ip = fmul fast <8 x float> %i.io, %i.in      ; 2 uses
  %i.iq = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ir = sitofp fast i32 %i.iq to float
  %i.is = insertelement <8 x float> poison, float %i.ir, i64 0
  %i.it = shufflevector <8 x float> %i.is, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.iu = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.iv = fadd fast <8 x float> %i.iu, splat (float 5.000000e-01)
  %i.iw = fadd fast <8 x float> %i.it, splat (float -1.000000e+00)
  %i.ix = fmul fast <8 x float> %i.iw, %i.iv      ; 2 uses
  %i.iy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ip, i32 1) ; 10 uses
  %i.iz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ix, i32 1) ; 7 uses
  %i.ja = fadd fast <8 x float> %i.iy, splat (float -1.000000e+00) ; 6 uses
  %i.jb = fadd fast <8 x float> %i.iy, splat (float 1.000000e+00) ; 6 uses
  %i.jc = fadd fast <8 x float> %i.iy, splat (float 2.000000e+00) ; 6 uses
  %i.jd = fcmp fast ogt <8 x float> %i.ja, splat (float -1.000000e+00)
  %i.je = fcmp fast ogt <8 x float> %i.il, %i.ja
  %i.jf = and <8 x i1> %i.jd, %i.je               ; 4 uses
  %i.jg = fcmp fast ogt <8 x float> %i.iy, splat (float -1.000000e+00)
  %i.jh = fcmp fast ogt <8 x float> %i.il, %i.iy
  %i.ji = and <8 x i1> %i.jg, %i.jh               ; 4 uses
  %i.jj = fcmp fast ogt <8 x float> %i.jb, splat (float -1.000000e+00)
  %i.jk = fcmp fast ogt <8 x float> %i.il, %i.jb
  %i.jl = and <8 x i1> %i.jj, %i.jk               ; 4 uses
  %i.jm = fcmp fast ogt <8 x float> %i.jc, splat (float -1.000000e+00)
  %i.jn = fcmp fast ogt <8 x float> %i.il, %i.jc
  %i.jo = and <8 x i1> %i.jm, %i.jn               ; 4 uses
  %i.jp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.jq = sitofp fast i32 %i.jp to float
  %i.jr = insertelement <8 x float> poison, float %i.jq, i64 0
  %i.js = shufflevector <8 x float> %i.jr, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.jt = fadd fast <8 x float> %i.iz, splat (float -1.000000e+00) ; 3 uses
  %i.ju = fcmp fast ogt <8 x float> %i.jt, splat (float -1.000000e+00)
  %i.jv = fcmp fast ogt <8 x float> %i.it, %i.jt
  %i.jw = and <8 x i1> %i.ju, %i.jv               ; 4 uses
  %i.jx = fmul fast <8 x float> %i.jt, %i.il      ; 4 uses
  %i.jy = fadd fast <8 x float> %i.jx, %i.ja
  %i.jz = fmul fast <8 x float> %i.js, %i.jy
  %i.ka = fadd fast <8 x float> %i.jx, %i.iy
  %i.kb = fmul fast <8 x float> %i.js, %i.ka
  %i.kc = fadd fast <8 x float> %i.jx, %i.jb
  %i.kd = fmul fast <8 x float> %i.js, %i.kc
  %i.ke = fadd fast <8 x float> %i.jx, %i.jc
  %i.kf = fmul fast <8 x float> %i.js, %i.ke
  %i.kg = and <8 x i1> %i.jf, %i.jw
  %i.kh = select <8 x i1> %i.kg, <8 x float> %i.jz, <8 x float> splat (float -1.000000e+00)
  %i.ki = and <8 x i1> %i.ji, %i.jw
  %i.kj = select <8 x i1> %i.ki, <8 x float> %i.kb, <8 x float> splat (float -1.000000e+00)
  %i.kk = and <8 x i1> %i.jl, %i.jw
  %i.kl = select <8 x i1> %i.kk, <8 x float> %i.kd, <8 x float> splat (float -1.000000e+00)
  %i.km = and <8 x i1> %i.jo, %i.jw
  %i.kn = select <8 x i1> %i.km, <8 x float> %i.kf, <8 x float> splat (float -1.000000e+00)
  %i.ko = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.kp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kj) ; 2 uses
  %i.kq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kl) ; 2 uses
  %i.kr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kn) ; 2 uses
  %i.ks = fcmp fast ogt <8 x float> %i.iz, splat (float -1.000000e+00)
  %i.kt = fcmp fast ogt <8 x float> %i.it, %i.iz
  %i.ku = and <8 x i1> %i.ks, %i.kt               ; 4 uses
  %i.kv = fmul fast <8 x float> %i.iz, %i.il      ; 4 uses
  %i.kw = fadd fast <8 x float> %i.kv, %i.ja
  %i.kx = fmul fast <8 x float> %i.js, %i.kw
  %i.ky = fadd fast <8 x float> %i.kv, %i.iy
  %i.kz = fmul fast <8 x float> %i.js, %i.ky
  %i.la = fadd fast <8 x float> %i.kv, %i.jb
  %i.lb = fmul fast <8 x float> %i.js, %i.la
  %i.lc = fadd fast <8 x float> %i.kv, %i.jc
  %i.ld = fmul fast <8 x float> %i.js, %i.lc
  %i.le = and <8 x i1> %i.jf, %i.ku
  %i.lf = select <8 x i1> %i.le, <8 x float> %i.kx, <8 x float> splat (float -1.000000e+00)
  %i.lg = and <8 x i1> %i.ji, %i.ku
  %i.lh = select <8 x i1> %i.lg, <8 x float> %i.kz, <8 x float> splat (float -1.000000e+00)
  %i.li = and <8 x i1> %i.jl, %i.ku
  %i.lj = select <8 x i1> %i.li, <8 x float> %i.lb, <8 x float> splat (float -1.000000e+00)
  %i.lk = and <8 x i1> %i.jo, %i.ku
  %i.ll = select <8 x i1> %i.lk, <8 x float> %i.ld, <8 x float> splat (float -1.000000e+00)
  %i.lm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lf) ; 2 uses
  %i.ln = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lh) ; 2 uses
  %i.lo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lj) ; 2 uses
  %i.lp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ll) ; 2 uses
  %i.lq = fadd fast <8 x float> %i.iz, splat (float 1.000000e+00) ; 3 uses
  %i.lr = fcmp fast ogt <8 x float> %i.lq, splat (float -1.000000e+00)
  %i.ls = fcmp fast ogt <8 x float> %i.it, %i.lq
  %i.lt = and <8 x i1> %i.lr, %i.ls               ; 4 uses
  %i.lu = fmul fast <8 x float> %i.lq, %i.il      ; 4 uses
  %i.lv = fadd fast <8 x float> %i.lu, %i.ja
  %i.lw = fmul fast <8 x float> %i.js, %i.lv
  %i.lx = fadd fast <8 x float> %i.lu, %i.iy
  %i.ly = fmul fast <8 x float> %i.js, %i.lx
  %i.lz = fadd fast <8 x float> %i.lu, %i.jb
  %i.ma = fmul fast <8 x float> %i.js, %i.lz
  %i.mb = fadd fast <8 x float> %i.lu, %i.jc
  %i.mc = fmul fast <8 x float> %i.js, %i.mb
  %i.md = and <8 x i1> %i.jf, %i.lt
  %i.me = select <8 x i1> %i.md, <8 x float> %i.lw, <8 x float> splat (float -1.000000e+00)
  %i.mf = and <8 x i1> %i.ji, %i.lt
  %i.mg = select <8 x i1> %i.mf, <8 x float> %i.ly, <8 x float> splat (float -1.000000e+00)
  %i.mh = and <8 x i1> %i.jl, %i.lt
  %i.mi = select <8 x i1> %i.mh, <8 x float> %i.ma, <8 x float> splat (float -1.000000e+00)
  %i.mj = and <8 x i1> %i.jo, %i.lt
  %i.mk = select <8 x i1> %i.mj, <8 x float> %i.mc, <8 x float> splat (float -1.000000e+00)
  %i.ml = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.me) ; 2 uses
  %i.mm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mg) ; 2 uses
  %i.mn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mi) ; 2 uses
  %i.mo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mk) ; 2 uses
  %i.mp = fadd fast <8 x float> %i.iz, splat (float 2.000000e+00) ; 3 uses
  %i.mq = fcmp fast ogt <8 x float> %i.mp, splat (float -1.000000e+00)
  %i.mr = fcmp fast ogt <8 x float> %i.it, %i.mp
  %i.ms = and <8 x i1> %i.mq, %i.mr               ; 4 uses
  %i.mt = fmul fast <8 x float> %i.mp, %i.il      ; 4 uses
  %i.mu = fadd fast <8 x float> %i.mt, %i.ja
  %i.mv = fmul fast <8 x float> %i.js, %i.mu
  %i.mw = fadd fast <8 x float> %i.mt, %i.iy
  %i.mx = fmul fast <8 x float> %i.js, %i.mw
  %i.my = fadd fast <8 x float> %i.mt, %i.jb
  %i.mz = fmul fast <8 x float> %i.js, %i.my
  %i.na = fadd fast <8 x float> %i.mt, %i.jc
  %i.nb = fmul fast <8 x float> %i.js, %i.na
  %i.nc = and <8 x i1> %i.jf, %i.ms
  %i.nd = select <8 x i1> %i.nc, <8 x float> %i.mv, <8 x float> splat (float -1.000000e+00)
  %i.ne = and <8 x i1> %i.ji, %i.ms
  %i.nf = select <8 x i1> %i.ne, <8 x float> %i.mx, <8 x float> splat (float -1.000000e+00)
  %i.ng = and <8 x i1> %i.jl, %i.ms
  %i.nh = select <8 x i1> %i.ng, <8 x float> %i.mz, <8 x float> splat (float -1.000000e+00)
  %i.ni = and <8 x i1> %i.jo, %i.ms
  %i.nj = select <8 x i1> %i.ni, <8 x float> %i.nb, <8 x float> splat (float -1.000000e+00)
  %i.nk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nd) ; 2 uses
  %i.nl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nf) ; 2 uses
  %i.nm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nh) ; 2 uses
  %i.nn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nj) ; 2 uses
  %i.no = fsub fast <8 x float> %i.ip, %i.iy      ; 2 uses
  %i.np = fsub fast <8 x float> %i.ix, %i.iz      ; 2 uses
  %i.nq = shufflevector <8 x float> %i.no, <8 x float> %i.np, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nr = shufflevector <8 x float> %i.no, <8 x float> %i.np, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ns = shufflevector <8 x i32> %i.ko, <8 x i32> %i.kp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nt = bitcast <8 x i32> %i.ns to <8 x float>
  %i.nu = shufflevector <8 x i32> %i.ko, <8 x i32> %i.kp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nv = bitcast <8 x i32> %i.nu to <8 x float>
  %i.nw = shufflevector <8 x i32> %i.kq, <8 x i32> %i.kr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nx = shufflevector <8 x i32> %i.kq, <8 x i32> %i.kr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ny = shufflevector <8 x i32> %i.lm, <8 x i32> %i.ln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nz = shufflevector <8 x i32> %i.lm, <8 x i32> %i.ln, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oa = shufflevector <8 x i32> %i.lo, <8 x i32> %i.lp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ob = shufflevector <8 x i32> %i.lo, <8 x i32> %i.lp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oc = shufflevector <8 x i32> %i.ml, <8 x i32> %i.mm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.od = shufflevector <8 x i32> %i.ml, <8 x i32> %i.mm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oe = shufflevector <8 x i32> %i.mn, <8 x i32> %i.mo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.of = shufflevector <8 x i32> %i.mn, <8 x i32> %i.mo, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.og = shufflevector <8 x i32> %i.nk, <8 x i32> %i.nl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.oh = shufflevector <8 x i32> %i.nk, <8 x i32> %i.nl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oi = shufflevector <8 x i32> %i.nm, <8 x i32> %i.nn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.oj = bitcast <8 x i32> %i.oi to <8 x float>
  %i.ok = shufflevector <8 x i32> %i.nm, <8 x i32> %i.nn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ol = bitcast <8 x i32> %i.ok to <8 x float>
  %i.om = shufflevector <8 x float> %i.nq, <8 x float> %i.nt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.on = shufflevector <8 x i32> %i.nw, <8 x i32> %i.ny, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.oo = bitcast <8 x i32> %i.on to <8 x float>  ; 2 uses
  %i.op = shufflevector <8 x i32> %i.oa, <8 x i32> %i.oc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oq = shufflevector <8 x i32> %i.oe, <8 x i32> %i.og, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.or = shufflevector <8 x float> %i.oj, <8 x float> %i.nq, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.os = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ot = bitcast <8 x i32> %i.os to <8 x float>  ; 2 uses
  %i.ou = shufflevector <8 x i32> %i.ny, <8 x i32> %i.oa, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ov = shufflevector <8 x i32> %i.oc, <8 x i32> %i.oe, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ow = shufflevector <8 x i32> %i.og, <8 x i32> %i.oi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ox = bitcast <8 x i32> %i.ow to <8 x float>  ; 2 uses
  %i.oy = shufflevector <8 x float> %i.nr, <8 x float> %i.nv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oz = shufflevector <8 x i32> %i.nx, <8 x i32> %i.nz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.pa = shufflevector <8 x i32> %i.ob, <8 x i32> %i.od, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.pb = shufflevector <8 x i32> %i.of, <8 x i32> %i.oh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.pc = bitcast <8 x i32> %i.pb to <8 x float>  ; 2 uses
  %i.pd = shufflevector <8 x float> %i.ol, <8 x float> %i.nr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.pe = shufflevector <8 x i32> %i.nu, <8 x i32> %i.nx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pf = shufflevector <8 x i32> %i.nz, <8 x i32> %i.ob, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pg = shufflevector <8 x i32> %i.od, <8 x i32> %i.of, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ph = shufflevector <8 x i32> %i.oh, <8 x i32> %i.ok, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pi = shufflevector <8 x float> %i.om, <8 x float> %i.oo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pj = shufflevector <8 x i32> %i.op, <8 x i32> %i.oq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pk = shufflevector <8 x float> %i.or, <8 x float> %i.ot, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pl = shufflevector <8 x i32> %i.ou, <8 x i32> %i.ov, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pm = shufflevector <8 x float> %i.ox, <8 x float> %i.oy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pn = shufflevector <8 x i32> %i.oz, <8 x i32> %i.pa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.po = shufflevector <8 x float> %i.pc, <8 x float> %i.pd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pp = shufflevector <8 x i32> %i.pe, <8 x i32> %i.pf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pq = shufflevector <8 x i32> %i.pg, <8 x i32> %i.ph, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pr = shufflevector <8 x float> %i.om, <8 x float> %i.oo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ps = shufflevector <8 x i32> %i.op, <8 x i32> %i.oq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pt = shufflevector <8 x float> %i.or, <8 x float> %i.ot, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pu = shufflevector <8 x i32> %i.ou, <8 x i32> %i.ov, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pv = shufflevector <8 x float> %i.ox, <8 x float> %i.oy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pw = shufflevector <8 x i32> %i.oz, <8 x i32> %i.pa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.px = shufflevector <8 x float> %i.pc, <8 x float> %i.pd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.py = shufflevector <8 x i32> %i.pe, <8 x i32> %i.pf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.pz = shufflevector <8 x i32> %i.pg, <8 x i32> %i.ph, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.pi, ptr %.1519, align 1, !tbaa !41
  %i.qa = getelementptr inbounds nuw i8, ptr %.1519, i64 32
  store <8 x i32> %i.pj, ptr %i.qa, align 1, !tbaa !41
  %i.qb = getelementptr inbounds nuw i8, ptr %.1519, i64 64
  store <8 x float> %i.pk, ptr %i.qb, align 1, !tbaa !41
  %i.qc = getelementptr inbounds nuw i8, ptr %.1519, i64 96
  store <8 x i32> %i.pl, ptr %i.qc, align 1, !tbaa !41
  %i.qd = getelementptr inbounds nuw i8, ptr %.1519, i64 128
  store <8 x float> %i.pm, ptr %i.qd, align 1, !tbaa !41
  %i.qe = getelementptr inbounds nuw i8, ptr %.1519, i64 160
  store <8 x i32> %i.pn, ptr %i.qe, align 1, !tbaa !41
  %i.qf = getelementptr inbounds nuw i8, ptr %.1519, i64 192
  store <8 x float> %i.po, ptr %i.qf, align 1, !tbaa !41
end_hunk_13
begin_hunk_14_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.pw = icmp sgt <8 x i32> %i.pt, splat (i32 -1)
  %i.px = icmp sgt <8 x i32> %broadcast.splat1384, %i.pt
  %i.py = and <8 x i1> %i.pw, %i.px               ; 3 uses
  %i.pz = and <8 x i1> %i.mf, %i.py               ; 2 uses
  %i.qa = and <8 x i1> %i.ml, %i.py               ; 2 uses
  %i.qb = and <8 x i1> %i.mo, %i.py
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1210, <8 x i1> %i.nd), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qc = select <8 x i1> %i.nd, <8 x i1> %i.pz, <8 x i1> zeroinitializer
  %i.qd = add nsw <8 x i32> %i.pv, %i.ln
  %wide.masked.gather1213 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qc, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.qe = mul nsw <8 x i32> %wide.masked.gather1213, %i.qd
  %predphi1214 = select <8 x i1> %i.pz, <8 x i32> %i.qe, <8 x i32> splat (i32 -1)
  %wide.gep1215 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1170, i64 60 ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1214, <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.nd), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qf = select <8 x i1> %i.nd, <8 x i1> %i.qa, <8 x i1> zeroinitializer
  %i.qg = add nsw <8 x i32> %i.pv, %i.lx
  %wide.masked.gather1216 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qf, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.qh = mul nsw <8 x i32> %wide.masked.gather1216, %i.qg
  %predphi1217 = select <8 x i1> %i.qa, <8 x i32> %i.qh, <8 x i32> splat (i32 -1)
  %wide.gep1218 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1170, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1217, <8 x ptr> align 4 %wide.gep1218, <8 x i1> %i.nd), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qi = select <8 x i1> %i.nd, <8 x i1> %i.qb, <8 x i1> zeroinitializer ; 2 uses
  %i.qj = add nsw <8 x i32> %i.pv, %i.mc
  %wide.masked.gather1219 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qi, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.qk = mul nsw <8 x i32> %wide.masked.gather1219, %i.qj
  %i.ql = xor <8 x i1> %i.mz, splat (i1 true)
  %i.qm = select <8 x i1> %i.mp, <8 x i1> %i.ql, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1176, <8 x i1> %i.qm), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1179, <8 x i1> %i.qm), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1182, <8 x i1> %i.qm), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qn = select <8 x i1> %i.mp, <8 x i1> %i.mz, <8 x i1> zeroinitializer ; 7 uses
  %i.qo = add nsw <8 x i32> %i.mw, %i.ls
  %wide.masked.gather1220 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qn, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.qp = mul nsw <8 x i32> %wide.masked.gather1220, %i.qo
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.qp, <8 x ptr> align 4 %wide.gep1176, <8 x i1> %i.qn), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qq = select <8 x i1> %i.qn, <8 x i1> %i.na, <8 x i1> zeroinitializer
  %wide.masked.gather1221 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qq, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.qr = mul nsw <8 x i32> %wide.masked.gather1221, %i.nf
  %predphi1222 = select <8 x i1> %i.na, <8 x i32> %i.qr, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1222, <8 x ptr> align 4 %wide.gep1179, <8 x i1> %i.qn), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qs = select <8 x i1> %i.qn, <8 x i1> %i.nb, <8 x i1> zeroinitializer
  %wide.masked.gather1223 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qs, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.qt = mul nsw <8 x i32> %wide.masked.gather1223, %i.ni
  %predphi1224 = select <8 x i1> %i.nb, <8 x i32> %i.qt, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1224, <8 x ptr> align 4 %wide.gep1182, <8 x i1> %i.qn), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qu = select <8 x i1> %i.qn, <8 x i1> %i.nc, <8 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather1225 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qu, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.qv = mul nsw <8 x i32> %wide.masked.gather1225, %i.nl
  %predphi1226 = select <8 x i1> %i.qu, <8 x i32> %i.qv, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1226, <8 x ptr> align 4 %wide.gep1185, <8 x i1> %i.mp), !tbaa !23, !alias.scope !648, !noalias !649
  %i.qw = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1390 = shufflevector <1 x i32> %i.qw, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qx = sitofp fast <8 x i32> %broadcast.splat1390 to <8 x float>
  %i.qy = fadd fast <8 x float> %i.qx, splat (float -1.000000e+00)
  %i.qz = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.nr, <8 x float> %i.qy)
  %i.ra = fptosi <8 x float> %i.qz to <8 x i32>   ; 3 uses
  %i.rb = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1393 = shufflevector <1 x i32> %i.rb, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.rc = mul nsw <8 x i32> %broadcast.splat1393, %i.ra ; 4 uses
  %i.rd = icmp sgt <8 x i32> %i.ra, splat (i32 -1)
  %i.re = icmp sgt <8 x i32> %broadcast.splat1390, %i.ra
  %i.rf = and <8 x i1> %i.rd, %i.re               ; 4 uses
  %i.rg = and <8 x i1> %i.ml, %i.rf               ; 2 uses
  %i.rh = and <8 x i1> %i.mo, %i.rf
  %i.ri = xor <8 x i1> %i.rf, splat (i1 true)
  %i.rj = select <8 x i1> %i.mp, <8 x i1> %i.ri, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1186, <8 x i1> %i.rj), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1191, <8 x i1> %i.rj), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1194, <8 x i1> %i.rj), !tbaa !23, !alias.scope !648, !noalias !649
  %i.rk = select <8 x i1> %i.mp, <8 x i1> %i.rf, <8 x i1> zeroinitializer ; 7 uses
  %i.rl = add nsw <8 x i32> %i.rc, %i.ls
  %wide.masked.gather1229 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.rk, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.rm = mul nsw <8 x i32> %wide.masked.gather1229, %i.rl
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.rm, <8 x ptr> align 4 %wide.gep1186, <8 x i1> %i.rk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.rn = select <8 x i1> %i.rk, <8 x i1> %i.mf, <8 x i1> zeroinitializer
  %i.ro = add nsw <8 x i32> %i.rc, %i.ln
  %wide.masked.gather1230 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.rn, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.rp = mul nsw <8 x i32> %wide.masked.gather1230, %i.ro
  %predphi1231 = select <8 x i1> %i.mf, <8 x i32> %i.rp, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1231, <8 x ptr> align 4 %wide.gep1191, <8 x i1> %i.rk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.rq = select <8 x i1> %i.rk, <8 x i1> %i.rg, <8 x i1> zeroinitializer
  %i.rr = add nsw <8 x i32> %i.rc, %i.lx
  %wide.masked.gather1232 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.rq, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.rs = mul nsw <8 x i32> %wide.masked.gather1232, %i.rr
  %predphi1233 = select <8 x i1> %i.rg, <8 x i32> %i.rs, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1233, <8 x ptr> align 4 %wide.gep1194, <8 x i1> %i.rk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.rt = select <8 x i1> %i.rk, <8 x i1> %i.rh, <8 x i1> zeroinitializer ; 2 uses
  %i.ru = add nsw <8 x i32> %i.rc, %i.mc
  %wide.masked.gather1234 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.rt, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.rv = mul nsw <8 x i32> %wide.masked.gather1234, %i.ru
  %predphi1235 = select <8 x i1> %i.rt, <8 x i32> %i.rv, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1235, <8 x ptr> align 4 %wide.gep1197, <8 x i1> %i.mp), !tbaa !23, !alias.scope !648, !noalias !649
  %i.rw = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1396 = shufflevector <1 x i32> %i.rw, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rx = sitofp fast <8 x i32> %broadcast.splat1396 to <8 x float>
  %i.ry = fadd fast <8 x float> %i.rx, splat (float -1.000000e+00)
  %i.rz = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.or, <8 x float> %i.ry)
  %i.sa = fptosi <8 x float> %i.rz to <8 x i32>   ; 3 uses
  %i.sb = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1399 = shufflevector <1 x i32> %i.sb, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.sc = mul nsw <8 x i32> %broadcast.splat1399, %i.sa ; 4 uses
  %i.sd = icmp sgt <8 x i32> %i.sa, splat (i32 -1)
  %i.se = icmp sgt <8 x i32> %broadcast.splat1396, %i.sa
  %i.sf = and <8 x i1> %i.sd, %i.se               ; 4 uses
  %i.sg = and <8 x i1> %i.ml, %i.sf               ; 2 uses
  %i.sh = and <8 x i1> %i.mo, %i.sf
  %i.si = xor <8 x i1> %i.sf, splat (i1 true)
  %i.sj = select <8 x i1> %i.mp, <8 x i1> %i.si, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1198, <8 x i1> %i.sj), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1203, <8 x i1> %i.sj), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1206, <8 x i1> %i.sj), !tbaa !23, !alias.scope !648, !noalias !649
  %i.sk = select <8 x i1> %i.mp, <8 x i1> %i.sf, <8 x i1> zeroinitializer ; 7 uses
  %i.sl = add nsw <8 x i32> %i.sc, %i.ls
  %wide.masked.gather1238 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.sk, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.sm = mul nsw <8 x i32> %wide.masked.gather1238, %i.sl
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.sm, <8 x ptr> align 4 %wide.gep1198, <8 x i1> %i.sk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.sn = select <8 x i1> %i.sk, <8 x i1> %i.mf, <8 x i1> zeroinitializer
  %i.so = add nsw <8 x i32> %i.sc, %i.ln
  %wide.masked.gather1239 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.sn, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.sp = mul nsw <8 x i32> %wide.masked.gather1239, %i.so
  %predphi1240 = select <8 x i1> %i.mf, <8 x i32> %i.sp, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1240, <8 x ptr> align 4 %wide.gep1203, <8 x i1> %i.sk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.sq = select <8 x i1> %i.sk, <8 x i1> %i.sg, <8 x i1> zeroinitializer
  %i.sr = add nsw <8 x i32> %i.sc, %i.lx
  %wide.masked.gather1241 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.sq, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.ss = mul nsw <8 x i32> %wide.masked.gather1241, %i.sr
  %predphi1242 = select <8 x i1> %i.sg, <8 x i32> %i.ss, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1242, <8 x ptr> align 4 %wide.gep1206, <8 x i1> %i.sk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.st = select <8 x i1> %i.sk, <8 x i1> %i.sh, <8 x i1> zeroinitializer ; 2 uses
  %i.su = add nsw <8 x i32> %i.sc, %i.mc
  %wide.masked.gather1243 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.st, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.sv = mul nsw <8 x i32> %wide.masked.gather1243, %i.su
  %predphi1244 = select <8 x i1> %i.st, <8 x i32> %i.sv, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1244, <8 x ptr> align 4 %wide.gep1209, <8 x i1> %i.mp), !tbaa !23, !alias.scope !648, !noalias !649
  %i.sw = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1402 = shufflevector <1 x i32> %i.sw, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.sx = sitofp fast <8 x i32> %broadcast.splat1402 to <8 x float>
  %i.sy = fadd fast <8 x float> %i.sx, splat (float -1.000000e+00)
  %i.sz = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pr, <8 x float> %i.sy)
  %i.ta = fptosi <8 x float> %i.sz to <8 x i32>   ; 3 uses
  %i.tb = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1405 = shufflevector <1 x i32> %i.tb, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.tc = mul nsw <8 x i32> %broadcast.splat1405, %i.ta ; 4 uses
  %i.td = icmp sgt <8 x i32> %i.ta, splat (i32 -1)
  %i.te = icmp sgt <8 x i32> %broadcast.splat1402, %i.ta
  %i.tf = and <8 x i1> %i.td, %i.te               ; 4 uses
  %i.tg = and <8 x i1> %i.ml, %i.tf               ; 2 uses
  %i.th = and <8 x i1> %i.mo, %i.tf
  %i.ti = xor <8 x i1> %i.tf, splat (i1 true)
  %i.tj = select <8 x i1> %i.mp, <8 x i1> %i.ti, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1210, <8 x i1> %i.tj), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.tj), !tbaa !23, !alias.scope !648, !noalias !649
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1218, <8 x i1> %i.tj), !tbaa !23, !alias.scope !648, !noalias !649
  %i.tk = select <8 x i1> %i.mp, <8 x i1> %i.tf, <8 x i1> zeroinitializer ; 7 uses
  %i.tl = add nsw <8 x i32> %i.tc, %i.ls
  %wide.masked.gather1247 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.tk, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.tm = mul nsw <8 x i32> %wide.masked.gather1247, %i.tl
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.tm, <8 x ptr> align 4 %wide.gep1210, <8 x i1> %i.tk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.tn = select <8 x i1> %i.tk, <8 x i1> %i.mf, <8 x i1> zeroinitializer
  %i.to = add nsw <8 x i32> %i.tc, %i.ln
  %wide.masked.gather1248 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.tn, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.tp = mul nsw <8 x i32> %wide.masked.gather1248, %i.to
  %predphi1249 = select <8 x i1> %i.mf, <8 x i32> %i.tp, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1249, <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.tk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.tq = select <8 x i1> %i.tk, <8 x i1> %i.tg, <8 x i1> zeroinitializer
  %i.tr = add nsw <8 x i32> %i.tc, %i.lx
  %wide.masked.gather1250 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.tq, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.ts = mul nsw <8 x i32> %wide.masked.gather1250, %i.tr
  %predphi1251 = select <8 x i1> %i.tg, <8 x i32> %i.ts, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1251, <8 x ptr> align 4 %wide.gep1218, <8 x i1> %i.tk), !tbaa !23, !alias.scope !648, !noalias !649
  %i.tt = select <8 x i1> %i.tk, <8 x i1> %i.th, <8 x i1> zeroinitializer ; 2 uses
  %i.tu = add nsw <8 x i32> %i.tc, %i.mc
  %wide.masked.gather1252 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.tt, <8 x i32> poison), !tbaa !16, !alias.scope !650
  %i.tv = mul nsw <8 x i32> %wide.masked.gather1252, %i.tu
  %predphi1253 = select <8 x i1> %i.qi, <8 x i32> %i.qk, <8 x i32> splat (i32 -1)
  %predphi1254 = select <8 x i1> %i.tt, <8 x i32> %i.tv, <8 x i32> %predphi1253
  %wide.gep1255 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1170, i64 68
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1254, <8 x ptr> align 4 %wide.gep1255, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !648, !noalias !649
  %index.next1256 = add nuw i64 %index1168, 8     ; 2 uses
  %ptr.ind1257 = getelementptr i8, ptr %pointer.phi1169, i64 576
  %i.tw = icmp eq i64 %index.next1256, %n.vec1156
  br i1 %i.tw, label %vec.epilog.middle.block1258, label %vec.epilog.vector.body1167, !llvm.loop !628

vec.epilog.middle.block1258:                      ; preds = %vec.epilog.vector.body1167
  %cmp.n1259 = icmp eq i64 %n.vec1156, %i.ab
  br i1 %cmp.n1259, label %._crit_edge, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %iter.check1149, %vector.memcheck1031, %vec.epilog.iter.check1150, %vec.epilog.middle.block1258
  %.3552.ph = phi ptr [ %.1.lcssa, %iter.check1149 ], [ %.1.lcssa, %vector.memcheck1031 ], [ %i.ak, %vec.epilog.iter.check1150 ], [ %i.ke, %vec.epilog.middle.block1258 ]
  %.1394551.ph = phi i32 [ %.0393.lcssa, %iter.check1149 ], [ %.0393.lcssa, %vector.memcheck1031 ], [ %i.an, %vec.epilog.iter.check1150 ], [ %i.kh, %vec.epilog.middle.block1258 ]
  %.1396550.ph = phi ptr [ %.0395.lcssa, %iter.check1149 ], [ %.0395.lcssa, %vector.memcheck1031 ], [ %i.ap, %vec.epilog.iter.check1150 ], [ %i.kj, %vec.epilog.middle.block1258 ]
  br label %.lr.ph553

.lr.ph540:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph540
  %.1539 = phi ptr [ %i.acz, %.lr.ph540 ], [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393538 = phi i32 [ %i.adb, %.lr.ph540 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395537 = phi ptr [ %i.ada, %.lr.ph540 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.tx = load <8 x float>, ptr %.0395537, align 1, !tbaa !41 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.0395537, i64 32
  %i.tz = load <8 x float>, ptr %i.ty, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.tx, <8 x float> %i.tz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.tx, <8 x float> %i.tz, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ua = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ub = sitofp fast i32 %i.ua to float
  %i.uc = insertelement <8 x float> poison, float %i.ub, i64 0
  %i.ud = shufflevector <8 x float> %i.uc, <8 x float> poison, <8 x i32> zeroinitializer ; 10 uses
  %i.ue = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.uf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ue, <8 x float> nofpclass(nan inf) %i.ud, <8 x float> splat (float -1.000000e+00))
  %i.ug = fmul fast <8 x float> %i.uf, splat (float 5.000000e-01) ; 2 uses
  %i.uh = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ui = sitofp fast i32 %i.uh to float
  %i.uj = insertelement <8 x float> poison, float %i.ui, i64 0
  %i.uk = shufflevector <8 x float> %i.uj, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ul = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.um = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ul, <8 x float> nofpclass(nan inf) %i.uk, <8 x float> splat (float -1.000000e+00))
  %i.un = fmul fast <8 x float> %i.um, splat (float 5.000000e-01) ; 2 uses
  %i.uo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ug, i32 1) ; 5 uses
  %i.up = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.un, i32 1) ; 5 uses
  %i.uq = fadd fast <8 x float> %i.uo, splat (float -1.000000e+00)
  %i.ur = fadd fast <8 x float> %i.uo, splat (float 1.000000e+00)
  %i.us = fadd fast <8 x float> %i.uo, splat (float 2.000000e+00)
  %i.ut = fadd fast <8 x float> %i.ud, splat (float -1.000000e+00) ; 4 uses
  %i.uu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uq, <8 x float> zeroinitializer)
  %i.uv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ut, <8 x float> nofpclass(nan inf) %i.uu) ; 6 uses
  %i.uw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uo, <8 x float> zeroinitializer)
  %i.ux = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ut, <8 x float> nofpclass(nan inf) %i.uw) ; 6 uses
  %i.uy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ur, <8 x float> zeroinitializer)
  %i.uz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ut, <8 x float> nofpclass(nan inf) %i.uy) ; 6 uses
  %i.va = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.us, <8 x float> zeroinitializer)
  %i.vb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ut, <8 x float> nofpclass(nan inf) %i.va) ; 6 uses
  %i.vc = fcmp fast ogt <8 x float> %i.uv, splat (float -1.000000e+00)
  %i.vd = fcmp fast ogt <8 x float> %i.ud, %i.uv
  %i.ve = and <8 x i1> %i.vc, %i.vd               ; 4 uses
  %i.vf = fcmp fast ogt <8 x float> %i.ux, splat (float -1.000000e+00)
  %i.vg = fcmp fast ogt <8 x float> %i.ud, %i.ux
  %i.vh = and <8 x i1> %i.vf, %i.vg               ; 4 uses
  %i.vi = fcmp fast ogt <8 x float> %i.uz, splat (float -1.000000e+00)
  %i.vj = fcmp fast ogt <8 x float> %i.ud, %i.uz
  %i.vk = and <8 x i1> %i.vi, %i.vj               ; 4 uses
  %i.vl = fcmp fast ogt <8 x float> %i.vb, splat (float -1.000000e+00)
  %i.vm = fcmp fast ogt <8 x float> %i.ud, %i.vb
  %i.vn = and <8 x i1> %i.vl, %i.vm               ; 4 uses
  %i.vo = fadd fast <8 x float> %i.uk, splat (float -1.000000e+00) ; 4 uses
  %i.vp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.vq = sitofp fast i32 %i.vp to float
  %i.vr = insertelement <8 x float> poison, float %i.vq, i64 0
  %i.vs = shufflevector <8 x float> %i.vr, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.vt = fadd fast <8 x float> %i.up, splat (float -1.000000e+00)
  %i.vu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vt, <8 x float> zeroinitializer)
  %i.vv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> nofpclass(nan inf) %i.vu) ; 3 uses
  %i.vw = fcmp fast ogt <8 x float> %i.vv, splat (float -1.000000e+00)
  %i.vx = fcmp fast ogt <8 x float> %i.uk, %i.vv
  %i.vy = and <8 x i1> %i.vw, %i.vx               ; 4 uses
  %i.vz = fmul fast <8 x float> %i.vv, %i.ud      ; 4 uses
  %i.wa = fadd fast <8 x float> %i.vz, %i.uv
  %i.wb = fmul fast <8 x float> %i.vs, %i.wa
  %i.wc = fadd fast <8 x float> %i.vz, %i.ux
  %i.wd = fmul fast <8 x float> %i.vs, %i.wc
  %i.we = fadd fast <8 x float> %i.vz, %i.uz
  %i.wf = fmul fast <8 x float> %i.vs, %i.we
  %i.wg = fadd fast <8 x float> %i.vz, %i.vb
  %i.wh = fmul fast <8 x float> %i.vs, %i.wg
  %i.wi = and <8 x i1> %i.ve, %i.vy
  %i.wj = select <8 x i1> %i.wi, <8 x float> %i.wb, <8 x float> splat (float -1.000000e+00)
  %i.wk = and <8 x i1> %i.vh, %i.vy
  %i.wl = select <8 x i1> %i.wk, <8 x float> %i.wd, <8 x float> splat (float -1.000000e+00)
  %i.wm = and <8 x i1> %i.vk, %i.vy
  %i.wn = select <8 x i1> %i.wm, <8 x float> %i.wf, <8 x float> splat (float -1.000000e+00)
  %i.wo = and <8 x i1> %i.vn, %i.vy
  %i.wp = select <8 x i1> %i.wo, <8 x float> %i.wh, <8 x float> splat (float -1.000000e+00)
  %i.wq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wj) ; 2 uses
  %i.wr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wl) ; 2 uses
  %i.ws = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wn) ; 2 uses
  %i.wt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wp) ; 2 uses
  %i.wu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.up, <8 x float> zeroinitializer)
  %i.wv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> nofpclass(nan inf) %i.wu) ; 3 uses
  %i.ww = fcmp fast ogt <8 x float> %i.wv, splat (float -1.000000e+00)
  %i.wx = fcmp fast ogt <8 x float> %i.uk, %i.wv
  %i.wy = and <8 x i1> %i.ww, %i.wx               ; 4 uses
  %i.wz = fmul fast <8 x float> %i.wv, %i.ud      ; 4 uses
  %i.xa = fadd fast <8 x float> %i.wz, %i.uv
  %i.xb = fmul fast <8 x float> %i.vs, %i.xa
  %i.xc = fadd fast <8 x float> %i.wz, %i.ux
  %i.xd = fmul fast <8 x float> %i.vs, %i.xc
  %i.xe = fadd fast <8 x float> %i.wz, %i.uz
  %i.xf = fmul fast <8 x float> %i.vs, %i.xe
  %i.xg = fadd fast <8 x float> %i.wz, %i.vb
  %i.xh = fmul fast <8 x float> %i.vs, %i.xg
  %i.xi = and <8 x i1> %i.ve, %i.wy
  %i.xj = select <8 x i1> %i.xi, <8 x float> %i.xb, <8 x float> splat (float -1.000000e+00)
  %i.xk = and <8 x i1> %i.vh, %i.wy
  %i.xl = select <8 x i1> %i.xk, <8 x float> %i.xd, <8 x float> splat (float -1.000000e+00)
  %i.xm = and <8 x i1> %i.vk, %i.wy
  %i.xn = select <8 x i1> %i.xm, <8 x float> %i.xf, <8 x float> splat (float -1.000000e+00)
  %i.xo = and <8 x i1> %i.vn, %i.wy
  %i.xp = select <8 x i1> %i.xo, <8 x float> %i.xh, <8 x float> splat (float -1.000000e+00)
  %i.xq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xj) ; 2 uses
  %i.xr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xl) ; 2 uses
  %i.xs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xn) ; 2 uses
  %i.xt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xp) ; 2 uses
  %i.xu = fadd fast <8 x float> %i.up, splat (float 1.000000e+00)
  %i.xv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xu, <8 x float> zeroinitializer)
  %i.xw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> nofpclass(nan inf) %i.xv) ; 3 uses
  %i.xx = fcmp fast ogt <8 x float> %i.xw, splat (float -1.000000e+00)
  %i.xy = fcmp fast ogt <8 x float> %i.uk, %i.xw
  %i.xz = and <8 x i1> %i.xx, %i.xy               ; 4 uses
  %i.ya = fmul fast <8 x float> %i.xw, %i.ud      ; 4 uses
  %i.yb = fadd fast <8 x float> %i.ya, %i.uv
  %i.yc = fmul fast <8 x float> %i.vs, %i.yb
  %i.yd = fadd fast <8 x float> %i.ya, %i.ux
  %i.ye = fmul fast <8 x float> %i.vs, %i.yd
  %i.yf = fadd fast <8 x float> %i.ya, %i.uz
  %i.yg = fmul fast <8 x float> %i.vs, %i.yf
  %i.yh = fadd fast <8 x float> %i.ya, %i.vb
  %i.yi = fmul fast <8 x float> %i.vs, %i.yh
  %i.yj = and <8 x i1> %i.ve, %i.xz
  %i.yk = select <8 x i1> %i.yj, <8 x float> %i.yc, <8 x float> splat (float -1.000000e+00)
  %i.yl = and <8 x i1> %i.vh, %i.xz
  %i.ym = select <8 x i1> %i.yl, <8 x float> %i.ye, <8 x float> splat (float -1.000000e+00)
  %i.yn = and <8 x i1> %i.vk, %i.xz
  %i.yo = select <8 x i1> %i.yn, <8 x float> %i.yg, <8 x float> splat (float -1.000000e+00)
  %i.yp = and <8 x i1> %i.vn, %i.xz
  %i.yq = select <8 x i1> %i.yp, <8 x float> %i.yi, <8 x float> splat (float -1.000000e+00)
  %i.yr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yk) ; 2 uses
  %i.ys = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ym) ; 2 uses
  %i.yt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yo) ; 2 uses
  %i.yu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yq) ; 2 uses
  %i.yv = fadd fast <8 x float> %i.up, splat (float 2.000000e+00)
  %i.yw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yv, <8 x float> zeroinitializer)
  %i.yx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.vo, <8 x float> nofpclass(nan inf) %i.yw) ; 3 uses
  %i.yy = fcmp fast ogt <8 x float> %i.yx, splat (float -1.000000e+00)
  %i.yz = fcmp fast ogt <8 x float> %i.uk, %i.yx
  %i.za = and <8 x i1> %i.yy, %i.yz               ; 4 uses
  %i.zb = fmul fast <8 x float> %i.yx, %i.ud      ; 4 uses
  %i.zc = fadd fast <8 x float> %i.zb, %i.uv
  %i.zd = fmul fast <8 x float> %i.vs, %i.zc
  %i.ze = fadd fast <8 x float> %i.zb, %i.ux
  %i.zf = fmul fast <8 x float> %i.vs, %i.ze
  %i.zg = fadd fast <8 x float> %i.zb, %i.uz
  %i.zh = fmul fast <8 x float> %i.vs, %i.zg
  %i.zi = fadd fast <8 x float> %i.zb, %i.vb
  %i.zj = fmul fast <8 x float> %i.vs, %i.zi
  %i.zk = and <8 x i1> %i.ve, %i.za
  %i.zl = select <8 x i1> %i.zk, <8 x float> %i.zd, <8 x float> splat (float -1.000000e+00)
  %i.zm = and <8 x i1> %i.vh, %i.za
  %i.zn = select <8 x i1> %i.zm, <8 x float> %i.zf, <8 x float> splat (float -1.000000e+00)
  %i.zo = and <8 x i1> %i.vk, %i.za
  %i.zp = select <8 x i1> %i.zo, <8 x float> %i.zh, <8 x float> splat (float -1.000000e+00)
  %i.zq = and <8 x i1> %i.vn, %i.za
  %i.zr = select <8 x i1> %i.zq, <8 x float> %i.zj, <8 x float> splat (float -1.000000e+00)
  %i.zs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zl) ; 2 uses
  %i.zt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zn) ; 2 uses
  %i.zu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zp) ; 2 uses
  %i.zv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zr) ; 2 uses
  %i.zw = fsub fast <8 x float> %i.ug, %i.uo      ; 2 uses
  %i.zx = fsub fast <8 x float> %i.un, %i.up      ; 2 uses
  %i.zy = shufflevector <8 x float> %i.zw, <8 x float> %i.zx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.zz = shufflevector <8 x float> %i.zw, <8 x float> %i.zx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aaa = shufflevector <8 x i32> %i.wq, <8 x i32> %i.wr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aab = bitcast <8 x i32> %i.aaa to <8 x float>
  %i.aac = shufflevector <8 x i32> %i.wq, <8 x i32> %i.wr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aad = bitcast <8 x i32> %i.aac to <8 x float>
  %i.aae = shufflevector <8 x i32> %i.ws, <8 x i32> %i.wt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aaf = shufflevector <8 x i32> %i.ws, <8 x i32> %i.wt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aag = shufflevector <8 x i32> %i.xq, <8 x i32> %i.xr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aah = shufflevector <8 x i32> %i.xq, <8 x i32> %i.xr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aai = shufflevector <8 x i32> %i.xs, <8 x i32> %i.xt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aaj = shufflevector <8 x i32> %i.xs, <8 x i32> %i.xt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aak = shufflevector <8 x i32> %i.yr, <8 x i32> %i.ys, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aal = shufflevector <8 x i32> %i.yr, <8 x i32> %i.ys, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aam = shufflevector <8 x i32> %i.yt, <8 x i32> %i.yu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aan = shufflevector <8 x i32> %i.yt, <8 x i32> %i.yu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aao = shufflevector <8 x i32> %i.zs, <8 x i32> %i.zt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aap = shufflevector <8 x i32> %i.zs, <8 x i32> %i.zt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aaq = shufflevector <8 x i32> %i.zu, <8 x i32> %i.zv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aar = bitcast <8 x i32> %i.aaq to <8 x float>
  %i.aas = shufflevector <8 x i32> %i.zu, <8 x i32> %i.zv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aat = bitcast <8 x i32> %i.aas to <8 x float>
  %i.aau = shufflevector <8 x float> %i.zy, <8 x float> %i.aab, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aav = shufflevector <8 x i32> %i.aae, <8 x i32> %i.aag, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.aaw = bitcast <8 x i32> %i.aav to <8 x float> ; 2 uses
  %i.aax = shufflevector <8 x i32> %i.aai, <8 x i32> %i.aak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aay = shufflevector <8 x i32> %i.aam, <8 x i32> %i.aao, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aaz = shufflevector <8 x float> %i.aar, <8 x float> %i.zy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.aba = shufflevector <8 x i32> %i.aaa, <8 x i32> %i.aae, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.abb = bitcast <8 x i32> %i.aba to <8 x float> ; 2 uses
  %i.abc = shufflevector <8 x i32> %i.aag, <8 x i32> %i.aai, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abd = shufflevector <8 x i32> %i.aak, <8 x i32> %i.aam, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abe = shufflevector <8 x i32> %i.aao, <8 x i32> %i.aaq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.abf = bitcast <8 x i32> %i.abe to <8 x float> ; 2 uses
  %i.abg = shufflevector <8 x float> %i.zz, <8 x float> %i.aad, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abh = shufflevector <8 x i32> %i.aaf, <8 x i32> %i.aah, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abi = shufflevector <8 x i32> %i.aaj, <8 x i32> %i.aal, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abj = shufflevector <8 x i32> %i.aan, <8 x i32> %i.aap, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.abk = bitcast <8 x i32> %i.abj to <8 x float> ; 2 uses
  %i.abl = shufflevector <8 x float> %i.aat, <8 x float> %i.zz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.abm = shufflevector <8 x i32> %i.aac, <8 x i32> %i.aaf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abn = shufflevector <8 x i32> %i.aah, <8 x i32> %i.aaj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abo = shufflevector <8 x i32> %i.aal, <8 x i32> %i.aan, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abp = shufflevector <8 x i32> %i.aap, <8 x i32> %i.aas, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abq = shufflevector <8 x float> %i.aau, <8 x float> %i.aaw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abr = shufflevector <8 x i32> %i.aax, <8 x i32> %i.aay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abs = shufflevector <8 x float> %i.aaz, <8 x float> %i.abb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abt = shufflevector <8 x i32> %i.abc, <8 x i32> %i.abd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abu = shufflevector <8 x float> %i.abf, <8 x float> %i.abg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abv = shufflevector <8 x i32> %i.abh, <8 x i32> %i.abi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abw = shufflevector <8 x float> %i.abk, <8 x float> %i.abl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abx = shufflevector <8 x i32> %i.abm, <8 x i32> %i.abn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aby = shufflevector <8 x i32> %i.abo, <8 x i32> %i.abp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abz = shufflevector <8 x float> %i.aau, <8 x float> %i.aaw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aca = shufflevector <8 x i32> %i.aax, <8 x i32> %i.aay, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.acb = shufflevector <8 x float> %i.aaz, <8 x float> %i.abb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.acc = shufflevector <8 x i32> %i.abc, <8 x i32> %i.abd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.acd = shufflevector <8 x float> %i.abf, <8 x float> %i.abg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_14
begin_hunk_15_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.qa = icmp sgt <8 x i32> %i.px, splat (i32 -1)
  %i.qb = icmp sgt <8 x i32> %broadcast.splat1384, %i.px
  %i.qc = and <8 x i1> %i.qa, %i.qb               ; 3 uses
  %i.qd = and <8 x i1> %i.mj, %i.qc               ; 2 uses
  %i.qe = and <8 x i1> %i.mp, %i.qc               ; 2 uses
  %i.qf = and <8 x i1> %i.ms, %i.qc
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1210, <8 x i1> %i.nh), !tbaa !23, !alias.scope !687, !noalias !688
  %i.qg = select <8 x i1> %i.nh, <8 x i1> %i.qd, <8 x i1> zeroinitializer
  %i.qh = add nsw <8 x i32> %i.pz, %i.lr
  %wide.masked.gather1213 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qg, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.qi = mul nsw <8 x i32> %wide.masked.gather1213, %i.qh
  %predphi1214 = select <8 x i1> %i.qd, <8 x i32> %i.qi, <8 x i32> splat (i32 -1)
  %wide.gep1215 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1170, i64 60 ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1214, <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.nh), !tbaa !23, !alias.scope !687, !noalias !688
  %i.qj = select <8 x i1> %i.nh, <8 x i1> %i.qe, <8 x i1> zeroinitializer
  %i.qk = add nsw <8 x i32> %i.pz, %i.mb
  %wide.masked.gather1216 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qj, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.ql = mul nsw <8 x i32> %wide.masked.gather1216, %i.qk
  %predphi1217 = select <8 x i1> %i.qe, <8 x i32> %i.ql, <8 x i32> splat (i32 -1)
  %wide.gep1218 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1170, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1217, <8 x ptr> align 4 %wide.gep1218, <8 x i1> %i.nh), !tbaa !23, !alias.scope !687, !noalias !688
  %i.qm = select <8 x i1> %i.nh, <8 x i1> %i.qf, <8 x i1> zeroinitializer ; 2 uses
  %i.qn = add nsw <8 x i32> %i.pz, %i.mg
  %wide.masked.gather1219 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qm, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.qo = mul nsw <8 x i32> %wide.masked.gather1219, %i.qn
  %i.qp = xor <8 x i1> %i.nd, splat (i1 true)
  %i.qq = select <8 x i1> %i.mt, <8 x i1> %i.qp, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1176, <8 x i1> %i.qq), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1179, <8 x i1> %i.qq), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1182, <8 x i1> %i.qq), !tbaa !23, !alias.scope !687, !noalias !688
  %i.qr = select <8 x i1> %i.mt, <8 x i1> %i.nd, <8 x i1> zeroinitializer ; 7 uses
  %i.qs = add nsw <8 x i32> %i.na, %i.lw
  %wide.masked.gather1220 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qr, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.qt = mul nsw <8 x i32> %wide.masked.gather1220, %i.qs
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.qt, <8 x ptr> align 4 %wide.gep1176, <8 x i1> %i.qr), !tbaa !23, !alias.scope !687, !noalias !688
  %i.qu = select <8 x i1> %i.qr, <8 x i1> %i.ne, <8 x i1> zeroinitializer
  %wide.masked.gather1221 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qu, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.qv = mul nsw <8 x i32> %wide.masked.gather1221, %i.nj
  %predphi1222 = select <8 x i1> %i.ne, <8 x i32> %i.qv, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1222, <8 x ptr> align 4 %wide.gep1179, <8 x i1> %i.qr), !tbaa !23, !alias.scope !687, !noalias !688
  %i.qw = select <8 x i1> %i.qr, <8 x i1> %i.nf, <8 x i1> zeroinitializer
  %wide.masked.gather1223 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qw, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.qx = mul nsw <8 x i32> %wide.masked.gather1223, %i.nm
  %predphi1224 = select <8 x i1> %i.nf, <8 x i32> %i.qx, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1224, <8 x ptr> align 4 %wide.gep1182, <8 x i1> %i.qr), !tbaa !23, !alias.scope !687, !noalias !688
  %i.qy = select <8 x i1> %i.qr, <8 x i1> %i.ng, <8 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather1225 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.qy, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.qz = mul nsw <8 x i32> %wide.masked.gather1225, %i.np
  %predphi1226 = select <8 x i1> %i.qy, <8 x i32> %i.qz, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1226, <8 x ptr> align 4 %wide.gep1185, <8 x i1> %i.mt), !tbaa !23, !alias.scope !687, !noalias !688
  %i.ra = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1390 = shufflevector <1 x i32> %i.ra, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rb = sitofp fast <8 x i32> %broadcast.splat1390 to <8 x float>
  %i.rc = fadd fast <8 x float> %i.rb, splat (float -1.000000e+00)
  %i.rd = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.nv, <8 x float> %i.rc)
  %i.re = fptosi <8 x float> %i.rd to <8 x i32>   ; 3 uses
  %i.rf = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1393 = shufflevector <1 x i32> %i.rf, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.rg = mul nsw <8 x i32> %broadcast.splat1393, %i.re ; 4 uses
  %i.rh = icmp sgt <8 x i32> %i.re, splat (i32 -1)
  %i.ri = icmp sgt <8 x i32> %broadcast.splat1390, %i.re
  %i.rj = and <8 x i1> %i.rh, %i.ri               ; 4 uses
  %i.rk = and <8 x i1> %i.mp, %i.rj               ; 2 uses
  %i.rl = and <8 x i1> %i.ms, %i.rj
  %i.rm = xor <8 x i1> %i.rj, splat (i1 true)
  %i.rn = select <8 x i1> %i.mt, <8 x i1> %i.rm, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1186, <8 x i1> %i.rn), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1191, <8 x i1> %i.rn), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1194, <8 x i1> %i.rn), !tbaa !23, !alias.scope !687, !noalias !688
  %i.ro = select <8 x i1> %i.mt, <8 x i1> %i.rj, <8 x i1> zeroinitializer ; 7 uses
  %i.rp = add nsw <8 x i32> %i.rg, %i.lw
  %wide.masked.gather1229 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.ro, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.rq = mul nsw <8 x i32> %wide.masked.gather1229, %i.rp
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.rq, <8 x ptr> align 4 %wide.gep1186, <8 x i1> %i.ro), !tbaa !23, !alias.scope !687, !noalias !688
  %i.rr = select <8 x i1> %i.ro, <8 x i1> %i.mj, <8 x i1> zeroinitializer
  %i.rs = add nsw <8 x i32> %i.rg, %i.lr
  %wide.masked.gather1230 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.rr, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.rt = mul nsw <8 x i32> %wide.masked.gather1230, %i.rs
  %predphi1231 = select <8 x i1> %i.mj, <8 x i32> %i.rt, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1231, <8 x ptr> align 4 %wide.gep1191, <8 x i1> %i.ro), !tbaa !23, !alias.scope !687, !noalias !688
  %i.ru = select <8 x i1> %i.ro, <8 x i1> %i.rk, <8 x i1> zeroinitializer
  %i.rv = add nsw <8 x i32> %i.rg, %i.mb
  %wide.masked.gather1232 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.ru, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.rw = mul nsw <8 x i32> %wide.masked.gather1232, %i.rv
  %predphi1233 = select <8 x i1> %i.rk, <8 x i32> %i.rw, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1233, <8 x ptr> align 4 %wide.gep1194, <8 x i1> %i.ro), !tbaa !23, !alias.scope !687, !noalias !688
  %i.rx = select <8 x i1> %i.ro, <8 x i1> %i.rl, <8 x i1> zeroinitializer ; 2 uses
  %i.ry = add nsw <8 x i32> %i.rg, %i.mg
  %wide.masked.gather1234 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.rx, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.rz = mul nsw <8 x i32> %wide.masked.gather1234, %i.ry
  %predphi1235 = select <8 x i1> %i.rx, <8 x i32> %i.rz, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1235, <8 x ptr> align 4 %wide.gep1197, <8 x i1> %i.mt), !tbaa !23, !alias.scope !687, !noalias !688
  %i.sa = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1396 = shufflevector <1 x i32> %i.sa, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.sb = sitofp fast <8 x i32> %broadcast.splat1396 to <8 x float>
  %i.sc = fadd fast <8 x float> %i.sb, splat (float -1.000000e+00)
  %i.sd = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ov, <8 x float> %i.sc)
  %i.se = fptosi <8 x float> %i.sd to <8 x i32>   ; 3 uses
  %i.sf = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1399 = shufflevector <1 x i32> %i.sf, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.sg = mul nsw <8 x i32> %broadcast.splat1399, %i.se ; 4 uses
  %i.sh = icmp sgt <8 x i32> %i.se, splat (i32 -1)
  %i.si = icmp sgt <8 x i32> %broadcast.splat1396, %i.se
  %i.sj = and <8 x i1> %i.sh, %i.si               ; 4 uses
  %i.sk = and <8 x i1> %i.mp, %i.sj               ; 2 uses
  %i.sl = and <8 x i1> %i.ms, %i.sj
  %i.sm = xor <8 x i1> %i.sj, splat (i1 true)
  %i.sn = select <8 x i1> %i.mt, <8 x i1> %i.sm, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1198, <8 x i1> %i.sn), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1203, <8 x i1> %i.sn), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1206, <8 x i1> %i.sn), !tbaa !23, !alias.scope !687, !noalias !688
  %i.so = select <8 x i1> %i.mt, <8 x i1> %i.sj, <8 x i1> zeroinitializer ; 7 uses
  %i.sp = add nsw <8 x i32> %i.sg, %i.lw
  %wide.masked.gather1238 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.so, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.sq = mul nsw <8 x i32> %wide.masked.gather1238, %i.sp
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.sq, <8 x ptr> align 4 %wide.gep1198, <8 x i1> %i.so), !tbaa !23, !alias.scope !687, !noalias !688
  %i.sr = select <8 x i1> %i.so, <8 x i1> %i.mj, <8 x i1> zeroinitializer
  %i.ss = add nsw <8 x i32> %i.sg, %i.lr
  %wide.masked.gather1239 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.sr, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.st = mul nsw <8 x i32> %wide.masked.gather1239, %i.ss
  %predphi1240 = select <8 x i1> %i.mj, <8 x i32> %i.st, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1240, <8 x ptr> align 4 %wide.gep1203, <8 x i1> %i.so), !tbaa !23, !alias.scope !687, !noalias !688
  %i.su = select <8 x i1> %i.so, <8 x i1> %i.sk, <8 x i1> zeroinitializer
  %i.sv = add nsw <8 x i32> %i.sg, %i.mb
  %wide.masked.gather1241 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.su, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.sw = mul nsw <8 x i32> %wide.masked.gather1241, %i.sv
  %predphi1242 = select <8 x i1> %i.sk, <8 x i32> %i.sw, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1242, <8 x ptr> align 4 %wide.gep1206, <8 x i1> %i.so), !tbaa !23, !alias.scope !687, !noalias !688
  %i.sx = select <8 x i1> %i.so, <8 x i1> %i.sl, <8 x i1> zeroinitializer ; 2 uses
  %i.sy = add nsw <8 x i32> %i.sg, %i.mg
  %wide.masked.gather1243 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.sx, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.sz = mul nsw <8 x i32> %wide.masked.gather1243, %i.sy
  %predphi1244 = select <8 x i1> %i.sx, <8 x i32> %i.sz, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1244, <8 x ptr> align 4 %wide.gep1209, <8 x i1> %i.mt), !tbaa !23, !alias.scope !687, !noalias !688
  %i.ta = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1402 = shufflevector <1 x i32> %i.ta, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.tb = sitofp fast <8 x i32> %broadcast.splat1402 to <8 x float>
  %i.tc = fadd fast <8 x float> %i.tb, splat (float -1.000000e+00)
  %i.td = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pv, <8 x float> %i.tc)
  %i.te = fptosi <8 x float> %i.td to <8 x i32>   ; 3 uses
  %i.tf = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1405 = shufflevector <1 x i32> %i.tf, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.tg = mul nsw <8 x i32> %broadcast.splat1405, %i.te ; 4 uses
  %i.th = icmp sgt <8 x i32> %i.te, splat (i32 -1)
  %i.ti = icmp sgt <8 x i32> %broadcast.splat1402, %i.te
  %i.tj = and <8 x i1> %i.th, %i.ti               ; 4 uses
  %i.tk = and <8 x i1> %i.mp, %i.tj               ; 2 uses
  %i.tl = and <8 x i1> %i.ms, %i.tj
  %i.tm = xor <8 x i1> %i.tj, splat (i1 true)
  %i.tn = select <8 x i1> %i.mt, <8 x i1> %i.tm, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1210, <8 x i1> %i.tn), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.tn), !tbaa !23, !alias.scope !687, !noalias !688
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1218, <8 x i1> %i.tn), !tbaa !23, !alias.scope !687, !noalias !688
  %i.to = select <8 x i1> %i.mt, <8 x i1> %i.tj, <8 x i1> zeroinitializer ; 7 uses
  %i.tp = add nsw <8 x i32> %i.tg, %i.lw
  %wide.masked.gather1247 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.to, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.tq = mul nsw <8 x i32> %wide.masked.gather1247, %i.tp
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.tq, <8 x ptr> align 4 %wide.gep1210, <8 x i1> %i.to), !tbaa !23, !alias.scope !687, !noalias !688
  %i.tr = select <8 x i1> %i.to, <8 x i1> %i.mj, <8 x i1> zeroinitializer
  %i.ts = add nsw <8 x i32> %i.tg, %i.lr
  %wide.masked.gather1248 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.tr, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.tt = mul nsw <8 x i32> %wide.masked.gather1248, %i.ts
  %predphi1249 = select <8 x i1> %i.mj, <8 x i32> %i.tt, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1249, <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.to), !tbaa !23, !alias.scope !687, !noalias !688
  %i.tu = select <8 x i1> %i.to, <8 x i1> %i.tk, <8 x i1> zeroinitializer
  %i.tv = add nsw <8 x i32> %i.tg, %i.mb
  %wide.masked.gather1250 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.tu, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.tw = mul nsw <8 x i32> %wide.masked.gather1250, %i.tv
  %predphi1251 = select <8 x i1> %i.tk, <8 x i32> %i.tw, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1251, <8 x ptr> align 4 %wide.gep1218, <8 x i1> %i.to), !tbaa !23, !alias.scope !687, !noalias !688
  %i.tx = select <8 x i1> %i.to, <8 x i1> %i.tl, <8 x i1> zeroinitializer ; 2 uses
  %i.ty = add nsw <8 x i32> %i.tg, %i.mg
  %wide.masked.gather1252 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1166, <8 x i1> %i.tx, <8 x i32> poison), !tbaa !16, !alias.scope !689
  %i.tz = mul nsw <8 x i32> %wide.masked.gather1252, %i.ty
  %predphi1253 = select <8 x i1> %i.qm, <8 x i32> %i.qo, <8 x i32> splat (i32 -1)
  %predphi1254 = select <8 x i1> %i.tx, <8 x i32> %i.tz, <8 x i32> %predphi1253
  %wide.gep1255 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1170, i64 68
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1254, <8 x ptr> align 4 %wide.gep1255, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !687, !noalias !688
  %index.next1256 = add nuw i64 %index1168, 8     ; 2 uses
  %ptr.ind1257 = getelementptr i8, ptr %pointer.phi1169, i64 576
  %i.ua = icmp eq i64 %index.next1256, %n.vec1156
  br i1 %i.ua, label %vec.epilog.middle.block1258, label %vec.epilog.vector.body1167, !llvm.loop !667

vec.epilog.middle.block1258:                      ; preds = %vec.epilog.vector.body1167
  %cmp.n1259 = icmp eq i64 %n.vec1156, %i.ab
  br i1 %cmp.n1259, label %._crit_edge, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %iter.check1149, %vector.memcheck1031, %vec.epilog.iter.check1150, %vec.epilog.middle.block1258
  %.3552.ph = phi ptr [ %.1.lcssa, %iter.check1149 ], [ %.1.lcssa, %vector.memcheck1031 ], [ %i.ak, %vec.epilog.iter.check1150 ], [ %i.kg, %vec.epilog.middle.block1258 ]
  %.1394551.ph = phi i32 [ %.0393.lcssa, %iter.check1149 ], [ %.0393.lcssa, %vector.memcheck1031 ], [ %i.an, %vec.epilog.iter.check1150 ], [ %i.kj, %vec.epilog.middle.block1258 ]
  %.1396550.ph = phi ptr [ %.0395.lcssa, %iter.check1149 ], [ %.0395.lcssa, %vector.memcheck1031 ], [ %i.ap, %vec.epilog.iter.check1150 ], [ %i.kl, %vec.epilog.middle.block1258 ]
  br label %.lr.ph553

.lr.ph540:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph540
  %.1539 = phi ptr [ %i.add, %.lr.ph540 ], [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393538 = phi i32 [ %i.adf, %.lr.ph540 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395537 = phi ptr [ %i.ade, %.lr.ph540 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.ub = load <8 x float>, ptr %.0395537, align 1, !tbaa !41 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.0395537, i64 32
  %i.ud = load <8 x float>, ptr %i.uc, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.ub, <8 x float> %i.ud, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.ub, <8 x float> %i.ud, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ue = load i32, ptr %i.n, align 4, !tbaa !37
  %i.uf = sitofp fast i32 %i.ue to float
  %i.ug = insertelement <8 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <8 x float> %i.ug, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.ui = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.uj = fadd fast <8 x float> %i.ui, splat (float 5.000000e-01)
  %i.uk = fadd fast <8 x float> %i.uh, splat (float -1.000000e+00) ; 5 uses
  %i.ul = fmul fast <8 x float> %i.uk, %i.uj      ; 2 uses
  %i.um = load i32, ptr %i.o, align 8, !tbaa !38
  %i.un = sitofp fast i32 %i.um to float
  %i.uo = insertelement <8 x float> poison, float %i.un, i64 0
  %i.up = shufflevector <8 x float> %i.uo, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.uq = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.ur = fadd fast <8 x float> %i.uq, splat (float 5.000000e-01)
  %i.us = fadd fast <8 x float> %i.up, splat (float -1.000000e+00) ; 5 uses
  %i.ut = fmul fast <8 x float> %i.us, %i.ur      ; 2 uses
  %i.uu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ul, i32 1) ; 5 uses
  %i.uv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ut, i32 1) ; 5 uses
  %i.uw = fadd fast <8 x float> %i.uu, splat (float -1.000000e+00)
  %i.ux = fadd fast <8 x float> %i.uu, splat (float 1.000000e+00)
  %i.uy = fadd fast <8 x float> %i.uu, splat (float 2.000000e+00)
  %i.uz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uw, <8 x float> zeroinitializer)
  %i.va = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.uk, <8 x float> nofpclass(nan inf) %i.uz) ; 6 uses
  %i.vb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uu, <8 x float> zeroinitializer)
  %i.vc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.uk, <8 x float> nofpclass(nan inf) %i.vb) ; 6 uses
  %i.vd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ux, <8 x float> zeroinitializer)
  %i.ve = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.uk, <8 x float> nofpclass(nan inf) %i.vd) ; 6 uses
  %i.vf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uy, <8 x float> zeroinitializer)
  %i.vg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.uk, <8 x float> nofpclass(nan inf) %i.vf) ; 6 uses
  %i.vh = fcmp fast ogt <8 x float> %i.va, splat (float -1.000000e+00)
  %i.vi = fcmp fast ogt <8 x float> %i.uh, %i.va
  %i.vj = and <8 x i1> %i.vh, %i.vi               ; 4 uses
  %i.vk = fcmp fast ogt <8 x float> %i.vc, splat (float -1.000000e+00)
  %i.vl = fcmp fast ogt <8 x float> %i.uh, %i.vc
  %i.vm = and <8 x i1> %i.vk, %i.vl               ; 4 uses
  %i.vn = fcmp fast ogt <8 x float> %i.ve, splat (float -1.000000e+00)
  %i.vo = fcmp fast ogt <8 x float> %i.uh, %i.ve
  %i.vp = and <8 x i1> %i.vn, %i.vo               ; 4 uses
  %i.vq = fcmp fast ogt <8 x float> %i.vg, splat (float -1.000000e+00)
  %i.vr = fcmp fast ogt <8 x float> %i.uh, %i.vg
  %i.vs = and <8 x i1> %i.vq, %i.vr               ; 4 uses
  %i.vt = load i32, ptr %i.p, align 8, !tbaa !16
  %i.vu = sitofp fast i32 %i.vt to float
  %i.vv = insertelement <8 x float> poison, float %i.vu, i64 0
  %i.vw = shufflevector <8 x float> %i.vv, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.vx = fadd fast <8 x float> %i.uv, splat (float -1.000000e+00)
  %i.vy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vx, <8 x float> zeroinitializer)
  %i.vz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.us, <8 x float> nofpclass(nan inf) %i.vy) ; 3 uses
  %i.wa = fcmp fast ogt <8 x float> %i.vz, splat (float -1.000000e+00)
  %i.wb = fcmp fast ogt <8 x float> %i.up, %i.vz
  %i.wc = and <8 x i1> %i.wa, %i.wb               ; 4 uses
  %i.wd = fmul fast <8 x float> %i.vz, %i.uh      ; 4 uses
  %i.we = fadd fast <8 x float> %i.wd, %i.va
  %i.wf = fmul fast <8 x float> %i.vw, %i.we
  %i.wg = fadd fast <8 x float> %i.wd, %i.vc
  %i.wh = fmul fast <8 x float> %i.vw, %i.wg
  %i.wi = fadd fast <8 x float> %i.wd, %i.ve
  %i.wj = fmul fast <8 x float> %i.vw, %i.wi
  %i.wk = fadd fast <8 x float> %i.wd, %i.vg
  %i.wl = fmul fast <8 x float> %i.vw, %i.wk
  %i.wm = and <8 x i1> %i.vj, %i.wc
  %i.wn = select <8 x i1> %i.wm, <8 x float> %i.wf, <8 x float> splat (float -1.000000e+00)
  %i.wo = and <8 x i1> %i.vm, %i.wc
  %i.wp = select <8 x i1> %i.wo, <8 x float> %i.wh, <8 x float> splat (float -1.000000e+00)
  %i.wq = and <8 x i1> %i.vp, %i.wc
  %i.wr = select <8 x i1> %i.wq, <8 x float> %i.wj, <8 x float> splat (float -1.000000e+00)
  %i.ws = and <8 x i1> %i.vs, %i.wc
  %i.wt = select <8 x i1> %i.ws, <8 x float> %i.wl, <8 x float> splat (float -1.000000e+00)
  %i.wu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wn) ; 2 uses
  %i.wv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wp) ; 2 uses
  %i.ww = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wr) ; 2 uses
  %i.wx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wt) ; 2 uses
  %i.wy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uv, <8 x float> zeroinitializer)
  %i.wz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.us, <8 x float> nofpclass(nan inf) %i.wy) ; 3 uses
  %i.xa = fcmp fast ogt <8 x float> %i.wz, splat (float -1.000000e+00)
  %i.xb = fcmp fast ogt <8 x float> %i.up, %i.wz
  %i.xc = and <8 x i1> %i.xa, %i.xb               ; 4 uses
  %i.xd = fmul fast <8 x float> %i.wz, %i.uh      ; 4 uses
  %i.xe = fadd fast <8 x float> %i.xd, %i.va
  %i.xf = fmul fast <8 x float> %i.vw, %i.xe
  %i.xg = fadd fast <8 x float> %i.xd, %i.vc
  %i.xh = fmul fast <8 x float> %i.vw, %i.xg
  %i.xi = fadd fast <8 x float> %i.xd, %i.ve
  %i.xj = fmul fast <8 x float> %i.vw, %i.xi
  %i.xk = fadd fast <8 x float> %i.xd, %i.vg
  %i.xl = fmul fast <8 x float> %i.vw, %i.xk
  %i.xm = and <8 x i1> %i.vj, %i.xc
  %i.xn = select <8 x i1> %i.xm, <8 x float> %i.xf, <8 x float> splat (float -1.000000e+00)
  %i.xo = and <8 x i1> %i.vm, %i.xc
  %i.xp = select <8 x i1> %i.xo, <8 x float> %i.xh, <8 x float> splat (float -1.000000e+00)
  %i.xq = and <8 x i1> %i.vp, %i.xc
  %i.xr = select <8 x i1> %i.xq, <8 x float> %i.xj, <8 x float> splat (float -1.000000e+00)
  %i.xs = and <8 x i1> %i.vs, %i.xc
  %i.xt = select <8 x i1> %i.xs, <8 x float> %i.xl, <8 x float> splat (float -1.000000e+00)
  %i.xu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xn) ; 2 uses
  %i.xv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xp) ; 2 uses
  %i.xw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xr) ; 2 uses
  %i.xx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xt) ; 2 uses
  %i.xy = fadd fast <8 x float> %i.uv, splat (float 1.000000e+00)
  %i.xz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xy, <8 x float> zeroinitializer)
  %i.ya = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.us, <8 x float> nofpclass(nan inf) %i.xz) ; 3 uses
  %i.yb = fcmp fast ogt <8 x float> %i.ya, splat (float -1.000000e+00)
  %i.yc = fcmp fast ogt <8 x float> %i.up, %i.ya
  %i.yd = and <8 x i1> %i.yb, %i.yc               ; 4 uses
  %i.ye = fmul fast <8 x float> %i.ya, %i.uh      ; 4 uses
  %i.yf = fadd fast <8 x float> %i.ye, %i.va
  %i.yg = fmul fast <8 x float> %i.vw, %i.yf
  %i.yh = fadd fast <8 x float> %i.ye, %i.vc
  %i.yi = fmul fast <8 x float> %i.vw, %i.yh
  %i.yj = fadd fast <8 x float> %i.ye, %i.ve
  %i.yk = fmul fast <8 x float> %i.vw, %i.yj
  %i.yl = fadd fast <8 x float> %i.ye, %i.vg
  %i.ym = fmul fast <8 x float> %i.vw, %i.yl
  %i.yn = and <8 x i1> %i.vj, %i.yd
  %i.yo = select <8 x i1> %i.yn, <8 x float> %i.yg, <8 x float> splat (float -1.000000e+00)
  %i.yp = and <8 x i1> %i.vm, %i.yd
  %i.yq = select <8 x i1> %i.yp, <8 x float> %i.yi, <8 x float> splat (float -1.000000e+00)
  %i.yr = and <8 x i1> %i.vp, %i.yd
  %i.ys = select <8 x i1> %i.yr, <8 x float> %i.yk, <8 x float> splat (float -1.000000e+00)
  %i.yt = and <8 x i1> %i.vs, %i.yd
  %i.yu = select <8 x i1> %i.yt, <8 x float> %i.ym, <8 x float> splat (float -1.000000e+00)
  %i.yv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yo) ; 2 uses
  %i.yw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yq) ; 2 uses
  %i.yx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ys) ; 2 uses
  %i.yy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yu) ; 2 uses
  %i.yz = fadd fast <8 x float> %i.uv, splat (float 2.000000e+00)
  %i.za = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yz, <8 x float> zeroinitializer)
  %i.zb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.us, <8 x float> nofpclass(nan inf) %i.za) ; 3 uses
  %i.zc = fcmp fast ogt <8 x float> %i.zb, splat (float -1.000000e+00)
  %i.zd = fcmp fast ogt <8 x float> %i.up, %i.zb
  %i.ze = and <8 x i1> %i.zc, %i.zd               ; 4 uses
  %i.zf = fmul fast <8 x float> %i.zb, %i.uh      ; 4 uses
  %i.zg = fadd fast <8 x float> %i.zf, %i.va
  %i.zh = fmul fast <8 x float> %i.vw, %i.zg
  %i.zi = fadd fast <8 x float> %i.zf, %i.vc
  %i.zj = fmul fast <8 x float> %i.vw, %i.zi
  %i.zk = fadd fast <8 x float> %i.zf, %i.ve
  %i.zl = fmul fast <8 x float> %i.vw, %i.zk
  %i.zm = fadd fast <8 x float> %i.zf, %i.vg
  %i.zn = fmul fast <8 x float> %i.vw, %i.zm
  %i.zo = and <8 x i1> %i.vj, %i.ze
  %i.zp = select <8 x i1> %i.zo, <8 x float> %i.zh, <8 x float> splat (float -1.000000e+00)
  %i.zq = and <8 x i1> %i.vm, %i.ze
  %i.zr = select <8 x i1> %i.zq, <8 x float> %i.zj, <8 x float> splat (float -1.000000e+00)
  %i.zs = and <8 x i1> %i.vp, %i.ze
  %i.zt = select <8 x i1> %i.zs, <8 x float> %i.zl, <8 x float> splat (float -1.000000e+00)
  %i.zu = and <8 x i1> %i.vs, %i.ze
  %i.zv = select <8 x i1> %i.zu, <8 x float> %i.zn, <8 x float> splat (float -1.000000e+00)
  %i.zw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zp) ; 2 uses
  %i.zx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zr) ; 2 uses
  %i.zy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zt) ; 2 uses
  %i.zz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zv) ; 2 uses
  %i.aaa = fsub fast <8 x float> %i.ul, %i.uu     ; 2 uses
  %i.aab = fsub fast <8 x float> %i.ut, %i.uv     ; 2 uses
  %i.aac = shufflevector <8 x float> %i.aaa, <8 x float> %i.aab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aad = shufflevector <8 x float> %i.aaa, <8 x float> %i.aab, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aae = shufflevector <8 x i32> %i.wu, <8 x i32> %i.wv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aaf = bitcast <8 x i32> %i.aae to <8 x float>
  %i.aag = shufflevector <8 x i32> %i.wu, <8 x i32> %i.wv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aah = bitcast <8 x i32> %i.aag to <8 x float>
  %i.aai = shufflevector <8 x i32> %i.ww, <8 x i32> %i.wx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aaj = shufflevector <8 x i32> %i.ww, <8 x i32> %i.wx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aak = shufflevector <8 x i32> %i.xu, <8 x i32> %i.xv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aal = shufflevector <8 x i32> %i.xu, <8 x i32> %i.xv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aam = shufflevector <8 x i32> %i.xw, <8 x i32> %i.xx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aan = shufflevector <8 x i32> %i.xw, <8 x i32> %i.xx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aao = shufflevector <8 x i32> %i.yv, <8 x i32> %i.yw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aap = shufflevector <8 x i32> %i.yv, <8 x i32> %i.yw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aaq = shufflevector <8 x i32> %i.yx, <8 x i32> %i.yy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aar = shufflevector <8 x i32> %i.yx, <8 x i32> %i.yy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aas = shufflevector <8 x i32> %i.zw, <8 x i32> %i.zx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aat = shufflevector <8 x i32> %i.zw, <8 x i32> %i.zx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aau = shufflevector <8 x i32> %i.zy, <8 x i32> %i.zz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aav = bitcast <8 x i32> %i.aau to <8 x float>
  %i.aaw = shufflevector <8 x i32> %i.zy, <8 x i32> %i.zz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aax = bitcast <8 x i32> %i.aaw to <8 x float>
  %i.aay = shufflevector <8 x float> %i.aac, <8 x float> %i.aaf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aaz = shufflevector <8 x i32> %i.aai, <8 x i32> %i.aak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.aba = bitcast <8 x i32> %i.aaz to <8 x float> ; 2 uses
  %i.abb = shufflevector <8 x i32> %i.aam, <8 x i32> %i.aao, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abc = shufflevector <8 x i32> %i.aaq, <8 x i32> %i.aas, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abd = shufflevector <8 x float> %i.aav, <8 x float> %i.aac, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.abe = shufflevector <8 x i32> %i.aae, <8 x i32> %i.aai, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.abf = bitcast <8 x i32> %i.abe to <8 x float> ; 2 uses
  %i.abg = shufflevector <8 x i32> %i.aak, <8 x i32> %i.aam, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abh = shufflevector <8 x i32> %i.aao, <8 x i32> %i.aaq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abi = shufflevector <8 x i32> %i.aas, <8 x i32> %i.aau, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.abj = bitcast <8 x i32> %i.abi to <8 x float> ; 2 uses
  %i.abk = shufflevector <8 x float> %i.aad, <8 x float> %i.aah, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abl = shufflevector <8 x i32> %i.aaj, <8 x i32> %i.aal, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abm = shufflevector <8 x i32> %i.aan, <8 x i32> %i.aap, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.abn = shufflevector <8 x i32> %i.aar, <8 x i32> %i.aat, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.abo = bitcast <8 x i32> %i.abn to <8 x float> ; 2 uses
  %i.abp = shufflevector <8 x float> %i.aax, <8 x float> %i.aad, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.abq = shufflevector <8 x i32> %i.aag, <8 x i32> %i.aaj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abr = shufflevector <8 x i32> %i.aal, <8 x i32> %i.aan, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abs = shufflevector <8 x i32> %i.aap, <8 x i32> %i.aar, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abt = shufflevector <8 x i32> %i.aat, <8 x i32> %i.aaw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.abu = shufflevector <8 x float> %i.aay, <8 x float> %i.aba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abv = shufflevector <8 x i32> %i.abb, <8 x i32> %i.abc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abw = shufflevector <8 x float> %i.abd, <8 x float> %i.abf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abx = shufflevector <8 x i32> %i.abg, <8 x i32> %i.abh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aby = shufflevector <8 x float> %i.abj, <8 x float> %i.abk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abz = shufflevector <8 x i32> %i.abl, <8 x i32> %i.abm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aca = shufflevector <8 x float> %i.abo, <8 x float> %i.abp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.acb = shufflevector <8 x i32> %i.abq, <8 x i32> %i.abr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.acc = shufflevector <8 x i32> %i.abs, <8 x i32> %i.abt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.acd = shufflevector <8 x float> %i.aay, <8 x float> %i.aba, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ace = shufflevector <8 x i32> %i.abb, <8 x i32> %i.abc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.acf = shufflevector <8 x float> %i.abd, <8 x float> %i.abf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.acg = shufflevector <8 x i32> %i.abg, <8 x i32> %i.abh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ach = shufflevector <8 x float> %i.abj, <8 x float> %i.abk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aci = shufflevector <8 x i32> %i.abl, <8 x i32> %i.abm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_15
begin_hunk_16_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.tr = add nsw <8 x i32> %i.tg, %i.ol
  %wide.masked.gather1221 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.tq, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.ts = mul nsw <8 x i32> %wide.masked.gather1221, %i.tr
  %predphi1222 = select <8 x i1> %i.tl, <8 x i32> %i.ts, <8 x i32> splat (i32 -1)
  %wide.gep1223 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1175, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1222, <8 x ptr> align 4 %wide.gep1223, <8 x i1> %i.pz), !tbaa !23, !alias.scope !726, !noalias !727
  %i.tt = select <8 x i1> %i.pz, <8 x i1> %i.tm, <8 x i1> zeroinitializer ; 2 uses
  %i.tu = add nsw <8 x i32> %i.tg, %i.ou
  %wide.masked.gather1224 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.tt, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.tv = mul nsw <8 x i32> %wide.masked.gather1224, %i.tu
  %i.tw = xor <8 x i1> %i.pv, splat (i1 true)
  %i.tx = select <8 x i1> %i.pi, <8 x i1> %i.tw, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1181, <8 x i1> %i.tx), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1184, <8 x i1> %i.tx), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1187, <8 x i1> %i.tx), !tbaa !23, !alias.scope !726, !noalias !727
  %i.ty = select <8 x i1> %i.pi, <8 x i1> %i.pv, <8 x i1> zeroinitializer ; 7 uses
  %i.tz = add nsw <8 x i32> %i.ps, %i.oc
  %wide.masked.gather1225 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.ty, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.ua = mul nsw <8 x i32> %wide.masked.gather1225, %i.tz
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.ua, <8 x ptr> align 4 %wide.gep1181, <8 x i1> %i.ty), !tbaa !23, !alias.scope !726, !noalias !727
  %i.ub = select <8 x i1> %i.ty, <8 x i1> %i.pw, <8 x i1> zeroinitializer
  %wide.masked.gather1226 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.ub, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.uc = mul nsw <8 x i32> %wide.masked.gather1226, %i.qb
  %predphi1227 = select <8 x i1> %i.pw, <8 x i32> %i.uc, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1227, <8 x ptr> align 4 %wide.gep1184, <8 x i1> %i.ty), !tbaa !23, !alias.scope !726, !noalias !727
  %i.ud = select <8 x i1> %i.ty, <8 x i1> %i.px, <8 x i1> zeroinitializer
  %wide.masked.gather1228 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.ud, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.ue = mul nsw <8 x i32> %wide.masked.gather1228, %i.qe
  %predphi1229 = select <8 x i1> %i.px, <8 x i32> %i.ue, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1229, <8 x ptr> align 4 %wide.gep1187, <8 x i1> %i.ty), !tbaa !23, !alias.scope !726, !noalias !727
  %i.uf = select <8 x i1> %i.ty, <8 x i1> %i.py, <8 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather1230 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.uf, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.ug = mul nsw <8 x i32> %wide.masked.gather1230, %i.qh
  %predphi1231 = select <8 x i1> %i.uf, <8 x i32> %i.ug, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1231, <8 x ptr> align 4 %wide.gep1190, <8 x i1> %i.pi), !tbaa !23, !alias.scope !726, !noalias !727
  %i.uh = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1395 = shufflevector <1 x i32> %i.uh, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ui = sitofp fast <8 x i32> %broadcast.splat1395 to <8 x float> ; 3 uses
  %i.uj = fsub fast <8 x float> %i.ql, %i.ui
  %i.uk = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %i.uj)
  %i.ul = fadd fast <8 x float> %i.ui, splat (float -5.000000e-01)
  %i.um = fsub fast <8 x float> %i.ul, %i.uk
  %i.un = fadd fast <8 x float> %i.ui, splat (float -1.000000e+00)
  %i.uo = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.um, <8 x float> zeroinitializer)
  %i.up = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.uo, <8 x float> %i.un)
  %i.uq = fptosi <8 x float> %i.up to <8 x i32>   ; 3 uses
  %i.ur = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1398 = shufflevector <1 x i32> %i.ur, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.us = mul nsw <8 x i32> %broadcast.splat1398, %i.uq ; 4 uses
  %i.ut = icmp sgt <8 x i32> %i.uq, splat (i32 -1)
  %i.uu = icmp sgt <8 x i32> %broadcast.splat1395, %i.uq
  %i.uv = and <8 x i1> %i.ut, %i.uu               ; 4 uses
  %i.uw = and <8 x i1> %i.pd, %i.uv               ; 2 uses
  %i.ux = and <8 x i1> %i.pg, %i.uv
  %i.uy = xor <8 x i1> %i.uv, splat (i1 true)
  %i.uz = select <8 x i1> %i.pi, <8 x i1> %i.uy, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1191, <8 x i1> %i.uz), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1196, <8 x i1> %i.uz), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1199, <8 x i1> %i.uz), !tbaa !23, !alias.scope !726, !noalias !727
  %i.va = select <8 x i1> %i.pi, <8 x i1> %i.uv, <8 x i1> zeroinitializer ; 7 uses
  %i.vb = add nsw <8 x i32> %i.us, %i.oc
  %wide.masked.gather1234 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.va, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.vc = mul nsw <8 x i32> %wide.masked.gather1234, %i.vb
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.vc, <8 x ptr> align 4 %wide.gep1191, <8 x i1> %i.va), !tbaa !23, !alias.scope !726, !noalias !727
  %i.vd = select <8 x i1> %i.va, <8 x i1> %i.ox, <8 x i1> zeroinitializer
  %i.ve = add nsw <8 x i32> %i.us, %i.nt
  %wide.masked.gather1235 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.vd, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.vf = mul nsw <8 x i32> %wide.masked.gather1235, %i.ve
  %predphi1236 = select <8 x i1> %i.ox, <8 x i32> %i.vf, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1236, <8 x ptr> align 4 %wide.gep1196, <8 x i1> %i.va), !tbaa !23, !alias.scope !726, !noalias !727
  %i.vg = select <8 x i1> %i.va, <8 x i1> %i.uw, <8 x i1> zeroinitializer
  %i.vh = add nsw <8 x i32> %i.us, %i.ol
  %wide.masked.gather1237 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.vg, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.vi = mul nsw <8 x i32> %wide.masked.gather1237, %i.vh
  %predphi1238 = select <8 x i1> %i.uw, <8 x i32> %i.vi, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1238, <8 x ptr> align 4 %wide.gep1199, <8 x i1> %i.va), !tbaa !23, !alias.scope !726, !noalias !727
  %i.vj = select <8 x i1> %i.va, <8 x i1> %i.ux, <8 x i1> zeroinitializer ; 2 uses
  %i.vk = add nsw <8 x i32> %i.us, %i.ou
  %wide.masked.gather1239 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.vj, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.vl = mul nsw <8 x i32> %wide.masked.gather1239, %i.vk
  %predphi1240 = select <8 x i1> %i.vj, <8 x i32> %i.vl, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1240, <8 x ptr> align 4 %wide.gep1202, <8 x i1> %i.pi), !tbaa !23, !alias.scope !726, !noalias !727
  %i.vm = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1401 = shufflevector <1 x i32> %i.vm, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.vn = sitofp fast <8 x i32> %broadcast.splat1401 to <8 x float> ; 3 uses
  %i.vo = fsub fast <8 x float> %i.rq, %i.vn
  %i.vp = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %i.vo)
  %i.vq = fadd fast <8 x float> %i.vn, splat (float -5.000000e-01)
  %i.vr = fsub fast <8 x float> %i.vq, %i.vp
  %i.vs = fadd fast <8 x float> %i.vn, splat (float -1.000000e+00)
  %i.vt = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.vr, <8 x float> zeroinitializer)
  %i.vu = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.vt, <8 x float> %i.vs)
  %i.vv = fptosi <8 x float> %i.vu to <8 x i32>   ; 3 uses
  %i.vw = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1404 = shufflevector <1 x i32> %i.vw, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.vx = mul nsw <8 x i32> %broadcast.splat1404, %i.vv ; 4 uses
  %i.vy = icmp sgt <8 x i32> %i.vv, splat (i32 -1)
  %i.vz = icmp sgt <8 x i32> %broadcast.splat1401, %i.vv
  %i.wa = and <8 x i1> %i.vy, %i.vz               ; 4 uses
  %i.wb = and <8 x i1> %i.pd, %i.wa               ; 2 uses
  %i.wc = and <8 x i1> %i.pg, %i.wa
  %i.wd = xor <8 x i1> %i.wa, splat (i1 true)
  %i.we = select <8 x i1> %i.pi, <8 x i1> %i.wd, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1203, <8 x i1> %i.we), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1208, <8 x i1> %i.we), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1211, <8 x i1> %i.we), !tbaa !23, !alias.scope !726, !noalias !727
  %i.wf = select <8 x i1> %i.pi, <8 x i1> %i.wa, <8 x i1> zeroinitializer ; 7 uses
  %i.wg = add nsw <8 x i32> %i.vx, %i.oc
  %wide.masked.gather1243 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.wf, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.wh = mul nsw <8 x i32> %wide.masked.gather1243, %i.wg
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.wh, <8 x ptr> align 4 %wide.gep1203, <8 x i1> %i.wf), !tbaa !23, !alias.scope !726, !noalias !727
  %i.wi = select <8 x i1> %i.wf, <8 x i1> %i.ox, <8 x i1> zeroinitializer
  %i.wj = add nsw <8 x i32> %i.vx, %i.nt
  %wide.masked.gather1244 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.wi, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.wk = mul nsw <8 x i32> %wide.masked.gather1244, %i.wj
  %predphi1245 = select <8 x i1> %i.ox, <8 x i32> %i.wk, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1245, <8 x ptr> align 4 %wide.gep1208, <8 x i1> %i.wf), !tbaa !23, !alias.scope !726, !noalias !727
  %i.wl = select <8 x i1> %i.wf, <8 x i1> %i.wb, <8 x i1> zeroinitializer
  %i.wm = add nsw <8 x i32> %i.vx, %i.ol
  %wide.masked.gather1246 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.wl, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.wn = mul nsw <8 x i32> %wide.masked.gather1246, %i.wm
  %predphi1247 = select <8 x i1> %i.wb, <8 x i32> %i.wn, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1247, <8 x ptr> align 4 %wide.gep1211, <8 x i1> %i.wf), !tbaa !23, !alias.scope !726, !noalias !727
  %i.wo = select <8 x i1> %i.wf, <8 x i1> %i.wc, <8 x i1> zeroinitializer ; 2 uses
  %i.wp = add nsw <8 x i32> %i.vx, %i.ou
  %wide.masked.gather1248 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.wo, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.wq = mul nsw <8 x i32> %wide.masked.gather1248, %i.wp
  %predphi1249 = select <8 x i1> %i.wo, <8 x i32> %i.wq, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1249, <8 x ptr> align 4 %wide.gep1214, <8 x i1> %i.pi), !tbaa !23, !alias.scope !726, !noalias !727
  %i.wr = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1407 = shufflevector <1 x i32> %i.wr, <1 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ws = sitofp fast <8 x i32> %broadcast.splat1407 to <8 x float> ; 3 uses
  %i.wt = fsub fast <8 x float> %i.sv, %i.ws
  %i.wu = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %i.wt)
  %i.wv = fadd fast <8 x float> %i.ws, splat (float -5.000000e-01)
  %i.ww = fsub fast <8 x float> %i.wv, %i.wu
  %i.wx = fadd fast <8 x float> %i.ws, splat (float -1.000000e+00)
  %i.wy = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ww, <8 x float> zeroinitializer)
  %i.wz = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.wy, <8 x float> %i.wx)
  %i.xa = fptosi <8 x float> %i.wz to <8 x i32>   ; 3 uses
  %i.xb = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1410 = shufflevector <1 x i32> %i.xb, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.xc = mul nsw <8 x i32> %broadcast.splat1410, %i.xa ; 4 uses
  %i.xd = icmp sgt <8 x i32> %i.xa, splat (i32 -1)
  %i.xe = icmp sgt <8 x i32> %broadcast.splat1407, %i.xa
  %i.xf = and <8 x i1> %i.xd, %i.xe               ; 4 uses
  %i.xg = and <8 x i1> %i.pd, %i.xf               ; 2 uses
  %i.xh = and <8 x i1> %i.pg, %i.xf
  %i.xi = xor <8 x i1> %i.xf, splat (i1 true)
  %i.xj = select <8 x i1> %i.pi, <8 x i1> %i.xi, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.xj), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1220, <8 x i1> %i.xj), !tbaa !23, !alias.scope !726, !noalias !727
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1223, <8 x i1> %i.xj), !tbaa !23, !alias.scope !726, !noalias !727
  %i.xk = select <8 x i1> %i.pi, <8 x i1> %i.xf, <8 x i1> zeroinitializer ; 7 uses
  %i.xl = add nsw <8 x i32> %i.xc, %i.oc
  %wide.masked.gather1252 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.xk, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.xm = mul nsw <8 x i32> %wide.masked.gather1252, %i.xl
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.xm, <8 x ptr> align 4 %wide.gep1215, <8 x i1> %i.xk), !tbaa !23, !alias.scope !726, !noalias !727
  %i.xn = select <8 x i1> %i.xk, <8 x i1> %i.ox, <8 x i1> zeroinitializer
  %i.xo = add nsw <8 x i32> %i.xc, %i.nt
  %wide.masked.gather1253 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.xn, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.xp = mul nsw <8 x i32> %wide.masked.gather1253, %i.xo
  %predphi1254 = select <8 x i1> %i.ox, <8 x i32> %i.xp, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1254, <8 x ptr> align 4 %wide.gep1220, <8 x i1> %i.xk), !tbaa !23, !alias.scope !726, !noalias !727
  %i.xq = select <8 x i1> %i.xk, <8 x i1> %i.xg, <8 x i1> zeroinitializer
  %i.xr = add nsw <8 x i32> %i.xc, %i.ol
  %wide.masked.gather1255 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.xq, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.xs = mul nsw <8 x i32> %wide.masked.gather1255, %i.xr
  %predphi1256 = select <8 x i1> %i.xg, <8 x i32> %i.xs, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1256, <8 x ptr> align 4 %wide.gep1223, <8 x i1> %i.xk), !tbaa !23, !alias.scope !726, !noalias !727
  %i.xt = select <8 x i1> %i.xk, <8 x i1> %i.xh, <8 x i1> zeroinitializer ; 2 uses
  %i.xu = add nsw <8 x i32> %i.xc, %i.ou
  %wide.masked.gather1257 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1171, <8 x i1> %i.xt, <8 x i32> poison), !tbaa !16, !alias.scope !728
  %i.xv = mul nsw <8 x i32> %wide.masked.gather1257, %i.xu
  %predphi1258 = select <8 x i1> %i.tt, <8 x i32> %i.tv, <8 x i32> splat (i32 -1)
  %predphi1259 = select <8 x i1> %i.xt, <8 x i32> %i.xv, <8 x i32> %predphi1258
  %wide.gep1260 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1175, i64 68
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1259, <8 x ptr> align 4 %wide.gep1260, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !726, !noalias !727
  %index.next1261 = add nuw i64 %index1173, 8     ; 2 uses
  %ptr.ind1262 = getelementptr i8, ptr %pointer.phi1174, i64 576
  %i.xw = icmp eq i64 %index.next1261, %n.vec1161
  br i1 %i.xw, label %vec.epilog.middle.block1263, label %vec.epilog.vector.body1172, !llvm.loop !706

vec.epilog.middle.block1263:                      ; preds = %vec.epilog.vector.body1172
  %cmp.n1264 = icmp eq i64 %n.vec1161, %i.ab
  br i1 %cmp.n1264, label %._crit_edge, label %.lr.ph562.preheader

.lr.ph562.preheader:                              ; preds = %iter.check1154, %vector.memcheck1036, %vec.epilog.iter.check1155, %vec.epilog.middle.block1263
  %.3561.ph = phi ptr [ %.1.lcssa, %iter.check1154 ], [ %.1.lcssa, %vector.memcheck1036 ], [ %i.ak, %vec.epilog.iter.check1155 ], [ %i.me, %vec.epilog.middle.block1263 ]
  %.1394560.ph = phi i32 [ %.0393.lcssa, %iter.check1154 ], [ %.0393.lcssa, %vector.memcheck1036 ], [ %i.an, %vec.epilog.iter.check1155 ], [ %i.mh, %vec.epilog.middle.block1263 ]
  %.1396559.ph = phi ptr [ %.0395.lcssa, %iter.check1154 ], [ %.0395.lcssa, %vector.memcheck1036 ], [ %i.ap, %vec.epilog.iter.check1155 ], [ %i.mj, %vec.epilog.middle.block1263 ]
  br label %.lr.ph562

.lr.ph549:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph549
  %.1548 = phi ptr [ %i.aij, %.lr.ph549 ], [ %.0380565, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393547 = phi i32 [ %i.ail, %.lr.ph549 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395546 = phi ptr [ %i.aik, %.lr.ph549 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.xx = load <8 x float>, ptr %.0395546, align 1, !tbaa !41 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.0395546, i64 32
  %i.xz = load <8 x float>, ptr %i.xy, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.xx, <8 x float> %i.xz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.xx, <8 x float> %i.xz, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ya = load i32, ptr %i.n, align 4, !tbaa !37
  %i.yb = sitofp fast i32 %i.ya to float
  %i.yc = insertelement <8 x float> poison, float %i.yb, i64 0
  %i.yd = shufflevector <8 x float> %i.yc, <8 x float> poison, <8 x i32> zeroinitializer ; 15 uses
  %i.ye = fadd fast <8 x float> %4, splat (float 1.000000e+00)
  %i.yf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ye, <8 x float> nofpclass(nan inf) %i.yd, <8 x float> splat (float -1.000000e+00))
  %i.yg = fmul fast <8 x float> %i.yf, splat (float 5.000000e-01) ; 2 uses
  %i.yh = load i32, ptr %i.o, align 8, !tbaa !38
  %i.yi = sitofp fast i32 %i.yh to float
  %i.yj = insertelement <8 x float> poison, float %i.yi, i64 0
  %i.yk = shufflevector <8 x float> %i.yj, <8 x float> poison, <8 x i32> zeroinitializer ; 11 uses
  %i.yl = fadd fast <8 x float> %5, splat (float 1.000000e+00)
  %i.ym = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yl, <8 x float> nofpclass(nan inf) %i.yk, <8 x float> splat (float -1.000000e+00))
  %i.yn = fmul fast <8 x float> %i.ym, splat (float 5.000000e-01) ; 2 uses
  %i.yo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.yg, i32 1) ; 5 uses
  %i.yp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.yn, i32 1) ; 5 uses
  %i.yq = fadd fast <8 x float> %i.yd, splat (float -1.000000e+00) ; 4 uses
  %i.yr = fadd fast <8 x float> %i.yo, splat (float -5.000000e-01)
  %i.ys = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.yr)
  %i.yt = fsub fast <8 x float> %i.ys, %i.yd
  %i.yu = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.yt)
  %i.yv = fadd fast <8 x float> %i.yd, splat (float -5.000000e-01) ; 4 uses
  %i.yw = fsub fast <8 x float> %i.yv, %i.yu
  %i.yx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yw, <8 x float> zeroinitializer)
  %i.yy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.yq, <8 x float> nofpclass(nan inf) %i.yx) ; 6 uses
  %i.yz = fadd fast <8 x float> %i.yo, splat (float 5.000000e-01)
  %i.za = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.yz)
  %i.zb = fsub fast <8 x float> %i.za, %i.yd
  %i.zc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.zb)
  %i.zd = fsub fast <8 x float> %i.yv, %i.zc
  %i.ze = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zd, <8 x float> zeroinitializer)
  %i.zf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.yq, <8 x float> nofpclass(nan inf) %i.ze) ; 6 uses
  %i.zg = fadd fast <8 x float> %i.yo, splat (float 1.500000e+00)
  %i.zh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.zg)
  %i.zi = fsub fast <8 x float> %i.zh, %i.yd
  %i.zj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.zi)
  %i.zk = fsub fast <8 x float> %i.yv, %i.zj
  %i.zl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zk, <8 x float> zeroinitializer)
  %i.zm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.yq, <8 x float> nofpclass(nan inf) %i.zl) ; 6 uses
  %i.zn = fadd fast <8 x float> %i.yo, splat (float 2.500000e+00)
  %i.zo = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.zn)
  %i.zp = fsub fast <8 x float> %i.zo, %i.yd
  %i.zq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.zp)
  %i.zr = fsub fast <8 x float> %i.yv, %i.zq
  %i.zs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zr, <8 x float> zeroinitializer)
  %i.zt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.yq, <8 x float> nofpclass(nan inf) %i.zs) ; 6 uses
  %i.zu = fcmp fast ogt <8 x float> %i.yy, splat (float -1.000000e+00)
  %i.zv = fcmp fast ogt <8 x float> %i.yd, %i.yy
  %i.zw = and <8 x i1> %i.zu, %i.zv               ; 4 uses
  %i.zx = fcmp fast ogt <8 x float> %i.zf, splat (float -1.000000e+00)
  %i.zy = fcmp fast ogt <8 x float> %i.yd, %i.zf
  %i.zz = and <8 x i1> %i.zx, %i.zy               ; 4 uses
  %i.aaa = fcmp fast ogt <8 x float> %i.zm, splat (float -1.000000e+00)
  %i.aab = fcmp fast ogt <8 x float> %i.yd, %i.zm
  %i.aac = and <8 x i1> %i.aaa, %i.aab            ; 4 uses
  %i.aad = fcmp fast ogt <8 x float> %i.zt, splat (float -1.000000e+00)
  %i.aae = fcmp fast ogt <8 x float> %i.yd, %i.zt
  %i.aaf = and <8 x i1> %i.aad, %i.aae            ; 4 uses
  %i.aag = fadd fast <8 x float> %i.yk, splat (float -1.000000e+00) ; 4 uses
  %i.aah = fadd fast <8 x float> %i.yk, splat (float -5.000000e-01) ; 4 uses
  %i.aai = load i32, ptr %i.p, align 8, !tbaa !16
  %i.aaj = sitofp fast i32 %i.aai to float
  %i.aak = insertelement <8 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <8 x float> %i.aak, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.aam = fadd fast <8 x float> %i.yp, splat (float -5.000000e-01)
  %i.aan = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aam)
  %i.aao = fsub fast <8 x float> %i.aan, %i.yk
  %i.aap = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aao)
  %i.aaq = fsub fast <8 x float> %i.aah, %i.aap
  %i.aar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aaq, <8 x float> zeroinitializer)
  %i.aas = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aag, <8 x float> nofpclass(nan inf) %i.aar) ; 3 uses
  %i.aat = fcmp fast ogt <8 x float> %i.aas, splat (float -1.000000e+00)
  %i.aau = fcmp fast ogt <8 x float> %i.yk, %i.aas
  %i.aav = and <8 x i1> %i.aat, %i.aau            ; 4 uses
  %i.aaw = fmul fast <8 x float> %i.aas, %i.yd    ; 4 uses
  %i.aax = fadd fast <8 x float> %i.aaw, %i.yy
  %i.aay = fmul fast <8 x float> %i.aal, %i.aax
  %i.aaz = fadd fast <8 x float> %i.aaw, %i.zf
  %i.aba = fmul fast <8 x float> %i.aal, %i.aaz
  %i.abb = fadd fast <8 x float> %i.aaw, %i.zm
  %i.abc = fmul fast <8 x float> %i.aal, %i.abb
  %i.abd = fadd fast <8 x float> %i.aaw, %i.zt
  %i.abe = fmul fast <8 x float> %i.aal, %i.abd
  %i.abf = and <8 x i1> %i.zw, %i.aav
  %i.abg = select <8 x i1> %i.abf, <8 x float> %i.aay, <8 x float> splat (float -1.000000e+00)
  %i.abh = and <8 x i1> %i.zz, %i.aav
  %i.abi = select <8 x i1> %i.abh, <8 x float> %i.aba, <8 x float> splat (float -1.000000e+00)
  %i.abj = and <8 x i1> %i.aac, %i.aav
  %i.abk = select <8 x i1> %i.abj, <8 x float> %i.abc, <8 x float> splat (float -1.000000e+00)
  %i.abl = and <8 x i1> %i.aaf, %i.aav
  %i.abm = select <8 x i1> %i.abl, <8 x float> %i.abe, <8 x float> splat (float -1.000000e+00)
  %i.abn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abg) ; 2 uses
  %i.abo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abi) ; 2 uses
  %i.abp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abk) ; 2 uses
  %i.abq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abm) ; 2 uses
  %i.abr = fadd fast <8 x float> %i.yp, splat (float 5.000000e-01)
  %i.abs = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.abr)
  %i.abt = fsub fast <8 x float> %i.abs, %i.yk
  %i.abu = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.abt)
  %i.abv = fsub fast <8 x float> %i.aah, %i.abu
  %i.abw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abv, <8 x float> zeroinitializer)
  %i.abx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aag, <8 x float> nofpclass(nan inf) %i.abw) ; 3 uses
  %i.aby = fcmp fast ogt <8 x float> %i.abx, splat (float -1.000000e+00)
  %i.abz = fcmp fast ogt <8 x float> %i.yk, %i.abx
  %i.aca = and <8 x i1> %i.aby, %i.abz            ; 4 uses
  %i.acb = fmul fast <8 x float> %i.abx, %i.yd    ; 4 uses
  %i.acc = fadd fast <8 x float> %i.acb, %i.yy
  %i.acd = fmul fast <8 x float> %i.aal, %i.acc
  %i.ace = fadd fast <8 x float> %i.acb, %i.zf
  %i.acf = fmul fast <8 x float> %i.aal, %i.ace
  %i.acg = fadd fast <8 x float> %i.acb, %i.zm
  %i.ach = fmul fast <8 x float> %i.aal, %i.acg
  %i.aci = fadd fast <8 x float> %i.acb, %i.zt
  %i.acj = fmul fast <8 x float> %i.aal, %i.aci
  %i.ack = and <8 x i1> %i.zw, %i.aca
  %i.acl = select <8 x i1> %i.ack, <8 x float> %i.acd, <8 x float> splat (float -1.000000e+00)
  %i.acm = and <8 x i1> %i.zz, %i.aca
  %i.acn = select <8 x i1> %i.acm, <8 x float> %i.acf, <8 x float> splat (float -1.000000e+00)
  %i.aco = and <8 x i1> %i.aac, %i.aca
  %i.acp = select <8 x i1> %i.aco, <8 x float> %i.ach, <8 x float> splat (float -1.000000e+00)
  %i.acq = and <8 x i1> %i.aaf, %i.aca
  %i.acr = select <8 x i1> %i.acq, <8 x float> %i.acj, <8 x float> splat (float -1.000000e+00)
  %i.acs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acl) ; 2 uses
  %i.act = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acn) ; 2 uses
  %i.acu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acp) ; 2 uses
  %i.acv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acr) ; 2 uses
  %i.acw = fadd fast <8 x float> %i.yp, splat (float 1.500000e+00)
  %i.acx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.acw)
  %i.acy = fsub fast <8 x float> %i.acx, %i.yk
  %i.acz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.acy)
  %i.ada = fsub fast <8 x float> %i.aah, %i.acz
  %i.adb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ada, <8 x float> zeroinitializer)
  %i.adc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aag, <8 x float> nofpclass(nan inf) %i.adb) ; 3 uses
  %i.add = fcmp fast ogt <8 x float> %i.adc, splat (float -1.000000e+00)
  %i.ade = fcmp fast ogt <8 x float> %i.yk, %i.adc
  %i.adf = and <8 x i1> %i.add, %i.ade            ; 4 uses
  %i.adg = fmul fast <8 x float> %i.adc, %i.yd    ; 4 uses
  %i.adh = fadd fast <8 x float> %i.adg, %i.yy
  %i.adi = fmul fast <8 x float> %i.aal, %i.adh
  %i.adj = fadd fast <8 x float> %i.adg, %i.zf
  %i.adk = fmul fast <8 x float> %i.aal, %i.adj
  %i.adl = fadd fast <8 x float> %i.adg, %i.zm
  %i.adm = fmul fast <8 x float> %i.aal, %i.adl
  %i.adn = fadd fast <8 x float> %i.adg, %i.zt
  %i.ado = fmul fast <8 x float> %i.aal, %i.adn
  %i.adp = and <8 x i1> %i.zw, %i.adf
  %i.adq = select <8 x i1> %i.adp, <8 x float> %i.adi, <8 x float> splat (float -1.000000e+00)
  %i.adr = and <8 x i1> %i.zz, %i.adf
  %i.ads = select <8 x i1> %i.adr, <8 x float> %i.adk, <8 x float> splat (float -1.000000e+00)
  %i.adt = and <8 x i1> %i.aac, %i.adf
  %i.adu = select <8 x i1> %i.adt, <8 x float> %i.adm, <8 x float> splat (float -1.000000e+00)
  %i.adv = and <8 x i1> %i.aaf, %i.adf
  %i.adw = select <8 x i1> %i.adv, <8 x float> %i.ado, <8 x float> splat (float -1.000000e+00)
  %i.adx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adq) ; 2 uses
  %i.ady = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ads) ; 2 uses
  %i.adz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adu) ; 2 uses
  %i.aea = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adw) ; 2 uses
  %i.aeb = fadd fast <8 x float> %i.yp, splat (float 2.500000e+00)
  %i.aec = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aeb)
  %i.aed = fsub fast <8 x float> %i.aec, %i.yk
  %i.aee = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aed)
  %i.aef = fsub fast <8 x float> %i.aah, %i.aee
  %i.aeg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aef, <8 x float> zeroinitializer)
  %i.aeh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aag, <8 x float> nofpclass(nan inf) %i.aeg) ; 3 uses
  %i.aei = fcmp fast ogt <8 x float> %i.aeh, splat (float -1.000000e+00)
  %i.aej = fcmp fast ogt <8 x float> %i.yk, %i.aeh
  %i.aek = and <8 x i1> %i.aei, %i.aej            ; 4 uses
  %i.ael = fmul fast <8 x float> %i.aeh, %i.yd    ; 4 uses
  %i.aem = fadd fast <8 x float> %i.ael, %i.yy
  %i.aen = fmul fast <8 x float> %i.aal, %i.aem
  %i.aeo = fadd fast <8 x float> %i.ael, %i.zf
  %i.aep = fmul fast <8 x float> %i.aal, %i.aeo
  %i.aeq = fadd fast <8 x float> %i.ael, %i.zm
  %i.aer = fmul fast <8 x float> %i.aal, %i.aeq
  %i.aes = fadd fast <8 x float> %i.ael, %i.zt
  %i.aet = fmul fast <8 x float> %i.aal, %i.aes
  %i.aeu = and <8 x i1> %i.zw, %i.aek
  %i.aev = select <8 x i1> %i.aeu, <8 x float> %i.aen, <8 x float> splat (float -1.000000e+00)
  %i.aew = and <8 x i1> %i.zz, %i.aek
  %i.aex = select <8 x i1> %i.aew, <8 x float> %i.aep, <8 x float> splat (float -1.000000e+00)
  %i.aey = and <8 x i1> %i.aac, %i.aek
  %i.aez = select <8 x i1> %i.aey, <8 x float> %i.aer, <8 x float> splat (float -1.000000e+00)
  %i.afa = and <8 x i1> %i.aaf, %i.aek
  %i.afb = select <8 x i1> %i.afa, <8 x float> %i.aet, <8 x float> splat (float -1.000000e+00)
  %i.afc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aev) ; 2 uses
  %i.afd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aex) ; 2 uses
  %i.afe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aez) ; 2 uses
  %i.aff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afb) ; 2 uses
  %i.afg = fsub fast <8 x float> %i.yg, %i.yo     ; 2 uses
  %i.afh = fsub fast <8 x float> %i.yn, %i.yp     ; 2 uses
  %i.afi = shufflevector <8 x float> %i.afg, <8 x float> %i.afh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afj = shufflevector <8 x float> %i.afg, <8 x float> %i.afh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afk = shufflevector <8 x i32> %i.abn, <8 x i32> %i.abo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afl = bitcast <8 x i32> %i.afk to <8 x float>
  %i.afm = shufflevector <8 x i32> %i.abn, <8 x i32> %i.abo, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afn = bitcast <8 x i32> %i.afm to <8 x float>
  %i.afo = shufflevector <8 x i32> %i.abp, <8 x i32> %i.abq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afp = shufflevector <8 x i32> %i.abp, <8 x i32> %i.abq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afq = shufflevector <8 x i32> %i.acs, <8 x i32> %i.act, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afr = shufflevector <8 x i32> %i.acs, <8 x i32> %i.act, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afs = shufflevector <8 x i32> %i.acu, <8 x i32> %i.acv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aft = shufflevector <8 x i32> %i.acu, <8 x i32> %i.acv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afu = shufflevector <8 x i32> %i.adx, <8 x i32> %i.ady, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afv = shufflevector <8 x i32> %i.adx, <8 x i32> %i.ady, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afw = shufflevector <8 x i32> %i.adz, <8 x i32> %i.aea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afx = shufflevector <8 x i32> %i.adz, <8 x i32> %i.aea, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afy = shufflevector <8 x i32> %i.afc, <8 x i32> %i.afd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afz = shufflevector <8 x i32> %i.afc, <8 x i32> %i.afd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aga = shufflevector <8 x i32> %i.afe, <8 x i32> %i.aff, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.agb = bitcast <8 x i32> %i.aga to <8 x float>
  %i.agc = shufflevector <8 x i32> %i.afe, <8 x i32> %i.aff, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.agd = bitcast <8 x i32> %i.agc to <8 x float>
end_hunk_16
begin_hunk_17_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %predphi1211 = select <8 x i1> %i.te, <8 x i32> %i.tl, <8 x i32> splat (i32 -1)
  %wide.gep1212 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1164, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1211, <8 x ptr> align 4 %wide.gep1212, <8 x i1> %i.ps), !tbaa !23, !alias.scope !765, !noalias !766
  %i.tm = select <8 x i1> %i.ps, <8 x i1> %i.tf, <8 x i1> zeroinitializer ; 2 uses
  %i.tn = add nsw <8 x i32> %i.sz, %i.oo
  %wide.masked.gather1213 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.tm, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.to = mul nsw <8 x i32> %wide.masked.gather1213, %i.tn
  %i.tp = xor <8 x i1> %i.po, splat (i1 true)
  %i.tq = select <8 x i1> %i.pc, <8 x i1> %i.tp, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1170, <8 x i1> %i.tq), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1173, <8 x i1> %i.tq), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1176, <8 x i1> %i.tq), !tbaa !23, !alias.scope !765, !noalias !766
  %i.tr = select <8 x i1> %i.pc, <8 x i1> %i.po, <8 x i1> zeroinitializer ; 7 uses
  %i.ts = add nsw <8 x i32> %i.pl, %i.ny
  %wide.masked.gather1214 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.tr, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.tt = mul nsw <8 x i32> %wide.masked.gather1214, %i.ts
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.tt, <8 x ptr> align 4 %wide.gep1170, <8 x i1> %i.tr), !tbaa !23, !alias.scope !765, !noalias !766
  %i.tu = select <8 x i1> %i.tr, <8 x i1> %i.pp, <8 x i1> zeroinitializer
  %wide.masked.gather1215 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.tu, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.tv = mul nsw <8 x i32> %wide.masked.gather1215, %i.pu
  %predphi1216 = select <8 x i1> %i.pp, <8 x i32> %i.tv, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1216, <8 x ptr> align 4 %wide.gep1173, <8 x i1> %i.tr), !tbaa !23, !alias.scope !765, !noalias !766
  %i.tw = select <8 x i1> %i.tr, <8 x i1> %i.pq, <8 x i1> zeroinitializer
  %wide.masked.gather1217 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.tw, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.tx = mul nsw <8 x i32> %wide.masked.gather1217, %i.px
  %predphi1218 = select <8 x i1> %i.pq, <8 x i32> %i.tx, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1218, <8 x ptr> align 4 %wide.gep1176, <8 x i1> %i.tr), !tbaa !23, !alias.scope !765, !noalias !766
  %i.ty = select <8 x i1> %i.tr, <8 x i1> %i.pr, <8 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather1219 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.ty, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.tz = mul nsw <8 x i32> %wide.masked.gather1219, %i.qa
  %predphi1220 = select <8 x i1> %i.ty, <8 x i32> %i.tz, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1220, <8 x ptr> align 4 %wide.gep1179, <8 x i1> %i.pc), !tbaa !23, !alias.scope !765, !noalias !766
  %i.ua = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1384 = shufflevector <1 x i32> %i.ua, <1 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ub = add nsw <8 x i32> %broadcast.splat1384, splat (i32 -1)
  %i.uc = sitofp fast <8 x i32> %i.ub to <8 x float> ; 2 uses
  %i.ud = fsub fast <8 x float> %i.qd, %i.uc
  %i.ue = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ud)
  %i.uf = fsub fast <8 x float> %i.uc, %i.ue
  %i.ug = sitofp fast <8 x i32> %broadcast.splat1384 to <8 x float>
  %i.uh = fadd fast <8 x float> %i.ug, splat (float -1.000000e+00)
  %i.ui = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.uf, <8 x float> zeroinitializer)
  %i.uj = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ui, <8 x float> %i.uh)
  %i.uk = fptosi <8 x float> %i.uj to <8 x i32>   ; 3 uses
  %i.ul = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1387 = shufflevector <1 x i32> %i.ul, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.um = mul nsw <8 x i32> %broadcast.splat1387, %i.uk ; 4 uses
  %i.un = icmp sgt <8 x i32> %i.uk, splat (i32 -1)
  %i.uo = icmp sgt <8 x i32> %broadcast.splat1384, %i.uk
  %i.up = and <8 x i1> %i.un, %i.uo               ; 4 uses
  %i.uq = and <8 x i1> %i.ox, %i.up               ; 2 uses
  %i.ur = and <8 x i1> %i.pa, %i.up
  %i.us = xor <8 x i1> %i.up, splat (i1 true)
  %i.ut = select <8 x i1> %i.pc, <8 x i1> %i.us, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1180, <8 x i1> %i.ut), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1185, <8 x i1> %i.ut), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1188, <8 x i1> %i.ut), !tbaa !23, !alias.scope !765, !noalias !766
  %i.uu = select <8 x i1> %i.pc, <8 x i1> %i.up, <8 x i1> zeroinitializer ; 7 uses
  %i.uv = add nsw <8 x i32> %i.um, %i.ny
  %wide.masked.gather1223 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.uu, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.uw = mul nsw <8 x i32> %wide.masked.gather1223, %i.uv
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.uw, <8 x ptr> align 4 %wide.gep1180, <8 x i1> %i.uu), !tbaa !23, !alias.scope !765, !noalias !766
  %i.ux = select <8 x i1> %i.uu, <8 x i1> %i.or, <8 x i1> zeroinitializer
  %i.uy = add nsw <8 x i32> %i.um, %i.nq
  %wide.masked.gather1224 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.ux, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.uz = mul nsw <8 x i32> %wide.masked.gather1224, %i.uy
  %predphi1225 = select <8 x i1> %i.or, <8 x i32> %i.uz, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1225, <8 x ptr> align 4 %wide.gep1185, <8 x i1> %i.uu), !tbaa !23, !alias.scope !765, !noalias !766
  %i.va = select <8 x i1> %i.uu, <8 x i1> %i.uq, <8 x i1> zeroinitializer
  %i.vb = add nsw <8 x i32> %i.um, %i.og
  %wide.masked.gather1226 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.va, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.vc = mul nsw <8 x i32> %wide.masked.gather1226, %i.vb
  %predphi1227 = select <8 x i1> %i.uq, <8 x i32> %i.vc, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1227, <8 x ptr> align 4 %wide.gep1188, <8 x i1> %i.uu), !tbaa !23, !alias.scope !765, !noalias !766
  %i.vd = select <8 x i1> %i.uu, <8 x i1> %i.ur, <8 x i1> zeroinitializer ; 2 uses
  %i.ve = add nsw <8 x i32> %i.um, %i.oo
  %wide.masked.gather1228 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.vd, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.vf = mul nsw <8 x i32> %wide.masked.gather1228, %i.ve
  %predphi1229 = select <8 x i1> %i.vd, <8 x i32> %i.vf, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1229, <8 x ptr> align 4 %wide.gep1191, <8 x i1> %i.pc), !tbaa !23, !alias.scope !765, !noalias !766
  %i.vg = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1390 = shufflevector <1 x i32> %i.vg, <1 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.vh = add nsw <8 x i32> %broadcast.splat1390, splat (i32 -1)
  %i.vi = sitofp fast <8 x i32> %i.vh to <8 x float> ; 2 uses
  %i.vj = fsub fast <8 x float> %i.ri, %i.vi
  %i.vk = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %i.vj)
  %i.vl = fsub fast <8 x float> %i.vi, %i.vk
  %i.vm = sitofp fast <8 x i32> %broadcast.splat1390 to <8 x float>
  %i.vn = fadd fast <8 x float> %i.vm, splat (float -1.000000e+00)
  %i.vo = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.vl, <8 x float> zeroinitializer)
  %i.vp = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.vo, <8 x float> %i.vn)
  %i.vq = fptosi <8 x float> %i.vp to <8 x i32>   ; 3 uses
  %i.vr = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1393 = shufflevector <1 x i32> %i.vr, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.vs = mul nsw <8 x i32> %broadcast.splat1393, %i.vq ; 4 uses
  %i.vt = icmp sgt <8 x i32> %i.vq, splat (i32 -1)
  %i.vu = icmp sgt <8 x i32> %broadcast.splat1390, %i.vq
  %i.vv = and <8 x i1> %i.vt, %i.vu               ; 4 uses
  %i.vw = and <8 x i1> %i.ox, %i.vv               ; 2 uses
  %i.vx = and <8 x i1> %i.pa, %i.vv
  %i.vy = xor <8 x i1> %i.vv, splat (i1 true)
  %i.vz = select <8 x i1> %i.pc, <8 x i1> %i.vy, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1192, <8 x i1> %i.vz), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1197, <8 x i1> %i.vz), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1200, <8 x i1> %i.vz), !tbaa !23, !alias.scope !765, !noalias !766
  %i.wa = select <8 x i1> %i.pc, <8 x i1> %i.vv, <8 x i1> zeroinitializer ; 7 uses
  %i.wb = add nsw <8 x i32> %i.vs, %i.ny
  %wide.masked.gather1232 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.wa, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.wc = mul nsw <8 x i32> %wide.masked.gather1232, %i.wb
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.wc, <8 x ptr> align 4 %wide.gep1192, <8 x i1> %i.wa), !tbaa !23, !alias.scope !765, !noalias !766
  %i.wd = select <8 x i1> %i.wa, <8 x i1> %i.or, <8 x i1> zeroinitializer
  %i.we = add nsw <8 x i32> %i.vs, %i.nq
  %wide.masked.gather1233 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.wd, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.wf = mul nsw <8 x i32> %wide.masked.gather1233, %i.we
  %predphi1234 = select <8 x i1> %i.or, <8 x i32> %i.wf, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1234, <8 x ptr> align 4 %wide.gep1197, <8 x i1> %i.wa), !tbaa !23, !alias.scope !765, !noalias !766
  %i.wg = select <8 x i1> %i.wa, <8 x i1> %i.vw, <8 x i1> zeroinitializer
  %i.wh = add nsw <8 x i32> %i.vs, %i.og
  %wide.masked.gather1235 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.wg, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.wi = mul nsw <8 x i32> %wide.masked.gather1235, %i.wh
  %predphi1236 = select <8 x i1> %i.vw, <8 x i32> %i.wi, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1236, <8 x ptr> align 4 %wide.gep1200, <8 x i1> %i.wa), !tbaa !23, !alias.scope !765, !noalias !766
  %i.wj = select <8 x i1> %i.wa, <8 x i1> %i.vx, <8 x i1> zeroinitializer ; 2 uses
  %i.wk = add nsw <8 x i32> %i.vs, %i.oo
  %wide.masked.gather1237 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.wj, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.wl = mul nsw <8 x i32> %wide.masked.gather1237, %i.wk
  %predphi1238 = select <8 x i1> %i.wj, <8 x i32> %i.wl, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1238, <8 x ptr> align 4 %wide.gep1203, <8 x i1> %i.pc), !tbaa !23, !alias.scope !765, !noalias !766
  %i.wm = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1396 = shufflevector <1 x i32> %i.wm, <1 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.wn = add nsw <8 x i32> %broadcast.splat1396, splat (i32 -1)
  %i.wo = sitofp fast <8 x i32> %i.wn to <8 x float> ; 2 uses
  %i.wp = fsub fast <8 x float> %i.sn, %i.wo
  %i.wq = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %i.wp)
  %i.wr = fsub fast <8 x float> %i.wo, %i.wq
  %i.ws = sitofp fast <8 x i32> %broadcast.splat1396 to <8 x float>
  %i.wt = fadd fast <8 x float> %i.ws, splat (float -1.000000e+00)
  %i.wu = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.wr, <8 x float> zeroinitializer)
  %i.wv = tail call nnan ninf nsz <8 x float> @llvm.minnum.v8f32(<8 x float> %i.wu, <8 x float> %i.wt)
  %i.ww = fptosi <8 x float> %i.wv to <8 x i32>   ; 3 uses
  %i.wx = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1399 = shufflevector <1 x i32> %i.wx, <1 x i32> poison, <8 x i32> zeroinitializer
  %i.wy = mul nsw <8 x i32> %broadcast.splat1399, %i.ww ; 4 uses
  %i.wz = icmp sgt <8 x i32> %i.ww, splat (i32 -1)
  %i.xa = icmp sgt <8 x i32> %broadcast.splat1396, %i.ww
  %i.xb = and <8 x i1> %i.wz, %i.xa               ; 4 uses
  %i.xc = and <8 x i1> %i.ox, %i.xb               ; 2 uses
  %i.xd = and <8 x i1> %i.pa, %i.xb
  %i.xe = xor <8 x i1> %i.xb, splat (i1 true)
  %i.xf = select <8 x i1> %i.pc, <8 x i1> %i.xe, <8 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1204, <8 x i1> %i.xf), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1209, <8 x i1> %i.xf), !tbaa !23, !alias.scope !765, !noalias !766
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep1212, <8 x i1> %i.xf), !tbaa !23, !alias.scope !765, !noalias !766
  %i.xg = select <8 x i1> %i.pc, <8 x i1> %i.xb, <8 x i1> zeroinitializer ; 7 uses
  %i.xh = add nsw <8 x i32> %i.wy, %i.ny
  %wide.masked.gather1241 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.xg, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.xi = mul nsw <8 x i32> %wide.masked.gather1241, %i.xh
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.xi, <8 x ptr> align 4 %wide.gep1204, <8 x i1> %i.xg), !tbaa !23, !alias.scope !765, !noalias !766
  %i.xj = select <8 x i1> %i.xg, <8 x i1> %i.or, <8 x i1> zeroinitializer
  %i.xk = add nsw <8 x i32> %i.wy, %i.nq
  %wide.masked.gather1242 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.xj, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.xl = mul nsw <8 x i32> %wide.masked.gather1242, %i.xk
  %predphi1243 = select <8 x i1> %i.or, <8 x i32> %i.xl, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1243, <8 x ptr> align 4 %wide.gep1209, <8 x i1> %i.xg), !tbaa !23, !alias.scope !765, !noalias !766
  %i.xm = select <8 x i1> %i.xg, <8 x i1> %i.xc, <8 x i1> zeroinitializer
  %i.xn = add nsw <8 x i32> %i.wy, %i.og
  %wide.masked.gather1244 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.xm, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.xo = mul nsw <8 x i32> %wide.masked.gather1244, %i.xn
  %predphi1245 = select <8 x i1> %i.xc, <8 x i32> %i.xo, <8 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1245, <8 x ptr> align 4 %wide.gep1212, <8 x i1> %i.xg), !tbaa !23, !alias.scope !765, !noalias !766
  %i.xp = select <8 x i1> %i.xg, <8 x i1> %i.xd, <8 x i1> zeroinitializer ; 2 uses
  %i.xq = add nsw <8 x i32> %i.wy, %i.oo
  %wide.masked.gather1246 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat1160, <8 x i1> %i.xp, <8 x i32> poison), !tbaa !16, !alias.scope !767
  %i.xr = mul nsw <8 x i32> %wide.masked.gather1246, %i.xq
  %predphi1247 = select <8 x i1> %i.tm, <8 x i32> %i.to, <8 x i32> splat (i32 -1)
  %predphi1248 = select <8 x i1> %i.xp, <8 x i32> %i.xr, <8 x i32> %predphi1247
  %wide.gep1249 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1164, i64 68
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi1248, <8 x ptr> align 4 %wide.gep1249, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !765, !noalias !766
  %index.next1250 = add nuw i64 %index1162, 8     ; 2 uses
  %ptr.ind1251 = getelementptr i8, ptr %pointer.phi1163, i64 576
  %i.xs = icmp eq i64 %index.next1250, %n.vec1150
  br i1 %i.xs, label %vec.epilog.middle.block1252, label %vec.epilog.vector.body1161, !llvm.loop !745

vec.epilog.middle.block1252:                      ; preds = %vec.epilog.vector.body1161
  %cmp.n1253 = icmp eq i64 %n.vec1150, %i.ab
  br i1 %cmp.n1253, label %._crit_edge, label %.lr.ph551.preheader

.lr.ph551.preheader:                              ; preds = %iter.check1143, %vector.memcheck1025, %vec.epilog.iter.check1144, %vec.epilog.middle.block1252
  %.3550.ph = phi ptr [ %.1.lcssa, %iter.check1143 ], [ %.1.lcssa, %vector.memcheck1025 ], [ %i.ak, %vec.epilog.iter.check1144 ], [ %i.mc, %vec.epilog.middle.block1252 ]
  %.1394549.ph = phi i32 [ %.0393.lcssa, %iter.check1143 ], [ %.0393.lcssa, %vector.memcheck1025 ], [ %i.an, %vec.epilog.iter.check1144 ], [ %i.mf, %vec.epilog.middle.block1252 ]
  %.1396548.ph = phi ptr [ %.0395.lcssa, %iter.check1143 ], [ %.0395.lcssa, %vector.memcheck1025 ], [ %i.ap, %vec.epilog.iter.check1144 ], [ %i.mh, %vec.epilog.middle.block1252 ]
  br label %.lr.ph551

.lr.ph538:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph538
  %.1537 = phi ptr [ %i.ahl, %.lr.ph538 ], [ %.0380554, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393536 = phi i32 [ %i.ahn, %.lr.ph538 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395535 = phi ptr [ %i.ahm, %.lr.ph538 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.xt = load <8 x float>, ptr %.0395535, align 1, !tbaa !41 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.0395535, i64 32
  %i.xv = load <8 x float>, ptr %i.xu, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.xt, <8 x float> %i.xv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %5 = shufflevector <8 x float> %i.xt, <8 x float> %i.xv, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.xw = load i32, ptr %i.n, align 4, !tbaa !37
  %i.xx = sitofp fast i32 %i.xw to float
  %i.xy = insertelement <8 x float> poison, float %i.xx, i64 0
  %i.xz = shufflevector <8 x float> %i.xy, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.ya = fmul fast <8 x float> %4, splat (float 5.000000e-01)
  %i.yb = fadd fast <8 x float> %i.ya, splat (float 5.000000e-01)
  %i.yc = fadd fast <8 x float> %i.xz, splat (float -1.000000e+00) ; 9 uses
  %i.yd = fmul fast <8 x float> %i.yc, %i.yb      ; 2 uses
  %i.ye = load i32, ptr %i.o, align 8, !tbaa !38
  %i.yf = sitofp fast i32 %i.ye to float
  %i.yg = insertelement <8 x float> poison, float %i.yf, i64 0
  %i.yh = shufflevector <8 x float> %i.yg, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.yi = fmul fast <8 x float> %5, splat (float 5.000000e-01)
  %i.yj = fadd fast <8 x float> %i.yi, splat (float 5.000000e-01)
  %i.yk = fadd fast <8 x float> %i.yh, splat (float -1.000000e+00) ; 9 uses
  %i.yl = fmul fast <8 x float> %i.yk, %i.yj      ; 2 uses
  %i.ym = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.yd, i32 1) ; 5 uses
  %i.yn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.yl, i32 1) ; 5 uses
  %i.yo = fadd fast <8 x float> %i.ym, splat (float -1.000000e+00)
  %i.yp = fadd fast <8 x float> %i.ym, splat (float 1.000000e+00)
  %i.yq = fadd fast <8 x float> %i.ym, splat (float 2.000000e+00)
  %i.yr = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.yo)
  %i.ys = fsub fast <8 x float> %i.yr, %i.yc
  %i.yt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ys)
  %i.yu = fsub fast <8 x float> %i.yc, %i.yt      ; 6 uses
  %i.yv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ym)
  %i.yw = fsub fast <8 x float> %i.yv, %i.yc
  %i.yx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.yw)
  %i.yy = fsub fast <8 x float> %i.yc, %i.yx      ; 6 uses
  %i.yz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.yp)
  %i.za = fsub fast <8 x float> %i.yz, %i.yc
  %i.zb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.za)
  %i.zc = fsub fast <8 x float> %i.yc, %i.zb      ; 6 uses
  %i.zd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.yq)
  %i.ze = fsub fast <8 x float> %i.zd, %i.yc
  %i.zf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ze)
  %i.zg = fsub fast <8 x float> %i.yc, %i.zf      ; 6 uses
  %i.zh = fcmp fast ogt <8 x float> %i.yu, splat (float -1.000000e+00)
  %i.zi = fcmp fast ogt <8 x float> %i.xz, %i.yu
  %i.zj = and <8 x i1> %i.zh, %i.zi               ; 4 uses
  %i.zk = fcmp fast ogt <8 x float> %i.yy, splat (float -1.000000e+00)
  %i.zl = fcmp fast ogt <8 x float> %i.xz, %i.yy
  %i.zm = and <8 x i1> %i.zk, %i.zl               ; 4 uses
  %i.zn = fcmp fast ogt <8 x float> %i.zc, splat (float -1.000000e+00)
  %i.zo = fcmp fast ogt <8 x float> %i.xz, %i.zc
  %i.zp = and <8 x i1> %i.zn, %i.zo               ; 4 uses
  %i.zq = fcmp fast ogt <8 x float> %i.zg, splat (float -1.000000e+00)
  %i.zr = fcmp fast ogt <8 x float> %i.xz, %i.zg
  %i.zs = and <8 x i1> %i.zq, %i.zr               ; 4 uses
  %i.zt = load i32, ptr %i.p, align 8, !tbaa !16
  %i.zu = sitofp fast i32 %i.zt to float
  %i.zv = insertelement <8 x float> poison, float %i.zu, i64 0
  %i.zw = shufflevector <8 x float> %i.zv, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.zx = fadd fast <8 x float> %i.yn, splat (float -1.000000e+00)
  %i.zy = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.zx)
  %i.zz = fsub fast <8 x float> %i.zy, %i.yk
  %i.aaa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.zz)
  %i.aab = fsub fast <8 x float> %i.yk, %i.aaa    ; 3 uses
  %i.aac = fcmp fast ogt <8 x float> %i.aab, splat (float -1.000000e+00)
  %i.aad = fcmp fast ogt <8 x float> %i.yh, %i.aab
  %i.aae = and <8 x i1> %i.aac, %i.aad            ; 4 uses
  %i.aaf = fmul fast <8 x float> %i.aab, %i.xz    ; 4 uses
  %i.aag = fadd fast <8 x float> %i.aaf, %i.yu
  %i.aah = fmul fast <8 x float> %i.zw, %i.aag
  %i.aai = fadd fast <8 x float> %i.aaf, %i.yy
  %i.aaj = fmul fast <8 x float> %i.zw, %i.aai
  %i.aak = fadd fast <8 x float> %i.aaf, %i.zc
  %i.aal = fmul fast <8 x float> %i.zw, %i.aak
  %i.aam = fadd fast <8 x float> %i.aaf, %i.zg
  %i.aan = fmul fast <8 x float> %i.zw, %i.aam
  %i.aao = and <8 x i1> %i.zj, %i.aae
  %i.aap = select <8 x i1> %i.aao, <8 x float> %i.aah, <8 x float> splat (float -1.000000e+00)
  %i.aaq = and <8 x i1> %i.zm, %i.aae
  %i.aar = select <8 x i1> %i.aaq, <8 x float> %i.aaj, <8 x float> splat (float -1.000000e+00)
  %i.aas = and <8 x i1> %i.zp, %i.aae
  %i.aat = select <8 x i1> %i.aas, <8 x float> %i.aal, <8 x float> splat (float -1.000000e+00)
  %i.aau = and <8 x i1> %i.zs, %i.aae
  %i.aav = select <8 x i1> %i.aau, <8 x float> %i.aan, <8 x float> splat (float -1.000000e+00)
  %i.aaw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aap) ; 2 uses
  %i.aax = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aar) ; 2 uses
  %i.aay = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aat) ; 2 uses
  %i.aaz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aav) ; 2 uses
  %i.aba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.yn)
  %i.abb = fsub fast <8 x float> %i.aba, %i.yk
  %i.abc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.abb)
  %i.abd = fsub fast <8 x float> %i.yk, %i.abc    ; 3 uses
  %i.abe = fcmp fast ogt <8 x float> %i.abd, splat (float -1.000000e+00)
  %i.abf = fcmp fast ogt <8 x float> %i.yh, %i.abd
  %i.abg = and <8 x i1> %i.abe, %i.abf            ; 4 uses
  %i.abh = fmul fast <8 x float> %i.abd, %i.xz    ; 4 uses
  %i.abi = fadd fast <8 x float> %i.abh, %i.yu
  %i.abj = fmul fast <8 x float> %i.zw, %i.abi
  %i.abk = fadd fast <8 x float> %i.abh, %i.yy
  %i.abl = fmul fast <8 x float> %i.zw, %i.abk
  %i.abm = fadd fast <8 x float> %i.abh, %i.zc
  %i.abn = fmul fast <8 x float> %i.zw, %i.abm
  %i.abo = fadd fast <8 x float> %i.abh, %i.zg
  %i.abp = fmul fast <8 x float> %i.zw, %i.abo
  %i.abq = and <8 x i1> %i.zj, %i.abg
  %i.abr = select <8 x i1> %i.abq, <8 x float> %i.abj, <8 x float> splat (float -1.000000e+00)
  %i.abs = and <8 x i1> %i.zm, %i.abg
  %i.abt = select <8 x i1> %i.abs, <8 x float> %i.abl, <8 x float> splat (float -1.000000e+00)
  %i.abu = and <8 x i1> %i.zp, %i.abg
  %i.abv = select <8 x i1> %i.abu, <8 x float> %i.abn, <8 x float> splat (float -1.000000e+00)
  %i.abw = and <8 x i1> %i.zs, %i.abg
  %i.abx = select <8 x i1> %i.abw, <8 x float> %i.abp, <8 x float> splat (float -1.000000e+00)
  %i.aby = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abr) ; 2 uses
  %i.abz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abt) ; 2 uses
  %i.aca = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abv) ; 2 uses
  %i.acb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abx) ; 2 uses
  %i.acc = fadd fast <8 x float> %i.yn, splat (float 1.000000e+00)
  %i.acd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.acc)
  %i.ace = fsub fast <8 x float> %i.acd, %i.yk
  %i.acf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ace)
  %i.acg = fsub fast <8 x float> %i.yk, %i.acf    ; 3 uses
  %i.ach = fcmp fast ogt <8 x float> %i.acg, splat (float -1.000000e+00)
  %i.aci = fcmp fast ogt <8 x float> %i.yh, %i.acg
  %i.acj = and <8 x i1> %i.ach, %i.aci            ; 4 uses
  %i.ack = fmul fast <8 x float> %i.acg, %i.xz    ; 4 uses
  %i.acl = fadd fast <8 x float> %i.ack, %i.yu
  %i.acm = fmul fast <8 x float> %i.zw, %i.acl
  %i.acn = fadd fast <8 x float> %i.ack, %i.yy
  %i.aco = fmul fast <8 x float> %i.zw, %i.acn
  %i.acp = fadd fast <8 x float> %i.ack, %i.zc
  %i.acq = fmul fast <8 x float> %i.zw, %i.acp
  %i.acr = fadd fast <8 x float> %i.ack, %i.zg
  %i.acs = fmul fast <8 x float> %i.zw, %i.acr
  %i.act = and <8 x i1> %i.zj, %i.acj
  %i.acu = select <8 x i1> %i.act, <8 x float> %i.acm, <8 x float> splat (float -1.000000e+00)
  %i.acv = and <8 x i1> %i.zm, %i.acj
  %i.acw = select <8 x i1> %i.acv, <8 x float> %i.aco, <8 x float> splat (float -1.000000e+00)
  %i.acx = and <8 x i1> %i.zp, %i.acj
  %i.acy = select <8 x i1> %i.acx, <8 x float> %i.acq, <8 x float> splat (float -1.000000e+00)
  %i.acz = and <8 x i1> %i.zs, %i.acj
  %i.ada = select <8 x i1> %i.acz, <8 x float> %i.acs, <8 x float> splat (float -1.000000e+00)
  %i.adb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acu) ; 2 uses
  %i.adc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acw) ; 2 uses
  %i.add = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acy) ; 2 uses
  %i.ade = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ada) ; 2 uses
  %i.adf = fadd fast <8 x float> %i.yn, splat (float 2.000000e+00)
  %i.adg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.adf)
  %i.adh = fsub fast <8 x float> %i.adg, %i.yk
  %i.adi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.adh)
  %i.adj = fsub fast <8 x float> %i.yk, %i.adi    ; 3 uses
  %i.adk = fcmp fast ogt <8 x float> %i.adj, splat (float -1.000000e+00)
  %i.adl = fcmp fast ogt <8 x float> %i.yh, %i.adj
  %i.adm = and <8 x i1> %i.adk, %i.adl            ; 4 uses
  %i.adn = fmul fast <8 x float> %i.adj, %i.xz    ; 4 uses
  %i.ado = fadd fast <8 x float> %i.adn, %i.yu
  %i.adp = fmul fast <8 x float> %i.zw, %i.ado
  %i.adq = fadd fast <8 x float> %i.adn, %i.yy
  %i.adr = fmul fast <8 x float> %i.zw, %i.adq
  %i.ads = fadd fast <8 x float> %i.adn, %i.zc
  %i.adt = fmul fast <8 x float> %i.zw, %i.ads
  %i.adu = fadd fast <8 x float> %i.adn, %i.zg
  %i.adv = fmul fast <8 x float> %i.zw, %i.adu
  %i.adw = and <8 x i1> %i.zj, %i.adm
  %i.adx = select <8 x i1> %i.adw, <8 x float> %i.adp, <8 x float> splat (float -1.000000e+00)
  %i.ady = and <8 x i1> %i.zm, %i.adm
  %i.adz = select <8 x i1> %i.ady, <8 x float> %i.adr, <8 x float> splat (float -1.000000e+00)
  %i.aea = and <8 x i1> %i.zp, %i.adm
  %i.aeb = select <8 x i1> %i.aea, <8 x float> %i.adt, <8 x float> splat (float -1.000000e+00)
  %i.aec = and <8 x i1> %i.zs, %i.adm
  %i.aed = select <8 x i1> %i.aec, <8 x float> %i.adv, <8 x float> splat (float -1.000000e+00)
  %i.aee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adx) ; 2 uses
  %i.aef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adz) ; 2 uses
  %i.aeg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aeb) ; 2 uses
  %i.aeh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aed) ; 2 uses
  %i.aei = fsub fast <8 x float> %i.yd, %i.ym     ; 2 uses
  %i.aej = fsub fast <8 x float> %i.yl, %i.yn     ; 2 uses
  %i.aek = shufflevector <8 x float> %i.aei, <8 x float> %i.aej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ael = shufflevector <8 x float> %i.aei, <8 x float> %i.aej, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aem = shufflevector <8 x i32> %i.aaw, <8 x i32> %i.aax, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aen = bitcast <8 x i32> %i.aem to <8 x float>
  %i.aeo = shufflevector <8 x i32> %i.aaw, <8 x i32> %i.aax, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aep = bitcast <8 x i32> %i.aeo to <8 x float>
  %i.aeq = shufflevector <8 x i32> %i.aay, <8 x i32> %i.aaz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aer = shufflevector <8 x i32> %i.aay, <8 x i32> %i.aaz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aes = shufflevector <8 x i32> %i.aby, <8 x i32> %i.abz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aet = shufflevector <8 x i32> %i.aby, <8 x i32> %i.abz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aeu = shufflevector <8 x i32> %i.aca, <8 x i32> %i.acb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aev = shufflevector <8 x i32> %i.aca, <8 x i32> %i.acb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aew = shufflevector <8 x i32> %i.adb, <8 x i32> %i.adc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aex = shufflevector <8 x i32> %i.adb, <8 x i32> %i.adc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aey = shufflevector <8 x i32> %i.add, <8 x i32> %i.ade, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aez = shufflevector <8 x i32> %i.add, <8 x i32> %i.ade, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afa = shufflevector <8 x i32> %i.aee, <8 x i32> %i.aef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afb = shufflevector <8 x i32> %i.aee, <8 x i32> %i.aef, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.afc = shufflevector <8 x i32> %i.aeg, <8 x i32> %i.aeh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.afd = bitcast <8 x i32> %i.afc to <8 x float>
  %i.afe = shufflevector <8 x i32> %i.aeg, <8 x i32> %i.aeh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aff = bitcast <8 x i32> %i.afe to <8 x float>
  %i.afg = shufflevector <8 x float> %i.aek, <8 x float> %i.aen, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.afh = shufflevector <8 x i32> %i.aeq, <8 x i32> %i.aes, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.afi = bitcast <8 x i32> %i.afh to <8 x float> ; 2 uses
  %i.afj = shufflevector <8 x i32> %i.aeu, <8 x i32> %i.aew, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.afk = shufflevector <8 x i32> %i.aey, <8 x i32> %i.afa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.afl = shufflevector <8 x float> %i.afd, <8 x float> %i.aek, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.afm = shufflevector <8 x i32> %i.aem, <8 x i32> %i.aeq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.afn = bitcast <8 x i32> %i.afm to <8 x float> ; 2 uses
  %i.afo = shufflevector <8 x i32> %i.aes, <8 x i32> %i.aeu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.afp = shufflevector <8 x i32> %i.aew, <8 x i32> %i.aey, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.afq = shufflevector <8 x i32> %i.afa, <8 x i32> %i.afc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.afr = bitcast <8 x i32> %i.afq to <8 x float> ; 2 uses
  %i.afs = shufflevector <8 x float> %i.ael, <8 x float> %i.aep, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aft = shufflevector <8 x i32> %i.aer, <8 x i32> %i.aet, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.afu = shufflevector <8 x i32> %i.aev, <8 x i32> %i.aex, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.afv = shufflevector <8 x i32> %i.aez, <8 x i32> %i.afb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.afw = bitcast <8 x i32> %i.afv to <8 x float> ; 2 uses
  %i.afx = shufflevector <8 x float> %i.aff, <8 x float> %i.ael, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.afy = shufflevector <8 x i32> %i.aeo, <8 x i32> %i.aer, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.afz = shufflevector <8 x i32> %i.aet, <8 x i32> %i.aev, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aga = shufflevector <8 x i32> %i.aex, <8 x i32> %i.aez, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
end_hunk_17
