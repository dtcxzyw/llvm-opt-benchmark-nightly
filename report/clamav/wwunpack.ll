loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"in wwunpack\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"WWPack: Array of structs out of section\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"WWPack: Compressed data out of file\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"WWP: src: %x, szd: %x, srcend: %x - %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"WWPack: Unable to allocate memory for compd\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"WWPack: Out of bits\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"WWPack: decompression error\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"WWPack: unpack memory address out of bounds.\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"WWPack: structs pointer out of bounds\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @wwunpack(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 673        ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #5
  %i.b = zext i16 %4 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.e = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.f = zext i32 %1 to i64                       ; 3 uses
  %i.g = icmp eq i32 %1, 0
  %i.h = ptrtoint ptr %0 to i64                   ; 10 uses
  %i.i = add i64 %i.f, %i.h                       ; 18 uses
  %i.j = icmp ult i32 %1, 2
  br i1 %i.g, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.not1240 = icmp ult ptr %i.a, %2
  br label %.split

.split.us:                                        ; preds = %bb.a
  %i.k = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.l = icmp ult i32 %i.k, 17
  br i1 %i.l, label %.loopexit1456.sink.split, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.m = zext i32 %i.k to i64
  %i.n = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.o = add i64 %i.n, 17                         ; 2 uses
  %i.p = add i64 %i.m, %i.e                       ; 2 uses
  %.not1241.us = icmp ule i64 %i.o, %i.p
  %i.q = icmp ugt i64 %i.o, %i.e
  %or.cond1346.us = and i1 %i.q, %.not1241.us
  %i.r = icmp ugt i64 %i.p, %i.n
  %or.cond1347.us = and i1 %i.r, %or.cond1346.us
  br i1 %or.cond1347.us, label %.split1503, label %.loopexit1456.sink.split

.split:                                           ; preds = %.split.preheader, %bb.fo
  %.0989 = phi ptr [ %i.qe, %bb.fo ], [ %i.a, %.split.preheader ] ; 6 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.t = icmp ult i32 %i.s, 17
  %or.cond = or i1 %i.t, %.not1240
  br i1 %or.cond, label %.loopexit1456.sink.split, label %bb.c

bb.c:                                             ; preds = %.split
  %i.u = zext i32 %i.s to i64
  %i.v = ptrtoint ptr %.0989 to i64               ; 2 uses
  %i.w = add i64 %i.v, 17                         ; 2 uses
  %i.x = add i64 %i.u, %i.e                       ; 2 uses
  %.not1241 = icmp ule i64 %i.w, %i.x
  %i.y = icmp ugt i64 %i.w, %i.e
  %or.cond1346 = and i1 %i.y, %.not1241
  %i.z = icmp ugt i64 %i.x, %i.v
  %or.cond1347 = and i1 %i.z, %or.cond1346
  br i1 %or.cond1347, label %bb.d, label %.loopexit1456.sink.split

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ab = load i32, ptr %.0989, align 1, !tbaa !11
  %i.ac = sub i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0989, i64 8
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !11 ; 2 uses
  %i.af = shl nsw i32 %i.ae, 2                    ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0989, i64 12
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !11 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0989, i64 16
  %i.aj = zext i32 %i.ac to i64
  %i.ak = zext i32 %i.ah to i64
  %i.al = zext i32 %i.af to i64                   ; 7 uses
  %i.am = add nuw nsw i64 %i.aj, 4
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = sub nsw i64 %i.an, %i.al                ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao ; 4 uses
  %i.aq = icmp eq i32 %i.ae, 0
  %.not1242 = icmp ugt i32 %i.af, %1
  %or.cond1348 = select i1 %i.aq, i1 true, i1 %.not1242
  %.not1243 = icmp slt i64 %i.ao, 0
  %or.cond.a = select i1 %or.cond1348, i1 true, i1 %.not1243
  br i1 %or.cond.a, label %.split1503, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = add i64 %i.ar, %i.al                    ; 2 uses
  %.not1244 = icmp ule i64 %i.as, %i.i
  %i.at = icmp ugt i64 %i.as, %i.h
  %or.cond1349 = and i1 %.not1244, %i.at
  %i.au = icmp ugt i64 %i.i, %i.ar
  %or.cond1350 = and i1 %i.au, %or.cond1349
  br i1 %or.cond1350, label %bb.f, label %.split1503

