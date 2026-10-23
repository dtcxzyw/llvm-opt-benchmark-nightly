Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/subtract_black?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6LibRaw23subtract_black_internalEv:bb.a
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert149 = insertelement <8 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %broadcast.splat150 = shufflevector <8 x i32> %broadcast.splatinsert149, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat152 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat154 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi155 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8) ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  %wide.vec = load <32 x i16>, ptr %i.ay, align 2, !tbaa !101, !alias.scope !102, !noalias !103 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec156 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec157 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec158 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec159 = load <32 x i16>, ptr %i.ba, align 2, !tbaa !101, !alias.scope !102, !noalias !103 ; 4 uses
  %strided.vec160 = shufflevector <32 x i16> %wide.vec159, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec161 = shufflevector <32 x i16> %wide.vec159, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec162 = shufflevector <32 x i16> %wide.vec159, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec163 = shufflevector <32 x i16> %wide.vec159, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bb = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bc = zext <8 x i16> %strided.vec160 to <8 x i32>
  %vec.ind.frozen = freeze <8 x i32> %vec.ind     ; 2 uses
  %.frozen = freeze <8 x i32> %i.au               ; 2 uses
  %i.bd = udiv <8 x i32> %vec.ind.frozen, %.frozen ; 2 uses
  %step.add.frozen = freeze <8 x i32> %step.add   ; 2 uses
  %.frozen373 = freeze <8 x i32> %i.au            ; 2 uses
  %i.be = udiv <8 x i32> %step.add.frozen, %.frozen373 ; 2 uses
  %i.bf = urem <8 x i32> %i.bd, %broadcast.splat144
  %i.bg = urem <8 x i32> %i.be, %broadcast.splat144
  %i.bh = mul <8 x i32> %i.bf, %broadcast.splat146
  %i.bi = mul <8 x i32> %i.bg, %broadcast.splat146
  %i.bj = add <8 x i32> %i.bh, splat (i32 6)
  %i.bk = add <8 x i32> %i.bi, splat (i32 6)
  %i.bl = mul <8 x i32> %i.bd, %.frozen
  %.decomposed = sub <8 x i32> %vec.ind.frozen, %i.bl
  %i.bm = mul <8 x i32> %i.be, %.frozen373
  %.decomposed374 = sub <8 x i32> %step.add.frozen, %i.bm
  %i.bn = urem <8 x i32> %.decomposed, %broadcast.splat146
  %i.bo = urem <8 x i32> %.decomposed374, %broadcast.splat146
  %i.bp = add <8 x i32> %i.bj, %i.bn
  %i.bq = add <8 x i32> %i.bk, %i.bo
  %i.br = zext <8 x i32> %i.bp to <8 x i64>
  %i.bs = zext <8 x i32> %i.bq to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.br
  %wide.gep164 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.bs
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %wide.masked.gather165 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep164, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %i.bt = add <8 x i32> %wide.masked.gather, %broadcast.splat148
  %i.bu = add <8 x i32> %wide.masked.gather165, %broadcast.splat148
  %i.bv = sub <8 x i32> %i.bb, %i.bt              ; 2 uses
  %i.bw = sub <8 x i32> %i.bc, %i.bu              ; 2 uses
  %i.bx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.bv)
  %i.by = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi155, <8 x i32> %i.bw)
  %i.bz = zext <8 x i16> %strided.vec156 to <8 x i32>
  %i.ca = zext <8 x i16> %strided.vec161 to <8 x i32>
  %vec.ind.frozen375 = freeze <8 x i32> %vec.ind  ; 2 uses
  %.frozen376 = freeze <8 x i32> %i.av            ; 2 uses
  %i.cb = udiv <8 x i32> %vec.ind.frozen375, %.frozen376 ; 2 uses
  %step.add.frozen378 = freeze <8 x i32> %step.add ; 2 uses
  %.frozen379 = freeze <8 x i32> %i.av            ; 2 uses
  %i.cc = udiv <8 x i32> %step.add.frozen378, %.frozen379 ; 2 uses
  %i.cd = urem <8 x i32> %i.cb, %broadcast.splat144
  %i.ce = urem <8 x i32> %i.cc, %broadcast.splat144
  %i.cf = mul <8 x i32> %i.cd, %broadcast.splat146
  %i.cg = mul <8 x i32> %i.ce, %broadcast.splat146
  %i.ch = add <8 x i32> %i.cf, splat (i32 6)
  %i.ci = add <8 x i32> %i.cg, splat (i32 6)
  %i.cj = mul <8 x i32> %i.cb, %.frozen376
  %.decomposed377 = sub <8 x i32> %vec.ind.frozen375, %i.cj
  %i.ck = mul <8 x i32> %i.cc, %.frozen379
  %.decomposed380 = sub <8 x i32> %step.add.frozen378, %i.ck
  %i.cl = urem <8 x i32> %.decomposed377, %broadcast.splat146
  %i.cm = urem <8 x i32> %.decomposed380, %broadcast.splat146
  %i.cn = add <8 x i32> %i.ch, %i.cl
  %i.co = add <8 x i32> %i.ci, %i.cm
  %i.cp = zext <8 x i32> %i.cn to <8 x i64>
  %i.cq = zext <8 x i32> %i.co to <8 x i64>
  %wide.gep166 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.cp
  %wide.gep167 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.cq
  %wide.masked.gather168 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep166, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %wide.masked.gather169 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep167, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %i.cr = add <8 x i32> %wide.masked.gather168, %broadcast.splat150
  %i.cs = add <8 x i32> %wide.masked.gather169, %broadcast.splat150
  %i.ct = sub <8 x i32> %i.bz, %i.cr              ; 2 uses
  %i.cu = sub <8 x i32> %i.ca, %i.cs              ; 2 uses
  %i.cv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bx, <8 x i32> %i.ct)
  %i.cw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.by, <8 x i32> %i.cu)
  %i.cx = zext <8 x i16> %strided.vec157 to <8 x i32>
  %i.cy = zext <8 x i16> %strided.vec162 to <8 x i32>
  %vec.ind.frozen381 = freeze <8 x i32> %vec.ind  ; 2 uses
  %.frozen382 = freeze <8 x i32> %i.aw            ; 2 uses
  %i.cz = udiv <8 x i32> %vec.ind.frozen381, %.frozen382 ; 2 uses
  %step.add.frozen384 = freeze <8 x i32> %step.add ; 2 uses
  %.frozen385 = freeze <8 x i32> %i.aw            ; 2 uses
  %i.da = udiv <8 x i32> %step.add.frozen384, %.frozen385 ; 2 uses
  %i.db = urem <8 x i32> %i.cz, %broadcast.splat144
  %i.dc = urem <8 x i32> %i.da, %broadcast.splat144
  %i.dd = mul <8 x i32> %i.db, %broadcast.splat146
  %i.de = mul <8 x i32> %i.dc, %broadcast.splat146
  %i.df = add <8 x i32> %i.dd, splat (i32 6)
  %i.dg = add <8 x i32> %i.de, splat (i32 6)
  %i.dh = mul <8 x i32> %i.cz, %.frozen382
  %.decomposed383 = sub <8 x i32> %vec.ind.frozen381, %i.dh
  %i.di = mul <8 x i32> %i.da, %.frozen385
  %.decomposed386 = sub <8 x i32> %step.add.frozen384, %i.di
  %i.dj = urem <8 x i32> %.decomposed383, %broadcast.splat146
  %i.dk = urem <8 x i32> %.decomposed386, %broadcast.splat146
  %i.dl = add <8 x i32> %i.df, %i.dj
  %i.dm = add <8 x i32> %i.dg, %i.dk
  %i.dn = zext <8 x i32> %i.dl to <8 x i64>
  %i.do = zext <8 x i32> %i.dm to <8 x i64>
  %wide.gep170 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.dn
  %wide.gep171 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.do
  %wide.masked.gather172 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep170, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %wide.masked.gather173 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep171, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %i.dp = add <8 x i32> %wide.masked.gather172, %broadcast.splat152
  %i.dq = add <8 x i32> %wide.masked.gather173, %broadcast.splat152
  %i.dr = sub <8 x i32> %i.cx, %i.dp              ; 2 uses
  %i.ds = sub <8 x i32> %i.cy, %i.dq              ; 2 uses
  %i.dt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cv, <8 x i32> %i.dr)
  %i.du = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cw, <8 x i32> %i.ds)
  %i.dv = zext <8 x i16> %strided.vec158 to <8 x i32>
  %i.dw = zext <8 x i16> %strided.vec163 to <8 x i32>
  %vec.ind.frozen387 = freeze <8 x i32> %vec.ind  ; 2 uses
  %.frozen388 = freeze <8 x i32> %i.ax            ; 2 uses
  %i.dx = udiv <8 x i32> %vec.ind.frozen387, %.frozen388 ; 2 uses
  %step.add.frozen390 = freeze <8 x i32> %step.add ; 2 uses
  %.frozen391 = freeze <8 x i32> %i.ax            ; 2 uses
  %i.dy = udiv <8 x i32> %step.add.frozen390, %.frozen391 ; 2 uses
  %i.dz = urem <8 x i32> %i.dx, %broadcast.splat144
  %i.ea = urem <8 x i32> %i.dy, %broadcast.splat144
  %i.eb = mul <8 x i32> %i.dz, %broadcast.splat146
  %i.ec = mul <8 x i32> %i.ea, %broadcast.splat146
  %i.ed = add <8 x i32> %i.eb, splat (i32 6)
  %i.ee = add <8 x i32> %i.ec, splat (i32 6)
  %i.ef = mul <8 x i32> %i.dx, %.frozen388
  %.decomposed389 = sub <8 x i32> %vec.ind.frozen387, %i.ef
  %i.eg = mul <8 x i32> %i.dy, %.frozen391
  %.decomposed392 = sub <8 x i32> %step.add.frozen390, %i.eg
  %i.eh = urem <8 x i32> %.decomposed389, %broadcast.splat146
  %i.ei = urem <8 x i32> %.decomposed392, %broadcast.splat146
  %i.ej = add <8 x i32> %i.ed, %i.eh
  %i.ek = add <8 x i32> %i.ee, %i.ei
  %i.el = zext <8 x i32> %i.ej to <8 x i64>
  %i.em = zext <8 x i32> %i.ek to <8 x i64>
  %wide.gep174 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.el
  %wide.gep175 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <8 x i64> %i.em
  %wide.masked.gather176 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %wide.masked.gather177 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep175, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !95
  %i.en = add <8 x i32> %wide.masked.gather176, %broadcast.splat154
  %i.eo = add <8 x i32> %wide.masked.gather177, %broadcast.splat154
  %i.ep = sub <8 x i32> %i.dv, %i.en              ; 2 uses
  %i.eq = sub <8 x i32> %i.dw, %i.eo              ; 2 uses
  %i.er = shufflevector <8 x i32> %i.bv, <8 x i32> %i.ct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.er, <16 x i32> zeroinitializer)
  %i.et = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.es, <16 x i32> splat (i32 65535))
  %i.eu = trunc nuw <16 x i32> %i.et to <16 x i16>
  %i.ev = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ew = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ev, <16 x i32> zeroinitializer)
  %i.ex = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ew, <16 x i32> splat (i32 65535))
  %i.ey = trunc nuw <16 x i32> %i.ex to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.eu, <16 x i16> %i.ey, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.ay, align 2, !tbaa !101, !alias.scope !102, !noalias !103
  %i.ez = shufflevector <8 x i32> %i.bw, <8 x i32> %i.cu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fa = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ez, <16 x i32> zeroinitializer)
  %i.fb = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fa, <16 x i32> splat (i32 65535))
  %i.fc = trunc nuw <16 x i32> %i.fb to <16 x i16>
  %i.fd = shufflevector <8 x i32> %i.ds, <8 x i32> %i.eq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fe = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fd, <16 x i32> zeroinitializer)
  %i.ff = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fe, <16 x i32> splat (i32 65535))
  %i.fg = trunc nuw <16 x i32> %i.ff to <16 x i16>
  %interleaved.vec178 = shufflevector <16 x i16> %i.fc, <16 x i16> %i.fg, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec178, ptr %i.ba, align 2, !tbaa !101, !alias.scope !102, !noalias !103
  %i.fh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dt, <8 x i32> %i.ep) ; 2 uses
  %i.fi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.du, <8 x i32> %i.eq) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 16)
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fh, <8 x i32> %i.fi)
  %i.fk = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.preheader86.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.fk, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec179 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %i.fl = load <1 x i16>, ptr %i.z, align 2       ; 2 uses
  %broadcast.splat181 = shufflevector <1 x i16> %i.fl, <1 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fm = zext <4 x i16> %broadcast.splat181 to <4 x i32>
  %i.fn = zext <4 x i16> %broadcast.splat181 to <4 x i32>
  %broadcast.splat185 = shufflevector <1 x i16> %i.fl, <1 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fo = zext <4 x i16> %broadcast.splat185 to <4 x i32>
  %i.fp = zext <4 x i16> %broadcast.splat185 to <4 x i32>
  %broadcast.splatinsert188 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat189 = shufflevector <4 x i32> %broadcast.splatinsert188, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat197 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat199 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fq = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %i.fq, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat203, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index204 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next221, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi205 = phi <4 x i32> [ %broadcast.splat204, %vec.epilog.ph ], [ %i.hs, %vec.epilog.vector.body ]
  %vec.ind206 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next222, %vec.epilog.vector.body ] ; 5 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index204 ; 2 uses
  %wide.vec207 = load <16 x i16>, ptr %i.fr, align 2, !tbaa !101, !alias.scope !102, !noalias !103 ; 4 uses
  %strided.vec208 = shufflevector <16 x i16> %wide.vec207, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec209 = shufflevector <16 x i16> %wide.vec207, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec210 = shufflevector <16 x i16> %wide.vec207, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec211 = shufflevector <16 x i16> %wide.vec207, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fs = zext <4 x i16> %strided.vec208 to <4 x i32>
  %vec.ind206.frozen = freeze <4 x i32> %vec.ind206 ; 2 uses
  %.frozen393 = freeze <4 x i32> %i.fm            ; 2 uses
  %i.ft = udiv <4 x i32> %vec.ind206.frozen, %.frozen393 ; 2 uses
  %i.fu = urem <4 x i32> %i.ft, %broadcast.splat189
  %i.fv = mul <4 x i32> %i.fu, %broadcast.splat191
  %i.fw = add <4 x i32> %i.fv, splat (i32 6)
  %i.fx = mul <4 x i32> %i.ft, %.frozen393
  %.decomposed394 = sub <4 x i32> %vec.ind206.frozen, %i.fx
  %i.fy = urem <4 x i32> %.decomposed394, %broadcast.splat191
  %i.fz = add <4 x i32> %i.fw, %i.fy
  %i.ga = zext <4 x i32> %i.fz to <4 x i64>
  %wide.gep212 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <4 x i64> %i.ga
  %wide.masked.gather213 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep212, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !95
  %i.gb = add <4 x i32> %wide.masked.gather213, %broadcast.splat193
  %i.gc = sub <4 x i32> %i.fs, %i.gb              ; 2 uses
  %i.gd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi205, <4 x i32> %i.gc)
  %i.ge = zext <4 x i16> %strided.vec209 to <4 x i32>
  %vec.ind206.frozen395 = freeze <4 x i32> %vec.ind206 ; 2 uses
  %.frozen396 = freeze <4 x i32> %i.fn            ; 2 uses
  %i.gf = udiv <4 x i32> %vec.ind206.frozen395, %.frozen396 ; 2 uses
  %i.gg = urem <4 x i32> %i.gf, %broadcast.splat189
  %i.gh = mul <4 x i32> %i.gg, %broadcast.splat191
  %i.gi = add <4 x i32> %i.gh, splat (i32 6)
  %i.gj = mul <4 x i32> %i.gf, %.frozen396
  %.decomposed397 = sub <4 x i32> %vec.ind206.frozen395, %i.gj
  %i.gk = urem <4 x i32> %.decomposed397, %broadcast.splat191
  %i.gl = add <4 x i32> %i.gi, %i.gk
  %i.gm = zext <4 x i32> %i.gl to <4 x i64>
  %wide.gep214 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <4 x i64> %i.gm
  %wide.masked.gather215 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep214, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !95
  %i.gn = add <4 x i32> %wide.masked.gather215, %broadcast.splat195
  %i.go = sub <4 x i32> %i.ge, %i.gn              ; 2 uses
  %i.gp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gd, <4 x i32> %i.go)
  %i.gq = zext <4 x i16> %strided.vec210 to <4 x i32>
  %vec.ind206.frozen398 = freeze <4 x i32> %vec.ind206 ; 2 uses
  %.frozen399 = freeze <4 x i32> %i.fo            ; 2 uses
  %i.gr = udiv <4 x i32> %vec.ind206.frozen398, %.frozen399 ; 2 uses
  %i.gs = urem <4 x i32> %i.gr, %broadcast.splat189
  %i.gt = mul <4 x i32> %i.gs, %broadcast.splat191
  %i.gu = add <4 x i32> %i.gt, splat (i32 6)
  %i.gv = mul <4 x i32> %i.gr, %.frozen399
  %.decomposed400 = sub <4 x i32> %vec.ind206.frozen398, %i.gv
  %i.gw = urem <4 x i32> %.decomposed400, %broadcast.splat191
  %i.gx = add <4 x i32> %i.gu, %i.gw
  %i.gy = zext <4 x i32> %i.gx to <4 x i64>
  %wide.gep216 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <4 x i64> %i.gy
  %wide.masked.gather217 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep216, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !95
  %i.gz = add <4 x i32> %wide.masked.gather217, %broadcast.splat197
  %i.ha = sub <4 x i32> %i.gq, %i.gz              ; 2 uses
  %i.hb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gp, <4 x i32> %i.ha)
  %i.hc = zext <4 x i16> %strided.vec211 to <4 x i32>
  %vec.ind206.frozen401 = freeze <4 x i32> %vec.ind206 ; 2 uses
  %.frozen402 = freeze <4 x i32> %i.fp            ; 2 uses
  %i.hd = udiv <4 x i32> %vec.ind206.frozen401, %.frozen402 ; 2 uses
  %i.he = urem <4 x i32> %i.hd, %broadcast.splat189
  %i.hf = mul <4 x i32> %i.he, %broadcast.splat191
  %i.hg = add <4 x i32> %i.hf, splat (i32 6)
  %i.hh = mul <4 x i32> %i.hd, %.frozen402
  %.decomposed403 = sub <4 x i32> %vec.ind206.frozen401, %i.hh
  %i.hi = urem <4 x i32> %.decomposed403, %broadcast.splat191
  %i.hj = add <4 x i32> %i.hg, %i.hi
  %i.hk = zext <4 x i32> %i.hj to <4 x i64>
  %wide.gep218 = getelementptr inbounds nuw [4 x i8], ptr %i.j, <4 x i64> %i.hk
  %wide.masked.gather219 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep218, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !95
  %i.hl = add <4 x i32> %wide.masked.gather219, %broadcast.splat199
  %i.hm = sub <4 x i32> %i.hc, %i.hl              ; 2 uses
  %i.hn = shufflevector <4 x i32> %i.gc, <4 x i32> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ho = shufflevector <4 x i32> %i.ha, <4 x i32> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hp = shufflevector <8 x i32> %i.hn, <8 x i32> %i.ho, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.hq = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hp, <16 x i32> zeroinitializer)
  %i.hr = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.hq, <16 x i32> splat (i32 65535))
  %interleaved.vec220 = trunc nuw <16 x i32> %i.hr to <16 x i16>
  store <16 x i16> %interleaved.vec220, ptr %i.fr, align 2, !tbaa !101, !alias.scope !102, !noalias !103
  %i.hs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hb, <4 x i32> %i.hm) ; 2 uses
  %index.next221 = add nuw i64 %index204, 4       ; 2 uses
  %vec.ind.next222 = add <4 x i32> %vec.ind206, splat (i32 4)
  %i.ht = icmp eq i64 %index.next221, %n.vec179
  br i1 %i.ht, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hu = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.hs) ; 2 uses
  %cmp.n223 = icmp eq i64 %n.vec179, %wide.trip.count
  br i1 %cmp.n223, label %.loopexit, label %.preheader86.preheader

