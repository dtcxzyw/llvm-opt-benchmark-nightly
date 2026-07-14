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
  %9 = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dk to i64
  %10 = load ptr, ptr %7, align 8, !tbaa !409     ; 4 uses
  %11 = add i64 %9, -4
  %12 = sub i64 %11, %i.dl                        ; 2 uses
  %i.dm = lshr i64 %12, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check1664 = icmp ult i64 %12, 44
  %i.do = ptrtoaddr ptr %10 to i64
  %i.dp = ptrtoaddr ptr %i.dk to i64
  %i.dq = sub i64 %i.dp, %i.do
  %diff.check = icmp ugt i64 %i.dq, -32
  %or.cond1775 = select i1 %min.iters.check1664, i1 true, i1 %diff.check
  br i1 %or.cond1775, label %.lr.ph.i.i.preheader, label %vector.ph1665

vector.ph1665:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1667 = and i64 %i.dn, 9223372036854775800 ; 3 uses
  %i.dr = shl i64 %n.vec1667, 2                   ; 2 uses
  %i.ds = getelementptr i8, ptr %10, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.dk, i64 %i.dr
  br label %vector.body1668

vector.body1668:                                  ; preds = %vector.body1668, %vector.ph1665
  %index1669 = phi i64 [ 0, %vector.ph1665 ], [ %index.next1673, %vector.body1668 ] ; 2 uses
  %i.du = shl i64 %index1669, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %10, i64 %i.du ; 2 uses
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
  %cmp.n1675 = icmp eq i64 %i.dn, %n.vec1667
  br i1 %cmp.n1675, label %.loopexit570, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1674
  %.08.i.i.ph = phi ptr [ %10, %.lr.ph.i.preheader.i ], [ %i.ds, %middle.block1674 ]
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
  %13 = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.en to i64
  %14 = load ptr, ptr %8, align 8, !tbaa !409     ; 7 uses
  %15 = add i64 %13, -4
  %16 = sub i64 %15, %i.eo                        ; 2 uses
  %i.ep = lshr i64 %16, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check1681 = icmp ult i64 %16, 44
  %i.er = ptrtoaddr ptr %14 to i64
  %i.es = ptrtoaddr ptr %i.en to i64
  %i.et = sub i64 %i.es, %i.er
  %diff.check1679 = icmp ugt i64 %i.et, -32
  %or.cond1778 = select i1 %min.iters.check1681, i1 true, i1 %diff.check1679
  br i1 %or.cond1778, label %.lr.ph.i.i175.preheader, label %vector.ph1682

vector.ph1682:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1684 = and i64 %i.eq, 9223372036854775800 ; 3 uses
  %i.eu = shl i64 %n.vec1684, 2                   ; 2 uses
  %i.ev = getelementptr i8, ptr %14, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.eu
  br label %vector.body1685

vector.body1685:                                  ; preds = %vector.body1685, %vector.ph1682
  %index1686 = phi i64 [ 0, %vector.ph1682 ], [ %index.next1691, %vector.body1685 ] ; 2 uses
  %i.ex = shl i64 %index1686, 2                   ; 2 uses
  %next.gep1687 = getelementptr i8, ptr %14, i64 %i.ex ; 2 uses
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
  %cmp.n1693 = icmp eq i64 %i.eq, %n.vec1684
  br i1 %cmp.n1693, label %.loopexit1772, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1692
  %.08.i.i176.ph = phi ptr [ %14, %.lr.ph.i.preheader.i174 ], [ %i.ev, %middle.block1692 ]
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
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %index1702 ; 3 uses
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
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %.01418.i186 ; 2 uses
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
  %i.ga = phi ptr [ %14, %bb.r ], [ %.pre678, %.noexc195 ]
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
  store i32 %i.gy, ptr %i.hf, align 4, !tbaa !3
  %i.hg = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i198 = icmp eq i128 %i.hg, 0
  br i1 %.not.i.i198, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !434

_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %.not19.i201 = icmp eq i64 %.pre-phi.i.i.i, 0
  br i1 %.not19.i201, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.hh = phi ptr [ %i.hd, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gg, %.preheader.i.i ] ; 3 uses
  %i.hi = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gf, %.preheader.i.i ] ; 6 uses
  %i.hj = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1713 = icmp ult i64 %i.hi, 8
  br i1 %min.iters.check1713, label %scalar.ph1712.preheader, label %vector.ph1714

vector.ph1714:                                    ; preds = %.lr.ph.i202
  %n.vec1716 = and i64 %i.hi, -8                  ; 3 uses
  %broadcast.splatinsert1717 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat1718 = shufflevector <4 x i32> %broadcast.splatinsert1717, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1719 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1720 = shufflevector <4 x i32> %broadcast.splatinsert1719, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1721