.split1503:                                       ; preds = %bb.d, %bb.e, %bb.b
  br label %.loopexit1456.sink.split

bb.f:                                             ; preds = %bb.e
  %i.av = add i32 %i.ah, 4
  %i.aw = sub i32 %i.av, %i.af
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.aw) #5
  %i.ax = tail call ptr @cli_max_malloc(i64 noundef %i.al) #5 ; 35 uses
  %.not1245 = icmp eq ptr %i.ax, null
  br i1 %.not1245, label %.loopexit1456.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.ap, i64 %i.al, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 -1, i64 %i.al, i1 false)
  %i.ay = ptrtoint ptr %i.ax to i64               ; 31 uses
  %i.az = add i64 %i.ay, 4
  %i.ba = add i64 %i.ay, %i.al                    ; 56 uses
  %.not1246 = icmp ule i64 %i.az, %i.ba
  %i.bb = icmp ult ptr %i.ax, inttoptr (i64 -4 to ptr)
  %or.cond1351 = and i1 %i.bb, %.not1246
  %i.bc = icmp ugt i64 %i.ba, %i.ay
  %or.cond1352 = and i1 %i.bc, %or.cond1351
  br i1 %or.cond1352, label %.lr.ph1491.preheader, label %.critedge.sink.split.sink.split

.lr.ph1491.preheader:                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.ax, align 1, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  br label %.lr.ph1491

