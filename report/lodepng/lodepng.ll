Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL14filterScanlinePhPKhS1_mmh:bb.a
  %min.iters.check574 = icmp samesign ult i64 %4, 4
  %i.d = sub i64 %i.b, %i.a
  %diff.check576 = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check574, %diff.check576
  br i1 %or.cond, label %.lr.ph191.preheader, label %vector.main.loop.iter.check577

vector.main.loop.iter.check577:                   ; preds = %iter.check588
  %min.iters.check578 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check578, label %vec.epilog.ph592, label %vector.ph579

vector.ph579:                                     ; preds = %vector.main.loop.iter.check577
  %i.e = and i64 %4, 28
  %n.vec580 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body581

vector.body581:                                   ; preds = %vector.ph579, %vector.body581
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next585, %vector.body581 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index582 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load583 = load <16 x i8>, ptr %i.f, align 1, !tbaa !35
  %wide.load584 = load <16 x i8>, ptr %i.g, align 1, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index582 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %wide.load583, ptr %i.h, align 1, !tbaa !35
  store <16 x i8> %wide.load584, ptr %i.i, align 1, !tbaa !35
  %index.next585 = add nuw i64 %index582, 32      ; 2 uses
  %i.j = icmp eq i64 %index.next585, %n.vec580
  br i1 %i.j, label %middle.block586, label %vector.body581, !llvm.loop !1030

middle.block586:                                  ; preds = %vector.body581
  %cmp.n587 = icmp eq i64 %4, %n.vec580
  br i1 %cmp.n587, label %.preheader145, label %vec.epilog.iter.check589

vec.epilog.iter.check589:                         ; preds = %middle.block586
  %min.epilog.iters.check591 = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check591, label %.lr.ph191.preheader, label %vec.epilog.ph592, !prof !90

vec.epilog.ph592:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check589
  %vec.epilog.resume.val593 = phi i64 [ %n.vec580, %vec.epilog.iter.check589 ], [ 0, %vector.main.loop.iter.check577 ]
  %n.vec594 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body595

