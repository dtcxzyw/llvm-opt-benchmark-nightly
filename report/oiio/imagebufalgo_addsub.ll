inline.NumInlined: 3945
inline.NumDeleted: 1152
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef nonnull %i.af) #28
  %.pre.i.i.pre = load i64, ptr %i.c, align 8, !tbaa !419 ; 2 uses
  %.pre681.pre = load ptr, ptr %5, align 8, !tbaa !409
  %.pre1373 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1373, %bb.i ], [ %i.be, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre681 = phi ptr [ %.pre681.pre, %bb.i ], [ %i.bj, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.i ], [ %i.ah, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !419
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %.pre.i.i
  store i32 %.lcssa1624, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.f, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1161
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !419
  %i.bm = lshr i32 %i.x, 5
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !411
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
  store i64 1, ptr %i.r, align 8, !tbaa !419
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !411
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

.loopexit.split-lp:                               ; preds = %.invoke1568, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.m, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.s, %bb.w, %bb.x, %bb.aa, %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.j, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.087 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.j ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.bv)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !419 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t816 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !409   ; 3 uses
  %i.by = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1753 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check1753, label %scalar.ph1752.preheader, label %vector.ph1754

vector.ph1754:                                    ; preds = %.lr.ph.i157
  %n.vec1756 = and i64 %i.bw, -8                  ; 3 uses
  %broadcast.splatinsert1757 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat1758 = shufflevector <4 x i32> %broadcast.splatinsert1757, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1759 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1760 = shufflevector <4 x i32> %broadcast.splatinsert1759, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1761

vector.body1761:                                  ; preds = %vector.body1761, %vector.ph1754
  %index1762 = phi i64 [ 0, %vector.ph1754 ], [ %index.next1766, %vector.body1761 ] ; 2 uses
  %vector.recur1763 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1754 ], [ %i.cc, %vector.body1761 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1762 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load1764 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !3 ; 2 uses
  %wide.load1765 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  %i.cb = lshr <4 x i32> %wide.load1764, %broadcast.splat1758 ; 2 uses
  %i.cc = lshr <4 x i32> %wide.load1765, %broadcast.splat1758 ; 3 uses
  %i.cd = shufflevector <4 x i32> %vector.recur1763, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ce = shufflevector <4 x i32> %i.cb, <4 x i32> %i.cc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl <4 x i32> %wide.load1764, %broadcast.splat1760
  %i.cg = shl <4 x i32> %wide.load1765, %broadcast.splat1760
  %i.ch = add <4 x i32> %i.cf, %i.cd
  %i.ci = add <4 x i32> %i.cg, %i.ce
  store <4 x i32> %i.ch, ptr %i.bz, align 4, !tbaa !3
  store <4 x i32> %i.ci, ptr %i.ca, align 4, !tbaa !3
  %index.next1766 = add nuw i64 %index1762, 8     ; 2 uses
  %i.cj = icmp eq i64 %index.next1766, %n.vec1756
  br i1 %i.cj, label %middle.block1767, label %vector.body1761, !llvm.loop !422

middle.block1767:                                 ; preds = %vector.body1761
  %vector.recur.extract1768 = extractelement <4 x i32> %i.cc, i64 3 ; 2 uses
  %cmp.n1769 = icmp eq i64 %i.bw, %n.vec1756
  br i1 %cmp.n1769, label %._crit_edge.i161, label %scalar.ph1752.preheader

scalar.ph1752.preheader:                          ; preds = %.lr.ph.i157, %middle.block1767
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1756, %middle.block1767 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1768, %middle.block1767 ]
  br label %scalar.ph1752

