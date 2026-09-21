Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/subtract_black?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6LibRaw23subtract_black_internalEv:bb.a
  %i.mr = sub nsw <8 x i32> %i.mn, %broadcast.splat223 ; 2 uses
  %i.ms = sub nsw <8 x i32> %i.mo, %broadcast.splat223 ; 2 uses
  %i.mt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi232, <8 x i32> %i.mp)
  %i.mu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi233, <8 x i32> %i.mq)
  %i.mv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi234, <8 x i32> %i.mr)
  %i.mw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi235, <8 x i32> %i.ms)
  %i.mx = zext <8 x i16> %strided.vec238 to <8 x i32>
  %i.my = zext <8 x i16> %strided.vec243 to <8 x i32>
  %i.mz = zext <8 x i16> %strided.vec248 to <8 x i32>
  %i.na = zext <8 x i16> %strided.vec253 to <8 x i32>
  %i.nb = sub nsw <8 x i32> %i.mx, %broadcast.splat225 ; 2 uses
  %i.nc = sub nsw <8 x i32> %i.my, %broadcast.splat225 ; 2 uses
  %i.nd = sub nsw <8 x i32> %i.mz, %broadcast.splat225 ; 2 uses
  %i.ne = sub nsw <8 x i32> %i.na, %broadcast.splat225 ; 2 uses
  %i.nf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mt, <8 x i32> %i.nb)
  %i.ng = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mu, <8 x i32> %i.nc)
  %i.nh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mv, <8 x i32> %i.nd)
  %i.ni = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mw, <8 x i32> %i.ne)
  %i.nj = zext <8 x i16> %strided.vec239 to <8 x i32>
  %i.nk = zext <8 x i16> %strided.vec244 to <8 x i32>
  %i.nl = zext <8 x i16> %strided.vec249 to <8 x i32>
  %i.nm = zext <8 x i16> %strided.vec254 to <8 x i32>
  %i.nn = sub nsw <8 x i32> %i.nj, %broadcast.splat227 ; 2 uses
  %i.no = sub nsw <8 x i32> %i.nk, %broadcast.splat227 ; 2 uses
  %i.np = sub nsw <8 x i32> %i.nl, %broadcast.splat227 ; 2 uses
  %i.nq = sub nsw <8 x i32> %i.nm, %broadcast.splat227 ; 2 uses
  %i.nr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nf, <8 x i32> %i.nn)
  %i.ns = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ng, <8 x i32> %i.no)
  %i.nt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nh, <8 x i32> %i.np)
  %i.nu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ni, <8 x i32> %i.nq)
  %i.nv = zext <8 x i16> %strided.vec240 to <8 x i32>
  %i.nw = zext <8 x i16> %strided.vec245 to <8 x i32>
  %i.nx = zext <8 x i16> %strided.vec250 to <8 x i32>
  %i.ny = zext <8 x i16> %strided.vec255 to <8 x i32>
  %i.nz = sub nsw <8 x i32> %i.nv, %broadcast.splat229 ; 2 uses
  %i.oa = sub nsw <8 x i32> %i.nw, %broadcast.splat229 ; 2 uses
  %i.ob = sub nsw <8 x i32> %i.nx, %broadcast.splat229 ; 2 uses
  %i.oc = sub nsw <8 x i32> %i.ny, %broadcast.splat229 ; 2 uses
  %i.od = shufflevector <8 x i32> %i.mp, <8 x i32> %i.nb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oe = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.od, <16 x i32> zeroinitializer)
  %i.of = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.oe, <16 x i32> splat (i32 65535))
  %i.og = trunc nuw <16 x i32> %i.of to <16 x i16>
  %i.oh = shufflevector <8 x i32> %i.nn, <8 x i32> %i.nz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oi = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.oh, <16 x i32> zeroinitializer)
  %i.oj = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.oi, <16 x i32> splat (i32 65535))
  %i.ok = trunc nuw <16 x i32> %i.oj to <16 x i16>
  %interleaved.vec256 = shufflevector <16 x i16> %i.og, <16 x i16> %i.ok, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec256, ptr %i.me, align 2, !tbaa !102
  %i.ol = shufflevector <8 x i32> %i.mq, <8 x i32> %i.nc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.om = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ol, <16 x i32> zeroinitializer)
  %i.on = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.om, <16 x i32> splat (i32 65535))
  %i.oo = trunc nuw <16 x i32> %i.on to <16 x i16>
  %i.op = shufflevector <8 x i32> %i.no, <8 x i32> %i.oa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oq = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.op, <16 x i32> zeroinitializer)
  %i.or = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.oq, <16 x i32> splat (i32 65535))
  %i.os = trunc nuw <16 x i32> %i.or to <16 x i16>
  %interleaved.vec257 = shufflevector <16 x i16> %i.oo, <16 x i16> %i.os, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec257, ptr %i.mg, align 2, !tbaa !102
  %i.ot = shufflevector <8 x i32> %i.mr, <8 x i32> %i.nd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ou = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ot, <16 x i32> zeroinitializer)
  %i.ov = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ou, <16 x i32> splat (i32 65535))
  %i.ow = trunc nuw <16 x i32> %i.ov to <16 x i16>
  %i.ox = shufflevector <8 x i32> %i.np, <8 x i32> %i.ob, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oy = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ox, <16 x i32> zeroinitializer)
  %i.oz = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.oy, <16 x i32> splat (i32 65535))
  %i.pa = trunc nuw <16 x i32> %i.oz to <16 x i16>
  %interleaved.vec258 = shufflevector <16 x i16> %i.ow, <16 x i16> %i.pa, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec258, ptr %i.mi, align 2, !tbaa !102
  %i.pb = shufflevector <8 x i32> %i.ms, <8 x i32> %i.ne, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pb, <16 x i32> zeroinitializer)
  %i.pd = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pc, <16 x i32> splat (i32 65535))
  %i.pe = trunc nuw <16 x i32> %i.pd to <16 x i16>
  %i.pf = shufflevector <8 x i32> %i.nq, <8 x i32> %i.oc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pg = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pf, <16 x i32> zeroinitializer)
  %i.ph = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pg, <16 x i32> splat (i32 65535))
  %i.pi = trunc nuw <16 x i32> %i.ph to <16 x i16>
  %interleaved.vec259 = shufflevector <16 x i16> %i.pe, <16 x i16> %i.pi, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec259, ptr %i.mk, align 2, !tbaa !102
  %i.pj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nr, <8 x i32> %i.nz) ; 2 uses
  %i.pk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ns, <8 x i32> %i.oa) ; 2 uses
  %i.pl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nt, <8 x i32> %i.ob) ; 2 uses
  %i.pm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nu, <8 x i32> %i.oc) ; 2 uses
  %index.next260 = add nuw i64 %index231, 32      ; 2 uses
  %i.pn = icmp eq i64 %index.next260, %n.vec221
  br i1 %i.pn, label %middle.block261, label %vector.body230, !llvm.loop !18

