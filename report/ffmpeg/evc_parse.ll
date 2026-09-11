Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/evc_parse?download=true
inline.NumInlined: 28
inline.NumDeleted: 7
begin_hunk_0_@ff_evc_parse_slice_header:bb.a

.thread151:                                       ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.ag, align 1, !tbaa !35
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.aj = lshr i32 %i.ah, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = load i32, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ao = icmp slt i32 %i.ah, %i.an
  %i.ap = zext i1 %i.ao to i32
  %spec.select.i = add i32 %i.ah, %i.ap           ; 4 uses
  %i.aq = zext i8 %i.am to i32
  %i.ar = and i32 %i.ah, 7
  %i.as = shl nuw nsw i32 %i.aq, %i.ar
  store i32 %spec.select.i, ptr %i.a, align 8, !tbaa !31
  %i.at = trunc i32 %i.as to i8                   ; 2 uses
  %i.au = lshr i8 %i.at, 7
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !36
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = lshr i32 %spec.select.i, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !10
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = and i32 %spec.select.i, 7
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = sub nsw i32 31, %i.ay
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = add i32 %spec.select.i, 1
  %i.bj = add i32 %i.bi, %i.ay
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.an, i32 %i.bj)
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !31
  %i.bl = trunc i32 %i.bh to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bl, ptr %i.bm, align 2, !tbaa !37
  %i.bn = icmp sgt i8 %i.at, -1
  br i1 %i.bn, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 1962
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !38
  %.not101 = icmp eq i8 %i.bp, 0
  br i1 %.not101, label %.thread153, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !33
  %i.bs = lshr i32 %i.bq, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !10
  %i.bw = load i32, ptr %i.c, align 8, !tbaa !32
  %i.bx = icmp slt i32 %i.bq, %i.bw
  %i.by = zext i1 %i.bx to i32
  %spec.select.i114 = add i32 %i.bq, %i.by
  %i.bz = zext i8 %i.bv to i32
  %i.ca = and i32 %i.bq, 7
  %i.cb = shl nuw nsw i32 %i.bz, %i.ca
  store i32 %spec.select.i114, ptr %i.a, align 8, !tbaa !31
  %i.cc = trunc i32 %i.cb to i8                   ; 2 uses
  %i.cd = lshr i8 %i.cc, 7
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !39
  %i.cf = icmp sgt i8 %i.cc, -1
  br i1 %i.cf, label %.thread153, label %bb.h

.thread153:                                       ; preds = %bb.f, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !36
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = add nuw nsw i32 %i.ci, 1
  %i.ck = load i32, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !32
  %i.cm = load ptr, ptr %0, align 8, !tbaa !33
  %i.cn = lshr i32 %i.ck, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !10
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %i.ck, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = sub nsw i32 31, %i.ci
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = add i32 %i.cj, %i.ck
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.cl, i32 %i.cw)
  store i32 %i.cx, ptr %i.a, align 8, !tbaa !31
  %i.cy = trunc i32 %i.cv to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.cy, ptr %i.cz, align 4, !tbaa !40
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !41 ; 8 uses
  %.sroa.4.0.copyload.i.i = load i32, ptr %i.a, align 8, !tbaa !42 ; 6 uses
  %.sroa.76.0.copyload.i.i = load i32, ptr %i.c, align 8, !tbaa !42 ; 5 uses
  %i.da = lshr i32 %.sroa.4.0.copyload.i.i, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !10
  %i.de = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = and i32 %.sroa.4.0.copyload.i.i, 7
  %i.dg = shl i32 %i.de, %i.df                    ; 3 uses
  %i.dh = and i32 %i.dg, -65536
  %i.di = add i32 %.sroa.4.0.copyload.i.i, 16
  %i.dj = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i, i32 %i.di) ; 2 uses
  %i.dk = lshr i32 %i.dj, 3
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 1, !tbaa !10
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = and i32 %i.dj, 7
  %i.dq = shl i32 %i.do, %i.dp
  %i.dr = lshr i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dr, %i.dh
  %.not.i.i = icmp ult i32 %i.dg, 65536           ; 2 uses
  %i.dt = lshr i32 %i.dg, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.ds, i32 %i.dt ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.du = lshr i32 %spec.select.i.i, 8
  %i.dv = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.du
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.dv
  %i.dw = zext nneg i32 %.110.i.i to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !10
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  %i.ea = add nuw nsw i32 %.1.i.i, %i.dz          ; 6 uses
  %i.eb = sub nsw i32 31, %i.ea                   ; 2 uses
  %i.ec = sub nsw i32 0, %.sroa.4.0.copyload.i.i  ; 2 uses
  %i.ed = sub nsw i32 %.sroa.76.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.ee = icmp slt i32 %i.eb, %i.ec
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 -248, 32) %i.eb, i32 %i.ed)
  %.0.i.i.i = select i1 %i.ee, i32 %i.ec, i32 %..i.i.i
  %i.ef = add nsw i32 %.0.i.i.i, %.sroa.4.0.copyload.i.i ; 5 uses
  store i32 %i.ef, ptr %i.a, align 8, !tbaa !31
  %.not.i5.i = icmp eq i32 %i.ea, 32
  br i1 %.not.i5.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = icmp samesign ugt i32 %i.ea, 6
  %i.eh = lshr i32 %i.ef, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 1, !tbaa !10
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.ek)
  %i.em = and i32 %i.ef, 7
  %i.en = shl i32 %i.el, %i.em                    ; 2 uses
  br i1 %i.eg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eo = lshr i32 %i.en, %i.ea
  %reass.sub = sub i32 %i.ef, %i.ea
  %i.ep = add i32 %reass.sub, 32
  %i.eq = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i, i32 %i.ep)
  br label %get_ue_golomb_long.exit

