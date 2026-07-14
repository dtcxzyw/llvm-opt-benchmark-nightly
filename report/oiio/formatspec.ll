inline.NumInlined: 8159
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef nonnull %i.af) #39
  %.pre.i.i.pre = load i64, ptr %i.c, align 8, !tbaa !685 ; 2 uses
  %.pre681.pre = load ptr, ptr %5, align 8, !tbaa !675
  %.pre1266 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1266, %bb.i ], [ %i.be, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre681 = phi ptr [ %.pre681.pre, %bb.i ], [ %i.bj, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.i ], [ %i.ah, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !685
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %.pre.i.i
  store i32 %.lcssa1475, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.f, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1117
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !685
  %i.bm = lshr i32 %i.x, 5
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !677
  %i.bn = and i32 %i.x, 31                        ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  %i.bp = shl nuw i32 1, %i.bn
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit135

_ZN3fmt3v126detail6bigintlSEi.exit135:            ; preds = %.lr.ph.i124, %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit135
  store i32 1, ptr %i.s, align 8, !tbaa !3
  store i64 1, ptr %i.r, align 8, !tbaa !685
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !677
  %i.bs = and i32 %i.bq, 31                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.j
  %i.bu = shl nuw i32 1, %i.bs
  store i32 %i.bu, ptr %i.s, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit569:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke1440, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.m, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.s, %bb.w, %bb.x, %bb.aa, %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.j, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.087 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.j ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.bv)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !685 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t816 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !675   ; 3 uses
  %i.by = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1604 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check1604, label %scalar.ph1603.preheader, label %vector.ph1605

vector.ph1605:                                    ; preds = %.lr.ph.i157
  %n.vec1607 = and i64 %i.bw, -8                  ; 3 uses
  %broadcast.splatinsert1608 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat1609 = shufflevector <4 x i32> %broadcast.splatinsert1608, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1610 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1611 = shufflevector <4 x i32> %broadcast.splatinsert1610, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1612

vector.body1612:                                  ; preds = %vector.body1612, %vector.ph1605
  %index1613 = phi i64 [ 0, %vector.ph1605 ], [ %index.next1617, %vector.body1612 ] ; 2 uses
  %vector.recur1614 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1605 ], [ %i.cc, %vector.body1612 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1613 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load1615 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !3 ; 2 uses
  %wide.load1616 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  %i.cb = lshr <4 x i32> %wide.load1615, %broadcast.splat1609 ; 2 uses
  %i.cc = lshr <4 x i32> %wide.load1616, %broadcast.splat1609 ; 3 uses
  %i.cd = shufflevector <4 x i32> %vector.recur1614, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ce = shufflevector <4 x i32> %i.cb, <4 x i32> %i.cc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl <4 x i32> %wide.load1615, %broadcast.splat1611
  %i.cg = shl <4 x i32> %wide.load1616, %broadcast.splat1611
  %i.ch = add <4 x i32> %i.cf, %i.cd
  %i.ci = add <4 x i32> %i.cg, %i.ce
  store <4 x i32> %i.ch, ptr %i.bz, align 4, !tbaa !3
  store <4 x i32> %i.ci, ptr %i.ca, align 4, !tbaa !3
  %index.next1617 = add nuw i64 %index1613, 8     ; 2 uses
  %i.cj = icmp eq i64 %index.next1617, %n.vec1607
  br i1 %i.cj, label %middle.block1618, label %vector.body1612, !llvm.loop !688

middle.block1618:                                 ; preds = %vector.body1612
  %vector.recur.extract1619 = extractelement <4 x i32> %i.cc, i64 3 ; 2 uses
  %cmp.n1620 = icmp eq i64 %i.bw, %n.vec1607
  br i1 %cmp.n1620, label %._crit_edge.i161, label %scalar.ph1603.preheader

scalar.ph1603.preheader:                          ; preds = %.lr.ph.i157, %middle.block1618
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1607, %middle.block1618 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1619, %middle.block1618 ]
  br label %scalar.ph1603

