Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 896
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 291
begin_hunk_0_@tg3json__parse_value:bb.a

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.o = ptrtoaddr ptr %i.m to i64
  %i.p = ptrtoaddr ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.q
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.01720.i = phi ptr [ %i.s, %bb.e ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %i.r = load i8, ptr %.01720.i, align 1, !tbaa !37
  switch i8 %i.r, label %tg3json__skip_ws.exit [
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01720.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.s, %i.m
  br i1 %exitcond.not.i, label %tg3json__skip_ws.exit, label %.lr.ph.i

tg3json__skip_ws.exit:                            ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.017.lcssa.i = phi ptr [ %i.k, %bb.d ], [ %.01720.i, %.lr.ph.i ], [ %scevgep.i, %bb.e ] ; 26 uses
  store ptr %.017.lcssa.i, ptr %0, align 8, !tbaa !38
  %.not48 = icmp ult ptr %.017.lcssa.i, %i.m
  br i1 %.not48, label %bb.h, label %bb.f

bb.f:                                             ; preds = %tg3json__skip_ws.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %.not.i50 = icmp eq ptr %i.u, null
  br i1 %.not.i50, label %bb.g, label %tg3json__set_error.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.017.lcssa.i, ptr %i.t, align 8, !tbaa !27
  br label %tg3json__set_error.exit

bb.h:                                             ; preds = %tg3json__skip_ws.exit
  %i.v = load i8, ptr %.017.lcssa.i, align 1, !tbaa !37 ; 2 uses
  switch i8 %i.v, label %bb.bv [
    i8 91, label %bb.i
    i8 123, label %bb.ae
    i8 34, label %bb.bp
    i8 110, label %bb.bs
    i8 116, label %bb.bt
    i8 102, label %bb.bu
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 1 ; 6 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !38
  %i.x = icmp ult ptr %i.w, %i.m
  br i1 %i.x, label %.lr.ph.preheader.i113, label %tg3json__skip_ws.exit118

.lr.ph.preheader.i113:                            ; preds = %bb.i
  %i.y = ptrtoaddr ptr %i.m to i64
  %i.z = ptrtoaddr ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  %scevgep.i114 = getelementptr i8, ptr %i.w, i64 %i.aa
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %bb.j, %.lr.ph.preheader.i113
  %.01720.i116 = phi ptr [ %i.ac, %bb.j ], [ %i.w, %.lr.ph.preheader.i113 ] ; 3 uses
  %i.ab = load i8, ptr %.01720.i116, align 1, !tbaa !37
  switch i8 %i.ab, label %tg3json__skip_ws.exit118 [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i115, %.lr.ph.i115, %.lr.ph.i115, %.lr.ph.i115
  %i.ac = getelementptr inbounds nuw i8, ptr %.01720.i116, i64 1 ; 2 uses
  %exitcond.not.i117 = icmp eq ptr %i.ac, %i.m
  br i1 %exitcond.not.i117, label %tg3json__skip_ws.exit118, label %.lr.ph.i115

tg3json__skip_ws.exit118:                         ; preds = %.lr.ph.i115, %bb.j, %bb.i
  %.017.lcssa.i112 = phi ptr [ %i.w, %bb.i ], [ %.01720.i116, %.lr.ph.i115 ], [ %scevgep.i114, %bb.j ] ; 4 uses
  store ptr %.017.lcssa.i112, ptr %0, align 8, !tbaa !38
  %i.ad = icmp ult ptr %.017.lcssa.i112, %i.m
  br i1 %i.ad, label %bb.k, label %._crit_edge225

bb.k:                                             ; preds = %tg3json__skip_ws.exit118
  %i.ae = load i8, ptr %.017.lcssa.i112, align 1, !tbaa !37
  %i.af = icmp eq i8 %i.ae, 93
  br i1 %i.af, label %bb.l, label %.lr.ph414.preheader

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.017.lcssa.i112, i64 1
  store ptr %i.ag, ptr %0, align 8, !tbaa !38
  store i32 5, ptr %2, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %tg3json__set_error.exit

.lr.ph414.preheader:                              ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.al = add i64 %1, 1
  br label %.lr.ph414

.lr.ph414:                                        ; preds = %.lr.ph414.preheader, %tg3json__reserve_bytes_parser.exit.thread
  %.045.i411 = phi i64 [ %i.am, %tg3json__reserve_bytes_parser.exit.thread ], [ 0, %.lr.ph414.preheader ] ; 5 uses
  %.0164410 = phi i64 [ %.1165, %tg3json__reserve_bytes_parser.exit.thread ], [ 0, %.lr.ph414.preheader ] ; 5 uses
  %.0166409 = phi ptr [ %.2, %tg3json__reserve_bytes_parser.exit.thread ], [ null, %.lr.ph414.preheader ] ; 16 uses
  %.0166409599 = ptrtoaddr ptr %.0166409 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.am = add i64 %.045.i411, 1                   ; 9 uses
  %.not.i102 = icmp ugt i64 %i.am, %.0164410
  br i1 %.not.i102, label %bb.m, label %tg3json__reserve_bytes_parser.exit

bb.m:                                             ; preds = %.lr.ph414
  %.not60.i = icmp eq i64 %.0164410, 0
  %spec.select.i103 = select i1 %.not60.i, i64 8, i64 %.0164410 ; 3 uses
  %i.an = icmp ult i64 %spec.select.i103, %i.am
  br i1 %i.an, label %.lr.ph.i109, label %._crit_edge.i

.lr.ph.i109:                                      ; preds = %bb.m, %bb.n
  %.04669.i = phi i64 [ %i.ap, %bb.n ], [ %spec.select.i103, %bb.m ] ; 2 uses
  %i.ao = icmp slt i64 %.04669.i, 0
  br i1 %i.ao, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i109
  %i.ap = shl nuw i64 %.04669.i, 1                ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.am
  br i1 %i.aq, label %.lr.ph.i109, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.n, %.lr.ph.i109, %bb.m
  %.1.i104 = phi i64 [ %spec.select.i103, %bb.m ], [ %i.ap, %bb.n ], [ %i.am, %.lr.ph.i109 ] ; 4 uses
  %mul.ov.i = icmp ugt i64 %.1.i104, 768614336404564650
  br i1 %mul.ov.i, label %.preheader, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ar = mul i64 %.0164410, 24                   ; 3 uses
  %i.as = mul nuw i64 %.1.i104, 24                ; 8 uses
  %i.at = tail call i64 @llvm.usub.sat.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %.not62.i = icmp ne i64 %i.au, 0
  %i.av = icmp ugt i64 %i.as, %i.au
  %or.cond64.i = and i1 %.not62.i, %i.av
  br i1 %or.cond64.i, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !43 ; 3 uses
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = icmp ugt i64 %i.as, %i.ar               ; 2 uses
  %or.cond.i108 = and i1 %i.ay, %i.ax
  br i1 %or.cond.i108, label %bb.q, label %.critedge.i105

bb.q:                                             ; preds = %bb.p
  %i.az = icmp ugt i64 %i.at, %i.aw
  br i1 %i.az, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.bb = sub nuw i64 %i.aw, %i.at
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %.preheader, label %.critedge.i105

.critedge.i105:                                   ; preds = %bb.r, %bb.p
  %.not.i.i106 = icmp eq ptr %.0166409, null
  %i.bd = add nuw i64 %i.as, 8
  %i.be = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.bf = add i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp ugt i64 %i.bf, 524288              ; 2 uses
  br i1 %.not.i.i106, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.critedge.i105
  br i1 %i.bg, label %.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.be ; 2 uses
  store i64 %i.as, ptr %i.bh, align 8, !tbaa !30
  store i64 %i.bf, ptr @test_heap_used, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br label %.loopexit.i

bb.u:                                             ; preds = %.critedge.i105
  br i1 %i.bg, label %.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds i8, ptr %.0166409, i64 -8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.be ; 2 uses
  store i64 %i.as, ptr %i.bl, align 8, !tbaa !30
  store i64 %i.bf, ptr @test_heap_used, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 12 uses
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.as) ; 11 uses
  %.not27.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not27.i.i, label %.loopexit.i, label %iter.check614

iter.check614:                                    ; preds = %bb.v
  %min.iters.check600 = icmp ult i64 %i.bn, 4
  br i1 %min.iters.check600, label %.lr.ph.i.i.preheader, label %vector.memcheck601

vector.memcheck601:                               ; preds = %iter.check614
  %5 = sub i64 %i.be, %.0166409599
  %6 = add i64 %5, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check602 = icmp ult i64 %6, 31
  br i1 %diff.check602, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check603

vector.main.loop.iter.check603:                   ; preds = %vector.memcheck601
  %min.iters.check604 = icmp ult i64 %i.bn, 32
  br i1 %min.iters.check604, label %vec.epilog.ph618, label %vector.ph605

vector.ph605:                                     ; preds = %vector.main.loop.iter.check603
  %i.bo = and i64 %i.bn, 28
  %n.vec606 = and i64 %i.bn, -32                  ; 4 uses
  br label %vector.body607

vector.body607:                                   ; preds = %vector.ph605, %vector.body607
  %index608 = phi i64 [ 0, %vector.ph605 ], [ %index.next611, %vector.body607 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0166409, i64 %index608 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load609 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !37
  %wide.load610 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index608 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load609, ptr %i.br, align 1, !tbaa !37
  store <16 x i8> %wide.load610, ptr %i.bs, align 1, !tbaa !37
  %index.next611 = add nuw i64 %index608, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next611, %n.vec606
  br i1 %i.bt, label %middle.block612, label %vector.body607, !llvm.loop !311

middle.block612:                                  ; preds = %vector.body607
  %cmp.n613 = icmp eq i64 %i.bn, %n.vec606
  br i1 %cmp.n613, label %.loopexit.i, label %vec.epilog.iter.check615

vec.epilog.iter.check615:                         ; preds = %middle.block612
  %min.epilog.iters.check617 = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check617, label %.lr.ph.i.i.preheader, label %vec.epilog.ph618, !prof !46

vec.epilog.ph618:                                 ; preds = %vector.main.loop.iter.check603, %vec.epilog.iter.check615
  %vec.epilog.resume.val619 = phi i64 [ %n.vec606, %vec.epilog.iter.check615 ], [ 0, %vector.main.loop.iter.check603 ]
  %n.vec620 = and i64 %i.bn, -4                   ; 3 uses
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph618
  %index622 = phi i64 [ %vec.epilog.resume.val619, %vec.epilog.ph618 ], [ %index.next624, %vec.epilog.vector.body621 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0166409, i64 %index622
  %wide.load623 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index622
  store <4 x i8> %wide.load623, ptr %i.bv, align 1, !tbaa !37
  %index.next624 = add nuw i64 %index622, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next624, %n.vec620
  br i1 %i.bw, label %vec.epilog.middle.block625, label %vec.epilog.vector.body621, !llvm.loop !312

vec.epilog.middle.block625:                       ; preds = %vec.epilog.vector.body621
  %cmp.n626 = icmp eq i64 %i.bn, %n.vec620
  br i1 %cmp.n626, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check614, %vector.memcheck601, %vec.epilog.iter.check615, %vec.epilog.middle.block625
  %.026.i.i.ph = phi i64 [ 0, %iter.check614 ], [ 0, %vector.memcheck601 ], [ %n.vec606, %vec.epilog.iter.check615 ], [ %n.vec620, %vec.epilog.middle.block625 ] ; 3 uses
  %xtraiter662 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod663.not = icmp eq i64 %xtraiter662, 0
  br i1 %lcmp.mod663.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.026.i.i.prol = phi i64 [ %i.ca, %.lr.ph.i.i.prol ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter664 = phi i64 [ %prol.iter664.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0166409, i64 %.026.i.i.prol
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.026.i.i.prol
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !37
  %i.ca = add nuw i64 %.026.i.i.prol, 1           ; 2 uses
  %prol.iter664.next = add i64 %prol.iter664, 1   ; 2 uses
  %prol.iter664.cmp.not = icmp eq i64 %prol.iter664.next, %xtraiter662
  br i1 %prol.iter664.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !313

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.026.i.i.unr = phi i64 [ %.026.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ca, %.lr.ph.i.i.prol ]
  %i.cb = sub i64 %.026.i.i.ph, %i.bn
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.026.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %.026.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0166409, i64 %.026.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.026.i.i
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !37
  %i.cg = add nuw i64 %.026.i.i, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0166409, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !37
  %i.ck = add nuw i64 %.026.i.i, 2                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0166409, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !37
  %i.co = add nuw i64 %.026.i.i, 3                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0166409, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !37
  %i.cs = add nuw i64 %.026.i.i, 4                ; 2 uses
  %exitcond.not.i.i107.3 = icmp eq i64 %i.cs, %i.bn
  br i1 %exitcond.not.i.i107.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !314

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block612, %vec.epilog.middle.block625, %bb.v, %bb.t
  %.018.i.ph.i = phi ptr [ %i.bi, %bb.t ], [ %i.bm, %bb.v ], [ %i.bm, %middle.block612 ], [ %i.bm, %vec.epilog.middle.block625 ], [ %i.bm, %.lr.ph.i.i ], [ %i.bm, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  br i1 %i.ay, label %bb.w, label %tg3json__reserve_bytes_parser.exit

bb.w:                                             ; preds = %.loopexit.i
  %i.ct = sub nuw i64 %i.as, %i.ar
  %i.cu = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.cv = add i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %i.ak, align 8, !tbaa !35
  br label %tg3json__reserve_bytes_parser.exit

tg3json__reserve_bytes_parser.exit:               ; preds = %.lr.ph414, %bb.w, %.loopexit.i
  %.2 = phi ptr [ %.018.i.ph.i, %.loopexit.i ], [ %.018.i.ph.i, %bb.w ], [ %.0166409, %.lr.ph414 ] ; 4 uses
  %.1165 = phi i64 [ %.1.i104, %.loopexit.i ], [ %.1.i104, %bb.w ], [ %.0164410, %.lr.ph414 ]
  %i.cw = call fastcc i32 @tg3json__parse_value(ptr noundef nonnull %0, i64 noundef %i.al, ptr noundef %4) #21, !inline_history !315
  %.not52.i = icmp eq i32 %i.cw, 0
  br i1 %.not52.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %tg3json__reserve_bytes_parser.exit
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %.2, i64 %.045.i411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !49
  %i.cy = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !26  ; 8 uses
  %i.da = icmp ult ptr %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.preheader.i96, label %tg3json__skip_ws.exit101

.lr.ph.preheader.i96:                             ; preds = %bb.x
  %i.db = ptrtoaddr ptr %i.cz to i64
  %i.dc = ptrtoaddr ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  %scevgep.i97 = getelementptr i8, ptr %i.cy, i64 %i.dd
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.y, %.lr.ph.preheader.i96
  %.01720.i99 = phi ptr [ %i.df, %bb.y ], [ %i.cy, %.lr.ph.preheader.i96 ] ; 3 uses
  %i.de = load i8, ptr %.01720.i99, align 1, !tbaa !37
  switch i8 %i.de, label %tg3json__skip_ws.exit101 [
    i8 32, label %bb.y
    i8 13, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph.i98, %.lr.ph.i98, %.lr.ph.i98, %.lr.ph.i98
  %i.df = getelementptr inbounds nuw i8, ptr %.01720.i99, i64 1 ; 2 uses
  %exitcond.not.i100 = icmp eq ptr %i.df, %i.cz
  br i1 %exitcond.not.i100, label %tg3json__skip_ws.exit101, label %.lr.ph.i98

tg3json__skip_ws.exit101:                         ; preds = %.lr.ph.i98, %bb.y, %bb.x
  %.017.lcssa.i95 = phi ptr [ %i.cy, %bb.x ], [ %.01720.i99, %.lr.ph.i98 ], [ %scevgep.i97, %bb.y ] ; 5 uses
  store ptr %.017.lcssa.i95, ptr %0, align 8, !tbaa !38
  %.not53.i = icmp ult ptr %.017.lcssa.i95, %i.cz
  br i1 %.not53.i, label %bb.z, label %.thread

bb.z:                                             ; preds = %tg3json__skip_ws.exit101
  %i.dg = load i8, ptr %.017.lcssa.i95, align 1, !tbaa !37
  switch i8 %i.dg, label %.thread [
    i8 44, label %bb.aa
    i8 93, label %.thread178
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %.017.lcssa.i95, i64 1 ; 6 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !38
  %i.di = icmp ult ptr %i.dh, %i.cz
  br i1 %i.di, label %.lr.ph.preheader.i89, label %tg3json__reserve_bytes_parser.exit.thread

.lr.ph.preheader.i89:                             ; preds = %bb.aa
  %i.dj = ptrtoaddr ptr %i.cz to i64
  %i.dk = ptrtoaddr ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %scevgep.i90 = getelementptr i8, ptr %i.dh, i64 %i.dl
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.ab, %.lr.ph.preheader.i89
  %.01720.i92 = phi ptr [ %i.dn, %bb.ab ], [ %i.dh, %.lr.ph.preheader.i89 ] ; 3 uses
  %i.dm = load i8, ptr %.01720.i92, align 1, !tbaa !37
  switch i8 %i.dm, label %tg3json__reserve_bytes_parser.exit.thread [
    i8 32, label %bb.ab
    i8 13, label %bb.ab
    i8 10, label %bb.ab
    i8 9, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph.i91, %.lr.ph.i91, %.lr.ph.i91, %.lr.ph.i91
  %i.dn = getelementptr inbounds nuw i8, ptr %.01720.i92, i64 1 ; 2 uses
  %exitcond.not.i93 = icmp eq ptr %i.dn, %i.cz
  br i1 %exitcond.not.i93, label %tg3json__reserve_bytes_parser.exit.thread, label %.lr.ph.i91

.thread178:                                       ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %.017.lcssa.i95, i64 1
  store ptr %i.do, ptr %0, align 8, !tbaa !38
  store i32 5, ptr %2, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.2, ptr %i.dp, align 8, !tbaa !37
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.am, ptr %i.dq, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %tg3json__set_error.exit
end_hunk_0
begin_hunk_1_@tg3json__parse_value:bb.a

bb.ag:                                            ; preds = %tg3json__skip_ws.exit159
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !37
  %i.em = icmp eq i8 %i.el, 125
  br i1 %i.em, label %bb.ah, label %.lr.ph407

bb.ah:                                            ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.en, ptr %0, align 8, !tbaa !38
  store i32 6, ptr %2, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false)
  br label %tg3json__set_error.exit

.lr.ph407:                                        ; preds = %bb.ag
  %i.ep = add i64 %1, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph407, %.loopexit319
  %.068.i405 = phi i64 [ 0, %.lr.ph407 ], [ %i.fl, %.loopexit319 ] ; 8 uses
  %.0363404 = phi i64 [ 0, %.lr.ph407 ], [ %.1364, %.loopexit319 ] ; 5 uses
  %.0365403 = phi ptr [ null, %.lr.ph407 ], [ %.3, %.loopexit319 ] ; 20 uses
  %.0365403588 = ptrtoaddr ptr %.0365403 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.et = call fastcc i32 @tg3json__parse_string_raw(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.b) #21, !inline_history !318
  %.not.i55 = icmp eq i32 %i.et, 0
  br i1 %.not.i55, label %.thread184, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !26  ; 7 uses
  %i.ew = icmp ult ptr %i.eu, %i.ev
  br i1 %i.ew, label %.lr.ph.preheader.i145, label %tg3json__skip_ws.exit150

.lr.ph.preheader.i145:                            ; preds = %bb.aj
  %i.ex = ptrtoaddr ptr %i.ev to i64
  %i.ey = ptrtoaddr ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %scevgep.i146 = getelementptr i8, ptr %i.eu, i64 %i.ez
  br label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %bb.ak, %.lr.ph.preheader.i145
  %.01720.i148 = phi ptr [ %i.fb, %bb.ak ], [ %i.eu, %.lr.ph.preheader.i145 ] ; 3 uses
  %i.fa = load i8, ptr %.01720.i148, align 1, !tbaa !37
  switch i8 %i.fa, label %tg3json__skip_ws.exit150 [
    i8 32, label %bb.ak
    i8 13, label %bb.ak
    i8 10, label %bb.ak
    i8 9, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph.i147, %.lr.ph.i147, %.lr.ph.i147, %.lr.ph.i147
  %i.fb = getelementptr inbounds nuw i8, ptr %.01720.i148, i64 1 ; 2 uses
  %exitcond.not.i149 = icmp eq ptr %i.fb, %i.ev
  br i1 %exitcond.not.i149, label %tg3json__skip_ws.exit150, label %.lr.ph.i147

tg3json__skip_ws.exit150:                         ; preds = %.lr.ph.i147, %bb.ak, %bb.aj
  %.017.lcssa.i144 = phi ptr [ %i.eu, %bb.aj ], [ %.01720.i148, %.lr.ph.i147 ], [ %scevgep.i146, %bb.ak ] ; 4 uses
  store ptr %.017.lcssa.i144, ptr %0, align 8, !tbaa !38
  %.not79.i = icmp ult ptr %.017.lcssa.i144, %i.ev
  br i1 %.not79.i, label %bb.al, label %.thread184

bb.al:                                            ; preds = %tg3json__skip_ws.exit150
  %i.fc = load i8, ptr %.017.lcssa.i144, align 1, !tbaa !37
  %.not80.i = icmp eq i8 %i.fc, 58
  br i1 %.not80.i, label %bb.am, label %.thread184

bb.am:                                            ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %.017.lcssa.i144, i64 1 ; 6 uses
  store ptr %i.fd, ptr %0, align 8, !tbaa !38
  %i.fe = icmp ult ptr %i.fd, %i.ev
  br i1 %i.fe, label %.lr.ph.preheader.i138, label %tg3json__skip_ws.exit143

.lr.ph.preheader.i138:                            ; preds = %bb.am
  %i.ff = ptrtoaddr ptr %i.ev to i64
  %i.fg = ptrtoaddr ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %scevgep.i139 = getelementptr i8, ptr %i.fd, i64 %i.fh
  br label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %bb.an, %.lr.ph.preheader.i138
  %.01720.i141 = phi ptr [ %i.fj, %bb.an ], [ %i.fd, %.lr.ph.preheader.i138 ] ; 3 uses
  %i.fi = load i8, ptr %.01720.i141, align 1, !tbaa !37
  switch i8 %i.fi, label %tg3json__skip_ws.exit143 [
    i8 32, label %bb.an
    i8 13, label %bb.an
    i8 10, label %bb.an
    i8 9, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph.i140, %.lr.ph.i140, %.lr.ph.i140, %.lr.ph.i140
  %i.fj = getelementptr inbounds nuw i8, ptr %.01720.i141, i64 1 ; 2 uses
  %exitcond.not.i142 = icmp eq ptr %i.fj, %i.ev
  br i1 %exitcond.not.i142, label %tg3json__skip_ws.exit143, label %.lr.ph.i140

tg3json__skip_ws.exit143:                         ; preds = %.lr.ph.i140, %bb.an, %bb.am
  %.017.lcssa.i137 = phi ptr [ %i.fd, %bb.am ], [ %.01720.i141, %.lr.ph.i140 ], [ %scevgep.i139, %bb.an ]
  store ptr %.017.lcssa.i137, ptr %0, align 8, !tbaa !38
  %i.fk = call fastcc i32 @tg3json__parse_value(ptr noundef nonnull %0, i64 noundef %i.ep, ptr noundef %3) #21, !inline_history !318
  %.not81.i = icmp eq i32 %i.fk, 0
  br i1 %.not81.i, label %.thread184, label %bb.ao

bb.ao:                                            ; preds = %tg3json__skip_ws.exit143
  %i.fl = add i64 %.068.i405, 1                   ; 9 uses
  %.not.i340 = icmp ugt i64 %i.fl, %.0363404
  br i1 %.not.i340, label %bb.ap, label %tg3json__reserve_bytes_parser.exit358

bb.ap:                                            ; preds = %bb.ao
  %.not60.i341 = icmp eq i64 %.0363404, 0
  %spec.select.i342 = select i1 %.not60.i341, i64 8, i64 %.0363404 ; 3 uses
  %i.fm = icmp ult i64 %spec.select.i342, %i.fl
  br i1 %i.fm, label %.lr.ph.i356, label %._crit_edge.i343

.lr.ph.i356:                                      ; preds = %bb.ap, %bb.aq
  %.04669.i357 = phi i64 [ %i.fo, %bb.aq ], [ %spec.select.i342, %bb.ap ] ; 2 uses
  %i.fn = icmp slt i64 %.04669.i357, 0
  br i1 %i.fn, label %._crit_edge.i343, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i356
  %i.fo = shl nuw i64 %.04669.i357, 1             ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.fl
  br i1 %i.fp, label %.lr.ph.i356, label %._crit_edge.i343, !llvm.loop !0

._crit_edge.i343:                                 ; preds = %bb.aq, %.lr.ph.i356, %bb.ap
  %.1.i = phi i64 [ %spec.select.i342, %bb.ap ], [ %i.fl, %.lr.ph.i356 ], [ %i.fo, %bb.aq ] ; 4 uses
  %mul.ov.i344 = icmp ugt i64 %.1.i, 768614336404564650
  br i1 %mul.ov.i344, label %.preheader194, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i343
  %i.fq = mul i64 %.0363404, 24                   ; 3 uses
  %i.fr = mul nuw i64 %.1.i, 24                   ; 8 uses
  %i.fs = tail call i64 @llvm.usub.sat.i64(i64 %i.fr, i64 %i.fq) ; 2 uses
  %i.ft = load i64, ptr %i.eq, align 8, !tbaa !42 ; 2 uses
  %.not62.i353 = icmp ne i64 %i.ft, 0
  %i.fu = icmp ugt i64 %i.fr, %i.ft
  %or.cond64.i354 = and i1 %.not62.i353, %i.fu
  br i1 %or.cond64.i354, label %.preheader194, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fv = load i64, ptr %i.er, align 8, !tbaa !43 ; 3 uses
  %i.fw = icmp ne i64 %i.fv, 0
  %i.fx = icmp ugt i64 %i.fr, %i.fq               ; 2 uses
  %or.cond.i355 = and i1 %i.fx, %i.fw
  br i1 %or.cond.i355, label %bb.at, label %.critedge.i345

bb.at:                                            ; preds = %bb.as
  %i.fy = icmp ugt i64 %i.fs, %i.fv
  br i1 %i.fy, label %.preheader194, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = load i64, ptr %i.es, align 8, !tbaa !35
  %i.ga = sub nuw i64 %i.fv, %i.fs
  %i.gb = icmp ugt i64 %i.fz, %i.ga
  br i1 %i.gb, label %.preheader194, label %.critedge.i345

.critedge.i345:                                   ; preds = %bb.au, %bb.as
  %.not.i.i346 = icmp eq ptr %.0365403, null
  %i.gc = add nuw i64 %i.fr, 8
  %i.gd = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.ge = add i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp ugt i64 %i.ge, 524288              ; 2 uses
  br i1 %.not.i.i346, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.critedge.i345
  br i1 %i.gf, label %.preheader194, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gg = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.gd ; 2 uses
  store i64 %i.fr, ptr %i.gg, align 8, !tbaa !30
  store i64 %i.ge, ptr @test_heap_used, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  br label %.loopexit.i351

bb.ax:                                            ; preds = %.critedge.i345
  br i1 %i.gf, label %.preheader194, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = getelementptr inbounds i8, ptr %.0365403, i64 -8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !30
  %i.gk = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.gd ; 2 uses
  store i64 %i.fr, ptr %i.gk, align 8, !tbaa !30
  store i64 %i.ge, ptr @test_heap_used, align 8, !tbaa !30
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 12 uses
  %i.gm = tail call i64 @llvm.umin.i64(i64 %i.gj, i64 %i.fr) ; 11 uses
  %.not27.i.i347 = icmp eq i64 %i.gm, 0
  br i1 %.not27.i.i347, label %.loopexit.i351, label %iter.check

iter.check:                                       ; preds = %bb.ay
  %min.iters.check = icmp ult i64 %i.gm, 4
  br i1 %min.iters.check, label %.lr.ph.i.i348.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %7 = sub i64 %i.gd, %.0365403588
  %8 = add i64 %7, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check = icmp ult i64 %8, 31
  br i1 %diff.check, label %.lr.ph.i.i348.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check589 = icmp ult i64 %i.gm, 32
  br i1 %min.iters.check589, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gn = and i64 %i.gm, 28
  %n.vec = and i64 %i.gm, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0365403, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load = load <16 x i8>, ptr %i.go, align 1, !tbaa !37
  %wide.load590 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !37
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <16 x i8> %wide.load, ptr %i.gq, align 1, !tbaa !37
  store <16 x i8> %wide.load590, ptr %i.gr, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gm, %n.vec
  br i1 %cmp.n, label %.loopexit.i351, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i348.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec591 = and i64 %i.gm, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index592 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next594, %vec.epilog.vector.body ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0365403, i64 %index592
  %wide.load593 = load <4 x i8>, ptr %i.gt, align 1, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 %index592
  store <4 x i8> %wide.load593, ptr %i.gu, align 1, !tbaa !37
  %index.next594 = add nuw i64 %index592, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next594, %n.vec591
  br i1 %i.gv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !320

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n595 = icmp eq i64 %i.gm, %n.vec591
  br i1 %cmp.n595, label %.loopexit.i351, label %.lr.ph.i.i348.preheader

.lr.ph.i.i348.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i349.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec591, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.gm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i348.prol.loopexit, label %.lr.ph.i.i348.prol

.lr.ph.i.i348.prol:                               ; preds = %.lr.ph.i.i348.preheader, %.lr.ph.i.i348.prol
  %.026.i.i349.prol = phi i64 [ %i.gz, %.lr.ph.i.i348.prol ], [ %.026.i.i349.ph, %.lr.ph.i.i348.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i348.prol ], [ 0, %.lr.ph.i.i348.preheader ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0365403, i64 %.026.i.i349.prol
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.026.i.i349.prol
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !37
  %i.gz = add nuw i64 %.026.i.i349.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i348.prol.loopexit, label %.lr.ph.i.i348.prol, !llvm.loop !321

.lr.ph.i.i348.prol.loopexit:                      ; preds = %.lr.ph.i.i348.prol, %.lr.ph.i.i348.preheader
  %.026.i.i349.unr = phi i64 [ %.026.i.i349.ph, %.lr.ph.i.i348.preheader ], [ %i.gz, %.lr.ph.i.i348.prol ]
  %i.ha = sub i64 %.026.i.i349.ph, %i.gm
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %.loopexit.i351, label %.lr.ph.i.i348

.lr.ph.i.i348:                                    ; preds = %.lr.ph.i.i348.prol.loopexit, %.lr.ph.i.i348
  %.026.i.i349 = phi i64 [ %i.hr, %.lr.ph.i.i348 ], [ %.026.i.i349.unr, %.lr.ph.i.i348.prol.loopexit ] ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0365403, i64 %.026.i.i349
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !37
  %i.he = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.026.i.i349
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !37
  %i.hf = add nuw i64 %.026.i.i349, 1             ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0365403, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !37
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hf
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !37
  %i.hj = add nuw i64 %.026.i.i349, 2             ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0365403, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !37
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hj
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !37
  %i.hn = add nuw i64 %.026.i.i349, 3             ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0365403, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !37
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hn
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !37
  %i.hr = add nuw i64 %.026.i.i349, 4             ; 2 uses
  %exitcond.not.i.i350.3 = icmp eq i64 %i.hr, %i.gm
  br i1 %exitcond.not.i.i350.3, label %.loopexit.i351, label %.lr.ph.i.i348, !llvm.loop !322

.loopexit.i351:                                   ; preds = %.lr.ph.i.i348.prol.loopexit, %.lr.ph.i.i348, %middle.block, %vec.epilog.middle.block, %bb.ay, %bb.aw
  %.018.i.ph.i352 = phi ptr [ %i.gh, %bb.aw ], [ %i.gl, %bb.ay ], [ %i.gl, %middle.block ], [ %i.gl, %vec.epilog.middle.block ], [ %i.gl, %.lr.ph.i.i348 ], [ %i.gl, %.lr.ph.i.i348.prol.loopexit ] ; 2 uses
  br i1 %i.fx, label %bb.az, label %tg3json__reserve_bytes_parser.exit358

bb.az:                                            ; preds = %.loopexit.i351
  %i.hs = sub nuw i64 %i.fr, %i.fq
  %i.ht = load i64, ptr %i.es, align 8, !tbaa !35
  %i.hu = add i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.es, align 8, !tbaa !35
  br label %tg3json__reserve_bytes_parser.exit358

tg3json__reserve_bytes_parser.exit358:            ; preds = %bb.ao, %bb.az, %.loopexit.i351
  %.3 = phi ptr [ %.018.i.ph.i352, %.loopexit.i351 ], [ %.018.i.ph.i352, %bb.az ], [ %.0365403, %bb.ao ] ; 7 uses
  %.1364 = phi i64 [ %.1.i, %.loopexit.i351 ], [ %.1.i, %bb.az ], [ %.0363404, %bb.ao ]
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %.3, i64 %.068.i405 ; 4 uses
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !52
  %i.hx = load i64, ptr %i.b, align 8, !tbaa !30
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !53
  %i.hz = load i64, ptr %i.eq, align 8, !tbaa !42
  %i.ia = add i64 %i.hz, -1
  %or.cond.i359 = icmp ult i64 %i.ia, 23
  br i1 %or.cond.i359, label %tg3json__parser_alloc.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %tg3json__reserve_bytes_parser.exit358
  %i.ib = load i64, ptr %i.er, align 8, !tbaa !43 ; 3 uses
  %.not21.i = icmp eq i64 %i.ib, 0
  br i1 %.not21.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ic = icmp ult i64 %i.ib, 24
  br i1 %i.ic, label %tg3json__parser_alloc.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.id = load i64, ptr %i.es, align 8, !tbaa !35
  %i.ie = add i64 %i.ib, -24
  %i.if = icmp ugt i64 %i.id, %i.ie
  br i1 %i.if, label %tg3json__parser_alloc.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.ig = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 2 uses
  %i.ih = add i64 %i.ig, 32                       ; 2 uses
  %i.ii = icmp ugt i64 %i.ih, 524288
  br i1 %i.ii, label %tg3json__parser_alloc.exit.thread, label %bb.be

tg3json__parser_alloc.exit.thread:                ; preds = %bb.bb, %tg3json__reserve_bytes_parser.exit358, %bb.bc, %bb.bd
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store ptr null, ptr %i.ij, align 8, !tbaa !54
  br label %.preheader194

bb.be:                                            ; preds = %bb.bd
  %i.ik = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ig ; 2 uses
  store i64 24, ptr %i.ik, align 8, !tbaa !30
  store i64 %i.ih, ptr @test_heap_used, align 8, !tbaa !30
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.im = load i64, ptr %i.es, align 8, !tbaa !35
  %i.in = add i64 %i.im, 24
  store i64 %i.in, ptr %i.es, align 8, !tbaa !35
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store ptr %i.il, ptr %i.io, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !49
  %i.ip = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.iq = load ptr, ptr %i.l, align 8, !tbaa !26  ; 8 uses
  %i.ir = icmp ult ptr %i.ip, %i.iq
  br i1 %i.ir, label %.lr.ph.preheader.i131, label %tg3json__skip_ws.exit136

.lr.ph.preheader.i131:                            ; preds = %bb.be
  %i.is = ptrtoaddr ptr %i.iq to i64
  %i.it = ptrtoaddr ptr %i.ip to i64
  %i.iu = sub i64 %i.is, %i.it
  %scevgep.i132 = getelementptr i8, ptr %i.ip, i64 %i.iu
  br label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %bb.bf, %.lr.ph.preheader.i131
  %.01720.i134 = phi ptr [ %i.iw, %bb.bf ], [ %i.ip, %.lr.ph.preheader.i131 ] ; 3 uses
  %i.iv = load i8, ptr %.01720.i134, align 1, !tbaa !37
  switch i8 %i.iv, label %tg3json__skip_ws.exit136 [
    i8 32, label %bb.bf
    i8 13, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
  ]

bb.bf:                                            ; preds = %.lr.ph.i133, %.lr.ph.i133, %.lr.ph.i133, %.lr.ph.i133
  %i.iw = getelementptr inbounds nuw i8, ptr %.01720.i134, i64 1 ; 2 uses
  %exitcond.not.i135 = icmp eq ptr %i.iw, %i.iq
  br i1 %exitcond.not.i135, label %tg3json__skip_ws.exit136, label %.lr.ph.i133

tg3json__skip_ws.exit136:                         ; preds = %.lr.ph.i133, %bb.bf, %bb.be
  %.017.lcssa.i130 = phi ptr [ %i.ip, %bb.be ], [ %.01720.i134, %.lr.ph.i133 ], [ %scevgep.i132, %bb.bf ] ; 5 uses
  store ptr %.017.lcssa.i130, ptr %0, align 8, !tbaa !38
  %.not84.i = icmp ult ptr %.017.lcssa.i130, %i.iq
  br i1 %.not84.i, label %bb.bg, label %.thread184

bb.bg:                                            ; preds = %tg3json__skip_ws.exit136
  %i.ix = load i8, ptr %.017.lcssa.i130, align 1, !tbaa !37
  switch i8 %i.ix, label %.thread184 [
    i8 44, label %bb.bh
end_hunk_1
begin_hunk_2_@tg3json_value_copy:bb.a
  %next.gep125 = getelementptr i8, ptr %i.x, i64 %index123
  %wide.load126 = load <4 x i8>, ptr %next.gep124, align 1, !tbaa !37
  store <4 x i8> %wide.load126, ptr %next.gep125, align 1, !tbaa !37
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.am, label %vec.epilog.middle.block128, label %vec.epilog.vector.body122, !llvm.loop !340

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body122
  %cmp.n129 = icmp eq i64 %i.o, %n.vec121
  br i1 %cmp.n129, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check115, %vector.memcheck101, %vec.epilog.iter.check116, %vec.epilog.middle.block128
  %.010.i.i.i.ph = phi ptr [ %i.y, %iter.check115 ], [ %i.y, %vector.memcheck101 ], [ %i.ad, %vec.epilog.iter.check116 ], [ %i.aj, %vec.epilog.middle.block128 ] ; 2 uses
  %.059.i.i.i.ph = phi ptr [ %i.x, %iter.check115 ], [ %i.x, %vector.memcheck101 ], [ %i.ae, %vec.epilog.iter.check116 ], [ %i.ak, %vec.epilog.middle.block128 ] ; 2 uses
  %.068.i.i.i.ph = phi i64 [ %i.o, %iter.check115 ], [ %i.o, %vector.memcheck101 ], [ %i.af, %vec.epilog.iter.check116 ], [ %i.al, %vec.epilog.middle.block128 ] ; 4 uses
  %i.an = add i64 %.068.i.i.i.ph, -1
  %xtraiter134 = and i64 %.068.i.i.i.ph, 7        ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.prol ], [ %.059.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.prol ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter136 = phi i64 [ %prol.iter136.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ao = add i64 %.068.i.i.i.prol, -1            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.010.i.i.i.prol, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.059.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.059.i.i.i.prol, align 1, !tbaa !37
  %prol.iter136.next = add i64 %prol.iter136, 1   ; 2 uses
  %prol.iter136.cmp.not = icmp eq i64 %prol.iter136.next, %xtraiter134
  br i1 %prol.iter136.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !341

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.prol ]
  %.059.i.i.i.unr = phi ptr [ %.059.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi i64 [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.prol ]
  %i.as = icmp ult i64 %i.an, 7
  br i1 %i.as, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.059.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %.059.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i ], [ %.068.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1
  %i.au = load i8, ptr %.010.i.i.i, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 1
  store i8 %i.au, ptr %.059.i.i.i, align 1, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 2
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 2
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 3
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 3
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 4
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 5
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 5
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 6
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 6
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 7
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 7
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !37
  %i.bo = add i64 %.068.i.i.i, -8                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !37
  %.not.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !342

tg3json__init_value.exit15.i:                     ; preds = %tg3json__init_value.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json_value_init_string_n.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block113, %vec.epilog.middle.block128, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store i8 0, ptr %i.bs, align 1, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.bt, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.bu, align 8, !tbaa !37
  br label %tg3json_value_init_string_n.exit

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i, label %tg3json_value_init_array.exit, label %.preheader.preheader.i.i45

.preheader.preheader.i.i45:                       ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json_value_init_array.exit

tg3json_value_init_array.exit:                    ; preds = %bb.h, %.preheader.preheader.i.i45
  store i32 5, ptr %0, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !37
  %.not75 = icmp eq i64 %i.bw, 0
  br i1 %.not75, label %tg3json_value_init_string_n.exit, label %.lr.ph73

.lr.ph73:                                         ; preds = %tg3json_value_init_array.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph73, %bb.t
  %.072 = phi i64 [ 0, %.lr.ph73 ], [ %i.ej, %bb.t ] ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.072
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cc = call i32 @tg3json_value_copy(ptr noundef nonnull %3, ptr noundef %i.cb) #21, !inline_history !349
  %.not.i47 = icmp eq i32 %i.cc, 0
  br i1 %.not.i47, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr %0, align 8, !tbaa !40
  %i.ce = icmp eq i32 %i.cd, 5
  br i1 %i.ce, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.bz, align 8, !tbaa !37 ; 4 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %.not.i.not.i = icmp eq i64 %i.cf, -1
  br i1 %.not.i.not.i, label %.tg3json__init_value.exit_crit_edge.i, label %bb.l

.tg3json__init_value.exit_crit_edge.i:            ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.by, align 8, !tbaa !37
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %.not25.i.i = icmp eq i64 %i.cf, 0
  %spec.select.i.i = select i1 %.not25.i.i, i64 8, i64 %i.cf ; 3 uses
  %i.ch = icmp ult i64 %spec.select.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.030.i.i = phi i64 [ %i.cj, %bb.m ], [ %spec.select.i.i, %bb.l ] ; 2 uses
  %i.ci = icmp slt i64 %.030.i.i, 0
  br i1 %i.ci, label %._crit_edge.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cj = shl nuw i64 %.030.i.i, 1                ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.cg
  br i1 %i.ck, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.m, %.lr.ph.i.i, %bb.l
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.l ], [ %i.cj, %bb.m ], [ %i.cg, %.lr.ph.i.i ] ; 2 uses
  %i.cl = icmp ugt i64 %.1.i.i, 768614336404564650
  br i1 %i.cl, label %bb.s, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !55 ; 10 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = mul nuw i64 %.1.i.i, 24                 ; 4 uses
  %.not.i.i.i56 = icmp eq ptr %i.cm, null
  %i.cp = add nuw i64 %i.co, 8
  %i.cq = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.cr = add i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, 524288              ; 2 uses
  br i1 %.not.i.i.i56, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.cs, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cq ; 2 uses
  store i64 %i.co, ptr %i.ct, align 8, !tbaa !30
  store i64 %i.cr, ptr @test_heap_used, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %.loopexit.i.i

bb.q:                                             ; preds = %bb.n
  br i1 %i.cs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cq ; 2 uses
  store i64 %i.co, ptr %i.cx, align 8, !tbaa !30
  store i64 %i.cr, ptr @test_heap_used, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 12 uses
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.co) ; 11 uses
  %.not27.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not27.i.i.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.r
  %min.iters.check = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i57.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = sub i64 %i.cq, %i.cn
  %5 = add i64 %4, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check = icmp ult i64 %5, 31
  br i1 %diff.check, label %.lr.ph.i.i.i57.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check91 = icmp ult i64 %i.cz, 32
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.da = and i64 %i.cz, 28
  %n.vec = and i64 %i.cz, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <16 x i8>, ptr %i.db, align 1, !tbaa !37
  %wide.load92 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %wide.load, ptr %i.dd, align 1, !tbaa !37
  store <16 x i8> %wide.load92, ptr %i.de, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i57.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.cz, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index94
  %wide.load95 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index94
  store <4 x i8> %wide.load95, ptr %i.dh, align 1, !tbaa !37
  %index.next96 = add nuw i64 %index94, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.cz, %n.vec93
  br i1 %cmp.n97, label %.loopexit.i.i, label %.lr.ph.i.i.i57.preheader

.lr.ph.i.i.i57.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i57.prol.loopexit, label %.lr.ph.i.i.i57.prol

.lr.ph.i.i.i57.prol:                              ; preds = %.lr.ph.i.i.i57.preheader, %.lr.ph.i.i.i57.prol
  %.026.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i.i57.prol ], [ %.026.i.i.i.ph, %.lr.ph.i.i.i57.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i57.prol ], [ 0, %.lr.ph.i.i.i57.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.026.i.i.i.prol
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.026.i.i.i.prol
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !37
  %i.dm = add nuw i64 %.026.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i57.prol.loopexit, label %.lr.ph.i.i.i57.prol, !llvm.loop !345

.lr.ph.i.i.i57.prol.loopexit:                     ; preds = %.lr.ph.i.i.i57.prol, %.lr.ph.i.i.i57.preheader
  %.026.i.i.i.unr = phi i64 [ %.026.i.i.i.ph, %.lr.ph.i.i.i57.preheader ], [ %i.dm, %.lr.ph.i.i.i57.prol ]
  %i.dn = sub i64 %.026.i.i.i.ph, %i.cz
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %.loopexit.i.i, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %.lr.ph.i.i.i57.prol.loopexit, %.lr.ph.i.i.i57
  %.026.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i57 ], [ %.026.i.i.i.unr, %.lr.ph.i.i.i57.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.026.i.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !37
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.026.i.i.i
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !37
  %i.ds = add nuw i64 %.026.i.i.i, 1              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ds
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !37
  %i.dw = add nuw i64 %.026.i.i.i, 2              ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dw
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !37
  %i.ea = add nuw i64 %.026.i.i.i, 3              ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !37
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ea
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !37
  %i.ee = add nuw i64 %.026.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ee, %i.cz
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.i57, !llvm.loop !346

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i57.prol.loopexit, %.lr.ph.i.i.i57, %middle.block, %vec.epilog.middle.block, %bb.r, %bb.p
  %.018.i.ph.i.i = phi ptr [ %i.cu, %bb.p ], [ %i.cy, %bb.r ], [ %i.cy, %middle.block ], [ %i.cy, %vec.epilog.middle.block ], [ %i.cy, %.lr.ph.i.i.i57 ], [ %i.cy, %.lr.ph.i.i.i57.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i, ptr %i.by, align 8, !tbaa !55
  %.pre17.i = load i64, ptr %i.bz, align 8, !tbaa !37
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.j, %._crit_edge.i.i, %bb.o
  call void @tg3json_value_free(ptr noundef nonnull %3) #21, !inline_history !349
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @tg3json_value_free(ptr noundef nonnull %0) #21
  br label %tg3json_value_init_string_n.exit

bb.t:                                             ; preds = %.tg3json__init_value.exit_crit_edge.i, %.loopexit.i.i
  %i.ef = phi i64 [ -1, %.tg3json__init_value.exit_crit_edge.i ], [ %.pre17.i, %.loopexit.i.i ] ; 2 uses
  %i.eg = phi ptr [ %.pre.i, %.tg3json__init_value.exit_crit_edge.i ], [ %.018.i.ph.i.i, %.loopexit.i.i ]
  %i.eh = add i64 %i.ef, 1
  store i64 %i.eh, ptr %i.bz, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ej = add nuw i64 %.072, 1                    ; 2 uses
  %i.ek = load i64, ptr %i.bv, align 8, !tbaa !37
  %i.el = icmp ult i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.i, label %tg3json_value_init_string_n.exit, !llvm.loop !347

bb.u:                                             ; preds = %bb.b
  br i1 %.not.i, label %tg3json_value_init_object.exit, label %.preheader.preheader.i.i50

.preheader.preheader.i.i50:                       ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json_value_init_object.exit

tg3json_value_init_object.exit:                   ; preds = %bb.u, %.preheader.preheader.i.i50
  store i32 6, ptr %0, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !37
  %.not74 = icmp eq i64 %i.en, 0
  br i1 %.not74, label %tg3json_value_init_string_n.exit, label %.lr.ph

.lr.ph:                                           ; preds = %tg3json_value_init_object.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.y
  %.171 = phi i64 [ 0, %.lr.ph ], [ %i.ey, %bb.y ] ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !37
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %.171 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !52
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !53
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ew = call i32 @tg3json_value_copy(ptr noundef nonnull %2, ptr noundef %i.ev) #21, !inline_history !56
  %.not.i52 = icmp eq i32 %i.ew, 0
  br i1 %.not.i52, label %.loopexit70, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef %i.er, i64 noundef %i.et, ptr noundef nonnull %2) #21, !inline_history !56
  %.not4.i = icmp eq i32 %i.ex, 0
  br i1 %.not4.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @tg3json_value_free(ptr noundef nonnull %2) #21, !inline_history !56
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @tg3json_value_free(ptr noundef nonnull %0) #21
  br label %tg3json_value_init_string_n.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ey = add nuw i64 %.171, 1                    ; 2 uses
  %i.ez = load i64, ptr %i.em, align 8, !tbaa !37
  %i.fa = icmp ult i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.v, label %tg3json_value_init_string_n.exit, !llvm.loop !348

bb.z:                                             ; preds = %bb.b
  br label %tg3json_value_init_string_n.exit

tg3json_value_init_string_n.exit:                 ; preds = %bb.y, %bb.t, %tg3json_value_init_object.exit, %tg3json_value_init_array.exit, %.loopexit.i, %tg3json__init_value.exit15.i, %bb.b, %tg3json__init_value.exit, %bb.z, %.loopexit70, %.loopexit, %tg3json_value_init_real.exit, %tg3json_value_init_int.exit, %tg3json_value_init_bool.exit
  %.032 = phi i32 [ 0, %bb.z ], [ 1, %tg3json__init_value.exit ], [ 1, %tg3json_value_init_bool.exit ], [ 1, %tg3json_value_init_int.exit ], [ 1, %tg3json_value_init_real.exit ], [ 1, %tg3json_value_init_array.exit ], [ 0, %.loopexit ], [ 1, %bb.b ], [ 0, %.loopexit70 ], [ 0, %tg3json__init_value.exit15.i ], [ 1, %.loopexit.i ], [ 1, %tg3json_value_init_object.exit ], [ 1, %bb.t ], [ 1, %bb.y ]
  ret i32 %.032
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_array_append_copy(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = call i32 @tg3json_value_copy(ptr noundef nonnull %2, ptr noundef %1) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.m, label %bb.b
end_hunk_2
begin_hunk_3_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !153
  %i.fh = icmp ugt i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.q, label %tg3__arena_alloc.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !134
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 range(i64 0, -7) %i.eu) ; 3 uses
  %i.fk = icmp ugt i64 %spec.select.i.i, %i.ey
  %or.cond.i.i = select i1 %.not.i944, i1 %i.fk, i1 false
  br i1 %or.cond.i.i, label %tg3__json_is_array.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !154
  %i.fn = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.fo = add i64 %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !135
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  br i1 %i.fr, label %tg3__json_is_array.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !155
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !156
  %i.fw = tail call ptr %i.ft(i64 noundef %i.fn, ptr noundef %i.fv) #22, !inline_history !10 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.fw, null
  br i1 %.not37.i.i, label %tg3__json_is_array.exit.thread, label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.s
  store ptr null, ptr %i.fw, align 8, !tbaa !157
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !158
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store i64 %spec.select.i.i, ptr %i.fz, align 8, !tbaa !153
  %i.ga = load i64, ptr %i.fl, align 8, !tbaa !154
  %i.gb = add i64 %i.ga, %i.fn
  store i64 %i.gb, ptr %i.fl, align 8, !tbaa !154
  %i.gc = load ptr, ptr %i.fa, align 8, !tbaa !150 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.gc, null
  %..i.i = select i1 %.not38.i.i, ptr %i.et, ptr %i.gc
  store ptr %i.fw, ptr %..i.i, align 8, !tbaa !159
  store ptr %i.fw, ptr %i.fa, align 8, !tbaa !150
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %i.eu, ptr %i.gd, align 8, !tbaa !152
  br label %.preheader2825

tg3__arena_alloc.exit:                            ; preds = %bb.p
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.pre.i945 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !158 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre.i945, i64 %i.fd
  %i.gg = add i64 %i.fd, %i.eu
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !152
  %.not755 = icmp eq ptr %.pre.i945, null
  br i1 %.not755, label %tg3__json_is_array.exit.thread, label %.preheader2825

.preheader2825:                                   ; preds = %tg3__arena_alloc.exit.thread, %tg3__arena_alloc.exit
  %i.gh = phi ptr [ %i.fx, %tg3__arena_alloc.exit.thread ], [ %i.gf, %tg3__arena_alloc.exit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.t

bb.t:                                             ; preds = %.preheader2825, %bb.eg
  %.06682927 = phi i64 [ 0, %.preheader2825 ], [ %i.aof, %bb.eg ] ; 6 uses
  %i.gw = load i32, ptr %i.ep, align 8, !tbaa !40
  %.not8.i = icmp eq i32 %i.gw, 5
  br i1 %.not8.i, label %bb.u, label %tg3__json_is_object.exit950.thread

bb.u:                                             ; preds = %bb.t
  %i.gx = load i64, ptr %i.er, align 8, !tbaa !37
  %.not9.i = icmp ult i64 %.06682927, %i.gx
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3__json_is_object.exit950.thread

tg3json_array_get.exit:                           ; preds = %bb.u
  %i.gy = load ptr, ptr %i.gi, align 8, !tbaa !37 ; 2 uses
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.06682927 ; 6 uses
  %.not.i949 = icmp eq ptr %i.gy, null
  br i1 %.not.i949, label %tg3__json_is_object.exit950.thread, label %tg3__json_is_object.exit950

tg3__json_is_object.exit950:                      ; preds = %tg3json_array_get.exit
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !40
  %.not2705 = icmp eq i32 %i.ha, 6
  br i1 %.not2705, label %bb.v, label %tg3__json_is_object.exit950.thread

tg3__json_is_object.exit950.thread:               ; preds = %bb.t, %bb.u, %tg3json_array_get.exit, %tg3__json_is_object.exit950
  %i.hb = load ptr, ptr %i.gp, align 8, !tbaa !145
  %i.hc = load ptr, ptr %0, align 8, !tbaa !144
  %i.hd = trunc i64 %.06682927 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.hb, ptr noundef %i.hc, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.49, i32 noundef %i.hd) #21
  br label %bb.eg

bb.v:                                             ; preds = %tg3__json_is_object.exit950
  %i.he = getelementptr inbounds nuw [112 x i8], ptr %i.gh, i64 %.06682927 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i64 0, ptr %i.i, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.he, i8 0, i64 112, i1 false)
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.he, i32 noundef 0, ptr noundef nonnull @.str.65) #21
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40 ; 2 uses
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull @.str.66, ptr noundef %i.hf, i32 noundef 0, ptr noundef nonnull @.str.65) #21
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull @.str.67, ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull @.str.65) #21
  %i.hg = load i64, ptr %i.i, align 8, !tbaa !30  ; 17 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !162
  %i.hi = load i32, ptr %i.gj, align 8, !tbaa !163
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = and i64 %.06682927, 4294967295
  %i.hl = icmp eq i64 %i.hk, 0
  %or.cond.i951 = and i1 %i.hl, %i.hj
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !164 ; 13 uses
  %i.ho = icmp eq i32 %i.hn, 0                    ; 2 uses
  br i1 %or.cond.i951, label %bb.w, label %bb.ba

bb.w:                                             ; preds = %bb.v
  br i1 %i.ho, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.hp = load ptr, ptr %i.gt, align 8, !tbaa !165 ; 2 uses
  %.not96.i = icmp eq ptr %i.hp, null
  br i1 %.not96.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hq = load i64, ptr %i.gu, align 8, !tbaa !166
  %i.hr = icmp ult i64 %i.hq, %i.hg
  br i1 %i.hr, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hs = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i98.i = icmp eq ptr %i.hs, null
  br i1 %.not.i98.i, label %tg3__parse_buffer.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !68 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 12 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !122 ; 3 uses
  %.not27.i.i958 = icmp ult i32 %i.hu, %i.hw
  %.pre.i.i = load ptr, ptr %i.hs, align 8, !tbaa !69 ; 11 uses
  %.pre.i.i3933 = ptrtoaddr ptr %.pre.i.i to i64
  br i1 %.not27.i.i958, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not28.i.i = icmp eq i32 %i.hw, 0
  %i.hx = shl i32 %i.hw, 1
  %spec.select.i.i959 = select i1 %.not28.i.i, i32 16, i32 %i.hx ; 2 uses
  %i.hy = zext i32 %spec.select.i.i959 to i64
  %i.hz = shl nuw nsw i64 %i.hy, 5                ; 4 uses
  %.not.i.i.i960 = icmp eq ptr %.pre.i.i, null
  %i.ia = or disjoint i64 %i.hz, 8
  %i.ib = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.ic = add i64 %i.ib, %i.ia                    ; 3 uses
  %i.id = icmp ugt i64 %i.ic, 524288              ; 2 uses
  br i1 %.not.i.i.i960, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.id, label %tg3__parse_buffer.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ie = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ib ; 2 uses
  store i64 %i.hz, ptr %i.ie, align 8, !tbaa !30
  store i64 %i.ic, ptr @test_heap_used, align 8, !tbaa !30
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  br label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.id, label %tg3__parse_buffer.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ig = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !30
  %i.ii = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ib ; 2 uses
  store i64 %i.hz, ptr %i.ii, align 8, !tbaa !30
  store i64 %i.ic, ptr @test_heap_used, align 8, !tbaa !30
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 9 uses
  %i.ik = call i64 @llvm.umin.i64(i64 %i.ih, i64 %i.hz) ; 11 uses
  %.not27.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not27.i.i.i, label %.loopexit.i.i, label %iter.check3948

iter.check3948:                                   ; preds = %bb.af
  %min.iters.check3934 = icmp samesign ult i64 %i.ik, 4
  br i1 %min.iters.check3934, label %.lr.ph.i.i.i961.preheader, label %vector.memcheck3935

vector.memcheck3935:                              ; preds = %iter.check3948
  %7 = sub i64 %i.ib, %.pre.i.i3933
  %8 = add i64 %7, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check3936 = icmp ult i64 %8, 31
  br i1 %diff.check3936, label %.lr.ph.i.i.i961.preheader, label %vector.main.loop.iter.check3937

vector.main.loop.iter.check3937:                  ; preds = %vector.memcheck3935
  %min.iters.check3938 = icmp samesign ult i64 %i.ik, 32
  br i1 %min.iters.check3938, label %vec.epilog.ph3952, label %vector.ph3939

vector.ph3939:                                    ; preds = %vector.main.loop.iter.check3937
  %i.il = and i64 %i.ik, 28
  %n.vec3940 = and i64 %i.ik, 137438953440        ; 4 uses
  br label %vector.body3941

vector.body3941:                                  ; preds = %vector.ph3939, %vector.body3941
  %index3942 = phi i64 [ 0, %vector.ph3939 ], [ %index.next3945, %vector.body3941 ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3942 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load3943 = load <16 x i8>, ptr %i.im, align 1, !tbaa !37
  %wide.load3944 = load <16 x i8>, ptr %i.in, align 1, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index3942 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <16 x i8> %wide.load3943, ptr %i.io, align 1, !tbaa !37
  store <16 x i8> %wide.load3944, ptr %i.ip, align 1, !tbaa !37
  %index.next3945 = add nuw i64 %index3942, 32    ; 2 uses
  %i.iq = icmp eq i64 %index.next3945, %n.vec3940
  br i1 %i.iq, label %middle.block3946, label %vector.body3941, !llvm.loop !408

middle.block3946:                                 ; preds = %vector.body3941
  %cmp.n3947 = icmp eq i64 %i.ik, %n.vec3940
  br i1 %cmp.n3947, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check3949

vec.epilog.iter.check3949:                        ; preds = %middle.block3946
  %min.epilog.iters.check3951 = icmp eq i64 %i.il, 0
  br i1 %min.epilog.iters.check3951, label %.lr.ph.i.i.i961.preheader, label %vec.epilog.ph3952, !prof !46

vec.epilog.ph3952:                                ; preds = %vector.main.loop.iter.check3937, %vec.epilog.iter.check3949
  %vec.epilog.resume.val3953 = phi i64 [ %n.vec3940, %vec.epilog.iter.check3949 ], [ 0, %vector.main.loop.iter.check3937 ]
  %n.vec3954 = and i64 %i.ik, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body3955

vec.epilog.vector.body3955:                       ; preds = %vec.epilog.vector.body3955, %vec.epilog.ph3952
  %index3956 = phi i64 [ %vec.epilog.resume.val3953, %vec.epilog.ph3952 ], [ %index.next3958, %vec.epilog.vector.body3955 ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3956
  %wide.load3957 = load <4 x i8>, ptr %i.ir, align 1, !tbaa !37
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index3956
  store <4 x i8> %wide.load3957, ptr %i.is, align 1, !tbaa !37
  %index.next3958 = add nuw i64 %index3956, 4     ; 2 uses
  %i.it = icmp eq i64 %index.next3958, %n.vec3954
  br i1 %i.it, label %vec.epilog.middle.block3959, label %vec.epilog.vector.body3955, !llvm.loop !409

vec.epilog.middle.block3959:                      ; preds = %vec.epilog.vector.body3955
  %cmp.n3960 = icmp eq i64 %i.ik, %n.vec3954
  br i1 %cmp.n3960, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961.preheader

.lr.ph.i.i.i961.preheader:                        ; preds = %iter.check3948, %vector.memcheck3935, %vec.epilog.iter.check3949, %vec.epilog.middle.block3959
  %.026.i.i.i.ph = phi i64 [ 0, %iter.check3948 ], [ 0, %vector.memcheck3935 ], [ %n.vec3940, %vec.epilog.iter.check3949 ], [ %n.vec3954, %vec.epilog.middle.block3959 ] ; 3 uses
  %xtraiter4659 = and i64 %i.ik, 3                ; 2 uses
  %lcmp.mod4660.not = icmp eq i64 %xtraiter4659, 0
  br i1 %lcmp.mod4660.not, label %.lr.ph.i.i.i961.prol.loopexit, label %.lr.ph.i.i.i961.prol

.lr.ph.i.i.i961.prol:                             ; preds = %.lr.ph.i.i.i961.preheader, %.lr.ph.i.i.i961.prol
  %.026.i.i.i.prol = phi i64 [ %i.ix, %.lr.ph.i.i.i961.prol ], [ %.026.i.i.i.ph, %.lr.ph.i.i.i961.preheader ] ; 3 uses
  %prol.iter4661 = phi i64 [ %prol.iter4661.next, %.lr.ph.i.i.i961.prol ], [ 0, %.lr.ph.i.i.i961.preheader ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.026.i.i.i.prol
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !37
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.026.i.i.i.prol
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !37
  %i.ix = add nuw nsw i64 %.026.i.i.i.prol, 1     ; 2 uses
  %prol.iter4661.next = add i64 %prol.iter4661, 1 ; 2 uses
  %prol.iter4661.cmp.not = icmp eq i64 %prol.iter4661.next, %xtraiter4659
  br i1 %prol.iter4661.cmp.not, label %.lr.ph.i.i.i961.prol.loopexit, label %.lr.ph.i.i.i961.prol, !llvm.loop !410

.lr.ph.i.i.i961.prol.loopexit:                    ; preds = %.lr.ph.i.i.i961.prol, %.lr.ph.i.i.i961.preheader
  %.026.i.i.i.unr = phi i64 [ %.026.i.i.i.ph, %.lr.ph.i.i.i961.preheader ], [ %i.ix, %.lr.ph.i.i.i961.prol ]
  %i.iy = sub nsw i64 %.026.i.i.i.ph, %i.ik
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961

.lr.ph.i.i.i961:                                  ; preds = %.lr.ph.i.i.i961.prol.loopexit, %.lr.ph.i.i.i961
  %.026.i.i.i = phi i64 [ %i.jp, %.lr.ph.i.i.i961 ], [ %.026.i.i.i.unr, %.lr.ph.i.i.i961.prol.loopexit ] ; 6 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.026.i.i.i
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !37
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.026.i.i.i
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !37
  %i.jd = add nuw nsw i64 %.026.i.i.i, 1          ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.jd
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !37
  %i.jh = add nuw nsw i64 %.026.i.i.i, 2          ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !37
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.jh
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !37
  %i.jl = add nuw nsw i64 %.026.i.i.i, 3          ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !37
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.jl
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !37
  %i.jp = add nuw nsw i64 %.026.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.jp, %i.ik
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961, !llvm.loop !411

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i.i.i961.prol.loopexit, %.lr.ph.i.i.i961, %vec.epilog.middle.block3959, %middle.block3946
  %.pre33.pre.i.i = load i32, ptr %i.ht, align 8, !tbaa !68
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %bb.af, %bb.ad
  %.pre33.i.i = phi i32 [ %i.hu, %bb.ad ], [ %i.hu, %bb.af ], [ %.pre33.pre.i.i, %.loopexit.loopexit.i.i ]
  %.018.i.ph.i.i = phi ptr [ %i.if, %bb.ad ], [ %i.ij, %bb.af ], [ %i.ij, %.loopexit.loopexit.i.i ] ; 2 uses
  store ptr %.018.i.ph.i.i, ptr %i.hs, align 8, !tbaa !69
  store i32 %spec.select.i.i959, ptr %i.hv, align 4, !tbaa !122
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.i, %bb.aa
  %i.jq = phi i32 [ %.pre33.i.i, %.loopexit.i.i ], [ %i.hu, %bb.aa ] ; 2 uses
  %i.jr = phi ptr [ %.018.i.ph.i.i, %.loopexit.i.i ], [ %.pre.i.i, %bb.aa ]
  %i.js = add i32 %i.jq, 1
  store i32 %i.js, ptr %i.ht, align 8, !tbaa !68
  %i.jt = zext i32 %i.jq to i64
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.jr, i64 %i.jt ; 5 uses
  store i32 2, ptr %i.ju, align 8, !tbaa !124
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 45, ptr %i.jv, align 4, !tbaa !125
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store ptr @.str.68, ptr %i.jw, align 8, !tbaa !126
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store ptr null, ptr %i.jx, align 8, !tbaa !127
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i64 -1, ptr %i.jy, align 8, !tbaa !128
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i32 1, ptr %i.jz, align 8, !tbaa !67
  br label %tg3__parse_buffer.exit

bb.ah:                                            ; preds = %bb.y
  %i.ka = load i32, ptr %i.gv, align 8, !tbaa !542
  %.not97.i = icmp eq i32 %i.ka, 0
  br i1 %.not97.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kb = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %i.hp, ptr %i.kb, align 8, !tbaa !167
  %i.kc = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %i.hg, ptr %i.kc, align 8, !tbaa !168
  %i.kd = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef %i.kd) #21
  br label %tg3__parse_buffer.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ke = load ptr, ptr %0, align 8, !tbaa !144   ; 9 uses
  %i.kf = icmp eq ptr %i.ke, null
  %i.kg = icmp eq i64 %i.hg, 0                    ; 3 uses
  %or.cond.i.i955 = or i1 %i.kg, %i.kf
  br i1 %or.cond.i.i955, label %tg3__arena_alloc.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !136 ; 3 uses
  %.not.i99.i = icmp ne i64 %i.ki, 0              ; 2 uses
  %i.kj = icmp ugt i64 %i.hg, %i.ki
  %or.cond28.i.i = and i1 %.not.i99.i, %i.kj
  br i1 %or.cond28.i.i, label %tg3__arena_alloc.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kk = add i64 %i.hg, 7
  %i.kl = and i64 %i.kk, -8                       ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !150 ; 5 uses
  %.not26.i.i = icmp eq ptr %i.kn, null
  br i1 %.not26.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !152 ; 2 uses
  %i.kq = add i64 %i.kp, %i.kl
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !153
  %i.kt = icmp ugt i64 %i.kq, %i.ks
  br i1 %i.kt, label %bb.an, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.am
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.pre.i100.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !158
  br label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !134
  %spec.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.kv, i64 range(i64 0, -7) %i.kl) ; 3 uses
  %i.kw = icmp ugt i64 %spec.select.i.i.i, %i.ki
  %or.cond.i.i.i = select i1 %.not.i99.i, i1 %i.kw, i1 false
  br i1 %or.cond.i.i.i, label %tg3__arena_alloc.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 3 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !154
  %i.kz = add i64 %spec.select.i.i.i, 32          ; 3 uses
  %i.la = add i64 %i.ky, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !135
  %i.ld = icmp ugt i64 %i.la, %i.lc
  br i1 %i.ld, label %tg3__arena_alloc.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.le = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !155
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !156
  %i.li = call ptr %i.lf(i64 noundef %i.kz, ptr noundef %i.lh) #22, !inline_history !412 ; 9 uses
  %.not37.i.i.i = icmp eq ptr %i.li, null
  br i1 %.not37.i.i.i, label %tg3__arena_alloc.exit.i, label %tg3__arena_new_block.exit.i.i

tg3__arena_new_block.exit.i.i:                    ; preds = %bb.ap
  store ptr null, ptr %i.li, align 8, !tbaa !157
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !158
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store i64 0, ptr %i.ll, align 8, !tbaa !152
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store i64 %spec.select.i.i.i, ptr %i.lm, align 8, !tbaa !153
  %i.ln = load i64, ptr %i.kx, align 8, !tbaa !154
  %i.lo = add i64 %i.ln, %i.kz
  store i64 %i.lo, ptr %i.kx, align 8, !tbaa !154
  %i.lp = load ptr, ptr %i.km, align 8, !tbaa !150 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.lp, null
  %..i.i.i = select i1 %.not38.i.i.i, ptr %i.ke, ptr %i.lp
  store ptr %i.li, ptr %..i.i.i, align 8, !tbaa !159
  store ptr %i.li, ptr %i.km, align 8, !tbaa !150
  br label %bb.aq

bb.aq:                                            ; preds = %tg3__arena_new_block.exit.i.i, %._crit_edge.i.i
  %i.lq = phi i64 [ 0, %tg3__arena_new_block.exit.i.i ], [ %i.kp, %._crit_edge.i.i ] ; 2 uses
  %i.lr = phi ptr [ %i.lj, %tg3__arena_new_block.exit.i.i ], [ %.pre.i100.i, %._crit_edge.i.i ]
  %.0.i.i956 = phi ptr [ %i.li, %tg3__arena_new_block.exit.i.i ], [ %i.kn, %._crit_edge.i.i ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.i.i956, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lq
  %i.lu = add i64 %i.lq, %i.kl
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !152
  br label %tg3__arena_alloc.exit.i

tg3__arena_alloc.exit.i:                          ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj
  %.020.i.i = phi ptr [ null, %bb.ak ], [ null, %bb.aj ], [ %i.lt, %bb.aq ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.ap ] ; 8 uses
  %.020.i.i3965 = ptrtoaddr ptr %.020.i.i to i64
  %i.lv = icmp ne ptr %.020.i.i, null
  %or.cond6.not.i = or i1 %i.kg, %i.lv
  br i1 %or.cond6.not.i, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %tg3__arena_alloc.exit.i
  %i.lw = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i2350 = icmp eq ptr %i.lw, null
  br i1 %.not.i2350, label %tg3__parse_buffer.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 3 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !68 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 12 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !122 ; 3 uses
  %.not27.i2351 = icmp ult i32 %i.ly, %i.ma
  %.pre.i2352 = load ptr, ptr %i.lw, align 8, !tbaa !69 ; 11 uses
  %.pre.i23524002 = ptrtoaddr ptr %.pre.i2352 to i64
  br i1 %.not27.i2351, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not28.i2353 = icmp eq i32 %i.ma, 0
  %i.mb = shl i32 %i.ma, 1
  %spec.select.i2354 = select i1 %.not28.i2353, i32 16, i32 %i.mb ; 2 uses
  %i.mc = zext i32 %spec.select.i2354 to i64
  %i.md = shl nuw nsw i64 %i.mc, 5                ; 4 uses
  %.not.i.i2355 = icmp eq ptr %.pre.i2352, null
  %i.me = or disjoint i64 %i.md, 8
  %i.mf = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.mg = add i64 %i.mf, %i.me                    ; 3 uses
  %i.mh = icmp ugt i64 %i.mg, 524288              ; 2 uses
  br i1 %.not.i.i2355, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  br i1 %i.mh, label %tg3__parse_buffer.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mi = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.mf ; 2 uses
  store i64 %i.md, ptr %i.mi, align 8, !tbaa !30
  store i64 %i.mg, ptr @test_heap_used, align 8, !tbaa !30
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  br label %.loopexit.i2362

bb.aw:                                            ; preds = %bb.at
  br i1 %i.mh, label %tg3__parse_buffer.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mk = getelementptr inbounds i8, ptr %.pre.i2352, i64 -8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !30
  %i.mm = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.mf ; 2 uses
  store i64 %i.md, ptr %i.mm, align 8, !tbaa !30
  store i64 %i.mg, ptr @test_heap_used, align 8, !tbaa !30
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 9 uses
  %i.mo = call i64 @llvm.umin.i64(i64 %i.ml, i64 %i.md) ; 11 uses
  %.not27.i.i2356 = icmp eq i64 %i.mo, 0
  br i1 %.not27.i.i2356, label %.loopexit.i2362, label %iter.check4017

iter.check4017:                                   ; preds = %bb.ax
  %min.iters.check4003 = icmp samesign ult i64 %i.mo, 4
  br i1 %min.iters.check4003, label %.lr.ph.i.i2357.preheader, label %vector.memcheck4004

vector.memcheck4004:                              ; preds = %iter.check4017
  %9 = sub i64 %i.mf, %.pre.i23524002
  %10 = add i64 %9, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check4005 = icmp ult i64 %10, 31
  br i1 %diff.check4005, label %.lr.ph.i.i2357.preheader, label %vector.main.loop.iter.check4006

vector.main.loop.iter.check4006:                  ; preds = %vector.memcheck4004
  %min.iters.check4007 = icmp samesign ult i64 %i.mo, 32
  br i1 %min.iters.check4007, label %vec.epilog.ph4021, label %vector.ph4008

vector.ph4008:                                    ; preds = %vector.main.loop.iter.check4006
  %i.mp = and i64 %i.mo, 28
  %n.vec4009 = and i64 %i.mo, 137438953440        ; 4 uses
  br label %vector.body4010

vector.body4010:                                  ; preds = %vector.ph4008, %vector.body4010
  %index4011 = phi i64 [ 0, %vector.ph4008 ], [ %index.next4014, %vector.body4010 ] ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %index4011 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load4012 = load <16 x i8>, ptr %i.mq, align 1, !tbaa !37
  %wide.load4013 = load <16 x i8>, ptr %i.mr, align 1, !tbaa !37
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index4011 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store <16 x i8> %wide.load4012, ptr %i.ms, align 1, !tbaa !37
  store <16 x i8> %wide.load4013, ptr %i.mt, align 1, !tbaa !37
  %index.next4014 = add nuw i64 %index4011, 32    ; 2 uses
  %i.mu = icmp eq i64 %index.next4014, %n.vec4009
  br i1 %i.mu, label %middle.block4015, label %vector.body4010, !llvm.loop !413

middle.block4015:                                 ; preds = %vector.body4010
  %cmp.n4016 = icmp eq i64 %i.mo, %n.vec4009
  br i1 %cmp.n4016, label %.loopexit.loopexit.i2360, label %vec.epilog.iter.check4018

vec.epilog.iter.check4018:                        ; preds = %middle.block4015
  %min.epilog.iters.check4020 = icmp eq i64 %i.mp, 0
  br i1 %min.epilog.iters.check4020, label %.lr.ph.i.i2357.preheader, label %vec.epilog.ph4021, !prof !46

vec.epilog.ph4021:                                ; preds = %vector.main.loop.iter.check4006, %vec.epilog.iter.check4018
  %vec.epilog.resume.val4022 = phi i64 [ %n.vec4009, %vec.epilog.iter.check4018 ], [ 0, %vector.main.loop.iter.check4006 ]
  %n.vec4023 = and i64 %i.mo, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body4024

vec.epilog.vector.body4024:                       ; preds = %vec.epilog.vector.body4024, %vec.epilog.ph4021
  %index4025 = phi i64 [ %vec.epilog.resume.val4022, %vec.epilog.ph4021 ], [ %index.next4027, %vec.epilog.vector.body4024 ] ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %index4025
  %wide.load4026 = load <4 x i8>, ptr %i.mv, align 1, !tbaa !37
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index4025
  store <4 x i8> %wide.load4026, ptr %i.mw, align 1, !tbaa !37
  %index.next4027 = add nuw i64 %index4025, 4     ; 2 uses
  %i.mx = icmp eq i64 %index.next4027, %n.vec4023
  br i1 %i.mx, label %vec.epilog.middle.block4028, label %vec.epilog.vector.body4024, !llvm.loop !414

vec.epilog.middle.block4028:                      ; preds = %vec.epilog.vector.body4024
  %cmp.n4029 = icmp eq i64 %i.mo, %n.vec4023
  br i1 %cmp.n4029, label %.loopexit.loopexit.i2360, label %.lr.ph.i.i2357.preheader

.lr.ph.i.i2357.preheader:                         ; preds = %iter.check4017, %vector.memcheck4004, %vec.epilog.iter.check4018, %vec.epilog.middle.block4028
  %.026.i.i2358.ph = phi i64 [ 0, %iter.check4017 ], [ 0, %vector.memcheck4004 ], [ %n.vec4009, %vec.epilog.iter.check4018 ], [ %n.vec4023, %vec.epilog.middle.block4028 ] ; 3 uses
  %xtraiter4653 = and i64 %i.mo, 3                ; 2 uses
  %lcmp.mod4654.not = icmp eq i64 %xtraiter4653, 0
  br i1 %lcmp.mod4654.not, label %.lr.ph.i.i2357.prol.loopexit, label %.lr.ph.i.i2357.prol

.lr.ph.i.i2357.prol:                              ; preds = %.lr.ph.i.i2357.preheader, %.lr.ph.i.i2357.prol
  %.026.i.i2358.prol = phi i64 [ %i.nb, %.lr.ph.i.i2357.prol ], [ %.026.i.i2358.ph, %.lr.ph.i.i2357.preheader ] ; 3 uses
  %prol.iter4655 = phi i64 [ %prol.iter4655.next, %.lr.ph.i.i2357.prol ], [ 0, %.lr.ph.i.i2357.preheader ]
  %i.my = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %.026.i.i2358.prol
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !37
  %i.na = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.026.i.i2358.prol
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !37
  %i.nb = add nuw nsw i64 %.026.i.i2358.prol, 1   ; 2 uses
  %prol.iter4655.next = add i64 %prol.iter4655, 1 ; 2 uses
  %prol.iter4655.cmp.not = icmp eq i64 %prol.iter4655.next, %xtraiter4653
  br i1 %prol.iter4655.cmp.not, label %.lr.ph.i.i2357.prol.loopexit, label %.lr.ph.i.i2357.prol, !llvm.loop !415

.lr.ph.i.i2357.prol.loopexit:                     ; preds = %.lr.ph.i.i2357.prol, %.lr.ph.i.i2357.preheader
  %.026.i.i2358.unr = phi i64 [ %.026.i.i2358.ph, %.lr.ph.i.i2357.preheader ], [ %i.nb, %.lr.ph.i.i2357.prol ]
  %i.nc = sub nsw i64 %.026.i.i2358.ph, %i.mo
  %i.nd = icmp ugt i64 %i.nc, -4
  br i1 %i.nd, label %.loopexit.loopexit.i2360, label %.lr.ph.i.i2357

.lr.ph.i.i2357:                                   ; preds = %.lr.ph.i.i2357.prol.loopexit, %.lr.ph.i.i2357
  %.026.i.i2358 = phi i64 [ %i.nt, %.lr.ph.i.i2357 ], [ %.026.i.i2358.unr, %.lr.ph.i.i2357.prol.loopexit ] ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %.026.i.i2358
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !37
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.026.i.i2358
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !37
  %i.nh = add nuw nsw i64 %.026.i.i2358, 1        ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !37
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.nh
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !37
  %i.nl = add nuw nsw i64 %.026.i.i2358, 2        ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.nl
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !37
  %i.np = add nuw nsw i64 %.026.i.i2358, 3        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !37
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.np
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !37
  %i.nt = add nuw nsw i64 %.026.i.i2358, 4        ; 2 uses
  %exitcond.not.i.i2359.3 = icmp eq i64 %i.nt, %i.mo
  br i1 %exitcond.not.i.i2359.3, label %.loopexit.loopexit.i2360, label %.lr.ph.i.i2357, !llvm.loop !416

.loopexit.loopexit.i2360:                         ; preds = %.lr.ph.i.i2357.prol.loopexit, %.lr.ph.i.i2357, %vec.epilog.middle.block4028, %middle.block4015
  %.pre33.pre.i2361 = load i32, ptr %i.lx, align 8, !tbaa !68
  br label %.loopexit.i2362

.loopexit.i2362:                                  ; preds = %.loopexit.loopexit.i2360, %bb.ax, %bb.av
  %.pre33.i2363 = phi i32 [ %i.ly, %bb.av ], [ %i.ly, %bb.ax ], [ %.pre33.pre.i2361, %.loopexit.loopexit.i2360 ]
  %.018.i.ph.i2364 = phi ptr [ %i.mj, %bb.av ], [ %i.mn, %bb.ax ], [ %i.mn, %.loopexit.loopexit.i2360 ] ; 2 uses
  store ptr %.018.i.ph.i2364, ptr %i.lw, align 8, !tbaa !69
  store i32 %spec.select.i2354, ptr %i.lz, align 4, !tbaa !122
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.i2362, %bb.as
  %i.nu = phi i32 [ %.pre33.i2363, %.loopexit.i2362 ], [ %i.ly, %bb.as ] ; 2 uses
  %i.nv = phi ptr [ %.018.i.ph.i2364, %.loopexit.i2362 ], [ %.pre.i2352, %bb.as ]
  %i.nw = add i32 %i.nu, 1
  store i32 %i.nw, ptr %i.lx, align 8, !tbaa !68
  %i.nx = zext i32 %i.nu to i64
  %i.ny = getelementptr inbounds nuw [32 x i8], ptr %i.nv, i64 %i.nx ; 5 uses
  store i32 2, ptr %i.ny, align 8, !tbaa !124
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store i32 50, ptr %i.nz, align 4, !tbaa !125
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store ptr @.str.70, ptr %i.oa, align 8, !tbaa !126
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store ptr null, ptr %i.ob, align 8, !tbaa !127
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  store i64 -1, ptr %i.oc, align 8, !tbaa !128
  %i.od = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store i32 1, ptr %i.od, align 8, !tbaa !67
  br label %tg3__parse_buffer.exit

bb.az:                                            ; preds = %tg3__arena_alloc.exit.i
  br i1 %i.kg, label %tg3__error_push.exit.i, label %iter.check3981

iter.check3981:                                   ; preds = %bb.az
  %i.oe = load ptr, ptr %i.gt, align 8, !tbaa !165 ; 6 uses
  %min.iters.check3966 = icmp ult i64 %i.hg, 4
  %i.of = ptrtoaddr ptr %i.oe to i64
  %i.og = sub i64 %i.of, %.020.i.i3965
  %diff.check3968 = icmp ugt i64 %i.og, -32
  %or.cond = select i1 %min.iters.check3966, i1 true, i1 %diff.check3968
  br i1 %or.cond, label %.lr.ph.i.i957.preheader, label %vector.main.loop.iter.check3969

vector.main.loop.iter.check3969:                  ; preds = %iter.check3981
  %min.iters.check3970 = icmp ult i64 %i.hg, 32
  br i1 %min.iters.check3970, label %vec.epilog.ph3985, label %vector.ph3971

vector.ph3971:                                    ; preds = %vector.main.loop.iter.check3969
  %i.oh = and i64 %i.hg, 28
  %n.vec3972 = and i64 %i.hg, -32                 ; 5 uses
  %i.oi = getelementptr i8, ptr %i.oe, i64 %n.vec3972
  %i.oj = getelementptr i8, ptr %.020.i.i, i64 %n.vec3972
  %i.ok = and i64 %i.hg, 31
  br label %vector.body3973

vector.body3973:                                  ; preds = %vector.ph3971, %vector.body3973
  %index3974 = phi i64 [ 0, %vector.ph3971 ], [ %index.next3978, %vector.body3973 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.oe, i64 %index3974 ; 2 uses
  %next.gep3975 = getelementptr i8, ptr %.020.i.i, i64 %index3974 ; 2 uses
  %i.ol = getelementptr i8, ptr %next.gep, i64 16
  %wide.load3976 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !37
  %wide.load3977 = load <16 x i8>, ptr %i.ol, align 1, !tbaa !37
  %i.om = getelementptr i8, ptr %next.gep3975, i64 16
  store <16 x i8> %wide.load3976, ptr %next.gep3975, align 1, !tbaa !37
  store <16 x i8> %wide.load3977, ptr %i.om, align 1, !tbaa !37
  %index.next3978 = add nuw i64 %index3974, 32    ; 2 uses
  %i.on = icmp eq i64 %index.next3978, %n.vec3972
  br i1 %i.on, label %middle.block3979, label %vector.body3973, !llvm.loop !417

middle.block3979:                                 ; preds = %vector.body3973
  %cmp.n3980 = icmp eq i64 %i.hg, %n.vec3972
  br i1 %cmp.n3980, label %tg3__error_push.exit.i, label %vec.epilog.iter.check3982

vec.epilog.iter.check3982:                        ; preds = %middle.block3979
  %min.epilog.iters.check3984 = icmp eq i64 %i.oh, 0
  br i1 %min.epilog.iters.check3984, label %.lr.ph.i.i957.preheader, label %vec.epilog.ph3985, !prof !46

vec.epilog.ph3985:                                ; preds = %vector.main.loop.iter.check3969, %vec.epilog.iter.check3982
  %vec.epilog.resume.val3986 = phi i64 [ %n.vec3972, %vec.epilog.iter.check3982 ], [ 0, %vector.main.loop.iter.check3969 ]
  %n.vec3987 = and i64 %i.hg, -4                  ; 4 uses
  %i.oo = getelementptr i8, ptr %i.oe, i64 %n.vec3987
  %i.op = getelementptr i8, ptr %.020.i.i, i64 %n.vec3987
  %i.oq = and i64 %i.hg, 3
  br label %vec.epilog.vector.body3988

vec.epilog.vector.body3988:                       ; preds = %vec.epilog.vector.body3988, %vec.epilog.ph3985
  %index3989 = phi i64 [ %vec.epilog.resume.val3986, %vec.epilog.ph3985 ], [ %index.next3993, %vec.epilog.vector.body3988 ] ; 3 uses
  %next.gep3990 = getelementptr i8, ptr %i.oe, i64 %index3989
  %next.gep3991 = getelementptr i8, ptr %.020.i.i, i64 %index3989
  %wide.load3992 = load <4 x i8>, ptr %next.gep3990, align 1, !tbaa !37
  store <4 x i8> %wide.load3992, ptr %next.gep3991, align 1, !tbaa !37
  %index.next3993 = add nuw i64 %index3989, 4     ; 2 uses
  %i.or = icmp eq i64 %index.next3993, %n.vec3987
  br i1 %i.or, label %vec.epilog.middle.block3994, label %vec.epilog.vector.body3988, !llvm.loop !418

vec.epilog.middle.block3994:                      ; preds = %vec.epilog.vector.body3988
  %cmp.n3995 = icmp eq i64 %i.hg, %n.vec3987
  br i1 %cmp.n3995, label %tg3__error_push.exit.i, label %.lr.ph.i.i957.preheader

end_hunk_3
begin_hunk_4_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.ti = add i64 %i.th, %i.td                    ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !153
  %i.tl = icmp ugt i64 %i.ti, %i.tk
  br i1 %i.tl, label %bb.bj, label %tg3__arena_alloc.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.tm = getelementptr inbounds nuw i8, ptr %i.qm, i64 40
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !134
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.tn, i64 range(i64 0, -7) %i.td) ; 3 uses
  %i.to = icmp ugt i64 %spec.select.i.i.i.i.i, %i.ta
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.to, i1 false
  br i1 %or.cond.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.tp = getelementptr inbounds nuw i8, ptr %i.qm, i64 16 ; 3 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !154
  %i.tr = add i64 %spec.select.i.i.i.i.i, 32      ; 3 uses
  %i.ts = add i64 %i.tq, %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !135
  %i.tv = icmp ugt i64 %i.ts, %i.tu
  br i1 %i.tv, label %tg3__decode_data_uri.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.tw = getelementptr inbounds nuw i8, ptr %i.qm, i64 48
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !155
  %i.ty = getelementptr inbounds nuw i8, ptr %i.qm, i64 72
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !156
  %i.ua = call ptr %i.tx(i64 noundef %i.tr, ptr noundef %i.tz) #22, !inline_history !429 ; 8 uses
  %.not37.i.i.i.i.i = icmp eq ptr %i.ua, null
  br i1 %.not37.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %tg3__arena_alloc.exit.thread62.i.i.i

tg3__arena_alloc.exit.thread62.i.i.i:             ; preds = %bb.bl
  store ptr null, ptr %i.ua, align 8, !tbaa !157
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 32 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store ptr %i.ub, ptr %i.uc, align 8, !tbaa !158
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  store i64 %spec.select.i.i.i.i.i, ptr %i.ud, align 8, !tbaa !153
  %i.ue = load i64, ptr %i.tp, align 8, !tbaa !154
  %i.uf = add i64 %i.ue, %i.tr
  store i64 %i.uf, ptr %i.tp, align 8, !tbaa !154
  %i.ug = load ptr, ptr %i.te, align 8, !tbaa !150 ; 2 uses
  %.not38.i.i.i.i.i = icmp eq ptr %i.ug, null
  %..i.i.i.i.i = select i1 %.not38.i.i.i.i.i, ptr %i.qm, ptr %i.ug
  store ptr %i.ua, ptr %..i.i.i.i.i, align 8, !tbaa !159
  store ptr %i.ua, ptr %i.te, align 8, !tbaa !150
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store i64 %i.td, ptr %i.uh, align 8, !tbaa !152
  br label %.preheader.i.i.i

tg3__arena_alloc.exit.i.i.i:                      ; preds = %bb.bi
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !158 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %i.th
  store i64 %i.ti, ptr %i.tg, align 8, !tbaa !152
  %.not42.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not42.i.i.i, label %tg3__decode_data_uri.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %tg3__arena_alloc.exit.i.i.i, %tg3__arena_alloc.exit.thread62.i.i.i
  %i.uj = phi ptr [ %i.ub, %tg3__arena_alloc.exit.thread62.i.i.i ], [ %i.ui, %tg3__arena_alloc.exit.i.i.i ] ; 3 uses
  %.not54.i.i.i = icmp eq i64 %.036.lcssa.i.i.i, 0
  br i1 %.not54.i.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.preheader.i.i.i, %bb.bt
  %.053.i.i.i = phi i32 [ %.2.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.02952.i.i.i = phi i32 [ %.130.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %.03151.i.i.i = phi i64 [ %.233.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.03450.i.i.i = phi i64 [ %i.vc, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.rz, i64 %.03450.i.i.i
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !37  ; 5 uses
  %i.um = zext i8 %i.ul to i32                    ; 3 uses
  %i.un = add i8 %i.ul, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.un, 26
  br i1 %or.cond.i.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i21.i.i
  %i.uo = add nsw i32 %i.um, -65
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i21.i.i
  %i.up = add i8 %i.ul, -97
  %or.cond5.i.i.i.i = icmp ult i8 %i.up, 26
  br i1 %or.cond5.i.i.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.uq = add nsw i32 %i.um, -71
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ur = add i8 %i.ul, -48
  %or.cond8.i.i.i.i = icmp ult i8 %i.ur, 10
  br i1 %or.cond8.i.i.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.us = add nuw nsw i32 %i.um, 4
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.br:                                            ; preds = %bb.bp
  switch i8 %i.ul, label %bb.bt [
    i8 43, label %tg3__b64_decode_char.exit.thread.i.i.i
    i8 47, label %tg3__b64_decode_char.exit.thread.fold.split.i.i.i
  ]

tg3__b64_decode_char.exit.thread.fold.split.i.i.i: ; preds = %bb.br
  br label %tg3__b64_decode_char.exit.thread.i.i.i

tg3__b64_decode_char.exit.thread.i.i.i:           ; preds = %tg3__b64_decode_char.exit.thread.fold.split.i.i.i, %bb.br, %bb.bq, %bb.bo, %bb.bm
  %.0.i4347.i.i.i = phi i32 [ 62, %bb.br ], [ %i.uo, %bb.bm ], [ %i.us, %bb.bq ], [ %i.uq, %bb.bo ], [ 63, %tg3__b64_decode_char.exit.thread.fold.split.i.i.i ]
  %i.ut = shl i32 %.02952.i.i.i, 6
  %i.uu = or i32 %.0.i4347.i.i.i, %i.ut           ; 3 uses
  %i.uv = add nuw nsw i32 %.053.i.i.i, 6
  %i.uw = icmp sgt i32 %.053.i.i.i, 1
  br i1 %i.uw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %tg3__b64_decode_char.exit.thread.i.i.i
  %i.ux = add nsw i32 %.053.i.i.i, -2             ; 2 uses
  %i.uy = lshr i32 %i.uu, %i.ux
  %i.uz = trunc i32 %i.uy to i8
  %i.va = add i64 %.03151.i.i.i, 1
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uj, i64 %.03151.i.i.i
  store i8 %i.uz, ptr %i.vb, align 1, !tbaa !37
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %tg3__b64_decode_char.exit.thread.i.i.i, %bb.br
  %.233.i.i.i = phi i64 [ %.03151.i.i.i, %bb.br ], [ %i.va, %bb.bs ], [ %.03151.i.i.i, %tg3__b64_decode_char.exit.thread.i.i.i ] ; 2 uses
  %.130.i.i.i = phi i32 [ %.02952.i.i.i, %bb.br ], [ %i.uu, %bb.bs ], [ %i.uu, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %.2.i.i.i = phi i32 [ %.053.i.i.i, %bb.br ], [ %i.ux, %bb.bs ], [ %i.uv, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %i.vc = add nuw i64 %.03450.i.i.i, 1            ; 2 uses
  %exitcond.not.i22.i.i = icmp eq i64 %i.vc, %.036.lcssa.i.i.i
  br i1 %exitcond.not.i22.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i21.i.i, !llvm.loop !430

tg3__decode_data_uri.exit.i:                      ; preds = %bb.bb, %bb.bt, %.preheader.i.i.i, %tg3__arena_alloc.exit.i.i.i, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %.critedge.i.i.i, %tg3__memcpy.exit.i.i, %.preheader.6.i.i.i, %.preheader.5.i.i.i, %.preheader.4.i.i.i, %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.preheader.preheader.i.i.i, %tg3__memcpy.exit.i.i.i, %tg3__memcmp.exit.thread.i.i.i, %.preheader53.4.i.i.i, %.preheader53.3.i.i.i, %.preheader53.2.i.i.i, %.preheader53.1.i.i.i, %tg3__memset.exit108.i
  %storemerge.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %.233.i.i.i, %bb.bt ], [ 0, %tg3__memcpy.exit.i.i.i ], [ 0, %tg3__memcmp.exit.thread.i.i.i ], [ 0, %.preheader.preheader.i.i.i ], [ 0, %tg3__memset.exit108.i ], [ 0, %.preheader.6.i.i.i ], [ 0, %.preheader.5.i.i.i ], [ 0, %.preheader.4.i.i.i ], [ 0, %.preheader.3.i.i.i ], [ 0, %.preheader.2.i.i.i ], [ 0, %.preheader.1.i.i.i ], [ 0, %.preheader53.4.i.i.i ], [ 0, %.preheader53.3.i.i.i ], [ 0, %.preheader53.2.i.i.i ], [ 0, %.preheader53.1.i.i.i ], [ 0, %tg3__arena_alloc.exit.i.i.i ], [ 0, %tg3__memcpy.exit.i.i ], [ 0, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %.critedge.i.i.i ], [ 0, %bb.bg ], [ 0, %bb.bb ]
  %.015.i.i = phi ptr [ %i.uj, %.preheader.i.i.i ], [ %i.uj, %bb.bt ], [ null, %tg3__memcpy.exit.i.i.i ], [ null, %tg3__memcmp.exit.thread.i.i.i ], [ null, %.preheader.preheader.i.i.i ], [ null, %tg3__memset.exit108.i ], [ null, %.preheader.6.i.i.i ], [ null, %.preheader.5.i.i.i ], [ null, %.preheader.4.i.i.i ], [ null, %.preheader.3.i.i.i ], [ null, %.preheader.2.i.i.i ], [ null, %.preheader.1.i.i.i ], [ null, %.preheader53.4.i.i.i ], [ null, %.preheader53.3.i.i.i ], [ null, %.preheader53.2.i.i.i ], [ null, %.preheader53.1.i.i.i ], [ null, %tg3__arena_alloc.exit.i.i.i ], [ null, %tg3__memcpy.exit.i.i ], [ null, %bb.bl ], [ null, %bb.bj ], [ null, %bb.bk ], [ null, %.critedge.i.i.i ], [ null, %bb.bg ], [ null, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.vd = icmp ne ptr %.015.i.i, null
  %i.ve = load i64, ptr %i.i, align 8
  %i.vf = icmp eq i64 %i.ve, 0
  %or.cond8.not.i = select i1 %i.vd, i1 true, i1 %i.vf
  br i1 %or.cond8.not.i, label %tg3__error_push.exit129.i, label %bb.bu

bb.bu:                                            ; preds = %tg3__decode_data_uri.exit.i
  %i.vg = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i114.i = icmp eq ptr %i.vg, null
  br i1 %.not.i114.i, label %tg3__error_push.exit129.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 3 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !68 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 12 ; 2 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !122 ; 3 uses
  %.not27.i115.i = icmp ult i32 %i.vi, %i.vk
  %.pre.i116.i = load ptr, ptr %i.vg, align 8, !tbaa !69 ; 11 uses
  %.pre.i116.i4034 = ptrtoaddr ptr %.pre.i116.i to i64
  br i1 %.not27.i115.i, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not28.i117.i = icmp eq i32 %i.vk, 0
  %i.vl = shl i32 %i.vk, 1
  %spec.select.i118.i = select i1 %.not28.i117.i, i32 16, i32 %i.vl ; 2 uses
  %i.vm = zext i32 %spec.select.i118.i to i64
  %i.vn = shl nuw nsw i64 %i.vm, 5                ; 4 uses
  %.not.i.i119.i = icmp eq ptr %.pre.i116.i, null
  %i.vo = or disjoint i64 %i.vn, 8
  %i.vp = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.vq = add i64 %i.vp, %i.vo                    ; 3 uses
  %i.vr = icmp ugt i64 %i.vq, 524288              ; 2 uses
  br i1 %.not.i.i119.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.vr, label %tg3__error_push.exit129.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vs = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.vp ; 2 uses
  store i64 %i.vn, ptr %i.vs, align 8, !tbaa !30
  store i64 %i.vq, ptr @test_heap_used, align 8, !tbaa !30
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  br label %.loopexit.i126.i

bb.bz:                                            ; preds = %bb.bw
  br i1 %i.vr, label %tg3__error_push.exit129.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vu = getelementptr inbounds i8, ptr %.pre.i116.i, i64 -8
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !30
  %i.vw = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.vp ; 2 uses
  store i64 %i.vn, ptr %i.vw, align 8, !tbaa !30
  store i64 %i.vq, ptr @test_heap_used, align 8, !tbaa !30
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8 ; 9 uses
  %i.vy = call i64 @llvm.umin.i64(i64 %i.vv, i64 %i.vn) ; 11 uses
  %.not27.i.i120.i = icmp eq i64 %i.vy, 0
  br i1 %.not27.i.i120.i, label %.loopexit.i126.i, label %iter.check4049

iter.check4049:                                   ; preds = %bb.ca
  %min.iters.check4035 = icmp samesign ult i64 %i.vy, 4
  br i1 %min.iters.check4035, label %.lr.ph.i.i121.i.preheader, label %vector.memcheck4036

vector.memcheck4036:                              ; preds = %iter.check4049
  %11 = sub i64 %i.vp, %.pre.i116.i4034
  %12 = add i64 %11, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check4037 = icmp ult i64 %12, 31
  br i1 %diff.check4037, label %.lr.ph.i.i121.i.preheader, label %vector.main.loop.iter.check4038

vector.main.loop.iter.check4038:                  ; preds = %vector.memcheck4036
  %min.iters.check4039 = icmp samesign ult i64 %i.vy, 32
  br i1 %min.iters.check4039, label %vec.epilog.ph4053, label %vector.ph4040

vector.ph4040:                                    ; preds = %vector.main.loop.iter.check4038
  %i.vz = and i64 %i.vy, 28
  %n.vec4041 = and i64 %i.vy, 137438953440        ; 4 uses
  br label %vector.body4042

vector.body4042:                                  ; preds = %vector.ph4040, %vector.body4042
  %index4043 = phi i64 [ 0, %vector.ph4040 ], [ %index.next4046, %vector.body4042 ] ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %index4043 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %wide.load4044 = load <16 x i8>, ptr %i.wa, align 1, !tbaa !37
  %wide.load4045 = load <16 x i8>, ptr %i.wb, align 1, !tbaa !37
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vx, i64 %index4043 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  store <16 x i8> %wide.load4044, ptr %i.wc, align 1, !tbaa !37
  store <16 x i8> %wide.load4045, ptr %i.wd, align 1, !tbaa !37
  %index.next4046 = add nuw i64 %index4043, 32    ; 2 uses
  %i.we = icmp eq i64 %index.next4046, %n.vec4041
  br i1 %i.we, label %middle.block4047, label %vector.body4042, !llvm.loop !431

middle.block4047:                                 ; preds = %vector.body4042
  %cmp.n4048 = icmp eq i64 %i.vy, %n.vec4041
  br i1 %cmp.n4048, label %.loopexit.loopexit.i124.i, label %vec.epilog.iter.check4050

vec.epilog.iter.check4050:                        ; preds = %middle.block4047
  %min.epilog.iters.check4052 = icmp eq i64 %i.vz, 0
  br i1 %min.epilog.iters.check4052, label %.lr.ph.i.i121.i.preheader, label %vec.epilog.ph4053, !prof !46

vec.epilog.ph4053:                                ; preds = %vector.main.loop.iter.check4038, %vec.epilog.iter.check4050
  %vec.epilog.resume.val4054 = phi i64 [ %n.vec4041, %vec.epilog.iter.check4050 ], [ 0, %vector.main.loop.iter.check4038 ]
  %n.vec4055 = and i64 %i.vy, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body4056

vec.epilog.vector.body4056:                       ; preds = %vec.epilog.vector.body4056, %vec.epilog.ph4053
  %index4057 = phi i64 [ %vec.epilog.resume.val4054, %vec.epilog.ph4053 ], [ %index.next4059, %vec.epilog.vector.body4056 ] ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %index4057
  %wide.load4058 = load <4 x i8>, ptr %i.wf, align 1, !tbaa !37
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vx, i64 %index4057
  store <4 x i8> %wide.load4058, ptr %i.wg, align 1, !tbaa !37
  %index.next4059 = add nuw i64 %index4057, 4     ; 2 uses
  %i.wh = icmp eq i64 %index.next4059, %n.vec4055
  br i1 %i.wh, label %vec.epilog.middle.block4060, label %vec.epilog.vector.body4056, !llvm.loop !432

vec.epilog.middle.block4060:                      ; preds = %vec.epilog.vector.body4056
  %cmp.n4061 = icmp eq i64 %i.vy, %n.vec4055
  br i1 %cmp.n4061, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i.preheader

.lr.ph.i.i121.i.preheader:                        ; preds = %iter.check4049, %vector.memcheck4036, %vec.epilog.iter.check4050, %vec.epilog.middle.block4060
  %.026.i.i122.i.ph = phi i64 [ 0, %iter.check4049 ], [ 0, %vector.memcheck4036 ], [ %n.vec4041, %vec.epilog.iter.check4050 ], [ %n.vec4055, %vec.epilog.middle.block4060 ] ; 3 uses
  %xtraiter4650 = and i64 %i.vy, 3                ; 2 uses
  %lcmp.mod4651.not = icmp eq i64 %xtraiter4650, 0
  br i1 %lcmp.mod4651.not, label %.lr.ph.i.i121.i.prol.loopexit, label %.lr.ph.i.i121.i.prol

.lr.ph.i.i121.i.prol:                             ; preds = %.lr.ph.i.i121.i.preheader, %.lr.ph.i.i121.i.prol
  %.026.i.i122.i.prol = phi i64 [ %i.wl, %.lr.ph.i.i121.i.prol ], [ %.026.i.i122.i.ph, %.lr.ph.i.i121.i.preheader ] ; 3 uses
  %prol.iter4652 = phi i64 [ %prol.iter4652.next, %.lr.ph.i.i121.i.prol ], [ 0, %.lr.ph.i.i121.i.preheader ]
  %i.wi = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %.026.i.i122.i.prol
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !37
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.026.i.i122.i.prol
  store i8 %i.wj, ptr %i.wk, align 1, !tbaa !37
  %i.wl = add nuw nsw i64 %.026.i.i122.i.prol, 1  ; 2 uses
  %prol.iter4652.next = add i64 %prol.iter4652, 1 ; 2 uses
  %prol.iter4652.cmp.not = icmp eq i64 %prol.iter4652.next, %xtraiter4650
  br i1 %prol.iter4652.cmp.not, label %.lr.ph.i.i121.i.prol.loopexit, label %.lr.ph.i.i121.i.prol, !llvm.loop !433

.lr.ph.i.i121.i.prol.loopexit:                    ; preds = %.lr.ph.i.i121.i.prol, %.lr.ph.i.i121.i.preheader
  %.026.i.i122.i.unr = phi i64 [ %.026.i.i122.i.ph, %.lr.ph.i.i121.i.preheader ], [ %i.wl, %.lr.ph.i.i121.i.prol ]
  %i.wm = sub nsw i64 %.026.i.i122.i.ph, %i.vy
  %i.wn = icmp ugt i64 %i.wm, -4
  br i1 %i.wn, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i

.lr.ph.i.i121.i:                                  ; preds = %.lr.ph.i.i121.i.prol.loopexit, %.lr.ph.i.i121.i
  %.026.i.i122.i = phi i64 [ %i.xd, %.lr.ph.i.i121.i ], [ %.026.i.i122.i.unr, %.lr.ph.i.i121.i.prol.loopexit ] ; 6 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %.026.i.i122.i
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !37
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.026.i.i122.i
  store i8 %i.wp, ptr %i.wq, align 1, !tbaa !37
  %i.wr = add nuw nsw i64 %.026.i.i122.i, 1       ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !37
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.wr
  store i8 %i.wt, ptr %i.wu, align 1, !tbaa !37
  %i.wv = add nuw nsw i64 %.026.i.i122.i, 2       ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !37
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.wv
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !37
  %i.wz = add nuw nsw i64 %.026.i.i122.i, 3       ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !37
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.wz
  store i8 %i.xb, ptr %i.xc, align 1, !tbaa !37
  %i.xd = add nuw nsw i64 %.026.i.i122.i, 4       ; 2 uses
  %exitcond.not.i.i123.i.3 = icmp eq i64 %i.xd, %i.vy
  br i1 %exitcond.not.i.i123.i.3, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i, !llvm.loop !434

.loopexit.loopexit.i124.i:                        ; preds = %.lr.ph.i.i121.i.prol.loopexit, %.lr.ph.i.i121.i, %vec.epilog.middle.block4060, %middle.block4047
  %.pre33.pre.i125.i = load i32, ptr %i.vh, align 8, !tbaa !68
  br label %.loopexit.i126.i

.loopexit.i126.i:                                 ; preds = %.loopexit.loopexit.i124.i, %bb.ca, %bb.by
  %.pre33.i127.i = phi i32 [ %i.vi, %bb.by ], [ %i.vi, %bb.ca ], [ %.pre33.pre.i125.i, %.loopexit.loopexit.i124.i ]
  %.018.i.ph.i128.i = phi ptr [ %i.vt, %bb.by ], [ %i.vx, %bb.ca ], [ %i.vx, %.loopexit.loopexit.i124.i ] ; 2 uses
  store ptr %.018.i.ph.i128.i, ptr %i.vg, align 8, !tbaa !69
  store i32 %spec.select.i118.i, ptr %i.vj, align 4, !tbaa !122
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.i126.i, %bb.bv
  %i.xe = phi i32 [ %.pre33.i127.i, %.loopexit.i126.i ], [ %i.vi, %bb.bv ] ; 2 uses
  %i.xf = phi ptr [ %.018.i.ph.i128.i, %.loopexit.i126.i ], [ %.pre.i116.i, %bb.bv ]
  %i.xg = add i32 %i.xe, 1
  store i32 %i.xg, ptr %i.vh, align 8, !tbaa !68
  %i.xh = zext i32 %i.xe to i64
  %i.xi = getelementptr inbounds nuw [32 x i8], ptr %i.xf, i64 %i.xh ; 5 uses
  store i32 2, ptr %i.xi, align 8, !tbaa !124
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  store i32 51, ptr %i.xj, align 4, !tbaa !125
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  store ptr @.str.71, ptr %i.xk, align 8, !tbaa !126
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  store ptr null, ptr %i.xl, align 8, !tbaa !127
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  store i64 -1, ptr %i.xm, align 8, !tbaa !128
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  store i32 1, ptr %i.xn, align 8, !tbaa !67
  br label %tg3__error_push.exit129.thread.i

tg3__error_push.exit129.thread.i:                 ; preds = %bb.cb, %bb.bz, %bb.bx, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %tg3__parse_buffer.exit

tg3__error_push.exit129.i:                        ; preds = %tg3__decode_data_uri.exit.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %.015.i.i, ptr %i.xo, align 8, !tbaa !167
  %i.xp = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %storemerge.i.i, ptr %i.xp, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.ef

tg3_is_data_uri.exit.thread.i:                    ; preds = %.preheader.i.i952, %.preheader.i.i952.1, %.preheader.i.i952.2, %.preheader.i.i952.3, %.preheader.i.i952.4, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store ptr null, ptr %i.k, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.xq = load ptr, ptr %i.gk, align 8, !tbaa !547 ; 2 uses
  %.not.i130.i = icmp eq ptr %i.xq, null
  br i1 %.not.i130.i, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %tg3_is_data_uri.exit.thread.i
  %i.xr = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i.i142.i = icmp eq ptr %i.xr, null
  br i1 %.not.i.i142.i, label %tg3__load_external_file.exit.thread.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8 ; 3 uses
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !68 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 12 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !122 ; 3 uses
  %.not27.i.i143.i = icmp ult i32 %i.xt, %i.xv
  %.pre.i.i.i = load ptr, ptr %i.xr, align 8, !tbaa !69 ; 11 uses
  %.pre.i.i.i4129 = ptrtoaddr ptr %.pre.i.i.i to i64
  br i1 %.not27.i.i143.i, label %bb.cj, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not28.i.i.i = icmp eq i32 %i.xv, 0
  %i.xw = shl i32 %i.xv, 1
  %spec.select.i.i144.i = select i1 %.not28.i.i.i, i32 16, i32 %i.xw ; 2 uses
  %i.xx = zext i32 %spec.select.i.i144.i to i64
  %i.xy = shl nuw nsw i64 %i.xx, 5                ; 4 uses
  %.not.i.i.i145.i = icmp eq ptr %.pre.i.i.i, null
  %i.xz = or disjoint i64 %i.xy, 8
  %i.ya = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.yb = add i64 %i.ya, %i.xz                    ; 3 uses
  %i.yc = icmp ugt i64 %i.yb, 524288              ; 2 uses
  br i1 %.not.i.i.i145.i, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.yc, label %tg3__load_external_file.exit.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.yd = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ya ; 2 uses
  store i64 %i.xy, ptr %i.yd, align 8, !tbaa !30
  store i64 %i.yb, ptr @test_heap_used, align 8, !tbaa !30
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  br label %.loopexit.i.i.i

bb.ch:                                            ; preds = %bb.ce
  br i1 %i.yc, label %tg3__load_external_file.exit.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yf = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -8
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !30
  %i.yh = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ya ; 2 uses
  store i64 %i.xy, ptr %i.yh, align 8, !tbaa !30
  store i64 %i.yb, ptr @test_heap_used, align 8, !tbaa !30
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 9 uses
  %i.yj = call i64 @llvm.umin.i64(i64 %i.yg, i64 %i.xy) ; 11 uses
  %.not27.i.i.i.i = icmp eq i64 %i.yj, 0
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i.i, label %iter.check4144

iter.check4144:                                   ; preds = %bb.ci
  %min.iters.check4130 = icmp samesign ult i64 %i.yj, 4
  br i1 %min.iters.check4130, label %.lr.ph.i.i.i146.i.preheader, label %vector.memcheck4131

vector.memcheck4131:                              ; preds = %iter.check4144
  %13 = sub i64 %i.ya, %.pre.i.i.i4129
  %14 = add i64 %13, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check4132 = icmp ult i64 %14, 31
  br i1 %diff.check4132, label %.lr.ph.i.i.i146.i.preheader, label %vector.main.loop.iter.check4133

vector.main.loop.iter.check4133:                  ; preds = %vector.memcheck4131
  %min.iters.check4134 = icmp samesign ult i64 %i.yj, 32
  br i1 %min.iters.check4134, label %vec.epilog.ph4148, label %vector.ph4135

vector.ph4135:                                    ; preds = %vector.main.loop.iter.check4133
  %i.yk = and i64 %i.yj, 28
  %n.vec4136 = and i64 %i.yj, 137438953440        ; 4 uses
  br label %vector.body4137

vector.body4137:                                  ; preds = %vector.ph4135, %vector.body4137
  %index4138 = phi i64 [ 0, %vector.ph4135 ], [ %index.next4141, %vector.body4137 ] ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index4138 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %wide.load4139 = load <16 x i8>, ptr %i.yl, align 1, !tbaa !37
  %wide.load4140 = load <16 x i8>, ptr %i.ym, align 1, !tbaa !37
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 %index4138 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  store <16 x i8> %wide.load4139, ptr %i.yn, align 1, !tbaa !37
  store <16 x i8> %wide.load4140, ptr %i.yo, align 1, !tbaa !37
  %index.next4141 = add nuw i64 %index4138, 32    ; 2 uses
  %i.yp = icmp eq i64 %index.next4141, %n.vec4136
  br i1 %i.yp, label %middle.block4142, label %vector.body4137, !llvm.loop !435

middle.block4142:                                 ; preds = %vector.body4137
  %cmp.n4143 = icmp eq i64 %i.yj, %n.vec4136
  br i1 %cmp.n4143, label %.loopexit.loopexit.i.i.i, label %vec.epilog.iter.check4145

vec.epilog.iter.check4145:                        ; preds = %middle.block4142
  %min.epilog.iters.check4147 = icmp eq i64 %i.yk, 0
  br i1 %min.epilog.iters.check4147, label %.lr.ph.i.i.i146.i.preheader, label %vec.epilog.ph4148, !prof !46

vec.epilog.ph4148:                                ; preds = %vector.main.loop.iter.check4133, %vec.epilog.iter.check4145
  %vec.epilog.resume.val4149 = phi i64 [ %n.vec4136, %vec.epilog.iter.check4145 ], [ 0, %vector.main.loop.iter.check4133 ]
  %n.vec4150 = and i64 %i.yj, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body4151

vec.epilog.vector.body4151:                       ; preds = %vec.epilog.vector.body4151, %vec.epilog.ph4148
  %index4152 = phi i64 [ %vec.epilog.resume.val4149, %vec.epilog.ph4148 ], [ %index.next4154, %vec.epilog.vector.body4151 ] ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index4152
  %wide.load4153 = load <4 x i8>, ptr %i.yq, align 1, !tbaa !37
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yi, i64 %index4152
  store <4 x i8> %wide.load4153, ptr %i.yr, align 1, !tbaa !37
  %index.next4154 = add nuw i64 %index4152, 4     ; 2 uses
  %i.ys = icmp eq i64 %index.next4154, %n.vec4150
  br i1 %i.ys, label %vec.epilog.middle.block4155, label %vec.epilog.vector.body4151, !llvm.loop !436

vec.epilog.middle.block4155:                      ; preds = %vec.epilog.vector.body4151
  %cmp.n4156 = icmp eq i64 %i.yj, %n.vec4150
  br i1 %cmp.n4156, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i146.i.preheader

.lr.ph.i.i.i146.i.preheader:                      ; preds = %iter.check4144, %vector.memcheck4131, %vec.epilog.iter.check4145, %vec.epilog.middle.block4155
  %.026.i.i.i.i.ph = phi i64 [ 0, %iter.check4144 ], [ 0, %vector.memcheck4131 ], [ %n.vec4136, %vec.epilog.iter.check4145 ], [ %n.vec4150, %vec.epilog.middle.block4155 ] ; 3 uses
  %xtraiter4647 = and i64 %i.yj, 3                ; 2 uses
  %lcmp.mod4648.not = icmp eq i64 %xtraiter4647, 0
  br i1 %lcmp.mod4648.not, label %.lr.ph.i.i.i146.i.prol.loopexit, label %.lr.ph.i.i.i146.i.prol

.lr.ph.i.i.i146.i.prol:                           ; preds = %.lr.ph.i.i.i146.i.preheader, %.lr.ph.i.i.i146.i.prol
  %.026.i.i.i.i.prol = phi i64 [ %i.yw, %.lr.ph.i.i.i146.i.prol ], [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i146.i.preheader ] ; 3 uses
  %prol.iter4649 = phi i64 [ %prol.iter4649.next, %.lr.ph.i.i.i146.i.prol ], [ 0, %.lr.ph.i.i.i146.i.preheader ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %.026.i.i.i.i.prol
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !37
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yi, i64 %.026.i.i.i.i.prol
  store i8 %i.yu, ptr %i.yv, align 1, !tbaa !37
  %i.yw = add nuw nsw i64 %.026.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter4649.next = add i64 %prol.iter4649, 1 ; 2 uses
  %prol.iter4649.cmp.not = icmp eq i64 %prol.iter4649.next, %xtraiter4647
  br i1 %prol.iter4649.cmp.not, label %.lr.ph.i.i.i146.i.prol.loopexit, label %.lr.ph.i.i.i146.i.prol, !llvm.loop !437

.lr.ph.i.i.i146.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.i146.i.prol, %.lr.ph.i.i.i146.i.preheader
  %.026.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i146.i.preheader ], [ %i.yw, %.lr.ph.i.i.i146.i.prol ]
  %i.yx = sub nsw i64 %.026.i.i.i.i.ph, %i.yj
  %i.yy = icmp ugt i64 %i.yx, -4
  br i1 %i.yy, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i146.i

.lr.ph.i.i.i146.i:                                ; preds = %.lr.ph.i.i.i146.i.prol.loopexit, %.lr.ph.i.i.i146.i
  %.026.i.i.i.i = phi i64 [ %i.zo, %.lr.ph.i.i.i146.i ], [ %.026.i.i.i.i.unr, %.lr.ph.i.i.i146.i.prol.loopexit ] ; 6 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %.026.i.i.i.i
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !37
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yi, i64 %.026.i.i.i.i
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !37
  %i.zc = add nuw nsw i64 %.026.i.i.i.i, 1        ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !37
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.zc
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !37
  %i.zg = add nuw nsw i64 %.026.i.i.i.i, 2        ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !37
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.zg
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !37
  %i.zk = add nuw nsw i64 %.026.i.i.i.i, 3        ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !37
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.zk
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !37
  %i.zo = add nuw nsw i64 %.026.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.zo, %i.yj
  br i1 %exitcond.not.i.i.i.i.3, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i146.i, !llvm.loop !438

.loopexit.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i146.i.prol.loopexit, %.lr.ph.i.i.i146.i, %vec.epilog.middle.block4155, %middle.block4142
  %.pre33.pre.i.i.i = load i32, ptr %i.xs, align 8, !tbaa !68
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %bb.ci, %bb.cg
  %.pre33.i.i.i = phi i32 [ %i.xt, %bb.cg ], [ %i.xt, %bb.ci ], [ %.pre33.pre.i.i.i, %.loopexit.loopexit.i.i.i ]
  %.018.i.ph.i.i.i = phi ptr [ %i.ye, %bb.cg ], [ %i.yi, %bb.ci ], [ %i.yi, %.loopexit.loopexit.i.i.i ] ; 2 uses
  store ptr %.018.i.ph.i.i.i, ptr %i.xr, align 8, !tbaa !69
  store i32 %spec.select.i.i144.i, ptr %i.xu, align 4, !tbaa !122
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.i.i.i, %bb.cd
  %i.zp = phi i32 [ %.pre33.i.i.i, %.loopexit.i.i.i ], [ %i.xt, %bb.cd ] ; 2 uses
  %i.zq = phi ptr [ %.018.i.ph.i.i.i, %.loopexit.i.i.i ], [ %.pre.i.i.i, %bb.cd ]
  %i.zr = add i32 %i.zp, 1
  store i32 %i.zr, ptr %i.xs, align 8, !tbaa !68
  %i.zs = zext i32 %i.zp to i64
  %i.zt = getelementptr inbounds nuw [32 x i8], ptr %i.zq, i64 %i.zs ; 5 uses
  store i32 2, ptr %i.zt, align 8, !tbaa !124
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  store i32 61, ptr %i.zu, align 4, !tbaa !125
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store ptr @.str.76, ptr %i.zv, align 8, !tbaa !126
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store ptr null, ptr %i.zw, align 8, !tbaa !127
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 -1, ptr %i.zx, align 8, !tbaa !128
  %i.zy = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store i32 1, ptr %i.zy, align 8, !tbaa !67
  br label %tg3__load_external_file.exit.thread.i

bb.ck:                                            ; preds = %tg3_is_data_uri.exit.thread.i
  br i1 %i.qb, label %bb.cl, label %.loopexit.i132.i

bb.cl:                                            ; preds = %bb.ck
  %i.zz = zext i32 %i.hn to i64                   ; 12 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %.in.i.i.i.i = phi i64 [ %i.zz, %bb.cl ], [ %i.aac, %bb.cn ]
  %.09.i.i.i.i = phi ptr [ %i.pz, %bb.cl ], [ %i.aad, %bb.cn ] ; 2 uses
  %i.aaa = load i8, ptr %.09.i.i.i.i, align 1, !tbaa !37
  %i.aab = icmp eq i8 %i.aaa, 0
  br i1 %i.aab, label %.loopexit.i132.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aac = add nsw i64 %.in.i.i.i.i, -1           ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  %.not.i.i65.i.i = icmp eq i64 %i.aac, 0
  br i1 %.not.i.i65.i.i, label %bb.co, label %bb.cm, !llvm.loop !439

bb.co:                                            ; preds = %bb.cn
  %i.aae = load i8, ptr %i.pz, align 1, !tbaa !37 ; 3 uses
  switch i8 %i.aae, label %bb.cp [
    i8 47, label %.loopexit.i132.i
    i8 92, label %.loopexit.i132.i
  ]

bb.cp:                                            ; preds = %bb.co
  %.not194.i = icmp eq i32 %i.hn, 1
  br i1 %.not194.i, label %tg3__uri_is_safe.exit.thread99.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !37 ; 2 uses
  %i.aah = icmp eq i8 %i.aag, 58
  br i1 %i.aah, label %bb.cr, label %.lr.ph.preheader.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.aai = and i8 %i.aae, -33
  %i.aaj = add i8 %i.aai, -65
  %or.cond50.i.i.i = icmp ult i8 %i.aaj, 26
  br i1 %or.cond50.i.i.i, label %.loopexit.i132.i, label %.lr.ph.preheader.i.thread.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cq
  %i.aak = add i32 %i.hn, -1                      ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.aak to i64 ; 2 uses
  %i.aal = icmp eq i8 %i.aae, 46
  %i.aam = icmp eq i8 %i.aag, 46
  %or.cond.i139.i = and i1 %i.aal, %i.aam
  br i1 %or.cond.i139.i, label %bb.cs, label %.thread.i.i

.lr.ph.preheader.i.thread.i.i:                    ; preds = %bb.cr
  %i.aan = add i32 %i.hn, -1                      ; 2 uses
  %wide.trip.count.i92.i.i = zext i32 %i.aan to i64
  br label %.thread.i.i

bb.cs:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.aao = icmp eq i32 %i.hn, 2
  br i1 %i.aao, label %.loopexit.i132.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aap = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !37
  switch i8 %i.aaq, label %.lr.ph.peel.next.i.i.i [
    i8 47, label %.loopexit.i132.i
    i8 92, label %.loopexit.i132.i
  ]

.thread.i.i:                                      ; preds = %.lr.ph.preheader.i.thread.i.i, %.lr.ph.preheader.i.i.i
  %wide.trip.count.i94.i.i = phi i64 [ %wide.trip.count.i92.i.i, %.lr.ph.preheader.i.thread.i.i ], [ %wide.trip.count.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.aar = phi i32 [ %i.aan, %.lr.ph.preheader.i.thread.i.i ], [ %i.aak, %.lr.ph.preheader.i.i.i ]
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.aar, 1
  br i1 %exitcond.peel.not.i.i.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.peel.next.i.i.i

.lr.ph.peel.next.i.i.i:                           ; preds = %.thread.i.i, %bb.ct
  %wide.trip.count.i93.i.i = phi i64 [ %wide.trip.count.i94.i.i, %.thread.i.i ], [ %wide.trip.count.i.i.i, %bb.ct ]
  br label %.lr.ph.i.i140.i

.lr.ph.i.i140.i:                                  ; preds = %bb.cy, %.lr.ph.peel.next.i.i.i
  %indvars.iv57.i.i.i = phi i64 [ 1, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next58.i.i.i, %bb.cy ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 2, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.cy ] ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.pz, i64 %indvars.iv57.i.i.i ; 2 uses
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !37
  %i.aau = icmp eq i8 %i.aat, 46
  br i1 %i.aau, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %.lr.ph.i.i140.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.pz, i64 %indvars.iv.i.i.i
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !37
  %i.aax = icmp eq i8 %i.aaw, 46
  br i1 %i.aax, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.aay = getelementptr i8, ptr %i.aas, i64 -1
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !37 ; 3 uses
  %i.aba = icmp eq i8 %i.aaz, 47
  %i.abb = icmp eq i8 %i.aaz, 92
  %spec.select.i66.i.i = or i1 %i.aba, %i.abb
  %i.abc = add nuw nsw i64 %indvars.iv57.i.i.i, 2 ; 2 uses
  %i.abd = icmp eq i64 %i.abc, %i.zz
  br i1 %i.abd, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.abe = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.abc
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !37 ; 2 uses
  %i.abg = icmp eq i8 %i.abf, 47
  br i1 %i.abg, label %bb.cx, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.cw
  %i.abh = icmp eq i8 %i.abf, 92
  %i.abi = and i1 %spec.select.i66.i.i, %i.abh
  br i1 %i.abi, label %.loopexit.i132.i, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  switch i8 %i.aaz, label %bb.cy [
    i8 92, label %.loopexit.i132.i
    i8 47, label %.loopexit.i132.i
  ]

bb.cy:                                            ; preds = %bb.cx, %.split.i.i.i, %bb.cu, %.lr.ph.i.i140.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %indvars.iv.next58.i.i.i = add nuw nsw i64 %indvars.iv57.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i141.i = icmp eq i64 %indvars.iv.next58.i.i.i, %wide.trip.count.i93.i.i
  br i1 %exitcond.not.i.i141.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.i.i140.i, !llvm.loop !440

.loopexit.i132.i:                                 ; preds = %bb.cm, %bb.cx, %bb.cx, %.split.i.i.i, %bb.ct, %bb.ct, %bb.cs, %bb.cr, %bb.co, %bb.co, %bb.ck
  %i.abj = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i67.i.i = icmp eq ptr %i.abj, null
  br i1 %.not.i67.i.i, label %tg3__load_external_file.exit.thread.i, label %bb.cz

bb.cz:                                            ; preds = %.loopexit.i132.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 8 ; 3 uses
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !68 ; 4 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 12 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !122 ; 3 uses
  %.not27.i68.i.i = icmp ult i32 %i.abl, %i.abn
  %.pre.i69.i.i = load ptr, ptr %i.abj, align 8, !tbaa !69 ; 11 uses
  %.pre.i69.i.i4161 = ptrtoaddr ptr %.pre.i69.i.i to i64
  br i1 %.not27.i68.i.i, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.not28.i70.i.i = icmp eq i32 %i.abn, 0
  %i.abo = shl i32 %i.abn, 1
  %spec.select.i71.i.i = select i1 %.not28.i70.i.i, i32 16, i32 %i.abo ; 2 uses
  %i.abp = zext i32 %spec.select.i71.i.i to i64
  %i.abq = shl nuw nsw i64 %i.abp, 5              ; 4 uses
  %.not.i.i72.i.i = icmp eq ptr %.pre.i69.i.i, null
  %i.abr = or disjoint i64 %i.abq, 8
  %i.abs = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.abt = add i64 %i.abs, %i.abr                 ; 3 uses
  %i.abu = icmp ugt i64 %i.abt, 524288            ; 2 uses
  br i1 %.not.i.i72.i.i, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  br i1 %i.abu, label %tg3__load_external_file.exit.thread.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.abv = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.abs ; 2 uses
  store i64 %i.abq, ptr %i.abv, align 8, !tbaa !30
  store i64 %i.abt, ptr @test_heap_used, align 8, !tbaa !30
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  br label %.loopexit.i79.i.i

bb.dd:                                            ; preds = %bb.da
  br i1 %i.abu, label %tg3__load_external_file.exit.thread.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.abx = getelementptr inbounds i8, ptr %.pre.i69.i.i, i64 -8
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !30
  %i.abz = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.abs ; 2 uses
  store i64 %i.abq, ptr %i.abz, align 8, !tbaa !30
  store i64 %i.abt, ptr @test_heap_used, align 8, !tbaa !30
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8 ; 9 uses
  %i.acb = call i64 @llvm.umin.i64(i64 %i.aby, i64 %i.abq) ; 11 uses
  %.not27.i.i73.i.i = icmp eq i64 %i.acb, 0
  br i1 %.not27.i.i73.i.i, label %.loopexit.i79.i.i, label %iter.check4176

iter.check4176:                                   ; preds = %bb.de
  %min.iters.check4162 = icmp samesign ult i64 %i.acb, 4
  br i1 %min.iters.check4162, label %.lr.ph.i.i74.i.i.preheader, label %vector.memcheck4163

vector.memcheck4163:                              ; preds = %iter.check4176
  %15 = sub i64 %i.abs, %.pre.i69.i.i4161
  %16 = add i64 %15, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check4164 = icmp ult i64 %16, 31
  br i1 %diff.check4164, label %.lr.ph.i.i74.i.i.preheader, label %vector.main.loop.iter.check4165

vector.main.loop.iter.check4165:                  ; preds = %vector.memcheck4163
  %min.iters.check4166 = icmp samesign ult i64 %i.acb, 32
  br i1 %min.iters.check4166, label %vec.epilog.ph4180, label %vector.ph4167

vector.ph4167:                                    ; preds = %vector.main.loop.iter.check4165
  %i.acc = and i64 %i.acb, 28
  %n.vec4168 = and i64 %i.acb, 137438953440       ; 4 uses
  br label %vector.body4169

vector.body4169:                                  ; preds = %vector.ph4167, %vector.body4169
  %index4170 = phi i64 [ 0, %vector.ph4167 ], [ %index.next4173, %vector.body4169 ] ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %index4170 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %wide.load4171 = load <16 x i8>, ptr %i.acd, align 1, !tbaa !37
  %wide.load4172 = load <16 x i8>, ptr %i.ace, align 1, !tbaa !37
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 %index4170 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  store <16 x i8> %wide.load4171, ptr %i.acf, align 1, !tbaa !37
  store <16 x i8> %wide.load4172, ptr %i.acg, align 1, !tbaa !37
  %index.next4173 = add nuw i64 %index4170, 32    ; 2 uses
  %i.ach = icmp eq i64 %index.next4173, %n.vec4168
  br i1 %i.ach, label %middle.block4174, label %vector.body4169, !llvm.loop !441

middle.block4174:                                 ; preds = %vector.body4169
  %cmp.n4175 = icmp eq i64 %i.acb, %n.vec4168
  br i1 %cmp.n4175, label %.loopexit.loopexit.i77.i.i, label %vec.epilog.iter.check4177

vec.epilog.iter.check4177:                        ; preds = %middle.block4174
  %min.epilog.iters.check4179 = icmp eq i64 %i.acc, 0
  br i1 %min.epilog.iters.check4179, label %.lr.ph.i.i74.i.i.preheader, label %vec.epilog.ph4180, !prof !46

vec.epilog.ph4180:                                ; preds = %vector.main.loop.iter.check4165, %vec.epilog.iter.check4177
  %vec.epilog.resume.val4181 = phi i64 [ %n.vec4168, %vec.epilog.iter.check4177 ], [ 0, %vector.main.loop.iter.check4165 ]
  %n.vec4182 = and i64 %i.acb, 137438953468       ; 3 uses
  br label %vec.epilog.vector.body4183

vec.epilog.vector.body4183:                       ; preds = %vec.epilog.vector.body4183, %vec.epilog.ph4180
  %index4184 = phi i64 [ %vec.epilog.resume.val4181, %vec.epilog.ph4180 ], [ %index.next4186, %vec.epilog.vector.body4183 ] ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %index4184
  %wide.load4185 = load <4 x i8>, ptr %i.aci, align 1, !tbaa !37
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aca, i64 %index4184
  store <4 x i8> %wide.load4185, ptr %i.acj, align 1, !tbaa !37
  %index.next4186 = add nuw i64 %index4184, 4     ; 2 uses
  %i.ack = icmp eq i64 %index.next4186, %n.vec4182
  br i1 %i.ack, label %vec.epilog.middle.block4187, label %vec.epilog.vector.body4183, !llvm.loop !442

vec.epilog.middle.block4187:                      ; preds = %vec.epilog.vector.body4183
  %cmp.n4188 = icmp eq i64 %i.acb, %n.vec4182
  br i1 %cmp.n4188, label %.loopexit.loopexit.i77.i.i, label %.lr.ph.i.i74.i.i.preheader

.lr.ph.i.i74.i.i.preheader:                       ; preds = %iter.check4176, %vector.memcheck4163, %vec.epilog.iter.check4177, %vec.epilog.middle.block4187
  %.026.i.i75.i.i.ph = phi i64 [ 0, %iter.check4176 ], [ 0, %vector.memcheck4163 ], [ %n.vec4168, %vec.epilog.iter.check4177 ], [ %n.vec4182, %vec.epilog.middle.block4187 ] ; 3 uses
  %xtraiter4644 = and i64 %i.acb, 3               ; 2 uses
  %lcmp.mod4645.not = icmp eq i64 %xtraiter4644, 0
  br i1 %lcmp.mod4645.not, label %.lr.ph.i.i74.i.i.prol.loopexit, label %.lr.ph.i.i74.i.i.prol

.lr.ph.i.i74.i.i.prol:                            ; preds = %.lr.ph.i.i74.i.i.preheader, %.lr.ph.i.i74.i.i.prol
  %.026.i.i75.i.i.prol = phi i64 [ %i.aco, %.lr.ph.i.i74.i.i.prol ], [ %.026.i.i75.i.i.ph, %.lr.ph.i.i74.i.i.preheader ] ; 3 uses
  %prol.iter4646 = phi i64 [ %prol.iter4646.next, %.lr.ph.i.i74.i.i.prol ], [ 0, %.lr.ph.i.i74.i.i.preheader ]
  %i.acl = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %.026.i.i75.i.i.prol
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !37
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aca, i64 %.026.i.i75.i.i.prol
  store i8 %i.acm, ptr %i.acn, align 1, !tbaa !37
  %i.aco = add nuw nsw i64 %.026.i.i75.i.i.prol, 1 ; 2 uses
  %prol.iter4646.next = add i64 %prol.iter4646, 1 ; 2 uses
  %prol.iter4646.cmp.not = icmp eq i64 %prol.iter4646.next, %xtraiter4644
  br i1 %prol.iter4646.cmp.not, label %.lr.ph.i.i74.i.i.prol.loopexit, label %.lr.ph.i.i74.i.i.prol, !llvm.loop !443

.lr.ph.i.i74.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i74.i.i.prol, %.lr.ph.i.i74.i.i.preheader
  %.026.i.i75.i.i.unr = phi i64 [ %.026.i.i75.i.i.ph, %.lr.ph.i.i74.i.i.preheader ], [ %i.aco, %.lr.ph.i.i74.i.i.prol ]
  %i.acp = sub nsw i64 %.026.i.i75.i.i.ph, %i.acb
  %i.acq = icmp ugt i64 %i.acp, -4
  br i1 %i.acq, label %.loopexit.loopexit.i77.i.i, label %.lr.ph.i.i74.i.i

.lr.ph.i.i74.i.i:                                 ; preds = %.lr.ph.i.i74.i.i.prol.loopexit, %.lr.ph.i.i74.i.i
  %.026.i.i75.i.i = phi i64 [ %i.adg, %.lr.ph.i.i74.i.i ], [ %.026.i.i75.i.i.unr, %.lr.ph.i.i74.i.i.prol.loopexit ] ; 6 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %.026.i.i75.i.i
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !37
  %i.act = getelementptr inbounds nuw i8, ptr %i.aca, i64 %.026.i.i75.i.i
  store i8 %i.acs, ptr %i.act, align 1, !tbaa !37
  %i.acu = add nuw nsw i64 %.026.i.i75.i.i, 1     ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %i.acu
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !37
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.acu
  store i8 %i.acw, ptr %i.acx, align 1, !tbaa !37
  %i.acy = add nuw nsw i64 %.026.i.i75.i.i, 2     ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !37
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.acy
  store i8 %i.ada, ptr %i.adb, align 1, !tbaa !37
  %i.adc = add nuw nsw i64 %.026.i.i75.i.i, 3     ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %i.adc
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !37
  %i.adf = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.adc
  store i8 %i.ade, ptr %i.adf, align 1, !tbaa !37
  %i.adg = add nuw nsw i64 %.026.i.i75.i.i, 4     ; 2 uses
  %exitcond.not.i.i76.i.i.3 = icmp eq i64 %i.adg, %i.acb
  br i1 %exitcond.not.i.i76.i.i.3, label %.loopexit.loopexit.i77.i.i, label %.lr.ph.i.i74.i.i, !llvm.loop !444

.loopexit.loopexit.i77.i.i:                       ; preds = %.lr.ph.i.i74.i.i.prol.loopexit, %.lr.ph.i.i74.i.i, %vec.epilog.middle.block4187, %middle.block4174
  %.pre33.pre.i78.i.i = load i32, ptr %i.abk, align 8, !tbaa !68
  br label %.loopexit.i79.i.i

.loopexit.i79.i.i:                                ; preds = %.loopexit.loopexit.i77.i.i, %bb.de, %bb.dc
  %.pre33.i80.i.i = phi i32 [ %i.abl, %bb.dc ], [ %i.abl, %bb.de ], [ %.pre33.pre.i78.i.i, %.loopexit.loopexit.i77.i.i ]
  %.018.i.ph.i81.i.i = phi ptr [ %i.abw, %bb.dc ], [ %i.aca, %bb.de ], [ %i.aca, %.loopexit.loopexit.i77.i.i ] ; 2 uses
  store ptr %.018.i.ph.i81.i.i, ptr %i.abj, align 8, !tbaa !69
  store i32 %spec.select.i71.i.i, ptr %i.abm, align 4, !tbaa !122
  br label %bb.df

bb.df:                                            ; preds = %.loopexit.i79.i.i, %bb.cz
  %i.adh = phi i32 [ %.pre33.i80.i.i, %.loopexit.i79.i.i ], [ %i.abl, %bb.cz ] ; 2 uses
  %i.adi = phi ptr [ %.018.i.ph.i81.i.i, %.loopexit.i79.i.i ], [ %.pre.i69.i.i, %bb.cz ]
  %i.adj = add i32 %i.adh, 1
  store i32 %i.adj, ptr %i.abk, align 8, !tbaa !68
  %i.adk = zext i32 %i.adh to i64
  %i.adl = getelementptr inbounds nuw [32 x i8], ptr %i.adi, i64 %i.adk ; 5 uses
  store i32 2, ptr %i.adl, align 8, !tbaa !124
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 4
  store i32 33, ptr %i.adm, align 4, !tbaa !125
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  store ptr @.str.77, ptr %i.adn, align 8, !tbaa !126
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  store ptr null, ptr %i.ado, align 8, !tbaa !127
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adl, i64 24
  store i64 -1, ptr %i.adp, align 8, !tbaa !128
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  store i32 1, ptr %i.adq, align 8, !tbaa !67
  br label %tg3__load_external_file.exit.thread.i

tg3__uri_is_safe.exit.i.i:                        ; preds = %bb.cy, %.thread.i.i
  %i.adr = icmp ugt i32 %i.hn, 4095
  br i1 %i.adr, label %tg3__load_external_file.exit.thread.i, label %tg3__uri_is_safe.exit.thread99.i.i

tg3__uri_is_safe.exit.thread99.i.i:               ; preds = %tg3__uri_is_safe.exit.i.i, %bb.cp
  %i.ads = load i32, ptr %i.gl, align 8, !tbaa !149 ; 8 uses
  %.not57.i.i = icmp eq i32 %i.ads, 0
  br i1 %.not57.i.i, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %tg3__uri_is_safe.exit.thread99.i.i
  %i.adt = zext i32 %i.ads to i64                 ; 10 uses
  %i.adu = sub nuw nsw i64 4095, %i.zz
  %.not58.i.i = icmp samesign ugt i64 %i.adu, %i.adt
  br i1 %.not58.i.i, label %iter.check4312, label %tg3__load_external_file.exit.thread.i

iter.check4312:                                   ; preds = %bb.dg
  %i.adv = load ptr, ptr %i.gm, align 8, !tbaa !148 ; 6 uses
  %min.iters.check4296 = icmp ult i32 %i.ads, 4
  %i.adw = ptrtoaddr ptr %i.adv to i64
  %i.adx = sub i64 %i.adw, %i.h
  %diff.check4298 = icmp ugt i64 %i.adx, -32
  %or.cond4516 = select i1 %min.iters.check4296, i1 true, i1 %diff.check4298
  br i1 %or.cond4516, label %.lr.ph.i83.i.i.preheader, label %vector.main.loop.iter.check4299

vector.main.loop.iter.check4299:                  ; preds = %iter.check4312
  %min.iters.check4300 = icmp ult i32 %i.ads, 32
  br i1 %min.iters.check4300, label %vec.epilog.ph4316, label %vector.ph4301

vector.ph4301:                                    ; preds = %vector.main.loop.iter.check4299
  %i.ady = and i64 %i.adt, 28
  %n.vec4302 = and i64 %i.adt, 4294967264         ; 5 uses
  %i.adz = getelementptr i8, ptr %i.adv, i64 %n.vec4302
  %i.aea = getelementptr i8, ptr %i.g, i64 %n.vec4302
  %i.aeb = and i64 %i.adt, 31
  br label %vector.body4303

vector.body4303:                                  ; preds = %vector.ph4301, %vector.body4303
  %index4304 = phi i64 [ 0, %vector.ph4301 ], [ %index.next4309, %vector.body4303 ] ; 3 uses
  %next.gep4305 = getelementptr i8, ptr %i.adv, i64 %index4304 ; 2 uses
  %next.gep4306 = getelementptr i8, ptr %i.g, i64 %index4304 ; 2 uses
  %i.aec = getelementptr i8, ptr %next.gep4305, i64 16
  %wide.load4307 = load <16 x i8>, ptr %next.gep4305, align 1, !tbaa !37
  %wide.load4308 = load <16 x i8>, ptr %i.aec, align 1, !tbaa !37
  %i.aed = getelementptr i8, ptr %next.gep4306, i64 16
  store <16 x i8> %wide.load4307, ptr %next.gep4306, align 16, !tbaa !37
  store <16 x i8> %wide.load4308, ptr %i.aed, align 16, !tbaa !37
  %index.next4309 = add nuw i64 %index4304, 32    ; 2 uses
  %i.aee = icmp eq i64 %index.next4309, %n.vec4302
  br i1 %i.aee, label %middle.block4310, label %vector.body4303, !llvm.loop !445

middle.block4310:                                 ; preds = %vector.body4303
  %cmp.n4311 = icmp eq i64 %n.vec4302, %i.adt
  br i1 %cmp.n4311, label %tg3__memcpy.exit.i136.i, label %vec.epilog.iter.check4313

vec.epilog.iter.check4313:                        ; preds = %middle.block4310
  %min.epilog.iters.check4315 = icmp eq i64 %i.ady, 0
  br i1 %min.epilog.iters.check4315, label %.lr.ph.i83.i.i.preheader, label %vec.epilog.ph4316, !prof !46

vec.epilog.ph4316:                                ; preds = %vector.main.loop.iter.check4299, %vec.epilog.iter.check4313
  %vec.epilog.resume.val4317 = phi i64 [ %n.vec4302, %vec.epilog.iter.check4313 ], [ 0, %vector.main.loop.iter.check4299 ]
  %n.vec4318 = and i64 %i.adt, 4294967292         ; 4 uses
  %i.aef = getelementptr i8, ptr %i.adv, i64 %n.vec4318
  %i.aeg = getelementptr i8, ptr %i.g, i64 %n.vec4318
  %i.aeh = and i64 %i.adt, 3
  br label %vec.epilog.vector.body4319

vec.epilog.vector.body4319:                       ; preds = %vec.epilog.vector.body4319, %vec.epilog.ph4316
  %index4320 = phi i64 [ %vec.epilog.resume.val4317, %vec.epilog.ph4316 ], [ %index.next4324, %vec.epilog.vector.body4319 ] ; 3 uses
end_hunk_4
begin_hunk_5_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %min.iters.check4228 = icmp ult i64 %.pr.pre206278282.i, 32
  br i1 %min.iters.check4228, label %vec.epilog.ph4244, label %vector.ph4229

vector.ph4229:                                    ; preds = %vector.main.loop.iter.check4227
  %i.ajx = and i64 %.pr.pre206278282.i, 28
  %n.vec4230 = and i64 %.pr.pre206278282.i, -32   ; 5 uses
  %i.ajy = getelementptr i8, ptr %i.ajt, i64 %n.vec4230
  %i.ajz = getelementptr i8, ptr %i.ajs, i64 %n.vec4230
  %i.aka = and i64 %.pr.pre206278282.i, 31
  br label %vector.body4231

vector.body4231:                                  ; preds = %vector.ph4229, %vector.body4231
  %index4232 = phi i64 [ 0, %vector.ph4229 ], [ %index.next4237, %vector.body4231 ] ; 3 uses
  %next.gep4233 = getelementptr i8, ptr %i.ajt, i64 %index4232 ; 2 uses
  %next.gep4234 = getelementptr i8, ptr %i.ajs, i64 %index4232 ; 2 uses
  %i.akb = getelementptr i8, ptr %next.gep4233, i64 16
  %wide.load4235 = load <16 x i8>, ptr %next.gep4233, align 1, !tbaa !37
  %wide.load4236 = load <16 x i8>, ptr %i.akb, align 1, !tbaa !37
  %i.akc = getelementptr i8, ptr %next.gep4234, i64 16
  store <16 x i8> %wide.load4235, ptr %next.gep4234, align 1, !tbaa !37
  store <16 x i8> %wide.load4236, ptr %i.akc, align 1, !tbaa !37
  %index.next4237 = add nuw i64 %index4232, 32    ; 2 uses
  %i.akd = icmp eq i64 %index.next4237, %n.vec4230
  br i1 %i.akd, label %middle.block4238, label %vector.body4231, !llvm.loop !454

middle.block4238:                                 ; preds = %vector.body4231
  %cmp.n4239 = icmp eq i64 %.pr.pre206278282.i, %n.vec4230
  br i1 %cmp.n4239, label %tg3__memcpy.exit170.loopexit.i, label %vec.epilog.iter.check4241

vec.epilog.iter.check4241:                        ; preds = %middle.block4238
  %min.epilog.iters.check4243 = icmp eq i64 %i.ajx, 0
  br i1 %min.epilog.iters.check4243, label %.lr.ph.i164.i.preheader, label %vec.epilog.ph4244, !prof !46

vec.epilog.ph4244:                                ; preds = %vector.main.loop.iter.check4227, %vec.epilog.iter.check4241
  %vec.epilog.resume.val4245 = phi i64 [ %n.vec4230, %vec.epilog.iter.check4241 ], [ 0, %vector.main.loop.iter.check4227 ]
  %n.vec4246 = and i64 %.pr.pre206278282.i, -4    ; 4 uses
  %i.ake = getelementptr i8, ptr %i.ajt, i64 %n.vec4246
  %i.akf = getelementptr i8, ptr %i.ajs, i64 %n.vec4246
  %i.akg = and i64 %.pr.pre206278282.i, 3
  br label %vec.epilog.vector.body4247

vec.epilog.vector.body4247:                       ; preds = %vec.epilog.vector.body4247, %vec.epilog.ph4244
  %index4248 = phi i64 [ %vec.epilog.resume.val4245, %vec.epilog.ph4244 ], [ %index.next4252, %vec.epilog.vector.body4247 ] ; 3 uses
  %next.gep4249 = getelementptr i8, ptr %i.ajt, i64 %index4248
  %next.gep4250 = getelementptr i8, ptr %i.ajs, i64 %index4248
  %wide.load4251 = load <4 x i8>, ptr %next.gep4249, align 1, !tbaa !37
  store <4 x i8> %wide.load4251, ptr %next.gep4250, align 1, !tbaa !37
  %index.next4252 = add nuw i64 %index4248, 4     ; 2 uses
  %i.akh = icmp eq i64 %index.next4252, %n.vec4246
  br i1 %i.akh, label %vec.epilog.middle.block4253, label %vec.epilog.vector.body4247, !llvm.loop !455

vec.epilog.middle.block4253:                      ; preds = %vec.epilog.vector.body4247
  %cmp.n4254 = icmp eq i64 %.pr.pre206278282.i, %n.vec4246
  br i1 %cmp.n4254, label %tg3__memcpy.exit170.loopexit.i, label %.lr.ph.i164.i.preheader

.lr.ph.i164.i.preheader:                          ; preds = %iter.check4240, %vec.epilog.iter.check4241, %vec.epilog.middle.block4253
  %.010.i165.i.ph = phi ptr [ %i.ajt, %iter.check4240 ], [ %i.ajy, %vec.epilog.iter.check4241 ], [ %i.ake, %vec.epilog.middle.block4253 ] ; 2 uses
  %.059.i166.i.ph = phi ptr [ %i.ajs, %iter.check4240 ], [ %i.ajz, %vec.epilog.iter.check4241 ], [ %i.akf, %vec.epilog.middle.block4253 ] ; 2 uses
  %.068.i167.i.ph = phi i64 [ %.pr.pre206278282.i, %iter.check4240 ], [ %i.aka, %vec.epilog.iter.check4241 ], [ %i.akg, %vec.epilog.middle.block4253 ] ; 4 uses
  %i.aki = add i64 %.068.i167.i.ph, -1
  %xtraiter4638 = and i64 %.068.i167.i.ph, 7      ; 2 uses
  %lcmp.mod4639.not = icmp eq i64 %xtraiter4638, 0
  br i1 %lcmp.mod4639.not, label %.lr.ph.i164.i.prol.loopexit, label %.lr.ph.i164.i.prol

.lr.ph.i164.i.prol:                               ; preds = %.lr.ph.i164.i.preheader, %.lr.ph.i164.i.prol
  %.010.i165.i.prol = phi ptr [ %i.akk, %.lr.ph.i164.i.prol ], [ %.010.i165.i.ph, %.lr.ph.i164.i.preheader ] ; 2 uses
  %.059.i166.i.prol = phi ptr [ %i.akm, %.lr.ph.i164.i.prol ], [ %.059.i166.i.ph, %.lr.ph.i164.i.preheader ] ; 2 uses
  %.068.i167.i.prol = phi i64 [ %i.akj, %.lr.ph.i164.i.prol ], [ %.068.i167.i.ph, %.lr.ph.i164.i.preheader ]
  %prol.iter4640 = phi i64 [ %prol.iter4640.next, %.lr.ph.i164.i.prol ], [ 0, %.lr.ph.i164.i.preheader ]
  %i.akj = add i64 %.068.i167.i.prol, -1          ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.010.i165.i.prol, i64 1 ; 2 uses
  %i.akl = load i8, ptr %.010.i165.i.prol, align 1, !tbaa !37
  %i.akm = getelementptr inbounds nuw i8, ptr %.059.i166.i.prol, i64 1 ; 2 uses
  store i8 %i.akl, ptr %.059.i166.i.prol, align 1, !tbaa !37
  %prol.iter4640.next = add i64 %prol.iter4640, 1 ; 2 uses
  %prol.iter4640.cmp.not = icmp eq i64 %prol.iter4640.next, %xtraiter4638
  br i1 %prol.iter4640.cmp.not, label %.lr.ph.i164.i.prol.loopexit, label %.lr.ph.i164.i.prol, !llvm.loop !456

.lr.ph.i164.i.prol.loopexit:                      ; preds = %.lr.ph.i164.i.prol, %.lr.ph.i164.i.preheader
  %.010.i165.i.unr = phi ptr [ %.010.i165.i.ph, %.lr.ph.i164.i.preheader ], [ %i.akk, %.lr.ph.i164.i.prol ]
  %.059.i166.i.unr = phi ptr [ %.059.i166.i.ph, %.lr.ph.i164.i.preheader ], [ %i.akm, %.lr.ph.i164.i.prol ]
  %.068.i167.i.unr = phi i64 [ %.068.i167.i.ph, %.lr.ph.i164.i.preheader ], [ %i.akj, %.lr.ph.i164.i.prol ]
  %i.akn = icmp ult i64 %i.aki, 7
  br i1 %i.akn, label %tg3__memcpy.exit170.loopexit.i, label %.lr.ph.i164.i

.lr.ph.i164.i:                                    ; preds = %.lr.ph.i164.i.prol.loopexit, %.lr.ph.i164.i
  %.010.i165.i = phi ptr [ %i.alk, %.lr.ph.i164.i ], [ %.010.i165.i.unr, %.lr.ph.i164.i.prol.loopexit ] ; 9 uses
  %.059.i166.i = phi ptr [ %i.alm, %.lr.ph.i164.i ], [ %.059.i166.i.unr, %.lr.ph.i164.i.prol.loopexit ] ; 9 uses
  %.068.i167.i = phi i64 [ %i.alj, %.lr.ph.i164.i ], [ %.068.i167.i.unr, %.lr.ph.i164.i.prol.loopexit ]
  %i.ako = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 1
  %i.akp = load i8, ptr %.010.i165.i, align 1, !tbaa !37
  %i.akq = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 1
  store i8 %i.akp, ptr %.059.i166.i, align 1, !tbaa !37
  %i.akr = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 2
  %i.aks = load i8, ptr %i.ako, align 1, !tbaa !37
  %i.akt = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 2
  store i8 %i.aks, ptr %i.akq, align 1, !tbaa !37
  %i.aku = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 3
  %i.akv = load i8, ptr %i.akr, align 1, !tbaa !37
  %i.akw = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 3
  store i8 %i.akv, ptr %i.akt, align 1, !tbaa !37
  %i.akx = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 4
  %i.aky = load i8, ptr %i.aku, align 1, !tbaa !37
  %i.akz = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 4
  store i8 %i.aky, ptr %i.akw, align 1, !tbaa !37
  %i.ala = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 5
  %i.alb = load i8, ptr %i.akx, align 1, !tbaa !37
  %i.alc = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 5
  store i8 %i.alb, ptr %i.akz, align 1, !tbaa !37
  %i.ald = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 6
  %i.ale = load i8, ptr %i.ala, align 1, !tbaa !37
  %i.alf = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 6
  store i8 %i.ale, ptr %i.alc, align 1, !tbaa !37
  %i.alg = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 7
  %i.alh = load i8, ptr %i.ald, align 1, !tbaa !37
  %i.ali = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 7
  store i8 %i.alh, ptr %i.alf, align 1, !tbaa !37
  %i.alj = add i64 %.068.i167.i, -8               ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.010.i165.i, i64 8
  %i.all = load i8, ptr %i.alg, align 1, !tbaa !37
  %i.alm = getelementptr inbounds nuw i8, ptr %.059.i166.i, i64 8
  store i8 %i.all, ptr %i.ali, align 1, !tbaa !37
  %.not.i168.i.7 = icmp eq i64 %i.alj, 0
  br i1 %.not.i168.i.7, label %tg3__memcpy.exit170.loopexit.i, label %.lr.ph.i164.i, !llvm.loop !457

tg3__memcpy.exit170.loopexit.i:                   ; preds = %.lr.ph.i164.i.prol.loopexit, %.lr.ph.i164.i, %vec.epilog.middle.block4253, %middle.block4238
  %.pre205.i = load i64, ptr %i.l, align 8, !tbaa !30
  br label %tg3__memcpy.exit170.i

tg3__memcpy.exit170.i:                            ; preds = %tg3__memcpy.exit170.loopexit.i, %bb.dv
  %i.aln = phi ptr [ %i.ajs, %tg3__memcpy.exit170.loopexit.i ], [ %i.ajl, %bb.dv ]
  %i.alo = phi i64 [ %.pre205.i, %tg3__memcpy.exit170.loopexit.i ], [ 0, %bb.dv ]
  %i.alp = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %i.aln, ptr %i.alp, align 8, !tbaa !167
  %i.alq = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %i.alo, ptr %i.alq, align 8, !tbaa !168
  br label %tg3__error_push.exit186.i

tg3__arena_alloc.exit162.thread.i:                ; preds = %.tg3__arena_alloc.exit162.threadthread-pre-split_crit_edge.i, %bb.do
  %i.alr = phi i64 [ %.pre204.i, %bb.do ], [ %.pr.pre.i, %.tg3__arena_alloc.exit162.threadthread-pre-split_crit_edge.i ]
  %.not92.i = icmp eq i64 %i.alr, 0
  br i1 %.not92.i, label %tg3__error_push.exit186.i, label %tg3__arena_alloc.exit162.thread.thread.i

tg3__arena_alloc.exit162.thread.thread.i:         ; preds = %tg3__arena_alloc.exit162.thread.i, %tg3__arena_alloc.exit162.i, %bb.dt, %bb.ds, %bb.dp
  %i.als = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i171.i = icmp eq ptr %i.als, null
  br i1 %.not.i171.i, label %tg3__error_push.exit186.i, label %bb.dw

bb.dw:                                            ; preds = %tg3__arena_alloc.exit162.thread.thread.i
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 8 ; 3 uses
  %i.alu = load i32, ptr %i.alt, align 8, !tbaa !68 ; 4 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 12 ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !122 ; 3 uses
  %.not27.i172.i = icmp ult i32 %i.alu, %i.alw
  %.pre.i173.i = load ptr, ptr %i.als, align 8, !tbaa !69 ; 11 uses
  %.pre.i173.i4193 = ptrtoaddr ptr %.pre.i173.i to i64
  br i1 %.not27.i172.i, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.not28.i174.i = icmp eq i32 %i.alw, 0
  %i.alx = shl i32 %i.alw, 1
  %spec.select.i175.i = select i1 %.not28.i174.i, i32 16, i32 %i.alx ; 2 uses
  %i.aly = zext i32 %spec.select.i175.i to i64
  %i.alz = shl nuw nsw i64 %i.aly, 5              ; 4 uses
  %.not.i.i176.i = icmp eq ptr %.pre.i173.i, null
  %i.ama = or disjoint i64 %i.alz, 8
  %i.amb = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.amc = add i64 %i.amb, %i.ama                 ; 3 uses
  %i.amd = icmp ugt i64 %i.amc, 524288            ; 2 uses
  br i1 %.not.i.i176.i, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.amd, label %tg3__error_push.exit186.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ame = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.amb ; 2 uses
  store i64 %i.alz, ptr %i.ame, align 8, !tbaa !30
  store i64 %i.amc, ptr @test_heap_used, align 8, !tbaa !30
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  br label %.loopexit.i183.i

bb.ea:                                            ; preds = %bb.dx
  br i1 %i.amd, label %tg3__error_push.exit186.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.amg = getelementptr inbounds i8, ptr %.pre.i173.i, i64 -8
  %i.amh = load i64, ptr %i.amg, align 8, !tbaa !30
  %i.ami = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.amb ; 2 uses
  store i64 %i.alz, ptr %i.ami, align 8, !tbaa !30
  store i64 %i.amc, ptr @test_heap_used, align 8, !tbaa !30
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 8 ; 9 uses
  %i.amk = call i64 @llvm.umin.i64(i64 %i.amh, i64 %i.alz) ; 11 uses
  %.not27.i.i177.i = icmp eq i64 %i.amk, 0
  br i1 %.not27.i.i177.i, label %.loopexit.i183.i, label %iter.check4208

iter.check4208:                                   ; preds = %bb.eb
  %min.iters.check4194 = icmp samesign ult i64 %i.amk, 4
  br i1 %min.iters.check4194, label %.lr.ph.i.i178.i.preheader, label %vector.memcheck4195

vector.memcheck4195:                              ; preds = %iter.check4208
  %17 = sub i64 %i.amb, %.pre.i173.i4193
  %18 = add i64 %17, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check4196 = icmp ult i64 %18, 31
  br i1 %diff.check4196, label %.lr.ph.i.i178.i.preheader, label %vector.main.loop.iter.check4197

vector.main.loop.iter.check4197:                  ; preds = %vector.memcheck4195
  %min.iters.check4198 = icmp samesign ult i64 %i.amk, 32
  br i1 %min.iters.check4198, label %vec.epilog.ph4212, label %vector.ph4199

vector.ph4199:                                    ; preds = %vector.main.loop.iter.check4197
  %i.aml = and i64 %i.amk, 28
  %n.vec4200 = and i64 %i.amk, 137438953440       ; 4 uses
  br label %vector.body4201

vector.body4201:                                  ; preds = %vector.ph4199, %vector.body4201
  %index4202 = phi i64 [ 0, %vector.ph4199 ], [ %index.next4205, %vector.body4201 ] ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.pre.i173.i, i64 %index4202 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  %wide.load4203 = load <16 x i8>, ptr %i.amm, align 1, !tbaa !37
  %wide.load4204 = load <16 x i8>, ptr %i.amn, align 1, !tbaa !37
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amj, i64 %index4202 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store <16 x i8> %wide.load4203, ptr %i.amo, align 1, !tbaa !37
  store <16 x i8> %wide.load4204, ptr %i.amp, align 1, !tbaa !37
  %index.next4205 = add nuw i64 %index4202, 32    ; 2 uses
  %i.amq = icmp eq i64 %index.next4205, %n.vec4200
  br i1 %i.amq, label %middle.block4206, label %vector.body4201, !llvm.loop !458

middle.block4206:                                 ; preds = %vector.body4201
  %cmp.n4207 = icmp eq i64 %i.amk, %n.vec4200
  br i1 %cmp.n4207, label %.loopexit.loopexit.i181.i, label %vec.epilog.iter.check4209

vec.epilog.iter.check4209:                        ; preds = %middle.block4206
  %min.epilog.iters.check4211 = icmp eq i64 %i.aml, 0
  br i1 %min.epilog.iters.check4211, label %.lr.ph.i.i178.i.preheader, label %vec.epilog.ph4212, !prof !46

vec.epilog.ph4212:                                ; preds = %vector.main.loop.iter.check4197, %vec.epilog.iter.check4209
  %vec.epilog.resume.val4213 = phi i64 [ %n.vec4200, %vec.epilog.iter.check4209 ], [ 0, %vector.main.loop.iter.check4197 ]
  %n.vec4214 = and i64 %i.amk, 137438953468       ; 3 uses
  br label %vec.epilog.vector.body4215

vec.epilog.vector.body4215:                       ; preds = %vec.epilog.vector.body4215, %vec.epilog.ph4212
  %index4216 = phi i64 [ %vec.epilog.resume.val4213, %vec.epilog.ph4212 ], [ %index.next4218, %vec.epilog.vector.body4215 ] ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.pre.i173.i, i64 %index4216
  %wide.load4217 = load <4 x i8>, ptr %i.amr, align 1, !tbaa !37
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amj, i64 %index4216
  store <4 x i8> %wide.load4217, ptr %i.ams, align 1, !tbaa !37
  %index.next4218 = add nuw i64 %index4216, 4     ; 2 uses
  %i.amt = icmp eq i64 %index.next4218, %n.vec4214
  br i1 %i.amt, label %vec.epilog.middle.block4219, label %vec.epilog.vector.body4215, !llvm.loop !459

vec.epilog.middle.block4219:                      ; preds = %vec.epilog.vector.body4215
  %cmp.n4220 = icmp eq i64 %i.amk, %n.vec4214
  br i1 %cmp.n4220, label %.loopexit.loopexit.i181.i, label %.lr.ph.i.i178.i.preheader

.lr.ph.i.i178.i.preheader:                        ; preds = %iter.check4208, %vector.memcheck4195, %vec.epilog.iter.check4209, %vec.epilog.middle.block4219
  %.026.i.i179.i.ph = phi i64 [ 0, %iter.check4208 ], [ 0, %vector.memcheck4195 ], [ %n.vec4200, %vec.epilog.iter.check4209 ], [ %n.vec4214, %vec.epilog.middle.block4219 ] ; 3 uses
  %xtraiter4641 = and i64 %i.amk, 3               ; 2 uses
  %lcmp.mod4642.not = icmp eq i64 %xtraiter4641, 0
  br i1 %lcmp.mod4642.not, label %.lr.ph.i.i178.i.prol.loopexit, label %.lr.ph.i.i178.i.prol

.lr.ph.i.i178.i.prol:                             ; preds = %.lr.ph.i.i178.i.preheader, %.lr.ph.i.i178.i.prol
  %.026.i.i179.i.prol = phi i64 [ %i.amx, %.lr.ph.i.i178.i.prol ], [ %.026.i.i179.i.ph, %.lr.ph.i.i178.i.preheader ] ; 3 uses
  %prol.iter4643 = phi i64 [ %prol.iter4643.next, %.lr.ph.i.i178.i.prol ], [ 0, %.lr.ph.i.i178.i.preheader ]
  %i.amu = getelementptr inbounds nuw i8, ptr %.pre.i173.i, i64 %.026.i.i179.i.prol
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !37
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amj, i64 %.026.i.i179.i.prol
  store i8 %i.amv, ptr %i.amw, align 1, !tbaa !37
  %i.amx = add nuw nsw i64 %.026.i.i179.i.prol, 1 ; 2 uses
  %prol.iter4643.next = add i64 %prol.iter4643, 1 ; 2 uses
  %prol.iter4643.cmp.not = icmp eq i64 %prol.iter4643.next, %xtraiter4641
  br i1 %prol.iter4643.cmp.not, label %.lr.ph.i.i178.i.prol.loopexit, label %.lr.ph.i.i178.i.prol, !llvm.loop !460

.lr.ph.i.i178.i.prol.loopexit:                    ; preds = %.lr.ph.i.i178.i.prol, %.lr.ph.i.i178.i.preheader
  %.026.i.i179.i.unr = phi i64 [ %.026.i.i179.i.ph, %.lr.ph.i.i178.i.preheader ], [ %i.amx, %.lr.ph.i.i178.i.prol ]
  %i.amy = sub nsw i64 %.026.i.i179.i.ph, %i.amk
  %i.amz = icmp ugt i64 %i.amy, -4
  br i1 %i.amz, label %.loopexit.loopexit.i181.i, label %.lr.ph.i.i178.i

.lr.ph.i.i178.i:                                  ; preds = %.lr.ph.i.i178.i.prol.loopexit, %.lr.ph.i.i178.i
  %.026.i.i179.i = phi i64 [ %i.anp, %.lr.ph.i.i178.i ], [ %.026.i.i179.i.unr, %.lr.ph.i.i178.i.prol.loopexit ] ; 6 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.pre.i173.i, i64 %.026.i.i179.i
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !37
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amj, i64 %.026.i.i179.i
  store i8 %i.anb, ptr %i.anc, align 1, !tbaa !37
  %i.and = add nuw nsw i64 %.026.i.i179.i, 1      ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.pre.i173.i, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !37
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.and
  store i8 %i.anf, ptr %i.ang, align 1, !tbaa !37
  %i.anh = add nuw nsw i64 %.026.i.i179.i, 2      ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.pre.i173.i, i64 %i.anh
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !37
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.anh
  store i8 %i.anj, ptr %i.ank, align 1, !tbaa !37
  %i.anl = add nuw nsw i64 %.026.i.i179.i, 3      ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.pre.i173.i, i64 %i.anl
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !37
  %i.ano = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.anl
  store i8 %i.ann, ptr %i.ano, align 1, !tbaa !37
  %i.anp = add nuw nsw i64 %.026.i.i179.i, 4      ; 2 uses
  %exitcond.not.i.i180.i.3 = icmp eq i64 %i.anp, %i.amk
  br i1 %exitcond.not.i.i180.i.3, label %.loopexit.loopexit.i181.i, label %.lr.ph.i.i178.i, !llvm.loop !461

.loopexit.loopexit.i181.i:                        ; preds = %.lr.ph.i.i178.i.prol.loopexit, %.lr.ph.i.i178.i, %vec.epilog.middle.block4219, %middle.block4206
  %.pre33.pre.i182.i = load i32, ptr %i.alt, align 8, !tbaa !68
  br label %.loopexit.i183.i

.loopexit.i183.i:                                 ; preds = %.loopexit.loopexit.i181.i, %bb.eb, %bb.dz
  %.pre33.i184.i = phi i32 [ %i.alu, %bb.dz ], [ %i.alu, %bb.eb ], [ %.pre33.pre.i182.i, %.loopexit.loopexit.i181.i ]
  %.018.i.ph.i185.i = phi ptr [ %i.amf, %bb.dz ], [ %i.amj, %bb.eb ], [ %i.amj, %.loopexit.loopexit.i181.i ] ; 2 uses
  store ptr %.018.i.ph.i185.i, ptr %i.als, align 8, !tbaa !69
  store i32 %spec.select.i175.i, ptr %i.alv, align 4, !tbaa !122
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit.i183.i, %bb.dw
  %i.anq = phi i32 [ %.pre33.i184.i, %.loopexit.i183.i ], [ %i.alu, %bb.dw ] ; 2 uses
  %i.anr = phi ptr [ %.018.i.ph.i185.i, %.loopexit.i183.i ], [ %.pre.i173.i, %bb.dw ]
  %i.ans = add i32 %i.anq, 1
  store i32 %i.ans, ptr %i.alt, align 8, !tbaa !68
  %i.ant = zext i32 %i.anq to i64
  %i.anu = getelementptr inbounds nuw [32 x i8], ptr %i.anr, i64 %i.ant ; 5 uses
  store i32 2, ptr %i.anu, align 8, !tbaa !124
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 4
  store i32 50, ptr %i.anv, align 4, !tbaa !125
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  store ptr @.str.73, ptr %i.anw, align 8, !tbaa !126
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anu, i64 16
  store ptr null, ptr %i.anx, align 8, !tbaa !127
  %i.any = getelementptr inbounds nuw i8, ptr %i.anu, i64 24
  store i64 -1, ptr %i.any, align 8, !tbaa !128
  %i.anz = getelementptr inbounds nuw i8, ptr %i.als, i64 16
  store i32 1, ptr %i.anz, align 8, !tbaa !67
  br label %tg3__error_push.exit186.i

tg3__error_push.exit186.i:                        ; preds = %bb.ec, %bb.ea, %bb.dy, %tg3__arena_alloc.exit162.thread.thread.i, %tg3__arena_alloc.exit162.thread.i, %tg3__memcpy.exit170.i
  %i.aoa = load ptr, ptr %i.gq, align 8, !tbaa !551 ; 2 uses
  %.not93.i = icmp eq ptr %i.aoa, null
  br i1 %.not93.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %tg3__error_push.exit186.i
  %i.aob = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.aoc = load i64, ptr %i.l, align 8, !tbaa !30
  %i.aod = load ptr, ptr %i.gn, align 8, !tbaa !549
  call void %i.aoa(ptr noundef %i.aob, i64 noundef %i.aoc, ptr noundef %i.aod) #22, !inline_history !462
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %tg3__error_push.exit186.i, %tg3__load_external_file.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %tg3__error_push.exit129.i, %bb.ba, %tg3__error_push.exit.i
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef %i.aoe) #21
  br label %tg3__parse_buffer.exit

tg3__parse_buffer.exit:                           ; preds = %bb.ay, %bb.aw, %bb.au, %bb.ar, %bb.z, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %tg3__error_push.exit129.thread.i, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.eg

bb.eg:                                            ; preds = %tg3__parse_buffer.exit, %tg3__json_is_object.exit950.thread
  %i.aof = add nuw i64 %.06682927, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aof, %i.es
  br i1 %exitcond.not, label %bb.eh, label %bb.t, !llvm.loop !463

bb.eh:                                            ; preds = %bb.eg
  %i.aog = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.gh, ptr %i.aog, align 8, !tbaa !170
  %i.aoh = trunc i64 %i.es to i32
  %i.aoi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.aoh, ptr %i.aoi, align 8, !tbaa !171
  br label %tg3__json_is_array.exit.thread

tg3__json_is_array.exit.thread:                   ; preds = %tg3json__memcmp_fallback.exit.i.i926, %bb.s, %bb.q, %bb.r, %bb.m, %bb.n, %.preheader.i.i920, %tg3json__strlen_fallback.exit.i917, %tg3json_object_get.exit940, %tg3json_array_size.exit, %bb.eh, %tg3__arena_alloc.exit, %tg3__json_is_array.exit
  %i.aoj = load ptr, ptr %i.dd, align 8, !tbaa !538 ; 2 uses
  %.not756 = icmp eq ptr %i.aoj, null
  br i1 %.not756, label %.critedge, label %bb.ei

bb.ei:                                            ; preds = %tg3__json_is_array.exit.thread
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !552
  %.not757 = icmp eq ptr %i.aol, null
  br i1 %.not757, label %.critedge, label %.preheader2821

.preheader2821:                                   ; preds = %bb.ei
  %i.aom = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aon = load i32, ptr %i.aom, align 8, !tbaa !171
  %.not7592929.not = icmp eq i32 %i.aon, 0
  br i1 %.not7592929.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader2821
  %i.aoo = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ek
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aop = load i32, ptr %i.aom, align 8, !tbaa !171
  %i.aoq = zext i32 %i.aop to i64
  %.not759 = icmp samesign ult i64 %indvars.iv.next, %i.aoq
  br i1 %.not759, label %bb.ek, label %.critedge, !llvm.loop !464

bb.ek:                                            ; preds = %.lr.ph, %bb.ej
end_hunk_5
begin_hunk_6_@tg3_write_to_memory:bb.a
bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not253 = icmp eq ptr %3, null
  br i1 %.not253, label %tg3__error_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8, !tbaa !30
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.e, label %tg3__error_push.exit

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %vector.body, label %bb.f

vector.body:                                      ; preds = %bb.e
  store <16 x i8> zeroinitializer, ptr %.sroa.0, align 16, !tbaa !37
  store <16 x i8> zeroinitializer, ptr %.sroa.7, align 16, !tbaa !37
  store i32 1, ptr %.sroa.0, align 16, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %vector.body, %bb.e
  %.074.sroa.phi = phi ptr [ %.074.sroa.gep, %bb.e ], [ %.sroa.7, %vector.body ]
  %.074.sroa.phi80 = phi ptr [ %.074.sroa.gep81, %bb.e ], [ %.sroa.0.12.gep82.sroa_idx979, %vector.body ]
  %.074.sroa.phi83 = phi ptr [ %4, %bb.e ], [ %.sroa.0, %vector.body ]
  %.074.sroa.phi86 = phi ptr [ %.074.sroa.gep87, %bb.e ], [ %.sroa.0.4.gep88.sroa_idx978, %vector.body ]
  %i.d = load i32, ptr %.074.sroa.phi, align 8, !tbaa !714 ; 7 uses
  %i.e = load i32, ptr %.074.sroa.phi80, align 4, !tbaa !715
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i32 6, ptr %13, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = call fastcc i32 @tg3__serialize_asset(ptr noundef readonly %i.f, ptr noundef %8) #21
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.fl, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %bb.f
  %i.h = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull @.str.14, i64 noundef 5, ptr noundef nonnull %8) #21
  %.not.i.i110 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i110, label %tg3__json_set_take.exit.thread.i, label %tg3__json_set_take.exit.i

tg3__json_set_take.exit.thread.i:                 ; preds = %.preheader.i.i.preheader.i
  call void @tg3json_value_free(ptr noundef nonnull %8) #21
  br label %bb.fl

tg3__json_set_take.exit.i:                        ; preds = %.preheader.i.i.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120  ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %tg3json_object_set_take.exit.i.i.i, label %bb.g

tg3json_object_set_take.exit.i.i.i:               ; preds = %tg3__json_set_take.exit.i
  %i.l = zext nneg i32 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 2, ptr %7, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !37
  %i.n = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull @.str.48, i64 noundef 5, ptr noundef nonnull %7) #21
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %tg3__json_set_int.exit.thread.i, label %tg3__json_set_int.exit.i

tg3__json_set_int.exit.thread.i:                  ; preds = %tg3json_object_set_take.exit.i.i.i
  call void @tg3json_value_free(ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.fl

tg3__json_set_int.exit.i:                         ; preds = %tg3json_object_set_take.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.g

bb.g:                                             ; preds = %tg3__json_set_int.exit.i, %tg3__json_set_take.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !716
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load i32, ptr %i.q, align 8, !tbaa !717
  %i.s = call fastcc i32 @tg3__serialize_string_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.46, ptr noundef %i.p, i32 noundef %i.r) #21
  %.not148.i = icmp eq i32 %i.s, 0
  br i1 %.not148.i, label %bb.fl, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !718
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i32, ptr %i.v, align 8, !tbaa !719
  %i.x = call fastcc i32 @tg3__serialize_string_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.47, ptr noundef %i.u, i32 noundef %i.w) #21
  %.not149.i = icmp eq i32 %i.x, 0
  br i1 %.not149.i, label %bb.fl, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170
  %.not150.i = icmp eq ptr %i.z, null
  br i1 %.not150.i, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !171
  %.not151.i = icmp eq i32 %i.ab, 0
  br i1 %.not151.i, label %bb.w, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ag = call fastcc i32 @tg3__serialize_buffer(ptr noundef %i.af, i32 noundef %i.e, ptr noundef %10) #21
  %.not221.i = icmp eq i32 %i.ag, 0
  br i1 %.not221.i, label %.loopexit443.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %9, align 8, !tbaa !40
  %i.ai = icmp eq i32 %i.ah, 5
  br i1 %i.ai, label %bb.m, label %tg3__json_push_take.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !37 ; 5 uses
  %i.ak = add i64 %i.aj, 1                        ; 4 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.not.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i, label %bb.n

.tg3json__init_value.exit_crit_edge.i.i.i:        ; preds = %bb.m
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !37
  br label %bb.u

bb.n:                                             ; preds = %bb.m
  %.not25.i.i.i.i = icmp eq i64 %i.aj, 0
  %spec.select.i.i.i.i = select i1 %.not25.i.i.i.i, i64 8, i64 %i.aj ; 3 uses
  %i.al = icmp ult i64 %spec.select.i.i.i.i, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.030.i.i.i.i = phi i64 [ %i.an, %bb.o ], [ %spec.select.i.i.i.i, %bb.n ] ; 2 uses
  %i.am = icmp slt i64 %.030.i.i.i.i, 0
  br i1 %i.am, label %._crit_edge.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = shl nuw i64 %.030.i.i.i.i, 1            ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

._crit_edge.i.i.i.i:                              ; preds = %bb.o, %.lr.ph.i.i.i.i, %bb.n
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.n ], [ %i.an, %bb.o ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ap = icmp ugt i64 %.1.i.i.i.i, 768614336404564650
  br i1 %i.ap, label %tg3__json_push_take.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 10 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = mul nuw i64 %.1.i.i.i.i, 24             ; 4 uses
  %.not.i.i.i.i226.i = icmp eq ptr %i.aq, null
  %i.at = add nuw i64 %i.as, 8
  %i.au = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.av = add i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 524288              ; 2 uses
  br i1 %.not.i.i.i.i226.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.aw, label %tg3__json_push_take.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.au ; 2 uses
  store i64 %i.as, ptr %i.ax, align 8, !tbaa !30
  store i64 %i.av, ptr @test_heap_used, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  br label %.loopexit.i.i.i.i

bb.s:                                             ; preds = %bb.p
  br i1 %i.aw, label %tg3__json_push_take.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.au ; 2 uses
  store i64 %i.as, ptr %i.bb, align 8, !tbaa !30
  store i64 %i.av, ptr @test_heap_used, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 12 uses
  %i.bd = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.as) ; 11 uses
  %.not27.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not27.i.i.i.i.i, label %.loopexit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %14 = sub i64 %i.au, %i.ar
  %15 = add i64 %14, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check = icmp ult i64 %15, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check393 = icmp ult i64 %i.bd, 32
  br i1 %min.iters.check393, label %vec.epilog.ph, label %vector.ph394

vector.ph394:                                     ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bd, 28
  %n.vec = and i64 %i.bd, -32                     ; 4 uses
  br label %vector.body395

vector.body395:                                   ; preds = %vector.ph394, %vector.body395
  %index396 = phi i64 [ 0, %vector.ph394 ], [ %index.next398, %vector.body395 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index396 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !37
  %wide.load397 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index396 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !37
  store <16 x i8> %wide.load397, ptr %i.bi, align 1, !tbaa !37
  %index.next398 = add nuw i64 %index396, 32      ; 2 uses
  %i.bj = icmp eq i64 %index.next398, %n.vec
  br i1 %i.bj, label %middle.block399, label %vector.body395, !llvm.loop !629

middle.block399:                                  ; preds = %vector.body395
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block399
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec400 = and i64 %i.bd, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index401 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next403, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index401
  %wide.load402 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index401
  store <4 x i8> %wide.load402, ptr %i.bl, align 1, !tbaa !37
  %index.next403 = add nuw i64 %index401, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next403, %n.vec400
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !630

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n404 = icmp eq i64 %i.bd, %n.vec400
  br i1 %cmp.n404, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec400, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.026.i.i.i.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.prol ], [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.026.i.i.i.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.026.i.i.i.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !37
  %i.bq = add nuw i64 %.026.i.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !631

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i.prol ]
  %i.br = sub i64 %.026.i.i.i.i.i.ph, %i.bd
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.026.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.026.i.i.i.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.026.i.i.i.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !37
  %i.bw = add nuw i64 %.026.i.i.i.i.i, 1          ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !37
  %i.ca = add nuw i64 %.026.i.i.i.i.i, 2          ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !37
  %i.ce = add nuw i64 %.026.i.i.i.i.i, 3          ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !37
  %i.ci = add nuw i64 %.026.i.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.ci, %i.bd
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !632

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block399, %vec.epilog.middle.block, %bb.t, %bb.r
  %.018.i.ph.i.i.i.i = phi ptr [ %i.ay, %bb.r ], [ %i.bc, %bb.t ], [ %i.bc, %middle.block399 ], [ %i.bc, %vec.epilog.middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i.i, ptr %i.ac, align 8, !tbaa !55
  br label %bb.u

tg3__json_push_take.exit.thread.i:                ; preds = %bb.s, %bb.q, %._crit_edge.i.i.i.i, %bb.l
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit443.i

.loopexit443.i:                                   ; preds = %bb.k, %tg3__json_push_take.exit.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.u:                                             ; preds = %.loopexit.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i
  %i.cj = phi ptr [ %.pre.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i ], [ %.018.i.ph.i.i.i.i, %.loopexit.i.i.i.i ]
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !37
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cl = load i32, ptr %i.aa, align 8, !tbaa !171
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next.i, %i.cm
  br i1 %i.cn, label %bb.k, label %._crit_edge.i, !llvm.loop !633

._crit_edge.i:                                    ; preds = %bb.u
  %i.co = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.15, ptr noundef %9) #21
  %.not152.i = icmp eq i32 %i.co, 0
  br i1 %.not152.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.w:                                             ; preds = %._crit_edge.i, %bb.j, %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !175
  %.not153.i = icmp eq ptr %i.cq, null
  br i1 %.not153.i, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !176
  %.not154.i = icmp eq i32 %i.cs, 0
  br i1 %.not154.i, label %bb.ak, label %.lr.ph447.i

.lr.ph447.i:                                      ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ai, %.lr.ph447.i
  %indvars.iv512.i = phi i64 [ 0, %.lr.ph447.i ], [ %indvars.iv.next513.i, %bb.ai ] ; 2 uses
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !175
  %i.cw = getelementptr inbounds nuw [112 x i8], ptr %i.cv, i64 %indvars.iv512.i
  %i.cx = call fastcc i32 @tg3__serialize_buffer_view(ptr noundef %i.cw, i32 noundef %i.d, ptr noundef %10) #21
  %.not219.i = icmp eq i32 %i.cx, 0
  br i1 %.not219.i, label %.loopexit442.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %9, align 8, !tbaa !40
  %i.cz = icmp eq i32 %i.cy, 5
  br i1 %i.cz, label %bb.aa, label %tg3__json_push_take.exit248.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !37 ; 5 uses
  %i.db = add i64 %i.da, 1                        ; 4 uses
  %.not.i.not.i.i230.i = icmp eq i64 %i.da, -1
  br i1 %.not.i.not.i.i230.i, label %.tg3json__init_value.exit_crit_edge.i.i246.i, label %bb.ab

.tg3json__init_value.exit_crit_edge.i.i246.i:     ; preds = %bb.aa
  %.pre.i.i247.i = load ptr, ptr %i.ct, align 8, !tbaa !37
  br label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %.not25.i.i.i231.i = icmp eq i64 %i.da, 0
  %spec.select.i.i.i232.i = select i1 %.not25.i.i.i231.i, i64 8, i64 %i.da ; 3 uses
  %i.dc = icmp ult i64 %spec.select.i.i.i232.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.i244.i, label %._crit_edge.i.i.i233.i

.lr.ph.i.i.i244.i:                                ; preds = %bb.ab, %bb.ac
  %.030.i.i.i245.i = phi i64 [ %i.de, %bb.ac ], [ %spec.select.i.i.i232.i, %bb.ab ] ; 2 uses
  %i.dd = icmp slt i64 %.030.i.i.i245.i, 0
  br i1 %i.dd, label %._crit_edge.i.i.i233.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i244.i
  %i.de = shl nuw i64 %.030.i.i.i245.i, 1         ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.db
  br i1 %i.df, label %.lr.ph.i.i.i244.i, label %._crit_edge.i.i.i233.i, !llvm.loop !2

._crit_edge.i.i.i233.i:                           ; preds = %bb.ac, %.lr.ph.i.i.i244.i, %bb.ab
  %.1.i.i.i234.i = phi i64 [ %spec.select.i.i.i232.i, %bb.ab ], [ %i.de, %bb.ac ], [ %i.db, %.lr.ph.i.i.i244.i ] ; 2 uses
  %i.dg = icmp ugt i64 %.1.i.i.i234.i, 768614336404564650
  br i1 %i.dg, label %tg3__json_push_take.exit248.thread.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i233.i
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !55 ; 10 uses
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = mul nuw i64 %.1.i.i.i234.i, 24          ; 4 uses
  %.not.i.i.i.i235.i = icmp eq ptr %i.dh, null
  %i.dk = add nuw i64 %i.dj, 8
  %i.dl = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.dm = add i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = icmp ugt i64 %i.dm, 524288              ; 2 uses
  br i1 %.not.i.i.i.i235.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dn, label %tg3__json_push_take.exit248.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.dl ; 2 uses
  store i64 %i.dj, ptr %i.do, align 8, !tbaa !30
  store i64 %i.dm, ptr @test_heap_used, align 8, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  br label %.loopexit.i.i.i240.i

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.dn, label %tg3__json_push_take.exit248.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.dl ; 2 uses
  store i64 %i.dj, ptr %i.ds, align 8, !tbaa !30
  store i64 %i.dm, ptr @test_heap_used, align 8, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 12 uses
  %i.du = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dj) ; 11 uses
  %.not27.i.i.i.i236.i = icmp eq i64 %i.du, 0
  br i1 %.not27.i.i.i.i236.i, label %.loopexit.i.i.i240.i, label %iter.check421

iter.check421:                                    ; preds = %bb.ah
  %min.iters.check407 = icmp ult i64 %i.du, 4
  br i1 %min.iters.check407, label %.lr.ph.i.i.i.i237.i.preheader, label %vector.memcheck408

vector.memcheck408:                               ; preds = %iter.check421
  %16 = sub i64 %i.dl, %i.di
  %17 = add i64 %16, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check409 = icmp ult i64 %17, 31
  br i1 %diff.check409, label %.lr.ph.i.i.i.i237.i.preheader, label %vector.main.loop.iter.check410

vector.main.loop.iter.check410:                   ; preds = %vector.memcheck408
  %min.iters.check411 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check411, label %vec.epilog.ph425, label %vector.ph412

vector.ph412:                                     ; preds = %vector.main.loop.iter.check410
  %i.dv = and i64 %i.du, 28
  %n.vec413 = and i64 %i.du, -32                  ; 4 uses
  br label %vector.body414

vector.body414:                                   ; preds = %vector.ph412, %vector.body414
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next418, %vector.body414 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index415 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load416 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !37
  %wide.load417 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !37
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index415 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <16 x i8> %wide.load416, ptr %i.dy, align 1, !tbaa !37
  store <16 x i8> %wide.load417, ptr %i.dz, align 1, !tbaa !37
  %index.next418 = add nuw i64 %index415, 32      ; 2 uses
  %i.ea = icmp eq i64 %index.next418, %n.vec413
  br i1 %i.ea, label %middle.block419, label %vector.body414, !llvm.loop !634

middle.block419:                                  ; preds = %vector.body414
  %cmp.n420 = icmp eq i64 %i.du, %n.vec413
  br i1 %cmp.n420, label %.loopexit.i.i.i240.i, label %vec.epilog.iter.check422

vec.epilog.iter.check422:                         ; preds = %middle.block419
  %min.epilog.iters.check424 = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check424, label %.lr.ph.i.i.i.i237.i.preheader, label %vec.epilog.ph425, !prof !46

vec.epilog.ph425:                                 ; preds = %vector.main.loop.iter.check410, %vec.epilog.iter.check422
  %vec.epilog.resume.val426 = phi i64 [ %n.vec413, %vec.epilog.iter.check422 ], [ 0, %vector.main.loop.iter.check410 ]
  %n.vec427 = and i64 %i.du, -4                   ; 3 uses
  br label %vec.epilog.vector.body428

vec.epilog.vector.body428:                        ; preds = %vec.epilog.vector.body428, %vec.epilog.ph425
  %index429 = phi i64 [ %vec.epilog.resume.val426, %vec.epilog.ph425 ], [ %index.next431, %vec.epilog.vector.body428 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index429
  %wide.load430 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index429
  store <4 x i8> %wide.load430, ptr %i.ec, align 1, !tbaa !37
  %index.next431 = add nuw i64 %index429, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next431, %n.vec427
  br i1 %i.ed, label %vec.epilog.middle.block432, label %vec.epilog.vector.body428, !llvm.loop !635

vec.epilog.middle.block432:                       ; preds = %vec.epilog.vector.body428
  %cmp.n433 = icmp eq i64 %i.du, %n.vec427
  br i1 %cmp.n433, label %.loopexit.i.i.i240.i, label %.lr.ph.i.i.i.i237.i.preheader

.lr.ph.i.i.i.i237.i.preheader:                    ; preds = %iter.check421, %vector.memcheck408, %vec.epilog.iter.check422, %vec.epilog.middle.block432
  %.026.i.i.i.i238.i.ph = phi i64 [ 0, %iter.check421 ], [ 0, %vector.memcheck408 ], [ %n.vec413, %vec.epilog.iter.check422 ], [ %n.vec427, %vec.epilog.middle.block432 ] ; 3 uses
  %xtraiter930 = and i64 %i.du, 3                 ; 2 uses
  %lcmp.mod931.not = icmp eq i64 %xtraiter930, 0
  br i1 %lcmp.mod931.not, label %.lr.ph.i.i.i.i237.i.prol.loopexit, label %.lr.ph.i.i.i.i237.i.prol

.lr.ph.i.i.i.i237.i.prol:                         ; preds = %.lr.ph.i.i.i.i237.i.preheader, %.lr.ph.i.i.i.i237.i.prol
  %.026.i.i.i.i238.i.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i237.i.prol ], [ %.026.i.i.i.i238.i.ph, %.lr.ph.i.i.i.i237.i.preheader ] ; 3 uses
  %prol.iter932 = phi i64 [ %prol.iter932.next, %.lr.ph.i.i.i.i237.i.prol ], [ 0, %.lr.ph.i.i.i.i237.i.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.026.i.i.i.i238.i.prol
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.026.i.i.i.i238.i.prol
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !37
  %i.eh = add nuw i64 %.026.i.i.i.i238.i.prol, 1  ; 2 uses
  %prol.iter932.next = add i64 %prol.iter932, 1   ; 2 uses
  %prol.iter932.cmp.not = icmp eq i64 %prol.iter932.next, %xtraiter930
  br i1 %prol.iter932.cmp.not, label %.lr.ph.i.i.i.i237.i.prol.loopexit, label %.lr.ph.i.i.i.i237.i.prol, !llvm.loop !636

.lr.ph.i.i.i.i237.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i237.i.prol, %.lr.ph.i.i.i.i237.i.preheader
  %.026.i.i.i.i238.i.unr = phi i64 [ %.026.i.i.i.i238.i.ph, %.lr.ph.i.i.i.i237.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i237.i.prol ]
  %i.ei = sub i64 %.026.i.i.i.i238.i.ph, %i.du
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %.loopexit.i.i.i240.i, label %.lr.ph.i.i.i.i237.i

.lr.ph.i.i.i.i237.i:                              ; preds = %.lr.ph.i.i.i.i237.i.prol.loopexit, %.lr.ph.i.i.i.i237.i
  %.026.i.i.i.i238.i = phi i64 [ %i.ez, %.lr.ph.i.i.i.i237.i ], [ %.026.i.i.i.i238.i.unr, %.lr.ph.i.i.i.i237.i.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.026.i.i.i.i238.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !37
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.026.i.i.i.i238.i
  store i8 %i.el, ptr %i.em, align 1, !tbaa !37
  %i.en = add nuw i64 %.026.i.i.i.i238.i, 1       ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.en
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !37
  %i.er = add nuw i64 %.026.i.i.i.i238.i, 2       ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.er
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !37
  %i.ev = add nuw i64 %.026.i.i.i.i238.i, 3       ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ev
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !37
  %i.ez = add nuw i64 %.026.i.i.i.i238.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i239.i.3 = icmp eq i64 %i.ez, %i.du
  br i1 %exitcond.not.i.i.i.i239.i.3, label %.loopexit.i.i.i240.i, label %.lr.ph.i.i.i.i237.i, !llvm.loop !637

.loopexit.i.i.i240.i:                             ; preds = %.lr.ph.i.i.i.i237.i.prol.loopexit, %.lr.ph.i.i.i.i237.i, %middle.block419, %vec.epilog.middle.block432, %bb.ah, %bb.af
  %.018.i.ph.i.i.i241.i = phi ptr [ %i.dp, %bb.af ], [ %i.dt, %bb.ah ], [ %i.dt, %middle.block419 ], [ %i.dt, %vec.epilog.middle.block432 ], [ %i.dt, %.lr.ph.i.i.i.i237.i ], [ %i.dt, %.lr.ph.i.i.i.i237.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i241.i, ptr %i.ct, align 8, !tbaa !55
  br label %bb.ai

tg3__json_push_take.exit248.thread.i:             ; preds = %bb.ag, %bb.ae, %._crit_edge.i.i.i233.i, %bb.z
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit442.i

.loopexit442.i:                                   ; preds = %bb.y, %tg3__json_push_take.exit248.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.ai:                                            ; preds = %.loopexit.i.i.i240.i, %.tg3json__init_value.exit_crit_edge.i.i246.i
  %i.fa = phi ptr [ %.pre.i.i247.i, %.tg3json__init_value.exit_crit_edge.i.i246.i ], [ %.018.i.ph.i.i.i241.i, %.loopexit.i.i.i240.i ]
  store i64 %i.db, ptr %i.cu, align 8, !tbaa !37
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next513.i = add nuw nsw i64 %indvars.iv512.i, 1 ; 2 uses
  %i.fc = load i32, ptr %i.cr, align 8, !tbaa !176
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv.next513.i, %i.fd
  br i1 %i.fe, label %bb.y, label %._crit_edge448.i, !llvm.loop !638

._crit_edge448.i:                                 ; preds = %bb.ai
  %i.ff = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.16, ptr noundef %9) #21
  %.not155.i = icmp eq i32 %i.ff, 0
  br i1 %.not155.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge448.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.ak:                                            ; preds = %._crit_edge448.i, %bb.x, %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !182
  %.not156.i = icmp eq ptr %i.fh, null
  br i1 %.not156.i, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !183
  %.not157.i = icmp eq i32 %i.fj, 0
  br i1 %.not157.i, label %bb.ay, label %.lr.ph451.i

.lr.ph451.i:                                      ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.aw, %.lr.ph451.i
  %indvars.iv515.i = phi i64 [ 0, %.lr.ph451.i ], [ %indvars.iv.next516.i, %bb.aw ] ; 2 uses
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !182
  %i.fn = getelementptr inbounds nuw [352 x i8], ptr %i.fm, i64 %indvars.iv515.i
  %i.fo = call fastcc i32 @tg3__serialize_accessor(ptr noundef %i.fn, i32 noundef %i.d, ptr noundef %10) #21
  %.not217.i = icmp eq i32 %i.fo, 0
  br i1 %.not217.i, label %.loopexit441.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = load i32, ptr %9, align 8, !tbaa !40
  %i.fq = icmp eq i32 %i.fp, 5
  br i1 %i.fq, label %bb.ao, label %tg3__json_push_take.exit270.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.fr = load i64, ptr %i.fl, align 8, !tbaa !37 ; 5 uses
  %i.fs = add i64 %i.fr, 1                        ; 4 uses
  %.not.i.not.i.i252.i = icmp eq i64 %i.fr, -1
  br i1 %.not.i.not.i.i252.i, label %.tg3json__init_value.exit_crit_edge.i.i268.i, label %bb.ap

.tg3json__init_value.exit_crit_edge.i.i268.i:     ; preds = %bb.ao
  %.pre.i.i269.i = load ptr, ptr %i.fk, align 8, !tbaa !37
  br label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %.not25.i.i.i253.i = icmp eq i64 %i.fr, 0
  %spec.select.i.i.i254.i = select i1 %.not25.i.i.i253.i, i64 8, i64 %i.fr ; 3 uses
  %i.ft = icmp ult i64 %spec.select.i.i.i254.i, %i.fs
  br i1 %i.ft, label %.lr.ph.i.i.i266.i, label %._crit_edge.i.i.i255.i

.lr.ph.i.i.i266.i:                                ; preds = %bb.ap, %bb.aq
  %.030.i.i.i267.i = phi i64 [ %i.fv, %bb.aq ], [ %spec.select.i.i.i254.i, %bb.ap ] ; 2 uses
  %i.fu = icmp slt i64 %.030.i.i.i267.i, 0
  br i1 %i.fu, label %._crit_edge.i.i.i255.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i266.i
  %i.fv = shl nuw i64 %.030.i.i.i267.i, 1         ; 3 uses
  %i.fw = icmp ult i64 %i.fv, %i.fs
  br i1 %i.fw, label %.lr.ph.i.i.i266.i, label %._crit_edge.i.i.i255.i, !llvm.loop !2

._crit_edge.i.i.i255.i:                           ; preds = %bb.aq, %.lr.ph.i.i.i266.i, %bb.ap
  %.1.i.i.i256.i = phi i64 [ %spec.select.i.i.i254.i, %bb.ap ], [ %i.fv, %bb.aq ], [ %i.fs, %.lr.ph.i.i.i266.i ] ; 2 uses
  %i.fx = icmp ugt i64 %.1.i.i.i256.i, 768614336404564650
  br i1 %i.fx, label %tg3__json_push_take.exit270.thread.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i.i255.i
  %i.fy = load ptr, ptr %i.fk, align 8, !tbaa !55 ; 10 uses
  %i.fz = ptrtoaddr ptr %i.fy to i64
  %i.ga = mul nuw i64 %.1.i.i.i256.i, 24          ; 4 uses
  %.not.i.i.i.i257.i = icmp eq ptr %i.fy, null
  %i.gb = add nuw i64 %i.ga, 8
  %i.gc = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.gd = add i64 %i.gb, %i.gc                    ; 3 uses
  %i.ge = icmp ugt i64 %i.gd, 524288              ; 2 uses
  br i1 %.not.i.i.i.i257.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ge, label %tg3__json_push_take.exit270.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.gc ; 2 uses
  store i64 %i.ga, ptr %i.gf, align 8, !tbaa !30
  store i64 %i.gd, ptr @test_heap_used, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  br label %.loopexit.i.i.i262.i

bb.au:                                            ; preds = %bb.ar
  br i1 %i.ge, label %tg3__json_push_take.exit270.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gh = getelementptr inbounds i8, ptr %i.fy, i64 -8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.gc ; 2 uses
  store i64 %i.ga, ptr %i.gj, align 8, !tbaa !30
  store i64 %i.gd, ptr @test_heap_used, align 8, !tbaa !30
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 12 uses
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.ga) ; 11 uses
  %.not27.i.i.i.i258.i = icmp eq i64 %i.gl, 0
  br i1 %.not27.i.i.i.i258.i, label %.loopexit.i.i.i262.i, label %iter.check451

iter.check451:                                    ; preds = %bb.av
  %min.iters.check437 = icmp ult i64 %i.gl, 4
  br i1 %min.iters.check437, label %.lr.ph.i.i.i.i259.i.preheader, label %vector.memcheck438

vector.memcheck438:                               ; preds = %iter.check451
  %18 = sub i64 %i.gc, %i.fz
  %19 = add i64 %18, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check439 = icmp ult i64 %19, 31
  br i1 %diff.check439, label %.lr.ph.i.i.i.i259.i.preheader, label %vector.main.loop.iter.check440

vector.main.loop.iter.check440:                   ; preds = %vector.memcheck438
  %min.iters.check441 = icmp ult i64 %i.gl, 32
  br i1 %min.iters.check441, label %vec.epilog.ph455, label %vector.ph442

vector.ph442:                                     ; preds = %vector.main.loop.iter.check440
  %i.gm = and i64 %i.gl, 28
  %n.vec443 = and i64 %i.gl, -32                  ; 4 uses
  br label %vector.body444

vector.body444:                                   ; preds = %vector.ph442, %vector.body444
  %index445 = phi i64 [ 0, %vector.ph442 ], [ %index.next448, %vector.body444 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 %index445 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load446 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !37
  %wide.load447 = load <16 x i8>, ptr %i.go, align 1, !tbaa !37
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 %index445 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <16 x i8> %wide.load446, ptr %i.gp, align 1, !tbaa !37
  store <16 x i8> %wide.load447, ptr %i.gq, align 1, !tbaa !37
  %index.next448 = add nuw i64 %index445, 32      ; 2 uses
  %i.gr = icmp eq i64 %index.next448, %n.vec443
  br i1 %i.gr, label %middle.block449, label %vector.body444, !llvm.loop !639

middle.block449:                                  ; preds = %vector.body444
  %cmp.n450 = icmp eq i64 %i.gl, %n.vec443
  br i1 %cmp.n450, label %.loopexit.i.i.i262.i, label %vec.epilog.iter.check452

vec.epilog.iter.check452:                         ; preds = %middle.block449
  %min.epilog.iters.check454 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check454, label %.lr.ph.i.i.i.i259.i.preheader, label %vec.epilog.ph455, !prof !46

vec.epilog.ph455:                                 ; preds = %vector.main.loop.iter.check440, %vec.epilog.iter.check452
  %vec.epilog.resume.val456 = phi i64 [ %n.vec443, %vec.epilog.iter.check452 ], [ 0, %vector.main.loop.iter.check440 ]
  %n.vec457 = and i64 %i.gl, -4                   ; 3 uses
  br label %vec.epilog.vector.body458

vec.epilog.vector.body458:                        ; preds = %vec.epilog.vector.body458, %vec.epilog.ph455
  %index459 = phi i64 [ %vec.epilog.resume.val456, %vec.epilog.ph455 ], [ %index.next461, %vec.epilog.vector.body458 ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fy, i64 %index459
  %wide.load460 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !37
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 %index459
  store <4 x i8> %wide.load460, ptr %i.gt, align 1, !tbaa !37
  %index.next461 = add nuw i64 %index459, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next461, %n.vec457
  br i1 %i.gu, label %vec.epilog.middle.block462, label %vec.epilog.vector.body458, !llvm.loop !640

vec.epilog.middle.block462:                       ; preds = %vec.epilog.vector.body458
  %cmp.n463 = icmp eq i64 %i.gl, %n.vec457
  br i1 %cmp.n463, label %.loopexit.i.i.i262.i, label %.lr.ph.i.i.i.i259.i.preheader

.lr.ph.i.i.i.i259.i.preheader:                    ; preds = %iter.check451, %vector.memcheck438, %vec.epilog.iter.check452, %vec.epilog.middle.block462
  %.026.i.i.i.i260.i.ph = phi i64 [ 0, %iter.check451 ], [ 0, %vector.memcheck438 ], [ %n.vec443, %vec.epilog.iter.check452 ], [ %n.vec457, %vec.epilog.middle.block462 ] ; 3 uses
  %xtraiter933 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod934.not = icmp eq i64 %xtraiter933, 0
  br i1 %lcmp.mod934.not, label %.lr.ph.i.i.i.i259.i.prol.loopexit, label %.lr.ph.i.i.i.i259.i.prol

.lr.ph.i.i.i.i259.i.prol:                         ; preds = %.lr.ph.i.i.i.i259.i.preheader, %.lr.ph.i.i.i.i259.i.prol
  %.026.i.i.i.i260.i.prol = phi i64 [ %i.gy, %.lr.ph.i.i.i.i259.i.prol ], [ %.026.i.i.i.i260.i.ph, %.lr.ph.i.i.i.i259.i.preheader ] ; 3 uses
  %prol.iter935 = phi i64 [ %prol.iter935.next, %.lr.ph.i.i.i.i259.i.prol ], [ 0, %.lr.ph.i.i.i.i259.i.preheader ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.026.i.i.i.i260.i.prol
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !37
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.026.i.i.i.i260.i.prol
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !37
  %i.gy = add nuw i64 %.026.i.i.i.i260.i.prol, 1  ; 2 uses
  %prol.iter935.next = add i64 %prol.iter935, 1   ; 2 uses
  %prol.iter935.cmp.not = icmp eq i64 %prol.iter935.next, %xtraiter933
  br i1 %prol.iter935.cmp.not, label %.lr.ph.i.i.i.i259.i.prol.loopexit, label %.lr.ph.i.i.i.i259.i.prol, !llvm.loop !641

.lr.ph.i.i.i.i259.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i259.i.prol, %.lr.ph.i.i.i.i259.i.preheader
  %.026.i.i.i.i260.i.unr = phi i64 [ %.026.i.i.i.i260.i.ph, %.lr.ph.i.i.i.i259.i.preheader ], [ %i.gy, %.lr.ph.i.i.i.i259.i.prol ]
  %i.gz = sub i64 %.026.i.i.i.i260.i.ph, %i.gl
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %.loopexit.i.i.i262.i, label %.lr.ph.i.i.i.i259.i

.lr.ph.i.i.i.i259.i:                              ; preds = %.lr.ph.i.i.i.i259.i.prol.loopexit, %.lr.ph.i.i.i.i259.i
  %.026.i.i.i.i260.i = phi i64 [ %i.hq, %.lr.ph.i.i.i.i259.i ], [ %.026.i.i.i.i260.i.unr, %.lr.ph.i.i.i.i259.i.prol.loopexit ] ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.026.i.i.i.i260.i
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !37
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.026.i.i.i.i260.i
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !37
  %i.he = add nuw i64 %.026.i.i.i.i260.i, 1       ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !37
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.he
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !37
  %i.hi = add nuw i64 %.026.i.i.i.i260.i, 2       ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !37
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.hi
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !37
  %i.hm = add nuw i64 %.026.i.i.i.i260.i, 3       ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !37
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.hm
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !37
  %i.hq = add nuw i64 %.026.i.i.i.i260.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i261.i.3 = icmp eq i64 %i.hq, %i.gl
  br i1 %exitcond.not.i.i.i.i261.i.3, label %.loopexit.i.i.i262.i, label %.lr.ph.i.i.i.i259.i, !llvm.loop !642

.loopexit.i.i.i262.i:                             ; preds = %.lr.ph.i.i.i.i259.i.prol.loopexit, %.lr.ph.i.i.i.i259.i, %middle.block449, %vec.epilog.middle.block462, %bb.av, %bb.at
  %.018.i.ph.i.i.i263.i = phi ptr [ %i.gg, %bb.at ], [ %i.gk, %bb.av ], [ %i.gk, %middle.block449 ], [ %i.gk, %vec.epilog.middle.block462 ], [ %i.gk, %.lr.ph.i.i.i.i259.i ], [ %i.gk, %.lr.ph.i.i.i.i259.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i263.i, ptr %i.fk, align 8, !tbaa !55
  br label %bb.aw

tg3__json_push_take.exit270.thread.i:             ; preds = %bb.au, %bb.as, %._crit_edge.i.i.i255.i, %bb.an
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit441.i

.loopexit441.i:                                   ; preds = %bb.am, %tg3__json_push_take.exit270.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.aw:                                            ; preds = %.loopexit.i.i.i262.i, %.tg3json__init_value.exit_crit_edge.i.i268.i
  %i.hr = phi ptr [ %.pre.i.i269.i, %.tg3json__init_value.exit_crit_edge.i.i268.i ], [ %.018.i.ph.i.i.i263.i, %.loopexit.i.i.i262.i ]
  store i64 %i.fs, ptr %i.fl, align 8, !tbaa !37
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hr, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next516.i = add nuw nsw i64 %indvars.iv515.i, 1 ; 2 uses
  %i.ht = load i32, ptr %i.fi, align 8, !tbaa !183
  %i.hu = zext i32 %i.ht to i64
  %i.hv = icmp samesign ult i64 %indvars.iv.next516.i, %i.hu
  br i1 %i.hv, label %bb.am, label %._crit_edge452.i, !llvm.loop !643

._crit_edge452.i:                                 ; preds = %bb.aw
  %i.hw = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.17, ptr noundef %9) #21
  %.not158.i = icmp eq i32 %i.hw, 0
  br i1 %.not158.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge452.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.ay:                                            ; preds = %._crit_edge452.i, %bb.al, %bb.ak
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !202
  %.not159.i = icmp eq ptr %i.hy, null
  br i1 %.not159.i, label %bb.bm, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !203
  %.not160.i = icmp eq i32 %i.ia, 0
  br i1 %.not160.i, label %bb.bm, label %.lr.ph455.i

.lr.ph455.i:                                      ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bk, %.lr.ph455.i
  %indvars.iv518.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next519.i, %bb.bk ] ; 2 uses
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !202
  %i.ie = getelementptr inbounds nuw [104 x i8], ptr %i.id, i64 %indvars.iv518.i
  %i.if = call fastcc i32 @tg3__serialize_mesh(ptr noundef %i.ie, i32 noundef %i.d, ptr noundef %10) #21
  %.not215.i = icmp eq i32 %i.if, 0
  br i1 %.not215.i, label %.loopexit440.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ig = load i32, ptr %9, align 8, !tbaa !40
  %i.ih = icmp eq i32 %i.ig, 5
  br i1 %i.ih, label %bb.bc, label %tg3__json_push_take.exit292.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.ii = load i64, ptr %i.ic, align 8, !tbaa !37 ; 5 uses
  %i.ij = add i64 %i.ii, 1                        ; 4 uses
  %.not.i.not.i.i274.i = icmp eq i64 %i.ii, -1
  br i1 %.not.i.not.i.i274.i, label %.tg3json__init_value.exit_crit_edge.i.i290.i, label %bb.bd

.tg3json__init_value.exit_crit_edge.i.i290.i:     ; preds = %bb.bc
  %.pre.i.i291.i = load ptr, ptr %i.ib, align 8, !tbaa !37
  br label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %.not25.i.i.i275.i = icmp eq i64 %i.ii, 0
  %spec.select.i.i.i276.i = select i1 %.not25.i.i.i275.i, i64 8, i64 %i.ii ; 3 uses
  %i.ik = icmp ult i64 %spec.select.i.i.i276.i, %i.ij
  br i1 %i.ik, label %.lr.ph.i.i.i288.i, label %._crit_edge.i.i.i277.i

.lr.ph.i.i.i288.i:                                ; preds = %bb.bd, %bb.be
  %.030.i.i.i289.i = phi i64 [ %i.im, %bb.be ], [ %spec.select.i.i.i276.i, %bb.bd ] ; 2 uses
  %i.il = icmp slt i64 %.030.i.i.i289.i, 0
  br i1 %i.il, label %._crit_edge.i.i.i277.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i288.i
  %i.im = shl nuw i64 %.030.i.i.i289.i, 1         ; 3 uses
  %i.in = icmp ult i64 %i.im, %i.ij
  br i1 %i.in, label %.lr.ph.i.i.i288.i, label %._crit_edge.i.i.i277.i, !llvm.loop !2

._crit_edge.i.i.i277.i:                           ; preds = %bb.be, %.lr.ph.i.i.i288.i, %bb.bd
  %.1.i.i.i278.i = phi i64 [ %spec.select.i.i.i276.i, %bb.bd ], [ %i.im, %bb.be ], [ %i.ij, %.lr.ph.i.i.i288.i ] ; 2 uses
  %i.io = icmp ugt i64 %.1.i.i.i278.i, 768614336404564650
  br i1 %i.io, label %tg3__json_push_take.exit292.thread.i, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i.i.i277.i
  %i.ip = load ptr, ptr %i.ib, align 8, !tbaa !55 ; 10 uses
  %i.iq = ptrtoaddr ptr %i.ip to i64
  %i.ir = mul nuw i64 %.1.i.i.i278.i, 24          ; 4 uses
  %.not.i.i.i.i279.i = icmp eq ptr %i.ip, null
  %i.is = add nuw i64 %i.ir, 8
  %i.it = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.iu = add i64 %i.is, %i.it                    ; 3 uses
  %i.iv = icmp ugt i64 %i.iu, 524288              ; 2 uses
  br i1 %.not.i.i.i.i279.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.iv, label %tg3__json_push_take.exit292.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iw = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.it ; 2 uses
  store i64 %i.ir, ptr %i.iw, align 8, !tbaa !30
  store i64 %i.iu, ptr @test_heap_used, align 8, !tbaa !30
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  br label %.loopexit.i.i.i284.i

bb.bi:                                            ; preds = %bb.bf
  br i1 %i.iv, label %tg3__json_push_take.exit292.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iy = getelementptr inbounds i8, ptr %i.ip, i64 -8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !30
  %i.ja = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.it ; 2 uses
  store i64 %i.ir, ptr %i.ja, align 8, !tbaa !30
  store i64 %i.iu, ptr @test_heap_used, align 8, !tbaa !30
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 12 uses
  %i.jc = call i64 @llvm.umin.i64(i64 %i.iz, i64 %i.ir) ; 11 uses
  %.not27.i.i.i.i280.i = icmp eq i64 %i.jc, 0
  br i1 %.not27.i.i.i.i280.i, label %.loopexit.i.i.i284.i, label %iter.check481

iter.check481:                                    ; preds = %bb.bj
  %min.iters.check467 = icmp ult i64 %i.jc, 4
  br i1 %min.iters.check467, label %.lr.ph.i.i.i.i281.i.preheader, label %vector.memcheck468

vector.memcheck468:                               ; preds = %iter.check481
  %20 = sub i64 %i.it, %i.iq
  %21 = add i64 %20, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check469 = icmp ult i64 %21, 31
  br i1 %diff.check469, label %.lr.ph.i.i.i.i281.i.preheader, label %vector.main.loop.iter.check470

vector.main.loop.iter.check470:                   ; preds = %vector.memcheck468
  %min.iters.check471 = icmp ult i64 %i.jc, 32
  br i1 %min.iters.check471, label %vec.epilog.ph485, label %vector.ph472

vector.ph472:                                     ; preds = %vector.main.loop.iter.check470
  %i.jd = and i64 %i.jc, 28
  %n.vec473 = and i64 %i.jc, -32                  ; 4 uses
  br label %vector.body474

vector.body474:                                   ; preds = %vector.ph472, %vector.body474
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next478, %vector.body474 ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 %index475 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load476 = load <16 x i8>, ptr %i.je, align 1, !tbaa !37
  %wide.load477 = load <16 x i8>, ptr %i.jf, align 1, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 %index475 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store <16 x i8> %wide.load476, ptr %i.jg, align 1, !tbaa !37
  store <16 x i8> %wide.load477, ptr %i.jh, align 1, !tbaa !37
  %index.next478 = add nuw i64 %index475, 32      ; 2 uses
  %i.ji = icmp eq i64 %index.next478, %n.vec473
  br i1 %i.ji, label %middle.block479, label %vector.body474, !llvm.loop !644

middle.block479:                                  ; preds = %vector.body474
  %cmp.n480 = icmp eq i64 %i.jc, %n.vec473
  br i1 %cmp.n480, label %.loopexit.i.i.i284.i, label %vec.epilog.iter.check482

vec.epilog.iter.check482:                         ; preds = %middle.block479
  %min.epilog.iters.check484 = icmp eq i64 %i.jd, 0
  br i1 %min.epilog.iters.check484, label %.lr.ph.i.i.i.i281.i.preheader, label %vec.epilog.ph485, !prof !46

vec.epilog.ph485:                                 ; preds = %vector.main.loop.iter.check470, %vec.epilog.iter.check482
  %vec.epilog.resume.val486 = phi i64 [ %n.vec473, %vec.epilog.iter.check482 ], [ 0, %vector.main.loop.iter.check470 ]
  %n.vec487 = and i64 %i.jc, -4                   ; 3 uses
  br label %vec.epilog.vector.body488

vec.epilog.vector.body488:                        ; preds = %vec.epilog.vector.body488, %vec.epilog.ph485
  %index489 = phi i64 [ %vec.epilog.resume.val486, %vec.epilog.ph485 ], [ %index.next491, %vec.epilog.vector.body488 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ip, i64 %index489
  %wide.load490 = load <4 x i8>, ptr %i.jj, align 1, !tbaa !37
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 %index489
  store <4 x i8> %wide.load490, ptr %i.jk, align 1, !tbaa !37
  %index.next491 = add nuw i64 %index489, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next491, %n.vec487
  br i1 %i.jl, label %vec.epilog.middle.block492, label %vec.epilog.vector.body488, !llvm.loop !645

vec.epilog.middle.block492:                       ; preds = %vec.epilog.vector.body488
  %cmp.n493 = icmp eq i64 %i.jc, %n.vec487
  br i1 %cmp.n493, label %.loopexit.i.i.i284.i, label %.lr.ph.i.i.i.i281.i.preheader

.lr.ph.i.i.i.i281.i.preheader:                    ; preds = %iter.check481, %vector.memcheck468, %vec.epilog.iter.check482, %vec.epilog.middle.block492
  %.026.i.i.i.i282.i.ph = phi i64 [ 0, %iter.check481 ], [ 0, %vector.memcheck468 ], [ %n.vec473, %vec.epilog.iter.check482 ], [ %n.vec487, %vec.epilog.middle.block492 ] ; 3 uses
  %xtraiter936 = and i64 %i.jc, 3                 ; 2 uses
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %.lr.ph.i.i.i.i281.i.prol.loopexit, label %.lr.ph.i.i.i.i281.i.prol

.lr.ph.i.i.i.i281.i.prol:                         ; preds = %.lr.ph.i.i.i.i281.i.preheader, %.lr.ph.i.i.i.i281.i.prol
  %.026.i.i.i.i282.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i.i.i281.i.prol ], [ %.026.i.i.i.i282.i.ph, %.lr.ph.i.i.i.i281.i.preheader ] ; 3 uses
  %prol.iter938 = phi i64 [ %prol.iter938.next, %.lr.ph.i.i.i.i281.i.prol ], [ 0, %.lr.ph.i.i.i.i281.i.preheader ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.026.i.i.i.i282.i.prol
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !37
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.026.i.i.i.i282.i.prol
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !37
  %i.jp = add nuw i64 %.026.i.i.i.i282.i.prol, 1  ; 2 uses
  %prol.iter938.next = add i64 %prol.iter938, 1   ; 2 uses
  %prol.iter938.cmp.not = icmp eq i64 %prol.iter938.next, %xtraiter936
  br i1 %prol.iter938.cmp.not, label %.lr.ph.i.i.i.i281.i.prol.loopexit, label %.lr.ph.i.i.i.i281.i.prol, !llvm.loop !646

.lr.ph.i.i.i.i281.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i281.i.prol, %.lr.ph.i.i.i.i281.i.preheader
  %.026.i.i.i.i282.i.unr = phi i64 [ %.026.i.i.i.i282.i.ph, %.lr.ph.i.i.i.i281.i.preheader ], [ %i.jp, %.lr.ph.i.i.i.i281.i.prol ]
  %i.jq = sub i64 %.026.i.i.i.i282.i.ph, %i.jc
  %i.jr = icmp ugt i64 %i.jq, -4
  br i1 %i.jr, label %.loopexit.i.i.i284.i, label %.lr.ph.i.i.i.i281.i

.lr.ph.i.i.i.i281.i:                              ; preds = %.lr.ph.i.i.i.i281.i.prol.loopexit, %.lr.ph.i.i.i.i281.i
  %.026.i.i.i.i282.i = phi i64 [ %i.kh, %.lr.ph.i.i.i.i281.i ], [ %.026.i.i.i.i282.i.unr, %.lr.ph.i.i.i.i281.i.prol.loopexit ] ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.026.i.i.i.i282.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !37
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.026.i.i.i.i282.i
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !37
  %i.jv = add nuw i64 %.026.i.i.i.i282.i, 1       ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !37
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jv
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !37
  %i.jz = add nuw i64 %.026.i.i.i.i282.i, 2       ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !37
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jz
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !37
  %i.kd = add nuw i64 %.026.i.i.i.i282.i, 3       ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !37
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.kd
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !37
  %i.kh = add nuw i64 %.026.i.i.i.i282.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i283.i.3 = icmp eq i64 %i.kh, %i.jc
  br i1 %exitcond.not.i.i.i.i283.i.3, label %.loopexit.i.i.i284.i, label %.lr.ph.i.i.i.i281.i, !llvm.loop !647

.loopexit.i.i.i284.i:                             ; preds = %.lr.ph.i.i.i.i281.i.prol.loopexit, %.lr.ph.i.i.i.i281.i, %middle.block479, %vec.epilog.middle.block492, %bb.bj, %bb.bh
  %.018.i.ph.i.i.i285.i = phi ptr [ %i.ix, %bb.bh ], [ %i.jb, %bb.bj ], [ %i.jb, %middle.block479 ], [ %i.jb, %vec.epilog.middle.block492 ], [ %i.jb, %.lr.ph.i.i.i.i281.i ], [ %i.jb, %.lr.ph.i.i.i.i281.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i285.i, ptr %i.ib, align 8, !tbaa !55
  br label %bb.bk

tg3__json_push_take.exit292.thread.i:             ; preds = %bb.bi, %bb.bg, %._crit_edge.i.i.i277.i, %bb.bb
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit440.i

.loopexit440.i:                                   ; preds = %bb.ba, %tg3__json_push_take.exit292.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.bk:                                            ; preds = %.loopexit.i.i.i284.i, %.tg3json__init_value.exit_crit_edge.i.i290.i
  %i.ki = phi ptr [ %.pre.i.i291.i, %.tg3json__init_value.exit_crit_edge.i.i290.i ], [ %.018.i.ph.i.i.i285.i, %.loopexit.i.i.i284.i ]
  store i64 %i.ij, ptr %i.ic, align 8, !tbaa !37
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next519.i = add nuw nsw i64 %indvars.iv518.i, 1 ; 2 uses
  %i.kk = load i32, ptr %i.hz, align 8, !tbaa !203
  %i.kl = zext i32 %i.kk to i64
  %i.km = icmp samesign ult i64 %indvars.iv.next519.i, %i.kl
  br i1 %i.km, label %bb.ba, label %._crit_edge456.i, !llvm.loop !648

._crit_edge456.i:                                 ; preds = %bb.bk
  %i.kn = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.18, ptr noundef %9) #21
  %.not161.i = icmp eq i32 %i.kn, 0
  br i1 %.not161.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge456.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.bm:                                            ; preds = %._crit_edge456.i, %bb.az, %bb.ay
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !206
  %.not162.i = icmp eq ptr %i.kp, null
  br i1 %.not162.i, label %bb.ca, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !207
  %.not163.i = icmp eq i32 %i.kr, 0
  br i1 %.not163.i, label %bb.ca, label %.lr.ph459.i

.lr.ph459.i:                                      ; preds = %bb.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.ks = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.by, %.lr.ph459.i
  %indvars.iv521.i = phi i64 [ 0, %.lr.ph459.i ], [ %indvars.iv.next522.i, %bb.by ] ; 2 uses
  %i.ku = load ptr, ptr %i.ko, align 8, !tbaa !206
  %i.kv = getelementptr inbounds nuw [360 x i8], ptr %i.ku, i64 %indvars.iv521.i
  %i.kw = call fastcc i32 @tg3__serialize_node(ptr noundef %i.kv, i32 noundef %i.d, ptr noundef %10) #21
  %.not213.i = icmp eq i32 %i.kw, 0
  br i1 %.not213.i, label %.loopexit439.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kx = load i32, ptr %9, align 8, !tbaa !40
  %i.ky = icmp eq i32 %i.kx, 5
  br i1 %i.ky, label %bb.bq, label %tg3__json_push_take.exit314.thread.i

bb.bq:                                            ; preds = %bb.bp
  %i.kz = load i64, ptr %i.kt, align 8, !tbaa !37 ; 5 uses
  %i.la = add i64 %i.kz, 1                        ; 4 uses
  %.not.i.not.i.i296.i = icmp eq i64 %i.kz, -1
  br i1 %.not.i.not.i.i296.i, label %.tg3json__init_value.exit_crit_edge.i.i312.i, label %bb.br

.tg3json__init_value.exit_crit_edge.i.i312.i:     ; preds = %bb.bq
  %.pre.i.i313.i = load ptr, ptr %i.ks, align 8, !tbaa !37
  br label %bb.by

bb.br:                                            ; preds = %bb.bq
  %.not25.i.i.i297.i = icmp eq i64 %i.kz, 0
  %spec.select.i.i.i298.i = select i1 %.not25.i.i.i297.i, i64 8, i64 %i.kz ; 3 uses
  %i.lb = icmp ult i64 %spec.select.i.i.i298.i, %i.la
  br i1 %i.lb, label %.lr.ph.i.i.i310.i, label %._crit_edge.i.i.i299.i

.lr.ph.i.i.i310.i:                                ; preds = %bb.br, %bb.bs
  %.030.i.i.i311.i = phi i64 [ %i.ld, %bb.bs ], [ %spec.select.i.i.i298.i, %bb.br ] ; 2 uses
  %i.lc = icmp slt i64 %.030.i.i.i311.i, 0
  br i1 %i.lc, label %._crit_edge.i.i.i299.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i310.i
  %i.ld = shl nuw i64 %.030.i.i.i311.i, 1         ; 3 uses
  %i.le = icmp ult i64 %i.ld, %i.la
  br i1 %i.le, label %.lr.ph.i.i.i310.i, label %._crit_edge.i.i.i299.i, !llvm.loop !2

._crit_edge.i.i.i299.i:                           ; preds = %bb.bs, %.lr.ph.i.i.i310.i, %bb.br
  %.1.i.i.i300.i = phi i64 [ %spec.select.i.i.i298.i, %bb.br ], [ %i.ld, %bb.bs ], [ %i.la, %.lr.ph.i.i.i310.i ] ; 2 uses
  %i.lf = icmp ugt i64 %.1.i.i.i300.i, 768614336404564650
  br i1 %i.lf, label %tg3__json_push_take.exit314.thread.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i.i299.i
  %i.lg = load ptr, ptr %i.ks, align 8, !tbaa !55 ; 10 uses
  %i.lh = ptrtoaddr ptr %i.lg to i64
  %i.li = mul nuw i64 %.1.i.i.i300.i, 24          ; 4 uses
  %.not.i.i.i.i301.i = icmp eq ptr %i.lg, null
  %i.lj = add nuw i64 %i.li, 8
  %i.lk = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.ll = add i64 %i.lj, %i.lk                    ; 3 uses
  %i.lm = icmp ugt i64 %i.ll, 524288              ; 2 uses
  br i1 %.not.i.i.i.i301.i, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.lm, label %tg3__json_push_take.exit314.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ln = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.lk ; 2 uses
  store i64 %i.li, ptr %i.ln, align 8, !tbaa !30
  store i64 %i.ll, ptr @test_heap_used, align 8, !tbaa !30
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  br label %.loopexit.i.i.i306.i

bb.bw:                                            ; preds = %bb.bt
  br i1 %i.lm, label %tg3__json_push_take.exit314.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lp = getelementptr inbounds i8, ptr %i.lg, i64 -8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !30
  %i.lr = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.lk ; 2 uses
  store i64 %i.li, ptr %i.lr, align 8, !tbaa !30
  store i64 %i.ll, ptr @test_heap_used, align 8, !tbaa !30
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 12 uses
  %i.lt = call i64 @llvm.umin.i64(i64 %i.lq, i64 %i.li) ; 11 uses
  %.not27.i.i.i.i302.i = icmp eq i64 %i.lt, 0
  br i1 %.not27.i.i.i.i302.i, label %.loopexit.i.i.i306.i, label %iter.check511

iter.check511:                                    ; preds = %bb.bx
  %min.iters.check497 = icmp ult i64 %i.lt, 4
  br i1 %min.iters.check497, label %.lr.ph.i.i.i.i303.i.preheader, label %vector.memcheck498

vector.memcheck498:                               ; preds = %iter.check511
  %22 = sub i64 %i.lk, %i.lh
  %23 = add i64 %22, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check499 = icmp ult i64 %23, 31
  br i1 %diff.check499, label %.lr.ph.i.i.i.i303.i.preheader, label %vector.main.loop.iter.check500

vector.main.loop.iter.check500:                   ; preds = %vector.memcheck498
  %min.iters.check501 = icmp ult i64 %i.lt, 32
  br i1 %min.iters.check501, label %vec.epilog.ph515, label %vector.ph502

vector.ph502:                                     ; preds = %vector.main.loop.iter.check500
  %i.lu = and i64 %i.lt, 28
  %n.vec503 = and i64 %i.lt, -32                  ; 4 uses
  br label %vector.body504

vector.body504:                                   ; preds = %vector.ph502, %vector.body504
  %index505 = phi i64 [ 0, %vector.ph502 ], [ %index.next508, %vector.body504 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 %index505 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load506 = load <16 x i8>, ptr %i.lv, align 1, !tbaa !37
  %wide.load507 = load <16 x i8>, ptr %i.lw, align 1, !tbaa !37
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 %index505 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <16 x i8> %wide.load506, ptr %i.lx, align 1, !tbaa !37
  store <16 x i8> %wide.load507, ptr %i.ly, align 1, !tbaa !37
  %index.next508 = add nuw i64 %index505, 32      ; 2 uses
  %i.lz = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.lz, label %middle.block509, label %vector.body504, !llvm.loop !649

middle.block509:                                  ; preds = %vector.body504
  %cmp.n510 = icmp eq i64 %i.lt, %n.vec503
  br i1 %cmp.n510, label %.loopexit.i.i.i306.i, label %vec.epilog.iter.check512

vec.epilog.iter.check512:                         ; preds = %middle.block509
  %min.epilog.iters.check514 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check514, label %.lr.ph.i.i.i.i303.i.preheader, label %vec.epilog.ph515, !prof !46

vec.epilog.ph515:                                 ; preds = %vector.main.loop.iter.check500, %vec.epilog.iter.check512
  %vec.epilog.resume.val516 = phi i64 [ %n.vec503, %vec.epilog.iter.check512 ], [ 0, %vector.main.loop.iter.check500 ]
  %n.vec517 = and i64 %i.lt, -4                   ; 3 uses
  br label %vec.epilog.vector.body518

vec.epilog.vector.body518:                        ; preds = %vec.epilog.vector.body518, %vec.epilog.ph515
  %index519 = phi i64 [ %vec.epilog.resume.val516, %vec.epilog.ph515 ], [ %index.next521, %vec.epilog.vector.body518 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lg, i64 %index519
  %wide.load520 = load <4 x i8>, ptr %i.ma, align 1, !tbaa !37
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 %index519
  store <4 x i8> %wide.load520, ptr %i.mb, align 1, !tbaa !37
  %index.next521 = add nuw i64 %index519, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next521, %n.vec517
  br i1 %i.mc, label %vec.epilog.middle.block522, label %vec.epilog.vector.body518, !llvm.loop !650

vec.epilog.middle.block522:                       ; preds = %vec.epilog.vector.body518
  %cmp.n523 = icmp eq i64 %i.lt, %n.vec517
  br i1 %cmp.n523, label %.loopexit.i.i.i306.i, label %.lr.ph.i.i.i.i303.i.preheader

.lr.ph.i.i.i.i303.i.preheader:                    ; preds = %iter.check511, %vector.memcheck498, %vec.epilog.iter.check512, %vec.epilog.middle.block522
  %.026.i.i.i.i304.i.ph = phi i64 [ 0, %iter.check511 ], [ 0, %vector.memcheck498 ], [ %n.vec503, %vec.epilog.iter.check512 ], [ %n.vec517, %vec.epilog.middle.block522 ] ; 3 uses
  %xtraiter939 = and i64 %i.lt, 3                 ; 2 uses
  %lcmp.mod940.not = icmp eq i64 %xtraiter939, 0
  br i1 %lcmp.mod940.not, label %.lr.ph.i.i.i.i303.i.prol.loopexit, label %.lr.ph.i.i.i.i303.i.prol

.lr.ph.i.i.i.i303.i.prol:                         ; preds = %.lr.ph.i.i.i.i303.i.preheader, %.lr.ph.i.i.i.i303.i.prol
  %.026.i.i.i.i304.i.prol = phi i64 [ %i.mg, %.lr.ph.i.i.i.i303.i.prol ], [ %.026.i.i.i.i304.i.ph, %.lr.ph.i.i.i.i303.i.preheader ] ; 3 uses
  %prol.iter941 = phi i64 [ %prol.iter941.next, %.lr.ph.i.i.i.i303.i.prol ], [ 0, %.lr.ph.i.i.i.i303.i.preheader ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.026.i.i.i.i304.i.prol
  %i.me = load i8, ptr %i.md, align 1, !tbaa !37
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.026.i.i.i.i304.i.prol
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !37
  %i.mg = add nuw i64 %.026.i.i.i.i304.i.prol, 1  ; 2 uses
  %prol.iter941.next = add i64 %prol.iter941, 1   ; 2 uses
  %prol.iter941.cmp.not = icmp eq i64 %prol.iter941.next, %xtraiter939
  br i1 %prol.iter941.cmp.not, label %.lr.ph.i.i.i.i303.i.prol.loopexit, label %.lr.ph.i.i.i.i303.i.prol, !llvm.loop !651

.lr.ph.i.i.i.i303.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i303.i.prol, %.lr.ph.i.i.i.i303.i.preheader
  %.026.i.i.i.i304.i.unr = phi i64 [ %.026.i.i.i.i304.i.ph, %.lr.ph.i.i.i.i303.i.preheader ], [ %i.mg, %.lr.ph.i.i.i.i303.i.prol ]
  %i.mh = sub i64 %.026.i.i.i.i304.i.ph, %i.lt
  %i.mi = icmp ugt i64 %i.mh, -4
  br i1 %i.mi, label %.loopexit.i.i.i306.i, label %.lr.ph.i.i.i.i303.i

.lr.ph.i.i.i.i303.i:                              ; preds = %.lr.ph.i.i.i.i303.i.prol.loopexit, %.lr.ph.i.i.i.i303.i
  %.026.i.i.i.i304.i = phi i64 [ %i.my, %.lr.ph.i.i.i.i303.i ], [ %.026.i.i.i.i304.i.unr, %.lr.ph.i.i.i.i303.i.prol.loopexit ] ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.026.i.i.i.i304.i
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !37
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.026.i.i.i.i304.i
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !37
  %i.mm = add nuw i64 %.026.i.i.i.i304.i, 1       ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !37
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.mm
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !37
  %i.mq = add nuw i64 %.026.i.i.i.i304.i, 2       ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !37
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.mq
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !37
  %i.mu = add nuw i64 %.026.i.i.i.i304.i, 3       ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !37
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.mu
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !37
  %i.my = add nuw i64 %.026.i.i.i.i304.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i305.i.3 = icmp eq i64 %i.my, %i.lt
  br i1 %exitcond.not.i.i.i.i305.i.3, label %.loopexit.i.i.i306.i, label %.lr.ph.i.i.i.i303.i, !llvm.loop !652

.loopexit.i.i.i306.i:                             ; preds = %.lr.ph.i.i.i.i303.i.prol.loopexit, %.lr.ph.i.i.i.i303.i, %middle.block509, %vec.epilog.middle.block522, %bb.bx, %bb.bv
  %.018.i.ph.i.i.i307.i = phi ptr [ %i.lo, %bb.bv ], [ %i.ls, %bb.bx ], [ %i.ls, %middle.block509 ], [ %i.ls, %vec.epilog.middle.block522 ], [ %i.ls, %.lr.ph.i.i.i.i303.i ], [ %i.ls, %.lr.ph.i.i.i.i303.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i307.i, ptr %i.ks, align 8, !tbaa !55
  br label %bb.by

tg3__json_push_take.exit314.thread.i:             ; preds = %bb.bw, %bb.bu, %._crit_edge.i.i.i299.i, %bb.bp
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit439.i

.loopexit439.i:                                   ; preds = %bb.bo, %tg3__json_push_take.exit314.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.by:                                            ; preds = %.loopexit.i.i.i306.i, %.tg3json__init_value.exit_crit_edge.i.i312.i
  %i.mz = phi ptr [ %.pre.i.i313.i, %.tg3json__init_value.exit_crit_edge.i.i312.i ], [ %.018.i.ph.i.i.i307.i, %.loopexit.i.i.i306.i ]
  store i64 %i.la, ptr %i.kt, align 8, !tbaa !37
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %i.mz, i64 %i.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.na, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next522.i = add nuw nsw i64 %indvars.iv521.i, 1 ; 2 uses
  %i.nb = load i32, ptr %i.kq, align 8, !tbaa !207
  %i.nc = zext i32 %i.nb to i64
  %i.nd = icmp samesign ult i64 %indvars.iv.next522.i, %i.nc
  br i1 %i.nd, label %bb.bo, label %._crit_edge460.i, !llvm.loop !653

._crit_edge460.i:                                 ; preds = %bb.by
  %i.ne = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.19, ptr noundef %9) #21
  %.not164.i = icmp eq i32 %i.ne, 0
  br i1 %.not164.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %._crit_edge460.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.ca:                                            ; preds = %._crit_edge460.i, %bb.bn, %bb.bm
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !219
  %.not165.i = icmp eq ptr %i.ng, null
  br i1 %.not165.i, label %bb.co, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !220
  %.not166.i = icmp eq i32 %i.ni, 0
  br i1 %.not166.i, label %bb.co, label %.lr.ph463.i

.lr.ph463.i:                                      ; preds = %bb.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.nj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cm, %.lr.ph463.i
  %indvars.iv524.i = phi i64 [ 0, %.lr.ph463.i ], [ %indvars.iv.next525.i, %bb.cm ] ; 2 uses
  %i.nl = load ptr, ptr %i.nf, align 8, !tbaa !219
  %i.nm = getelementptr inbounds nuw [584 x i8], ptr %i.nl, i64 %indvars.iv524.i
  %i.nn = call fastcc i32 @tg3__serialize_material(ptr noundef %i.nm, i32 noundef %i.d, ptr noundef %10) #21
  %.not211.i = icmp eq i32 %i.nn, 0
  br i1 %.not211.i, label %.loopexit438.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.no = load i32, ptr %9, align 8, !tbaa !40
  %i.np = icmp eq i32 %i.no, 5
  br i1 %i.np, label %bb.ce, label %tg3__json_push_take.exit336.thread.i

bb.ce:                                            ; preds = %bb.cd
  %i.nq = load i64, ptr %i.nk, align 8, !tbaa !37 ; 5 uses
  %i.nr = add i64 %i.nq, 1                        ; 4 uses
  %.not.i.not.i.i318.i = icmp eq i64 %i.nq, -1
  br i1 %.not.i.not.i.i318.i, label %.tg3json__init_value.exit_crit_edge.i.i334.i, label %bb.cf

.tg3json__init_value.exit_crit_edge.i.i334.i:     ; preds = %bb.ce
  %.pre.i.i335.i = load ptr, ptr %i.nj, align 8, !tbaa !37
  br label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  %.not25.i.i.i319.i = icmp eq i64 %i.nq, 0
  %spec.select.i.i.i320.i = select i1 %.not25.i.i.i319.i, i64 8, i64 %i.nq ; 3 uses
  %i.ns = icmp ult i64 %spec.select.i.i.i320.i, %i.nr
  br i1 %i.ns, label %.lr.ph.i.i.i332.i, label %._crit_edge.i.i.i321.i

.lr.ph.i.i.i332.i:                                ; preds = %bb.cf, %bb.cg
  %.030.i.i.i333.i = phi i64 [ %i.nu, %bb.cg ], [ %spec.select.i.i.i320.i, %bb.cf ] ; 2 uses
  %i.nt = icmp slt i64 %.030.i.i.i333.i, 0
  br i1 %i.nt, label %._crit_edge.i.i.i321.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i332.i
  %i.nu = shl nuw i64 %.030.i.i.i333.i, 1         ; 3 uses
  %i.nv = icmp ult i64 %i.nu, %i.nr
  br i1 %i.nv, label %.lr.ph.i.i.i332.i, label %._crit_edge.i.i.i321.i, !llvm.loop !2

._crit_edge.i.i.i321.i:                           ; preds = %bb.cg, %.lr.ph.i.i.i332.i, %bb.cf
  %.1.i.i.i322.i = phi i64 [ %spec.select.i.i.i320.i, %bb.cf ], [ %i.nu, %bb.cg ], [ %i.nr, %.lr.ph.i.i.i332.i ] ; 2 uses
  %i.nw = icmp ugt i64 %.1.i.i.i322.i, 768614336404564650
  br i1 %i.nw, label %tg3__json_push_take.exit336.thread.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.i.i.i321.i
  %i.nx = load ptr, ptr %i.nj, align 8, !tbaa !55 ; 10 uses
  %i.ny = ptrtoaddr ptr %i.nx to i64
  %i.nz = mul nuw i64 %.1.i.i.i322.i, 24          ; 4 uses
  %.not.i.i.i.i323.i = icmp eq ptr %i.nx, null
  %i.oa = add nuw i64 %i.nz, 8
  %i.ob = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.oc = add i64 %i.oa, %i.ob                    ; 3 uses
  %i.od = icmp ugt i64 %i.oc, 524288              ; 2 uses
  br i1 %.not.i.i.i.i323.i, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.od, label %tg3__json_push_take.exit336.thread.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oe = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ob ; 2 uses
  store i64 %i.nz, ptr %i.oe, align 8, !tbaa !30
  store i64 %i.oc, ptr @test_heap_used, align 8, !tbaa !30
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  br label %.loopexit.i.i.i328.i

bb.ck:                                            ; preds = %bb.ch
  br i1 %i.od, label %tg3__json_push_take.exit336.thread.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.og = getelementptr inbounds i8, ptr %i.nx, i64 -8
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !30
  %i.oi = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ob ; 2 uses
  store i64 %i.nz, ptr %i.oi, align 8, !tbaa !30
  store i64 %i.oc, ptr @test_heap_used, align 8, !tbaa !30
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 12 uses
  %i.ok = call i64 @llvm.umin.i64(i64 %i.oh, i64 %i.nz) ; 11 uses
  %.not27.i.i.i.i324.i = icmp eq i64 %i.ok, 0
  br i1 %.not27.i.i.i.i324.i, label %.loopexit.i.i.i328.i, label %iter.check541

iter.check541:                                    ; preds = %bb.cl
  %min.iters.check527 = icmp ult i64 %i.ok, 4
  br i1 %min.iters.check527, label %.lr.ph.i.i.i.i325.i.preheader, label %vector.memcheck528

vector.memcheck528:                               ; preds = %iter.check541
  %24 = sub i64 %i.ob, %i.ny
  %25 = add i64 %24, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check529 = icmp ult i64 %25, 31
  br i1 %diff.check529, label %.lr.ph.i.i.i.i325.i.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %vector.memcheck528
  %min.iters.check531 = icmp ult i64 %i.ok, 32
  br i1 %min.iters.check531, label %vec.epilog.ph545, label %vector.ph532

vector.ph532:                                     ; preds = %vector.main.loop.iter.check530
  %i.ol = and i64 %i.ok, 28
  %n.vec533 = and i64 %i.ok, -32                  ; 4 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.ph532, %vector.body534
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next538, %vector.body534 ] ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.nx, i64 %index535 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load536 = load <16 x i8>, ptr %i.om, align 1, !tbaa !37
  %wide.load537 = load <16 x i8>, ptr %i.on, align 1, !tbaa !37
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index535 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store <16 x i8> %wide.load536, ptr %i.oo, align 1, !tbaa !37
  store <16 x i8> %wide.load537, ptr %i.op, align 1, !tbaa !37
  %index.next538 = add nuw i64 %index535, 32      ; 2 uses
  %i.oq = icmp eq i64 %index.next538, %n.vec533
  br i1 %i.oq, label %middle.block539, label %vector.body534, !llvm.loop !654

middle.block539:                                  ; preds = %vector.body534
  %cmp.n540 = icmp eq i64 %i.ok, %n.vec533
  br i1 %cmp.n540, label %.loopexit.i.i.i328.i, label %vec.epilog.iter.check542

vec.epilog.iter.check542:                         ; preds = %middle.block539
  %min.epilog.iters.check544 = icmp eq i64 %i.ol, 0
  br i1 %min.epilog.iters.check544, label %.lr.ph.i.i.i.i325.i.preheader, label %vec.epilog.ph545, !prof !46

vec.epilog.ph545:                                 ; preds = %vector.main.loop.iter.check530, %vec.epilog.iter.check542
  %vec.epilog.resume.val546 = phi i64 [ %n.vec533, %vec.epilog.iter.check542 ], [ 0, %vector.main.loop.iter.check530 ]
  %n.vec547 = and i64 %i.ok, -4                   ; 3 uses
  br label %vec.epilog.vector.body548

vec.epilog.vector.body548:                        ; preds = %vec.epilog.vector.body548, %vec.epilog.ph545
  %index549 = phi i64 [ %vec.epilog.resume.val546, %vec.epilog.ph545 ], [ %index.next551, %vec.epilog.vector.body548 ] ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.nx, i64 %index549
  %wide.load550 = load <4 x i8>, ptr %i.or, align 1, !tbaa !37
  %i.os = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index549
  store <4 x i8> %wide.load550, ptr %i.os, align 1, !tbaa !37
  %index.next551 = add nuw i64 %index549, 4       ; 2 uses
  %i.ot = icmp eq i64 %index.next551, %n.vec547
  br i1 %i.ot, label %vec.epilog.middle.block552, label %vec.epilog.vector.body548, !llvm.loop !655

vec.epilog.middle.block552:                       ; preds = %vec.epilog.vector.body548
  %cmp.n553 = icmp eq i64 %i.ok, %n.vec547
  br i1 %cmp.n553, label %.loopexit.i.i.i328.i, label %.lr.ph.i.i.i.i325.i.preheader

.lr.ph.i.i.i.i325.i.preheader:                    ; preds = %iter.check541, %vector.memcheck528, %vec.epilog.iter.check542, %vec.epilog.middle.block552
  %.026.i.i.i.i326.i.ph = phi i64 [ 0, %iter.check541 ], [ 0, %vector.memcheck528 ], [ %n.vec533, %vec.epilog.iter.check542 ], [ %n.vec547, %vec.epilog.middle.block552 ] ; 3 uses
  %xtraiter942 = and i64 %i.ok, 3                 ; 2 uses
  %lcmp.mod943.not = icmp eq i64 %xtraiter942, 0
  br i1 %lcmp.mod943.not, label %.lr.ph.i.i.i.i325.i.prol.loopexit, label %.lr.ph.i.i.i.i325.i.prol

.lr.ph.i.i.i.i325.i.prol:                         ; preds = %.lr.ph.i.i.i.i325.i.preheader, %.lr.ph.i.i.i.i325.i.prol
  %.026.i.i.i.i326.i.prol = phi i64 [ %i.ox, %.lr.ph.i.i.i.i325.i.prol ], [ %.026.i.i.i.i326.i.ph, %.lr.ph.i.i.i.i325.i.preheader ] ; 3 uses
  %prol.iter944 = phi i64 [ %prol.iter944.next, %.lr.ph.i.i.i.i325.i.prol ], [ 0, %.lr.ph.i.i.i.i325.i.preheader ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.026.i.i.i.i326.i.prol
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !37
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.026.i.i.i.i326.i.prol
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !37
  %i.ox = add nuw i64 %.026.i.i.i.i326.i.prol, 1  ; 2 uses
  %prol.iter944.next = add i64 %prol.iter944, 1   ; 2 uses
  %prol.iter944.cmp.not = icmp eq i64 %prol.iter944.next, %xtraiter942
  br i1 %prol.iter944.cmp.not, label %.lr.ph.i.i.i.i325.i.prol.loopexit, label %.lr.ph.i.i.i.i325.i.prol, !llvm.loop !656

.lr.ph.i.i.i.i325.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i325.i.prol, %.lr.ph.i.i.i.i325.i.preheader
  %.026.i.i.i.i326.i.unr = phi i64 [ %.026.i.i.i.i326.i.ph, %.lr.ph.i.i.i.i325.i.preheader ], [ %i.ox, %.lr.ph.i.i.i.i325.i.prol ]
  %i.oy = sub i64 %.026.i.i.i.i326.i.ph, %i.ok
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.loopexit.i.i.i328.i, label %.lr.ph.i.i.i.i325.i

.lr.ph.i.i.i.i325.i:                              ; preds = %.lr.ph.i.i.i.i325.i.prol.loopexit, %.lr.ph.i.i.i.i325.i
  %.026.i.i.i.i326.i = phi i64 [ %i.pp, %.lr.ph.i.i.i.i325.i ], [ %.026.i.i.i.i326.i.unr, %.lr.ph.i.i.i.i325.i.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.026.i.i.i.i326.i
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !37
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.026.i.i.i.i326.i
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !37
  %i.pd = add nuw i64 %.026.i.i.i.i326.i, 1       ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !37
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pd
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !37
  %i.ph = add nuw i64 %.026.i.i.i.i326.i, 2       ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !37
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ph
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !37
  %i.pl = add nuw i64 %.026.i.i.i.i326.i, 3       ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !37
  %i.po = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pl
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !37
  %i.pp = add nuw i64 %.026.i.i.i.i326.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i327.i.3 = icmp eq i64 %i.pp, %i.ok
  br i1 %exitcond.not.i.i.i.i327.i.3, label %.loopexit.i.i.i328.i, label %.lr.ph.i.i.i.i325.i, !llvm.loop !657

.loopexit.i.i.i328.i:                             ; preds = %.lr.ph.i.i.i.i325.i.prol.loopexit, %.lr.ph.i.i.i.i325.i, %middle.block539, %vec.epilog.middle.block552, %bb.cl, %bb.cj
  %.018.i.ph.i.i.i329.i = phi ptr [ %i.of, %bb.cj ], [ %i.oj, %bb.cl ], [ %i.oj, %middle.block539 ], [ %i.oj, %vec.epilog.middle.block552 ], [ %i.oj, %.lr.ph.i.i.i.i325.i ], [ %i.oj, %.lr.ph.i.i.i.i325.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i329.i, ptr %i.nj, align 8, !tbaa !55
  br label %bb.cm

tg3__json_push_take.exit336.thread.i:             ; preds = %bb.ck, %bb.ci, %._crit_edge.i.i.i321.i, %bb.cd
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit438.i

.loopexit438.i:                                   ; preds = %bb.cc, %tg3__json_push_take.exit336.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.cm:                                            ; preds = %.loopexit.i.i.i328.i, %.tg3json__init_value.exit_crit_edge.i.i334.i
  %i.pq = phi ptr [ %.pre.i.i335.i, %.tg3json__init_value.exit_crit_edge.i.i334.i ], [ %.018.i.ph.i.i.i329.i, %.loopexit.i.i.i328.i ]
  store i64 %i.nr, ptr %i.nk, align 8, !tbaa !37
  %i.pr = getelementptr inbounds nuw [24 x i8], ptr %i.pq, i64 %i.nq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pr, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next525.i = add nuw nsw i64 %indvars.iv524.i, 1 ; 2 uses
  %i.ps = load i32, ptr %i.nh, align 8, !tbaa !220
  %i.pt = zext i32 %i.ps to i64
  %i.pu = icmp samesign ult i64 %indvars.iv.next525.i, %i.pt
  br i1 %i.pu, label %bb.cc, label %._crit_edge464.i, !llvm.loop !658

._crit_edge464.i:                                 ; preds = %bb.cm
  %i.pv = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.20, ptr noundef %9) #21
  %.not167.i = icmp eq i32 %i.pv, 0
  br i1 %.not167.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %._crit_edge464.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.co:                                            ; preds = %._crit_edge464.i, %bb.cb, %bb.ca
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !224
  %.not168.i = icmp eq ptr %i.px, null
  br i1 %.not168.i, label %bb.dc, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !225
  %.not169.i = icmp eq i32 %i.pz, 0
  br i1 %.not169.i, label %bb.dc, label %.lr.ph467.i

.lr.ph467.i:                                      ; preds = %bb.cp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.qa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.da, %.lr.ph467.i
  %indvars.iv527.i = phi i64 [ 0, %.lr.ph467.i ], [ %indvars.iv.next528.i, %bb.da ] ; 2 uses
  %i.qc = load ptr, ptr %i.pw, align 8, !tbaa !224
  %i.qd = getelementptr inbounds nuw [80 x i8], ptr %i.qc, i64 %indvars.iv527.i
  %i.qe = call fastcc i32 @tg3__serialize_texture(ptr noundef %i.qd, ptr noundef %10) #21
  %.not209.i = icmp eq i32 %i.qe, 0
  br i1 %.not209.i, label %.loopexit437.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qf = load i32, ptr %9, align 8, !tbaa !40
  %i.qg = icmp eq i32 %i.qf, 5
  br i1 %i.qg, label %bb.cs, label %tg3__json_push_take.exit358.thread.i

bb.cs:                                            ; preds = %bb.cr
  %i.qh = load i64, ptr %i.qb, align 8, !tbaa !37 ; 5 uses
  %i.qi = add i64 %i.qh, 1                        ; 4 uses
  %.not.i.not.i.i340.i = icmp eq i64 %i.qh, -1
  br i1 %.not.i.not.i.i340.i, label %.tg3json__init_value.exit_crit_edge.i.i356.i, label %bb.ct

.tg3json__init_value.exit_crit_edge.i.i356.i:     ; preds = %bb.cs
  %.pre.i.i357.i = load ptr, ptr %i.qa, align 8, !tbaa !37
  br label %bb.da

bb.ct:                                            ; preds = %bb.cs
  %.not25.i.i.i341.i = icmp eq i64 %i.qh, 0
  %spec.select.i.i.i342.i = select i1 %.not25.i.i.i341.i, i64 8, i64 %i.qh ; 3 uses
  %i.qj = icmp ult i64 %spec.select.i.i.i342.i, %i.qi
  br i1 %i.qj, label %.lr.ph.i.i.i354.i, label %._crit_edge.i.i.i343.i

.lr.ph.i.i.i354.i:                                ; preds = %bb.ct, %bb.cu
  %.030.i.i.i355.i = phi i64 [ %i.ql, %bb.cu ], [ %spec.select.i.i.i342.i, %bb.ct ] ; 2 uses
  %i.qk = icmp slt i64 %.030.i.i.i355.i, 0
  br i1 %i.qk, label %._crit_edge.i.i.i343.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i354.i
  %i.ql = shl nuw i64 %.030.i.i.i355.i, 1         ; 3 uses
  %i.qm = icmp ult i64 %i.ql, %i.qi
  br i1 %i.qm, label %.lr.ph.i.i.i354.i, label %._crit_edge.i.i.i343.i, !llvm.loop !2

._crit_edge.i.i.i343.i:                           ; preds = %bb.cu, %.lr.ph.i.i.i354.i, %bb.ct
  %.1.i.i.i344.i = phi i64 [ %spec.select.i.i.i342.i, %bb.ct ], [ %i.ql, %bb.cu ], [ %i.qi, %.lr.ph.i.i.i354.i ] ; 2 uses
  %i.qn = icmp ugt i64 %.1.i.i.i344.i, 768614336404564650
  br i1 %i.qn, label %tg3__json_push_take.exit358.thread.i, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge.i.i.i343.i
  %i.qo = load ptr, ptr %i.qa, align 8, !tbaa !55 ; 10 uses
  %i.qp = ptrtoaddr ptr %i.qo to i64
  %i.qq = mul nuw i64 %.1.i.i.i344.i, 24          ; 4 uses
  %.not.i.i.i.i345.i = icmp eq ptr %i.qo, null
  %i.qr = add nuw i64 %i.qq, 8
  %i.qs = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.qt = add i64 %i.qr, %i.qs                    ; 3 uses
  %i.qu = icmp ugt i64 %i.qt, 524288              ; 2 uses
  br i1 %.not.i.i.i.i345.i, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.qu, label %tg3__json_push_take.exit358.thread.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qv = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.qs ; 2 uses
  store i64 %i.qq, ptr %i.qv, align 8, !tbaa !30
  store i64 %i.qt, ptr @test_heap_used, align 8, !tbaa !30
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  br label %.loopexit.i.i.i350.i

bb.cy:                                            ; preds = %bb.cv
  br i1 %i.qu, label %tg3__json_push_take.exit358.thread.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qx = getelementptr inbounds i8, ptr %i.qo, i64 -8
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !30
  %i.qz = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.qs ; 2 uses
  store i64 %i.qq, ptr %i.qz, align 8, !tbaa !30
  store i64 %i.qt, ptr @test_heap_used, align 8, !tbaa !30
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 12 uses
  %i.rb = call i64 @llvm.umin.i64(i64 %i.qy, i64 %i.qq) ; 11 uses
  %.not27.i.i.i.i346.i = icmp eq i64 %i.rb, 0
  br i1 %.not27.i.i.i.i346.i, label %.loopexit.i.i.i350.i, label %iter.check571

iter.check571:                                    ; preds = %bb.cz
  %min.iters.check557 = icmp ult i64 %i.rb, 4
  br i1 %min.iters.check557, label %.lr.ph.i.i.i.i347.i.preheader, label %vector.memcheck558

vector.memcheck558:                               ; preds = %iter.check571
  %26 = sub i64 %i.qs, %i.qp
  %27 = add i64 %26, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check559 = icmp ult i64 %27, 31
  br i1 %diff.check559, label %.lr.ph.i.i.i.i347.i.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck558
  %min.iters.check561 = icmp ult i64 %i.rb, 32
  br i1 %min.iters.check561, label %vec.epilog.ph575, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.rc = and i64 %i.rb, 28
  %n.vec563 = and i64 %i.rb, -32                  ; 4 uses
  br label %vector.body564

vector.body564:                                   ; preds = %vector.ph562, %vector.body564
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next568, %vector.body564 ] ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qo, i64 %index565 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %wide.load566 = load <16 x i8>, ptr %i.rd, align 1, !tbaa !37
  %wide.load567 = load <16 x i8>, ptr %i.re, align 1, !tbaa !37
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ra, i64 %index565 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store <16 x i8> %wide.load566, ptr %i.rf, align 1, !tbaa !37
  store <16 x i8> %wide.load567, ptr %i.rg, align 1, !tbaa !37
  %index.next568 = add nuw i64 %index565, 32      ; 2 uses
  %i.rh = icmp eq i64 %index.next568, %n.vec563
  br i1 %i.rh, label %middle.block569, label %vector.body564, !llvm.loop !659

middle.block569:                                  ; preds = %vector.body564
  %cmp.n570 = icmp eq i64 %i.rb, %n.vec563
  br i1 %cmp.n570, label %.loopexit.i.i.i350.i, label %vec.epilog.iter.check572

vec.epilog.iter.check572:                         ; preds = %middle.block569
  %min.epilog.iters.check574 = icmp eq i64 %i.rc, 0
  br i1 %min.epilog.iters.check574, label %.lr.ph.i.i.i.i347.i.preheader, label %vec.epilog.ph575, !prof !46

vec.epilog.ph575:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check572
  %vec.epilog.resume.val576 = phi i64 [ %n.vec563, %vec.epilog.iter.check572 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec577 = and i64 %i.rb, -4                   ; 3 uses
  br label %vec.epilog.vector.body578

vec.epilog.vector.body578:                        ; preds = %vec.epilog.vector.body578, %vec.epilog.ph575
  %index579 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph575 ], [ %index.next581, %vec.epilog.vector.body578 ] ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qo, i64 %index579
  %wide.load580 = load <4 x i8>, ptr %i.ri, align 1, !tbaa !37
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 %index579
  store <4 x i8> %wide.load580, ptr %i.rj, align 1, !tbaa !37
  %index.next581 = add nuw i64 %index579, 4       ; 2 uses
  %i.rk = icmp eq i64 %index.next581, %n.vec577
  br i1 %i.rk, label %vec.epilog.middle.block582, label %vec.epilog.vector.body578, !llvm.loop !660

vec.epilog.middle.block582:                       ; preds = %vec.epilog.vector.body578
  %cmp.n583 = icmp eq i64 %i.rb, %n.vec577
  br i1 %cmp.n583, label %.loopexit.i.i.i350.i, label %.lr.ph.i.i.i.i347.i.preheader

.lr.ph.i.i.i.i347.i.preheader:                    ; preds = %iter.check571, %vector.memcheck558, %vec.epilog.iter.check572, %vec.epilog.middle.block582
  %.026.i.i.i.i348.i.ph = phi i64 [ 0, %iter.check571 ], [ 0, %vector.memcheck558 ], [ %n.vec563, %vec.epilog.iter.check572 ], [ %n.vec577, %vec.epilog.middle.block582 ] ; 3 uses
  %xtraiter945 = and i64 %i.rb, 3                 ; 2 uses
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph.i.i.i.i347.i.prol.loopexit, label %.lr.ph.i.i.i.i347.i.prol

.lr.ph.i.i.i.i347.i.prol:                         ; preds = %.lr.ph.i.i.i.i347.i.preheader, %.lr.ph.i.i.i.i347.i.prol
  %.026.i.i.i.i348.i.prol = phi i64 [ %i.ro, %.lr.ph.i.i.i.i347.i.prol ], [ %.026.i.i.i.i348.i.ph, %.lr.ph.i.i.i.i347.i.preheader ] ; 3 uses
  %prol.iter947 = phi i64 [ %prol.iter947.next, %.lr.ph.i.i.i.i347.i.prol ], [ 0, %.lr.ph.i.i.i.i347.i.preheader ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.026.i.i.i.i348.i.prol
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !37
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.026.i.i.i.i348.i.prol
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !37
  %i.ro = add nuw i64 %.026.i.i.i.i348.i.prol, 1  ; 2 uses
  %prol.iter947.next = add i64 %prol.iter947, 1   ; 2 uses
  %prol.iter947.cmp.not = icmp eq i64 %prol.iter947.next, %xtraiter945
  br i1 %prol.iter947.cmp.not, label %.lr.ph.i.i.i.i347.i.prol.loopexit, label %.lr.ph.i.i.i.i347.i.prol, !llvm.loop !661

.lr.ph.i.i.i.i347.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i347.i.prol, %.lr.ph.i.i.i.i347.i.preheader
  %.026.i.i.i.i348.i.unr = phi i64 [ %.026.i.i.i.i348.i.ph, %.lr.ph.i.i.i.i347.i.preheader ], [ %i.ro, %.lr.ph.i.i.i.i347.i.prol ]
  %i.rp = sub i64 %.026.i.i.i.i348.i.ph, %i.rb
  %i.rq = icmp ugt i64 %i.rp, -4
  br i1 %i.rq, label %.loopexit.i.i.i350.i, label %.lr.ph.i.i.i.i347.i

.lr.ph.i.i.i.i347.i:                              ; preds = %.lr.ph.i.i.i.i347.i.prol.loopexit, %.lr.ph.i.i.i.i347.i
  %.026.i.i.i.i348.i = phi i64 [ %i.sg, %.lr.ph.i.i.i.i347.i ], [ %.026.i.i.i.i348.i.unr, %.lr.ph.i.i.i.i347.i.prol.loopexit ] ; 6 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.026.i.i.i.i348.i
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !37
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.026.i.i.i.i348.i
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !37
  %i.ru = add nuw i64 %.026.i.i.i.i348.i, 1       ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.ru
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !37
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.ru
  store i8 %i.rw, ptr %i.rx, align 1, !tbaa !37
  %i.ry = add nuw i64 %.026.i.i.i.i348.i, 2       ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !37
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.ry
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !37
  %i.sc = add nuw i64 %.026.i.i.i.i348.i, 3       ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !37
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.sc
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !37
  %i.sg = add nuw i64 %.026.i.i.i.i348.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i349.i.3 = icmp eq i64 %i.sg, %i.rb
  br i1 %exitcond.not.i.i.i.i349.i.3, label %.loopexit.i.i.i350.i, label %.lr.ph.i.i.i.i347.i, !llvm.loop !662

.loopexit.i.i.i350.i:                             ; preds = %.lr.ph.i.i.i.i347.i.prol.loopexit, %.lr.ph.i.i.i.i347.i, %middle.block569, %vec.epilog.middle.block582, %bb.cz, %bb.cx
  %.018.i.ph.i.i.i351.i = phi ptr [ %i.qw, %bb.cx ], [ %i.ra, %bb.cz ], [ %i.ra, %middle.block569 ], [ %i.ra, %vec.epilog.middle.block582 ], [ %i.ra, %.lr.ph.i.i.i.i347.i ], [ %i.ra, %.lr.ph.i.i.i.i347.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i351.i, ptr %i.qa, align 8, !tbaa !55
  br label %bb.da

tg3__json_push_take.exit358.thread.i:             ; preds = %bb.cy, %bb.cw, %._crit_edge.i.i.i343.i, %bb.cr
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit437.i

.loopexit437.i:                                   ; preds = %bb.cq, %tg3__json_push_take.exit358.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.da:                                            ; preds = %.loopexit.i.i.i350.i, %.tg3json__init_value.exit_crit_edge.i.i356.i
  %i.sh = phi ptr [ %.pre.i.i357.i, %.tg3json__init_value.exit_crit_edge.i.i356.i ], [ %.018.i.ph.i.i.i351.i, %.loopexit.i.i.i350.i ]
  store i64 %i.qi, ptr %i.qb, align 8, !tbaa !37
  %i.si = getelementptr inbounds nuw [24 x i8], ptr %i.sh, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.si, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next528.i = add nuw nsw i64 %indvars.iv527.i, 1 ; 2 uses
  %i.sj = load i32, ptr %i.py, align 8, !tbaa !225
  %i.sk = zext i32 %i.sj to i64
  %i.sl = icmp samesign ult i64 %indvars.iv.next528.i, %i.sk
  br i1 %i.sl, label %bb.cq, label %._crit_edge468.i, !llvm.loop !663

._crit_edge468.i:                                 ; preds = %bb.da
  %i.sm = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.21, ptr noundef %9) #21
  %.not170.i = icmp eq i32 %i.sm, 0
  br i1 %.not170.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %._crit_edge468.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.dc:                                            ; preds = %._crit_edge468.i, %bb.cp, %bb.co
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !226
  %.not171.i = icmp eq ptr %i.so, null
  br i1 %.not171.i, label %bb.dq, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !227
  %.not172.i = icmp eq i32 %i.sq, 0
  br i1 %.not172.i, label %bb.dq, label %.lr.ph471.i

.lr.ph471.i:                                      ; preds = %bb.dd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.sr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.do, %.lr.ph471.i
  %indvars.iv530.i = phi i64 [ 0, %.lr.ph471.i ], [ %indvars.iv.next531.i, %bb.do ] ; 2 uses
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !226
  %i.su = getelementptr inbounds nuw [88 x i8], ptr %i.st, i64 %indvars.iv530.i
  %i.sv = call fastcc i32 @tg3__serialize_sampler(ptr noundef %i.su, i32 noundef %i.d, ptr noundef %10) #21
  %.not207.i = icmp eq i32 %i.sv, 0
  br i1 %.not207.i, label %.loopexit436.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.sw = load i32, ptr %9, align 8, !tbaa !40
  %i.sx = icmp eq i32 %i.sw, 5
  br i1 %i.sx, label %bb.dg, label %tg3__json_push_take.exit380.thread.i

bb.dg:                                            ; preds = %bb.df
  %i.sy = load i64, ptr %i.ss, align 8, !tbaa !37 ; 5 uses
  %i.sz = add i64 %i.sy, 1                        ; 4 uses
  %.not.i.not.i.i362.i = icmp eq i64 %i.sy, -1
  br i1 %.not.i.not.i.i362.i, label %.tg3json__init_value.exit_crit_edge.i.i378.i, label %bb.dh

.tg3json__init_value.exit_crit_edge.i.i378.i:     ; preds = %bb.dg
  %.pre.i.i379.i = load ptr, ptr %i.sr, align 8, !tbaa !37
  br label %bb.do

bb.dh:                                            ; preds = %bb.dg
  %.not25.i.i.i363.i = icmp eq i64 %i.sy, 0
  %spec.select.i.i.i364.i = select i1 %.not25.i.i.i363.i, i64 8, i64 %i.sy ; 3 uses
  %i.ta = icmp ult i64 %spec.select.i.i.i364.i, %i.sz
  br i1 %i.ta, label %.lr.ph.i.i.i376.i, label %._crit_edge.i.i.i365.i

.lr.ph.i.i.i376.i:                                ; preds = %bb.dh, %bb.di
  %.030.i.i.i377.i = phi i64 [ %i.tc, %bb.di ], [ %spec.select.i.i.i364.i, %bb.dh ] ; 2 uses
  %i.tb = icmp slt i64 %.030.i.i.i377.i, 0
  br i1 %i.tb, label %._crit_edge.i.i.i365.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i376.i
  %i.tc = shl nuw i64 %.030.i.i.i377.i, 1         ; 3 uses
  %i.td = icmp ult i64 %i.tc, %i.sz
  br i1 %i.td, label %.lr.ph.i.i.i376.i, label %._crit_edge.i.i.i365.i, !llvm.loop !2

._crit_edge.i.i.i365.i:                           ; preds = %bb.di, %.lr.ph.i.i.i376.i, %bb.dh
  %.1.i.i.i366.i = phi i64 [ %spec.select.i.i.i364.i, %bb.dh ], [ %i.tc, %bb.di ], [ %i.sz, %.lr.ph.i.i.i376.i ] ; 2 uses
  %i.te = icmp ugt i64 %.1.i.i.i366.i, 768614336404564650
  br i1 %i.te, label %tg3__json_push_take.exit380.thread.i, label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.i.i.i365.i
  %i.tf = load ptr, ptr %i.sr, align 8, !tbaa !55 ; 10 uses
  %i.tg = ptrtoaddr ptr %i.tf to i64
  %i.th = mul nuw i64 %.1.i.i.i366.i, 24          ; 4 uses
  %.not.i.i.i.i367.i = icmp eq ptr %i.tf, null
  %i.ti = add nuw i64 %i.th, 8
  %i.tj = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.tk = add i64 %i.ti, %i.tj                    ; 3 uses
  %i.tl = icmp ugt i64 %i.tk, 524288              ; 2 uses
  br i1 %.not.i.i.i.i367.i, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.tl, label %tg3__json_push_take.exit380.thread.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tm = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.tj ; 2 uses
  store i64 %i.th, ptr %i.tm, align 8, !tbaa !30
  store i64 %i.tk, ptr @test_heap_used, align 8, !tbaa !30
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  br label %.loopexit.i.i.i372.i

bb.dm:                                            ; preds = %bb.dj
  br i1 %i.tl, label %tg3__json_push_take.exit380.thread.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.to = getelementptr inbounds i8, ptr %i.tf, i64 -8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !30
  %i.tq = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.tj ; 2 uses
  store i64 %i.th, ptr %i.tq, align 8, !tbaa !30
  store i64 %i.tk, ptr @test_heap_used, align 8, !tbaa !30
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 12 uses
  %i.ts = call i64 @llvm.umin.i64(i64 %i.tp, i64 %i.th) ; 11 uses
  %.not27.i.i.i.i368.i = icmp eq i64 %i.ts, 0
  br i1 %.not27.i.i.i.i368.i, label %.loopexit.i.i.i372.i, label %iter.check601

iter.check601:                                    ; preds = %bb.dn
  %min.iters.check587 = icmp ult i64 %i.ts, 4
  br i1 %min.iters.check587, label %.lr.ph.i.i.i.i369.i.preheader, label %vector.memcheck588

vector.memcheck588:                               ; preds = %iter.check601
  %28 = sub i64 %i.tj, %i.tg
  %29 = add i64 %28, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check589 = icmp ult i64 %29, 31
  br i1 %diff.check589, label %.lr.ph.i.i.i.i369.i.preheader, label %vector.main.loop.iter.check590

vector.main.loop.iter.check590:                   ; preds = %vector.memcheck588
  %min.iters.check591 = icmp ult i64 %i.ts, 32
  br i1 %min.iters.check591, label %vec.epilog.ph605, label %vector.ph592

vector.ph592:                                     ; preds = %vector.main.loop.iter.check590
  %i.tt = and i64 %i.ts, 28
  %n.vec593 = and i64 %i.ts, -32                  ; 4 uses
  br label %vector.body594

vector.body594:                                   ; preds = %vector.ph592, %vector.body594
  %index595 = phi i64 [ 0, %vector.ph592 ], [ %index.next598, %vector.body594 ] ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tf, i64 %index595 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %wide.load596 = load <16 x i8>, ptr %i.tu, align 1, !tbaa !37
  %wide.load597 = load <16 x i8>, ptr %i.tv, align 1, !tbaa !37
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 %index595 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store <16 x i8> %wide.load596, ptr %i.tw, align 1, !tbaa !37
  store <16 x i8> %wide.load597, ptr %i.tx, align 1, !tbaa !37
  %index.next598 = add nuw i64 %index595, 32      ; 2 uses
  %i.ty = icmp eq i64 %index.next598, %n.vec593
  br i1 %i.ty, label %middle.block599, label %vector.body594, !llvm.loop !664

middle.block599:                                  ; preds = %vector.body594
  %cmp.n600 = icmp eq i64 %i.ts, %n.vec593
  br i1 %cmp.n600, label %.loopexit.i.i.i372.i, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block599
  %min.epilog.iters.check604 = icmp eq i64 %i.tt, 0
  br i1 %min.epilog.iters.check604, label %.lr.ph.i.i.i.i369.i.preheader, label %vec.epilog.ph605, !prof !46

vec.epilog.ph605:                                 ; preds = %vector.main.loop.iter.check590, %vec.epilog.iter.check602
  %vec.epilog.resume.val606 = phi i64 [ %n.vec593, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check590 ]
  %n.vec607 = and i64 %i.ts, -4                   ; 3 uses
  br label %vec.epilog.vector.body608

vec.epilog.vector.body608:                        ; preds = %vec.epilog.vector.body608, %vec.epilog.ph605
  %index609 = phi i64 [ %vec.epilog.resume.val606, %vec.epilog.ph605 ], [ %index.next611, %vec.epilog.vector.body608 ] ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tf, i64 %index609
  %wide.load610 = load <4 x i8>, ptr %i.tz, align 1, !tbaa !37
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 %index609
  store <4 x i8> %wide.load610, ptr %i.ua, align 1, !tbaa !37
  %index.next611 = add nuw i64 %index609, 4       ; 2 uses
  %i.ub = icmp eq i64 %index.next611, %n.vec607
  br i1 %i.ub, label %vec.epilog.middle.block612, label %vec.epilog.vector.body608, !llvm.loop !665

vec.epilog.middle.block612:                       ; preds = %vec.epilog.vector.body608
  %cmp.n613 = icmp eq i64 %i.ts, %n.vec607
  br i1 %cmp.n613, label %.loopexit.i.i.i372.i, label %.lr.ph.i.i.i.i369.i.preheader

.lr.ph.i.i.i.i369.i.preheader:                    ; preds = %iter.check601, %vector.memcheck588, %vec.epilog.iter.check602, %vec.epilog.middle.block612
  %.026.i.i.i.i370.i.ph = phi i64 [ 0, %iter.check601 ], [ 0, %vector.memcheck588 ], [ %n.vec593, %vec.epilog.iter.check602 ], [ %n.vec607, %vec.epilog.middle.block612 ] ; 3 uses
  %xtraiter948 = and i64 %i.ts, 3                 ; 2 uses
  %lcmp.mod949.not = icmp eq i64 %xtraiter948, 0
  br i1 %lcmp.mod949.not, label %.lr.ph.i.i.i.i369.i.prol.loopexit, label %.lr.ph.i.i.i.i369.i.prol

.lr.ph.i.i.i.i369.i.prol:                         ; preds = %.lr.ph.i.i.i.i369.i.preheader, %.lr.ph.i.i.i.i369.i.prol
  %.026.i.i.i.i370.i.prol = phi i64 [ %i.uf, %.lr.ph.i.i.i.i369.i.prol ], [ %.026.i.i.i.i370.i.ph, %.lr.ph.i.i.i.i369.i.preheader ] ; 3 uses
  %prol.iter950 = phi i64 [ %prol.iter950.next, %.lr.ph.i.i.i.i369.i.prol ], [ 0, %.lr.ph.i.i.i.i369.i.preheader ]
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.026.i.i.i.i370.i.prol
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !37
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tr, i64 %.026.i.i.i.i370.i.prol
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !37
  %i.uf = add nuw i64 %.026.i.i.i.i370.i.prol, 1  ; 2 uses
  %prol.iter950.next = add i64 %prol.iter950, 1   ; 2 uses
  %prol.iter950.cmp.not = icmp eq i64 %prol.iter950.next, %xtraiter948
  br i1 %prol.iter950.cmp.not, label %.lr.ph.i.i.i.i369.i.prol.loopexit, label %.lr.ph.i.i.i.i369.i.prol, !llvm.loop !666

.lr.ph.i.i.i.i369.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i369.i.prol, %.lr.ph.i.i.i.i369.i.preheader
  %.026.i.i.i.i370.i.unr = phi i64 [ %.026.i.i.i.i370.i.ph, %.lr.ph.i.i.i.i369.i.preheader ], [ %i.uf, %.lr.ph.i.i.i.i369.i.prol ]
  %i.ug = sub i64 %.026.i.i.i.i370.i.ph, %i.ts
  %i.uh = icmp ugt i64 %i.ug, -4
  br i1 %i.uh, label %.loopexit.i.i.i372.i, label %.lr.ph.i.i.i.i369.i

.lr.ph.i.i.i.i369.i:                              ; preds = %.lr.ph.i.i.i.i369.i.prol.loopexit, %.lr.ph.i.i.i.i369.i
  %.026.i.i.i.i370.i = phi i64 [ %i.ux, %.lr.ph.i.i.i.i369.i ], [ %.026.i.i.i.i370.i.unr, %.lr.ph.i.i.i.i369.i.prol.loopexit ] ; 6 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.026.i.i.i.i370.i
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !37
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tr, i64 %.026.i.i.i.i370.i
  store i8 %i.uj, ptr %i.uk, align 1, !tbaa !37
  %i.ul = add nuw i64 %.026.i.i.i.i370.i, 1       ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !37
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.ul
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !37
  %i.up = add nuw i64 %.026.i.i.i.i370.i, 2       ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.up
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !37
  %i.us = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.up
  store i8 %i.ur, ptr %i.us, align 1, !tbaa !37
  %i.ut = add nuw i64 %.026.i.i.i.i370.i, 3       ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !37
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.ut
  store i8 %i.uv, ptr %i.uw, align 1, !tbaa !37
  %i.ux = add nuw i64 %.026.i.i.i.i370.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i371.i.3 = icmp eq i64 %i.ux, %i.ts
  br i1 %exitcond.not.i.i.i.i371.i.3, label %.loopexit.i.i.i372.i, label %.lr.ph.i.i.i.i369.i, !llvm.loop !667

.loopexit.i.i.i372.i:                             ; preds = %.lr.ph.i.i.i.i369.i.prol.loopexit, %.lr.ph.i.i.i.i369.i, %middle.block599, %vec.epilog.middle.block612, %bb.dn, %bb.dl
  %.018.i.ph.i.i.i373.i = phi ptr [ %i.tn, %bb.dl ], [ %i.tr, %bb.dn ], [ %i.tr, %middle.block599 ], [ %i.tr, %vec.epilog.middle.block612 ], [ %i.tr, %.lr.ph.i.i.i.i369.i ], [ %i.tr, %.lr.ph.i.i.i.i369.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i373.i, ptr %i.sr, align 8, !tbaa !55
  br label %bb.do

tg3__json_push_take.exit380.thread.i:             ; preds = %bb.dm, %bb.dk, %._crit_edge.i.i.i365.i, %bb.df
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit436.i

.loopexit436.i:                                   ; preds = %bb.de, %tg3__json_push_take.exit380.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.do:                                            ; preds = %.loopexit.i.i.i372.i, %.tg3json__init_value.exit_crit_edge.i.i378.i
  %i.uy = phi ptr [ %.pre.i.i379.i, %.tg3json__init_value.exit_crit_edge.i.i378.i ], [ %.018.i.ph.i.i.i373.i, %.loopexit.i.i.i372.i ]
  store i64 %i.sz, ptr %i.ss, align 8, !tbaa !37
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.sy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uz, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next531.i = add nuw nsw i64 %indvars.iv530.i, 1 ; 2 uses
  %i.va = load i32, ptr %i.sp, align 8, !tbaa !227
  %i.vb = zext i32 %i.va to i64
  %i.vc = icmp samesign ult i64 %indvars.iv.next531.i, %i.vb
  br i1 %i.vc, label %bb.de, label %._crit_edge472.i, !llvm.loop !668

._crit_edge472.i:                                 ; preds = %bb.do
  %i.vd = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.23, ptr noundef %9) #21
  %.not173.i = icmp eq i32 %i.vd, 0
  br i1 %.not173.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %._crit_edge472.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.dq:                                            ; preds = %._crit_edge472.i, %bb.dd, %bb.dc
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !230
  %.not174.i = icmp eq ptr %i.vf, null
  br i1 %.not174.i, label %bb.ee, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !231
  %.not175.i = icmp eq i32 %i.vh, 0
  br i1 %.not175.i, label %bb.ee, label %.lr.ph475.i

.lr.ph475.i:                                      ; preds = %bb.dr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.vi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ec, %.lr.ph475.i
  %indvars.iv533.i = phi i64 [ 0, %.lr.ph475.i ], [ %indvars.iv.next534.i, %bb.ec ] ; 2 uses
  %i.vk = load ptr, ptr %i.ve, align 8, !tbaa !230
  %i.vl = getelementptr inbounds nuw [160 x i8], ptr %i.vk, i64 %indvars.iv533.i
  %i.vm = call fastcc i32 @tg3__serialize_image(ptr noundef %i.vl, ptr noundef %10) #21
  %.not205.i = icmp eq i32 %i.vm, 0
  br i1 %.not205.i, label %.loopexit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.vn = load i32, ptr %9, align 8, !tbaa !40
  %i.vo = icmp eq i32 %i.vn, 5
  br i1 %i.vo, label %bb.du, label %tg3__json_push_take.exit402.thread.i

bb.du:                                            ; preds = %bb.dt
  %i.vp = load i64, ptr %i.vj, align 8, !tbaa !37 ; 5 uses
  %i.vq = add i64 %i.vp, 1                        ; 4 uses
  %.not.i.not.i.i384.i = icmp eq i64 %i.vp, -1
  br i1 %.not.i.not.i.i384.i, label %.tg3json__init_value.exit_crit_edge.i.i400.i, label %bb.dv

.tg3json__init_value.exit_crit_edge.i.i400.i:     ; preds = %bb.du
  %.pre.i.i401.i = load ptr, ptr %i.vi, align 8, !tbaa !37
  br label %bb.ec

bb.dv:                                            ; preds = %bb.du
  %.not25.i.i.i385.i = icmp eq i64 %i.vp, 0
  %spec.select.i.i.i386.i = select i1 %.not25.i.i.i385.i, i64 8, i64 %i.vp ; 3 uses
  %i.vr = icmp ult i64 %spec.select.i.i.i386.i, %i.vq
  br i1 %i.vr, label %.lr.ph.i.i.i398.i, label %._crit_edge.i.i.i387.i

.lr.ph.i.i.i398.i:                                ; preds = %bb.dv, %bb.dw
  %.030.i.i.i399.i = phi i64 [ %i.vt, %bb.dw ], [ %spec.select.i.i.i386.i, %bb.dv ] ; 2 uses
  %i.vs = icmp slt i64 %.030.i.i.i399.i, 0
  br i1 %i.vs, label %._crit_edge.i.i.i387.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i398.i
  %i.vt = shl nuw i64 %.030.i.i.i399.i, 1         ; 3 uses
  %i.vu = icmp ult i64 %i.vt, %i.vq
  br i1 %i.vu, label %.lr.ph.i.i.i398.i, label %._crit_edge.i.i.i387.i, !llvm.loop !2

._crit_edge.i.i.i387.i:                           ; preds = %bb.dw, %.lr.ph.i.i.i398.i, %bb.dv
  %.1.i.i.i388.i = phi i64 [ %spec.select.i.i.i386.i, %bb.dv ], [ %i.vt, %bb.dw ], [ %i.vq, %.lr.ph.i.i.i398.i ] ; 2 uses
  %i.vv = icmp ugt i64 %.1.i.i.i388.i, 768614336404564650
  br i1 %i.vv, label %tg3__json_push_take.exit402.thread.i, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i.i.i387.i
  %i.vw = load ptr, ptr %i.vi, align 8, !tbaa !55 ; 10 uses
  %i.vx = ptrtoaddr ptr %i.vw to i64
  %i.vy = mul nuw i64 %.1.i.i.i388.i, 24          ; 4 uses
  %.not.i.i.i.i389.i = icmp eq ptr %i.vw, null
  %i.vz = add nuw i64 %i.vy, 8
  %i.wa = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.wb = add i64 %i.vz, %i.wa                    ; 3 uses
  %i.wc = icmp ugt i64 %i.wb, 524288              ; 2 uses
  br i1 %.not.i.i.i.i389.i, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.wc, label %tg3__json_push_take.exit402.thread.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wd = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.wa ; 2 uses
  store i64 %i.vy, ptr %i.wd, align 8, !tbaa !30
  store i64 %i.wb, ptr @test_heap_used, align 8, !tbaa !30
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  br label %.loopexit.i.i.i394.i

bb.ea:                                            ; preds = %bb.dx
  br i1 %i.wc, label %tg3__json_push_take.exit402.thread.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.wf = getelementptr inbounds i8, ptr %i.vw, i64 -8
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !30
  %i.wh = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.wa ; 2 uses
  store i64 %i.vy, ptr %i.wh, align 8, !tbaa !30
  store i64 %i.wb, ptr @test_heap_used, align 8, !tbaa !30
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 12 uses
  %i.wj = call i64 @llvm.umin.i64(i64 %i.wg, i64 %i.vy) ; 11 uses
  %.not27.i.i.i.i390.i = icmp eq i64 %i.wj, 0
  br i1 %.not27.i.i.i.i390.i, label %.loopexit.i.i.i394.i, label %iter.check631

iter.check631:                                    ; preds = %bb.eb
  %min.iters.check617 = icmp ult i64 %i.wj, 4
  br i1 %min.iters.check617, label %.lr.ph.i.i.i.i391.i.preheader, label %vector.memcheck618

vector.memcheck618:                               ; preds = %iter.check631
  %30 = sub i64 %i.wa, %i.vx
  %31 = add i64 %30, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check619 = icmp ult i64 %31, 31
  br i1 %diff.check619, label %.lr.ph.i.i.i.i391.i.preheader, label %vector.main.loop.iter.check620

vector.main.loop.iter.check620:                   ; preds = %vector.memcheck618
  %min.iters.check621 = icmp ult i64 %i.wj, 32
  br i1 %min.iters.check621, label %vec.epilog.ph635, label %vector.ph622

vector.ph622:                                     ; preds = %vector.main.loop.iter.check620
  %i.wk = and i64 %i.wj, 28
  %n.vec623 = and i64 %i.wj, -32                  ; 4 uses
  br label %vector.body624

vector.body624:                                   ; preds = %vector.ph622, %vector.body624
  %index625 = phi i64 [ 0, %vector.ph622 ], [ %index.next628, %vector.body624 ] ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vw, i64 %index625 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %wide.load626 = load <16 x i8>, ptr %i.wl, align 1, !tbaa !37
  %wide.load627 = load <16 x i8>, ptr %i.wm, align 1, !tbaa !37
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 %index625 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  store <16 x i8> %wide.load626, ptr %i.wn, align 1, !tbaa !37
  store <16 x i8> %wide.load627, ptr %i.wo, align 1, !tbaa !37
  %index.next628 = add nuw i64 %index625, 32      ; 2 uses
  %i.wp = icmp eq i64 %index.next628, %n.vec623
  br i1 %i.wp, label %middle.block629, label %vector.body624, !llvm.loop !669

middle.block629:                                  ; preds = %vector.body624
  %cmp.n630 = icmp eq i64 %i.wj, %n.vec623
  br i1 %cmp.n630, label %.loopexit.i.i.i394.i, label %vec.epilog.iter.check632

vec.epilog.iter.check632:                         ; preds = %middle.block629
  %min.epilog.iters.check634 = icmp eq i64 %i.wk, 0
  br i1 %min.epilog.iters.check634, label %.lr.ph.i.i.i.i391.i.preheader, label %vec.epilog.ph635, !prof !46

vec.epilog.ph635:                                 ; preds = %vector.main.loop.iter.check620, %vec.epilog.iter.check632
  %vec.epilog.resume.val636 = phi i64 [ %n.vec623, %vec.epilog.iter.check632 ], [ 0, %vector.main.loop.iter.check620 ]
  %n.vec637 = and i64 %i.wj, -4                   ; 3 uses
  br label %vec.epilog.vector.body638

vec.epilog.vector.body638:                        ; preds = %vec.epilog.vector.body638, %vec.epilog.ph635
  %index639 = phi i64 [ %vec.epilog.resume.val636, %vec.epilog.ph635 ], [ %index.next641, %vec.epilog.vector.body638 ] ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vw, i64 %index639
  %wide.load640 = load <4 x i8>, ptr %i.wq, align 1, !tbaa !37
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 %index639
  store <4 x i8> %wide.load640, ptr %i.wr, align 1, !tbaa !37
  %index.next641 = add nuw i64 %index639, 4       ; 2 uses
  %i.ws = icmp eq i64 %index.next641, %n.vec637
  br i1 %i.ws, label %vec.epilog.middle.block642, label %vec.epilog.vector.body638, !llvm.loop !670

vec.epilog.middle.block642:                       ; preds = %vec.epilog.vector.body638
  %cmp.n643 = icmp eq i64 %i.wj, %n.vec637
  br i1 %cmp.n643, label %.loopexit.i.i.i394.i, label %.lr.ph.i.i.i.i391.i.preheader

.lr.ph.i.i.i.i391.i.preheader:                    ; preds = %iter.check631, %vector.memcheck618, %vec.epilog.iter.check632, %vec.epilog.middle.block642
  %.026.i.i.i.i392.i.ph = phi i64 [ 0, %iter.check631 ], [ 0, %vector.memcheck618 ], [ %n.vec623, %vec.epilog.iter.check632 ], [ %n.vec637, %vec.epilog.middle.block642 ] ; 3 uses
  %xtraiter951 = and i64 %i.wj, 3                 ; 2 uses
  %lcmp.mod952.not = icmp eq i64 %xtraiter951, 0
  br i1 %lcmp.mod952.not, label %.lr.ph.i.i.i.i391.i.prol.loopexit, label %.lr.ph.i.i.i.i391.i.prol

.lr.ph.i.i.i.i391.i.prol:                         ; preds = %.lr.ph.i.i.i.i391.i.preheader, %.lr.ph.i.i.i.i391.i.prol
  %.026.i.i.i.i392.i.prol = phi i64 [ %i.ww, %.lr.ph.i.i.i.i391.i.prol ], [ %.026.i.i.i.i392.i.ph, %.lr.ph.i.i.i.i391.i.preheader ] ; 3 uses
  %prol.iter953 = phi i64 [ %prol.iter953.next, %.lr.ph.i.i.i.i391.i.prol ], [ 0, %.lr.ph.i.i.i.i391.i.preheader ]
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vw, i64 %.026.i.i.i.i392.i.prol
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !37
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.026.i.i.i.i392.i.prol
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !37
  %i.ww = add nuw i64 %.026.i.i.i.i392.i.prol, 1  ; 2 uses
  %prol.iter953.next = add i64 %prol.iter953, 1   ; 2 uses
  %prol.iter953.cmp.not = icmp eq i64 %prol.iter953.next, %xtraiter951
  br i1 %prol.iter953.cmp.not, label %.lr.ph.i.i.i.i391.i.prol.loopexit, label %.lr.ph.i.i.i.i391.i.prol, !llvm.loop !671

.lr.ph.i.i.i.i391.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i391.i.prol, %.lr.ph.i.i.i.i391.i.preheader
  %.026.i.i.i.i392.i.unr = phi i64 [ %.026.i.i.i.i392.i.ph, %.lr.ph.i.i.i.i391.i.preheader ], [ %i.ww, %.lr.ph.i.i.i.i391.i.prol ]
  %i.wx = sub i64 %.026.i.i.i.i392.i.ph, %i.wj
  %i.wy = icmp ugt i64 %i.wx, -4
  br i1 %i.wy, label %.loopexit.i.i.i394.i, label %.lr.ph.i.i.i.i391.i

.lr.ph.i.i.i.i391.i:                              ; preds = %.lr.ph.i.i.i.i391.i.prol.loopexit, %.lr.ph.i.i.i.i391.i
  %.026.i.i.i.i392.i = phi i64 [ %i.xo, %.lr.ph.i.i.i.i391.i ], [ %.026.i.i.i.i392.i.unr, %.lr.ph.i.i.i.i391.i.prol.loopexit ] ; 6 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vw, i64 %.026.i.i.i.i392.i
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !37
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.026.i.i.i.i392.i
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !37
  %i.xc = add nuw i64 %.026.i.i.i.i392.i, 1       ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.xc
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !37
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.xc
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !37
  %i.xg = add nuw i64 %.026.i.i.i.i392.i, 2       ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !37
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.xg
  store i8 %i.xi, ptr %i.xj, align 1, !tbaa !37
  %i.xk = add nuw i64 %.026.i.i.i.i392.i, 3       ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !37
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.xk
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !37
  %i.xo = add nuw i64 %.026.i.i.i.i392.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i393.i.3 = icmp eq i64 %i.xo, %i.wj
  br i1 %exitcond.not.i.i.i.i393.i.3, label %.loopexit.i.i.i394.i, label %.lr.ph.i.i.i.i391.i, !llvm.loop !672

.loopexit.i.i.i394.i:                             ; preds = %.lr.ph.i.i.i.i391.i.prol.loopexit, %.lr.ph.i.i.i.i391.i, %middle.block629, %vec.epilog.middle.block642, %bb.eb, %bb.dz
  %.018.i.ph.i.i.i395.i = phi ptr [ %i.we, %bb.dz ], [ %i.wi, %bb.eb ], [ %i.wi, %middle.block629 ], [ %i.wi, %vec.epilog.middle.block642 ], [ %i.wi, %.lr.ph.i.i.i.i391.i ], [ %i.wi, %.lr.ph.i.i.i.i391.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i395.i, ptr %i.vi, align 8, !tbaa !55
  br label %bb.ec

tg3__json_push_take.exit402.thread.i:             ; preds = %bb.ea, %bb.dy, %._crit_edge.i.i.i387.i, %bb.dt
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ds, %tg3__json_push_take.exit402.thread.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.ec:                                            ; preds = %.loopexit.i.i.i394.i, %.tg3json__init_value.exit_crit_edge.i.i400.i
  %i.xp = phi ptr [ %.pre.i.i401.i, %.tg3json__init_value.exit_crit_edge.i.i400.i ], [ %.018.i.ph.i.i.i395.i, %.loopexit.i.i.i394.i ]
  store i64 %i.vq, ptr %i.vj, align 8, !tbaa !37
  %i.xq = getelementptr inbounds nuw [24 x i8], ptr %i.xp, i64 %i.vp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xq, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %indvars.iv.next534.i = add nuw nsw i64 %indvars.iv533.i, 1 ; 2 uses
  %i.xr = load i32, ptr %i.vg, align 8, !tbaa !231
  %i.xs = zext i32 %i.xr to i64
  %i.xt = icmp samesign ult i64 %indvars.iv.next534.i, %i.xs
  br i1 %i.xt, label %bb.ds, label %._crit_edge476.i, !llvm.loop !673

._crit_edge476.i:                                 ; preds = %bb.ec
  %i.xu = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.22, ptr noundef %9) #21
  %.not176.i = icmp eq i32 %i.xu, 0
  br i1 %.not176.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge476.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.ee:                                            ; preds = %._crit_edge476.i, %bb.dr, %bb.dq
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !235
  %.not177.i = icmp eq ptr %i.xw, null
  br i1 %.not177.i, label %bb.ek, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !236
  %.not178.i = icmp eq i32 %i.xy, 0
  br i1 %.not178.i, label %bb.ek, label %.lr.ph479.preheader.i

.lr.ph479.preheader.i:                            ; preds = %bb.ef
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  br label %.lr.ph479.i

bb.eg:                                            ; preds = %bb.eh
  %indvars.iv.next537.i = add nuw nsw i64 %indvars.iv536.i, 1 ; 2 uses
  %i.xz = load i32, ptr %i.xx, align 8, !tbaa !236
  %i.ya = zext i32 %i.xz to i64
  %i.yb = icmp samesign ult i64 %indvars.iv.next537.i, %i.ya
  br i1 %i.yb, label %.lr.ph479.i, label %._crit_edge480.i, !llvm.loop !674

.lr.ph479.i:                                      ; preds = %bb.eg, %.lr.ph479.preheader.i
  %indvars.iv536.i = phi i64 [ 0, %.lr.ph479.preheader.i ], [ %indvars.iv.next537.i, %bb.eg ] ; 2 uses
  %i.yc = load ptr, ptr %i.xv, align 8, !tbaa !235
  %i.yd = getelementptr inbounds nuw [96 x i8], ptr %i.yc, i64 %indvars.iv536.i
  %i.ye = call fastcc i32 @tg3__serialize_skin(ptr noundef %i.yd, ptr noundef %10) #21
  %.not203.i = icmp eq i32 %i.ye, 0
  br i1 %.not203.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph479.i
  %i.yf = call fastcc i32 @tg3__json_push_take(ptr noundef %9, ptr noundef %10) #21
  %.not204.i = icmp eq i32 %i.yf, 0
  br i1 %.not204.i, label %bb.ei, label %bb.eg

bb.ei:                                            ; preds = %bb.eh, %.lr.ph479.i
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

._crit_edge480.i:                                 ; preds = %bb.eg
  %i.yg = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %13, ptr noundef nonnull @.str.25, ptr noundef %9) #21
  %.not179.i = icmp eq i32 %i.yg, 0
  br i1 %.not179.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %._crit_edge480.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.fl

bb.ek:                                            ; preds = %._crit_edge480.i, %bb.ef, %bb.ee
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !251
  %.not180.i = icmp eq ptr %i.yi, null
  br i1 %.not180.i, label %bb.eq, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !252
  %.not181.i = icmp eq i32 %i.yk, 0
  br i1 %.not181.i, label %bb.eq, label %.lr.ph483.preheader.i

.lr.ph483.preheader.i:                            ; preds = %bb.el
end_hunk_6
begin_hunk_7_@tg3__serialize_mesh:bb.a
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_int.exit96.i:                       ; preds = %tg3json_object_set_take.exit.i.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.m:                                             ; preds = %tg3__json_set_int.exit96.i, %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !191 ; 2 uses
  %i.dg = icmp ne i32 %i.df, 4
  %or.cond.i.i = or i1 %i.bs, %i.dg
  br i1 %or.cond.i.i, label %tg3json_object_set_take.exit.i.i.i.i, label %tg3__serialize_int.exit.thread.i

tg3json_object_set_take.exit.i.i.i.i:             ; preds = %bb.m
  %i.dh = sext i32 %i.df to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !40
  store i64 %i.dh, ptr %i.bt, align 8, !tbaa !37
  %i.di = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull @.str.115, i64 noundef 4, ptr noundef nonnull %3) #21
  %.not.i.i.i98.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i98.i, label %tg3__serialize_int.exit.thread122.i, label %tg3__serialize_int.exit.i

tg3__serialize_int.exit.thread122.i:              ; preds = %tg3json_object_set_take.exit.i.i.i.i
  call void @tg3json_value_free(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %tg3__serialize_primitive.exit.thread

tg3__serialize_int.exit.i:                        ; preds = %tg3json_object_set_take.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %tg3__serialize_int.exit.thread.i

tg3__serialize_int.exit.thread.i:                 ; preds = %tg3__serialize_int.exit.i, %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !195
  %.not75.i = icmp eq ptr %i.dk, null
  br i1 %.not75.i, label %tg3__json_set_take.exit112.i, label %bb.n

bb.n:                                             ; preds = %tg3__serialize_int.exit.thread.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !197
  %.not76.i = icmp eq i32 %i.dm, 0
  br i1 %.not76.i, label %tg3__json_set_take.exit112.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 5, ptr %7, align 8, !tbaa !40
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  br label %bb.o

.preheader.i.i105.preheader.i:                    ; preds = %bb.ad
  %i.do = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull @.str.119, i64 noundef 7, ptr noundef nonnull %7) #21
  %.not.i109.i = icmp eq i32 %i.do, 0
  br i1 %.not.i109.i, label %bb.ae, label %tg3__json_set_take.exit112.i

bb.o:                                             ; preds = %bb.ad, %.lr.ph141.i
  %indvars.iv149.i = phi i64 [ 0, %.lr.ph141.i ], [ %indvars.iv.next150.i, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !196 ; 2 uses
  %.not78.i = icmp eq ptr %i.dp, null
  br i1 %.not78.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 6, ptr %9, align 8, !tbaa !40
  br label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv149.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 6, ptr %9, align 8, !tbaa !40
  %.not144.i = icmp eq i32 %i.dr, 0
  br i1 %.not144.i, label %._crit_edge.i, label %.lr.ph138.i

.lr.ph138.i:                                      ; preds = %bb.p
  %wide.trip.count.i = zext i32 %i.dr to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph138.i
  %indvars.iv146.i = phi i64 [ 0, %.lr.ph138.i ], [ %indvars.iv.next147.i, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !195
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv149.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !194
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %indvars.iv146.i ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !270
  %i.dy = sext i32 %i.dx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 2, ptr %10, align 8, !tbaa !40
  store i64 %i.dy, ptr %i.bu, align 8, !tbaa !37
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !798 ; 2 uses
  %.not80.i = icmp eq ptr %i.dz, null             ; 2 uses
  %spec.select87.i = select i1 %.not80.i, ptr @.str, ptr %i.dz
  br i1 %.not80.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !799
  %i.ec = zext i32 %i.eb to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ed = phi i64 [ %i.ec, %bb.r ], [ 0, %bb.q ]
  %i.ee = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %9, ptr noundef nonnull %spec.select87.i, i64 noundef %i.ed, ptr noundef nonnull %10) #21
  %.not82.not.i = icmp eq i32 %i.ee, 0
  br i1 %.not82.not.i, label %.thread125.i, label %bb.t

.thread125.i:                                     ; preds = %bb.s
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  call void @tg3json_value_free(ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.thread129.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.q, !llvm.loop !787

._crit_edge.i:                                    ; preds = %bb.t, %bb.p, %.thread.i
  %i.ef = load i32, ptr %7, align 8, !tbaa !40
  %i.eg = icmp eq i32 %i.ef, 5
  br i1 %i.eg, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %._crit_edge.i
  %i.eh = load i64, ptr %i.bw, align 8, !tbaa !37 ; 5 uses
  %i.ei = add i64 %i.eh, 1                        ; 4 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.eh, -1
  br i1 %.not.i.not.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i, label %bb.v

.tg3json__init_value.exit_crit_edge.i.i.i:        ; preds = %bb.u
  %.pre.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !37
  br label %bb.ad

bb.v:                                             ; preds = %bb.u
  %.not25.i.i.i.i = icmp eq i64 %i.eh, 0
  %spec.select.i.i.i.i = select i1 %.not25.i.i.i.i, i64 8, i64 %i.eh ; 3 uses
  %i.ej = icmp ult i64 %spec.select.i.i.i.i, %i.ei
  br i1 %i.ej, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.030.i.i.i.i = phi i64 [ %i.el, %bb.w ], [ %spec.select.i.i.i.i, %bb.v ] ; 2 uses
  %i.ek = icmp slt i64 %.030.i.i.i.i, 0
  br i1 %i.ek, label %._crit_edge.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.el = shl nuw i64 %.030.i.i.i.i, 1            ; 3 uses
  %i.em = icmp ult i64 %i.el, %i.ei
  br i1 %i.em, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

._crit_edge.i.i.i.i:                              ; preds = %bb.w, %.lr.ph.i.i.i.i, %bb.v
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.v ], [ %i.el, %bb.w ], [ %i.ei, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.en = icmp ugt i64 %.1.i.i.i.i, 768614336404564650
  br i1 %i.en, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eo = load ptr, ptr %i.bv, align 8, !tbaa !55 ; 10 uses
  %i.ep = ptrtoaddr ptr %i.eo to i64
  %i.eq = mul nuw i64 %.1.i.i.i.i, 24             ; 4 uses
  %.not.i.i.i.i104.i = icmp eq ptr %i.eo, null
  %i.er = add nuw i64 %i.eq, 8
  %i.es = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.et = add i64 %i.er, %i.es                    ; 3 uses
  %i.eu = icmp ugt i64 %i.et, 524288              ; 2 uses
  br i1 %.not.i.i.i.i104.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %i.eu, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.es ; 2 uses
  store i64 %i.eq, ptr %i.ev, align 8, !tbaa !30
  store i64 %i.et, ptr @test_heap_used, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br label %.loopexit.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  br i1 %i.eu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ex = getelementptr inbounds i8, ptr %i.eo, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.es ; 2 uses
  store i64 %i.eq, ptr %i.ez, align 8, !tbaa !30
  store i64 %i.et, ptr @test_heap_used, align 8, !tbaa !30
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 12 uses
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.eq) ; 11 uses
  %.not27.i.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not27.i.i.i.i.i, label %.loopexit.i.i.i.i, label %iter.check128

iter.check128:                                    ; preds = %bb.ab
  %min.iters.check114 = icmp ult i64 %i.fb, 4
  br i1 %min.iters.check114, label %.lr.ph.i.i.i.i.i28.preheader, label %vector.memcheck115

vector.memcheck115:                               ; preds = %iter.check128
  %14 = sub i64 %i.es, %i.ep
  %15 = add i64 %14, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check116 = icmp ult i64 %15, 31
  br i1 %diff.check116, label %.lr.ph.i.i.i.i.i28.preheader, label %vector.main.loop.iter.check117

vector.main.loop.iter.check117:                   ; preds = %vector.memcheck115
  %min.iters.check118 = icmp ult i64 %i.fb, 32
  br i1 %min.iters.check118, label %vec.epilog.ph132, label %vector.ph119

vector.ph119:                                     ; preds = %vector.main.loop.iter.check117
  %i.fc = and i64 %i.fb, 28
  %n.vec120 = and i64 %i.fb, -32                  ; 4 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.ph119, %vector.body121
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next125, %vector.body121 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index122 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load123 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !37
  %wide.load124 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index122 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <16 x i8> %wide.load123, ptr %i.ff, align 1, !tbaa !37
  store <16 x i8> %wide.load124, ptr %i.fg, align 1, !tbaa !37
  %index.next125 = add nuw i64 %index122, 32      ; 2 uses
  %i.fh = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.fh, label %middle.block126, label %vector.body121, !llvm.loop !788

middle.block126:                                  ; preds = %vector.body121
  %cmp.n127 = icmp eq i64 %i.fb, %n.vec120
  br i1 %cmp.n127, label %.loopexit.i.i.i.i, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block126
  %min.epilog.iters.check131 = icmp eq i64 %i.fc, 0
  br i1 %min.epilog.iters.check131, label %.lr.ph.i.i.i.i.i28.preheader, label %vec.epilog.ph132, !prof !46

vec.epilog.ph132:                                 ; preds = %vector.main.loop.iter.check117, %vec.epilog.iter.check129
  %vec.epilog.resume.val133 = phi i64 [ %n.vec120, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check117 ]
  %n.vec134 = and i64 %i.fb, -4                   ; 3 uses
  br label %vec.epilog.vector.body135

vec.epilog.vector.body135:                        ; preds = %vec.epilog.vector.body135, %vec.epilog.ph132
  %index136 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph132 ], [ %index.next138, %vec.epilog.vector.body135 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index136
  %wide.load137 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !37
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index136
  store <4 x i8> %wide.load137, ptr %i.fj, align 1, !tbaa !37
  %index.next138 = add nuw i64 %index136, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next138, %n.vec134
  br i1 %i.fk, label %vec.epilog.middle.block139, label %vec.epilog.vector.body135, !llvm.loop !789

vec.epilog.middle.block139:                       ; preds = %vec.epilog.vector.body135
  %cmp.n140 = icmp eq i64 %i.fb, %n.vec134
  br i1 %cmp.n140, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i28.preheader

.lr.ph.i.i.i.i.i28.preheader:                     ; preds = %iter.check128, %vector.memcheck115, %vec.epilog.iter.check129, %vec.epilog.middle.block139
  %.026.i.i.i.i.i.ph = phi i64 [ 0, %iter.check128 ], [ 0, %vector.memcheck115 ], [ %n.vec120, %vec.epilog.iter.check129 ], [ %n.vec134, %vec.epilog.middle.block139 ] ; 3 uses
  %xtraiter142 = and i64 %i.fb, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.i.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i28.prol

.lr.ph.i.i.i.i.i28.prol:                          ; preds = %.lr.ph.i.i.i.i.i28.preheader, %.lr.ph.i.i.i.i.i28.prol
  %.026.i.i.i.i.i.prol = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i28.prol ], [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i28.preheader ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.i.i28.prol ], [ 0, %.lr.ph.i.i.i.i.i28.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.026.i.i.i.i.i.prol
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.026.i.i.i.i.i.prol
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !37
  %i.fo = add nuw i64 %.026.i.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.i.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i28.prol, !llvm.loop !790

.lr.ph.i.i.i.i.i28.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i28.prol, %.lr.ph.i.i.i.i.i28.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i28.preheader ], [ %i.fo, %.lr.ph.i.i.i.i.i28.prol ]
  %i.fp = sub i64 %.026.i.i.i.i.i.ph, %i.fb
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %.lr.ph.i.i.i.i.i28.prol.loopexit, %.lr.ph.i.i.i.i.i28
  %.026.i.i.i.i.i = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i28 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i28.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.026.i.i.i.i.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !37
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.026.i.i.i.i.i
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !37
  %i.fu = add nuw i64 %.026.i.i.i.i.i, 1          ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fu
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !37
  %i.fy = add nuw i64 %.026.i.i.i.i.i, 2          ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fy
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !37
  %i.gc = add nuw i64 %.026.i.i.i.i.i, 3          ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !37
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.gc
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !37
  %i.gg = add nuw i64 %.026.i.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gg, %i.fb
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i28, !llvm.loop !791

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i28.prol.loopexit, %.lr.ph.i.i.i.i.i28, %middle.block126, %vec.epilog.middle.block139, %bb.ab, %bb.z
  %.018.i.ph.i.i.i.i = phi ptr [ %i.ew, %bb.z ], [ %i.fa, %bb.ab ], [ %i.fa, %middle.block126 ], [ %i.fa, %vec.epilog.middle.block139 ], [ %i.fa, %.lr.ph.i.i.i.i.i28 ], [ %i.fa, %.lr.ph.i.i.i.i.i28.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i.i, ptr %i.bv, align 8, !tbaa !55
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.y, %._crit_edge.i.i.i.i, %._crit_edge.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  call void @tg3json_value_free(ptr noundef nonnull %7) #21
  br label %.thread129.i

.thread129.i:                                     ; preds = %bb.ac, %.thread125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %tg3__serialize_primitive.exit.thread

bb.ad:                                            ; preds = %.loopexit.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i
  %i.gh = phi ptr [ %.pre.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i ], [ %.018.i.ph.i.i.i.i, %.loopexit.i.i.i.i ]
  store i64 %i.ei, ptr %i.bw, align 8, !tbaa !37
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %i.gj = load i32, ptr %i.dl, align 8, !tbaa !197
  %i.gk = zext i32 %i.gj to i64
  %i.gl = icmp samesign ult i64 %indvars.iv.next150.i, %i.gk
  br i1 %i.gl, label %bb.o, label %.preheader.i.i105.preheader.i, !llvm.loop !792

bb.ae:                                            ; preds = %.preheader.i.i105.preheader.i
  call void @tg3json_value_free(ptr noundef nonnull %7) #21
  call void @tg3json_value_free(ptr noundef nonnull %7) #21
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_take.exit112.i:                     ; preds = %.preheader.i.i105.preheader.i, %bb.n, %tg3__serialize_int.exit.thread.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.gn = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef nonnull %13, ptr noundef nonnull readonly %i.gm) #21
  %.not83.i = icmp eq i32 %i.gn, 0
  br i1 %.not83.i, label %tg3__serialize_primitive.exit.thread, label %bb.af

tg3__serialize_primitive.exit.thread:             ; preds = %tg3__json_set_take.exit112.i, %bb.i, %bb.k, %tg3__json_set_int.exit.thread.i, %tg3__json_set_int.exit96.thread.i, %tg3__serialize_int.exit.thread122.i, %.thread129.i, %bb.ae
  call void @tg3json_value_free(ptr noundef nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ao

bb.af:                                            ; preds = %tg3__json_set_take.exit112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.go = load i32, ptr %12, align 8, !tbaa !40
  %i.gp = icmp eq i32 %i.go, 5
  br i1 %i.gp, label %bb.ag, label %tg3__json_push_take.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.gq = load i64, ptr %i.by, align 8, !tbaa !37 ; 5 uses
  %i.gr = add i64 %i.gq, 1                        ; 4 uses
  %.not.i.not.i.i = icmp eq i64 %i.gq, -1
  br i1 %.not.i.not.i.i, label %.tg3json__init_value.exit_crit_edge.i.i, label %bb.ah

.tg3json__init_value.exit_crit_edge.i.i:          ; preds = %bb.ag
  %.pre.i.i = load ptr, ptr %i.bx, align 8, !tbaa !37
  br label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %.not25.i.i.i = icmp eq i64 %i.gq, 0
  %spec.select.i.i.i = select i1 %.not25.i.i.i, i64 8, i64 %i.gq ; 3 uses
  %i.gs = icmp ult i64 %spec.select.i.i.i, %i.gr
  br i1 %i.gs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %bb.ai
  %.030.i.i.i = phi i64 [ %i.gu, %bb.ai ], [ %spec.select.i.i.i, %bb.ah ] ; 2 uses
  %i.gt = icmp slt i64 %.030.i.i.i, 0
  br i1 %i.gt, label %._crit_edge.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.gu = shl nuw i64 %.030.i.i.i, 1              ; 3 uses
  %i.gv = icmp ult i64 %i.gu, %i.gr
  br i1 %i.gv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %bb.ai, %.lr.ph.i.i.i, %bb.ah
  %.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.ah ], [ %i.gr, %.lr.ph.i.i.i ], [ %i.gu, %bb.ai ] ; 2 uses
  %i.gw = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.gw, label %tg3__json_push_take.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.gx = load ptr, ptr %i.bx, align 8, !tbaa !55 ; 10 uses
  %i.gy = ptrtoaddr ptr %i.gx to i64
  %i.gz = mul nuw i64 %.1.i.i.i, 24               ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.gx, null
  %i.ha = add nuw i64 %i.gz, 8
  %i.hb = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.hc = add i64 %i.ha, %i.hb                    ; 3 uses
  %i.hd = icmp ugt i64 %i.hc, 524288              ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.hd, label %tg3__json_push_take.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.he = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.hb ; 2 uses
  store i64 %i.gz, ptr %i.he, align 8, !tbaa !30
  store i64 %i.hc, ptr @test_heap_used, align 8, !tbaa !30
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  br label %.loopexit.i.i.i

bb.am:                                            ; preds = %bb.aj
  br i1 %i.hd, label %tg3__json_push_take.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds i8, ptr %i.gx, i64 -8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !30
  %i.hi = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.hb ; 2 uses
  store i64 %i.gz, ptr %i.hi, align 8, !tbaa !30
  store i64 %i.hc, ptr @test_heap_used, align 8, !tbaa !30
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 12 uses
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hh, i64 %i.gz) ; 11 uses
  %.not27.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i.i, label %iter.check98

iter.check98:                                     ; preds = %bb.an
  %min.iters.check84 = icmp ult i64 %i.hk, 4
  br i1 %min.iters.check84, label %.lr.ph.i.i.i.i31.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %iter.check98
  %16 = sub i64 %i.hb, %i.gy
  %17 = add i64 %16, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check86 = icmp ult i64 %17, 31
  br i1 %diff.check86, label %.lr.ph.i.i.i.i31.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %vector.memcheck85
  %min.iters.check88 = icmp ult i64 %i.hk, 32
  br i1 %min.iters.check88, label %vec.epilog.ph102, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %i.hl = and i64 %i.hk, 28
  %n.vec90 = and i64 %i.hk, -32                   ; 4 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.ph89, %vector.body91
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body91 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 %index92 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load93 = load <16 x i8>, ptr %i.hm, align 1, !tbaa !37
  %wide.load94 = load <16 x i8>, ptr %i.hn, align 1, !tbaa !37
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 %index92 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <16 x i8> %wide.load93, ptr %i.ho, align 1, !tbaa !37
  store <16 x i8> %wide.load94, ptr %i.hp, align 1, !tbaa !37
  %index.next95 = add nuw i64 %index92, 32        ; 2 uses
  %i.hq = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.hq, label %middle.block96, label %vector.body91, !llvm.loop !793

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %i.hk, %n.vec90
  br i1 %cmp.n97, label %.loopexit.i.i.i, label %vec.epilog.iter.check99

vec.epilog.iter.check99:                          ; preds = %middle.block96
  %min.epilog.iters.check101 = icmp eq i64 %i.hl, 0
  br i1 %min.epilog.iters.check101, label %.lr.ph.i.i.i.i31.preheader, label %vec.epilog.ph102, !prof !46

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check99
  %vec.epilog.resume.val103 = phi i64 [ %n.vec90, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec104 = and i64 %i.hk, -4                   ; 3 uses
  br label %vec.epilog.vector.body105

vec.epilog.vector.body105:                        ; preds = %vec.epilog.vector.body105, %vec.epilog.ph102
  %index106 = phi i64 [ %vec.epilog.resume.val103, %vec.epilog.ph102 ], [ %index.next108, %vec.epilog.vector.body105 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gx, i64 %index106
  %wide.load107 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !37
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 %index106
  store <4 x i8> %wide.load107, ptr %i.hs, align 1, !tbaa !37
  %index.next108 = add nuw i64 %index106, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.ht, label %vec.epilog.middle.block109, label %vec.epilog.vector.body105, !llvm.loop !794

vec.epilog.middle.block109:                       ; preds = %vec.epilog.vector.body105
  %cmp.n110 = icmp eq i64 %i.hk, %n.vec104
  br i1 %cmp.n110, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i31.preheader

.lr.ph.i.i.i.i31.preheader:                       ; preds = %iter.check98, %vector.memcheck85, %vec.epilog.iter.check99, %vec.epilog.middle.block109
  %.026.i.i.i.i.ph = phi i64 [ 0, %iter.check98 ], [ 0, %vector.memcheck85 ], [ %n.vec90, %vec.epilog.iter.check99 ], [ %n.vec104, %vec.epilog.middle.block109 ] ; 3 uses
  %xtraiter145 = and i64 %i.hk, 3                 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i31.prol

.lr.ph.i.i.i.i31.prol:                            ; preds = %.lr.ph.i.i.i.i31.preheader, %.lr.ph.i.i.i.i31.prol
  %.026.i.i.i.i.prol = phi i64 [ %i.hx, %.lr.ph.i.i.i.i31.prol ], [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i.i31.preheader ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph.i.i.i.i31.prol ], [ 0, %.lr.ph.i.i.i.i31.preheader ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.026.i.i.i.i.prol
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !37
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.026.i.i.i.i.prol
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !37
  %i.hx = add nuw i64 %.026.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i31.prol, !llvm.loop !795

.lr.ph.i.i.i.i31.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i31.prol, %.lr.ph.i.i.i.i31.preheader
  %.026.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i.i31.preheader ], [ %i.hx, %.lr.ph.i.i.i.i31.prol ]
  %i.hy = sub i64 %.026.i.i.i.i.ph, %i.hk
  %i.hz = icmp ugt i64 %i.hy, -4
  br i1 %i.hz, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %.lr.ph.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i31
  %.026.i.i.i.i = phi i64 [ %i.ip, %.lr.ph.i.i.i.i31 ], [ %.026.i.i.i.i.unr, %.lr.ph.i.i.i.i31.prol.loopexit ] ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.026.i.i.i.i
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !37
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.026.i.i.i.i
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !37
  %i.id = add nuw i64 %.026.i.i.i.i, 1            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !37
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.id
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !37
  %i.ih = add nuw i64 %.026.i.i.i.i, 2            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !37
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.ih
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !37
  %i.il = add nuw i64 %.026.i.i.i.i, 3            ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.il
  store i8 %i.in, ptr %i.io, align 1, !tbaa !37
  %i.ip = add nuw i64 %.026.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ip, %i.hk
  br i1 %exitcond.not.i.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i31, !llvm.loop !796

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i31, %middle.block96, %vec.epilog.middle.block109, %bb.an, %bb.al
  %.018.i.ph.i.i.i = phi ptr [ %i.hf, %bb.al ], [ %i.hj, %bb.an ], [ %i.hj, %middle.block96 ], [ %i.hj, %vec.epilog.middle.block109 ], [ %i.hj, %.lr.ph.i.i.i.i31 ], [ %i.hj, %.lr.ph.i.i.i.i31.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i, ptr %i.bx, align 8, !tbaa !55
  br label %bb.ap

tg3__json_push_take.exit.thread:                  ; preds = %bb.af, %._crit_edge.i.i.i, %bb.ak, %bb.am
  call void @tg3json_value_free(ptr noundef nonnull %13) #21
  br label %bb.ao

bb.ao:                                            ; preds = %tg3__serialize_primitive.exit.thread, %tg3__json_push_take.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %13) #21
  call void @tg3json_value_free(ptr noundef nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.as

bb.ap:                                            ; preds = %.loopexit.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i
  %i.iq = phi ptr [ %.pre.i.i, %.tg3json__init_value.exit_crit_edge.i.i ], [ %.018.i.ph.i.i.i, %.loopexit.i.i.i ]
  store i64 %i.gr, ptr %i.by, align 8, !tbaa !37
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.is = load i32, ptr %i.bn, align 8, !tbaa !201
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp samesign ult i64 %indvars.iv.next, %i.it
  br i1 %i.iu, label %bb.d, label %.preheader.i.i.preheader, !llvm.loop !797

bb.aq:                                            ; preds = %.preheader.i.i.preheader
  call void @tg3json_value_free(ptr noundef nonnull %12) #21
  call void @tg3json_value_free(ptr noundef nonnull %12) #21
  br label %bb.as

tg3__json_set_take.exit:                          ; preds = %.preheader.i.i.preheader, %bb.c, %tg3__serialize_str.exit.thread
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !800
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !801
  %i.iz = call fastcc i32 @tg3__serialize_double_array(ptr noundef %2, ptr noundef nonnull @.str.112, ptr noundef %i.iw, i32 noundef %i.iy) #21
  %.not24 = icmp eq i32 %i.iz, 0
  br i1 %.not24, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %tg3__json_set_take.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jb = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %2, ptr noundef nonnull %i.ja) #21
  %.not25 = icmp eq i32 %i.jb, 0
  br i1 %.not25, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ao, %tg3__serialize_str.exit.thread37, %tg3__json_set_take.exit, %bb.ar, %bb.aq
  call void @tg3json_value_free(ptr noundef nonnull %2) #21
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.020 = phi i32 [ 0, %bb.as ], [ 1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  ret i32 %.020
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 81) i32 @tg3_writer_add_node(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !296
  %i.c = call fastcc i32 @tg3__serialize_node(ptr noundef nonnull %1, i32 noundef %i.b, ptr noundef %2) #21
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @tg3__writer_add_item(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %2) #21
  call void @tg3json_value_free(ptr noundef nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 80, %bb.a ], [ 50, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_node(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef nonnull captures(address_is_null) initializes((0, 24)) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %6 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %struct.tg3json_value, align 8      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 6, ptr %2, align 8, !tbaa !40
  %i.b = load ptr, ptr %0, align 8                ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
end_hunk_7
begin_hunk_8_@tg3__serialize_animation:bb.a
.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.010.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %.059.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ad = add nsw i64 %.068.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.af = load i8, ptr %.010.i.i.i.i.i.prol, align 1, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.af, ptr %.059.i.i.i.i.i.prol, align 1, !tbaa !37
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !847

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.unr = phi ptr [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %.059.i.i.i.i.i.unr = phi ptr [ %.059.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.ac, 7
  br i1 %i.ah, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.059.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 1
  %i.aj = load i8, ptr %.010.i.i.i.i.i, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 1
  store i8 %i.aj, ptr %.059.i.i.i.i.i, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 2
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 2
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 3
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 3
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 4
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 4
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 5
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 5
  store i8 %i.av, ptr %i.at, align 1, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 6
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 6
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 7
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 7
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !37
  %i.bd = add nsw i64 %.068.i.i.i.i.i, -8         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.bf = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i, i64 8
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !37
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !848

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.bh, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.o, ptr %i.bi, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.g, ptr %i.bj, align 8, !tbaa !37
  %i.bk = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull @.str.64, i64 noundef 4, ptr noundef nonnull %8) #21
  %.not.i5.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i5.i.i, label %tg3json_object_set_take.exit.thread.i.i.i, label %tg3__serialize_str.exit

tg3json_object_set_take.exit.thread.i.i.i:        ; preds = %.loopexit.i.i
  call void @tg3json_value_free(ptr noundef nonnull %8) #21
  br label %tg3__serialize_str.exit.thread168

tg3__serialize_str.exit.thread168:                ; preds = %tg3json_object_set_take.exit.thread.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ag

tg3__serialize_str.exit:                          ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %tg3__serialize_str.exit.thread

tg3__serialize_str.exit.thread:                   ; preds = %bb.a, %tg3__serialize_str.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !244
  %.not44 = icmp eq ptr %i.bm, null
  br i1 %.not44, label %tg3__json_set_take.exit101, label %bb.c

bb.c:                                             ; preds = %tg3__serialize_str.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !245
  %.not45 = icmp eq i32 %i.bo, 0
  br i1 %.not45, label %tg3__json_set_take.exit101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.d

.preheader.i.i94.preheader:                       ; preds = %bb.q
  %i.bv = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull @.str.174, i64 noundef 8, ptr noundef nonnull %9) #21
  %.not.i98 = icmp eq i32 %i.bv, 0
  br i1 %.not.i98, label %bb.r, label %tg3__json_set_take.exit101

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i32 6, ptr %11, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store i32 6, ptr %12, align 8, !tbaa !40
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !244 ; 2 uses
  %i.bx = getelementptr inbounds nuw [144 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !240 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %tg3json_object_set_take.exit.i.i, label %tg3json_object_set_take.exit.i.i68

tg3json_object_set_take.exit.i.i:                 ; preds = %bb.d
  %i.cb = zext nneg i32 %i.bz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 2, ptr %7, align 8, !tbaa !40
  store i64 %i.cb, ptr %i.bp, align 8, !tbaa !37
  %i.cc = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.177, i64 noundef 4, ptr noundef nonnull %7) #21
  %.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i, label %bb.e, label %tg3__json_set_int.exit

tg3__json_set_int.exit:                           ; preds = %tg3json_object_set_take.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !244
  br label %tg3json_object_set_take.exit.i.i68

bb.e:                                             ; preds = %tg3json_object_set_take.exit.i.i
  call void @tg3json_value_free(ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.thread

tg3json_object_set_take.exit.i.i68:               ; preds = %tg3__json_set_int.exit, %bb.d
  %i.cd = phi ptr [ %.pre, %tg3__json_set_int.exit ], [ %i.bw, %bb.d ]
  %i.ce = getelementptr inbounds nuw [144 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !239
  %i.cg = sext i32 %i.cf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 2, ptr %6, align 8, !tbaa !40
  store i64 %i.cg, ptr %i.bq, align 8, !tbaa !37
  %i.ch = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %11, ptr noundef nonnull @.str.161, i64 noundef 7, ptr noundef nonnull %6) #21
  %.not.i.i69 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i69, label %tg3__json_set_int.exit72.thread, label %bb.f

tg3__json_set_int.exit72.thread:                  ; preds = %tg3json_object_set_take.exit.i.i68
  call void @tg3json_value_free(ptr noundef nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.thread

bb.f:                                             ; preds = %tg3json_object_set_take.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ci = load ptr, ptr %i.bl, align 8, !tbaa !244 ; 2 uses
  %i.cj = getelementptr inbounds nuw [144 x i8], ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8            ; 8 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.co = load i32, ptr %i.cn, align 8            ; 4 uses
  %i.cp = icmp eq ptr %i.cl, null
  %i.cq = icmp eq i32 %i.co, 0
  %or.cond.i73 = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond.i73, label %tg3__serialize_str.exit90.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = zext i32 %i.co to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 4, ptr %5, align 8
  %i.cs = and i64 %i.cr, 4294967288
  %i.ct = add nuw nsw i64 %i.cs, 16
  %i.cu = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 3 uses
  %i.cv = add i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, 524288
  br i1 %i.cw, label %tg3__serialize_str.exit90.thread177, label %iter.check61

iter.check61:                                     ; preds = %bb.g
  %i.cx = add nuw nsw i64 %i.cr, 1
  %i.cy = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cu ; 2 uses
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !30
  store i64 %i.cv, ptr @test_heap_used, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 8 uses
  %min.iters.check45 = icmp ult i32 %i.co, 4
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i75.preheader, label %vector.memcheck46

vector.memcheck46:                                ; preds = %iter.check61
  %14 = sub i64 %i.cu, %i.cm
  %15 = add i64 %14, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check47 = icmp ult i64 %15, 31
  br i1 %diff.check47, label %.lr.ph.i.i.i.i.i75.preheader, label %vector.main.loop.iter.check48

vector.main.loop.iter.check48:                    ; preds = %vector.memcheck46
  %min.iters.check49 = icmp ult i32 %i.co, 32
  br i1 %min.iters.check49, label %vec.epilog.ph65, label %vector.ph50

vector.ph50:                                      ; preds = %vector.main.loop.iter.check48
  %i.da = and i64 %i.cr, 28
  %n.vec51 = and i64 %i.cr, 4294967264            ; 5 uses
  %i.db = getelementptr i8, ptr %i.cl, i64 %n.vec51
  %i.dc = getelementptr i8, ptr %i.cz, i64 %n.vec51
  %i.dd = and i64 %i.cr, 31
  br label %vector.body52

vector.body52:                                    ; preds = %vector.ph50, %vector.body52
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.cl, i64 %index53 ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.cz, i64 %index53 ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load56 = load <16 x i8>, ptr %next.gep54, align 1, !tbaa !37
  %wide.load57 = load <16 x i8>, ptr %i.de, align 1, !tbaa !37
  %i.df = getelementptr i8, ptr %next.gep55, i64 16
  store <16 x i8> %wide.load56, ptr %next.gep55, align 1, !tbaa !37
  store <16 x i8> %wide.load57, ptr %i.df, align 1, !tbaa !37
  %index.next58 = add nuw i64 %index53, 32        ; 2 uses
  %i.dg = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.dg, label %middle.block59, label %vector.body52, !llvm.loop !849

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec51, %i.cr
  br i1 %cmp.n60, label %.loopexit.i.i80, label %vec.epilog.iter.check62

vec.epilog.iter.check62:                          ; preds = %middle.block59
  %min.epilog.iters.check64 = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check64, label %.lr.ph.i.i.i.i.i75.preheader, label %vec.epilog.ph65, !prof !46

vec.epilog.ph65:                                  ; preds = %vector.main.loop.iter.check48, %vec.epilog.iter.check62
  %vec.epilog.resume.val66 = phi i64 [ %n.vec51, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check48 ]
  %n.vec67 = and i64 %i.cr, 4294967292            ; 4 uses
  %i.dh = getelementptr i8, ptr %i.cl, i64 %n.vec67
  %i.di = getelementptr i8, ptr %i.cz, i64 %n.vec67
  %i.dj = and i64 %i.cr, 3
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph65
  %index69 = phi i64 [ %vec.epilog.resume.val66, %vec.epilog.ph65 ], [ %index.next73, %vec.epilog.vector.body68 ] ; 3 uses
  %next.gep70 = getelementptr i8, ptr %i.cl, i64 %index69
  %next.gep71 = getelementptr i8, ptr %i.cz, i64 %index69
  %wide.load72 = load <4 x i8>, ptr %next.gep70, align 1, !tbaa !37
  store <4 x i8> %wide.load72, ptr %next.gep71, align 1, !tbaa !37
  %index.next73 = add nuw i64 %index69, 4         ; 2 uses
  %i.dk = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.dk, label %vec.epilog.middle.block74, label %vec.epilog.vector.body68, !llvm.loop !850

vec.epilog.middle.block74:                        ; preds = %vec.epilog.vector.body68
  %cmp.n75 = icmp eq i64 %n.vec67, %i.cr
  br i1 %cmp.n75, label %.loopexit.i.i80, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %iter.check61, %vector.memcheck46, %vec.epilog.iter.check62, %vec.epilog.middle.block74
  %.010.i.i.i.i.i76.ph = phi ptr [ %i.cl, %iter.check61 ], [ %i.cl, %vector.memcheck46 ], [ %i.db, %vec.epilog.iter.check62 ], [ %i.dh, %vec.epilog.middle.block74 ] ; 2 uses
  %.059.i.i.i.i.i77.ph = phi ptr [ %i.cz, %iter.check61 ], [ %i.cz, %vector.memcheck46 ], [ %i.dc, %vec.epilog.iter.check62 ], [ %i.di, %vec.epilog.middle.block74 ] ; 2 uses
  %.068.i.i.i.i.i78.ph = phi i64 [ %i.cr, %iter.check61 ], [ %i.cr, %vector.memcheck46 ], [ %i.dd, %vec.epilog.iter.check62 ], [ %i.dj, %vec.epilog.middle.block74 ] ; 4 uses
  %i.dl = add nsw i64 %.068.i.i.i.i.i78.ph, -1
  %xtraiter145 = and i64 %.068.i.i.i.i.i78.ph, 7  ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i.i75.prol.loopexit, label %.lr.ph.i.i.i.i.i75.prol

.lr.ph.i.i.i.i.i75.prol:                          ; preds = %.lr.ph.i.i.i.i.i75.preheader, %.lr.ph.i.i.i.i.i75.prol
  %.010.i.i.i.i.i76.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i75.prol ], [ %.010.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader ] ; 2 uses
  %.059.i.i.i.i.i77.prol = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i75.prol ], [ %.059.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader ] ; 2 uses
  %.068.i.i.i.i.i78.prol = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i75.prol ], [ %.068.i.i.i.i.i78.ph, %.lr.ph.i.i.i.i.i75.preheader ]
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph.i.i.i.i.i75.prol ], [ 0, %.lr.ph.i.i.i.i.i75.preheader ]
  %i.dm = add nsw i64 %.068.i.i.i.i.i78.prol, -1  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76.prol, i64 1 ; 2 uses
  %i.do = load i8, ptr %.010.i.i.i.i.i76.prol, align 1, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77.prol, i64 1 ; 2 uses
  store i8 %i.do, ptr %.059.i.i.i.i.i77.prol, align 1, !tbaa !37
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i.i75.prol.loopexit, label %.lr.ph.i.i.i.i.i75.prol, !llvm.loop !851

.lr.ph.i.i.i.i.i75.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i75.prol, %.lr.ph.i.i.i.i.i75.preheader
  %.010.i.i.i.i.i76.unr = phi ptr [ %.010.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i75.prol ]
  %.059.i.i.i.i.i77.unr = phi ptr [ %.059.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.dp, %.lr.ph.i.i.i.i.i75.prol ]
  %.068.i.i.i.i.i78.unr = phi i64 [ %.068.i.i.i.i.i78.ph, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.dm, %.lr.ph.i.i.i.i.i75.prol ]
  %i.dq = icmp ult i64 %i.dl, 7
  br i1 %i.dq, label %.loopexit.i.i80, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.prol.loopexit, %.lr.ph.i.i.i.i.i75
  %.010.i.i.i.i.i76 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i75 ], [ %.010.i.i.i.i.i76.unr, %.lr.ph.i.i.i.i.i75.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i.i77 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i75 ], [ %.059.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i75.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i78 = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i75 ], [ %.068.i.i.i.i.i78.unr, %.lr.ph.i.i.i.i.i75.prol.loopexit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 1
  %i.ds = load i8, ptr %.010.i.i.i.i.i76, align 1, !tbaa !37
  %i.dt = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 1
  store i8 %i.ds, ptr %.059.i.i.i.i.i77, align 1, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 2
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 2
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 3
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 3
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 4
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 4
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !37
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 5
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 5
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 6
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 6
  store i8 %i.eh, ptr %i.ef, align 1, !tbaa !37
  %i.ej = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 7
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !37
  %i.el = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 7
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !37
  %i.em = add nsw i64 %.068.i.i.i.i.i78, -8       ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i76, i64 8
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i77, i64 8
  store i8 %i.eo, ptr %i.el, align 1, !tbaa !37
  %.not.i.i.i.i.i79.7 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i.i.i79.7, label %.loopexit.i.i80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !852

.loopexit.i.i80:                                  ; preds = %.lr.ph.i.i.i.i.i75.prol.loopexit, %.lr.ph.i.i.i.i.i75, %vec.epilog.middle.block74, %middle.block59
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  store i8 0, ptr %i.eq, align 1, !tbaa !37
  store ptr %i.cz, ptr %i.br, align 8, !tbaa !37
  store i64 %i.cr, ptr %i.bs, align 8, !tbaa !37
  %i.er = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.179, i64 noundef 4, ptr noundef nonnull %5) #21
  %.not.i5.i.i85 = icmp eq i32 %i.er, 0
  br i1 %.not.i5.i.i85, label %tg3json_object_set_take.exit.thread.i.i.i89, label %tg3__serialize_str.exit90

tg3json_object_set_take.exit.thread.i.i.i89:      ; preds = %.loopexit.i.i80
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  br label %tg3__serialize_str.exit90.thread177

tg3__serialize_str.exit90.thread177:              ; preds = %bb.g, %tg3json_object_set_take.exit.thread.i.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.thread

tg3__serialize_str.exit90:                        ; preds = %.loopexit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.pre211 = load ptr, ptr %i.bl, align 8, !tbaa !244
  br label %tg3__serialize_str.exit90.thread

tg3__serialize_str.exit90.thread:                 ; preds = %bb.f, %tg3__serialize_str.exit90
  %i.es = phi ptr [ %i.ci, %bb.f ], [ %.pre211, %tg3__serialize_str.exit90 ]
  %i.et = getelementptr inbounds nuw [144 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %12, ptr noundef nonnull %i.eu) #21
  %.not59 = icmp eq i32 %i.ev, 0
  br i1 %.not59, label %.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %tg3__serialize_str.exit90.thread
  %i.ew = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %11, ptr noundef nonnull @.str.85, i64 noundef 6, ptr noundef nonnull %12) #21
  %.not.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.thread, label %tg3__json_set_take.exit

tg3__json_set_take.exit.thread:                   ; preds = %.preheader.i.i.preheader
  call void @tg3json_value_free(ptr noundef nonnull %12) #21
  br label %.thread

tg3__json_set_take.exit:                          ; preds = %.preheader.i.i.preheader
  %i.ex = load ptr, ptr %i.bl, align 8, !tbaa !244
  %i.ey = getelementptr inbounds nuw [144 x i8], ptr %i.ex, i64 %indvars.iv
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fa = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %11, ptr noundef nonnull %i.ez) #21
  %.not61 = icmp eq i32 %i.fa, 0
  br i1 %.not61, label %.thread, label %bb.h

bb.h:                                             ; preds = %tg3__json_set_take.exit
  %i.fb = load i32, ptr %9, align 8, !tbaa !40
  %i.fc = icmp eq i32 %i.fb, 5
  br i1 %i.fc, label %bb.i, label %tg3__json_push_take.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.fd = load i64, ptr %i.bu, align 8, !tbaa !37 ; 5 uses
  %i.fe = add i64 %i.fd, 1                        ; 4 uses
  %.not.i.not.i.i = icmp eq i64 %i.fd, -1
  br i1 %.not.i.not.i.i, label %.tg3json__init_value.exit_crit_edge.i.i, label %bb.j

.tg3json__init_value.exit_crit_edge.i.i:          ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.bt, align 8, !tbaa !37
  br label %bb.q

bb.j:                                             ; preds = %bb.i
  %.not25.i.i.i = icmp eq i64 %i.fd, 0
  %spec.select.i.i.i = select i1 %.not25.i.i.i, i64 8, i64 %i.fd ; 3 uses
  %i.ff = icmp ult i64 %spec.select.i.i.i, %i.fe
  br i1 %i.ff, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.030.i.i.i = phi i64 [ %i.fh, %bb.k ], [ %spec.select.i.i.i, %bb.j ] ; 2 uses
  %i.fg = icmp slt i64 %.030.i.i.i, 0
  br i1 %i.fg, label %._crit_edge.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.fh = shl nuw i64 %.030.i.i.i, 1              ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.fe
  br i1 %i.fi, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %bb.k, %.lr.ph.i.i.i, %bb.j
  %.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.j ], [ %i.fe, %.lr.ph.i.i.i ], [ %i.fh, %bb.k ] ; 2 uses
  %i.fj = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.fj, label %tg3__json_push_take.exit.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !55 ; 10 uses
  %i.fl = ptrtoaddr ptr %i.fk to i64
  %i.fm = mul nuw i64 %.1.i.i.i, 24               ; 4 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.fk, null
  %i.fn = add nuw i64 %i.fm, 8
  %i.fo = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.fp = add i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp ugt i64 %i.fp, 524288              ; 2 uses
  br i1 %.not.i.i.i.i93, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %i.fq, label %tg3__json_push_take.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fr = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.fo ; 2 uses
  store i64 %i.fm, ptr %i.fr, align 8, !tbaa !30
  store i64 %i.fp, ptr @test_heap_used, align 8, !tbaa !30
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  br label %.loopexit.i.i.i

bb.o:                                             ; preds = %bb.l
  br i1 %i.fq, label %tg3__json_push_take.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ft = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !30
  %i.fv = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.fo ; 2 uses
  store i64 %i.fm, ptr %i.fv, align 8, !tbaa !30
  store i64 %i.fp, ptr @test_heap_used, align 8, !tbaa !30
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 12 uses
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fu, i64 %i.fm) ; 11 uses
  %.not27.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i.i, label %iter.check29

iter.check29:                                     ; preds = %bb.p
  %min.iters.check15 = icmp ult i64 %i.fx, 4
  br i1 %min.iters.check15, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck16

vector.memcheck16:                                ; preds = %iter.check29
  %16 = sub i64 %i.fo, %i.fl
  %17 = add i64 %16, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check17 = icmp ult i64 %17, 31
  br i1 %diff.check17, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check18

vector.main.loop.iter.check18:                    ; preds = %vector.memcheck16
  %min.iters.check19 = icmp ult i64 %i.fx, 32
  br i1 %min.iters.check19, label %vec.epilog.ph33, label %vector.ph20

vector.ph20:                                      ; preds = %vector.main.loop.iter.check18
  %i.fy = and i64 %i.fx, 28
  %n.vec21 = and i64 %i.fx, -32                   ; 4 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.ph20, %vector.body22
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next26, %vector.body22 ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index23 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load24 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !37
  %wide.load25 = load <16 x i8>, ptr %i.ga, align 1, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 %index23 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <16 x i8> %wide.load24, ptr %i.gb, align 1, !tbaa !37
  store <16 x i8> %wide.load25, ptr %i.gc, align 1, !tbaa !37
  %index.next26 = add nuw i64 %index23, 32        ; 2 uses
  %i.gd = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.gd, label %middle.block27, label %vector.body22, !llvm.loop !853

middle.block27:                                   ; preds = %vector.body22
  %cmp.n28 = icmp eq i64 %i.fx, %n.vec21
  br i1 %cmp.n28, label %.loopexit.i.i.i, label %vec.epilog.iter.check30

vec.epilog.iter.check30:                          ; preds = %middle.block27
  %min.epilog.iters.check32 = icmp eq i64 %i.fy, 0
  br i1 %min.epilog.iters.check32, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph33, !prof !46

vec.epilog.ph33:                                  ; preds = %vector.main.loop.iter.check18, %vec.epilog.iter.check30
  %vec.epilog.resume.val34 = phi i64 [ %n.vec21, %vec.epilog.iter.check30 ], [ 0, %vector.main.loop.iter.check18 ]
  %n.vec35 = and i64 %i.fx, -4                    ; 3 uses
  br label %vec.epilog.vector.body36

vec.epilog.vector.body36:                         ; preds = %vec.epilog.vector.body36, %vec.epilog.ph33
  %index37 = phi i64 [ %vec.epilog.resume.val34, %vec.epilog.ph33 ], [ %index.next39, %vec.epilog.vector.body36 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index37
  %wide.load38 = load <4 x i8>, ptr %i.ge, align 1, !tbaa !37
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %index37
  store <4 x i8> %wide.load38, ptr %i.gf, align 1, !tbaa !37
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.gg = icmp eq i64 %index.next39, %n.vec35
  br i1 %i.gg, label %vec.epilog.middle.block40, label %vec.epilog.vector.body36, !llvm.loop !854

vec.epilog.middle.block40:                        ; preds = %vec.epilog.vector.body36
  %cmp.n41 = icmp eq i64 %i.fx, %n.vec35
  br i1 %cmp.n41, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check29, %vector.memcheck16, %vec.epilog.iter.check30, %vec.epilog.middle.block40
  %.026.i.i.i.i.ph = phi i64 [ 0, %iter.check29 ], [ 0, %vector.memcheck16 ], [ %n.vec21, %vec.epilog.iter.check30 ], [ %n.vec35, %vec.epilog.middle.block40 ] ; 3 uses
  %xtraiter148 = and i64 %i.fx, 3                 ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.026.i.i.i.i.prol = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.prol ], [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.026.i.i.i.i.prol
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !37
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.026.i.i.i.i.prol
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !37
  %i.gk = add nuw i64 %.026.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !855

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.026.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.gk, %.lr.ph.i.i.i.i.prol ]
  %i.gl = sub i64 %.026.i.i.i.i.ph, %i.fx
  %i.gm = icmp ugt i64 %i.gl, -4
  br i1 %i.gm, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.026.i.i.i.i = phi i64 [ %i.hc, %.lr.ph.i.i.i.i ], [ %.026.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.026.i.i.i.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !37
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.026.i.i.i.i
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !37
  %i.gq = add nuw i64 %.026.i.i.i.i, 1            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !37
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gq
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !37
  %i.gu = add nuw i64 %.026.i.i.i.i, 2            ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !37
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gu
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !37
  %i.gy = add nuw i64 %.026.i.i.i.i, 3            ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !37
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gy
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !37
  %i.hc = add nuw i64 %.026.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.hc, %i.fx
  br i1 %exitcond.not.i.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !856

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block27, %vec.epilog.middle.block40, %bb.p, %bb.n
  %.018.i.ph.i.i.i = phi ptr [ %i.fs, %bb.n ], [ %i.fw, %bb.p ], [ %i.fw, %middle.block27 ], [ %i.fw, %vec.epilog.middle.block40 ], [ %i.fw, %.lr.ph.i.i.i.i ], [ %i.fw, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i, ptr %i.bt, align 8, !tbaa !55
  br label %bb.q

tg3__json_push_take.exit.thread:                  ; preds = %bb.h, %._crit_edge.i.i.i, %bb.m, %bb.o
  call void @tg3json_value_free(ptr noundef nonnull %11) #21
  br label %.thread

.thread:                                          ; preds = %tg3__serialize_str.exit90.thread, %tg3__json_set_take.exit, %tg3__json_set_int.exit72.thread, %tg3__serialize_str.exit90.thread177, %tg3__json_set_take.exit.thread, %tg3__json_push_take.exit.thread, %bb.e
  call void @tg3json_value_free(ptr noundef nonnull %12) #21
  call void @tg3json_value_free(ptr noundef nonnull %11) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ag

bb.q:                                             ; preds = %.tg3json__init_value.exit_crit_edge.i.i, %.loopexit.i.i.i
  %i.hd = phi ptr [ %.pre.i.i, %.tg3json__init_value.exit_crit_edge.i.i ], [ %.018.i.ph.i.i.i, %.loopexit.i.i.i ]
  store i64 %i.fe, ptr %i.bu, align 8, !tbaa !37
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hf = load i32, ptr %i.bn, align 8, !tbaa !245
  %i.hg = zext i32 %i.hf to i64
  %i.hh = icmp samesign ult i64 %indvars.iv.next, %i.hg
  br i1 %i.hh, label %bb.d, label %.preheader.i.i94.preheader, !llvm.loop !857

bb.r:                                             ; preds = %.preheader.i.i94.preheader
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  call void @tg3json_value_free(ptr noundef nonnull %9) #21
  br label %bb.ag

tg3__json_set_take.exit101:                       ; preds = %.preheader.i.i94.preheader, %bb.c, %tg3__serialize_str.exit.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !249
  %.not47 = icmp eq ptr %i.hj, null
  br i1 %.not47, label %tg3__json_set_take.exit165, label %bb.s

bb.s:                                             ; preds = %tg3__json_set_take.exit101
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !250
  %.not48 = icmp eq i32 %i.hl, 0
  br i1 %.not48, label %tg3__json_set_take.exit165, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 5, ptr %10, align 8, !tbaa !40
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %tg3json_object_set_take.exit.i.i107

.preheader.i.i158.preheader:                      ; preds = %bb.ae
  %i.hs = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, i64 noundef 8, ptr noundef nonnull %10) #21
  %.not.i162 = icmp eq i32 %i.hs, 0
  br i1 %.not.i162, label %bb.af, label %tg3__json_set_take.exit165

tg3json_object_set_take.exit.i.i107:              ; preds = %.lr.ph205, %bb.ae
  %indvars.iv208 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next209, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i32 6, ptr %13, align 8, !tbaa !40
  %i.ht = load ptr, ptr %i.hi, align 8, !tbaa !249
  %i.hu = getelementptr inbounds nuw [80 x i8], ptr %i.ht, i64 %indvars.iv208
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !247
  %i.hw = sext i32 %i.hv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !40
  store i64 %i.hw, ptr %i.hm, align 8, !tbaa !37
  %i.hx = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull @.str.180, i64 noundef 5, ptr noundef nonnull %4) #21
  %.not.i.i108 = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i108, label %tg3__json_set_int.exit111.thread, label %tg3json_object_set_take.exit.i.i115

tg3__json_set_int.exit111.thread:                 ; preds = %tg3json_object_set_take.exit.i.i107
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.loopexit

tg3json_object_set_take.exit.i.i115:              ; preds = %tg3json_object_set_take.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.hy = load ptr, ptr %i.hi, align 8, !tbaa !249
  %i.hz = getelementptr inbounds nuw [80 x i8], ptr %i.hy, i64 %indvars.iv208
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !248
  %i.ic = sext i32 %i.ib to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !40
  store i64 %i.ic, ptr %i.hn, align 8, !tbaa !37
  %i.id = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull @.str.182, i64 noundef 6, ptr noundef nonnull %3) #21
  %.not.i.i116 = icmp eq i32 %i.id, 0
  br i1 %.not.i.i116, label %tg3__json_set_int.exit119.thread, label %bb.t

tg3__json_set_int.exit119.thread:                 ; preds = %tg3json_object_set_take.exit.i.i115
  call void @tg3json_value_free(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.loopexit

bb.t:                                             ; preds = %tg3json_object_set_take.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ie = load ptr, ptr %i.hi, align 8, !tbaa !249 ; 2 uses
  %i.if = getelementptr inbounds nuw [80 x i8], ptr %i.ie, i64 %indvars.iv208 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8            ; 8 uses
  %i.ii = ptrtoaddr ptr %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ik = load i32, ptr %i.ij, align 8            ; 4 uses
  %i.il = icmp eq ptr %i.ih, null
  %i.im = icmp eq i32 %i.ik, 0
  %or.cond.i120 = select i1 %i.il, i1 true, i1 %i.im
  br i1 %or.cond.i120, label %tg3__serialize_str.exit137.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.in = zext i32 %i.ik to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i64 4, ptr %2, align 8
  %i.io = and i64 %i.in, 4294967288
  %i.ip = add nuw nsw i64 %i.io, 16
  %i.iq = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 3 uses
  %i.ir = add i64 %i.ip, %i.iq                    ; 2 uses
  %i.is = icmp ugt i64 %i.ir, 524288
  br i1 %i.is, label %tg3__serialize_str.exit137.thread193, label %iter.check127

iter.check127:                                    ; preds = %bb.u
  %i.it = add nuw nsw i64 %i.in, 1
  %i.iu = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.iq ; 2 uses
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !30
  store i64 %i.ir, ptr @test_heap_used, align 8, !tbaa !30
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 8 uses
  %min.iters.check111 = icmp ult i32 %i.ik, 4
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i122.preheader, label %vector.memcheck112

vector.memcheck112:                               ; preds = %iter.check127
  %18 = sub i64 %i.iq, %i.ii
  %19 = add i64 %18, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check113 = icmp ult i64 %19, 31
  br i1 %diff.check113, label %.lr.ph.i.i.i.i.i122.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %vector.memcheck112
  %min.iters.check115 = icmp ult i32 %i.ik, 32
  br i1 %min.iters.check115, label %vec.epilog.ph131, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.iw = and i64 %i.in, 28
  %n.vec117 = and i64 %i.in, 4294967264           ; 5 uses
  %i.ix = getelementptr i8, ptr %i.ih, i64 %n.vec117
  %i.iy = getelementptr i8, ptr %i.iv, i64 %n.vec117
  %i.iz = and i64 %i.in, 31
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %i.ih, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.iv, i64 %index119 ; 2 uses
  %i.ja = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep120, align 1, !tbaa !37
  %wide.load123 = load <16 x i8>, ptr %i.ja, align 1, !tbaa !37
  %i.jb = getelementptr i8, ptr %next.gep121, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep121, align 1, !tbaa !37
  store <16 x i8> %wide.load123, ptr %i.jb, align 1, !tbaa !37
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.jc = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.jc, label %middle.block125, label %vector.body118, !llvm.loop !858

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %n.vec117, %i.in
  br i1 %cmp.n126, label %.loopexit.i.i127, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block125
  %min.epilog.iters.check130 = icmp eq i64 %i.iw, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph.i.i.i.i.i122.preheader, label %vec.epilog.ph131, !prof !46

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check128
  %vec.epilog.resume.val132 = phi i64 [ %n.vec117, %vec.epilog.iter.check128 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec133 = and i64 %i.in, 4294967292           ; 4 uses
  %i.jd = getelementptr i8, ptr %i.ih, i64 %n.vec133
  %i.je = getelementptr i8, ptr %i.iv, i64 %n.vec133
  %i.jf = and i64 %i.in, 3
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val132, %vec.epilog.ph131 ], [ %index.next139, %vec.epilog.vector.body134 ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %i.ih, i64 %index135
  %next.gep137 = getelementptr i8, ptr %i.iv, i64 %index135
  %wide.load138 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !37
  store <4 x i8> %wide.load138, ptr %next.gep137, align 1, !tbaa !37
  %index.next139 = add nuw i64 %index135, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.jg, label %vec.epilog.middle.block140, label %vec.epilog.vector.body134, !llvm.loop !859

vec.epilog.middle.block140:                       ; preds = %vec.epilog.vector.body134
  %cmp.n141 = icmp eq i64 %n.vec133, %i.in
  br i1 %cmp.n141, label %.loopexit.i.i127, label %.lr.ph.i.i.i.i.i122.preheader

.lr.ph.i.i.i.i.i122.preheader:                    ; preds = %iter.check127, %vector.memcheck112, %vec.epilog.iter.check128, %vec.epilog.middle.block140
  %.010.i.i.i.i.i123.ph = phi ptr [ %i.ih, %iter.check127 ], [ %i.ih, %vector.memcheck112 ], [ %i.ix, %vec.epilog.iter.check128 ], [ %i.jd, %vec.epilog.middle.block140 ] ; 2 uses
  %.059.i.i.i.i.i124.ph = phi ptr [ %i.iv, %iter.check127 ], [ %i.iv, %vector.memcheck112 ], [ %i.iy, %vec.epilog.iter.check128 ], [ %i.je, %vec.epilog.middle.block140 ] ; 2 uses
  %.068.i.i.i.i.i125.ph = phi i64 [ %i.in, %iter.check127 ], [ %i.in, %vector.memcheck112 ], [ %i.iz, %vec.epilog.iter.check128 ], [ %i.jf, %vec.epilog.middle.block140 ] ; 4 uses
  %i.jh = add nsw i64 %.068.i.i.i.i.i125.ph, -1
  %xtraiter151 = and i64 %.068.i.i.i.i.i125.ph, 7 ; 2 uses
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %.lr.ph.i.i.i.i.i122.prol.loopexit, label %.lr.ph.i.i.i.i.i122.prol

.lr.ph.i.i.i.i.i122.prol:                         ; preds = %.lr.ph.i.i.i.i.i122.preheader, %.lr.ph.i.i.i.i.i122.prol
  %.010.i.i.i.i.i123.prol = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i122.prol ], [ %.010.i.i.i.i.i123.ph, %.lr.ph.i.i.i.i.i122.preheader ] ; 2 uses
  %.059.i.i.i.i.i124.prol = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i122.prol ], [ %.059.i.i.i.i.i124.ph, %.lr.ph.i.i.i.i.i122.preheader ] ; 2 uses
  %.068.i.i.i.i.i125.prol = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i122.prol ], [ %.068.i.i.i.i.i125.ph, %.lr.ph.i.i.i.i.i122.preheader ]
  %prol.iter153 = phi i64 [ %prol.iter153.next, %.lr.ph.i.i.i.i.i122.prol ], [ 0, %.lr.ph.i.i.i.i.i122.preheader ]
  %i.ji = add nsw i64 %.068.i.i.i.i.i125.prol, -1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123.prol, i64 1 ; 2 uses
  %i.jk = load i8, ptr %.010.i.i.i.i.i123.prol, align 1, !tbaa !37
  %i.jl = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124.prol, i64 1 ; 2 uses
  store i8 %i.jk, ptr %.059.i.i.i.i.i124.prol, align 1, !tbaa !37
  %prol.iter153.next = add i64 %prol.iter153, 1   ; 2 uses
  %prol.iter153.cmp.not = icmp eq i64 %prol.iter153.next, %xtraiter151
  br i1 %prol.iter153.cmp.not, label %.lr.ph.i.i.i.i.i122.prol.loopexit, label %.lr.ph.i.i.i.i.i122.prol, !llvm.loop !860

.lr.ph.i.i.i.i.i122.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i122.prol, %.lr.ph.i.i.i.i.i122.preheader
  %.010.i.i.i.i.i123.unr = phi ptr [ %.010.i.i.i.i.i123.ph, %.lr.ph.i.i.i.i.i122.preheader ], [ %i.jj, %.lr.ph.i.i.i.i.i122.prol ]
  %.059.i.i.i.i.i124.unr = phi ptr [ %.059.i.i.i.i.i124.ph, %.lr.ph.i.i.i.i.i122.preheader ], [ %i.jl, %.lr.ph.i.i.i.i.i122.prol ]
  %.068.i.i.i.i.i125.unr = phi i64 [ %.068.i.i.i.i.i125.ph, %.lr.ph.i.i.i.i.i122.preheader ], [ %i.ji, %.lr.ph.i.i.i.i.i122.prol ]
  %i.jm = icmp ult i64 %i.jh, 7
  br i1 %i.jm, label %.loopexit.i.i127, label %.lr.ph.i.i.i.i.i122

.lr.ph.i.i.i.i.i122:                              ; preds = %.lr.ph.i.i.i.i.i122.prol.loopexit, %.lr.ph.i.i.i.i.i122
  %.010.i.i.i.i.i123 = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i122 ], [ %.010.i.i.i.i.i123.unr, %.lr.ph.i.i.i.i.i122.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i.i124 = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i122 ], [ %.059.i.i.i.i.i124.unr, %.lr.ph.i.i.i.i.i122.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i125 = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i122 ], [ %.068.i.i.i.i.i125.unr, %.lr.ph.i.i.i.i.i122.prol.loopexit ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 1
  %i.jo = load i8, ptr %.010.i.i.i.i.i123, align 1, !tbaa !37
  %i.jp = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 1
  store i8 %i.jo, ptr %.059.i.i.i.i.i124, align 1, !tbaa !37
  %i.jq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 2
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !37
  %i.js = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 2
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !37
  %i.jt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 3
  %i.ju = load i8, ptr %i.jq, align 1, !tbaa !37
  %i.jv = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 3
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !37
  %i.jw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 4
  %i.jx = load i8, ptr %i.jt, align 1, !tbaa !37
  %i.jy = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 4
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !37
  %i.jz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 5
  %i.ka = load i8, ptr %i.jw, align 1, !tbaa !37
  %i.kb = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 5
  store i8 %i.ka, ptr %i.jy, align 1, !tbaa !37
  %i.kc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 6
  %i.kd = load i8, ptr %i.jz, align 1, !tbaa !37
  %i.ke = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 6
  store i8 %i.kd, ptr %i.kb, align 1, !tbaa !37
  %i.kf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 7
  %i.kg = load i8, ptr %i.kc, align 1, !tbaa !37
  %i.kh = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 7
  store i8 %i.kg, ptr %i.ke, align 1, !tbaa !37
  %i.ki = add nsw i64 %.068.i.i.i.i.i125, -8      ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i123, i64 8
  %i.kk = load i8, ptr %i.kf, align 1, !tbaa !37
  %i.kl = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i124, i64 8
  store i8 %i.kk, ptr %i.kh, align 1, !tbaa !37
  %.not.i.i.i.i.i126.7 = icmp eq i64 %i.ki, 0
  br i1 %.not.i.i.i.i.i126.7, label %.loopexit.i.i127, label %.lr.ph.i.i.i.i.i122, !llvm.loop !861

.loopexit.i.i127:                                 ; preds = %.lr.ph.i.i.i.i.i122.prol.loopexit, %.lr.ph.i.i.i.i.i122, %vec.epilog.middle.block140, %middle.block125
  %i.km = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.in
  store i8 0, ptr %i.km, align 1, !tbaa !37
  store ptr %i.iv, ptr %i.ho, align 8, !tbaa !37
  store i64 %i.in, ptr %i.hp, align 8, !tbaa !37
  %i.kn = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull @.str.183, i64 noundef 13, ptr noundef nonnull %2) #21
  %.not.i5.i.i132 = icmp eq i32 %i.kn, 0
  br i1 %.not.i5.i.i132, label %tg3json_object_set_take.exit.thread.i.i.i136, label %tg3__serialize_str.exit137

tg3json_object_set_take.exit.thread.i.i.i136:     ; preds = %.loopexit.i.i127
  call void @tg3json_value_free(ptr noundef nonnull %2) #21
  br label %tg3__serialize_str.exit137.thread193

tg3__serialize_str.exit137.thread193:             ; preds = %bb.u, %tg3json_object_set_take.exit.thread.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.loopexit

tg3__serialize_str.exit137:                       ; preds = %.loopexit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre212 = load ptr, ptr %i.hi, align 8, !tbaa !249
  br label %tg3__serialize_str.exit137.thread

tg3__serialize_str.exit137.thread:                ; preds = %bb.t, %tg3__serialize_str.exit137
  %i.ko = phi ptr [ %i.ie, %bb.t ], [ %.pre212, %tg3__serialize_str.exit137 ]
  %i.kp = getelementptr inbounds nuw [80 x i8], ptr %i.ko, i64 %indvars.iv208
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %13, ptr noundef nonnull %i.kq) #21
  %.not54 = icmp eq i32 %i.kr, 0
  br i1 %.not54, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %tg3__serialize_str.exit137.thread
  %i.ks = load i32, ptr %10, align 8, !tbaa !40
  %i.kt = icmp eq i32 %i.ks, 5
  br i1 %i.kt, label %bb.w, label %tg3__json_push_take.exit157.thread

bb.w:                                             ; preds = %bb.v
  %i.ku = load i64, ptr %i.hr, align 8, !tbaa !37 ; 5 uses
  %i.kv = add i64 %i.ku, 1                        ; 4 uses
  %.not.i.not.i.i139 = icmp eq i64 %i.ku, -1
  br i1 %.not.i.not.i.i139, label %.tg3json__init_value.exit_crit_edge.i.i155, label %bb.x

.tg3json__init_value.exit_crit_edge.i.i155:       ; preds = %bb.w
  %.pre.i.i156 = load ptr, ptr %i.hq, align 8, !tbaa !37
  br label %bb.ae

bb.x:                                             ; preds = %bb.w
  %.not25.i.i.i140 = icmp eq i64 %i.ku, 0
  %spec.select.i.i.i141 = select i1 %.not25.i.i.i140, i64 8, i64 %i.ku ; 3 uses
  %i.kw = icmp ult i64 %spec.select.i.i.i141, %i.kv
  br i1 %i.kw, label %.lr.ph.i.i.i153, label %._crit_edge.i.i.i142

.lr.ph.i.i.i153:                                  ; preds = %bb.x, %bb.y
  %.030.i.i.i154 = phi i64 [ %i.ky, %bb.y ], [ %spec.select.i.i.i141, %bb.x ] ; 2 uses
  %i.kx = icmp slt i64 %.030.i.i.i154, 0
  br i1 %i.kx, label %._crit_edge.i.i.i142, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i153
  %i.ky = shl nuw i64 %.030.i.i.i154, 1           ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %i.kv
  br i1 %i.kz, label %.lr.ph.i.i.i153, label %._crit_edge.i.i.i142, !llvm.loop !2

._crit_edge.i.i.i142:                             ; preds = %bb.y, %.lr.ph.i.i.i153, %bb.x
  %.1.i.i.i143 = phi i64 [ %spec.select.i.i.i141, %bb.x ], [ %i.kv, %.lr.ph.i.i.i153 ], [ %i.ky, %bb.y ] ; 2 uses
  %i.la = icmp ugt i64 %.1.i.i.i143, 768614336404564650
  br i1 %i.la, label %tg3__json_push_take.exit157.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i142
  %i.lb = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 10 uses
  %i.lc = ptrtoaddr ptr %i.lb to i64
  %i.ld = mul nuw i64 %.1.i.i.i143, 24            ; 4 uses
  %.not.i.i.i.i144 = icmp eq ptr %i.lb, null
  %i.le = add nuw i64 %i.ld, 8
  %i.lf = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.lg = add i64 %i.le, %i.lf                    ; 3 uses
  %i.lh = icmp ugt i64 %i.lg, 524288              ; 2 uses
  br i1 %.not.i.i.i.i144, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  br i1 %i.lh, label %tg3__json_push_take.exit157.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.li = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.lf ; 2 uses
  store i64 %i.ld, ptr %i.li, align 8, !tbaa !30
  store i64 %i.lg, ptr @test_heap_used, align 8, !tbaa !30
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  br label %.loopexit.i.i.i149

bb.ac:                                            ; preds = %bb.z
  br i1 %i.lh, label %tg3__json_push_take.exit157.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lk = getelementptr inbounds i8, ptr %i.lb, i64 -8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !30
  %i.lm = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.lf ; 2 uses
  store i64 %i.ld, ptr %i.lm, align 8, !tbaa !30
  store i64 %i.lg, ptr @test_heap_used, align 8, !tbaa !30
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 12 uses
  %i.lo = call i64 @llvm.umin.i64(i64 %i.ll, i64 %i.ld) ; 11 uses
  %.not27.i.i.i.i145 = icmp eq i64 %i.lo, 0
  br i1 %.not27.i.i.i.i145, label %.loopexit.i.i.i149, label %iter.check95

iter.check95:                                     ; preds = %bb.ad
  %min.iters.check81 = icmp ult i64 %i.lo, 4
  br i1 %min.iters.check81, label %.lr.ph.i.i.i.i146.preheader, label %vector.memcheck82

vector.memcheck82:                                ; preds = %iter.check95
  %20 = sub i64 %i.lf, %i.lc
  %21 = add i64 %20, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check83 = icmp ult i64 %21, 31
  br i1 %diff.check83, label %.lr.ph.i.i.i.i146.preheader, label %vector.main.loop.iter.check84

vector.main.loop.iter.check84:                    ; preds = %vector.memcheck82
  %min.iters.check85 = icmp ult i64 %i.lo, 32
  br i1 %min.iters.check85, label %vec.epilog.ph99, label %vector.ph86

vector.ph86:                                      ; preds = %vector.main.loop.iter.check84
  %i.lp = and i64 %i.lo, 28
  %n.vec87 = and i64 %i.lo, -32                   ; 4 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.ph86, %vector.body88
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 %index89 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load90 = load <16 x i8>, ptr %i.lq, align 1, !tbaa !37
  %wide.load91 = load <16 x i8>, ptr %i.lr, align 1, !tbaa !37
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 %index89 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <16 x i8> %wide.load90, ptr %i.ls, align 1, !tbaa !37
  store <16 x i8> %wide.load91, ptr %i.lt, align 1, !tbaa !37
  %index.next92 = add nuw i64 %index89, 32        ; 2 uses
  %i.lu = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.lu, label %middle.block93, label %vector.body88, !llvm.loop !862

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %i.lo, %n.vec87
  br i1 %cmp.n94, label %.loopexit.i.i.i149, label %vec.epilog.iter.check96

vec.epilog.iter.check96:                          ; preds = %middle.block93
  %min.epilog.iters.check98 = icmp eq i64 %i.lp, 0
  br i1 %min.epilog.iters.check98, label %.lr.ph.i.i.i.i146.preheader, label %vec.epilog.ph99, !prof !46

vec.epilog.ph99:                                  ; preds = %vector.main.loop.iter.check84, %vec.epilog.iter.check96
  %vec.epilog.resume.val100 = phi i64 [ %n.vec87, %vec.epilog.iter.check96 ], [ 0, %vector.main.loop.iter.check84 ]
  %n.vec101 = and i64 %i.lo, -4                   ; 3 uses
  br label %vec.epilog.vector.body102

vec.epilog.vector.body102:                        ; preds = %vec.epilog.vector.body102, %vec.epilog.ph99
  %index103 = phi i64 [ %vec.epilog.resume.val100, %vec.epilog.ph99 ], [ %index.next105, %vec.epilog.vector.body102 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lb, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.lv, align 1, !tbaa !37
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ln, i64 %index103
  store <4 x i8> %wide.load104, ptr %i.lw, align 1, !tbaa !37
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.lx, label %vec.epilog.middle.block106, label %vec.epilog.vector.body102, !llvm.loop !863

vec.epilog.middle.block106:                       ; preds = %vec.epilog.vector.body102
  %cmp.n107 = icmp eq i64 %i.lo, %n.vec101
  br i1 %cmp.n107, label %.loopexit.i.i.i149, label %.lr.ph.i.i.i.i146.preheader

.lr.ph.i.i.i.i146.preheader:                      ; preds = %iter.check95, %vector.memcheck82, %vec.epilog.iter.check96, %vec.epilog.middle.block106
  %.026.i.i.i.i147.ph = phi i64 [ 0, %iter.check95 ], [ 0, %vector.memcheck82 ], [ %n.vec87, %vec.epilog.iter.check96 ], [ %n.vec101, %vec.epilog.middle.block106 ] ; 3 uses
  %xtraiter154 = and i64 %i.lo, 3                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph.i.i.i.i146.prol.loopexit, label %.lr.ph.i.i.i.i146.prol

.lr.ph.i.i.i.i146.prol:                           ; preds = %.lr.ph.i.i.i.i146.preheader, %.lr.ph.i.i.i.i146.prol
  %.026.i.i.i.i147.prol = phi i64 [ %i.mb, %.lr.ph.i.i.i.i146.prol ], [ %.026.i.i.i.i147.ph, %.lr.ph.i.i.i.i146.preheader ] ; 3 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph.i.i.i.i146.prol ], [ 0, %.lr.ph.i.i.i.i146.preheader ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.026.i.i.i.i147.prol
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !37
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.026.i.i.i.i147.prol
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !37
  %i.mb = add nuw i64 %.026.i.i.i.i147.prol, 1    ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph.i.i.i.i146.prol.loopexit, label %.lr.ph.i.i.i.i146.prol, !llvm.loop !864

.lr.ph.i.i.i.i146.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i146.prol, %.lr.ph.i.i.i.i146.preheader
  %.026.i.i.i.i147.unr = phi i64 [ %.026.i.i.i.i147.ph, %.lr.ph.i.i.i.i146.preheader ], [ %i.mb, %.lr.ph.i.i.i.i146.prol ]
  %i.mc = sub i64 %.026.i.i.i.i147.ph, %i.lo
  %i.md = icmp ugt i64 %i.mc, -4
  br i1 %i.md, label %.loopexit.i.i.i149, label %.lr.ph.i.i.i.i146

.lr.ph.i.i.i.i146:                                ; preds = %.lr.ph.i.i.i.i146.prol.loopexit, %.lr.ph.i.i.i.i146
  %.026.i.i.i.i147 = phi i64 [ %i.mt, %.lr.ph.i.i.i.i146 ], [ %.026.i.i.i.i147.unr, %.lr.ph.i.i.i.i146.prol.loopexit ] ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.026.i.i.i.i147
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !37
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.026.i.i.i.i147
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !37
  %i.mh = add nuw i64 %.026.i.i.i.i147, 1         ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.mh
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !37
  %i.ml = add nuw i64 %.026.i.i.i.i147, 2         ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !37
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ml
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !37
  %i.mp = add nuw i64 %.026.i.i.i.i147, 3         ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !37
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.mp
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !37
  %i.mt = add nuw i64 %.026.i.i.i.i147, 4         ; 2 uses
  %exitcond.not.i.i.i.i148.3 = icmp eq i64 %i.mt, %i.lo
  br i1 %exitcond.not.i.i.i.i148.3, label %.loopexit.i.i.i149, label %.lr.ph.i.i.i.i146, !llvm.loop !865

.loopexit.i.i.i149:                               ; preds = %.lr.ph.i.i.i.i146.prol.loopexit, %.lr.ph.i.i.i.i146, %middle.block93, %vec.epilog.middle.block106, %bb.ad, %bb.ab
  %.018.i.ph.i.i.i150 = phi ptr [ %i.lj, %bb.ab ], [ %i.ln, %bb.ad ], [ %i.ln, %middle.block93 ], [ %i.ln, %vec.epilog.middle.block106 ], [ %i.ln, %.lr.ph.i.i.i.i146 ], [ %i.ln, %.lr.ph.i.i.i.i146.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i150, ptr %i.hq, align 8, !tbaa !55
  br label %bb.ae

tg3__json_push_take.exit157.thread:               ; preds = %bb.v, %._crit_edge.i.i.i142, %bb.aa, %bb.ac
  call void @tg3json_value_free(ptr noundef nonnull %13) #21
  br label %.loopexit

.loopexit:                                        ; preds = %tg3__serialize_str.exit137.thread, %tg3__json_set_int.exit111.thread, %tg3__json_set_int.exit119.thread, %tg3__serialize_str.exit137.thread193, %tg3__json_push_take.exit157.thread
  call void @tg3json_value_free(ptr noundef nonnull %13) #21
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.ag

bb.ae:                                            ; preds = %.loopexit.i.i.i149, %.tg3json__init_value.exit_crit_edge.i.i155
  %i.mu = phi ptr [ %.pre.i.i156, %.tg3json__init_value.exit_crit_edge.i.i155 ], [ %.018.i.ph.i.i.i150, %.loopexit.i.i.i149 ]
  store i64 %i.kv, ptr %i.hr, align 8, !tbaa !37
  %i.mv = getelementptr inbounds nuw [24 x i8], ptr %i.mu, i64 %i.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.mw = load i32, ptr %i.hk, align 8, !tbaa !250
  %i.mx = zext i32 %i.mw to i64
  %i.my = icmp samesign ult i64 %indvars.iv.next209, %i.mx
  br i1 %i.my, label %tg3json_object_set_take.exit.i.i107, label %.preheader.i.i158.preheader, !llvm.loop !866

bb.af:                                            ; preds = %.preheader.i.i158.preheader
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  call void @tg3json_value_free(ptr noundef nonnull %10) #21
  br label %bb.ag

tg3__json_set_take.exit165:                       ; preds = %.preheader.i.i158.preheader, %bb.s, %tg3__json_set_take.exit101
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.na = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %1, ptr noundef nonnull %i.mz) #21
  %.not50 = icmp eq i32 %i.na, 0
  br i1 %.not50, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit, %.thread, %tg3__serialize_str.exit.thread168, %tg3__json_set_take.exit165, %bb.af, %bb.r
  call void @tg3json_value_free(ptr noundef nonnull %1) #21
  br label %bb.ah

bb.ah:                                            ; preds = %tg3__json_set_take.exit165, %bb.ag
  %.042 = phi i32 [ 0, %bb.ag ], [ 1, %tg3__json_set_take.exit165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret i32 %.042
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 81) i32 @tg3_writer_add_skin(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call fastcc i32 @tg3__serialize_skin(ptr noundef nonnull %1, ptr noundef %2) #21
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = call fastcc i32 @tg3__writer_add_item(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef %2) #21
  call void @tg3json_value_free(ptr noundef nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.b, %bb.c ], [ 80, %bb.a ], [ 50, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_skin(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(address_is_null) initializes((0, 24)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 6, ptr %1, align 8, !tbaa !40
  %i.a = load ptr, ptr %0, align 8                ; 8 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq ptr %i.a, null
  %i.f = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %tg3__serialize_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64                     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 4, ptr %4, align 8
  %i.h = and i64 %i.g, 4294967288
  %i.i = add nuw nsw i64 %i.h, 16
  %i.j = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 3 uses
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp ugt i64 %i.k, 524288
end_hunk_8
begin_hunk_9_@tg3__json_to_value:tg3__memset.exit
  %spec.select.i.i66 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 range(i64 0, -7) %i.cb) ; 3 uses
  %i.cr = icmp ugt i64 %spec.select.i.i66, %i.cf
  %or.cond.i.i67 = select i1 %.not.i58, i1 %i.cr, i1 false
  br i1 %or.cond.i.i67, label %tg3__arena_alloc.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !154
  %i.cu = add i64 %spec.select.i.i66, 32          ; 3 uses
  %i.cv = add i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !135
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %tg3__arena_alloc.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !155
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !156
  %i.dd = tail call ptr %i.da(i64 noundef %i.cu, ptr noundef %i.dc) #22, !inline_history !10 ; 8 uses
  %.not37.i.i68 = icmp eq ptr %i.dd, null
  br i1 %.not37.i.i68, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit72.thread

tg3__arena_alloc.exit72.thread:                   ; preds = %bb.u
  store ptr null, ptr %i.dd, align 8, !tbaa !157
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.df, align 8, !tbaa !158
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 %spec.select.i.i66, ptr %i.dg, align 8, !tbaa !153
  %i.dh = load i64, ptr %i.cs, align 8, !tbaa !154
  %i.di = add i64 %i.dh, %i.cu
  store i64 %i.di, ptr %i.cs, align 8, !tbaa !154
  %i.dj = load ptr, ptr %i.ch, align 8, !tbaa !150 ; 2 uses
  %.not38.i.i70 = icmp eq ptr %i.dj, null
  %..i.i71 = select i1 %.not38.i.i70, ptr %i.ca, ptr %i.dj
  store ptr %i.dd, ptr %..i.i71, align 8, !tbaa !159
  store ptr %i.dd, ptr %i.ch, align 8, !tbaa !150
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %i.cb, ptr %i.dk, align 8, !tbaa !152
  br label %.preheader80

tg3__arena_alloc.exit72:                          ; preds = %bb.r
  %.phi.trans.insert.i62 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.pre.i63 = load ptr, ptr %.phi.trans.insert.i62, align 8, !tbaa !158 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre.i63, i64 %i.ck
  %i.dn = add i64 %i.ck, %i.cb
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !152
  %.not51 = icmp eq ptr %.pre.i63, null
  br i1 %.not51, label %tg3__arena_alloc.exit.thread, label %.preheader80

.preheader80:                                     ; preds = %tg3__arena_alloc.exit72.thread, %tg3__arena_alloc.exit72
  %i.do = phi ptr [ %i.de, %tg3__arena_alloc.exit72.thread ], [ %i.dm, %tg3__arena_alloc.exit72 ] ; 2 uses
  %i.dp = load i64, ptr %i.by, align 8, !tbaa !37
  %.not87 = icmp eq i64 %i.dp, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader80, %.lr.ph
  %.182 = phi i64 [ %i.eg, %.lr.ph ], [ 0, %.preheader80 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [96 x i8], ptr %i.do, i64 %.182 ; 3 uses
  %i.dr = load ptr, ptr %1, align 8, !tbaa !144
  %i.ds = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.182 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !53 ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i64 %i.dw, 4294967295
  %i.dz = tail call fastcc ptr @tg3__arena_strdup(ptr noundef %i.dr, ptr noundef readonly %i.du, i64 noundef %i.dy) #21 ; 2 uses
  %.not.i73 = icmp eq ptr %i.dz, null
  %i.ea = select i1 %.not.i73, i32 0, i32 %i.dx
  store ptr %i.dz, ptr %i.dq, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %i.ea, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ec = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %.182
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !54
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %1, ptr noundef %i.ef) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.eb, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !300
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.eg = add nuw i64 %.182, 1                    ; 2 uses
  %i.eh = load i64, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !997

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ej = trunc i64 %i.eh to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader80
  %.lcssa81 = phi i32 [ 0, %.preheader80 ], [ %i.ej, %._crit_edge.loopexit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.do, ptr %i.ek, align 8, !tbaa !309
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.lcssa81, ptr %i.el, align 8, !tbaa !310
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.u, %bb.s, %bb.t, %bb.o, %bb.p, %bb.m, %bb.k, %bb.l, %bb.g, %bb.h, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.n, %._crit_edge85, %tg3__arena_alloc.exit, %._crit_edge, %tg3__arena_alloc.exit72, %tg3__memset.exit
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__json_set_int(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.c, %.preheader.i.i ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !1

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.d = ptrtoint ptr %.0.i.i.i to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.f, ptr noundef nonnull %3) #21
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %tg3json_object_set_take.exit.thread.i, label %tg3__json_set_take.exit

tg3json_object_set_take.exit.thread.i:            ; preds = %tg3json_object_set_take.exit.i, %bb.a
  call void @tg3json_value_free(ptr noundef nonnull %3) #21
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.i, %tg3json_object_set_take.exit.thread.i
  %.0.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.0.i
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_string_array(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 5, ptr %5, align 8, !tbaa !40
  %test_heap_used.promoted.i = load i64, ptr @test_heap_used, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.o, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.g = phi i64 [ %test_heap_used.promoted.i, %bb.b ], [ %i.ds, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !180  ; 8 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !181  ; 4 uses
  %i.m = zext i32 %i.l to i64                     ; 13 uses
  store i64 4, ptr %4, align 8
  %i.n = and i64 %i.m, 4294967288                 ; 2 uses
  %i.o = add i64 %i.g, 16
  %i.p = add i64 %i.o, %i.n                       ; 6 uses
  %i.q = icmp ugt i64 %i.p, 524288
  br i1 %i.q, label %tg3__json_from_string_array.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw nsw i64 %i.m, 1
  %i.s = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.g ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !30
  store i64 %i.p, ptr @test_heap_used, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  %.not11.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i.i.i, label %.loopexit.i, label %iter.check48

iter.check48:                                     ; preds = %bb.e
  %min.iters.check33 = icmp ult i32 %i.l, 4
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %iter.check48
  %6 = sub i64 %i.g, %i.j
  %7 = add i64 %6, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check35 = icmp ult i64 %7, 31
  br i1 %diff.check35, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check36

vector.main.loop.iter.check36:                    ; preds = %vector.memcheck34
  %min.iters.check37 = icmp ult i32 %i.l, 32
  br i1 %min.iters.check37, label %vec.epilog.ph52, label %vector.ph38

vector.ph38:                                      ; preds = %vector.main.loop.iter.check36
  %i.u = and i64 %i.m, 28
  %n.vec39 = and i64 %i.m, 4294967264             ; 5 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %n.vec39
  %i.w = getelementptr i8, ptr %i.t, i64 %n.vec39
  %i.x = and i64 %i.m, 31
  br label %vector.body40

vector.body40:                                    ; preds = %vector.ph38, %vector.body40
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next45, %vector.body40 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %index41 ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.t, i64 %index41 ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  %wide.load43 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !37
  %wide.load44 = load <16 x i8>, ptr %i.y, align 1, !tbaa !37
  %i.z = getelementptr i8, ptr %next.gep42, i64 16
  store <16 x i8> %wide.load43, ptr %next.gep42, align 1, !tbaa !37
  store <16 x i8> %wide.load44, ptr %i.z, align 1, !tbaa !37
  %index.next45 = add nuw i64 %index41, 32        ; 2 uses
  %i.aa = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.aa, label %middle.block46, label %vector.body40, !llvm.loop !998

middle.block46:                                   ; preds = %vector.body40
  %cmp.n47 = icmp eq i64 %n.vec39, %i.m
  br i1 %cmp.n47, label %.loopexit.i, label %vec.epilog.iter.check49

vec.epilog.iter.check49:                          ; preds = %middle.block46
  %min.epilog.iters.check51 = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check51, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph52, !prof !46

vec.epilog.ph52:                                  ; preds = %vector.main.loop.iter.check36, %vec.epilog.iter.check49
  %vec.epilog.resume.val53 = phi i64 [ %n.vec39, %vec.epilog.iter.check49 ], [ 0, %vector.main.loop.iter.check36 ]
  %n.vec54 = and i64 %i.m, 4294967292             ; 4 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %n.vec54
  %i.ac = getelementptr i8, ptr %i.t, i64 %n.vec54
  %i.ad = and i64 %i.m, 3
  br label %vec.epilog.vector.body55

vec.epilog.vector.body55:                         ; preds = %vec.epilog.vector.body55, %vec.epilog.ph52
  %index56 = phi i64 [ %vec.epilog.resume.val53, %vec.epilog.ph52 ], [ %index.next60, %vec.epilog.vector.body55 ] ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.i, i64 %index56
  %next.gep58 = getelementptr i8, ptr %i.t, i64 %index56
  %wide.load59 = load <4 x i8>, ptr %next.gep57, align 1, !tbaa !37
  store <4 x i8> %wide.load59, ptr %next.gep58, align 1, !tbaa !37
  %index.next60 = add nuw i64 %index56, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next60, %n.vec54
  br i1 %i.ae, label %vec.epilog.middle.block61, label %vec.epilog.vector.body55, !llvm.loop !999

vec.epilog.middle.block61:                        ; preds = %vec.epilog.vector.body55
  %cmp.n62 = icmp eq i64 %n.vec54, %i.m
  br i1 %cmp.n62, label %.loopexit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check48, %vector.memcheck34, %vec.epilog.iter.check49, %vec.epilog.middle.block61
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %iter.check48 ], [ %i.i, %vector.memcheck34 ], [ %i.v, %vec.epilog.iter.check49 ], [ %i.ab, %vec.epilog.middle.block61 ] ; 2 uses
  %.059.i.i.i.i.ph = phi ptr [ %i.t, %iter.check48 ], [ %i.t, %vector.memcheck34 ], [ %i.w, %vec.epilog.iter.check49 ], [ %i.ac, %vec.epilog.middle.block61 ] ; 2 uses
  %.068.i.i.i.i.ph = phi i64 [ %i.m, %iter.check48 ], [ %i.m, %vector.memcheck34 ], [ %i.x, %vec.epilog.iter.check49 ], [ %i.ad, %vec.epilog.middle.block61 ] ; 4 uses
  %i.af = add nsw i64 %.068.i.i.i.i.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.010.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.prol ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.prol ], [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.prol ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ag = add nsw i64 %.068.i.i.i.i.prol, -1      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.010.i.i.i.i.prol, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ai, ptr %.059.i.i.i.i.prol, align 1, !tbaa !37
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1000

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.010.i.i.i.i.unr = phi ptr [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %.059.i.i.i.i.unr = phi ptr [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %i.ak = icmp ult i64 %i.af, 7
  br i1 %i.ak, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.059.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 1
  %i.am = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 1
  store i8 %i.am, ptr %.059.i.i.i.i, align 1, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 2
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 2
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 3
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 3
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 4
  store i8 %i.av, ptr %i.at, align 1, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 5
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 5
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 6
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 6
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 7
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 7
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !37
  %i.bg = add nsw i64 %.068.i.i.i.i, -8           ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 8
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !37
  %.not.i.i.i.i.7 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1001

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block46, %vec.epilog.middle.block61, %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.m
  store i8 0, ptr %i.bk, align 1, !tbaa !37
  store ptr %i.t, ptr %i.c, align 8, !tbaa !37
  store i64 %i.m, ptr %i.d, align 8, !tbaa !37
  %i.bl = load i32, ptr %5, align 8, !tbaa !40
  %i.bm = icmp eq i32 %i.bl, 5
  br i1 %i.bm, label %bb.f, label %bb.n

bb.f:                                             ; preds = %.loopexit.i
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !37  ; 5 uses
  %i.bo = add i64 %i.bn, 1                        ; 4 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.bn, -1
  br i1 %.not.i.not.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i, label %bb.g

.tg3json__init_value.exit_crit_edge.i.i.i:        ; preds = %bb.f
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !37
  br label %tg3__json_push_take.exit.i

bb.g:                                             ; preds = %bb.f
  %.not25.i.i.i.i = icmp eq i64 %i.bn, 0
  %spec.select.i.i.i.i = select i1 %.not25.i.i.i.i, i64 8, i64 %i.bn ; 3 uses
  %i.bp = icmp ult i64 %spec.select.i.i.i.i, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i20.i:                                 ; preds = %bb.g, %bb.h
  %.030.i.i.i.i = phi i64 [ %i.br, %bb.h ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %i.bq = icmp slt i64 %.030.i.i.i.i, 0
  br i1 %i.bq, label %._crit_edge.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i20.i
  %i.br = shl nuw i64 %.030.i.i.i.i, 1            ; 3 uses
  %i.bs = icmp ult i64 %i.br, %i.bo
  br i1 %i.bs, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %.lr.ph.i.i.i20.i, %bb.g
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.g ], [ %i.br, %bb.h ], [ %i.bo, %.lr.ph.i.i.i20.i ] ; 2 uses
  %i.bt = icmp ugt i64 %.1.i.i.i.i, 768614336404564650
  br i1 %i.bt, label %bb.n, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !55  ; 10 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = mul nuw i64 %.1.i.i.i.i, 24             ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  %i.bx = add nuw nsw i64 %i.p, 8
  %i.by = add i64 %i.bx, %i.bw                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, 524288              ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.bz, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.p ; 2 uses
  store i64 %i.bw, ptr %i.ca, align 8, !tbaa !30
  store i64 %i.by, ptr @test_heap_used, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  br label %.loopexit.i.i.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.p ; 2 uses
  store i64 %i.bw, ptr %i.ce, align 8, !tbaa !30
  store i64 %i.by, ptr @test_heap_used, align 8, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 12 uses
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.bw) ; 11 uses
  %.not27.i.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not27.i.i.i.i.i, label %.loopexit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ch = add i64 %i.g, %i.n
  %i.ci = sub i64 %i.ch, %i.bv
  %i.cj = add i64 %i.ci, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 23)
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %i.cg, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.cg, 28
  %n.vec = and i64 %i.cg, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <16 x i8>, ptr %i.cl, align 1, !tbaa !37
  %wide.load25 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <16 x i8> %wide.load, ptr %i.cn, align 1, !tbaa !37
  store <16 x i8> %wide.load25, ptr %i.co, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !1002

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.cg, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.cr, align 1, !tbaa !37
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1003

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.cg, %n.vec26
  br i1 %cmp.n30, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter66 = and i64 %i.cg, 3                  ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.026.i.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.prol ], [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter68 = phi i64 [ %prol.iter68.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.026.i.i.i.i.i.prol
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.026.i.i.i.i.i.prol
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !37
  %i.cw = add nuw i64 %.026.i.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1004

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i.prol ]
  %i.cx = sub i64 %.026.i.i.i.i.i.ph, %i.cg
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.026.i.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.026.i.i.i.i.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.026.i.i.i.i.i
  store i8 %i.da, ptr %i.db, align 1, !tbaa !37
  %i.dc = add nuw i64 %.026.i.i.i.i.i, 1          ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !37
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dc
  store i8 %i.de, ptr %i.df, align 1, !tbaa !37
  %i.dg = add nuw i64 %.026.i.i.i.i.i, 2          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dg
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !37
  %i.dk = add nuw i64 %.026.i.i.i.i.i, 3          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dk
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !37
  %i.do = add nuw i64 %.026.i.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.do, %i.cg
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1005

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.m, %bb.k
  %.018.i.ph.i.i.i.i = phi ptr [ %i.cb, %bb.k ], [ %i.cf, %bb.m ], [ %i.cf, %middle.block ], [ %i.cf, %vec.epilog.middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i.i, ptr %i.e, align 8, !tbaa !55
  br label %tg3__json_push_take.exit.i

tg3__json_push_take.exit.i:                       ; preds = %.loopexit.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i
  %i.dp = phi i64 [ %i.p, %.tg3json__init_value.exit_crit_edge.i.i.i ], [ %i.by, %.loopexit.i.i.i.i ]
  %i.dq = phi ptr [ %.pre.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i ], [ %.018.i.ph.i.i.i.i, %.loopexit.i.i.i.i ]
  store i64 %i.bo, ptr %i.f, align 8, !tbaa !37
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !49
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j, %._crit_edge.i.i.i.i, %.loopexit.i
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  br label %tg3__json_from_string_array.exit.thread

tg3__json_from_string_array.exit.thread:          ; preds = %bb.d, %bb.n
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %tg3__json_set_take.exit

bb.o:                                             ; preds = %tg3__json_push_take.exit.i, %bb.c
  %i.ds = phi i64 [ %i.g, %bb.c ], [ %i.dp, %tg3__json_push_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_string_array.exit, label %bb.c, !llvm.loop !1006

tg3__json_from_string_array.exit:                 ; preds = %bb.o
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %tg3__json_from_string_array.exit, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.du, %.preheader.i.i ], [ %1, %tg3__json_from_string_array.exit ] ; 3 uses
  %i.dt = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !1

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.dv = ptrtoint ptr %.0.i.i.i to i64
  %i.dw = ptrtoint ptr %1 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.dx, ptr noundef nonnull %5) #21
  %.not.i9 = icmp eq i32 %i.dy, 0
  br i1 %.not.i9, label %tg3json_object_set_take.exit.thread.i, label %tg3__json_set_take.exit

tg3json_object_set_take.exit.thread.i:            ; preds = %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.thread.i, %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit.thread, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %tg3__json_from_string_array.exit.thread ], [ 0, %tg3json_object_set_take.exit.thread.i ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__json_push_take(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !40
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37   ; 4 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %.not.i.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.not.i, label %.tg3json__init_value.exit_crit_edge.i, label %bb.c

.tg3json__init_value.exit_crit_edge.i:            ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %tg3json_array_append_take.exit

bb.c:                                             ; preds = %bb.b
  %.not25.i.i = icmp eq i64 %i.e, 0
  %spec.select.i.i = select i1 %.not25.i.i, i64 8, i64 %i.e ; 3 uses
  %i.g = icmp ult i64 %spec.select.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.030.i.i = phi i64 [ %i.i, %bb.d ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.h = icmp slt i64 %.030.i.i, 0
  br i1 %i.h, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.i = shl nuw i64 %.030.i.i, 1                 ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.d, %.lr.ph.i.i, %bb.c
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %i.k = icmp ugt i64 %.1.i.i, 768614336404564650
  br i1 %i.k, label %bb.j, label %bb.e

end_hunk_9
begin_hunk_10_@tg3__value_to_json:bb.a
  %i.aj = getelementptr i8, ptr %spec.select, i64 %n.vec119
  %i.ak = getelementptr i8, ptr %i.z, i64 %n.vec119
  %i.al = and i64 %i.r, 3
  br label %vec.epilog.vector.body120

vec.epilog.vector.body120:                        ; preds = %vec.epilog.vector.body120, %vec.epilog.ph117
  %index121 = phi i64 [ %vec.epilog.resume.val118, %vec.epilog.ph117 ], [ %index.next125, %vec.epilog.vector.body120 ] ; 3 uses
  %next.gep122 = getelementptr i8, ptr %spec.select, i64 %index121
  %next.gep123 = getelementptr i8, ptr %i.z, i64 %index121
  %wide.load124 = load <4 x i8>, ptr %next.gep122, align 1, !tbaa !37
  store <4 x i8> %wide.load124, ptr %next.gep123, align 1, !tbaa !37
  %index.next125 = add nuw i64 %index121, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.am, label %vec.epilog.middle.block126, label %vec.epilog.vector.body120, !llvm.loop !1015

vec.epilog.middle.block126:                       ; preds = %vec.epilog.vector.body120
  %cmp.n127 = icmp eq i64 %i.r, %n.vec119
  br i1 %cmp.n127, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check113, %vector.memcheck99, %vec.epilog.iter.check114, %vec.epilog.middle.block126
  %.010.i.i.i.ph = phi ptr [ %spec.select, %iter.check113 ], [ %spec.select, %vector.memcheck99 ], [ %i.ad, %vec.epilog.iter.check114 ], [ %i.aj, %vec.epilog.middle.block126 ] ; 2 uses
  %.059.i.i.i.ph = phi ptr [ %i.z, %iter.check113 ], [ %i.z, %vector.memcheck99 ], [ %i.ae, %vec.epilog.iter.check114 ], [ %i.ak, %vec.epilog.middle.block126 ] ; 2 uses
  %.068.i.i.i.ph = phi i64 [ %i.r, %iter.check113 ], [ %i.r, %vector.memcheck99 ], [ %i.af, %vec.epilog.iter.check114 ], [ %i.al, %vec.epilog.middle.block126 ] ; 4 uses
  %i.an = add nsw i64 %.068.i.i.i.ph, -1
  %xtraiter132 = and i64 %.068.i.i.i.ph, 7        ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.prol ], [ %.059.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.prol ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ao = add nsw i64 %.068.i.i.i.prol, -1        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.010.i.i.i.prol, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.059.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.059.i.i.i.prol, align 1, !tbaa !37
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1016

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.prol ]
  %.059.i.i.i.unr = phi ptr [ %.059.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi i64 [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.prol ]
  %i.as = icmp ult i64 %i.an, 7
  br i1 %i.as, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.059.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %.059.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i ], [ %.068.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1
  %i.au = load i8, ptr %.010.i.i.i, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 1
  store i8 %i.au, ptr %.059.i.i.i, align 1, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 2
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 2
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 3
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 3
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 4
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 5
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 5
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 6
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 6
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 7
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 7
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !37
  %i.bo = add nsw i64 %.068.i.i.i, -8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !37
  %.not.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !1017

tg3json__init_value.exit15.i:                     ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %tg3json_value_init_string_n.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block111, %vec.epilog.middle.block126, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.bs, align 1, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.z, ptr %i.bt, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.r, ptr %i.bu, align 8, !tbaa !37
  br label %tg3json_value_init_string_n.exit

bb.j:                                             ; preds = %bb.b
  store i32 5, ptr %1, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !308
  %.not70 = icmp eq i32 %i.bw, 0
  br i1 %.not70, label %tg3json_value_init_string_n.exit, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph68, %bb.v
  %indvars.iv73 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next74, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !307
  %i.cb = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %indvars.iv73
  %i.cc = call fastcc i32 @tg3__value_to_json(ptr noundef %i.cb, ptr noundef %2) #21
  %.not54 = icmp eq i32 %i.cc, 0
  br i1 %.not54, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = load i32, ptr %1, align 8, !tbaa !40
  %i.ce = icmp eq i32 %i.cd, 5
  br i1 %i.ce, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.cf = load i64, ptr %i.bz, align 8, !tbaa !37 ; 4 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %.not.i.not.i.i = icmp eq i64 %i.cf, -1
  br i1 %.not.i.not.i.i, label %.tg3json__init_value.exit_crit_edge.i.i, label %bb.n

.tg3json__init_value.exit_crit_edge.i.i:          ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.by, align 8, !tbaa !37
  br label %bb.v

bb.n:                                             ; preds = %bb.m
  %.not25.i.i.i = icmp eq i64 %i.cf, 0
  %spec.select.i.i.i = select i1 %.not25.i.i.i, i64 8, i64 %i.cf ; 3 uses
  %i.ch = icmp ult i64 %spec.select.i.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i.i62, label %._crit_edge.i.i.i

.lr.ph.i.i.i62:                                   ; preds = %bb.n, %bb.o
  %.030.i.i.i = phi i64 [ %i.cj, %bb.o ], [ %spec.select.i.i.i, %bb.n ] ; 2 uses
  %i.ci = icmp slt i64 %.030.i.i.i, 0
  br i1 %i.ci, label %._crit_edge.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i62
  %i.cj = shl nuw i64 %.030.i.i.i, 1              ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.cg
  br i1 %i.ck, label %.lr.ph.i.i.i62, label %._crit_edge.i.i.i, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %bb.o, %.lr.ph.i.i.i62, %bb.n
  %.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.n ], [ %i.cg, %.lr.ph.i.i.i62 ], [ %i.cj, %bb.o ] ; 2 uses
  %i.cl = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.cl, label %bb.u, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !55 ; 10 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = mul nuw i64 %.1.i.i.i, 24               ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  %i.cp = add nuw i64 %i.co, 8
  %i.cq = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.cr = add i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, 524288              ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.cs, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cq ; 2 uses
  store i64 %i.co, ptr %i.ct, align 8, !tbaa !30
  store i64 %i.cr, ptr @test_heap_used, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %.loopexit.i.i.i

bb.s:                                             ; preds = %bb.p
  br i1 %i.cs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cq ; 2 uses
  store i64 %i.co, ptr %i.cx, align 8, !tbaa !30
  store i64 %i.cr, ptr @test_heap_used, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 12 uses
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.co) ; 11 uses
  %.not27.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = sub i64 %i.cq, %i.cn
  %5 = add i64 %4, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check = icmp ult i64 %5, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check87 = icmp ult i64 %i.cz, 32
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.da = and i64 %i.cz, 28
  %n.vec = and i64 %i.cz, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <16 x i8>, ptr %i.db, align 1, !tbaa !37
  %wide.load88 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %wide.load, ptr %i.dd, align 1, !tbaa !37
  store <16 x i8> %wide.load88, ptr %i.de, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1018

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cz, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index90
  %wide.load91 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index90
  store <4 x i8> %wide.load91, ptr %i.dh, align 1, !tbaa !37
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next92, %n.vec89
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1019

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.cz, %n.vec89
  br i1 %cmp.n93, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.026.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.prol ], [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.026.i.i.i.i.prol
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.026.i.i.i.i.prol
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !37
  %i.dm = add nuw i64 %.026.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1020

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.026.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i.i.i.prol ]
  %i.dn = sub i64 %.026.i.i.i.i.ph, %i.cz
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.026.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.026.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.026.i.i.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !37
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.026.i.i.i.i
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !37
  %i.ds = add nuw i64 %.026.i.i.i.i, 1            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ds
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !37
  %i.dw = add nuw i64 %.026.i.i.i.i, 2            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dw
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !37
  %i.ea = add nuw i64 %.026.i.i.i.i, 3            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !37
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ea
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !37
  %i.ee = add nuw i64 %.026.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ee, %i.cz
  br i1 %exitcond.not.i.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1021

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.t, %bb.r
  %.018.i.ph.i.i.i = phi ptr [ %i.cu, %bb.r ], [ %i.cy, %bb.t ], [ %i.cy, %middle.block ], [ %i.cy, %vec.epilog.middle.block ], [ %i.cy, %.lr.ph.i.i.i.i ], [ %i.cy, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i, ptr %i.by, align 8, !tbaa !55
  %.pre17.i.i = load i64, ptr %i.bz, align 8, !tbaa !37
  br label %bb.v

bb.u:                                             ; preds = %bb.l, %._crit_edge.i.i.i, %bb.q, %bb.s
  call void @tg3json_value_free(ptr noundef nonnull %2) #21
  br label %.critedge

bb.v:                                             ; preds = %.loopexit.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i
  %i.ef = phi i64 [ -1, %.tg3json__init_value.exit_crit_edge.i.i ], [ %.pre17.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %.pre.i.i, %.tg3json__init_value.exit_crit_edge.i.i ], [ %.018.i.ph.i.i.i, %.loopexit.i.i.i ]
  %i.eh = add i64 %i.ef, 1
  store i64 %i.eh, ptr %i.bz, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.ej = load i32, ptr %i.bv, align 8, !tbaa !308
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next74, %i.ek
  br i1 %i.el, label %bb.k, label %tg3json_value_init_string_n.exit, !llvm.loop !1022

bb.w:                                             ; preds = %bb.b
  store i32 6, ptr %1, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !310
  %.not69 = icmp eq i32 %i.en, 0
  br i1 %.not69, label %tg3json_value_init_string_n.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !309
  %i.eq = getelementptr inbounds nuw [96 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = call fastcc i32 @tg3__value_to_json(ptr noundef nonnull %i.er, ptr noundef %3) #21
  %.not50 = icmp eq i32 %i.es, 0
  br i1 %.not50, label %.critedge60, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !309
  %i.eu = getelementptr inbounds nuw [96 x i8], ptr %i.et, i64 %indvars.iv ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1027 ; 2 uses
  %.not51 = icmp eq ptr %i.ev, null               ; 2 uses
  %spec.select58 = select i1 %.not51, ptr @.str, ptr %i.ev
  br i1 %.not51, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !1028
  %i.ey = zext i32 %i.ex to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ez = phi i64 [ %i.ey, %bb.z ], [ 0, %bb.y ]
  %i.fa = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull %spec.select58, i64 noundef %i.ez, ptr noundef nonnull %3) #21
  %.not53 = icmp eq i32 %i.fa, 0
  br i1 %.not53, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @tg3json_value_free(ptr noundef nonnull %3) #21
  br label %.critedge60

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = load i32, ptr %i.em, align 8, !tbaa !310
  %i.fc = zext i32 %i.fb to i64
  %i.fd = icmp samesign ult i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %bb.x, label %tg3json_value_init_string_n.exit, !llvm.loop !1023

bb.ad:                                            ; preds = %bb.b
  br label %tg3json_value_init_string_n.exit

.critedge:                                        ; preds = %bb.k, %bb.u
  call void @tg3json_value_free(ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %tg3json_value_init_string_n.exit

.critedge60:                                      ; preds = %bb.x, %bb.ab
  call void @tg3json_value_free(ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %tg3json_value_init_string_n.exit

tg3json_value_init_string_n.exit:                 ; preds = %bb.ac, %bb.v, %bb.w, %bb.j, %.loopexit.i, %tg3json__init_value.exit15.i, %.critedge60, %.critedge, %bb.b, %bb.b, %bb.a, %bb.ad, %bb.e, %bb.d, %bb.c
  %.4 = phi i32 [ 0, %bb.ad ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.b ], [ 0, %.critedge ], [ 1, %bb.b ], [ 0, %.critedge60 ], [ 0, %tg3json__init_value.exit15.i ], [ 1, %bb.j ], [ 1, %.loopexit.i ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.ac ]
  ret i32 %.4
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_str(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, ptr nofree readonly captures(address_is_null) %2, i32 %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
end_hunk_10
begin_hunk_11_@tg3__serialize_str:bb.a

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i, %.loopexit.i
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  br label %tg3__json_set_string_n.exit

tg3__json_set_string_n.exit:                      ; preds = %bb.b, %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i = phi i32 [ 1, %tg3json_object_set_take.exit.i.i ], [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %tg3__json_set_string_n.exit
  %.0 = phi i32 [ %.0.i, %tg3__json_set_string_n.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_uint64(ptr nofree noundef nonnull captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3json_object_set_take.exit.i.i, label %bb.b

tg3json_object_set_take.exit.i.i:                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !37
  %i.d = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull @.str.82, i64 noundef 10, ptr noundef nonnull %3) #21
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_int.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i
  call void @tg3json_value_free(ptr noundef nonnull %3) #21
  br label %tg3__json_set_int.exit

tg3__json_set_int.exit:                           ; preds = %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 1, %tg3json_object_set_take.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tg3__json_set_int.exit
  %.0 = phi i32 [ %.0.i.i, %tg3__json_set_int.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_bool(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = or i32 %3, %2
  %or.cond.not = icmp eq i32 %i.a, 0
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %2, 0
  %i.c = zext i1 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.f, %.preheader.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.e = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 1
  br i1 %.not.i.i.i.i, label %tg3json_object_set_take.exit.i.i, label %.preheader.i.i.i, !llvm.loop !1

tg3json_object_set_take.exit.i.i:                 ; preds = %.preheader.i.i.i
  %i.g = ptrtoint ptr %.0.i.i.i.i to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.i, ptr noundef nonnull %4) #21
  %.not.i2.i = icmp eq i32 %i.j, 0
  br i1 %.not.i2.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_bool.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i, %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  br label %tg3__json_set_bool.exit

tg3__json_set_bool.exit:                          ; preds = %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 1, %tg3json_object_set_take.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %tg3__json_set_bool.exit
  %.0 = phi i32 [ %.0.i.i, %tg3__json_set_bool.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_double_array(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 5, ptr %5, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %test_heap_used.promoted.i = load i64, ptr @test_heap_used, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.f = phi i64 [ %test_heap_used.promoted.i, %bb.b ], [ %i.bj, %bb.l ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.h = load double, ptr %i.g, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 3, ptr %4, align 8, !tbaa !40
  store double %i.h, ptr %i.c, align 8, !tbaa !37
  %i.i = load i32, ptr %5, align 8, !tbaa !40
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.d, label %tg3__json_from_double_array.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.e, align 8, !tbaa !37   ; 5 uses
  %i.l = add i64 %i.k, 1                          ; 4 uses
  %.not.i.not.i.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.not.i.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i.i, label %bb.e

.tg3json__init_value.exit_crit_edge.i.i.i.i:      ; preds = %bb.d
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !37
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %.not25.i.i.i.i.i = icmp eq i64 %i.k, 0
  %spec.select.i.i.i.i.i = select i1 %.not25.i.i.i.i.i, i64 8, i64 %i.k ; 3 uses
  %i.m = icmp ult i64 %spec.select.i.i.i.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.030.i.i.i.i.i = phi i64 [ %i.o, %bb.f ], [ %spec.select.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.n = icmp slt i64 %.030.i.i.i.i.i, 0
  br i1 %i.n, label %._crit_edge.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = shl nuw i64 %.030.i.i.i.i.i, 1           ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.l
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !2

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.1.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.e ], [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.q = icmp ugt i64 %.1.i.i.i.i.i, 768614336404564650
  br i1 %i.q, label %tg3__json_from_double_array.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !55   ; 10 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = mul nuw i64 %.1.i.i.i.i.i, 24            ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %i.u = add i64 %i.f, 8
  %i.v = add i64 %i.u, %i.t                       ; 4 uses
  %i.w = icmp ugt i64 %i.v, 524288                ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.w, label %tg3__json_from_double_array.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.f ; 2 uses
  store i64 %i.t, ptr %i.x, align 8, !tbaa !30
  store i64 %i.v, ptr @test_heap_used, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %.loopexit.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  br i1 %i.w, label %tg3__json_from_double_array.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.f ; 2 uses
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !30
  store i64 %i.v, ptr @test_heap_used, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 12 uses
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.t) ; 11 uses
  %.not27.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not27.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %6 = sub i64 %i.f, %i.s
  %7 = add i64 %6, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.ad, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 28
  %n.vec = and i64 %i.ad, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !tbaa !37
  %wide.load22 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <16 x i8> %wide.load, ptr %i.ah, align 1, !tbaa !37
  store <16 x i8> %wide.load22, ptr %i.ai, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1033

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.ad, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index24
  store <4 x i8> %wide.load25, ptr %i.al, align 1, !tbaa !37
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1034

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.ad, %n.vec23
  br i1 %cmp.n27, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.026.i.i.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.prol ], [ %.026.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %.026.i.i.i.i.i.i.prol
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.026.i.i.i.i.i.i.prol
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !37
  %i.aq = add nuw i64 %.026.i.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1035

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ar = sub i64 %.026.i.i.i.i.i.i.ph, %i.ad
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.026.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %.026.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 %.026.i.i.i.i.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.026.i.i.i.i.i.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !37
  %i.aw = add nuw i64 %.026.i.i.i.i.i.i, 1        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !37
  %i.ba = add nuw i64 %.026.i.i.i.i.i.i, 2        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ba
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !37
  %i.be = add nuw i64 %.026.i.i.i.i.i.i, 3        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !37
  %i.bi = add nuw i64 %.026.i.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bi, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1036

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k, %bb.i
  %.018.i.ph.i.i.i.i.i = phi ptr [ %i.y, %bb.i ], [ %i.ac, %bb.k ], [ %i.ac, %middle.block ], [ %i.ac, %vec.epilog.middle.block ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i.i.i, ptr %i.d, align 8, !tbaa !55
  br label %bb.l

tg3__json_from_double_array.exit.thread:          ; preds = %bb.c, %._crit_edge.i.i.i.i.i, %bb.h, %bb.j
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %tg3__json_set_take.exit.sink.split

bb.l:                                             ; preds = %.loopexit.i.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i.i
  %i.bj = phi i64 [ %i.f, %.tg3json__init_value.exit_crit_edge.i.i.i.i ], [ %i.v, %.loopexit.i.i.i.i.i ]
  %i.bk = phi ptr [ %.pre.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i.i ], [ %.018.i.ph.i.i.i.i.i, %.loopexit.i.i.i.i.i ]
  store i64 %i.l, ptr %i.e, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_double_array.exit, label %bb.c, !llvm.loop !1037

tg3__json_from_double_array.exit:                 ; preds = %bb.l
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3__json_set_take.exit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %tg3__json_from_double_array.exit, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.bn, %.preheader.i.i ], [ %1, %tg3__json_from_double_array.exit ] ; 3 uses
  %i.bm = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !1

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.bo = ptrtoint ptr %.0.i.i.i to i64
  %i.bp = ptrtoint ptr %1 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.bq, ptr noundef nonnull %5) #21
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.sink.split, label %tg3__json_set_take.exit

tg3__json_set_take.exit.sink.split:               ; preds = %tg3__json_from_double_array.exit, %tg3json_object_set_take.exit.i, %tg3__json_from_double_array.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3__json_set_take.exit.sink.split, %tg3json_object_set_take.exit.i, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %tg3json_object_set_take.exit.i ], [ 0, %tg3__json_set_take.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_int_array(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 5, ptr %5, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %test_heap_used.promoted.i = load i64, ptr @test_heap_used, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.f = phi i64 [ %test_heap_used.promoted.i, %bb.b ], [ %i.bk, %bb.l ] ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48
  %i.i = sext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !40
  store i64 %i.i, ptr %i.c, align 8, !tbaa !37
  %i.j = load i32, ptr %5, align 8, !tbaa !40
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %bb.d, label %tg3__json_from_int_array.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.e, align 8, !tbaa !37   ; 5 uses
  %i.m = add i64 %i.l, 1                          ; 4 uses
  %.not.i.not.i.i.i.i = icmp eq i64 %i.l, -1
  br i1 %.not.i.not.i.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i.i, label %bb.e

.tg3json__init_value.exit_crit_edge.i.i.i.i:      ; preds = %bb.d
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !37
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %.not25.i.i.i.i.i = icmp eq i64 %i.l, 0
  %spec.select.i.i.i.i.i = select i1 %.not25.i.i.i.i.i, i64 8, i64 %i.l ; 3 uses
  %i.n = icmp ult i64 %spec.select.i.i.i.i.i, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.030.i.i.i.i.i = phi i64 [ %i.p, %bb.f ], [ %spec.select.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.o = icmp slt i64 %.030.i.i.i.i.i, 0
  br i1 %i.o, label %._crit_edge.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = shl nuw i64 %.030.i.i.i.i.i, 1           ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !2

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.1.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.e ], [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.r = icmp ugt i64 %.1.i.i.i.i.i, 768614336404564650
  br i1 %i.r, label %tg3__json_from_int_array.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !55   ; 10 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = mul nuw i64 %.1.i.i.i.i.i, 24            ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  %i.v = add i64 %i.f, 8
  %i.w = add i64 %i.v, %i.u                       ; 4 uses
  %i.x = icmp ugt i64 %i.w, 524288                ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.x, label %tg3__json_from_int_array.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.f ; 2 uses
  store i64 %i.u, ptr %i.y, align 8, !tbaa !30
  store i64 %i.w, ptr @test_heap_used, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %.loopexit.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  br i1 %i.x, label %tg3__json_from_int_array.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.f ; 2 uses
  store i64 %i.u, ptr %i.ac, align 8, !tbaa !30
  store i64 %i.w, ptr @test_heap_used, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 12 uses
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.u) ; 11 uses
  %.not27.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not27.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %6 = sub i64 %i.f, %i.t
  %7 = add i64 %6, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 7)
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ae, 28
  %n.vec = and i64 %i.ae, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !37
  %wide.load22 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !37
  store <16 x i8> %wide.load22, ptr %i.aj, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1038

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.ae, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.al, align 1, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index24
  store <4 x i8> %wide.load25, ptr %i.am, align 1, !tbaa !37
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1039

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.ae, %n.vec23
  br i1 %cmp.n27, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.026.i.i.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.prol ], [ %.026.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.026.i.i.i.i.i.i.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.026.i.i.i.i.i.i.prol
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !37
  %i.ar = add nuw i64 %.026.i.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1040

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.as = sub i64 %.026.i.i.i.i.i.i.ph, %i.ae
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.026.i.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.026.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 %.026.i.i.i.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.026.i.i.i.i.i.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !37
  %i.ax = add nuw i64 %.026.i.i.i.i.i.i, 1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !37
  %i.bb = add nuw i64 %.026.i.i.i.i.i.i, 2        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !37
  %i.bf = add nuw i64 %.026.i.i.i.i.i.i, 3        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !37
  %i.bj = add nuw i64 %.026.i.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bj, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1041

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k, %bb.i
  %.018.i.ph.i.i.i.i.i = phi ptr [ %i.z, %bb.i ], [ %i.ad, %bb.k ], [ %i.ad, %middle.block ], [ %i.ad, %vec.epilog.middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i.i.i, ptr %i.d, align 8, !tbaa !55
  br label %bb.l

tg3__json_from_int_array.exit.thread:             ; preds = %bb.c, %._crit_edge.i.i.i.i.i, %bb.h, %bb.j
  call void @tg3json_value_free(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %tg3__json_set_take.exit.sink.split

bb.l:                                             ; preds = %.loopexit.i.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i.i
  %i.bk = phi i64 [ %i.f, %.tg3json__init_value.exit_crit_edge.i.i.i.i ], [ %i.w, %.loopexit.i.i.i.i.i ]
  %i.bl = phi ptr [ %.pre.i.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i.i.i ], [ %.018.i.ph.i.i.i.i.i, %.loopexit.i.i.i.i.i ]
  store i64 %i.m, ptr %i.e, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_int_array.exit, label %bb.c, !llvm.loop !1042

tg3__json_from_int_array.exit:                    ; preds = %bb.l
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3__json_set_take.exit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %tg3__json_from_int_array.exit, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.bo, %.preheader.i.i ], [ %1, %tg3__json_from_int_array.exit ] ; 3 uses
  %i.bn = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.bn, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !1

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.bp = ptrtoint ptr %.0.i.i.i to i64
  %i.bq = ptrtoint ptr %1 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.br, ptr noundef nonnull %5) #21
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.sink.split, label %tg3__json_set_take.exit

tg3__json_set_take.exit.sink.split:               ; preds = %tg3__json_from_int_array.exit, %tg3json_object_set_take.exit.i, %tg3__json_from_int_array.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3__json_set_take.exit.sink.split, %tg3json_object_set_take.exit.i, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %tg3json_object_set_take.exit.i ], [ 0, %tg3__json_set_take.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_double(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, double noundef %2, double noundef nofpclass(nan inf zero sub nnorm) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = fsub double %2, %3
  %i.b = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp ugt double %i.b, f0x3D719799812DEA11
  %i.d = icmp ne i32 %4, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 3, ptr %5, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %2, ptr %i.e, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.g, %.preheader.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 1
  br i1 %.not.i.i.i.i, label %tg3json_object_set_take.exit.i.i, label %.preheader.i.i.i, !llvm.loop !1

tg3json_object_set_take.exit.i.i:                 ; preds = %.preheader.i.i.i
  %i.h = ptrtoint ptr %.0.i.i.i.i to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.j, ptr noundef nonnull %5) #21
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_real.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i, %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %5) #21
  br label %tg3__json_set_real.exit

tg3__json_set_real.exit:                          ; preds = %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 1, %tg3json_object_set_take.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %tg3__json_set_real.exit
  %.0 = phi i32 [ %.0.i.i, %tg3__json_set_real.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

end_hunk_11