.lr.ph1491:                                       ; preds = %.lr.ph1491.preheader, %.loopexit
  %.29491490 = phi i32 [ %.40987, %.loopexit ], [ %i.bd, %.lr.ph1491.preheader ] ; 2 uses
  %.19921489 = phi ptr [ %.401031, %.loopexit ], [ %i.be, %.lr.ph1491.preheader ] ; 6 uses
  %.010321488 = phi ptr [ %.61038, %.loopexit ], [ %i.ap, %.lr.ph1491.preheader ] ; 18 uses
  %.010391487 = phi i8 [ %.231062, %.loopexit ], [ 32, %.lr.ph1491.preheader ]
  %i.bf = shl i32 %.29491490, 1                   ; 2 uses
  %i.bg = add i8 %.010391487, -1                  ; 2 uses
  %.not1247 = icmp eq i8 %i.bg, 0
  br i1 %.not1247, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph1491
  %.not1248 = icmp ult ptr %.19921489, %i.ax
  br i1 %.not1248, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = ptrtoint ptr %.19921489 to i64          ; 2 uses
  %i.bi = add i64 %i.bh, 4                        ; 2 uses
  %.not1249 = icmp ule i64 %i.bi, %i.ba
  %i.bj = icmp ugt i64 %i.bi, %i.ay
  %or.cond1353 = and i1 %.not1249, %i.bj
  %i.bk = icmp ugt i64 %i.ba, %i.bh
  %or.cond1354 = and i1 %i.bk, %or.cond1353
  br i1 %or.cond1354, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %.19921489, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %.19921489, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.lr.ph1491
  %.11040 = phi i8 [ %i.bg, %.lr.ph1491 ], [ 32, %bb.k ], [ 32, %bb.j ] ; 3 uses
  %.3994 = phi ptr [ %.19921489, %.lr.ph1491 ], [ %.19921489, %bb.k ], [ %i.bm, %bb.j ] ; 15 uses
  %.4951 = phi i32 [ %i.bf, %.lr.ph1491 ], [ %i.bf, %bb.k ], [ %i.bl, %bb.j ] ; 6 uses
  %.4 = phi i32 [ 0, %.lr.ph1491 ], [ 1, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.not1250 = icmp sgt i32 %.29491490, -1
  br i1 %.not1250, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bn = ptrtoint ptr %.3994 to i64
  %i.bo = sub i64 %i.bn, %i.ay
  %i.bp = icmp sge i64 %i.bo, %i.al
  %.not1251 = icmp ult ptr %.010321488, %0
  %or.cond1449 = select i1 %i.bp, i1 true, i1 %.not1251
  br i1 %or.cond1449, label %.critedge.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = ptrtoint ptr %.010321488 to i64         ; 2 uses
  %i.br = add i64 %i.bq, 1                        ; 2 uses
  %.not1252 = icmp ule i64 %i.br, %i.i
  %i.bs = icmp ugt i64 %i.br, %i.h
  %or.cond1355 = and i1 %.not1252, %i.bs
  %i.bt = icmp ugt i64 %i.i, %i.bq
  %or.cond1356 = and i1 %i.bt, %or.cond1355
  br i1 %or.cond1356, label %bb.o, label %.critedge.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.3994, i64 1
  %i.bv = load i8, ptr %.3994, align 1, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %.010321488, i64 1
  store i8 %i.bv, ptr %.010321488, align 1, !tbaa !11
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  %i.bx = lshr i32 %.4951, 30                     ; 6 uses
  %i.by = icmp ugt i8 %.11040, 1
  br i1 %i.by, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bz = add i8 %.11040, -2                      ; 2 uses
  %i.ca = shl i32 %.4951, 2                       ; 2 uses
  %.not1255 = icmp eq i8 %i.bz, 0
  br i1 %.not1255, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %.not1256 = icmp ult ptr %.3994, %i.ax
  br i1 %.not1256, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = ptrtoint ptr %.3994 to i64              ; 2 uses
  %i.cc = add i64 %i.cb, 4                        ; 2 uses
  %.not1257 = icmp ule i64 %i.cc, %i.ba
  %i.cd = icmp ugt i64 %i.cc, %i.ay
  %or.cond1357 = and i1 %.not1257, %i.cd
  %i.ce = icmp ugt i64 %i.ba, %i.cb
  %or.cond1358 = and i1 %i.ce, %or.cond1357
  br i1 %or.cond1358, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = load i32, ptr %.3994, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %.3994, i64 4
  br label %bb.y

bb.u:                                             ; preds = %bb.s, %bb.r
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #5
  br label %bb.y

bb.v:                                             ; preds = %bb.p
  %.not1253 = icmp ult ptr %.3994, %i.ax
  br i1 %.not1253, label %.thread1562, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = ptrtoint ptr %.3994 to i64              ; 2 uses
  %i.ci = add i64 %i.ch, 4                        ; 2 uses
  %.not1254 = icmp ule i64 %i.ci, %i.ba
  %i.cj = icmp ugt i64 %i.ci, %i.ay
  %or.cond1359 = and i1 %.not1254, %i.cj
  %i.ck = icmp ugt i64 %i.ba, %i.ch
  %or.cond1360 = and i1 %i.ck, %or.cond1359
  br i1 %or.cond1360, label %bb.x, label %.thread1562

bb.x:                                             ; preds = %bb.w
  %i.cl = load i32, ptr %.3994, align 1, !tbaa !11 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.3994, i64 4
  %i.cn = lshr i32 %i.cl, 31
  %i.co = or i32 %i.cn, %i.bx
  %i.cp = shl i32 %i.cl, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.u, %bb.x, %bb.q
  %.21041 = phi i8 [ %i.bz, %bb.q ], [ 32, %bb.t ], [ 31, %bb.x ], [ 32, %bb.u ] ; 5 uses
end_hunk_0
begin_hunk_1_@wwunpack:bb.a
  %i.ov = getelementptr i8, ptr %.010321488, i64 %n.vec1627 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1628 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1631, %vec.epilog.vector.body ] ; 2 uses
  %next.gep1629 = getelementptr i8, ptr %.010321488, i64 %index1628 ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %next.gep1629, i64 %i.oe
  %wide.load1630 = load <4 x i8>, ptr %i.ow, align 1, !tbaa !11
  store <4 x i8> %wide.load1630, ptr %next.gep1629, align 1, !tbaa !11
  %index.next1631 = add nuw i64 %index1628, 4     ; 2 uses
  %i.ox = icmp eq i64 %index.next1631, %n.vec1627
  br i1 %i.ox, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1632 = icmp eq i64 %n.vec1627, %i.nx
  br i1 %cmp.n1632, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.19281486.ph = phi i32 [ %.0927, %iter.check ], [ %i.on, %vec.epilog.iter.check ], [ %i.ou, %vec.epilog.middle.block ] ; 4 uses
  %.410361485.ph = phi ptr [ %.010321488, %iter.check ], [ %i.oo, %vec.epilog.iter.check ], [ %i.ov, %vec.epilog.middle.block ] ; 2 uses
  %i.oy = add i32 %.19281486.ph, -1
  %xtraiter = and i32 %.19281486.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.19281486.prol = phi i32 [ %i.oz, %.lr.ph.prol ], [ %.19281486.ph, %.lr.ph.preheader ]
  %.410361485.prol = phi ptr [ %i.pc, %.lr.ph.prol ], [ %.410361485.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.oz = add i32 %.19281486.prol, -1             ; 2 uses
  %i.pa = getelementptr inbounds i8, ptr %.410361485.prol, i64 %i.oe
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !11
  store i8 %i.pb, ptr %.410361485.prol, align 1, !tbaa !11
  %i.pc = getelementptr inbounds nuw i8, ptr %.410361485.prol, i64 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa1637.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.pc, %.lr.ph.prol ]
  %.19281486.unr = phi i32 [ %.19281486.ph, %.lr.ph.preheader ], [ %i.oz, %.lr.ph.prol ]
  %.410361485.unr = phi ptr [ %.410361485.ph, %.lr.ph.preheader ], [ %i.pc, %.lr.ph.prol ]
  %i.pd = icmp ult i32 %i.oy, 7
  br i1 %i.pd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.19281486 = phi i32 [ %i.pz, %.lr.ph ], [ %.19281486.unr, %.lr.ph.prol.loopexit ]
  %.410361485 = phi ptr [ %i.qc, %.lr.ph ], [ %.410361485.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.pe = getelementptr inbounds i8, ptr %.410361485, i64 %i.oe
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !11
  store i8 %i.pf, ptr %.410361485, align 1, !tbaa !11
  %i.pg = getelementptr inbounds nuw i8, ptr %.410361485, i64 1 ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 %i.oe
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !11
  store i8 %i.pi, ptr %i.pg, align 1, !tbaa !11
  %i.pj = getelementptr inbounds nuw i8, ptr %.410361485, i64 2 ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 %i.oe
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !11
  store i8 %i.pl, ptr %i.pj, align 1, !tbaa !11
  %i.pm = getelementptr inbounds nuw i8, ptr %.410361485, i64 3 ; 2 uses
  %i.pn = getelementptr inbounds i8, ptr %i.pm, i64 %i.oe
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !11
  store i8 %i.po, ptr %i.pm, align 1, !tbaa !11
  %i.pp = getelementptr inbounds nuw i8, ptr %.410361485, i64 4 ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 %i.oe
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !11
  store i8 %i.pr, ptr %i.pp, align 1, !tbaa !11
  %i.ps = getelementptr inbounds nuw i8, ptr %.410361485, i64 5 ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 %i.oe
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !11
  store i8 %i.pu, ptr %i.ps, align 1, !tbaa !11
  %i.pv = getelementptr inbounds nuw i8, ptr %.410361485, i64 6 ; 2 uses
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 %i.oe
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !11
  store i8 %i.px, ptr %i.pv, align 1, !tbaa !11
  %i.py = getelementptr inbounds nuw i8, ptr %.410361485, i64 7 ; 2 uses
  %i.pz = add i32 %.19281486, -8                  ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %i.py, i64 %i.oe
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !11
  store i8 %i.qb, ptr %i.py, align 1, !tbaa !11
  %i.qc = getelementptr inbounds nuw i8, ptr %.410361485, i64 8 ; 2 uses
  %.not1318.7 = icmp eq i32 %i.pz, 0
  br i1 %.not1318.7, label %.loopexit, label %.lr.ph, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.av, %bb.o
  %.231062 = phi i8 [ %.11040, %bb.o ], [ %.41043, %bb.av ], [ %.221061, %middle.block ], [ %.221061, %vec.epilog.middle.block ], [ %.221061, %.lr.ph ], [ %.221061, %.lr.ph.prol.loopexit ]
  %.61038 = phi ptr [ %i.bw, %bb.o ], [ %i.fh, %bb.av ], [ %i.oo, %middle.block ], [ %i.ov, %vec.epilog.middle.block ], [ %.lcssa1637.unr, %.lr.ph.prol.loopexit ], [ %i.qc, %.lr.ph ]
  %.401031 = phi ptr [ %i.bu, %bb.o ], [ %.101001, %bb.av ], [ %.391030, %middle.block ], [ %.391030, %vec.epilog.middle.block ], [ %.391030, %.lr.ph ], [ %.391030, %.lr.ph.prol.loopexit ]
  %.40987 = phi i32 [ %.4951, %bb.o ], [ %.10957, %bb.av ], [ %.39986, %middle.block ], [ %.39986, %vec.epilog.middle.block ], [ %.39986, %.lr.ph ], [ %.39986, %.lr.ph.prol.loopexit ]
  %.44 = phi i32 [ %.4, %bb.o ], [ 0, %bb.av ], [ %.42, %middle.block ], [ %.42, %vec.epilog.middle.block ], [ %.42, %.lr.ph ], [ %.42, %.lr.ph.prol.loopexit ]
  %i.qd = icmp eq i32 %.44, 0
  br i1 %i.qd, label %.lr.ph1491, label %.critedge.sink.split

bb.fn:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef %i.ax) #5
  %.not1334 = icmp eq i32 %.9, 0
  br i1 %.not1334, label %bb.fo, label %.critedge