._crit_edge.i161:                                 ; preds = %scalar.ph1603, %middle.block1618
  %.lcssa1474 = phi i32 [ %vector.recur.extract1619, %middle.block1618 ], [ %i.cm, %scalar.ph1603 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1474, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.l

scalar.ph1603:                                    ; preds = %scalar.ph1603.preheader, %scalar.ph1603
  %.01418.i158 = phi i64 [ %i.cp, %scalar.ph1603 ], [ %.01418.i158.ph, %scalar.ph1603.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.cm, %scalar.ph1603 ], [ %.017.i159.ph, %scalar.ph1603.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.01418.i158 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.by                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.v
  %i.co = add i32 %i.cn, %.017.i159
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !3
  %i.cp = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cp, %i.bw
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1603, !llvm.loop !689

bb.l:                                             ; preds = %._crit_edge.i161
  %i.cq = add i64 %i.bw, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !676
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !673
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.cq)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !690

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !685 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre684 = load ptr, ptr %6, align 8, !tbaa !675
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.cu = phi ptr [ %i.bx, %bb.l ], [ %.pre684, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cv = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !685
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.lcssa1474, ptr %i.cw, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.n:                                             ; preds = %bb.a
  %i.cx = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 0, %i.cx
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.cz)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.c, align 8, !tbaa !685 ; 7 uses
  %i.db = load i64, ptr %i.k, align 8, !tbaa !676
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !673
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.da)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !691

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !676
  %i.de = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %.pre.i.i.i)
  store i64 %i.de, ptr %i.m, align 8, !tbaa !685
  %i.df = load ptr, ptr %5, align 8, !tbaa !675   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.da, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.da, ptr %i.m, align 8, !tbaa !685
  %i.dh = load ptr, ptr %5, align 8, !tbaa !675   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.da, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.da, 0
  br i1 %.not6.i.i, label %.loopexit570, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dj = phi ptr [ %i.dg, %.noexc170 ], [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.df, %.noexc170 ], [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 7 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !675      ; 4 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %10 = ptrtoint ptr %i.dk to i64
  %11 = sub i64 %i.dl, %10
  %12 = add i64 %11, -4                           ; 2 uses
  %i.dm = lshr i64 %12, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check1515 = icmp ult i64 %12, 44
  %i.do = ptrtoaddr ptr %9 to i64
  %i.dp = ptrtoaddr ptr %i.dk to i64
  %i.dq = sub i64 %i.dp, %i.do
  %diff.check = icmp ugt i64 %i.dq, -32
  %or.cond1626 = select i1 %min.iters.check1515, i1 true, i1 %diff.check
  br i1 %or.cond1626, label %.lr.ph.i.i.preheader, label %vector.ph1516

vector.ph1516:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1518 = and i64 %i.dn, 9223372036854775800 ; 3 uses
  %i.dr = shl i64 %n.vec1518, 2                   ; 2 uses
  %i.ds = getelementptr i8, ptr %9, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.dk, i64 %i.dr
  br label %vector.body1519

vector.body1519:                                  ; preds = %vector.body1519, %vector.ph1516
  %index1520 = phi i64 [ 0, %vector.ph1516 ], [ %index.next1524, %vector.body1519 ] ; 2 uses
  %i.du = shl i64 %index1520, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %9, i64 %i.du ; 2 uses
  %next.gep1521 = getelementptr i8, ptr %i.dk, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep1521, i64 16
  %wide.load1522 = load <4 x i32>, ptr %next.gep1521, align 4, !tbaa !3
  %wide.load1523 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !3
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1522, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load1523, ptr %i.dw, align 4, !tbaa !3
  %index.next1524 = add nuw i64 %index1520, 8     ; 2 uses
  %i.dx = icmp eq i64 %index.next1524, %n.vec1518
  br i1 %i.dx, label %middle.block1525, label %vector.body1519, !llvm.loop !692

middle.block1525:                                 ; preds = %vector.body1519
  %cmp.n1526 = icmp eq i64 %i.dn, %n.vec1518
  br i1 %cmp.n1526, label %.loopexit570, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1525
  %.08.i.i.ph = phi ptr [ %9, %.lr.ph.i.preheader.i ], [ %i.ds, %middle.block1525 ]
  %.057.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.preheader.i ], [ %i.dt, %middle.block1525 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.dz = load i32, ptr %.057.i.i, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.dz, ptr %.08.i.i, align 4, !tbaa !3
  %.not.i.i169 = icmp eq ptr %i.dy, %i.dj
  br i1 %.not.i.i169, label %.loopexit570, label %.lr.ph.i.i, !llvm.loop !693

.loopexit570:                                     ; preds = %.lr.ph.i.i, %middle.block1525, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.eb = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dk, %middle.block1525 ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !677 ; 2 uses
  store i32 %i.ec, ptr %i.o, align 8, !tbaa !677
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit570
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !685 ; 8 uses
  %i.ee = load i64, ptr %i.p, align 8, !tbaa !676 ; 2 uses
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !673
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.ed)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !691

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !676 ; 2 uses
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !685
  %i.ei = load ptr, ptr %5, align 8, !tbaa !675   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.ed, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.ed, ptr %i.r, align 8, !tbaa !685
  %.idx.i172 = shl nuw nsw i64 %i.ed, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.ed, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.ec, ptr %i.t, align 8, !tbaa !677
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.el = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ee, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.eh, %.noexc182 ], [ %i.ed, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.em = phi ptr [ %i.ej, %.noexc182 ], [ %i.ek, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.en = phi ptr [ %i.ei, %.noexc182 ], [ %i.eb, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 5 uses
  %13 = load ptr, ptr %8, align 8, !tbaa !675     ; 7 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %14 = ptrtoint ptr %i.en to i64
  %15 = sub i64 %i.eo, %14
  %16 = add i64 %15, -4                           ; 2 uses
  %i.ep = lshr i64 %16, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check1532 = icmp ult i64 %16, 44
  %i.er = ptrtoaddr ptr %13 to i64
  %i.es = ptrtoaddr ptr %i.en to i64
  %i.et = sub i64 %i.es, %i.er
  %diff.check1530 = icmp ugt i64 %i.et, -32
  %or.cond1629 = select i1 %min.iters.check1532, i1 true, i1 %diff.check1530
  br i1 %or.cond1629, label %.lr.ph.i.i175.preheader, label %vector.ph1533

vector.ph1533:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1535 = and i64 %i.eq, 9223372036854775800 ; 3 uses
  %i.eu = shl i64 %n.vec1535, 2                   ; 2 uses
  %i.ev = getelementptr i8, ptr %13, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.eu
  br label %vector.body1536

vector.body1536:                                  ; preds = %vector.body1536, %vector.ph1533
  %index1537 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1542, %vector.body1536 ] ; 2 uses
  %i.ex = shl i64 %index1537, 2                   ; 2 uses
  %next.gep1538 = getelementptr i8, ptr %13, i64 %i.ex ; 2 uses
  %next.gep1539 = getelementptr i8, ptr %i.en, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep1539, i64 16
  %wide.load1540 = load <4 x i32>, ptr %next.gep1539, align 4, !tbaa !3
  %wide.load1541 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !3
  %i.ez = getelementptr i8, ptr %next.gep1538, i64 16
  store <4 x i32> %wide.load1540, ptr %next.gep1538, align 4, !tbaa !3
  store <4 x i32> %wide.load1541, ptr %i.ez, align 4, !tbaa !3
  %index.next1542 = add nuw i64 %index1537, 8     ; 2 uses
  %i.fa = icmp eq i64 %index.next1542, %n.vec1535
  br i1 %i.fa, label %middle.block1543, label %vector.body1536, !llvm.loop !694

middle.block1543:                                 ; preds = %vector.body1536
  %cmp.n1544 = icmp eq i64 %i.eq, %n.vec1535
  br i1 %cmp.n1544, label %.loopexit1623, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1543
  %.08.i.i176.ph = phi ptr [ %13, %.lr.ph.i.preheader.i174 ], [ %i.ev, %middle.block1543 ]
  %.057.i.i177.ph = phi ptr [ %i.en, %.lr.ph.i.preheader.i174 ], [ %i.ew, %middle.block1543 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.fd, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.fb, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.fc = load i32, ptr %.057.i.i177, align 4, !tbaa !3
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.fc, ptr %.08.i.i176, align 4, !tbaa !3
  %.not.i.i178 = icmp eq ptr %i.fb, %i.em
  br i1 %.not.i.i178, label %.loopexit1623, label %.lr.ph.i.i175, !llvm.loop !695

.loopexit1623:                                    ; preds = %.lr.ph.i.i175, %middle.block1543
  %i.fe = load i32, ptr %i.e, align 8, !tbaa !677
  store i32 %i.fe, ptr %i.t, align 8, !tbaa !677
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1623
  %min.iters.check1548 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1548, label %.lr.ph.i185.preheader1673, label %vector.ph1549

vector.ph1549:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1551 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1552

vector.body1552:                                  ; preds = %vector.body1552, %vector.ph1549
  %index1553 = phi i64 [ 0, %vector.ph1549 ], [ %index.next1557, %vector.body1552 ] ; 2 uses
  %vector.recur1554 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1549 ], [ %i.fi, %vector.body1552 ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %index1553 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load1555 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !3 ; 2 uses
  %wide.load1556 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !3 ; 3 uses
  %i.fh = lshr <4 x i32> %wide.load1555, splat (i32 31) ; 2 uses
  %i.fi = lshr <4 x i32> %wide.load1556, splat (i32 31) ; 3 uses
  %i.fj = shufflevector <4 x i32> %vector.recur1554, <4 x i32> %i.fh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fk = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fi, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fl = shl <4 x i32> %wide.load1555, splat (i32 1)
  %i.fm = shl <4 x i32> %wide.load1556, splat (i32 1)
  %i.fn = or disjoint <4 x i32> %i.fl, %i.fj
  %i.fo = or disjoint <4 x i32> %i.fm, %i.fk
  store <4 x i32> %i.fn, ptr %i.ff, align 4, !tbaa !3
  store <4 x i32> %i.fo, ptr %i.fg, align 4, !tbaa !3
  %index.next1557 = add nuw i64 %index1553, 8     ; 2 uses
  %i.fp = icmp eq i64 %index.next1557, %n.vec1551
  br i1 %i.fp, label %middle.block1558, label %vector.body1552, !llvm.loop !696

middle.block1558:                                 ; preds = %vector.body1552
  %vector.recur.extract1559 = extractelement <4 x i32> %i.fi, i64 3 ; 2 uses
  %i.fq = extractelement <4 x i32> %wide.load1556, i64 3
  %cmp.n1560 = icmp eq i64 %.pr, %n.vec1551
  br i1 %cmp.n1560, label %._crit_edge.i189, label %.lr.ph.i185.preheader1673

.lr.ph.i185.preheader1673:                        ; preds = %.lr.ph.i185.preheader, %middle.block1558
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1551, %middle.block1558 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1559, %middle.block1558 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1558
  %.lcssa1481 = phi i32 [ %i.fq, %middle.block1558 ], [ %i.fs, %.lr.ph.i185 ]
  %.lcssa1480 = phi i32 [ %vector.recur.extract1559, %middle.block1558 ], [ %i.ft, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1481, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.r

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1673, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.fw, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1673 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.ft, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1673 ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.01418.i186 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3  ; 3 uses
  %i.ft = lshr i32 %i.fs, 31                      ; 2 uses
  %i.fu = shl i32 %i.fs, 1
  %i.fv = or disjoint i32 %i.fu, %.017.i187
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !3
  %i.fw = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.fw, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !697

bb.r:                                             ; preds = %._crit_edge.i189
  %i.fx = add i64 %.pr, 1                         ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, %i.el
  br i1 %i.fy, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %i.q, align 8, !tbaa !673
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fx)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !690

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !685 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre678 = load ptr, ptr %8, align 8, !tbaa !675
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.ga = phi ptr [ %13, %bb.r ], [ %.pre678, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.fx, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gb = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !685
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gb
  store i32 %.lcssa1480, ptr %i.gc, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1623, %.thread, %.loopexit570
  %.188 = phi ptr [ null, %.loopexit570 ], [ %8, %.thread ], [ %8, %.loopexit1623 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gd = load i128, ptr %0, align 16, !tbaa !683 ; 3 uses
  %i.ge = and i128 %i.gd, 18446744073709551615
  %i.gf = load i64, ptr %i.c, align 8, !tbaa !685 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.gg = load ptr, ptr %5, align 8, !tbaa !675   ; 3 uses
  %i.gh = lshr i128 %i.gd, 32
  %i.gi = and i128 %i.gh, 79228162514264337589248983040
  br label %bb.t

.preheader.i.i:                                   ; preds = %bb.t
  %.not20.i.i = icmp eq i128 %i.gt, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i197
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.gt, %bb.t ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.gv, %bb.t ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.01718.i.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i128                  ; 2 uses
  %i.gm = mul nuw nsw i128 %i.ge, %i.gl
  %i.gn = and i128 %.019.i.i, 4294967295
  %i.go = add nuw nsw i128 %i.gm, %i.gn           ; 2 uses
  %i.gp = mul nuw i128 %i.gi, %i.gl
  %i.gq = lshr i128 %i.go, 32
  %i.gr = lshr i128 %.019.i.i, 32
  %i.gs = add nuw i128 %i.gp, %i.gr
  %i.gt = add nuw i128 %i.gs, %i.gq               ; 3 uses
  %i.gu = trunc i128 %i.go to i32
  store i32 %i.gu, ptr %i.gj, align 4, !tbaa !3
  %i.gv = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gv, %i.gf
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !698

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.gw = phi ptr [ %i.hd, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gg, %.preheader.i.i ]
  %i.gx = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gf, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.hg, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gt, %.preheader.i.i ] ; 2 uses
  %i.gy = trunc i128 %.121.i.i to i32
  %i.gz = add i64 %i.gx, 1                        ; 3 uses
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !676
  %i.hb = icmp ugt i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !673
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.gz)
          to label %.noexc200 unwind label %.loopexit569, !inline_history !699

.noexc200:                                        ; preds = %bb.u
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !685 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !675
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.hd = phi ptr [ %i.gw, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.gz, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.he = phi i64 [ %i.gx, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !685
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.he
  store i32 %i.gy, ptr %i.hf, align 4, !tbaa !3
  %i.hg = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i198 = icmp eq i128 %i.hg, 0
  br i1 %.not.i.i198, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !700

_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %.not19.i201 = icmp eq i64 %.pre-phi.i.i.i, 0
  br i1 %.not19.i201, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.hh = phi ptr [ %i.hd, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gg, %.preheader.i.i ] ; 3 uses
  %i.hi = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gf, %.preheader.i.i ] ; 6 uses
  %i.hj = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1564 = icmp ult i64 %i.hi, 8
  br i1 %min.iters.check1564, label %scalar.ph1563.preheader, label %vector.ph1565

vector.ph1565:                                    ; preds = %.lr.ph.i202
  %n.vec1567 = and i64 %i.hi, -8                  ; 3 uses
  %broadcast.splatinsert1568 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat1569 = shufflevector <4 x i32> %broadcast.splatinsert1568, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1570 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1571 = shufflevector <4 x i32> %broadcast.splatinsert1570, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1572

vector.body1572:                                  ; preds = %vector.body1572, %vector.ph1565
  %index1573 = phi i64 [ 0, %vector.ph1565 ], [ %index.next1577, %vector.body1572 ] ; 2 uses
  %vector.recur1574 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1565 ], [ %i.hn, %vector.body1572 ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index1573 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load1575 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !3 ; 2 uses
  %wide.load1576 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !3 ; 2 uses
  %i.hm = lshr <4 x i32> %wide.load1575, %broadcast.splat1569 ; 2 uses
  %i.hn = lshr <4 x i32> %wide.load1576, %broadcast.splat1569 ; 3 uses
  %i.ho = shufflevector <4 x i32> %vector.recur1574, <4 x i32> %i.hm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hp = shufflevector <4 x i32> %i.hm, <4 x i32> %i.hn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hq = shl <4 x i32> %wide.load1575, %broadcast.splat1571
  %i.hr = shl <4 x i32> %wide.load1576, %broadcast.splat1571
  %i.hs = add <4 x i32> %i.hq, %i.ho
  %i.ht = add <4 x i32> %i.hr, %i.hp
  store <4 x i32> %i.hs, ptr %i.hk, align 4, !tbaa !3
  store <4 x i32> %i.ht, ptr %i.hl, align 4, !tbaa !3
  %index.next1577 = add nuw i64 %index1573, 8     ; 2 uses
  %i.hu = icmp eq i64 %index.next1577, %n.vec1567
  br i1 %i.hu, label %middle.block1578, label %vector.body1572, !llvm.loop !701

middle.block1578:                                 ; preds = %vector.body1572
  %vector.recur.extract1579 = extractelement <4 x i32> %i.hn, i64 3 ; 2 uses
  %cmp.n1580 = icmp eq i64 %i.hi, %n.vec1567
  br i1 %cmp.n1580, label %._crit_edge.i206, label %scalar.ph1563.preheader

scalar.ph1563.preheader:                          ; preds = %.lr.ph.i202, %middle.block1578
  %.01418.i203.ph = phi i64 [ 0, %.lr.ph.i202 ], [ %n.vec1567, %middle.block1578 ]
  %.017.i204.ph = phi i32 [ 0, %.lr.ph.i202 ], [ %vector.recur.extract1579, %middle.block1578 ]
  br label %scalar.ph1563

._crit_edge.i206:                                 ; preds = %scalar.ph1563, %middle.block1578
  %.lcssa1477 = phi i32 [ %vector.recur.extract1579, %middle.block1578 ], [ %i.hx, %scalar.ph1563 ] ; 2 uses
  %.not.i207 = icmp eq i32 %.lcssa1477, 0
  br i1 %.not.i207, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %bb.v

scalar.ph1563:                                    ; preds = %scalar.ph1563.preheader, %scalar.ph1563
  %.01418.i203 = phi i64 [ %i.ia, %scalar.ph1563 ], [ %.01418.i203.ph, %scalar.ph1563.preheader ] ; 2 uses
  %.017.i204 = phi i32 [ %i.hx, %scalar.ph1563 ], [ %.017.i204.ph, %scalar.ph1563.preheader ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.01418.i203 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3  ; 2 uses
  %i.hx = lshr i32 %i.hw, %i.hj                   ; 2 uses
  %i.hy = shl i32 %i.hw, %i.v
  %i.hz = add i32 %i.hy, %.017.i204
  store i32 %i.hz, ptr %i.hv, align 4, !tbaa !3
  %i.ia = add nuw i64 %.01418.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.ia, %i.hi
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1563, !llvm.loop !702

bb.v:                                             ; preds = %._crit_edge.i206
  %i.ib = add i64 %i.hi, 1                        ; 3 uses
  %i.ic = load i64, ptr %i.a, align 8, !tbaa !676
  %i.id = icmp ugt i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.w, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.w:                                             ; preds = %bb.v
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !673
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ib)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !690

.noexc212:                                        ; preds = %bb.w
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !685 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre679 = load ptr, ptr %5, align 8, !tbaa !675
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.v
  %i.if = phi ptr [ %i.hh, %bb.v ], [ %.pre679, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.ib, %bb.v ], [ %.pre2.i.i211, %.noexc212 ]
  %i.ig = phi i64 [ %i.hi, %bb.v ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !685
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ig
  store i32 %.lcssa1477, ptr %i.ih, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.ii = load ptr, ptr %6, align 8, !tbaa !675
  store i32 1, ptr %i.ii, align 4, !tbaa !3
  %i.ij = load i64, ptr %i.f, align 8, !tbaa !676 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.ij, 0
  br i1 %.not8.i.i217.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !673
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !703

.noexc219:                                        ; preds = %bb.x
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !676 ; 2 uses
  %i.il = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.im = zext i1 %i.il to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.in = phi i64 [ %i.ij, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.io = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.im, %.noexc219 ] ; 2 uses
  store i64 %i.io, ptr %i.h, align 8, !tbaa !685
  %i.ip = load i32, ptr %i.w, align 16, !tbaa !681
  %i.iq = sub nsw i32 %i.v, %i.ip                 ; 2 uses
  %i.ir = sdiv i32 %i.iq, 32
  store i32 %i.ir, ptr %i.j, align 8, !tbaa !677
  %i.is = srem i32 %i.iq, 32                      ; 3 uses
  %i.it = icmp eq i32 %i.is, 0
  %.not19.i221 = icmp eq i64 %i.io, 0
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_14pugi4impl19node_output_commentERNS2_19xml_buffered_writerEPKc:bb.a
  %i.cv = icmp ugt i64 %i.cu, 2046
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cu)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i22 = phi i64 [ 0, %bb.r ], [ %i.cu, %bb.q ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i22 ; 2 uses
  store i8 45, ptr %i.cw, align 1, !tbaa !62
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  store i8 32, ptr %i.cx, align 1, !tbaa !62
  %i.cy = add nuw nsw i64 %.0.i22, 2
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !320
  %i.cz = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.cz, align 1, !tbaa !62  ; 2 uses
  %.not = icmp eq i8 %.pre, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !1046

._crit_edge.loopexit:                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit, %bb.s
  %.pre30 = load i64, ptr %i.b, align 8, !tbaa !320
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit
  %i.da = phi i64 [ %.pre30, %._crit_edge.loopexit ], [ %i.f, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit ] ; 3 uses
  %i.db = icmp ugt i64 %i.da, 2045
  br i1 %i.db, label %bb.t, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccc.exit

bb.t:                                             ; preds = %._crit_edge
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.da)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccc.exit: ; preds = %._crit_edge, %bb.t
  %.0.i23 = phi i64 [ 0, %bb.t ], [ %i.da, %._crit_edge ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i23 ; 3 uses
  store i8 45, ptr %i.dc, align 1, !tbaa !62
  %i.dd = getelementptr i8, ptr %i.dc, i64 1
  store i8 45, ptr %i.dd, align 1, !tbaa !62
  %i.de = getelementptr i8, ptr %i.dc, i64 2
  store i8 62, ptr %i.de, align 1, !tbaa !62
  %i.df = add nuw nsw i64 %.0.i23, 3
  store i64 %i.df, ptr %i.b, align 8, !tbaa !320
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !320  ; 3 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !62      ; 2 uses
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ult i64 %i.b, 2048                  ; 2 uses
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi i8 [ %i.k, %.lr.ph ], [ %i.c, %bb.a ]
  %.022 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.a ]
  %.01721 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 3 uses
  %i.i = add nuw nsw i64 %.01721, 1               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.01721
  store i8 %i.g, ptr %i.j, align 1, !tbaa !62
  %i.k = load i8, ptr %i.h, align 1, !tbaa !62    ; 2 uses
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp samesign ult i64 %.01721, 2047      ; 2 uses
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !1005

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.i, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 6 uses
  %.lcssa20 = phi i1 [ %i.e, %bb.a ], [ %i.m, %.lr.ph ]
  br i1 %.lcssa20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store i64 %.017.lcssa, ptr %i.a, align 8, !tbaa !320
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_directEPKcm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = load i64, ptr %i.a, align 8, !tbaa !320
  %i.p = sub i64 %.017.lcssa, %i.o                ; 7 uses
  %i.q = icmp ult i64 %i.p, 5
  br i1 %i.q, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.c
  %i.r = add i64 %i.p, -1
  %i.s = getelementptr inbounds i8, ptr %.0.lcssa, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !62
  %.not.i = icmp slt i8 %i.t, -64
  br i1 %.not.i, label %.preheader.1.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.u = add i64 %i.p, -2
  %i.v = getelementptr inbounds i8, ptr %.0.lcssa, i64 -2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !62
  %.not.1.i = icmp slt i8 %i.w, -64
  br i1 %.not.1.i, label %.preheader.2.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.x = add i64 %i.p, -3
  %i.y = getelementptr inbounds i8, ptr %.0.lcssa, i64 -3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !62
  %.not.2.i = icmp slt i8 %i.z, -64
  br i1 %.not.2.i, label %.preheader.3.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.aa = add i64 %i.p, -4
  %i.ab = getelementptr inbounds i8, ptr %.0.lcssa, i64 -4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %.not.3.i = icmp slt i8 %i.ac, -64
  %spec.select.i = select i1 %.not.3.i, i64 %i.p, i64 %i.aa
  br label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit

_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit: ; preds = %bb.c, %.preheader.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i
  %.3.i = phi i64 [ 0, %bb.c ], [ %i.r, %.preheader.preheader.i ], [ %i.x, %.preheader.2.i ], [ %i.u, %.preheader.1.i ], [ %spec.select.i, %.preheader.3.i ]
  %i.ad = sub i64 %i.p, %.3.i                     ; 3 uses
  %i.ae = sub i64 %.017.lcssa, %i.ad              ; 2 uses
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !320
  %i.af = sub i64 0, %i.ad
  %i.ag = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.af ; 3 uses
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa) #43
  %i.ai = add i64 %i.ah, %i.ad                    ; 4 uses
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ae)
  store i64 0, ptr %i.a, align 8, !tbaa !320
  %i.aj = icmp ugt i64 %i.ai, 2048
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !323
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !123
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.ag, i64 noundef %i.ai), !inline_history !1047
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_directEPKcm.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i
  %.019.i = phi ptr [ %i.ba, %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i ], [ %i.ag, %bb.d ] ; 6 uses
  %.01418.i = phi i64 [ %i.bb, %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i ], [ %i.ai, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %.019.i, i64 2047
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %.not.i.i = icmp slt i8 %i.at, -64
  br i1 %.not.i.i, label %.preheader.1.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i

.preheader.1.i.i:                                 ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.019.i, i64 2046
  %i.av = load i8, ptr %i.au, align 1, !tbaa !62
  %.not.1.i.i = icmp slt i8 %i.av, -64
  br i1 %.not.1.i.i, label %.preheader.2.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.019.i, i64 2045
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %.not.2.i.i = icmp slt i8 %i.ax, -64
  br i1 %.not.2.i.i, label %.preheader.3.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.019.i, i64 2044
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !62
  %.not.3.i.i = icmp slt i8 %i.az, -64
  %spec.select.i.i = select i1 %.not.3.i.i, i64 2048, i64 2044
  br label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i

_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i: ; preds = %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.lr.ph.i
  %.3.i.i = phi i64 [ %spec.select.i.i, %.preheader.3.i.i ], [ 2047, %.lr.ph.i ], [ 2045, %.preheader.2.i.i ], [ 2046, %.preheader.1.i.i ] ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i, i64 noundef %.3.i.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %.019.i, i64 %.3.i.i ; 2 uses
  %i.bb = sub nuw i64 %.01418.i, %.3.i.i          ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 2048
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1019

._crit_edge.i:                                    ; preds = %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i
  store i64 0, ptr %i.a, align 8, !tbaa !320
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit
  %.115.i = phi i64 [ %i.bb, %._crit_edge.i ], [ %i.ai, %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit ] ; 2 uses
  %.1.i = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.ag, %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr nonnull align 1 %.1.i, i64 %.115.i, i1 false)
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !320
  %i.be = add i64 %i.bd, %.115.i
  store i64 %i.be, ptr %i.a, align 8, !tbaa !320
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_directEPKcm.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_directEPKcm.exit: ; preds = %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl20node_output_pi_valueERNS2_19xml_buffered_writerEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = ptrtoint ptr %0 to i64                     ; 2 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !62      ; 2 uses
  %.not21 = icmp eq i8 %i.a, 0
  br i1 %.not21, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 15 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 3 uses
  %invariant.op = sub i64 -2052, %2
  %invariant.op69 = sub i64 -2050, %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.r
  %i.g = phi i8 [ %i.a, %.preheader.lr.ph ], [ %.pre, %bb.r ]
  %.022 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.cv, %bb.r ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge17
  %i.h = phi i8 [ %.pr, %.critedge17 ], [ %i.g, %.preheader ]
  %.1 = phi ptr [ %i.k, %.critedge17 ], [ %.022, %.preheader ] ; 6 uses
  switch i8 %i.h, label %..critedge17_crit_edge [
    i8 0, label %.critedge
    i8 63, label %bb.c
  ]

..critedge17_crit_edge:                           ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %.pr.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !62
  br label %.critedge17

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62    ; 2 uses
  %.not19 = icmp eq i8 %i.j, 62
  br i1 %.not19, label %.critedge, label %.critedge17

.critedge17:                                      ; preds = %..critedge17_crit_edge, %bb.c
  %.pr = phi i8 [ %.pr.pre, %..critedge17_crit_edge ], [ %i.j, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.b, !llvm.loop !1048

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.l = ptrtoint ptr %.1 to i64
  %i.m = ptrtoint ptr %.022 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !320  ; 3 uses
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = icmp ult i64 %i.p, 2049
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %.022, i64 %i.n, i1 false)
  store i64 %i.p, ptr %i.b, align 8, !tbaa !320
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.o)
  store i64 0, ptr %i.b, align 8, !tbaa !320
  %i.s = icmp ugt i64 %i.n, 2048
  br i1 %i.s, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.c, align 8, !tbaa !323
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %.022, i64 noundef %i.n), !inline_history !1031
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit
  %.019.i.i = phi ptr [ %i.cj, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit ], [ %.022, %bb.f ] ; 9 uses
  %.01418.i.i = phi i64 [ %i.ck, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit ], [ %i.n, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2047
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !62
  %.not.i.i.i = icmp slt i8 %i.aa, -64
  br i1 %.not.i.i.i, label %.preheader.1.i.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

.preheader.1.i.i.i:                               ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2046
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %.not.1.i.i.i = icmp slt i8 %i.ac, -64
  br i1 %.not.1.i.i.i, label %.preheader.2.i.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2045
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !62
  %.not.2.i.i.i = icmp slt i8 %i.ae, -64
  br i1 %.not.2.i.i.i, label %.preheader.3.i.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2044
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !62
  %.not.3.i.i.i = icmp slt i8 %i.ag, -64
  %spec.select.i.i.i = select i1 %.not.3.i.i.i, i64 2048, i64 2044
  br label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i: ; preds = %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.lr.ph.i.i
  %.3.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.3.i.i.i ], [ 2047, %.lr.ph.i.i ], [ 2045, %.preheader.2.i.i.i ], [ 2046, %.preheader.1.i.i.i ] ; 6 uses
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !323 ; 6 uses
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !123
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i), !inline_history !997
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i
  %i.an = and i32 %i.ah, -2
  %or.cond.i.i = icmp eq i32 %i.an, 2
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ne i32 %i.ah, 2
  %i.ap = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf16_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i, ptr noundef nonnull %i.d) ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.d, %i.ap
  %or.cond.not.i.i.i = and i1 %i.ao, %.not11.i.i.i
  br i1 %or.cond.not.i.i.i, label %iter.check, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i