.preheader86.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec179, %vec.epilog.middle.block ]
  %.06392.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.fk, %vec.epilog.iter.check ], [ %i.hu, %vec.epilog.middle.block ]
  br label %.preheader86

.preheader86:                                     ; preds = %.preheader86.preheader, %.preheader86
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader86 ], [ %indvars.iv.ph, %.preheader86.preheader ] ; 3 uses
  %.06392 = phi i32 [ %spec.select.3, %.preheader86 ], [ %.06392.ph, %.preheader86.preheader ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv ; 5 uses
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !101
  %i.hx = zext i16 %i.hw to i32
  %i.hy = load i16, ptr %i.z, align 2, !tbaa !97
  %i.hz = zext i16 %i.hy to i32                   ; 2 uses
  %i.ia = trunc nuw nsw i64 %indvars.iv to i32    ; 8 uses
  %i.ib = udiv i32 %i.ia, %i.hz
  %i.ic = urem i32 %i.ib, %i.ae
  %i.id = mul i32 %i.ic, %i.an
  %i.ie = add i32 %i.id, 6
  %i.if = urem i32 %i.ia, %i.hz
  %i.ig = urem i32 %i.if, %i.an
  %i.ih = add i32 %i.ie, %i.ig
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !95
  %i.il = add i32 %i.ik, %i.k
  %i.im = sub i32 %i.hx, %i.il                    ; 2 uses
  %i.in = tail call i32 @llvm.smax.i32(i32 %i.im, i32 0)
  %i.io = tail call i32 @llvm.umin.i32(i32 %i.in, i32 65535)
  %i.ip = trunc nuw i32 %i.io to i16
  store i16 %i.ip, ptr %i.hv, align 2, !tbaa !101
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.06392, i32 %i.im)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hv, i64 2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !101
  %i.is = zext i16 %i.ir to i32
  %i.it = load i16, ptr %i.z, align 2, !tbaa !97
  %i.iu = zext i16 %i.it to i32                   ; 2 uses
  %i.iv = udiv i32 %i.ia, %i.iu
  %i.iw = urem i32 %i.iv, %i.ae
  %i.ix = mul i32 %i.iw, %i.an
  %i.iy = add i32 %i.ix, 6
  %i.iz = urem i32 %i.ia, %i.iu
  %i.ja = urem i32 %i.iz, %i.an
  %i.jb = add i32 %i.iy, %i.ja
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !95
  %i.jf = add i32 %i.je, %.sroa.5.0.copyload
  %i.jg = sub i32 %i.is, %i.jf                    ; 2 uses
  %i.jh = tail call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %i.ji = tail call i32 @llvm.umin.i32(i32 %i.jh, i32 65535)
  %i.jj = trunc nuw i32 %i.ji to i16
  store i16 %i.jj, ptr %i.iq, align 2, !tbaa !101
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.jg)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hv, i64 4 ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !101
  %i.jm = zext i16 %i.jl to i32
  %i.jn = load i16, ptr %i.z, align 2, !tbaa !97
  %i.jo = zext i16 %i.jn to i32                   ; 2 uses
  %i.jp = udiv i32 %i.ia, %i.jo
  %i.jq = urem i32 %i.jp, %i.ae
  %i.jr = mul i32 %i.jq, %i.an
  %i.js = add i32 %i.jr, 6
  %i.jt = urem i32 %i.ia, %i.jo
  %i.ju = urem i32 %i.jt, %i.an
  %i.jv = add i32 %i.js, %i.ju
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !95
  %i.jz = add i32 %i.jy, %.sroa.7.0.copyload
  %i.ka = sub i32 %i.jm, %i.jz                    ; 2 uses
  %i.kb = tail call i32 @llvm.smax.i32(i32 %i.ka, i32 0)
  %i.kc = tail call i32 @llvm.umin.i32(i32 %i.kb, i32 65535)
  %i.kd = trunc nuw i32 %i.kc to i16
  store i16 %i.kd, ptr %i.jk, align 2, !tbaa !101
  %spec.select.2 = tail call i32 @llvm.smax.i32(i32 %spec.select.1, i32 %i.ka)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hv, i64 6 ; 2 uses
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !101
  %i.kg = zext i16 %i.kf to i32
  %i.kh = load i16, ptr %i.z, align 2, !tbaa !97
  %i.ki = zext i16 %i.kh to i32                   ; 2 uses
  %i.kj = udiv i32 %i.ia, %i.ki
  %i.kk = urem i32 %i.kj, %i.ae
  %i.kl = mul i32 %i.kk, %i.an
  %i.km = add i32 %i.kl, 6
  %i.kn = urem i32 %i.ia, %i.ki
  %i.ko = urem i32 %i.kn, %i.an
  %i.kp = add i32 %i.km, %i.ko
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !95
  %i.kt = add i32 %i.ks, %.sroa.9.0.copyload
  %i.ku = sub i32 %i.kg, %i.kt                    ; 2 uses
  %i.kv = tail call i32 @llvm.smax.i32(i32 %i.ku, i32 0)
  %i.kw = tail call i32 @llvm.umin.i32(i32 %i.kv, i32 65535)
  %i.kx = trunc nuw i32 %i.kw to i16
  store i16 %i.kx, ptr %i.ke, align 2, !tbaa !101
  %spec.select.3 = tail call i32 @llvm.smax.i32(i32 %spec.select.2, i32 %i.ku) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader86, !llvm.loop !17