middle.block261:                                  ; preds = %vector.body230
  %rdx.minmax262 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pj, <8 x i32> %i.pk)
  %rdx.minmax263 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax262, <8 x i32> %i.pl)
  %rdx.minmax264 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax263, <8 x i32> %i.pm)
  %i.po = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax264) ; 3 uses
  %cmp.n265 = icmp eq i64 %n.vec221, %wide.trip.count116
  br i1 %cmp.n265, label %.loopexit, label %vec.epilog.iter.check270

vec.epilog.iter.check270:                         ; preds = %middle.block261
  %min.epilog.iters.check271 = icmp eq i64 %i.md, 0
  br i1 %min.epilog.iters.check271, label %.preheader.preheader, label %vec.epilog.ph272, !prof !108

vec.epilog.ph272:                                 ; preds = %vector.main.loop.iter.check218, %vec.epilog.iter.check270
  %vec.epilog.resume.val266 = phi i64 [ %n.vec221, %vec.epilog.iter.check270 ], [ 0, %vector.main.loop.iter.check218 ]
  %bc.merge.rdx267 = phi i32 [ %i.po, %vec.epilog.iter.check270 ], [ 0, %vector.main.loop.iter.check218 ]
  %n.vec273 = and i64 %wide.trip.count116, 4294967288 ; 3 uses
  %broadcast.splatinsert274 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat275 = shufflevector <8 x i32> %broadcast.splatinsert274, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <8 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %broadcast.splat277 = shufflevector <8 x i32> %broadcast.splatinsert276, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat279 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat281 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert282 = insertelement <8 x i32> poison, i32 %bc.merge.rdx267, i64 0
  %broadcast.splat283 = shufflevector <8 x i32> %broadcast.splatinsert282, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph272
  %index285 = phi i64 [ %vec.epilog.resume.val266, %vec.epilog.ph272 ], [ %index.next293, %vec.epilog.vector.body284 ] ; 2 uses
  %vec.phi286 = phi <8 x i32> [ %broadcast.splat283, %vec.epilog.ph272 ], [ %i.qj, %vec.epilog.vector.body284 ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %index285 ; 2 uses
  %wide.vec287 = load <32 x i16>, ptr %i.pp, align 2, !tbaa !102 ; 4 uses
  %strided.vec288 = shufflevector <32 x i16> %wide.vec287, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec289 = shufflevector <32 x i16> %wide.vec287, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec290 = shufflevector <32 x i16> %wide.vec287, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec291 = shufflevector <32 x i16> %wide.vec287, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.pq = zext <8 x i16> %strided.vec288 to <8 x i32>
  %i.pr = sub nsw <8 x i32> %i.pq, %broadcast.splat275 ; 2 uses
  %i.ps = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi286, <8 x i32> %i.pr)
  %i.pt = zext <8 x i16> %strided.vec289 to <8 x i32>
  %i.pu = sub nsw <8 x i32> %i.pt, %broadcast.splat277 ; 2 uses
  %i.pv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ps, <8 x i32> %i.pu)
  %i.pw = zext <8 x i16> %strided.vec290 to <8 x i32>
  %i.px = sub nsw <8 x i32> %i.pw, %broadcast.splat279 ; 2 uses
  %i.py = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pv, <8 x i32> %i.px)
  %i.pz = zext <8 x i16> %strided.vec291 to <8 x i32>
  %i.qa = sub nsw <8 x i32> %i.pz, %broadcast.splat281 ; 2 uses
  %i.qb = shufflevector <8 x i32> %i.pr, <8 x i32> %i.pu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.qb, <16 x i32> zeroinitializer)
  %i.qd = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.qc, <16 x i32> splat (i32 65535))
  %i.qe = trunc nuw <16 x i32> %i.qd to <16 x i16>
  %i.qf = shufflevector <8 x i32> %i.px, <8 x i32> %i.qa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qg = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.qf, <16 x i32> zeroinitializer)
  %i.qh = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.qg, <16 x i32> splat (i32 65535))
  %i.qi = trunc nuw <16 x i32> %i.qh to <16 x i16>
  %interleaved.vec292 = shufflevector <16 x i16> %i.qe, <16 x i16> %i.qi, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec292, ptr %i.pp, align 2, !tbaa !102
  %i.qj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.py, <8 x i32> %i.qa) ; 2 uses
  %index.next293 = add nuw i64 %index285, 8       ; 2 uses
  %i.qk = icmp eq i64 %index.next293, %n.vec273
  br i1 %i.qk, label %vec.epilog.middle.block294, label %vec.epilog.vector.body284, !llvm.loop !19

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body284
  %i.ql = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.qj) ; 2 uses
  %cmp.n295 = icmp eq i64 %n.vec273, %wide.trip.count116
  br i1 %cmp.n295, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check268, %vec.epilog.iter.check270, %vec.epilog.middle.block294
  %indvars.iv113.ph = phi i64 [ 0, %iter.check268 ], [ %n.vec221, %vec.epilog.iter.check270 ], [ %n.vec273, %vec.epilog.middle.block294 ]
  %.396.ph = phi i32 [ 0, %iter.check268 ], [ %i.po, %vec.epilog.iter.check270 ], [ %i.ql, %vec.epilog.middle.block294 ]
  %i.qm = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.qn = insertelement <4 x i32> %i.qm, i32 %i.k, i64 0
  %i.qo = insertelement <4 x i32> %i.qn, i32 %.sroa.5.0.copyload, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %.preheader ], [ %indvars.iv113.ph, %.preheader.preheader ] ; 2 uses
  %.396 = phi i32 [ %i.qx, %.preheader ], [ %.396.ph, %.preheader.preheader ]
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv113 ; 2 uses
  %i.qq = load <4 x i16>, ptr %i.qp, align 2, !tbaa !102
  %i.qr = zext <4 x i16> %i.qq to <4 x i32>
  %i.qs = sub nsw <4 x i32> %i.qr, %i.qo          ; 2 uses
  %i.qt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qs, <4 x i32> zeroinitializer)
  %i.qu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qt, <4 x i32> splat (i32 65535))
  %i.qv = trunc nuw <4 x i32> %i.qu to <4 x i16>
  store <4 x i16> %i.qv, ptr %i.qp, align 2, !tbaa !102
  %i.qw = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.qs)
  %i.qx = tail call i32 @llvm.smax.i32(i32 %i.qw, i32 %.396) ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.loopexit, label %.preheader, !llvm.loop !20