iter.check:                                       ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.ap to i64
  %.reass70 = add i64 %i.aq, %invariant.op69      ; 3 uses
  %i.ar = lshr i64 %.reass70, 1
  %i.as = add nuw i64 %i.ar, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %.reass70, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %.reass70, 30
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.as, 8
  %n.vec = and i64 %i.as, -16                     ; 4 uses
  %i.at = shl i64 %n.vec, 1
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 8, !tbaa !998
  %wide.load44 = load <8 x i16>, ptr %i.aw, align 8, !tbaa !998
  %i.ax = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.ay = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load44)
  store <8 x i16> %i.ax, ptr %next.gep, align 8, !tbaa !998
  store <8 x i16> %i.ay, ptr %i.aw, align 8, !tbaa !998
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1049

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1000

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.as, -8                    ; 3 uses
  %i.ba = shl i64 %n.vec46, 1
  %i.bb = getelementptr i8, ptr %i.d, i64 %i.ba
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = shl i64 %index47, 1
  %next.gep48 = getelementptr i8, ptr %i.d, i64 %i.bc ; 2 uses
  %wide.load49 = load <8 x i16>, ptr %next.gep48, align 8, !tbaa !998
  %i.bd = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load49)
  store <8 x i16> %i.bd, ptr %next.gep48, align 8, !tbaa !998
  %index.next50 = add nuw i64 %index47, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1050

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.as, %n.vec46
  br i1 %cmp.n51, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bf = load i16, ptr %.012.i.i.i, align 2, !tbaa !998
  %rev.i.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  store i16 %rev.i.i.i.i, ptr %.012.i.i.i, align 2, !tbaa !998
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.bg, %i.ap
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_14pugi4impl20node_output_pi_valueERNS2_19xml_buffered_writerEPKc:bb.a
  %i.ca = sub i64 %i.bz, %i.e
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cb = icmp eq i32 %i.ah, 9
  br i1 %i.cb, label %bb.n, label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cc = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_13latin1_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i, ptr noundef nonnull %i.d)
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.e
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i: ; preds = %bb.n, %bb.m, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i
  %.0.i.i = phi i64 [ %i.bi, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i ], [ %i.ca, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i ], [ %i.ce, %bb.n ], [ 0, %bb.m ]
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !123
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull %i.d, i64 noundef %.0.i.i), !inline_history !997
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit: ; preds = %bb.h, %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %.3.i.i.i ; 2 uses
  %i.ck = sub nuw i64 %.01418.i.i, %.3.i.i.i      ; 3 uses
  %i.cl = icmp ugt i64 %i.ck, 2048
  br i1 %i.cl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1019

