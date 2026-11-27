Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lnumprint?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@_Z12luai_num2strPcd:bb.a

bb.c:                                             ; preds = %bb.b
  %i.j = xor i64 %i.c, 1
  %i.k = getelementptr inbounds nuw i8, ptr @.str, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  br label %_ZL12printspecialPcim.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZL12printspecialPcim.exit

_ZL12printspecialPcim.exit:                       ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ %i.l, %bb.c ], [ 7233902, %bb.d ]
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  store i32 %.sink.i, ptr %0, align 1
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 17 uses
  %i.q = icmp eq i32 %i.f, 0                      ; 3 uses
  %i.r = icmp eq i64 %i.g, 0
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 48, ptr %i.p, align 1, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.t = or disjoint i64 %i.g, 4503599627370496
  %i.u = add nsw i32 %i.f, -1075
  %.075.i = select i1 %i.q, i32 -1074, i32 %i.u   ; 4 uses
  %.0.i77 = select i1 %i.q, i64 %i.g, i64 %i.t    ; 5 uses
  %i.v = sub nsw i32 0, %.075.i                   ; 2 uses
  %i.w = icmp ult i32 %i.v, 53
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i, -1
  %i.z = and i64 %.0.i77, %i.y
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = lshr i64 %.0.i77, %i.x
  br label %_ZL9schubfachim.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ac = icmp eq i64 %.0.i77, 4503599627370496
  %i.ad = icmp ne i32 %.075.i, -1074
  %i.ae = and i1 %i.ad, %i.ac                     ; 2 uses
  %i.af = and i64 %.0.i77, 1                      ; 4 uses
  %i.ag = shl nuw nsw i64 %.0.i77, 2              ; 3 uses
  %i.ah = add nsw i64 %i.ag, -2
  %i.ai = zext i1 %i.ae to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  %i.ak = or disjoint i64 %i.ag, 2
  %i.al = mul nsw i32 %.075.i, 315652
  %i.am = select i1 %i.ae, i32 -131008, i32 0
  %i.an = add nsw i32 %i.am, %i.al
  %i.ao = ashr i32 %i.an, 20                      ; 4 uses
  %i.ap = mul nsw i32 %i.ao, -3483294
  %i.aq = ashr i32 %i.ap, 20
  %i.ar = add nsw i32 %.075.i, 1
  %i.as = add nsw i32 %i.ar, %i.aq
  %i.at = sub nsw i32 292, %i.ao                  ; 2 uses
  %i.au = lshr i32 %i.at, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr @_ZL11kPow10Table, i64 %i.av ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = and i32 %i.at, 15                       ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @_ZL10kPow5Table, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %i.be = zext i64 %i.ax to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = trunc nuw i128 %i.bh to i64
  %i.bj = trunc i128 %i.bg to i64
  %i.bk = tail call i64 @llvm.umulh.i64(i64 %i.bd, i64 %i.az) ; 2 uses
  %i.bl = add i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = zext i1 %i.bm to i64
  %i.bo = add nuw i64 %i.bn, %i.bi
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = shl nuw nsw i32 %i.ba, 2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr i64 %i.bq, %i.bs                   ; 2 uses
  %i.bu = lshr i64 %i.bt, 3                       ; 2 uses
  %i.bv = and i64 %i.bu, 1                        ; 2 uses
  %i.bw = shl i64 %i.bo, %i.bv
  %i.bx = lshr i64 %i.bl, 63
  %i.by = and i64 %i.bx, %i.bu
  %i.bz = add i64 %i.bw, %i.by
  %i.ca = shl i64 %i.bl, %i.bv
  %i.cb = and i64 %i.bt, 7
  %reass.sub.i = sub i64 %i.ca, %i.cb
  %i.cc = add i64 %reass.sub.i, 4                 ; 3 uses
  %i.cd = zext i32 %i.as to i64                   ; 3 uses
  %i.ce = shl i64 %i.aj, %i.cd                    ; 2 uses
  %i.cf = zext i64 %i.ce to i128
  %i.cg = tail call i64 @llvm.umulh.i64(i64 %i.ce, i64 %i.cc) ; 2 uses
  %i.ch = zext i64 %i.bz to i128                  ; 3 uses
  %i.ci = mul nuw i128 %i.ch, %i.cf               ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = trunc nuw i128 %i.cj to i64
  %i.cl = trunc i128 %i.ci to i64
  %i.cm = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cg
  %i.co = zext i1 %i.cn to i64
  %i.cp = add nuw i64 %i.co, %i.ck
  %i.cq = icmp ugt i64 %i.cm, 1
  %i.cr = zext i1 %i.cq to i64
  %i.cs = or i64 %i.cp, %i.cr                     ; 2 uses
  %i.ct = shl i64 %i.ag, %i.cd                    ; 2 uses
  %i.cu = zext i64 %i.ct to i128
  %i.cv = tail call i64 @llvm.umulh.i64(i64 %i.ct, i64 %i.cc) ; 2 uses
  %i.cw = mul nuw i128 %i.ch, %i.cu               ; 2 uses
  %i.cx = lshr i128 %i.cw, 64
  %i.cy = trunc nuw i128 %i.cx to i64
  %i.cz = trunc i128 %i.cw to i64
  %i.da = add i64 %i.cv, %i.cz                    ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cv
  %i.dc = zext i1 %i.db to i64
  %i.dd = add nuw i64 %i.dc, %i.cy                ; 6 uses
  %i.de = icmp ugt i64 %i.da, 1
  %i.df = zext i1 %i.de to i64
  %i.dg = or i64 %i.dd, %i.df
  %i.dh = shl i64 %i.ak, %i.cd                    ; 2 uses
  %i.di = zext i64 %i.dh to i128
  %i.dj = tail call i64 @llvm.umulh.i64(i64 %i.dh, i64 %i.cc) ; 2 uses
  %i.dk = mul nuw i128 %i.ch, %i.di               ; 2 uses
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64
  %i.dn = trunc i128 %i.dk to i64
  %i.do = add i64 %i.dj, %i.dn                    ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dj
  %i.dq = zext i1 %i.dp to i64
  %i.dr = add nuw i64 %i.dq, %i.dm
  %i.ds = icmp ugt i64 %i.do, 1
  %i.dt = zext i1 %i.ds to i64
  %i.du = or i64 %i.dr, %i.dt                     ; 2 uses
  %i.dv = lshr i64 %i.dd, 2                       ; 2 uses
  %i.dw = icmp ugt i64 %i.dd, 39
  br i1 %i.dw, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = add i64 %i.cs, %i.af
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dx = udiv i64 %i.dd, 40                      ; 2 uses
  %i.dy = add i64 %i.cs, %i.af                    ; 2 uses
  %i.dz = mul nuw i64 %i.dx, 40                   ; 2 uses
  %i.ea = add i64 %i.dz, 40
  %i.eb = or disjoint i64 %i.ea, %i.af
  %i.ec = icmp uge i64 %i.du, %i.eb               ; 2 uses
  %i.ed = icmp ugt i64 %i.dy, %i.dz
  %.not78.i = xor i1 %i.ed, %i.ec
  %i.ee = zext i1 %i.ec to i64
  %i.ef = add nuw nsw i64 %i.dx, %i.ee
  %i.eg = add nsw i32 %i.ao, 1
  br i1 %.not78.i, label %bb.l, label %_ZL9schubfachim.exit

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.dy, %bb.k ]
  %i.eh = and i64 %i.dd, -4                       ; 2 uses
  %i.ei = add i64 %i.eh, 4
  %i.ej = or disjoint i64 %i.ei, %i.af
  %i.ek = icmp ule i64 %i.ej, %i.du               ; 2 uses
  %i.el = or i64 %i.dd, 3
  %i.em = and i64 %i.dv, 1
  %i.en = sub nuw nsw i64 %i.el, %i.em
  %i.eo = icmp uge i64 %i.dg, %i.en
  %i.ep = icmp ugt i64 %.pre-phi.i, %i.eh
  %.not79.i = xor i1 %i.ek, %i.ep
  %i.eq = select i1 %.not79.i, i1 %i.eo, i1 %i.ek
  %i.er = zext i1 %i.eq to i64
  %i.es = add nuw nsw i64 %i.dv, %i.er
  br label %_ZL9schubfachim.exit