bb.k:                                             ; preds = %bb.i
  %i.er = lshr i32 %i.en, 16
  %i.es = add i32 %i.ef, 16
  %i.et = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i, i32 %i.es) ; 4 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !31
  %i.eu = sub nuw nsw i32 16, %i.ea               ; 2 uses
  %i.ev = shl nuw i32 %i.er, %i.eu
  %i.ew = lshr i32 %i.et, 3
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 1, !tbaa !10
  %i.fa = tail call i32 @llvm.bswap.i32(i32 %i.ez)
  %i.fb = and i32 %i.et, 7
  %i.fc = shl i32 %i.fa, %i.fb
  %i.fd = or disjoint i32 %i.dz, 16
  %i.fe = lshr i32 %i.fc, %i.fd
  %i.ff = add i32 %i.et, %i.eu
  %i.fg = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i, i32 %i.ff)
  %i.fh = or i32 %i.fe, %i.ev
  br label %get_ue_golomb_long.exit

get_ue_golomb_long.exit:                          ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ %i.eq, %bb.j ], [ %i.fg, %bb.k ]
  %.0.i.i = phi i32 [ %i.eo, %bb.j ], [ %i.fh, %bb.k ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 8, !tbaa !31
  %i.fi = add i32 %.0.i.i, -1                     ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 439
  br i1 %i.fj, label %bb.l, label %.critedge

bb.l:                                             ; preds = %get_ue_golomb_long.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.fi, ptr %i.fk, align 4, !tbaa !43
  %.sroa.76.0.copyload.i.i119 = load i32, ptr %i.c, align 8, !tbaa !42 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %wide.trip.count = zext nneg i32 %.0.i.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %get_ue_golomb_long.exit131
  %indvars.iv = phi i64 [ 0, %bb.l ], [ %indvars.iv.next, %get_ue_golomb_long.exit131 ] ; 2 uses
  %.sroa.4.0.copyload.i.i117 = load i32, ptr %i.a, align 8, !tbaa !42 ; 6 uses
  %i.fm = lshr i32 %.sroa.4.0.copyload.i.i117, 3
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 1, !tbaa !10
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp)
  %i.fr = and i32 %.sroa.4.0.copyload.i.i117, 7
  %i.fs = shl i32 %i.fq, %i.fr                    ; 3 uses
  %i.ft = and i32 %i.fs, -65536
  %i.fu = add i32 %.sroa.4.0.copyload.i.i117, 16
  %i.fv = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i119, i32 %i.fu) ; 2 uses
  %i.fw = lshr i32 %i.fv, 3
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 1, !tbaa !10
  %i.ga = tail call i32 @llvm.bswap.i32(i32 %i.fz)
  %i.gb = and i32 %i.fv, 7
  %i.gc = shl i32 %i.ga, %i.gb
  %i.gd = lshr i32 %i.gc, 16
  %i.ge = or disjoint i32 %i.gd, %i.ft
  %.not.i.i120 = icmp ult i32 %i.fs, 65536        ; 2 uses
  %i.gf = lshr i32 %i.fs, 16
  %spec.select.i.i121 = select i1 %.not.i.i120, i32 %i.ge, i32 %i.gf ; 3 uses
  %spec.select12.i.i122 = select i1 %.not.i.i120, i32 0, i32 16 ; 2 uses
  %.not11.i.i123 = icmp samesign ult i32 %spec.select.i.i121, 256 ; 2 uses
  %i.gg = lshr i32 %spec.select.i.i121, 8
  %i.gh = or disjoint i32 %spec.select12.i.i122, 8
  %.110.i.i124 = select i1 %.not11.i.i123, i32 %spec.select.i.i121, i32 %i.gg
  %.1.i.i125 = select i1 %.not11.i.i123, i32 %spec.select12.i.i122, i32 %i.gh
  %i.gi = zext nneg i32 %.110.i.i124 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !10
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = add nuw nsw i32 %.1.i.i125, %i.gl       ; 6 uses
  %i.gn = sub nsw i32 31, %i.gm                   ; 2 uses
  %i.go = sub nsw i32 0, %.sroa.4.0.copyload.i.i117 ; 2 uses
  %i.gp = sub nsw i32 %.sroa.76.0.copyload.i.i119, %.sroa.4.0.copyload.i.i117
  %i.gq = icmp slt i32 %i.gn, %i.go
  %..i.i.i126 = tail call i32 @llvm.smin.i32(i32 range(i32 -248, 32) %i.gn, i32 %i.gp)
  %.0.i.i.i127 = select i1 %i.gq, i32 %i.go, i32 %..i.i.i126
  %i.gr = add nsw i32 %.0.i.i.i127, %.sroa.4.0.copyload.i.i117 ; 5 uses
  store i32 %i.gr, ptr %i.a, align 8, !tbaa !31
  %.not.i5.i128 = icmp eq i32 %i.gm, 32
  br i1 %.not.i5.i128, label %get_ue_golomb_long.exit131, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gs = icmp samesign ugt i32 %i.gm, 6
  %i.gt = lshr i32 %i.gr, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 1, !tbaa !10
  %i.gx = tail call i32 @llvm.bswap.i32(i32 %i.gw)
  %i.gy = and i32 %i.gr, 7
  %i.gz = shl i32 %i.gx, %i.gy                    ; 2 uses
  br i1 %i.gs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ha = lshr i32 %i.gz, %i.gm
  %reass.sub143 = sub i32 %i.gr, %i.gm
  %i.hb = add i32 %reass.sub143, 32
  %i.hc = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i119, i32 %i.hb)
  store i32 %i.hc, ptr %i.a, align 8, !tbaa !31
  br label %get_ue_golomb_long.exit131

