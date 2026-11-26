Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_write_find_filter:bb.a
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
  br i1 %min.iters.check, label %.lr.ph.preheader728, label %vector.ph

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
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.af, %i.ae
  %i.ah = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader728

.lr.ph.preheader728:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0228.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0101227.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.pn226.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader728, %.lr.ph
  %.0228 = phi i64 [ %i.ao, %.lr.ph ], [ %.0228.ph, %.lr.ph.preheader728 ]
  %.0101227 = phi i64 [ %i.an, %.lr.ph ], [ %.0101227.ph, %.lr.ph.preheader728 ]
  %.pn226 = phi ptr [ %.0102, %.lr.ph ], [ %.pn226.ph, %.lr.ph.preheader728 ]
  %.0102 = getelementptr inbounds nuw i8, ptr %.pn226, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.0102, align 1, !tbaa !10 ; 2 uses
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = sub nuw nsw i64 256, %i.aj
  %i.al = icmp slt i8 %i.ai, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 %i.aj
  %i.an = add i64 %i.am, %.0101227                ; 2 uses
  %i.ao = add nuw nsw i64 %.0228, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !272

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
  br i1 %.not.i, label %.preheader.i, label %iter.check639

iter.check639:                                    ; preds = %bb.d
  %.val128622 = ptrtoaddr ptr %.val128 to i64
  %min.iters.check624 = icmp ult i8 %i.g, 25
  %i.as = sub i64 %i.m, %.val128622
  %diff.check626 = icmp ugt i64 %i.as, -16
  %or.cond708 = select i1 %min.iters.check624, i1 true, i1 %diff.check626
  br i1 %or.cond708, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check627

vector.main.loop.iter.check627:                   ; preds = %iter.check639
  %min.iters.check628 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check628, label %vec.epilog.ph643, label %vector.ph629

vector.ph629:                                     ; preds = %vector.main.loop.iter.check627
  %i.at = and i64 %i.ar, 12
  %n.vec630 = and i64 %i.ar, 48                   ; 6 uses
  %i.au = getelementptr i8, ptr %.0222.i, i64 %n.vec630 ; 2 uses
  %i.av = getelementptr i8, ptr %.0201.i, i64 %n.vec630 ; 2 uses
  %wide.load635 = load <16 x i8>, ptr %.0222.i, align 1, !tbaa !10
  store <16 x i8> %wide.load635, ptr %.0201.i, align 1, !tbaa !10
  %i.aw = icmp eq i64 %n.vec630, 16
  br i1 %i.aw, label %middle.block637, label %vector.body631.1

vector.body631.1:                                 ; preds = %vector.ph629
  %next.gep633.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep634.1 = getelementptr i8, ptr %.val128, i64 17
  %wide.load635.1 = load <16 x i8>, ptr %next.gep633.1, align 1, !tbaa !10
  store <16 x i8> %wide.load635.1, ptr %next.gep634.1, align 1, !tbaa !10
  br label %middle.block637

middle.block637:                                  ; preds = %vector.body631.1, %vector.ph629
  %cmp.n638 = icmp eq i64 %n.vec630, %i.ar
  br i1 %cmp.n638, label %.preheader.i, label %vec.epilog.iter.check640

vec.epilog.iter.check640:                         ; preds = %middle.block637
  %min.epilog.iters.check642 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check642, label %.lr.ph.i.preheader, label %vec.epilog.ph643, !prof !319

vec.epilog.ph643:                                 ; preds = %vector.main.loop.iter.check627, %vec.epilog.iter.check640
  %vec.epilog.resume.val644 = phi i64 [ %n.vec630, %vec.epilog.iter.check640 ], [ 0, %vector.main.loop.iter.check627 ]
  %n.vec645 = and i64 %i.ar, 60                   ; 5 uses
  %i.ax = getelementptr i8, ptr %.0222.i, i64 %n.vec645 ; 2 uses
  %i.ay = getelementptr i8, ptr %.0201.i, i64 %n.vec645 ; 2 uses
  br label %vec.epilog.vector.body646

vec.epilog.vector.body646:                        ; preds = %vec.epilog.vector.body646, %vec.epilog.ph643
  %index647 = phi i64 [ %vec.epilog.resume.val644, %vec.epilog.ph643 ], [ %index.next651, %vec.epilog.vector.body646 ] ; 3 uses
  %next.gep648 = getelementptr i8, ptr %.0222.i, i64 %index647
  %next.gep649 = getelementptr i8, ptr %.0201.i, i64 %index647
  %wide.load650 = load <4 x i8>, ptr %next.gep648, align 1, !tbaa !10
  store <4 x i8> %wide.load650, ptr %next.gep649, align 1, !tbaa !10
  %index.next651 = add nuw i64 %index647, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next651, %n.vec645
  br i1 %i.az, label %vec.epilog.middle.block652, label %vec.epilog.vector.body646, !llvm.loop !273

