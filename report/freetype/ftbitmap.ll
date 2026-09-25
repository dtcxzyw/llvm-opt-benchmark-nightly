Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Blend:bb.a
  %i.ny = add nuw nsw <16 x i32> %i.gi, %i.nx
  %i.nz = trunc <16 x i32> %i.ny to <16 x i8>
  %i.oa = mul nuw nsw <16 x i32> %i.gj, %i.nh
  %i.ob = trunc nuw <16 x i32> %i.oa to <16 x i16>
  %i.oc = udiv <16 x i16> %i.ob, splat (i16 255)
  %i.od = zext nneg <16 x i16> %i.oc to <16 x i32>
  %i.oe = add nuw nsw <16 x i32> %i.gc, %i.od
  %i.of = trunc <16 x i32> %i.oe to <16 x i8>
  %i.og = shufflevector <16 x i8> %i.nn, <16 x i8> %i.nt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oh = shufflevector <16 x i8> %i.nz, <16 x i8> %i.of, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i8> %i.og, <32 x i8> %i.oh, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.oi = icmp eq i64 %index.next, %n.vec
  br i1 %i.oi, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.fg, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph298.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec361 = and i64 %i.fa, -8                   ; 4 uses
  %i.oj = shl i64 %n.vec361, 2
  %i.ok = getelementptr i8, ptr %.0214300, i64 %i.oj
  %i.ol = getelementptr i8, ptr %.0215299, i64 %n.vec361
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 3 uses
  %i.om = shl i64 %index370, 2                    ; 8 uses
  %next.gep371 = getelementptr i8, ptr %.0214300, i64 %i.om ; 5 uses
  %i.on = getelementptr i8, ptr %.0214300, i64 %i.om ; 4 uses
  %next.gep372 = getelementptr i8, ptr %i.on, i64 4
  %i.oo = getelementptr i8, ptr %.0214300, i64 %i.om ; 4 uses
  %next.gep373 = getelementptr i8, ptr %i.oo, i64 8
  %i.op = getelementptr i8, ptr %.0214300, i64 %i.om ; 4 uses
  %next.gep374 = getelementptr i8, ptr %i.op, i64 12
  %i.oq = getelementptr i8, ptr %.0214300, i64 %i.om ; 4 uses
  %next.gep375 = getelementptr i8, ptr %i.oq, i64 16
  %i.or = getelementptr i8, ptr %.0214300, i64 %i.om ; 4 uses
  %next.gep376 = getelementptr i8, ptr %i.or, i64 20
  %i.os = getelementptr i8, ptr %.0214300, i64 %i.om ; 4 uses
  %next.gep377 = getelementptr i8, ptr %i.os, i64 24
  %i.ot = getelementptr i8, ptr %.0214300, i64 %i.om ; 4 uses
  %next.gep378 = getelementptr i8, ptr %i.ot, i64 28
  %next.gep379 = getelementptr i8, ptr %.0215299, i64 %index370
  %wide.load380 = load <8 x i8>, ptr %next.gep379, align 1, !tbaa !24, !alias.scope !86
  %i.ou = zext <8 x i8> %wide.load380 to <8 x i32>
  %i.ov = mul nuw nsw <8 x i32> %broadcast.splat363, %i.ou
  %i.ow = udiv <8 x i32> %i.ov, splat (i32 255)   ; 5 uses
  %i.ox = mul nuw nsw <8 x i32> %i.ow, %broadcast.splat365
  %i.oy = udiv <8 x i32> %i.ox, splat (i32 255)
  %i.oz = mul nuw nsw <8 x i32> %i.ow, %broadcast.splat367
  %i.pa = udiv <8 x i32> %i.oz, splat (i32 255)
  %i.pb = mul nuw nsw <8 x i32> %i.ow, %broadcast.splat369
  %i.pc = udiv <8 x i32> %i.pb, splat (i32 255)
  %i.pd = sub nuw nsw <8 x i32> splat (i32 255), %i.ow ; 4 uses
  %i.pe = load i8, ptr %next.gep371, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pf = load i8, ptr %next.gep372, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pg = load i8, ptr %next.gep373, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.ph = load i8, ptr %next.gep374, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pi = load i8, ptr %next.gep375, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pj = load i8, ptr %next.gep376, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pk = load i8, ptr %next.gep377, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pl = load i8, ptr %next.gep378, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pm = insertelement <8 x i8> poison, i8 %i.pe, i64 0
  %i.pn = insertelement <8 x i8> %i.pm, i8 %i.pf, i64 1
  %i.po = insertelement <8 x i8> %i.pn, i8 %i.pg, i64 2
  %i.pp = insertelement <8 x i8> %i.po, i8 %i.ph, i64 3
  %i.pq = insertelement <8 x i8> %i.pp, i8 %i.pi, i64 4
  %i.pr = insertelement <8 x i8> %i.pq, i8 %i.pj, i64 5
  %i.ps = insertelement <8 x i8> %i.pr, i8 %i.pk, i64 6
  %i.pt = insertelement <8 x i8> %i.ps, i8 %i.pl, i64 7
  %i.pu = zext <8 x i8> %i.pt to <8 x i32>
  %i.pv = getelementptr inbounds nuw i8, ptr %next.gep371, i64 1
  %i.pw = getelementptr i8, ptr %i.on, i64 5
  %i.px = getelementptr i8, ptr %i.oo, i64 9
  %i.py = getelementptr i8, ptr %i.op, i64 13
  %i.pz = getelementptr i8, ptr %i.oq, i64 17
  %i.qa = getelementptr i8, ptr %i.or, i64 21
  %i.qb = getelementptr i8, ptr %i.os, i64 25
  %i.qc = getelementptr i8, ptr %i.ot, i64 29
  %i.qd = load i8, ptr %i.pv, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qe = load i8, ptr %i.pw, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qf = load i8, ptr %i.px, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qg = load i8, ptr %i.py, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qh = load i8, ptr %i.pz, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qi = load i8, ptr %i.qa, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qj = load i8, ptr %i.qb, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qk = load i8, ptr %i.qc, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.ql = insertelement <8 x i8> poison, i8 %i.qd, i64 0
  %i.qm = insertelement <8 x i8> %i.ql, i8 %i.qe, i64 1
  %i.qn = insertelement <8 x i8> %i.qm, i8 %i.qf, i64 2
  %i.qo = insertelement <8 x i8> %i.qn, i8 %i.qg, i64 3
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 4
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 5
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 6
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 7
  %i.qt = zext <8 x i8> %i.qs to <8 x i32>
  %i.qu = getelementptr inbounds nuw i8, ptr %next.gep371, i64 2
  %i.qv = getelementptr i8, ptr %i.on, i64 6
  %i.qw = getelementptr i8, ptr %i.oo, i64 10
  %i.qx = getelementptr i8, ptr %i.op, i64 14
  %i.qy = getelementptr i8, ptr %i.oq, i64 18
  %i.qz = getelementptr i8, ptr %i.or, i64 22
  %i.ra = getelementptr i8, ptr %i.os, i64 26
  %i.rb = getelementptr i8, ptr %i.ot, i64 30
  %i.rc = load i8, ptr %i.qu, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rd = load i8, ptr %i.qv, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.re = load i8, ptr %i.qw, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rf = load i8, ptr %i.qx, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rg = load i8, ptr %i.qy, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rh = load i8, ptr %i.qz, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.ri = load i8, ptr %i.ra, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rj = load i8, ptr %i.rb, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rk = insertelement <8 x i8> poison, i8 %i.rc, i64 0
  %i.rl = insertelement <8 x i8> %i.rk, i8 %i.rd, i64 1
  %i.rm = insertelement <8 x i8> %i.rl, i8 %i.re, i64 2
  %i.rn = insertelement <8 x i8> %i.rm, i8 %i.rf, i64 3
  %i.ro = insertelement <8 x i8> %i.rn, i8 %i.rg, i64 4
  %i.rp = insertelement <8 x i8> %i.ro, i8 %i.rh, i64 5
  %i.rq = insertelement <8 x i8> %i.rp, i8 %i.ri, i64 6
  %i.rr = insertelement <8 x i8> %i.rq, i8 %i.rj, i64 7
  %i.rs = zext <8 x i8> %i.rr to <8 x i32>
  %i.rt = getelementptr inbounds nuw i8, ptr %next.gep371, i64 3
  %i.ru = getelementptr i8, ptr %i.on, i64 7
  %i.rv = getelementptr i8, ptr %i.oo, i64 11
  %i.rw = getelementptr i8, ptr %i.op, i64 15
  %i.rx = getelementptr i8, ptr %i.oq, i64 19
  %i.ry = getelementptr i8, ptr %i.or, i64 23
  %i.rz = getelementptr i8, ptr %i.os, i64 27
  %i.sa = getelementptr i8, ptr %i.ot, i64 31
  %i.sb = load i8, ptr %i.rt, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sc = load i8, ptr %i.ru, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sd = load i8, ptr %i.rv, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.se = load i8, ptr %i.rw, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sf = load i8, ptr %i.rx, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sg = load i8, ptr %i.ry, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sh = load i8, ptr %i.rz, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.si = load i8, ptr %i.sa, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sj = insertelement <8 x i8> poison, i8 %i.sb, i64 0
  %i.sk = insertelement <8 x i8> %i.sj, i8 %i.sc, i64 1
  %i.sl = insertelement <8 x i8> %i.sk, i8 %i.sd, i64 2
  %i.sm = insertelement <8 x i8> %i.sl, i8 %i.se, i64 3
  %i.sn = insertelement <8 x i8> %i.sm, i8 %i.sf, i64 4
  %i.so = insertelement <8 x i8> %i.sn, i8 %i.sg, i64 5
  %i.sp = insertelement <8 x i8> %i.so, i8 %i.sh, i64 6
  %i.sq = insertelement <8 x i8> %i.sp, i8 %i.si, i64 7
  %i.sr = zext <8 x i8> %i.sq to <8 x i32>
  %i.ss = mul nuw nsw <8 x i32> %i.pd, %i.pu
  %i.st = trunc nuw <8 x i32> %i.ss to <8 x i16>
  %i.su = udiv <8 x i16> %i.st, splat (i16 255)
  %i.sv = zext nneg <8 x i16> %i.su to <8 x i32>
  %i.sw = add nuw nsw <8 x i32> %i.oy, %i.sv
  %i.sx = mul nuw nsw <8 x i32> %i.pd, %i.qt
  %i.sy = trunc nuw <8 x i32> %i.sx to <8 x i16>
  %i.sz = udiv <8 x i16> %i.sy, splat (i16 255)
  %i.ta = zext nneg <8 x i16> %i.sz to <8 x i32>
  %i.tb = add nuw nsw <8 x i32> %i.pa, %i.ta
  %i.tc = mul nuw nsw <8 x i32> %i.pd, %i.rs
  %i.td = trunc nuw <8 x i32> %i.tc to <8 x i16>
  %i.te = udiv <8 x i16> %i.td, splat (i16 255)
  %i.tf = zext nneg <8 x i16> %i.te to <8 x i32>
  %i.tg = add nuw nsw <8 x i32> %i.pc, %i.tf
  %i.th = mul nuw nsw <8 x i32> %i.pd, %i.sr
  %i.ti = trunc nuw <8 x i32> %i.th to <8 x i16>
  %i.tj = udiv <8 x i16> %i.ti, splat (i16 255)
  %i.tk = zext nneg <8 x i16> %i.tj to <8 x i32>
  %i.tl = add nuw nsw <8 x i32> %i.ow, %i.tk
  %i.tm = shufflevector <8 x i32> %i.sw, <8 x i32> %i.tb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tn = trunc <16 x i32> %i.tm to <16 x i8>
  %i.to = shufflevector <8 x i32> %i.tg, <8 x i32> %i.tl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tp = trunc <16 x i32> %i.to to <16 x i8>
  %interleaved.vec381 = shufflevector <16 x i8> %i.tn, <16 x i8> %i.tp, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec381, ptr %next.gep371, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %index.next382 = add nuw i64 %index370, 8       ; 2 uses
  %i.tq = icmp eq i64 %index.next382, %n.vec361
  br i1 %i.tq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.fa, %n.vec361
  br i1 %cmp.n383, label %._crit_edge.loopexit, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0212297.ph = phi ptr [ %.0214300, %iter.check ], [ %.0214300, %vector.memcheck ], [ %i.fi, %vec.epilog.iter.check ], [ %i.ok, %vec.epilog.middle.block ]
  %.0213296.ph = phi ptr [ %.0215299, %iter.check ], [ %.0215299, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.ol, %vec.epilog.middle.block ]
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %.lr.ph298
  %.0212297 = phi ptr [ %11, %.lr.ph298 ], [ %.0212297.ph, %.lr.ph298.preheader ] ; 6 uses
  %.0213296 = phi ptr [ %i.tr, %.lr.ph298 ], [ %.0213296.ph, %.lr.ph298.preheader ] ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.0213296, i64 1 ; 2 uses
  %i.ts = load i8, ptr %.0213296, align 1, !tbaa !24
  %i.tt = zext i8 %i.ts to i32
  %i.tu = mul nuw nsw i32 %.sroa.4204.0.extract.shift, %i.tt
  %i.tv = udiv i32 %i.tu, 255                     ; 4 uses
  %i.tw = mul nuw nsw i32 %i.tv, %i.er
  %i.tx = udiv i32 %i.tw, 255
  %i.ty = insertelement <2 x i32> poison, i32 %i.tv, i64 0
  %i.tz = shufflevector <2 x i32> %i.ty, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ua = mul nuw nsw <2 x i32> %i.tz, %i.es
  %i.ub = udiv <2 x i32> %i.ua, splat (i32 255)
  %i.uc = sub nuw nsw i32 255, %i.tv              ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %.0212297, i64 1
  %9 = getelementptr inbounds nuw i8, ptr %.0212297, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %.0212297, i64 3
  %11 = getelementptr inbounds nuw i8, ptr %.0212297, i64 4
  %i.ud = load i8, ptr %.0212297, align 1, !tbaa !24
  %12 = zext i8 %i.ud to i32
  %i.ue = load i8, ptr %8, align 1, !tbaa !24
  %i.uf = zext i8 %i.ue to i32
  %13 = load i8, ptr %9, align 1, !tbaa !24
  %i.ug = zext i8 %13 to i32
  %14 = load i8, ptr %10, align 1, !tbaa !24
  %i.uh = zext i8 %14 to i32
  %i.ui = mul nuw nsw i32 %i.uc, %12
  %.lhs.trunc = trunc nuw i32 %i.ui to i16
  %i.uj = mul nuw nsw i32 %i.uc, %i.uf
  %.lhs.trunc328 = trunc nuw i32 %i.uj to i16
  %15 = mul nuw nsw i32 %i.uc, %i.ug
  %.lhs.trunc330 = trunc nuw i32 %15 to i16
  %16 = mul nuw nsw i32 %i.uc, %i.uh
  %.lhs.trunc.a = trunc nuw i32 %16 to i16
  %i.uk = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.ul = insertelement <4 x i16> %i.uk, i16 %.lhs.trunc328, i64 1
  %i.um = insertelement <4 x i16> %i.ul, i16 %.lhs.trunc330, i64 2
  %i.un = insertelement <4 x i16> %i.um, i16 %.lhs.trunc.a, i64 3
  %i.uo = udiv <4 x i16> %i.un, splat (i16 255)
  %i.up = zext nneg <4 x i16> %i.uo to <4 x i32>
  %i.uq = insertelement <4 x i32> poison, i32 %i.tx, i64 0
  %i.ur = shufflevector <2 x i32> %i.ub, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.us = shufflevector <4 x i32> %i.uq, <4 x i32> %i.ur, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ut = insertelement <4 x i32> %i.us, i32 %i.tv, i64 3
  %i.uu = add nuw nsw <4 x i32> %i.ut, %i.up
  %i.uv = trunc <4 x i32> %i.uu to <4 x i8>
  store <4 x i8> %i.uv, ptr %.0212297, align 1, !tbaa !24
  %i.uw = icmp ult ptr %i.tr, %i.ex
  br i1 %i.uw, label %.lr.ph298, label %._crit_edge.loopexit, !llvm.loop !82