bb.l:                                             ; preds = %bb.k, %._crit_edge127
  %.not103 = icmp eq i32 %i.ac, 0
  br i1 %.not103, label %.loopexit, label %iter.check276

iter.check276:                                    ; preds = %bb.l
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !100 ; 6 uses
  %wide.trip.count116 = zext i32 %i.ac to i64     ; 6 uses
  %min.iters.check225 = icmp ult i32 %i.ac, 8
  br i1 %min.iters.check225, label %.preheader.preheader, label %vector.main.loop.iter.check226

vector.main.loop.iter.check226:                   ; preds = %iter.check276
  %min.iters.check227 = icmp ult i32 %i.ac, 32
  br i1 %min.iters.check227, label %vec.epilog.ph280, label %vector.ph228

vector.ph228:                                     ; preds = %vector.main.loop.iter.check226
  %i.kz = and i64 %wide.trip.count116, 24
  %n.vec229 = and i64 %wide.trip.count116, 4294967264 ; 4 uses
  %broadcast.splatinsert230 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat231 = shufflevector <8 x i32> %broadcast.splatinsert230, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert232 = insertelement <8 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %broadcast.splat233 = shufflevector <8 x i32> %broadcast.splatinsert232, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat235 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat237 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  br label %vector.body238

vector.body238:                                   ; preds = %vector.ph228, %vector.body238
  %index239 = phi i64 [ 0, %vector.ph228 ], [ %index.next268, %vector.body238 ] ; 5 uses
  %vec.phi240 = phi <8 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.of, %vector.body238 ]
  %vec.phi241 = phi <8 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.og, %vector.body238 ]
  %vec.phi242 = phi <8 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.oh, %vector.body238 ]
  %vec.phi243 = phi <8 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.oi, %vector.body238 ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %index239 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %index239
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %index239
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 128 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %index239
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 192 ; 2 uses
  %wide.vec244 = load <32 x i16>, ptr %i.la, align 2, !tbaa !101 ; 4 uses
  %strided.vec245 = shufflevector <32 x i16> %wide.vec244, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec246 = shufflevector <32 x i16> %wide.vec244, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec247 = shufflevector <32 x i16> %wide.vec244, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec248 = shufflevector <32 x i16> %wide.vec244, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec249 = load <32 x i16>, ptr %i.lc, align 2, !tbaa !101 ; 4 uses
  %strided.vec250 = shufflevector <32 x i16> %wide.vec249, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec251 = shufflevector <32 x i16> %wide.vec249, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec252 = shufflevector <32 x i16> %wide.vec249, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec253 = shufflevector <32 x i16> %wide.vec249, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec254 = load <32 x i16>, ptr %i.le, align 2, !tbaa !101 ; 4 uses
  %strided.vec255 = shufflevector <32 x i16> %wide.vec254, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec256 = shufflevector <32 x i16> %wide.vec254, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec257 = shufflevector <32 x i16> %wide.vec254, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec258 = shufflevector <32 x i16> %wide.vec254, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec259 = load <32 x i16>, ptr %i.lg, align 2, !tbaa !101 ; 4 uses
  %strided.vec260 = shufflevector <32 x i16> %wide.vec259, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec261 = shufflevector <32 x i16> %wide.vec259, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec262 = shufflevector <32 x i16> %wide.vec259, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec263 = shufflevector <32 x i16> %wide.vec259, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.lh = zext <8 x i16> %strided.vec245 to <8 x i32>
  %i.li = zext <8 x i16> %strided.vec250 to <8 x i32>
  %i.lj = zext <8 x i16> %strided.vec255 to <8 x i32>
  %i.lk = zext <8 x i16> %strided.vec260 to <8 x i32>
  %i.ll = sub nsw <8 x i32> %i.lh, %broadcast.splat231 ; 2 uses
  %i.lm = sub nsw <8 x i32> %i.li, %broadcast.splat231 ; 2 uses
  %i.ln = sub nsw <8 x i32> %i.lj, %broadcast.splat231 ; 2 uses
  %i.lo = sub nsw <8 x i32> %i.lk, %broadcast.splat231 ; 2 uses
  %i.lp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi240, <8 x i32> %i.ll)
  %i.lq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi241, <8 x i32> %i.lm)
  %i.lr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi242, <8 x i32> %i.ln)
  %i.ls = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi243, <8 x i32> %i.lo)
  %i.lt = zext <8 x i16> %strided.vec246 to <8 x i32>
  %i.lu = zext <8 x i16> %strided.vec251 to <8 x i32>
  %i.lv = zext <8 x i16> %strided.vec256 to <8 x i32>
  %i.lw = zext <8 x i16> %strided.vec261 to <8 x i32>
  %i.lx = sub nsw <8 x i32> %i.lt, %broadcast.splat233 ; 2 uses
  %i.ly = sub nsw <8 x i32> %i.lu, %broadcast.splat233 ; 2 uses
  %i.lz = sub nsw <8 x i32> %i.lv, %broadcast.splat233 ; 2 uses
  %i.ma = sub nsw <8 x i32> %i.lw, %broadcast.splat233 ; 2 uses
  %i.mb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lp, <8 x i32> %i.lx)
  %i.mc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lq, <8 x i32> %i.ly)
  %i.md = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lr, <8 x i32> %i.lz)
  %i.me = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ls, <8 x i32> %i.ma)
  %i.mf = zext <8 x i16> %strided.vec247 to <8 x i32>
  %i.mg = zext <8 x i16> %strided.vec252 to <8 x i32>
  %i.mh = zext <8 x i16> %strided.vec257 to <8 x i32>
  %i.mi = zext <8 x i16> %strided.vec262 to <8 x i32>
  %i.mj = sub nsw <8 x i32> %i.mf, %broadcast.splat235 ; 2 uses
  %i.mk = sub nsw <8 x i32> %i.mg, %broadcast.splat235 ; 2 uses
  %i.ml = sub nsw <8 x i32> %i.mh, %broadcast.splat235 ; 2 uses
  %i.mm = sub nsw <8 x i32> %i.mi, %broadcast.splat235 ; 2 uses
  %i.mn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mb, <8 x i32> %i.mj)
  %i.mo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mc, <8 x i32> %i.mk)
  %i.mp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.md, <8 x i32> %i.ml)
  %i.mq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.me, <8 x i32> %i.mm)
  %i.mr = zext <8 x i16> %strided.vec248 to <8 x i32>
  %i.ms = zext <8 x i16> %strided.vec253 to <8 x i32>
  %i.mt = zext <8 x i16> %strided.vec258 to <8 x i32>
  %i.mu = zext <8 x i16> %strided.vec263 to <8 x i32>
  %i.mv = sub nsw <8 x i32> %i.mr, %broadcast.splat237 ; 2 uses
  %i.mw = sub nsw <8 x i32> %i.ms, %broadcast.splat237 ; 2 uses
  %i.mx = sub nsw <8 x i32> %i.mt, %broadcast.splat237 ; 2 uses
  %i.my = sub nsw <8 x i32> %i.mu, %broadcast.splat237 ; 2 uses
  %i.mz = shufflevector <8 x i32> %i.ll, <8 x i32> %i.lx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.na = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.mz, <16 x i32> zeroinitializer)
  %i.nb = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.na, <16 x i32> splat (i32 65535))
  %i.nc = trunc nuw <16 x i32> %i.nb to <16 x i16>
  %i.nd = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ne = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nd, <16 x i32> zeroinitializer)
  %i.nf = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ne, <16 x i32> splat (i32 65535))
  %i.ng = trunc nuw <16 x i32> %i.nf to <16 x i16>
  %interleaved.vec264 = shufflevector <16 x i16> %i.nc, <16 x i16> %i.ng, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec264, ptr %i.la, align 2, !tbaa !101
  %i.nh = shufflevector <8 x i32> %i.lm, <8 x i32> %i.ly, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ni = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nh, <16 x i32> zeroinitializer)
  %i.nj = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ni, <16 x i32> splat (i32 65535))
  %i.nk = trunc nuw <16 x i32> %i.nj to <16 x i16>
  %i.nl = shufflevector <8 x i32> %i.mk, <8 x i32> %i.mw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nm = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nl, <16 x i32> zeroinitializer)
  %i.nn = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.nm, <16 x i32> splat (i32 65535))
  %i.no = trunc nuw <16 x i32> %i.nn to <16 x i16>
  %interleaved.vec265 = shufflevector <16 x i16> %i.nk, <16 x i16> %i.no, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec265, ptr %i.lc, align 2, !tbaa !101
  %i.np = shufflevector <8 x i32> %i.ln, <8 x i32> %i.lz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nq = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.np, <16 x i32> zeroinitializer)
  %i.nr = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.nq, <16 x i32> splat (i32 65535))
  %i.ns = trunc nuw <16 x i32> %i.nr to <16 x i16>
  %i.nt = shufflevector <8 x i32> %i.ml, <8 x i32> %i.mx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nu = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nt, <16 x i32> zeroinitializer)
  %i.nv = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.nu, <16 x i32> splat (i32 65535))
  %i.nw = trunc nuw <16 x i32> %i.nv to <16 x i16>
  %interleaved.vec266 = shufflevector <16 x i16> %i.ns, <16 x i16> %i.nw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec266, ptr %i.le, align 2, !tbaa !101
  %i.nx = shufflevector <8 x i32> %i.lo, <8 x i32> %i.ma, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ny = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nx, <16 x i32> zeroinitializer)
  %i.nz = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ny, <16 x i32> splat (i32 65535))
  %i.oa = trunc nuw <16 x i32> %i.nz to <16 x i16>
  %i.ob = shufflevector <8 x i32> %i.mm, <8 x i32> %i.my, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ob, <16 x i32> zeroinitializer)
  %i.od = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.oc, <16 x i32> splat (i32 65535))
  %i.oe = trunc nuw <16 x i32> %i.od to <16 x i16>
  %interleaved.vec267 = shufflevector <16 x i16> %i.oa, <16 x i16> %i.oe, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec267, ptr %i.lg, align 2, !tbaa !101
  %i.of = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mn, <8 x i32> %i.mv) ; 2 uses
  %i.og = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mo, <8 x i32> %i.mw) ; 2 uses
  %i.oh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mp, <8 x i32> %i.mx) ; 2 uses
  %i.oi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mq, <8 x i32> %i.my) ; 2 uses
  %index.next268 = add nuw i64 %index239, 32      ; 2 uses
  %i.oj = icmp eq i64 %index.next268, %n.vec229
  br i1 %i.oj, label %middle.block269, label %vector.body238, !llvm.loop !18