vec.epilog.vector.body595:                        ; preds = %vec.epilog.vector.body595, %vec.epilog.ph592
  %index596 = phi i64 [ %vec.epilog.resume.val593, %vec.epilog.ph592 ], [ %index.next598, %vec.epilog.vector.body595 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index596
  %wide.load597 = load <4 x i8>, ptr %i.k, align 1, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index596
  store <4 x i8> %wide.load597, ptr %i.l, align 1, !tbaa !35
  %index.next598 = add nuw i64 %index596, 4       ; 2 uses
  %i.m = icmp eq i64 %index.next598, %n.vec594
  br i1 %i.m, label %vec.epilog.middle.block599, label %vec.epilog.vector.body595, !llvm.loop !1031

vec.epilog.middle.block599:                       ; preds = %vec.epilog.vector.body595
  %cmp.n600 = icmp eq i64 %4, %n.vec594
  br i1 %cmp.n600, label %.preheader145, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %iter.check588, %vec.epilog.iter.check589, %vec.epilog.middle.block599
  %.1190.ph = phi i64 [ 0, %iter.check588 ], [ %n.vec580, %vec.epilog.iter.check589 ], [ %n.vec594, %vec.epilog.middle.block599 ] ; 3 uses
  %xtraiter704 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader, %.lr.ph191.prol
  %.1190.prol = phi i64 [ %i.q, %.lr.ph191.prol ], [ %.1190.ph, %.lr.ph191.preheader ] ; 3 uses
  %prol.iter706 = phi i64 [ %prol.iter706.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.1190.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.1190.prol
  store i8 %i.o, ptr %i.p, align 1, !tbaa !35
  %i.q = add nuw nsw i64 %.1190.prol, 1           ; 2 uses
  %prol.iter706.next = add i64 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i64 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1032

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader
  %.1190.unr = phi i64 [ %.1190.ph, %.lr.ph191.preheader ], [ %i.q, %.lr.ph191.prol ]
  %i.r = sub nsw i64 %.1190.ph, %4
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.preheader145, label %.lr.ph191

.preheader:                                       ; preds = %bb.a
  %.not144194 = icmp eq i64 %3, 0
  br i1 %.not144194, label %.loopexit, label %iter.check655

iter.check655:                                    ; preds = %.preheader
  %min.iters.check641 = icmp ult i64 %3, 4
  %i.t = sub i64 %i.b, %i.a
  %diff.check643 = icmp ugt i64 %i.t, -32
  %or.cond669 = or i1 %min.iters.check641, %diff.check643
  br i1 %or.cond669, label %.lr.ph196.preheader, label %vector.main.loop.iter.check644

vector.main.loop.iter.check644:                   ; preds = %iter.check655
  %min.iters.check645 = icmp ult i64 %3, 32
  br i1 %min.iters.check645, label %vec.epilog.ph659, label %vector.ph646

vector.ph646:                                     ; preds = %vector.main.loop.iter.check644
  %i.u = and i64 %3, 28
  %n.vec647 = and i64 %3, -32                     ; 4 uses
  br label %vector.body648

vector.body648:                                   ; preds = %vector.ph646, %vector.body648
  %index649 = phi i64 [ 0, %vector.ph646 ], [ %index.next652, %vector.body648 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index649 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load650 = load <16 x i8>, ptr %i.v, align 1, !tbaa !35
  %wide.load651 = load <16 x i8>, ptr %i.w, align 1, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index649 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load650, ptr %i.x, align 1, !tbaa !35
  store <16 x i8> %wide.load651, ptr %i.y, align 1, !tbaa !35
  %index.next652 = add nuw i64 %index649, 32      ; 2 uses
  %i.z = icmp eq i64 %index.next652, %n.vec647
  br i1 %i.z, label %middle.block653, label %vector.body648, !llvm.loop !1033

middle.block653:                                  ; preds = %vector.body648
  %cmp.n654 = icmp eq i64 %3, %n.vec647
  br i1 %cmp.n654, label %.loopexit, label %vec.epilog.iter.check656

vec.epilog.iter.check656:                         ; preds = %middle.block653
  %min.epilog.iters.check658 = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check658, label %.lr.ph196.preheader, label %vec.epilog.ph659, !prof !90

vec.epilog.ph659:                                 ; preds = %vector.main.loop.iter.check644, %vec.epilog.iter.check656
  %vec.epilog.resume.val660 = phi i64 [ %n.vec647, %vec.epilog.iter.check656 ], [ 0, %vector.main.loop.iter.check644 ]
  %n.vec661 = and i64 %3, -4                      ; 3 uses
  br label %vec.epilog.vector.body662

vec.epilog.vector.body662:                        ; preds = %vec.epilog.vector.body662, %vec.epilog.ph659
  %index663 = phi i64 [ %vec.epilog.resume.val660, %vec.epilog.ph659 ], [ %index.next665, %vec.epilog.vector.body662 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index663
  %wide.load664 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index663
  store <4 x i8> %wide.load664, ptr %i.ab, align 1, !tbaa !35
  %index.next665 = add nuw i64 %index663, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next665, %n.vec661
  br i1 %i.ac, label %vec.epilog.middle.block666, label %vec.epilog.vector.body662, !llvm.loop !1034

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body662
  %cmp.n667 = icmp eq i64 %3, %n.vec661
  br i1 %cmp.n667, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %iter.check655, %vec.epilog.iter.check656, %vec.epilog.middle.block666
  %.0195.ph = phi i64 [ 0, %iter.check655 ], [ %n.vec647, %vec.epilog.iter.check656 ], [ %n.vec661, %vec.epilog.middle.block666 ] ; 3 uses
  %xtraiter710 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod711.not = icmp eq i64 %xtraiter710, 0
  br i1 %lcmp.mod711.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0195.prol = phi i64 [ %i.ag, %.lr.ph196.prol ], [ %.0195.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter712 = phi i64 [ %prol.iter712.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0195.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.0195.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !35
  %i.ag = add nuw i64 %.0195.prol, 1              ; 2 uses
  %prol.iter712.next = add i64 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i64 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !1035

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0195.unr = phi i64 [ %.0195.ph, %.lr.ph196.preheader ], [ %i.ag, %.lr.ph196.prol ]
  %i.ah = sub i64 %.0195.ph, %3
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0195 = phi i64 [ %i.ay, %.lr.ph196 ], [ %.0195.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.0195
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.0195
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !35
  %i.am = add nuw i64 %.0195, 1                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !35
  %i.aq = add nuw i64 %.0195, 2                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !35
  %i.au = add nuw i64 %.0195, 3                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !35
  %i.ay = add nuw i64 %.0195, 4                   ; 2 uses
  %.not144.3 = icmp eq i64 %i.ay, %3
  br i1 %.not144.3, label %.loopexit, label %.lr.ph196, !llvm.loop !1036

.preheader145:                                    ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block586, %vec.epilog.middle.block599, %.preheader147
  %i.az = icmp ult i64 %4, %3
  br i1 %i.az, label %iter.check624, label %.loopexit

iter.check624:                                    ; preds = %.preheader145
  %i.ba = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check606 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check606, label %.lr.ph193.preheader, label %vector.memcheck607

vector.memcheck607:                               ; preds = %iter.check624
  %6 = sub i64 %i.b, %i.a
  %diff.check608 = icmp ugt i64 %6, -32
  %7 = add i64 %4, %i.a
  %i.bb = sub i64 %i.b, %7
  %diff.check609 = icmp ugt i64 %i.bb, -32
  %conflict.rdx610 = or i1 %diff.check608, %diff.check609
  br i1 %conflict.rdx610, label %.lr.ph193.preheader, label %vector.main.loop.iter.check611

vector.main.loop.iter.check611:                   ; preds = %vector.memcheck607
  %min.iters.check612 = icmp ult i64 %i.ba, 32
  br i1 %min.iters.check612, label %vec.epilog.ph628, label %vector.ph613

vector.ph613:                                     ; preds = %vector.main.loop.iter.check611
  %i.bc = and i64 %i.ba, 24
  %n.vec614 = and i64 %i.ba, -32                  ; 4 uses
  %i.bd = add i64 %4, %n.vec614
  br label %vector.body615

vector.body615:                                   ; preds = %vector.ph613, %vector.body615
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %i.be = add nuw i64 %4, %index616               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load617 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !35
  %wide.load618 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %index616 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load619 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !35
  %wide.load620 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !35
  %i.bj = sub <16 x i8> %wide.load617, %wide.load619
  %i.bk = sub <16 x i8> %wide.load618, %wide.load620
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.be ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %i.bj, ptr %i.bl, align 1, !tbaa !35
  store <16 x i8> %i.bk, ptr %i.bm, align 1, !tbaa !35
  %index.next621 = add nuw i64 %index616, 32      ; 2 uses
  %i.bn = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.bn, label %middle.block622, label %vector.body615, !llvm.loop !1037

middle.block622:                                  ; preds = %vector.body615
  %cmp.n623 = icmp eq i64 %i.ba, %n.vec614
  br i1 %cmp.n623, label %.loopexit, label %vec.epilog.iter.check625

vec.epilog.iter.check625:                         ; preds = %middle.block622
  %min.epilog.iters.check627 = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check627, label %.lr.ph193.preheader, label %vec.epilog.ph628, !prof !1076

vec.epilog.ph628:                                 ; preds = %vector.main.loop.iter.check611, %vec.epilog.iter.check625
  %vec.epilog.resume.val629 = phi i64 [ %n.vec614, %vec.epilog.iter.check625 ], [ 0, %vector.main.loop.iter.check611 ]
  %n.vec630 = and i64 %i.ba, -8                   ; 3 uses
  %i.bo = add i64 %4, %n.vec630
  br label %vec.epilog.vector.body631

vec.epilog.vector.body631:                        ; preds = %vec.epilog.vector.body631, %vec.epilog.ph628
  %index632 = phi i64 [ %vec.epilog.resume.val629, %vec.epilog.ph628 ], [ %index.next635, %vec.epilog.vector.body631 ] ; 3 uses
  %i.bp = add nuw i64 %4, %index632               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp
  %wide.load633 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %index632
  %wide.load634 = load <8 x i8>, ptr %i.br, align 1, !tbaa !35
  %i.bs = sub <8 x i8> %wide.load633, %wide.load634
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  store <8 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !35
  %index.next635 = add nuw i64 %index632, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next635, %n.vec630
  br i1 %i.bu, label %vec.epilog.middle.block636, label %vec.epilog.vector.body631, !llvm.loop !1038

vec.epilog.middle.block636:                       ; preds = %vec.epilog.vector.body631
  %cmp.n637 = icmp eq i64 %i.ba, %n.vec630
  br i1 %cmp.n637, label %.loopexit, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %iter.check624, %vector.memcheck607, %vec.epilog.iter.check625, %vec.epilog.middle.block636
  %.2192.ph = phi i64 [ %4, %iter.check624 ], [ %4, %vector.memcheck607 ], [ %i.bd, %vec.epilog.iter.check625 ], [ %i.bo, %vec.epilog.middle.block636 ] ; 7 uses
  %i.bv = sub i64 %3, %.2192.ph
  %.neg716 = add i64 %.2192.ph, 1
  %xtraiter707 = and i64 %i.bv, 1
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol

.lr.ph193.prol:                                   ; preds = %.lr.ph193.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.2192.ph
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = sub nuw i64 %.2192.ph, %4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35
  %i.cb = sub i8 %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.2192.ph
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !35
  %i.cd = add nuw i64 %.2192.ph, 1
  br label %.lr.ph193.prol.loopexit

.lr.ph193.prol.loopexit:                          ; preds = %.lr.ph193.prol, %.lr.ph193.preheader
  %.2192.unr = phi i64 [ %.2192.ph, %.lr.ph193.preheader ], [ %i.cd, %.lr.ph193.prol ]
  %i.ce = icmp eq i64 %3, %.neg716
  br i1 %i.ce, label %.loopexit, label %.lr.ph193

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %.1190 = phi i64 [ %i.cu, %.lr.ph191 ], [ %.1190.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %.1190
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.1190
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !35
  %i.ci = add nuw nsw i64 %.1190, 1               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !35
  %i.cm = add nuw nsw i64 %.1190, 2               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !35
  %i.cq = add nuw nsw i64 %.1190, 3               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !35
  %i.cu = add nuw nsw i64 %.1190, 4               ; 2 uses
  %.not143.3 = icmp eq i64 %i.cu, %4
  br i1 %.not143.3, label %.preheader145, label %.lr.ph191, !llvm.loop !1039

.lr.ph193:                                        ; preds = %.lr.ph193.prol.loopexit, %.lr.ph193
  %.2192 = phi i64 [ %i.dk, %.lr.ph193 ], [ %.2192.unr, %.lr.ph193.prol.loopexit ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.2192
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !35
  %i.cx = sub nuw i64 %.2192, %4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !35
  %i.da = sub i8 %i.cw, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.2192
  store i8 %i.da, ptr %i.db, align 1, !tbaa !35
  %i.dc = add nuw i64 %.2192, 1                   ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !35
  %i.df = sub nuw i64 %i.dc, %4
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.di = sub i8 %i.de, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %i.dc
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !35
  %i.dk = add nuw i64 %.2192, 2                   ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.dk, %3
  br i1 %exitcond208.not.1, label %.loopexit, label %.lr.ph193, !llvm.loop !1040

bb.b:                                             ; preds = %bb.a
  %.not140 = icmp eq ptr %2, null
  %.not141186 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not140, label %.preheader148, label %.preheader150

.preheader150:                                    ; preds = %bb.b
  br i1 %.not141186, label %.loopexit, label %iter.check527

iter.check527:                                    ; preds = %.preheader150
  %min.iters.check509 = icmp ult i64 %3, 4
  br i1 %min.iters.check509, label %.lr.ph185.preheader, label %vector.memcheck510

vector.memcheck510:                               ; preds = %iter.check527
  %i.dl = sub i64 %i.b, %i.a
  %diff.check511 = icmp ugt i64 %i.dl, -32
  %i.dm = sub i64 %i.c, %i.a
  %diff.check512 = icmp ugt i64 %i.dm, -32
  %conflict.rdx513 = or i1 %diff.check511, %diff.check512
  br i1 %conflict.rdx513, label %.lr.ph185.preheader, label %vector.main.loop.iter.check514

vector.main.loop.iter.check514:                   ; preds = %vector.memcheck510
  %min.iters.check515 = icmp ult i64 %3, 32
  br i1 %min.iters.check515, label %vec.epilog.ph531, label %vector.ph516

vector.ph516:                                     ; preds = %vector.main.loop.iter.check514
  %i.dn = and i64 %3, 28
  %n.vec517 = and i64 %3, -32                     ; 4 uses
  br label %vector.body518

vector.body518:                                   ; preds = %vector.ph516, %vector.body518
  %index519 = phi i64 [ 0, %vector.ph516 ], [ %index.next524, %vector.body518 ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %index519 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load520 = load <16 x i8>, ptr %i.do, align 1, !tbaa !35
  %wide.load521 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %index519 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load522 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !35
  %wide.load523 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !35
  %i.ds = sub <16 x i8> %wide.load520, %wide.load522
  %i.dt = sub <16 x i8> %wide.load521, %wide.load523
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %index519 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %i.ds, ptr %i.du, align 1, !tbaa !35
  store <16 x i8> %i.dt, ptr %i.dv, align 1, !tbaa !35
  %index.next524 = add nuw i64 %index519, 32      ; 2 uses
  %i.dw = icmp eq i64 %index.next524, %n.vec517
  br i1 %i.dw, label %middle.block525, label %vector.body518, !llvm.loop !1041

middle.block525:                                  ; preds = %vector.body518
  %cmp.n526 = icmp eq i64 %3, %n.vec517
  br i1 %cmp.n526, label %.loopexit, label %vec.epilog.iter.check528

vec.epilog.iter.check528:                         ; preds = %middle.block525
  %min.epilog.iters.check530 = icmp eq i64 %i.dn, 0
  br i1 %min.epilog.iters.check530, label %.lr.ph185.preheader, label %vec.epilog.ph531, !prof !90

vec.epilog.ph531:                                 ; preds = %vector.main.loop.iter.check514, %vec.epilog.iter.check528
  %vec.epilog.resume.val532 = phi i64 [ %n.vec517, %vec.epilog.iter.check528 ], [ 0, %vector.main.loop.iter.check514 ]
  %n.vec533 = and i64 %3, -4                      ; 3 uses
end_hunk_0
begin_hunk_1_@_ZL14filterScanlinePhPKhS1_mmh:bb.a
bb.c:                                             ; preds = %bb.a
  %.not137 = icmp eq ptr %2, null
  %.not138178 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not137, label %.preheader154, label %.preheader157

.preheader157:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader155, label %iter.check382

iter.check382:                                    ; preds = %.preheader157
  %min.iters.check364 = icmp samesign ult i64 %4, 4
  br i1 %min.iters.check364, label %.lr.ph175.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %iter.check382
  %i.gt = sub i64 %i.b, %i.a
  %diff.check366 = icmp ugt i64 %i.gt, -32
  %i.gu = sub i64 %i.c, %i.a
  %diff.check367 = icmp ugt i64 %i.gu, -32
  %conflict.rdx368 = or i1 %diff.check366, %diff.check367
  br i1 %conflict.rdx368, label %.lr.ph175.preheader, label %vector.main.loop.iter.check369

vector.main.loop.iter.check369:                   ; preds = %vector.memcheck365
  %min.iters.check370 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check370, label %vec.epilog.ph386, label %vector.ph371

vector.ph371:                                     ; preds = %vector.main.loop.iter.check369
  %i.gv = and i64 %4, 28
  %n.vec372 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body373

vector.body373:                                   ; preds = %vector.ph371, %vector.body373
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %index374 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load375 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !35
  %wide.load376 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !35
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %index374 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load377 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !35
  %wide.load378 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !35
  %i.ha = lshr <16 x i8> %wide.load377, splat (i8 1)
  %i.hb = lshr <16 x i8> %wide.load378, splat (i8 1)
  %i.hc = sub <16 x i8> %wide.load375, %i.ha
  %i.hd = sub <16 x i8> %wide.load376, %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 %index374 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <16 x i8> %i.hc, ptr %i.he, align 1, !tbaa !35
  store <16 x i8> %i.hd, ptr %i.hf, align 1, !tbaa !35
  %index.next379 = add nuw i64 %index374, 32      ; 2 uses
  %i.hg = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.hg, label %middle.block380, label %vector.body373, !llvm.loop !1049

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %4, %n.vec372
  br i1 %cmp.n381, label %.preheader155, label %vec.epilog.iter.check383

vec.epilog.iter.check383:                         ; preds = %middle.block380
  %min.epilog.iters.check385 = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check385, label %.lr.ph175.preheader, label %vec.epilog.ph386, !prof !90

vec.epilog.ph386:                                 ; preds = %vector.main.loop.iter.check369, %vec.epilog.iter.check383
  %vec.epilog.resume.val387 = phi i64 [ %n.vec372, %vec.epilog.iter.check383 ], [ 0, %vector.main.loop.iter.check369 ]
  %n.vec388 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body389

vec.epilog.vector.body389:                        ; preds = %vec.epilog.vector.body389, %vec.epilog.ph386
  %index390 = phi i64 [ %vec.epilog.resume.val387, %vec.epilog.ph386 ], [ %index.next393, %vec.epilog.vector.body389 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %index390
  %wide.load391 = load <4 x i8>, ptr %i.hh, align 1, !tbaa !35
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 %index390
  %wide.load392 = load <4 x i8>, ptr %i.hi, align 1, !tbaa !35
  %i.hj = lshr <4 x i8> %wide.load392, splat (i8 1)
  %i.hk = sub <4 x i8> %wide.load391, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 %index390
  store <4 x i8> %i.hk, ptr %i.hl, align 1, !tbaa !35
  %index.next393 = add nuw i64 %index390, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next393, %n.vec388
  br i1 %i.hm, label %vec.epilog.middle.block394, label %vec.epilog.vector.body389, !llvm.loop !1050

vec.epilog.middle.block394:                       ; preds = %vec.epilog.vector.body389
  %cmp.n395 = icmp eq i64 %4, %n.vec388
  br i1 %cmp.n395, label %.preheader155, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %iter.check382, %vector.memcheck365, %vec.epilog.iter.check383, %vec.epilog.middle.block394
  %.5174.ph = phi i64 [ 0, %iter.check382 ], [ 0, %vector.memcheck365 ], [ %n.vec372, %vec.epilog.iter.check383 ], [ %n.vec388, %vec.epilog.middle.block394 ] ; 6 uses
  %.neg713 = or disjoint i64 %.5174.ph, 1
  %xtraiter686 = and i64 %4, 1
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  br i1 %lcmp.mod687.not, label %.lr.ph175.prol.loopexit, label %.lr.ph175.prol

.lr.ph175.prol:                                   ; preds = %.lr.ph175.preheader
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.5174.ph
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !35
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 %.5174.ph
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !35
  %i.hr = lshr i8 %i.hq, 1
  %i.hs = sub i8 %i.ho, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %.5174.ph
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !35
  %i.hu = or disjoint i64 %.5174.ph, 1
  br label %.lr.ph175.prol.loopexit

.lr.ph175.prol.loopexit:                          ; preds = %.lr.ph175.prol, %.lr.ph175.preheader
  %.5174.unr = phi i64 [ %.5174.ph, %.lr.ph175.preheader ], [ %i.hu, %.lr.ph175.prol ]
  %i.hv = icmp eq i64 %4, %.neg713
  br i1 %i.hv, label %.preheader155, label %.lr.ph175

.preheader154:                                    ; preds = %bb.c
  br i1 %.not138178, label %.preheader152, label %iter.check454

iter.check454:                                    ; preds = %.preheader154
  %min.iters.check440 = icmp samesign ult i64 %4, 4
  %i.hw = sub i64 %i.b, %i.a
  %diff.check442 = icmp ugt i64 %i.hw, -32
  %or.cond671 = or i1 %min.iters.check440, %diff.check442
  br i1 %or.cond671, label %.lr.ph180.preheader, label %vector.main.loop.iter.check443

vector.main.loop.iter.check443:                   ; preds = %iter.check454
  %min.iters.check444 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check444, label %vec.epilog.ph458, label %vector.ph445

vector.ph445:                                     ; preds = %vector.main.loop.iter.check443
  %i.hx = and i64 %4, 28
  %n.vec446 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body447

vector.body447:                                   ; preds = %vector.ph445, %vector.body447
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next451, %vector.body447 ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %index448 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %wide.load449 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !35
  %wide.load450 = load <16 x i8>, ptr %i.hz, align 1, !tbaa !35
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 %index448 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <16 x i8> %wide.load449, ptr %i.ia, align 1, !tbaa !35
  store <16 x i8> %wide.load450, ptr %i.ib, align 1, !tbaa !35
  %index.next451 = add nuw i64 %index448, 32      ; 2 uses
  %i.ic = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.ic, label %middle.block452, label %vector.body447, !llvm.loop !1051

middle.block452:                                  ; preds = %vector.body447
  %cmp.n453 = icmp eq i64 %4, %n.vec446
  br i1 %cmp.n453, label %.preheader152, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block452
  %min.epilog.iters.check457 = icmp eq i64 %i.hx, 0
  br i1 %min.epilog.iters.check457, label %.lr.ph180.preheader, label %vec.epilog.ph458, !prof !90

vec.epilog.ph458:                                 ; preds = %vector.main.loop.iter.check443, %vec.epilog.iter.check455
  %vec.epilog.resume.val459 = phi i64 [ %n.vec446, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check443 ]
  %n.vec460 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body461

vec.epilog.vector.body461:                        ; preds = %vec.epilog.vector.body461, %vec.epilog.ph458
  %index462 = phi i64 [ %vec.epilog.resume.val459, %vec.epilog.ph458 ], [ %index.next464, %vec.epilog.vector.body461 ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %index462
  %wide.load463 = load <4 x i8>, ptr %i.id, align 1, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 %index462
  store <4 x i8> %wide.load463, ptr %i.ie, align 1, !tbaa !35
  %index.next464 = add nuw i64 %index462, 4       ; 2 uses
  %i.if = icmp eq i64 %index.next464, %n.vec460
  br i1 %i.if, label %vec.epilog.middle.block465, label %vec.epilog.vector.body461, !llvm.loop !1052

vec.epilog.middle.block465:                       ; preds = %vec.epilog.vector.body461
  %cmp.n466 = icmp eq i64 %4, %n.vec460
  br i1 %cmp.n466, label %.preheader152, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %iter.check454, %vec.epilog.iter.check455, %vec.epilog.middle.block465
  %.7179.ph = phi i64 [ 0, %iter.check454 ], [ %n.vec446, %vec.epilog.iter.check455 ], [ %n.vec460, %vec.epilog.middle.block465 ] ; 3 uses
  %xtraiter692 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod693.not = icmp eq i64 %xtraiter692, 0
  br i1 %lcmp.mod693.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol

.lr.ph180.prol:                                   ; preds = %.lr.ph180.preheader, %.lr.ph180.prol
  %.7179.prol = phi i64 [ %i.ij, %.lr.ph180.prol ], [ %.7179.ph, %.lr.ph180.preheader ] ; 3 uses
  %prol.iter694 = phi i64 [ %prol.iter694.next, %.lr.ph180.prol ], [ 0, %.lr.ph180.preheader ]
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %.7179.prol
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !35
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %.7179.prol
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !35
  %i.ij = add nuw nsw i64 %.7179.prol, 1          ; 2 uses
  %prol.iter694.next = add i64 %prol.iter694, 1   ; 2 uses
  %prol.iter694.cmp.not = icmp eq i64 %prol.iter694.next, %xtraiter692
  br i1 %prol.iter694.cmp.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol, !llvm.loop !1053

.lr.ph180.prol.loopexit:                          ; preds = %.lr.ph180.prol, %.lr.ph180.preheader
  %.7179.unr = phi i64 [ %.7179.ph, %.lr.ph180.preheader ], [ %i.ij, %.lr.ph180.prol ]
  %i.ik = sub nsw i64 %.7179.ph, %4
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %.preheader152, label %.lr.ph180

.preheader155:                                    ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175, %middle.block380, %vec.epilog.middle.block394, %.preheader157
  %i.im = icmp ult i64 %4, %3
  br i1 %i.im, label %iter.check422, label %.loopexit

iter.check422:                                    ; preds = %.preheader155
  %i.in = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check403 = icmp ult i64 %i.in, 4
  br i1 %min.iters.check403, label %.lr.ph177.preheader, label %vector.memcheck404

vector.memcheck404:                               ; preds = %iter.check422
  %8 = sub i64 %i.b, %i.a
  %diff.check405 = icmp ugt i64 %8, -16
  %9 = add i64 %4, %i.a
  %i.io = sub i64 %i.b, %9
  %diff.check406 = icmp ugt i64 %i.io, -16
  %conflict.rdx407 = or i1 %diff.check405, %diff.check406
  %i.ip = sub i64 %i.c, %i.a
  %diff.check408 = icmp ugt i64 %i.ip, -16
  %conflict.rdx409 = or i1 %conflict.rdx407, %diff.check408
  br i1 %conflict.rdx409, label %.lr.ph177.preheader, label %vector.main.loop.iter.check410

vector.main.loop.iter.check410:                   ; preds = %vector.memcheck404
  %min.iters.check411 = icmp ult i64 %i.in, 16
  br i1 %min.iters.check411, label %vec.epilog.ph426, label %vector.ph412

vector.ph412:                                     ; preds = %vector.main.loop.iter.check410
  %i.iq = and i64 %i.in, 12
  %n.vec413 = and i64 %i.in, -16                  ; 4 uses
  %i.ir = add i64 %4, %n.vec413
  br label %vector.body414

vector.body414:                                   ; preds = %vector.ph412, %vector.body414
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next419, %vector.body414 ] ; 3 uses
  %i.is = add nuw i64 %4, %index415               ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 %i.is
  %wide.load416 = load <16 x i8>, ptr %i.it, align 1, !tbaa !35
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %index415
  %wide.load417 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !35
  %i.iv = zext <16 x i8> %wide.load417 to <16 x i16>
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 %i.is
  %wide.load418 = load <16 x i8>, ptr %i.iw, align 1, !tbaa !35
  %i.ix = zext <16 x i8> %wide.load418 to <16 x i16>
  %i.iy = add nuw nsw <16 x i16> %i.ix, %i.iv
  %i.iz = lshr <16 x i16> %i.iy, splat (i16 1)
  %i.ja = trunc nuw <16 x i16> %i.iz to <16 x i8>
  %i.jb = sub <16 x i8> %wide.load416, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 %i.is
  store <16 x i8> %i.jb, ptr %i.jc, align 1, !tbaa !35
  %index.next419 = add nuw i64 %index415, 16      ; 2 uses
  %i.jd = icmp eq i64 %index.next419, %n.vec413
  br i1 %i.jd, label %middle.block420, label %vector.body414, !llvm.loop !1054

middle.block420:                                  ; preds = %vector.body414
  %cmp.n421 = icmp eq i64 %i.in, %n.vec413
  br i1 %cmp.n421, label %.loopexit, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block420
  %min.epilog.iters.check425 = icmp eq i64 %i.iq, 0
  br i1 %min.epilog.iters.check425, label %.lr.ph177.preheader, label %vec.epilog.ph426, !prof !83

vec.epilog.ph426:                                 ; preds = %vector.main.loop.iter.check410, %vec.epilog.iter.check423
  %vec.epilog.resume.val427 = phi i64 [ %n.vec413, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check410 ]
  %n.vec428 = and i64 %i.in, -4                   ; 3 uses
  %i.je = add i64 %4, %n.vec428
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph426
  %index430 = phi i64 [ %vec.epilog.resume.val427, %vec.epilog.ph426 ], [ %index.next434, %vec.epilog.vector.body429 ] ; 3 uses
  %i.jf = add nuw i64 %4, %index430               ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf
  %wide.load431 = load <4 x i8>, ptr %i.jg, align 1, !tbaa !35
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 %index430
  %wide.load432 = load <4 x i8>, ptr %i.jh, align 1, !tbaa !35
  %i.ji = zext <4 x i8> %wide.load432 to <4 x i16>
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %i.jf
  %wide.load433 = load <4 x i8>, ptr %i.jj, align 1, !tbaa !35
  %i.jk = zext <4 x i8> %wide.load433 to <4 x i16>
  %i.jl = add nuw nsw <4 x i16> %i.jk, %i.ji
  %i.jm = lshr <4 x i16> %i.jl, splat (i16 1)
  %i.jn = trunc nuw <4 x i16> %i.jm to <4 x i8>
  %i.jo = sub <4 x i8> %wide.load431, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 %i.jf
  store <4 x i8> %i.jo, ptr %i.jp, align 1, !tbaa !35
  %index.next434 = add nuw i64 %index430, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next434, %n.vec428
  br i1 %i.jq, label %vec.epilog.middle.block435, label %vec.epilog.vector.body429, !llvm.loop !1055

vec.epilog.middle.block435:                       ; preds = %vec.epilog.vector.body429
  %cmp.n436 = icmp eq i64 %i.in, %n.vec428
  br i1 %cmp.n436, label %.loopexit, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %iter.check422, %vector.memcheck404, %vec.epilog.iter.check423, %vec.epilog.middle.block435
  %.6176.ph = phi i64 [ %4, %iter.check422 ], [ %4, %vector.memcheck404 ], [ %i.ir, %vec.epilog.iter.check423 ], [ %i.je, %vec.epilog.middle.block435 ] ; 8 uses
  %i.jr = sub i64 %3, %.6176.ph
  %.neg714 = add i64 %.6176.ph, 1
  %xtraiter689 = and i64 %i.jr, 1
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

.lr.ph177.prol:                                   ; preds = %.lr.ph177.preheader
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %.6176.ph
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !35
  %i.ju = sub nuw i64 %.6176.ph, %4
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !35
  %i.jx = zext i8 %i.jw to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 %.6176.ph
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !35
  %i.ka = zext i8 %i.jz to i16
  %i.kb = add nuw nsw i16 %i.ka, %i.jx
  %i.kc = lshr i16 %i.kb, 1
  %i.kd = trunc nuw i16 %i.kc to i8
  %i.ke = sub i8 %i.jt, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %.6176.ph
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !35
  %i.kg = add nuw i64 %.6176.ph, 1
  br label %.lr.ph177.prol.loopexit

.lr.ph177.prol.loopexit:                          ; preds = %.lr.ph177.prol, %.lr.ph177.preheader
  %.6176.unr = phi i64 [ %.6176.ph, %.lr.ph177.preheader ], [ %i.kg, %.lr.ph177.prol ]
  %i.kh = icmp eq i64 %3, %.neg714
  br i1 %i.kh, label %.loopexit, label %.lr.ph177

.lr.ph175:                                        ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175
  %.5174 = phi i64 [ %i.kx, %.lr.ph175 ], [ %.5174.unr, %.lr.ph175.prol.loopexit ] ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 %.5174
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !35
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 %.5174
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !35
  %i.km = lshr i8 %i.kl, 1
  %i.kn = sub i8 %i.kj, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 %.5174
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !35
  %i.kp = add nuw nsw i64 %.5174, 1               ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !35
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 %i.kp
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !35
  %i.ku = lshr i8 %i.kt, 1
  %i.kv = sub i8 %i.kr, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 %i.kp
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !35
  %i.kx = add nuw nsw i64 %.5174, 2               ; 2 uses
  %.not139.1 = icmp eq i64 %i.kx, %4
  br i1 %.not139.1, label %.preheader155, label %.lr.ph175, !llvm.loop !1056

.lr.ph177:                                        ; preds = %.lr.ph177.prol.loopexit, %.lr.ph177
  %.6176 = phi i64 [ %i.mb, %.lr.ph177 ], [ %.6176.unr, %.lr.ph177.prol.loopexit ] ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %.6176
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !35
  %i.la = sub nuw i64 %.6176, %4
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !35
  %i.ld = zext i8 %i.lc to i16
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 %.6176
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !35
  %i.lg = zext i8 %i.lf to i16
  %i.lh = add nuw nsw i16 %i.lg, %i.ld
  %i.li = lshr i16 %i.lh, 1
  %i.lj = trunc nuw i16 %i.li to i8
  %i.lk = sub i8 %i.kz, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 %.6176
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !35
  %i.lm = add nuw i64 %.6176, 1                   ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !35
  %i.lp = sub nuw i64 %i.lm, %4
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !35
  %i.ls = zext i8 %i.lr to i16
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 %i.lm
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !35
  %i.lv = zext i8 %i.lu to i16
  %i.lw = add nuw nsw i16 %i.lv, %i.ls
  %i.lx = lshr i16 %i.lw, 1
  %i.ly = trunc nuw i16 %i.lx to i8
  %i.lz = sub i8 %i.lo, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 %i.lm
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !35
  %i.mb = add nuw i64 %.6176, 2                   ; 2 uses
  %exitcond206.not.1 = icmp eq i64 %i.mb, %3
  br i1 %exitcond206.not.1, label %.loopexit, label %.lr.ph177, !llvm.loop !1057

.preheader152:                                    ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180, %middle.block452, %vec.epilog.middle.block465, %.preheader154
  %i.mc = icmp ult i64 %4, %3
  br i1 %i.mc, label %iter.check490, label %.loopexit

iter.check490:                                    ; preds = %.preheader152
  %i.md = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check472 = icmp ult i64 %i.md, 8
  br i1 %min.iters.check472, label %.lr.ph182.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %iter.check490
  %10 = sub i64 %i.b, %i.a
  %diff.check474 = icmp ugt i64 %10, -32
  %11 = add i64 %4, %i.a
  %i.me = sub i64 %i.b, %11
  %diff.check475 = icmp ugt i64 %i.me, -32
  %conflict.rdx476 = or i1 %diff.check474, %diff.check475
  br i1 %conflict.rdx476, label %.lr.ph182.preheader, label %vector.main.loop.iter.check477

vector.main.loop.iter.check477:                   ; preds = %vector.memcheck473
  %min.iters.check478 = icmp ult i64 %i.md, 32
  br i1 %min.iters.check478, label %vec.epilog.ph494, label %vector.ph479

vector.ph479:                                     ; preds = %vector.main.loop.iter.check477
  %i.mf = and i64 %i.md, 24
  %n.vec480 = and i64 %i.md, -32                  ; 4 uses
  %i.mg = add i64 %4, %n.vec480
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph479, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next487, %vector.body481 ] ; 3 uses
  %i.mh = add nuw i64 %4, %index482               ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %wide.load483 = load <16 x i8>, ptr %i.mi, align 1, !tbaa !35
  %wide.load484 = load <16 x i8>, ptr %i.mj, align 1, !tbaa !35
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %index482 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load485 = load <16 x i8>, ptr %i.mk, align 1, !tbaa !35
  %wide.load486 = load <16 x i8>, ptr %i.ml, align 1, !tbaa !35
  %i.mm = lshr <16 x i8> %wide.load485, splat (i8 1)
  %i.mn = lshr <16 x i8> %wide.load486, splat (i8 1)
  %i.mo = sub <16 x i8> %wide.load483, %i.mm
  %i.mp = sub <16 x i8> %wide.load484, %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 %i.mh ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store <16 x i8> %i.mo, ptr %i.mq, align 1, !tbaa !35
  store <16 x i8> %i.mp, ptr %i.mr, align 1, !tbaa !35
  %index.next487 = add nuw i64 %index482, 32      ; 2 uses
  %i.ms = icmp eq i64 %index.next487, %n.vec480
  br i1 %i.ms, label %middle.block488, label %vector.body481, !llvm.loop !1058

middle.block488:                                  ; preds = %vector.body481
  %cmp.n489 = icmp eq i64 %i.md, %n.vec480
  br i1 %cmp.n489, label %.loopexit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block488
  %min.epilog.iters.check493 = icmp eq i64 %i.mf, 0
  br i1 %min.epilog.iters.check493, label %.lr.ph182.preheader, label %vec.epilog.ph494, !prof !1076

vec.epilog.ph494:                                 ; preds = %vector.main.loop.iter.check477, %vec.epilog.iter.check491
  %vec.epilog.resume.val495 = phi i64 [ %n.vec480, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check477 ]
  %n.vec496 = and i64 %i.md, -8                   ; 3 uses
  %i.mt = add i64 %4, %n.vec496
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph494
  %index498 = phi i64 [ %vec.epilog.resume.val495, %vec.epilog.ph494 ], [ %index.next501, %vec.epilog.vector.body497 ] ; 3 uses
  %i.mu = add nuw i64 %4, %index498               ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 %i.mu
  %wide.load499 = load <8 x i8>, ptr %i.mv, align 1, !tbaa !35
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 %index498
  %wide.load500 = load <8 x i8>, ptr %i.mw, align 1, !tbaa !35
  %i.mx = lshr <8 x i8> %wide.load500, splat (i8 1)
  %i.my = sub <8 x i8> %wide.load499, %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 %i.mu
  store <8 x i8> %i.my, ptr %i.mz, align 1, !tbaa !35
  %index.next501 = add nuw i64 %index498, 8       ; 2 uses
  %i.na = icmp eq i64 %index.next501, %n.vec496
  br i1 %i.na, label %vec.epilog.middle.block502, label %vec.epilog.vector.body497, !llvm.loop !1059

vec.epilog.middle.block502:                       ; preds = %vec.epilog.vector.body497
  %cmp.n503 = icmp eq i64 %i.md, %n.vec496
  br i1 %cmp.n503, label %.loopexit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %iter.check490, %vector.memcheck473, %vec.epilog.iter.check491, %vec.epilog.middle.block502
  %.8181.ph = phi i64 [ %4, %iter.check490 ], [ %4, %vector.memcheck473 ], [ %i.mg, %vec.epilog.iter.check491 ], [ %i.mt, %vec.epilog.middle.block502 ] ; 7 uses
  %i.nb = sub i64 %3, %.8181.ph
  %.neg715 = add i64 %.8181.ph, 1
  %xtraiter695 = and i64 %i.nb, 1
  %lcmp.mod696.not = icmp eq i64 %xtraiter695, 0
  br i1 %lcmp.mod696.not, label %.lr.ph182.prol.loopexit, label %.lr.ph182.prol

.lr.ph182.prol:                                   ; preds = %.lr.ph182.preheader
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 %.8181.ph
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !35
  %i.ne = sub nuw i64 %.8181.ph, %4
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !35
  %i.nh = lshr i8 %i.ng, 1
  %i.ni = sub i8 %i.nd, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 %.8181.ph
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !35
  %i.nk = add nuw i64 %.8181.ph, 1
  br label %.lr.ph182.prol.loopexit

.lr.ph182.prol.loopexit:                          ; preds = %.lr.ph182.prol, %.lr.ph182.preheader
  %.8181.unr = phi i64 [ %.8181.ph, %.lr.ph182.preheader ], [ %i.nk, %.lr.ph182.prol ]
  %i.nl = icmp eq i64 %3, %.neg715
  br i1 %i.nl, label %.loopexit, label %.lr.ph182

.lr.ph180:                                        ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180
  %.7179 = phi i64 [ %i.ob, %.lr.ph180 ], [ %.7179.unr, %.lr.ph180.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 %.7179
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !35
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 %.7179
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !35
  %i.np = add nuw nsw i64 %.7179, 1               ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !35
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 %i.np
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !35
  %i.nt = add nuw nsw i64 %.7179, 2               ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !35
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 %i.nt
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !35
  %i.nx = add nuw nsw i64 %.7179, 3               ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !35
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 %i.nx
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !35
  %i.ob = add nuw nsw i64 %.7179, 4               ; 2 uses
  %.not138.3 = icmp eq i64 %i.ob, %4
  br i1 %.not138.3, label %.preheader152, label %.lr.ph180, !llvm.loop !1060

.lr.ph182:                                        ; preds = %.lr.ph182.prol.loopexit, %.lr.ph182
  %.8181 = phi i64 [ %i.ot, %.lr.ph182 ], [ %.8181.unr, %.lr.ph182.prol.loopexit ] ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 %.8181
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !35
  %i.oe = sub nuw i64 %.8181, %4
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !35
  %i.oh = lshr i8 %i.og, 1
  %i.oi = sub i8 %i.od, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 %.8181
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !35
  %i.ok = add nuw i64 %.8181, 1                   ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !35
  %i.on = sub nuw i64 %i.ok, %4
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !35
  %i.oq = lshr i8 %i.op, 1
  %i.or = sub i8 %i.om, %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 %i.ok
  store i8 %i.or, ptr %i.os, align 1, !tbaa !35
  %i.ot = add nuw i64 %.8181, 2                   ; 2 uses
  %exitcond207.not.1 = icmp eq i64 %i.ot, %3
  br i1 %exitcond207.not.1, label %.loopexit, label %.lr.ph182, !llvm.loop !1061

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %.not135168 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not, label %.preheader160, label %.preheader163

.preheader163:                                    ; preds = %bb.d
  br i1 %.not135168, label %.preheader161, label %iter.check

iter.check:                                       ; preds = %.preheader163
  %min.iters.check = icmp samesign ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ou = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ou, -32
  %i.ov = sub i64 %i.c, %i.a
  %diff.check235 = icmp ugt i64 %i.ov, -32
  %conflict.rdx = or i1 %diff.check, %diff.check235
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check236 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check236, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ow = and i64 %4, 28
  %n.vec = and i64 %4, 536870880                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load = load <16 x i8>, ptr %i.ox, align 1, !tbaa !35
  %wide.load237 = load <16 x i8>, ptr %i.oy, align 1, !tbaa !35
  %i.oz = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %wide.load238 = load <16 x i8>, ptr %i.oz, align 1, !tbaa !35
  %wide.load239 = load <16 x i8>, ptr %i.pa, align 1, !tbaa !35
  %i.pb = sub <16 x i8> %wide.load, %wide.load238
  %i.pc = sub <16 x i8> %wide.load237, %wide.load239
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <16 x i8> %i.pb, ptr %i.pd, align 1, !tbaa !35
  store <16 x i8> %i.pc, ptr %i.pe, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pf = icmp eq i64 %index.next, %n.vec
  br i1 %i.pf, label %middle.block, label %vector.body, !llvm.loop !1062

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.preheader161, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ow, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec240 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next244, %vec.epilog.vector.body ] ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 %index241
  %wide.load242 = load <4 x i8>, ptr %i.pg, align 1, !tbaa !35
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 %index241
  %wide.load243 = load <4 x i8>, ptr %i.ph, align 1, !tbaa !35
  %i.pi = sub <4 x i8> %wide.load242, %wide.load243
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 %index241
  store <4 x i8> %i.pi, ptr %i.pj, align 1, !tbaa !35
  %index.next244 = add nuw i64 %index241, 4       ; 2 uses
  %i.pk = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.pk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1063

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n245 = icmp eq i64 %4, %n.vec240
  br i1 %cmp.n245, label %.preheader161, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.9165.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec240, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.9165.prol = phi i64 [ %i.pr, %.lr.ph.prol ], [ %.9165.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 %.9165.prol
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !35
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 %.9165.prol
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !35
  %i.pp = sub i8 %i.pm, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 %.9165.prol
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !35
  %i.pr = add nuw nsw i64 %.9165.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1064

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.9165.unr = phi i64 [ %.9165.ph, %.lr.ph.preheader ], [ %i.pr, %.lr.ph.prol ]
  %i.ps = sub nsw i64 %.9165.ph, %4
  %i.pt = icmp ugt i64 %i.ps, -4
  br i1 %i.pt, label %.preheader161, label %.lr.ph

.preheader160:                                    ; preds = %bb.d
  br i1 %.not135168, label %.preheader158, label %iter.check309

iter.check309:                                    ; preds = %.preheader160
  %min.iters.check295 = icmp samesign ult i64 %4, 4
  %i.pu = sub i64 %i.b, %i.a
  %diff.check297 = icmp ugt i64 %i.pu, -32
  %or.cond672 = or i1 %min.iters.check295, %diff.check297
  br i1 %or.cond672, label %.lr.ph170.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %iter.check309
  %min.iters.check299 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check299, label %vec.epilog.ph313, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.pv = and i64 %4, 28
  %n.vec301 = and i64 %4, 536870880               ; 4 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.ph300, %vector.body302
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next306, %vector.body302 ] ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 %index303 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load304 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !35
  %wide.load305 = load <16 x i8>, ptr %i.px, align 1, !tbaa !35
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 %index303 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store <16 x i8> %wide.load304, ptr %i.py, align 1, !tbaa !35
  store <16 x i8> %wide.load305, ptr %i.pz, align 1, !tbaa !35
  %index.next306 = add nuw i64 %index303, 32      ; 2 uses
  %i.qa = icmp eq i64 %index.next306, %n.vec301
  br i1 %i.qa, label %middle.block307, label %vector.body302, !llvm.loop !1065

middle.block307:                                  ; preds = %vector.body302
  %cmp.n308 = icmp eq i64 %4, %n.vec301
  br i1 %cmp.n308, label %.preheader158, label %vec.epilog.iter.check310

vec.epilog.iter.check310:                         ; preds = %middle.block307
  %min.epilog.iters.check312 = icmp eq i64 %i.pv, 0
  br i1 %min.epilog.iters.check312, label %.lr.ph170.preheader, label %vec.epilog.ph313, !prof !90

vec.epilog.ph313:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check310
  %vec.epilog.resume.val314 = phi i64 [ %n.vec301, %vec.epilog.iter.check310 ], [ 0, %vector.main.loop.iter.check298 ]
  %n.vec315 = and i64 %4, 536870908               ; 3 uses
  br label %vec.epilog.vector.body316

vec.epilog.vector.body316:                        ; preds = %vec.epilog.vector.body316, %vec.epilog.ph313
  %index317 = phi i64 [ %vec.epilog.resume.val314, %vec.epilog.ph313 ], [ %index.next319, %vec.epilog.vector.body316 ] ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 %index317
  %wide.load318 = load <4 x i8>, ptr %i.qb, align 1, !tbaa !35
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 %index317
  store <4 x i8> %wide.load318, ptr %i.qc, align 1, !tbaa !35
  %index.next319 = add nuw i64 %index317, 4       ; 2 uses
  %i.qd = icmp eq i64 %index.next319, %n.vec315
  br i1 %i.qd, label %vec.epilog.middle.block320, label %vec.epilog.vector.body316, !llvm.loop !1066

vec.epilog.middle.block320:                       ; preds = %vec.epilog.vector.body316
  %cmp.n321 = icmp eq i64 %4, %n.vec315
  br i1 %cmp.n321, label %.preheader158, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %iter.check309, %vec.epilog.iter.check310, %vec.epilog.middle.block320
  %.11169.ph = phi i64 [ 0, %iter.check309 ], [ %n.vec301, %vec.epilog.iter.check310 ], [ %n.vec315, %vec.epilog.middle.block320 ] ; 3 uses
  %xtraiter680 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod681.not = icmp eq i64 %xtraiter680, 0
  br i1 %lcmp.mod681.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol

.lr.ph170.prol:                                   ; preds = %.lr.ph170.preheader, %.lr.ph170.prol
  %.11169.prol = phi i64 [ %i.qh, %.lr.ph170.prol ], [ %.11169.ph, %.lr.ph170.preheader ] ; 3 uses
  %prol.iter682 = phi i64 [ %prol.iter682.next, %.lr.ph170.prol ], [ 0, %.lr.ph170.preheader ]
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 %.11169.prol
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !35
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 %.11169.prol
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !35
  %i.qh = add nuw nsw i64 %.11169.prol, 1         ; 2 uses
  %prol.iter682.next = add i64 %prol.iter682, 1   ; 2 uses
  %prol.iter682.cmp.not = icmp eq i64 %prol.iter682.next, %xtraiter680
  br i1 %prol.iter682.cmp.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol, !llvm.loop !1067

.lr.ph170.prol.loopexit:                          ; preds = %.lr.ph170.prol, %.lr.ph170.preheader
  %.11169.unr = phi i64 [ %.11169.ph, %.lr.ph170.preheader ], [ %i.qh, %.lr.ph170.prol ]
  %i.qi = sub nsw i64 %.11169.ph, %4
  %i.qj = icmp ugt i64 %i.qi, -4
  br i1 %i.qj, label %.preheader158, label %.lr.ph170

.preheader161:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader163
  %i.qk = icmp ult i64 %4, %3
  br i1 %i.qk, label %iter.check276, label %.loopexit

iter.check276:                                    ; preds = %.preheader161
  %i.ql = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check254 = icmp ult i64 %i.ql, 4
  br i1 %min.iters.check254, label %.lr.ph167.preheader, label %vector.memcheck255

vector.memcheck255:                               ; preds = %iter.check276
  %12 = sub i64 %i.b, %i.a
  %diff.check256 = icmp ugt i64 %12, -16
  %13 = add i64 %4, %i.a                          ; 2 uses
  %i.qm = sub i64 %i.b, %13
  %diff.check257 = icmp ugt i64 %i.qm, -16
  %conflict.rdx258 = or i1 %diff.check256, %diff.check257
  %i.qn = sub i64 %i.c, %i.a
  %diff.check259 = icmp ugt i64 %i.qn, -16
  %conflict.rdx260 = or i1 %conflict.rdx258, %diff.check259
  %i.qo = sub i64 %i.c, %13
  %diff.check261 = icmp ugt i64 %i.qo, -16
  %conflict.rdx262 = or i1 %conflict.rdx260, %diff.check261
  br i1 %conflict.rdx262, label %.lr.ph167.preheader, label %vector.main.loop.iter.check263

vector.main.loop.iter.check263:                   ; preds = %vector.memcheck255
  %min.iters.check264 = icmp ult i64 %i.ql, 16
  br i1 %min.iters.check264, label %vec.epilog.ph280, label %vector.ph265

vector.ph265:                                     ; preds = %vector.main.loop.iter.check263
  %i.qp = and i64 %i.ql, 12
  %n.vec266 = and i64 %i.ql, -16                  ; 4 uses
  %i.qq = add i64 %4, %n.vec266
  br label %vector.body267

vector.body267:                                   ; preds = %vector.ph265, %vector.body267
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next273, %vector.body267 ] ; 4 uses
  %i.qr = add nuw i64 %4, %index268               ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 %i.qr
  %wide.load269 = load <16 x i8>, ptr %i.qs, align 1, !tbaa !35
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 %index268
  %wide.load270 = load <16 x i8>, ptr %i.qt, align 1, !tbaa !35 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 %i.qr
  %wide.load271 = load <16 x i8>, ptr %i.qu, align 1, !tbaa !35 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 %index268
  %wide.load272 = load <16 x i8>, ptr %i.qv, align 1, !tbaa !35 ; 2 uses
  %i.qw = zext <16 x i8> %wide.load271 to <16 x i32> ; 2 uses
  %i.qx = zext <16 x i8> %wide.load272 to <16 x i32> ; 3 uses
  %i.qy = sub nsw <16 x i32> %i.qw, %i.qx
  %i.qz = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.qy, i1 true) ; 2 uses
  %i.ra = zext <16 x i8> %wide.load270 to <16 x i32> ; 2 uses
  %i.rb = sub nsw <16 x i32> %i.ra, %i.qx
  %i.rc = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rb, i1 true) ; 2 uses
  %i.rd = add nuw nsw <16 x i32> %i.qw, %i.ra
  %i.re = shl nuw nsw <16 x i32> %i.qx, splat (i32 1)
  %i.rf = sub nsw <16 x i32> %i.rd, %i.re
  %i.rg = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.rf, i1 true)
  %i.rh = icmp samesign ult <16 x i32> %i.rc, %i.qz
  %i.ri = select <16 x i1> %i.rh, <16 x i8> %wide.load271, <16 x i8> %wide.load270
  %i.rj = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.rc, <16 x i32> %i.qz)
  %i.rk = icmp samesign ult <16 x i32> %i.rg, %i.rj
  %i.rl = select <16 x i1> %i.rk, <16 x i8> %wide.load272, <16 x i8> %i.ri
  %i.rm = sub <16 x i8> %wide.load269, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 %i.qr
  store <16 x i8> %i.rm, ptr %i.rn, align 1, !tbaa !35
  %index.next273 = add nuw i64 %index268, 16      ; 2 uses
  %i.ro = icmp eq i64 %index.next273, %n.vec266
  br i1 %i.ro, label %middle.block274, label %vector.body267, !llvm.loop !1068

middle.block274:                                  ; preds = %vector.body267
  %cmp.n275 = icmp eq i64 %i.ql, %n.vec266
  br i1 %cmp.n275, label %.loopexit, label %vec.epilog.iter.check277

vec.epilog.iter.check277:                         ; preds = %middle.block274
  %min.epilog.iters.check279 = icmp eq i64 %i.qp, 0
  br i1 %min.epilog.iters.check279, label %.lr.ph167.preheader, label %vec.epilog.ph280, !prof !83

vec.epilog.ph280:                                 ; preds = %vector.main.loop.iter.check263, %vec.epilog.iter.check277
  %vec.epilog.resume.val281 = phi i64 [ %n.vec266, %vec.epilog.iter.check277 ], [ 0, %vector.main.loop.iter.check263 ]
  %n.vec282 = and i64 %i.ql, -4                   ; 3 uses
  %i.rp = add i64 %4, %n.vec282
  br label %vec.epilog.vector.body283

vec.epilog.vector.body283:                        ; preds = %vec.epilog.vector.body283, %vec.epilog.ph280
  %index284 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph280 ], [ %index.next289, %vec.epilog.vector.body283 ] ; 4 uses
  %i.rq = add nuw i64 %4, %index284               ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 %i.rq
  %wide.load285 = load <4 x i8>, ptr %i.rr, align 1, !tbaa !35
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 %index284
  %wide.load286 = load <4 x i8>, ptr %i.rs, align 1, !tbaa !35 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 %i.rq
  %wide.load287 = load <4 x i8>, ptr %i.rt, align 1, !tbaa !35 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 %index284
  %wide.load288 = load <4 x i8>, ptr %i.ru, align 1, !tbaa !35 ; 2 uses
  %i.rv = zext <4 x i8> %wide.load287 to <4 x i32> ; 2 uses
  %i.rw = zext <4 x i8> %wide.load288 to <4 x i32> ; 3 uses
  %i.rx = sub nsw <4 x i32> %i.rv, %i.rw
  %i.ry = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rx, i1 true) ; 2 uses
  %i.rz = zext <4 x i8> %wide.load286 to <4 x i32> ; 2 uses
  %i.sa = sub nsw <4 x i32> %i.rz, %i.rw
  %i.sb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sa, i1 true) ; 2 uses
  %i.sc = add nuw nsw <4 x i32> %i.rv, %i.rz
  %i.sd = shl nuw nsw <4 x i32> %i.rw, splat (i32 1)
  %i.se = sub nsw <4 x i32> %i.sc, %i.sd
  %i.sf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.se, i1 true)
  %i.sg = icmp samesign ult <4 x i32> %i.sb, %i.ry
  %i.sh = select <4 x i1> %i.sg, <4 x i8> %wide.load287, <4 x i8> %wide.load286
  %i.si = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.sb, <4 x i32> %i.ry)
  %i.sj = icmp samesign ult <4 x i32> %i.sf, %i.si
  %i.sk = select <4 x i1> %i.sj, <4 x i8> %wide.load288, <4 x i8> %i.sh
  %i.sl = sub <4 x i8> %wide.load285, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 %i.rq
  store <4 x i8> %i.sl, ptr %i.sm, align 1, !tbaa !35
  %index.next289 = add nuw i64 %index284, 4       ; 2 uses
  %i.sn = icmp eq i64 %index.next289, %n.vec282
  br i1 %i.sn, label %vec.epilog.middle.block290, label %vec.epilog.vector.body283, !llvm.loop !1069

