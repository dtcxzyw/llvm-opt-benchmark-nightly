Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZL16lodepng_inflatevP8ucvectorPKhmPK25LodePNGDecompressSettings:bb.a
  %.pre180.i = load ptr, ptr %i.f, align 8, !tbaa !62 ; 12 uses
  %.pre181.i.pre128 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !63 ; 12 uses
  %.pre182.i.pre = load ptr, ptr %i.g, align 8    ; 10 uses
  %.pre184.i.pre = load ptr, ptr %.phi.trans.insert183.i, align 8 ; 10 uses
  br i1 %.not100159.i, label %.lr.ph161.i, label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit

.lr.ph161.i:                                      ; preds = %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i
  %.not105.i = icmp eq i64 %i.bp, 0
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph161.i
  %.sroa.42.10122 = phi i64 [ %.sroa.42.7, %.lr.ph161.i ], [ %.sroa.42.12, %.backedge.backedge ] ; 5 uses
  %i.lh = lshr i64 %.sroa.42.10122, 3             ; 7 uses
  %i.li = add nuw nsw i64 %i.lh, 4                ; 2 uses
  %i.lj = icmp ult i64 %i.li, %2
  br i1 %i.lj, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.backedge
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 %i.lh
  %i.ll = load i32, ptr %i.lk, align 1
  %i.lm = trunc i64 %.sroa.42.10122 to i32
  %i.ln = and i32 %i.lm, 7                        ; 2 uses
  %i.lo = lshr i32 %i.ll, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %i.li
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !35
  %i.lr = zext i8 %i.lq to i32
  %i.ls = shl nuw i32 %i.lr, 24
  %i.lt = sub nuw nsw i32 8, %i.ln
  %i.lu = shl i32 %i.ls, %i.lt
  %i.lv = or i32 %i.lu, %i.lo
  br label %_ZL12ensureBits32P16LodePNGBitReaderm.exit.i

bb.cl:                                            ; preds = %.backedge
  %i.lw = icmp samesign ult i64 %i.lh, %2
  br i1 %i.lw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 %i.lh
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !35
  %i.lz = zext i8 %i.ly to i32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ma = phi i32 [ %i.lz, %bb.cm ], [ 0, %bb.cl ] ; 2 uses
  %i.mb = add nuw nsw i64 %i.lh, 1                ; 2 uses
  %i.mc = icmp samesign ult i64 %i.mb, %2
  br i1 %i.mc, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 %i.mb
  %i.me = load i8, ptr %i.md, align 1, !tbaa !35
  %i.mf = zext i8 %i.me to i32
  %i.mg = shl nuw nsw i32 %i.mf, 8
  %i.mh = or disjoint i32 %i.mg, %i.ma
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.mi = phi i32 [ %i.mh, %bb.co ], [ %i.ma, %bb.cn ] ; 2 uses
  %i.mj = add nuw nsw i64 %i.lh, 2                ; 2 uses
  %i.mk = icmp samesign ult i64 %i.mj, %2
  br i1 %i.mk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 %i.mj
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !35
  %i.mn = zext i8 %i.mm to i32
  %i.mo = shl nuw nsw i32 %i.mn, 16
  %i.mp = or i32 %i.mo, %i.mi
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.mq = phi i32 [ %i.mp, %bb.cq ], [ %i.mi, %bb.cp ] ; 2 uses
  %i.mr = add nuw nsw i64 %i.lh, 3                ; 2 uses
  %i.ms = icmp samesign ult i64 %i.mr, %2
  br i1 %i.ms, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 %i.mr
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !35
  %i.mv = zext i8 %i.mu to i32
  %i.mw = shl nuw i32 %i.mv, 24
  %i.mx = or i32 %i.mw, %i.mq
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.my = phi i32 [ %i.mx, %bb.cs ], [ %i.mq, %bb.cr ]
  %i.mz = trunc i64 %.sroa.42.10122 to i32
  %i.na = and i32 %i.mz, 7
  %i.nb = lshr i32 %i.my, %i.na
  br label %_ZL12ensureBits32P16LodePNGBitReaderm.exit.i

_ZL12ensureBits32P16LodePNGBitReaderm.exit.i:     ; preds = %bb.ct, %bb.ck
  %storemerge242.i = phi i32 [ %i.nb, %bb.ct ], [ %i.lv, %bb.ck ] ; 3 uses
  %i.nc = and i32 %storemerge242.i, 511
  %i.nd = zext nneg i32 %i.nc to i64              ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.pre180.i, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !35  ; 4 uses
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %.pre181.i.pre128, i64 %i.nd
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !68 ; 2 uses
  %i.ni = icmp ult i8 %i.nf, 10
  br i1 %i.ni, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZL12ensureBits32P16LodePNGBitReaderm.exit.i
  %i.nj = zext nneg i8 %i.nf to i64
  %i.nk = zext nneg i8 %i.nf to i32
  %i.nl = lshr i32 %storemerge242.i, %i.nk
  %i.nm = add i64 %.sroa.42.10122, %i.nj
  br label %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit.i

bb.cv:                                            ; preds = %_ZL12ensureBits32P16LodePNGBitReaderm.exit.i
  %i.nn = zext i8 %i.nf to i32
  %i.no = lshr i32 %storemerge242.i, 9            ; 2 uses
  %i.np = add i64 %.sroa.42.10122, 9
  %i.nq = add nsw i32 %i.nn, -9
  %notmask.i.i.i = shl nsw i32 -1, %i.nq
  %i.nr = xor i32 %notmask.i.i.i, -1
  %i.ns = and i32 %i.no, %i.nr
  %i.nt = trunc i32 %i.ns to i16
  %i.nu = add i16 %i.nh, %i.nt
  %i.nv = zext i16 %i.nu to i64                   ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.pre180.i, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !35
  %i.ny = zext i8 %i.nx to i64
  %i.nz = add nuw nsw i64 %i.ny, 4294967287       ; 2 uses
  %i.oa = and i64 %i.nz, 4294967295
  %i.ob = trunc i64 %i.nz to i32
  %i.oc = lshr i32 %i.no, %i.ob
  %i.od = add i64 %i.np, %i.oa
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.pre181.i.pre128, i64 %i.nv
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !68
  br label %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit.i

_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit.i: ; preds = %bb.cv, %bb.cu
  %.sink174.i = phi i32 [ %i.nl, %bb.cu ], [ %i.oc, %bb.cv ] ; 2 uses
  %.sink.i = phi i64 [ %i.nm, %bb.cu ], [ %i.od, %bb.cv ] ; 3 uses
  %.0.in.i114.i = phi i16 [ %i.nh, %bb.cu ], [ %i.of, %bb.cv ] ; 3 uses
  %i.og = icmp ult i16 %.0.in.i114.i, 256
  br i1 %i.og, label %bb.cw, label %.thread.i

bb.cw:                                            ; preds = %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit.i
  %i.oh = trunc nuw i16 %.0.in.i114.i to i8
  %i.oi = load ptr, ptr %0, align 8, !tbaa !54
  %i.oj = load i64, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.ok = add i64 %i.oj, 1
  store i64 %i.ok, ptr %i.c, align 8, !tbaa !55
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oj
  store i8 %i.oh, ptr %i.ol, align 1, !tbaa !35
  %i.om = and i32 %.sink174.i, 511
  %i.on = zext nneg i32 %i.om to i64              ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.pre180.i, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !35  ; 3 uses
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.pre181.i.pre128, i64 %i.on
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !68 ; 2 uses
  %i.os = icmp ult i8 %i.op, 10
  br i1 %i.os, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ot = zext nneg i8 %i.op to i64
  %i.ou = add i64 %.sink.i, %i.ot
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.ov = zext i8 %i.op to i32
  %i.ow = lshr i32 %.sink174.i, 9
  %i.ox = add i64 %.sink.i, 9
  %i.oy = add nsw i32 %i.ov, -9
  %notmask.i.i117.i = shl nsw i32 -1, %i.oy
  %i.oz = xor i32 %notmask.i.i117.i, -1
  %i.pa = and i32 %i.ow, %i.oz
  %i.pb = trunc i32 %i.pa to i16
  %i.pc = add i16 %i.or, %i.pb
  %i.pd = zext i16 %i.pc to i64                   ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.pre180.i, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !35
  %i.pg = zext i8 %i.pf to i64
  %i.ph = add nuw nsw i64 %i.pg, 4294967287
  %i.pi = and i64 %i.ph, 4294967295
  %i.pj = add i64 %i.ox, %i.pi
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.pre181.i.pre128, i64 %i.pd
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !68
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.sink175.i = phi i64 [ %i.ou, %bb.cx ], [ %i.pj, %bb.cy ] ; 2 uses
  %.0.in.i118.i = phi i16 [ %i.or, %bb.cx ], [ %i.pl, %bb.cy ] ; 3 uses
  %i.pm = icmp ult i16 %.0.in.i118.i, 256
  br i1 %i.pm, label %bb.da, label %.thread.i

bb.da:                                            ; preds = %bb.cz
  %i.pn = trunc nuw i16 %.0.in.i118.i to i8
  %i.po = load ptr, ptr %0, align 8, !tbaa !54
  %i.pp = load i64, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.pq = add i64 %i.pp, 1
  store i64 %i.pq, ptr %i.c, align 8, !tbaa !55
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pp
  store i8 %i.pn, ptr %i.pr, align 1, !tbaa !35
  br label %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i

.thread.i:                                        ; preds = %bb.cz, %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit.i
  %.sroa.42.11 = phi i64 [ %.sink175.i, %bb.cz ], [ %.sink.i, %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit.i ] ; 6 uses
  %.083143.in.i = phi i16 [ %.0.in.i118.i, %bb.cz ], [ %.0.in.i114.i, %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit.i ] ; 5 uses
  %i.ps = icmp ne i16 %.083143.in.i, 256
  %i.pt = icmp ult i16 %.083143.in.i, 286
  %or.cond.i37 = and i1 %i.ps, %i.pt
  br i1 %or.cond.i37, label %bb.db, label %bb.ee

bb.db:                                            ; preds = %.thread.i
  %.083143.i = zext nneg i16 %.083143.in.i to i64
  %i.pu = add nsw i64 %.083143.i, -257            ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !29
  %i.px = zext i32 %i.pw to i64                   ; 2 uses
  %i.py = add nsw i16 %.083143.in.i, -285
  %.not102.i = icmp ult i16 %i.py, -20
  br i1 %.not102.i, label %bb.dk, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @_ZL11LENGTHEXTRA, i64 %i.pu
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !29 ; 2 uses
  %i.qb = lshr i64 %.sroa.42.11, 3                ; 6 uses
  %i.qc = add nuw nsw i64 %i.qb, 3                ; 2 uses
  %i.qd = icmp ult i64 %i.qc, %2
  br i1 %i.qd, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 %i.qb ; 2 uses
  %i.qf = load i16, ptr %i.qe, align 1
  %i.qg = zext i16 %i.qf to i32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !35
  %i.qj = zext i8 %i.qi to i32
  %i.qk = shl nuw nsw i32 %i.qj, 16
  %i.ql = or disjoint i32 %i.qk, %i.qg
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 %i.qc
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !35
  %i.qo = zext i8 %i.qn to i32
  %i.qp = shl nuw i32 %i.qo, 24
  %i.qq = or disjoint i32 %i.ql, %i.qp
  br label %_ZL12ensureBits25P16LodePNGBitReaderm.exit.i

bb.de:                                            ; preds = %bb.dc
  %i.qr = icmp samesign ult i64 %i.qb, %2
  br i1 %i.qr, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 %i.qb
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !35
  %i.qu = zext i8 %i.qt to i32
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.qv = phi i32 [ %i.qu, %bb.df ], [ 0, %bb.de ] ; 2 uses
  %i.qw = add nuw nsw i64 %i.qb, 1                ; 2 uses
  %i.qx = icmp samesign ult i64 %i.qw, %2
  br i1 %i.qx, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 %i.qw
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !35
  %i.ra = zext i8 %i.qz to i32
  %i.rb = shl nuw nsw i32 %i.ra, 8
  %i.rc = or disjoint i32 %i.rb, %i.qv
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.rd = phi i32 [ %i.rc, %bb.dh ], [ %i.qv, %bb.dg ] ; 2 uses
  %i.re = add nuw nsw i64 %i.qb, 2                ; 2 uses
  %i.rf = icmp samesign ult i64 %i.re, %2
  br i1 %i.rf, label %bb.dj, label %_ZL12ensureBits25P16LodePNGBitReaderm.exit.i

bb.dj:                                            ; preds = %bb.di
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 %i.re
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !35
  %i.ri = zext i8 %i.rh to i32
  %i.rj = shl nuw nsw i32 %i.ri, 16
  %i.rk = or i32 %i.rj, %i.rd
  br label %_ZL12ensureBits25P16LodePNGBitReaderm.exit.i