vec.epilog.middle.block652:                       ; preds = %vec.epilog.vector.body646
  %cmp.n653 = icmp eq i64 %n.vec645, %i.ar
  br i1 %cmp.n653, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check639, %vec.epilog.iter.check640, %vec.epilog.middle.block652
  %.0225.i.ph = phi ptr [ %.0222.i, %iter.check639 ], [ %i.au, %vec.epilog.iter.check640 ], [ %i.ax, %vec.epilog.middle.block652 ] ; 2 uses
  %.0204.i.ph = phi ptr [ %.0201.i, %iter.check639 ], [ %i.av, %vec.epilog.iter.check640 ], [ %i.ay, %vec.epilog.middle.block652 ] ; 2 uses
  %.03.i.ph = phi i64 [ 0, %iter.check639 ], [ %n.vec630, %vec.epilog.iter.check640 ], [ %n.vec645, %vec.epilog.middle.block652 ] ; 4 uses
  %i.ba = sub nsw i64 %i.ar, %.03.i.ph
  %xtraiter744 = and i64 %i.ba, 7                 ; 2 uses
  %lcmp.mod745.not = icmp eq i64 %xtraiter744, 0
  br i1 %lcmp.mod745.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0225.i.prol = phi ptr [ %.022.i.prol, %.lr.ph.i.prol ], [ %.0225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0204.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.0204.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03.i.prol = phi i64 [ %i.bc, %.lr.ph.i.prol ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %prol.iter746 = phi i64 [ %prol.iter746.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bb = load i8, ptr %.0225.i.prol, align 1, !tbaa !10
  store i8 %i.bb, ptr %.0204.i.prol, align 1, !tbaa !10
  %i.bc = add nuw nsw i64 %.03.i.prol, 1          ; 2 uses
  %.020.i.prol = getelementptr inbounds nuw i8, ptr %.0204.i.prol, i64 1 ; 3 uses
  %.022.i.prol = getelementptr inbounds nuw i8, ptr %.0225.i.prol, i64 1 ; 3 uses
  %prol.iter746.next = add i64 %prol.iter746, 1   ; 2 uses
  %prol.iter746.cmp.not = icmp eq i64 %prol.iter746.next, %xtraiter744
  br i1 %prol.iter746.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !274

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.022.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0225.i.unr = phi ptr [ %.0225.i.ph, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0204.i.unr = phi ptr [ %.0204.i.ph, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.03.i.unr = phi i64 [ %.03.i.ph, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %.03.i.ph, %i.ar
  %i.be = icmp ugt i64 %i.bd, -8
  br i1 %i.be, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block637, %vec.epilog.middle.block652, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ar, %middle.block637 ], [ %i.ar, %vec.epilog.middle.block652 ], [ %i.ar, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.020.lcssa.i = phi ptr [ %.0201.i, %bb.d ], [ %i.av, %middle.block637 ], [ %i.ay, %vec.epilog.middle.block652 ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i = phi ptr [ %.0222.i, %bb.d ], [ %i.au, %middle.block637 ], [ %i.ax, %vec.epilog.middle.block652 ], [ %.022.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.022.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i663 = ptrtoaddr ptr %.022.lcssa.i to i64
  %.020.lcssa.i664 = ptrtoaddr ptr %.020.lcssa.i to i64 ; 2 uses
  %i.bf = icmp ult i64 %.0.lcssa.i, %i.e
  br i1 %i.bf, label %iter.check687, label %.thread214.thread

iter.check687:                                    ; preds = %.preheader.i
  %i.bg = sub i64 %i.e, %i.ar                     ; 7 uses
  %min.iters.check666 = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check666, label %.lr.ph12.i.preheader, label %vector.memcheck667

vector.memcheck667:                               ; preds = %iter.check687
  %i.bh = sub i64 %.020.lcssa.i664, %i.m
  %2 = add i64 %i.bh, -2
  %diff.check668 = icmp ult i64 %2, 31
  %3 = sub i64 %.022.lcssa.i663, %.020.lcssa.i664
  %diff.check669 = icmp ugt i64 %3, -32
  %conflict.rdx670 = or i1 %diff.check668, %diff.check669
  br i1 %conflict.rdx670, label %.lr.ph12.i.preheader, label %vector.main.loop.iter.check671

vector.main.loop.iter.check671:                   ; preds = %vector.memcheck667
  %min.iters.check672 = icmp ult i64 %i.bg, 32
  br i1 %min.iters.check672, label %vec.epilog.ph691, label %vector.ph673

vector.ph673:                                     ; preds = %vector.main.loop.iter.check671
  %i.bi = and i64 %i.bg, 28
  %n.vec674 = and i64 %i.bg, -32                  ; 7 uses
  %i.bj = add i64 %.0.lcssa.i, %n.vec674
  %i.bk = getelementptr i8, ptr %i.l, i64 %n.vec674
  %i.bl = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec674
  %i.bm = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec674
  br label %vector.body675

vector.body675:                                   ; preds = %vector.ph673, %vector.body675
  %index676 = phi i64 [ 0, %vector.ph673 ], [ %index.next684, %vector.body675 ] ; 4 uses
  %next.gep677 = getelementptr i8, ptr %i.l, i64 %index676 ; 2 uses
  %next.gep678 = getelementptr i8, ptr %.020.lcssa.i, i64 %index676 ; 2 uses
  %next.gep679 = getelementptr i8, ptr %.022.lcssa.i, i64 %index676 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %next.gep677, i64 1
  %i.bo = getelementptr i8, ptr %next.gep679, i64 16
  %wide.load680 = load <16 x i8>, ptr %next.gep679, align 1, !tbaa !10
  %wide.load681 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %next.gep677, i64 17
  %wide.load682 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !10
  %wide.load683 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !10
  %i.bq = sub <16 x i8> %wide.load680, %wide.load682
  %i.br = sub <16 x i8> %wide.load681, %wide.load683
  %i.bs = getelementptr i8, ptr %next.gep678, i64 16
  store <16 x i8> %i.bq, ptr %next.gep678, align 1, !tbaa !10
  store <16 x i8> %i.br, ptr %i.bs, align 1, !tbaa !10
  %index.next684 = add nuw i64 %index676, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next684, %n.vec674
  br i1 %i.bt, label %middle.block685, label %vector.body675, !llvm.loop !275

middle.block685:                                  ; preds = %vector.body675
  %cmp.n686 = icmp eq i64 %i.bg, %n.vec674
  br i1 %cmp.n686, label %.thread214.thread, label %vec.epilog.iter.check688

vec.epilog.iter.check688:                         ; preds = %middle.block685
  %min.epilog.iters.check690 = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check690, label %.lr.ph12.i.preheader, label %vec.epilog.ph691, !prof !321

vec.epilog.ph691:                                 ; preds = %vector.main.loop.iter.check671, %vec.epilog.iter.check688
  %vec.epilog.resume.val692 = phi i64 [ %n.vec674, %vec.epilog.iter.check688 ], [ 0, %vector.main.loop.iter.check671 ]
  %n.vec693 = and i64 %i.bg, -4                   ; 6 uses
  %i.bu = add i64 %.0.lcssa.i, %n.vec693
  %i.bv = getelementptr i8, ptr %i.l, i64 %n.vec693
  %i.bw = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec693
  %i.bx = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec693
  br label %vec.epilog.vector.body694

vec.epilog.vector.body694:                        ; preds = %vec.epilog.vector.body694, %vec.epilog.ph691
  %index695 = phi i64 [ %vec.epilog.resume.val692, %vec.epilog.ph691 ], [ %index.next701, %vec.epilog.vector.body694 ] ; 4 uses
  %next.gep696 = getelementptr i8, ptr %i.l, i64 %index695
  %next.gep697 = getelementptr i8, ptr %.020.lcssa.i, i64 %index695
  %next.gep698 = getelementptr i8, ptr %.022.lcssa.i, i64 %index695
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep696, i64 1
  %wide.load699 = load <4 x i8>, ptr %next.gep698, align 1, !tbaa !10
  %wide.load700 = load <4 x i8>, ptr %i.by, align 1, !tbaa !10
  %i.bz = sub <4 x i8> %wide.load699, %wide.load700
  store <4 x i8> %i.bz, ptr %next.gep697, align 1, !tbaa !10
  %index.next701 = add nuw i64 %index695, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next701, %n.vec693
  br i1 %i.ca, label %vec.epilog.middle.block702, label %vec.epilog.vector.body694, !llvm.loop !276

vec.epilog.middle.block702:                       ; preds = %vec.epilog.vector.body694
  %cmp.n703 = icmp eq i64 %i.bg, %n.vec693
  br i1 %cmp.n703, label %.thread214.thread, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %iter.check687, %vector.memcheck667, %vec.epilog.iter.check688, %vec.epilog.middle.block702
  %.111.i.ph = phi i64 [ %.0.lcssa.i, %iter.check687 ], [ %.0.lcssa.i, %vector.memcheck667 ], [ %i.bj, %vec.epilog.iter.check688 ], [ %i.bu, %vec.epilog.middle.block702 ] ; 4 uses
  %.pn10.i.ph = phi ptr [ %i.l, %iter.check687 ], [ %i.l, %vector.memcheck667 ], [ %i.bk, %vec.epilog.iter.check688 ], [ %i.bv, %vec.epilog.middle.block702 ] ; 2 uses
  %.1219.i.ph = phi ptr [ %.020.lcssa.i, %iter.check687 ], [ %.020.lcssa.i, %vector.memcheck667 ], [ %i.bl, %vec.epilog.iter.check688 ], [ %i.bw, %vec.epilog.middle.block702 ] ; 2 uses
  %.1238.i.ph = phi ptr [ %.022.lcssa.i, %iter.check687 ], [ %.022.lcssa.i, %vector.memcheck667 ], [ %i.bm, %vec.epilog.iter.check688 ], [ %i.bx, %vec.epilog.middle.block702 ] ; 2 uses
  %i.cb = sub i64 %i.e, %.111.i.ph
  %xtraiter747 = and i64 %i.cb, 3                 ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  br i1 %lcmp.mod748.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i.prol
  %.111.i.prol = phi i64 [ %i.ce, %.lr.ph12.i.prol ], [ %.111.i.ph, %.lr.ph12.i.preheader ]
  %.pn10.i.prol = phi ptr [ %.019.i.prol, %.lr.ph12.i.prol ], [ %.pn10.i.ph, %.lr.ph12.i.preheader ]
  %.1219.i.prol = phi ptr [ %i.cg, %.lr.ph12.i.prol ], [ %.1219.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %.1238.i.prol = phi ptr [ %i.cf, %.lr.ph12.i.prol ], [ %.1238.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %prol.iter749 = phi i64 [ %prol.iter749.next, %.lr.ph12.i.prol ], [ 0, %.lr.ph12.i.preheader ]
  %.019.i.prol = getelementptr inbounds nuw i8, ptr %.pn10.i.prol, i64 1 ; 3 uses
  %i.cc = load i8, ptr %.1238.i.prol, align 1, !tbaa !10
  %i.cd = load i8, ptr %.019.i.prol, align 1, !tbaa !10
  %.narrow.i.prol = sub i8 %i.cc, %i.cd
  store i8 %.narrow.i.prol, ptr %.1219.i.prol, align 1, !tbaa !10
  %i.ce = add nuw i64 %.111.i.prol, 1             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1238.i.prol, i64 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1219.i.prol, i64 1 ; 2 uses
  %prol.iter749.next = add i64 %prol.iter749, 1   ; 2 uses
  %prol.iter749.cmp.not = icmp eq i64 %prol.iter749.next, %xtraiter747
  br i1 %prol.iter749.cmp.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol, !llvm.loop !277

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.111.i.unr = phi i64 [ %.111.i.ph, %.lr.ph12.i.preheader ], [ %i.ce, %.lr.ph12.i.prol ]
  %.pn10.i.unr = phi ptr [ %.pn10.i.ph, %.lr.ph12.i.preheader ], [ %.019.i.prol, %.lr.ph12.i.prol ]
  %.1219.i.unr = phi ptr [ %.1219.i.ph, %.lr.ph12.i.preheader ], [ %i.cg, %.lr.ph12.i.prol ]
  %.1238.i.unr = phi ptr [ %.1238.i.ph, %.lr.ph12.i.preheader ], [ %i.cf, %.lr.ph12.i.prol ]
  %i.ch = sub i64 %.111.i.ph, %i.e
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.thread214.thread, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0225.i = phi ptr [ %.022.i.7, %.lr.ph.i ], [ %.0225.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0204.i = phi ptr [ %.020.i.7, %.lr.ph.i ], [ %.0204.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03.i = phi i64 [ %i.cr, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cj = load i8, ptr %.0225.i, align 1, !tbaa !10
  store i8 %i.cj, ptr %.0204.i, align 1, !tbaa !10
  %.020.i = getelementptr inbounds nuw i8, ptr %.0204.i, i64 1
  %.022.i = getelementptr inbounds nuw i8, ptr %.0225.i, i64 1
  %i.ck = load i8, ptr %.022.i, align 1, !tbaa !10
  store i8 %i.ck, ptr %.020.i, align 1, !tbaa !10
  %.020.i.1 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 2
  %.022.i.1 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 2
  %i.cl = load i8, ptr %.022.i.1, align 1, !tbaa !10
  store i8 %i.cl, ptr %.020.i.1, align 1, !tbaa !10
  %.020.i.2 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 3
  %.022.i.2 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 3
  %i.cm = load i8, ptr %.022.i.2, align 1, !tbaa !10
  store i8 %i.cm, ptr %.020.i.2, align 1, !tbaa !10
  %.020.i.3 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 4
  %.022.i.3 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 4
  %i.cn = load i8, ptr %.022.i.3, align 1, !tbaa !10
  store i8 %i.cn, ptr %.020.i.3, align 1, !tbaa !10
  %.020.i.4 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 5
  %.022.i.4 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 5
  %i.co = load i8, ptr %.022.i.4, align 1, !tbaa !10
  store i8 %i.co, ptr %.020.i.4, align 1, !tbaa !10
  %.020.i.5 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 6
  %.022.i.5 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 6
  %i.cp = load i8, ptr %.022.i.5, align 1, !tbaa !10
  store i8 %i.cp, ptr %.020.i.5, align 1, !tbaa !10
  %.020.i.6 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 7
  %.022.i.6 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 7
  %i.cq = load i8, ptr %.022.i.6, align 1, !tbaa !10
  store i8 %i.cq, ptr %.020.i.6, align 1, !tbaa !10
  %i.cr = add nuw nsw i64 %.03.i, 8               ; 2 uses
  %.020.i.7 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 8 ; 2 uses
  %.022.i.7 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.cr, %i.ar
  br i1 %exitcond.not.i.7, label %.preheader.i, label %.lr.ph.i, !llvm.loop !278

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i
  %.111.i = phi i64 [ %i.dg, %.lr.ph12.i ], [ %.111.i.unr, %.lr.ph12.i.prol.loopexit ]
  %.pn10.i = phi ptr [ %.019.i.3, %.lr.ph12.i ], [ %.pn10.i.unr, %.lr.ph12.i.prol.loopexit ] ; 4 uses
  %.1219.i = phi ptr [ %i.di, %.lr.ph12.i ], [ %.1219.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.1238.i = phi ptr [ %i.dh, %.lr.ph12.i ], [ %.1238.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 1
  %i.cs = load i8, ptr %.1238.i, align 1, !tbaa !10
  %i.ct = load i8, ptr %.019.i, align 1, !tbaa !10
  %.narrow.i = sub i8 %i.cs, %i.ct
  store i8 %.narrow.i, ptr %.1219.i, align 1, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.1238.i, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.1219.i, i64 1
  %.019.i.1 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 2
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !10
  %i.cx = load i8, ptr %.019.i.1, align 1, !tbaa !10
  %.narrow.i.1 = sub i8 %i.cw, %i.cx
  store i8 %.narrow.i.1, ptr %i.cv, align 1, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %.1238.i, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %.1219.i, i64 2
  %.019.i.2 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 3
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !10
  %i.db = load i8, ptr %.019.i.2, align 1, !tbaa !10
  %.narrow.i.2 = sub i8 %i.da, %i.db
  store i8 %.narrow.i.2, ptr %i.cz, align 1, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %.1238.i, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %.1219.i, i64 3
  %.019.i.3 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 4 ; 2 uses
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.df = load i8, ptr %.019.i.3, align 1, !tbaa !10
  %.narrow.i.3 = sub i8 %i.de, %i.df
  store i8 %.narrow.i.3, ptr %i.dd, align 1, !tbaa !10
  %i.dg = add nuw i64 %.111.i, 4                  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1238.i, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.1219.i, i64 4
  %exitcond15.not.i.3 = icmp eq i64 %i.dg, %i.e
  br i1 %exitcond15.not.i.3, label %.thread214.thread, label %.lr.ph12.i, !llvm.loop !279

bb.e:                                             ; preds = %.loopexit
  %i.dj = and i32 %.0111, 16
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dk = getelementptr i8, ptr %0, i64 568       ; 2 uses
  %.val130 = load ptr, ptr %i.dk, align 8, !tbaa !66 ; 21 uses
  store i8 1, ptr %.val130, align 1, !tbaa !10
  %i.dl = zext nneg i32 %i.j to i64               ; 8 uses
  %.0331.i = getelementptr inbounds nuw i8, ptr %.val130, i64 1 ; 4 uses
  %.0352.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  %.not.i131 = icmp eq i32 %i.j, 0
  br i1 %.not.i131, label %.preheader.i134, label %.lr.ph.i132.preheader
end_hunk_0
begin_hunk_1_@png_write_find_filter:bb.a
  %.02033.i = getelementptr inbounds nuw i8, ptr %.pn25.pn.i, i64 1 ; 2 uses
  %.02234.i = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 1 ; 2 uses
  %i.kw = load i8, ptr %.02234.i, align 1, !tbaa !10, !noalias !323
  %i.kx = load i8, ptr %.02033.i, align 1, !tbaa !10, !noalias !323
  %.narrow.i145 = sub i8 %i.kw, %i.kx             ; 3 uses
  store i8 %.narrow.i145, ptr %.02132.i, align 1, !tbaa !10, !noalias !323
  %i.ky = zext i8 %.narrow.i145 to i64            ; 2 uses
  %i.kz = sub nuw nsw i64 256, %i.ky
  %i.la = icmp slt i8 %.narrow.i145, 0
  %i.lb = select i1 %i.la, i64 %i.kz, i64 %i.ky
  %i.lc = add i64 %i.lb, %.031.i                  ; 3 uses
  %i.ld = icmp ugt i64 %i.lc, %.2
  %i.le = add nuw i64 %.01930.i, 1                ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.le, %i.e
  %or.cond.i147 = select i1 %i.ld, i1 true, i1 %exitcond.not.i146
  br i1 %or.cond.i147, label %png_setup_up_row.exit, label %.lr.ph.i144, !llvm.loop !290

png_setup_up_row.exit:                            ; preds = %.lr.ph.i144, %bb.l
  %.1.i = phi i64 [ 0, %bb.l ], [ %i.lc, %.lr.ph.i144 ] ; 3 uses
  %i.lf = icmp ult i64 %.1.i, %.2
  br i1 %i.lf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %png_setup_up_row.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !67 ; 2 uses
  %.not123 = icmp eq ptr %i.lh, null
  br i1 %.not123, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.lh, ptr %i.ks, align 8, !tbaa !66
  store ptr %i.kt, ptr %i.lg, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %png_setup_up_row.exit, %bb.n, %bb.m, %bb.k
  %.3107 = phi ptr [ %.1105, %png_setup_up_row.exit ], [ %.1105, %bb.k ], [ %i.kt, %bb.n ], [ %i.kt, %bb.m ] ; 2 uses
  %.4 = phi i64 [ %.2, %png_setup_up_row.exit ], [ %.2, %bb.k ], [ %.1.i, %bb.n ], [ %.1.i, %bb.m ] ; 4 uses
  %i.li = icmp eq i32 %.0111, 64
  br i1 %i.li, label %bb.p, label %.thread197

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !66, !alias.scope !324 ; 8 uses
  %i.ll = ptrtoaddr ptr %i.lk to i64              ; 2 uses
  store i8 3, ptr %i.lk, align 1, !tbaa !10, !noalias !324
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !68, !alias.scope !324 ; 3 uses
  %i.lo = ptrtoaddr ptr %i.ln to i64
  %.02029.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 7 uses
  %.01830.i = getelementptr inbounds nuw i8, ptr %i.ln, i64 1 ; 7 uses
  %.02231.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not.i148 = icmp eq i32 %i.j, 0
  br i1 %.not.i148, label %.preheader.i154, label %iter.check488

iter.check488:                                    ; preds = %bb.p
  %i.lp = zext nneg i32 %i.j to i64               ; 5 uses
  %min.iters.check469 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check469, label %.lr.ph.i149.preheader, label %vector.memcheck470

vector.memcheck470:                               ; preds = %iter.check488
  %i.lq = sub i64 %i.m, %i.ll
  %diff.check471 = icmp ugt i64 %i.lq, -16
  %i.lr = sub i64 %i.lo, %i.ll
  %diff.check472 = icmp ugt i64 %i.lr, -16
  %conflict.rdx473 = or i1 %diff.check471, %diff.check472
  br i1 %conflict.rdx473, label %.lr.ph.i149.preheader, label %vector.main.loop.iter.check474

vector.main.loop.iter.check474:                   ; preds = %vector.memcheck470
  %min.iters.check475 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check475, label %vec.epilog.ph492, label %vector.ph476

vector.ph476:                                     ; preds = %vector.main.loop.iter.check474
  %i.ls = and i64 %i.lp, 12
  %n.vec477 = and i64 %i.lp, 48                   ; 7 uses
  %i.lt = getelementptr i8, ptr %.02231.i, i64 %n.vec477 ; 2 uses
  %i.lu = getelementptr i8, ptr %.01830.i, i64 %n.vec477 ; 2 uses
  %i.lv = getelementptr i8, ptr %.02029.i, i64 %n.vec477 ; 2 uses
  %i.lw = trunc nuw nsw i64 %n.vec477 to i32
  %wide.load483 = load <16 x i8>, ptr %.02231.i, align 1, !tbaa !10, !noalias !324
  %wide.load484 = load <16 x i8>, ptr %.01830.i, align 1, !tbaa !10, !noalias !324
  %i.lx = lshr <16 x i8> %wide.load484, splat (i8 1)
  %i.ly = sub <16 x i8> %wide.load483, %i.lx
  store <16 x i8> %i.ly, ptr %.02029.i, align 1, !tbaa !10, !noalias !324
  %i.lz = icmp eq i64 %n.vec477, 16
  br i1 %i.lz, label %middle.block486, label %vector.body478.1

vector.body478.1:                                 ; preds = %vector.ph476
  %next.gep480.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep481.1 = getelementptr i8, ptr %i.ln, i64 17
  %next.gep482.1 = getelementptr i8, ptr %i.lk, i64 17
  %wide.load483.1 = load <16 x i8>, ptr %next.gep480.1, align 1, !tbaa !10, !noalias !324
  %wide.load484.1 = load <16 x i8>, ptr %next.gep481.1, align 1, !tbaa !10, !noalias !324
  %i.ma = lshr <16 x i8> %wide.load484.1, splat (i8 1)
  %i.mb = sub <16 x i8> %wide.load483.1, %i.ma
  store <16 x i8> %i.mb, ptr %next.gep482.1, align 1, !tbaa !10, !noalias !324
  br label %middle.block486

middle.block486:                                  ; preds = %vector.body478.1, %vector.ph476
  %cmp.n487 = icmp eq i64 %n.vec477, %i.lp
  br i1 %cmp.n487, label %.preheader.i154, label %vec.epilog.iter.check489

vec.epilog.iter.check489:                         ; preds = %middle.block486
  %min.epilog.iters.check491 = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check491, label %.lr.ph.i149.preheader, label %vec.epilog.ph492, !prof !319

vec.epilog.ph492:                                 ; preds = %vector.main.loop.iter.check474, %vec.epilog.iter.check489
  %vec.epilog.resume.val493 = phi i64 [ %n.vec477, %vec.epilog.iter.check489 ], [ 0, %vector.main.loop.iter.check474 ]
  %n.vec494 = and i64 %i.lp, 60                   ; 6 uses
  %i.mc = getelementptr i8, ptr %.02231.i, i64 %n.vec494 ; 2 uses
  %i.md = getelementptr i8, ptr %.01830.i, i64 %n.vec494 ; 2 uses
  %i.me = getelementptr i8, ptr %.02029.i, i64 %n.vec494 ; 2 uses
  %i.mf = trunc nuw nsw i64 %n.vec494 to i32
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph492
  %index496 = phi i64 [ %vec.epilog.resume.val493, %vec.epilog.ph492 ], [ %index.next502, %vec.epilog.vector.body495 ] ; 4 uses
  %next.gep497 = getelementptr i8, ptr %.02231.i, i64 %index496
  %next.gep498 = getelementptr i8, ptr %.01830.i, i64 %index496
  %next.gep499 = getelementptr i8, ptr %.02029.i, i64 %index496
  %wide.load500 = load <4 x i8>, ptr %next.gep497, align 1, !tbaa !10, !noalias !324
  %wide.load501 = load <4 x i8>, ptr %next.gep498, align 1, !tbaa !10, !noalias !324
  %i.mg = lshr <4 x i8> %wide.load501, splat (i8 1)
  %i.mh = sub <4 x i8> %wide.load500, %i.mg
  store <4 x i8> %i.mh, ptr %next.gep499, align 1, !tbaa !10, !noalias !324
  %index.next502 = add nuw i64 %index496, 4       ; 2 uses
  %i.mi = icmp eq i64 %index.next502, %n.vec494
  br i1 %i.mi, label %vec.epilog.middle.block503, label %vec.epilog.vector.body495, !llvm.loop !293

vec.epilog.middle.block503:                       ; preds = %vec.epilog.vector.body495
  %cmp.n504 = icmp eq i64 %n.vec494, %i.lp
  br i1 %cmp.n504, label %.preheader.i154, label %.lr.ph.i149.preheader

.lr.ph.i149.preheader:                            ; preds = %iter.check488, %vector.memcheck470, %vec.epilog.iter.check489, %vec.epilog.middle.block503
  %.02235.i.ph = phi ptr [ %.02231.i, %iter.check488 ], [ %.02231.i, %vector.memcheck470 ], [ %i.lt, %vec.epilog.iter.check489 ], [ %i.mc, %vec.epilog.middle.block503 ] ; 2 uses
  %.01834.i.ph = phi ptr [ %.01830.i, %iter.check488 ], [ %.01830.i, %vector.memcheck470 ], [ %i.lu, %vec.epilog.iter.check489 ], [ %i.md, %vec.epilog.middle.block503 ] ; 2 uses
  %.02033.i150.ph = phi ptr [ %.02029.i, %iter.check488 ], [ %.02029.i, %vector.memcheck470 ], [ %i.lv, %vec.epilog.iter.check489 ], [ %i.me, %vec.epilog.middle.block503 ] ; 2 uses
  %.032.i.ph = phi i32 [ 0, %iter.check488 ], [ 0, %vector.memcheck470 ], [ %i.lw, %vec.epilog.iter.check489 ], [ %i.mf, %vec.epilog.middle.block503 ] ; 4 uses
  %i.mj = sub nsw i32 %i.j, %.032.i.ph
  %xtraiter738 = and i32 %i.mj, 3                 ; 2 uses
  %lcmp.mod739.not = icmp eq i32 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol

.lr.ph.i149.prol:                                 ; preds = %.lr.ph.i149.preheader, %.lr.ph.i149.prol
  %.02235.i.prol = phi ptr [ %.022.i152.prol, %.lr.ph.i149.prol ], [ %.02235.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.01834.i.prol = phi ptr [ %.018.i.prol, %.lr.ph.i149.prol ], [ %.01834.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.02033.i150.prol = phi ptr [ %.020.i151.prol, %.lr.ph.i149.prol ], [ %.02033.i150.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.032.i.prol = phi i32 [ %i.mn, %.lr.ph.i149.prol ], [ %.032.i.ph, %.lr.ph.i149.preheader ]
  %prol.iter740 = phi i32 [ %prol.iter740.next, %.lr.ph.i149.prol ], [ 0, %.lr.ph.i149.preheader ]
  %i.mk = load i8, ptr %.02235.i.prol, align 1, !tbaa !10, !noalias !324
  %i.ml = load i8, ptr %.01834.i.prol, align 1, !tbaa !10, !noalias !324
  %i.mm = lshr i8 %i.ml, 1
  %.narrow27.i.prol = sub i8 %i.mk, %i.mm
  store i8 %.narrow27.i.prol, ptr %.02033.i150.prol, align 1, !tbaa !10, !noalias !324
  %i.mn = add nuw nsw i32 %.032.i.prol, 1         ; 2 uses
  %.020.i151.prol = getelementptr inbounds nuw i8, ptr %.02033.i150.prol, i64 1 ; 3 uses
  %.018.i.prol = getelementptr inbounds nuw i8, ptr %.01834.i.prol, i64 1 ; 3 uses
  %.022.i152.prol = getelementptr inbounds nuw i8, ptr %.02235.i.prol, i64 1 ; 3 uses
  %prol.iter740.next = add i32 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i32 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol, !llvm.loop !294

.lr.ph.i149.prol.loopexit:                        ; preds = %.lr.ph.i149.prol, %.lr.ph.i149.preheader
  %.020.i151.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.018.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.022.i152.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.02235.i.unr = phi ptr [ %.02235.i.ph, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.01834.i.unr = phi ptr [ %.01834.i.ph, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.02033.i150.unr = phi ptr [ %.02033.i150.ph, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.032.i.unr = phi i32 [ %.032.i.ph, %.lr.ph.i149.preheader ], [ %i.mn, %.lr.ph.i149.prol ]
  %i.mo = sub nsw i32 %.032.i.ph, %i.j
  %i.mp = icmp ugt i32 %i.mo, -4
  br i1 %i.mp, label %.preheader.i154, label %.lr.ph.i149

.preheader.i154:                                  ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149, %middle.block486, %vec.epilog.middle.block503, %bb.p
  %.020.lcssa.i155 = phi ptr [ %.02029.i, %bb.p ], [ %i.me, %vec.epilog.middle.block503 ], [ %i.lv, %middle.block486 ], [ %.020.i151.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.020.i151.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i = phi ptr [ %.01830.i, %bb.p ], [ %i.md, %vec.epilog.middle.block503 ], [ %i.lu, %middle.block486 ], [ %.018.i.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.018.i.3, %.lr.ph.i149 ] ; 8 uses
  %.022.lcssa.i156 = phi ptr [ %.02231.i, %bb.p ], [ %i.mc, %vec.epilog.middle.block503 ], [ %i.lt, %middle.block486 ], [ %.022.i152.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.022.i152.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i518 = ptrtoaddr ptr %.018.lcssa.i to i64
  %.022.lcssa.i156519 = ptrtoaddr ptr %.022.lcssa.i156 to i64
  %.020.lcssa.i155520 = ptrtoaddr ptr %.020.lcssa.i155 to i64 ; 3 uses
  %i.mq = zext nneg i32 %i.j to i64               ; 3 uses
  %i.mr = icmp ugt i64 %i.e, %i.mq
  br i1 %i.mr, label %iter.check548, label %.thread214.thread

iter.check548:                                    ; preds = %.preheader.i154
  %i.ms = sub nuw i64 %i.e, %i.mq                 ; 7 uses
  %min.iters.check522 = icmp ult i64 %i.ms, 8
  br i1 %min.iters.check522, label %.lr.ph44.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check548
  %i.mt = xor i64 %i.mq, -1
  %i.mu = add i64 %i.e, %i.mt                     ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = sub nuw nsw i32 -2, %i.j
  %i.mx = icmp ult i32 %i.mw, %i.mv
  %i.my = icmp ugt i64 %i.mu, 4294967295
  %i.mz = or i1 %i.mx, %i.my
  br i1 %i.mz, label %.lr.ph44.i.preheader, label %vector.memcheck523

vector.memcheck523:                               ; preds = %vector.scevcheck
  %i.na = sub i64 %.020.lcssa.i155520, %i.m
  %4 = add i64 %i.na, -2
  %diff.check524 = icmp ult i64 %4, 31
  %5 = sub i64 %.022.lcssa.i156519, %.020.lcssa.i155520
  %diff.check525 = icmp ugt i64 %5, -32
  %conflict.rdx526 = or i1 %diff.check524, %diff.check525
  %i.nb = sub i64 %.018.lcssa.i518, %.020.lcssa.i155520
  %diff.check527 = icmp ugt i64 %i.nb, -32
  %conflict.rdx528 = or i1 %conflict.rdx526, %diff.check527
  br i1 %conflict.rdx528, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check529

vector.main.loop.iter.check529:                   ; preds = %vector.memcheck523
  %min.iters.check530 = icmp ult i64 %i.ms, 32
  br i1 %min.iters.check530, label %vec.epilog.ph552, label %vector.ph531

vector.ph531:                                     ; preds = %vector.main.loop.iter.check529
  %i.nc = and i64 %i.ms, 24
  %n.vec532 = and i64 %i.ms, -32                  ; 8 uses
  %i.nd = trunc i64 %n.vec532 to i32
  %i.ne = add i32 %i.j, %i.nd
  %i.nf = getelementptr i8, ptr %i.l, i64 %n.vec532
  %i.ng = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec532
  %i.nh = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec532
  %i.ni = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec532
  br label %vector.body533

vector.body533:                                   ; preds = %vector.ph531, %vector.body533
  %index534 = phi i64 [ 0, %vector.ph531 ], [ %index.next545, %vector.body533 ] ; 5 uses
  %next.gep535 = getelementptr i8, ptr %i.l, i64 %index534 ; 2 uses
  %next.gep536 = getelementptr i8, ptr %.018.lcssa.i, i64 %index534 ; 2 uses
  %next.gep537 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index534 ; 2 uses
  %next.gep538 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index534 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %next.gep535, i64 1
  %i.nk = getelementptr i8, ptr %next.gep538, i64 16
  %wide.load539 = load <16 x i8>, ptr %next.gep538, align 1, !tbaa !10, !noalias !324
  %wide.load540 = load <16 x i8>, ptr %i.nk, align 1, !tbaa !10, !noalias !324
  %i.nl = getelementptr i8, ptr %next.gep536, i64 16
  %wide.load541 = load <16 x i8>, ptr %next.gep536, align 1, !tbaa !10, !noalias !324
  %wide.load542 = load <16 x i8>, ptr %i.nl, align 1, !tbaa !10, !noalias !324
  %i.nm = zext <16 x i8> %wide.load541 to <16 x i16>
  %i.nn = zext <16 x i8> %wide.load542 to <16 x i16>
  %i.no = getelementptr inbounds nuw i8, ptr %next.gep535, i64 17
  %wide.load543 = load <16 x i8>, ptr %i.nj, align 1, !tbaa !10, !noalias !324
  %wide.load544 = load <16 x i8>, ptr %i.no, align 1, !tbaa !10, !noalias !324
  %i.np = zext <16 x i8> %wide.load543 to <16 x i16>
  %i.nq = zext <16 x i8> %wide.load544 to <16 x i16>
  %i.nr = add nuw nsw <16 x i16> %i.np, %i.nm
  %i.ns = add nuw nsw <16 x i16> %i.nq, %i.nn
  %i.nt = lshr <16 x i16> %i.nr, splat (i16 1)
  %i.nu = lshr <16 x i16> %i.ns, splat (i16 1)
  %i.nv = trunc nuw <16 x i16> %i.nt to <16 x i8>
  %i.nw = trunc nuw <16 x i16> %i.nu to <16 x i8>
  %i.nx = sub <16 x i8> %wide.load539, %i.nv
  %i.ny = sub <16 x i8> %wide.load540, %i.nw
  %i.nz = getelementptr i8, ptr %next.gep537, i64 16
  store <16 x i8> %i.nx, ptr %next.gep537, align 1, !tbaa !10, !noalias !324
  store <16 x i8> %i.ny, ptr %i.nz, align 1, !tbaa !10, !noalias !324
  %index.next545 = add nuw i64 %index534, 32      ; 2 uses
  %i.oa = icmp eq i64 %index.next545, %n.vec532
  br i1 %i.oa, label %middle.block546, label %vector.body533, !llvm.loop !295

middle.block546:                                  ; preds = %vector.body533
  %cmp.n547 = icmp eq i64 %i.ms, %n.vec532
  br i1 %cmp.n547, label %.thread214.thread, label %vec.epilog.iter.check549

vec.epilog.iter.check549:                         ; preds = %middle.block546
  %min.epilog.iters.check551 = icmp eq i64 %i.nc, 0
  br i1 %min.epilog.iters.check551, label %.lr.ph44.i.preheader, label %vec.epilog.ph552, !prof !325

vec.epilog.ph552:                                 ; preds = %vector.main.loop.iter.check529, %vec.epilog.iter.check549
  %vec.epilog.resume.val553 = phi i64 [ %n.vec532, %vec.epilog.iter.check549 ], [ 0, %vector.main.loop.iter.check529 ]
  %n.vec554 = and i64 %i.ms, -8                   ; 7 uses
  %i.ob = trunc i64 %n.vec554 to i32
  %i.oc = add i32 %i.j, %i.ob
  %i.od = getelementptr i8, ptr %i.l, i64 %n.vec554
  %i.oe = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec554
  %i.of = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec554
  %i.og = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec554
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph552
  %index556 = phi i64 [ %vec.epilog.resume.val553, %vec.epilog.ph552 ], [ %index.next564, %vec.epilog.vector.body555 ] ; 5 uses
  %next.gep557 = getelementptr i8, ptr %i.l, i64 %index556
  %next.gep558 = getelementptr i8, ptr %.018.lcssa.i, i64 %index556
  %next.gep559 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index556
  %next.gep560 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index556
  %i.oh = getelementptr inbounds nuw i8, ptr %next.gep557, i64 1
  %wide.load561 = load <8 x i8>, ptr %next.gep560, align 1, !tbaa !10, !noalias !324
  %wide.load562 = load <8 x i8>, ptr %next.gep558, align 1, !tbaa !10, !noalias !324
  %i.oi = zext <8 x i8> %wide.load562 to <8 x i16>
  %wide.load563 = load <8 x i8>, ptr %i.oh, align 1, !tbaa !10, !noalias !324
  %i.oj = zext <8 x i8> %wide.load563 to <8 x i16>
  %i.ok = add nuw nsw <8 x i16> %i.oj, %i.oi
  %i.ol = lshr <8 x i16> %i.ok, splat (i16 1)
  %i.om = trunc nuw <8 x i16> %i.ol to <8 x i8>
  %i.on = sub <8 x i8> %wide.load561, %i.om
  store <8 x i8> %i.on, ptr %next.gep559, align 1, !tbaa !10, !noalias !324
  %index.next564 = add nuw i64 %index556, 8       ; 2 uses
  %i.oo = icmp eq i64 %index.next564, %n.vec554
  br i1 %i.oo, label %vec.epilog.middle.block565, label %vec.epilog.vector.body555, !llvm.loop !296

vec.epilog.middle.block565:                       ; preds = %vec.epilog.vector.body555
  %cmp.n566 = icmp eq i64 %i.ms, %n.vec554
  br i1 %cmp.n566, label %.thread214.thread, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %iter.check548, %vector.scevcheck, %vector.memcheck523, %vec.epilog.iter.check549, %vec.epilog.middle.block565
  %.143.i.ph = phi i32 [ %i.j, %iter.check548 ], [ %i.j, %vector.scevcheck ], [ %i.j, %vector.memcheck523 ], [ %i.ne, %vec.epilog.iter.check549 ], [ %i.oc, %vec.epilog.middle.block565 ]
  %.pn42.i.ph = phi ptr [ %i.l, %iter.check548 ], [ %i.l, %vector.scevcheck ], [ %i.l, %vector.memcheck523 ], [ %i.nf, %vec.epilog.iter.check549 ], [ %i.od, %vec.epilog.middle.block565 ]
  %.11941.i.ph = phi ptr [ %.018.lcssa.i, %iter.check548 ], [ %.018.lcssa.i, %vector.scevcheck ], [ %.018.lcssa.i, %vector.memcheck523 ], [ %i.ng, %vec.epilog.iter.check549 ], [ %i.oe, %vec.epilog.middle.block565 ]
  %.12140.i.ph = phi ptr [ %.020.lcssa.i155, %iter.check548 ], [ %.020.lcssa.i155, %vector.scevcheck ], [ %.020.lcssa.i155, %vector.memcheck523 ], [ %i.nh, %vec.epilog.iter.check549 ], [ %i.of, %vec.epilog.middle.block565 ]
  %.12339.i.ph = phi ptr [ %.022.lcssa.i156, %iter.check548 ], [ %.022.lcssa.i156, %vector.scevcheck ], [ %.022.lcssa.i156, %vector.memcheck523 ], [ %i.ni, %vec.epilog.iter.check549 ], [ %i.og, %vec.epilog.middle.block565 ]
  br label %.lr.ph44.i

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149
  %.02235.i = phi ptr [ %.022.i152.3, %.lr.ph.i149 ], [ %.02235.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.01834.i = phi ptr [ %.018.i.3, %.lr.ph.i149 ], [ %.01834.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.02033.i150 = phi ptr [ %.020.i151.3, %.lr.ph.i149 ], [ %.02033.i150.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.032.i = phi i32 [ %i.pb, %.lr.ph.i149 ], [ %.032.i.unr, %.lr.ph.i149.prol.loopexit ]
  %i.op = load i8, ptr %.02235.i, align 1, !tbaa !10, !noalias !324
  %i.oq = load i8, ptr %.01834.i, align 1, !tbaa !10, !noalias !324
  %i.or = lshr i8 %i.oq, 1
  %.narrow27.i = sub i8 %i.op, %i.or
  store i8 %.narrow27.i, ptr %.02033.i150, align 1, !tbaa !10, !noalias !324
  %.020.i151 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 1
  %.018.i = getelementptr inbounds nuw i8, ptr %.01834.i, i64 1
  %.022.i152 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 1
  %i.os = load i8, ptr %.022.i152, align 1, !tbaa !10, !noalias !324
  %i.ot = load i8, ptr %.018.i, align 1, !tbaa !10, !noalias !324
  %i.ou = lshr i8 %i.ot, 1
  %.narrow27.i.1 = sub i8 %i.os, %i.ou
  store i8 %.narrow27.i.1, ptr %.020.i151, align 1, !tbaa !10, !noalias !324
  %.020.i151.1 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 2
  %.018.i.1 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 2
  %.022.i152.1 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 2
  %i.ov = load i8, ptr %.022.i152.1, align 1, !tbaa !10, !noalias !324
  %i.ow = load i8, ptr %.018.i.1, align 1, !tbaa !10, !noalias !324
  %i.ox = lshr i8 %i.ow, 1
  %.narrow27.i.2 = sub i8 %i.ov, %i.ox
  store i8 %.narrow27.i.2, ptr %.020.i151.1, align 1, !tbaa !10, !noalias !324
  %.020.i151.2 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 3
  %.018.i.2 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 3
  %.022.i152.2 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 3
  %i.oy = load i8, ptr %.022.i152.2, align 1, !tbaa !10, !noalias !324
  %i.oz = load i8, ptr %.018.i.2, align 1, !tbaa !10, !noalias !324
  %i.pa = lshr i8 %i.oz, 1
  %.narrow27.i.3 = sub i8 %i.oy, %i.pa
  store i8 %.narrow27.i.3, ptr %.020.i151.2, align 1, !tbaa !10, !noalias !324
  %i.pb = add nuw nsw i32 %.032.i, 4              ; 2 uses
  %.020.i151.3 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 4 ; 2 uses
  %.018.i.3 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 4 ; 2 uses
  %.022.i152.3 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 4 ; 2 uses
  %exitcond.not.i153.3 = icmp eq i32 %i.pb, %i.j
  br i1 %exitcond.not.i153.3, label %.preheader.i154, label %.lr.ph.i149, !llvm.loop !297

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.143.i = phi i32 [ %i.pm, %.lr.ph44.i ], [ %.143.i.ph, %.lr.ph44.i.preheader ]
  %.pn42.i = phi ptr [ %.017.i, %.lr.ph44.i ], [ %.pn42.i.ph, %.lr.ph44.i.preheader ]
  %.11941.i = phi ptr [ %i.pe, %.lr.ph44.i ], [ %.11941.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12140.i = phi ptr [ %i.pl, %.lr.ph44.i ], [ %.12140.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12339.i = phi ptr [ %i.pc, %.lr.ph44.i ], [ %.12339.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.pn42.i, i64 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1
  %i.pd = load i8, ptr %.12339.i, align 1, !tbaa !10, !noalias !324
  %i.pe = getelementptr inbounds nuw i8, ptr %.11941.i, i64 1
  %i.pf = load i8, ptr %.11941.i, align 1, !tbaa !10, !noalias !324
  %i.pg = zext i8 %i.pf to i16
  %i.ph = load i8, ptr %.017.i, align 1, !tbaa !10, !noalias !324
  %i.pi = zext i8 %i.ph to i16
  %i.pj = add nuw nsw i16 %i.pi, %i.pg
  %i.pk = lshr i16 %i.pj, 1
  %.tr.i = trunc nuw i16 %i.pk to i8
  %.narrow.i157 = sub i8 %i.pd, %.tr.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.12140.i, i64 1
  store i8 %.narrow.i157, ptr %.12140.i, align 1, !tbaa !10, !noalias !324
  %i.pm = add i32 %.143.i, 1                      ; 2 uses
  %i.pn = zext i32 %i.pm to i64
  %i.po = icmp ugt i64 %i.e, %i.pn
  br i1 %i.po, label %.lr.ph44.i, label %.thread214.thread, !llvm.loop !298

.thread197:                                       ; preds = %bb.o
  %i.pp = and i32 %.0111, 64
  %.not124 = icmp eq i32 %i.pp, 0
  br i1 %.not124, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.thread197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !66, !alias.scope !326 ; 21 uses
  %i.ps = ptrtoaddr ptr %i.pr to i64              ; 2 uses
  store i8 3, ptr %i.pr, align 1, !tbaa !10, !noalias !326
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !68, !alias.scope !326 ; 17 uses
  %i.pv = ptrtoaddr ptr %i.pu to i64
  %.03344.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 1 ; 5 uses
  %.03145.i = getelementptr inbounds nuw i8, ptr %i.pu, i64 1 ; 5 uses
  %.03546.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not.i158 = icmp eq i32 %i.j, 0
  br i1 %.not.i158, label %.preheader.i164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.q
  %i.pw = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check301 = icmp ult i8 %i.g, 41
  br i1 %min.iters.check301, label %.lr.ph.i159.preheader718, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i159.preheader
end_hunk_1
begin_hunk_2_@png_write_find_filter:bb.a

.lr.ph63.i:                                       ; preds = %.preheader.i164, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i164 ]
  %.161.i = phi i64 [ %i.xe, %.lr.ph63.i ], [ %.0.lcssa.i165, %.preheader.i164 ]
  %.12960.i = phi i32 [ %i.xj, %.lr.ph63.i ], [ %i.j, %.preheader.i164 ]
  %.13259.i = phi ptr [ %i.xh, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i164 ] ; 2 uses
  %.13458.i = phi ptr [ %i.xg, %.lr.ph63.i ], [ %.033.lcssa.i166, %.preheader.i164 ] ; 2 uses
  %.13657.i = phi ptr [ %i.xi, %.lr.ph63.i ], [ %.035.lcssa.i167, %.preheader.i164 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.wt = load i8, ptr %.13657.i, align 1, !tbaa !10, !noalias !326
  %i.wu = load i8, ptr %.13259.i, align 1, !tbaa !10, !noalias !326
  %i.wv = zext i8 %i.wu to i16
  %i.ww = load i8, ptr %.03062.i, align 1, !tbaa !10, !noalias !326
  %i.wx = zext i8 %i.ww to i16
  %i.wy = add nuw nsw i16 %i.wx, %i.wv
  %i.wz = lshr i16 %i.wy, 1
  %.tr.i169 = trunc nuw i16 %i.wz to i8
  %.narrow.i170 = sub i8 %i.wt, %.tr.i169         ; 3 uses
  store i8 %.narrow.i170, ptr %.13458.i, align 1, !tbaa !10, !noalias !326
  %i.xa = zext i8 %.narrow.i170 to i64            ; 2 uses
  %i.xb = sub nuw nsw i64 256, %i.xa
  %i.xc = icmp slt i8 %.narrow.i170, 0
  %i.xd = select i1 %i.xc, i64 %i.xb, i64 %i.xa
  %i.xe = add i64 %i.xd, %.161.i                  ; 3 uses
  %i.xf = icmp ule i64 %i.xe, %.4
  %i.xg = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.xh = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.xi = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.xj = add i32 %.12960.i, 1                    ; 2 uses
  %i.xk = zext i32 %i.xj to i64
  %i.xl = icmp ugt i64 %i.e, %i.xk
  %or.cond.i171 = select i1 %i.xf, i1 %i.xl, i1 false
  br i1 %or.cond.i171, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !302

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i164
  %.2.i168 = phi i64 [ %.0.lcssa.i165, %.preheader.i164 ], [ %i.xe, %.lr.ph63.i ] ; 3 uses
  %i.xm = icmp ult i64 %.2.i168, %.4
  br i1 %i.xm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !67 ; 2 uses
  %.not125 = icmp eq ptr %i.xo, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.xo, ptr %i.pq, align 8, !tbaa !66
  store ptr %i.pr, ptr %i.xn, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread197
  %.5109 = phi ptr [ %.3107, %png_setup_avg_row.exit ], [ %.3107, %.thread197 ], [ %i.pr, %bb.s ], [ %i.pr, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %png_setup_avg_row.exit ], [ %.4, %.thread197 ], [ %.2.i168, %bb.s ], [ %.2.i168, %bb.r ] ; 2 uses
  %i.xp = icmp eq i32 %.0111, 128
  br i1 %i.xp, label %bb.u, label %.thread214

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !66, !alias.scope !327 ; 8 uses
  %i.xs = ptrtoaddr ptr %i.xr to i64              ; 2 uses
  store i8 4, ptr %i.xr, align 1, !tbaa !10, !noalias !327
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !68, !alias.scope !327 ; 9 uses
  %i.xv = ptrtoaddr ptr %i.xu to i64              ; 2 uses
  %i.xw = zext nneg i32 %i.j to i64               ; 13 uses
  %.04964.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.xu, i64 1 ; 7 uses
  %.05166.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i174, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check364 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check364, label %.lr.ph.i172.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %iter.check
  %i.xx = sub i64 %i.m, %i.xs
  %diff.check366 = icmp ugt i64 %i.xx, -16
  %i.xy = sub i64 %i.xv, %i.xs
  %diff.check367 = icmp ugt i64 %i.xy, -16
  %conflict.rdx368 = or i1 %diff.check366, %diff.check367
  br i1 %conflict.rdx368, label %.lr.ph.i172.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck365
  %min.iters.check369 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check369, label %vec.epilog.ph, label %vector.ph370

vector.ph370:                                     ; preds = %vector.main.loop.iter.check
  %i.xz = and i64 %i.xw, 12
  %n.vec371 = and i64 %i.xw, 48                   ; 7 uses
  %i.ya = getelementptr i8, ptr %.05166.i, i64 %n.vec371 ; 2 uses
  %i.yb = getelementptr i8, ptr %.04765.i, i64 %n.vec371 ; 2 uses
  %i.yc = getelementptr i8, ptr %.04964.i, i64 %n.vec371 ; 2 uses
  %wide.load377 = load <16 x i8>, ptr %.05166.i, align 1, !tbaa !10, !noalias !327
  %wide.load378 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !10, !noalias !327
  %i.yd = sub <16 x i8> %wide.load377, %wide.load378
  store <16 x i8> %i.yd, ptr %.04964.i, align 1, !tbaa !10, !noalias !327
  %i.ye = icmp eq i64 %n.vec371, 16
  br i1 %i.ye, label %middle.block380, label %vector.body372.1

vector.body372.1:                                 ; preds = %vector.ph370
  %next.gep374.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep375.1 = getelementptr i8, ptr %i.xu, i64 17
  %next.gep376.1 = getelementptr i8, ptr %i.xr, i64 17
  %wide.load377.1 = load <16 x i8>, ptr %next.gep374.1, align 1, !tbaa !10, !noalias !327
  %wide.load378.1 = load <16 x i8>, ptr %next.gep375.1, align 1, !tbaa !10, !noalias !327
  %i.yf = sub <16 x i8> %wide.load377.1, %wide.load378.1
  store <16 x i8> %i.yf, ptr %next.gep376.1, align 1, !tbaa !10, !noalias !327
  br label %middle.block380

middle.block380:                                  ; preds = %vector.body372.1, %vector.ph370
  %cmp.n381 = icmp eq i64 %n.vec371, %i.xw
  br i1 %cmp.n381, label %.preheader.i174, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block380
  %min.epilog.iters.check = icmp eq i64 %i.xz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i172.preheader, label %vec.epilog.ph, !prof !319

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec371, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec382 = and i64 %i.xw, 60                   ; 6 uses
  %i.yg = getelementptr i8, ptr %.05166.i, i64 %n.vec382 ; 2 uses
  %i.yh = getelementptr i8, ptr %.04765.i, i64 %n.vec382 ; 2 uses
  %i.yi = getelementptr i8, ptr %.04964.i, i64 %n.vec382 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index383 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next389, %vec.epilog.vector.body ] ; 4 uses
  %next.gep384 = getelementptr i8, ptr %.05166.i, i64 %index383
  %next.gep385 = getelementptr i8, ptr %.04765.i, i64 %index383
  %next.gep386 = getelementptr i8, ptr %.04964.i, i64 %index383
  %wide.load387 = load <4 x i8>, ptr %next.gep384, align 1, !tbaa !10, !noalias !327
  %wide.load388 = load <4 x i8>, ptr %next.gep385, align 1, !tbaa !10, !noalias !327
  %i.yj = sub <4 x i8> %wide.load387, %wide.load388
  store <4 x i8> %i.yj, ptr %next.gep386, align 1, !tbaa !10, !noalias !327
  %index.next389 = add nuw i64 %index383, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next389, %n.vec382
  br i1 %i.yk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !305

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n390 = icmp eq i64 %n.vec382, %i.xw
  br i1 %cmp.n390, label %.preheader.i174, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %iter.check, %vector.memcheck365, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05170.i.ph = phi ptr [ %.05166.i, %iter.check ], [ %.05166.i, %vector.memcheck365 ], [ %i.ya, %vec.epilog.iter.check ], [ %i.yg, %vec.epilog.middle.block ] ; 2 uses
  %.04769.i.ph = phi ptr [ %.04765.i, %iter.check ], [ %.04765.i, %vector.memcheck365 ], [ %i.yb, %vec.epilog.iter.check ], [ %i.yh, %vec.epilog.middle.block ] ; 2 uses
  %.04968.i.ph = phi ptr [ %.04964.i, %iter.check ], [ %.04964.i, %vector.memcheck365 ], [ %i.yc, %vec.epilog.iter.check ], [ %i.yi, %vec.epilog.middle.block ] ; 2 uses
  %.067.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck365 ], [ %n.vec371, %vec.epilog.iter.check ], [ %n.vec382, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter736 = and i64 %i.xw, 3                 ; 2 uses
  %lcmp.mod737.not = icmp eq i64 %xtraiter736, 0
  br i1 %lcmp.mod737.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol

.lr.ph.i172.prol:                                 ; preds = %.lr.ph.i172.preheader, %.lr.ph.i172.prol
  %.05170.i.prol = phi ptr [ %.051.i.prol, %.lr.ph.i172.prol ], [ %.05170.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04769.i.prol = phi ptr [ %.047.i.prol, %.lr.ph.i172.prol ], [ %.04769.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04968.i.prol = phi ptr [ %.049.i.prol, %.lr.ph.i172.prol ], [ %.04968.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.067.i.prol = phi i64 [ %i.yn, %.lr.ph.i172.prol ], [ %.067.i.ph, %.lr.ph.i172.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i172.prol ], [ 0, %.lr.ph.i172.preheader ]
  %i.yl = load i8, ptr %.05170.i.prol, align 1, !tbaa !10, !noalias !327
  %i.ym = load i8, ptr %.04769.i.prol, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.prol = sub i8 %i.yl, %i.ym
  store i8 %.narrow62.i.prol, ptr %.04968.i.prol, align 1, !tbaa !10, !noalias !327
  %i.yn = add nuw nsw i64 %.067.i.prol, 1         ; 2 uses
  %.049.i.prol = getelementptr inbounds nuw i8, ptr %.04968.i.prol, i64 1 ; 3 uses
  %.047.i.prol = getelementptr inbounds nuw i8, ptr %.04769.i.prol, i64 1 ; 3 uses
  %.051.i.prol = getelementptr inbounds nuw i8, ptr %.05170.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter736
  br i1 %prol.iter.cmp.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol, !llvm.loop !306

.lr.ph.i172.prol.loopexit:                        ; preds = %.lr.ph.i172.prol, %.lr.ph.i172.preheader
  %.049.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.047.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.051.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.05170.i.unr = phi ptr [ %.05170.i.ph, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.04769.i.unr = phi ptr [ %.04769.i.ph, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.04968.i.unr = phi ptr [ %.04968.i.ph, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.067.i.unr = phi i64 [ %.067.i.ph, %.lr.ph.i172.preheader ], [ %i.yn, %.lr.ph.i172.prol ]
  %i.yo = sub nsw i64 %.067.i.ph, %i.xw
  %i.yp = icmp ugt i64 %i.yo, -4
  br i1 %i.yp, label %.preheader.i174, label %.lr.ph.i172

.preheader.i174:                                  ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172, %middle.block380, %vec.epilog.middle.block, %bb.u
  %.0.lcssa.i175 = phi i64 [ 0, %bb.u ], [ %i.xw, %middle.block380 ], [ %i.xw, %vec.epilog.middle.block ], [ %i.xw, %.lr.ph.i172 ], [ %i.xw, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.049.lcssa.i = phi ptr [ %.04964.i, %bb.u ], [ %i.yc, %middle.block380 ], [ %i.yi, %vec.epilog.middle.block ], [ %.049.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.049.i.3, %.lr.ph.i172 ] ; 7 uses
  %.047.lcssa.i = phi ptr [ %.04765.i, %bb.u ], [ %i.yb, %middle.block380 ], [ %i.yh, %vec.epilog.middle.block ], [ %.047.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.047.i.3, %.lr.ph.i172 ] ; 7 uses
  %.051.lcssa.i = phi ptr [ %.05166.i, %bb.u ], [ %i.ya, %middle.block380 ], [ %i.yg, %vec.epilog.middle.block ], [ %.051.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.051.i.3, %.lr.ph.i172 ] ; 7 uses
  %.051.lcssa.i406 = ptrtoaddr ptr %.051.lcssa.i to i64
  %.047.lcssa.i407 = ptrtoaddr ptr %.047.lcssa.i to i64
  %.049.lcssa.i408 = ptrtoaddr ptr %.049.lcssa.i to i64 ; 3 uses
  %i.yq = icmp ult i64 %.0.lcssa.i175, %i.e
  br i1 %i.yq, label %iter.check437, label %.thread214.thread

iter.check437:                                    ; preds = %.preheader.i174
  %i.yr = sub i64 %i.e, %i.xw                     ; 7 uses
  %min.iters.check410 = icmp ult i64 %i.yr, 4
  br i1 %min.iters.check410, label %.lr.ph80.i.preheader, label %vector.memcheck411

vector.memcheck411:                               ; preds = %iter.check437
  %6 = add i64 %.049.lcssa.i408, -1               ; 2 uses
  %7 = sub i64 %i.xv, %6
  %diff.check412 = icmp ugt i64 %7, -16
  %i.ys = sub i64 %.047.lcssa.i407, %.049.lcssa.i408
  %diff.check413 = icmp ugt i64 %i.ys, -16
  %conflict.rdx414 = or i1 %diff.check412, %diff.check413
  %i.yt = sub i64 %.051.lcssa.i406, %.049.lcssa.i408
  %diff.check415 = icmp ugt i64 %i.yt, -16
  %conflict.rdx416 = or i1 %conflict.rdx414, %diff.check415
  %i.yu = sub i64 %i.m, %6
  %diff.check417 = icmp ugt i64 %i.yu, -16
  %conflict.rdx418 = or i1 %conflict.rdx416, %diff.check417
  br i1 %conflict.rdx418, label %.lr.ph80.i.preheader, label %vector.main.loop.iter.check419

vector.main.loop.iter.check419:                   ; preds = %vector.memcheck411
  %min.iters.check420 = icmp ult i64 %i.yr, 16
  br i1 %min.iters.check420, label %vec.epilog.ph441, label %vector.ph421

vector.ph421:                                     ; preds = %vector.main.loop.iter.check419
  %i.yv = and i64 %i.yr, 12
  %n.vec422 = and i64 %i.yr, -16                  ; 9 uses
  %i.yw = add i64 %.0.lcssa.i175, %n.vec422
  %i.yx = getelementptr i8, ptr %i.l, i64 %n.vec422
  %i.yy = getelementptr i8, ptr %i.xu, i64 %n.vec422
  %i.yz = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec422
  %i.za = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec422
  %i.zb = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec422
  br label %vector.body423

vector.body423:                                   ; preds = %vector.ph421, %vector.body423
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next434, %vector.body423 ] ; 6 uses
  %next.gep425 = getelementptr i8, ptr %i.l, i64 %index424
  %next.gep426 = getelementptr i8, ptr %i.xu, i64 %index424
  %next.gep427 = getelementptr i8, ptr %.047.lcssa.i, i64 %index424
  %next.gep428 = getelementptr i8, ptr %.049.lcssa.i, i64 %index424
  %next.gep429 = getelementptr i8, ptr %.051.lcssa.i, i64 %index424
  %i.zc = getelementptr inbounds nuw i8, ptr %next.gep426, i64 1
  %i.zd = getelementptr inbounds nuw i8, ptr %next.gep425, i64 1
  %wide.load430 = load <16 x i8>, ptr %next.gep427, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.ze = zext <16 x i8> %wide.load430 to <16 x i32>
  %wide.load431 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.zf = zext <16 x i8> %wide.load431 to <16 x i32> ; 2 uses
  %wide.load432 = load <16 x i8>, ptr %i.zd, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.zg = zext <16 x i8> %wide.load432 to <16 x i32>
  %i.zh = sub nsw <16 x i32> %i.ze, %i.zf         ; 2 uses
  %i.zi = sub nsw <16 x i32> %i.zg, %i.zf         ; 2 uses
  %i.zj = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zh, i1 true) ; 2 uses
  %i.zk = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zi, i1 true) ; 2 uses
  %i.zl = add nsw <16 x i32> %i.zi, %i.zh
  %i.zm = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zl, i1 true) ; 2 uses
  %i.zn = icmp samesign ugt <16 x i32> %i.zj, %i.zk
  %i.zo = icmp samesign ugt <16 x i32> %i.zj, %i.zm
  %i.zp = select <16 x i1> %i.zn, <16 x i1> splat (i1 true), <16 x i1> %i.zo
  %i.zq = icmp samesign ugt <16 x i32> %i.zk, %i.zm
  %i.zr = select <16 x i1> %i.zq, <16 x i8> %wide.load431, <16 x i8> %wide.load430
  %i.zs = select <16 x i1> %i.zp, <16 x i8> %i.zr, <16 x i8> %wide.load432
  %wide.load433 = load <16 x i8>, ptr %next.gep429, align 1, !tbaa !10, !noalias !327
  %i.zt = sub <16 x i8> %wide.load433, %i.zs
  store <16 x i8> %i.zt, ptr %next.gep428, align 1, !tbaa !10, !noalias !327
  %index.next434 = add nuw i64 %index424, 16      ; 2 uses
  %i.zu = icmp eq i64 %index.next434, %n.vec422
  br i1 %i.zu, label %middle.block435, label %vector.body423, !llvm.loop !307

middle.block435:                                  ; preds = %vector.body423
  %cmp.n436 = icmp eq i64 %i.yr, %n.vec422
  br i1 %cmp.n436, label %.thread214.thread, label %vec.epilog.iter.check438

vec.epilog.iter.check438:                         ; preds = %middle.block435
  %min.epilog.iters.check440 = icmp eq i64 %i.yv, 0
  br i1 %min.epilog.iters.check440, label %.lr.ph80.i.preheader, label %vec.epilog.ph441, !prof !319

vec.epilog.ph441:                                 ; preds = %vector.main.loop.iter.check419, %vec.epilog.iter.check438
  %vec.epilog.resume.val442 = phi i64 [ %n.vec422, %vec.epilog.iter.check438 ], [ 0, %vector.main.loop.iter.check419 ]
  %n.vec443 = and i64 %i.yr, -4                   ; 8 uses
  %i.zv = add i64 %.0.lcssa.i175, %n.vec443
  %i.zw = getelementptr i8, ptr %i.l, i64 %n.vec443
  %i.zx = getelementptr i8, ptr %i.xu, i64 %n.vec443
  %i.zy = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec443
  %i.zz = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec443
  %i.aaa = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec443
  br label %vec.epilog.vector.body444

vec.epilog.vector.body444:                        ; preds = %vec.epilog.vector.body444, %vec.epilog.ph441
  %index445 = phi i64 [ %vec.epilog.resume.val442, %vec.epilog.ph441 ], [ %index.next455, %vec.epilog.vector.body444 ] ; 6 uses
  %next.gep446 = getelementptr i8, ptr %i.l, i64 %index445
  %next.gep447 = getelementptr i8, ptr %i.xu, i64 %index445
  %next.gep448 = getelementptr i8, ptr %.047.lcssa.i, i64 %index445
  %next.gep449 = getelementptr i8, ptr %.049.lcssa.i, i64 %index445
  %next.gep450 = getelementptr i8, ptr %.051.lcssa.i, i64 %index445
  %i.aab = getelementptr inbounds nuw i8, ptr %next.gep447, i64 1
  %i.aac = getelementptr inbounds nuw i8, ptr %next.gep446, i64 1
  %wide.load451 = load <4 x i8>, ptr %next.gep448, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.aad = zext <4 x i8> %wide.load451 to <4 x i32>
  %wide.load452 = load <4 x i8>, ptr %i.aab, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.aae = zext <4 x i8> %wide.load452 to <4 x i32> ; 2 uses
  %wide.load453 = load <4 x i8>, ptr %i.aac, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.aaf = zext <4 x i8> %wide.load453 to <4 x i32>
  %i.aag = sub nsw <4 x i32> %i.aad, %i.aae       ; 2 uses
  %i.aah = sub nsw <4 x i32> %i.aaf, %i.aae       ; 2 uses
  %i.aai = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aag, i1 true) ; 2 uses
  %i.aaj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aah, i1 true) ; 2 uses
  %i.aak = add nsw <4 x i32> %i.aah, %i.aag
  %i.aal = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aak, i1 true) ; 2 uses
  %i.aam = icmp samesign ugt <4 x i32> %i.aai, %i.aaj
  %i.aan = icmp samesign ugt <4 x i32> %i.aai, %i.aal
  %i.aao = select <4 x i1> %i.aam, <4 x i1> splat (i1 true), <4 x i1> %i.aan
  %i.aap = icmp samesign ugt <4 x i32> %i.aaj, %i.aal
  %i.aaq = select <4 x i1> %i.aap, <4 x i8> %wide.load452, <4 x i8> %wide.load451
  %i.aar = select <4 x i1> %i.aao, <4 x i8> %i.aaq, <4 x i8> %wide.load453
  %wide.load454 = load <4 x i8>, ptr %next.gep450, align 1, !tbaa !10, !noalias !327
  %i.aas = sub <4 x i8> %wide.load454, %i.aar
  store <4 x i8> %i.aas, ptr %next.gep449, align 1, !tbaa !10, !noalias !327
  %index.next455 = add nuw i64 %index445, 4       ; 2 uses
  %i.aat = icmp eq i64 %index.next455, %n.vec443
  br i1 %i.aat, label %vec.epilog.middle.block456, label %vec.epilog.vector.body444, !llvm.loop !308

vec.epilog.middle.block456:                       ; preds = %vec.epilog.vector.body444
  %cmp.n457 = icmp eq i64 %i.yr, %n.vec443
  br i1 %cmp.n457, label %.thread214.thread, label %.lr.ph80.i.preheader

.lr.ph80.i.preheader:                             ; preds = %iter.check437, %vector.memcheck411, %vec.epilog.iter.check438, %vec.epilog.middle.block456
  %.179.i.ph = phi i64 [ %.0.lcssa.i175, %iter.check437 ], [ %.0.lcssa.i175, %vector.memcheck411 ], [ %i.yw, %vec.epilog.iter.check438 ], [ %i.zv, %vec.epilog.middle.block456 ]
  %.pn5678.i.ph = phi ptr [ %i.l, %iter.check437 ], [ %i.l, %vector.memcheck411 ], [ %i.yx, %vec.epilog.iter.check438 ], [ %i.zw, %vec.epilog.middle.block456 ]
  %.pn77.i.ph = phi ptr [ %i.xu, %iter.check437 ], [ %i.xu, %vector.memcheck411 ], [ %i.yy, %vec.epilog.iter.check438 ], [ %i.zx, %vec.epilog.middle.block456 ]
  %.14876.i.ph = phi ptr [ %.047.lcssa.i, %iter.check437 ], [ %.047.lcssa.i, %vector.memcheck411 ], [ %i.yz, %vec.epilog.iter.check438 ], [ %i.zy, %vec.epilog.middle.block456 ]
  %.15075.i.ph = phi ptr [ %.049.lcssa.i, %iter.check437 ], [ %.049.lcssa.i, %vector.memcheck411 ], [ %i.za, %vec.epilog.iter.check438 ], [ %i.zz, %vec.epilog.middle.block456 ]
  %.15274.i.ph = phi ptr [ %.051.lcssa.i, %iter.check437 ], [ %.051.lcssa.i, %vector.memcheck411 ], [ %i.zb, %vec.epilog.iter.check438 ], [ %i.aaa, %vec.epilog.middle.block456 ]
  br label %.lr.ph80.i

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172
  %.05170.i = phi ptr [ %.051.i.3, %.lr.ph.i172 ], [ %.05170.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04769.i = phi ptr [ %.047.i.3, %.lr.ph.i172 ], [ %.04769.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04968.i = phi ptr [ %.049.i.3, %.lr.ph.i172 ], [ %.04968.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.067.i = phi i64 [ %i.abc, %.lr.ph.i172 ], [ %.067.i.unr, %.lr.ph.i172.prol.loopexit ]
  %i.aau = load i8, ptr %.05170.i, align 1, !tbaa !10, !noalias !327
  %i.aav = load i8, ptr %.04769.i, align 1, !tbaa !10, !noalias !327
  %.narrow62.i = sub i8 %i.aau, %i.aav
  store i8 %.narrow62.i, ptr %.04968.i, align 1, !tbaa !10, !noalias !327
  %.049.i = getelementptr inbounds nuw i8, ptr %.04968.i, i64 1
  %.047.i = getelementptr inbounds nuw i8, ptr %.04769.i, i64 1
  %.051.i = getelementptr inbounds nuw i8, ptr %.05170.i, i64 1
  %i.aaw = load i8, ptr %.051.i, align 1, !tbaa !10, !noalias !327
  %i.aax = load i8, ptr %.047.i, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.1 = sub i8 %i.aaw, %i.aax
  store i8 %.narrow62.i.1, ptr %.049.i, align 1, !tbaa !10, !noalias !327
  %.049.i.1 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 2
  %.047.i.1 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 2
  %.051.i.1 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 2
  %i.aay = load i8, ptr %.051.i.1, align 1, !tbaa !10, !noalias !327
  %i.aaz = load i8, ptr %.047.i.1, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.2 = sub i8 %i.aay, %i.aaz
  store i8 %.narrow62.i.2, ptr %.049.i.1, align 1, !tbaa !10, !noalias !327
  %.049.i.2 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 3
  %.047.i.2 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 3
  %.051.i.2 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 3
  %i.aba = load i8, ptr %.051.i.2, align 1, !tbaa !10, !noalias !327
  %i.abb = load i8, ptr %.047.i.2, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.3 = sub i8 %i.aba, %i.abb
  store i8 %.narrow62.i.3, ptr %.049.i.2, align 1, !tbaa !10, !noalias !327
  %i.abc = add nuw nsw i64 %.067.i, 4             ; 2 uses
  %.049.i.3 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4 ; 2 uses
  %.047.i.3 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 4 ; 2 uses
  %.051.i.3 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 4 ; 2 uses
  %exitcond.not.i173.3 = icmp eq i64 %i.abc, %i.xw
  br i1 %exitcond.not.i173.3, label %.preheader.i174, label %.lr.ph.i172, !llvm.loop !309

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %.lr.ph80.i
  %.179.i = phi i64 [ %i.abu, %.lr.ph80.i ], [ %.179.i.ph, %.lr.ph80.i.preheader ]
  %.pn5678.i = phi ptr [ %.045.i, %.lr.ph80.i ], [ %.pn5678.i.ph, %.lr.ph80.i.preheader ]
  %.pn77.i = phi ptr [ %.046.i, %.lr.ph80.i ], [ %.pn77.i.ph, %.lr.ph80.i.preheader ]
  %.14876.i = phi ptr [ %i.abd, %.lr.ph80.i ], [ %.14876.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15075.i = phi ptr [ %i.abt, %.lr.ph80.i ], [ %.15075.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15274.i = phi ptr [ %i.abr, %.lr.ph80.i ], [ %.15274.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.046.i = getelementptr inbounds nuw i8, ptr %.pn77.i, i64 1 ; 2 uses
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn5678.i, i64 1 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.14876.i, i64 1
  %i.abe = load i8, ptr %.14876.i, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = load i8, ptr %.046.i, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.abh = zext i8 %i.abg to i32                  ; 2 uses
  %i.abi = load i8, ptr %.045.i, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.abj = zext i8 %i.abi to i32
  %i.abk = sub nsw i32 %i.abf, %i.abh             ; 2 uses
  %i.abl = sub nsw i32 %i.abj, %i.abh             ; 2 uses
  %i.abm = tail call i32 @llvm.abs.i32(i32 %i.abk, i1 true) ; 2 uses
  %i.abn = tail call i32 @llvm.abs.i32(i32 %i.abl, i1 true) ; 2 uses
  %i.abo = add nsw i32 %i.abl, %i.abk
  %i.abp = tail call i32 @llvm.abs.i32(i32 %i.abo, i1 true) ; 2 uses
  %.not.i176 = icmp samesign ugt i32 %i.abm, %i.abn
  %.not57.i = icmp samesign ugt i32 %i.abm, %i.abp
  %or.cond.i177 = select i1 %.not.i176, i1 true, i1 %.not57.i
  %.not58.i = icmp samesign ugt i32 %i.abn, %i.abp
  %i.abq = select i1 %.not58.i, i8 %i.abg, i8 %i.abe
  %.tr.i178 = select i1 %or.cond.i177, i8 %i.abq, i8 %i.abi
  %i.abr = getelementptr inbounds nuw i8, ptr %.15274.i, i64 1
  %i.abs = load i8, ptr %.15274.i, align 1, !tbaa !10, !noalias !327
  %.narrow.i179 = sub i8 %i.abs, %.tr.i178
  %i.abt = getelementptr inbounds nuw i8, ptr %.15075.i, i64 1
  store i8 %.narrow.i179, ptr %.15075.i, align 1, !tbaa !10, !noalias !327
  %i.abu = add nuw i64 %.179.i, 1                 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.abu, %i.e
  br i1 %exitcond85.not.i, label %.thread214.thread, label %.lr.ph80.i, !llvm.loop !310

.thread214:                                       ; preds = %bb.t
  %i.abv = and i32 %.0111, 128
  %.not126 = icmp eq i32 %i.abv, 0
  br i1 %.not126, label %.thread214.thread, label %bb.v

bb.v:                                             ; preds = %.thread214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
end_hunk_2
