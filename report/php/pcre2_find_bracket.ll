Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_find_bracket?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_pcre2_OP_lengths_8 = external local_unnamed_addr constant [0 x i8], align 1
@_pcre2_utf8_table4 = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef ptr @_pcre2_find_bracket_8(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.not = icmp eq i32 %1, 0
  %i.a = icmp slt i32 %2, 0                       ; 2 uses
  br i1 %.not.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.a, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %.split.us.split.us.backedge
  %.058.us.us = phi ptr [ %.058.us.us.be, %.split.us.split.us.backedge ], [ %0, %.split.us ] ; 14 uses
  %i.b = load i8, ptr %.058.us.us, align 1, !tbaa !12 ; 6 uses
  switch i8 %i.b, label %bb.d [
    i8 0, label %.split86.us
    i8 112, label %bb.c
    i8 119, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us.split.us
  %i.c = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 5
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 6
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  br label %.split.us.split.us.backedge

bb.c:                                             ; preds = %.split.us.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  br label %.split.us.split.us.backedge

bb.d:                                             ; preds = %.split.us.split.us
  %i.u = add i8 %i.b, -125
  %or.cond.us.us = icmp ult i8 %i.u, 2
  br i1 %or.cond.us.us, label %.split86.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.b, label %bb.j [
    i8 -113, label %bb.i
    i8 -114, label %bb.i
    i8 -118, label %bb.i
    i8 -119, label %bb.i
    i8 85, label %bb.h
    i8 86, label %bb.h
    i8 87, label %bb.h
    i8 88, label %bb.h
    i8 89, label %bb.h
    i8 90, label %bb.h
    i8 94, label %bb.h
    i8 95, label %bb.h
    i8 96, label %bb.h
    i8 91, label %bb.g
    i8 92, label %bb.g
    i8 93, label %bb.g
    i8 97, label %bb.g
    i8 -102, label %bb.f
    i8 -94, label %bb.f
    i8 -100, label %bb.f
    i8 -98, label %bb.f
    i8 -96, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i64
  br label %.thread.us.us

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %.off71.us.us = add i8 %i.z, -15
  %switch72.us.us = icmp ult i8 %.off71.us.us, 2
  %spec.select73.idx.us.us = select i1 %switch72.us.us, i64 2, i64 0
  br label %.thread.us.us

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  %.off68.us.us = add i8 %i.ab, -15
  %switch69.us.us = icmp ult i8 %.off68.us.us, 2
  %spec.select70.idx.us.us = select i1 %switch69.us.us, i64 2, i64 0
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.h, %bb.g, %bb.f
  %spec.select70.idx.us.us.sink = phi i64 [ %spec.select70.idx.us.us, %bb.h ], [ %spec.select73.idx.us.us, %bb.g ], [ %i.x, %bb.f ]
  %spec.select70.us.us = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 %spec.select70.idx.us.us.sink
  %i.ac = zext i8 %i.b to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select70.us.us, i64 %i.af
  br label %.split.us.split.us.backedge

bb.i:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ah = zext i8 %i.b to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 %i.ak
  br label %.split.us.split.us.backedge

bb.j:                                             ; preds = %bb.e
  %i.am = zext i8 %i.b to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.us.us, i64 %i.ap
  br label %.split.us.split.us.backedge

.split.us.split.us.backedge:                      ; preds = %bb.j, %bb.i, %.thread.us.us, %bb.c, %bb.b
  %.058.us.us.be = phi ptr [ %i.k, %bb.b ], [ %i.aq, %bb.j ], [ %i.al, %bb.i ], [ %i.ag, %.thread.us.us ], [ %i.t, %bb.c ]
  br label %.split.us.split.us

.split.us.split:                                  ; preds = %.split.us, %.split.us.split.backedge
  %.058.us = phi ptr [ %.058.us.be, %.split.us.split.backedge ], [ %0, %.split.us ] ; 16 uses
  %i.ar = load i8, ptr %.058.us, align 1, !tbaa !12 ; 7 uses
  switch i8 %i.ar, label %bb.m [
    i8 0, label %.split86.us
    i8 112, label %bb.l
    i8 119, label %bb.k
  ]

bb.k:                                             ; preds = %.split.us.split
  %i.as = getelementptr inbounds nuw i8, ptr %.058.us, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !12
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.058.us, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.058.us, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  br label %.split.us.split.backedge

bb.l:                                             ; preds = %.split.us.split
  %i.bb = getelementptr inbounds nuw i8, ptr %.058.us, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.058.us, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.058.us, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  br label %.split.us.split.backedge

bb.m:                                             ; preds = %.split.us.split
  %i.bk = add i8 %i.ar, -125
  %or.cond.us = icmp ult i8 %i.bk, 2
  br i1 %or.cond.us, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.ar, label %bb.t [
    i8 -113, label %bb.r
    i8 -114, label %bb.r
    i8 -118, label %bb.r
    i8 -119, label %bb.r
    i8 85, label %bb.q
    i8 86, label %bb.q
    i8 87, label %bb.q
    i8 88, label %bb.q
    i8 89, label %bb.q
    i8 90, label %bb.q
    i8 94, label %bb.q
    i8 95, label %bb.q
    i8 96, label %bb.q
    i8 91, label %bb.p
    i8 92, label %bb.p
    i8 93, label %bb.p
    i8 97, label %bb.p
    i8 -102, label %bb.o
    i8 -94, label %bb.o
    i8 -100, label %bb.o
    i8 -98, label %bb.o
    i8 -96, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.058.us, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.bn = zext i8 %i.bm to i64
  br label %.thread.us

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.058.us, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !12
  %.off71.us = add i8 %i.bp, -15
  %switch72.us = icmp ult i8 %.off71.us, 2
  %spec.select73.idx.us = select i1 %switch72.us, i64 2, i64 0
  br label %.thread.us

bb.q:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.058.us, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12
  %.off68.us = add i8 %i.br, -15
  %switch69.us = icmp ult i8 %.off68.us, 2
  %spec.select70.idx.us = select i1 %switch69.us, i64 2, i64 0
  br label %.thread.us

.thread.us:                                       ; preds = %bb.q, %bb.p, %bb.o
  %spec.select70.idx.us.sink = phi i64 [ %spec.select70.idx.us, %bb.q ], [ %spec.select73.idx.us, %bb.p ], [ %i.bn, %bb.o ]
  %spec.select70.us = getelementptr inbounds nuw i8, ptr %.058.us, i64 %spec.select70.idx.us.sink
  %i.bs = zext i8 %i.ar to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !12
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select70.us, i64 %i.bv
  br label %.split.us.split.backedge

bb.r:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.058.us, i64 3
  %3 = load i16, ptr %i.bx, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.by = zext i16 %4 to i32
  %.not66.us = icmp eq i32 %2, %i.by
  br i1 %.not66.us, label %.split86.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = zext i8 %i.ar to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !12
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.058.us, i64 %i.cc
  br label %.split.us.split.backedge

bb.t:                                             ; preds = %bb.n
  %i.ce = zext i8 %i.ar to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !12
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.058.us, i64 %i.ch
  br label %.split.us.split.backedge

.split.us.split.backedge:                         ; preds = %bb.t, %bb.u, %bb.s, %.thread.us, %bb.l, %bb.k
  %.058.us.be = phi ptr [ %i.cn, %bb.u ], [ %i.ci, %bb.t ], [ %i.cd, %bb.s ], [ %i.bw, %.thread.us ], [ %i.bj, %bb.l ], [ %i.ba, %bb.k ]
  br label %.split.us.split

bb.u:                                             ; preds = %bb.m
  %i.cj = zext nneg i8 %i.ar to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !12
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.058.us, i64 %i.cm
  br label %.split.us.split.backedge

.split:                                           ; preds = %bb.a, %.split.backedge
  %.058 = phi ptr [ %.058.be, %.split.backedge ], [ %0, %bb.a ] ; 17 uses
  %i.co = load i8, ptr %.058, align 1, !tbaa !12  ; 8 uses
  switch i8 %i.co, label %bb.x [
    i8 0, label %.split86.us
    i8 112, label %bb.v
    i8 119, label %bb.w
  ]

bb.v:                                             ; preds = %.split
  %i.cp = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !12
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.058, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !12
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.058, i64 %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  br label %.split.backedge

bb.w:                                             ; preds = %.split
  %i.cy = getelementptr inbounds nuw i8, ptr %.058, i64 5
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !12
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.058, i64 6
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !12
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.058, i64 %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  br label %.split.backedge

bb.x:                                             ; preds = %.split
  %i.dh = add i8 %i.co, -125
  %or.cond = icmp ult i8 %i.dh, 2
  br i1 %or.cond, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %i.a, label %.split86.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = zext nneg i8 %i.co to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.058, i64 %i.dl
  br label %.split.backedge

bb.aa:                                            ; preds = %bb.x
  switch i8 %i.co, label %bb.ag [
    i8 -113, label %bb.ab
    i8 -114, label %bb.ab
    i8 -118, label %bb.ab
    i8 -119, label %bb.ab
    i8 85, label %bb.ad
    i8 86, label %bb.ad
    i8 87, label %bb.ad
    i8 88, label %bb.ad
    i8 89, label %bb.ad
    i8 90, label %bb.ad
    i8 94, label %bb.ad
    i8 95, label %bb.ad
    i8 96, label %bb.ad
    i8 91, label %bb.ae
    i8 92, label %bb.ae
    i8 93, label %bb.ae
    i8 97, label %bb.ae
    i8 -102, label %bb.af
    i8 -94, label %bb.af
    i8 -100, label %bb.af
    i8 -98, label %bb.af
    i8 -96, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %.058, i64 3
  %5 = load i16, ptr %i.dn, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.do = zext i16 %6 to i32
  %.not66 = icmp eq i32 %2, %i.do
  br i1 %.not66, label %.split86.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = zext i8 %i.co to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.058, i64 %i.ds
  br label %.split.backedge

bb.ad:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !12
  %.off68 = add i8 %i.dv, -15
  %switch69 = icmp ult i8 %.off68, 2
  %spec.select70.idx = select i1 %switch69, i64 2, i64 0
  br label %.thread

bb.ae:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %.058, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !12
  %.off71 = add i8 %i.dx, -15
  %switch72 = icmp ult i8 %.off71, 2
  %spec.select73.idx = select i1 %switch72, i64 2, i64 0
  br label %.thread

bb.af:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !12
  %i.ea = zext i8 %i.dz to i64
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ad, %bb.af
  %spec.select73.idx.sink = phi i64 [ %spec.select73.idx, %bb.ae ], [ %spec.select70.idx, %bb.ad ], [ %i.ea, %bb.af ]
  %spec.select73 = getelementptr inbounds nuw i8, ptr %.058, i64 %spec.select73.idx.sink
  %i.eb = zext i8 %i.co to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %spec.select73, i64 %i.ee
  br label %.split.backedge

.split.backedge:                                  ; preds = %.thread, %bb.ac, %bb.v, %bb.z, %bb.ag, %bb.ah, %bb.ai, %bb.w
  %.058.be = phi ptr [ %i.et, %bb.ai ], [ %i.ek, %bb.ah ], [ %i.dt, %bb.ac ], [ %i.ef, %.thread ], [ %i.cx, %bb.v ], [ %i.dg, %bb.w ], [ %i.dm, %bb.z ], [ %i.ek, %bb.ag ]
  br label %.split

bb.ag:                                            ; preds = %bb.aa
  %i.eg = zext i8 %i.co to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !12
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.058, i64 %i.ej ; 4 uses
  %.off = add i8 %i.co, -29
  %switch = icmp ult i8 %.off, 56
  br i1 %switch, label %bb.ah, label %.split.backedge

bb.ah:                                            ; preds = %bb.ag
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !12  ; 2 uses
  %i.en = icmp ugt i8 %i.em, -65
  br i1 %i.en, label %bb.ai, label %.split.backedge

bb.ai:                                            ; preds = %bb.ah
  %i.eo = and i8 %i.em, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @_pcre2_utf8_table4, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !12
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.es
  br label %.split.backedge

.split86.us:                                      ; preds = %bb.ab, %.split, %bb.y, %bb.r, %.split.us.split, %.split.us.split.us, %bb.d
  %.us-phi = phi ptr [ null, %.split.us.split.us ], [ null, %.split.us.split ], [ %.058.us.us, %bb.d ], [ %.058.us, %bb.r ], [ null, %.split ], [ %.058, %bb.y ], [ %.058, %bb.ab ]
  ret ptr %.us-phi
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
end_hunk_0
