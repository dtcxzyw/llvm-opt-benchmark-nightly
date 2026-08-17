inline.NumInlined: 25
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 32
begin_hunk_0_@put1bitcmaptile:bb.a
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.14859.us, i64 24
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %.14859.us, i64 28
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !3
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.14859.us, i64 32 ; 9 uses
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !3
  %i.ai = add i32 %.060.us, -8                    ; 4 uses
  %i.aj = icmp ugt i32 %i.ai, 7
  br i1 %i.aj, label %bb.b, label %._crit_edge.us

bb.c:                                             ; preds = %._crit_edge.us
  %i.ak = load i8, ptr %i.g, align 1, !tbaa !57
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77 ; 8 uses
  switch i32 %i.ai, label %default.unreachable [
    i32 7, label %bb.d
    i32 6, label %bb.e
    i32 5, label %bb.f
    i32 4, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.14859.us, i64 36
  store i32 %i.ap, ptr %i.ah, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.249.us = phi ptr [ %i.aq, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %.046.us = phi ptr [ %i.ao, %bb.d ], [ %i.an, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.046.us, i64 4
  %i.as = load i32, ptr %.046.us, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %.249.us, i64 4
  store i32 %i.as, ptr %.249.us, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.350.us = phi ptr [ %i.at, %bb.e ], [ %i.ah, %bb.c ] ; 2 uses
  %.1.us = phi ptr [ %i.ar, %bb.e ], [ %i.an, %bb.c ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.us, i64 4
  %i.av = load i32, ptr %.1.us, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %.350.us, i64 4
  store i32 %i.av, ptr %.350.us, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.451.us = phi ptr [ %i.aw, %bb.f ], [ %i.ah, %bb.c ] ; 2 uses
  %.2.us = phi ptr [ %i.au, %bb.f ], [ %i.an, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.2.us, i64 4
  %i.ay = load i32, ptr %.2.us, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.451.us, i64 4
  store i32 %i.ay, ptr %.451.us, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.552.us = phi ptr [ %i.az, %bb.g ], [ %i.ah, %bb.c ] ; 2 uses
  %.3.us = phi ptr [ %i.ax, %bb.g ], [ %i.an, %bb.c ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.3.us, i64 4
  %i.bb = load i32, ptr %.3.us, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.552.us, i64 4
  store i32 %i.bb, ptr %.552.us, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %.6.us = phi ptr [ %i.bc, %bb.h ], [ %i.ah, %bb.c ] ; 2 uses
  %.4.us = phi ptr [ %i.ba, %bb.h ], [ %i.an, %bb.c ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.4.us, i64 4
  %i.be = load i32, ptr %.4.us, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.6.us, i64 4
  store i32 %i.be, ptr %.6.us, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.7.us = phi ptr [ %i.bf, %bb.i ], [ %i.ah, %bb.c ] ; 2 uses
  %.5.us = phi ptr [ %i.bd, %bb.i ], [ %i.an, %bb.c ]
  %i.bg = load i32, ptr %.5.us, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.7.us, i64 4
  store i32 %i.bg, ptr %.7.us, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.us
  %i.bi = phi i64 [ 1, %._crit_edge.us ], [ 2, %bb.j ]
  %.8.us = phi ptr [ %i.ah, %._crit_edge.us ], [ %i.bh, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.15458.us, i64 %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %.8.us, i64 %i.e
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.f
  %i.bm = add i32 %.05664.us, -1                  ; 2 uses
  %.not.us = icmp eq i32 %i.bm, 0
  br i1 %.not.us, label %._crit_edge67, label %.preheader.us

._crit_edge.us:                                   ; preds = %bb.b
  %.not57.us = icmp eq i32 %i.ai, 0
  br i1 %.not57.us, label %bb.k, label %bb.c

default.unreachable:                              ; preds = %bb.c
  unreachable

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bn = icmp eq i32 %4, 0
  br i1 %i.bn, label %._crit_edge67, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %bb.r
  %.04766 = phi ptr [ %i.cn, %bb.r ], [ %1, %.preheader.lr.ph.split ] ; 8 uses
  %.05365 = phi ptr [ %i.co, %bb.r ], [ %8, %.preheader.lr.ph.split ] ; 2 uses
  %.05664 = phi i32 [ %i.cp, %bb.r ], [ %5, %.preheader.lr.ph.split ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.05365, i64 1
  %i.bp = load i8, ptr %.05365, align 1, !tbaa !57
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77 ; 8 uses
  switch i32 %4, label %bb.r [
    i32 7, label %bb.l
    i32 6, label %bb.m
    i32 5, label %bb.n
    i32 4, label %bb.o
    i32 3, label %bb.p
    i32 2, label %bb.q
  ]

bb.l:                                             ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.04766, i64 4
  store i32 %i.bu, ptr %.04766, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader
  %.249 = phi ptr [ %i.bv, %bb.l ], [ %.04766, %.preheader ] ; 2 uses
  %.046 = phi ptr [ %i.bt, %bb.l ], [ %i.bs, %.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.046, i64 4
  %i.bx = load i32, ptr %.046, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.249, i64 4
  store i32 %i.bx, ptr %.249, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader
  %.350 = phi ptr [ %i.by, %bb.m ], [ %.04766, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.bw, %bb.m ], [ %i.bs, %.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.ca = load i32, ptr %.1, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %.350, i64 4
  store i32 %i.ca, ptr %.350, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader
  %.451 = phi ptr [ %i.cb, %bb.n ], [ %.04766, %.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.bz, %bb.n ], [ %i.bs, %.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.cd = load i32, ptr %.2, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %.451, i64 4
  store i32 %i.cd, ptr %.451, align 4, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader
  %.552 = phi ptr [ %i.ce, %bb.o ], [ %.04766, %.preheader ] ; 2 uses
  %.3 = phi ptr [ %i.cc, %bb.o ], [ %i.bs, %.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.cg = load i32, ptr %.3, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.552, i64 4
  store i32 %i.cg, ptr %.552, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader
  %.6 = phi ptr [ %i.ch, %bb.p ], [ %.04766, %.preheader ] ; 2 uses
  %.4 = phi ptr [ %i.cf, %bb.p ], [ %i.bs, %.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %i.cj = load i32, ptr %.4, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.6, i64 4
  store i32 %i.cj, ptr %.6, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.q
  %.7 = phi ptr [ %i.ck, %bb.q ], [ %.04766, %.preheader ] ; 2 uses
  %.5 = phi ptr [ %i.ci, %bb.q ], [ %i.bs, %.preheader ]
  %i.cl = load i32, ptr %.5, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.7, i64 4
  store i32 %i.cl, ptr %.7, align 4, !tbaa !3
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.e
  %i.co = getelementptr inbounds i8, ptr %i.bo, i64 %i.f
  %i.cp = add i32 %.05664, -1                     ; 2 uses
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %._crit_edge67, label %.preheader

._crit_edge67:                                    ; preds = %bb.r, %bb.k, %.preheader.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @put16bitbwtile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not30 = icmp eq i32 %5, 0
  br i1 %.not30, label %._crit_edge34.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !53
  %i.e = zext i16 %i.d to i64
  %.not2324 = icmp eq i32 %4, 0
  %i.f = shl nuw nsw i64 %i.e, 1                  ; 3 uses
  %i.g = sext i32 %7 to i64
  %i.h = sext i32 %6 to i64
  br i1 %.not2324, label %._crit_edge34.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %9 = add nsw i32 %4, -1
  %10 = icmp eq i32 %4, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01833 = phi ptr [ %i.ah, %._crit_edge ], [ %1, %.preheader.preheader ] ; 3 uses
  %.02032 = phi ptr [ %i.ai, %._crit_edge ], [ %8, %.preheader.preheader ] ; 3 uses
  %.02231 = phi i32 [ %i.aj, %._crit_edge ], [ %5, %.preheader.preheader ]
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.i = load i16, ptr %.02032, align 2, !tbaa !31
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %.01833, i64 4 ; 2 uses
  store i32 %i.n, ptr %.01833, align 4, !tbaa !3
  %i.p = getelementptr i8, ptr %.02032, i64 %i.f  ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa40.unr = phi ptr [ poison, %.preheader ], [ %i.o, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi ptr [ poison, %.preheader ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  %.127.unr = phi ptr [ %.01833, %.preheader ], [ %i.o, %.prol.loopexit.unr-lcssa ]
  %.01926.unr = phi i32 [ %4, %.preheader ], [ %9, %.prol.loopexit.unr-lcssa ]
  %.12125.unr = phi ptr [ %.02032, %.preheader ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  br i1 %10, label %._crit_edge, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.127 = phi ptr [ %i.ae, %.preheader.new ], [ %.127.unr, %.prol.loopexit ] ; 3 uses
  %.01926 = phi i32 [ %i.ag, %.preheader.new ], [ %.01926.unr, %.prol.loopexit ]
  %.12125 = phi ptr [ %i.af, %.preheader.new ], [ %.12125.unr, %.prol.loopexit ] ; 2 uses
  %i.q = load i16, ptr %.12125, align 2, !tbaa !31
  %i.r = lshr i16 %i.q, 8
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %.127, i64 4
  store i32 %i.v, ptr %.127, align 4, !tbaa !3
  %i.x = getelementptr i8, ptr %.12125, i64 %i.f  ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !31
  %i.z = lshr i16 %i.y, 8
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.127, i64 8 ; 2 uses
  store i32 %i.ad, ptr %i.w, align 4, !tbaa !3
  %i.af = getelementptr i8, ptr %i.x, i64 %i.f    ; 2 uses
  %i.ag = add i32 %.01926, -2                     ; 2 uses
  %.not23.1 = icmp eq i32 %i.ag, 0
  br i1 %.not23.1, label %._crit_edge, label %.preheader.new

._crit_edge:                                      ; preds = %.preheader.new, %.prol.loopexit
  %.lcssa40 = phi ptr [ %.lcssa40.unr, %.prol.loopexit ], [ %i.ae, %.preheader.new ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.af, %.preheader.new ]
  %i.ah = getelementptr inbounds [4 x i8], ptr %.lcssa40, i64 %i.g
  %i.ai = getelementptr inbounds i8, ptr %.lcssa, i64 %i.h
  %i.aj = add i32 %.02231, -1                     ; 2 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %._crit_edge34.split, label %.preheader

._crit_edge34.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @putagreytile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not26 = icmp eq i32 %5, 0
  br i1 %.not26, label %._crit_edge30.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !53
  %.not2021 = icmp eq i32 %4, 0
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = sext i32 %7 to i64
  %i.g = sext i32 %6 to i64
  br i1 %.not2021, label %._crit_edge30.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.h = add nsw i32 %4, -1
  %i.i = icmp eq i32 %4, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.029 = phi ptr [ %i.ax, %._crit_edge ], [ %1, %.preheader.preheader ] ; 3 uses
  %.01728 = phi ptr [ %i.ay, %._crit_edge ], [ %8, %.preheader.preheader ] ; 4 uses
  %.01927 = phi i32 [ %i.az, %._crit_edge ], [ %5, %.preheader.preheader ]
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.j = load i8, ptr %.01728, align 1, !tbaa !57
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %.01728, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !57
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.q, 24
  %i.s = or disjoint i32 %i.r, 16777215
  %i.t = and i32 %i.s, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  store i32 %i.t, ptr %.029, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %.01728, i64 %i.e ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa36.unr = phi ptr [ poison, %.preheader ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi ptr [ poison, %.preheader ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %.124.unr = phi ptr [ %.029, %.preheader ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.01623.unr = phi i32 [ %4, %.preheader ], [ %i.h, %.prol.loopexit.unr-lcssa ]
  %.11822.unr = phi ptr [ %.01728, %.preheader ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  br i1 %i.i, label %._crit_edge, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.124 = phi ptr [ %i.au, %.preheader.new ], [ %.124.unr, %.prol.loopexit ] ; 3 uses
  %.01623 = phi i32 [ %i.aw, %.preheader.new ], [ %.01623.unr, %.prol.loopexit ]
  %.11822 = phi ptr [ %i.av, %.preheader.new ], [ %.11822.unr, %.prol.loopexit ] ; 3 uses
  %i.w = load i8, ptr %.11822, align 1, !tbaa !57
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.11822, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !57
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 %i.ad, 24
  %i.af = or disjoint i32 %i.ae, 16777215
  %i.ag = and i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.124, i64 4
  store i32 %i.ag, ptr %.124, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.11822, i64 %i.e ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !57
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !77
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !57
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw i32 %i.aq, 24
  %i.as = or disjoint i32 %i.ar, 16777215
  %i.at = and i32 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %.124, i64 8 ; 2 uses
  store i32 %i.at, ptr %i.ah, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.e ; 2 uses
  %i.aw = add i32 %.01623, -2                     ; 2 uses
  %.not20.1 = icmp eq i32 %i.aw, 0
  br i1 %.not20.1, label %._crit_edge, label %.preheader.new

._crit_edge:                                      ; preds = %.preheader.new, %.prol.loopexit
  %.lcssa36 = phi ptr [ %.lcssa36.unr, %.prol.loopexit ], [ %i.au, %.preheader.new ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.av, %.preheader.new ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %.lcssa36, i64 %i.f
  %i.ay = getelementptr inbounds i8, ptr %.lcssa, i64 %i.g
  %i.az = add i32 %.01927, -1                     ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %._crit_edge30.split, label %.preheader

._crit_edge30.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @putgreytile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %.not25 = icmp eq i32 %5, 0
  br i1 %.not25, label %._crit_edge29.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !53
  %.not1920 = icmp eq i32 %4, 0
  %i.e = zext i16 %i.d to i64                     ; 5 uses
  %i.f = sext i32 %7 to i64
  %i.g = sext i32 %6 to i64
  br i1 %.not1920, label %._crit_edge29.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i32 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.h = icmp ult i32 %4, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.028 = phi ptr [ %i.at, %._crit_edge ], [ %1, %.preheader.preheader ] ; 2 uses
  %.01627 = phi ptr [ %i.au, %._crit_edge ], [ %8, %.preheader.preheader ] ; 2 uses
  %.01826 = phi i32 [ %i.av, %._crit_edge ], [ %5, %.preheader.preheader ]
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %.123.prol = phi ptr [ %i.n, %.prol.preheader ], [ %.028, %.preheader ] ; 2 uses
  %.01522.prol = phi i32 [ %i.p, %.prol.preheader ], [ %4, %.preheader ]
  %.11721.prol = phi ptr [ %i.o, %.prol.preheader ], [ %.01627, %.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader ]
  %i.i = load i8, ptr %.11721.prol, align 1, !tbaa !57
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %.123.prol, i64 4 ; 3 uses
  store i32 %i.m, ptr %.123.prol, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %.11721.prol, i64 %i.e ; 3 uses
  %i.p = add i32 %.01522.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !94

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %.lcssa35.unr = phi ptr [ poison, %.preheader ], [ %i.n, %.prol.preheader ]
  %.lcssa.unr = phi ptr [ poison, %.preheader ], [ %i.o, %.prol.preheader ]
  %.123.unr = phi ptr [ %.028, %.preheader ], [ %i.n, %.prol.preheader ]
  %.01522.unr = phi i32 [ %4, %.preheader ], [ %i.p, %.prol.preheader ]
  %.11721.unr = phi ptr [ %.01627, %.preheader ], [ %i.o, %.prol.preheader ]
  br i1 %i.h, label %._crit_edge, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.123 = phi ptr [ %i.aq, %.preheader.new ], [ %.123.unr, %.prol.loopexit ] ; 5 uses
  %.01522 = phi i32 [ %i.as, %.preheader.new ], [ %.01522.unr, %.prol.loopexit ]
  %.11721 = phi ptr [ %i.ar, %.preheader.new ], [ %.11721.unr, %.prol.loopexit ] ; 2 uses
  %i.q = load i8, ptr %.11721, align 1, !tbaa !57
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %.123, i64 4
  store i32 %i.u, ptr %.123, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %.11721, i64 %i.e ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !57
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.123, i64 8
  store i32 %i.ab, ptr %i.v, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.e ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !57
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.123, i64 12
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.e ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !57
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !77
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.123, i64 16 ; 2 uses
  store i32 %i.ap, ptr %i.aj, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.e ; 2 uses
  %i.as = add i32 %.01522, -4                     ; 2 uses
  %.not19.3 = icmp eq i32 %i.as, 0
  br i1 %.not19.3, label %._crit_edge, label %.preheader.new

._crit_edge:                                      ; preds = %.preheader.new, %.prol.loopexit
  %.lcssa35 = phi ptr [ %.lcssa35.unr, %.prol.loopexit ], [ %i.aq, %.preheader.new ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.ar, %.preheader.new ]
  %i.at = getelementptr inbounds [4 x i8], ptr %.lcssa35, i64 %i.f
  %i.au = getelementptr inbounds i8, ptr %.lcssa, i64 %i.g
  %i.av = add i32 %.01826, -1                     ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %._crit_edge29.split, label %.preheader

._crit_edge29.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @put4bitbwtile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 9 uses
  %.not32 = icmp eq i32 %5, 0
  br i1 %.not32, label %._crit_edge36, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = sdiv i32 %6, 2
  %i.d = icmp ugt i32 %4, 1
  %i.e = sext i32 %7 to i64                       ; 6 uses
  %i.f = sext i32 %i.c to i64                     ; 6 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.g = add i32 %4, -2                           ; 2 uses
  %i.h = and i32 %i.g, 2
  %lcmp.mod53.not.not = icmp eq i32 %i.h, 0
  %i.i = add i32 %4, -2                           ; 2 uses
  %i.j = icmp ult i32 %i.g, 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.02135.us = phi ptr [ %i.az, %bb.c ], [ %1, %.preheader.us.preheader ] ; 5 uses
  %.02234.us = phi ptr [ %i.ba, %bb.c ], [ %8, %.preheader.us.preheader ] ; 4 uses
  %.02533.us = phi i32 [ %i.bb, %bb.c ], [ %5, %.preheader.us.preheader ]
  br i1 %lcmp.mod53.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.us
  %i.k = getelementptr inbounds nuw i8, ptr %.02234.us, i64 1 ; 2 uses
  %i.l = load i8, ptr %.02234.us, align 1, !tbaa !57
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %.02135.us, i64 4
  store i32 %i.q, ptr %.02135.us, align 4, !tbaa !3
  %i.s = load i32, ptr %i.p, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %.02135.us, i64 8 ; 2 uses
  store i32 %i.s, ptr %i.r, align 4, !tbaa !3
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us
  %.029.us.unr = phi i32 [ %4, %.preheader.us ], [ %i.i, %.prol.loopexit.unr-lcssa ]
  %.128.us.unr = phi ptr [ %.02135.us, %.preheader.us ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  %.12327.us.unr = phi ptr [ %.02234.us, %.preheader.us ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.lcssa50.unr = phi ptr [ poison, %.preheader.us ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.lcssa49.unr = phi ptr [ poison, %.preheader.us ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  br i1 %i.j, label %._crit_edge.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit, %.preheader.us.new
  %.029.us = phi i32 [ %i.ao, %.preheader.us.new ], [ %.029.us.unr, %.prol.loopexit ]
  %.128.us = phi ptr [ %i.an, %.preheader.us.new ], [ %.128.us.unr, %.prol.loopexit ] ; 6 uses
  %.12327.us = phi ptr [ %i.ae, %.preheader.us.new ], [ %.12327.us.unr, %.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.12327.us, i64 1
  %i.v = load i8, ptr %.12327.us, align 1, !tbaa !57
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !77   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.128.us, i64 4
  store i32 %i.aa, ptr %.128.us, align 4, !tbaa !3
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.128.us, i64 8
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.12327.us, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.u, align 1, !tbaa !57
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %.128.us, i64 12
  store i32 %i.ak, ptr %i.ad, align 4, !tbaa !3
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.128.us, i64 16 ; 2 uses
  store i32 %i.am, ptr %i.al, align 4, !tbaa !3
  %i.ao = add i32 %.029.us, -4                    ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 1
  br i1 %i.ap, label %.preheader.us.new, label %._crit_edge.us.unr-lcssa

bb.b:                                             ; preds = %._crit_edge.us
  %i.aq = load i8, ptr %.lcssa50, align 1, !tbaa !57
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  store i32 %i.au, ptr %.lcssa49, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %i.av = phi i64 [ 2, %bb.b ], [ 1, %._crit_edge.us ]
  %i.aw = phi i64 [ 12, %bb.b ], [ 8, %._crit_edge.us ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.12327.us.lcssa, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.128.us.lcssa, i64 %i.aw
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.e
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.f
  %i.bb = add i32 %.02533.us, -1                  ; 2 uses
  %.not.us = icmp eq i32 %i.bb, 0
  br i1 %.not.us, label %._crit_edge36, label %.preheader.us

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  %i.bc = getelementptr inbounds nuw i8, ptr %.12327.us, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.128.us, i64 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.prol.loopexit, %._crit_edge.us.unr-lcssa
  %.128.us.lcssa = phi ptr [ %.02135.us, %.prol.loopexit ], [ %i.bd, %._crit_edge.us.unr-lcssa ]
  %.12327.us.lcssa = phi ptr [ %.02234.us, %.prol.loopexit ], [ %i.bc, %._crit_edge.us.unr-lcssa ]
  %.lcssa50 = phi ptr [ %.lcssa50.unr, %.prol.loopexit ], [ %i.ae, %._crit_edge.us.unr-lcssa ]
  %.lcssa49 = phi ptr [ %.lcssa49.unr, %.prol.loopexit ], [ %i.an, %._crit_edge.us.unr-lcssa ]
  %.lcssa = phi i32 [ %i.i, %.prol.loopexit ], [ %i.ao, %._crit_edge.us.unr-lcssa ]
  %.not26.us = icmp eq i32 %.lcssa, 0
  br i1 %.not26.us, label %bb.c, label %bb.b

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not26 = icmp eq i32 %4, 0
  br i1 %.not26, label %._crit_edge36, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %xtraiter = and i32 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.02135.prol = phi ptr [ %i.bl, %.preheader.prol ], [ %1, %.preheader.preheader ] ; 2 uses
  %.02234.prol = phi ptr [ %i.bm, %.preheader.prol ], [ %8, %.preheader.preheader ] ; 2 uses
  %.02533.prol = phi i32 [ %i.bn, %.preheader.prol ], [ %5, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.02234.prol, i64 1
  %i.bf = load i8, ptr %.02234.prol, align 1, !tbaa !57
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !77
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.02135.prol, i64 4
  store i32 %i.bj, ptr %.02135.prol, align 4, !tbaa !3
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.e ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.be, i64 %i.f ; 2 uses
  %i.bn = add i32 %.02533.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !95

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.02135.unr = phi ptr [ %1, %.preheader.preheader ], [ %i.bl, %.preheader.prol ]
  %.02234.unr = phi ptr [ %8, %.preheader.preheader ], [ %i.bm, %.preheader.prol ]
  %.02533.unr = phi i32 [ %5, %.preheader.preheader ], [ %i.bn, %.preheader.prol ]
  %i.bo = icmp ult i32 %5, 4
  br i1 %i.bo, label %._crit_edge36, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.02135 = phi ptr [ %i.cx, %.preheader ], [ %.02135.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.02234 = phi ptr [ %i.cy, %.preheader ], [ %.02234.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.02533 = phi i32 [ %i.cz, %.preheader ], [ %.02533.unr, %.preheader.prol.loopexit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.02234, i64 1
  %i.bq = load i8, ptr %.02234, align 1, !tbaa !57
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.02135, i64 4
  store i32 %i.bu, ptr %.02135, align 4, !tbaa !3
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.e ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bp, i64 %i.f ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !57
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !77
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.cd, ptr %i.bw, align 4, !tbaa !3
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.e ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 %i.f ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !57
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !77
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.cm, ptr %i.cf, align 4, !tbaa !3
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.e ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.ch, i64 %i.f ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !57
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !77
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %i.cv, ptr %i.co, align 4, !tbaa !3
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.e
  %i.cy = getelementptr inbounds i8, ptr %i.cq, i64 %i.f
  %i.cz = add i32 %.02533, -4                     ; 2 uses
  %.not.3 = icmp eq i32 %i.cz, 0
  br i1 %.not.3, label %._crit_edge36, label %.preheader

._crit_edge36:                                    ; preds = %.preheader.prol.loopexit, %.preheader, %bb.c, %.preheader.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @put2bitbwtile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 15 uses
  %.not43 = icmp eq i32 %5, 0
  br i1 %.not43, label %._crit_edge47, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = sdiv i32 %6, 4
  %i.d = icmp ugt i32 %4, 3
  %i.e = sext i32 %7 to i64                       ; 12 uses
  %i.f = sext i32 %i.c to i64                     ; 12 uses
  br i1 %i.d, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.g = add i32 %4, -4                           ; 2 uses
  %i.h = and i32 %i.g, 4
  %lcmp.mod100.not.not = icmp eq i32 %i.h, 0
  %i.i = add i32 %4, -4                           ; 2 uses
  %i.j = icmp ult i32 %i.g, 4
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.f
  %.03146.us = phi ptr [ %i.bw, %bb.f ], [ %1, %.preheader.us.preheader ] ; 7 uses
  %.03345.us = phi ptr [ %i.bx, %bb.f ], [ %8, %.preheader.us.preheader ] ; 4 uses
  %.03644.us = phi i32 [ %i.by, %bb.f ], [ %5, %.preheader.us.preheader ]
  br i1 %lcmp.mod100.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.us
  %i.k = getelementptr inbounds nuw i8, ptr %.03345.us, i64 1 ; 2 uses
  %i.l = load i8, ptr %.03345.us, align 1, !tbaa !57
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %.03146.us, i64 4
  store i32 %i.q, ptr %.03146.us, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load i32, ptr %i.p, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %.03146.us, i64 8
  store i32 %i.t, ptr %i.r, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.w = load i32, ptr %i.s, align 4, !tbaa !3
  %i.x = getelementptr inbounds nuw i8, ptr %.03146.us, i64 12
  store i32 %i.w, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.v, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %.03146.us, i64 16 ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !3
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us
  %.040.us.unr = phi i32 [ %4, %.preheader.us ], [ %i.i, %.prol.loopexit.unr-lcssa ]
  %.13239.us.unr = phi ptr [ %.03146.us, %.preheader.us ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  %.13438.us.unr = phi ptr [ %.03345.us, %.preheader.us ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.lcssa89.unr = phi ptr [ poison, %.preheader.us ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.lcssa88.unr = phi ptr [ poison, %.preheader.us ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  br i1 %i.j, label %._crit_edge.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit, %.preheader.us.new
  %.040.us = phi i32 [ %i.bg, %.preheader.us.new ], [ %.040.us.unr, %.prol.loopexit ]
  %.13239.us = phi ptr [ %i.bf, %.preheader.us.new ], [ %.13239.us.unr, %.prol.loopexit ] ; 10 uses
  %.13438.us = phi ptr [ %i.aq, %.preheader.us.new ], [ %.13438.us.unr, %.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.13438.us, i64 1
  %i.ab = load i8, ptr %.13438.us, align 1, !tbaa !57
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.13239.us, i64 4
  store i32 %i.ag, ptr %.13239.us, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.13239.us, i64 8
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.13239.us, i64 12
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !3
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw i8, ptr %.13239.us, i64 16
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.13438.us, i64 2 ; 2 uses
  %i.ar = load i8, ptr %i.aa, align 1, !tbaa !57
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %.13239.us, i64 20
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.13239.us, i64 24
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.13239.us, i64 28
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !3
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.13239.us, i64 32 ; 2 uses
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !3
  %i.bg = add i32 %.040.us, -8                    ; 3 uses
  %i.bh = icmp ugt i32 %i.bg, 3
  br i1 %i.bh, label %.preheader.us.new, label %._crit_edge.us.unr-lcssa

bb.b:                                             ; preds = %._crit_edge.us
  %i.bi = load i8, ptr %.lcssa89, align 1, !tbaa !57
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !77 ; 4 uses
  switch i32 %.lcssa, label %.unreachabledefault [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %.13239.us.lcssa, i64 20
  store i32 %i.bn, ptr %.lcssa88, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2.us = phi ptr [ %i.bo, %bb.c ], [ %.lcssa88, %bb.b ] ; 2 uses
  %.030.us = phi ptr [ %i.bm, %bb.c ], [ %i.bl, %bb.b ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.030.us, i64 4
  %i.bq = load i32, ptr %.030.us, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %.2.us, i64 4
  store i32 %i.bq, ptr %.2.us, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.3.us = phi ptr [ %i.br, %bb.d ], [ %.lcssa88, %bb.b ] ; 2 uses
  %.1.us = phi ptr [ %i.bp, %bb.d ], [ %i.bl, %bb.b ]
  %i.bs = load i32, ptr %.1.us, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.3.us, i64 4
  store i32 %i.bs, ptr %.3.us, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.us
  %i.bu = phi i64 [ 1, %._crit_edge.us ], [ 2, %bb.e ]
  %.4.us = phi ptr [ %.lcssa88, %._crit_edge.us ], [ %i.bt, %bb.e ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.13438.us.lcssa, i64 %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %.4.us, i64 %i.e
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.f
  %i.by = add i32 %.03644.us, -1                  ; 2 uses
  %.not.us = icmp eq i32 %i.by, 0
  br i1 %.not.us, label %._crit_edge47, label %.preheader.us

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  %i.bz = getelementptr inbounds nuw i8, ptr %.13438.us, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.13239.us, i64 16
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.prol.loopexit, %._crit_edge.us.unr-lcssa
  %.13239.us.lcssa = phi ptr [ %.03146.us, %.prol.loopexit ], [ %i.ca, %._crit_edge.us.unr-lcssa ]
  %.13438.us.lcssa = phi ptr [ %.03345.us, %.prol.loopexit ], [ %i.bz, %._crit_edge.us.unr-lcssa ]
  %.lcssa89 = phi ptr [ %.lcssa89.unr, %.prol.loopexit ], [ %i.aq, %._crit_edge.us.unr-lcssa ]
  %.lcssa88 = phi ptr [ %.lcssa88.unr, %.prol.loopexit ], [ %i.bf, %._crit_edge.us.unr-lcssa ] ; 4 uses
  %.lcssa = phi i32 [ %i.i, %.prol.loopexit ], [ %i.bg, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.not37.us = icmp eq i32 %.lcssa, 0
  br i1 %.not37.us, label %bb.f, label %bb.b

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable77:                            ; preds = %.preheader.lr.ph.split
  unreachable

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  switch i32 %4, label %default.unreachable77 [
    i32 0, label %._crit_edge47
    i32 3, label %.preheader.us48.preheader
    i32 2, label %.preheader.us60.preheader
    i32 1, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %xtraiter = and i32 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.03146.prol = phi ptr [ %i.ci, %.preheader.prol ], [ %1, %.preheader.preheader ] ; 2 uses
  %.03345.prol = phi ptr [ %i.cj, %.preheader.prol ], [ %8, %.preheader.preheader ] ; 2 uses
  %.03644.prol = phi i32 [ %i.ck, %.preheader.prol ], [ %5, %.preheader.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.03345.prol, i64 1
  %i.cc = load i8, ptr %.03345.prol, align 1, !tbaa !57
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !77
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.03146.prol, i64 4
  store i32 %i.cg, ptr %.03146.prol, align 4, !tbaa !3
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.e ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cb, i64 %i.f ; 2 uses
  %i.ck = add i32 %.03644.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !96

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.03146.unr = phi ptr [ %1, %.preheader.preheader ], [ %i.ci, %.preheader.prol ]
  %.03345.unr = phi ptr [ %8, %.preheader.preheader ], [ %i.cj, %.preheader.prol ]
  %.03644.unr = phi i32 [ %5, %.preheader.preheader ], [ %i.ck, %.preheader.prol ]
  %i.cl = icmp ult i32 %5, 4
  br i1 %i.cl, label %._crit_edge47, label %.preheader

.preheader.us60.preheader:                        ; preds = %.preheader.lr.ph.split
  %xtraiter93 = and i32 %5, 1
  %lcmp.mod94.not = icmp eq i32 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.preheader.us60.prol.loopexit, label %.preheader.us60.prol

.preheader.us60.prol:                             ; preds = %.preheader.us60.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.cn = load i8, ptr %8, align 1, !tbaa !57
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !77 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.cs, ptr %1, align 4, !tbaa !3
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !3
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.e
  %i.cx = getelementptr inbounds i8, ptr %i.cm, i64 %i.f
  %i.cy = add nsw i32 %5, -1
  br label %.preheader.us60.prol.loopexit

.preheader.us60.prol.loopexit:                    ; preds = %.preheader.us60.prol, %.preheader.us60.preheader
  %.03146.us61.unr = phi ptr [ %1, %.preheader.us60.preheader ], [ %i.cw, %.preheader.us60.prol ]
  %.03345.us62.unr = phi ptr [ %8, %.preheader.us60.preheader ], [ %i.cx, %.preheader.us60.prol ]
  %.03644.us63.unr = phi i32 [ %5, %.preheader.us60.preheader ], [ %i.cy, %.preheader.us60.prol ]
  %i.cz = icmp eq i32 %5, 1
  br i1 %i.cz, label %._crit_edge47, label %.preheader.us60

.preheader.us48.preheader:                        ; preds = %.preheader.lr.ph.split
  %xtraiter96 = and i32 %5, 1
  %lcmp.mod97.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.preheader.us48.prol.loopexit, label %.preheader.us48.prol

.preheader.us48.prol:                             ; preds = %.preheader.us48.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.db = load i8, ptr %8, align 1, !tbaa !57
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !77 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.dg, ptr %1, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !3
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !3
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.e
  %i.do = getelementptr inbounds i8, ptr %i.da, i64 %i.f
  %i.dp = add nsw i32 %5, -1
  br label %.preheader.us48.prol.loopexit

.preheader.us48.prol.loopexit:                    ; preds = %.preheader.us48.prol, %.preheader.us48.preheader
  %.03146.us49.unr = phi ptr [ %1, %.preheader.us48.preheader ], [ %i.dn, %.preheader.us48.prol ]
  %.03345.us50.unr = phi ptr [ %8, %.preheader.us48.preheader ], [ %i.do, %.preheader.us48.prol ]
  %.03644.us51.unr = phi i32 [ %5, %.preheader.us48.preheader ], [ %i.dp, %.preheader.us48.prol ]
  %i.dq = icmp eq i32 %5, 1
  br i1 %i.dq, label %._crit_edge47, label %.preheader.us48

.preheader.us48:                                  ; preds = %.preheader.us48.prol.loopexit, %.preheader.us48
  %.03146.us49 = phi ptr [ %i.et, %.preheader.us48 ], [ %.03146.us49.unr, %.preheader.us48.prol.loopexit ] ; 4 uses
  %.03345.us50 = phi ptr [ %i.eu, %.preheader.us48 ], [ %.03345.us50.unr, %.preheader.us48.prol.loopexit ] ; 2 uses
  %.03644.us51 = phi i32 [ %i.ev, %.preheader.us48 ], [ %.03644.us51.unr, %.preheader.us48.prol.loopexit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.03345.us50, i64 1
  %i.ds = load i8, ptr %.03345.us50, align 1, !tbaa !57
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !77 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dy = getelementptr inbounds nuw i8, ptr %.03146.us49, i64 4
  store i32 %i.dx, ptr %.03146.us49, align 4, !tbaa !3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw i8, ptr %.03146.us49, i64 8
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !3
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ed = getelementptr inbounds nuw i8, ptr %.03146.us49, i64 12
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !3
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.e ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %i.dr, i64 %i.f ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !57
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !77 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 %i.em, ptr %i.ee, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ep = load i32, ptr %i.el, align 4, !tbaa !3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !3
  %i.er = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !3
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.e
  %i.eu = getelementptr inbounds i8, ptr %i.eg, i64 %i.f
  %i.ev = add i32 %.03644.us51, -2                ; 2 uses
  %.not.us56.1 = icmp eq i32 %i.ev, 0
  br i1 %.not.us56.1, label %._crit_edge47, label %.preheader.us48

.preheader.us60:                                  ; preds = %.preheader.us60.prol.loopexit, %.preheader.us60
  %.03146.us61 = phi ptr [ %i.fs, %.preheader.us60 ], [ %.03146.us61.unr, %.preheader.us60.prol.loopexit ] ; 3 uses
  %.03345.us62 = phi ptr [ %i.ft, %.preheader.us60 ], [ %.03345.us62.unr, %.preheader.us60.prol.loopexit ] ; 2 uses
  %.03644.us63 = phi i32 [ %i.fu, %.preheader.us60 ], [ %.03644.us63.unr, %.preheader.us60.prol.loopexit ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.03345.us62, i64 1
  %i.ex = load i8, ptr %.03345.us62, align 1, !tbaa !57
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !77 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fd = getelementptr inbounds nuw i8, ptr %.03146.us61, i64 4
  store i32 %i.fc, ptr %.03146.us61, align 4, !tbaa !3
  %i.fe = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.ff = getelementptr inbounds nuw i8, ptr %.03146.us61, i64 8
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !3
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.e ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ew, i64 %i.f ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !57
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !77 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.fo, ptr %i.fg, align 4, !tbaa !3
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !3
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.e
  %i.ft = getelementptr inbounds i8, ptr %i.fi, i64 %i.f
  %i.fu = add i32 %.03644.us63, -2                ; 2 uses
  %.not.us68.1 = icmp eq i32 %i.fu, 0
  br i1 %.not.us68.1, label %._crit_edge47, label %.preheader.us60

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.03146 = phi ptr [ %i.hd, %.preheader ], [ %.03146.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.03345 = phi ptr [ %i.he, %.preheader ], [ %.03345.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.03644 = phi i32 [ %i.hf, %.preheader ], [ %.03644.unr, %.preheader.prol.loopexit ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.03345, i64 1
  %i.fw = load i8, ptr %.03345, align 1, !tbaa !57
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !77
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = getelementptr inbounds nuw i8, ptr %.03146, i64 4
  store i32 %i.ga, ptr %.03146, align 4, !tbaa !3
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.e ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.fv, i64 %i.f ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gf = load i8, ptr %i.gd, align 1, !tbaa !57
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !77
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !3
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.e ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.ge, i64 %i.f ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !57
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !77
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.gs, ptr %i.gl, align 4, !tbaa !3
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.e ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gn, i64 %i.f ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !57
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !77
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %i.hb, ptr %i.gu, align 4, !tbaa !3
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.e
  %i.he = getelementptr inbounds i8, ptr %i.gw, i64 %i.f
  %i.hf = add i32 %.03644, -4                     ; 2 uses
  %.not.3 = icmp eq i32 %i.hf, 0
  br i1 %.not.3, label %._crit_edge47, label %.preheader

end_hunk_0
begin_hunk_1_@gtTileSeparate:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.da = load i32, ptr %i.br, align 8, !tbaa !49
  %.not224.us.peel = icmp eq i32 %i.da, 0
  br i1 %.not224.us.peel, label %bb.ag, label %._crit_edge315

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.db = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.dc = add i32 %i.db, %.0182312.us
  %i.dd = call i64 @TIFFReadTile(ptr noundef %i.d, ptr noundef %.2193254.us.peel, i32 noundef %i.cf, i32 noundef %i.dc, i32 noundef 0, i16 noundef zeroext 2) #11
  %i.de = icmp eq i64 %i.dd, -1
  br i1 %i.de, label %bb.ah, label %.critedge.us.peel

bb.ah:                                            ; preds = %bb.ag
  %i.df = load i32, ptr %i.br, align 8, !tbaa !49
  %.not225.us.peel = icmp eq i32 %i.df, 0
  br i1 %.not225.us.peel, label %.critedge.us.peel, label %._crit_edge315

.thread.us.peel:                                  ; preds = %bb.ad
  %i.dg = getelementptr inbounds i8, ptr %.pre, i64 %i.bs
  %i.dh = select i1 %.not, ptr null, ptr %i.dg
  br label %.critedge.us.peel

.critedge.us.peel:                                ; preds = %.thread.us.peel, %bb.ah, %bb.ag, %bb.z
  %.2247.us.peel = phi ptr [ %.pre, %.thread.us.peel ], [ %.0185310.us, %bb.z ], [ %.2256.us.peel, %bb.ah ], [ %.2256.us.peel, %bb.ag ] ; 3 uses
  %.2189246.us.peel = phi ptr [ %.pre, %.thread.us.peel ], [ %.0187309.us, %bb.z ], [ %.2189255.us.peel, %bb.ah ], [ %.2189255.us.peel, %bb.ag ] ; 3 uses
  %.2193245.us.peel = phi ptr [ %.pre, %.thread.us.peel ], [ %.0191308.us, %bb.z ], [ %.2193254.us.peel, %bb.ah ], [ %.2193254.us.peel, %bb.ag ] ; 3 uses
  %.2203244.us.peel = phi ptr [ %i.dh, %.thread.us.peel ], [ %.0201307.us, %bb.z ], [ %.2203253.us.peel, %bb.ah ], [ %.2203253.us.peel, %bb.ag ] ; 4 uses
  br i1 %.not, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.critedge.us.peel
  %i.di = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.dj = add i32 %i.di, %.0182312.us
  %i.dk = call i64 @TIFFReadTile(ptr noundef %i.d, ptr noundef %.2203244.us.peel, i32 noundef %i.cf, i32 noundef %i.dj, i32 noundef 0, i16 noundef zeroext %.0200) #11
  %i.dl = icmp eq i64 %i.dk, -1
  br i1 %i.dl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dm = load i32, ptr %i.br, align 8, !tbaa !49
  %.not226.us.peel = icmp eq i32 %i.dm, 0
  br i1 %.not226.us.peel, label %bb.ak, label %._crit_edge315

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.critedge.us.peel
  %i.dn = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.do = add i32 %i.dn, %.0182312.us
  %i.dp = load i32, ptr %i.b, align 4, !tbaa !3
  %i.dq = urem i32 %i.do, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = call i64 @TIFFTileRowSize(ptr noundef %i.d) #11
  %i.dt = mul nsw i64 %i.ds, %i.dr
  %i.du = add nsw i64 %i.dt, %i.bl                ; 4 uses
  %i.dv = load i32, ptr %i.a, align 4
  %i.dw = sub i32 %i.dv, %.                       ; 2 uses
  %i.dx = add nsw i32 %i.dw, %.0209
  %.1208.us.peel = select i1 %i.bu, i32 %i.dw, i32 %i.bi
  %.1196.us.peel = select i1 %i.bu, i32 %i.dx, i32 %i.bp
  %i.dy = getelementptr inbounds i8, ptr %.2247.us.peel, i64 %i.du
  %i.dz = getelementptr inbounds i8, ptr %.2189246.us.peel, i64 %i.du
  %i.ea = getelementptr inbounds i8, ptr %.2193245.us.peel, i64 %i.du
  %i.eb = getelementptr inbounds i8, ptr %.2203244.us.peel, i64 %i.du
  %i.ec = select i1 %.not, ptr null, ptr %i.eb
  call void %i.f(ptr noundef nonnull %0, ptr noundef %i.ci, i32 noundef 0, i32 noundef %.1184311.us, i32 noundef %.1199.us.peel, i32 noundef %i.ce, i32 noundef %.1208.us.peel, i32 noundef %.1196.us.peel, ptr noundef %i.dy, ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef %i.ec) #11
  br i1 %i.bv, label %.peel.next, label %._crit_edge.us

.peel.next:                                       ; preds = %bb.ak
  %i.ed = add i32 %i.cf, %.1199.us.peel
  br label %bb.al

bb.al:                                            ; preds = %.peel.next, %bb.az
  %.0181265.us = phi i32 [ %i.ed, %.peel.next ], [ %i.gf, %bb.az ] ; 6 uses
  %.1186264.us = phi ptr [ %.2247.us.peel, %.peel.next ], [ %.2247.us, %bb.az ] ; 3 uses
  %.1188263.us = phi ptr [ %.2189246.us.peel, %.peel.next ], [ %.2189246.us, %bb.az ] ; 2 uses
  %.1192262.us = phi ptr [ %.2193245.us.peel, %.peel.next ], [ %.2193245.us, %bb.az ] ; 2 uses
  %.0197260.us = phi i32 [ %.1199.us.peel, %.peel.next ], [ %i.ge, %bb.az ] ; 5 uses
  %.1202258.us = phi ptr [ %.2203244.us.peel, %.peel.next ], [ %.2203244.us, %bb.az ] ; 2 uses
  %.0198259.us = load i32, ptr %i.a, align 4, !tbaa !3 ; 2 uses
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ef = icmp eq ptr %i.ee, null
  %i.eg = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.eh = add i32 %i.eg, %.0182312.us             ; 2 uses
  br i1 %i.ef, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = call i64 @TIFFReadTile(ptr noundef %i.d, ptr noundef %.1186264.us, i32 noundef %.0181265.us, i32 noundef %i.eh, i32 noundef 0, i16 noundef zeroext 0) #11
  %i.ej = icmp eq i64 %i.ei, -1
  br i1 %i.ej, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ek = load i32, ptr %i.br, align 8, !tbaa !49
  %.not221.us = icmp eq i32 %i.ek, 0
  br i1 %.not221.us, label %bb.ao, label %._crit_edge315

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %i.bc, label %.critedge.us, label %bb.at

bb.ap:                                            ; preds = %bb.al
  %i.el = call i64 @_TIFFReadTileAndAllocBuffer(ptr noundef %i.d, ptr noundef nonnull %i.c, i64 noundef %i.r, i32 noundef %.0181265.us, i32 noundef %i.eh, i32 noundef 0, i16 noundef zeroext 0) #11
  %i.em = icmp eq i64 %i.el, -1
  %.pre332 = load ptr, ptr %i.c, align 8, !tbaa !71 ; 7 uses
  br i1 %i.em, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.en = icmp eq ptr %.pre332, null
  br i1 %i.en, label %._crit_edge315, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load i32, ptr %i.br, align 8, !tbaa !49
  %.not222.us = icmp eq i32 %i.eo, 0
  br i1 %.not222.us, label %bb.as, label %._crit_edge315

bb.as:                                            ; preds = %bb.ar, %bb.ap
  br i1 %i.bc, label %.thread.us, label %.thread248.us

.thread248.us:                                    ; preds = %bb.as
  %i.ep = getelementptr inbounds i8, ptr %.pre332, i64 %i.p ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.p ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.p
  %i.es = select i1 %.not, ptr null, ptr %i.er
  br label %bb.at

bb.at:                                            ; preds = %.thread248.us, %bb.ao
  %.2256.us = phi ptr [ %.pre332, %.thread248.us ], [ %.1186264.us, %bb.ao ] ; 2 uses
  %.2189255.us = phi ptr [ %i.ep, %.thread248.us ], [ %.1188263.us, %bb.ao ] ; 3 uses
  %.2193254.us = phi ptr [ %i.eq, %.thread248.us ], [ %.1192262.us, %bb.ao ] ; 3 uses
  %.2203253.us = phi ptr [ %i.es, %.thread248.us ], [ %.1202258.us, %bb.ao ] ; 2 uses
  %i.et = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.eu = add i32 %i.et, %.0182312.us
  %i.ev = call i64 @TIFFReadTile(ptr noundef %i.d, ptr noundef %.2189255.us, i32 noundef %.0181265.us, i32 noundef %i.eu, i32 noundef 0, i16 noundef zeroext 1) #11
  %i.ew = icmp eq i64 %i.ev, -1
  br i1 %i.ew, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ex = load i32, ptr %i.br, align 8, !tbaa !49
  %.not224.us = icmp eq i32 %i.ex, 0
  br i1 %.not224.us, label %bb.av, label %._crit_edge315

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ey = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.ez = add i32 %i.ey, %.0182312.us
  %i.fa = call i64 @TIFFReadTile(ptr noundef %i.d, ptr noundef %.2193254.us, i32 noundef %.0181265.us, i32 noundef %i.ez, i32 noundef 0, i16 noundef zeroext 2) #11
  %i.fb = icmp eq i64 %i.fa, -1
  br i1 %i.fb, label %bb.aw, label %.critedge.us

bb.aw:                                            ; preds = %bb.av
  %i.fc = load i32, ptr %i.br, align 8, !tbaa !49
  %.not225.us = icmp eq i32 %i.fc, 0
  br i1 %.not225.us, label %.critedge.us, label %._crit_edge315

.thread.us:                                       ; preds = %bb.as
  %i.fd = getelementptr inbounds i8, ptr %.pre332, i64 %i.bs
  %i.fe = select i1 %.not, ptr null, ptr %i.fd
  br label %.critedge.us

.critedge.us:                                     ; preds = %.thread.us, %bb.aw, %bb.av, %bb.ao
  %.2247.us = phi ptr [ %.pre332, %.thread.us ], [ %.1186264.us, %bb.ao ], [ %.2256.us, %bb.aw ], [ %.2256.us, %bb.av ] ; 3 uses
  %.2189246.us = phi ptr [ %.pre332, %.thread.us ], [ %.1188263.us, %bb.ao ], [ %.2189255.us, %bb.aw ], [ %.2189255.us, %bb.av ] ; 3 uses
  %.2193245.us = phi ptr [ %.pre332, %.thread.us ], [ %.1192262.us, %bb.ao ], [ %.2193254.us, %bb.aw ], [ %.2193254.us, %bb.av ] ; 3 uses
  %.2203244.us = phi ptr [ %i.fe, %.thread.us ], [ %.1202258.us, %bb.ao ], [ %.2203253.us, %bb.aw ], [ %.2203253.us, %bb.av ] ; 4 uses
  br i1 %.not, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.critedge.us
  %i.ff = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.fg = add i32 %i.ff, %.0182312.us
  %i.fh = call i64 @TIFFReadTile(ptr noundef %i.d, ptr noundef %.2203244.us, i32 noundef %.0181265.us, i32 noundef %i.fg, i32 noundef 0, i16 noundef zeroext %.0200) #11
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fj = load i32, ptr %i.br, align 8, !tbaa !49
  %.not226.us = icmp eq i32 %i.fj, 0
  br i1 %.not226.us, label %bb.az, label %._crit_edge315

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.critedge.us
  %i.fk = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.fl = add i32 %i.fk, %.0182312.us
  %i.fm = load i32, ptr %i.b, align 4, !tbaa !3
  %i.fn = urem i32 %i.fl, %i.fm
  %i.fo = zext i32 %i.fn to i64
  %i.fp = call i64 @TIFFTileRowSize(ptr noundef %i.d) #11
  %i.fq = mul nsw i64 %i.fp, %i.fo                ; 4 uses
  %i.fr = add i32 %.0197260.us, %.0198259.us
  %i.fs = icmp ugt i32 %i.fr, %.                  ; 3 uses
  %i.ft = load i32, ptr %i.a, align 4
  %i.fu = sub i32 %., %.0197260.us                ; 2 uses
  %i.fv = sub i32 %i.ft, %i.fu                    ; 2 uses
  %.1208.us = select i1 %i.fs, i32 %i.fv, i32 0
  %.1199.us = select i1 %i.fs, i32 %i.fu, i32 %.0198259.us ; 3 uses
  %i.fw = select i1 %i.fs, i32 %i.fv, i32 0
  %.1196.us = add nsw i32 %.0209, %i.fw
  %i.fx = zext i32 %.0197260.us to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.fx
  %i.fz = getelementptr inbounds i8, ptr %.2247.us, i64 %i.fq
  %i.ga = getelementptr inbounds i8, ptr %.2189246.us, i64 %i.fq
  %i.gb = getelementptr inbounds i8, ptr %.2193245.us, i64 %i.fq
  %i.gc = getelementptr inbounds i8, ptr %.2203244.us, i64 %i.fq
  %i.gd = select i1 %.not, ptr null, ptr %i.gc
  call void %i.f(ptr noundef nonnull %0, ptr noundef %i.fy, i32 noundef %.0197260.us, i32 noundef %.1184311.us, i32 noundef %.1199.us, i32 noundef %i.ce, i32 noundef %.1208.us, i32 noundef %.1196.us, ptr noundef %i.fz, ptr noundef %i.ga, ptr noundef %i.gb, ptr noundef %i.gd) #11
  %i.ge = add i32 %.1199.us, %.0197260.us         ; 2 uses
  %i.gf = add i32 %.0181265.us, %.1199.us
  %i.gg = icmp ult i32 %i.ge, %.
  br i1 %i.gg, label %bb.al, label %._crit_edge.us, !llvm.loop !97

._crit_edge.us:                                   ; preds = %bb.az, %bb.ak
  %.3204.us = phi ptr [ %.2203244.us.peel, %bb.ak ], [ %.2203244.us, %bb.az ]
  %.3194.us = phi ptr [ %.2193245.us.peel, %bb.ak ], [ %.2193245.us, %bb.az ]
  %.3190.us = phi ptr [ %.2189246.us.peel, %bb.ak ], [ %.2189246.us, %bb.az ]
  %.3.us = phi ptr [ %.2247.us.peel, %bb.ak ], [ %.2247.us, %bb.az ]
  %i.gh = sub nsw i32 0, %i.ce
  %i.gi = select i1 %.not219231, i32 %i.ce, i32 %i.gh
  %i.gj = add i32 %i.gi, %.1184311.us
  %i.gk = add i32 %i.ce, %.0182312.us             ; 2 uses
  %i.gl = icmp ult i32 %i.gk, %3
  br i1 %i.gl, label %.lr.ph.us, label %._crit_edge315

.lr.ph314.split:                                  ; preds = %.lr.ph314
  %i.gm = load i32, ptr %i.bq, align 8, !tbaa !67 ; 2 uses
  br i1 %.not219231, label %.lr.ph314.split.split.us, label %.lr.ph314.split.split

.lr.ph314.split.split.us:                         ; preds = %.lr.ph314.split, %.lr.ph314.split.split.us
  %.0182312.us316 = phi i32 [ %i.gu, %.lr.ph314.split.split.us ], [ 0, %.lr.ph314.split ] ; 4 uses
  %i.gn = add i32 %i.gm, %.0182312.us316
  %i.go = urem i32 %i.gn, %i.be
  %i.gp = sub i32 %i.be, %i.go                    ; 2 uses
  %i.gq = add i32 %i.gp, %.0182312.us316
  %i.gr = icmp ugt i32 %i.gq, %3
  %i.gs = sub nuw i32 %3, %.0182312.us316
  %i.gt = select i1 %i.gr, i32 %i.gs, i32 %i.gp
  %i.gu = add i32 %i.gt, %.0182312.us316          ; 2 uses
  %i.gv = icmp ult i32 %i.gu, %3
  br i1 %i.gv, label %.lr.ph314.split.split.us, label %._crit_edge315

.lr.ph314.split.split:                            ; preds = %.lr.ph314.split, %.lr.ph314.split.split
  %.0182312 = phi i32 [ %i.hd, %.lr.ph314.split.split ], [ 0, %.lr.ph314.split ] ; 4 uses
  %i.gw = add i32 %i.gm, %.0182312
  %i.gx = urem i32 %i.gw, %i.be
  %i.gy = sub i32 %i.be, %i.gx                    ; 2 uses
  %i.gz = add i32 %i.gy, %.0182312
  %i.ha = icmp ugt i32 %i.gz, %3
  %i.hb = sub nuw i32 %3, %.0182312
  %i.hc = select i1 %i.ha, i32 %i.hb, i32 %i.gy
  %i.hd = add i32 %i.hc, %.0182312                ; 2 uses
  %i.he = icmp ult i32 %i.hd, %3
  br i1 %i.he, label %.lr.ph314.split.split, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ac, %bb.ab, %bb.y, %._crit_edge.us, %bb.ar, %bb.au, %bb.aw, %bb.ay, %bb.an, %bb.aq, %.lr.ph314.split.split, %.lr.ph314.split.split.us
  %.0205.lcssa = phi i32 [ 1, %.lr.ph314.split.split.us ], [ 1, %.lr.ph314.split.split ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ay ], [ 0, %bb.aw ], [ 0, %bb.au ], [ 0, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 1, %._crit_edge.us ], [ 0, %bb.y ] ; 4 uses
  %.not220 = icmp samesign ugt i32 %.0.i229, 1
  br i1 %.not220, label %.lr.ph324, label %.loopexit

.lr.ph324:                                        ; preds = %._crit_edge315
  %i.hf = zext i32 %. to i64
  %wide.trip.count = zext i32 %3 to i64           ; 2 uses
  %i.hg = icmp ugt i32 %., 1                      ; 3 uses
  %.idx = shl nuw nsw i64 %i.hf, 2                ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hh = icmp eq i32 %3, 1
  br i1 %i.hh, label %.epil.preheader, label %.lr.ph324.new

.lr.ph324.new:                                    ; preds = %.lr.ph324
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.1, %.lr.ph324.new
  %indvars.iv = phi i64 [ 0, %.lr.ph324.new ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph324.new ], [ %niter.next.1, %._crit_edge.1 ]
  br i1 %i.hg, label %.lr.ph.preheader, label %._crit_edge.1

.lr.ph.preheader:                                 ; preds = %bb.ba
  %i.hi = trunc nuw i64 %indvars.iv to i32
  %i.hj = mul i32 %2, %i.hi
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hk ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 %.idx
  %.0178320 = getelementptr i8, ptr %i.hm, i64 -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0178322 = phi ptr [ %.0178, %.lr.ph ], [ %.0178320, %.lr.ph.preheader ] ; 3 uses
  %.0179321 = phi ptr [ %i.hp, %.lr.ph ], [ %i.hl, %.lr.ph.preheader ] ; 3 uses
  %i.hn = load i32, ptr %.0179321, align 4, !tbaa !3
  %i.ho = load i32, ptr %.0178322, align 4, !tbaa !3
  store i32 %i.ho, ptr %.0179321, align 4, !tbaa !3
  store i32 %i.hn, ptr %.0178322, align 4, !tbaa !3
  %i.hp = getelementptr inbounds nuw i8, ptr %.0179321, i64 4 ; 2 uses
  %.0178 = getelementptr inbounds i8, ptr %.0178322, i64 -4 ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %.0178
  br i1 %i.hq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.hg, label %.lr.ph.preheader.1, label %._crit_edge.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.hr = trunc i64 %indvars.iv to i32
  %i.hs = or disjoint i32 %i.hr, 1
  %i.ht = mul i32 %2, %i.hs
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hu ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 %.idx
  %.0178320.1 = getelementptr i8, ptr %i.hw, i64 -4
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.0178322.1 = phi ptr [ %.0178.1, %.lr.ph.1 ], [ %.0178320.1, %.lr.ph.preheader.1 ] ; 3 uses
  %.0179321.1 = phi ptr [ %i.hz, %.lr.ph.1 ], [ %i.hv, %.lr.ph.preheader.1 ] ; 3 uses
  %i.hx = load i32, ptr %.0179321.1, align 4, !tbaa !3
  %i.hy = load i32, ptr %.0178322.1, align 4, !tbaa !3
  store i32 %i.hy, ptr %.0179321.1, align 4, !tbaa !3
  store i32 %i.hx, ptr %.0178322.1, align 4, !tbaa !3
  %i.hz = getelementptr inbounds nuw i8, ptr %.0179321.1, i64 4 ; 2 uses
  %.0178.1 = getelementptr inbounds i8, ptr %.0178322.1, i64 -4 ; 2 uses
  %i.ia = icmp ult ptr %i.hz, %.0178.1
  br i1 %i.ia, label %.lr.ph.1, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.ba, %.lr.ph.1, %._crit_edge
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ba

.loopexit.loopexit.unr-lcssa:                     ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph324
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod364 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod364)
  br i1 %i.hg, label %.lr.ph.preheader.epil, label %.loopexit

.lr.ph.preheader.epil:                            ; preds = %.epil.preheader
  %i.ib = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ic = mul i32 %2, %i.ib
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.id ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 %.idx
  %.0178320.epil = getelementptr i8, ptr %i.if, i64 -4
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.preheader.epil
  %.0178322.epil = phi ptr [ %.0178.epil, %.lr.ph.epil ], [ %.0178320.epil, %.lr.ph.preheader.epil ] ; 3 uses
  %.0179321.epil = phi ptr [ %i.ii, %.lr.ph.epil ], [ %i.ie, %.lr.ph.preheader.epil ] ; 3 uses
  %i.ig = load i32, ptr %.0179321.epil, align 4, !tbaa !3
  %i.ih = load i32, ptr %.0178322.epil, align 4, !tbaa !3
  store i32 %i.ih, ptr %.0179321.epil, align 4, !tbaa !3
  store i32 %i.ig, ptr %.0178322.epil, align 4, !tbaa !3
  %i.ii = getelementptr inbounds nuw i8, ptr %.0179321.epil, i64 4 ; 2 uses
  %.0178.epil = getelementptr inbounds i8, ptr %.0178322.epil, i64 -4 ; 2 uses
  %i.ij = icmp ult ptr %i.ii, %.0178.epil
  br i1 %i.ij, label %.lr.ph.epil, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %bb.w, %._crit_edge315
  %.0205.lcssa350 = phi i32 [ 1, %bb.w ], [ %.0205.lcssa, %._crit_edge315 ], [ %.0205.lcssa, %.epil.preheader ], [ %.0205.lcssa, %.lr.ph.epil ], [ %.0205.lcssa, %.loopexit.loopexit.unr-lcssa ]
  %i.ik = load ptr, ptr %0, align 8, !tbaa !38
  %i.il = load ptr, ptr %i.c, align 8, !tbaa !71
  call void @_TIFFfreeExt(ptr noundef %i.ik, ptr noundef %i.il) #11
  br label %bb.bb

bb.bb:                                            ; preds = %bb.v, %.loopexit, %bb.c, %bb.t, %bb.q, %bb.n, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.n ], [ 0, %bb.t ], [ 0, %bb.c ], [ 0, %bb.q ], [ 0, %bb.v ], [ %.0205.lcssa350, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @gtStripSeparate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69   ; 3 uses
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = icmp ult i32 %i.i, %i.g
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %i.n = sub nuw i32 %i.g, %i.i
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.n) ; 5 uses
  %i.o = tail call i64 @TIFFStripSize(ptr noundef %i.c) #11 ; 5 uses
  %.not = icmp eq i32 %i.m, 0                     ; 5 uses
  %i.p = select i1 %.not, i64 3, i64 4
  %i.q = tail call i64 @_TIFFMultiplySSize(ptr noundef %i.c, i64 noundef %i.p, i64 noundef %i.o, ptr noundef nonnull @.str.60) #11 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.ak, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = tail call ptr @TIFFFileName(ptr noundef %i.c) #11
  %i.t = load i32, ptr %i.h, align 4, !tbaa !69
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.c, ptr noundef %i.s, ptr noundef nonnull @.str.59, i32 noundef %i.t, i32 noundef %i.g) #11
end_hunk_1
begin_hunk_2_@putRGBseparate16bittile:bb.a
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod64 = trunc i32 %4 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.043 = phi ptr [ %10, %.preheader.lr.ph.split ], [ %i.cb, %._crit_edge ] ; 2 uses
  %.02242 = phi ptr [ %9, %.preheader.lr.ph.split ], [ %i.ca, %._crit_edge ] ; 2 uses
  %.02441 = phi ptr [ %8, %.preheader.lr.ph.split ], [ %i.bz, %._crit_edge ] ; 2 uses
  %.02640 = phi ptr [ %1, %.preheader.lr.ph.split ], [ %i.cc, %._crit_edge ] ; 2 uses
  %.02939 = phi i32 [ %5, %.preheader.lr.ph.split ], [ %i.cd, %._crit_edge ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.134 = phi ptr [ %i.aq, %.preheader.new ], [ %.043, %.preheader ] ; 3 uses
  %.12333 = phi ptr [ %i.aj, %.preheader.new ], [ %.02242, %.preheader ] ; 3 uses
  %.12532 = phi ptr [ %i.ad, %.preheader.new ], [ %.02441, %.preheader ] ; 3 uses
  %.12731 = phi ptr [ %i.ba, %.preheader.new ], [ %.02640, %.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.12532, i64 2
  %i.g = load i16, ptr %.12532, align 2, !tbaa !31
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !57
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %.12333, i64 2
  %i.m = load i16, ptr %.12333, align 2, !tbaa !31
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !57
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %.134, i64 2
  %i.t = load i16, ptr %.134, align 2, !tbaa !31
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %i.z = or disjoint i32 %i.r, %i.k
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = or disjoint i32 %i.aa, -16777216
  %i.ac = getelementptr inbounds nuw i8, ptr %.12731, i64 4
  store i32 %i.ab, ptr %.12731, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.12532, i64 4 ; 3 uses
  %i.ae = load i16, ptr %i.f, align 2, !tbaa !31
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !57
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.12333, i64 4 ; 3 uses
  %i.ak = load i16, ptr %i.l, align 2, !tbaa !31
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !57
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.134, i64 4 ; 3 uses
  %i.ar = load i16, ptr %i.s, align 2, !tbaa !31
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !57
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.ap, %i.ai
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = or disjoint i32 %i.ay, -16777216
  %i.ba = getelementptr inbounds nuw i8, ptr %.12731, i64 8 ; 3 uses
  store i32 %i.az, ptr %i.ac, align 4, !tbaa !3
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.134.epil.init = phi ptr [ %.043, %.preheader ], [ %i.aq, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12333.epil.init = phi ptr [ %.02242, %.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12532.epil.init = phi ptr [ %.02441, %.preheader ], [ %i.ad, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12731.epil.init = phi ptr [ %.02640, %.preheader ], [ %i.ba, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bb = getelementptr inbounds nuw i8, ptr %.12532.epil.init, i64 2
  %i.bc = load i16, ptr %.12532.epil.init, align 2, !tbaa !31
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !57
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.12333.epil.init, i64 2
  %i.bi = load i16, ptr %.12333.epil.init, align 2, !tbaa !31
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !57
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.134.epil.init, i64 2
  %i.bp = load i16, ptr %.134.epil.init, align 2, !tbaa !31
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !57
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = or disjoint i32 %i.bn, %i.bg
  %i.bw = or disjoint i32 %i.bv, %i.bu
  %i.bx = or disjoint i32 %i.bw, -16777216
  %i.by = getelementptr inbounds nuw i8, ptr %.12731.epil.init, i64 4
  store i32 %i.bx, ptr %.12731.epil.init, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa59 = phi ptr [ %i.ad, %._crit_edge.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %.lcssa58 = phi ptr [ %i.aj, %._crit_edge.unr-lcssa ], [ %i.bh, %.epil.preheader ]
  %.lcssa57 = phi ptr [ %i.aq, %._crit_edge.unr-lcssa ], [ %i.bo, %.epil.preheader ]
  %.lcssa = phi ptr [ %i.ba, %._crit_edge.unr-lcssa ], [ %i.by, %.epil.preheader ]
  %i.bz = getelementptr inbounds [2 x i8], ptr %.lcssa59, i64 %i.a
  %i.ca = getelementptr inbounds [2 x i8], ptr %.lcssa58, i64 %i.a
  %i.cb = getelementptr inbounds [2 x i8], ptr %.lcssa57, i64 %i.a
  %i.cc = getelementptr inbounds [4 x i8], ptr %.lcssa, i64 %i.b
  %i.cd = add i32 %.02939, -1                     ; 2 uses
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %._crit_edge44.split, label %.preheader

._crit_edge44.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @putCMYKseparate8bittile(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11) #7 {
bb.a:
  %.not51 = icmp eq i32 %5, 0
  br i1 %.not51, label %._crit_edge58.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3540 = icmp eq i32 %4, 0
  %i.a = sext i32 %6 to i64                       ; 4 uses
  %i.b = sext i32 %7 to i64
  br i1 %.not3540, label %._crit_edge58.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = add i32 %4, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = zext i32 %4 to i64                       ; 4 uses
  %i.g = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %i.g, 4294967292               ; 8 uses
  %i.h = shl nuw nsw i64 %n.vec, 2
  %i.i = trunc nuw i64 %n.vec to i32
  %i.j = sub i32 %4, %i.i
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.057 = phi ptr [ %i.by, %._crit_edge ], [ %1, %.preheader.preheader ] ; 9 uses
  %.02656 = phi i32 [ %i.bz, %._crit_edge ], [ %5, %.preheader.preheader ]
  %.02755 = phi ptr [ %i.bu, %._crit_edge ], [ %8, %.preheader.preheader ] ; 6 uses
  %.02954 = phi ptr [ %i.bx, %._crit_edge ], [ %11, %.preheader.preheader ] ; 6 uses
  %.03153 = phi ptr [ %i.bw, %._crit_edge ], [ %10, %.preheader.preheader ] ; 6 uses
  %.03352 = phi ptr [ %i.bv, %._crit_edge ], [ %9, %.preheader.preheader ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.k = getelementptr i8, ptr %.057, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.k, i64 4    ; 4 uses
  %scevgep73 = getelementptr i8, ptr %.02954, i64 %i.f
  %scevgep74 = getelementptr i8, ptr %.02755, i64 %i.f
  %scevgep75 = getelementptr i8, ptr %.03352, i64 %i.f
  %scevgep76 = getelementptr i8, ptr %.03153, i64 %i.f
  %bound0 = icmp ult ptr %.057, %scevgep73
  %bound1 = icmp ult ptr %.02954, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %.057, %scevgep74
  %bound178 = icmp ult ptr %.02755, %scevgep
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  %bound080 = icmp ult ptr %.057, %scevgep75
  %bound181 = icmp ult ptr %.03352, %scevgep
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx, %found.conflict82
  %bound084 = icmp ult ptr %.057, %scevgep76
  %bound185 = icmp ult ptr %.03153, %scevgep
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %conflict.rdx83, %found.conflict86
  br i1 %conflict.rdx87, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = getelementptr i8, ptr %.057, i64 %i.h    ; 2 uses
  %i.m = getelementptr i8, ptr %.02755, i64 %n.vec ; 2 uses
  %i.n = getelementptr i8, ptr %.02954, i64 %n.vec ; 2 uses
  %i.o = getelementptr i8, ptr %.03153, i64 %n.vec ; 2 uses
  %i.p = getelementptr i8, ptr %.03352, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.057, i64 %i.q
  %next.gep88 = getelementptr i8, ptr %.02755, i64 %index
  %next.gep89 = getelementptr i8, ptr %.02954, i64 %index
  %next.gep90 = getelementptr i8, ptr %.03153, i64 %index
  %next.gep91 = getelementptr i8, ptr %.03352, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep89, align 1, !tbaa !57, !alias.scope !98
  %i.r = xor <4 x i8> %wide.load, splat (i8 -1)
  %i.s = zext <4 x i8> %i.r to <4 x i32>          ; 3 uses
  %wide.load92 = load <4 x i8>, ptr %next.gep88, align 1, !tbaa !57, !alias.scope !101
  %i.t = xor <4 x i8> %wide.load92, splat (i8 -1)
  %i.u = zext <4 x i8> %i.t to <4 x i32>
  %i.v = mul nuw nsw <4 x i32> %i.u, %i.s
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i16>
  %i.x = udiv <4 x i16> %i.w, splat (i16 255)
  %i.y = zext nneg <4 x i16> %i.x to <4 x i32>
  %wide.load93 = load <4 x i8>, ptr %next.gep91, align 1, !tbaa !57, !alias.scope !103
  %i.z = xor <4 x i8> %wide.load93, splat (i8 -1)
  %i.aa = zext <4 x i8> %i.z to <4 x i32>
  %i.ab = mul nuw nsw <4 x i32> %i.aa, %i.s
  %i.ac = trunc nuw <4 x i32> %i.ab to <4 x i16>
  %i.ad = udiv <4 x i16> %i.ac, splat (i16 255)
  %i.ae = zext nneg <4 x i16> %i.ad to <4 x i32>
  %wide.load94 = load <4 x i8>, ptr %next.gep90, align 1, !tbaa !57, !alias.scope !105
  %i.af = xor <4 x i8> %wide.load94, splat (i8 -1)
  %i.ag = zext <4 x i8> %i.af to <4 x i32>
  %i.ah = mul nuw nsw <4 x i32> %i.ag, %i.s
  %i.ai = trunc nuw <4 x i32> %i.ah to <4 x i16>
  %i.aj = udiv <4 x i16> %i.ai, splat (i16 255)
  %i.ak = zext nneg <4 x i16> %i.aj to <4 x i32>
  %i.al = shl nuw nsw <4 x i32> %i.ae, splat (i32 8)
  %i.am = shl nuw nsw <4 x i32> %i.ak, splat (i32 16)
  %i.an = or <4 x i32> %i.al, %i.y
  %i.ao = or <4 x i32> %i.an, %i.am
  %i.ap = or <4 x i32> %i.ao, splat (i32 -16777216)
  store <4 x i32> %i.ap, ptr %next.gep, align 4, !tbaa !3, !alias.scope !107, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.146.ph = phi ptr [ %.057, %vector.memcheck ], [ %.057, %.preheader ], [ %i.l, %middle.block ]
  %.02545.ph = phi i32 [ %4, %vector.memcheck ], [ %4, %.preheader ], [ %i.j, %middle.block ]
  %.12844.ph = phi ptr [ %.02755, %vector.memcheck ], [ %.02755, %.preheader ], [ %i.m, %middle.block ]
  %.13043.ph = phi ptr [ %.02954, %vector.memcheck ], [ %.02954, %.preheader ], [ %i.n, %middle.block ]
  %.13242.ph = phi ptr [ %.03153, %vector.memcheck ], [ %.03153, %.preheader ], [ %i.o, %middle.block ]
  %.13441.ph = phi ptr [ %.03352, %vector.memcheck ], [ %.03352, %.preheader ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.146 = phi ptr [ %i.bs, %scalar.ph ], [ %.146.ph, %scalar.ph.preheader ] ; 2 uses
  %.02545 = phi i32 [ %i.bt, %scalar.ph ], [ %.02545.ph, %scalar.ph.preheader ]
  %.12844 = phi ptr [ %i.av, %scalar.ph ], [ %.12844.ph, %scalar.ph.preheader ] ; 2 uses
  %.13043 = phi ptr [ %i.ar, %scalar.ph ], [ %.13043.ph, %scalar.ph.preheader ] ; 2 uses
  %.13242 = phi ptr [ %i.bh, %scalar.ph ], [ %.13242.ph, %scalar.ph.preheader ] ; 2 uses
  %.13441 = phi ptr [ %i.bb, %scalar.ph ], [ %.13441.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.13043, i64 1 ; 2 uses
  %i.as = load i8, ptr %.13043, align 1, !tbaa !57
  %i.at = xor i8 %i.as, -1
  %i.au = zext i8 %i.at to i32                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.12844, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.12844, align 1, !tbaa !57
  %i.ax = xor i8 %i.aw, -1
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul nuw nsw i32 %i.ay, %i.au
  %.lhs.trunc = trunc nuw i32 %i.az to i16
  %i.ba = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.ba to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.13441, i64 1 ; 2 uses
  %i.bc = load i8, ptr %.13441, align 1, !tbaa !57
  %i.bd = xor i8 %i.bc, -1
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nuw nsw i32 %i.be, %i.au
  %.lhs.trunc36 = trunc nuw i32 %i.bf to i16
  %i.bg = udiv i16 %.lhs.trunc36, 255
  %.zext37 = zext nneg i16 %i.bg to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.13242, i64 1 ; 2 uses
  %i.bi = load i8, ptr %.13242, align 1, !tbaa !57
  %i.bj = xor i8 %i.bi, -1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bk, %i.au
  %.lhs.trunc38 = trunc nuw i32 %i.bl to i16
  %i.bm = udiv i16 %.lhs.trunc38, 255
  %.zext39 = zext nneg i16 %i.bm to i32
  %i.bn = shl nuw nsw i32 %.zext37, 8
  %i.bo = shl nuw nsw i32 %.zext39, 16
  %i.bp = or i32 %i.bn, %.zext
  %i.bq = or i32 %i.bp, %i.bo
  %i.br = or i32 %i.bq, -16777216
  %i.bs = getelementptr inbounds nuw i8, ptr %.146, i64 4 ; 2 uses
  store i32 %i.br, ptr %.146, align 4, !tbaa !3
  %i.bt = add i32 %.02545, -1                     ; 2 uses
  %.not35 = icmp eq i32 %i.bt, 0
  br i1 %.not35, label %._crit_edge, label %scalar.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa72 = phi ptr [ %i.n, %middle.block ], [ %i.ar, %scalar.ph ]
  %.lcssa71 = phi ptr [ %i.m, %middle.block ], [ %i.av, %scalar.ph ]
  %.lcssa70 = phi ptr [ %i.p, %middle.block ], [ %i.bb, %scalar.ph ]
  %.lcssa69 = phi ptr [ %i.o, %middle.block ], [ %i.bh, %scalar.ph ]
  %.lcssa = phi ptr [ %i.l, %middle.block ], [ %i.bs, %scalar.ph ]
  %i.bu = getelementptr inbounds i8, ptr %.lcssa71, i64 %i.a
  %i.bv = getelementptr inbounds i8, ptr %.lcssa70, i64 %i.a
  %i.bw = getelementptr inbounds i8, ptr %.lcssa69, i64 %i.a
  %i.bx = getelementptr inbounds i8, ptr %.lcssa72, i64 %i.a
  %i.by = getelementptr inbounds [4 x i8], ptr %.lcssa, i64 %i.b
  %i.bz = add i32 %.02656, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %._crit_edge58.split, label %.preheader

._crit_edge58.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @putseparate8bitYCbCr11tile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree readnone captures(none) %11) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %.not28 = icmp eq i32 %5, 0
  br i1 %.not28, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = sext i32 %6 to i64                       ; 3 uses
  %i.f = sext i32 %7 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.c
  %.033 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.ad, %bb.c ]
  %.01632 = phi ptr [ %10, %.preheader.lr.ph ], [ %i.ac, %bb.c ]
  %.01831 = phi ptr [ %9, %.preheader.lr.ph ], [ %i.ab, %bb.c ]
  %.02030 = phi ptr [ %8, %.preheader.lr.ph ], [ %i.aa, %bb.c ]
  %.02329 = phi i32 [ %5, %.preheader.lr.ph ], [ %i.ae, %bb.c ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.022 = phi i32 [ %i.z, %bb.b ], [ %4, %.preheader ]
  %.121 = phi ptr [ %i.h, %bb.b ], [ %.02030, %.preheader ] ; 2 uses
  %.119 = phi ptr [ %i.k, %bb.b ], [ %.01831, %.preheader ] ; 2 uses
  %.117 = phi ptr [ %i.n, %bb.b ], [ %.01632, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.y, %bb.b ], [ %.033, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.121, i64 1 ; 2 uses
  %i.i = load i8, ptr %.121, align 1, !tbaa !57
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %.119, i64 1 ; 2 uses
  %i.l = load i8, ptr %.119, align 1, !tbaa !57
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.117, i64 1 ; 2 uses
  %i.o = load i8, ptr %.117, align 1, !tbaa !57
  %i.p = zext i8 %i.o to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.g, i32 noundef %i.j, i32 noundef %i.m, i32 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.q = load i32, ptr %i.a, align 4, !tbaa !3
  %i.r = load i32, ptr %i.b, align 4, !tbaa !3
  %i.s = shl i32 %i.r, 8
  %i.t = load i32, ptr %i.c, align 4, !tbaa !3
  %i.u = shl i32 %i.t, 16
  %i.v = or i32 %i.q, %i.s
  %i.w = or i32 %i.v, %i.u
  %i.x = or i32 %i.w, -16777216
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  store i32 %i.x, ptr %.1, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.z = add i32 %.022, -1                        ; 2 uses
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.h, i64 %i.e
  %i.ab = getelementptr inbounds i8, ptr %i.k, i64 %i.e
  %i.ac = getelementptr inbounds i8, ptr %i.n, i64 %i.e
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.ae = add i32 %.02329, -1                     ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

declare i64 @_TIFFMultiplySSize(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @TIFFReadTile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i64 @TIFFReadEncodedStrip(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 920}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!13, !14, i64 44}
!28 = !{!13, !14, i64 46}
!29 = !{!13, !14, i64 58}
!30 = !{!13, !14, i64 140}
!31 = !{!14, !14, i64 0}
!32 = !{!13, !14, i64 98}
!33 = !{!13, !14, i64 48}
!34 = !{!35, !9, i64 80}
!35 = !{!"_TIFFRGBAImage", !36, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !14, i64 28, !14, i64 30, !14, i64 32, !14, i64 34, !14, i64 36, !17, i64 40, !17, i64 48, !17, i64 56, !10, i64 64, !5, i64 72, !9, i64 80, !37, i64 88, !37, i64 96, !10, i64 104, !10, i64 112, !9, i64 120, !9, i64 128, !4, i64 136, !4, i64 140}
!36 = !{!"p1 _ZTS4tiff", !10, i64 0}
!37 = !{!"p2 int", !22, i64 0}
!38 = !{!35, !36, i64 0}
!39 = !{!35, !37, i64 88}
!40 = !{!35, !37, i64 96}
!41 = !{!35, !10, i64 104}
!42 = !{!35, !10, i64 112}
!43 = !{!35, !9, i64 120}
!44 = !{!35, !9, i64 128}
!45 = !{!35, !17, i64 40}
!46 = !{!35, !17, i64 48}
!47 = !{!35, !17, i64 56}
!48 = !{!35, !14, i64 34}
!49 = !{!35, !4, i64 8}
!50 = !{!35, !14, i64 28}
!51 = !{!35, !4, i64 16}
!52 = !{!17, !17, i64 0}
!53 = !{!35, !14, i64 30}
!54 = !{!35, !14, i64 36}
!55 = !{!35, !4, i64 12}
!56 = !{!35, !10, i64 64}
!57 = !{!5, !5, i64 0}
!58 = !{!20, !20, i64 0}
!59 = !{!16, !16, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = distinct !{!63, !61, !62}
!64 = distinct !{!64, !61, !62}
!65 = distinct !{!65, !61, !62}
!66 = distinct !{!66, !61, !62}
!67 = !{!35, !4, i64 136}
!68 = !{!35, !4, i64 24}
!69 = !{!35, !4, i64 140}
!70 = !{!35, !4, i64 20}
!71 = !{!9, !9, i64 0}
!72 = !{!35, !14, i64 32}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.peeled.count", i32 1}
!75 = distinct !{!75, !61, !62}
!76 = distinct !{!76, !61, !62}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 int", !10, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = !{!83}
!86 = !{!84}
!87 = distinct !{!87, !61, !62}
!88 = distinct !{!88, !61}
!89 = distinct !{!89, !61, !62}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !91}
!96 = distinct !{!96, !91}
!97 = distinct !{!97, !74}
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !{!102}
!102 = distinct !{!102, !100}
!103 = !{!104}
!104 = distinct !{!104, !100}
!105 = !{!106}
!106 = distinct !{!106, !100}
!107 = !{!108}
!108 = distinct !{!108, !100}
!109 = !{!99, !102, !104, !106}
!110 = distinct !{!110, !61, !62}
!111 = distinct !{!111, !61}
end_hunk_2