.loopexit:                                        ; preds = %.preheader86, %.preheader, %middle.block, %vec.epilog.middle.block, %middle.block261, %vec.epilog.middle.block294, %.preheader87, %bb.l
  %.6 = phi i32 [ %i.qx, %.preheader ], [ 0, %bb.l ], [ 0, %.preheader87 ], [ %i.ql, %vec.epilog.middle.block294 ], [ %i.po, %middle.block261 ], [ %i.iy, %vec.epilog.middle.block ], [ %i.fi, %middle.block ], [ %spec.select.3, %.preheader86 ]
  %i.qy = and i32 %.6, 65535
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !109
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !110
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !111
  %i.re = sub i32 %i.rd, %i.rb
  store i32 %i.re, ptr %i.rc, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.j, i8 0, i64 16420, i1 false)
  br label %bb.w

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.rf = load ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.rh = load i16, ptr %i.rg, align 4, !tbaa !96
  %i.ri = zext i16 %i.rh to i32
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !97
  %i.rl = zext i16 %i.rk to i32
  %i.rm = shl nuw nsw i32 %i.ri, 2
  %i.rn = mul i32 %i.rm, %i.rl                    ; 3 uses
  %.not104 = icmp eq i32 %i.rn, 0
  br i1 %.not104, label %._crit_edge, label %iter.check320