_ZL9schubfachim.exit:                             ; preds = %bb.i, %bb.k, %bb.l
  %.sroa.0.2.i = phi i64 [ %i.ab, %bb.i ], [ %i.es, %bb.l ], [ %i.ef, %bb.k ] ; 3 uses
  %.sroa.4.2.i = phi i32 [ 0, %bb.i ], [ %i.ao, %bb.l ], [ %i.eg, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.eu = icmp samesign ugt i64 %.sroa.0.2.i, 9999
  br i1 %i.eu, label %.lr.ph.i, label %._crit_edge.i78

.lr.ph.i:                                         ; preds = %_ZL9schubfachim.exit, %.lr.ph.i
  %.01823.i = phi ptr [ %i.ew, %.lr.ph.i ], [ %i.et, %_ZL9schubfachim.exit ] ; 2 uses
  %.01922.i = phi i64 [ %i.fd, %.lr.ph.i ], [ %.sroa.0.2.i, %_ZL9schubfachim.exit ] ; 3 uses
  %i.ev = urem i64 %.01922.i, 10000
  %i.ew = getelementptr inbounds i8, ptr %.01823.i, i64 -4 ; 3 uses
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ev to i16  ; 2 uses
  %i.ex = udiv i16 %.lhs.trunc.i, 100
  %i.ey = shl nuw nsw i16 %i.ex, 1
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2
  store i16 %i.fb, ptr %i.ew, align 4
  %i.fc = getelementptr inbounds i8, ptr %.01823.i, i64 -2
  %2 = urem i16 %.lhs.trunc.i, 100
  %3 = shl nuw nsw i16 %2, 1
  %4 = zext nneg i16 %3 to i64
  %5 = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %4
  %6 = load i16, ptr %5, align 2
  store i16 %6, ptr %i.fc, align 2
  %i.fd = udiv i64 %.01922.i, 10000               ; 2 uses
  %i.fe = icmp samesign ugt i64 %.01922.i, 99999999
  br i1 %i.fe, label %.lr.ph.i, label %._crit_edge.i78, !llvm.loop !11

._crit_edge.i78:                                  ; preds = %.lr.ph.i, %_ZL9schubfachim.exit
  %.019.lcssa.i = phi i64 [ %.sroa.0.2.i, %_ZL9schubfachim.exit ], [ %i.fd, %.lr.ph.i ] ; 2 uses
  %.018.lcssa.i = phi ptr [ %i.et, %_ZL9schubfachim.exit ], [ %i.ew, %.lr.ph.i ] ; 2 uses
  %i.ff = trunc nuw nsw i64 %.019.lcssa.i to i32  ; 2 uses
  %i.fg = icmp samesign ugt i64 %.019.lcssa.i, 9
  br i1 %i.fg, label %.lr.ph28.i, label %._crit_edge29.i

.lr.ph28.i:                                       ; preds = %._crit_edge.i78, %.lr.ph28.i
  %.026.i = phi i32 [ %i.fn, %.lr.ph28.i ], [ %i.ff, %._crit_edge.i78 ] ; 3 uses
  %.125.i = phi ptr [ %i.fh, %.lr.ph28.i ], [ %.018.lcssa.i, %._crit_edge.i78 ]
  %i.fh = getelementptr inbounds i8, ptr %.125.i, i64 -2 ; 3 uses
  %i.fi = urem i32 %.026.i, 100
  %i.fj = shl nuw nsw i32 %i.fi, 1
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2
  store i16 %i.fm, ptr %i.fh, align 1
  %i.fn = udiv i32 %.026.i, 100                   ; 2 uses
  %i.fo = icmp ugt i32 %.026.i, 999
  br i1 %i.fo, label %.lr.ph28.i, label %._crit_edge29.i, !llvm.loop !12

._crit_edge29.i:                                  ; preds = %.lr.ph28.i, %._crit_edge.i78
  %.1.lcssa.i = phi ptr [ %.018.lcssa.i, %._crit_edge.i78 ], [ %i.fh, %.lr.ph28.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.ff, %._crit_edge.i78 ], [ %i.fn, %.lr.ph28.i ] ; 2 uses
  %.not.i79 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i79, label %_ZL16printunsignedrevPcm.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge29.i
  %i.fp = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.fq = or disjoint i8 %i.fp, 48
  %i.fr = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -1 ; 2 uses
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !9
  br label %_ZL16printunsignedrevPcm.exit

_ZL16printunsignedrevPcm.exit:                    ; preds = %._crit_edge29.i, %bb.m
  %.2.i = phi ptr [ %i.fr, %bb.m ], [ %.1.lcssa.i, %._crit_edge29.i ] ; 8 uses
  %i.fs = ptrtoint ptr %i.et to i64
  %i.ft = ptrtoint ptr %.2.i to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 5 uses
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = add nsw i32 %.sroa.4.2.i, %i.fv         ; 8 uses
  %i.fx = add i32 %i.fw, 5
  %or.cond3 = icmp ult i32 %i.fx, 27
  br i1 %or.cond3, label %bb.n, label %bb.w

bb.n:                                             ; preds = %_ZL16printunsignedrevPcm.exit
  %i.fy = icmp slt i32 %i.fw, 1
  br i1 %i.fy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i8 48, ptr %i.p, align 1, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 46, ptr %i.fz, align 1, !tbaa !9
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ga, i8 48, i64 5, i1 false)
  %i.gb = sub nsw i32 0, %i.fw
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.gd, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %sext76 = shl i64 %i.fu, 32
  %i.ge = ashr exact i64 %sext76, 32
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i80 = phi ptr [ %i.gf, %bb.o ], [ %i.gg, %bb.p ] ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.0.i80, i64 -1 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !9
  %i.gi = icmp eq i8 %i.gh, 48
  br i1 %i.gi, label %bb.p, label %_Z8trimzeroPc.exit, !llvm.loop !13