._crit_edge.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit
  store i64 0, ptr %i.b, align 8, !tbaa !320
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i, %bb.e
  %.115.i.i = phi i64 [ %i.ck, %._crit_edge.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %.1.i.i = phi ptr [ %i.cj, %._crit_edge.i.i ], [ %.022, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr align 1 %.1.i.i, i64 %.115.i.i, i1 false)
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !320
  %i.cn = add i64 %i.cm, %.115.i.i
  store i64 %i.cn, ptr %i.b, align 8, !tbaa !320
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit: ; preds = %bb.d, %bb.g, %bb.o
  %i.co = load i8, ptr %.1, align 1, !tbaa !62
  %.not15 = icmp eq i8 %i.co, 0
  br i1 %.not15, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !320 ; 3 uses
  %i.cq = icmp ugt i64 %i.cp, 2045
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cp)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi i64 [ 0, %bb.q ], [ %i.cp, %bb.p ]  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i ; 3 uses
  store i8 63, ptr %i.cr, align 1, !tbaa !62
  %i.cs = getelementptr i8, ptr %i.cr, i64 1
  store i8 32, ptr %i.cs, align 1, !tbaa !62
  %i.ct = getelementptr i8, ptr %i.cr, i64 2
  store i8 62, ptr %i.ct, align 1, !tbaa !62
  %i.cu = add nuw nsw i64 %.0.i, 3
  store i64 %i.cu, ptr %i.b, align 8, !tbaa !320
  %i.cv = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.cv, align 1, !tbaa !62  ; 2 uses
  %.not = icmp eq i8 %.pre, 0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !1054

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit, %bb.r, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl22node_output_attributesERNS2_19xml_buffered_writerEPNS1_15xml_node_structEPKcmjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 512
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i8 34, i8 39            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.032 = load ptr, ptr %i.c, align 8, !tbaa !362 ; 2 uses
  %.not2433 = icmp eq ptr %.032, null
  br i1 %.not2433, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i32 %4, 68
  %i.e = icmp eq i32 %i.d, 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 7 uses
  %i.g = add i32 %5, 1
  %i.h = and i32 %4, 16
  %.not.i = icmp eq i32 %i.h, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit31, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit31
  %.034 = phi ptr [ %.032, %.lr.ph ], [ %.0, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit31 ] ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !320  ; 5 uses
  %i.j = icmp ugt i64 %i.i, 2047                  ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.d, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.i)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ]   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  store i8 10, ptr %i.k, align 1, !tbaa !62
  %i.l = add nuw nsw i64 %.0.i, 1
  store i64 %i.l, ptr %i.f, align 8, !tbaa !320
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl18text_output_indentERNS2_19xml_buffered_writerEPKcmj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %2, i64 noundef %3, i32 noundef %i.g)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.f, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.i)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit28

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit28: ; preds = %bb.e, %bb.f
  %.0.i27 = phi i64 [ 0, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i27
  store i8 32, ptr %i.m, align 1, !tbaa !62
  %i.n = add nuw nsw i64 %.0.i27, 1
  store i64 %i.n, ptr %i.f, align 8, !tbaa !320
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit28, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !363  ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  %.str.281. = select i1 %.not25, ptr @.str.281, ptr %i.p
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.281.)
  %i.q = load i64, ptr %i.f, align 8, !tbaa !320  ; 3 uses
  %i.r = icmp ugt i64 %i.q, 2046
  br i1 %i.r, label %bb.h, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.q)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit: ; preds = %bb.g, %bb.h
  %.0.i29 = phi i64 [ 0, %bb.h ], [ %i.q, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i29 ; 2 uses
  store i8 61, ptr %i.s, align 1, !tbaa !62
  %i.t = getelementptr i8, ptr %i.s, i64 1
  store i8 %i.b, ptr %i.t, align 1, !tbaa !62
  %i.u = add nuw nsw i64 %.0.i29, 2               ; 2 uses
  store i64 %i.u, ptr %i.f, align 8, !tbaa !320
  %i.v = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !365  ; 3 uses
  %.not26 = icmp eq ptr %i.w, null
  br i1 %.not26, label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %i.w)
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exitthread-pre-split

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19text_output_escapedERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %i.w, i32 noundef 2, i32 noundef %4)
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exitthread-pre-split