_ZL12ensureBits25P16LodePNGBitReaderm.exit.i:     ; preds = %bb.dj, %bb.di, %bb.dd
  %.sink250.i = phi i32 [ %i.qq, %bb.dd ], [ %i.rk, %bb.dj ], [ %i.rd, %bb.di ]
  %i.rl = trunc i64 %.sroa.42.11 to i32
  %i.rm = and i32 %i.rl, 7
  %i.rn = lshr i32 %.sink250.i, %i.rm
  %i.ro = zext i32 %i.qa to i64
  %notmask.i.i121.i = shl nsw i32 -1, %i.qa
  %i.rp = xor i32 %notmask.i.i121.i, -1
  %i.rq = and i32 %i.rn, %i.rp
  %i.rr = add i64 %.sroa.42.11, %i.ro
  %i.rs = zext nneg i32 %i.rq to i64
  %i.rt = add nuw nsw i64 %i.rs, %i.px
  br label %bb.dk

bb.dk:                                            ; preds = %_ZL12ensureBits25P16LodePNGBitReaderm.exit.i, %bb.db
  %i.ru = phi i64 [ %i.rr, %_ZL12ensureBits25P16LodePNGBitReaderm.exit.i ], [ %.sroa.42.11, %bb.db ] ; 5 uses
  %.079.i = phi i64 [ %i.rt, %_ZL12ensureBits25P16LodePNGBitReaderm.exit.i ], [ %i.px, %bb.db ] ; 7 uses
  %i.rv = lshr i64 %i.ru, 3                       ; 7 uses
  %i.rw = add nuw nsw i64 %i.rv, 4                ; 2 uses
  %i.rx = icmp ult i64 %i.rw, %2
  br i1 %i.rx, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 %i.rv
  %i.rz = load i32, ptr %i.ry, align 1
  %i.sa = trunc i64 %i.ru to i32
  %i.sb = and i32 %i.sa, 7                        ; 2 uses
  %i.sc = lshr i32 %i.rz, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 %i.rw
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !35
  %i.sf = zext i8 %i.se to i32
  %i.sg = shl nuw i32 %i.sf, 24
  %i.sh = sub nuw nsw i32 8, %i.sb
  %i.si = shl i32 %i.sg, %i.sh
  %i.sj = or i32 %i.si, %i.sc
  br label %_ZL12ensureBits32P16LodePNGBitReaderm.exit122.i

bb.dm:                                            ; preds = %bb.dk
  %i.sk = icmp samesign ult i64 %i.rv, %2
  br i1 %i.sk, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 %i.rv
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !35
  %i.sn = zext i8 %i.sm to i32
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.so = phi i32 [ %i.sn, %bb.dn ], [ 0, %bb.dm ] ; 2 uses
  %i.sp = add nuw nsw i64 %i.rv, 1                ; 2 uses
  %i.sq = icmp samesign ult i64 %i.sp, %2
  br i1 %i.sq, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 %i.sp
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !35
  %i.st = zext i8 %i.ss to i32
  %i.su = shl nuw nsw i32 %i.st, 8
  %i.sv = or disjoint i32 %i.su, %i.so
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.sw = phi i32 [ %i.sv, %bb.dp ], [ %i.so, %bb.do ] ; 2 uses
  %i.sx = add nuw nsw i64 %i.rv, 2                ; 2 uses
  %i.sy = icmp samesign ult i64 %i.sx, %2
  br i1 %i.sy, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 %i.sx
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !35
  %i.tb = zext i8 %i.ta to i32
  %i.tc = shl nuw nsw i32 %i.tb, 16
  %i.td = or i32 %i.tc, %i.sw
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.te = phi i32 [ %i.td, %bb.dr ], [ %i.sw, %bb.dq ] ; 2 uses
  %i.tf = add nuw nsw i64 %i.rv, 3                ; 2 uses
  %i.tg = icmp samesign ult i64 %i.tf, %2
  br i1 %i.tg, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 %i.tf
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !35
  %i.tj = zext i8 %i.ti to i32
  %i.tk = shl nuw i32 %i.tj, 24
  %i.tl = or i32 %i.tk, %i.te
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.tm = phi i32 [ %i.tl, %bb.dt ], [ %i.te, %bb.ds ]
  %i.tn = trunc i64 %i.ru to i32
  %i.to = and i32 %i.tn, 7
  %i.tp = lshr i32 %i.tm, %i.to
  br label %_ZL12ensureBits32P16LodePNGBitReaderm.exit122.i

_ZL12ensureBits32P16LodePNGBitReaderm.exit122.i:  ; preds = %bb.du, %bb.dl
  %storemerge154.i = phi i32 [ %i.tp, %bb.du ], [ %i.sj, %bb.dl ] ; 3 uses
  %i.tq = and i32 %storemerge154.i, 511
  %i.tr = zext nneg i32 %i.tq to i64              ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.pre182.i.pre, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !35  ; 4 uses
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %.pre184.i.pre, i64 %i.tr
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !68 ; 2 uses
  %i.tw = icmp ult i8 %i.tt, 10
  br i1 %i.tw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZL12ensureBits32P16LodePNGBitReaderm.exit122.i
  %i.tx = zext nneg i8 %i.tt to i64
  %i.ty = zext nneg i8 %i.tt to i32
  %i.tz = lshr i32 %storemerge154.i, %i.ty
  %i.ua = add i64 %i.ru, %i.tx
  br label %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit127.i

bb.dw:                                            ; preds = %_ZL12ensureBits32P16LodePNGBitReaderm.exit122.i
  %i.ub = zext i8 %i.tt to i32
  %i.uc = lshr i32 %storemerge154.i, 9            ; 2 uses
  %i.ud = add i64 %i.ru, 9
  %i.ue = add nsw i32 %i.ub, -9
  %notmask.i.i124.i = shl nsw i32 -1, %i.ue
  %i.uf = xor i32 %notmask.i.i124.i, -1
  %i.ug = and i32 %i.uc, %i.uf
  %i.uh = trunc i32 %i.ug to i16
  %i.ui = add i16 %i.tv, %i.uh
  %i.uj = zext i16 %i.ui to i64                   ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.pre182.i.pre, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !35
  %i.um = zext i8 %i.ul to i64
  %i.un = add nuw nsw i64 %i.um, 4294967287       ; 2 uses
  %i.uo = and i64 %i.un, 4294967295
  %i.up = trunc i64 %i.un to i32
  %i.uq = lshr i32 %i.uc, %i.up
  %i.ur = add i64 %i.ud, %i.uo
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %.pre184.i.pre, i64 %i.uj
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !68
  br label %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit127.i

_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit127.i: ; preds = %bb.dw, %bb.dv
  %.val.i128.i = phi i32 [ %i.tz, %bb.dv ], [ %i.uq, %bb.dw ]
  %i.uu = phi i64 [ %i.ua, %bb.dv ], [ %i.ur, %bb.dw ] ; 3 uses
  %.0.in.i125.i = phi i16 [ %i.tv, %bb.dv ], [ %i.ut, %bb.dw ] ; 4 uses
  %i.uv = icmp ugt i16 %.0.in.i125.i, 29
  br i1 %i.uv, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit127.i
  %i.uw = icmp ult i16 %.0.in.i125.i, 32
  %..i = select i1 %i.uw, i32 18, i32 16
  br label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit

bb.dy:                                            ; preds = %_ZL19huffmanDecodeSymbolP16LodePNGBitReaderPK11HuffmanTree.exit127.i
  %i.ux = zext nneg i16 %.0.in.i125.i to i64      ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !29 ; 2 uses
  %.not103.i = icmp samesign ult i16 %.0.in.i125.i, 4
  br i1 %.not103.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.va = getelementptr inbounds nuw [4 x i8], ptr @_ZL13DISTANCEEXTRA, i64 %i.ux
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !29 ; 2 uses
  %i.vc = zext i32 %i.vb to i64
  %notmask.i.i129.i = shl nsw i32 -1, %i.vb
  %i.vd = xor i32 %notmask.i.i129.i, -1
  %i.ve = and i32 %.val.i128.i, %i.vd
  %i.vf = add i64 %i.uu, %i.vc
  %i.vg = add i32 %i.ve, %i.uz
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.42.13 = phi i64 [ %i.uu, %bb.dy ], [ %i.vf, %bb.dz ] ; 5 uses
  %.082.i = phi i32 [ %i.uz, %bb.dy ], [ %i.vg, %bb.dz ] ; 2 uses
  %i.vh = load i64, ptr %i.c, align 8, !tbaa !55  ; 6 uses
  %i.vi = zext i32 %.082.i to i64                 ; 9 uses
  %i.vj = icmp ult i64 %i.vh, %i.vi
  br i1 %i.vj, label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.vk = sub nuw i64 %i.vh, %i.vi                ; 5 uses
  %i.vl = add i64 %i.vh, %.079.i
  store i64 %i.vl, ptr %i.c, align 8, !tbaa !55
  %i.vm = icmp samesign ugt i64 %.079.i, %i.vi
  br i1 %i.vm, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %.not.i130.i = icmp eq i32 %.082.i, 0
  br i1 %.not.i130.i, label %.lr.ph.preheader.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ec
  %i.vn = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vk
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vp, ptr readonly align 1 %i.vo, i64 %i.vi, i1 false), !tbaa !35, !alias.scope !268
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.i, %bb.ec
  %i.vq = add i64 %i.vh, %i.vi                    ; 3 uses
  %i.vr = sub nsw i64 %.079.i, %i.vi
  %.neg = add nuw nsw i64 %i.vi, 1
  %xtraiter211 = and i64 %i.vr, 1
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.vs = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.vt = add i64 %i.vk, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vk
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !35
  %i.vw = add i64 %i.vq, 1
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vq
  store i8 %i.vv, ptr %i.vx, align 1, !tbaa !35
  %i.vy = add nuw nsw i64 %i.vi, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.0158.i.unr = phi i64 [ %i.vi, %.lr.ph.preheader.i ], [ %i.vy, %.lr.ph.i.prol ]
  %.080157.i.unr = phi i64 [ %i.vk, %.lr.ph.preheader.i ], [ %i.vt, %.lr.ph.i.prol ]
  %.081156.i.unr = phi i64 [ %i.vq, %.lr.ph.preheader.i ], [ %i.vw, %.lr.ph.i.prol ]
  %i.vz = icmp eq i64 %.079.i, %.neg
  br i1 %i.vz, label %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0158.i = phi i64 [ %i.wm, %.lr.ph.i ], [ %.0158.i.unr, %.lr.ph.i.prol.loopexit ]
  %.080157.i = phi i64 [ %i.wf, %.lr.ph.i ], [ %.080157.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.081156.i = phi i64 [ %i.wj, %.lr.ph.i ], [ %.081156.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.wa = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %.080157.i
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !35
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 %.081156.i
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !35
  %i.we = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.wf = add i64 %.080157.i, 2
  %i.wg = getelementptr i8, ptr %i.we, i64 %.080157.i
  %i.wh = getelementptr i8, ptr %i.wg, i64 1
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !35
  %i.wj = add i64 %.081156.i, 2
  %i.wk = getelementptr i8, ptr %i.we, i64 %.081156.i
  %i.wl = getelementptr i8, ptr %i.wk, i64 1
  store i8 %i.wi, ptr %i.wl, align 1, !tbaa !35
  %i.wm = add nuw nsw i64 %.0158.i, 2             ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.wm, %.079.i
  br i1 %exitcond.not.i.1, label %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i, label %.lr.ph.i, !llvm.loop !260

bb.ed:                                            ; preds = %bb.eb
  %.not.i132.i = icmp eq i64 %.079.i, 0
  br i1 %.not.i132.i, label %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i, label %.lr.ph.preheader.i133.i

.lr.ph.preheader.i133.i:                          ; preds = %bb.ed
  %i.wn = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.vk
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.vh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wp, ptr readonly align 1 %i.wo, i64 %.079.i, i1 false), !tbaa !35, !alias.scope !269
  br label %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i

bb.ee:                                            ; preds = %.thread.i
  %7 = icmp eq i16 %.083143.in.i, 256
  br i1 %7, label %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i, label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit

_ZL14lodepng_memcpyPvPKvm.exit135.thread.i:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.ee, %.lr.ph.preheader.i133.i, %bb.ed, %bb.da
  %.sroa.42.12 = phi i64 [ %.sink175.i, %bb.da ], [ %.sroa.42.11, %bb.ee ], [ %.sroa.42.13, %bb.ed ], [ %.sroa.42.13, %.lr.ph.preheader.i133.i ], [ %.sroa.42.13, %.lr.ph.i ], [ %.sroa.42.13, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.not101.i = phi i1 [ true, %bb.da ], [ false, %bb.ee ], [ true, %bb.ed ], [ true, %.lr.ph.preheader.i133.i ], [ true, %.lr.ph.i ], [ true, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.wq = load i64, ptr %i.d, align 8, !tbaa !56  ; 3 uses
  %i.wr = load i64, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.ws = sub i64 %i.wq, %i.wr
  %i.wt = icmp ult i64 %i.ws, 260
  br i1 %i.wt, label %bb.ef, label %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i

bb.ef:                                            ; preds = %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i
  %i.wu = add i64 %i.wr, 260                      ; 2 uses
  %i.wv = icmp ugt i64 %i.wu, %i.wq
  br i1 %i.wv, label %bb.eg, label %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i

bb.eg:                                            ; preds = %bb.ef
  %i.ww = lshr i64 %i.wq, 1
  %i.wx = add i64 %i.wu, %i.ww                    ; 2 uses
  %i.wy = load ptr, ptr %0, align 8, !tbaa !54
  %i.wz = tail call noalias noundef ptr @realloc(ptr noundef %i.wy, i64 noundef %i.wx) #32 ; 2 uses
  %.not.i137.i = icmp eq ptr %i.wz, null
  br i1 %.not.i137.i, label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit, label %.thread.i138.i

.thread.i138.i:                                   ; preds = %bb.eg
  store i64 %i.wx, ptr %i.d, align 8, !tbaa !56
  store ptr %i.wz, ptr %0, align 8, !tbaa !54
  br label %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i

_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i: ; preds = %.thread.i138.i, %bb.ef, %_ZL14lodepng_memcpyPvPKvm.exit135.thread.i
  %i.xa = icmp ugt i64 %.sroa.42.12, %mul.val.i.i
  br i1 %i.xa, label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i
  br i1 %.not105.i, label %.backedge.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xb = load i64, ptr %i.c, align 8, !tbaa !55
  %i.xc = icmp ule i64 %i.xb, %i.bp               ; 2 uses
  %brmerge.not = and i1 %i.xc, %.not101.i
  br i1 %brmerge.not, label %.backedge.backedge, label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit

.backedge.i:                                      ; preds = %bb.eh
  br i1 %.not101.i, label %.backedge.backedge, label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit

.backedge.backedge:                               ; preds = %.backedge.i, %bb.ei
  br label %.backedge

_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit: ; preds = %bb.ei
  %.mux.le = select i1 %i.xc, i32 0, i32 109
  br label %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit

_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit: ; preds = %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit, %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i, %bb.eg, %bb.ee, %bb.ea, %.backedge.i, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.thread.i, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i, %bb.dx
  %.sroa.42.9 = phi i64 [ %i.al, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.thread.i ], [ %i.uu, %bb.dx ], [ %.sroa.42.7, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i ], [ %.sroa.42.11, %bb.ee ], [ %.sroa.42.12, %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i ], [ %.sroa.42.12, %bb.eg ], [ %.sroa.42.13, %bb.ea ], [ %.sroa.42.12, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit ], [ %.sroa.42.12, %.backedge.i ]
  %.pre180247.i = phi ptr [ %.pre180245.i, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.thread.i ], [ %.pre180.i, %bb.dx ], [ %.pre180.i, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i ], [ %.pre180.i, %.backedge.i ], [ %.pre180.i, %bb.ea ], [ %.pre180.i, %bb.ee ], [ %.pre180.i, %bb.eg ], [ %.pre180.i, %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i ], [ %.pre180.i, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit ]
  %i.xd = phi ptr [ null, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.thread.i ], [ %.pre184.i.pre, %bb.dx ], [ %.pre184.i.pre, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i ], [ %.pre184.i.pre, %.backedge.i ], [ %.pre184.i.pre, %bb.ea ], [ %.pre184.i.pre, %bb.ee ], [ %.pre184.i.pre, %bb.eg ], [ %.pre184.i.pre, %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i ], [ %.pre184.i.pre, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit ]
  %i.xe = phi ptr [ null, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.thread.i ], [ %.pre182.i.pre, %bb.dx ], [ %.pre182.i.pre, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i ], [ %.pre182.i.pre, %.backedge.i ], [ %.pre182.i.pre, %bb.ea ], [ %.pre182.i.pre, %bb.ee ], [ %.pre182.i.pre, %bb.eg ], [ %.pre182.i.pre, %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i ], [ %.pre182.i.pre, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit ]
  %i.xf = phi ptr [ %.pre181.i.pre, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.thread.i ], [ %.pre181.i.pre128, %bb.dx ], [ %.pre181.i.pre128, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i ], [ %.pre181.i.pre128, %.backedge.i ], [ %.pre181.i.pre128, %bb.ea ], [ %.pre181.i.pre128, %bb.ee ], [ %.pre181.i.pre128, %bb.eg ], [ %.pre181.i.pre128, %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i ], [ %.pre181.i.pre128, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit ]
  %.5.i = phi i32 [ %i.bz, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.thread.i ], [ %..i, %bb.dx ], [ %.087.i, %_ZL19getTreeInflateFixedP11HuffmanTreeS0_.exit.i ], [ 16, %bb.ee ], [ 51, %_ZL16ucvector_reserveP8ucvectorm.exit139.thread.i ], [ 83, %bb.eg ], [ 52, %bb.ea ], [ %.mux.le, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.loopexit.split.loop.exit ], [ 0, %.backedge.i ] ; 2 uses
  %i.xg = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.xg) #31
  %i.xh = load ptr, ptr %i.m, align 8, !tbaa !64
  tail call void @free(ptr noundef %i.xh) #31
  tail call void @free(ptr noundef %.pre180247.i) #31
  tail call void @free(ptr noundef %i.xf) #31
  %i.xi = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.xi) #31
  %i.xj = load ptr, ptr %i.n, align 8, !tbaa !64
  tail call void @free(ptr noundef %i.xj) #31
  tail call void @free(ptr noundef %i.xe) #31
  tail call void @free(ptr noundef %i.xd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.not30 = icmp eq i32 %.5.i, 0
  br i1 %.not30, label %bb.ej, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread

bb.ej:                                            ; preds = %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.thread90, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit
  %.sroa.42.194 = phi i64 [ %i.bo, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.thread90 ], [ %.sroa.42.9, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit ]
  %i.xk = load i64, ptr %i.e, align 8, !tbaa !58  ; 2 uses
  %.not31 = icmp eq i64 %i.xk, 0
  br i1 %.not31, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.xl = load i64, ptr %i.c, align 8, !tbaa !55
  %i.xm = icmp ugt i64 %i.xl, %i.xk
  br i1 %i.xm, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit

_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit: ; preds = %bb.ej, %bb.ek
  %.not29 = icmp eq i32 %i.ai, 0
  br i1 %.not29, label %bb.b, label %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread

_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit.thread: ; preds = %bb.b, %_ZL11ensureBits9P16LodePNGBitReaderm.exit, %bb.ek, %bb.k, %bb.i, %bb.l, %bb.g, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit, %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit, %bb.a, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.thread95
  %.224 = phi i32 [ 83, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit.thread95 ], [ 105, %bb.a ], [ 20, %_ZL11ensureBits9P16LodePNGBitReaderm.exit ], [ 52, %bb.b ], [ 23, %bb.l ], [ 21, %bb.i ], [ 83, %bb.k ], [ 52, %bb.g ], [ 0, %_ZL21LodePNGBitReader_initP16LodePNGBitReaderPKhm.exit ], [ 109, %bb.ek ], [ %.5.i, %_ZL20inflateNoCompressionP8ucvectorP16LodePNGBitReaderPK25LodePNGDecompressSettings.exit ]
  ret i32 %.224
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 91) i32 @_Z15lodepng_deflatePPhPmPKhmPK23LodePNGCompressSettings(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.uivector, align 8           ; 10 uses
  %6 = alloca %struct.HuffmanTree, align 8        ; 12 uses
  %7 = alloca %struct.HuffmanTree, align 8        ; 11 uses
  %8 = alloca %struct.HuffmanTree, align 8        ; 9 uses
  %9 = alloca %struct.HuffmanTree, align 8        ; 11 uses
  %10 = alloca %struct.HuffmanTree, align 8       ; 9 uses
  %11 = alloca %struct.uivector, align 8          ; 8 uses
  %12 = alloca %struct.Hash, align 8              ; 10 uses
  %13 = alloca %struct.LodePNGBitWriter, align 8  ; 53 uses
  %14 = alloca %struct.ucvector, align 8          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  store ptr %i.a, ptr %14, align 8, !tbaa !54, !alias.scope !300
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !55, !alias.scope !300
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store i64 %i.b, ptr %i.d, align 8, !tbaa !56, !alias.scope !300
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store ptr %14, ptr %13, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 62 uses
  store i8 0, ptr %i.e, align 8, !tbaa !73
  %i.f = load i32, ptr %4, align 8, !tbaa !75     ; 2 uses
  %i.g = icmp ugt i32 %i.f, 2
  br i1 %i.g, label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.f, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %3, 65534                        ; 2 uses
  %i.i = udiv i64 %i.h, 65535                     ; 2 uses
  %.not50.i.i = icmp ult i64 %i.h, 65535
  br i1 %.not50.i.i, label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = add nsw i64 %i.i, -1
  %i.k = trunc i64 %3 to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.i.i, %.lr.ph.i.i
  %.04252.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %_ZL14lodepng_memcpyPvPKvm.exit.i.i ] ; 4 uses
  %.04351.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %_ZL14lodepng_memcpyPvPKvm.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !55   ; 7 uses
  %i.m = icmp eq i64 %.04351.i.i, %i.j
  %i.n = sub i64 %3, %.04252.i.i
  %i.o = icmp ult i64 %i.n, 65535
  %i.p = trunc i64 %.04252.i.i to i32
  %i.q = sub i32 %i.k, %i.p
  %.041.i.i = select i1 %i.o, i32 %i.q, i32 65535 ; 5 uses
  %i.r = zext i32 %.041.i.i to i64                ; 3 uses
  %i.s = add i64 %i.l, 5
  %i.t = add i64 %i.s, %i.r                       ; 3 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !55
  %i.u = load i64, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.v = icmp ugt i64 %i.t, %i.u
  %.pre.i.i = load ptr, ptr %14, align 8, !tbaa !54 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.u, 1
  %i.x = add i64 %i.t, %i.w                       ; 2 uses
  %i.y = call noalias noundef ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.x) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZL16lodepng_deflatevP8ucvectorPKhmPK23LodePNGCompressSettings.exit, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.e
  store i64 %i.x, ptr %i.d, align 8, !tbaa !56
  store ptr %i.y, ptr %14, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i.i, %bb.d
  %i.z = phi ptr [ %i.y, %.thread.i.i.i.i ], [ %.pre.i.i, %bb.d ]
  %i.aa = sub i32 65535, %.041.i.i                ; 2 uses
  %i.ab = zext i1 %i.m to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35
  %i.ad = trunc i32 %.041.i.i to i8
  %i.ae = load ptr, ptr %14, align 8, !tbaa !54
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.l
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !35
  %i.ah = lshr i32 %.041.i.i, 8
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = load ptr, ptr %14, align 8, !tbaa !54
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.l
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !35
  %i.am = trunc i32 %i.aa to i8
  %i.an = load ptr, ptr %14, align 8, !tbaa !54
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.l
  %i.ap = getelementptr i8, ptr %i.ao, i64 3
  store i8 %i.am, ptr %i.ap, align 1, !tbaa !35
  %i.aq = lshr i32 %i.aa, 8
  %i.ar = trunc i32 %i.aq to i8
  %i.as = load ptr, ptr %14, align 8, !tbaa !54
  %i.at = getelementptr i8, ptr %i.as, i64 %i.l
  %i.au = getelementptr i8, ptr %i.at, i64 4
end_hunk_0
begin_hunk_1_@_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm:bb.a
  %switch.ext383 = zext i8 %switch.load382 to i32
  %i.oh = mul i32 %i.nn, %switch.ext383
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362.i

_Z15lodepng_get_bppPK16LodePNGColorMode.exit362.i: ; preds = %bb.cf, %switch.lookup380
  %.0.i.i.i361.i = phi i32 [ %i.oh, %switch.lookup380 ], [ 0, %bb.cf ] ; 8 uses
  %i.oi = load i32, ptr %1, align 4, !tbaa !29    ; 10 uses
  %i.oj = add i32 %i.oi, 7                        ; 2 uses
  %i.ok = lshr i32 %i.oj, 3
  %i.ol = load i32, ptr %2, align 4, !tbaa !29    ; 4 uses
  %i.om = add i32 %i.ol, 7
  %i.on = lshr i32 %i.om, 3
  %i.oo = lshr i32 %i.oj, 6
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = zext i32 %.0.i.i.i361.i to i64          ; 7 uses
  %i.or = mul nuw nsw i64 %i.op, %i.oq
  %i.os = add nuw nsw i64 %i.or, 1
  %i.ot = and i32 %i.ok, 7
  %i.ou = mul i32 %i.ot, %.0.i.i.i361.i
  %i.ov = add i32 %i.ou, 7
  %i.ow = lshr i32 %i.ov, 3
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = add nuw nsw i64 %i.os, %i.ox            ; 2 uses
  %i.oz = zext nneg i32 %i.on to i64
  %i.pa = icmp ugt i32 %i.oi, 4
  %i.pb = add i32 %i.oi, 3                        ; 4 uses
  br i1 %i.pa, label %bb.cg, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362._crit_edge.i

