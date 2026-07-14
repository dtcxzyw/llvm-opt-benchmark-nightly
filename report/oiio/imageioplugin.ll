inline.NumInlined: 4701
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef nonnull %i.af) #34
  %.pre.i.i.pre = load i64, ptr %i.c, align 8, !tbaa !554 ; 2 uses
  %.pre681.pre = load ptr, ptr %5, align 8, !tbaa !544
  %.pre1266 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1266, %bb.i ], [ %i.be, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre681 = phi ptr [ %.pre681.pre, %bb.i ], [ %i.bj, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.i ], [ %i.ah, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !554
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %.pre.i.i
  store i32 %.lcssa1475, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.f, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1117
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !554
  %i.bm = lshr i32 %i.x, 5
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !546
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
  store i64 1, ptr %i.r, align 8, !tbaa !554
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !546
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
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !554 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t816 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !544   ; 3 uses
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
  br i1 %i.cj, label %middle.block1618, label %vector.body1612, !llvm.loop !557

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
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1603, !llvm.loop !558

bb.l:                                             ; preds = %._crit_edge.i161
  %i.cq = add i64 %i.bw, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !545
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !542
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.cq)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !559

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !554 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre684 = load ptr, ptr %6, align 8, !tbaa !544
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.cu = phi ptr [ %i.bx, %bb.l ], [ %.pre684, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cv = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !554
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
  %i.da = load i64, ptr %i.c, align 8, !tbaa !554 ; 7 uses
  %i.db = load i64, ptr %i.k, align 8, !tbaa !545
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !542
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.da)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !560

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !545
  %i.de = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %.pre.i.i.i)
  store i64 %i.de, ptr %i.m, align 8, !tbaa !554
  %i.df = load ptr, ptr %5, align 8, !tbaa !544   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.da, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.da, ptr %i.m, align 8, !tbaa !554
  %i.dh = load ptr, ptr %5, align 8, !tbaa !544   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.da, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.da, 0
  br i1 %.not6.i.i, label %.loopexit570, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dj = phi ptr [ %i.dg, %.noexc170 ], [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.df, %.noexc170 ], [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 7 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !544      ; 4 uses
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
  br i1 %i.dx, label %middle.block1525, label %vector.body1519, !llvm.loop !561

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
  br i1 %.not.i.i169, label %.loopexit570, label %.lr.ph.i.i, !llvm.loop !562

.loopexit570:                                     ; preds = %.lr.ph.i.i, %middle.block1525, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.eb = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dk, %middle.block1525 ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !546 ; 2 uses
  store i32 %i.ec, ptr %i.o, align 8, !tbaa !546
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit570
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !554 ; 8 uses
  %i.ee = load i64, ptr %i.p, align 8, !tbaa !545 ; 2 uses
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !542
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.ed)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !560

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !545 ; 2 uses
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !554
  %i.ei = load ptr, ptr %5, align 8, !tbaa !544   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.ed, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.ed, ptr %i.r, align 8, !tbaa !554
  %.idx.i172 = shl nuw nsw i64 %i.ed, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.ed, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.ec, ptr %i.t, align 8, !tbaa !546
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.el = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ee, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.eh, %.noexc182 ], [ %i.ed, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.em = phi ptr [ %i.ej, %.noexc182 ], [ %i.ek, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.en = phi ptr [ %i.ei, %.noexc182 ], [ %i.eb, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 5 uses
  %13 = load ptr, ptr %8, align 8, !tbaa !544     ; 7 uses
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
  br i1 %i.fa, label %middle.block1543, label %vector.body1536, !llvm.loop !563

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
  br i1 %.not.i.i178, label %.loopexit1623, label %.lr.ph.i.i175, !llvm.loop !564

.loopexit1623:                                    ; preds = %.lr.ph.i.i175, %middle.block1543
  %i.fe = load i32, ptr %i.e, align 8, !tbaa !546
  store i32 %i.fe, ptr %i.t, align 8, !tbaa !546
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
  br i1 %i.fp, label %middle.block1558, label %vector.body1552, !llvm.loop !565

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
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !566

bb.r:                                             ; preds = %._crit_edge.i189
  %i.fx = add i64 %.pr, 1                         ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, %i.el
  br i1 %i.fy, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %i.q, align 8, !tbaa !542
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fx)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !559

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !554 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre678 = load ptr, ptr %8, align 8, !tbaa !544
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.ga = phi ptr [ %13, %bb.r ], [ %.pre678, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.fx, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gb = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !554
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gb
  store i32 %.lcssa1480, ptr %i.gc, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1623, %.thread, %.loopexit570
  %.188 = phi ptr [ null, %.loopexit570 ], [ %8, %.thread ], [ %8, %.loopexit1623 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gd = load i128, ptr %0, align 16, !tbaa !552 ; 3 uses
  %i.ge = and i128 %i.gd, 18446744073709551615
  %i.gf = load i64, ptr %i.c, align 8, !tbaa !554 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.gg = load ptr, ptr %5, align 8, !tbaa !544   ; 3 uses
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
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !567

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.gw = phi ptr [ %i.hd, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gg, %.preheader.i.i ]
  %i.gx = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gf, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.hg, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gt, %.preheader.i.i ] ; 2 uses
  %i.gy = trunc i128 %.121.i.i to i32
  %i.gz = add i64 %i.gx, 1                        ; 3 uses
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !545
  %i.hb = icmp ugt i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !542
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.gz)
          to label %.noexc200 unwind label %.loopexit569, !inline_history !568

.noexc200:                                        ; preds = %bb.u
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !554 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !544
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.hd = phi ptr [ %i.gw, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.gz, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.he = phi i64 [ %i.gx, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !554
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.he
  store i32 %i.gy, ptr %i.hf, align 4, !tbaa !3
  %i.hg = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i198 = icmp eq i128 %i.hg, 0
  br i1 %.not.i.i198, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !569

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
  br i1 %i.hu, label %middle.block1578, label %vector.body1572, !llvm.loop !570

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
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1563, !llvm.loop !571

bb.v:                                             ; preds = %._crit_edge.i206
  %i.ib = add i64 %i.hi, 1                        ; 3 uses
  %i.ic = load i64, ptr %i.a, align 8, !tbaa !545
  %i.id = icmp ugt i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.w, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.w:                                             ; preds = %bb.v
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !542
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ib)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !559

.noexc212:                                        ; preds = %bb.w
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !554 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre679 = load ptr, ptr %5, align 8, !tbaa !544
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.v
  %i.if = phi ptr [ %i.hh, %bb.v ], [ %.pre679, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.ib, %bb.v ], [ %.pre2.i.i211, %.noexc212 ]
  %i.ig = phi i64 [ %i.hi, %bb.v ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !554
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ig
  store i32 %.lcssa1477, ptr %i.ih, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.ii = load ptr, ptr %6, align 8, !tbaa !544
  store i32 1, ptr %i.ii, align 4, !tbaa !3
  %i.ij = load i64, ptr %i.f, align 8, !tbaa !545 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.ij, 0
  br i1 %.not8.i.i217.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !542
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !572

.noexc219:                                        ; preds = %bb.x
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !545 ; 2 uses
  %i.il = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.im = zext i1 %i.il to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.in = phi i64 [ %i.ij, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.io = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.im, %.noexc219 ] ; 2 uses
  store i64 %i.io, ptr %i.h, align 8, !tbaa !554
  %i.ip = load i32, ptr %i.w, align 16, !tbaa !550
  %i.iq = sub nsw i32 %i.v, %i.ip                 ; 2 uses
  %i.ir = sdiv i32 %i.iq, 32
  store i32 %i.ir, ptr %i.j, align 8, !tbaa !546
  %i.is = srem i32 %i.iq, 32                      ; 3 uses
  %i.it = icmp eq i32 %i.is, 0
  %.not19.i221 = icmp eq i64 %i.io, 0
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN11OpenImageIO4v3_110ImageInputEvEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE17_M_construct_nodeIJRKSE_EEEvPSt13_Rb_tree_nodeISE_EDpOT_:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !30
  %i.d = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.f, ptr %i.a, align 8, !tbaa !31
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !23
  %i.i = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.i, ptr %i.c, align 8, !tbaa !32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !32
  store i8 %i.k, ptr %i.j, align 1, !tbaa !32
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #34 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #33
  invoke void @__cxa_rethrow() #35
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !20
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !180
  store ptr %i.v, ptr %i.t, align 8, !tbaa !180
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !869  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !192    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.i = load ptr, ptr %0, align 8, !tbaa !192    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, !prof !231

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !192
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !195
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !869
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !870

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 4
  store i64 %i.aa, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !870

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !192   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !869 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !192
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !869 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ao, %i.ah
  %2 = sub i64 %i.ap, %i.aq
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ar = lshr i64 %3, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !871

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bb, ptr %.011.i.i.i.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !872

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !192
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !869
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !68     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = load ptr, ptr %0, align 8, !tbaa !68     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !23 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !69

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !36
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !873

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !34
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
  %i.an = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.af, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.an
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.ao = sub i64 %.pre-phi46, %i.l
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 %i.ao
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.ap, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !23 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !32
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !874

bb.g:                                             ; preds = %bb.e
  %i.aw = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.aw, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i35)
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev:bb.a
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !34
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !30
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.h, ptr %i.a, align 8, !tbaa !31
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !23
  %i.k = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.k, ptr %i.e, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !32
  store i8 %i.m, ptr %i.l, align 1, !tbaa !32
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #34 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 96) #33
  invoke void @__cxa_rethrow() #35
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !20
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.x, align 8, !tbaa !20
  store i8 0, ptr %i.w, align 8, !tbaa !32
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #32
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !24  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !902

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !23
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #34 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #35
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.t = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i26 = icmp eq ptr %i.t, null
  br i1 %.not.i26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %3, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !56
  %i.x = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
          to label %bb.e unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE11_M_allocateEm.exit, %bb.d
  %i.y = phi ptr [ null, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE11_M_allocateEm.exit ], [ %i.x, %bb.d ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %4 = ptrtoint ptr %1 to i64
  %i.z = sub i64 %4, %i.e
  %5 = add i64 %i.z, -8                           ; 2 uses
  %i.aa = lshr i64 %5, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 72
  %i.ac = sub i64 %i.e, %i.r
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ag ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.ah = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !18, !alias.scope !906, !noalias !903
  %wide.load53 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !18, !alias.scope !906, !noalias !903
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !18, !alias.scope !903, !noalias !906
  store <2 x i64> %wide.load53, ptr %i.ai, align 8, !tbaa !18, !alias.scope !903, !noalias !906
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !908

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader75

.lr.ph.i.i.i.preheader75:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader75, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader75 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader75 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.ak = load i64, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !906, !noalias !903
  store i64 %i.ak, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !903, !noalias !906
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !909

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i56 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %6 = ptrtoint ptr %1 to i64
  %i.ao = sub i64 %i.d, %6
  %7 = add i64 %i.ao, -8                          ; 2 uses
  %i.ap = lshr i64 %7, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %7, 104
  br i1 %min.iters.check59, label %.lr.ph.i.i.i28.preheader74, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.i.i.i28.preheader
  %i.ar = sub i64 %.0.lcssa.i.i.i56, %i.m
  %i.as = add i64 %i.ar, 7
  %diff.check57 = icmp ult i64 %i.as, 31
  br i1 %diff.check57, label %.lr.ph.i.i.i28.preheader74, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck55
  %n.vec62 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.at = shl i64 %n.vec62, 3                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 %i.at
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.aw = shl i64 %index64, 3                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.ax = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !18, !alias.scope !913, !noalias !910
  %wide.load68 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !18, !alias.scope !913, !noalias !910
  %i.ay = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x i64> %wide.load67, ptr %next.gep65, align 8, !tbaa !18, !alias.scope !910, !noalias !913
  store <2 x i64> %wide.load68, ptr %i.ay, align 8, !tbaa !18, !alias.scope !910, !noalias !913
  %index.next69 = add nuw i64 %index64, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.az, label %middle.block70, label %vector.body63, !llvm.loop !915

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.aq, %n.vec62
  br i1 %cmp.n71, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader74

.lr.ph.i.i.i28.preheader74:                       ; preds = %vector.memcheck55, %.lr.ph.i.i.i28.preheader, %middle.block70
  %.012.i.i.i29.ph = phi ptr [ %i.an, %vector.memcheck55 ], [ %i.an, %.lr.ph.i.i.i28.preheader ], [ %i.au, %middle.block70 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %vector.memcheck55 ], [ %1, %.lr.ph.i.i.i28.preheader ], [ %i.av, %middle.block70 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader74, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.bc, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader74 ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader74 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.ba = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !18, !alias.scope !913, !noalias !910
  store i64 %i.ba, ptr %.012.i.i.i29, align 8, !tbaa !18, !alias.scope !910, !noalias !913
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bb, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !916

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block70, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.an, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.au, %middle.block70 ], [ %i.bc, %.lr.ph.i.i.i28 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #33
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !14
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !17
  ret void

_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bj) #34 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.h

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit36
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit
  %i.bm = shl nuw nsw i64 %i.l, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bm) #33
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %bb.h, %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #35
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bl

bb.j:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #32
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit36
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare void @__once_proxy() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv() #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !917, !nonnull !169
  tail call void %i.c(), !inline_history !919
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = load ptr, ptr %1, align 8, !tbaa !23
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.o = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit: ; preds = %bb.b, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.q = phi i1 [ %i.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.b ]
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 3 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_2