_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exitthread-pre-split: ; preds = %bb.j, %bb.k
  %.pr = load i64, ptr %i.f, align 8, !tbaa !320
  br label %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit

_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exitthread-pre-split, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit
  %i.x = phi i64 [ %.pr, %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exitthread-pre-split ], [ %i.u, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcc.exit ] ; 3 uses
  %i.y = icmp ugt i64 %i.x, 2047
  br i1 %i.y, label %bb.l, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit31

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.x)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit31

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit31: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit, %bb.l
  %.0.i30 = phi i64 [ 0, %bb.l ], [ %i.x, %_ZN11OpenImageIO4v3_14pugi4impl11text_outputERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i30
  store i8 %i.b, ptr %i.z, align 1, !tbaa !62
  %i.aa = add nuw nsw i64 %.0.i30, 1
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !320
  %i.ab = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %.0 = load ptr, ptr %i.ab, align 8, !tbaa !362  ; 2 uses
  %.not24 = icmp eq ptr %.0, null
  br i1 %.not24, label %._crit_edge, label %bb.b, !llvm.loop !1055
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl19text_output_escapedERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = ptrtoint ptr %0 to i64                     ; 2 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !62
  %.not76 = icmp eq i8 %i.a, 0
  br i1 %.not76, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 15 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 3 uses
  %i.g = and i32 %3, 512
  %.not47 = icmp eq i32 %i.g, 0                   ; 2 uses
  %i.h = and i32 %3, 256
  %.not49 = icmp eq i32 %i.h, 0
  %invariant.op = sub i64 -2052, %4
  %invariant.op154 = sub i64 -2050, %4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ak
  %.077 = phi ptr [ %1, %.preheader.lr.ph ], [ %.3.ph, %bb.ak ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %.1 = phi ptr [ %i.aj, %bb.e ], [ %.077, %.preheader ] ; 9 uses
  %i.i = load i8, ptr %.1, align 1, !tbaa !62
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL15chartypex_tableE, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !62
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %2, %i.m
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.c, label %.split.loop.exit68, !prof !1056

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !62
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL15chartypex_tableE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !62
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %2, %i.t
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.d, label %.split.loop.exit68.split.loop.exit112, !prof !1056

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !62
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL15chartypex_tableE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !62
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i32 %2, %i.aa
  %.not45 = icmp eq i32 %i.ab, 0
  br i1 %.not45, label %bb.e, label %.split.loop.exit68.split.loop.exit110, !prof !1056

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL15chartypex_tableE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !62
  %i.ah = zext i8 %i.ag to i32
  %i.ai = and i32 %2, %i.ah
  %.not46 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not46, label %bb.b, label %.split.loop.exit68.split.loop.exit114, !prof !1056

.split.loop.exit68.split.loop.exit110:            ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit68

.split.loop.exit68.split.loop.exit112:            ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit68

.split.loop.exit68.split.loop.exit114:            ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 3
  br label %.split.loop.exit68

.split.loop.exit68:                               ; preds = %bb.b, %.split.loop.exit68.split.loop.exit114, %.split.loop.exit68.split.loop.exit112, %.split.loop.exit68.split.loop.exit110
  %.2.ph = phi ptr [ %i.al, %.split.loop.exit68.split.loop.exit112 ], [ %i.ak, %.split.loop.exit68.split.loop.exit110 ], [ %i.am, %.split.loop.exit68.split.loop.exit114 ], [ %.1, %bb.b ] ; 3 uses
  %i.an = ptrtoint ptr %.2.ph to i64
  %i.ao = ptrtoint ptr %.077 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !320 ; 3 uses
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, 2049
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.loop.exit68
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %.077, i64 %i.ap, i1 false)
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !320
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit

bb.g:                                             ; preds = %.split.loop.exit68
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aq)
  store i64 0, ptr %i.b, align 8, !tbaa !320
  %i.au = icmp ugt i64 %i.ap, 2048
  br i1 %i.au, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.av = load i32, ptr %i.c, align 8, !tbaa !323
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %.077, i64 noundef %i.ap), !inline_history !1031
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit
  %.019.i.i = phi ptr [ %i.dl, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit ], [ %.077, %bb.h ] ; 9 uses
  %.01418.i.i = phi i64 [ %i.dm, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit ], [ %i.ap, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2047
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %.not.i.i.i = icmp slt i8 %i.bc, -64
  br i1 %.not.i.i.i, label %.preheader.1.i.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

.preheader.1.i.i.i:                               ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2046
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %.not.1.i.i.i = icmp slt i8 %i.be, -64
  br i1 %.not.1.i.i.i, label %.preheader.2.i.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2045
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %.not.2.i.i.i = icmp slt i8 %i.bg, -64
  br i1 %.not.2.i.i.i, label %.preheader.3.i.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2044
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !62
  %.not.3.i.i.i = icmp slt i8 %i.bi, -64
  %spec.select.i.i.i = select i1 %.not.3.i.i.i, i64 2048, i64 2044
  br label %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i

_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i: ; preds = %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.lr.ph.i.i
  %.3.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.3.i.i.i ], [ 2047, %.lr.ph.i.i ], [ 2045, %.preheader.2.i.i.i ], [ 2046, %.preheader.1.i.i.i ] ; 6 uses
  %i.bj = load i32, ptr %i.c, align 8, !tbaa !323 ; 6 uses
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !123
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i), !inline_history !997
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl16get_valid_lengthEPKcm.exit.i.i
  %i.bp = and i32 %i.bj, -2
  %or.cond.i.i = icmp eq i32 %i.bp, 2
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp ne i32 %i.bj, 2
  %i.br = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf16_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i, ptr noundef nonnull %i.d) ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.d, %i.br
  %or.cond.not.i.i.i = and i1 %i.bq, %.not11.i.i.i
  br i1 %or.cond.not.i.i.i, label %iter.check, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i