._crit_edge.i161:                                 ; preds = %scalar.ph1752, %middle.block1767
  %.lcssa1623 = phi i32 [ %vector.recur.extract1768, %middle.block1767 ], [ %i.cm, %scalar.ph1752 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1623, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.l

scalar.ph1752:                                    ; preds = %scalar.ph1752.preheader, %scalar.ph1752
  %.01418.i158 = phi i64 [ %i.cp, %scalar.ph1752 ], [ %.01418.i158.ph, %scalar.ph1752.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.cm, %scalar.ph1752 ], [ %.017.i159.ph, %scalar.ph1752.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.01418.i158 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.by                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.v
  %i.co = add i32 %i.cn, %.017.i159
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !3
  %i.cp = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cp, %i.bw
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1752, !llvm.loop !423

bb.l:                                             ; preds = %._crit_edge.i161
  %i.cq = add i64 %i.bw, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !410
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !407
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.cq)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !424

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !419 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre684 = load ptr, ptr %6, align 8, !tbaa !409
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.cu = phi ptr [ %i.bx, %bb.l ], [ %.pre684, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cv = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !419
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.lcssa1623, ptr %i.cw, align 4, !tbaa !3
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
  %i.da = load i64, ptr %i.c, align 8, !tbaa !419 ; 7 uses
  %i.db = load i64, ptr %i.k, align 8, !tbaa !410
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !407
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.da)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !425

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !410
  %i.de = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %.pre.i.i.i)
  store i64 %i.de, ptr %i.m, align 8, !tbaa !419
  %i.df = load ptr, ptr %5, align 8, !tbaa !409   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.da, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.da, ptr %i.m, align 8, !tbaa !419
  %i.dh = load ptr, ptr %5, align 8, !tbaa !409   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.da, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.da, 0
  br i1 %.not6.i.i, label %.loopexit570, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dj = phi ptr [ %i.dg, %.noexc170 ], [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.df, %.noexc170 ], [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 7 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !409      ; 4 uses
  %10 = ptrtoint ptr %i.dj to i64
  %11 = ptrtoint ptr %i.dk to i64
  %i.dl = sub i64 %10, %11
  %i.dm = add i64 %i.dl, -4                       ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check1664 = icmp ult i64 %i.dm, 44
  %12 = ptrtoaddr ptr %9 to i64
  %i.dp = ptrtoaddr ptr %i.dk to i64
  %i.dq = sub i64 %i.dp, %12
  %diff.check = icmp ugt i64 %i.dq, -32
  %or.cond1775 = select i1 %min.iters.check1664, i1 true, i1 %diff.check
  br i1 %or.cond1775, label %.lr.ph.i.i.preheader, label %vector.ph1665

vector.ph1665:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1667 = and i64 %i.do, 9223372036854775800 ; 3 uses
  %i.dr = shl i64 %n.vec1667, 2                   ; 2 uses
  %i.ds = getelementptr i8, ptr %9, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.dk, i64 %i.dr
  br label %vector.body1668

vector.body1668:                                  ; preds = %vector.body1668, %vector.ph1665
  %index1669 = phi i64 [ 0, %vector.ph1665 ], [ %index.next1673, %vector.body1668 ] ; 2 uses
  %i.du = shl i64 %index1669, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %9, i64 %i.du ; 2 uses
  %next.gep1670 = getelementptr i8, ptr %i.dk, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep1670, i64 16
  %wide.load1671 = load <4 x i32>, ptr %next.gep1670, align 4, !tbaa !3
  %wide.load1672 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !3
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1671, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load1672, ptr %i.dw, align 4, !tbaa !3
  %index.next1673 = add nuw i64 %index1669, 8     ; 2 uses
  %i.dx = icmp eq i64 %index.next1673, %n.vec1667
  br i1 %i.dx, label %middle.block1674, label %vector.body1668, !llvm.loop !426

middle.block1674:                                 ; preds = %vector.body1668
  %cmp.n1675 = icmp eq i64 %i.do, %n.vec1667
  br i1 %cmp.n1675, label %.loopexit570, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1674
  %.08.i.i.ph = phi ptr [ %9, %.lr.ph.i.preheader.i ], [ %i.ds, %middle.block1674 ]
  %.057.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.preheader.i ], [ %i.dt, %middle.block1674 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.dz = load i32, ptr %.057.i.i, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.dz, ptr %.08.i.i, align 4, !tbaa !3
  %.not.i.i169 = icmp eq ptr %i.dy, %i.dj
  br i1 %.not.i.i169, label %.loopexit570, label %.lr.ph.i.i, !llvm.loop !427

.loopexit570:                                     ; preds = %.lr.ph.i.i, %middle.block1674, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.eb = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dk, %middle.block1674 ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !411 ; 2 uses
  store i32 %i.ec, ptr %i.o, align 8, !tbaa !411
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit570
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !419 ; 8 uses
  %i.ee = load i64, ptr %i.p, align 8, !tbaa !410 ; 2 uses
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !407
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.ed)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !425

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !410 ; 2 uses
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !419
  %i.ei = load ptr, ptr %5, align 8, !tbaa !409   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.ed, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.ed, ptr %i.r, align 8, !tbaa !419
  %.idx.i172 = shl nuw nsw i64 %i.ed, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.ed, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.ec, ptr %i.t, align 8, !tbaa !411
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.el = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ee, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.eh, %.noexc182 ], [ %i.ed, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.em = phi ptr [ %i.ej, %.noexc182 ], [ %i.ek, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.en = phi ptr [ %i.ei, %.noexc182 ], [ %i.eb, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 5 uses
  %13 = load ptr, ptr %8, align 8, !tbaa !409     ; 7 uses
  %14 = ptrtoint ptr %i.em to i64
  %15 = ptrtoint ptr %i.en to i64
  %i.eo = sub i64 %14, %15
  %i.ep = add i64 %i.eo, -4                       ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check1681 = icmp ult i64 %i.ep, 44
  %16 = ptrtoaddr ptr %13 to i64
  %i.es = ptrtoaddr ptr %i.en to i64
  %i.et = sub i64 %i.es, %16
  %diff.check1679 = icmp ugt i64 %i.et, -32
  %or.cond1778 = select i1 %min.iters.check1681, i1 true, i1 %diff.check1679
  br i1 %or.cond1778, label %.lr.ph.i.i175.preheader, label %vector.ph1682

vector.ph1682:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1684 = and i64 %i.er, 9223372036854775800 ; 3 uses
  %i.eu = shl i64 %n.vec1684, 2                   ; 2 uses
  %i.ev = getelementptr i8, ptr %13, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.eu
  br label %vector.body1685

vector.body1685:                                  ; preds = %vector.body1685, %vector.ph1682
  %index1686 = phi i64 [ 0, %vector.ph1682 ], [ %index.next1691, %vector.body1685 ] ; 2 uses
  %i.ex = shl i64 %index1686, 2                   ; 2 uses
  %next.gep1687 = getelementptr i8, ptr %13, i64 %i.ex ; 2 uses
  %next.gep1688 = getelementptr i8, ptr %i.en, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep1688, i64 16
  %wide.load1689 = load <4 x i32>, ptr %next.gep1688, align 4, !tbaa !3
  %wide.load1690 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !3
  %i.ez = getelementptr i8, ptr %next.gep1687, i64 16
  store <4 x i32> %wide.load1689, ptr %next.gep1687, align 4, !tbaa !3
  store <4 x i32> %wide.load1690, ptr %i.ez, align 4, !tbaa !3
  %index.next1691 = add nuw i64 %index1686, 8     ; 2 uses
  %i.fa = icmp eq i64 %index.next1691, %n.vec1684
  br i1 %i.fa, label %middle.block1692, label %vector.body1685, !llvm.loop !428

middle.block1692:                                 ; preds = %vector.body1685
  %cmp.n1693 = icmp eq i64 %i.er, %n.vec1684
  br i1 %cmp.n1693, label %.loopexit1772, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1692
  %.08.i.i176.ph = phi ptr [ %13, %.lr.ph.i.preheader.i174 ], [ %i.ev, %middle.block1692 ]
  %.057.i.i177.ph = phi ptr [ %i.en, %.lr.ph.i.preheader.i174 ], [ %i.ew, %middle.block1692 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.fd, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.fb, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.fc = load i32, ptr %.057.i.i177, align 4, !tbaa !3
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.fc, ptr %.08.i.i176, align 4, !tbaa !3
  %.not.i.i178 = icmp eq ptr %i.fb, %i.em
  br i1 %.not.i.i178, label %.loopexit1772, label %.lr.ph.i.i175, !llvm.loop !429

.loopexit1772:                                    ; preds = %.lr.ph.i.i175, %middle.block1692
  %i.fe = load i32, ptr %i.e, align 8, !tbaa !411
  store i32 %i.fe, ptr %i.t, align 8, !tbaa !411
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1772
  %min.iters.check1697 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1697, label %.lr.ph.i185.preheader1843, label %vector.ph1698

vector.ph1698:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1700 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1701

vector.body1701:                                  ; preds = %vector.body1701, %vector.ph1698
  %index1702 = phi i64 [ 0, %vector.ph1698 ], [ %index.next1706, %vector.body1701 ] ; 2 uses
  %vector.recur1703 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1698 ], [ %i.fi, %vector.body1701 ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %index1702 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load1704 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !3 ; 2 uses
  %wide.load1705 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !3 ; 3 uses
  %i.fh = lshr <4 x i32> %wide.load1704, splat (i32 31) ; 2 uses
  %i.fi = lshr <4 x i32> %wide.load1705, splat (i32 31) ; 3 uses
  %i.fj = shufflevector <4 x i32> %vector.recur1703, <4 x i32> %i.fh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fk = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fi, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fl = shl <4 x i32> %wide.load1704, splat (i32 1)
  %i.fm = shl <4 x i32> %wide.load1705, splat (i32 1)
  %i.fn = or disjoint <4 x i32> %i.fl, %i.fj
  %i.fo = or disjoint <4 x i32> %i.fm, %i.fk
  store <4 x i32> %i.fn, ptr %i.ff, align 4, !tbaa !3
  store <4 x i32> %i.fo, ptr %i.fg, align 4, !tbaa !3
  %index.next1706 = add nuw i64 %index1702, 8     ; 2 uses
  %i.fp = icmp eq i64 %index.next1706, %n.vec1700
  br i1 %i.fp, label %middle.block1707, label %vector.body1701, !llvm.loop !430

middle.block1707:                                 ; preds = %vector.body1701
  %vector.recur.extract1708 = extractelement <4 x i32> %i.fi, i64 3 ; 2 uses
  %i.fq = extractelement <4 x i32> %wide.load1705, i64 3
  %cmp.n1709 = icmp eq i64 %.pr, %n.vec1700
  br i1 %cmp.n1709, label %._crit_edge.i189, label %.lr.ph.i185.preheader1843

.lr.ph.i185.preheader1843:                        ; preds = %.lr.ph.i185.preheader, %middle.block1707
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1700, %middle.block1707 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1708, %middle.block1707 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1707
  %.lcssa1630 = phi i32 [ %i.fq, %middle.block1707 ], [ %i.fs, %.lr.ph.i185 ]
  %.lcssa1629 = phi i32 [ %vector.recur.extract1708, %middle.block1707 ], [ %i.ft, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1630, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.r

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1843, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.fw, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1843 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.ft, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1843 ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.01418.i186 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3  ; 3 uses
  %i.ft = lshr i32 %i.fs, 31                      ; 2 uses
  %i.fu = shl i32 %i.fs, 1
  %i.fv = or disjoint i32 %i.fu, %.017.i187
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !3
  %i.fw = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.fw, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !431

bb.r:                                             ; preds = %._crit_edge.i189
  %i.fx = add i64 %.pr, 1                         ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, %i.el
  br i1 %i.fy, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %i.q, align 8, !tbaa !407
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fx)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !424

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !419 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre678 = load ptr, ptr %8, align 8, !tbaa !409
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.ga = phi ptr [ %13, %bb.r ], [ %.pre678, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.fx, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gb = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !419
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gb
  store i32 %.lcssa1629, ptr %i.gc, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1772, %.thread, %.loopexit570
  %.188 = phi ptr [ null, %.loopexit570 ], [ %8, %.thread ], [ %8, %.loopexit1772 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gd = load i128, ptr %0, align 16, !tbaa !417 ; 3 uses
  %i.ge = and i128 %i.gd, 18446744073709551615
  %i.gf = load i64, ptr %i.c, align 8, !tbaa !419 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.gg = load ptr, ptr %5, align 8, !tbaa !409   ; 3 uses
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
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !432

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.gw = phi ptr [ %i.hd, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gg, %.preheader.i.i ]
  %i.gx = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gf, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.hg, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gt, %.preheader.i.i ] ; 2 uses
  %i.gy = trunc i128 %.121.i.i to i32
  %i.gz = add i64 %i.gx, 1                        ; 3 uses
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !410
  %i.hb = icmp ugt i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !407
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.gz)
          to label %.noexc200 unwind label %.loopexit569, !inline_history !433

.noexc200:                                        ; preds = %bb.u
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !419 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !409
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.hd = phi ptr [ %i.gw, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.gz, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.he = phi i64 [ %i.gx, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !419
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.he
end_hunk_0
begin_hunk_1_@_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_:bb.a
  %i.da = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.da
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !47
  %i.de = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.de
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !47
  %i.di = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.di
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !47
  %i.dm = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dm, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !533

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit: ; preds = %._crit_edge.i.i.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !209
  %i.d = zext i32 %i.c to i64
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %3) ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !159    ; 2 uses
  %i.g = lshr i32 %i.f, 3
  %i.h = and i32 %i.g, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.29, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !47
  %i.l = sext i8 %i.k to i64
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.e, %i.m                      ; 4 uses
  %i.o = sub nsw i64 %i.e, %i.n
  %i.p = lshr i32 %i.f, 15
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nuw nsw i64 %i.e, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !116
  %i.v = add i64 %i.u, %2
  %i.w = add i64 %i.v, %i.s                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w), !inline_history !210
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ac = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ac, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 9 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !115
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !106
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.af), !inline_history !534
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.af, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.al = phi i64 [ %i.ae, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.am = load ptr, ptr %.sroa.09.0, align 8, !tbaa !114
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 48, ptr %i.an, align 1, !tbaa !47
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !115
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !106
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ap), !inline_history !534
  %.pre.i.i4.i = load i64, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %.pre2.i.i5.i = add i64 %.pre.i.i4.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i:       ; preds = %bb.f, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre-phi.i.i3.i = phi i64 [ %i.ap, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %.pre2.i.i5.i, %bb.f ]
  %i.au = phi i64 [ %i.ao, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %.pre.i.i4.i, %bb.f ]
  %i.av = load ptr, ptr %.sroa.09.0, align 8, !tbaa !114
  store i64 %.pre-phi.i.i3.i, ptr %i.ad, align 8, !tbaa !116
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 120, ptr %i.aw, align 1, !tbaa !47
  %i.ax = load i64, ptr %4, align 8, !tbaa !166   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !168 ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %i.bc = add i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = load i64, ptr %i.ag, align 8, !tbaa !115
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !106
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc), !inline_history !535
  %.pre.i.i7.i = load i64, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %.pre14.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !115
  %.pre15.i.i.i = add i64 %.pre.i.i7.i, %i.ba     ; 2 uses
  %i.bh = icmp ult i64 %.pre14.i.i.i, %.pre15.i.i.i
  br i1 %i.bh, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i
  %i.bi = phi i64 [ %.pre.i.i7.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.bb, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i ]
  %.pre-phi19.i.i.i = phi i64 [ %.pre15.i.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.bc, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i ]
  store i64 %.pre-phi19.i.i.i, ptr %i.ad, align 8, !tbaa !116
  %i.bj = load ptr, ptr %.sroa.09.0, align 8, !tbaa !114 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.not.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  %i.bl = sext i32 %i.az to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i, %bb.g
  %.012.i.i.i.i = phi i64 [ %i.br, %.split.i.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.bq, %.split.i.i.i.i ], [ %i.bm, %bb.g ]
  %i.bn = and i64 %.012.i.i.i.i, 15
  %i.bo = getelementptr inbounds nuw i8, ptr @.str.27, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !47
  %i.bq = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !47
  %i.br = lshr i64 %.012.i.i.i.i, 4               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i, label %_ZZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.split.i.i.i.i, !llvm.loop !241

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bs = sext i32 %i.az to i64
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 %i.bs ; 2 uses
  br label %.split.i.i18.i.i

.split.i.i18.i.i:                                 ; preds = %.split.i.i18.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i
  %.012.i.i19.i.i = phi i64 [ %i.by, %.split.i.i18.i.i ], [ %i.ax, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i ] ; 2 uses
  %.0.i.i20.i.i = phi ptr [ %i.bx, %.split.i.i18.i.i ], [ %i.bt, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i ]
  %i.bu = and i64 %.012.i.i19.i.i, 15
  %i.bv = getelementptr inbounds nuw i8, ptr @.str.27, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !47
  %i.bx = getelementptr inbounds i8, ptr %.0.i.i20.i.i, i64 -1 ; 2 uses
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !47
  %i.by = lshr i64 %.012.i.i19.i.i, 4             ; 2 uses
  %.not.i.i21.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i21.i.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i.i, label %.split.i.i18.i.i, !llvm.loop !241

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i.i: ; preds = %.split.i.i18.i.i
  %i.bz = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bt, ptr nonnull %.sroa.09.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit

_ZZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %.split.i.i.i.i, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i.i
  %.sroa.014.1.i.i = phi ptr [ %i.bz, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i.i ], [ %.sroa.09.0, %.split.i.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.e, %i.n
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.ca = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.014.1.i.i, i64 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.ca, %bb.h ], [ %.sroa.014.1.i.i, %_ZZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 {
bb.a:
  %3 = ptrtoint ptr %0 to i64                     ; 4 uses
  %4 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !47      ; 5 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.a, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %4 ; 2 uses
  %i.c = sub i64 %4, %3
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  %i.d = zext nneg i8 %i.a to i32
  %i.e = add nsw i32 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i59 = icmp eq ptr %i.f, %1
  br i1 %.not34.i59, label %.critedge.i, label %.lr.ph62

bb.d:                                             ; preds = %.lr.ph62
  %i.g = mul i32 %i.m, 10
  %i.h = zext nneg i8 %i.n to i32
  %i.i = add nsw i32 %i.h, -48
  %i.j = add i32 %i.i, %i.g                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.k, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph62, !llvm.loop !536

.lr.ph62:                                         ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.m = phi i32 [ %i.j, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %.027.i61 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %.028.i60 = phi ptr [ %i.l, %bb.d ], [ %0, %bb.c ]
  %i.n = load i8, ptr %i.l, align 1, !tbaa !47    ; 2 uses
  %i.o = add i8 %i.n, -48
  %or.cond.i = icmp ult i8 %i.o, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !536

..critedge.i_crit_edge:                           ; preds = %.lr.ph62
  br label %.critedge.i, !llvm.loop !536

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i61, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.m, %bb.d ]
  %.lcssa = phi i32 [ %i.m, %..critedge.i_crit_edge ], [ %i.e, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.028.i60, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.l, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.p = ptrtoint ptr %.lcssa.i to i64
  %i.q = sub i64 %i.p, %3                         ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.s = icmp eq i64 %i.q, 10
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = zext i32 %.027.i.lcssa to i64
  %i.u = mul nuw nsw i64 %i.t, 10
  %i.v = load i8, ptr %.028.lcssa.i, align 1, !tbaa !47
  %i.w = sext i8 %i.v to i64
  %i.x = add nsw i64 %i.w, 4294967248
  %i.y = and i64 %i.x, 4294967294
  %i.z = add nuw nsw i64 %i.y, %i.u
  %i.aa = icmp samesign ult i64 %i.z, 2147483648
  br i1 %i.aa, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ab, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ac = icmp eq ptr %.037, %1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ad = load i8, ptr %.037, align 1, !tbaa !47
  switch i8 %i.ad, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.46) #35
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !537, !nonnull !83, !align !255
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !123
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.50) #35
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.af, align 8, !tbaa !123
  br label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit

bb.m:                                             ; preds = %bb.a
  %i.ai = and i8 %i.a, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond10.i = icmp ult i8 %i.aj, 26
  %i.ak = icmp eq i8 %i.a, 95
  %i.al = or i1 %i.ak, %or.cond10.i
  br i1 %i.al, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.am = sub i64 %4, %3
  %scevgep = getelementptr i8, ptr %0, i64 %i.am  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not57 = icmp eq ptr %i.an, %1
  br i1 %.not57, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.46) #35
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ao, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !538

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ap = phi ptr [ %i.ao, %.critedge4 ], [ %i.an, %.critedge4.preheader ] ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !47  ; 3 uses
  %i.ar = and i8 %i.aq, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i32 = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.aq, 95
  %i.au = or i1 %i.at, %or.cond10.i32
  %i.av = add i8 %i.aq, -48
  %or.cond31 = icmp ult i8 %i.av, 10
  %or.cond38 = or i1 %or.cond31, %i.au
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !538

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !538

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa44 = phi ptr [ %i.ap, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.aw = ptrtoint ptr %.lcssa44 to i64
  %i.ax = sub i64 %i.aw, %3                       ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !537, !nonnull !83, !align !255 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 -1, ptr %i.az, align 8, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !148 ; 2 uses
  %i.bc = and i64 %i.bb, 4611686018427387904
  %.not13.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not13.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp slt i64 %i.bb, 0
  %.v.i.i.i.i = select i1 %i.bf, i64 -32, i64 -16
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %.v.i.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !539 ; 2 uses
  %.not14.not.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not14.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !542
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.bk = add nuw i64 %.01115.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bk, %i.bi
  br i1 %exitcond.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %bb.q, !llvm.loop !543

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.01115.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.01115.i.i.i.i ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !544 ; 2 uses
  %i.bn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #28 ; 2 uses
  %i.bo = tail call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.ax)
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bm, ptr nonnull %0, i64 %i.bo)
  %.not.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.bp = icmp eq i64 %i.bn, %i.ax
  %i.bq = select i1 %.not.i.i.i.i.i.i, i1 %i.bp, i1 false
  br i1 %i.bq, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, label %bb.p

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i: ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !546 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i: ; preds = %bb.p, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %bb.o, %.critedge
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.44) #35
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit
  %.sink = phi i32 [ %.021, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %i.bs, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %.022 = phi ptr [ %.037, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %.lcssa44, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.bu, align 8, !tbaa !171
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail14format_handlerIcE15on_format_specsEiPKcS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.64, align 8             ; 5 uses
  %5 = alloca %class.anon.64, align 8             ; 5 uses
  %6 = alloca %class.anon.44, align 8             ; 5 uses
  %7 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %8 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v12::detail::write_int_arg.34", align 16 ; 5 uses
  %10 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %11 = alloca %"struct.fmt::v12::detail::write_int_arg.34", align 16 ; 5 uses
  %12 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %13 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %14 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %15 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %16 = alloca %"struct.fmt::v12::detail::dynamic_format_specs", align 8 ; 54 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !148, !noalias !547 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %1, %i.e
  br i1 %i.f, label %_ZNK3fmt3v127context3argEi.exit, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %1, 14
  br i1 %i.g, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %1, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %i.c, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread111

_ZNK3fmt3v127context3argEi.exit.thread111:        ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47, !noalias !547
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %.sroa.083.0.copyload98 = load i128, ptr %i.p, align 16, !tbaa !47 ; 6 uses
  %i.q = trunc i128 %.sroa.083.0.copyload98 to i64
  %i.r = lshr i128 %.sroa.083.0.copyload98, 64
  %i.s = trunc nuw i128 %i.r to i64
  %i.t = trunc i128 %.sroa.083.0.copyload98 to i80
  %i.u = trunc i128 %.sroa.083.0.copyload98 to i32
  %i.v = trunc i128 %.sroa.083.0.copyload98 to i8
  br label %bb.e

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47, !noalias !547
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %.sroa.083.0.copyload = load i128, ptr %i.z, align 16, !tbaa !47 ; 6 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 16, !tbaa !117 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0.copyload, 0
  %i.aa = trunc i128 %.sroa.083.0.copyload to i64
  %i.ab = lshr i128 %.sroa.083.0.copyload, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = trunc i128 %.sroa.083.0.copyload to i80
  %i.ae = trunc i128 %.sroa.083.0.copyload to i32
  %i.af = trunc i128 %.sroa.083.0.copyload to i8
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.e

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.b, %bb.d, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.44) #35
  unreachable

bb.e:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread111, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.083.0..sroa.083.0..sroa.083.0.95 = phi i32 [ %i.u, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ae, %_ZNK3fmt3v127context3argEi.exit ] ; 7 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.92 = phi i64 [ %i.q, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.aa, %_ZNK3fmt3v127context3argEi.exit ] ; 13 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.84 = phi i128 [ %.sroa.083.0.copyload98, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %.sroa.083.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 6 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.97 = phi i8 [ %i.v, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.af, %_ZNK3fmt3v127context3argEi.exit ] ; 3 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.85.in = phi i80 [ %i.t, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ad, %_ZNK3fmt3v127context3argEi.exit ]
  %.sroa.083.8..sroa.083.8..sroa.083.8.101 = phi i64 [ %i.s, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ac, %_ZNK3fmt3v127context3argEi.exit ] ; 2 uses
  %.sroa.23.0113 = phi i32 [ %i.l, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %.sroa.23.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 3 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.85 = bitcast i80 %.sroa.083.0..sroa.083.0..sroa.083.0.85.in to x86_fp80
  %.sroa.083.0..sroa.083.0..sroa.083.0.88 = bitcast i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92 to double
  %.sroa.083.0..sroa.083.0..sroa.083.0.93 = bitcast i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95 to float
  %.sroa.083.0..sroa.083.0..sroa.083.0.89 = inttoptr i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92 to ptr ; 4 uses
  %.not.i = icmp eq i32 %.sroa.23.0113, 15
  br i1 %.not.i, label %bb.f, label %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.083.8..sroa.083.8..sroa.083.8. = inttoptr i64 %.sroa.083.8..sroa.083.8..sroa.083.8.101 to ptr
  %i.ag = load ptr, ptr %0, align 8, !tbaa !295   ; 2 uses
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  store ptr %i.ak, ptr %0, align 8, !tbaa !295
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !296
  %i.an = sub i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.al, align 8, !tbaa !296
  tail call void %.sroa.083.8..sroa.083.8..sroa.083.8.(ptr noundef %.sroa.083.0..sroa.083.0..sroa.083.0.89, ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !552
  %i.ao = load ptr, ptr %0, align 8, !tbaa !295
  br label %bb.at

_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store i32 32768, ptr %16, align 8, !tbaa !159
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i8 32, ptr %i.aq, align 4, !tbaa !47
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ar, align 4, !tbaa !161
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !47
  %i.at = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sroa.23.0113)
  %i.au = load i32, ptr %16, align 8, !tbaa !159  ; 2 uses
  %i.av = and i32 %i.au, 960
  %.not114 = icmp eq i32 %i.av, 0
  br i1 %.not114, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ax = lshr i32 %i.au, 6
  %i.ay = and i32 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.ba = load i32, ptr %16, align 8, !tbaa !159
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = and i32 %i.bb, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %.sroa.0.0.copyload.i48 = load ptr, ptr %i.a, align 8, !tbaa !119 ; 23 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i49 = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 10 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !546, !noalias !568 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.am = icmp sgt i64 %i.t, -1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc i64 %i.t to i32
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ap
  br label %_ZNK3fmt3v127context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = icmp samesign ugt i32 %i.ak, 14
  br i1 %i.ar, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.ak, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.t, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.aq, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !47 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc73 = trunc i128 %storemerge to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !117 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.44) #35
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !47 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.57) #35
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.56) #35
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !573
  %i.b = load i8, ptr %0, align 1, !tbaa !47      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %6 = ptrtoint ptr %1 to i64                     ; 2 uses
  %7 = ptrtoint ptr %0 to i64                     ; 2 uses
  %scevgep.i = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %6 ; 2 uses
  %i.d = sub i64 %6, %7
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.e = zext nneg i8 %i.b to i32
  %i.f = add nsw i32 %i.e, -48                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.g, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = mul i32 %i.n, 10
  %i.i = zext nneg i8 %i.o to i32
  %i.j = add nsw i32 %i.i, -48
  %i.k = add i32 %i.j, %i.h                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.l, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !536

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.g, %bb.b ] ; 4 uses
  %i.n = phi i32 [ %i.k, %bb.c ], [ %i.f, %bb.b ] ; 4 uses
  %.027.i37 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %.028.i36 = phi ptr [ %i.m, %bb.c ], [ %0, %bb.b ]
  %i.o = load i8, ptr %i.m, align 1, !tbaa !47    ; 2 uses
  %i.p = add i8 %i.o, -48
  %or.cond.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !536

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !536

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i37, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.lcssa = phi i32 [ %i.n, %..critedge.i_crit_edge ], [ %i.f, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %.028.lcssa.i = phi ptr [ %.028.i36, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.m, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.q = ptrtoint ptr %.lcssa.i to i64
  %i.r = sub i64 %i.q, %7                         ; 2 uses
  %i.s = icmp slt i64 %i.r, 10
  br i1 %i.s, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.t = icmp eq i64 %i.r, 10
  br i1 %i.t, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = zext i32 %.027.i.lcssa to i64
  %i.v = mul nuw nsw i64 %i.u, 10
  %i.w = load i8, ptr %.028.lcssa.i, align 1, !tbaa !47
  %i.x = sext i8 %i.w to i64
  %i.y = add nsw i64 %i.x, 4294967248
  %i.z = and i64 %i.y, 4294967294
  %i.aa = add nuw nsw i64 %i.z, %i.v
  %i.ab = icmp samesign ugt i64 %i.aa, 2147483647
  %i.ac = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.41) #35
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !3
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ad = icmp eq i8 %i.b, 123
  br i1 %i.ad, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !47
  switch i8 %i.af, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !123 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.49) #35
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.aj = add nuw nsw i32 %i.ah, 1
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !123
  store i32 %i.ah, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !573
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %4, ptr %5, align 8, !tbaa !575
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ak, align 8, !tbaa !577
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.al, align 8, !tbaa !39
  %i.am = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.ae, %bb.h ], [ %i.am, %bb.l ], [ %i.ae, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load i8, ptr %.0, align 1, !tbaa !47
  %i.ao = icmp eq i8 %i.an, 125
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !573
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.46) #35
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.ap, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %3 = ptrtoint ptr %0 to i64                     ; 4 uses
  %4 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !47      ; 5 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.a, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %4 ; 2 uses
  %i.c = sub i64 %4, %3
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  %i.d = zext nneg i8 %i.a to i32
  %i.e = add nsw i32 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.f, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.g = mul i32 %i.m, 10
  %i.h = zext nneg i8 %i.n to i32
  %i.i = add nsw i32 %i.h, -48
  %i.j = add i32 %i.i, %i.g                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.k, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !536

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.m = phi i32 [ %i.j, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %.027.i49 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %.028.i48 = phi ptr [ %i.l, %bb.d ], [ %0, %bb.c ]
  %i.n = load i8, ptr %i.l, align 1, !tbaa !47    ; 2 uses
  %i.o = add i8 %i.n, -48
  %or.cond.i = icmp ult i8 %i.o, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !536

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !536

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i49, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.m, %bb.d ]
  %.lcssa = phi i32 [ %i.m, %..critedge.i_crit_edge ], [ %i.e, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.028.i48, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.l, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.p = ptrtoint ptr %.lcssa.i to i64
  %i.q = sub i64 %i.p, %3                         ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.s = icmp eq i64 %i.q, 10
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = zext i32 %.027.i.lcssa to i64
  %i.u = mul nuw nsw i64 %i.t, 10
  %i.v = load i8, ptr %.028.lcssa.i, align 1, !tbaa !47
  %i.w = sext i8 %i.v to i64
  %i.x = add nsw i64 %i.w, 4294967248
  %i.y = and i64 %i.x, 4294967294
  %i.z = add nuw nsw i64 %i.y, %i.u
  %i.aa = icmp samesign ult i64 %i.z, 2147483648
  br i1 %i.aa, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ab, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ac = icmp eq ptr %.037, %1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ad = load i8, ptr %.037, align 1, !tbaa !47
  switch i8 %i.ad, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.46) #35
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !579, !nonnull !83, !align !255
  store i32 %.021, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !581, !nonnull !83, !align !234
  store i32 1, ptr %i.ah, align 4, !tbaa !573
  %i.ai = load ptr, ptr %2, align 8, !tbaa !582, !nonnull !83, !align !255
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !123
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.50) #35
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.aj, align 8, !tbaa !123
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.am = and i8 %i.a, -33
  %i.an = add i8 %i.am, -65
  %or.cond10.i = icmp ult i8 %i.an, 26
  %i.ao = icmp eq i8 %i.a, 95
  %i.ap = or i1 %i.ao, %or.cond10.i
  br i1 %i.ap, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.aq = sub i64 %4, %3
  %scevgep = getelementptr i8, ptr %0, i64 %i.aq  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.ar, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.46) #35
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.as, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !583

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.at = phi ptr [ %i.as, %.critedge4 ], [ %i.ar, %.critedge4.preheader ] ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !47  ; 3 uses
  %i.av = and i8 %i.au, -33
  %i.aw = add i8 %i.av, -65
  %or.cond10.i32 = icmp ult i8 %i.aw, 26
  %i.ax = icmp eq i8 %i.au, 95
  %i.ay = or i1 %i.ax, %or.cond10.i32
  %i.az = add i8 %i.au, -48
  %or.cond31 = icmp ult i8 %i.az, 10
  %or.cond38 = or i1 %or.cond31, %i.ay
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !583

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !583

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.at, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.ba = ptrtoint ptr %.lcssa40 to i64
  %i.bb = sub i64 %i.ba, %3
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !579, !nonnull !83, !align !255 ; 2 uses
  store ptr %0, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bb, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !581, !nonnull !83, !align !234
  store i32 2, ptr %i.bf, align 4, !tbaa !573
  %i.bg = load ptr, ptr %2, align 8, !tbaa !582, !nonnull !83, !align !255
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 -1, ptr %i.bh, align 8, !tbaa !123
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #19 {
bb.a:
  %4 = alloca %class.anon.28, align 1             ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i32, ptr %3, align 4, !tbaa !159    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !158

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.p = add i32 %.0.lcssa.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !47
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %.str.26..str.27.i = select i1 %.not37, ptr @.str.27, ptr @.str.26
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i64 [ %i.ae, %.split.i ], [ %1, %bb.e ] ; 2 uses
  %.0.i6.idx = phi i64 [ %.0.i6.add, %.split.i ], [ 64, %bb.e ]
  %i.ab = and i64 %.012.i, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %.str.26..str.27.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !47
  %.0.i6.add = add nsw i64 %.0.i6.idx, -1         ; 4 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i6.add
  store i8 %i.ad, ptr %.ptr42, align 1, !tbaa !47
  %i.ae = lshr i64 %.012.i, 4                     ; 2 uses
  %.not.i7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i7, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !241

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.af = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.af, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ag = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i8 = icmp eq i32 %2, 0
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = select i1 %.not.i8, i32 %i.ag, i32 %i.ah
  %i.aj = or i32 %i.ai, %2
  %i.ak = add i32 %i.aj, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i64 [ %i.ao, %.split.us.i ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 64, %bb.a ] ; 2 uses
  %i.al = trunc i64 %.012.us.i to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.an, ptr %.ptr41, align 1, !tbaa !47
  %i.ao = lshr i64 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i64 %i.ao, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, label %.split.us.i, !llvm.loop !241

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9: ; preds = %.split.us.i
  %i.ap = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9
  %gepdiff = sub nsw i64 65, %.0.us.i.idx
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !161
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp sge i64 %gepdiff, %i.as
  %i.au = icmp ne i64 %1, 0
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i10, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i11:                                    ; preds = %bb.a, %.split.us.i11
  %.012.us.i12 = phi i64 [ %i.bb, %.split.us.i11 ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i13.idx = phi i64 [ %.0.us.i13.add, %.split.us.i11 ], [ 64, %bb.a ]
  %i.ay = trunc i64 %.012.us.i12 to i8
  %i.az = and i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 48
  %.0.us.i13.add = add nsw i64 %.0.us.i13.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i13.add
  store i8 %i.ba, ptr %.ptr, align 1, !tbaa !47
  %i.bb = lshr i64 %.012.us.i12, 1                ; 2 uses
  %.not.us.i14 = icmp eq i64 %i.bb, 0
  br i1 %.not.us.i14, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, label %.split.us.i11, !llvm.loop !241

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15: ; preds = %.split.us.i11
  %i.bc = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.bc, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %i.bd = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %i.bd, 0
  %i.be = select i1 %.not40, i32 25136, i32 16944 ; 2 uses
  %.not.i16 = icmp eq i32 %2, 0
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = select i1 %.not.i16, i32 %i.be, i32 %i.bf
  %i.bh = or i32 %i.bg, %2
  %i.bi = add i32 %i.bh, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bj = trunc i64 %1 to i8
  %i.bk = and i32 %i.b, 7
  %i.bl = icmp eq i32 %i.bk, 1
  %i.bm = zext i1 %i.bl to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i8 %i.bm, ptr %4, align 1, !tbaa !206
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !208
  %i.bo = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %i.ak, %bb.f ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %i.ax, %bb.h ], [ %2, %bb.g ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %i.bi, %bb.i ], [ %2, %bb.c ], [ %2, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i13.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %.0.i6.add, %bb.f ], [ %.0.i6.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %.0.us.i13.add, %bb.i ], [ %i.q, %bb.c ], [ %i.y, %bb.d ] ; 5 uses
  %i.bp = trunc i64 %.0.i.idx to i32
  %i.bq = sub i32 64, %i.bp                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !209 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !161 ; 4 uses
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = icmp eq i32 %i.bw, 0
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.s, align 8, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !115
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02532.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad), !inline_history !211
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !116 ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !115
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.027.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.026.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !114 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.027.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !47
  %wide.load41 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !47
  store <16 x i8> %wide.load41, ptr %i.aq, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !682

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index44
  %wide.load45 = load <4 x i8>, ptr %i.as, align 1, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index44
  store <4 x i8> %wide.load45, ptr %i.at, align 1, !tbaa !47
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !683

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %.026.i.i, %n.vec43
  br i1 %cmp.n47, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !47
  %i.ay = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !684

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.prol ]
  %i.az = sub i64 %.030.i.i.ph, %.026.i.i
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.s, align 8, !tbaa !116
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bb = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.f ]
  %i.bc = add i64 %i.bb, %.026.i.i                ; 2 uses
  store i64 %i.bc, ptr %i.s, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !189

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !47
  %i.bh = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !47
  %i.bl = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !47
  %i.bp = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !47
  %i.bt = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bt, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !685

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !267 ; 3 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bv = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.not12 = icmp eq ptr %i.bu, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !686