bb.p:                                             ; preds = %bb.n
  %i.hd = lshr i32 %i.gz, 16
  %i.he = add i32 %i.gr, 16
  %i.hf = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i119, i32 %i.he) ; 4 uses
  store i32 %i.hf, ptr %i.a, align 8, !tbaa !31
  %i.hg = sub nuw nsw i32 16, %i.gm               ; 2 uses
  %i.hh = shl nuw i32 %i.hd, %i.hg
  %i.hi = lshr i32 %i.hf, 3
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 1, !tbaa !10
  %i.hm = tail call i32 @llvm.bswap.i32(i32 %i.hl)
  %i.hn = and i32 %i.hf, 7
  %i.ho = shl i32 %i.hm, %i.hn
  %i.hp = or disjoint i32 %i.gl, 16
  %i.hq = lshr i32 %i.ho, %i.hp
  %i.hr = add i32 %i.hf, %i.hg
  %i.hs = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i119, i32 %i.hr)
  store i32 %i.hs, ptr %i.a, align 8, !tbaa !31
  %i.ht = or i32 %i.hq, %i.hh
  br label %get_ue_golomb_long.exit131

get_ue_golomb_long.exit131:                       ; preds = %bb.m, %bb.o, %bb.p
  %.0.i.i129 = phi i32 [ %i.ha, %bb.o ], [ %i.ht, %bb.p ], [ 0, %bb.m ]
  %i.hu = trunc i32 %.0.i.i129 to i16
  %i.hv = add i16 %i.hu, -1
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv
  store i16 %i.hv, ptr %i.hw, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !28

