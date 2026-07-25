begin_hunk_0_@PackBitsEncode:bb.a
  %i.m = load i8, ptr %.1104.lcssa237, align 1, !tbaa !36 ; 2 uses
  %.1104132.jt2 = getelementptr inbounds nuw i8, ptr %.1104.lcssa237, i64 1 ; 2 uses
  %.not293 = icmp eq i64 %.197.lcssa252, 1
  br i1 %.not293, label %.outer.jt2, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.ad
  %i.n = load i8, ptr %.1104.lcssa236, align 1, !tbaa !36 ; 2 uses
  %.1104132.jt1 = getelementptr inbounds nuw i8, ptr %.1104.lcssa236, i64 1 ; 2 uses
  %.not292 = icmp eq i64 %.197.lcssa251, 1
  br i1 %.not292, label %.outer.split.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.1104132222 = phi ptr [ %.1104132.jt3, %bb.c ], [ %.1104132.jt2, %bb.d ], [ %.1104132.jt1, %bb.e ], [ %.1104132, %bb.b ]
  %i.o = phi i8 [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.j, %bb.b ] ; 2 uses
  %.0103157221 = phi ptr [ %.1104.lcssa234, %bb.c ], [ %.1104.lcssa237, %bb.d ], [ %.1104.lcssa236, %bb.e ], [ %.0103157, %bb.b ]
  %.098158219 = phi ptr [ %i.fa, %bb.c ], [ %i.ff, %bb.d ], [ %i.fi, %bb.e ], [ %.098158, %bb.b ]
  %.096159218 = phi i64 [ %.197.lcssa249, %bb.c ], [ %.197.lcssa252, %bb.d ], [ %.197.lcssa251, %bb.e ], [ %.096159, %bb.b ] ; 4 uses
  %.091160216 = phi ptr [ %.us-phi152, %bb.c ], [ %.495.jt2, %bb.d ], [ %.us-phi.sink290, %bb.e ], [ %.091160, %bb.b ]
  %.0161214 = phi i32 [ 3, %bb.c ], [ 2, %bb.d ], [ 1, %bb.e ], [ %.0161, %bb.b ]
  %scevgep = getelementptr i8, ptr %.0103157221, i64 %.096159218
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.197136.in = phi i64 [ %.197136, %bb.f ], [ %.096159218, %.lr.ph.preheader ]
  %.1104135 = phi ptr [ %.1104, %bb.f ], [ %.1104132222, %.lr.ph.preheader ] ; 3 uses
  %.089134 = phi i64 [ %i.r, %bb.f ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.197136 = add nsw i64 %.197136.in, -1          ; 2 uses
  %i.p = load i8, ptr %.1104135, align 1, !tbaa !36
  %i.q = icmp eq i8 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.r = add nuw i64 %.089134, 1                  ; 2 uses
  %.1104 = getelementptr inbounds nuw i8, ptr %.1104135, i64 1
  %exitcond.not = icmp eq i64 %i.r, %.096159218
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %bb.f, %.lr.ph
  %.089.lcssa.ph = phi i64 [ %.089134, %.lr.ph ], [ %.096159218, %bb.f ]
  %.1104.lcssa.ph = phi ptr [ %.1104135, %.lr.ph ], [ %scevgep, %bb.f ]
  %.197.lcssa.ph = phi i64 [ %.197136, %.lr.ph ], [ 0, %bb.f ]
  %i.s = freeze i64 %.089.lcssa.ph
  br label %.outer

.outer:                                           ; preds = %bb.b, %.critedge.loopexit
  %i.t = phi i8 [ %i.o, %.critedge.loopexit ], [ %i.j, %bb.b ] ; 5 uses
  %.098158220 = phi ptr [ %.098158219, %.critedge.loopexit ], [ %.098158, %bb.b ] ; 5 uses
  %.091160217 = phi ptr [ %.091160216, %.critedge.loopexit ], [ %.091160, %bb.b ] ; 5 uses
  %.0161215 = phi i32 [ %.0161214, %.critedge.loopexit ], [ %.0161, %bb.b ] ; 6 uses
  %.089.lcssa = phi i64 [ %i.s, %.critedge.loopexit ], [ 1, %bb.b ] ; 5 uses
  %.1104.lcssa = phi ptr [ %.1104.lcssa.ph, %.critedge.loopexit ], [ %.1104132, %bb.b ] ; 5 uses
  %.197.lcssa = phi i64 [ %.197.lcssa.ph, %.critedge.loopexit ], [ 0, %bb.b ] ; 5 uses
  %i.u = icmp eq i64 %.089.lcssa, 1
  br i1 %i.u, label %.outer.split.us.preheader, label %.outer.split

.outer.jt3:                                       ; preds = %bb.c, %.outer.backedge.jt3
  %.197.lcssa239 = phi i64 [ %.197.lcssa249, %.outer.backedge.jt3 ], [ 0, %bb.c ] ; 4 uses
  %.1104.lcssa224 = phi ptr [ %.1104.lcssa234, %.outer.backedge.jt3 ], [ %.1104132.jt3, %bb.c ] ; 4 uses
  %i.v = phi i8 [ %i.em, %.outer.backedge.jt3 ], [ %i.l, %bb.c ] ; 4 uses
  %.199.ph.jt3 = phi ptr [ %i.ej, %.outer.backedge.jt3 ], [ %i.fa, %bb.c ] ; 3 uses
  %.190.ph.jt3 = phi i64 [ %.190.ph.be.jt3, %.outer.backedge.jt3 ], [ 1, %bb.c ] ; 4 uses
  %i.w = icmp eq i64 %.190.ph.jt3, 1
  br i1 %i.w, label %.outer.split.us.preheader, label %.outer.split.jt3

.outer.jt2:                                       ; preds = %bb.d, %.outer.backedge.jt2
  %.197.lcssa244 = phi i64 [ %.197.lcssa253, %.outer.backedge.jt2 ], [ 0, %bb.d ] ; 2 uses
  %.1104.lcssa229 = phi ptr [ %.1104.lcssa238, %.outer.backedge.jt2 ], [ %.1104132.jt2, %bb.d ] ; 2 uses
  %i.x = phi i8 [ %.sink, %.outer.backedge.jt2 ], [ %i.m, %bb.d ] ; 2 uses
  %.199.ph.jt2 = phi ptr [ %i.el, %.outer.backedge.jt2 ], [ %i.ff, %bb.d ] ; 2 uses
  %.192.ph.jt2 = phi ptr [ %.394113.jt2, %.outer.backedge.jt2 ], [ %.495.jt2, %bb.d ] ; 2 uses
  %.190.ph.jt2 = phi i64 [ %.190.ph.be.jt2, %.outer.backedge.jt2 ], [ 1, %bb.d ] ; 2 uses
  %i.y = icmp eq i64 %.190.ph.jt2, 1
  br i1 %i.y, label %.outer.split.us.preheader, label %.outer.split.jt2

.outer.split.us.preheader:                        ; preds = %bb.e, %.outer.jt3, %.outer.jt2, %.outer
  %.1.ph267 = phi i32 [ 3, %.outer.jt3 ], [ 2, %.outer.jt2 ], [ %.0161215, %.outer ], [ 1, %bb.e ]
  %.192.ph255 = phi ptr [ %.us-phi152, %.outer.jt3 ], [ %.192.ph.jt2, %.outer.jt2 ], [ %.091160217, %.outer ], [ %.us-phi.sink290, %bb.e ]
  %.199.ph254 = phi ptr [ %.199.ph.jt3, %.outer.jt3 ], [ %.199.ph.jt2, %.outer.jt2 ], [ %.098158220, %.outer ], [ %i.fi, %bb.e ]
  %.197.lcssa240 = phi i64 [ %.197.lcssa239, %.outer.jt3 ], [ %.197.lcssa244, %.outer.jt2 ], [ %.197.lcssa, %.outer ], [ 0, %bb.e ] ; 3 uses
  %.1104.lcssa225 = phi ptr [ %.1104.lcssa224, %.outer.jt3 ], [ %.1104.lcssa229, %.outer.jt2 ], [ %.1104.lcssa, %.outer ], [ %.1104132.jt1, %bb.e ] ; 3 uses
  %i.z = phi i8 [ %i.v, %.outer.jt3 ], [ %i.x, %.outer.jt2 ], [ %i.t, %.outer ], [ %i.n, %bb.e ] ; 3 uses
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer.split.us.backedge, %.outer.split.us.preheader
  %.199.us = phi ptr [ %.199.ph254, %.outer.split.us.preheader ], [ %.3101.us, %.outer.split.us.backedge ] ; 4 uses
  %.192.us = phi ptr [ %.192.ph255, %.outer.split.us.preheader ], [ %.394.us, %.outer.split.us.backedge ] ; 8 uses
  %.1.us = phi i32 [ %.1.ph267, %.outer.split.us.preheader ], [ %.1.us.be, %.outer.split.us.backedge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.199.us, i64 2
  %.not.us = icmp ult ptr %i.aa, %i.g
  br i1 %.not.us, label %._crit_edge.us, label %bb.g

bb.g:                                             ; preds = %.outer.split.us
  %i.ab = and i32 %.1.us, -3
  %or.cond.us = icmp eq i32 %i.ab, 1
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  br i1 %or.cond.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ae = ptrtoint ptr %.199.us to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !35
  %i.ai = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not106.us = icmp eq i32 %i.ai, 0
  br i1 %.not106.us, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %._crit_edge.us

bb.j:                                             ; preds = %bb.g
  %i.ak = ptrtoint ptr %.192.us to i64            ; 3 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = add nsw i64 %i.an, %i.ac
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !35
  %i.ap = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not107.us = icmp eq i32 %i.ap, 0
  br i1 %.not107.us, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %.199.us to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 11 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !34  ; 8 uses
  %i.at = icmp sgt i64 %i.ar, 0
  br i1 %i.at, label %iter.check340, label %._crit_edge.us

iter.check340:                                    ; preds = %bb.k
  %i.au = ptrtoaddr ptr %i.as to i64
  %min.iters.check322 = icmp ult i64 %i.ar, 4
  %i.av = sub i64 %i.ak, %i.au
  %diff.check321 = icmp ugt i64 %i.av, -32
  %or.cond358 = select i1 %min.iters.check322, i1 true, i1 %diff.check321
  br i1 %or.cond358, label %.lr.ph146.us.preheader, label %vector.main.loop.iter.check323

vector.main.loop.iter.check323:                   ; preds = %iter.check340
  %min.iters.check324 = icmp ult i64 %i.ar, 32
  br i1 %min.iters.check324, label %vec.epilog.ph344, label %vector.ph325

vector.ph325:                                     ; preds = %vector.main.loop.iter.check323
  %n.mod.vf326 = and i64 %i.ar, 28
  %n.vec327 = and i64 %i.ar, 9223372036854775776  ; 5 uses
  %i.aw = and i64 %i.ar, 31
  %i.ax = getelementptr i8, ptr %.192.us, i64 %n.vec327
  %i.ay = getelementptr i8, ptr %i.as, i64 %n.vec327 ; 2 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next334, %vector.body328 ] ; 3 uses
  %next.gep330 = getelementptr i8, ptr %.192.us, i64 %index329 ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.as, i64 %index329 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep330, i64 16
  %wide.load332 = load <16 x i8>, ptr %next.gep330, align 1, !tbaa !36
  %wide.load333 = load <16 x i8>, ptr %i.az, align 1, !tbaa !36
  %i.ba = getelementptr i8, ptr %next.gep331, i64 16
  store <16 x i8> %wide.load332, ptr %next.gep331, align 1, !tbaa !36
  store <16 x i8> %wide.load333, ptr %i.ba, align 1, !tbaa !36
  %index.next334 = add nuw i64 %index329, 32      ; 2 uses
  %i.bb = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.bb, label %middle.block335, label %vector.body328, !llvm.loop !43

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.ar, %n.vec327
  br i1 %cmp.n336, label %._crit_edge.us.loopexit, label %vec.epilog.iter.check342

vec.epilog.iter.check342:                         ; preds = %middle.block335
  %min.epilog.iters.check343 = icmp eq i64 %n.mod.vf326, 0
  br i1 %min.epilog.iters.check343, label %.lr.ph146.us.preheader, label %vec.epilog.ph344, !prof !46

vec.epilog.ph344:                                 ; preds = %vector.main.loop.iter.check323, %vec.epilog.iter.check342
  %vec.epilog.resume.val337 = phi i64 [ %n.vec327, %vec.epilog.iter.check342 ], [ 0, %vector.main.loop.iter.check323 ]
  %n.vec346 = and i64 %i.ar, 9223372036854775804  ; 4 uses
  %i.bc = and i64 %i.ar, 3
  %i.bd = getelementptr i8, ptr %.192.us, i64 %n.vec346
  %i.be = getelementptr i8, ptr %i.as, i64 %n.vec346 ; 2 uses
  br label %vec.epilog.vector.body347

vec.epilog.vector.body347:                        ; preds = %vec.epilog.vector.body347, %vec.epilog.ph344
  %index348 = phi i64 [ %vec.epilog.resume.val337, %vec.epilog.ph344 ], [ %index.next352, %vec.epilog.vector.body347 ] ; 3 uses
  %next.gep349 = getelementptr i8, ptr %.192.us, i64 %index348
  %next.gep350 = getelementptr i8, ptr %i.as, i64 %index348
  %wide.load351 = load <4 x i8>, ptr %next.gep349, align 1, !tbaa !36
  store <4 x i8> %wide.load351, ptr %next.gep350, align 1, !tbaa !36
  %index.next352 = add nuw i64 %index348, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next352, %n.vec346
  br i1 %i.bf, label %vec.epilog.middle.block353, label %vec.epilog.vector.body347, !llvm.loop !47

vec.epilog.middle.block353:                       ; preds = %vec.epilog.vector.body347
  %cmp.n354 = icmp eq i64 %i.ar, %n.vec346
  br i1 %cmp.n354, label %._crit_edge.us.loopexit, label %.lr.ph146.us.preheader

.lr.ph146.us.preheader:                           ; preds = %iter.check340, %vec.epilog.iter.check342, %vec.epilog.middle.block353
  %.088145.us.ph = phi i64 [ %i.ar, %iter.check340 ], [ %i.aw, %vec.epilog.iter.check342 ], [ %i.bc, %vec.epilog.middle.block353 ]
  %.293144.us.ph = phi ptr [ %.192.us, %iter.check340 ], [ %i.ax, %vec.epilog.iter.check342 ], [ %i.bd, %vec.epilog.middle.block353 ]
  %.2100143.us.ph = phi ptr [ %i.as, %iter.check340 ], [ %i.ay, %vec.epilog.iter.check342 ], [ %i.be, %vec.epilog.middle.block353 ]
  br label %.lr.ph146.us

.lr.ph146.us:                                     ; preds = %.lr.ph146.us.preheader, %.lr.ph146.us
  %.088145.us = phi i64 [ %i.bg, %.lr.ph146.us ], [ %.088145.us.ph, %.lr.ph146.us.preheader ] ; 2 uses
  %.293144.us = phi ptr [ %i.bh, %.lr.ph146.us ], [ %.293144.us.ph, %.lr.ph146.us.preheader ] ; 2 uses
  %.2100143.us = phi ptr [ %i.bj, %.lr.ph146.us ], [ %.2100143.us.ph, %.lr.ph146.us.preheader ] ; 2 uses
  %i.bg = add nsw i64 %.088145.us, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.293144.us, i64 1
  %i.bi = load i8, ptr %.293144.us, align 1, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %.2100143.us, i64 1 ; 2 uses
  store i8 %i.bi, ptr %.2100143.us, align 1, !tbaa !36
  %i.bk = icmp samesign ugt i64 %.088145.us, 1
  br i1 %i.bk, label %.lr.ph146.us, label %._crit_edge.us.loopexit, !llvm.loop !48

._crit_edge.us.loopexit:                          ; preds = %.lr.ph146.us, %vec.epilog.middle.block353, %middle.block335
  %.lcssa = phi ptr [ %i.be, %vec.epilog.middle.block353 ], [ %i.ay, %middle.block335 ], [ %i.bj, %.lr.ph146.us ]
  %.pre199 = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.k, %._crit_edge.us.loopexit, %bb.i, %.outer.split.us
  %.3101.us = phi ptr [ %.199.us, %.outer.split.us ], [ %i.aj, %bb.i ], [ %i.as, %bb.k ], [ %.lcssa, %._crit_edge.us.loopexit ] ; 6 uses
  %.394.us = phi ptr [ %.192.us, %.outer.split.us ], [ %.192.us, %bb.i ], [ %i.as, %bb.k ], [ %.pre199, %._crit_edge.us.loopexit ] ; 6 uses
  switch i32 %.1.us, label %default.unreachable [
    i32 0, label %.split.us
    i32 1, label %.split150.us
    i32 2, label %.split154.us
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %._crit_edge.us
  %i.bl = getelementptr inbounds i8, ptr %.3101.us, i64 -2 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !36
  %i.bn = icmp eq i8 %i.bm, -1
  br i1 %i.bn, label %bb.m, label %.outer.split.us.backedge

bb.m:                                             ; preds = %bb.l
  %i.bo = load i8, ptr %.394.us, align 1, !tbaa !36 ; 2 uses
  %i.bp = icmp ult i8 %i.bo, 126
  br i1 %i.bp, label %bb.n, label %.outer.split.us.backedge

bb.n:                                             ; preds = %bb.m
  %narrow.us = add nuw nsw i8 %i.bo, 2            ; 2 uses
  store i8 %narrow.us, ptr %.394.us, align 1, !tbaa !36
  %i.bq = icmp ne i8 %narrow.us, 127
  %i.br = zext i1 %i.bq to i32
  %i.bs = getelementptr inbounds i8, ptr %.3101.us, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !36
  store i8 %i.bt, ptr %i.bl, align 1, !tbaa !36
  br label %.outer.split.us.backedge

.outer.split.us.backedge:                         ; preds = %bb.n, %bb.m, %bb.l
  %.1.us.be = phi i32 [ %i.br, %bb.n ], [ 2, %bb.m ], [ 2, %bb.l ]
  br label %.outer.split.us

.outer.split:                                     ; preds = %.outer
  %i.bu = getelementptr inbounds nuw i8, ptr %.098158220, i64 2
  %.not = icmp ult ptr %i.bu, %i.g
  br i1 %.not, label %._crit_edge, label %bb.o

.outer.split.jt3:                                 ; preds = %.outer.jt3
  %i.bv = getelementptr inbounds nuw i8, ptr %.us-phi151, i64 4
  %.not.jt3 = icmp ult ptr %i.bv, %i.g
  br i1 %.not.jt3, label %.outer.split.jt2, label %bb.q

.outer.split.jt2:                                 ; preds = %.outer.split.jt3, %bb.s, %.outer.jt2, %._crit_edge
  %.190.ph259 = phi i64 [ %.190.ph.jt2, %.outer.jt2 ], [ %.190.ph261, %._crit_edge ], [ %.190.ph.jt3, %bb.s ], [ %.190.ph.jt3, %.outer.split.jt3 ] ; 2 uses
  %.197.lcssa242 = phi i64 [ %.197.lcssa244, %.outer.jt2 ], [ %.197.lcssa246, %._crit_edge ], [ %.197.lcssa239, %bb.s ], [ %.197.lcssa239, %.outer.split.jt3 ] ; 2 uses
  %.1104.lcssa227 = phi ptr [ %.1104.lcssa229, %.outer.jt2 ], [ %.1104.lcssa231, %._crit_edge ], [ %.1104.lcssa224, %bb.s ], [ %.1104.lcssa224, %.outer.split.jt3 ] ; 2 uses
  %i.bw = phi i8 [ %i.x, %.outer.jt2 ], [ %i.ee, %._crit_edge ], [ %i.v, %bb.s ], [ %i.v, %.outer.split.jt3 ] ; 2 uses
  %.199.jt2 = phi ptr [ %.199.ph.jt2, %.outer.jt2 ], [ %.3101, %._crit_edge ], [ %i.ct, %bb.s ], [ %.199.ph.jt3, %.outer.split.jt3 ] ; 3 uses
  %.192.jt2 = phi ptr [ %.192.ph.jt2, %.outer.jt2 ], [ %.394, %._crit_edge ], [ %i.ct, %bb.s ], [ %.us-phi152, %.outer.split.jt3 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.199.jt2, i64 2
  %.not.jt2 = icmp ult ptr %i.bx, %i.g
  br i1 %.not.jt2, label %.split154.us, label %bb.u

bb.o:                                             ; preds = %.outer.split
  %i.by = and i32 %.0161215, -3
  %or.cond = icmp eq i32 %i.by, 1
  %i.bz = load i64, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  br i1 %or.cond, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ca = ptrtoint ptr %.091160217 to i64         ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = add nsw i64 %i.cd, %i.bz
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !35
  %i.cf = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not107 = icmp eq i32 %i.cf, 0
  br i1 %.not107, label %.loopexit, label %bb.r

bb.q:                                             ; preds = %.outer.split.jt3
  %i.cg = ptrtoint ptr %.us-phi152 to i64         ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.cg, %i.ci
  %i.ck = load i64, ptr %i.i, align 8, !tbaa !35
  %i.cl = add nsw i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.i, align 8, !tbaa !35
  %i.cm = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not107.jt3 = icmp eq i32 %i.cm, 0
  br i1 %.not107.jt3, label %.loopexit, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cn = ptrtoint ptr %.098158220 to i64
  %i.co = sub i64 %i.cn, %i.ca                    ; 2 uses
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.cq = icmp sgt i64 %i.co, 0
  br i1 %i.cq, label %iter.check, label %._crit_edge

bb.s:                                             ; preds = %bb.q
  %i.cr = ptrtoint ptr %.199.ph.jt3 to i64
  %i.cs = sub i64 %i.cr, %i.cg                    ; 2 uses
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.cu = icmp sgt i64 %i.cs, 0
  br i1 %i.cu, label %iter.check, label %.outer.split.jt2

iter.check:                                       ; preds = %bb.s, %bb.r
  %.190.ph257 = phi i64 [ %.190.ph.jt3, %bb.s ], [ %.089.lcssa, %bb.r ]
  %.197.lcssa241 = phi i64 [ %.197.lcssa239, %bb.s ], [ %.197.lcssa, %bb.r ]
  %.1104.lcssa226 = phi ptr [ %.1104.lcssa224, %bb.s ], [ %.1104.lcssa, %bb.r ]
  %i.cv = phi i8 [ %i.v, %bb.s ], [ %i.t, %bb.r ]
  %i.cw = phi ptr [ %i.ct, %bb.s ], [ %i.cp, %bb.r ] ; 6 uses
  %i.cx = phi i64 [ %i.cs, %bb.s ], [ %i.co, %bb.r ] ; 10 uses
  %.1206 = phi i32 [ 3, %bb.s ], [ %.0161215, %bb.r ]
  %.192205 = phi ptr [ %.us-phi152, %bb.s ], [ %.091160217, %bb.r ] ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.cx, 4
  %.192205303 = ptrtoaddr ptr %.192205 to i64
  %i.cy = ptrtoaddr ptr %i.cw to i64
  %i.cz = sub i64 %.192205303, %i.cy
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond360 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond360, label %.lr.ph146.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check304 = icmp samesign ult i64 %i.cx, 32
  br i1 %min.iters.check304, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cx, 28
  %n.vec = and i64 %i.cx, 9223372036854775776     ; 5 uses
  %i.da = and i64 %i.cx, 31
  %i.db = getelementptr i8, ptr %.192205, i64 %n.vec
  %i.dc = getelementptr i8, ptr %i.cw, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.192205, i64 %index ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.cw, i64 %index ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36
  %wide.load306 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !36
  %i.de = getelementptr i8, ptr %next.gep305, i64 16
  store <16 x i8> %wide.load, ptr %next.gep305, align 1, !tbaa !36
  store <16 x i8> %wide.load306, ptr %i.de, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph146.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec310 = and i64 %i.cx, 9223372036854775804  ; 4 uses
  %i.dg = and i64 %i.cx, 3
  %i.dh = getelementptr i8, ptr %.192205, i64 %n.vec310
  %i.di = getelementptr i8, ptr %i.cw, i64 %n.vec310 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index311 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next315, %vec.epilog.vector.body ] ; 3 uses
  %next.gep312 = getelementptr i8, ptr %.192205, i64 %index311
  %next.gep313 = getelementptr i8, ptr %i.cw, i64 %index311
  %wide.load314 = load <4 x i8>, ptr %next.gep312, align 1, !tbaa !36
  store <4 x i8> %wide.load314, ptr %next.gep313, align 1, !tbaa !36
  %index.next315 = add nuw i64 %index311, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next315, %n.vec310
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n316 = icmp eq i64 %i.cx, %n.vec310
  br i1 %cmp.n316, label %._crit_edge.loopexit, label %.lr.ph146.preheader

.lr.ph146.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.088145.ph = phi i64 [ %i.cx, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  %.293144.ph = phi ptr [ %.192205, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  %.2100143.ph = phi ptr [ %i.cw, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  br label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.lr.ph146
  %.088145 = phi i64 [ %i.dk, %.lr.ph146 ], [ %.088145.ph, %.lr.ph146.preheader ] ; 2 uses
  %.293144 = phi ptr [ %i.dl, %.lr.ph146 ], [ %.293144.ph, %.lr.ph146.preheader ] ; 2 uses
  %.2100143 = phi ptr [ %i.dn, %.lr.ph146 ], [ %.2100143.ph, %.lr.ph146.preheader ] ; 2 uses
  %i.dk = add nsw i64 %.088145, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %.293144, i64 1
  %i.dm = load i8, ptr %.293144, align 1, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %.2100143, i64 1 ; 2 uses
  store i8 %i.dm, ptr %.2100143, align 1, !tbaa !36
  %i.do = icmp samesign ugt i64 %.088145, 1
  br i1 %i.do, label %.lr.ph146, label %._crit_edge.loopexit, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph146, %vec.epilog.middle.block, %middle.block
  %.lcssa302 = phi ptr [ %i.di, %vec.epilog.middle.block ], [ %i.dc, %middle.block ], [ %i.dn, %.lr.ph146 ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %._crit_edge

bb.t:                                             ; preds = %bb.o
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.dq = ptrtoint ptr %.098158220 to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
end_hunk_0