middle.block269:                                  ; preds = %vector.body238
  %rdx.minmax270 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.of, <8 x i32> %i.og)
  %rdx.minmax271 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax270, <8 x i32> %i.oh)
  %rdx.minmax272 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax271, <8 x i32> %i.oi)
  %i.ok = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax272) ; 3 uses
  %cmp.n273 = icmp eq i64 %n.vec229, %wide.trip.count116
  br i1 %cmp.n273, label %.loopexit, label %vec.epilog.iter.check278

vec.epilog.iter.check278:                         ; preds = %middle.block269
  %min.epilog.iters.check279 = icmp eq i64 %i.kz, 0
  %slprdx.init345 = insertelement <4 x i32> <i32 poison, i32 -2147483648, i32 -2147483648, i32 -2147483648>, i32 %i.ok, i64 0
  br i1 %min.epilog.iters.check279, label %.preheader.preheader, label %vec.epilog.ph280, !prof !108

vec.epilog.ph280:                                 ; preds = %vector.main.loop.iter.check226, %vec.epilog.iter.check278
  %vec.epilog.resume.val274 = phi i64 [ %n.vec229, %vec.epilog.iter.check278 ], [ 0, %vector.main.loop.iter.check226 ]
  %bc.merge.rdx275 = phi i32 [ %i.ok, %vec.epilog.iter.check278 ], [ 0, %vector.main.loop.iter.check226 ]
  %broadcast.splatinsert292 = insertelement <8 x i32> poison, i32 %bc.merge.rdx275, i64 0
  %broadcast.splat293 = shufflevector <8 x i32> %broadcast.splatinsert292, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec281 = and i64 %wide.trip.count116, 4294967288 ; 3 uses
  %broadcast.splatinsert282 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat283 = shufflevector <8 x i32> %broadcast.splatinsert282, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert284 = insertelement <8 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %broadcast.splat285 = shufflevector <8 x i32> %broadcast.splatinsert284, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat287 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat289 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body292

