inline.NumInlined: 476
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy = private unnamed_addr constant [10 x i8] c"\124Vx\9A\BC\DE\F0\E2\B4", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZSTD_fillDoubleHashTable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 10 uses
  %i.n = getelementptr inbounds i8, ptr %1, i64 -8 ; 9 uses
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %.not45.i = icmp ugt ptr %i.o, %i.n
  br i1 %.not45.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !23
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i32 56, %i.q
  %i.v = zext nneg i32 %i.u to i64                ; 4 uses
  %i.w = sub i32 24, %i.q
  %i.x = sub i32 56, %i.s
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %.not54.i = icmp eq i32 %2, 0
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %.loopexit.i, %.lr.ph.i
  %.03846.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.bx, %.loopexit.i ] ; 11 uses
  %i.z = ptrtoint ptr %.03846.i to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = shl i32 %i.ab, 8                        ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 8, label %bb.f
    i32 5, label %bb.e
    i32 6, label %bb.d
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %.peel.begin.i
  %.val41.peel.i = load i64, ptr %.03846.i, align 1, !tbaa !24 ; 2 uses
  %i.ad = mul i64 %.val41.peel.i, -3523014627193167104
  %i.ae = lshr i64 %i.ad, %i.v
  br label %bb.h

bb.d:                                             ; preds = %.peel.begin.i
  %.val40.peel.i = load i64, ptr %.03846.i, align 1, !tbaa !24 ; 2 uses
  %i.af = mul i64 %.val40.peel.i, -3523014627193847808
  %i.ag = lshr i64 %i.af, %i.v
  br label %bb.h

bb.e:                                             ; preds = %.peel.begin.i
  %.val39.peel.i = load i64, ptr %.03846.i, align 1, !tbaa !24 ; 2 uses
  %i.ah = mul i64 %.val39.peel.i, -3523014627271114752
  %i.ai = lshr i64 %i.ah, %i.v
  br label %bb.h

bb.f:                                             ; preds = %.peel.begin.i
  %.val42.peel.i = load i64, ptr %.03846.i, align 1, !tbaa !24 ; 2 uses
  %i.aj = mul i64 %.val42.peel.i, -3523014627327384477
  %i.ak = lshr i64 %i.aj, %i.v
  br label %bb.h

bb.g:                                             ; preds = %.peel.begin.i
  %.val.peel.i = load i32, ptr %.03846.i, align 1, !tbaa !25
  %i.al = mul i32 %.val.peel.i, -1640531535
  %i.am = lshr i32 %i.al, %i.w
  %i.an = zext i32 %i.am to i64
  %.val43.peel.pre.i = load i64, ptr %.03846.i, align 1, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.val43.peel.i = phi i64 [ %.val43.peel.pre.i, %bb.g ], [ %.val42.peel.i, %bb.f ], [ %.val39.peel.i, %bb.e ], [ %.val40.peel.i, %bb.d ], [ %.val41.peel.i, %bb.c ]
  %.0.i.peel.i = phi i64 [ %i.an, %bb.g ], [ %i.ak, %bb.f ], [ %i.ai, %bb.e ], [ %i.ag, %bb.d ], [ %i.ae, %bb.c ] ; 2 uses
  %i.ao = mul i64 %.val43.peel.i, -3523014627327384477
  %i.ap = lshr i64 %i.ao, %i.y                    ; 2 uses
  %i.aq = lshr i64 %.0.i.peel.i, 8
  %i.ar = trunc i64 %.0.i.peel.i to i32
  %i.as = and i32 %i.ar, 255
  %i.at = or disjoint i32 %i.as, %i.ac
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aq
  store i32 %i.at, ptr %i.au, align 4, !tbaa !25
  %.pre.i = lshr i64 %i.ap, 8
  %i.av = trunc i64 %i.ap to i32
  %i.aw = and i32 %i.av, 255
  %i.ax = or disjoint i32 %i.aw, %i.ac
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre.i
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !25
  br i1 %.not54.i, label %.loopexit.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.03846.i, i64 1
  %.val43.i = load i64, ptr %i.az, align 1, !tbaa !24
  %i.ba = mul i64 %.val43.i, -3523014627327384477
  %i.bb = lshr i64 %i.ba, %i.y                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.i, label %.peel.next.i.1