.critedge.sink.split.sink.split:                  ; preds = %bb.g, %bb.al, %bb.ak, %bb.ao, %bb.an
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #5
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.loopexit, %bb.fk, %bb.m, %bb.fm, %bb.n, %bb.au, %bb.at, %bb.as, %bb.fl, %bb.ar, %bb.fj, %.critedge.sink.split.sink.split
  tail call void @free(ptr noundef %i.ax) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.fn, %.critedge.sink.split
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #5
  br label %bb.fz

bb.fo:                                            ; preds = %bb.fn
  %i.qe = getelementptr inbounds nuw i8, ptr %.0989, i64 17
  %i.qf = load i8, ptr %i.ai, align 1, !tbaa !11
  %.not1335 = icmp eq i8 %i.qf, 0
  br i1 %.not1335, label %.loopexit1456, label %.split

.loopexit1456.sink.split:                         ; preds = %bb.f, %bb.c, %.split, %bb.b, %.split.us, %.split1503
  %.str.1.sink = phi ptr [ @.str.1, %bb.b ], [ @.str.2, %.split1503 ], [ @.str.1, %.split.us ], [ @.str.1, %.split ], [ @.str.1, %bb.c ], [ @.str.4, %bb.f ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.1.sink) #5
  br label %.loopexit1456