vec.epilog.vector.body292:                        ; preds = %vec.epilog.vector.body292, %vec.epilog.ph280
  %index293 = phi i64 [ %vec.epilog.resume.val274, %vec.epilog.ph280 ], [ %index.next301, %vec.epilog.vector.body292 ] ; 2 uses
  %vec.phi294 = phi <8 x i32> [ %broadcast.splat293, %vec.epilog.ph280 ], [ %i.pf, %vec.epilog.vector.body292 ]
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %index293 ; 2 uses
  %wide.vec295 = load <32 x i16>, ptr %i.ol, align 2, !tbaa !101 ; 4 uses
  %strided.vec296 = shufflevector <32 x i16> %wide.vec295, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec297 = shufflevector <32 x i16> %wide.vec295, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec298 = shufflevector <32 x i16> %wide.vec295, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec299 = shufflevector <32 x i16> %wide.vec295, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.om = zext <8 x i16> %strided.vec296 to <8 x i32>
  %i.on = sub nsw <8 x i32> %i.om, %broadcast.splat283 ; 2 uses
  %i.oo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi294, <8 x i32> %i.on)
  %i.op = zext <8 x i16> %strided.vec297 to <8 x i32>
  %i.oq = sub nsw <8 x i32> %i.op, %broadcast.splat285 ; 2 uses
  %i.or = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oo, <8 x i32> %i.oq)
  %i.os = zext <8 x i16> %strided.vec298 to <8 x i32>
  %i.ot = sub nsw <8 x i32> %i.os, %broadcast.splat287 ; 2 uses
  %i.ou = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.or, <8 x i32> %i.ot)
  %i.ov = zext <8 x i16> %strided.vec299 to <8 x i32>
  %i.ow = sub nsw <8 x i32> %i.ov, %broadcast.splat289 ; 2 uses
  %i.ox = shufflevector <8 x i32> %i.on, <8 x i32> %i.oq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oy = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ox, <16 x i32> zeroinitializer)
  %i.oz = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.oy, <16 x i32> splat (i32 65535))
  %i.pa = trunc nuw <16 x i32> %i.oz to <16 x i16>
  %i.pb = shufflevector <8 x i32> %i.ot, <8 x i32> %i.ow, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pb, <16 x i32> zeroinitializer)
  %i.pd = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pc, <16 x i32> splat (i32 65535))
  %i.pe = trunc nuw <16 x i32> %i.pd to <16 x i16>
  %interleaved.vec300 = shufflevector <16 x i16> %i.pa, <16 x i16> %i.pe, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec300, ptr %i.ol, align 2, !tbaa !101
  %i.pf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ou, <8 x i32> %i.ow) ; 2 uses
  %index.next301 = add nuw i64 %index293, 8       ; 2 uses
  %i.pg = icmp eq i64 %index.next301, %n.vec281
  br i1 %i.pg, label %vec.epilog.middle.block302, label %vec.epilog.vector.body292, !llvm.loop !19