iter.check320:                                    ; preds = %bb.m
  %wide.trip.count121 = zext i32 %i.rn to i64     ; 5 uses
  %min.iters.check298 = icmp ult i32 %i.rn, 32
  br i1 %min.iters.check298, label %vec.epilog.ph324, label %vector.ph301

vector.ph301:                                     ; preds = %iter.check320
  %i.ro = and i64 %wide.trip.count121, 28
  %n.vec302 = and i64 %wide.trip.count121, 4294967264 ; 4 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next312, %vector.body303 ] ; 2 uses
  %vec.phi305 = phi <8 x i16> [ zeroinitializer, %vector.ph301 ], [ %1, %vector.body303 ]
  %vec.phi306 = phi <8 x i16> [ zeroinitializer, %vector.ph301 ], [ %2, %vector.body303 ]
  %vec.phi307 = phi <8 x i16> [ zeroinitializer, %vector.ph301 ], [ %3, %vector.body303 ]
  %vec.phi308 = phi <8 x i16> [ zeroinitializer, %vector.ph301 ], [ %4, %vector.body303 ]
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.rf, i64 %index304 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 48
  %wide.load = load <8 x i16>, ptr %i.rp, align 2, !tbaa !102
  %wide.load309 = load <8 x i16>, ptr %i.rq, align 2, !tbaa !102
  %wide.load310 = load <8 x i16>, ptr %i.rr, align 2, !tbaa !102
  %wide.load311 = load <8 x i16>, ptr %i.rs, align 2, !tbaa !102
  %1 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi305, <8 x i16> %wide.load) ; 2 uses
  %2 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi306, <8 x i16> %wide.load309) ; 2 uses
  %3 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi307, <8 x i16> %wide.load310) ; 2 uses
  %4 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi308, <8 x i16> %wide.load311) ; 2 uses
  %index.next312 = add nuw i64 %index304, 32      ; 2 uses
  %i.rt = icmp eq i64 %index.next312, %n.vec302
  br i1 %i.rt, label %middle.block313, label %vector.body303, !llvm.loop !21