._crit_edge.loopexit:                             ; preds = %.lr.ph298, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %.0208.sroa.phi239, align 8, !tbaa !13
  %.pre304 = load i32, ptr %i.dt, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ad
  %i.ux = phi i32 [ %.pre304, %._crit_edge.loopexit ], [ %i.et, %bb.ad ] ; 2 uses
  %i.uy = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.eu, %bb.ad ] ; 2 uses
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds i8, ptr %.0215299, i64 %i.uz ; 2 uses
  %i.vb = sext i32 %i.ux to i64
  %i.vc = getelementptr inbounds i8, ptr %.0214300, i64 %i.vb
  %i.vd = icmp ult ptr %i.va, %i.eb
  br i1 %i.vd, label %bb.ad, label %.loopexit, !llvm.loop !83

.loopexit:                                        ; preds = %._crit_edge, %bb.ac, %bb.ab
  store i64 %i.bk, ptr %5, align 8, !tbaa !84
  %i.ve = and i64 %i.bp, 4294967232
  %i.vf = add nsw i64 %i.ve, %i.bl
  store i64 %i.vf, ptr %i.ai, align 8, !tbaa !85
  %.pre305 = load i32, ptr %i.a, align 4, !tbaa !8
  %i.vg = icmp ne i32 %.pre305, 0
  %i.vh = and i1 %i.bz, %i.vg
  br i1 %i.vh, label %FT_Bitmap_Done.exit, label %bb.af