bb.q:                                             ; preds = %bb.n
  %i.gj = icmp eq i32 %.sroa.4.2.i, 0
  br i1 %i.gj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.p, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %i.gk = zext nneg i32 %i.fw to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gk
  br label %_Z8trimzeroPc.exit

bb.s:                                             ; preds = %bb.q
  %i.gm = icmp slt i32 %.sroa.4.2.i, 0
  br i1 %i.gm, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  %i.gn = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gn ; 2 uses
  store i8 46, ptr %i.go, align 1, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gp, ptr noundef nonnull align 1 dereferenceable(16) %i.gq, i64 16, i1 false)
  %i.gr = and i64 %i.fu, 4294967295
  %i.gs = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.i81 = phi ptr [ %i.gt, %bb.t ], [ %i.gu, %bb.u ] ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.0.i81, i64 -1 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gw = icmp eq i8 %i.gv, 48
  br i1 %i.gw, label %bb.u, label %_Z8trimzeroPc.exit, !llvm.loop !13

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.p, ptr noundef nonnull align 1 dereferenceable(17) %.2.i, i64 17, i1 false)
  %sext75 = shl i64 %i.fu, 32
  %i.gx = ashr exact i64 %sext75, 32
  %i.gy = getelementptr inbounds i8, ptr %i.p, i64 %i.gx
  store i64 3472328296227680304, ptr %i.gy, align 1
  %i.gz = zext nneg i32 %i.fw to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gz
  br label %_Z8trimzeroPc.exit