.loopexit1456:                                    ; preds = %bb.fo, %.loopexit1456.sink.split
  %i.qg = icmp ugt i32 %1, 3
  br i1 %i.qg, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.loopexit1456
  %i.qh = zext i32 %5 to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 80
  %i.qk = ptrtoint ptr %i.qj to i64               ; 2 uses
  %i.ql = add i64 %i.qk, 4                        ; 2 uses
  %.not1337 = icmp ule i64 %i.ql, %i.i
  %i.qm = icmp ugt i64 %i.ql, %i.h
  %or.cond1415 = and i1 %.not1337, %i.qm
  %i.qn = icmp ugt i64 %i.i, %i.qk
  %or.cond1416 = and i1 %i.qn, %or.cond1415
  br i1 %or.cond1416, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.loopexit1456
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #5
  br label %bb.fz

bb.fr:                                            ; preds = %bb.fp
  %i.qo = load i32, ptr %i.d, align 4, !tbaa !8   ; 2 uses
  %i.qp = icmp ult i32 %i.qo, 4
  br i1 %i.qp, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.qq = zext i32 %i.qo to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 661 ; 2 uses
  %i.qs = ptrtoint ptr %i.qr to i64               ; 2 uses
  %i.qt = add i64 %i.qs, 4                        ; 2 uses
  %i.qu = add i64 %i.qq, %i.e                     ; 2 uses
  %.not1339 = icmp ule i64 %i.qt, %i.qu
  %i.qv = icmp ugt i64 %i.qt, %i.e
  %or.cond1418 = and i1 %i.qv, %.not1339
  %i.qw = icmp ugt i64 %i.qu, %i.qs
  %or.cond1419 = and i1 %i.qw, %or.cond1418
  br i1 %or.cond1419, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #5
  br label %bb.fz

