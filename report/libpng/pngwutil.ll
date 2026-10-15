Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_write_find_filter:bb.a
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73   ; 37 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.g = load i8, ptr %i.f, align 1, !tbaa !72    ; 10 uses
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3                         ; 27 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 89 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 10 uses
  %i.n = icmp ugt i64 %i.e, 144115188075855870
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nsw i32 0, %i.c
  %i.p = and i32 %i.c, %i.o
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.c, 8
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp ne i8 %i.b, 8
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not229 = icmp eq i64 %i.e, 0
  br i1 %.not229, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader706, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 144115188075855868       ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %wide.load = load <2 x i8>, ptr %i.u, align 1, !tbaa !10 ; 2 uses
  %wide.load273 = load <2 x i8>, ptr %i.v, align 1, !tbaa !10 ; 2 uses
  %i.w = zext <2 x i8> %wide.load to <2 x i64>    ; 2 uses
  %i.x = zext <2 x i8> %wide.load273 to <2 x i64> ; 2 uses
  %i.y = sub nuw nsw <2 x i64> splat (i64 256), %i.w
  %i.z = sub nuw nsw <2 x i64> splat (i64 256), %i.x
  %i.aa = icmp slt <2 x i8> %wide.load, zeroinitializer
  %i.ab = icmp slt <2 x i8> %wide.load273, zeroinitializer
  %i.ac = select <2 x i1> %i.aa, <2 x i64> %i.y, <2 x i64> %i.w
  %i.ad = select <2 x i1> %i.ab, <2 x i64> %i.z, <2 x i64> %i.x
  %i.ae = add <2 x i64> %i.ac, %vec.phi           ; 2 uses
  %i.af = add <2 x i64> %i.ad, %vec.phi272        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.af, %i.ae
  %i.ah = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader706

.lr.ph.preheader706:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0228.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0101227.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.pn226.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader706, %.lr.ph
  %.0228 = phi i64 [ %i.ao, %.lr.ph ], [ %.0228.ph, %.lr.ph.preheader706 ]
  %.0101227 = phi i64 [ %i.an, %.lr.ph ], [ %.0101227.ph, %.lr.ph.preheader706 ]
  %.pn226 = phi ptr [ %.0102, %.lr.ph ], [ %.pn226.ph, %.lr.ph.preheader706 ]
  %.0102 = getelementptr inbounds nuw i8, ptr %.pn226, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.0102, align 1, !tbaa !10 ; 2 uses
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = sub nuw nsw i64 256, %i.aj
  %i.al = icmp slt i8 %i.ai, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 %i.aj
  %i.an = add i64 %i.am, %.0101227                ; 2 uses
  %i.ao = add nuw nsw i64 %.0228, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !263

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.c, %bb.b
  %.0111 = phi i32 [ %i.p, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %.preheader ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph ] ; 8 uses
  %.0103 = phi i64 [ -257, %bb.b ], [ -257, %bb.c ], [ 0, %.preheader ], [ %i.ah, %middle.block ], [ %i.an, %.lr.ph ] ; 4 uses
  %i.ap = icmp eq i32 %.0111, 16
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.aq = getelementptr i8, ptr %0, i64 568
  %.val128 = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 9 uses
  store i8 1, ptr %.val128, align 1, !tbaa !10
  %i.ar = zext nneg i32 %i.j to i64               ; 13 uses
  %.0201.i = getelementptr inbounds nuw i8, ptr %.val128, i64 1 ; 6 uses
  %.0222.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 6 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check620.a

iter.check620.a:                                  ; preds = %bb.d
  %.val128601 = ptrtoaddr ptr %.val128 to i64
  %min.iters.check604 = icmp ult i8 %i.g, 25
  %i.as = sub i64 %i.m, %.val128601
  %diff.check602 = icmp ugt i64 %i.as, -16
  %or.cond686 = select i1 %min.iters.check604, i1 true, i1 %diff.check602
  br i1 %or.cond686, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check605

vector.main.loop.iter.check605:                   ; preds = %iter.check620.a
  %min.iters.check606 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check606, label %vec.epilog.ph624.a, label %vector.ph607

vector.ph607:                                     ; preds = %vector.main.loop.iter.check605
  %i.at = and i64 %i.ar, 12
  %n.vec608 = and i64 %i.ar, 48                   ; 6 uses
  %i.au = getelementptr i8, ptr %.0222.i, i64 %n.vec608 ; 2 uses
  %i.av = getelementptr i8, ptr %.0201.i, i64 %n.vec608 ; 2 uses
  %wide.load613 = load <16 x i8>, ptr %.0222.i, align 1, !tbaa !10
  store <16 x i8> %wide.load613, ptr %.0201.i, align 1, !tbaa !10
  %i.aw = icmp eq i64 %n.vec608, 16
  br i1 %i.aw, label %middle.block615, label %vector.body609.1

vector.body609.1:                                 ; preds = %vector.ph607
  %next.gep611.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep612.1 = getelementptr i8, ptr %.val128, i64 17
  %wide.load613.1 = load <16 x i8>, ptr %next.gep611.1, align 1, !tbaa !10
  store <16 x i8> %wide.load613.1, ptr %next.gep612.1, align 1, !tbaa !10
  br label %middle.block615

middle.block615:                                  ; preds = %vector.body609.1, %vector.ph607
  %cmp.n616 = icmp eq i64 %n.vec608, %i.ar
  br i1 %cmp.n616, label %.preheader.i, label %vec.epilog.iter.check622.a

vec.epilog.iter.check622.a:                       ; preds = %middle.block615
  %min.epilog.iters.check623.a = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check623.a, label %.lr.ph.i.preheader, label %vec.epilog.ph624.a, !prof !310

vec.epilog.ph624.a:                               ; preds = %vector.main.loop.iter.check605, %vec.epilog.iter.check622.a
  %vec.epilog.resume.val617 = phi i64 [ %n.vec608, %vec.epilog.iter.check622.a ], [ 0, %vector.main.loop.iter.check605 ]
  %n.vec625.a = and i64 %i.ar, 60                 ; 5 uses
  %i.ax = getelementptr i8, ptr %.0222.i, i64 %n.vec625.a ; 2 uses
  %i.ay = getelementptr i8, ptr %.0201.i, i64 %n.vec625.a ; 2 uses
  br label %vec.epilog.vector.body626.a

vec.epilog.vector.body626.a:                      ; preds = %vec.epilog.vector.body626.a, %vec.epilog.ph624.a
  %index627.a = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph624.a ], [ %index.next631, %vec.epilog.vector.body626.a ] ; 3 uses
  %next.gep628.a = getelementptr i8, ptr %.0222.i, i64 %index627.a
  %next.gep629.a = getelementptr i8, ptr %.0201.i, i64 %index627.a
  %wide.load630 = load <4 x i8>, ptr %next.gep628.a, align 1, !tbaa !10
  store <4 x i8> %wide.load630, ptr %next.gep629.a, align 1, !tbaa !10
  %index.next631 = add nuw i64 %index627.a, 4     ; 2 uses
  %i.az = icmp eq i64 %index.next631, %n.vec625.a
  br i1 %i.az, label %vec.epilog.middle.block632, label %vec.epilog.vector.body626.a, !llvm.loop !264