bb.cg:                                            ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362.i
  %i.pc = lshr i32 %i.pb, 3
  %i.pd = lshr i32 %i.pb, 6
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = mul nuw nsw i64 %i.pe, %i.oq
  %i.pg = add nuw nsw i64 %i.pf, 1
  %i.ph = and i32 %i.pc, 7
  %i.pi = mul i32 %i.ph, %.0.i.i.i361.i
  %i.pj = add i32 %i.pi, 7
  %i.pk = lshr i32 %i.pj, 3
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = add nuw nsw i64 %i.pg, %i.pl
  %i.pn = add nuw nsw i64 %i.pm, %i.oy
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362._crit_edge.i

_Z15lodepng_get_bppPK16LodePNGColorMode.exit362._crit_edge.i: ; preds = %bb.cg, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362.i
  %.pn.i = phi i64 [ %i.pn, %bb.cg ], [ %i.oy, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362.i ]
  %.0261.i = mul i64 %.pn.i, %i.oz
  %i.po = lshr i32 %i.pb, 2
  %i.pp = add i32 %i.ol, 3                        ; 2 uses
  %i.pq = lshr i32 %i.pp, 3
  %i.pr = lshr i32 %i.pb, 5
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = mul nuw nsw i64 %i.ps, %i.oq
  %i.pu = add nuw nsw i64 %i.pt, 1
  %i.pv = and i32 %i.po, 7
  %i.pw = mul i32 %i.pv, %.0.i.i.i361.i
  %i.px = add i32 %i.pw, 7
  %i.py = lshr i32 %i.px, 3
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = add nuw nsw i64 %i.pu, %i.pz
  %i.qb = zext nneg i32 %i.pq to i64
  %i.qc = mul i64 %i.qa, %i.qb
  %i.qd = add i64 %.0261.i, %i.qc                 ; 2 uses
  %i.qe = icmp ugt i32 %i.oi, 2
  %i.qf = add i32 %i.oi, 1                        ; 4 uses
  br i1 %i.qe, label %bb.ch, label %._crit_edge.i

bb.ch:                                            ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362._crit_edge.i
  %i.qg = lshr i32 %i.qf, 2
  %i.qh = lshr i32 %i.pp, 2
  %i.qi = lshr i32 %i.qf, 5
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = mul nuw nsw i64 %i.qj, %i.oq
  %i.ql = add nuw nsw i64 %i.qk, 1
  %i.qm = and i32 %i.qg, 7
  %i.qn = mul i32 %i.qm, %.0.i.i.i361.i
  %i.qo = add i32 %i.qn, 7
  %i.qp = lshr i32 %i.qo, 3
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = add nuw nsw i64 %i.ql, %i.qq
  %i.qs = zext nneg i32 %i.qh to i64
  %i.qt = mul i64 %i.qr, %i.qs
  %i.qu = add i64 %i.qd, %i.qt
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ch, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362._crit_edge.i
  %.1262.i = phi i64 [ %i.qu, %bb.ch ], [ %i.qd, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit362._crit_edge.i ]
  %i.qv = lshr i32 %i.qf, 1
  %i.qw = add i32 %i.ol, 1                        ; 2 uses
  %i.qx = lshr i32 %i.qw, 2
  %i.qy = lshr i32 %i.qf, 4
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = mul nuw nsw i64 %i.qz, %i.oq
  %i.rb = add nuw nsw i64 %i.ra, 1
  %i.rc = and i32 %i.qv, 7
  %i.rd = mul i32 %i.rc, %.0.i.i.i361.i
  %i.re = add i32 %i.rd, 7
  %i.rf = lshr i32 %i.re, 3
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = add nuw nsw i64 %i.rb, %i.rg
  %i.ri = zext nneg i32 %i.qx to i64
  %i.rj = mul i64 %i.rh, %i.ri
  %i.rk = add i64 %.1262.i, %i.rj                 ; 2 uses
  %i.rl = icmp ugt i32 %i.oi, 1
  br i1 %i.rl, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i
  %i.rm = lshr i32 %i.oi, 1
  %i.rn = lshr i32 %i.qw, 1
  %i.ro = lshr i32 %i.oi, 4
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = mul nuw nsw i64 %i.rp, %i.oq
  %i.rr = add nuw nsw i64 %i.rq, 1
  %i.rs = and i32 %i.rm, 7
  %i.rt = mul i32 %i.rs, %.0.i.i.i361.i
  %i.ru = add i32 %i.rt, 7
  %i.rv = lshr i32 %i.ru, 3
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = add nuw nsw i64 %i.rr, %i.rw
  %i.ry = zext nneg i32 %i.rn to i64
  %i.rz = mul i64 %i.rx, %i.ry
  %i.sa = add i64 %i.rk, %i.rz
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i
  %.2263.i = phi i64 [ %i.sa, %bb.ci ], [ %i.rk, %._crit_edge.i ]
  %i.sb = lshr i32 %i.ol, 1
  %i.sc = lshr i32 %i.oi, 3
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = mul nuw nsw i64 %i.sd, %i.oq
  %i.sf = add nuw nsw i64 %i.se, 1
  %i.sg = and i32 %i.oi, 7
  %i.sh = mul i32 %i.sg, %.0.i.i.i361.i
  %i.si = add i32 %i.sh, 7
  %i.sj = lshr i32 %i.si, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = add nuw nsw i64 %i.sf, %i.sk
  %i.sm = zext nneg i32 %i.sb to i64
  %i.sn = mul i64 %i.sl, %i.sm
  %i.so = add i64 %.2263.i, %i.sn
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i
  %.3264.i = phi i64 [ %i.of, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i ], [ %i.so, %bb.cj ] ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !165 ; 2 uses
  %.not.i363.i = icmp eq ptr %i.sq, null
  br i1 %.not.i363.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sr = call noundef i32 %i.sq(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ax, i64 noundef %.0265466.i, ptr noundef nonnull %3), !inline_history !554
  %.not27.i.i = icmp eq i32 %i.sr, 0
  br i1 %.not27.i.i, label %._ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit_crit_edge.i, label %.thread418.thread569.i

._ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit_crit_edge.i: ; preds = %bb.cl
  %.pre492.pre.i = load i64, ptr %i.l, align 8
  br label %.thread418.i

.thread418.thread569.i:                           ; preds = %bb.cl
  %i.ss = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !58 ; 2 uses
  %.not28.i.i = icmp eq i64 %i.st, 0
  %.pre492.pre496.i = load i64, ptr %i.l, align 8
  %i.su = icmp ule i64 %.pre492.pre496.i, %i.st
  %i.sv = select i1 %.not28.i.i, i1 true, i1 %i.su
  %.0.i365.ph.i = select i1 %i.sv, i32 110, i32 109
  br label %.thread.i.sink.split

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.sw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.not26.i.i = icmp eq i64 %.3264.i, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not26.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %malloc.i = tail call ptr @malloc(i64 %.3264.i) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %malloc.i, null
  br i1 %.not.i.i.i.i, label %_ZL15ucvector_resizeP8ucvectorm.exit.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.cn
  store i64 %.3264.i, ptr %i.sx, align 8, !tbaa !56
  store ptr %malloc.i, ptr %6, align 8, !tbaa !54
  br label %_ZL15ucvector_resizeP8ucvectorm.exit.i.i

_ZL15ucvector_resizeP8ucvectorm.exit.i.i:         ; preds = %.thread.i.i.i.i, %bb.cn
  store i64 0, ptr %i.sw, align 8, !tbaa !55
  br label %bb.co

bb.co:                                            ; preds = %_ZL15ucvector_resizeP8ucvectorm.exit.i.i, %bb.cm
  %i.sy = call fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %6, ptr noundef nonnull %i.ax, i64 noundef %.0265466.i, ptr noundef nonnull %3)
  %i.sz = load ptr, ptr %6, align 8, !tbaa !54
  store ptr %i.sz, ptr %i.k, align 8, !tbaa !28
  %i.ta = load i64, ptr %i.sw, align 8, !tbaa !55 ; 2 uses
  store i64 %i.ta, ptr %i.l, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.thread418.i

.thread418.i:                                     ; preds = %bb.co, %._ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit_crit_edge.i
  %.pre492.i = phi i64 [ %i.ta, %bb.co ], [ %.pre492.pre.i, %._ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit_crit_edge.i ]
  %.0.i365.i = phi i32 [ %i.sy, %bb.co ], [ 0, %._ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit_crit_edge.i ] ; 3 uses
  store i32 %.0.i365.i, ptr %i.n, align 8, !tbaa !146
  %7 = icmp eq i64 %.pre492.i, %.3264.i
  %.not338.i = icmp ne i32 %.0.i365.i, 0
  %or.cond346.i = select i1 %.not338.i, i1 true, i1 %7
  br i1 %or.cond346.i, label %bb.cp, label %.thread425.i

.thread425.i:                                     ; preds = %.thread418.i
  store i32 91, ptr %i.n, align 8, !tbaa !146
  call void @free(ptr noundef nonnull %i.ax) #31
  br label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit

.thread.i.sink.split:                             ; preds = %bb.k, %bb.o, %bb.az, %bb.bd, %bb.bh, %bb.bq, %bb.br, %bb.bs, %bb.bv, %bb.ag, %bb.ak, %bb.af, %bb.ai, %bb.y, %bb.x, %bb.w, %bb.aa, %bb.h, %bb.j, %bb.cd, %.thread418.thread569.i
  %.0.i56.ph.sink = phi i32 [ %.0.i365.ph.i, %.thread418.thread569.i ], [ 63, %bb.j ], [ 106, %bb.cd ], [ 30, %bb.h ], [ 41, %bb.aa ], [ 44, %bb.ai ], [ 30, %bb.y ], [ 39, %bb.x ], [ 42, %bb.w ], [ 103, %bb.ag ], [ 45, %bb.ak ], [ 43, %bb.af ], [ 98, %bb.bd ], [ 121, %bb.bq ], [ 122, %bb.br ], [ 95, %bb.o ], [ 64, %bb.k ], [ 117, %bb.bh ], [ 96, %bb.az ], [ 57, %bb.bv ], [ 69, %bb.bs ]
  store i32 %.0.i56.ph.sink, ptr %i.n, align 8, !tbaa !146
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bu, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bf, %bb.bb, %bb.ax, %bb.av, %bb.at, %bb.aq, %bb.an, %bb.t, %.thread.i.sink.split
  call void @free(ptr noundef nonnull %i.ax) #31
  br label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit

bb.cp:                                            ; preds = %.thread418.i
  call void @free(ptr noundef nonnull %i.ax) #31
  %.not340.i = icmp eq i32 %.0.i365.i, 0
  br i1 %.not340.i, label %bb.cq, label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit

bb.cq:                                            ; preds = %bb.cp
  %i.tb = load i32, ptr %1, align 4, !tbaa !29
  %i.tc = load i32, ptr %2, align 4, !tbaa !29
  %i.td = load i32, ptr %i.r, align 8, !tbaa !93  ; 4 uses
  %i.te = load i32, ptr %i.t, align 4, !tbaa !94  ; 2 uses
  %i.tf = icmp ult i32 %i.td, 7
  br i1 %i.tf, label %switch.lookup384, label %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit.i

switch.lookup384:                                 ; preds = %bb.cq
  %i.tg = zext nneg i32 %i.td to i64
  %switch.gep385 = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.tg
  %switch.load386 = load i8, ptr %switch.gep385, align 1
  %switch.ext387 = zext i8 %switch.load386 to i32
  %i.th = mul i32 %i.te, %switch.ext387
  %i.ti = zext i32 %i.th to i64
  br label %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit.i

_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit.i: ; preds = %bb.cq, %switch.lookup384
  %.0.i.i.i.i366.i = phi i64 [ %i.ti, %switch.lookup384 ], [ 0, %bb.cq ] ; 2 uses
  %i.tj = zext i32 %i.tb to i64
  %i.tk = zext i32 %i.tc to i64
  %i.tl = mul nuw i64 %i.tk, %i.tj                ; 2 uses
  %i.tm = lshr i64 %i.tl, 3
  %i.tn = mul i64 %i.tm, %.0.i.i.i.i366.i
  %i.to = and i64 %i.tl, 7
  %i.tp = mul nuw nsw i64 %i.to, %.0.i.i.i.i366.i
  %i.tq = add nuw nsw i64 %i.tp, 7
  %i.tr = lshr i64 %i.tq, 3
  %i.ts = add i64 %i.tr, %i.tn                    ; 3 uses
  %i.tt = call noalias noundef ptr @malloc(i64 noundef %i.ts) #30 ; 20 uses
  %i.tu = ptrtoaddr ptr %i.tt to i64              ; 7 uses
  store ptr %i.tt, ptr %0, align 8, !tbaa !28
  %.not341.i = icmp eq ptr %i.tt, null
  br i1 %.not341.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit.i
  store i32 83, ptr %i.n, align 8, !tbaa !146
  br label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit

bb.cs:                                            ; preds = %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit.i
  %.not.i367.i = icmp eq i64 %i.ts, 0
  br i1 %.not.i367.i, label %_ZL14lodepng_memsetPvim.exit.i, label %.lr.ph.preheader.i368.i

.lr.ph.preheader.i368.i:                          ; preds = %bb.cs
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.tt, i8 0, i64 %i.ts, i1 false), !tbaa !35, !alias.scope !604
  br label %_ZL14lodepng_memsetPvim.exit.i

_ZL14lodepng_memsetPvim.exit.i:                   ; preds = %.lr.ph.preheader.i368.i, %bb.cs
  %i.tv = load ptr, ptr %i.k, align 8, !tbaa !28  ; 22 uses
  %i.tw = ptrtoaddr ptr %i.tv to i64              ; 7 uses
  %i.tx = load i32, ptr %1, align 4, !tbaa !29    ; 7 uses
  %i.ty = load i32, ptr %2, align 4, !tbaa !29    ; 6 uses
  %i.tz = icmp ult i32 %i.td, 7
  br i1 %i.tz, label %switch.lookup388, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i370.i

switch.lookup388:                                 ; preds = %_ZL14lodepng_memsetPvim.exit.i
  %i.ua = zext nneg i32 %i.td to i64
  %switch.gep389 = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.ua
  %switch.load390 = load i8, ptr %switch.gep389, align 1
  %switch.ext391 = zext i8 %switch.load390 to i32
  %i.ub = mul i32 %i.te, %switch.ext391
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i370.i

_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i370.i: ; preds = %_ZL14lodepng_memsetPvim.exit.i, %switch.lookup388
  %.0.i.i.i.i371.i = phi i32 [ %i.ub, %switch.lookup388 ], [ 0, %_ZL14lodepng_memsetPvim.exit.i ] ; 35 uses
  %i.uc = icmp eq i32 %.0.i.i.i.i371.i, 0
  br i1 %i.uc, label %_ZL20postProcessScanlinesPhS_jjPK11LodePNGInfo.exit.i, label %bb.ct

bb.ct:                                            ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i370.i
  %i.ud = load i32, ptr %i.nk, align 8, !tbaa !116
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.cu, label %bb.dc

bb.cu:                                            ; preds = %bb.ct
  %i.uf = icmp ult i32 %.0.i.i.i.i371.i, 8
  br i1 %i.uf, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.ug = mul i32 %.0.i.i.i.i371.i, %i.tx         ; 4 uses
  %i.uh = add i32 %i.ug, 7
  %i.ui = and i32 %i.uh, -8                       ; 2 uses
  %.not75.i.i = icmp eq i32 %i.ug, %i.ui
  br i1 %.not75.i.i, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.uj = call fastcc noundef i32 @_ZL8unfilterPhPKhjjj(ptr noundef %i.tv, ptr noundef %i.tv, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef %.0.i.i.i.i371.i) ; 2 uses
  %.not77.i.i = icmp eq i32 %i.uj, 0
  br i1 %.not77.i.i, label %bb.cx, label %_ZL20postProcessScanlinesPhS_jjPK11LodePNGInfo.exit.i

bb.cx:                                            ; preds = %bb.cw
  %i.uk = zext i32 %i.ug to i64
  %i.ul = zext i32 %i.ui to i64
  %i.um = icmp ne i32 %i.ty, 0
  %i.un = icmp ne i32 %i.ug, 0
  %or.cond.i.i.i = and i1 %i.um, %i.un
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i, label %_ZL17removePaddingBitsPhPKhmmj.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.cx, %._crit_edge.i.i.i
  %.024.i.i.i = phi i32 [ %i.vm, %._crit_edge.i.i.i ], [ 0, %bb.cx ]
  %.01523.i.i.i = phi i64 [ %i.uo, %._crit_edge.i.i.i ], [ 0, %bb.cx ] ; 2 uses
  %.01622.i.i.i = phi i64 [ %i.vl, %._crit_edge.i.i.i ], [ 0, %bb.cx ] ; 2 uses
  %i.uo = add nuw i64 %.01523.i.i.i, %i.uk        ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i.i.i, %.preheader.i.i.i
  %.119.i.i.i = phi i64 [ %.01523.i.i.i, %.preheader.i.i.i ], [ %i.vk, %_ZL22setBitOfReversedStreamPmPhh.exit.i.i.i ] ; 4 uses
  %.11718.i.i.i = phi i64 [ %.01622.i.i.i, %.preheader.i.i.i ], [ %i.uu, %_ZL22setBitOfReversedStreamPmPhh.exit.i.i.i ] ; 3 uses
  %i.up = lshr i64 %.11718.i.i.i, 3
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.up
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !35
  %i.us = trunc i64 %.11718.i.i.i to i8
  %i.ut = and i8 %i.us, 7
  %i.uu = add nuw i64 %.11718.i.i.i, 1
  %i.uv = lshr exact i8 -128, %i.ut
  %i.uw = and i8 %i.uv, %i.ur
  %i.ux = icmp eq i8 %i.uw, 0
  %i.uy = lshr i64 %.119.i.i.i, 3
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.uy ; 2 uses
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !35  ; 2 uses
  br i1 %i.ux, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.vb = trunc i64 %.119.i.i.i to i16
  %i.vc = and i16 %i.vb, 7
  %i.vd = ashr i16 -129, %i.vc
  %i.ve = trunc i16 %i.vd to i8
  %i.vf = and i8 %i.va, %i.ve
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.vg = trunc i64 %.119.i.i.i to i8
  %i.vh = and i8 %i.vg, 7
  %i.vi = lshr exact i8 -128, %i.vh
  %i.vj = or i8 %i.va, %i.vi
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i.i.i

_ZL22setBitOfReversedStreamPmPhh.exit.i.i.i:      ; preds = %bb.da, %bb.cz
  %.sink.i.i.i.i = phi i8 [ %i.vj, %bb.da ], [ %i.vf, %bb.cz ]
  store i8 %.sink.i.i.i.i, ptr %i.uz, align 1, !tbaa !35
  %i.vk = add nuw i64 %.119.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.vk, %i.uo
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.cy, !llvm.loop !557

._crit_edge.i.i.i:                                ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i.i.i
  %i.vl = add nuw i64 %.01622.i.i.i, %i.ul
  %i.vm = add nuw i32 %.024.i.i.i, 1              ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i32 %i.vm, %i.ty
  br i1 %exitcond27.not.i.i.i, label %_ZL17removePaddingBitsPhPKhmmj.exit.i.i, label %.preheader.i.i.i, !llvm.loop !558

bb.db:                                            ; preds = %bb.cv, %bb.cu
  %i.vn = call fastcc noundef i32 @_ZL8unfilterPhPKhjjj(ptr noundef nonnull %i.tt, ptr noundef %i.tv, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef %.0.i.i.i.i371.i) ; 2 uses
  %.not76.i.i = icmp eq i32 %i.vn, 0
  br i1 %.not76.i.i, label %_ZL17removePaddingBitsPhPKhmmj.exit.i.i, label %_ZL20postProcessScanlinesPhS_jjPK11LodePNGInfo.exit.i

bb.dc:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  call fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef %.0.i.i.i.i371.i)
  %i.vo = icmp ult i32 %.0.i.i.i.i371.i, 8
  br label %bb.dd

bb.dd:                                            ; preds = %_ZL17removePaddingBitsPhPKhmmj.exit90.i.i, %bb.dc
  %indvars.iv.i.i = phi i64 [ 0, %bb.dc ], [ %indvars.iv.next.i.i, %_ZL17removePaddingBitsPhPKhmmj.exit90.i.i ] ; 6 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !25
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.vq ; 2 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !25
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.vt
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !29 ; 2 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !29 ; 3 uses
  %i.vz = call fastcc noundef i32 @_ZL8unfilterPhPKhjjj(ptr noundef %i.vr, ptr noundef %i.vu, i32 noundef %i.vw, i32 noundef %i.vy, i32 noundef %.0.i.i.i.i371.i) ; 2 uses
  %.not74.i.i = icmp eq i32 %i.vz, 0
  br i1 %.not74.i.i, label %bb.de, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %_ZL20postProcessScanlinesPhS_jjPK11LodePNGInfo.exit.i

bb.de:                                            ; preds = %bb.dd
  br i1 %i.vo, label %bb.df, label %_ZL17removePaddingBitsPhPKhmmj.exit90.i.i

bb.df:                                            ; preds = %bb.de
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !25
  %i.wc = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.wb
  %i.wd = mul i32 %i.vw, %.0.i.i.i.i371.i         ; 3 uses
  %i.we = zext i32 %i.wd to i64
  %i.wf = add i32 %i.wd, 7
  %i.wg = and i32 %i.wf, -8
end_hunk_1
begin_hunk_2_@_Z14lodepng_encodePPhPmPKhjjP12LodePNGState:bb.a

bb.n:                                             ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit
  %i.bf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ba)
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = and i32 %i.ba, 15
  %switch41.i419 = icmp ne i32 %i.bh, 0
  %or.cond42.i420 = and i1 %i.bg, %switch41.i419
  br i1 %or.cond42.i420, label %_ZL18checkColorValidity16LodePNGColorTypej.exit425, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.o:                                             ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit
  %i.bi = add i32 %i.ba, -8
  %switch.and37.i417 = and i32 %i.bi, -9
  %switch.selectcmp38.i418 = icmp eq i32 %switch.and37.i417, 0
  br i1 %switch.selectcmp38.i418, label %_ZL18checkColorValidity16LodePNGColorTypej.exit425, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.p:                                             ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit
  %i.bj = add i32 %i.ba, -8
  %switch.and39.i414 = and i32 %i.bj, -9
  %switch.selectcmp40.i415 = icmp eq i32 %switch.and39.i414, 0
  br i1 %switch.selectcmp40.i415, label %_ZL18checkColorValidity16LodePNGColorTypej.exit425, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

_ZL18checkColorValidity16LodePNGColorTypej.exit425: ; preds = %bb.m, %bb.p, %bb.o, %bb.l, %bb.n
  %i.bk = call noundef i32 @_Z17lodepng_info_copyP11LodePNGInfoPKS_(ptr noundef nonnull %7, ptr noundef nonnull %i.g) ; 2 uses
  %.not324 = icmp eq i32 %i.bk, 0
  br i1 %.not324, label %bb.q, label %bb.dq

bb.q:                                             ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit425
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !627
  %.not325 = icmp eq i32 %i.bm, 0
  br i1 %.not325, label %bb.as, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.bn, align 8, !tbaa !131
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.bo, align 4, !tbaa !132
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 1048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %9, i8 0, i64 14, i1 false)
  store i32 1, ptr %i.bp, align 8, !tbaa !133
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 1056
  store i64 0, ptr %i.bq, align 8, !tbaa !134
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 1064 ; 2 uses
  store i32 1, ptr %i.br, align 8, !tbaa !135
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 1068 ; 2 uses
  store i32 1, ptr %i.bs, align 4, !tbaa !136
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 460
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !109
  %.not326 = icmp eq i32 %i.bu, 0
  br i1 %.not326, label %_ZL15isRGBICCProfilePKhj.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !111 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !112
  %i.bz = icmp ult i32 %i.by, 20
  br i1 %i.bz, label %_ZL15isRGBICCProfilePKhj.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !35
  %i.cc = icmp eq i8 %i.cb, 71
  br i1 %i.cc, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 17
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !35
  %i.cf = icmp eq i8 %i.ce, 82
  br i1 %i.cf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 18
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !35
  %i.ci = icmp eq i8 %i.ch, 65
  br i1 %i.ci, label %_ZL16isGrayICCProfilePKhj.exit, label %bb.x

_ZL16isGrayICCProfilePKhj.exit:                   ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 19
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !35
  %.not490 = icmp eq i8 %i.ck, 89
  br i1 %.not490, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZL16isGrayICCProfilePKhj.exit
  store i32 0, ptr %i.br, align 8, !tbaa !135
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %_ZL16isGrayICCProfilePKhj.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !35
  %i.cn = icmp eq i8 %i.cm, 82
  br i1 %i.cn, label %bb.y, label %_ZL15isRGBICCProfilePKhj.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 17
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !35
  %i.cq = icmp eq i8 %i.cp, 71
  br i1 %i.cq, label %bb.z, label %_ZL15isRGBICCProfilePKhj.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 18
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = icmp eq i8 %i.cs, 66
  br i1 %i.ct, label %_ZL15isRGBICCProfilePKhj.exit, label %_ZL15isRGBICCProfilePKhj.exit.thread

_ZL15isRGBICCProfilePKhj.exit:                    ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 19
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !35
  %.not491 = icmp eq i8 %i.cv, 32
  br i1 %.not491, label %bb.aa, label %_ZL15isRGBICCProfilePKhj.exit.thread