bb.w:                                             ; preds = %_ZL16printunsignedrevPcm.exit
  %i.hb = load i8, ptr %.2.i, align 1, !tbaa !9
  store i8 %i.hb, ptr %i.p, align 1, !tbaa !9
  %i.hc = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 46, ptr %i.hc, align 1, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.he = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hd, ptr noundef nonnull align 1 dereferenceable(16) %i.he, i64 16, i1 false)
  %sext = shl i64 %i.fu, 32
  %i.hf = ashr exact i64 %sext, 32
  %i.hg = getelementptr inbounds i8, ptr %i.p, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.i83 = phi ptr [ %i.hh, %bb.w ], [ %i.hi, %bb.x ] ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.0.i83, i64 -1 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9   ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 48
  br i1 %i.hk, label %bb.x, label %_Z8trimzeroPc.exit84, !llvm.loop !13

_Z8trimzeroPc.exit84:                             ; preds = %bb.x
  %i.hl = icmp eq i8 %i.hj, 46
  %spec.select = select i1 %i.hl, ptr %i.hi, ptr %.0.i83 ; 4 uses
  %i.hm = add nsw i32 %i.fw, -1
  %i.hn = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  store i8 101, ptr %spec.select, align 1, !tbaa !9
  %i.ho = icmp slt i32 %i.fw, 1
  %i.hp = select i1 %i.ho, i8 45, i8 43
  %i.hq = getelementptr inbounds nuw i8, ptr %spec.select, i64 2 ; 2 uses
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !9
  %i.hr = call i32 @llvm.abs.i32(i32 range(i32 -2147483648, 2147483647) %i.hm, i1 true) ; 4 uses
  %i.hs = icmp samesign ugt i32 %i.hr, 99
  br i1 %i.hs, label %bb.y, label %_ZL8printexpPci.exit