iter.check:                                       ; preds = %bb.l
  %i.bs = ptrtoint ptr %i.br to i64
  %.reass155 = add i64 %i.bs, %invariant.op154    ; 3 uses
  %i.bt = lshr i64 %.reass155, 1
  %i.bu = add nuw i64 %i.bt, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %.reass155, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i64 %.reass155, 30
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bu, 8
  %n.vec = and i64 %i.bu, -16                     ; 4 uses
  %i.bv = shl i64 %n.vec, 1
  %i.bw = getelementptr i8, ptr %i.d, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 8, !tbaa !998
  %wide.load123 = load <8 x i16>, ptr %i.by, align 8, !tbaa !998
  %i.bz = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.ca = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load123)
  store <8 x i16> %i.bz, ptr %next.gep, align 8, !tbaa !998
  store <8 x i16> %i.ca, ptr %i.by, align 8, !tbaa !998
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1057

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %vec.epilog.iter.check

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_14pugi4impl19text_output_escapedERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj:bb.a
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %bb.g
  %.115.i.i = phi i64 [ %i.dm, %._crit_edge.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.1.i.i = phi ptr [ %i.dl, %._crit_edge.i.i ], [ %.077, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr align 1 %.1.i.i, i64 %.115.i.i, i1 false)
  %i.do = load i64, ptr %i.b, align 8, !tbaa !320
  %i.dp = add i64 %i.do, %.115.i.i
  store i64 %i.dp, ptr %i.b, align 8, !tbaa !320
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit: ; preds = %bb.f, %bb.i, %bb.q
  %i.dq = load i8, ptr %.2.ph, align 1, !tbaa !62 ; 2 uses
  %i.dr = sext i8 %i.dq to i32                    ; 2 uses
  switch i8 %i.dq, label %bb.ah [
    i8 0, label %._crit_edge
    i8 38, label %bb.r
    i8 60, label %bb.t
    i8 62, label %bb.v
    i8 34, label %bb.x
    i8 39, label %bb.ac
  ]

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !320 ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 2043
  br i1 %i.dt, label %bb.s, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ds)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit: ; preds = %bb.r, %bb.s
  %.0.i = phi i64 [ 0, %bb.s ], [ %i.ds, %bb.r ]  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i ; 2 uses
  store <4 x i8> <i8 38, i8 97, i8 109, i8 112>, ptr %i.du, align 1, !tbaa !62
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  store i8 59, ptr %i.dv, align 1, !tbaa !62
  %i.dw = add nuw nsw i64 %.0.i, 5
  br label %.sink.split

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !320 ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 2044
  br i1 %i.dy, label %bb.u, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.dx)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit: ; preds = %bb.t, %bb.u
  %.0.i51 = phi i64 [ 0, %bb.u ], [ %i.dx, %bb.t ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i51
  store <4 x i8> <i8 38, i8 108, i8 116, i8 59>, ptr %i.dz, align 1, !tbaa !62
  %i.ea = add nuw nsw i64 %.0.i51, 4
  br label %.sink.split

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.eb = load i64, ptr %i.b, align 8, !tbaa !320 ; 3 uses
  %i.ec = icmp ugt i64 %i.eb, 2044
  br i1 %i.ec, label %bb.w, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.eb)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53: ; preds = %bb.v, %bb.w
  %.0.i52 = phi i64 [ 0, %bb.w ], [ %i.eb, %bb.v ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i52
  store <4 x i8> <i8 38, i8 103, i8 116, i8 59>, ptr %i.ed, align 1, !tbaa !62
  %i.ee = add nuw nsw i64 %.0.i52, 4
  br label %.sink.split

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !320 ; 6 uses
  br i1 %.not47, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = icmp ugt i64 %i.ef, 2047
  br i1 %i.eg, label %bb.z, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ef)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit: ; preds = %bb.y, %bb.z
  %.0.i54 = phi i64 [ 0, %bb.z ], [ %i.ef, %bb.y ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i54
  store i8 34, ptr %i.eh, align 1, !tbaa !62
  %i.ei = add nuw nsw i64 %.0.i54, 1
  br label %.sink.split

bb.aa:                                            ; preds = %bb.x
  %i.ej = icmp ugt i64 %i.ef, 2042
  br i1 %i.ej, label %bb.ab, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ef)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit: ; preds = %bb.aa, %bb.ab
  %.0.i55 = phi i64 [ 0, %bb.ab ], [ %i.ef, %bb.aa ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i55 ; 3 uses
  store <4 x i8> <i8 38, i8 113, i8 117, i8 111>, ptr %i.ek, align 1, !tbaa !62
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  store i8 116, ptr %i.el, align 1, !tbaa !62
  %i.em = getelementptr i8, ptr %i.ek, i64 5
  store i8 59, ptr %i.em, align 1, !tbaa !62
  %i.en = add nuw nsw i64 %.0.i55, 6
  br label %.sink.split

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !320 ; 6 uses
  br i1 %.not47, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = icmp ugt i64 %i.eo, 2042
  br i1 %i.ep, label %bb.ae, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.eo)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57: ; preds = %bb.ad, %bb.ae
  %.0.i56 = phi i64 [ 0, %bb.ae ], [ %i.eo, %bb.ad ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i56 ; 3 uses
  store <4 x i8> <i8 38, i8 97, i8 112, i8 111>, ptr %i.eq, align 1, !tbaa !62
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  store i8 115, ptr %i.er, align 1, !tbaa !62
  %i.es = getelementptr i8, ptr %i.eq, i64 5
  store i8 59, ptr %i.es, align 1, !tbaa !62
  %i.et = add nuw nsw i64 %.0.i56, 6
  br label %.sink.split

bb.af:                                            ; preds = %bb.ac
  %i.eu = icmp ugt i64 %i.eo, 2047
  br i1 %i.eu, label %bb.ag, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.eo)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59: ; preds = %bb.af, %bb.ag
  %.0.i58 = phi i64 [ 0, %bb.ag ], [ %i.eo, %bb.af ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i58
  store i8 39, ptr %i.ev, align 1, !tbaa !62
  %i.ew = add nuw nsw i64 %.0.i58, 1
  br label %.sink.split

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  br i1 %.not49, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ex = udiv i32 %i.dr, 10
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = add i8 %i.ey, 48
  %i.fa = urem i32 %i.dr, 10
  %i.fb = trunc nuw nsw i32 %i.fa to i8
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !320 ; 3 uses
  %i.fe = icmp ugt i64 %i.fd, 2043
  br i1 %i.fe, label %bb.aj, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.fd)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61: ; preds = %bb.ai, %bb.aj
  %.0.i60 = phi i64 [ 0, %bb.aj ], [ %i.fd, %bb.ai ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i60 ; 5 uses
  store i8 38, ptr %i.ff, align 1, !tbaa !62
  %i.fg = getelementptr i8, ptr %i.ff, i64 1
  store i8 35, ptr %i.fg, align 1, !tbaa !62
  %i.fh = getelementptr i8, ptr %i.ff, i64 2
  store i8 %i.ez, ptr %i.fh, align 1, !tbaa !62
  %i.fi = getelementptr i8, ptr %i.ff, i64 3
  store i8 %i.fc, ptr %i.fi, align 1, !tbaa !62
  %i.fj = getelementptr i8, ptr %i.ff, i64 4
  store i8 59, ptr %i.fj, align 1, !tbaa !62
  %i.fk = add nuw nsw i64 %.0.i60, 5
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61
  %.sink = phi i64 [ %i.fk, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61 ], [ %i.en, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit ], [ %i.dw, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit ], [ %i.ee, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53 ], [ %i.ea, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit ], [ %i.ei, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit ], [ %i.et, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57 ], [ %i.ew, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59 ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !320
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.ah
  %.3.ph = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1 ; 2 uses
  %.pr = load i8, ptr %.3.ph, align 1, !tbaa !62
  %.not = icmp eq i8 %.pr, 0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !1062

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit, %bb.ak, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.d = load i32, ptr %i.c, align 8, !tbaa !323  ; 6 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1, i64 noundef %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 17 uses
  %i.l = and i32 %i.d, -2
  %or.cond.i = icmp eq i32 %i.l, 2
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ne i32 %i.d, 2
  %i.n = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf16_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k) ; 4 uses
  %.not11.i.i = icmp ne ptr %i.k, %i.n
  %or.cond.not.i.i = and i1 %i.m, %.not11.i.i
  br i1 %or.cond.not.i.i, label %iter.check, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i

iter.check:                                       ; preds = %bb.e
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, -2050
  %i.q = sub i64 %i.p, %i.a                       ; 3 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check12 = icmp ult i64 %i.q, 14
  br i1 %min.iters.check12, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph14

vector.ph14:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf15 = and i64 %i.s, 8
  %n.vec16 = and i64 %i.s, -16                    ; 4 uses
  %i.t = shl i64 %n.vec16, 1
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph14
  %index18 = phi i64 [ 0, %vector.ph14 ], [ %index.next22, %vector.body17 ] ; 2 uses
  %i.v = shl i64 %index18, 1
  %next.gep19 = getelementptr i8, ptr %i.k, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load20 = load <8 x i16>, ptr %next.gep19, align 8, !tbaa !998
  %wide.load21 = load <8 x i16>, ptr %i.w, align 8, !tbaa !998
  %i.x = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load20)
  %i.y = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load21)
  store <8 x i16> %i.x, ptr %next.gep19, align 8, !tbaa !998
  store <8 x i16> %i.y, ptr %i.w, align 8, !tbaa !998
  %index.next22 = add nuw i64 %index18, 16        ; 2 uses
  %i.z = icmp eq i64 %index.next22, %n.vec16
  br i1 %i.z, label %middle.block23, label %vector.body17, !llvm.loop !1063