bb.aa:                                            ; preds = %_ZL15isRGBICCProfilePKhj.exit
  store i32 0, ptr %i.bs, align 4, !tbaa !136
  br label %_ZL15isRGBICCProfilePKhj.exit.thread

_ZL15isRGBICCProfilePKhj.exit.thread:             ; preds = %bb.s, %bb.x, %bb.y, %bb.z, %bb.r, %bb.aa, %_ZL15isRGBICCProfilePKhj.exit
  %i.cw = call noundef i32 @_Z27lodepng_compute_color_statsP17LodePNGColorStatsPKhjjPK16LodePNGColorMode(ptr noundef nonnull %9, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.ax) ; 2 uses
  %.not330 = icmp eq i32 %i.cw, 0
  br i1 %.not330, label %bb.ab, label %.thread455

bb.ab:                                            ; preds = %_ZL15isRGBICCProfilePKhj.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !158
  %.not331 = icmp eq i32 %i.cy, 0
  br i1 %.not331, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 0, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 0, ptr %i.d, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i32 0, ptr %i.e, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, i8 0, i64 32, i1 false)
  store i32 2, ptr %10, align 8, !tbaa !93, !alias.scope !628
  store i32 16, ptr %i.cz, align 4, !tbaa !94, !alias.scope !628
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 268
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !161
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !160
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 276
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !159
  %i.dh = call noundef i32 @_Z19lodepng_convert_rgbPjS_S_jjjPK16LodePNGColorModeS2_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.dc, i32 noundef %i.de, i32 noundef %i.dg, ptr noundef nonnull %10, ptr noundef nonnull %i.y) ; 0 uses
  %i.di = load i32, ptr %i.c, align 4, !tbaa !29
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !29
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !29
  %i.dl = call fastcc noundef i32 @_ZL23lodepng_color_stats_addP17LodePNGColorStatsjjjj(ptr noundef %9, i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dk) ; 2 uses
  %.not332 = icmp eq i32 %i.dl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br i1 %.not332, label %bb.ad, label %bb.ar

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = call fastcc noundef i32 @_ZL17auto_choose_colorP16LodePNGColorModePKS_PK17LodePNGColorStats(ptr noundef %8, ptr noundef nonnull %i.ax, ptr noundef %9) ; 2 uses
  %.not333 = icmp eq i32 %i.dm, 0
  br i1 %.not333, label %bb.ae, label %.thread455

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 560
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !194
  %.not334 = icmp eq i32 %i.do, 0
  br i1 %.not334, label %bb.al, label %.thread449

.thread449:                                       ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 564
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !197 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 568
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !196 ; 3 uses
  %.398 = call i32 @llvm.umax.i32(i32 %i.dq, i32 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 572
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !195 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 576
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !198 ; 4 uses
  %.398. = call i32 @llvm.umax.i32(i32 %.398, i32 %i.du)
  %spec.select485 = call i32 @llvm.umax.i32(i32 %.398., i32 %i.dw)
  %.not335 = icmp eq i32 %i.ds, 0
  %i.dx = icmp eq i32 %i.ds, %i.dq
  %or.cond486 = or i1 %.not335, %i.dx
  br i1 %or.cond486, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.thread449
  %.not336 = icmp eq i32 %i.du, 0
  %i.dy = icmp eq i32 %i.du, %i.dq
  %or.cond487 = or i1 %.not336, %i.dy
  br i1 %or.cond487, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.not337 = icmp eq i32 %i.dw, 0
  %i.dz = icmp eq i32 %i.dw, %i.dq
  %spec.select488 = or i1 %.not337, %i.dz
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.thread449
  %i.ea = phi i1 [ false, %bb.af ], [ false, %.thread449 ], [ %spec.select488, %bb.ag ]
  %i.eb = load i32, ptr %i.h, align 8, !tbaa !148 ; 6 uses
  %i.ec = icmp eq i32 %i.eb, 3
  %i.ed = load i32, ptr %8, align 8               ; 3 uses
  %i.ee = icmp eq i32 %i.ed, 3                    ; 3 uses
  %or.cond = select i1 %i.ec, i1 %i.ee, i1 false
  %i.ef = icmp eq i32 %i.eb, 2
  %or.cond7 = select i1 %i.ef, i1 %i.ee, i1 false
  %i.eg = icmp ult i32 %spec.select485, 9         ; 3 uses
  %or.cond9 = and i1 %i.eg, %or.cond7
  %i.eh = icmp eq i32 %i.eb, 6
  %or.cond12 = select i1 %i.eh, i1 %i.ee, i1 false
  %i.ei = icmp eq i32 %i.dw, 8
  %or.cond14 = and i1 %i.ei, %i.eg
  %i.ej = select i1 %or.cond12, i1 %or.cond14, i1 false
  %i.ek = select i1 %i.ej, i1 true, i1 %or.cond9
  %narrow492 = select i1 %i.ek, i1 true, i1 %or.cond
  %.2247 = zext i1 %narrow492 to i32              ; 2 uses
  %i.el = and i32 %i.eb, -5
  %or.cond18 = icmp eq i32 %i.el, 2
  %i.em = load i32, ptr %i.j, align 4
  %i.en = icmp eq i32 %i.em, 16
  %or.cond22 = select i1 %or.cond18, i1 %i.en, i1 false
  br i1 %or.cond22, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eo = icmp eq i32 %i.ed, %i.eb
  %i.ep = load i32, ptr %i.w, align 4
  %i.eq = icmp eq i32 %i.ep, 8
  %or.cond25 = select i1 %i.eo, i1 %i.eq, i1 false
  %or.cond27 = and i1 %i.eg, %or.cond25
  %spec.select403 = select i1 %or.cond27, i32 1, i32 %.2247
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3 = phi i32 [ %.2247, %bb.ah ], [ %spec.select403, %bb.ai ] ; 2 uses
  %11 = icmp ne i32 %i.eb, 3
  %12 = icmp ne i32 %i.ed, 3
  %or.cond30 = select i1 %11, i1 %12, i1 false
  %or.cond32 = select i1 %or.cond30, i1 %i.ea, i1 false
  br i1 %or.cond32, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.w, align 4, !tbaa !94
  %i.es = icmp eq i32 %i.dq, %i.er
  %spec.select404 = select i1 %i.es, i32 1, i32 %.3
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ae
  %.5 = phi i32 [ 1, %bb.ae ], [ %.3, %bb.aj ], [ %spec.select404, %bb.ak ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !625
  %.not338 = icmp eq i32 %i.eu, 0
  br i1 %.not338, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.h, align 8, !tbaa !148
  %i.ew = and i32 %i.ev, -5
  %or.cond36.not = icmp eq i32 %i.ew, 0
  br i1 %or.cond36.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = load i32, ptr %8, align 8, !tbaa !93
  %i.ey = and i32 %i.ex, -5
  %or.cond39 = icmp eq i32 %i.ey, 0
  %.not339 = icmp eq i32 %.5, 0
  %or.cond489 = select i1 %or.cond39, i1 true, i1 %.not339
  br i1 %or.cond489, label %.thread458, label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.not339.old = icmp eq i32 %.5, 0
  br i1 %.not339.old, label %.thread458, label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.ez = call noundef i32 @_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_(ptr noundef nonnull %i.h, ptr noundef nonnull %8) ; 0 uses
  %i.fa = load i32, ptr %i.cx, align 8, !tbaa !158
  %.not340 = icmp eq i32 %i.fa, 0
  br i1 %.not340, label %.thread458, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 268
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !161
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !160
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 276
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !159
  %i.fk = call noundef i32 @_Z19lodepng_convert_rgbPjS_S_jjjPK16LodePNGColorModeS2_(ptr noundef nonnull %i.fb, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fd, i32 noundef %i.ff, i32 noundef %i.fh, i32 noundef %i.fj, ptr noundef nonnull %i.h, ptr noundef nonnull %i.y)
  %.not341 = icmp eq i32 %i.fk, 0
  br i1 %.not341, label %.thread458, label %.thread455

.thread458:                                       ; preds = %bb.ao, %bb.aq, %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.as

.thread455:                                       ; preds = %_ZL15isRGBICCProfilePKhj.exit.thread, %bb.ad, %bb.aq
  %.0255.ph = phi i32 [ 104, %bb.aq ], [ %i.dm, %bb.ad ], [ %i.cw, %_ZL15isRGBICCProfilePKhj.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.ar:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.as:                                            ; preds = %.thread458, %bb.q
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 460
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !109
  %.not342 = icmp eq i32 %i.fm, 0
  br i1 %.not342, label %bb.bd, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !111 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !112
  %i.fr = icmp ult i32 %i.fq, 20
  br i1 %i.fr, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !35
  switch i8 %i.ft, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread [
    i8 71, label %bb.av
    i8 82, label %bb.ay
  ]

bb.av:                                            ; preds = %bb.au
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 17
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !35
  %i.fw = icmp eq i8 %i.fv, 82
  br i1 %i.fw, label %bb.aw, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 18
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !35
  %i.fz = icmp eq i8 %i.fy, 65
  br i1 %i.fz, label %bb.ax, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 19
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !35
  %i.gc = icmp eq i8 %i.gb, 89                    ; 2 uses
  %i.gd = zext i1 %i.gc to i32
  %i.ge = xor i1 %i.gc, true
  br label %_ZL15isRGBICCProfilePKhj.exit431

bb.ay:                                            ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 17
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !35
  %i.gh = icmp eq i8 %i.gg, 71
  br i1 %i.gh, label %bb.az, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 18
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !35
  %i.gk = icmp eq i8 %i.gj, 66
  br i1 %i.gk, label %bb.ba, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fo, i64 19
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !35
  %i.gn = icmp ne i8 %i.gm, 32
  br label %_ZL15isRGBICCProfilePKhj.exit431

_ZL15isRGBICCProfilePKhj.exit431:                 ; preds = %bb.ax, %bb.ba
  %.0.i428463 = phi i32 [ 0, %bb.ba ], [ %i.gd, %bb.ax ]
  %.0.i430 = phi i1 [ %i.gn, %bb.ba ], [ %i.ge, %bb.ax ]
  br i1 %.0.i430, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %_ZL15isRGBICCProfilePKhj.exit431
  %i.go = load i32, ptr %i.h, align 8, !tbaa !148
  %i.gp = and i32 %i.go, -5
  %i.gq = icmp eq i32 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %.not343 = icmp eq i32 %.0.i428463, %i.gr
  br i1 %.not343, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gs = load i32, ptr %i.bl, align 8, !tbaa !627
  %.not344 = icmp eq i32 %i.gs, 0
  %i.gt = select i1 %.not344, i32 101, i32 102
  br label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.bd:                                            ; preds = %bb.bb, %bb.as
  %i.gu = call fastcc noundef i32 @_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.h)
  %.not345 = icmp eq i32 %i.gu, 0
  br i1 %.not345, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gv = load i32, ptr %i.h, align 8, !tbaa !93  ; 2 uses
  %i.gw = icmp ult i32 %i.gv, 7
  br i1 %i.gw, label %switch.lookup, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

switch.lookup:                                    ; preds = %bb.be
  %i.gx = zext i32 %4 to i64
  %i.gy = zext i32 %3 to i64
  %i.gz = mul nuw i64 %i.gx, %i.gy
  %i.ha = load i32, ptr %i.j, align 4, !tbaa !94
  %i.hb = zext nneg i32 %i.gv to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.hb
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.hc = mul i32 %i.ha, %switch.ext
  %i.hd = zext i32 %i.hc to i64
  %i.he = mul i64 %i.gz, %i.hd
  %i.hf = add i64 %i.he, 7
  %i.hg = lshr i64 %i.hf, 3
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

_Z15lodepng_get_bppPK16LodePNGColorMode.exit:     ; preds = %bb.be, %switch.lookup
  %.0.i.i.i = phi i64 [ %i.hg, %switch.lookup ], [ 0, %bb.be ] ; 2 uses
  %i.hh = call noalias noundef ptr @malloc(i64 noundef %.0.i.i.i) #30 ; 5 uses
  %i.hi = icmp ne ptr %i.hh, null
  %i.hj = icmp eq i64 %.0.i.i.i, 0
  %or.cond43.not = or i1 %i.hi, %i.hj
  br i1 %or.cond43.not, label %bb.bf, label %.thread472

bb.bf:                                            ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  %i.hk = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %i.hh, ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ax, i32 noundef %3, i32 noundef %4) ; 2 uses
  %.not347 = icmp eq i32 %i.hk, 0
  br i1 %.not347, label %bb.bg, label %.thread472

.thread472:                                       ; preds = %bb.bf, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  %.6261.ph = phi i32 [ %i.hk, %bb.bf ], [ 83, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit ]
  call void @free(ptr noundef %i.hh) #31
  br label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.hl = call fastcc noundef i32 @_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.hh, i32 noundef %3, i32 noundef %4, ptr noundef %7, ptr noundef nonnull %i.ag) ; 2 uses
  call void @free(ptr noundef %i.hh) #31
  %.not348 = icmp eq i32 %i.hl, 0
  br i1 %.not348, label %bb.bi, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.bh:                                            ; preds = %bb.bd
  %i.hm = call fastcc noundef i32 @_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %7, ptr noundef nonnull %i.ag) ; 2 uses
  %.not349 = icmp eq i32 %i.hm, 0
  br i1 %.not349, label %bb.bi, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread
end_hunk_2
begin_hunk_3_@_Z14lodepng_encodePPhPmPKhjjP12LodePNGState:bb.a
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !35
  %i.ky = icmp eq i8 %i.kx, 111
  br i1 %i.ky, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !35
  %i.lb = icmp eq i8 %i.la, 100
  br i1 %i.lb, label %bb.dd, label %bb.di

bb.dd:                                            ; preds = %bb.dc
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 3
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !35
  %i.le = icmp eq i8 %i.ld, 101
  br i1 %i.le, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !35
  %i.lh = icmp eq i8 %i.lg, 80
  br i1 %i.lh, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.li = getelementptr inbounds nuw i8, ptr %i.kt, i64 5
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !35
  %i.lk = icmp eq i8 %i.lj, 78
  br i1 %i.lk, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kt, i64 6
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !35
  %i.ln = icmp eq i8 %i.lm, 71
  br i1 %i.ln, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kt, i64 7
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !35
  %i.lq = icmp eq i8 %i.lp, 0
  br i1 %i.lq, label %.thread481, label %bb.di

bb.di:                                            ; preds = %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh
  %i.lr = add nuw i64 %.1243501, 1
  %.not387 = icmp eq i64 %.1243501, %.0242499
  br i1 %.not387, label %._crit_edge503, label %bb.da, !llvm.loop !623

._crit_edge503:                                   ; preds = %bb.di, %._crit_edge.thread, %.preheader
  %i.ls = load ptr, ptr @LODEPNG_VERSION_STRING, align 8, !tbaa !28
  %i.lt = call fastcc noundef i32 @_ZL13addChunk_tEXtP8ucvectorPKcS2_(ptr noundef %6, ptr noundef nonnull @.str.21, ptr noundef %i.ls) ; 2 uses
  %.not388 = icmp eq i32 %i.lt, 0
  br i1 %.not388, label %.thread481, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

.thread481:                                       ; preds = %bb.dh, %._crit_edge.thread, %._crit_edge503, %._crit_edge
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !104
  %.not389504 = icmp eq i64 %i.lv, 0
  br i1 %.not389504, label %._crit_edge507, label %.lr.ph506

.lr.ph506:                                        ; preds = %.thread481
  %i.lw = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ly = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 128
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dm
  %i.mb = add i64 %.2244505, 1                    ; 2 uses
  %i.mc = load i64, ptr %i.lu, align 8, !tbaa !104
  %.not389 = icmp eq i64 %i.mb, %i.mc
  br i1 %.not389, label %._crit_edge507, label %bb.dk, !llvm.loop !624

bb.dk:                                            ; preds = %.lr.ph506, %bb.dj
  %.2244505 = phi i64 [ 0, %.lr.ph506 ], [ %i.mb, %bb.dj ] ; 5 uses
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !105
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %.2244505
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !28 ; 2 uses
  %strlen.i433 = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.mf) ; 2 uses
  %i.mg = icmp ugt i64 %strlen.i433, 79
  br i1 %i.mg, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mh = icmp eq i64 %strlen.i433, 0
  br i1 %i.mh, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mi = load i32, ptr %i.lx, align 8, !tbaa !629
  %i.mj = load ptr, ptr %i.ly, align 8, !tbaa !106
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %.2244505
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !28
  %i.mm = load ptr, ptr %i.lz, align 8, !tbaa !107
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %.2244505
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !28
  %i.mp = load ptr, ptr %i.ma, align 8, !tbaa !108
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.2244505
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !28
  %i.ms = call fastcc noundef i32 @_ZL13addChunk_iTXtP8ucvectorjPKcS2_S2_S2_PK23LodePNGCompressSettings(ptr noundef %6, i32 noundef %i.mi, ptr noundef nonnull %i.mf, ptr noundef %i.ml, ptr noundef %i.mo, ptr noundef %i.mr, ptr noundef nonnull %i.ag) ; 2 uses
  %.not393 = icmp eq i32 %i.ms, 0
  br i1 %.not393, label %bb.dj, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

._crit_edge507:                                   ; preds = %bb.dj, %.thread481
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 392
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !28 ; 2 uses
  %.not390 = icmp eq ptr %i.mu, null
  br i1 %.not390, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %._crit_edge507
  %i.mv = getelementptr inbounds nuw i8, ptr %7, i64 416
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !25
  %i.mx = call fastcc noundef i32 @_ZL16addUnknownChunksP8ucvectorPhm(ptr noundef %6, ptr noundef %i.mu, i64 noundef %i.mw) ; 2 uses
  %.not391 = icmp eq i32 %i.mx, 0
  br i1 %.not391, label %bb.do, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.do:                                            ; preds = %bb.dn, %._crit_edge507
  %i.my = call fastcc noundef i32 @_ZL13addChunk_IENDP8ucvector(ptr noundef %6)
  br label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

_ZL18checkColorValidity16LodePNGColorTypej.exit.thread: ; preds = %bb.cu, %bb.cv, %bb.cx, %bb.cy, %bb.dk, %bb.dl, %bb.dm, %bb.au, %bb.av, %bb.aw, %bb.at, %bb.ay, %bb.az, %bb.ar, %_ZL15isRGBICCProfilePKhj.exit431, %bb.bc, %_ZL18checkColorValidity16LodePNGColorTypej.exit, %bb.m, %bb.l, %bb.p, %bb.o, %bb.n, %bb.f, %bb.h, %bb.g, %bb.k, %bb.j, %bb.i, %._crit_edge503, %.thread472, %.thread455, %bb.bg, %bb.bi, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.bz, %bb.cb, %bb.cd, %bb.cf, %bb.ci, %bb.cj, %bb.cl, %bb.cn, %bb.cp, %bb.cq, %bb.cs, %bb.dn, %bb.do, %bb.e, %bb.d, %bb.c, %bb.bh
  %.13 = phi i32 [ %i.dl, %bb.ar ], [ 68, %bb.c ], [ 61, %bb.d ], [ %i.lt, %._crit_edge503 ], [ 37, %bb.i ], [ %i.hm, %bb.bh ], [ 71, %bb.e ], [ 37, %bb.n ], [ %i.hl, %bb.bg ], [ %.6261.ph, %.thread472 ], [ %i.hn, %bb.bi ], [ %i.hr, %bb.bj ], [ %i.hv, %bb.bl ], [ %i.hy, %bb.bn ], [ %i.ib, %bb.bp ], [ %i.ie, %bb.br ], [ %i.ig, %bb.bt ], [ %i.ij, %bb.bv ], [ %i.il, %bb.bx ], [ %i.in, %bb.bz ], [ %i.iq, %bb.cb ], [ %i.iu, %bb.cd ], [ %i.ix, %bb.cf ], [ %i.jc, %bb.ci ], [ %i.jd, %bb.cj ], [ %i.jf, %bb.cl ], [ %i.jh, %bb.cn ], [ %i.jm, %bb.cp ], [ %i.jp, %bb.cq ], [ %i.jt, %bb.cs ], [ 37, %bb.m ], [ 37, %bb.l ], [ 37, %bb.p ], [ 100, %bb.az ], [ 37, %bb.o ], [ 100, %_ZL15isRGBICCProfilePKhj.exit431 ], [ %i.gt, %bb.bc ], [ %i.my, %bb.do ], [ %i.mx, %bb.dn ], [ %.0255.ph, %.thread455 ], [ 31, %bb.f ], [ 37, %bb.h ], [ 37, %bb.g ], [ 37, %bb.k ], [ 37, %bb.j ], [ 31, %_ZL18checkColorValidity16LodePNGColorTypej.exit ], [ 100, %bb.at ], [ 100, %bb.aw ], [ 100, %bb.av ], [ 100, %bb.ay ], [ 100, %bb.au ], [ 66, %bb.dk ], [ %i.ms, %bb.dm ], [ 67, %bb.dl ], [ 67, %bb.cv ], [ 66, %bb.cu ], [ %i.kj, %bb.cy ], [ %i.ki, %bb.cx ] ; 2 uses
  call void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr noundef nonnull %7)
  %i.mz = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.mz) #31
  %i.na = load ptr, ptr %i.x, align 8, !tbaa !95  ; 2 uses
  %.not.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread
  call void @free(ptr noundef nonnull %i.na) #31
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit: ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, %bb.dp
  %i.nb = load ptr, ptr %6, align 8, !tbaa !54
  store ptr %i.nb, ptr %0, align 8, !tbaa !28
  %i.nc = load i64, ptr %i.f, align 8, !tbaa !55
  store i64 %i.nc, ptr %1, align 8, !tbaa !25
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 632
  store i32 %.13, ptr %i.nd, align 8, !tbaa !146
  br label %bb.dq