bb.y:                                             ; preds = %_Z8trimzeroPc.exit84
  %i.ht = udiv i32 %i.hr, 100
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = add i8 %i.hu, 48
  %i.hw = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  store i8 %i.hv, ptr %i.hq, align 1, !tbaa !9
  %i.hx = urem i32 %i.hr, 100
  br label %_ZL8printexpPci.exit

_ZL8printexpPci.exit:                             ; preds = %_Z8trimzeroPc.exit84, %bb.y
  %.012.i = phi ptr [ %i.hw, %bb.y ], [ %i.hq, %_Z8trimzeroPc.exit84 ] ; 2 uses
  %.0.i85 = phi i32 [ %i.hx, %bb.y ], [ %i.hr, %_Z8trimzeroPc.exit84 ]
  %i.hy = shl nuw nsw i32 %.0.i85, 1
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @_ZL11kDigitTable, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2
  store i16 %i.ib, ptr %.012.i, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  br label %_Z8trimzeroPc.exit

_Z8trimzeroPc.exit:                               ; preds = %bb.u, %bb.p, %_ZL8printexpPci.exit, %bb.v, %bb.r
  %.071 = phi ptr [ %i.ic, %_ZL8printexpPci.exit ], [ %i.gl, %bb.r ], [ %.0.i80, %bb.p ], [ %i.ha, %bb.v ], [ %.0.i81, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.z

bb.z:                                             ; preds = %_Z8trimzeroPc.exit, %bb.f, %_ZL12printspecialPcim.exit
  %.1 = phi ptr [ %.0.i, %_ZL12printspecialPcim.exit ], [ %i.s, %bb.f ], [ %.071, %_Z8trimzeroPc.exit ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden noundef nonnull ptr @_Z12luai_int2strPcl(ptr nofree noundef writeonly captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i64 %1, -1                      ; 4 uses
end_hunk_0