bb.i:                                             ; preds = %.peel.next.i.preheader
  %i.bg = trunc i64 %i.bb to i32
  %i.bh = and i32 %i.bg, 255
  %4 = trunc i64 %i.aa to i32
  %i.bi = shl i32 %4, 8
  %i.bj = add i32 %i.bi, 256
  %i.bk = or disjoint i32 %i.bh, %i.bj
  store i32 %i.bk, ptr %i.bd, align 4, !tbaa !25
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.i, %.peel.next.i.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %.03846.i, i64 2
  %.val43.i.1 = load i64, ptr %i.bl, align 1, !tbaa !24
  %i.bm = mul i64 %.val43.i.1, -3523014627327384477
  %i.bn = lshr i64 %i.bm, %i.y                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.peel.next.i.1
  %i.bs = trunc i64 %i.bn to i32
  %i.bt = and i32 %i.bs, 255
  %5 = trunc i64 %i.aa to i32
  %i.bu = shl i32 %5, 8
  %i.bv = add i32 %i.bu, 512
  %i.bw = or disjoint i32 %i.bt, %i.bv
  store i32 %i.bw, ptr %i.bp, align 4, !tbaa !25
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.peel.next.i.1, %bb.j, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.03846.i, i64 3
  %i.by = getelementptr inbounds nuw i8, ptr %.03846.i, i64 5
  %.not.i = icmp ugt ptr %i.by, %i.n
  br i1 %.not.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.peel.begin.i, !llvm.loop !26

bb.k:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 3 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %.not47.i = icmp ugt ptr %i.ca, %i.n
  br i1 %.not47.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !23
  %i.cf = ptrtoint ptr %i.i to i64                ; 6 uses
  %i.cg = sub i32 64, %i.cc
  %i.ch = zext nneg i32 %i.cg to i64              ; 8 uses
  %i.ci = sub i32 32, %i.cc                       ; 2 uses
  %i.cj = sub i32 64, %i.ce
  %i.ck = zext nneg i32 %i.cj to i64              ; 8 uses
  %i.cl = icmp eq i32 %2, 0
  br i1 %i.cl, label %.lr.ph.split.us.i, label %.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i6
  switch i32 %i.e, label %.split.us.us.i [
    i32 8, label %.split.us.us.us.i
    i32 5, label %.split.us.us.us50.i
    i32 6, label %.split.us.us.us57.i
    i32 7, label %.split.us.us.us64.i
  ]

.split.us.us.us.i:                                ; preds = %.lr.ph.split.us.i, %.split.us.us.us.i
  %i.cm = phi ptr [ %i.cv, %.split.us.us.us.i ], [ %i.bz, %.lr.ph.split.us.i ] ; 3 uses
  %.03848.us.us.i = phi ptr [ %i.cm, %.split.us.us.us.i ], [ %i.m, %.lr.ph.split.us.i ] ; 2 uses
  %i.cn = ptrtoint ptr %.03848.us.us.i to i64
  %i.co = sub i64 %i.cn, %i.cf
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %.val42.us.us.us.i = load i64, ptr %.03848.us.us.i, align 1, !tbaa !24
  %i.cq = mul i64 %.val42.us.us.us.i, -3523014627327384477 ; 2 uses
  %i.cr = lshr i64 %i.cq, %i.ch
  %i.cs = lshr i64 %i.cq, %i.ck
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cr
  store i32 %i.cp, ptr %i.ct, align 4, !tbaa !25
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cs
  store i32 %i.cp, ptr %i.cu, align 4, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %.not.us.us.i = icmp ugt ptr %i.cw, %i.n
  br i1 %.not.us.us.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.split.us.us.us.i, !llvm.loop !28

