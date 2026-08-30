Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/histogram?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_kBrotliContextLookupTable = external local_unnamed_addr constant [2048 x i8], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @BrotliBuildHistogramsWithContext(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr nofree noundef readonly captures(address_is_null) %10, ptr nofree noundef captures(none) %11, ptr nofree noundef captures(none) %12, ptr nofree noundef captures(none) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %InitBlockSplitIterator.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = zext i32 %i.c to i64
  br label %InitBlockSplitIterator.exit

InitBlockSplitIterator.exit:                      ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %.not.i56 = icmp eq ptr %i.g, null
  br i1 %.not.i56, label %InitBlockSplitIterator.exit57, label %bb.c

bb.c:                                             ; preds = %InitBlockSplitIterator.exit
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = zext i32 %i.h to i64
  br label %InitBlockSplitIterator.exit57

InitBlockSplitIterator.exit57:                    ; preds = %InitBlockSplitIterator.exit, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %InitBlockSplitIterator.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  %.not.i58 = icmp eq ptr %i.l, null
  br i1 %.not.i58, label %InitBlockSplitIterator.exit59, label %bb.d

bb.d:                                             ; preds = %InitBlockSplitIterator.exit57
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = zext i32 %i.m to i64
  br label %InitBlockSplitIterator.exit59

InitBlockSplitIterator.exit59:                    ; preds = %InitBlockSplitIterator.exit57, %bb.d
  %i.o = phi i64 [ %i.n, %bb.d ], [ 0, %InitBlockSplitIterator.exit57 ]
  %.not103 = icmp eq i64 %1, 0
  br i1 %.not103, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %InitBlockSplitIterator.exit59
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not55 = icmp eq ptr %10, null
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph101, %bb.l
  %.0100 = phi i8 [ %8, %.lr.ph101 ], [ %.2, %bb.l ] ; 3 uses
  %.04599 = phi i8 [ %9, %.lr.ph101 ], [ %.247, %bb.l ] ; 2 uses
  %.05098 = phi i64 [ %6, %.lr.ph101 ], [ %i.dh, %bb.l ] ; 3 uses
  %.05297 = phi i64 [ 0, %.lr.ph101 ], [ %i.ex, %bb.l ] ; 2 uses
  %.sroa.467.096 = phi i64 [ 0, %.lr.ph101 ], [ %.sroa.467.1.lcssa, %bb.l ] ; 3 uses
  %.sroa.7.095 = phi i64 [ 0, %.lr.ph101 ], [ %.sroa.7.1, %bb.l ] ; 3 uses
  %.sroa.9.094 = phi i64 [ %i.o, %.lr.ph101 ], [ %.sroa.9.1, %bb.l ] ; 4 uses
  %.sroa.4.093 = phi i64 [ 0, %.lr.ph101 ], [ %.sroa.4.1, %bb.l ] ; 4 uses
  %.sroa.969.092 = phi i64 [ %i.e, %.lr.ph101 ], [ %.sroa.969.1.lcssa, %bb.l ] ; 3 uses
  %.sroa.764.091 = phi i64 [ 0, %.lr.ph101 ], [ %.sroa.764.1, %bb.l ]
  %.sroa.965.090 = phi i64 [ %i.j, %.lr.ph101 ], [ %i.ad, %bb.l ] ; 2 uses
  %.sroa.463.089 = phi i64 [ 0, %.lr.ph101 ], [ %.sroa.463.1, %bb.l ] ; 2 uses
  %.sroa.768.088 = phi i64 [ 0, %.lr.ph101 ], [ %.sroa.768.1.lcssa.a, %bb.l ] ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.05297 ; 4 uses
  %i.t = icmp eq i64 %.sroa.965.090, 0
  br i1 %i.t, label %bb.f, label %BlockSplitIteratorNext.exit

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %.sroa.463.089, 1                ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = zext i32 %i.aa to i64
  br label %BlockSplitIteratorNext.exit

BlockSplitIteratorNext.exit:                      ; preds = %bb.e, %bb.f
  %.sroa.463.1 = phi i64 [ %i.u, %bb.f ], [ %.sroa.463.089, %bb.e ]
  %.sroa.764.1 = phi i64 [ %i.y, %bb.f ], [ %.sroa.764.091, %bb.e ] ; 2 uses
  %i.ac = phi i64 [ %i.ab, %bb.f ], [ %.sroa.965.090, %bb.e ]
  %i.ad = add i64 %i.ac, -1
  %i.ae = getelementptr inbounds nuw [2832 x i8], ptr %12, i64 %.sroa.764.1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !17 ; 3 uses
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 2816 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !20
  %i.ao = load i32, ptr %i.s, align 4, !tbaa !23  ; 2 uses
  %.not70 = icmp eq i32 %i.ao, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %BlockSplitIteratorNext.exit
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  br i1 %.not55, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %BlockSplitIteratorNext.exit60.us
  %.177.us = phi i8 [ %i.bm, %BlockSplitIteratorNext.exit60.us ], [ %.0100, %.lr.ph ]
  %.04975.us = phi i64 [ %i.bo, %BlockSplitIteratorNext.exit60.us ], [ %i.ap, %.lr.ph ]
  %.15174.us = phi i64 [ %i.bn, %BlockSplitIteratorNext.exit60.us ], [ %.05098, %.lr.ph ] ; 2 uses
  %.sroa.467.173.us = phi i64 [ %.sroa.467.2.us, %BlockSplitIteratorNext.exit60.us ], [ %.sroa.467.096, %.lr.ph ] ; 2 uses
  %.sroa.969.172.us = phi i64 [ %i.ba, %BlockSplitIteratorNext.exit60.us ], [ %.sroa.969.092, %.lr.ph ] ; 2 uses
  %.sroa.768.171.us = phi i64 [ %.sroa.768.2.us.a, %BlockSplitIteratorNext.exit60.us ], [ %.sroa.768.088, %.lr.ph ]
  %i.aq = icmp eq i64 %.sroa.969.172.us, 0
  br i1 %i.aq, label %bb.g, label %BlockSplitIteratorNext.exit60.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ar = add i64 %.sroa.467.173.us, 1            ; 3 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ar
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !14
  %i.ay = zext i32 %i.ax to i64
  br label %BlockSplitIteratorNext.exit60.us

BlockSplitIteratorNext.exit60.us:                 ; preds = %bb.g, %.lr.ph.split.us
  %.sroa.768.2.us.a = phi i64 [ %i.av, %bb.g ], [ %.sroa.768.171.us, %.lr.ph.split.us ] ; 3 uses
  %.sroa.467.2.us = phi i64 [ %i.ar, %bb.g ], [ %.sroa.467.173.us, %.lr.ph.split.us ] ; 2 uses
  %i.az = phi i64 [ %i.ay, %bb.g ], [ %.sroa.969.172.us, %.lr.ph.split.us ]
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [1040 x i8], ptr %11, i64 %.sroa.768.2.us.a ; 2 uses
  %i.bc = and i64 %.15174.us, %7
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1024 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !24
  %i.bm = load i8, ptr %i.bd, align 1, !tbaa !16  ; 2 uses
  %i.bn = add i64 %.15174.us, 1                   ; 2 uses
  %i.bo = add nsw i64 %.04975.us, -1              ; 2 uses
  %.not.us = icmp eq i64 %i.bo, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %BlockSplitIteratorNext.exit60
  %.177 = phi i8 [ %i.da, %BlockSplitIteratorNext.exit60 ], [ %.0100, %.lr.ph ] ; 3 uses
  %.14676 = phi i8 [ %.177, %BlockSplitIteratorNext.exit60 ], [ %.04599, %.lr.ph ]
  %.04975 = phi i64 [ %i.dc, %BlockSplitIteratorNext.exit60 ], [ %i.ap, %.lr.ph ]
  %.15174 = phi i64 [ %i.db, %BlockSplitIteratorNext.exit60 ], [ %.05098, %.lr.ph ] ; 2 uses
  %.sroa.467.173 = phi i64 [ %.sroa.467.2, %BlockSplitIteratorNext.exit60 ], [ %.sroa.467.096, %.lr.ph ] ; 2 uses
  %.sroa.969.172 = phi i64 [ %i.bz, %BlockSplitIteratorNext.exit60 ], [ %.sroa.969.092, %.lr.ph ] ; 2 uses
  %.sroa.768.171 = phi i64 [ %.sroa.768.2.a, %BlockSplitIteratorNext.exit60 ], [ %.sroa.768.088, %.lr.ph ]
  %i.bp = icmp eq i64 %.sroa.969.172, 0
  br i1 %i.bp, label %bb.h, label %BlockSplitIteratorNext.exit60

bb.h:                                             ; preds = %.lr.ph.split
  %i.bq = add i64 %.sroa.467.173, 1               ; 3 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.bx = zext i32 %i.bw to i64
  br label %BlockSplitIteratorNext.exit60

BlockSplitIteratorNext.exit60:                    ; preds = %.lr.ph.split, %bb.h
  %.sroa.768.2.a = phi i64 [ %i.bu, %bb.h ], [ %.sroa.768.171, %.lr.ph.split ] ; 4 uses
  %.sroa.467.2 = phi i64 [ %i.bq, %bb.h ], [ %.sroa.467.173, %.lr.ph.split ] ; 2 uses
  %i.by = phi i64 [ %i.bx, %bb.h ], [ %.sroa.969.172, %.lr.ph.split ]
  %i.bz = add i64 %i.by, -1                       ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %.sroa.768.2.a
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14
  %i.cc = shl i32 %i.cb, 9
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_kBrotliContextLookupTable, i64 %i.cd ; 2 uses
  %i.cf = zext i8 %.177 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 256
  %i.cj = zext i8 %.14676 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = or i8 %i.cl, %i.ch
  %i.cn = zext i8 %i.cm to i64
  %.idx104 = mul nuw nsw i64 %.sroa.768.2.a, 66560
  %i.co = getelementptr i8, ptr %11, i64 %.idx104
  %i.cp = getelementptr [1040 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %i.cq = and i64 %.15174, %7
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 %i.cq ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !14
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 1024 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !24
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !24
  %i.da = load i8, ptr %i.cr, align 1, !tbaa !16  ; 2 uses
  %i.db = add i64 %.15174, 1                      ; 2 uses
  %i.dc = add nsw i64 %.04975, -1                 ; 2 uses
  %.not = icmp eq i64 %i.dc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !26

._crit_edge:                                      ; preds = %BlockSplitIteratorNext.exit60, %BlockSplitIteratorNext.exit60.us, %BlockSplitIteratorNext.exit
  %.sroa.768.1.lcssa.a = phi i64 [ %.sroa.768.088, %BlockSplitIteratorNext.exit ], [ %.sroa.768.2.us.a, %BlockSplitIteratorNext.exit60.us ], [ %.sroa.768.2.a, %BlockSplitIteratorNext.exit60 ]
  %.sroa.969.1.lcssa = phi i64 [ %.sroa.969.092, %BlockSplitIteratorNext.exit ], [ %i.ba, %BlockSplitIteratorNext.exit60.us ], [ %i.bz, %BlockSplitIteratorNext.exit60 ]
  %.sroa.467.1.lcssa = phi i64 [ %.sroa.467.096, %BlockSplitIteratorNext.exit ], [ %.sroa.467.2.us, %BlockSplitIteratorNext.exit60.us ], [ %.sroa.467.2, %BlockSplitIteratorNext.exit60 ]
  %.151.lcssa = phi i64 [ %.05098, %BlockSplitIteratorNext.exit ], [ %i.bn, %BlockSplitIteratorNext.exit60.us ], [ %i.db, %BlockSplitIteratorNext.exit60 ]
  %.146.lcssa = phi i8 [ %.04599, %BlockSplitIteratorNext.exit ], [ %.177.us, %BlockSplitIteratorNext.exit60.us ], [ %.177, %BlockSplitIteratorNext.exit60 ]
  %.1.lcssa = phi i8 [ %.0100, %BlockSplitIteratorNext.exit ], [ %i.bm, %BlockSplitIteratorNext.exit60.us ], [ %i.da, %BlockSplitIteratorNext.exit60 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !28
  %i.df = and i32 %i.de, 33554431                 ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = add i64 %.151.lcssa, %i.dg              ; 3 uses
  %.not54 = icmp eq i32 %i.df, 0
  br i1 %.not54, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.di = add i64 %i.dh, -2
  %i.dj = and i64 %i.di, %7
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16  ; 2 uses
  %i.dm = add i64 %i.dh, -1
  %i.dn = and i64 %i.dm, %7
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16  ; 2 uses
  %i.dq = icmp ugt i16 %i.ag, 127
  br i1 %i.dq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dr = icmp eq i64 %.sroa.9.094, 0
  br i1 %i.dr, label %bb.k, label %BlockSplitIteratorNext.exit61

bb.k:                                             ; preds = %bb.j
  %i.ds = add i64 %.sroa.4.093, 1                 ; 3 uses
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !14
  %i.dz = zext i32 %i.dy to i64
  br label %BlockSplitIteratorNext.exit61

BlockSplitIteratorNext.exit61:                    ; preds = %bb.j, %bb.k
  %.sroa.4.2 = phi i64 [ %i.ds, %bb.k ], [ %.sroa.4.093, %bb.j ]
  %.sroa.7.2 = phi i64 [ %i.dw, %bb.k ], [ %.sroa.7.095, %bb.j ] ; 2 uses
  %i.ea = phi i64 [ %i.dz, %bb.k ], [ %.sroa.9.094, %bb.j ]
  %i.eb = add i64 %i.ea, -1
  %i.ec = zext i16 %i.ag to i32                   ; 3 uses
  %i.ed = lshr i32 %i.ec, 6                       ; 2 uses
  %i.ee = and i32 %i.ec, 7
  %i.ef = and i32 %i.ec, 65344
  %or.cond.i = icmp eq i32 %i.ef, 0
  %i.eg = icmp eq i32 %i.ed, 4
  %or.cond3.i = or i1 %or.cond.i, %i.eg
  %i.eh = icmp eq i32 %i.ed, 7
  %or.cond5.i = or i1 %i.eh, %or.cond3.i
  %i.ei = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 3)
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = select i1 %or.cond5.i, i64 %i.ej, i64 3
  %.idx = mul nuw nsw i64 %.sroa.7.2, 8768
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 %.idx
  %i.em = getelementptr inbounds nuw [2192 x i8], ptr %i.el, i64 %i.ek ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !29
  %i.ep = and i16 %i.eo, 1023
  %i.eq = zext nneg i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !14
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !14
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 2176 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !30
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %BlockSplitIteratorNext.exit61, %._crit_edge
  %.sroa.4.1 = phi i64 [ %.sroa.4.093, %._crit_edge ], [ %.sroa.4.2, %BlockSplitIteratorNext.exit61 ], [ %.sroa.4.093, %bb.i ]
  %.sroa.9.1 = phi i64 [ %.sroa.9.094, %._crit_edge ], [ %i.eb, %BlockSplitIteratorNext.exit61 ], [ %.sroa.9.094, %bb.i ]
  %.sroa.7.1 = phi i64 [ %.sroa.7.095, %._crit_edge ], [ %.sroa.7.2, %BlockSplitIteratorNext.exit61 ], [ %.sroa.7.095, %bb.i ]
  %.247 = phi i8 [ %.146.lcssa, %._crit_edge ], [ %i.dl, %BlockSplitIteratorNext.exit61 ], [ %i.dl, %bb.i ]
  %.2 = phi i8 [ %.1.lcssa, %._crit_edge ], [ %i.dp, %BlockSplitIteratorNext.exit61 ], [ %i.dp, %bb.i ]
  %i.ex = add nuw i64 %.05297, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %1
  br i1 %exitcond.not, label %._crit_edge102, label %bb.e, !llvm.loop !32

._crit_edge102:                                   ; preds = %bb.l, %InitBlockSplitIterator.exit59
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !13, i64 24}
!9 = !{!"BlockSplit", !10, i64 0, !10, i64 8, !11, i64 16, !13, i64 24, !10, i64 32, !10, i64 40}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!9, !11, i64 16}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !19, i64 12}
!18 = !{!"Command", !5, i64 0, !5, i64 4, !5, i64 8, !19, i64 12, !19, i64 14}
!19 = !{!"short", !6, i64 0}
!20 = !{!21, !10, i64 2816}
!21 = !{!"HistogramCommand", !6, i64 0, !10, i64 2816, !22, i64 2824}
!22 = !{!"double", !6, i64 0}
!23 = !{!18, !5, i64 0}
!24 = !{!25, !10, i64 1024}
!25 = !{!"HistogramLiteral", !6, i64 0, !10, i64 1024, !22, i64 1032}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!18, !5, i64 4}
!29 = !{!18, !19, i64 14}
!30 = !{!31, !10, i64 2176}
!31 = !{!"HistogramDistance", !6, i64 0, !10, i64 2176, !22, i64 2184}
!32 = distinct !{!32, !27}
end_hunk_0