bb.dq:                                            ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit425, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit
  %.1264 = phi i32 [ %.13, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit ], [ %i.bk, %_ZL18checkColorValidity16LodePNGColorTypej.exit425 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.1264
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL23lodepng_color_stats_addP17LodePNGColorStatsjjjj(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  %4 = alloca %struct.LodePNGColorMode, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = lshr i32 %1, 8
  %i.f = trunc i32 %i.e to i8
  store i8 %i.f, ptr %i.a, align 1, !tbaa !35
  %i.g = trunc i32 %1 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !35
  %i.i = lshr i32 %2, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = trunc i32 %2 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !35
  %i.n = lshr i32 %3, 8
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.o, ptr %i.p, align 1, !tbaa !35
  %i.q = trunc i32 %3 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 -1, ptr %i.s, align 1, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 -1, ptr %i.t, align 1, !tbaa !35
  store i32 16, ptr %i.c, align 4, !tbaa !94
  store i32 6, ptr %4, align 8, !tbaa !93
  %i.u = call noundef i32 @_Z27lodepng_compute_color_statsP17LodePNGColorStatsPKhjjPK16LodePNGColorMode(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %i.u
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 109) i32 @_ZL17auto_choose_colorP16LodePNGColorModePKS_PK17LodePNGColorStats(ptr nofree noundef nonnull captures(none) initializes((24, 28)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.b = load i64, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !141  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.h = load i32, ptr %i.g, align 8, !tbaa !133  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !97
  %i.j = icmp eq i32 %i.f, 0
  %i.k = icmp ugt i64 %i.b, 16                    ; 2 uses
  %or.cond.not = select i1 %i.j, i1 true, i1 %i.k ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.h, i32 8)
  %.081 = select i1 %or.cond.not, i32 %i.h, i32 %spec.store.select ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !137
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.n = load i32, ptr %i.m, align 4, !tbaa !136
  %.not90 = icmp ne i32 %i.n, 0
  %narrow = select i1 %.not90, i1 %.not, i1 false ; 4 uses
  %i.o = icmp ugt i32 %.081, 7
  %or.cond4.not = select i1 %narrow, i1 true, i1 %i.o
  %spec.store.select9 = select i1 %or.cond4.not, i32 %.081, i32 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !132  ; 5 uses
  %i.r = zext i32 %i.q to i64
  %i.s = icmp ult i32 %i.q, 3
  %i.t = icmp ult i32 %i.q, 5
  %i.u = icmp ult i32 %i.q, 17
  %i.v = select i1 %i.u, i32 4, i32 8
  %i.w = select i1 %i.t, i32 2, i32 %i.v
  %i.x = select i1 %i.s, i32 1, i32 %i.w          ; 3 uses
  %i.y = icmp ugt i32 %spec.store.select9, 8
  %i.z = add i32 %i.q, -257
  %i.aa = icmp ult i32 %i.z, -256
  %i.ab = shl nuw nsw i64 %i.r, 1
  %i.ac = icmp ult i64 %i.b, %i.ab
  %.not116 = or i1 %i.aa, %i.ac
  %i.ad = icmp eq i32 %i.d, 0
  %i.ae = select i1 %or.cond.not, i1 %i.ad, i1 false ; 2 uses
  %or.cond8.not = select i1 %narrow, i1 %i.ae, i1 false
  %.not94 = icmp ule i32 %spec.store.select9, %i.x
  %or.cond101.not = select i1 %or.cond8.not, i1 %.not94, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !135
  %.not95 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not95, i1 true, i1 %or.cond101.not
  %i.ai = select i1 %i.ah, i1 true, i1 %.not116
  %.185 = select i1 %i.ai, i1 true, i1 %i.y
  br i1 %.185, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.al) #31
  br label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit

_Z21lodepng_palette_clearP16LodePNGColorMode.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = load i32, ptr %i.p, align 4, !tbaa !132
  %.not98118 = icmp eq i32 %i.am, 0
  br i1 %.not98118, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_Z21lodepng_palette_clearP16LodePNGColorMode.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %i.ao = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.g ]
  %.086119 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %bb.g ] ; 2 uses
  %i.ap = shl i64 %.086119, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %.not.i102 = icmp eq ptr %i.ay, null
  br i1 %.not.i102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 2 uses
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !95
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.critedge.i.i
  %.014.i.i = phi i64 [ %i.ca, %.critedge.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.bc = shl nuw nsw i64 %.014.i.i, 2            ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !35
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !35
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bc
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 0, ptr %i.bj, align 1, !tbaa !35
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i8 -1, ptr %i.bm, align 1, !tbaa !35
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.bo = shl i64 %.014.i.i, 2
  %i.bp = or disjoint i64 %i.bo, 4                ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !35
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 0, ptr %i.bt, align 1, !tbaa !35
  %i.bu = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bp
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 0, ptr %i.bw, align 1, !tbaa !35
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  store i8 -1, ptr %i.bz, align 1, !tbaa !35
  %i.ca = add nuw nsw i64 %.014.i.i, 2            ; 2 uses
  %.not13.i.i.1 = icmp eq i64 %i.ca, 256
  br i1 %.not13.i.i.1, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i, label %.critedge.i.i, !llvm.loop !9

_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i: ; preds = %.critedge.i.i
  %.pr.i = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %.not18.i = icmp eq ptr %.pr.i, null
  br i1 %.not18.i, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge

_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge: ; preds = %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i
  %.pre = load i64, ptr %i.an, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge, %bb.d
  %i.cb = phi i64 [ %.pre, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge ], [ %i.ao, %bb.d ] ; 2 uses
  %i.cc = phi ptr [ %.pr.i, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge ], [ %i.ay, %bb.d ]
  %i.cd = icmp ugt i64 %i.cb, 255
  br i1 %i.cd, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = shl nuw nsw i64 %i.cb, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce
  store i8 %i.ar, ptr %i.cf, align 1, !tbaa !35
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.ch = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ci = shl i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.at, ptr %i.ck, align 1, !tbaa !35
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.cm = load i64, ptr %i.an, align 8, !tbaa !96
  %i.cn = shl i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 %i.av, ptr %i.cp, align 1, !tbaa !35
  %i.cq = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.cr = load i64, ptr %i.an, align 8, !tbaa !96
  %i.cs = shl i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 3
  store i8 %i.ax, ptr %i.cu, align 1, !tbaa !35
  %i.cv = load i64, ptr %i.an, align 8, !tbaa !96
  %i.cw = add i64 %i.cv, 1                        ; 2 uses
  store i64 %i.cw, ptr %i.an, align 8, !tbaa !96
  %i.cx = add i64 %.086119, 1                     ; 2 uses
  %i.cy = load i32, ptr %i.p, align 4, !tbaa !132
  %i.cz = zext i32 %i.cy to i64
  %.not98 = icmp eq i64 %i.cx, %i.cz
  br i1 %.not98, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %bb.d, !llvm.loop !631

_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread: ; preds = %bb.g, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i, %bb.f, %bb.e, %_Z21lodepng_palette_clearP16LodePNGColorMode.exit
  %.1 = phi i32 [ 0, %_Z21lodepng_palette_clearP16LodePNGColorMode.exit ], [ 83, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i ], [ 83, %bb.e ], [ 108, %bb.f ], [ 0, %bb.g ] ; 7 uses
  store i32 3, ptr %0, align 8, !tbaa !93
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.x, ptr %i.da, align 4, !tbaa !94
  %i.db = load i32, ptr %1, align 8, !tbaa !93
  %i.dc = icmp eq i32 %i.db, 3
  br i1 %i.dc, label %bb.h, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.h:                                             ; preds = %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !96
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !96
  %.not100 = icmp ult i64 %i.de, %i.dg
  br i1 %.not100, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !94
  %i.dj = icmp eq i32 %i.di, %i.x
  br i1 %i.dj, label %bb.j, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.j:                                             ; preds = %bb.i
  %i.dk = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.dk) #31
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i: ; preds = %bb.k, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa !35, !alias.scope !638
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !95
  %.not.i103 = icmp eq ptr %i.dm, null
  br i1 %.not.i103, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %bb.l

bb.l:                                             ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i
  %i.dn = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 3 uses
  store ptr %i.dn, ptr %i.ak, align 8, !tbaa !95
  %.not10.i = icmp eq ptr %i.dn, null
  br i1 %.not10.i, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load i64, ptr %i.dd, align 8, !tbaa !96
  %i.dp = shl i64 %i.do, 2                        ; 2 uses
  %.not.i.i104 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i104, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr readonly align 1 %i.dq, i64 %i.dp, i1 false), !tbaa !35, !alias.scope !639
  br label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.n:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.store.select9, ptr %i.dr, align 4, !tbaa !94
  %i.ds = select i1 %narrow, i32 4, i32 6
  %i.dt = select i1 %narrow, i32 0, i32 2
  %i.du = select i1 %i.ae, i32 %i.dt, i32 %i.ds
  store i32 %i.du, ptr %0, align 8, !tbaa !93
  %.not97117 = icmp ne i32 %i.f, 0
  %.not97.not = select i1 %.not97117, i1 %i.k, i1 false
  br i1 %.not97.not, label %bb.o, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.o:                                             ; preds = %bb.n
  %notmask = shl nsw i32 -1, %spec.store.select9
  %i.dv = xor i32 %notmask, -1                    ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i16, ptr %i.dw, align 8, !tbaa !138
  %i.dy = zext i16 %i.dx to i32
  %i.dz = and i32 %i.dy, %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !123
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !139
  %i.ed = zext i16 %i.ec to i32
  %i.ee = and i32 %i.ed, %i.dv
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !124
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !140
  %i.ei = zext i16 %i.eh to i32
  %i.ej = and i32 %i.ei, %i.dv
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !125
  store i32 1, ptr %i.i, align 8, !tbaa !97
  br label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit: ; preds = %bb.l, %.lr.ph.preheader.i.i, %bb.m, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, %bb.h, %bb.i, %bb.n, %bb.o
  %.2 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ %.1, %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread ], [ %.1, %bb.i ], [ %.1, %bb.h ], [ %.1, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i ], [ %.1, %.lr.ph.preheader.i.i ], [ %.1, %bb.m ], [ %.1, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 89) i32 @_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings(ptr nofree noundef nonnull captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 12 uses
  %i.b = alloca [7 x i32], align 16               ; 12 uses
  %i.c = alloca [8 x i64], align 16               ; 4 uses
  %i.d = alloca [8 x i64], align 16               ; 4 uses
  %i.e = alloca [8 x i64], align 16               ; 12 uses
  %i.f = alloca [7 x i32], align 16               ; 17 uses
  %i.g = alloca [7 x i32], align 16               ; 17 uses
  %i.h = alloca [8 x i64], align 16               ; 18 uses
  %i.i = alloca [8 x i64], align 16               ; 18 uses
  %i.j = alloca [8 x i64], align 16               ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !93   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 13 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !94   ; 5 uses
  %i.o = icmp ult i32 %i.l, 7
  br i1 %i.o, label %switch.lookup, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

switch.lookup:                                    ; preds = %bb.a
  %i.p = zext nneg i32 %i.l to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.q = mul i32 %i.n, %switch.ext
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

_Z15lodepng_get_bppPK16LodePNGColorMode.exit:     ; preds = %bb.a, %switch.lookup
  %.0.i.i.i = phi i32 [ %i.q, %switch.lookup ], [ 0, %bb.a ] ; 16 uses
  %i.r = zext i32 %.0.i.i.i to i64                ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !116
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  %i.v = zext i32 %4 to i64                       ; 2 uses
  %i.w = zext i32 %3 to i64
  %i.x = mul nuw i64 %i.r, %i.w                   ; 3 uses
  %i.y = add nuw i64 %i.x, 7                      ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = mul i64 %i.z, %i.v                      ; 2 uses
  %i.ab = add i64 %i.aa, %i.v                     ; 3 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !25
  %i.ac = tail call noalias noundef ptr @malloc(i64 noundef %i.ab) #30 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !28
  %.not101 = icmp ne ptr %i.ac, null
  %.not102 = icmp eq i64 %i.ab, 0
  %or.cond122 = or i1 %.not102, %.not101
  br i1 %or.cond122, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.b
  %i.ad = icmp ult i32 %.0.i.i.i, 8
  br i1 %i.ad, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.thread
  %i.ae = and i64 %i.y, 68719476728               ; 2 uses
  %.not104 = icmp eq i64 %i.x, %i.ae
  br i1 %.not104, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef %i.aa) #30 ; 4 uses
  %.not105.not = icmp eq ptr %i.af, null
  br i1 %.not105.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.af, ptr noundef %2, i64 noundef %i.ae, i64 noundef %i.x, i32 noundef %4)
  %i.ag = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.ac, ptr noundef nonnull %i.af, i32 noundef %3, i32 noundef %4, i32 %i.l, i32 %i.n, ptr noundef %6)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ 83, %bb.d ], [ %i.ag, %bb.e ]
  tail call void @free(ptr noundef %i.af) #31
  br label %bb.ad

bb.g:                                             ; preds = %bb.c, %.thread
  %i.ah = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.ac, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %i.l, i32 %i.n, ptr noundef %6)
  br label %bb.ad

bb.h:                                             ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  call fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %3, i32 noundef %4, i32 noundef %.0.i.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  store i64 %i.aj, ptr %1, align 8, !tbaa !25
  %i.ak = tail call noalias noundef ptr @malloc(i64 noundef %i.aj) #30 ; 4 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !28
  %.not = icmp ne ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %i.an = tail call noalias noundef ptr @malloc(i64 noundef %i.am) #30 ; 30 uses
  %i.ao = icmp ne ptr %i.an, null
  %i.ap = icmp eq i64 %i.am, 0
  %or.cond.not126 = or i1 %i.ap, %i.ao
  %.not123 = and i1 %.not, %or.cond.not126
  br i1 %.not123, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  call fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %3, i32 noundef %4, i32 noundef %.0.i.i.i)
  %i.aq = icmp ugt i32 %.0.i.i.i, 7
  br i1 %i.aq, label %.preheader82.split.us.preheader.i, label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.i
  %.not106.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not106.i, label %_ZL15Adam7_interlacePhPKhjjj.exit.thread, label %.preheader84.split.us.i.preheader

.preheader84.split.us.i.preheader:                ; preds = %.preheader84.i
  %exitcond.not.i = icmp eq i32 %.0.i.i.i, 1
  %exitcond.not.i.1 = icmp eq i32 %.0.i.i.i, 2
  %exitcond.not.i.2 = icmp eq i32 %.0.i.i.i, 3
  %exitcond.not.i.3 = icmp eq i32 %.0.i.i.i, 4
  %exitcond.not.i.4 = icmp eq i32 %.0.i.i.i, 5
  %exitcond.not.i.5 = icmp eq i32 %.0.i.i.i, 6
  br label %.preheader84.split.us.i

_ZL15Adam7_interlacePhPKhjjj.exit.thread:         ; preds = %.preheader84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader

.preheader84.split.us.i:                          ; preds = %.preheader84.split.us.i.preheader, %._crit_edge93.split.us.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %._crit_edge93.split.us.i ], [ 0, %.preheader84.split.us.i.preheader ] ; 8 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv120.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv120.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29 ; 2 uses
  %.not108.i = icmp eq i32 %i.au, 0
  %.not109.i = icmp eq i32 %i.as, 0
  %or.cond.i = select i1 %.not108.i, i1 true, i1 %.not109.i
  br i1 %or.cond.i, label %._crit_edge93.split.us.i, label %.preheader83.lr.ph.split.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.preheader83.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us.i ], [ 0, %.preheader83.us.i ] ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.aw = mul i32 %i.hj, %i.av
  %reass.add.reass.us.i = add i32 %invariant.op.us.i, %i.aw
  %reass.mul.us.i = mul i32 %reass.add.reass.us.i, %.0.i.i.i ; 2 uses
  %i.ax = zext i32 %reass.mul.us.i to i64         ; 7 uses
  %reass.add80.us.i = add i32 %i.gz, %i.av
  %reass.mul81.us.i = mul i32 %reass.add80.us.i, %.0.i.i.i ; 3 uses
  %i.ay = zext i32 %reass.mul81.us.i to i64
  %i.az = add i64 %i.hl, %i.ay                    ; 7 uses
  %i.ba = lshr i64 %i.ax, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = trunc i32 %reass.mul.us.i to i8
  %i.be = and i8 %i.bd, 7
  %i.bf = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.bg = lshr exact i8 -128, %i.be
  %i.bh = and i8 %i.bg, %i.bc
  %i.bi = icmp eq i8 %i.bh, 0
  %i.bj = lshr i64 %i.az, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35  ; 2 uses
  br i1 %i.bi, label %bb.k, label %bb.j

end_hunk_3