bb.fu:                                            ; preds = %bb.fs
  %i.qx = trunc i16 %4 to i8
  %i.qy = add i32 %5, 6
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 %i.qz
  store i8 %i.qx, ptr %i.ra, align 1, !tbaa !11
  %i.rb = lshr i16 %4, 8
  %i.rc = trunc nuw i16 %i.rb to i8
  %i.rd = add i32 %5, 7
  %i.re = zext i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 %i.re
  store i8 %i.rc, ptr %i.rf, align 1, !tbaa !11
  %i.rg = load i32, ptr %i.qr, align 1, !tbaa !11
  %i.rh = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ri = add i32 %i.rg, 665
  %i.rj = add i32 %i.ri, %i.rh
  %i.rk = add i32 %5, 40
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 %i.rl
  store i32 %i.rj, ptr %i.rm, align 1, !tbaa !11
  %i.rn = add i32 %5, 80
  %i.ro = zext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 1, !tbaa !11
  %i.rr = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !20
  %i.rt = sub i32 %i.rq, %i.rs
  store i32 %i.rt, ptr %i.rp, align 1, !tbaa !11
  %i.ru = add i32 %5, 20
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 1, !tbaa !11
  %i.ry = and i32 %i.rx, 65535
  %i.rz = add i32 %5, 24
  %i.sa = add i32 %i.rz, %i.ry
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr i8, ptr %0, i64 %i.sb     ; 3 uses
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %bb.fu
  %i.sd = icmp ult i32 %1, 40
  br i1 %i.sd, label %.split1510, label %.lr.ph1508.split.preheader

.lr.ph1508.split.preheader:                       ; preds = %.lr.ph1508
  %.not1343 = icmp ult ptr %i.sc, %0
  br label %.lr.ph1508.split

.lr.ph1508.split:                                 ; preds = %.lr.ph1508.split.preheader, %bb.fv
  %indvars.iv = phi i64 [ 0, %.lr.ph1508.split.preheader ], [ %indvars.iv.next, %bb.fv ] ; 2 uses
  %.19901506 = phi ptr [ %i.sc, %.lr.ph1508.split.preheader ], [ %i.ss, %bb.fv ] ; 6 uses
  br i1 %.not1343, label %.split1510, label %.lr.ph1508.split.a