vec.epilog.middle.block302:                       ; preds = %vec.epilog.vector.body292
  %i.ph = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.pf) ; 2 uses
  %cmp.n303 = icmp eq i64 %n.vec281, %wide.trip.count116
  %slprdx.init = insertelement <4 x i32> <i32 poison, i32 -2147483648, i32 -2147483648, i32 -2147483648>, i32 %i.ph, i64 0
  br i1 %cmp.n303, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check276, %vec.epilog.iter.check278, %vec.epilog.middle.block302
  %indvars.iv113.ph = phi i64 [ 0, %iter.check276 ], [ %n.vec229, %vec.epilog.iter.check278 ], [ %n.vec281, %vec.epilog.middle.block302 ]
  %slprdx.acc.ph = phi <4 x i32> [ <i32 0, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %iter.check276 ], [ %slprdx.init345, %vec.epilog.iter.check278 ], [ %slprdx.init, %vec.epilog.middle.block302 ]
  %i.pi = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.pj = insertelement <4 x i32> %i.pi, i32 %i.k, i64 0
  %i.pk = insertelement <4 x i32> %i.pj, i32 %.sroa.5.0.copyload, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %.preheader ], [ %indvars.iv113.ph, %.preheader.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x i32> [ %i.ps, %.preheader ], [ %slprdx.acc.ph, %.preheader.preheader ]
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv113 ; 2 uses
  %i.pm = load <4 x i16>, ptr %i.pl, align 2, !tbaa !101
  %i.pn = zext <4 x i16> %i.pm to <4 x i32>
  %i.po = sub nsw <4 x i32> %i.pn, %i.pk          ; 2 uses
  %i.pp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.po, <4 x i32> zeroinitializer)
  %i.pq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pp, <4 x i32> splat (i32 65535))
  %i.pr = trunc nuw <4 x i32> %i.pq to <4 x i16>
  store <4 x i16> %i.pr, ptr %i.pl, align 2, !tbaa !101
  %i.ps = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %slprdx.acc, <4 x i32> %i.po) ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !20