.loopexit:                                        ; preds = %bb.g, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bv, %bb.g ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !116 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !115
  %i.cb = icmp ugt i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

bb.h:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !106
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.by), !inline_history !183
  %.pre.i.i16 = load i64, ptr %i.bw, align 8, !tbaa !116 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

_ZN3fmt3v1214basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.h
  %.pre-phi.i.i15 = phi i64 [ %i.by, %.loopexit ], [ %.pre2.i.i17, %bb.h ]
  %i.ce = phi i64 [ %i.bx, %.loopexit ], [ %.pre.i.i16, %bb.h ]
  %i.cf = load ptr, ptr %.sroa.022.127, align 8, !tbaa !114
  store i64 %.pre-phi.i.i15, ptr %i.bw, align 8, !tbaa !116
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 34, ptr %i.cg, align 1, !tbaa !47
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %0, i64 %1, ptr noundef byval(%class.anon.83) align 8 %2) local_unnamed_addr #0 {
bb.a:
  %3 = ptrtoint ptr %0 to i64
  %4 = alloca %class.anon.87, align 8             ; 5 uses
  %i.a = alloca [7 x i8], align 1                 ; 11 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !687
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.bp, %bb.d ]   ; 8 uses
  %.not30 = icmp ult ptr %.0, %i.e
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %.0, align 1, !tbaa !47
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.61, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !47
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.0, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47    ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47  ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !47  ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i32 64, i32 0
  %.mask.i.i = and i32 %i.an, 2147481600
  %i.as = icmp eq i32 %.mask.i.i, 55296
  %i.at = select i1 %i.as, i32 128, i32 0
  %i.au = icmp samesign ugt i32 %i.an, 1114111
  %i.av = select i1 %i.au, i32 256, i32 0
  %i.aw = lshr i8 %i.v, 2
  %i.ax = and i8 %i.aw, 48
  %i.ay = lshr i8 %i.ab, 4
  %i.az = and i8 %i.ay, 12
  %i.ba = lshr i8 %i.ah, 6
  %i.bb = or disjoint i8 %i.az, %i.ax
  %i.bc = or disjoint i8 %i.bb, %i.ba
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ar, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.av
  %i.bg = or disjoint i32 %i.bf, %i.at
  %i.bh = xor i32 %i.bg, 42
  %i.bi = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.l
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = lshr i32 %i.bh, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0                  ; 3 uses
  %i.bl = select i1 %.not.i, i32 %i.an, i32 -1
  %i.bm = add nsw i64 %i.o, %i.l
  %i.bn = select i1 %.not.i, i64 %i.bm, i64 1
  %i.bo = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %i.bl, ptr nonnull %.0, i64 %i.bn)
  %i.bp = select i1 %.not.i, ptr %i.p, ptr %i.u
  br i1 %i.bo, label %bb.c, label %.thread, !llvm.loop !688

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.0, %bb.c ]     ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 8 uses
  %i.bu = icmp eq ptr %i.bq, %.2
  br i1 %i.bu, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bt, 4
  %i.bv = sub i64 %i.bs, %i.b
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond62 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond62, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.bt, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bt, 28
  %n.vec = and i64 %i.bt, -32                     ; 5 uses
  %i.bw = getelementptr i8, ptr %i.a, i64 %n.vec
  %i.bx = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !47
  %wide.load50 = load <16 x i8>, ptr %i.by, align 1, !tbaa !47
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !47
  store <16 x i8> %wide.load50, ptr %i.bz, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.bt, -4                    ; 4 uses
  %i.cb = getelementptr i8, ptr %i.a, i64 %n.vec53
  %i.cc = getelementptr i8, ptr %.2, i64 %n.vec53
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.a, i64 %index54
  %next.gep56 = getelementptr i8, ptr %.2, i64 %index54
  %wide.load57 = load <4 x i8>, ptr %next.gep56, align 1, !tbaa !47
  store <4 x i8> %wide.load57, ptr %next.gep55, align 1, !tbaa !47
  %index.next58 = add nuw i64 %index54, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !690

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.bt, %n.vec53
  br i1 %cmp.n59, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 3 uses
  %i.ce = add i64 %1, %3                          ; 2 uses
  %.057.i.ph64 = ptrtoint ptr %.057.i.ph to i64   ; 2 uses
  %i.cf = sub i64 %i.ce, %.057.i.ph64
  %xtraiter = and i64 %i.cf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ci, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cg, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ch = load i8, ptr %.057.i.prol, align 1, !tbaa !47
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ch, ptr %.08.i.prol, align 1, !tbaa !47
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !691

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cg, %.lr.ph.i.prol ]
  %i.cj = sub i64 %.057.i.ph64, %i.ce
  %i.ck = icmp ugt i64 %i.cj, -8
  br i1 %i.ck, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.di, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cm = load i8, ptr %.057.i, align 1, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cm, ptr %.08.i, align 1, !tbaa !47
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !47
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.de = load i8, ptr %i.da, align 1, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !47
  %.not.i33.7 = icmp eq ptr %i.dg, %i.bq
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !692

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  %.022 = phi ptr [ %.123, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %i.a, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 7 uses
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 2 uses
  %i.dk = load i8, ptr %.022, align 1, !tbaa !47
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = lshr i32 %i.dl, 3                       ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @.str.61, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !47
  %i.dq = sext i8 %i.dp to i64                    ; 6 uses
  %i.dr = getelementptr inbounds i8, ptr %.022, i64 %i.dq
  %.not.i.i34 = lshr i32 -2130771968, %i.dm
  %i.ds = and i32 %.not.i.i34, 1
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dq
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = and i32 %i.dw, %i.dl
  %i.dy = shl nuw nsw i32 %i.dx, 18
  %i.dz = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !47  ; 2 uses
  %i.eb = and i8 %i.ea, 63
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 12
  %i.ee = or disjoint i32 %i.ed, %i.dy
  %i.ef = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !47  ; 2 uses
  %i.eh = and i8 %i.eg, 63
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 6
  %i.ek = or disjoint i32 %i.ej, %i.ee
  %i.el = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !47  ; 2 uses
  %i.en = and i8 %i.em, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = or disjoint i32 %i.ek, %i.eo
  %i.eq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dq
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3
  %i.es = lshr i32 %i.ep, %i.er                   ; 4 uses
  %i.et = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dq
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = icmp ult i32 %i.es, %i.eu
  %i.ew = select i1 %i.ev, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.es, 2147481600
  %i.ex = icmp eq i32 %.mask.i.i35, 55296
  %i.ey = select i1 %i.ex, i32 128, i32 0
  %i.ez = icmp samesign ugt i32 %i.es, 1114111
  %i.fa = select i1 %i.ez, i32 256, i32 0
  %i.fb = lshr i8 %i.ea, 2
  %i.fc = and i8 %i.fb, 48
  %i.fd = lshr i8 %i.eg, 4
  %i.fe = and i8 %i.fd, 12
  %i.ff = lshr i8 %i.em, 6
  %i.fg = or disjoint i8 %i.fe, %i.fc
  %i.fh = or disjoint i8 %i.fg, %i.ff
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.ew, %i.fi
  %i.fk = or disjoint i32 %i.fj, %i.fa
  %i.fl = or disjoint i32 %i.fk, %i.ey
  %i.fm = xor i32 %i.fl, 42
  %i.fn = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dq
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = lshr i32 %i.fm, %i.fo
  %.not.i36 = icmp eq i32 %i.fp, 0                ; 3 uses
  %i.fq = select i1 %.not.i36, i32 %i.es, i32 -1
  %i.fr = add nsw i64 %i.dt, %i.dq
  %i.fs = select i1 %.not.i36, i64 %i.fr, i64 1
  %i.ft = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %i.fq, ptr %.3, i64 %i.fs) ; 3 uses
  %i.fu = select i1 %.not.i36, ptr %i.du, ptr %i.dz ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %.022 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.123 = select i1 %i.ft, ptr %i.fu, ptr %.022   ; 2 uses
  %.4.idx = select i1 %i.ft, i64 %i.fx, i64 0
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %.4.idx
  %i.fy = icmp ult ptr %.123, %i.dj
  %or.cond = select i1 %i.ft, i1 %i.fy, i1 false
  br i1 %or.cond, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.e, !llvm.loop !693