vector.body1721:                                  ; preds = %vector.body1721, %vector.ph1714
  %index1722 = phi i64 [ 0, %vector.ph1714 ], [ %index.next1726, %vector.body1721 ] ; 2 uses
  %vector.recur1723 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1714 ], [ %i.hn, %vector.body1721 ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index1722 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load1724 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !3 ; 2 uses
  %wide.load1725 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !3 ; 2 uses
  %i.hm = lshr <4 x i32> %wide.load1724, %broadcast.splat1718 ; 2 uses
  %i.hn = lshr <4 x i32> %wide.load1725, %broadcast.splat1718 ; 3 uses
  %i.ho = shufflevector <4 x i32> %vector.recur1723, <4 x i32> %i.hm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hp = shufflevector <4 x i32> %i.hm, <4 x i32> %i.hn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hq = shl <4 x i32> %wide.load1724, %broadcast.splat1720
  %i.hr = shl <4 x i32> %wide.load1725, %broadcast.splat1720
  %i.hs = add <4 x i32> %i.hq, %i.ho
  %i.ht = add <4 x i32> %i.hr, %i.hp
  store <4 x i32> %i.hs, ptr %i.hk, align 4, !tbaa !3
  store <4 x i32> %i.ht, ptr %i.hl, align 4, !tbaa !3
  %index.next1726 = add nuw i64 %index1722, 8     ; 2 uses
  %i.hu = icmp eq i64 %index.next1726, %n.vec1716
  br i1 %i.hu, label %middle.block1727, label %vector.body1721, !llvm.loop !435

middle.block1727:                                 ; preds = %vector.body1721
  %vector.recur.extract1728 = extractelement <4 x i32> %i.hn, i64 3 ; 2 uses
  %cmp.n1729 = icmp eq i64 %i.hi, %n.vec1716
  br i1 %cmp.n1729, label %._crit_edge.i206, label %scalar.ph1712.preheader

scalar.ph1712.preheader:                          ; preds = %.lr.ph.i202, %middle.block1727
  %.01418.i203.ph = phi i64 [ 0, %.lr.ph.i202 ], [ %n.vec1716, %middle.block1727 ]
  %.017.i204.ph = phi i32 [ 0, %.lr.ph.i202 ], [ %vector.recur.extract1728, %middle.block1727 ]
  br label %scalar.ph1712

._crit_edge.i206:                                 ; preds = %scalar.ph1712, %middle.block1727
  %.lcssa1626 = phi i32 [ %vector.recur.extract1728, %middle.block1727 ], [ %i.hx, %scalar.ph1712 ] ; 2 uses
  %.not.i207 = icmp eq i32 %.lcssa1626, 0
  br i1 %.not.i207, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %bb.v

scalar.ph1712:                                    ; preds = %scalar.ph1712.preheader, %scalar.ph1712
  %.01418.i203 = phi i64 [ %i.ia, %scalar.ph1712 ], [ %.01418.i203.ph, %scalar.ph1712.preheader ] ; 2 uses
  %.017.i204 = phi i32 [ %i.hx, %scalar.ph1712 ], [ %.017.i204.ph, %scalar.ph1712.preheader ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.01418.i203 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3  ; 2 uses
  %i.hx = lshr i32 %i.hw, %i.hj                   ; 2 uses
  %i.hy = shl i32 %i.hw, %i.v
  %i.hz = add i32 %i.hy, %.017.i204
  store i32 %i.hz, ptr %i.hv, align 4, !tbaa !3
  %i.ia = add nuw i64 %.01418.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.ia, %i.hi
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1712, !llvm.loop !436

bb.v:                                             ; preds = %._crit_edge.i206
  %i.ib = add i64 %i.hi, 1                        ; 3 uses
  %i.ic = load i64, ptr %i.a, align 8, !tbaa !410
  %i.id = icmp ugt i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.w, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.w:                                             ; preds = %bb.v
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !407
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ib)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !424

.noexc212:                                        ; preds = %bb.w
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !419 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre679 = load ptr, ptr %5, align 8, !tbaa !409
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.v
  %i.if = phi ptr [ %i.hh, %bb.v ], [ %.pre679, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.ib, %bb.v ], [ %.pre2.i.i211, %.noexc212 ]
  %i.ig = phi i64 [ %i.hi, %bb.v ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !419
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ig
  store i32 %.lcssa1626, ptr %i.ih, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.ii = load ptr, ptr %6, align 8, !tbaa !409
  store i32 1, ptr %i.ii, align 4, !tbaa !3
  %i.ij = load i64, ptr %i.f, align 8, !tbaa !410 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.ij, 0
  br i1 %.not8.i.i217.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !407
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !437

.noexc219:                                        ; preds = %bb.x
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !410 ; 2 uses
  %i.il = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.im = zext i1 %i.il to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.in = phi i64 [ %i.ij, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.io = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.im, %.noexc219 ] ; 2 uses
  store i64 %i.io, ptr %i.h, align 8, !tbaa !419
  %i.ip = load i32, ptr %i.w, align 16, !tbaa !415
  %i.iq = sub nsw i32 %i.v, %i.ip                 ; 2 uses
  %i.ir = sdiv i32 %i.iq, 32
  store i32 %i.ir, ptr %i.j, align 8, !tbaa !411
  %i.is = srem i32 %i.iq, 32                      ; 3 uses
  %i.it = icmp eq i32 %i.is, 0
  %.not19.i221 = icmp eq i64 %i.io, 0
end_hunk_0