.loopexit.loopexit:                               ; preds = %.preheader
  %i.pt = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ps)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader86, %.loopexit.loopexit, %middle.block, %vec.epilog.middle.block, %middle.block269, %vec.epilog.middle.block302, %.preheader87, %bb.l
  %slprdx.fromloop = phi i32 [ %i.pt, %.loopexit.loopexit ], [ 0, %bb.l ], [ 0, %.preheader87 ], [ %i.ph, %vec.epilog.middle.block302 ], [ %i.ok, %middle.block269 ], [ %i.hu, %vec.epilog.middle.block ], [ %i.fk, %middle.block ], [ %spec.select.3, %.preheader86 ]
  %i.pu = and i32 %slprdx.fromloop, 65535
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %i.pu, ptr %i.pv, align 4, !tbaa !109
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !110
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !111
  %i.qa = sub i32 %i.pz, %i.px
  store i32 %i.qa, ptr %i.py, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.j, i8 0, i64 16420, i1 false)
  br label %bb.w

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qd = load i16, ptr %i.qc, align 4, !tbaa !96
  %i.qe = zext i16 %i.qd to i32
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !97
  %i.qh = zext i16 %i.qg to i32
  %i.qi = shl nuw nsw i32 %i.qe, 2
  %i.qj = mul i32 %i.qi, %i.qh                    ; 4 uses
  %.not104 = icmp eq i32 %i.qj, 0
  br i1 %.not104, label %._crit_edge, label %iter.check328

iter.check328:                                    ; preds = %bb.m
  %wide.trip.count121 = zext i32 %i.qj to i64     ; 6 uses
  %min.iters.check306 = icmp ult i32 %i.qj, 8
  br i1 %min.iters.check306, label %.lr.ph.preheader, label %vector.main.loop.iter.check307

vector.main.loop.iter.check307:                   ; preds = %iter.check328
  %min.iters.check308 = icmp ult i32 %i.qj, 32
  br i1 %min.iters.check308, label %vec.epilog.ph332, label %vector.ph309

vector.ph309:                                     ; preds = %vector.main.loop.iter.check307
  %i.qk = and i64 %wide.trip.count121, 24
  %n.vec310 = and i64 %wide.trip.count121, 4294967264 ; 4 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.ph309, %vector.body311
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next320, %vector.body311 ] ; 2 uses
  %vec.phi313 = phi <8 x i32> [ zeroinitializer, %vector.ph309 ], [ %i.qt, %vector.body311 ]
  %vec.phi314 = phi <8 x i32> [ zeroinitializer, %vector.ph309 ], [ %i.qu, %vector.body311 ]
  %vec.phi315 = phi <8 x i32> [ zeroinitializer, %vector.ph309 ], [ %i.qv, %vector.body311 ]
  %vec.phi316 = phi <8 x i32> [ zeroinitializer, %vector.ph309 ], [ %i.qw, %vector.body311 ]
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %index312 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 48
  %wide.load = load <8 x i16>, ptr %i.ql, align 2, !tbaa !101
  %wide.load317 = load <8 x i16>, ptr %i.qm, align 2, !tbaa !101
  %wide.load318 = load <8 x i16>, ptr %i.qn, align 2, !tbaa !101
  %wide.load319 = load <8 x i16>, ptr %i.qo, align 2, !tbaa !101
  %i.qp = zext <8 x i16> %wide.load to <8 x i32>
  %i.qq = zext <8 x i16> %wide.load317 to <8 x i32>
  %i.qr = zext <8 x i16> %wide.load318 to <8 x i32>
  %i.qs = zext <8 x i16> %wide.load319 to <8 x i32>
  %i.qt = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi313, <8 x i32> %i.qp) ; 2 uses
  %i.qu = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi314, <8 x i32> %i.qq) ; 2 uses
  %i.qv = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi315, <8 x i32> %i.qr) ; 2 uses
  %i.qw = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi316, <8 x i32> %i.qs) ; 2 uses
  %index.next320 = add nuw i64 %index312, 32      ; 2 uses
  %i.qx = icmp eq i64 %index.next320, %n.vec310
  br i1 %i.qx, label %middle.block321, label %vector.body311, !llvm.loop !21

middle.block321:                                  ; preds = %vector.body311
  %rdx.minmax322 = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.qt, <8 x i32> %i.qu)
  %rdx.minmax323 = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %rdx.minmax322, <8 x i32> %i.qv)
  %rdx.minmax324 = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %rdx.minmax323, <8 x i32> %i.qw)
  %i.qy = tail call i32 @llvm.vector.reduce.umax.v8i32(<8 x i32> %rdx.minmax324) ; 3 uses
  %cmp.n325 = icmp eq i64 %n.vec310, %wide.trip.count121
  br i1 %cmp.n325, label %._crit_edge, label %vec.epilog.iter.check330

vec.epilog.iter.check330:                         ; preds = %middle.block321
  %min.epilog.iters.check331 = icmp eq i64 %i.qk, 0
  br i1 %min.epilog.iters.check331, label %.lr.ph.preheader, label %vec.epilog.ph332, !prof !108

vec.epilog.ph332:                                 ; preds = %vector.main.loop.iter.check307, %vec.epilog.iter.check330
  %vec.epilog.resume.val326 = phi i64 [ %n.vec310, %vec.epilog.iter.check330 ], [ 0, %vector.main.loop.iter.check307 ]
  %bc.merge.rdx327 = phi i32 [ %i.qy, %vec.epilog.iter.check330 ], [ 0, %vector.main.loop.iter.check307 ]
  %broadcast.splatinsert336 = insertelement <8 x i32> poison, i32 %bc.merge.rdx327, i64 0
  %broadcast.splat337 = shufflevector <8 x i32> %broadcast.splatinsert336, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec333 = and i64 %wide.trip.count121, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body336

vec.epilog.vector.body336:                        ; preds = %vec.epilog.vector.body336, %vec.epilog.ph332
  %index337 = phi i64 [ %vec.epilog.resume.val326, %vec.epilog.ph332 ], [ %index.next340, %vec.epilog.vector.body336 ] ; 2 uses
  %vec.phi338 = phi <8 x i32> [ %broadcast.splat337, %vec.epilog.ph332 ], [ %i.rb, %vec.epilog.vector.body336 ]
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %index337
  %wide.load339 = load <8 x i16>, ptr %i.qz, align 2, !tbaa !101
  %i.ra = zext <8 x i16> %wide.load339 to <8 x i32>
  %i.rb = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi338, <8 x i32> %i.ra) ; 2 uses
  %index.next340 = add nuw i64 %index337, 8       ; 2 uses
  %i.rc = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.rc, label %vec.epilog.middle.block341, label %vec.epilog.vector.body336, !llvm.loop !22