.split.us.us.us50.i:                              ; preds = %.lr.ph.split.us.i, %.split.us.us.us50.i
  %i.cx = phi ptr [ %i.dh, %.split.us.us.us50.i ], [ %i.bz, %.lr.ph.split.us.i ] ; 3 uses
  %.03848.us.us51.i = phi ptr [ %i.cx, %.split.us.us.us50.i ], [ %i.m, %.lr.ph.split.us.i ] ; 2 uses
  %i.cy = ptrtoint ptr %.03848.us.us51.i to i64
  %i.cz = sub i64 %i.cy, %i.cf
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %.val39.us.us.us.i = load i64, ptr %.03848.us.us51.i, align 1, !tbaa !24 ; 2 uses
  %i.db = mul i64 %.val39.us.us.us.i, -3523014627271114752
  %i.dc = lshr i64 %i.db, %i.ch
  %i.dd = mul i64 %.val39.us.us.us.i, -3523014627327384477
  %i.de = lshr i64 %i.dd, %i.ck
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dc
  store i32 %i.da, ptr %i.df, align 4, !tbaa !25
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.de
  store i32 %i.da, ptr %i.dg, align 4, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %.not.us.us55.i = icmp ugt ptr %i.di, %i.n
  br i1 %.not.us.us55.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.split.us.us.us50.i, !llvm.loop !28

.split.us.us.us57.i:                              ; preds = %.lr.ph.split.us.i, %.split.us.us.us57.i
  %i.dj = phi ptr [ %i.dt, %.split.us.us.us57.i ], [ %i.bz, %.lr.ph.split.us.i ] ; 3 uses
  %.03848.us.us58.i = phi ptr [ %i.dj, %.split.us.us.us57.i ], [ %i.m, %.lr.ph.split.us.i ] ; 2 uses
  %i.dk = ptrtoint ptr %.03848.us.us58.i to i64
  %i.dl = sub i64 %i.dk, %i.cf
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %.val40.us.us.us.i = load i64, ptr %.03848.us.us58.i, align 1, !tbaa !24 ; 2 uses
  %i.dn = mul i64 %.val40.us.us.us.i, -3523014627193847808
  %i.do = lshr i64 %i.dn, %i.ch
  %i.dp = mul i64 %.val40.us.us.us.i, -3523014627327384477
  %i.dq = lshr i64 %i.dp, %i.ck
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.do
  store i32 %i.dm, ptr %i.dr, align 4, !tbaa !25
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dq
  store i32 %i.dm, ptr %i.ds, align 4, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %.not.us.us62.i = icmp ugt ptr %i.du, %i.n
  br i1 %.not.us.us62.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.split.us.us.us57.i, !llvm.loop !28

.split.us.us.us64.i:                              ; preds = %.lr.ph.split.us.i, %.split.us.us.us64.i
  %i.dv = phi ptr [ %i.ef, %.split.us.us.us64.i ], [ %i.bz, %.lr.ph.split.us.i ] ; 3 uses
  %.03848.us.us65.i = phi ptr [ %i.dv, %.split.us.us.us64.i ], [ %i.m, %.lr.ph.split.us.i ] ; 2 uses
  %i.dw = ptrtoint ptr %.03848.us.us65.i to i64
  %i.dx = sub i64 %i.dw, %i.cf
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %.val41.us.us.us.i = load i64, ptr %.03848.us.us65.i, align 1, !tbaa !24 ; 2 uses
  %i.dz = mul i64 %.val41.us.us.us.i, -3523014627193167104
  %i.ea = lshr i64 %i.dz, %i.ch
  %i.eb = mul i64 %.val41.us.us.us.i, -3523014627327384477
  %i.ec = lshr i64 %i.eb, %i.ck
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ea
  store i32 %i.dy, ptr %i.ed, align 4, !tbaa !25
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ec
  store i32 %i.dy, ptr %i.ee, align 4, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %.not.us.us69.i = icmp ugt ptr %i.eg, %i.n
  br i1 %.not.us.us69.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.split.us.us.us64.i, !llvm.loop !28

.split.us.us.i:                                   ; preds = %.lr.ph.split.us.i, %.split.us.us.i
  %i.eh = phi ptr [ %i.es, %.split.us.us.i ], [ %i.bz, %.lr.ph.split.us.i ] ; 3 uses
  %.03848.us.i = phi ptr [ %i.eh, %.split.us.us.i ], [ %i.m, %.lr.ph.split.us.i ] ; 3 uses
  %i.ei = ptrtoint ptr %.03848.us.i to i64
  %i.ej = sub i64 %i.ei, %i.cf
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %.val.us.us.i = load i32, ptr %.03848.us.i, align 1, !tbaa !25
  %i.el = mul i32 %.val.us.us.i, -1640531535
  %i.em = lshr i32 %i.el, %i.ci
  %i.en = zext i32 %i.em to i64
  %.val43.us.us.i = load i64, ptr %.03848.us.i, align 1, !tbaa !24
  %i.eo = mul i64 %.val43.us.us.i, -3523014627327384477
  %i.ep = lshr i64 %i.eo, %i.ck
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.en
  store i32 %i.ek, ptr %i.eq, align 4, !tbaa !25
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ep
  store i32 %i.ek, ptr %i.er, align 4, !tbaa !25
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %.not.us.i = icmp ugt ptr %i.et, %i.n
  br i1 %.not.us.i, label %ZSTD_fillDoubleHashTableForCDict.exit, label %.split.us.us.i, !llvm.loop !28