middle.block313:                                  ; preds = %vector.body303
  %rdx.minmax314 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %1, <8 x i16> %2)
  %rdx.minmax315 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %rdx.minmax314, <8 x i16> %3)
  %rdx.minmax316 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %rdx.minmax315, <8 x i16> %4)
  %5 = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax316) ; 2 uses
  %6 = zext i16 %5 to i32                         ; 2 uses
  %cmp.n317 = icmp eq i64 %n.vec302, %wide.trip.count121
  br i1 %cmp.n317, label %._crit_edge, label %vec.epilog.iter.check322

vec.epilog.iter.check322:                         ; preds = %middle.block313
  %min.epilog.iters.check323 = icmp eq i64 %i.ro, 0
  br i1 %min.epilog.iters.check323, label %.lr.ph, label %vec.epilog.ph324, !prof !112

vec.epilog.ph324:                                 ; preds = %iter.check320, %vec.epilog.iter.check322
  %vec.epilog.resume.val318 = phi i64 [ %n.vec302, %vec.epilog.iter.check322 ], [ 0, %iter.check320 ]
  %bc.merge.rdx319 = phi i16 [ %5, %vec.epilog.iter.check322 ], [ 0, %iter.check320 ]
  %broadcast.splatinsert326 = insertelement <4 x i16> poison, i16 %bc.merge.rdx319, i64 0
  %broadcast.splat327 = shufflevector <4 x i16> %broadcast.splatinsert326, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body328

vec.epilog.vector.body328:                        ; preds = %vec.epilog.vector.body328, %vec.epilog.ph324
  %index329 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph324 ], [ %index.next332, %vec.epilog.vector.body328 ] ; 2 uses
  %vec.phi330 = phi <4 x i16> [ %broadcast.splat327, %vec.epilog.ph324 ], [ %7, %vec.epilog.vector.body328 ]
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.rf, i64 %index329
  %wide.load331 = load <4 x i16>, ptr %i.ru, align 2, !tbaa !102
  %7 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi330, <4 x i16> %wide.load331) ; 2 uses
  %index.next332 = add nuw i64 %index329, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next332, %wide.trip.count121
  br i1 %i.rv, label %.lr.ph.preheader, label %vec.epilog.vector.body328, !llvm.loop !22

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body328
  %8 = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %7)
  %9 = zext i16 %8 to i32
  br label %._crit_edge