vec.epilog.middle.block341:                       ; preds = %vec.epilog.vector.body336
  %i.rd = tail call i32 @llvm.vector.reduce.umax.v8i32(<8 x i32> %i.rb) ; 2 uses
  %cmp.n342 = icmp eq i64 %n.vec333, %wide.trip.count121
  br i1 %cmp.n342, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check328, %vec.epilog.iter.check330, %vec.epilog.middle.block341
  %indvars.iv118.ph = phi i64 [ 0, %iter.check328 ], [ %n.vec310, %vec.epilog.iter.check330 ], [ %n.vec333, %vec.epilog.middle.block341 ]
  %.0100.ph = phi i32 [ 0, %iter.check328 ], [ %i.qy, %vec.epilog.iter.check330 ], [ %i.rd, %vec.epilog.middle.block341 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.lr.ph ], [ %indvars.iv118.ph, %.lr.ph.preheader ] ; 2 uses
  %.0100 = phi i32 [ %spec.select83, %.lr.ph ], [ %.0100.ph, %.lr.ph.preheader ]
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv118
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !101
  %i.rg = zext i16 %i.rf to i32
  %spec.select83 = tail call i32 @llvm.umax.i32(i32 %.0100, i32 %i.rg) ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %middle.block321, %vec.epilog.middle.block341, %bb.m
  %.0.lcssa = phi i32 [ 0, %bb.m ], [ %i.rd, %vec.epilog.middle.block341 ], [ %i.qy, %middle.block321 ], [ %spec.select83, %.lr.ph ]
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %.0.lcssa, ptr %i.rh, align 4, !tbaa !109
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.o:                                             ; preds = %.invoke, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %i.ri = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #6
  br label %bb.x

bb.p:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.q:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

.invoke:                                          ; preds = %bb.j, %bb.j, %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.r:                                             ; preds = %bb.j, %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.s:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.t:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.u:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.v:                                             ; preds = %.invoke, %bb.j, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %.068 = phi i32 [ -2, %bb.u ], [ -100011, %bb.t ], [ -100013, %bb.n ], [ -100007, %bb.p ], [ -100012, %bb.q ], [ -1, %bb.j ], [ -100008, %.invoke ], [ -100009, %bb.r ], [ -100010, %bb.s ]
  tail call void @__cxa_end_catch() #6
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %._crit_edge, %bb.a, %bb.v
  %.169 = phi i32 [ %.068, %bb.v ], [ -4, %bb.a ], [ 0, %._crit_edge ], [ 0, %.loopexit ]
  ret i32 %.169

bb.x:                                             ; preds = %bb.o, %bb.i
  %.merged = phi { ptr, i32 } [ %i.ri, %bb.o ], [ %i.af, %bb.i ]
  resume { ptr, i32 } %.merged
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw", file: !89, line: 188, size: 6148096, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS6LibRaw")
!12 = distinct !{!12, i1 false, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !104, !105, !106}
!16 = distinct !{!16, !104, !105, !106}
!17 = distinct !{!17, !104, !105}
!18 = distinct !{!18, !104, !105, !106}
!19 = distinct !{!19, !104, !105, !106}
!20 = distinct !{!20, !104, !106, !105}
!21 = distinct !{!21, !104, !105, !106}
!22 = distinct !{!22, !104, !105, !106}
!23 = distinct !{!23, !104, !106, !105}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"p1 short", !24, i64 0}
!26 = !{!"short", !7, i64 0}
!27 = !{!"double", !7, i64 0}
!28 = !{!"_ZTS20libraw_image_sizes_t", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6, !26, i64 8, !26, i64 10, !26, i64 12, !26, i64 14, !8, i64 16, !27, i64 24, !8, i64 32, !7, i64 36, !26, i64 164, !7, i64 166}
!29 = !{!"p1 omnipotent char", !24, i64 0}
!30 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !29, i64 432}
!31 = !{!"float", !7, i64 0}
!32 = !{!"_ZTS18libraw_nikonlens_t", !31, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!33 = !{!"_ZTS16libraw_dnglens_t", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12}
!34 = !{!"long long", !7, i64 0}
!35 = !{!"_ZTS24libraw_makernotes_lens_t", !34, i64 0, !7, i64 8, !26, i64 136, !26, i64 138, !34, i64 144, !26, i64 152, !26, i64 154, !7, i64 156, !26, i64 220, !7, i64 222, !7, i64 238, !31, i64 256, !31, i64 260, !31, i64 264, !31, i64 268, !31, i64 272, !31, i64 276, !31, i64 280, !31, i64 284, !31, i64 288, !31, i64 292, !31, i64 296, !31, i64 300, !31, i64 304, !31, i64 308, !31, i64 312, !34, i64 320, !7, i64 328, !34, i64 456, !7, i64 464, !34, i64 592, !7, i64 600, !26, i64 728, !31, i64 732}
!36 = !{!"_ZTS17libraw_lensinfo_t", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !26, i64 532, !32, i64 536, !33, i64 544, !35, i64 560}
!37 = !{!"_ZTS13libraw_area_t", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6}
!38 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !26, i64 52, !26, i64 54, !7, i64 56, !26, i64 58, !26, i64 60, !26, i64 62, !26, i64 64, !26, i64 66, !26, i64 68, !26, i64 70, !26, i64 72, !26, i64 74, !26, i64 76, !26, i64 78, !26, i64 80, !26, i64 82, !8, i64 84, !31, i64 88, !26, i64 92, !26, i64 94, !26, i64 96, !26, i64 98, !8, i64 100, !26, i64 104, !8, i64 108, !8, i64 112, !26, i64 116, !8, i64 120, !37, i64 124, !37, i64 132, !37, i64 140, !37, i64 148, !37, i64 156, !7, i64 164}
!39 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6}
!40 = !{!"_ZTS25libraw_nikon_makernotes_t", !27, i64 0, !26, i64 8, !26, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !26, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !26, i64 170, !39, i64 172, !26, i64 180, !26, i64 182, !26, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !29, i64 256, !26, i64 264, !26, i64 266, !7, i64 268, !26, i64 270, !27, i64 272, !27, i64 280, !27, i64 288}
!41 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !27, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!42 = !{!"_ZTS18libraw_fuji_info_t", !31, i64 0, !26, i64 4, !26, i64 6, !26, i64 8, !26, i64 10, !26, i64 12, !26, i64 14, !26, i64 16, !26, i64 18, !7, i64 20, !7, i64 53, !31, i64 88, !26, i64 92, !26, i64 94, !7, i64 96, !26, i64 100, !8, i64 104, !8, i64 108, !26, i64 112, !7, i64 114, !26, i64 120, !26, i64 122, !26, i64 124, !26, i64 126, !26, i64 128, !8, i64 132, !26, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !26, i64 168, !8, i64 172, !26, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!43 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !26, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !26, i64 82, !7, i64 84, !26, i64 88, !26, i64 90, !7, i64 92, !7, i64 352, !26, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !26, i64 416, !26, i64 418, !26, i64 420, !26, i64 422, !27, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !26, i64 456, !26, i64 458}
!44 = !{!"_ZTS18libraw_sony_info_t", !26, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !26, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !26, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !26, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !26, i64 54, !8, i64 56, !26, i64 60, !7, i64 62, !26, i64 66, !26, i64 68, !26, i64 70, !26, i64 72, !26, i64 74, !26, i64 76, !26, i64 78, !8, i64 80, !31, i64 84, !26, i64 88, !8, i64 92, !8, i64 96, !26, i64 100, !7, i64 102, !8, i64 124, !26, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !26, i64 138, !26, i64 140, !26, i64 142, !26, i64 144, !26, i64 146, !26, i64 148, !26, i64 150, !26, i64 152, !26, i64 154, !8, i64 156, !26, i64 160, !7, i64 162, !31, i64 180}
end_hunk_0