.lr.ph1508.split.a:                               ; preds = %.lr.ph1508.split
  %i.se = ptrtoint ptr %.19901506 to i64          ; 2 uses
  %i.sf = add i64 %i.se, 40                       ; 2 uses
  %.not1344 = icmp ule i64 %i.sf, %i.i
  %i.sg = icmp ugt i64 %i.sf, %i.h
  %or.cond1420 = and i1 %.not1344, %i.sg
  %i.sh = icmp ugt i64 %i.i, %i.se
  %or.cond1421 = and i1 %i.sh, %or.cond1420
  br i1 %or.cond1421, label %bb.fv, label %.split1510

.split1510:                                       ; preds = %.lr.ph1508.split, %.lr.ph1508.split.a, %.lr.ph1508
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #5
  br label %bb.fz

bb.fv:                                            ; preds = %.lr.ph1508.split.a
  %i.si = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !20
  %i.sl = getelementptr inbounds nuw i8, ptr %.19901506, i64 8
  store i32 %i.sk, ptr %i.sl, align 1, !tbaa !11
  %i.sm = load i32, ptr %i.si, align 4, !tbaa !10
  %i.sn = getelementptr inbounds nuw i8, ptr %.19901506, i64 12
  store i32 %i.sm, ptr %i.sn, align 1, !tbaa !11
  %i.so = load i32, ptr %i.sj, align 4, !tbaa !20
  %i.sp = getelementptr inbounds nuw i8, ptr %.19901506, i64 16
  store i32 %i.so, ptr %i.sp, align 1, !tbaa !11
  %i.sq = load i32, ptr %i.si, align 4, !tbaa !10
  %i.sr = getelementptr inbounds nuw i8, ptr %.19901506, i64 20
  store i32 %i.sq, ptr %i.sr, align 1, !tbaa !11
  %i.ss = getelementptr inbounds nuw i8, ptr %.19901506, i64 40 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1508.split

._crit_edge:                                      ; preds = %bb.fv, %bb.fu
  %.1990.lcssa = phi ptr [ %i.sc, %bb.fu ], [ %i.ss, %bb.fv ] ; 3 uses
  %i.st = icmp ult i32 %1, 40
  %.not1340 = icmp ult ptr %.1990.lcssa, %0
  %or.cond1453 = select i1 %i.st, i1 true, i1 %.not1340
  br i1 %or.cond1453, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %._crit_edge
  %i.su = ptrtoint ptr %.1990.lcssa to i64        ; 2 uses
  %i.sv = add i64 %i.su, 40                       ; 2 uses
  %.not1341 = icmp ule i64 %i.sv, %i.i
  %i.sw = icmp ugt i64 %i.sv, %i.h
  %or.cond1422 = and i1 %.not1341, %i.sw
  %i.sx = icmp ugt i64 %i.i, %i.su
  %or.cond1423 = and i1 %i.sx, %or.cond1422
  br i1 %or.cond1423, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #5
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.1990.lcssa, i8 0, i64 40, i1 false)
  %i.sy = tail call i64 @cli_writen(i32 noundef %6, ptr noundef %0, i64 noundef %i.f) #5
  %.not1342 = icmp eq i64 %i.sy, %i.f
  %spec.select1424 = select i1 %.not1342, i32 0, i32 14
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.critedge, %bb.fx, %.split1510, %bb.ft, %bb.fq
  %.0926 = phi i32 [ 26, %.split1510 ], [ 26, %bb.fq ], [ 26, %bb.fx ], [ 26, %bb.ft ], [ 1, %.critedge ], [ %spec.select1424, %bb.fy ]
  ret i32 %.0926
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 28}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !13}
!20 = !{!9, !5, i64 4}
end_hunk_1