bb.e:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !209
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !159    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.28, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !116
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !115
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !210
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !675, !range !82, !noundef !83
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !677
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !122
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !53
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !295 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !677 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.by, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02532.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !106
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az), !inline_history !694
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !116 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.027.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !114 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.027.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <16 x i8>, ptr %i.bj, align 1, !tbaa !47
  %wide.load36 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %wide.load, ptr %i.bl, align 1, !tbaa !47
  store <16 x i8> %wide.load36, ptr %i.bm, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !695

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bp, align 1, !tbaa !47
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !696

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %.026.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !47
  %i.bu = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !697

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !116
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.bx = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.i ]
  %i.by = add i64 %i.bx, %.026.i.i.i              ; 2 uses
  store i64 %i.by, ptr %i.ao, align 8, !tbaa !116
  %i.bz = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !189

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !47
  %i.cd = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !47
  %i.ch = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !47
  %i.cl = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !47
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !47
  %i.cp = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cp, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !698

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cq = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cq, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %3 = ptrtoint ptr %0 to i64
  %i.a = alloca [7 x i8], align 1                 ; 11 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.055 = phi ptr [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.f = load i8, ptr %.055, align 1, !tbaa !47
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.61, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !47
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.055, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47    ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.055, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47  ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.055, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !47  ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i32 64, i32 0
  %.mask.i.i = and i32 %i.an, 2147481600
  %i.as = icmp eq i32 %.mask.i.i, 55296
  %i.at = select i1 %i.as, i32 128, i32 0
  %i.au = icmp samesign ugt i32 %i.an, 1114111
  %i.av = select i1 %i.au, i32 256, i32 0
  %i.aw = lshr i8 %i.v, 2
  %i.ax = and i8 %i.aw, 48
  %i.ay = lshr i8 %i.ab, 4
  %i.az = and i8 %i.ay, 12
  %i.ba = lshr i8 %i.ah, 6
  %i.bb = or disjoint i8 %i.az, %i.ax
  %i.bc = or disjoint i8 %i.bb, %i.ba
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ar, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.av
  %i.bg = or disjoint i32 %i.bf, %i.at
  %i.bh = xor i32 %i.bg, 42
  %i.bi = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.l
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = lshr i32 %i.bh, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0                  ; 3 uses
  %i.bl = select i1 %.not.i, i32 %i.an, i32 -1    ; 4 uses
  %i.bm = icmp ult i32 %i.bl, 32
  br i1 %i.bm, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bl, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bn = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bl)
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bo = add nsw i64 %i.o, %i.l
  %i.bp = select i1 %.not.i, i64 %i.bo, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.055, i64 %i.bp
  store ptr %.055, ptr %2, align 8, !tbaa !122
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !122
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !3
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.br = select i1 %.not.i, ptr %i.p, ptr %i.u   ; 3 uses
  %.not30 = icmp ult ptr %i.br, %i.e
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !699

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq ptr %i.bs, %.2
  br i1 %i.bw, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 4
  %i.bx = sub i64 %i.bu, %i.b
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bv, 28
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.by = getelementptr i8, ptr %i.a, i64 %n.vec
  %i.bz = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep106, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep106, align 1, !tbaa !47
  %wide.load107 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !47
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !47
  store <16 x i8> %wide.load107, ptr %i.cb, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !700

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.bv, -4                   ; 4 uses
  %i.cd = getelementptr i8, ptr %i.a, i64 %n.vec110
  %i.ce = getelementptr i8, ptr %.2, i64 %n.vec110
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %next.gep112 = getelementptr i8, ptr %i.a, i64 %index111
  %next.gep113 = getelementptr i8, ptr %.2, i64 %index111
  %wide.load114 = load <4 x i8>, ptr %next.gep113, align 1, !tbaa !47
  store <4 x i8> %wide.load114, ptr %next.gep112, align 1, !tbaa !47
  %index.next115 = add nuw i64 %index111, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !701

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.bv, %n.vec110
  br i1 %cmp.n116, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 3 uses
  %i.cg = add i64 %1, %3                          ; 2 uses
  %.057.i.ph135 = ptrtoint ptr %.057.i.ph to i64  ; 2 uses
  %i.ch = sub i64 %i.cg, %.057.i.ph135
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ci, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.057.i.prol, align 1, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cj, ptr %.08.i.prol, align 1, !tbaa !47
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !702

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %i.cl = sub i64 %.057.i.ph135, %i.cg
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.di, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.co = load i8, ptr %.057.i, align 1, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.co, ptr %.08.i, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !47
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !47
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !47
  %.not.i33.7 = icmp eq ptr %i.di, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !703

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.022 = phi ptr [ %i.fy, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.a, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %i.dm = load i8, ptr %.022, align 1, !tbaa !47
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  %i.do = lshr i32 %i.dn, 3                       ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @.str.61, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !47
  %i.ds = sext i8 %i.dr to i64                    ; 6 uses
  %i.dt = getelementptr inbounds i8, ptr %.022, i64 %i.ds
  %.not.i.i34 = lshr i32 -2130771968, %i.do
  %i.du = and i32 %.not.i.i34, 1
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = and i32 %i.dy, %i.dn
  %i.ea = shl nuw nsw i32 %i.dz, 18
  %i.eb = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !47  ; 2 uses
  %i.ed = and i8 %i.ec, 63
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 12
  %i.eg = or disjoint i32 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !47  ; 2 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 6
  %i.em = or disjoint i32 %i.el, %i.eg
  %i.en = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !47  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.em, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.ds
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = lshr i32 %i.er, %i.et                   ; 4 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.ds
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = icmp ult i32 %i.eu, %i.ew
  %i.ey = select i1 %i.ex, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.eu, 2147481600
  %i.ez = icmp eq i32 %.mask.i.i35, 55296
  %i.fa = select i1 %i.ez, i32 128, i32 0
  %i.fb = icmp samesign ugt i32 %i.eu, 1114111
  %i.fc = select i1 %i.fb, i32 256, i32 0
  %i.fd = lshr i8 %i.ec, 2
  %i.fe = and i8 %i.fd, 48
  %i.ff = lshr i8 %i.ei, 4
  %i.fg = and i8 %i.ff, 12
  %i.fh = lshr i8 %i.eo, 6
  %i.fi = or disjoint i8 %i.fg, %i.fe
  %i.fj = or disjoint i8 %i.fi, %i.fh
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.ey, %i.fk
  %i.fm = or disjoint i32 %i.fl, %i.fc
  %i.fn = or disjoint i32 %i.fm, %i.fa
  %i.fo = xor i32 %i.fn, 42
  %i.fp = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.ds
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = lshr i32 %i.fo, %i.fq
  %.not.i36 = icmp eq i32 %i.fr, 0                ; 3 uses
  %i.fs = select i1 %.not.i36, i32 %i.eu, i32 -1  ; 4 uses
  %i.ft = icmp ult i32 %i.fs, 32
  br i1 %i.ft, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  switch i32 %i.fs, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41:    ; preds = %switch.early.test.i.i.i37
  %i.fu = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.fs)
  br i1 %i.fu, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.fv = add nsw i64 %i.dv, %i.ds
  %i.fw = select i1 %.not.i36, i64 %i.fv, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fw
  store ptr %.3, ptr %2, align 8, !tbaa !122
  store ptr %i.fx, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !tbaa !122
  store i32 %i.fs, ptr %.sroa.5.0..sroa_idx.i.i40, align 8, !tbaa !3
  br label %.loopexit73

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.fy = select i1 %.not.i36, ptr %i.dw, ptr %i.eb ; 3 uses
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %.022 to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %i.gb
  %i.gc = icmp ult ptr %i.fy, %i.dl
  br i1 %i.gc, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.loopexit73, !llvm.loop !704

.loopexit73:                                      ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, %.loopexit73, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr %2, i64 %3) local_unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::counting_buffer", align 8 ; 9 uses
  %5 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !705, !nonnull !83
  %i.b = load i8, ptr %i.a, align 1, !tbaa !315, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 32
  br i1 %i.d, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.b
  switch i32 %1, label %_ZN3fmt3v126detail12needs_escapeEj.exit [
    i32 127, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
    i32 92, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
    i32 34, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit:          ; preds = %switch.early.test.i
  %i.e = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %1)
  br i1 %i.e, label %bb.h, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread

_ZN3fmt3v126detail12needs_escapeEj.exit.thread:   ; preds = %bb.b, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_ZN3fmt3v126detail12needs_escapeEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
end_hunk_3