vec.epilog.middle.block632:                       ; preds = %vec.epilog.vector.body626.a
  %cmp.n633 = icmp eq i64 %n.vec625.a, %i.ar
  br i1 %cmp.n633, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check620.a, %vec.epilog.iter.check622.a, %vec.epilog.middle.block632
  %.0225.i.ph = phi ptr [ %.0222.i, %iter.check620.a ], [ %i.au, %vec.epilog.iter.check622.a ], [ %i.ax, %vec.epilog.middle.block632 ] ; 2 uses
  %.0204.i.ph = phi ptr [ %.0201.i, %iter.check620.a ], [ %i.av, %vec.epilog.iter.check622.a ], [ %i.ay, %vec.epilog.middle.block632 ] ; 2 uses
  %.03.i.ph = phi i64 [ 0, %iter.check620.a ], [ %n.vec608, %vec.epilog.iter.check622.a ], [ %n.vec625.a, %vec.epilog.middle.block632 ] ; 4 uses
  %i.ba = sub nsw i64 %i.ar, %.03.i.ph
  %xtraiter722 = and i64 %i.ba, 7                 ; 2 uses
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0225.i.prol = phi ptr [ %.022.i.prol, %.lr.ph.i.prol ], [ %.0225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0204.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.0204.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03.i.prol = phi i64 [ %i.bc, %.lr.ph.i.prol ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %prol.iter724 = phi i64 [ %prol.iter724.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bb = load i8, ptr %.0225.i.prol, align 1, !tbaa !10
  store i8 %i.bb, ptr %.0204.i.prol, align 1, !tbaa !10
  %i.bc = add nuw nsw i64 %.03.i.prol, 1          ; 2 uses
  %.020.i.prol = getelementptr inbounds nuw i8, ptr %.0204.i.prol, i64 1 ; 3 uses
  %.022.i.prol = getelementptr inbounds nuw i8, ptr %.0225.i.prol, i64 1 ; 3 uses
  %prol.iter724.next = add i64 %prol.iter724, 1   ; 2 uses
  %prol.iter724.cmp.not = icmp eq i64 %prol.iter724.next, %xtraiter722
  br i1 %prol.iter724.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !265

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.022.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0225.i.unr = phi ptr [ %.0225.i.ph, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0204.i.unr = phi ptr [ %.0204.i.ph, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.03.i.unr = phi i64 [ %.03.i.ph, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %.03.i.ph, %i.ar
  %i.be = icmp ugt i64 %i.bd, -8
  br i1 %i.be, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block615, %vec.epilog.middle.block632, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ar, %middle.block615 ], [ %i.ar, %vec.epilog.middle.block632 ], [ %i.ar, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.020.lcssa.i = phi ptr [ %.0201.i, %bb.d ], [ %i.av, %middle.block615 ], [ %i.ay, %vec.epilog.middle.block632 ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i = phi ptr [ %.0222.i, %bb.d ], [ %i.au, %middle.block615 ], [ %i.ax, %vec.epilog.middle.block632 ], [ %.022.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.022.i.7, %.lr.ph.i ] ; 7 uses
  %.020.lcssa.i638 = ptrtoaddr ptr %.020.lcssa.i to i64 ; 2 uses
  %.022.lcssa.i640 = ptrtoaddr ptr %.022.lcssa.i to i64
  %i.bf = icmp ult i64 %.0.lcssa.i, %i.e
  br i1 %i.bf, label %iter.check666, label %.thread214.thread

iter.check666:                                    ; preds = %.preheader.i
  %i.bg = sub i64 %i.e, %i.ar                     ; 7 uses
  %min.iters.check644 = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check644, label %.lr.ph12.i.preheader, label %vector.memcheck637

vector.memcheck637:                               ; preds = %iter.check666
  %i.bh = sub i64 %.020.lcssa.i638, %i.m
  %i.bi = add i64 %i.bh, -2
  %diff.check639 = icmp ult i64 %i.bi, 31
  %i.bj = sub i64 %.022.lcssa.i640, %.020.lcssa.i638
  %diff.check641 = icmp ugt i64 %i.bj, -32
  %conflict.rdx642 = or i1 %diff.check639, %diff.check641
  br i1 %conflict.rdx642, label %.lr.ph12.i.preheader, label %vector.main.loop.iter.check645

vector.main.loop.iter.check645:                   ; preds = %vector.memcheck637
  %min.iters.check646 = icmp ult i64 %i.bg, 32
  br i1 %min.iters.check646, label %vec.epilog.ph670, label %vector.ph647

vector.ph647:                                     ; preds = %vector.main.loop.iter.check645
  %i.bk = and i64 %i.bg, 28
  %n.vec648 = and i64 %i.bg, -32                  ; 7 uses
  %i.bl = add i64 %.0.lcssa.i, %n.vec648
  %i.bm = getelementptr i8, ptr %i.l, i64 %n.vec648
  %i.bn = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec648
  %i.bo = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec648
  br label %vector.body649

vector.body649:                                   ; preds = %vector.ph647, %vector.body649
  %index650 = phi i64 [ 0, %vector.ph647 ], [ %index.next658, %vector.body649 ] ; 4 uses
  %next.gep651 = getelementptr i8, ptr %i.l, i64 %index650 ; 2 uses
  %next.gep652 = getelementptr i8, ptr %.020.lcssa.i, i64 %index650 ; 2 uses
  %next.gep653 = getelementptr i8, ptr %.022.lcssa.i, i64 %index650 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %next.gep651, i64 1
  %i.bq = getelementptr i8, ptr %next.gep653, i64 16
  %wide.load654 = load <16 x i8>, ptr %next.gep653, align 1, !tbaa !10
  %wide.load655 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %next.gep651, i64 17
  %wide.load656 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !10
  %wide.load657 = load <16 x i8>, ptr %i.br, align 1, !tbaa !10
  %i.bs = sub <16 x i8> %wide.load654, %wide.load656
  %i.bt = sub <16 x i8> %wide.load655, %wide.load657
  %i.bu = getelementptr i8, ptr %next.gep652, i64 16
  store <16 x i8> %i.bs, ptr %next.gep652, align 1, !tbaa !10
  store <16 x i8> %i.bt, ptr %i.bu, align 1, !tbaa !10
  %index.next658 = add nuw i64 %index650, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next658, %n.vec648
  br i1 %i.bv, label %middle.block659, label %vector.body649, !llvm.loop !266

middle.block659:                                  ; preds = %vector.body649
  %cmp.n660 = icmp eq i64 %i.bg, %n.vec648
  br i1 %cmp.n660, label %.thread214.thread, label %vec.epilog.iter.check668

vec.epilog.iter.check668:                         ; preds = %middle.block659
  %min.epilog.iters.check669 = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check669, label %.lr.ph12.i.preheader, label %vec.epilog.ph670, !prof !312

vec.epilog.ph670:                                 ; preds = %vector.main.loop.iter.check645, %vec.epilog.iter.check668
  %vec.epilog.resume.val661 = phi i64 [ %n.vec648, %vec.epilog.iter.check668 ], [ 0, %vector.main.loop.iter.check645 ]
  %n.vec671 = and i64 %i.bg, -4                   ; 6 uses
  %i.bw = add i64 %.0.lcssa.i, %n.vec671
  %i.bx = getelementptr i8, ptr %i.l, i64 %n.vec671
  %i.by = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec671
  %i.bz = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec671
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph670
  %index673 = phi i64 [ %vec.epilog.resume.val661, %vec.epilog.ph670 ], [ %index.next679, %vec.epilog.vector.body672 ] ; 4 uses
  %next.gep674 = getelementptr i8, ptr %i.l, i64 %index673
  %next.gep675 = getelementptr i8, ptr %.020.lcssa.i, i64 %index673
  %next.gep676 = getelementptr i8, ptr %.022.lcssa.i, i64 %index673
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep674, i64 1
  %wide.load677 = load <4 x i8>, ptr %next.gep676, align 1, !tbaa !10
  %wide.load678 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !10
  %i.cb = sub <4 x i8> %wide.load677, %wide.load678
  store <4 x i8> %i.cb, ptr %next.gep675, align 1, !tbaa !10
  %index.next679 = add nuw i64 %index673, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next679, %n.vec671
  br i1 %i.cc, label %vec.epilog.middle.block680, label %vec.epilog.vector.body672, !llvm.loop !267

vec.epilog.middle.block680:                       ; preds = %vec.epilog.vector.body672
  %cmp.n681 = icmp eq i64 %i.bg, %n.vec671
  br i1 %cmp.n681, label %.thread214.thread, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %iter.check666, %vector.memcheck637, %vec.epilog.iter.check668, %vec.epilog.middle.block680
  %.111.i.ph = phi i64 [ %.0.lcssa.i, %iter.check666 ], [ %.0.lcssa.i, %vector.memcheck637 ], [ %i.bl, %vec.epilog.iter.check668 ], [ %i.bw, %vec.epilog.middle.block680 ] ; 4 uses
  %.pn10.i.ph = phi ptr [ %i.l, %iter.check666 ], [ %i.l, %vector.memcheck637 ], [ %i.bm, %vec.epilog.iter.check668 ], [ %i.bx, %vec.epilog.middle.block680 ] ; 2 uses
  %.1219.i.ph = phi ptr [ %.020.lcssa.i, %iter.check666 ], [ %.020.lcssa.i, %vector.memcheck637 ], [ %i.bn, %vec.epilog.iter.check668 ], [ %i.by, %vec.epilog.middle.block680 ] ; 2 uses
  %.1238.i.ph = phi ptr [ %.022.lcssa.i, %iter.check666 ], [ %.022.lcssa.i, %vector.memcheck637 ], [ %i.bo, %vec.epilog.iter.check668 ], [ %i.bz, %vec.epilog.middle.block680 ] ; 2 uses
  %i.cd = sub i64 %i.e, %.111.i.ph
  %xtraiter725 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod726.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i.prol
  %.111.i.prol = phi i64 [ %i.cg, %.lr.ph12.i.prol ], [ %.111.i.ph, %.lr.ph12.i.preheader ]
  %.pn10.i.prol = phi ptr [ %.019.i.prol, %.lr.ph12.i.prol ], [ %.pn10.i.ph, %.lr.ph12.i.preheader ]
  %.1219.i.prol = phi ptr [ %i.ci, %.lr.ph12.i.prol ], [ %.1219.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %.1238.i.prol = phi ptr [ %i.ch, %.lr.ph12.i.prol ], [ %.1238.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %prol.iter727 = phi i64 [ %prol.iter727.next, %.lr.ph12.i.prol ], [ 0, %.lr.ph12.i.preheader ]
  %.019.i.prol = getelementptr inbounds nuw i8, ptr %.pn10.i.prol, i64 1 ; 3 uses
  %i.ce = load i8, ptr %.1238.i.prol, align 1, !tbaa !10
  %i.cf = load i8, ptr %.019.i.prol, align 1, !tbaa !10
  %.narrow.i.prol = sub i8 %i.ce, %i.cf
  store i8 %.narrow.i.prol, ptr %.1219.i.prol, align 1, !tbaa !10
  %i.cg = add nuw i64 %.111.i.prol, 1             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1238.i.prol, i64 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1219.i.prol, i64 1 ; 2 uses
  %prol.iter727.next = add i64 %prol.iter727, 1   ; 2 uses
  %prol.iter727.cmp.not = icmp eq i64 %prol.iter727.next, %xtraiter725
  br i1 %prol.iter727.cmp.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol, !llvm.loop !268

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.111.i.unr = phi i64 [ %.111.i.ph, %.lr.ph12.i.preheader ], [ %i.cg, %.lr.ph12.i.prol ]
  %.pn10.i.unr = phi ptr [ %.pn10.i.ph, %.lr.ph12.i.preheader ], [ %.019.i.prol, %.lr.ph12.i.prol ]
  %.1219.i.unr = phi ptr [ %.1219.i.ph, %.lr.ph12.i.preheader ], [ %i.ci, %.lr.ph12.i.prol ]
  %.1238.i.unr = phi ptr [ %.1238.i.ph, %.lr.ph12.i.preheader ], [ %i.ch, %.lr.ph12.i.prol ]
  %i.cj = sub i64 %.111.i.ph, %i.e
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.thread214.thread, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0225.i = phi ptr [ %.022.i.7, %.lr.ph.i ], [ %.0225.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0204.i = phi ptr [ %.020.i.7, %.lr.ph.i ], [ %.0204.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cl = load i8, ptr %.0225.i, align 1, !tbaa !10
  store i8 %i.cl, ptr %.0204.i, align 1, !tbaa !10
  %.020.i = getelementptr inbounds nuw i8, ptr %.0204.i, i64 1
  %.022.i = getelementptr inbounds nuw i8, ptr %.0225.i, i64 1
  %i.cm = load i8, ptr %.022.i, align 1, !tbaa !10
  store i8 %i.cm, ptr %.020.i, align 1, !tbaa !10
  %.020.i.1 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 2
  %.022.i.1 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 2
  %i.cn = load i8, ptr %.022.i.1, align 1, !tbaa !10
  store i8 %i.cn, ptr %.020.i.1, align 1, !tbaa !10
  %.020.i.2 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 3
  %.022.i.2 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 3
  %i.co = load i8, ptr %.022.i.2, align 1, !tbaa !10
  store i8 %i.co, ptr %.020.i.2, align 1, !tbaa !10
  %.020.i.3 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 4
  %.022.i.3 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 4
  %i.cp = load i8, ptr %.022.i.3, align 1, !tbaa !10
  store i8 %i.cp, ptr %.020.i.3, align 1, !tbaa !10
  %.020.i.4 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 5
  %.022.i.4 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 5
  %i.cq = load i8, ptr %.022.i.4, align 1, !tbaa !10
  store i8 %i.cq, ptr %.020.i.4, align 1, !tbaa !10
  %.020.i.5 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 6
  %.022.i.5 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 6
  %i.cr = load i8, ptr %.022.i.5, align 1, !tbaa !10
  store i8 %i.cr, ptr %.020.i.5, align 1, !tbaa !10
  %.020.i.6 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 7
  %.022.i.6 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 7
  %i.cs = load i8, ptr %.022.i.6, align 1, !tbaa !10
  store i8 %i.cs, ptr %.020.i.6, align 1, !tbaa !10
  %i.ct = add nuw nsw i64 %.03.i, 8               ; 2 uses
  %.020.i.7 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 8 ; 2 uses
  %.022.i.7 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ct, %i.ar
  br i1 %exitcond.not.i.7, label %.preheader.i, label %.lr.ph.i, !llvm.loop !269

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i
  %.111.i = phi i64 [ %i.di, %.lr.ph12.i ], [ %.111.i.unr, %.lr.ph12.i.prol.loopexit ]
  %.pn10.i = phi ptr [ %.019.i.3, %.lr.ph12.i ], [ %.pn10.i.unr, %.lr.ph12.i.prol.loopexit ] ; 4 uses
  %.1219.i = phi ptr [ %i.dk, %.lr.ph12.i ], [ %.1219.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.1238.i = phi ptr [ %i.dj, %.lr.ph12.i ], [ %.1238.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 1
  %i.cu = load i8, ptr %.1238.i, align 1, !tbaa !10
  %i.cv = load i8, ptr %.019.i, align 1, !tbaa !10
  %.narrow.i = sub i8 %i.cu, %i.cv
  store i8 %.narrow.i, ptr %.1219.i, align 1, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %.1238.i, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.1219.i, i64 1
  %.019.i.1 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 2
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !10
  %i.cz = load i8, ptr %.019.i.1, align 1, !tbaa !10
  %.narrow.i.1 = sub i8 %i.cy, %i.cz
  store i8 %.narrow.i.1, ptr %i.cx, align 1, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %.1238.i, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.1219.i, i64 2
  %.019.i.2 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 3
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dd = load i8, ptr %.019.i.2, align 1, !tbaa !10
  %.narrow.i.2 = sub i8 %i.dc, %i.dd
  store i8 %.narrow.i.2, ptr %i.db, align 1, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %.1238.i, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %.1219.i, i64 3
  %.019.i.3 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 4 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dh = load i8, ptr %.019.i.3, align 1, !tbaa !10
  %.narrow.i.3 = sub i8 %i.dg, %i.dh
  store i8 %.narrow.i.3, ptr %i.df, align 1, !tbaa !10
  %i.di = add nuw i64 %.111.i, 4                  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1238.i, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.1219.i, i64 4
  %exitcond15.not.i.3 = icmp eq i64 %i.di, %i.e
  br i1 %exitcond15.not.i.3, label %.thread214.thread, label %.lr.ph12.i, !llvm.loop !270

bb.e:                                             ; preds = %.loopexit
  %i.dl = and i32 %.0111, 16
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = getelementptr i8, ptr %0, i64 568       ; 2 uses
  %.val130 = load ptr, ptr %i.dm, align 8, !tbaa !66 ; 21 uses
  store i8 1, ptr %.val130, align 1, !tbaa !10
  %i.dn = zext nneg i32 %i.j to i64               ; 8 uses
  %.0331.i = getelementptr inbounds nuw i8, ptr %.val130, i64 1 ; 4 uses
  %.0352.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  %.not.i131 = icmp eq i32 %i.j, 0
end_hunk_0
begin_hunk_1_@png_write_find_filter:bb.a
  %.not122 = icmp eq i32 %i.kt, 0
  br i1 %.not122, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !66, !alias.scope !314 ; 5 uses
  store i8 2, ptr %i.kv, align 1, !tbaa !10, !noalias !314
  %.not.i142 = icmp eq i64 %i.e, 0
  br i1 %.not.i142, label %png_setup_up_row.exit, label %.lr.ph.preheader.i143

.lr.ph.preheader.i143:                            ; preds = %bb.l
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !68, !alias.scope !314
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144, %.lr.ph.preheader.i143
  %.pn.pn.i = phi ptr [ %.02234.i, %.lr.ph.i144 ], [ %i.l, %.lr.ph.preheader.i143 ]
  %.pn25.pn.i = phi ptr [ %.02033.i, %.lr.ph.i144 ], [ %i.kx, %.lr.ph.preheader.i143 ]
  %.pn26.pn.i = phi ptr [ %.02132.i, %.lr.ph.i144 ], [ %i.kv, %.lr.ph.preheader.i143 ]
  %.031.i = phi i64 [ %i.le, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.01930.i = phi i64 [ %i.lg, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.02132.i = getelementptr inbounds nuw i8, ptr %.pn26.pn.i, i64 1 ; 2 uses
  %.02033.i = getelementptr inbounds nuw i8, ptr %.pn25.pn.i, i64 1 ; 2 uses
  %.02234.i = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 1 ; 2 uses
  %i.ky = load i8, ptr %.02234.i, align 1, !tbaa !10, !noalias !314
  %i.kz = load i8, ptr %.02033.i, align 1, !tbaa !10, !noalias !314
  %.narrow.i145 = sub i8 %i.ky, %i.kz             ; 3 uses
  store i8 %.narrow.i145, ptr %.02132.i, align 1, !tbaa !10, !noalias !314
  %i.la = zext i8 %.narrow.i145 to i64            ; 2 uses
  %i.lb = sub nuw nsw i64 256, %i.la
  %i.lc = icmp slt i8 %.narrow.i145, 0
  %i.ld = select i1 %i.lc, i64 %i.lb, i64 %i.la
  %i.le = add i64 %i.ld, %.031.i                  ; 3 uses
  %i.lf = icmp ugt i64 %i.le, %.2
  %i.lg = add nuw i64 %.01930.i, 1                ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.lg, %i.e
  %or.cond.i147 = select i1 %i.lf, i1 true, i1 %exitcond.not.i146
  br i1 %or.cond.i147, label %png_setup_up_row.exit, label %.lr.ph.i144, !llvm.loop !281

png_setup_up_row.exit:                            ; preds = %.lr.ph.i144, %bb.l
  %.1.i = phi i64 [ 0, %bb.l ], [ %i.le, %.lr.ph.i144 ] ; 3 uses
  %i.lh = icmp ult i64 %.1.i, %.2
  br i1 %i.lh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %png_setup_up_row.exit
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !67 ; 2 uses
  %.not123 = icmp eq ptr %i.lj, null
  br i1 %.not123, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.lj, ptr %i.ku, align 8, !tbaa !66
  store ptr %i.kv, ptr %i.li, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %png_setup_up_row.exit, %bb.n, %bb.m, %bb.k
  %.3107 = phi ptr [ %.1105, %png_setup_up_row.exit ], [ %.1105, %bb.k ], [ %i.kv, %bb.n ], [ %i.kv, %bb.m ] ; 2 uses
  %.4 = phi i64 [ %.2, %png_setup_up_row.exit ], [ %.2, %bb.k ], [ %.1.i, %bb.n ], [ %.1.i, %bb.m ] ; 4 uses
  %i.lk = icmp eq i32 %.0111, 64
  br i1 %i.lk, label %bb.p, label %.thread197

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !66, !alias.scope !315 ; 8 uses
  %i.ln = ptrtoaddr ptr %i.lm to i64              ; 2 uses
  store i8 3, ptr %i.lm, align 1, !tbaa !10, !noalias !315
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !68, !alias.scope !315 ; 3 uses
  %i.lq = ptrtoaddr ptr %i.lp to i64
  %.02029.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 1 ; 7 uses
  %.01830.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 7 uses
  %.02231.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not.i148 = icmp eq i32 %i.j, 0
  br i1 %.not.i148, label %.preheader.i154, label %iter.check475

iter.check475:                                    ; preds = %bb.p
  %i.lr = zext nneg i32 %i.j to i64               ; 5 uses
  %min.iters.check455 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check455, label %.lr.ph.i149.preheader, label %vector.memcheck450

vector.memcheck450:                               ; preds = %iter.check475
  %i.ls = sub i64 %i.m, %i.ln
  %diff.check451 = icmp ugt i64 %i.ls, -16
  %i.lt = sub i64 %i.lq, %i.ln
  %diff.check452 = icmp ugt i64 %i.lt, -16
  %conflict.rdx453 = or i1 %diff.check451, %diff.check452
  br i1 %conflict.rdx453, label %.lr.ph.i149.preheader, label %vector.main.loop.iter.check456

vector.main.loop.iter.check456:                   ; preds = %vector.memcheck450
  %min.iters.check457 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check457, label %vec.epilog.ph479, label %vector.ph458

vector.ph458:                                     ; preds = %vector.main.loop.iter.check456
  %i.lu = and i64 %i.lr, 12
  %n.vec459 = and i64 %i.lr, 48                   ; 7 uses
  %i.lv = getelementptr i8, ptr %.02231.i, i64 %n.vec459 ; 2 uses
  %i.lw = getelementptr i8, ptr %.01830.i, i64 %n.vec459 ; 2 uses
  %i.lx = getelementptr i8, ptr %.02029.i, i64 %n.vec459 ; 2 uses
  %i.ly = trunc nuw nsw i64 %n.vec459 to i32
  %wide.load465 = load <16 x i8>, ptr %.02231.i, align 1, !tbaa !10, !noalias !315
  %wide.load466 = load <16 x i8>, ptr %.01830.i, align 1, !tbaa !10, !noalias !315
  %i.lz = lshr <16 x i8> %wide.load466, splat (i8 1)
  %i.ma = sub <16 x i8> %wide.load465, %i.lz
  store <16 x i8> %i.ma, ptr %.02029.i, align 1, !tbaa !10, !noalias !315
  %i.mb = icmp eq i64 %n.vec459, 16
  br i1 %i.mb, label %middle.block468, label %vector.body460.1

vector.body460.1:                                 ; preds = %vector.ph458
  %next.gep462.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep463.1 = getelementptr i8, ptr %i.lp, i64 17
  %next.gep464.1 = getelementptr i8, ptr %i.lm, i64 17
  %wide.load465.1 = load <16 x i8>, ptr %next.gep462.1, align 1, !tbaa !10, !noalias !315
  %wide.load466.1 = load <16 x i8>, ptr %next.gep463.1, align 1, !tbaa !10, !noalias !315
  %i.mc = lshr <16 x i8> %wide.load466.1, splat (i8 1)
  %i.md = sub <16 x i8> %wide.load465.1, %i.mc
  store <16 x i8> %i.md, ptr %next.gep464.1, align 1, !tbaa !10, !noalias !315
  br label %middle.block468

middle.block468:                                  ; preds = %vector.body460.1, %vector.ph458
  %cmp.n469 = icmp eq i64 %n.vec459, %i.lr
  br i1 %cmp.n469, label %.preheader.i154, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block468
  %min.epilog.iters.check478 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check478, label %.lr.ph.i149.preheader, label %vec.epilog.ph479, !prof !310

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check456, %vec.epilog.iter.check477
  %vec.epilog.resume.val470 = phi i64 [ %n.vec459, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check456 ]
  %n.vec480 = and i64 %i.lr, 60                   ; 6 uses
  %i.me = getelementptr i8, ptr %.02231.i, i64 %n.vec480 ; 2 uses
  %i.mf = getelementptr i8, ptr %.01830.i, i64 %n.vec480 ; 2 uses
  %i.mg = getelementptr i8, ptr %.02029.i, i64 %n.vec480 ; 2 uses
  %i.mh = trunc nuw nsw i64 %n.vec480 to i32
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph479
  %index482 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph479 ], [ %index.next488, %vec.epilog.vector.body481 ] ; 4 uses
  %next.gep483 = getelementptr i8, ptr %.02231.i, i64 %index482
  %next.gep484 = getelementptr i8, ptr %.01830.i, i64 %index482
  %next.gep485 = getelementptr i8, ptr %.02029.i, i64 %index482
  %wide.load486 = load <4 x i8>, ptr %next.gep483, align 1, !tbaa !10, !noalias !315
  %wide.load487 = load <4 x i8>, ptr %next.gep484, align 1, !tbaa !10, !noalias !315
  %i.mi = lshr <4 x i8> %wide.load487, splat (i8 1)
  %i.mj = sub <4 x i8> %wide.load486, %i.mi
  store <4 x i8> %i.mj, ptr %next.gep485, align 1, !tbaa !10, !noalias !315
  %index.next488 = add nuw i64 %index482, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next488, %n.vec480
  br i1 %i.mk, label %vec.epilog.middle.block489, label %vec.epilog.vector.body481, !llvm.loop !284

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body481
  %cmp.n490 = icmp eq i64 %n.vec480, %i.lr
  br i1 %cmp.n490, label %.preheader.i154, label %.lr.ph.i149.preheader

.lr.ph.i149.preheader:                            ; preds = %iter.check475, %vector.memcheck450, %vec.epilog.iter.check477, %vec.epilog.middle.block489
  %.02235.i.ph = phi ptr [ %.02231.i, %iter.check475 ], [ %.02231.i, %vector.memcheck450 ], [ %i.lv, %vec.epilog.iter.check477 ], [ %i.me, %vec.epilog.middle.block489 ] ; 2 uses
  %.01834.i.ph = phi ptr [ %.01830.i, %iter.check475 ], [ %.01830.i, %vector.memcheck450 ], [ %i.lw, %vec.epilog.iter.check477 ], [ %i.mf, %vec.epilog.middle.block489 ] ; 2 uses
  %.02033.i150.ph = phi ptr [ %.02029.i, %iter.check475 ], [ %.02029.i, %vector.memcheck450 ], [ %i.lx, %vec.epilog.iter.check477 ], [ %i.mg, %vec.epilog.middle.block489 ] ; 2 uses
  %.032.i.ph = phi i32 [ 0, %iter.check475 ], [ 0, %vector.memcheck450 ], [ %i.ly, %vec.epilog.iter.check477 ], [ %i.mh, %vec.epilog.middle.block489 ] ; 4 uses
  %i.ml = sub nsw i32 %i.j, %.032.i.ph
  %xtraiter716 = and i32 %i.ml, 3                 ; 2 uses
  %lcmp.mod717.not = icmp eq i32 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol

.lr.ph.i149.prol:                                 ; preds = %.lr.ph.i149.preheader, %.lr.ph.i149.prol
  %.02235.i.prol = phi ptr [ %.022.i152.prol, %.lr.ph.i149.prol ], [ %.02235.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.01834.i.prol = phi ptr [ %.018.i.prol, %.lr.ph.i149.prol ], [ %.01834.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.02033.i150.prol = phi ptr [ %.020.i151.prol, %.lr.ph.i149.prol ], [ %.02033.i150.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.032.i.prol = phi i32 [ %i.mp, %.lr.ph.i149.prol ], [ %.032.i.ph, %.lr.ph.i149.preheader ]
  %prol.iter718 = phi i32 [ %prol.iter718.next, %.lr.ph.i149.prol ], [ 0, %.lr.ph.i149.preheader ]
  %i.mm = load i8, ptr %.02235.i.prol, align 1, !tbaa !10, !noalias !315
  %i.mn = load i8, ptr %.01834.i.prol, align 1, !tbaa !10, !noalias !315
  %i.mo = lshr i8 %i.mn, 1
  %.narrow27.i.prol = sub i8 %i.mm, %i.mo
  store i8 %.narrow27.i.prol, ptr %.02033.i150.prol, align 1, !tbaa !10, !noalias !315
  %i.mp = add nuw nsw i32 %.032.i.prol, 1         ; 2 uses
  %.020.i151.prol = getelementptr inbounds nuw i8, ptr %.02033.i150.prol, i64 1 ; 3 uses
  %.018.i.prol = getelementptr inbounds nuw i8, ptr %.01834.i.prol, i64 1 ; 3 uses
  %.022.i152.prol = getelementptr inbounds nuw i8, ptr %.02235.i.prol, i64 1 ; 3 uses
  %prol.iter718.next = add i32 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i32 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol, !llvm.loop !285

.lr.ph.i149.prol.loopexit:                        ; preds = %.lr.ph.i149.prol, %.lr.ph.i149.preheader
  %.020.i151.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.018.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.022.i152.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.02235.i.unr = phi ptr [ %.02235.i.ph, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.01834.i.unr = phi ptr [ %.01834.i.ph, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.02033.i150.unr = phi ptr [ %.02033.i150.ph, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.032.i.unr = phi i32 [ %.032.i.ph, %.lr.ph.i149.preheader ], [ %i.mp, %.lr.ph.i149.prol ]
  %i.mq = sub nsw i32 %.032.i.ph, %i.j
  %i.mr = icmp ugt i32 %i.mq, -4
  br i1 %i.mr, label %.preheader.i154, label %.lr.ph.i149

.preheader.i154:                                  ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149, %middle.block468, %vec.epilog.middle.block489, %bb.p
  %.020.lcssa.i155 = phi ptr [ %.02029.i, %bb.p ], [ %i.mg, %vec.epilog.middle.block489 ], [ %i.lx, %middle.block468 ], [ %.020.i151.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.020.i151.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i = phi ptr [ %.01830.i, %bb.p ], [ %i.mf, %vec.epilog.middle.block489 ], [ %i.lw, %middle.block468 ], [ %.018.i.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.018.i.3, %.lr.ph.i149 ] ; 8 uses
  %.022.lcssa.i156 = phi ptr [ %.02231.i, %bb.p ], [ %i.me, %vec.epilog.middle.block489 ], [ %i.lv, %middle.block468 ], [ %.022.i152.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.022.i152.3, %.lr.ph.i149 ] ; 8 uses
  %.020.lcssa.i155496 = ptrtoaddr ptr %.020.lcssa.i155 to i64 ; 3 uses
  %.022.lcssa.i156498 = ptrtoaddr ptr %.022.lcssa.i156 to i64
  %.018.lcssa.i501 = ptrtoaddr ptr %.018.lcssa.i to i64
  %i.ms = zext nneg i32 %i.j to i64               ; 3 uses
  %i.mt = icmp ugt i64 %i.e, %i.ms
  br i1 %i.mt, label %iter.check531, label %.thread214.thread

iter.check531:                                    ; preds = %.preheader.i154
  %i.mu = sub nuw i64 %i.e, %i.ms                 ; 7 uses
  %min.iters.check505 = icmp ult i64 %i.mu, 8
  br i1 %min.iters.check505, label %.lr.ph44.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check531
  %i.mv = xor i64 %i.ms, -1
  %i.mw = add i64 %i.e, %i.mv                     ; 2 uses
  %i.mx = trunc i64 %i.mw to i32
  %i.my = sub nuw nsw i32 -2, %i.j
  %i.mz = icmp ult i32 %i.my, %i.mx
  %i.na = icmp ugt i64 %i.mw, 4294967295
  %i.nb = or i1 %i.mz, %i.na
  br i1 %i.nb, label %.lr.ph44.i.preheader, label %vector.memcheck495

vector.memcheck495:                               ; preds = %vector.scevcheck
  %i.nc = sub i64 %.020.lcssa.i155496, %i.m
  %i.nd = add i64 %i.nc, -2
  %diff.check497 = icmp ult i64 %i.nd, 31
  %i.ne = sub i64 %.022.lcssa.i156498, %.020.lcssa.i155496
  %diff.check499 = icmp ugt i64 %i.ne, -32
  %conflict.rdx500 = or i1 %diff.check497, %diff.check499
  %i.nf = sub i64 %.018.lcssa.i501, %.020.lcssa.i155496
  %diff.check502 = icmp ugt i64 %i.nf, -32
  %conflict.rdx503 = or i1 %conflict.rdx500, %diff.check502
  br i1 %conflict.rdx503, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check506

vector.main.loop.iter.check506:                   ; preds = %vector.memcheck495
  %min.iters.check507 = icmp ult i64 %i.mu, 32
  br i1 %min.iters.check507, label %vec.epilog.ph535, label %vector.ph508

vector.ph508:                                     ; preds = %vector.main.loop.iter.check506
  %i.ng = and i64 %i.mu, 24
  %n.vec509 = and i64 %i.mu, -32                  ; 8 uses
  %i.nh = trunc i64 %n.vec509 to i32
  %i.ni = add i32 %i.j, %i.nh
  %i.nj = getelementptr i8, ptr %i.l, i64 %n.vec509
  %i.nk = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec509
  %i.nl = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec509
  %i.nm = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec509
  br label %vector.body510

vector.body510:                                   ; preds = %vector.ph508, %vector.body510
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next522, %vector.body510 ] ; 5 uses
  %next.gep512 = getelementptr i8, ptr %i.l, i64 %index511 ; 2 uses
  %next.gep513 = getelementptr i8, ptr %.018.lcssa.i, i64 %index511 ; 2 uses
  %next.gep514 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index511 ; 2 uses
  %next.gep515 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index511 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %next.gep512, i64 1
  %i.no = getelementptr i8, ptr %next.gep515, i64 16
  %wide.load516 = load <16 x i8>, ptr %next.gep515, align 1, !tbaa !10, !noalias !315
  %wide.load517 = load <16 x i8>, ptr %i.no, align 1, !tbaa !10, !noalias !315
  %i.np = getelementptr i8, ptr %next.gep513, i64 16
  %wide.load518 = load <16 x i8>, ptr %next.gep513, align 1, !tbaa !10, !noalias !315
  %wide.load519 = load <16 x i8>, ptr %i.np, align 1, !tbaa !10, !noalias !315
  %i.nq = zext <16 x i8> %wide.load518 to <16 x i16>
  %i.nr = zext <16 x i8> %wide.load519 to <16 x i16>
  %i.ns = getelementptr inbounds nuw i8, ptr %next.gep512, i64 17
  %wide.load520 = load <16 x i8>, ptr %i.nn, align 1, !tbaa !10, !noalias !315
  %wide.load521 = load <16 x i8>, ptr %i.ns, align 1, !tbaa !10, !noalias !315
  %i.nt = zext <16 x i8> %wide.load520 to <16 x i16>
  %i.nu = zext <16 x i8> %wide.load521 to <16 x i16>
  %i.nv = add nuw nsw <16 x i16> %i.nt, %i.nq
  %i.nw = add nuw nsw <16 x i16> %i.nu, %i.nr
  %i.nx = lshr <16 x i16> %i.nv, splat (i16 1)
  %i.ny = lshr <16 x i16> %i.nw, splat (i16 1)
  %i.nz = trunc nuw <16 x i16> %i.nx to <16 x i8>
  %i.oa = trunc nuw <16 x i16> %i.ny to <16 x i8>
  %i.ob = sub <16 x i8> %wide.load516, %i.nz
  %i.oc = sub <16 x i8> %wide.load517, %i.oa
  %i.od = getelementptr i8, ptr %next.gep514, i64 16
  store <16 x i8> %i.ob, ptr %next.gep514, align 1, !tbaa !10, !noalias !315
  store <16 x i8> %i.oc, ptr %i.od, align 1, !tbaa !10, !noalias !315
  %index.next522 = add nuw i64 %index511, 32      ; 2 uses
  %i.oe = icmp eq i64 %index.next522, %n.vec509
  br i1 %i.oe, label %middle.block523, label %vector.body510, !llvm.loop !286

middle.block523:                                  ; preds = %vector.body510
  %cmp.n524 = icmp eq i64 %i.mu, %n.vec509
  br i1 %cmp.n524, label %.thread214.thread, label %vec.epilog.iter.check533

vec.epilog.iter.check533:                         ; preds = %middle.block523
  %min.epilog.iters.check534 = icmp eq i64 %i.ng, 0
  br i1 %min.epilog.iters.check534, label %.lr.ph44.i.preheader, label %vec.epilog.ph535, !prof !316

vec.epilog.ph535:                                 ; preds = %vector.main.loop.iter.check506, %vec.epilog.iter.check533
  %vec.epilog.resume.val525 = phi i64 [ %n.vec509, %vec.epilog.iter.check533 ], [ 0, %vector.main.loop.iter.check506 ]
  %n.vec536 = and i64 %i.mu, -8                   ; 7 uses
  %i.of = trunc i64 %n.vec536 to i32
  %i.og = add i32 %i.j, %i.of
  %i.oh = getelementptr i8, ptr %i.l, i64 %n.vec536
  %i.oi = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec536
  %i.oj = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec536
  %i.ok = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec536
  br label %vec.epilog.vector.body537

vec.epilog.vector.body537:                        ; preds = %vec.epilog.vector.body537, %vec.epilog.ph535
  %index538 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph535 ], [ %index.next546, %vec.epilog.vector.body537 ] ; 5 uses
  %next.gep539 = getelementptr i8, ptr %i.l, i64 %index538
  %next.gep540 = getelementptr i8, ptr %.018.lcssa.i, i64 %index538
  %next.gep541 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index538
  %next.gep542 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index538
  %i.ol = getelementptr inbounds nuw i8, ptr %next.gep539, i64 1
  %wide.load543 = load <8 x i8>, ptr %next.gep542, align 1, !tbaa !10, !noalias !315
  %wide.load544 = load <8 x i8>, ptr %next.gep540, align 1, !tbaa !10, !noalias !315
  %i.om = zext <8 x i8> %wide.load544 to <8 x i16>
  %wide.load545 = load <8 x i8>, ptr %i.ol, align 1, !tbaa !10, !noalias !315
  %i.on = zext <8 x i8> %wide.load545 to <8 x i16>
  %i.oo = add nuw nsw <8 x i16> %i.on, %i.om
  %i.op = lshr <8 x i16> %i.oo, splat (i16 1)
  %i.oq = trunc nuw <8 x i16> %i.op to <8 x i8>
  %i.or = sub <8 x i8> %wide.load543, %i.oq
  store <8 x i8> %i.or, ptr %next.gep541, align 1, !tbaa !10, !noalias !315
  %index.next546 = add nuw i64 %index538, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next546, %n.vec536
  br i1 %i.os, label %vec.epilog.middle.block547, label %vec.epilog.vector.body537, !llvm.loop !287

vec.epilog.middle.block547:                       ; preds = %vec.epilog.vector.body537
  %cmp.n548 = icmp eq i64 %i.mu, %n.vec536
  br i1 %cmp.n548, label %.thread214.thread, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %iter.check531, %vector.scevcheck, %vector.memcheck495, %vec.epilog.iter.check533, %vec.epilog.middle.block547
  %.143.i.ph = phi i32 [ %i.j, %iter.check531 ], [ %i.j, %vector.scevcheck ], [ %i.j, %vector.memcheck495 ], [ %i.ni, %vec.epilog.iter.check533 ], [ %i.og, %vec.epilog.middle.block547 ]
  %.pn42.i.ph = phi ptr [ %i.l, %iter.check531 ], [ %i.l, %vector.scevcheck ], [ %i.l, %vector.memcheck495 ], [ %i.nj, %vec.epilog.iter.check533 ], [ %i.oh, %vec.epilog.middle.block547 ]
  %.11941.i.ph = phi ptr [ %.018.lcssa.i, %iter.check531 ], [ %.018.lcssa.i, %vector.scevcheck ], [ %.018.lcssa.i, %vector.memcheck495 ], [ %i.nk, %vec.epilog.iter.check533 ], [ %i.oi, %vec.epilog.middle.block547 ]
  %.12140.i.ph = phi ptr [ %.020.lcssa.i155, %iter.check531 ], [ %.020.lcssa.i155, %vector.scevcheck ], [ %.020.lcssa.i155, %vector.memcheck495 ], [ %i.nl, %vec.epilog.iter.check533 ], [ %i.oj, %vec.epilog.middle.block547 ]
  %.12339.i.ph = phi ptr [ %.022.lcssa.i156, %iter.check531 ], [ %.022.lcssa.i156, %vector.scevcheck ], [ %.022.lcssa.i156, %vector.memcheck495 ], [ %i.nm, %vec.epilog.iter.check533 ], [ %i.ok, %vec.epilog.middle.block547 ]
  br label %.lr.ph44.i

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149
  %.02235.i = phi ptr [ %.022.i152.3, %.lr.ph.i149 ], [ %.02235.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.01834.i = phi ptr [ %.018.i.3, %.lr.ph.i149 ], [ %.01834.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.02033.i150 = phi ptr [ %.020.i151.3, %.lr.ph.i149 ], [ %.02033.i150.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.032.i = phi i32 [ %i.pf, %.lr.ph.i149 ], [ %.032.i.unr, %.lr.ph.i149.prol.loopexit ]
  %i.ot = load i8, ptr %.02235.i, align 1, !tbaa !10, !noalias !315
  %i.ou = load i8, ptr %.01834.i, align 1, !tbaa !10, !noalias !315
  %i.ov = lshr i8 %i.ou, 1
  %.narrow27.i = sub i8 %i.ot, %i.ov
  store i8 %.narrow27.i, ptr %.02033.i150, align 1, !tbaa !10, !noalias !315
  %.020.i151 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 1
  %.018.i = getelementptr inbounds nuw i8, ptr %.01834.i, i64 1
  %.022.i152 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 1
  %i.ow = load i8, ptr %.022.i152, align 1, !tbaa !10, !noalias !315
  %i.ox = load i8, ptr %.018.i, align 1, !tbaa !10, !noalias !315
  %i.oy = lshr i8 %i.ox, 1
  %.narrow27.i.1 = sub i8 %i.ow, %i.oy
  store i8 %.narrow27.i.1, ptr %.020.i151, align 1, !tbaa !10, !noalias !315
  %.020.i151.1 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 2
  %.018.i.1 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 2
  %.022.i152.1 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 2
  %i.oz = load i8, ptr %.022.i152.1, align 1, !tbaa !10, !noalias !315
  %i.pa = load i8, ptr %.018.i.1, align 1, !tbaa !10, !noalias !315
  %i.pb = lshr i8 %i.pa, 1
  %.narrow27.i.2 = sub i8 %i.oz, %i.pb
  store i8 %.narrow27.i.2, ptr %.020.i151.1, align 1, !tbaa !10, !noalias !315
  %.020.i151.2 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 3
  %.018.i.2 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 3
  %.022.i152.2 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 3
  %i.pc = load i8, ptr %.022.i152.2, align 1, !tbaa !10, !noalias !315
  %i.pd = load i8, ptr %.018.i.2, align 1, !tbaa !10, !noalias !315
  %i.pe = lshr i8 %i.pd, 1
  %.narrow27.i.3 = sub i8 %i.pc, %i.pe
  store i8 %.narrow27.i.3, ptr %.020.i151.2, align 1, !tbaa !10, !noalias !315
  %i.pf = add nuw nsw i32 %.032.i, 4              ; 2 uses
  %.020.i151.3 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 4 ; 2 uses
  %.018.i.3 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 4 ; 2 uses
  %.022.i152.3 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 4 ; 2 uses
  %exitcond.not.i153.3 = icmp eq i32 %i.pf, %i.j
  br i1 %exitcond.not.i153.3, label %.preheader.i154, label %.lr.ph.i149, !llvm.loop !288

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.143.i = phi i32 [ %i.pq, %.lr.ph44.i ], [ %.143.i.ph, %.lr.ph44.i.preheader ]
  %.pn42.i = phi ptr [ %.017.i, %.lr.ph44.i ], [ %.pn42.i.ph, %.lr.ph44.i.preheader ]
  %.11941.i = phi ptr [ %i.pi, %.lr.ph44.i ], [ %.11941.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12140.i = phi ptr [ %i.pp, %.lr.ph44.i ], [ %.12140.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12339.i = phi ptr [ %i.pg, %.lr.ph44.i ], [ %.12339.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.pn42.i, i64 1 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1
  %i.ph = load i8, ptr %.12339.i, align 1, !tbaa !10, !noalias !315
  %i.pi = getelementptr inbounds nuw i8, ptr %.11941.i, i64 1
  %i.pj = load i8, ptr %.11941.i, align 1, !tbaa !10, !noalias !315
  %i.pk = zext i8 %i.pj to i16
  %i.pl = load i8, ptr %.017.i, align 1, !tbaa !10, !noalias !315
  %i.pm = zext i8 %i.pl to i16
  %i.pn = add nuw nsw i16 %i.pm, %i.pk
  %i.po = lshr i16 %i.pn, 1
  %.tr.i = trunc nuw i16 %i.po to i8
  %.narrow.i157 = sub i8 %i.ph, %.tr.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.12140.i, i64 1
  store i8 %.narrow.i157, ptr %.12140.i, align 1, !tbaa !10, !noalias !315
  %i.pq = add i32 %.143.i, 1                      ; 2 uses
  %i.pr = zext i32 %i.pq to i64
  %i.ps = icmp ugt i64 %i.e, %i.pr
  br i1 %i.ps, label %.lr.ph44.i, label %.thread214.thread, !llvm.loop !289

.thread197:                                       ; preds = %bb.o
  %i.pt = and i32 %.0111, 64
  %.not124 = icmp eq i32 %i.pt, 0
  br i1 %.not124, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.thread197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !66, !alias.scope !317 ; 21 uses
  %i.pw = ptrtoaddr ptr %i.pv to i64              ; 2 uses
  store i8 3, ptr %i.pv, align 1, !tbaa !10, !noalias !317
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !68, !alias.scope !317 ; 17 uses
  %i.pz = ptrtoaddr ptr %i.py to i64
  %.03344.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 1 ; 5 uses
  %.03145.i = getelementptr inbounds nuw i8, ptr %i.py, i64 1 ; 5 uses
  %.03546.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not.i158 = icmp eq i32 %i.j, 0
  br i1 %.not.i158, label %.preheader.i164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.q
  %i.qa = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check300 = icmp ult i8 %i.g, 41
  br i1 %min.iters.check300, label %.lr.ph.i159.preheader696, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i159.preheader
  %i.qb = sub i64 %i.m, %i.pw
  %diff.check297 = icmp ugt i64 %i.qb, -4
end_hunk_1
begin_hunk_2_@png_write_find_filter:bb.a
  store i8 %.narrow42.i.1, ptr %.033.i160, align 1, !tbaa !10, !noalias !317
  %i.wr = zext i8 %.narrow42.i.1 to i64           ; 2 uses
  %i.ws = sub nuw nsw i64 256, %i.wr
  %i.wt = icmp slt i8 %.narrow42.i.1, 0
  %i.wu = select i1 %i.wt, i64 %i.ws, i64 %i.wr
  %i.wv = add i64 %i.wu, %i.wn                    ; 2 uses
  %i.ww = add nuw nsw i32 %.02847.i, 2            ; 2 uses
  %.033.i160.1 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 2 ; 2 uses
  %.031.i161.1 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 2 ; 2 uses
  %.035.i162.1 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 2 ; 2 uses
  %exitcond.not.i163.1 = icmp eq i32 %i.ww, %i.j
  br i1 %exitcond.not.i163.1, label %.preheader.i164, label %.lr.ph.i159, !llvm.loop !292

.lr.ph63.i:                                       ; preds = %.preheader.i164, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i164 ]
  %.161.i = phi i64 [ %i.xi, %.lr.ph63.i ], [ %.0.lcssa.i165, %.preheader.i164 ]
  %.12960.i = phi i32 [ %i.xn, %.lr.ph63.i ], [ %i.j, %.preheader.i164 ]
  %.13259.i = phi ptr [ %i.xl, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i164 ] ; 2 uses
  %.13458.i = phi ptr [ %i.xk, %.lr.ph63.i ], [ %.033.lcssa.i166, %.preheader.i164 ] ; 2 uses
  %.13657.i = phi ptr [ %i.xm, %.lr.ph63.i ], [ %.035.lcssa.i167, %.preheader.i164 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.wx = load i8, ptr %.13657.i, align 1, !tbaa !10, !noalias !317
  %i.wy = load i8, ptr %.13259.i, align 1, !tbaa !10, !noalias !317
  %i.wz = zext i8 %i.wy to i16
  %i.xa = load i8, ptr %.03062.i, align 1, !tbaa !10, !noalias !317
  %i.xb = zext i8 %i.xa to i16
  %i.xc = add nuw nsw i16 %i.xb, %i.wz
  %i.xd = lshr i16 %i.xc, 1
  %.tr.i169 = trunc nuw i16 %i.xd to i8
  %.narrow.i170 = sub i8 %i.wx, %.tr.i169         ; 3 uses
  store i8 %.narrow.i170, ptr %.13458.i, align 1, !tbaa !10, !noalias !317
  %i.xe = zext i8 %.narrow.i170 to i64            ; 2 uses
  %i.xf = sub nuw nsw i64 256, %i.xe
  %i.xg = icmp slt i8 %.narrow.i170, 0
  %i.xh = select i1 %i.xg, i64 %i.xf, i64 %i.xe
  %i.xi = add i64 %i.xh, %.161.i                  ; 3 uses
  %i.xj = icmp ule i64 %i.xi, %.4
  %i.xk = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.xl = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.xm = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.xn = add i32 %.12960.i, 1                    ; 2 uses
  %i.xo = zext i32 %i.xn to i64
  %i.xp = icmp ugt i64 %i.e, %i.xo
  %or.cond.i171 = select i1 %i.xj, i1 %i.xp, i1 false
  br i1 %or.cond.i171, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !293

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i164
  %.2.i168 = phi i64 [ %.0.lcssa.i165, %.preheader.i164 ], [ %i.xi, %.lr.ph63.i ] ; 3 uses
  %i.xq = icmp ult i64 %.2.i168, %.4
  br i1 %i.xq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !67 ; 2 uses
  %.not125 = icmp eq ptr %i.xs, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.xs, ptr %i.pu, align 8, !tbaa !66
  store ptr %i.pv, ptr %i.xr, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread197
  %.5109 = phi ptr [ %.3107, %png_setup_avg_row.exit ], [ %.3107, %.thread197 ], [ %i.pv, %bb.s ], [ %i.pv, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %png_setup_avg_row.exit ], [ %.4, %.thread197 ], [ %.2.i168, %bb.s ], [ %.2.i168, %bb.r ] ; 2 uses
  %i.xt = icmp eq i32 %.0111, 128
  br i1 %i.xt, label %bb.u, label %.thread214

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !66, !alias.scope !318 ; 8 uses
  %i.xw = ptrtoaddr ptr %i.xv to i64              ; 2 uses
  store i8 4, ptr %i.xv, align 1, !tbaa !10, !noalias !318
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !68, !alias.scope !318 ; 9 uses
  %i.xz = ptrtoaddr ptr %i.xy to i64              ; 2 uses
  %i.ya = zext nneg i32 %i.j to i64               ; 13 uses
  %.04964.i = getelementptr inbounds nuw i8, ptr %i.xv, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.xy, i64 1 ; 7 uses
  %.05166.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i174, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check356 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check356, label %.lr.ph.i172.preheader, label %vector.memcheck351

vector.memcheck351:                               ; preds = %iter.check
  %i.yb = sub i64 %i.m, %i.xw
  %diff.check352 = icmp ugt i64 %i.yb, -16
  %i.yc = sub i64 %i.xz, %i.xw
  %diff.check353 = icmp ugt i64 %i.yc, -16
  %conflict.rdx354 = or i1 %diff.check352, %diff.check353
  br i1 %conflict.rdx354, label %.lr.ph.i172.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck351
  %min.iters.check357 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check
  %i.yd = and i64 %i.ya, 12
  %n.vec359 = and i64 %i.ya, 48                   ; 7 uses
  %i.ye = getelementptr i8, ptr %.05166.i, i64 %n.vec359 ; 2 uses
  %i.yf = getelementptr i8, ptr %.04765.i, i64 %n.vec359 ; 2 uses
  %i.yg = getelementptr i8, ptr %.04964.i, i64 %n.vec359 ; 2 uses
  %wide.load365 = load <16 x i8>, ptr %.05166.i, align 1, !tbaa !10, !noalias !318
  %wide.load366 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !10, !noalias !318
  %i.yh = sub <16 x i8> %wide.load365, %wide.load366
  store <16 x i8> %i.yh, ptr %.04964.i, align 1, !tbaa !10, !noalias !318
  %i.yi = icmp eq i64 %n.vec359, 16
  br i1 %i.yi, label %middle.block368, label %vector.body360.1

vector.body360.1:                                 ; preds = %vector.ph358
  %next.gep362.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep363.1 = getelementptr i8, ptr %i.xy, i64 17
  %next.gep364.1 = getelementptr i8, ptr %i.xv, i64 17
  %wide.load365.1 = load <16 x i8>, ptr %next.gep362.1, align 1, !tbaa !10, !noalias !318
  %wide.load366.1 = load <16 x i8>, ptr %next.gep363.1, align 1, !tbaa !10, !noalias !318
  %i.yj = sub <16 x i8> %wide.load365.1, %wide.load366.1
  store <16 x i8> %i.yj, ptr %next.gep364.1, align 1, !tbaa !10, !noalias !318
  br label %middle.block368

middle.block368:                                  ; preds = %vector.body360.1, %vector.ph358
  %cmp.n369 = icmp eq i64 %n.vec359, %i.ya
  br i1 %cmp.n369, label %.preheader.i174, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block368
  %min.epilog.iters.check = icmp eq i64 %i.yd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i172.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec373 = and i64 %i.ya, 60                   ; 6 uses
  %i.yk = getelementptr i8, ptr %.05166.i, i64 %n.vec373 ; 2 uses
  %i.yl = getelementptr i8, ptr %.04765.i, i64 %n.vec373 ; 2 uses
  %i.ym = getelementptr i8, ptr %.04964.i, i64 %n.vec373 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index374 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next380, %vec.epilog.vector.body ] ; 4 uses
  %next.gep375 = getelementptr i8, ptr %.05166.i, i64 %index374
  %next.gep376 = getelementptr i8, ptr %.04765.i, i64 %index374
  %next.gep377 = getelementptr i8, ptr %.04964.i, i64 %index374
  %wide.load378 = load <4 x i8>, ptr %next.gep375, align 1, !tbaa !10, !noalias !318
  %wide.load379 = load <4 x i8>, ptr %next.gep376, align 1, !tbaa !10, !noalias !318
  %i.yn = sub <4 x i8> %wide.load378, %wide.load379
  store <4 x i8> %i.yn, ptr %next.gep377, align 1, !tbaa !10, !noalias !318
  %index.next380 = add nuw i64 %index374, 4       ; 2 uses
  %i.yo = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.yo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n381 = icmp eq i64 %n.vec373, %i.ya
  br i1 %cmp.n381, label %.preheader.i174, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %iter.check, %vector.memcheck351, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05170.i.ph = phi ptr [ %.05166.i, %iter.check ], [ %.05166.i, %vector.memcheck351 ], [ %i.ye, %vec.epilog.iter.check ], [ %i.yk, %vec.epilog.middle.block ] ; 2 uses
  %.04769.i.ph = phi ptr [ %.04765.i, %iter.check ], [ %.04765.i, %vector.memcheck351 ], [ %i.yf, %vec.epilog.iter.check ], [ %i.yl, %vec.epilog.middle.block ] ; 2 uses
  %.04968.i.ph = phi ptr [ %.04964.i, %iter.check ], [ %.04964.i, %vector.memcheck351 ], [ %i.yg, %vec.epilog.iter.check ], [ %i.ym, %vec.epilog.middle.block ] ; 2 uses
  %.067.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck351 ], [ %n.vec359, %vec.epilog.iter.check ], [ %n.vec373, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter714 = and i64 %i.ya, 3                 ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol

.lr.ph.i172.prol:                                 ; preds = %.lr.ph.i172.preheader, %.lr.ph.i172.prol
  %.05170.i.prol = phi ptr [ %.051.i.prol, %.lr.ph.i172.prol ], [ %.05170.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04769.i.prol = phi ptr [ %.047.i.prol, %.lr.ph.i172.prol ], [ %.04769.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04968.i.prol = phi ptr [ %.049.i.prol, %.lr.ph.i172.prol ], [ %.04968.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.067.i.prol = phi i64 [ %i.yr, %.lr.ph.i172.prol ], [ %.067.i.ph, %.lr.ph.i172.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i172.prol ], [ 0, %.lr.ph.i172.preheader ]
  %i.yp = load i8, ptr %.05170.i.prol, align 1, !tbaa !10, !noalias !318
  %i.yq = load i8, ptr %.04769.i.prol, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.prol = sub i8 %i.yp, %i.yq
  store i8 %.narrow62.i.prol, ptr %.04968.i.prol, align 1, !tbaa !10, !noalias !318
  %i.yr = add nuw nsw i64 %.067.i.prol, 1         ; 2 uses
  %.049.i.prol = getelementptr inbounds nuw i8, ptr %.04968.i.prol, i64 1 ; 3 uses
  %.047.i.prol = getelementptr inbounds nuw i8, ptr %.04769.i.prol, i64 1 ; 3 uses
  %.051.i.prol = getelementptr inbounds nuw i8, ptr %.05170.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter714
  br i1 %prol.iter.cmp.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol, !llvm.loop !297

.lr.ph.i172.prol.loopexit:                        ; preds = %.lr.ph.i172.prol, %.lr.ph.i172.preheader
  %.049.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.047.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.051.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.05170.i.unr = phi ptr [ %.05170.i.ph, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.04769.i.unr = phi ptr [ %.04769.i.ph, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.04968.i.unr = phi ptr [ %.04968.i.ph, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.067.i.unr = phi i64 [ %.067.i.ph, %.lr.ph.i172.preheader ], [ %i.yr, %.lr.ph.i172.prol ]
  %i.ys = sub nsw i64 %.067.i.ph, %i.ya
  %i.yt = icmp ugt i64 %i.ys, -4
  br i1 %i.yt, label %.preheader.i174, label %.lr.ph.i172

.preheader.i174:                                  ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172, %middle.block368, %vec.epilog.middle.block, %bb.u
  %.0.lcssa.i175 = phi i64 [ 0, %bb.u ], [ %i.ya, %middle.block368 ], [ %i.ya, %vec.epilog.middle.block ], [ %i.ya, %.lr.ph.i172 ], [ %i.ya, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.049.lcssa.i = phi ptr [ %.04964.i, %bb.u ], [ %i.yg, %middle.block368 ], [ %i.ym, %vec.epilog.middle.block ], [ %.049.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.049.i.3, %.lr.ph.i172 ] ; 7 uses
  %.047.lcssa.i = phi ptr [ %.04765.i, %bb.u ], [ %i.yf, %middle.block368 ], [ %i.yl, %vec.epilog.middle.block ], [ %.047.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.047.i.3, %.lr.ph.i172 ] ; 7 uses
  %.051.lcssa.i = phi ptr [ %.05166.i, %bb.u ], [ %i.ye, %middle.block368 ], [ %i.yk, %vec.epilog.middle.block ], [ %.051.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.051.i.3, %.lr.ph.i172 ] ; 7 uses
  %.049.lcssa.i387 = ptrtoaddr ptr %.049.lcssa.i to i64 ; 4 uses
  %.047.lcssa.i389 = ptrtoaddr ptr %.047.lcssa.i to i64
  %.051.lcssa.i392 = ptrtoaddr ptr %.051.lcssa.i to i64
  %i.yu = icmp ult i64 %.0.lcssa.i175, %i.e
  br i1 %i.yu, label %iter.check424, label %.thread214.thread

iter.check424:                                    ; preds = %.preheader.i174
  %i.yv = sub i64 %i.e, %i.ya                     ; 7 uses
  %min.iters.check398 = icmp ult i64 %i.yv, 4
  br i1 %min.iters.check398, label %.lr.ph80.i.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %iter.check424
  %2 = sub i64 %.049.lcssa.i387, %i.xz
  %3 = add i64 %2, -2
  %diff.check388 = icmp ult i64 %3, 15
  %i.yw = sub i64 %.047.lcssa.i389, %.049.lcssa.i387
  %diff.check390 = icmp ugt i64 %i.yw, -16
  %conflict.rdx391 = or i1 %diff.check388, %diff.check390
  %i.yx = sub i64 %.051.lcssa.i392, %.049.lcssa.i387
  %diff.check393 = icmp ugt i64 %i.yx, -16
  %conflict.rdx394 = or i1 %conflict.rdx391, %diff.check393
  %i.yy = sub i64 %.049.lcssa.i387, %i.m
  %4 = add i64 %i.yy, -2
  %diff.check395 = icmp ult i64 %4, 15
  %conflict.rdx396 = or i1 %conflict.rdx394, %diff.check395
  br i1 %conflict.rdx396, label %.lr.ph80.i.preheader, label %vector.main.loop.iter.check399

vector.main.loop.iter.check399:                   ; preds = %vector.memcheck386
  %min.iters.check400 = icmp ult i64 %i.yv, 16
  br i1 %min.iters.check400, label %vec.epilog.ph428, label %vector.ph401

vector.ph401:                                     ; preds = %vector.main.loop.iter.check399
  %i.yz = and i64 %i.yv, 12
  %n.vec402 = and i64 %i.yv, -16                  ; 9 uses
  %i.za = add i64 %.0.lcssa.i175, %n.vec402
  %i.zb = getelementptr i8, ptr %i.l, i64 %n.vec402
  %i.zc = getelementptr i8, ptr %i.xy, i64 %n.vec402
  %i.zd = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec402
  %i.ze = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec402
  %i.zf = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec402
  br label %vector.body403

vector.body403:                                   ; preds = %vector.ph401, %vector.body403
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next414, %vector.body403 ] ; 6 uses
  %next.gep405 = getelementptr i8, ptr %i.l, i64 %index404
  %next.gep406 = getelementptr i8, ptr %i.xy, i64 %index404
  %next.gep407 = getelementptr i8, ptr %.047.lcssa.i, i64 %index404
  %next.gep408 = getelementptr i8, ptr %.049.lcssa.i, i64 %index404
  %next.gep409 = getelementptr i8, ptr %.051.lcssa.i, i64 %index404
  %i.zg = getelementptr inbounds nuw i8, ptr %next.gep406, i64 1
  %i.zh = getelementptr inbounds nuw i8, ptr %next.gep405, i64 1
  %wide.load410 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zi = zext <16 x i8> %wide.load410 to <16 x i32>
  %wide.load411 = load <16 x i8>, ptr %i.zg, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zj = zext <16 x i8> %wide.load411 to <16 x i32> ; 2 uses
  %wide.load412 = load <16 x i8>, ptr %i.zh, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zk = zext <16 x i8> %wide.load412 to <16 x i32>
  %i.zl = sub nsw <16 x i32> %i.zi, %i.zj         ; 2 uses
  %i.zm = sub nsw <16 x i32> %i.zk, %i.zj         ; 2 uses
  %i.zn = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zl, i1 true) ; 2 uses
  %i.zo = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zm, i1 true) ; 2 uses
  %i.zp = add nsw <16 x i32> %i.zm, %i.zl
  %i.zq = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zp, i1 true) ; 2 uses
  %i.zr = icmp samesign ugt <16 x i32> %i.zn, %i.zo
  %i.zs = icmp samesign ugt <16 x i32> %i.zn, %i.zq
  %i.zt = select <16 x i1> %i.zr, <16 x i1> splat (i1 true), <16 x i1> %i.zs
  %i.zu = icmp samesign ugt <16 x i32> %i.zo, %i.zq
  %i.zv = select <16 x i1> %i.zu, <16 x i8> %wide.load411, <16 x i8> %wide.load410
  %i.zw = select <16 x i1> %i.zt, <16 x i8> %i.zv, <16 x i8> %wide.load412
  %wide.load413 = load <16 x i8>, ptr %next.gep409, align 1, !tbaa !10, !noalias !318
  %i.zx = sub <16 x i8> %wide.load413, %i.zw
  store <16 x i8> %i.zx, ptr %next.gep408, align 1, !tbaa !10, !noalias !318
  %index.next414 = add nuw i64 %index404, 16      ; 2 uses
  %i.zy = icmp eq i64 %index.next414, %n.vec402
  br i1 %i.zy, label %middle.block415, label %vector.body403, !llvm.loop !298

middle.block415:                                  ; preds = %vector.body403
  %cmp.n416 = icmp eq i64 %i.yv, %n.vec402
  br i1 %cmp.n416, label %.thread214.thread, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block415
  %min.epilog.iters.check427 = icmp eq i64 %i.yz, 0
  br i1 %min.epilog.iters.check427, label %.lr.ph80.i.preheader, label %vec.epilog.ph428, !prof !310

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check399, %vec.epilog.iter.check426
  %vec.epilog.resume.val417 = phi i64 [ %n.vec402, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check399 ]
  %n.vec429 = and i64 %i.yv, -4                   ; 8 uses
  %i.zz = add i64 %.0.lcssa.i175, %n.vec429
  %i.aaa = getelementptr i8, ptr %i.l, i64 %n.vec429
  %i.aab = getelementptr i8, ptr %i.xy, i64 %n.vec429
  %i.aac = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec429
  %i.aad = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec429
  %i.aae = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec429
  br label %vec.epilog.vector.body430

vec.epilog.vector.body430:                        ; preds = %vec.epilog.vector.body430, %vec.epilog.ph428
  %index431 = phi i64 [ %vec.epilog.resume.val417, %vec.epilog.ph428 ], [ %index.next441, %vec.epilog.vector.body430 ] ; 6 uses
  %next.gep432 = getelementptr i8, ptr %i.l, i64 %index431
  %next.gep433 = getelementptr i8, ptr %i.xy, i64 %index431
  %next.gep434 = getelementptr i8, ptr %.047.lcssa.i, i64 %index431
  %next.gep435 = getelementptr i8, ptr %.049.lcssa.i, i64 %index431
  %next.gep436 = getelementptr i8, ptr %.051.lcssa.i, i64 %index431
  %i.aaf = getelementptr inbounds nuw i8, ptr %next.gep433, i64 1
  %i.aag = getelementptr inbounds nuw i8, ptr %next.gep432, i64 1
  %wide.load437 = load <4 x i8>, ptr %next.gep434, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aah = zext <4 x i8> %wide.load437 to <4 x i32>
  %wide.load438 = load <4 x i8>, ptr %i.aaf, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aai = zext <4 x i8> %wide.load438 to <4 x i32> ; 2 uses
  %wide.load439 = load <4 x i8>, ptr %i.aag, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aaj = zext <4 x i8> %wide.load439 to <4 x i32>
  %i.aak = sub nsw <4 x i32> %i.aah, %i.aai       ; 2 uses
  %i.aal = sub nsw <4 x i32> %i.aaj, %i.aai       ; 2 uses
  %i.aam = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aak, i1 true) ; 2 uses
  %i.aan = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aal, i1 true) ; 2 uses
  %i.aao = add nsw <4 x i32> %i.aal, %i.aak
  %i.aap = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aao, i1 true) ; 2 uses
  %i.aaq = icmp samesign ugt <4 x i32> %i.aam, %i.aan
  %i.aar = icmp samesign ugt <4 x i32> %i.aam, %i.aap
  %i.aas = select <4 x i1> %i.aaq, <4 x i1> splat (i1 true), <4 x i1> %i.aar
  %i.aat = icmp samesign ugt <4 x i32> %i.aan, %i.aap
  %i.aau = select <4 x i1> %i.aat, <4 x i8> %wide.load438, <4 x i8> %wide.load437
  %i.aav = select <4 x i1> %i.aas, <4 x i8> %i.aau, <4 x i8> %wide.load439
  %wide.load440 = load <4 x i8>, ptr %next.gep436, align 1, !tbaa !10, !noalias !318
  %i.aaw = sub <4 x i8> %wide.load440, %i.aav
  store <4 x i8> %i.aaw, ptr %next.gep435, align 1, !tbaa !10, !noalias !318
  %index.next441 = add nuw i64 %index431, 4       ; 2 uses
  %i.aax = icmp eq i64 %index.next441, %n.vec429
  br i1 %i.aax, label %vec.epilog.middle.block442, label %vec.epilog.vector.body430, !llvm.loop !299

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body430
  %cmp.n443 = icmp eq i64 %i.yv, %n.vec429
  br i1 %cmp.n443, label %.thread214.thread, label %.lr.ph80.i.preheader

.lr.ph80.i.preheader:                             ; preds = %iter.check424, %vector.memcheck386, %vec.epilog.iter.check426, %vec.epilog.middle.block442
  %.179.i.ph = phi i64 [ %.0.lcssa.i175, %iter.check424 ], [ %.0.lcssa.i175, %vector.memcheck386 ], [ %i.za, %vec.epilog.iter.check426 ], [ %i.zz, %vec.epilog.middle.block442 ]
  %.pn5678.i.ph = phi ptr [ %i.l, %iter.check424 ], [ %i.l, %vector.memcheck386 ], [ %i.zb, %vec.epilog.iter.check426 ], [ %i.aaa, %vec.epilog.middle.block442 ]
  %.pn77.i.ph = phi ptr [ %i.xy, %iter.check424 ], [ %i.xy, %vector.memcheck386 ], [ %i.zc, %vec.epilog.iter.check426 ], [ %i.aab, %vec.epilog.middle.block442 ]
  %.14876.i.ph = phi ptr [ %.047.lcssa.i, %iter.check424 ], [ %.047.lcssa.i, %vector.memcheck386 ], [ %i.zd, %vec.epilog.iter.check426 ], [ %i.aac, %vec.epilog.middle.block442 ]
  %.15075.i.ph = phi ptr [ %.049.lcssa.i, %iter.check424 ], [ %.049.lcssa.i, %vector.memcheck386 ], [ %i.ze, %vec.epilog.iter.check426 ], [ %i.aad, %vec.epilog.middle.block442 ]
  %.15274.i.ph = phi ptr [ %.051.lcssa.i, %iter.check424 ], [ %.051.lcssa.i, %vector.memcheck386 ], [ %i.zf, %vec.epilog.iter.check426 ], [ %i.aae, %vec.epilog.middle.block442 ]
  br label %.lr.ph80.i

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172
  %.05170.i = phi ptr [ %.051.i.3, %.lr.ph.i172 ], [ %.05170.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04769.i = phi ptr [ %.047.i.3, %.lr.ph.i172 ], [ %.04769.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04968.i = phi ptr [ %.049.i.3, %.lr.ph.i172 ], [ %.04968.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.067.i = phi i64 [ %i.abg, %.lr.ph.i172 ], [ %.067.i.unr, %.lr.ph.i172.prol.loopexit ]
  %i.aay = load i8, ptr %.05170.i, align 1, !tbaa !10, !noalias !318
  %i.aaz = load i8, ptr %.04769.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i = sub i8 %i.aay, %i.aaz
  store i8 %.narrow62.i, ptr %.04968.i, align 1, !tbaa !10, !noalias !318
  %.049.i = getelementptr inbounds nuw i8, ptr %.04968.i, i64 1
  %.047.i = getelementptr inbounds nuw i8, ptr %.04769.i, i64 1
  %.051.i = getelementptr inbounds nuw i8, ptr %.05170.i, i64 1
  %i.aba = load i8, ptr %.051.i, align 1, !tbaa !10, !noalias !318
  %i.abb = load i8, ptr %.047.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.1 = sub i8 %i.aba, %i.abb
  store i8 %.narrow62.i.1, ptr %.049.i, align 1, !tbaa !10, !noalias !318
  %.049.i.1 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 2
  %.047.i.1 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 2
  %.051.i.1 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 2
  %i.abc = load i8, ptr %.051.i.1, align 1, !tbaa !10, !noalias !318
  %i.abd = load i8, ptr %.047.i.1, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.2 = sub i8 %i.abc, %i.abd
  store i8 %.narrow62.i.2, ptr %.049.i.1, align 1, !tbaa !10, !noalias !318
  %.049.i.2 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 3
  %.047.i.2 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 3
  %.051.i.2 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 3
  %i.abe = load i8, ptr %.051.i.2, align 1, !tbaa !10, !noalias !318
  %i.abf = load i8, ptr %.047.i.2, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.3 = sub i8 %i.abe, %i.abf
  store i8 %.narrow62.i.3, ptr %.049.i.2, align 1, !tbaa !10, !noalias !318
  %i.abg = add nuw nsw i64 %.067.i, 4             ; 2 uses
  %.049.i.3 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4 ; 2 uses
  %.047.i.3 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 4 ; 2 uses
  %.051.i.3 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 4 ; 2 uses
  %exitcond.not.i173.3 = icmp eq i64 %i.abg, %i.ya
  br i1 %exitcond.not.i173.3, label %.preheader.i174, label %.lr.ph.i172, !llvm.loop !300

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %.lr.ph80.i
  %.179.i = phi i64 [ %i.aby, %.lr.ph80.i ], [ %.179.i.ph, %.lr.ph80.i.preheader ]
  %.pn5678.i = phi ptr [ %.045.i, %.lr.ph80.i ], [ %.pn5678.i.ph, %.lr.ph80.i.preheader ]
  %.pn77.i = phi ptr [ %.046.i, %.lr.ph80.i ], [ %.pn77.i.ph, %.lr.ph80.i.preheader ]
  %.14876.i = phi ptr [ %i.abh, %.lr.ph80.i ], [ %.14876.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15075.i = phi ptr [ %i.abx, %.lr.ph80.i ], [ %.15075.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15274.i = phi ptr [ %i.abv, %.lr.ph80.i ], [ %.15274.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.046.i = getelementptr inbounds nuw i8, ptr %.pn77.i, i64 1 ; 2 uses
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn5678.i, i64 1 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.14876.i, i64 1
  %i.abi = load i8, ptr %.14876.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abj = zext i8 %i.abi to i32
  %i.abk = load i8, ptr %.046.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abl = zext i8 %i.abk to i32                  ; 2 uses
  %i.abm = load i8, ptr %.045.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abn = zext i8 %i.abm to i32
  %i.abo = sub nsw i32 %i.abj, %i.abl             ; 2 uses
  %i.abp = sub nsw i32 %i.abn, %i.abl             ; 2 uses
  %i.abq = tail call i32 @llvm.abs.i32(i32 %i.abo, i1 true) ; 2 uses
  %i.abr = tail call i32 @llvm.abs.i32(i32 %i.abp, i1 true) ; 2 uses
  %i.abs = add nsw i32 %i.abp, %i.abo
  %i.abt = tail call i32 @llvm.abs.i32(i32 %i.abs, i1 true) ; 2 uses
  %.not.i176 = icmp samesign ugt i32 %i.abq, %i.abr
  %.not57.i = icmp samesign ugt i32 %i.abq, %i.abt
  %or.cond.i177 = select i1 %.not.i176, i1 true, i1 %.not57.i
  %.not58.i = icmp samesign ugt i32 %i.abr, %i.abt
  %i.abu = select i1 %.not58.i, i8 %i.abk, i8 %i.abi
  %.tr.i178 = select i1 %or.cond.i177, i8 %i.abu, i8 %i.abm
  %i.abv = getelementptr inbounds nuw i8, ptr %.15274.i, i64 1
  %i.abw = load i8, ptr %.15274.i, align 1, !tbaa !10, !noalias !318
  %.narrow.i179 = sub i8 %i.abw, %.tr.i178
  %i.abx = getelementptr inbounds nuw i8, ptr %.15075.i, i64 1
  store i8 %.narrow.i179, ptr %.15075.i, align 1, !tbaa !10, !noalias !318
  %i.aby = add nuw i64 %.179.i, 1                 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.aby, %i.e
  br i1 %exitcond85.not.i, label %.thread214.thread, label %.lr.ph80.i, !llvm.loop !301

.thread214:                                       ; preds = %bb.t
  %i.abz = and i32 %.0111, 128
  %.not126 = icmp eq i32 %i.abz, 0
  br i1 %.not126, label %.thread214.thread, label %bb.v

bb.v:                                             ; preds = %.thread214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !66, !alias.scope !319 ; 21 uses
end_hunk_2