vec.epilog.middle.block290:                       ; preds = %vec.epilog.vector.body283
  %cmp.n291 = icmp eq i64 %i.ql, %n.vec282
  br i1 %cmp.n291, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check276, %vector.memcheck255, %vec.epilog.iter.check277, %vec.epilog.middle.block290
  %.10166.ph = phi i64 [ %4, %iter.check276 ], [ %4, %vector.memcheck255 ], [ %i.qq, %vec.epilog.iter.check277 ], [ %i.rp, %vec.epilog.middle.block290 ]
  br label %.lr.ph167

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.9165 = phi i64 [ %i.tp, %.lr.ph ], [ %.9165.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 %.9165
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !35
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 %.9165
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !35
  %i.ss = sub i8 %i.sp, %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 %.9165
  store i8 %i.ss, ptr %i.st, align 1, !tbaa !35
  %i.su = add nuw nsw i64 %.9165, 1               ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !35
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 %i.su
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !35
  %i.sz = sub i8 %i.sw, %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 %i.su
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !35
  %i.tb = add nuw nsw i64 %.9165, 2               ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !35
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 %i.tb
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !35
  %i.tg = sub i8 %i.td, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 %i.tb
  store i8 %i.tg, ptr %i.th, align 1, !tbaa !35
  %i.ti = add nuw nsw i64 %.9165, 3               ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !35
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ti
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !35
  %i.tn = sub i8 %i.tk, %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 %i.ti
  store i8 %i.tn, ptr %i.to, align 1, !tbaa !35
  %i.tp = add nuw nsw i64 %.9165, 4               ; 2 uses
  %.not136.3 = icmp eq i64 %i.tp, %4
  br i1 %.not136.3, label %.preheader161, label %.lr.ph, !llvm.loop !1070

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.10166 = phi i64 [ %i.up, %.lr.ph167 ], [ %.10166.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 %.10166
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !35
  %i.ts = sub nuw i64 %.10166, %4                 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !35  ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %2, i64 %.10166
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !35  ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %2, i64 %i.ts
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !35  ; 2 uses
  %i.tz = zext i8 %i.tw to i32                    ; 2 uses
  %i.ua = zext i8 %i.ty to i32                    ; 3 uses
  %i.ub = sub nsw i32 %i.tz, %i.ua
  %i.uc = tail call i32 @llvm.abs.i32(i32 %i.ub, i1 true) ; 2 uses
  %i.ud = zext i8 %i.tu to i32                    ; 2 uses
  %i.ue = sub nsw i32 %i.ud, %i.ua
  %i.uf = tail call i32 @llvm.abs.i32(i32 %i.ue, i1 true) ; 2 uses
  %i.ug = add nuw nsw i32 %i.tz, %i.ud
  %i.uh = shl nuw nsw i32 %i.ua, 1
  %i.ui = sub nsw i32 %i.ug, %i.uh
  %i.uj = tail call i32 @llvm.abs.i32(i32 %i.ui, i1 true)
  %i.uk = icmp samesign ult i32 %i.uf, %i.uc
  %.032.i = select i1 %i.uk, i8 %i.tw, i8 %i.tu
  %.0.in.i = tail call i32 @llvm.umin.i32(i32 %i.uf, i32 %i.uc)
  %i.ul = icmp samesign ult i32 %i.uj, %.0.in.i
  %i.um = select i1 %i.ul, i8 %i.ty, i8 %.032.i
  %i.un = sub i8 %i.tr, %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 %.10166
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !35
  %i.up = add nuw i64 %.10166, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.up, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph167, !llvm.loop !1071

.preheader158:                                    ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %middle.block307, %vec.epilog.middle.block320, %.preheader160
  %i.uq = icmp ult i64 %4, %3
  br i1 %i.uq, label %iter.check345, label %.loopexit

iter.check345:                                    ; preds = %.preheader158
  %i.ur = sub nuw i64 %3, %4                      ; 7 uses
  %min.iters.check327 = icmp ult i64 %i.ur, 8
  br i1 %min.iters.check327, label %.lr.ph172.preheader, label %vector.memcheck328

vector.memcheck328:                               ; preds = %iter.check345
  %14 = sub i64 %i.b, %i.a
  %diff.check329 = icmp ugt i64 %14, -32
  %15 = add i64 %4, %i.a
  %i.us = sub i64 %i.b, %15
  %diff.check330 = icmp ugt i64 %i.us, -32
  %conflict.rdx331 = or i1 %diff.check329, %diff.check330
  br i1 %conflict.rdx331, label %.lr.ph172.preheader, label %vector.main.loop.iter.check332

vector.main.loop.iter.check332:                   ; preds = %vector.memcheck328
  %min.iters.check333 = icmp ult i64 %i.ur, 32
  br i1 %min.iters.check333, label %vec.epilog.ph349, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check332
  %i.ut = and i64 %i.ur, 24
  %n.vec335 = and i64 %i.ur, -32                  ; 4 uses
  %i.uu = add i64 %4, %n.vec335
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph334, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.uv = add nuw i64 %4, %index337               ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 %i.uv ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %wide.load338 = load <16 x i8>, ptr %i.uw, align 1, !tbaa !35
  %wide.load339 = load <16 x i8>, ptr %i.ux, align 1, !tbaa !35
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 %index337 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %wide.load340 = load <16 x i8>, ptr %i.uy, align 1, !tbaa !35
  %wide.load341 = load <16 x i8>, ptr %i.uz, align 1, !tbaa !35
  %i.va = sub <16 x i8> %wide.load338, %wide.load340
  %i.vb = sub <16 x i8> %wide.load339, %wide.load341
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 %i.uv ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  store <16 x i8> %i.va, ptr %i.vc, align 1, !tbaa !35
  store <16 x i8> %i.vb, ptr %i.vd, align 1, !tbaa !35
  %index.next342 = add nuw i64 %index337, 32      ; 2 uses
  %i.ve = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.ve, label %middle.block343, label %vector.body336, !llvm.loop !1072

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.ur, %n.vec335
  br i1 %cmp.n344, label %.loopexit, label %vec.epilog.iter.check346

vec.epilog.iter.check346:                         ; preds = %middle.block343
  %min.epilog.iters.check348 = icmp eq i64 %i.ut, 0
  br i1 %min.epilog.iters.check348, label %.lr.ph172.preheader, label %vec.epilog.ph349, !prof !1076

vec.epilog.ph349:                                 ; preds = %vector.main.loop.iter.check332, %vec.epilog.iter.check346
  %vec.epilog.resume.val350 = phi i64 [ %n.vec335, %vec.epilog.iter.check346 ], [ 0, %vector.main.loop.iter.check332 ]
  %n.vec351 = and i64 %i.ur, -8                   ; 3 uses
  %i.vf = add i64 %4, %n.vec351
  br label %vec.epilog.vector.body352

vec.epilog.vector.body352:                        ; preds = %vec.epilog.vector.body352, %vec.epilog.ph349
  %index353 = phi i64 [ %vec.epilog.resume.val350, %vec.epilog.ph349 ], [ %index.next356, %vec.epilog.vector.body352 ] ; 3 uses
  %i.vg = add nuw i64 %4, %index353               ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 %i.vg
  %wide.load354 = load <8 x i8>, ptr %i.vh, align 1, !tbaa !35
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 %index353
  %wide.load355 = load <8 x i8>, ptr %i.vi, align 1, !tbaa !35
  %i.vj = sub <8 x i8> %wide.load354, %wide.load355
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 %i.vg
  store <8 x i8> %i.vj, ptr %i.vk, align 1, !tbaa !35
  %index.next356 = add nuw i64 %index353, 8       ; 2 uses
  %i.vl = icmp eq i64 %index.next356, %n.vec351
  br i1 %i.vl, label %vec.epilog.middle.block357, label %vec.epilog.vector.body352, !llvm.loop !1073

vec.epilog.middle.block357:                       ; preds = %vec.epilog.vector.body352
  %cmp.n358 = icmp eq i64 %i.ur, %n.vec351
  br i1 %cmp.n358, label %.loopexit, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %iter.check345, %vector.memcheck328, %vec.epilog.iter.check346, %vec.epilog.middle.block357
  %.12171.ph = phi i64 [ %4, %iter.check345 ], [ %4, %vector.memcheck328 ], [ %i.uu, %vec.epilog.iter.check346 ], [ %i.vf, %vec.epilog.middle.block357 ] ; 7 uses
  %i.vm = sub i64 %3, %.12171.ph
  %.neg = add i64 %.12171.ph, 1
  %xtraiter683 = and i64 %i.vm, 1
  %lcmp.mod684.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod684.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

.lr.ph172.prol:                                   ; preds = %.lr.ph172.preheader
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 %.12171.ph
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !35
  %i.vp = sub nuw i64 %.12171.ph, %4
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !35
  %i.vs = sub i8 %i.vo, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 %.12171.ph
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !35
  %i.vu = add nuw i64 %.12171.ph, 1
  br label %.lr.ph172.prol.loopexit

.lr.ph172.prol.loopexit:                          ; preds = %.lr.ph172.prol, %.lr.ph172.preheader
  %.12171.unr = phi i64 [ %.12171.ph, %.lr.ph172.preheader ], [ %i.vu, %.lr.ph172.prol ]
  %i.vv = icmp eq i64 %3, %.neg
  br i1 %i.vv, label %.loopexit, label %.lr.ph172

.lr.ph170:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170
  %.11169 = phi i64 [ %i.wl, %.lr.ph170 ], [ %.11169.unr, %.lr.ph170.prol.loopexit ] ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 %.11169
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !35
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 %.11169
  store i8 %i.vx, ptr %i.vy, align 1, !tbaa !35
  %i.vz = add nuw nsw i64 %.11169, 1              ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !35
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 %i.vz
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !35
  %i.wd = add nuw nsw i64 %.11169, 2              ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !35
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 %i.wd
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !35
  %i.wh = add nuw nsw i64 %.11169, 3              ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !35
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 %i.wh
  store i8 %i.wj, ptr %i.wk, align 1, !tbaa !35
  %i.wl = add nuw nsw i64 %.11169, 4              ; 2 uses
  %.not135.3 = icmp eq i64 %i.wl, %4
  br i1 %.not135.3, label %.preheader158, label %.lr.ph170, !llvm.loop !1074

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %.12171 = phi i64 [ %i.xb, %.lr.ph172 ], [ %.12171.unr, %.lr.ph172.prol.loopexit ] ; 5 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 %.12171
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !35
  %i.wo = sub nuw i64 %.12171, %4
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 %i.wo
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !35
  %i.wr = sub i8 %i.wn, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 %.12171
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !35
  %i.wt = add nuw i64 %.12171, 1                  ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !35
  %i.ww = sub nuw i64 %i.wt, %4
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !35
  %i.wz = sub i8 %i.wv, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 %i.wt
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !35
  %i.xb = add nuw i64 %.12171, 2                  ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.xb, %3
  br i1 %exitcond205.not.1, label %.loopexit, label %.lr.ph172, !llvm.loop !1075

.loopexit:                                        ; preds = %.lr.ph167, %.lr.ph172.prol.loopexit, %.lr.ph172, %.lr.ph177.prol.loopexit, %.lr.ph177, %.lr.ph182.prol.loopexit, %.lr.ph182, %.lr.ph185.prol.loopexit, %.lr.ph185, %.lr.ph188.prol.loopexit, %.lr.ph188, %.lr.ph193.prol.loopexit, %.lr.ph193, %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block274, %vec.epilog.middle.block290, %middle.block343, %vec.epilog.middle.block357, %middle.block420, %vec.epilog.middle.block435, %middle.block488, %vec.epilog.middle.block502, %middle.block525, %vec.epilog.middle.block539, %middle.block556, %vec.epilog.middle.block569, %middle.block622, %vec.epilog.middle.block636, %middle.block653, %vec.epilog.middle.block666, %.preheader161, %.preheader158, %.preheader155, %.preheader152, %.preheader150, %.preheader148, %.preheader145, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !217    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !216
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #34
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
end_hunk_1