middle.block23:                                   ; preds = %vector.body17
  %cmp.n24 = icmp eq i64 %i.s, %n.vec16
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block23
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf15, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1000

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec16, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.s, -8                     ; 3 uses
  %i.aa = shl i64 %n.vec27, 1
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = shl i64 %index28, 1
  %next.gep29 = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %wide.load30 = load <8 x i16>, ptr %next.gep29, align 8, !tbaa !998
  %i.ad = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load30)
  store <8 x i16> %i.ad, ptr %next.gep29, align 8, !tbaa !998
  %index.next31 = add nuw i64 %index28, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next31, %n.vec27
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1064

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.s, %n.vec27
  br i1 %cmp.n32, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.af = load i16, ptr %.012.i.i, align 2, !tbaa !998
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  store i16 %rev.i.i.i, ptr %.012.i.i, align 2, !tbaa !998
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.n
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %.lr.ph.i.i, !llvm.loop !1065

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i: ; preds = %.lr.ph.i.i, %middle.block23, %vec.epilog.middle.block, %bb.e
  %i.ah = ptrtoint ptr %i.n to i64
  %i.ai = ptrtoint ptr %i.k to i64
  %i.aj = sub i64 %i.ah, %i.ai
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = add i32 %i.d, -5
  %or.cond3.i = icmp ult i32 %i.ak, 2
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = icmp ne i32 %i.d, 5
  %i.am = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf32_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k) ; 4 uses
  %.not11.i22.i = icmp ne ptr %i.k, %i.am
  %or.cond.not.i23.i = and i1 %i.al, %.not11.i22.i
  br i1 %or.cond.not.i23.i, label %.lr.ph.i24.i.preheader, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i

.lr.ph.i24.i.preheader:                           ; preds = %bb.g
  %i.an = ptrtoint ptr %i.am to i64
  %3 = ptrtoint ptr %0 to i64
  %i.ao = sub i64 %i.an, %3
  %4 = add i64 %i.ao, -2052                       ; 2 uses
  %i.ap = lshr i64 %4, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %i.k, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 8, !tbaa !3
  %wide.load10 = load <4 x i32>, ptr %i.au, align 8, !tbaa !3
  %i.av = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.aw = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load10)
  store <4 x i32> %i.av, ptr %next.gep, align 8, !tbaa !3
  store <4 x i32> %i.aw, ptr %i.au, align 8, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1066

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %.lr.ph.i24.i.preheader34

.lr.ph.i24.i.preheader34:                         ; preds = %.lr.ph.i24.i.preheader, %middle.block
  %.012.i25.i.ph = phi ptr [ %i.k, %.lr.ph.i24.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader34, %.lr.ph.i24.i
  %.012.i25.i = phi ptr [ %i.ba, %.lr.ph.i24.i ], [ %.012.i25.i.ph, %.lr.ph.i24.i.preheader34 ] ; 3 uses
  %i.ay = load i32, ptr %.012.i25.i, align 4, !tbaa !3
  %i.az = tail call noundef i32 @llvm.bswap.i32(i32 %i.ay)
  store i32 %i.az, ptr %.012.i25.i, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i25.i, i64 4 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.ba, %i.am
  br i1 %.not.i26.i, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %.lr.ph.i24.i, !llvm.loop !1067

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i: ; preds = %.lr.ph.i24.i, %middle.block, %bb.g
  %i.bb = ptrtoint ptr %i.am to i64
  %i.bc = ptrtoint ptr %i.k to i64
  %i.bd = sub i64 %i.bb, %i.bc
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit

bb.h:                                             ; preds = %bb.f
  %i.be = icmp eq i32 %i.d, 9
  br i1 %i.be, label %bb.i, label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit

bb.i:                                             ; preds = %bb.h
  %i.bf = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_13latin1_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k)
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.k to i64
  %i.bi = sub i64 %i.bg, %i.bh
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit

_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.aj, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i ], [ %i.bd, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i ], [ %i.bi, %bb.i ], [ 0, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !996, !nonnull !162, !align !521 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !123
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull %i.k, i64 noundef %.0.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf16_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not71 = icmp eq i64 %1, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.074 = phi ptr [ %.2, %.critedge ], [ %0, %bb.a ] ; 12 uses
  %.06073 = phi i64 [ %.262, %.critedge ], [ %1, %bb.a ] ; 8 uses
  %.06372 = phi ptr [ %.265, %.critedge ], [ %2, %bb.a ] ; 10 uses
  %i.a = load i8, ptr %.074, align 1, !tbaa !62   ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 6 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.d = zext nneg i8 %i.a to i16
  store i16 %i.d, ptr %.06372, align 2, !tbaa !998
  %i.e = getelementptr inbounds nuw i8, ptr %.06372, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.074, i64 1 ; 3 uses
  %i.g = add i64 %.06073, -1                      ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = and i64 %i.h, 3
  %i.j = icmp eq i64 %i.i, 0
  %i.k = icmp ugt i64 %i.g, 3
  %or.cond7 = and i1 %i.k, %i.j
  br i1 %or.cond7, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.c
  %.164 = phi ptr [ %i.ac, %bb.c ], [ %i.e, %bb.b ] ; 6 uses
  %.161 = phi i64 [ %i.ae, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.ad, %bb.c ], [ %i.f, %bb.b ] ; 6 uses
  %i.l = load i32, ptr %.1, align 4               ; 2 uses
  %i.m = and i32 %i.l, -2139062144
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %i.o = trunc i32 %i.l to i16
  %i.p = and i16 %i.o, 127
  store i16 %i.p, ptr %.164, align 2, !tbaa !998
  %i.q = getelementptr inbounds nuw i8, ptr %.164, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !62
  %i.t = zext i8 %i.s to i16
  store i16 %i.t, ptr %i.q, align 2, !tbaa !998
  %i.u = getelementptr inbounds nuw i8, ptr %.164, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.w = load i8, ptr %i.v, align 2, !tbaa !62
  %i.x = zext i8 %i.w to i16
  store i16 %i.x, ptr %i.u, align 2, !tbaa !998
  %i.y = getelementptr inbounds nuw i8, ptr %.164, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !62
  %i.ab = zext i8 %i.aa to i16
  store i16 %i.ab, ptr %i.y, align 2, !tbaa !998
  %i.ac = getelementptr inbounds nuw i8, ptr %.164, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.ae = add i64 %.161, -4                       ; 3 uses
  %.old6 = icmp ugt i64 %i.ae, 3
  br i1 %.old6, label %.preheader, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.af = and i32 %i.b, 224
  %i.ag = icmp eq i32 %i.af, 192
  %i.ah = icmp ne i64 %.06073, 1
  %or.cond = and i1 %i.ah, %i.ag
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 192
  %i.am = icmp eq i32 %i.al, 128
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nuw nsw i32 %i.b, 6
  %i.ao = and i32 %i.an, 1984
  %i.ap = and i32 %i.ak, 63
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  store i16 %i.ar, ptr %.06372, align 2, !tbaa !998
  %i.as = getelementptr inbounds nuw i8, ptr %.06372, i64 2
  %i.at = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.au = add i64 %.06073, -2
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.av = and i32 %i.b, 240
  %i.aw = icmp eq i32 %i.av, 224
  %i.ax = icmp ugt i64 %.06073, 2
  %or.cond3 = and i1 %i.ax, %i.aw
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !62
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = and i32 %i.ba, 192
  %i.bc = icmp eq i32 %i.bb, 128
  br i1 %i.bc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = and i32 %i.bf, 192
  %i.bh = icmp eq i32 %i.bg, 128
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = shl nuw nsw i32 %i.b, 12
  %i.bj = shl nuw nsw i32 %i.ba, 6
  %i.bk = and i32 %i.bj, 4032
  %i.bl = or disjoint i32 %i.bk, %i.bi
  %i.bm = and i32 %i.bf, 63
  %i.bn = or disjoint i32 %i.bm, %i.bl
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %.06372, align 2, !tbaa !998
  %i.bp = getelementptr inbounds nuw i8, ptr %.06372, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.074, i64 3
  %i.br = add i64 %.06073, -3
  br label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bs = and i32 %i.b, 248
  %i.bt = icmp eq i32 %i.bs, 240
end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !65
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !314
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !314
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #40
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1636 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !1525 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #42
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !1525
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1636
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1519
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1518 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !1518 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = add i64 %i.bk, -2
  %i.bn = sub i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1638

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %i.bp, -4                    ; 3 uses
  %i.by = shl i64 %n.vec51, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep54 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load55 = load <4 x i16>, ptr %next.gep54, align 1
  store <4 x i16> %wide.load55, ptr %next.gep53, align 1
  %index.next56 = add nuw i64 %index52, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1639

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.bp, %n.vec51
  br i1 %cmp.n57, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !1640

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !1636
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1597 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !1524 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #42
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !1524
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !1597
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !1521
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !1520 ; 6 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !1520 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %2 = sub i64 %i.cy, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.da = lshr i64 %3, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %3, 44
  %i.dc = sub i64 %i.cw, %i.cx
  %diff.check61 = icmp ugt i64 %i.dc, -32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.db, 9223372036854775800   ; 3 uses
  %i.dd = shl i64 %n.vec65, 2                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cq, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.dd
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.dg = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.dg ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dh, align 2
  %i.di = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.di, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !1641

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dk, ptr %.09.i.i.i.i.i21, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !1642

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.de, %middle.block73 ], [ %i.dm, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !1597
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %i.as, align 8, !tbaa !1525 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !1519
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #40
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.dr, %bb.o ], [ %i.dr, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #39
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dx = load ptr, ptr %0, align 8, !tbaa !1526  ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !1517
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !66
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !57 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.e, ptr %i.a, align 8, !tbaa !114
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !57
  %i.h = load i64, ptr %i.a, align 8, !tbaa !114
  store i64 %i.h, ptr %i.b, align 8, !tbaa !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !62
  store i8 %i.j, ptr %i.i, align 1, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !67
  %i.m = load ptr, ptr %.014, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1643

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #39 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #41
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #37
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1538
  store ptr %i.a, ptr %0, align 8, !tbaa !1538
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !1538
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #42 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #40
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !1538
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1538   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #39
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #40
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1608 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1526   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #42
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1526
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1608
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1517
  %i.m = load ptr, ptr %1, align 8, !tbaa !113    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !1056

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !62
  store i8 %i.t, ptr %i.i, align 1, !tbaa !62
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !1608
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #42
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !65
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !314
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !314
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #40
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1597 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !1524 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #42
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !1524
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1597
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !1521
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !1520 ; 6 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !1520 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %2 = sub i64 %i.bm, %i.bn
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.09.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1669

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !1597
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #39
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #39
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cd, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !1526  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !1517
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1658 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1657   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, !prof !126

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #41
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #42
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1657
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1658
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1537
  %i.m = load ptr, ptr %1, align 8, !tbaa !1536   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1536 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1670

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #39 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #41
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #37
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !1658
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !1657   ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !1537
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #40
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !65
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !314
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !314
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #40
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1636 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !1525 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #42
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !1525
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1636
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1519
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1518 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !1518 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = add i64 %i.bk, -2
  %i.bn = sub i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1685

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1638

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %i.bp, -4                    ; 3 uses
  %i.by = shl i64 %n.vec51, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep54 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load55 = load <4 x i16>, ptr %next.gep54, align 1
  store <4 x i16> %wide.load55, ptr %next.gep53, align 1
  %index.next56 = add nuw i64 %index52, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1686

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.bp, %n.vec51
  br i1 %cmp.n57, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !1687

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !1636
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1597 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !1524 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #42
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !1524
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !1597
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !1521
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !1520 ; 6 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !1520 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %2 = sub i64 %i.cy, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.da = lshr i64 %3, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %3, 44
  %i.dc = sub i64 %i.cw, %i.cx
  %diff.check61 = icmp ugt i64 %i.dc, -32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.db, 9223372036854775800   ; 3 uses
  %i.dd = shl i64 %n.vec65, 2                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cq, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.dd
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.dg = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.dg ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dh, align 2
  %i.di = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.di, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !1688

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dk, ptr %.09.i.i.i.i.i21, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !1689

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.de, %middle.block73 ], [ %i.dm, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !1597
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dn, ptr noundef nonnull align 8 dereferenceable(64) %i.do, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %i.as, align 8, !tbaa !1525 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !1519
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #40
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.dr, %bb.o ], [ %i.dr, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #39
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dx = load ptr, ptr %0, align 8, !tbaa !1526  ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !1517
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1690, !nonnull !162, !align !521
  %i.c = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.309) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1515
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !1516
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1597 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1521
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !1597
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !1597
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1524 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.289) #41
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #42 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = sub i64 %i.aa, %i.ab
  %i.ao = add i64 %i.an, -4                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 44
  %i.ar = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1550
  store ptr %i.a, ptr %0, align 8, !tbaa !1550
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !1550
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #42 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #40
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !1550
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1550   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #39
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #40
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1608 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1526   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #42
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1526
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1608
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1517
  %i.m = load ptr, ptr %1, align 8, !tbaa !113    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !1056

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !62
  store i8 %i.t, ptr %i.i, align 1, !tbaa !62
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !1608
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #42
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !65
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !314
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !314
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #40
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1597 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !1524 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !126

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #41
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #42
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !1524
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1597
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !1521
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !1520 ; 6 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !1520 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %2 = sub i64 %i.bm, %i.bn
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1706

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.09.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1707

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !1597
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #39
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #39
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cd, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !1526  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !1517
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 26 uses
  %3 = alloca %"struct.std::__detail::_Compiler<std::__cxx11::regex_traits<char>>::_BracketState", align 1 ; 8 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1435, !nonnull !162, !align !521
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %2, i8 0, i64 99, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !1286
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 %i.c, ptr %i.e, align 16, !tbaa !1496
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store i8 0, ptr %3, align 1, !tbaa !1708
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.g, align 1, !tbaa !1711
  %i.h = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = load i8, ptr %i.j, align 1, !tbaa !62
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

.loopexit:                                        ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.a, %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE11_M_add_charEc.exit, %bb.e, %bb.h, %bb.i, %bb.j, %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1300
  %i.o = icmp eq i32 %i.n, 28
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1301
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1302
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  store i32 27, ptr %i.m, align 8, !tbaa !1300
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1303
  switch i32 %i.x, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.c
  %.sink = phi i8 [ %i.k, %bb.c ], [ 45, %bb.g ], [ 45, %bb.f ], [ 45, %bb.h ], [ 45, %bb.i ], [ 45, %bb.j ]
  store i8 1, ptr %3, align 1, !tbaa !1708
  store i8 %.sink, ptr %i.g, align 1, !tbaa !1711
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split, %bb.d
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader, %bb.k
  %i.y = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb0EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
end_hunk_7