.lr.ph:                                           ; preds = %vec.epilog.iter.check322, %.lr.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.lr.ph ], [ %n.vec302, %vec.epilog.iter.check322 ] ; 2 uses
  %.0100 = phi i32 [ %spec.select83, %.lr.ph ], [ %6, %vec.epilog.iter.check322 ]
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.rf, i64 %indvars.iv118
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !102
  %i.ry = zext i16 %i.rx to i32
  %spec.select83 = tail call i32 @llvm.umax.i32(i32 %.0100, i32 %i.ry) ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %middle.block313, %.lr.ph.preheader, %bb.m
  %.0.lcssa = phi i32 [ 0, %bb.m ], [ %9, %.lr.ph.preheader ], [ %6, %middle.block313 ], [ %spec.select83, %.lr.ph ]
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %.0.lcssa, ptr %i.rz, align 4, !tbaa !109
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.o:                                             ; preds = %.invoke, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %i.sa = landingpad { ptr, i32 }
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
  %.merged = phi { ptr, i32 } [ %i.sa, %bb.o ], [ %i.af, %bb.i ]
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
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v2i32(<2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4

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
!12 = distinct !{!12, !"LVerDomain"}
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
!45 = !{!"_ZTS25libraw_kodak_makernotes_t", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6, !26, i64 8, !26, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !26, i64 228, !26, i64 230, !26, i64 232, !26, i64 234, !31, i64 236, !31, i64 240}
!46 = !{!"_ZTS29libraw_panasonic_makernotes_t", !26, i64 0, !26, i64 2, !7, i64 4, !8, i64 36, !31, i64 40, !7, i64 44, !26, i64 56, !26, i64 58, !8, i64 60, !8, i64 64}
!47 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !26, i64 12, !8, i64 16, !8, i64 20, !26, i64 24, !7, i64 26, !26, i64 30, !7, i64 32, !7, i64 33, !26, i64 34}
!48 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!49 = !{!"_ZTS25libraw_ricoh_makernotes_t", !26, i64 0, !7, i64 4, !7, i64 12, !26, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !26, i64 40, !26, i64 42, !26, i64 44, !26, i64 46, !26, i64 48, !26, i64 50, !27, i64 56, !27, i64 64}
!50 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !27, i64 88, !8, i64 96, !7, i64 100}
!51 = !{!"_ZTS24libraw_metadata_common_t", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !31, i64 36, !31, i64 40, !31, i64 44, !31, i64 48, !31, i64 52, !31, i64 56, !31, i64 60, !26, i64 64, !7, i64 66, !31, i64 196, !7, i64 200, !8, i64 296}
!52 = !{!"_ZTS19libraw_makernotes_t", !38, i64 0, !40, i64 168, !41, i64 464, !42, i64 848, !43, i64 1200, !44, i64 1664, !45, i64 1848, !46, i64 2092, !47, i64 2160, !48, i64 2196, !49, i64 2648, !50, i64 2720, !51, i64 2856}
!53 = !{!"_ZTS21libraw_shootinginfo_t", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6, !26, i64 8, !26, i64 10, !26, i64 12, !7, i64 14, !7, i64 78}
!54 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !31, i64 128, !31, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !29, i64 168, !29, i64 176, !29, i64 184, !29, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !31, i64 248, !31, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !31, i64 288, !31, i64 292, !8, i64 296, !8, i64 300}
!55 = !{!"any p2 pointer", !24, i64 0}
!56 = !{!"p2 omnipotent char", !55, i64 0}
!57 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !31, i64 28, !7, i64 32, !56, i64 40}
!58 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !31, i64 32}
!59 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !31, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !31, i64 32920, !31, i64 32924, !7, i64 32928}
!60 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !31, i64 147516, !31, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !58, i64 147876, !31, i64 147912, !31, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !24, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !59, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!61 = !{!"long", !7, i64 0}
!62 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !31, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!63 = !{!"_ZTS17libraw_imgother_t", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !61, i64 16, !8, i64 24, !7, i64 28, !62, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!64 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!65 = !{!"_ZTS18libraw_thumbnail_t", !64, i64 0, !26, i64 4, !26, i64 6, !8, i64 8, !8, i64 12, !29, i64 16}
!66 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!67 = !{!"p1 float", !24, i64 0}
!68 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !26, i64 12, !26, i64 14}
!69 = !{!"_ZTS16libraw_rawdata_t", !24, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !25, i64 56, !25, i64 64, !30, i64 72, !28, i64 512, !68, i64 696, !60, i64 712}
!70 = !{!"_ZTS13libraw_data_t", !25, i64 0, !28, i64 8, !30, i64 192, !36, i64 632, !52, i64 1928, !53, i64 5088, !54, i64 5232, !57, i64 5536, !8, i64 5584, !8, i64 5588, !60, i64 5592, !63, i64 192680, !65, i64 193480, !66, i64 193504, !69, i64 193768, !24, i64 381568}
!71 = !{!"p1 _ZTS10LibRaw_TLS", !24, i64 0}
!72 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !24, i64 0}
!73 = !{!"p1 _ZTS8_IO_FILE", !24, i64 0}
!74 = !{!"_ZTS15internal_data_t", !72, i64 0, !73, i64 8, !8, i64 16, !29, i64 24, !34, i64 32, !34, i64 40, !7, i64 48}
!75 = !{!"p1 int", !24, i64 0}
!76 = !{!"_ZTS13output_data_t", !75, i64 0, !75, i64 8}
!77 = !{!"_ZTS15identify_data_t", !8, i64 0, !34, i64 8, !34, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!78 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!79 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !26, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !26, i64 148, !26, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!80 = !{!"_ZTS15unpacker_data_t", !26, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !78, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !34, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !79, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !26, i64 2496, !26, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !26, i64 2608}
!81 = !{!"_ZTS22libraw_internal_data_t", !74, i64 0, !68, i64 64, !76, i64 80, !77, i64 96, !80, i64 136}
!82 = !{!"p1 _ZTS6decode", !24, i64 0}
!83 = !{!"_ZTS13libraw_memmgr", !55, i64 0, !8, i64 8}
!84 = !{!"_ZTS18libraw_callbacks_t", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !24, i64 104, !24, i64 112, !24, i64 120, !24, i64 128, !24, i64 136, !24, i64 144}
!85 = !{!"_ZTS6LibRaw", !70, i64 8, !71, i64 381584, !81, i64 381592, !7, i64 384344, !82, i64 433496, !82, i64 433504, !7, i64 433512, !83, i64 768232, !84, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !24, i64 768448, !24, i64 768456, !24, i64 768464, !61, i64 768472, !24, i64 768480, !24, i64 768488, !24, i64 768496, !24, i64 768504}
!86 = !{!85, !8, i64 5592}
!87 = !{!"vtable pointer", !6, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !DIFile(filename: "src/external/LibRaw/libraw/libraw.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "74f509d56e54266474f737b86ec23b25")
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!92 = !{!90, !91}
!93 = !DISubroutineType(types: !92)
!94 = !DISubprogram(name: "is_phaseone_compressed", linkageName: "_ZN6LibRaw22is_phaseone_compressedEv", scope: !11, file: !89, line: 367, type: !93, scopeLine: 367, containingType: !11, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!95 = !{!8, !8, i64 0}
!96 = !{!85, !26, i64 28}
!97 = !{!85, !26, i64 30}
!98 = !{!"_ZTS17LibRaw_exceptions", !7, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!85, !25, i64 8}
!101 = !{!13}
!102 = !{!26, !26, i64 0}
!103 = !{!14}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = !{!"branch_weights", i32 2, i32 14}
!108 = !{!"branch_weights", i32 8, i32 24}
!109 = !{!85, !8, i64 153092}
!110 = !{!85, !8, i64 153088}
!111 = !{!85, !8, i64 153096}
!112 = !{!"branch_weights", i32 4, i32 28}
end_hunk_0