.split.i:                                         ; preds = %.lr.ph.i6, %.split46.i
  %i.eu = phi ptr [ %i.gb, %.split46.i ], [ %i.bz, %.lr.ph.i6 ] ; 3 uses
  %.03848.i = phi ptr [ %i.eu, %.split46.i ], [ %i.m, %.lr.ph.i6 ] ; 9 uses
  %i.ev = ptrtoint ptr %.03848.i to i64
  %i.ew = sub i64 %i.ev, %i.cf
  %i.ex = trunc i64 %i.ew to i32                  ; 4 uses
  switch i32 %i.e, label %bb.l [
    i32 8, label %.thread.i
    i32 5, label %.thread82.i
    i32 6, label %.thread85.i
    i32 7, label %.thread88.i
  ]

.thread82.i:                                      ; preds = %.split.i
  %.val39.i = load i64, ptr %.03848.i, align 1, !tbaa !24 ; 2 uses
  %i.ey = mul i64 %.val39.i, -3523014627271114752
  %i.ez = lshr i64 %i.ey, %i.ch
  br label %.critedge.1.i

.thread85.i:                                      ; preds = %.split.i
  %.val40.i = load i64, ptr %.03848.i, align 1, !tbaa !24 ; 2 uses
  %i.fa = mul i64 %.val40.i, -3523014627193847808
  %i.fb = lshr i64 %i.fa, %i.ch
  br label %.critedge.1.i

.thread88.i:                                      ; preds = %.split.i
  %.val41.i = load i64, ptr %.03848.i, align 1, !tbaa !24 ; 2 uses
  %i.fc = mul i64 %.val41.i, -3523014627193167104
  %i.fd = lshr i64 %i.fc, %i.ch
  br label %.critedge.1.i

.thread.i:                                        ; preds = %.split.i
  %.val42.i = load i64, ptr %.03848.i, align 1, !tbaa !24 ; 2 uses
  %i.fe = mul i64 %.val42.i, -3523014627327384477
  %i.ff = lshr i64 %i.fe, %i.ch
  br label %.critedge.1.i

bb.l:                                             ; preds = %.split.i
  %.val.i = load i32, ptr %.03848.i, align 1, !tbaa !25
  %i.fg = mul i32 %.val.i, -1640531535
  %i.fh = lshr i32 %i.fg, %i.ci
  %i.fi = zext i32 %i.fh to i64
  %.val43.pre.i = load i64, ptr %.03848.i, align 1, !tbaa !24
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.l, %.thread.i, %.thread88.i, %.thread85.i, %.thread82.i
  %.val43.pre.sink.i = phi i64 [ %.val43.pre.i, %bb.l ], [ %.val41.i, %.thread88.i ], [ %.val40.i, %.thread85.i ], [ %.val39.i, %.thread82.i ], [ %.val42.i, %.thread.i ]
  %.sink97.i = phi i64 [ %i.fi, %bb.l ], [ %i.fd, %.thread88.i ], [ %i.fb, %.thread85.i ], [ %i.ez, %.thread82.i ], [ %i.ff, %.thread.i ]
  %i.fj = mul i64 %.val43.pre.sink.i, -3523014627327384477
  %i.fk = lshr i64 %i.fj, %i.ck
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink97.i
  store i32 %i.ex, ptr %i.fl, align 4, !tbaa !25
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fk
  store i32 %i.ex, ptr %i.fm, align 4, !tbaa !25
  %i.fn = getelementptr inbounds nuw i8, ptr %.03848.i, i64 1
  %.val43.1.i = load i64, ptr %i.fn, align 1, !tbaa !24
  %i.fo = mul i64 %.val43.1.i, -3523014627327384477
  %i.fp = lshr i64 %i.fo, %i.ck
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !25
end_hunk_0