bb.ae:                                            ; preds = %bb.aa
  br i1 %i.bz, label %.thread287.critedge, label %.thread287

FT_Bitmap_Done.exit:                              ; preds = %.loopexit
  %i.vi = load ptr, ptr %0, align 8, !tbaa !20
  %i.vj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.vi, ptr noundef %i.vk) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br i1 %.not271, label %.thread287, label %FT_Bitmap_Done.exit277

bb.af:                                            ; preds = %.loopexit
  br i1 %.not271, label %.thread287, label %FT_Bitmap_Done.exit277

FT_Bitmap_Done.exit277:                           ; preds = %FT_Bitmap_Done.exit, %bb.af
  %i.vl = load ptr, ptr %0, align 8, !tbaa !20
  %i.vm = load ptr, ptr %.0208.sroa.phi233.sroa.gep, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.vl, ptr noundef %i.vm) #7
  br label %.thread287

.thread287.critedge:                              ; preds = %bb.ae
  %i.vn = load ptr, ptr %0, align 8, !tbaa !20
  %i.vo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.vn, ptr noundef %i.vp) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br label %.thread287

.thread287:                                       ; preds = %.thread287.critedge, %bb.ae, %bb.v, %FT_Bitmap_Done.exit, %FT_Bitmap_Done.exit277, %bb.af
  %i.vq = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %bb.s, %bb.n, %bb.l, %bb.k, %bb.h, %bb.g, %.thread279, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.thread287
  %.0 = phi i32 [ 6, %bb.c ], [ 0, %bb.d ], [ 0, %.thread279 ], [ 6, %bb.g ], [ 6, %bb.h ], [ 6, %bb.k ], [ 0, %bb.n ], [ %i.vq, %.thread287 ], [ %i.ch, %bb.s ], [ 6, %bb.l ], [ 6, %bb.e ], [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %bb.f ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @FT_GlyphSlot_Own_Bitmap(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.FT_Bitmap_, align 8         ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i32 %i.b, 1651078259
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105
  %i.h = and i32 %i.g, 1
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = call i32 @FT_Bitmap_Copy(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %1) ; 2 uses
  %.not13.not = icmp eq i32 %i.k, 0
  br i1 %.not13.not, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !26
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105
  %i.o = or i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !105
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %.thread
  %.1.ph = phi i32 [ 0, %.thread ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"FT_Bitmap_", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !11, i64 24, !4, i64 26, !4, i64 27, !9, i64 32}
!13 = !{!12, !5, i64 8}
!14 = !{!"p1 _ZTS13FT_MemoryRec_", !9, i64 0}
!15 = !{!"p1 _ZTS15FT_ListNodeRec_", !9, i64 0}
!16 = !{!"FT_ListRec_", !15, i64 0, !15, i64 8}
!17 = !{!"p1 _ZTS15FT_RendererRec_", !9, i64 0}
!18 = !{!"p1 _ZTS13FT_ModuleRec_", !9, i64 0}
!19 = !{!"FT_LibraryRec_", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !16, i64 280, !17, i64 296, !18, i64 304, !4, i64 312, !4, i64 344, !5, i64 392}
!20 = !{!19, !14, i64 0}
!21 = !{!12, !10, i64 16}
!22 = !{!10, !10, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{!9, !9, i64 0}
!26 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 16, i64 8, !22, i64 24, i64 2, !23, i64 26, i64 1, !24, i64 27, i64 1, !24, i64 32, i64 8, !25}
!27 = !{!12, !5, i64 0}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!12, !4, i64 26}
!31 = !{!12, !5, i64 4}
!32 = !{!12, !11, i64 24}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"long", !4, i64 0}
!36 = !{!"FT_Vector_", !35, i64 0, !35, i64 8}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !29}
end_hunk_0