.loopexit:                                        ; preds = %get_ue_golomb_long.exit131, %.thread151, %.thread153, %bb.e
  %i.hx = load i32, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  %i.hy = load i32, ptr %i.c, align 8, !tbaa !32  ; 14 uses
  %i.hz = load ptr, ptr %0, align 8, !tbaa !33    ; 14 uses
  %i.ia = lshr i32 %i.hx, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 1, !tbaa !10
  %i.ie = tail call i32 @llvm.bswap.i32(i32 %i.id)
  %i.if = and i32 %i.hx, 7
  %i.ig = shl i32 %i.ie, %i.if
  %i.ih = lshr i32 %i.ig, 23
  %i.ii = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !10
  %i.il = zext i8 %i.ik to i32
  %i.im = add i32 %i.hx, %i.il
  %..i132 = tail call i32 @llvm.umin.i32(i32 %i.hy, i32 %i.im) ; 5 uses
  store i32 %..i132, ptr %i.a, align 8, !tbaa !31
  %i.in = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ii
  %i.io = load i8, ptr %i.in, align 1, !tbaa !10  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 892
  store i8 %i.io, ptr %i.ip, align 4, !tbaa !45
  %i.iq = icmp eq i32 %3, 1                       ; 2 uses
  br i1 %i.iq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.ir = lshr i32 %..i132, 3
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !10
  %i.iv = icmp slt i32 %..i132, %i.hy
  %i.iw = zext i1 %i.iv to i32
  %spec.select.i133 = add i32 %..i132, %i.iw
  %i.ix = zext i8 %i.iu to i32
  %i.iy = and i32 %..i132, 7
  %i.iz = shl nuw nsw i32 %i.ix, %i.iy
  store i32 %spec.select.i133, ptr %i.a, align 8, !tbaa !31
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = lshr i8 %i.ja, 7
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 893
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !46
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !47
  %.not104 = icmp ne i8 %i.je, 0
  %switch = icmp ult i8 %i.io, 2
  %or.cond140 = select i1 %.not104, i1 %switch, i1 false
  br i1 %or.cond140, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jf = load i32, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.jg = lshr i32 %i.jf, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !10
  %i.jk = icmp slt i32 %i.jf, %i.hy
  %i.jl = zext i1 %i.jk to i32
  %spec.select.i134 = add i32 %i.jf, %i.jl
  %i.jm = zext i8 %i.jj to i32
  %i.jn = and i32 %i.jf, 7
  %i.jo = shl nuw nsw i32 %i.jm, %i.jn
  store i32 %spec.select.i134, ptr %i.a, align 8, !tbaa !31
  %i.jp = trunc i32 %i.jo to i8
  %i.jq = lshr i8 %i.jp, 7
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink145 = phi i8 [ %i.jq, %bb.s ], [ 0, %bb.r ]
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 894
  store i8 %.sink145, ptr %i.jr, align 2, !tbaa !48
  %i.js = getelementptr inbounds nuw i8, ptr %i.ad, i64 77
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !49
  %.not105 = icmp eq i8 %i.jt, 0
  br i1 %.not105, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.jv = load i8, ptr %i.ju, align 4, !tbaa !50  ; 2 uses
  %i.jw = load i32, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.jx = lshr i32 %i.jw, 3
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !10
  %i.kb = icmp slt i32 %i.jw, %i.hy
  %i.kc = zext i1 %i.kb to i32
  %spec.select.i135 = add i32 %i.jw, %i.kc        ; 4 uses
  %i.kd = zext i8 %i.ka to i32
  %i.ke = and i32 %i.jw, 7
  %i.kf = shl nuw nsw i32 %i.kd, %i.ke
  %i.kg = lshr i32 %i.kf, 7
  store i32 %spec.select.i135, ptr %i.a, align 8, !tbaa !31
  %i.kh = and i32 %i.kg, 1                        ; 2 uses
  %i.ki = trunc nuw nsw i32 %i.kh to i8
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 895
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !51
  %.not106 = icmp eq i32 %i.kh, 0                 ; 2 uses
  br i1 %.not106, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kk = lshr i32 %spec.select.i135, 3
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 1, !tbaa !10
  %i.ko = tail call i32 @llvm.bswap.i32(i32 %i.kn)
  %i.kp = and i32 %spec.select.i135, 7
  %i.kq = shl i32 %i.ko, %i.kp
  %i.kr = lshr i32 %i.kq, 27
  %i.ks = add i32 %spec.select.i135, 5
  %i.kt = tail call i32 @llvm.umin.i32(i32 %i.hy, i32 %i.ks) ; 5 uses
  store i32 %i.kt, ptr %i.a, align 8, !tbaa !31
  %i.ku = trunc nuw nsw i32 %i.kr to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i8 %i.ku, ptr %i.kv, align 4, !tbaa !52
  %i.kw = lshr i32 %i.kt, 3
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !10
  %i.la = icmp slt i32 %i.kt, %i.hy
  %i.lb = zext i1 %i.la to i32
  %spec.select.i136 = add i32 %i.kt, %i.lb        ; 4 uses
  %i.lc = zext i8 %i.kz to i32
  %i.ld = and i32 %i.kt, 7
  %i.le = shl nuw nsw i32 %i.lc, %i.ld
  store i32 %spec.select.i136, ptr %i.a, align 8, !tbaa !31
  %i.lf = trunc i32 %i.le to i8
  %i.lg = lshr i8 %i.lf, 7
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 897
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !53
  %i.li = lshr i32 %spec.select.i136, 3
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 1, !tbaa !10
  %i.lm = tail call i32 @llvm.bswap.i32(i32 %i.ll)
  %i.ln = and i32 %spec.select.i136, 7
  %i.lo = shl i32 %i.lm, %i.ln
  %i.lp = lshr i32 %i.lo, 30                      ; 2 uses
  %i.lq = add i32 %spec.select.i136, 2
  %i.lr = tail call i32 @llvm.umin.i32(i32 %i.hy, i32 %i.lq) ; 4 uses
  store i32 %i.lr, ptr %i.a, align 8, !tbaa !31
  %i.ls = trunc nuw nsw i32 %i.lp to i8           ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 898
  store i8 %i.ls, ptr %i.lt, align 2, !tbaa !54
  %i.lu = add i8 %i.jv, -3
  %or.cond = icmp ult i8 %i.lu, -2
  %.not107 = icmp eq i32 %i.lp, 0
  %or.cond113 = select i1 %or.cond, i1 true, i1 %.not107
  br i1 %or.cond113, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.v
  %i.lv = lshr i32 %i.lr, 3
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 1, !tbaa !10
  %i.lz = tail call i32 @llvm.bswap.i32(i32 %i.ly)
  %i.ma = and i32 %i.lr, 7
  %i.mb = shl i32 %i.lz, %i.ma
  %i.mc = lshr i32 %i.mb, 27
  %i.md = add i32 %i.lr, 5
  %i.me = tail call i32 @llvm.umin.i32(i32 %i.hy, i32 %i.md)
  store i32 %i.me, ptr %i.a, align 8, !tbaa !31
  %i.mf = trunc nuw nsw i32 %i.mc to i8
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 899
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !55
  br label %bb.ad

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.mh = phi i8 [ %i.ls, %bb.v ], [ 0, %bb.u ]   ; 2 uses
  %i.mi = icmp eq i8 %i.jv, 3
  br i1 %i.mi, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %switch.idx.cast = trunc i8 %i.mh to i1
  %switch.masked = icmp ult i8 %i.mh, 2
  br i1 %.not106, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 898
  %i.mk = load i32, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  %i.ml = lshr i32 %i.mk, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 1, !tbaa !10
  %i.mp = tail call i32 @llvm.bswap.i32(i32 %i.mo)
  %i.mq = and i32 %i.mk, 7
  %i.mr = shl i32 %i.mp, %i.mq
  %i.ms = lshr i32 %i.mr, 30
  %i.mt = add i32 %i.mk, 2
  %i.mu = tail call i32 @llvm.umin.i32(i32 %i.hy, i32 %i.mt)
end_hunk_0
