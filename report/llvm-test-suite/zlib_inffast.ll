loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @inflate_fast(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = add i32 %i.e, -5
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 4 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17   ; 5 uses
  %i.n = sub i32 %1, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.p
  %i.r = add i32 %i.m, -257
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23   ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 10 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64              ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !29
  %notmask = shl nsw i32 -1, %i.am
  %i.an = xor i32 %notmask, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !30
  %notmask320 = shl nsw i32 -1, %i.ap
  %i.aq = xor i32 %notmask320, -1
  %i.ar = zext nneg i32 %i.an to i64
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = ptrtoint ptr %i.q to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 7144
  %i.av = icmp eq i32 %i.z, 0
  %i.aw = add i32 %i.z, %i.v
  %i.ax = trunc i64 %i.k to i32                   ; 3 uses
  %i.ay = add i32 %i.m, %i.ax
  %i.az = xor i32 %1, -1
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = zext i32 %i.z to i64                    ; 5 uses
  %i.bc = add i32 %i.m, %i.ax
  %i.bd = xor i32 %i.z, -1
  %i.be = add i32 %i.bc, %i.bd
  %i.bf = sub i32 %i.be, %1
  %i.bg = add i32 %i.m, %i.ax
  %i.bh = xor i32 %1, -1
  %i.bi = add i32 %i.bg, %i.bh
  %min.iters.check571 = icmp ult i32 %i.z, 4
  %min.iters.check573 = icmp ult i32 %i.z, 32
  %n.mod.vf575 = and i64 %i.bb, 28
  %n.vec576 = and i64 %i.bb, 4294967264           ; 6 uses
  %i.bj = trunc nuw i64 %n.vec576 to i32
  %i.bk = sub i32 %i.z, %i.bj
  %i.bl = getelementptr i8, ptr %i.ab, i64 %n.vec576
  %cmp.n585 = icmp eq i64 %n.vec576, %i.bb
  %min.epilog.iters.check592 = icmp eq i64 %n.mod.vf575, 0
  %n.vec595 = and i64 %i.bb, 4294967292           ; 5 uses
  %i.bm = trunc nuw i64 %n.vec595 to i32
  %i.bn = sub i32 %i.z, %i.bm
  %i.bo = getelementptr i8, ptr %i.ab, i64 %n.vec595
  %cmp.n603 = icmp eq i64 %n.vec595, %i.bb
  br label %bb.b

bb.b:                                             ; preds = %bb.ah, %bb.a
  %.0284 = phi i32 [ %i.ag, %bb.a ], [ %.8292, %bb.ah ] ; 5 uses
  %.0274 = phi i64 [ %i.ae, %bb.a ], [ %.8282, %bb.ah ] ; 2 uses
  %.0266 = phi ptr [ %i.j, %bb.a ], [ %.8, %bb.ah ] ; 27 uses
  %.0259 = phi ptr [ %i.c, %bb.a ], [ %.6265, %bb.ah ] ; 4 uses
  %i.bp = icmp ult i32 %.0284, 15
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %.0259, i64 1
  %i.br = load i8, ptr %.0259, align 1, !tbaa !31
  %i.bs = zext i8 %i.br to i64
  %i.bt = zext nneg i32 %.0284 to i64
  %i.bu = shl nuw nsw i64 %i.bs, %i.bt
  %i.bv = add i64 %i.bu, %.0274
  %i.bw = add nuw nsw i32 %.0284, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.0259, i64 2
  %i.by = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bz = zext i8 %i.by to i64
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = shl nuw nsw i64 %i.bz, %i.ca
  %i.cc = add i64 %i.bv, %i.cb
  %i.cd = or disjoint i32 %.0284, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1285 = phi i32 [ %i.cd, %bb.c ], [ %.0284, %bb.b ]
  %.1275 = phi i64 [ %i.cc, %bb.c ], [ %.0274, %bb.b ] ; 2 uses
  %.1260 = phi ptr [ %i.bx, %bb.c ], [ %.0259, %bb.b ] ; 7 uses
  %i.ce = and i64 %.1275, %i.ar
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ce ; 3 uses
  %.sroa.0.0373 = load i8, ptr %i.cf, align 2, !tbaa !31 ; 2 uses
  %.sroa.8.0.in374 = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %.sroa.8.0375 = load i8, ptr %.sroa.8.0.in374, align 1, !tbaa !31 ; 2 uses
  %.sroa.10.0.in376 = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %.sroa.10.0377 = load i16, ptr %.sroa.10.0.in376, align 2, !tbaa !32 ; 2 uses
  %i.cg = zext i8 %.sroa.8.0375 to i32
  %i.ch = zext nneg i8 %.sroa.8.0375 to i64
  %i.ci = lshr i64 %.1275, %i.ch                  ; 2 uses
  %i.cj = sub i32 %.1285, %i.cg                   ; 2 uses
  %i.ck = icmp eq i8 %.sroa.0.0373, 0
  br i1 %i.ck, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.d
  %.sroa.10.0.lcssa = phi i16 [ %.sroa.10.0377, %bb.d ], [ %.sroa.10.0, %bb.af ]
  %.lcssa346 = phi i64 [ %i.ci, %bb.d ], [ %i.rh, %bb.af ]
  %.lcssa343 = phi i32 [ %i.cj, %bb.d ], [ %i.ri, %bb.af ]
  %i.cl = trunc i16 %.sroa.10.0.lcssa to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0266, i64 1
  store i8 %i.cl, ptr %.0266, align 1, !tbaa !31
  br label %bb.ah

.lr.ph:                                           ; preds = %bb.d, %bb.af
  %.in = phi i8 [ %.sroa.0.0, %bb.af ], [ %.sroa.0.0373, %bb.d ]
  %i.cn = phi i32 [ %i.ri, %bb.af ], [ %i.cj, %bb.d ] ; 8 uses
  %i.co = phi i64 [ %i.rh, %bb.af ], [ %i.ci, %bb.d ] ; 7 uses
  %.sroa.10.0378 = phi i16 [ %.sroa.10.0, %bb.af ], [ %.sroa.10.0377, %bb.d ] ; 2 uses
  %i.cp = zext i8 %.in to i32                     ; 5 uses
  %i.cq = and i32 %i.cp, 16
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.cr = zext i16 %.sroa.10.0378 to i32          ; 2 uses
  %i.cs = and i32 %i.cp, 15                       ; 5 uses
  %.not324 = icmp eq i32 %i.cs, 0
  br i1 %.not324, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = icmp ult i32 %i.cn, %i.cs
  br i1 %i.ct, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %.1260, i64 1
  %i.cv = load i8, ptr %.1260, align 1, !tbaa !31
  %i.cw = zext i8 %i.cv to i64
  %i.cx = zext nneg i32 %i.cn to i64
  %i.cy = shl nuw nsw i64 %i.cw, %i.cx
  %i.cz = add i64 %i.cy, %i.co
  %i.da = add nuw nsw i32 %i.cn, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3287 = phi i32 [ %i.da, %bb.g ], [ %i.cn, %bb.f ]
  %.3277 = phi i64 [ %i.cz, %bb.g ], [ %i.co, %bb.f ] ; 2 uses
  %.2261 = phi ptr [ %i.cu, %bb.g ], [ %.1260, %bb.f ]
  %i.db = trunc i64 %.3277 to i32
  %notmask325 = shl nsw i32 -1, %i.cs
  %i.dc = xor i32 %notmask325, -1
  %i.dd = and i32 %i.db, %i.dc
  %i.de = add nuw nsw i32 %i.dd, %i.cr
  %i.df = zext nneg i32 %i.cs to i64
  %i.dg = lshr i64 %.3277, %i.df
  %i.dh = sub i32 %.3287, %i.cs
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.4288 = phi i32 [ %i.dh, %bb.h ], [ %i.cn, %bb.e ] ; 5 uses
  %.4278 = phi i64 [ %i.dg, %bb.h ], [ %i.co, %bb.e ] ; 2 uses
  %.3262 = phi ptr [ %.2261, %bb.h ], [ %.1260, %bb.e ] ; 4 uses
  %.0251 = phi i32 [ %i.de, %bb.h ], [ %i.cr, %bb.e ] ; 10 uses
  %i.di = icmp ult i32 %.4288, 15
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.3262, i64 1
  %i.dk = load i8, ptr %.3262, align 1, !tbaa !31
  %i.dl = zext i8 %i.dk to i64
  %i.dm = zext nneg i32 %.4288 to i64
  %i.dn = shl nuw nsw i64 %i.dl, %i.dm
  %i.do = add i64 %i.dn, %.4278
  %i.dp = add nuw nsw i32 %.4288, 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.3262, i64 2
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !31
  %i.ds = zext i8 %i.dr to i64
  %i.dt = zext nneg i32 %i.dp to i64
  %i.du = shl nuw nsw i64 %i.ds, %i.dt
  %i.dv = add i64 %i.do, %i.du
  %i.dw = or disjoint i32 %.4288, 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5289 = phi i32 [ %i.dw, %bb.j ], [ %.4288, %bb.i ]
  %.5279 = phi i64 [ %i.dv, %bb.j ], [ %.4278, %bb.i ] ; 2 uses
  %.4263 = phi ptr [ %i.dq, %bb.j ], [ %.3262, %bb.i ] ; 5 uses
  %i.dx = and i64 %.5279, %i.as
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.dx ; 3 uses
  %.sroa.0.1381 = load i8, ptr %i.dy, align 2, !tbaa !31
  %.sroa.8.1.in382 = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %.sroa.8.1383 = load i8, ptr %.sroa.8.1.in382, align 1, !tbaa !31 ; 2 uses
  %.sroa.10.1.in384 = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %.sroa.10.1385 = load i16, ptr %.sroa.10.1.in384, align 2, !tbaa !32 ; 2 uses
  %i.dz = zext i8 %.sroa.8.1383 to i32
  %i.ea = zext nneg i8 %.sroa.8.1383 to i64
  %i.eb = lshr i64 %.5279, %i.ea                  ; 2 uses
  %i.ec = sub i32 %.5289, %i.dz                   ; 2 uses
  %i.ed = zext i8 %.sroa.0.1381 to i32            ; 3 uses
  %i.ee = and i32 %i.ed, 16
  %.not328386 = icmp eq i32 %i.ee, 0
  br i1 %.not328386, label %.lr.ph389, label %._crit_edge390

._crit_edge390:                                   ; preds = %bb.ad, %bb.k
  %.sroa.10.1.lcssa = phi i16 [ %.sroa.10.1385, %bb.k ], [ %.sroa.10.1, %bb.ad ]
  %.lcssa354 = phi i64 [ %i.eb, %bb.k ], [ %i.qt, %bb.ad ] ; 2 uses
  %.lcssa352 = phi i32 [ %i.ec, %bb.k ], [ %i.qu, %bb.ad ] ; 5 uses
  %.lcssa = phi i32 [ %i.ed, %bb.k ], [ %i.qv, %bb.ad ]
  %i.ef = zext i16 %.sroa.10.1.lcssa to i32       ; 4 uses
  %i.eg = and i32 %.lcssa, 15                     ; 5 uses
  %i.eh = icmp ult i32 %.lcssa352, %i.eg
  br i1 %i.eh, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge390
  %i.ei = getelementptr inbounds nuw i8, ptr %.4263, i64 1 ; 2 uses
  %i.ej = load i8, ptr %.4263, align 1, !tbaa !31
  %i.ek = zext i8 %i.ej to i64
  %i.el = zext nneg i32 %.lcssa352 to i64
  %i.em = shl nuw nsw i64 %i.ek, %i.el
  %i.en = add i64 %i.em, %.lcssa354               ; 2 uses
  %i.eo = add nuw nsw i32 %.lcssa352, 8           ; 3 uses
  %i.ep = icmp samesign ult i32 %i.eo, %i.eg
  br i1 %i.ep, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eq = getelementptr inbounds nuw i8, ptr %.4263, i64 2
  %i.er = load i8, ptr %i.ei, align 1, !tbaa !31
  %i.es = zext i8 %i.er to i64
  %i.et = zext nneg i32 %i.eo to i64
  %i.eu = shl nuw nsw i64 %i.es, %i.et
  %i.ev = add i64 %i.eu, %i.en
  %i.ew = add nuw nsw i32 %.lcssa352, 16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %._crit_edge390
  %.7291 = phi i32 [ %i.ew, %bb.m ], [ %i.eo, %bb.l ], [ %.lcssa352, %._crit_edge390 ]
  %.7281 = phi i64 [ %i.ev, %bb.m ], [ %i.en, %bb.l ], [ %.lcssa354, %._crit_edge390 ] ; 2 uses
  %.5264 = phi ptr [ %i.eq, %bb.m ], [ %i.ei, %bb.l ], [ %.4263, %._crit_edge390 ] ; 7 uses
  %i.ex = trunc i64 %.7281 to i32
  %notmask330 = shl nsw i32 -1, %i.eg
  %i.ey = xor i32 %notmask330, -1
  %i.ez = and i32 %i.ex, %i.ey                    ; 4 uses
  %i.fa = add nuw nsw i32 %i.ez, %i.ef            ; 6 uses
  %i.fb = zext nneg i32 %i.eg to i64
  %i.fc = lshr i64 %.7281, %i.fb                  ; 7 uses
  %i.fd = sub i32 %.7291, %i.eg                   ; 7 uses
  %i.fe = ptrtoint ptr %.0266 to i64              ; 7 uses
  %i.ff = sub i64 %i.fe, %i.at
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  %i.fh = icmp ugt i32 %i.fa, %i.fg
  br i1 %i.fh, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.fi = sub nuw nsw i32 %i.fa, %i.fg            ; 18 uses
  %i.fj = icmp ugt i32 %i.fi, %i.x
  br i1 %i.fj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fk = load i32, ptr %i.au, align 8, !tbaa !34
  %.not332 = icmp eq i32 %i.fk, 0
  br i1 %.not332, label %bb.q, label %.loopexit.sink.split.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fl = sub i32 %i.v, %i.fi
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.fm ; 7 uses
  %i.fo = icmp ult i32 %i.fi, %.0251
  br i1 %i.fo, label %iter.check, label %bb.v

iter.check:                                       ; preds = %bb.r
  %i.fp = add i32 %i.ba, %i.ez
  %i.fq = add i32 %i.fp, %i.ef
  %i.fr = trunc i64 %i.fe to i32
  %i.fs = sub i32 %i.fq, %i.fr                    ; 3 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.fs, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fv = add i64 %i.ac, %i.fm
  %i.fw = sub i64 %i.fv, %i.fe
  %diff.check = icmp ugt i64 %i.fw, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check553 = icmp ult i32 %i.fs, 31
  br i1 %min.iters.check553, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.fu, 28
  %n.vec = and i64 %i.fu, 8589934560              ; 6 uses
  %i.fx = getelementptr i8, ptr %.0266, i64 %n.vec ; 2 uses
  %i.fy = trunc i64 %n.vec to i32
  %i.fz = sub i32 %i.fi, %i.fy
  %i.ga = getelementptr i8, ptr %i.fn, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0266, i64 %index ; 2 uses
  %next.gep554 = getelementptr i8, ptr %i.fn, i64 %index ; 2 uses
  %i.gb = getelementptr i8, ptr %next.gep554, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep554, align 1, !tbaa !31
  %wide.load555 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !31
  %i.gc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !31
  store <16 x i8> %wide.load555, ptr %i.gc, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %.loopexit683, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec559 = and i64 %i.fu, 8589934588           ; 5 uses
  %i.ge = getelementptr i8, ptr %.0266, i64 %n.vec559 ; 2 uses
  %i.gf = trunc i64 %n.vec559 to i32
  %i.gg = sub i32 %i.fi, %i.gf
  %i.gh = getelementptr i8, ptr %i.fn, i64 %n.vec559
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index560 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next564, %vec.epilog.vector.body ] ; 3 uses
  %next.gep561 = getelementptr i8, ptr %.0266, i64 %index560
  %next.gep562 = getelementptr i8, ptr %i.fn, i64 %index560
  %wide.load563 = load <4 x i8>, ptr %next.gep562, align 1, !tbaa !31
  store <4 x i8> %wide.load563, ptr %next.gep561, align 1, !tbaa !31
  %index.next564 = add nuw i64 %index560, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next564, %n.vec559
  br i1 %i.gi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n565 = icmp eq i64 %i.fu, %n.vec559
  br i1 %cmp.n565, label %.loopexit683, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1267.ph = phi ptr [ %.0266, %iter.check ], [ %.0266, %vector.memcheck ], [ %i.fx, %vec.epilog.iter.check ], [ %i.ge, %vec.epilog.middle.block ] ; 2 uses
  %.0255.ph = phi i32 [ %i.fi, %iter.check ], [ %i.fi, %vector.memcheck ], [ %i.fz, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ] ; 4 uses
  %.0.ph = phi ptr [ %i.fn, %iter.check ], [ %i.fn, %vector.memcheck ], [ %i.ga, %vec.epilog.iter.check ], [ %i.gh, %vec.epilog.middle.block ] ; 2 uses
  %i.gj = add i32 %.0255.ph, -1
  %xtraiter738 = and i32 %.0255.ph, 7             ; 2 uses
  %lcmp.mod739.not = icmp eq i32 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1267.prol = phi ptr [ %i.gm, %vec.epilog.scalar.ph.prol ], [ %.1267.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0255.prol = phi i32 [ %i.gn, %vec.epilog.scalar.ph.prol ], [ %.0255.ph, %vec.epilog.scalar.ph.preheader ]
  %.0.prol = phi ptr [ %i.gk, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter740 = phi i32 [ %prol.iter740.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 2 uses
  %i.gl = load i8, ptr %.0.prol, align 1, !tbaa !31
  %i.gm = getelementptr inbounds nuw i8, ptr %.1267.prol, i64 1 ; 3 uses
  store i8 %i.gl, ptr %.1267.prol, align 1, !tbaa !31
  %i.gn = add i32 %.0255.prol, -1                 ; 2 uses
  %prol.iter740.next = add i32 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i32 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !41

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa717.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gm, %vec.epilog.scalar.ph.prol ]
  %.1267.unr = phi ptr [ %.1267.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gm, %vec.epilog.scalar.ph.prol ]
  %.0255.unr = phi i32 [ %.0255.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gn, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi ptr [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gk, %vec.epilog.scalar.ph.prol ]
  %i.go = icmp ult i32 %i.gj, 7
  br i1 %i.go, label %.loopexit683, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1267 = phi ptr [ %i.hm, %vec.epilog.scalar.ph ], [ %.1267.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0255 = phi i32 [ %i.hn, %vec.epilog.scalar.ph ], [ %.0255.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0 = phi ptr [ %i.hk, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.gq = load i8, ptr %.0, align 1, !tbaa !31
  %i.gr = getelementptr inbounds nuw i8, ptr %.1267, i64 1
  store i8 %i.gq, ptr %.1267, align 1, !tbaa !31
  %i.gs = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.gt = load i8, ptr %i.gp, align 1, !tbaa !31
  %i.gu = getelementptr inbounds nuw i8, ptr %.1267, i64 2
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.gw = load i8, ptr %i.gs, align 1, !tbaa !31
  %i.gx = getelementptr inbounds nuw i8, ptr %.1267, i64 3
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !31
  %i.gy = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !31
  %i.ha = getelementptr inbounds nuw i8, ptr %.1267, i64 4
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !31
  %i.hb = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.hc = load i8, ptr %i.gy, align 1, !tbaa !31
  %i.hd = getelementptr inbounds nuw i8, ptr %.1267, i64 5
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !31
  %i.he = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.hf = load i8, ptr %i.hb, align 1, !tbaa !31
  %i.hg = getelementptr inbounds nuw i8, ptr %.1267, i64 6
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !31
  %i.hh = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.hi = load i8, ptr %i.he, align 1, !tbaa !31
  %i.hj = getelementptr inbounds nuw i8, ptr %.1267, i64 7
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !31
  %i.hk = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.hl = load i8, ptr %i.hh, align 1, !tbaa !31
  %i.hm = getelementptr inbounds nuw i8, ptr %.1267, i64 8 ; 2 uses
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !31
  %i.hn = add i32 %.0255, -8                      ; 2 uses
  %.not336.7 = icmp eq i32 %i.hn, 0
  br i1 %.not336.7, label %.loopexit683, label %vec.epilog.scalar.ph, !llvm.loop !43

.loopexit683:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa538 = phi ptr [ %i.ge, %vec.epilog.middle.block ], [ %i.fx, %middle.block ], [ %.lcssa717.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hm, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ho = sub nuw nsw i32 %.0251, %i.fi
  %i.hp = zext nneg i32 %i.fa to i64
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr inbounds i8, ptr %.lcssa538, i64 %i.hq
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.hs = icmp ult i32 %i.z, %i.fi
  br i1 %i.hs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ht = sub i32 %i.aw, %i.fi
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hu ; 7 uses
  %i.hw = sub nuw nsw i32 %i.fi, %i.z             ; 6 uses
  %i.hx = icmp ult i32 %i.hw, %.0251
  br i1 %i.hx, label %iter.check627, label %bb.v

iter.check627:                                    ; preds = %bb.t
  %i.hy = add i32 %i.bf, %i.ez
  %i.hz = add i32 %i.hy, %i.ef
  %i.ia = trunc i64 %i.fe to i32
  %i.ib = sub i32 %i.hz, %i.ia                    ; 3 uses
  %i.ic = zext i32 %i.ib to i64
  %i.id = add nuw nsw i64 %i.ic, 1                ; 5 uses
  %min.iters.check609 = icmp ult i32 %i.ib, 3
  br i1 %min.iters.check609, label %vec.epilog.scalar.ph628.preheader, label %vector.memcheck607

vector.memcheck607:                               ; preds = %iter.check627
  %i.ie = add i64 %i.ac, %i.hu
  %i.if = sub i64 %i.ie, %i.fe
  %diff.check608 = icmp ugt i64 %i.if, -32
  br i1 %diff.check608, label %vec.epilog.scalar.ph628.preheader, label %vector.main.loop.iter.check610

vector.main.loop.iter.check610:                   ; preds = %vector.memcheck607
  %min.iters.check611 = icmp ult i32 %i.ib, 31
  br i1 %min.iters.check611, label %vec.epilog.ph631, label %vector.ph612

vector.ph612:                                     ; preds = %vector.main.loop.iter.check610
  %n.mod.vf613 = and i64 %i.id, 28
  %n.vec614 = and i64 %i.id, 8589934560           ; 6 uses
  %i.ig = getelementptr i8, ptr %.0266, i64 %n.vec614 ; 2 uses
  %i.ih = trunc i64 %n.vec614 to i32
  %i.ii = sub i32 %i.hw, %i.ih
  %i.ij = getelementptr i8, ptr %i.hv, i64 %n.vec614
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph612
  %index616 = phi i64 [ 0, %vector.ph612 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %next.gep617 = getelementptr i8, ptr %.0266, i64 %index616 ; 2 uses
  %next.gep618 = getelementptr i8, ptr %i.hv, i64 %index616 ; 2 uses
  %i.ik = getelementptr i8, ptr %next.gep618, i64 16
  %wide.load619 = load <16 x i8>, ptr %next.gep618, align 1, !tbaa !31
  %wide.load620 = load <16 x i8>, ptr %i.ik, align 1, !tbaa !31
  %i.il = getelementptr i8, ptr %next.gep617, i64 16
  store <16 x i8> %wide.load619, ptr %next.gep617, align 1, !tbaa !31
  store <16 x i8> %wide.load620, ptr %i.il, align 1, !tbaa !31
  %index.next621 = add nuw i64 %index616, 32      ; 2 uses
  %i.im = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.im, label %middle.block622, label %vector.body615, !llvm.loop !44

middle.block622:                                  ; preds = %vector.body615
  %cmp.n623 = icmp eq i64 %i.id, %n.vec614
  br i1 %cmp.n623, label %.loopexit685, label %vec.epilog.iter.check629

vec.epilog.iter.check629:                         ; preds = %middle.block622
  %min.epilog.iters.check630 = icmp eq i64 %n.mod.vf613, 0
  br i1 %min.epilog.iters.check630, label %vec.epilog.scalar.ph628.preheader, label %vec.epilog.ph631, !prof !39

vec.epilog.ph631:                                 ; preds = %vector.main.loop.iter.check610, %vec.epilog.iter.check629
  %vec.epilog.resume.val624 = phi i64 [ %n.vec614, %vec.epilog.iter.check629 ], [ 0, %vector.main.loop.iter.check610 ]
  %n.vec633 = and i64 %i.id, 8589934588           ; 5 uses
  %i.in = getelementptr i8, ptr %.0266, i64 %n.vec633 ; 2 uses
  %i.io = trunc i64 %n.vec633 to i32
  %i.ip = sub i32 %i.hw, %i.io
  %i.iq = getelementptr i8, ptr %i.hv, i64 %n.vec633
  br label %vec.epilog.vector.body634

vec.epilog.vector.body634:                        ; preds = %vec.epilog.vector.body634, %vec.epilog.ph631
  %index635 = phi i64 [ %vec.epilog.resume.val624, %vec.epilog.ph631 ], [ %index.next639, %vec.epilog.vector.body634 ] ; 3 uses
  %next.gep636 = getelementptr i8, ptr %.0266, i64 %index635
  %next.gep637 = getelementptr i8, ptr %i.hv, i64 %index635
  %wide.load638 = load <4 x i8>, ptr %next.gep637, align 1, !tbaa !31
  store <4 x i8> %wide.load638, ptr %next.gep636, align 1, !tbaa !31
  %index.next639 = add nuw i64 %index635, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next639, %n.vec633
  br i1 %i.ir, label %vec.epilog.middle.block640, label %vec.epilog.vector.body634, !llvm.loop !45

vec.epilog.middle.block640:                       ; preds = %vec.epilog.vector.body634
  %cmp.n641 = icmp eq i64 %i.id, %n.vec633
  br i1 %cmp.n641, label %.loopexit685, label %vec.epilog.scalar.ph628.preheader

vec.epilog.scalar.ph628.preheader:                ; preds = %vector.memcheck607, %iter.check627, %vec.epilog.iter.check629, %vec.epilog.middle.block640
  %.2268.ph = phi ptr [ %.0266, %iter.check627 ], [ %.0266, %vector.memcheck607 ], [ %i.ig, %vec.epilog.iter.check629 ], [ %i.in, %vec.epilog.middle.block640 ] ; 2 uses
  %.1256.ph = phi i32 [ %i.hw, %iter.check627 ], [ %i.hw, %vector.memcheck607 ], [ %i.ii, %vec.epilog.iter.check629 ], [ %i.ip, %vec.epilog.middle.block640 ] ; 4 uses
  %.1.ph = phi ptr [ %i.hv, %iter.check627 ], [ %i.hv, %vector.memcheck607 ], [ %i.ij, %vec.epilog.iter.check629 ], [ %i.iq, %vec.epilog.middle.block640 ] ; 2 uses
  %i.is = add i32 %.1256.ph, -1
  %xtraiter732 = and i32 %.1256.ph, 7             ; 2 uses
  %lcmp.mod733.not = icmp eq i32 %xtraiter732, 0
  br i1 %lcmp.mod733.not, label %vec.epilog.scalar.ph628.prol.loopexit, label %vec.epilog.scalar.ph628.prol

vec.epilog.scalar.ph628.prol:                     ; preds = %vec.epilog.scalar.ph628.preheader, %vec.epilog.scalar.ph628.prol
  %.2268.prol = phi ptr [ %i.iv, %vec.epilog.scalar.ph628.prol ], [ %.2268.ph, %vec.epilog.scalar.ph628.preheader ] ; 2 uses
  %.1256.prol = phi i32 [ %i.iw, %vec.epilog.scalar.ph628.prol ], [ %.1256.ph, %vec.epilog.scalar.ph628.preheader ]
  %.1.prol = phi ptr [ %i.it, %vec.epilog.scalar.ph628.prol ], [ %.1.ph, %vec.epilog.scalar.ph628.preheader ] ; 2 uses
  %prol.iter734 = phi i32 [ %prol.iter734.next, %vec.epilog.scalar.ph628.prol ], [ 0, %vec.epilog.scalar.ph628.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %.1.prol, i64 1 ; 2 uses
  %i.iu = load i8, ptr %.1.prol, align 1, !tbaa !31
  %i.iv = getelementptr inbounds nuw i8, ptr %.2268.prol, i64 1 ; 3 uses
  store i8 %i.iu, ptr %.2268.prol, align 1, !tbaa !31
  %i.iw = add i32 %.1256.prol, -1                 ; 2 uses
  %prol.iter734.next = add i32 %prol.iter734, 1   ; 2 uses
  %prol.iter734.cmp.not = icmp eq i32 %prol.iter734.next, %xtraiter732
  br i1 %prol.iter734.cmp.not, label %vec.epilog.scalar.ph628.prol.loopexit, label %vec.epilog.scalar.ph628.prol, !llvm.loop !46

vec.epilog.scalar.ph628.prol.loopexit:            ; preds = %vec.epilog.scalar.ph628.prol, %vec.epilog.scalar.ph628.preheader
  %.lcssa715.unr = phi ptr [ poison, %vec.epilog.scalar.ph628.preheader ], [ %i.iv, %vec.epilog.scalar.ph628.prol ]
  %.2268.unr = phi ptr [ %.2268.ph, %vec.epilog.scalar.ph628.preheader ], [ %i.iv, %vec.epilog.scalar.ph628.prol ]
  %.1256.unr = phi i32 [ %.1256.ph, %vec.epilog.scalar.ph628.preheader ], [ %i.iw, %vec.epilog.scalar.ph628.prol ]
  %.1.unr = phi ptr [ %.1.ph, %vec.epilog.scalar.ph628.preheader ], [ %i.it, %vec.epilog.scalar.ph628.prol ]
  %i.ix = icmp ult i32 %i.is, 7
  br i1 %i.ix, label %.loopexit685, label %vec.epilog.scalar.ph628

vec.epilog.scalar.ph628:                          ; preds = %vec.epilog.scalar.ph628.prol.loopexit, %vec.epilog.scalar.ph628
  %.2268 = phi ptr [ %i.jv, %vec.epilog.scalar.ph628 ], [ %.2268.unr, %vec.epilog.scalar.ph628.prol.loopexit ] ; 9 uses
  %.1256 = phi i32 [ %i.jw, %vec.epilog.scalar.ph628 ], [ %.1256.unr, %vec.epilog.scalar.ph628.prol.loopexit ]
  %.1 = phi ptr [ %i.jt, %vec.epilog.scalar.ph628 ], [ %.1.unr, %vec.epilog.scalar.ph628.prol.loopexit ] ; 9 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.iz = load i8, ptr %.1, align 1, !tbaa !31
  %i.ja = getelementptr inbounds nuw i8, ptr %.2268, i64 1
  store i8 %i.iz, ptr %.2268, align 1, !tbaa !31
  %i.jb = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.jc = load i8, ptr %i.iy, align 1, !tbaa !31
  %i.jd = getelementptr inbounds nuw i8, ptr %.2268, i64 2
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !31
  %i.je = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.jf = load i8, ptr %i.jb, align 1, !tbaa !31
  %i.jg = getelementptr inbounds nuw i8, ptr %.2268, i64 3
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !31
  %i.jh = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.ji = load i8, ptr %i.je, align 1, !tbaa !31
  %i.jj = getelementptr inbounds nuw i8, ptr %.2268, i64 4
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !31
  %i.jk = getelementptr inbounds nuw i8, ptr %.1, i64 5
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !31
  %i.jm = getelementptr inbounds nuw i8, ptr %.2268, i64 5
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !31
  %i.jn = getelementptr inbounds nuw i8, ptr %.1, i64 6
  %i.jo = load i8, ptr %i.jk, align 1, !tbaa !31
  %i.jp = getelementptr inbounds nuw i8, ptr %.2268, i64 6
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !31
  %i.jq = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !31
  %i.js = getelementptr inbounds nuw i8, ptr %.2268, i64 7
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !31
  %i.jt = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ju = load i8, ptr %i.jq, align 1, !tbaa !31
  %i.jv = getelementptr inbounds nuw i8, ptr %.2268, i64 8 ; 2 uses
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !31
  %i.jw = add i32 %.1256, -8                      ; 2 uses
  %.not334.7 = icmp eq i32 %i.jw, 0
  br i1 %.not334.7, label %.loopexit685, label %vec.epilog.scalar.ph628, !llvm.loop !47

.loopexit685:                                     ; preds = %vec.epilog.scalar.ph628.prol.loopexit, %vec.epilog.scalar.ph628, %vec.epilog.middle.block640, %middle.block622
  %.lcssa536 = phi ptr [ %i.in, %vec.epilog.middle.block640 ], [ %i.ig, %middle.block622 ], [ %.lcssa715.unr, %vec.epilog.scalar.ph628.prol.loopexit ], [ %i.jv, %vec.epilog.scalar.ph628 ] ; 7 uses
  %i.jx = sub nuw nsw i32 %.0251, %i.hw           ; 3 uses
  %i.jy = icmp ult i32 %i.z, %i.jx
  br i1 %i.jy, label %iter.check589, label %bb.v

iter.check589:                                    ; preds = %.loopexit685
  %i.jz = ptrtoaddr ptr %.lcssa536 to i64
  %i.ka = sub i64 %i.ac, %i.jz
  %diff.check570 = icmp ugt i64 %i.ka, -32
  %or.cond = select i1 %min.iters.check571, i1 true, i1 %diff.check570
  br i1 %or.cond, label %vec.epilog.scalar.ph590.preheader, label %vector.main.loop.iter.check572

vector.main.loop.iter.check572:                   ; preds = %iter.check589
  br i1 %min.iters.check573, label %vec.epilog.ph593, label %vector.ph574

vector.ph574:                                     ; preds = %vector.main.loop.iter.check572
  %i.kb = getelementptr i8, ptr %.lcssa536, i64 %n.vec576 ; 2 uses
  br label %vector.body577

vector.body577:                                   ; preds = %vector.body577, %vector.ph574
  %index578 = phi i64 [ 0, %vector.ph574 ], [ %index.next583, %vector.body577 ] ; 3 uses
  %next.gep579 = getelementptr i8, ptr %.lcssa536, i64 %index578 ; 2 uses
  %next.gep580 = getelementptr i8, ptr %i.ab, i64 %index578 ; 2 uses
  %i.kc = getelementptr i8, ptr %next.gep580, i64 16
  %wide.load581 = load <16 x i8>, ptr %next.gep580, align 1, !tbaa !31
  %wide.load582 = load <16 x i8>, ptr %i.kc, align 1, !tbaa !31
  %i.kd = getelementptr i8, ptr %next.gep579, i64 16
  store <16 x i8> %wide.load581, ptr %next.gep579, align 1, !tbaa !31
  store <16 x i8> %wide.load582, ptr %i.kd, align 1, !tbaa !31
  %index.next583 = add nuw i64 %index578, 32      ; 2 uses
  %i.ke = icmp eq i64 %index.next583, %n.vec576
  br i1 %i.ke, label %middle.block584, label %vector.body577, !llvm.loop !48

middle.block584:                                  ; preds = %vector.body577
  br i1 %cmp.n585, label %.loopexit684, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block584
  br i1 %min.epilog.iters.check592, label %vec.epilog.scalar.ph590.preheader, label %vec.epilog.ph593, !prof !39

vec.epilog.ph593:                                 ; preds = %vector.main.loop.iter.check572, %vec.epilog.iter.check591
  %vec.epilog.resume.val586 = phi i64 [ %n.vec576, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check572 ]
  %i.kf = getelementptr i8, ptr %.lcssa536, i64 %n.vec595 ; 2 uses
  br label %vec.epilog.vector.body596

vec.epilog.vector.body596:                        ; preds = %vec.epilog.vector.body596, %vec.epilog.ph593
  %index597 = phi i64 [ %vec.epilog.resume.val586, %vec.epilog.ph593 ], [ %index.next601, %vec.epilog.vector.body596 ] ; 3 uses
  %next.gep598 = getelementptr i8, ptr %.lcssa536, i64 %index597
  %next.gep599 = getelementptr i8, ptr %i.ab, i64 %index597
  %wide.load600 = load <4 x i8>, ptr %next.gep599, align 1, !tbaa !31
  store <4 x i8> %wide.load600, ptr %next.gep598, align 1, !tbaa !31
  %index.next601 = add nuw i64 %index597, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next601, %n.vec595
  br i1 %i.kg, label %vec.epilog.middle.block602, label %vec.epilog.vector.body596, !llvm.loop !49

vec.epilog.middle.block602:                       ; preds = %vec.epilog.vector.body596
  br i1 %cmp.n603, label %.loopexit684, label %vec.epilog.scalar.ph590.preheader

vec.epilog.scalar.ph590.preheader:                ; preds = %iter.check589, %vec.epilog.iter.check591, %vec.epilog.middle.block602
  %.3269.ph = phi ptr [ %.lcssa536, %iter.check589 ], [ %i.kb, %vec.epilog.iter.check591 ], [ %i.kf, %vec.epilog.middle.block602 ] ; 2 uses
  %.2257.ph = phi i32 [ %i.z, %iter.check589 ], [ %i.bk, %vec.epilog.iter.check591 ], [ %i.bn, %vec.epilog.middle.block602 ] ; 4 uses
  %.2.ph = phi ptr [ %i.ab, %iter.check589 ], [ %i.bl, %vec.epilog.iter.check591 ], [ %i.bo, %vec.epilog.middle.block602 ] ; 2 uses
  %i.kh = add i32 %.2257.ph, -1
  %xtraiter735 = and i32 %.2257.ph, 7             ; 2 uses
  %lcmp.mod736.not = icmp eq i32 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol

vec.epilog.scalar.ph590.prol:                     ; preds = %vec.epilog.scalar.ph590.preheader, %vec.epilog.scalar.ph590.prol
  %.3269.prol = phi ptr [ %i.kk, %vec.epilog.scalar.ph590.prol ], [ %.3269.ph, %vec.epilog.scalar.ph590.preheader ] ; 2 uses
  %.2257.prol = phi i32 [ %i.kl, %vec.epilog.scalar.ph590.prol ], [ %.2257.ph, %vec.epilog.scalar.ph590.preheader ]
  %.2.prol = phi ptr [ %i.ki, %vec.epilog.scalar.ph590.prol ], [ %.2.ph, %vec.epilog.scalar.ph590.preheader ] ; 2 uses
  %prol.iter737 = phi i32 [ %prol.iter737.next, %vec.epilog.scalar.ph590.prol ], [ 0, %vec.epilog.scalar.ph590.preheader ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.2.prol, i64 1 ; 2 uses
  %i.kj = load i8, ptr %.2.prol, align 1, !tbaa !31
  %i.kk = getelementptr inbounds nuw i8, ptr %.3269.prol, i64 1 ; 3 uses
  store i8 %i.kj, ptr %.3269.prol, align 1, !tbaa !31
  %i.kl = add i32 %.2257.prol, -1                 ; 2 uses
  %prol.iter737.next = add i32 %prol.iter737, 1   ; 2 uses
  %prol.iter737.cmp.not = icmp eq i32 %prol.iter737.next, %xtraiter735
  br i1 %prol.iter737.cmp.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol, !llvm.loop !50

vec.epilog.scalar.ph590.prol.loopexit:            ; preds = %vec.epilog.scalar.ph590.prol, %vec.epilog.scalar.ph590.preheader
  %.lcssa716.unr = phi ptr [ poison, %vec.epilog.scalar.ph590.preheader ], [ %i.kk, %vec.epilog.scalar.ph590.prol ]
  %.3269.unr = phi ptr [ %.3269.ph, %vec.epilog.scalar.ph590.preheader ], [ %i.kk, %vec.epilog.scalar.ph590.prol ]
  %.2257.unr = phi i32 [ %.2257.ph, %vec.epilog.scalar.ph590.preheader ], [ %i.kl, %vec.epilog.scalar.ph590.prol ]
  %.2.unr = phi ptr [ %.2.ph, %vec.epilog.scalar.ph590.preheader ], [ %i.ki, %vec.epilog.scalar.ph590.prol ]
  %i.km = icmp ult i32 %i.kh, 7
  br i1 %i.km, label %.loopexit684, label %vec.epilog.scalar.ph590

vec.epilog.scalar.ph590:                          ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590
  %.3269 = phi ptr [ %i.lk, %vec.epilog.scalar.ph590 ], [ %.3269.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 9 uses
  %.2257 = phi i32 [ %i.ll, %vec.epilog.scalar.ph590 ], [ %.2257.unr, %vec.epilog.scalar.ph590.prol.loopexit ]
  %.2 = phi ptr [ %i.li, %vec.epilog.scalar.ph590 ], [ %.2.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 9 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.ko = load i8, ptr %.2, align 1, !tbaa !31
  %i.kp = getelementptr inbounds nuw i8, ptr %.3269, i64 1
  store i8 %i.ko, ptr %.3269, align 1, !tbaa !31
  %i.kq = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.kr = load i8, ptr %i.kn, align 1, !tbaa !31
  %i.ks = getelementptr inbounds nuw i8, ptr %.3269, i64 2
  store i8 %i.kr, ptr %i.kp, align 1, !tbaa !31
  %i.kt = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.ku = load i8, ptr %i.kq, align 1, !tbaa !31
  %i.kv = getelementptr inbounds nuw i8, ptr %.3269, i64 3
  store i8 %i.ku, ptr %i.ks, align 1, !tbaa !31
  %i.kw = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !31
  %i.ky = getelementptr inbounds nuw i8, ptr %.3269, i64 4
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !31
  %i.kz = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.la = load i8, ptr %i.kw, align 1, !tbaa !31
  %i.lb = getelementptr inbounds nuw i8, ptr %.3269, i64 5
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !31
  %i.lc = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %i.ld = load i8, ptr %i.kz, align 1, !tbaa !31
  %i.le = getelementptr inbounds nuw i8, ptr %.3269, i64 6
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !31
  %i.lf = getelementptr inbounds nuw i8, ptr %.2, i64 7
  %i.lg = load i8, ptr %i.lc, align 1, !tbaa !31
  %i.lh = getelementptr inbounds nuw i8, ptr %.3269, i64 7
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !31
  %i.li = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.lj = load i8, ptr %i.lf, align 1, !tbaa !31
  %i.lk = getelementptr inbounds nuw i8, ptr %.3269, i64 8 ; 2 uses
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !31
  %i.ll = add i32 %.2257, -8                      ; 2 uses
  %.not335.7 = icmp eq i32 %i.ll, 0
  br i1 %.not335.7, label %.loopexit684, label %vec.epilog.scalar.ph590, !llvm.loop !51

.loopexit684:                                     ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590, %vec.epilog.middle.block602, %middle.block584
  %.lcssa537 = phi ptr [ %i.kf, %vec.epilog.middle.block602 ], [ %i.kb, %middle.block584 ], [ %.lcssa716.unr, %vec.epilog.scalar.ph590.prol.loopexit ], [ %i.lk, %vec.epilog.scalar.ph590 ] ; 2 uses
  %i.lm = sub nuw nsw i32 %i.jx, %i.z
  %i.ln = zext nneg i32 %i.fa to i64
  %i.lo = sub nsw i64 0, %i.ln
  %i.lp = getelementptr inbounds i8, ptr %.lcssa537, i64 %i.lo
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.lq = sub nuw i32 %i.z, %i.fi
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.lr ; 7 uses
  %i.lt = icmp ult i32 %i.fi, %.0251
  br i1 %i.lt, label %iter.check665, label %bb.v

iter.check665:                                    ; preds = %bb.u
  %i.lu = add i32 %i.bi, %i.ez
  %i.lv = add i32 %i.lu, %i.ef
  %i.lw = trunc i64 %i.fe to i32
  %i.lx = sub i32 %i.lv, %i.lw                    ; 3 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 5 uses
  %min.iters.check647 = icmp ult i32 %i.lx, 3
  br i1 %min.iters.check647, label %vec.epilog.scalar.ph666.preheader, label %vector.memcheck645

vector.memcheck645:                               ; preds = %iter.check665
  %i.ma = add i64 %i.ac, %i.lr
  %i.mb = sub i64 %i.ma, %i.fe
  %diff.check646 = icmp ugt i64 %i.mb, -32
  br i1 %diff.check646, label %vec.epilog.scalar.ph666.preheader, label %vector.main.loop.iter.check648

vector.main.loop.iter.check648:                   ; preds = %vector.memcheck645
  %min.iters.check649 = icmp ult i32 %i.lx, 31
  br i1 %min.iters.check649, label %vec.epilog.ph669, label %vector.ph650

vector.ph650:                                     ; preds = %vector.main.loop.iter.check648
  %n.mod.vf651 = and i64 %i.lz, 28
  %n.vec652 = and i64 %i.lz, 8589934560           ; 6 uses
  %i.mc = getelementptr i8, ptr %.0266, i64 %n.vec652 ; 2 uses
  %i.md = trunc i64 %n.vec652 to i32
  %i.me = sub i32 %i.fi, %i.md
  %i.mf = getelementptr i8, ptr %i.ls, i64 %n.vec652
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph650
  %index654 = phi i64 [ 0, %vector.ph650 ], [ %index.next659, %vector.body653 ] ; 3 uses
  %next.gep655 = getelementptr i8, ptr %.0266, i64 %index654 ; 2 uses
  %next.gep656 = getelementptr i8, ptr %i.ls, i64 %index654 ; 2 uses
  %i.mg = getelementptr i8, ptr %next.gep656, i64 16
  %wide.load657 = load <16 x i8>, ptr %next.gep656, align 1, !tbaa !31
  %wide.load658 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !31
  %i.mh = getelementptr i8, ptr %next.gep655, i64 16
  store <16 x i8> %wide.load657, ptr %next.gep655, align 1, !tbaa !31
  store <16 x i8> %wide.load658, ptr %i.mh, align 1, !tbaa !31
  %index.next659 = add nuw i64 %index654, 32      ; 2 uses
  %i.mi = icmp eq i64 %index.next659, %n.vec652
  br i1 %i.mi, label %middle.block660, label %vector.body653, !llvm.loop !52

middle.block660:                                  ; preds = %vector.body653
  %cmp.n661 = icmp eq i64 %i.lz, %n.vec652
  br i1 %cmp.n661, label %.loopexit686, label %vec.epilog.iter.check667

vec.epilog.iter.check667:                         ; preds = %middle.block660
  %min.epilog.iters.check668 = icmp eq i64 %n.mod.vf651, 0
  br i1 %min.epilog.iters.check668, label %vec.epilog.scalar.ph666.preheader, label %vec.epilog.ph669, !prof !39

vec.epilog.ph669:                                 ; preds = %vector.main.loop.iter.check648, %vec.epilog.iter.check667
  %vec.epilog.resume.val662 = phi i64 [ %n.vec652, %vec.epilog.iter.check667 ], [ 0, %vector.main.loop.iter.check648 ]
  %n.vec671 = and i64 %i.lz, 8589934588           ; 5 uses
  %i.mj = getelementptr i8, ptr %.0266, i64 %n.vec671 ; 2 uses
  %i.mk = trunc i64 %n.vec671 to i32
  %i.ml = sub i32 %i.fi, %i.mk
  %i.mm = getelementptr i8, ptr %i.ls, i64 %n.vec671
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph669
  %index673 = phi i64 [ %vec.epilog.resume.val662, %vec.epilog.ph669 ], [ %index.next677, %vec.epilog.vector.body672 ] ; 3 uses
  %next.gep674 = getelementptr i8, ptr %.0266, i64 %index673
  %next.gep675 = getelementptr i8, ptr %i.ls, i64 %index673
  %wide.load676 = load <4 x i8>, ptr %next.gep675, align 1, !tbaa !31
  store <4 x i8> %wide.load676, ptr %next.gep674, align 1, !tbaa !31
  %index.next677 = add nuw i64 %index673, 4       ; 2 uses
  %i.mn = icmp eq i64 %index.next677, %n.vec671
  br i1 %i.mn, label %vec.epilog.middle.block678, label %vec.epilog.vector.body672, !llvm.loop !53

vec.epilog.middle.block678:                       ; preds = %vec.epilog.vector.body672
  %cmp.n679 = icmp eq i64 %i.lz, %n.vec671
  br i1 %cmp.n679, label %.loopexit686, label %vec.epilog.scalar.ph666.preheader

vec.epilog.scalar.ph666.preheader:                ; preds = %vector.memcheck645, %iter.check665, %vec.epilog.iter.check667, %vec.epilog.middle.block678
  %.4270.ph = phi ptr [ %.0266, %iter.check665 ], [ %.0266, %vector.memcheck645 ], [ %i.mc, %vec.epilog.iter.check667 ], [ %i.mj, %vec.epilog.middle.block678 ] ; 2 uses
  %.3258.ph = phi i32 [ %i.fi, %iter.check665 ], [ %i.fi, %vector.memcheck645 ], [ %i.me, %vec.epilog.iter.check667 ], [ %i.ml, %vec.epilog.middle.block678 ] ; 4 uses
  %.3.ph = phi ptr [ %i.ls, %iter.check665 ], [ %i.ls, %vector.memcheck645 ], [ %i.mf, %vec.epilog.iter.check667 ], [ %i.mm, %vec.epilog.middle.block678 ] ; 2 uses
  %i.mo = add i32 %.3258.ph, -1
  %xtraiter = and i32 %.3258.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph666.prol.loopexit, label %vec.epilog.scalar.ph666.prol

vec.epilog.scalar.ph666.prol:                     ; preds = %vec.epilog.scalar.ph666.preheader, %vec.epilog.scalar.ph666.prol
  %.4270.prol = phi ptr [ %i.mr, %vec.epilog.scalar.ph666.prol ], [ %.4270.ph, %vec.epilog.scalar.ph666.preheader ] ; 2 uses
  %.3258.prol = phi i32 [ %i.ms, %vec.epilog.scalar.ph666.prol ], [ %.3258.ph, %vec.epilog.scalar.ph666.preheader ]
  %.3.prol = phi ptr [ %i.mp, %vec.epilog.scalar.ph666.prol ], [ %.3.ph, %vec.epilog.scalar.ph666.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph666.prol ], [ 0, %vec.epilog.scalar.ph666.preheader ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.3.prol, i64 1 ; 2 uses
  %i.mq = load i8, ptr %.3.prol, align 1, !tbaa !31
  %i.mr = getelementptr inbounds nuw i8, ptr %.4270.prol, i64 1 ; 3 uses
  store i8 %i.mq, ptr %.4270.prol, align 1, !tbaa !31
  %i.ms = add i32 %.3258.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph666.prol.loopexit, label %vec.epilog.scalar.ph666.prol, !llvm.loop !54

vec.epilog.scalar.ph666.prol.loopexit:            ; preds = %vec.epilog.scalar.ph666.prol, %vec.epilog.scalar.ph666.preheader
  %.lcssa714.unr = phi ptr [ poison, %vec.epilog.scalar.ph666.preheader ], [ %i.mr, %vec.epilog.scalar.ph666.prol ]
  %.4270.unr = phi ptr [ %.4270.ph, %vec.epilog.scalar.ph666.preheader ], [ %i.mr, %vec.epilog.scalar.ph666.prol ]
  %.3258.unr = phi i32 [ %.3258.ph, %vec.epilog.scalar.ph666.preheader ], [ %i.ms, %vec.epilog.scalar.ph666.prol ]
  %.3.unr = phi ptr [ %.3.ph, %vec.epilog.scalar.ph666.preheader ], [ %i.mp, %vec.epilog.scalar.ph666.prol ]
  %i.mt = icmp ult i32 %i.mo, 7
  br i1 %i.mt, label %.loopexit686, label %vec.epilog.scalar.ph666

vec.epilog.scalar.ph666:                          ; preds = %vec.epilog.scalar.ph666.prol.loopexit, %vec.epilog.scalar.ph666
  %.4270 = phi ptr [ %i.nr, %vec.epilog.scalar.ph666 ], [ %.4270.unr, %vec.epilog.scalar.ph666.prol.loopexit ] ; 9 uses
  %.3258 = phi i32 [ %i.ns, %vec.epilog.scalar.ph666 ], [ %.3258.unr, %vec.epilog.scalar.ph666.prol.loopexit ]
  %.3 = phi ptr [ %i.np, %vec.epilog.scalar.ph666 ], [ %.3.unr, %vec.epilog.scalar.ph666.prol.loopexit ] ; 9 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.mv = load i8, ptr %.3, align 1, !tbaa !31
  %i.mw = getelementptr inbounds nuw i8, ptr %.4270, i64 1
  store i8 %i.mv, ptr %.4270, align 1, !tbaa !31
  %i.mx = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.my = load i8, ptr %i.mu, align 1, !tbaa !31
  %i.mz = getelementptr inbounds nuw i8, ptr %.4270, i64 2
  store i8 %i.my, ptr %i.mw, align 1, !tbaa !31
  %i.na = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !31
  %i.nc = getelementptr inbounds nuw i8, ptr %.4270, i64 3
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !31
  %i.nd = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !31
  %i.nf = getelementptr inbounds nuw i8, ptr %.4270, i64 4
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !31
  %i.ng = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !31
  %i.ni = getelementptr inbounds nuw i8, ptr %.4270, i64 5
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !31
  %i.nj = getelementptr inbounds nuw i8, ptr %.3, i64 6
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !31
  %i.nl = getelementptr inbounds nuw i8, ptr %.4270, i64 6
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !31
  %i.nm = getelementptr inbounds nuw i8, ptr %.3, i64 7
  %i.nn = load i8, ptr %i.nj, align 1, !tbaa !31
  %i.no = getelementptr inbounds nuw i8, ptr %.4270, i64 7
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !31
  %i.np = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.nq = load i8, ptr %i.nm, align 1, !tbaa !31
  %i.nr = getelementptr inbounds nuw i8, ptr %.4270, i64 8 ; 2 uses
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !31
  %i.ns = add i32 %.3258, -8                      ; 2 uses
  %.not333.7 = icmp eq i32 %i.ns, 0
  br i1 %.not333.7, label %.loopexit686, label %vec.epilog.scalar.ph666, !llvm.loop !55

.loopexit686:                                     ; preds = %vec.epilog.scalar.ph666.prol.loopexit, %vec.epilog.scalar.ph666, %vec.epilog.middle.block678, %middle.block660
  %.lcssa535 = phi ptr [ %i.mj, %vec.epilog.middle.block678 ], [ %i.mc, %middle.block660 ], [ %.lcssa714.unr, %vec.epilog.scalar.ph666.prol.loopexit ], [ %i.nr, %vec.epilog.scalar.ph666 ] ; 2 uses
  %i.nt = sub nuw nsw i32 %.0251, %i.fi
  %i.nu = zext nneg i32 %i.fa to i64
  %i.nv = sub nsw i64 0, %i.nu
  %i.nw = getelementptr inbounds i8, ptr %.lcssa535, i64 %i.nv
  br label %bb.v

bb.v:                                             ; preds = %.loopexit685, %.loopexit684, %bb.t, %.loopexit686, %bb.u, %bb.r, %.loopexit683
  %.5271 = phi ptr [ %.lcssa538, %.loopexit683 ], [ %.0266, %bb.r ], [ %.lcssa537, %.loopexit684 ], [ %.lcssa536, %.loopexit685 ], [ %.0266, %bb.t ], [ %.lcssa535, %.loopexit686 ], [ %.0266, %bb.u ] ; 6 uses
  %.1252 = phi i32 [ %i.ho, %.loopexit683 ], [ %.0251, %bb.r ], [ %i.lm, %.loopexit684 ], [ %i.jx, %.loopexit685 ], [ %.0251, %bb.t ], [ %i.nt, %.loopexit686 ], [ %.0251, %bb.u ] ; 5 uses
  %.4 = phi ptr [ %i.hr, %.loopexit683 ], [ %i.fn, %bb.r ], [ %i.lp, %.loopexit684 ], [ %i.ab, %.loopexit685 ], [ %i.hv, %bb.t ], [ %i.nw, %.loopexit686 ], [ %i.ls, %bb.u ] ; 6 uses
  %i.nx = icmp ugt i32 %.1252, 2
  br i1 %i.nx, label %.lr.ph399.preheader, label %._crit_edge400

.lr.ph399.preheader:                              ; preds = %bb.v
  %i.ny = add i32 %.1252, -3                      ; 2 uses
  %i.nz = udiv i32 %i.ny, 3
  %i.oa = and i32 %i.nz, 1
  %lcmp.mod742.not.not = icmp eq i32 %i.oa, 0
  br i1 %lcmp.mod742.not.not, label %.lr.ph399.prol, label %.lr.ph399.prol.loopexit

.lr.ph399.prol:                                   ; preds = %.lr.ph399.preheader
  %i.ob = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.oc = load i8, ptr %.4, align 1, !tbaa !31
  %i.od = getelementptr inbounds nuw i8, ptr %.5271, i64 1
  store i8 %i.oc, ptr %.5271, align 1, !tbaa !31
  %i.oe = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %i.of = load i8, ptr %i.ob, align 1, !tbaa !31
  %i.og = getelementptr inbounds nuw i8, ptr %.5271, i64 2
  store i8 %i.of, ptr %i.od, align 1, !tbaa !31
  %i.oh = getelementptr inbounds nuw i8, ptr %.4, i64 3 ; 2 uses
  %i.oi = load i8, ptr %i.oe, align 1, !tbaa !31
  %i.oj = getelementptr inbounds nuw i8, ptr %.5271, i64 3 ; 2 uses
  store i8 %i.oi, ptr %i.og, align 1, !tbaa !31
  %i.ok = add i32 %.1252, -3                      ; 2 uses
  br label %.lr.ph399.prol.loopexit

.lr.ph399.prol.loopexit:                          ; preds = %.lr.ph399.prol, %.lr.ph399.preheader
  %.5397.unr = phi ptr [ %.4, %.lr.ph399.preheader ], [ %i.oh, %.lr.ph399.prol ]
  %.2253396.unr = phi i32 [ %.1252, %.lr.ph399.preheader ], [ %i.ok, %.lr.ph399.prol ]
  %.6272395.unr = phi ptr [ %.5271, %.lr.ph399.preheader ], [ %i.oj, %.lr.ph399.prol ]
  %.lcssa720.unr = phi ptr [ poison, %.lr.ph399.preheader ], [ %i.oh, %.lr.ph399.prol ]
  %.lcssa719.unr = phi ptr [ poison, %.lr.ph399.preheader ], [ %i.oj, %.lr.ph399.prol ]
  %.lcssa718.unr = phi i32 [ poison, %.lr.ph399.preheader ], [ %i.ok, %.lr.ph399.prol ]
  %i.ol = icmp ult i32 %i.ny, 3
  br i1 %i.ol, label %._crit_edge400, label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399.prol.loopexit, %.lr.ph399
  %.5397 = phi ptr [ %i.pb, %.lr.ph399 ], [ %.5397.unr, %.lr.ph399.prol.loopexit ] ; 7 uses
  %.2253396 = phi i32 [ %i.pe, %.lr.ph399 ], [ %.2253396.unr, %.lr.ph399.prol.loopexit ]
  %.6272395 = phi ptr [ %i.pd, %.lr.ph399 ], [ %.6272395.unr, %.lr.ph399.prol.loopexit ] ; 7 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.5397, i64 1
  %i.on = load i8, ptr %.5397, align 1, !tbaa !31
  %i.oo = getelementptr inbounds nuw i8, ptr %.6272395, i64 1
  store i8 %i.on, ptr %.6272395, align 1, !tbaa !31
  %i.op = getelementptr inbounds nuw i8, ptr %.5397, i64 2
  %i.oq = load i8, ptr %i.om, align 1, !tbaa !31
  %i.or = getelementptr inbounds nuw i8, ptr %.6272395, i64 2
  store i8 %i.oq, ptr %i.oo, align 1, !tbaa !31
  %i.os = getelementptr inbounds nuw i8, ptr %.5397, i64 3
  %i.ot = load i8, ptr %i.op, align 1, !tbaa !31
  %i.ou = getelementptr inbounds nuw i8, ptr %.6272395, i64 3
  store i8 %i.ot, ptr %i.or, align 1, !tbaa !31
  %i.ov = getelementptr inbounds nuw i8, ptr %.5397, i64 4
  %i.ow = load i8, ptr %i.os, align 1, !tbaa !31
  %i.ox = getelementptr inbounds nuw i8, ptr %.6272395, i64 4
end_hunk_0
