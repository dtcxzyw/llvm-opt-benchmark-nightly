Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.bh = lshr exact i64 %i.ah, 1
  %i.bi = add nuw nsw i64 %i.bh, %i.ah            ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = call noalias ptr @malloc(i64 noundef %i.bj) #31 ; 4 uses
  %.not.i.i1126 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1126, label %bb.h, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %6, align 8, !tbaa !117
  %i.bl = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.bl) #32
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit
  %i.bm = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bk, ptr noundef nonnull align 4 dereferenceable(1) %i.ag, i64 %i.bm, i1 false)
  store ptr %i.bk, ptr %10, align 8, !tbaa !520
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !521
  %.not.i1127 = icmp eq ptr %i.ag, %i.d
  br i1 %.not.i1127, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1128, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef nonnull %i.ag) #26
  %.pre.i.i.pre = load i64, ptr %i.c, align 8, !tbaa !526 ; 2 uses
  %.pre611.pre = load ptr, ptr %10, align 8, !tbaa !520
  %.pre1254 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1128

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1128: ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %bb.i
  %.pre2.i.i.pre-phi = phi i64 [ %i.bf, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ], [ %.pre1254, %bb.i ]
  %.pre611 = phi ptr [ %i.bk, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ], [ %.pre611.pre, %bb.i ]
  %.pre.i.i = phi i64 [ %i.ai, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ], [ %.pre.i.i.pre, %bb.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !526
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre611, i64 %.pre.i.i
  store i32 %.lcssa1486, ptr %i.bn, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %._crit_edge.i, %_ZN3fmt3v126detail6bigintaSIoEEvT_.exit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1128, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1064
  store i32 1, ptr %i.n, align 8, !tbaa !119
  store i64 1, ptr %i.m, align 8, !tbaa !526
  %i.bo = lshr i32 %i.x, 5
  store i32 %i.bo, ptr %i.o, align 8, !tbaa !525
  %i.bp = and i32 %i.x, 31                        ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN3fmt3v126detail6bigintlSEi.exit108, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  %i.br = shl nuw i32 1, %i.bp
  store i32 %i.br, ptr %i.n, align 8, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintlSEi.exit108

_ZN3fmt3v126detail6bigintlSEi.exit108:            ; preds = %.lr.ph.i98, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  br i1 %.not, label %bb.j, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit114

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit114:       ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit108
  store i32 1, ptr %i.s, align 8, !tbaa !119
  store i64 1, ptr %i.r, align 8, !tbaa !526
  %i.bs = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.bt = lshr i32 %i.bs, 5
  store i32 %i.bt, ptr %i.t, align 8, !tbaa !525
  %i.bu = and i32 %i.bs, 31                       ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.j, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit114
  %i.bw = shl nuw i32 1, %i.bu
  store i32 %i.bw, ptr %i.s, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i116, %_ZN3fmt3v126detail6bigintlSEi.exit108, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit114
  %.075 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit108 ], [ %13, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit114 ], [ %13, %.lr.ph.i116 ] ; 3 uses
  %i.bx = load i32, ptr %4, align 4, !tbaa !119
  call void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %11, i32 noundef %i.bx)
  %i.by = load i64, ptr %i.h, align 8, !tbaa !526 ; 7 uses
  %.not19.i127 = icmp eq i64 %i.by, 0
  %extract.t742 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i127, label %_ZN3fmt3v126detail6bigintlSEi.exit138, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.j
  %i.bz = load ptr, ptr %11, align 8, !tbaa !520  ; 3 uses
  %i.ca = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1609 = icmp ult i64 %i.by, 8
  br i1 %min.iters.check1609, label %scalar.ph1608.preheader, label %vector.ph1610

vector.ph1610:                                    ; preds = %.lr.ph.i128
  %n.vec1611 = and i64 %i.by, -8                  ; 3 uses
  %broadcast.splatinsert1612 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat1613 = shufflevector <4 x i32> %broadcast.splatinsert1612, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1614 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1615 = shufflevector <4 x i32> %broadcast.splatinsert1614, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1616

vector.body1616:                                  ; preds = %vector.body1616, %vector.ph1610
  %index1617 = phi i64 [ 0, %vector.ph1610 ], [ %index.next1621, %vector.body1616 ] ; 2 uses
  %vector.recur1618 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1610 ], [ %i.ce, %vector.body1616 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index1617 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load1619 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !119 ; 2 uses
  %wide.load1620 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !119 ; 2 uses
  %i.cd = lshr <4 x i32> %wide.load1619, %broadcast.splat1613 ; 2 uses
  %i.ce = lshr <4 x i32> %wide.load1620, %broadcast.splat1613 ; 3 uses
  %i.cf = shufflevector <4 x i32> %vector.recur1618, <4 x i32> %i.cd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cg = shufflevector <4 x i32> %i.cd, <4 x i32> %i.ce, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ch = shl <4 x i32> %wide.load1619, %broadcast.splat1615
  %i.ci = shl <4 x i32> %wide.load1620, %broadcast.splat1615
  %i.cj = add <4 x i32> %i.ch, %i.cf
  %i.ck = add <4 x i32> %i.ci, %i.cg
  store <4 x i32> %i.cj, ptr %i.cb, align 4, !tbaa !119
  store <4 x i32> %i.ck, ptr %i.cc, align 4, !tbaa !119
  %index.next1621 = add nuw i64 %index1617, 8     ; 2 uses
  %i.cl = icmp eq i64 %index.next1621, %n.vec1611
  br i1 %i.cl, label %middle.block1622, label %vector.body1616, !llvm.loop !1241

middle.block1622:                                 ; preds = %vector.body1616
  %vector.recur.extract1623 = extractelement <4 x i32> %i.ce, i64 3 ; 2 uses
  %cmp.n1624 = icmp eq i64 %i.by, %n.vec1611
  br i1 %cmp.n1624, label %._crit_edge.i132, label %scalar.ph1608.preheader

scalar.ph1608.preheader:                          ; preds = %.lr.ph.i128, %middle.block1622
  %.01418.i129.ph = phi i64 [ 0, %.lr.ph.i128 ], [ %n.vec1611, %middle.block1622 ]
  %.017.i130.ph = phi i32 [ 0, %.lr.ph.i128 ], [ %vector.recur.extract1623, %middle.block1622 ]
  br label %scalar.ph1608

._crit_edge.i132:                                 ; preds = %scalar.ph1608, %middle.block1622
  %.lcssa1485 = phi i32 [ %vector.recur.extract1623, %middle.block1622 ], [ %i.co, %scalar.ph1608 ] ; 2 uses
  %.not.i133 = icmp eq i32 %.lcssa1485, 0
  br i1 %.not.i133, label %_ZN3fmt3v126detail6bigintlSEi.exit138, label %bb.k

scalar.ph1608:                                    ; preds = %scalar.ph1608.preheader, %scalar.ph1608
  %.01418.i129 = phi i64 [ %i.cr, %scalar.ph1608 ], [ %.01418.i129.ph, %scalar.ph1608.preheader ] ; 2 uses
  %.017.i130 = phi i32 [ %i.co, %scalar.ph1608 ], [ %.017.i130.ph, %scalar.ph1608.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.01418.i129 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !119 ; 2 uses
  %i.co = lshr i32 %i.cn, %i.ca                   ; 2 uses
  %i.cp = shl i32 %i.cn, %i.v
  %i.cq = add i32 %i.cp, %.017.i130
  store i32 %i.cq, ptr %i.cm, align 4, !tbaa !119
  %i.cr = add nuw i64 %.01418.i129, 1             ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %i.cr, %i.by
  br i1 %exitcond.not.i131, label %._crit_edge.i132, label %scalar.ph1608, !llvm.loop !1242

bb.k:                                             ; preds = %._crit_edge.i132
  %i.cs = add i64 %i.by, 1                        ; 3 uses
  %i.ct = load i64, ptr %i.f, align 8, !tbaa !521
  %i.cu = icmp ugt i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.l, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i134

bb.l:                                             ; preds = %bb.k
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !519
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(172) %11, i64 noundef %i.cs) #26, !inline_history !33
  %.pre.i.i136 = load i64, ptr %i.h, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i137 = add i64 %.pre.i.i136, 1
  %.pre614 = load ptr, ptr %11, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i134

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i134: ; preds = %bb.l, %bb.k
  %i.cw = phi ptr [ %i.bz, %bb.k ], [ %.pre614, %bb.l ]
  %.pre-phi.i.i135 = phi i64 [ %i.cs, %bb.k ], [ %.pre2.i.i137, %bb.l ]
  %i.cx = phi i64 [ %i.by, %bb.k ], [ %.pre.i.i136, %bb.l ]
  store i64 %.pre-phi.i.i135, ptr %i.h, align 8, !tbaa !526
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  store i32 %.lcssa1485, ptr %i.cy, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintlSEi.exit138

bb.m:                                             ; preds = %bb.a
  %i.cz = load i32, ptr %4, align 4, !tbaa !119   ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.db = sub nsw i32 0, %i.cz
  call void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %10, i32 noundef %i.db)
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !526 ; 7 uses
  %i.dd = load i64, ptr %i.k, align 8, !tbaa !521
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.n
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !519
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(172) %12, i64 noundef %i.dc) #26, !inline_history !1243
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !521
  %i.dg = call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 %.pre.i.i.i)
  store i64 %i.dg, ptr %i.m, align 8, !tbaa !526
  %i.dh = load ptr, ptr %10, align 8, !tbaa !520  ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.dc, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.n
  store i64 %i.dc, ptr %i.m, align 8, !tbaa !526
  %i.dj = load ptr, ptr %10, align 8, !tbaa !520  ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dc, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v126detail6bigint6assignERKS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %i.dl = phi ptr [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.dk, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dm = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.dj, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %14 = ptrtoaddr ptr %i.dm to i64                ; 2 uses
  %15 = load ptr, ptr %12, align 8, !tbaa !520    ; 4 uses
  %i.do = add i64 %i.dn, -4
  %i.dp = sub i64 %i.do, %14                      ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check1525 = icmp ult i64 %i.dp, 44
  %i.ds = ptrtoaddr ptr %15 to i64
  %i.dt = sub i64 %14, %i.ds
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond1628 = select i1 %min.iters.check1525, i1 true, i1 %diff.check
  br i1 %or.cond1628, label %.lr.ph.i.i.preheader, label %vector.ph1526

vector.ph1526:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1527 = and i64 %i.dr, 9223372036854775800 ; 3 uses
  %i.du = shl i64 %n.vec1527, 2                   ; 2 uses
  %i.dv = getelementptr i8, ptr %15, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dm, i64 %i.du
  br label %vector.body1528

vector.body1528:                                  ; preds = %vector.body1528, %vector.ph1526
  %index1529 = phi i64 [ 0, %vector.ph1526 ], [ %index.next1533, %vector.body1528 ] ; 2 uses
  %i.dx = shl i64 %index1529, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %15, i64 %i.dx ; 2 uses
  %next.gep1530 = getelementptr i8, ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep1530, i64 16
  %wide.load1531 = load <4 x i32>, ptr %next.gep1530, align 4, !tbaa !119
  %wide.load1532 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !119
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1531, ptr %next.gep, align 4, !tbaa !119
  store <4 x i32> %wide.load1532, ptr %i.dz, align 4, !tbaa !119
  %index.next1533 = add nuw i64 %index1529, 8     ; 2 uses
  %i.ea = icmp eq i64 %index.next1533, %n.vec1527
  br i1 %i.ea, label %middle.block1534, label %vector.body1528, !llvm.loop !1244

middle.block1534:                                 ; preds = %vector.body1528
  %cmp.n1535 = icmp eq i64 %i.dr, %n.vec1527
  br i1 %cmp.n1535, label %_ZN3fmt3v126detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1534
  %.08.i.i.ph = phi ptr [ %15, %.lr.ph.i.preheader.i ], [ %i.dv, %middle.block1534 ]
  %.057.i.i.ph = phi ptr [ %i.dm, %.lr.ph.i.preheader.i ], [ %i.dw, %middle.block1534 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.ec = load i32, ptr %.057.i.i, align 4, !tbaa !119
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.ec, ptr %.08.i.i, align 4, !tbaa !119
  %.not.i.i139 = icmp eq ptr %i.eb, %i.dl
  br i1 %.not.i.i139, label %_ZN3fmt3v126detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !1245

_ZN3fmt3v126detail6bigint6assignERKS2_.exit:      ; preds = %.lr.ph.i.i, %middle.block1534, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ee = phi ptr [ %i.dj, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dm, %middle.block1534 ], [ %i.dm, %.lr.ph.i.i ] ; 2 uses
  %i.ef = load i32, ptr %i.e, align 8, !tbaa !525 ; 2 uses
  store i32 %i.ef, ptr %i.o, align 8, !tbaa !525
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit163, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail6bigint6assignERKS2_.exit
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !526 ; 8 uses
  %i.eh = load i64, ptr %i.p, align 8, !tbaa !521 ; 2 uses
  %i.ei = icmp ugt i64 %i.eg, %i.eh
  br i1 %i.ei, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148: ; preds = %bb.o
  %i.ej = load ptr, ptr %i.q, align 8, !tbaa !519
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(172) %13, i64 noundef %i.eg) #26, !inline_history !1243
  %.pre.i.i.i149 = load i64, ptr %i.p, align 8, !tbaa !521 ; 2 uses
  %i.ek = call noundef i64 @llvm.umin.i64(i64 %i.eg, i64 %.pre.i.i.i149) ; 2 uses
  store i64 %i.ek, ptr %i.r, align 8, !tbaa !526
  %i.el = load ptr, ptr %10, align 8, !tbaa !520  ; 2 uses
  %.idx8.i150 = shl nuw nsw i64 %i.eg, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx8.i150
  br label %.lr.ph.i.preheader.i143

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140: ; preds = %bb.o
  store i64 %i.eg, ptr %i.r, align 8, !tbaa !526
  %.idx.i141 = shl nuw nsw i64 %i.eg, 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i141
  %.not6.i.i142 = icmp eq i64 %i.eg, 0
  br i1 %.not6.i.i142, label %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151.thread, label %.lr.ph.i.preheader.i143

_ZN3fmt3v126detail6bigint6assignERKS2_.exit151.thread: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140
  store i32 %i.ef, ptr %i.t, align 8, !tbaa !525
  br label %_ZN3fmt3v126detail6bigintlSEi.exit163

.lr.ph.i.preheader.i143:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148
  %i.eo = phi i64 [ %.pre.i.i.i149, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.eh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ]
  %.pr = phi i64 [ %i.ek, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.eg, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 7 uses
  %i.ep = phi ptr [ %i.em, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.en, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 2 uses
  %i.eq = phi ptr [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.ee, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 4 uses
  %i.er = ptrtoaddr ptr %i.ep to i64
  %16 = ptrtoaddr ptr %i.eq to i64                ; 2 uses
  %17 = load ptr, ptr %13, align 8, !tbaa !520    ; 7 uses
  %i.es = add i64 %i.er, -4
  %i.et = sub i64 %i.es, %16                      ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check1541 = icmp ult i64 %i.et, 44
  %i.ew = ptrtoaddr ptr %17 to i64
  %i.ex = sub i64 %16, %i.ew
  %diff.check1539 = icmp ugt i64 %i.ex, -32
  %or.cond1630 = select i1 %min.iters.check1541, i1 true, i1 %diff.check1539
  br i1 %or.cond1630, label %.lr.ph.i.i144.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %.lr.ph.i.preheader.i143
  %n.vec1543 = and i64 %i.ev, 9223372036854775800 ; 3 uses
  %i.ey = shl i64 %n.vec1543, 2                   ; 2 uses
  %i.ez = getelementptr i8, ptr %17, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.eq, i64 %i.ey
  br label %vector.body1544

vector.body1544:                                  ; preds = %vector.body1544, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1550, %vector.body1544 ] ; 2 uses
  %i.fb = shl i64 %index1545, 2                   ; 2 uses
  %next.gep1546 = getelementptr i8, ptr %17, i64 %i.fb ; 2 uses
  %next.gep1547 = getelementptr i8, ptr %i.eq, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep1547, i64 16
  %wide.load1548 = load <4 x i32>, ptr %next.gep1547, align 4, !tbaa !119
  %wide.load1549 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !119
  %i.fd = getelementptr i8, ptr %next.gep1546, i64 16
  store <4 x i32> %wide.load1548, ptr %next.gep1546, align 4, !tbaa !119
  store <4 x i32> %wide.load1549, ptr %i.fd, align 4, !tbaa !119
  %index.next1550 = add nuw i64 %index1545, 8     ; 2 uses
  %i.fe = icmp eq i64 %index.next1550, %n.vec1543
  br i1 %i.fe, label %middle.block1551, label %vector.body1544, !llvm.loop !1246

middle.block1551:                                 ; preds = %vector.body1544
  %cmp.n1552 = icmp eq i64 %i.ev, %n.vec1543
  br i1 %cmp.n1552, label %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block1551
  %.08.i.i145.ph = phi ptr [ %17, %.lr.ph.i.preheader.i143 ], [ %i.ez, %middle.block1551 ]
  %.057.i.i146.ph = phi ptr [ %i.eq, %.lr.ph.i.preheader.i143 ], [ %i.fa, %middle.block1551 ]
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %.08.i.i145 = phi ptr [ %i.fh, %.lr.ph.i.i144 ], [ %.08.i.i145.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %.057.i.i146 = phi ptr [ %i.ff, %.lr.ph.i.i144 ], [ %.057.i.i146.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.057.i.i146, i64 4 ; 2 uses
  %i.fg = load i32, ptr %.057.i.i146, align 4, !tbaa !119
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i145, i64 4
  store i32 %i.fg, ptr %.08.i.i145, align 4, !tbaa !119
  %.not.i.i147 = icmp eq ptr %i.ff, %i.ep
  br i1 %.not.i.i147, label %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !1247

_ZN3fmt3v126detail6bigint6assignERKS2_.exit151:   ; preds = %.lr.ph.i.i144, %middle.block1551
  %i.fi = load i32, ptr %i.e, align 8, !tbaa !525
  store i32 %i.fi, ptr %i.t, align 8, !tbaa !525
  %.not19.i152 = icmp eq i64 %.pr, 0
  br i1 %.not19.i152, label %_ZN3fmt3v126detail6bigintlSEi.exit163, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151
  %min.iters.check1556 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1556, label %.lr.ph.i153.preheader1688, label %vector.ph1557

vector.ph1557:                                    ; preds = %.lr.ph.i153.preheader
  %n.vec1558 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1557
  %index1560 = phi i64 [ 0, %vector.ph1557 ], [ %index.next1564, %vector.body1559 ] ; 2 uses
  %vector.recur1561 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1557 ], [ %i.fm, %vector.body1559 ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %index1560 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load1562 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !119 ; 2 uses
  %wide.load1563 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !119 ; 3 uses
  %i.fl = lshr <4 x i32> %wide.load1562, splat (i32 31) ; 2 uses
  %i.fm = lshr <4 x i32> %wide.load1563, splat (i32 31) ; 3 uses
  %i.fn = shufflevector <4 x i32> %vector.recur1561, <4 x i32> %i.fl, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fo = shufflevector <4 x i32> %i.fl, <4 x i32> %i.fm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fp = shl <4 x i32> %wide.load1562, splat (i32 1)
  %i.fq = shl <4 x i32> %wide.load1563, splat (i32 1)
  %i.fr = or disjoint <4 x i32> %i.fp, %i.fn
  %i.fs = or disjoint <4 x i32> %i.fq, %i.fo
  store <4 x i32> %i.fr, ptr %i.fj, align 4, !tbaa !119
  store <4 x i32> %i.fs, ptr %i.fk, align 4, !tbaa !119
  %index.next1564 = add nuw i64 %index1560, 8     ; 2 uses
  %i.ft = icmp eq i64 %index.next1564, %n.vec1558
  br i1 %i.ft, label %middle.block1565, label %vector.body1559, !llvm.loop !1248

middle.block1565:                                 ; preds = %vector.body1559
  %vector.recur.extract1566 = extractelement <4 x i32> %i.fm, i64 3 ; 2 uses
  %i.fu = extractelement <4 x i32> %wide.load1563, i64 3
  %cmp.n1567 = icmp eq i64 %.pr, %n.vec1558
  br i1 %cmp.n1567, label %._crit_edge.i157, label %.lr.ph.i153.preheader1688

.lr.ph.i153.preheader1688:                        ; preds = %.lr.ph.i153.preheader, %middle.block1565
  %.01418.i154.ph = phi i64 [ 0, %.lr.ph.i153.preheader ], [ %n.vec1558, %middle.block1565 ]
  %.017.i155.ph = phi i32 [ 0, %.lr.ph.i153.preheader ], [ %vector.recur.extract1566, %middle.block1565 ]
  br label %.lr.ph.i153

._crit_edge.i157:                                 ; preds = %.lr.ph.i153, %middle.block1565
  %.lcssa1492 = phi i32 [ %i.fu, %middle.block1565 ], [ %i.fw, %.lr.ph.i153 ]
  %.lcssa1491 = phi i32 [ %vector.recur.extract1566, %middle.block1565 ], [ %i.fx, %.lr.ph.i153 ]
  %.not.i158 = icmp sgt i32 %.lcssa1492, -1
  br i1 %.not.i158, label %_ZN3fmt3v126detail6bigintlSEi.exit163, label %bb.p

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader1688, %.lr.ph.i153
  %.01418.i154 = phi i64 [ %i.ga, %.lr.ph.i153 ], [ %.01418.i154.ph, %.lr.ph.i153.preheader1688 ] ; 2 uses
  %.017.i155 = phi i32 [ %i.fx, %.lr.ph.i153 ], [ %.017.i155.ph, %.lr.ph.i153.preheader1688 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %.01418.i154 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !119 ; 3 uses
  %i.fx = lshr i32 %i.fw, 31                      ; 2 uses
  %i.fy = shl i32 %i.fw, 1
  %i.fz = or disjoint i32 %i.fy, %.017.i155
  store i32 %i.fz, ptr %i.fv, align 4, !tbaa !119
  %i.ga = add nuw i64 %.01418.i154, 1             ; 2 uses
  %exitcond.not.i156 = icmp eq i64 %i.ga, %.pr
  br i1 %exitcond.not.i156, label %._crit_edge.i157, label %.lr.ph.i153, !llvm.loop !1249

bb.p:                                             ; preds = %._crit_edge.i157
  %i.gb = add i64 %.pr, 1                         ; 3 uses
  %i.gc = icmp ugt i64 %i.gb, %i.eo
  br i1 %i.gc, label %bb.q, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i159

bb.q:                                             ; preds = %bb.p
  %i.gd = load ptr, ptr %i.q, align 8, !tbaa !519
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(172) %13, i64 noundef %i.gb) #26, !inline_history !33
  %.pre.i.i161 = load i64, ptr %i.r, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i162 = add i64 %.pre.i.i161, 1
  %.pre608 = load ptr, ptr %13, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i159

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i159: ; preds = %bb.q, %bb.p
  %i.ge = phi ptr [ %17, %bb.p ], [ %.pre608, %bb.q ]
  %.pre-phi.i.i160 = phi i64 [ %i.gb, %bb.p ], [ %.pre2.i.i162, %bb.q ]
  %i.gf = phi i64 [ %.pr, %bb.p ], [ %.pre.i.i161, %bb.q ]
  store i64 %.pre-phi.i.i160, ptr %i.r, align 8, !tbaa !526
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gf
  store i32 %.lcssa1491, ptr %i.gg, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintlSEi.exit163

_ZN3fmt3v126detail6bigintlSEi.exit163:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i159, %._crit_edge.i157, %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151, %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151.thread, %_ZN3fmt3v126detail6bigint6assignERKS2_.exit
  %.1 = phi ptr [ null, %_ZN3fmt3v126detail6bigint6assignERKS2_.exit ], [ %13, %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151.thread ], [ %13, %_ZN3fmt3v126detail6bigint6assignERKS2_.exit151 ], [ %13, %._crit_edge.i157 ], [ %13, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i159 ] ; 3 uses
  %i.gh = load i128, ptr %0, align 16, !tbaa !1266 ; 3 uses
  %i.gi = and i128 %i.gh, 18446744073709551615
  %i.gj = load i64, ptr %i.c, align 8, !tbaa !526 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit178, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit163
  %i.gk = load ptr, ptr %10, align 8, !tbaa !520  ; 3 uses
  %i.gl = lshr i128 %i.gh, 32
  %i.gm = and i128 %i.gl, 79228162514264337589248983040
  br label %bb.r

.preheader.i.i:                                   ; preds = %bb.r
  %.not20.i.i = icmp eq i128 %i.gx, 0
  br i1 %.not20.i.i, label %.lr.ph.i168, label %.lr.ph22.i.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i164
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i164 ], [ %i.gz, %bb.r ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i164 ], [ %i.gx, %bb.r ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.019.i.i ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !119
  %i.gp = zext i32 %i.go to i128                  ; 2 uses
  %i.gq = mul nuw nsw i128 %i.gi, %i.gp
  %i.gr = and i128 %.01718.i.i, 4294967295
  %i.gs = add nuw nsw i128 %i.gq, %i.gr           ; 2 uses
  %i.gt = mul nuw i128 %i.gm, %i.gp
  %i.gu = lshr i128 %i.gs, 32
  %i.gv = lshr i128 %.01718.i.i, 32
  %i.gw = add nuw i128 %i.gt, %i.gv
  %i.gx = add nuw i128 %i.gw, %i.gu               ; 3 uses
  %i.gy = trunc i128 %i.gs to i32
  store i32 %i.gy, ptr %i.gn, align 4, !tbaa !119
  %i.gz = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gz, %i.gj
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.r, !llvm.loop !1250

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.ha = phi ptr [ %i.hh, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gk, %.preheader.i.i ]
  %i.hb = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gj, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.hk, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gx, %.preheader.i.i ] ; 2 uses
  %i.hc = trunc i128 %.121.i.i to i32
  %i.hd = add i64 %i.hb, 1                        ; 3 uses
  %i.he = load i64, ptr %i.a, align 8, !tbaa !521
  %i.hf = icmp ugt i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.s:                                             ; preds = %.lr.ph22.i.i
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !519
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(172) %10, i64 noundef %i.hd) #26, !inline_history !1251
  %.pre.i.i.i166 = load i64, ptr %i.c, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i166, 1
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.s, %.lr.ph22.i.i
  %i.hh = phi ptr [ %i.ha, %.lr.ph22.i.i ], [ %.pre.i, %bb.s ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.hd, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %bb.s ] ; 4 uses
  %i.hi = phi i64 [ %i.hb, %.lr.ph22.i.i ], [ %.pre.i.i.i166, %bb.s ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !526
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hi
  store i32 %i.hc, ptr %i.hj, align 4, !tbaa !119
  %i.hk = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i165 = icmp eq i128 %i.hk, 0
  br i1 %.not.i.i165, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !1252

_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %.not19.i167 = icmp eq i64 %.pre-phi.i.i.i, 0
  br i1 %.not19.i167, label %_ZN3fmt3v126detail6bigintlSEi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.hl = phi ptr [ %i.hh, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gk, %.preheader.i.i ] ; 3 uses
  %i.hm = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gj, %.preheader.i.i ] ; 6 uses
  %i.hn = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1571 = icmp ult i64 %i.hm, 8
  br i1 %min.iters.check1571, label %scalar.ph1570.preheader, label %vector.ph1572

vector.ph1572:                                    ; preds = %.lr.ph.i168
  %n.vec1573 = and i64 %i.hm, -8                  ; 3 uses
  %broadcast.splatinsert1574 = insertelement <4 x i32> poison, i32 %i.hn, i64 0
  %broadcast.splat1575 = shufflevector <4 x i32> %broadcast.splatinsert1574, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1576 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1577 = shufflevector <4 x i32> %broadcast.splatinsert1576, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1578

vector.body1578:                                  ; preds = %vector.body1578, %vector.ph1572
  %index1579 = phi i64 [ 0, %vector.ph1572 ], [ %index.next1583, %vector.body1578 ] ; 2 uses
  %vector.recur1580 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1572 ], [ %i.hr, %vector.body1578 ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index1579 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load1581 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !119 ; 2 uses
  %wide.load1582 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !119 ; 2 uses
  %i.hq = lshr <4 x i32> %wide.load1581, %broadcast.splat1575 ; 2 uses
  %i.hr = lshr <4 x i32> %wide.load1582, %broadcast.splat1575 ; 3 uses
  %i.hs = shufflevector <4 x i32> %vector.recur1580, <4 x i32> %i.hq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ht = shufflevector <4 x i32> %i.hq, <4 x i32> %i.hr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hu = shl <4 x i32> %wide.load1581, %broadcast.splat1577
  %i.hv = shl <4 x i32> %wide.load1582, %broadcast.splat1577
  %i.hw = add <4 x i32> %i.hu, %i.hs
  %i.hx = add <4 x i32> %i.hv, %i.ht
  store <4 x i32> %i.hw, ptr %i.ho, align 4, !tbaa !119
  store <4 x i32> %i.hx, ptr %i.hp, align 4, !tbaa !119
  %index.next1583 = add nuw i64 %index1579, 8     ; 2 uses
  %i.hy = icmp eq i64 %index.next1583, %n.vec1573
  br i1 %i.hy, label %middle.block1584, label %vector.body1578, !llvm.loop !1253

middle.block1584:                                 ; preds = %vector.body1578
  %vector.recur.extract1585 = extractelement <4 x i32> %i.hr, i64 3 ; 2 uses
  %cmp.n1586 = icmp eq i64 %i.hm, %n.vec1573
  br i1 %cmp.n1586, label %._crit_edge.i172, label %scalar.ph1570.preheader

scalar.ph1570.preheader:                          ; preds = %.lr.ph.i168, %middle.block1584
  %.01418.i169.ph = phi i64 [ 0, %.lr.ph.i168 ], [ %n.vec1573, %middle.block1584 ]
  %.017.i170.ph = phi i32 [ 0, %.lr.ph.i168 ], [ %vector.recur.extract1585, %middle.block1584 ]
  br label %scalar.ph1570

._crit_edge.i172:                                 ; preds = %scalar.ph1570, %middle.block1584
  %.lcssa1488 = phi i32 [ %vector.recur.extract1585, %middle.block1584 ], [ %i.ib, %scalar.ph1570 ] ; 2 uses
  %.not.i173 = icmp eq i32 %.lcssa1488, 0
  br i1 %.not.i173, label %_ZN3fmt3v126detail6bigintlSEi.exit178, label %bb.t

scalar.ph1570:                                    ; preds = %scalar.ph1570.preheader, %scalar.ph1570
  %.01418.i169 = phi i64 [ %i.ie, %scalar.ph1570 ], [ %.01418.i169.ph, %scalar.ph1570.preheader ] ; 2 uses
  %.017.i170 = phi i32 [ %i.ib, %scalar.ph1570 ], [ %.017.i170.ph, %scalar.ph1570.preheader ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.01418.i169 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !119 ; 2 uses
  %i.ib = lshr i32 %i.ia, %i.hn                   ; 2 uses
  %i.ic = shl i32 %i.ia, %i.v
  %i.id = add i32 %i.ic, %.017.i170
  store i32 %i.id, ptr %i.hz, align 4, !tbaa !119
  %i.ie = add nuw i64 %.01418.i169, 1             ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %i.ie, %i.hm
  br i1 %exitcond.not.i171, label %._crit_edge.i172, label %scalar.ph1570, !llvm.loop !1254

bb.t:                                             ; preds = %._crit_edge.i172
  %i.if = add i64 %i.hm, 1                        ; 3 uses
  %i.ig = load i64, ptr %i.a, align 8, !tbaa !521
  %i.ih = icmp ugt i64 %i.if, %i.ig
  br i1 %i.ih, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i174

bb.u:                                             ; preds = %bb.t
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !519
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(172) %10, i64 noundef %i.if) #26, !inline_history !33
  %.pre.i.i176 = load i64, ptr %i.c, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i177 = add i64 %.pre.i.i176, 1
  %.pre609 = load ptr, ptr %10, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i174

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i174: ; preds = %bb.u, %bb.t
  %i.ij = phi ptr [ %i.hl, %bb.t ], [ %.pre609, %bb.u ]
  %.pre-phi.i.i175 = phi i64 [ %i.if, %bb.t ], [ %.pre2.i.i177, %bb.u ]
  %i.ik = phi i64 [ %i.hm, %bb.t ], [ %.pre.i.i176, %bb.u ]
  store i64 %.pre-phi.i.i175, ptr %i.c, align 8, !tbaa !526
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ik
  store i32 %.lcssa1488, ptr %i.il, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintlSEi.exit178

_ZN3fmt3v126detail6bigintlSEi.exit178:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit163, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, %._crit_edge.i172, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i174
  %i.im = load ptr, ptr %11, align 8, !tbaa !520
  store i32 1, ptr %i.im, align 4, !tbaa !119
  %i.in = load i64, ptr %i.f, align 8, !tbaa !521 ; 2 uses
  %.not8.i.i182.not = icmp eq i64 %i.in, 0
  br i1 %.not8.i.i182.not, label %bb.v, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit178
  %i.io = load ptr, ptr %i.g, align 8, !tbaa !519
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(172) %11, i64 noundef 1) #26, !inline_history !34
  %.pre.i.i.i.i183 = load i64, ptr %i.f, align 8, !tbaa !521 ; 2 uses
  %i.ip = icmp ne i64 %.pre.i.i.i.i183, 0
  %i.iq = zext i1 %i.ip to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184:       ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit178, %bb.v
  %i.ir = phi i64 [ %i.in, %_ZN3fmt3v126detail6bigintlSEi.exit178 ], [ %.pre.i.i.i.i183, %bb.v ]
  %i.is = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit178 ], [ %i.iq, %bb.v ] ; 2 uses
  store i64 %i.is, ptr %i.h, align 8, !tbaa !526
  %i.it = load i32, ptr %i.w, align 16, !tbaa !1265
  %i.iu = sub nsw i32 %i.v, %i.it                 ; 2 uses
  %i.iv = sdiv i32 %i.iu, 32
  store i32 %i.iv, ptr %i.j, align 8, !tbaa !525
  %i.iw = srem i32 %i.iu, 32                      ; 3 uses
  %i.ix = icmp eq i32 %i.iw, 0
  %.not19.i185 = icmp eq i64 %i.is, 0
  %or.cond494 = or i1 %.not19.i185, %i.ix
  %extract.t744 = trunc i128 %i.gh to i32         ; 3 uses
  br i1 %or.cond494, label %_ZN3fmt3v126detail6bigintlSEi.exit138, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184
  %i.iy = load ptr, ptr %11, align 8, !tbaa !520  ; 3 uses
  %i.iz = sub nsw i32 32, %i.iw
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !119 ; 2 uses
  %i.jb = lshr i32 %i.ja, %i.iz                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !737
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !409
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !410
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !407    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !387
  store i64 %i.r, ptr %i.q, align 8, !tbaa !387
  store ptr null, ptr %2, align 8, !tbaa !387
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !387, !alias.scope !2815, !noalias !2814
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !387, !alias.scope !2815, !noalias !2814
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !387, !alias.scope !2814, !noalias !2815
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !387, !alias.scope !2814, !noalias !2815
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !387, !alias.scope !2815, !noalias !2814
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !387, !alias.scope !2815, !noalias !2814
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2804

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !387, !alias.scope !2815, !noalias !2814
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !387, !alias.scope !2814, !noalias !2815
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !387, !alias.scope !2815, !noalias !2814
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2805

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound0 = icmp ult ptr %i.ah, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec42, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.au = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2817)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !387, !alias.scope !2818, !noalias !2816
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !tbaa !387, !alias.scope !2818, !noalias !2816
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !387, !alias.scope !2819, !noalias !2818
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !tbaa !387, !alias.scope !2819, !noalias !2818
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !387, !alias.scope !2818, !noalias !2816
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !387, !alias.scope !2818, !noalias !2816
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !2812

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2817)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !387, !alias.scope !2817, !noalias !2816
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !387, !alias.scope !2816, !noalias !2817
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !387, !alias.scope !2817, !noalias !2816
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2813

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !406
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !407
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !408
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !406
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEEEvSE_T_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %.not98 = icmp eq ptr %2, %3
  br i1 %.not98, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !406
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408  ; 27 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 7 uses
  %i.q = add i64 %i.a, -8
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check166 = icmp ult i64 %i.r, 200
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck167

vector.memcheck167:                               ; preds = %bb.d
  %i.u = and i64 %i.r, -8                         ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = add i64 %i.u, %i.b
  %i.y = add i64 %i.x, 8
  %i.z = sub i64 %i.y, %i.a
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.z
  %bound0168 = icmp ult ptr %i.h, %i.aa
  %bound1169 = icmp ult ptr %i.p, %i.w
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck167
  %n.vec172 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.ab = shl i64 %n.vec172, 3                    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ab
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.ae = shl i64 %index174, 3                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.h, i64 %i.ae ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.p, i64 %i.ae ; 4 uses
  %i.af = getelementptr i8, ptr %next.gep176, i64 16
  %wide.load177 = load <2 x i64>, ptr %next.gep176, align 8, !tbaa !387, !alias.scope !2852
  %wide.load178 = load <2 x i64>, ptr %i.af, align 8, !tbaa !387, !alias.scope !2852
  %i.ag = getelementptr i8, ptr %next.gep175, i64 16
  store <2 x i64> %wide.load177, ptr %next.gep175, align 8, !tbaa !387, !alias.scope !2853, !noalias !2852
  store <2 x i64> %wide.load178, ptr %i.ag, align 8, !tbaa !387, !alias.scope !2853, !noalias !2852
  %i.ah = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep176, align 8, !tbaa !387, !alias.scope !2852
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !387, !alias.scope !2852
  %index.next179 = add nuw i64 %index174, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.ai, label %middle.block180, label %vector.body173, !llvm.loop !2823

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.t, %n.vec172
  br i1 %cmp.n181, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck167, %bb.d, %middle.block180
  %.09.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck167 ], [ %i.h, %bb.d ], [ %i.ac, %middle.block180 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck167 ], [ %i.p, %bb.d ], [ %i.ad, %middle.block180 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !387
  store i64 %i.aj, ptr %.09.i.i.i.i.i, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !387
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2824

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block180
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.am, ptr %i.g, align 8, !tbaa !408
  %i.an = ptrtoint ptr %i.p to i64
  %i.ao = sub i64 %i.an, %i.l
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i43:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ay, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.ap, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.h, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !387
  store ptr null, ptr %i.ar, align 8, !tbaa !387
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !387 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !387
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i43
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(64) %i.au) #26, !inline_history !2825
  br label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i43
  %i.ay = add nsw i64 %.010.i.i.i.i.i, -1
  %i.az = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, !llvm.loop !2826

_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.ba = icmp sgt i64 %i.d, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i44:                               ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bi, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %i.d, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bh, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %1, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %2, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 3 uses
  %i.bb = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !387
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !387
  %i.bc = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !387 ; 3 uses
  store ptr %i.bb, ptr %.0811.i.i.i.i.i, align 8, !tbaa !387
  %.not.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i45, label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i44
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(64) %i.bc) #26, !inline_history !2827
  br label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47

_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i44
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bi = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, !llvm.loop !2828

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.m ; 6 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bk, %3
  br i1 %.not6.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bl = add i64 %i.a, %i.l
  %i.bm = add i64 %i.bl, -8
  %i.bn = add i64 %i.j, %i.b
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 232
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.br = and i64 %i.bo, -8                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.h, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = add i64 %i.br, %i.j
  %i.bv = add i64 %i.bu, 8
  %i.bw = sub i64 %i.bv, %i.l
  %i.bx = getelementptr i8, ptr %2, i64 %i.bw
  %bound0 = icmp ult ptr %i.h, %i.bx
  %bound1 = icmp ult ptr %i.bk, %i.bt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.by = shl i64 %n.vec, 3                       ; 2 uses
  %i.bz = getelementptr i8, ptr %i.h, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bk, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.cb ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.bk, i64 %i.cb ; 4 uses
  %i.cc = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep133, align 8, !tbaa !387, !alias.scope !2854
  %wide.load134 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !387, !alias.scope !2854
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !387, !alias.scope !2855, !noalias !2854
  store <2 x i64> %wide.load134, ptr %i.cd, align 8, !tbaa !387, !alias.scope !2855, !noalias !2854
  %i.ce = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep133, align 8, !tbaa !387, !alias.scope !2854
  store <2 x ptr> splat (ptr null), ptr %i.ce, align 8, !tbaa !387, !alias.scope !2854
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !2832

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader253

.lr.ph.i.i.i.i.preheader253:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader253, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader253 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader253 ] ; 3 uses
  %i.cg = load i64, ptr %.sroa.04.07.i.i.i.i, align 8, !tbaa !387
  store i64 %i.cg, ptr %.08.i.i.i.i, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.07.i.i.i.i, align 8, !tbaa !387
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ch, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2833

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cj = sub nsw i64 %i.d, %i.n
  %i.ck = getelementptr [8 x i8], ptr %i.h, i64 %i.cj ; 5 uses
  %.not7.i.i.i.i.i48 = icmp eq ptr %1, %i.h
  br i1 %.not7.i.i.i.i.i48, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit
  %i.cl = add i64 %i.j, -8
  %i.cm = sub i64 %i.cl, %i.l                     ; 3 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.cm, 200
  br i1 %min.iters.check142, label %.lr.ph.i.i.i.i.i49.preheader252, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.cp = and i64 %i.cm, -8                       ; 2 uses
  %i.cq = add i64 %i.c, %i.cp
  %i.cr = add i64 %i.cq, 8
  %i.cs = sub i64 %i.cr, %i.m
  %i.ct = getelementptr i8, ptr %i.h, i64 %i.cs
  %i.cu = getelementptr i8, ptr %1, i64 %i.cp
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %bound0144 = icmp ult ptr %i.ck, %i.cv
  %bound1145 = icmp ult ptr %1, %i.ct
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %.lr.ph.i.i.i.i.i49.preheader252, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck143
  %n.vec148 = and i64 %i.co, 4611686018427387900  ; 3 uses
  %i.cw = shl i64 %n.vec148, 3                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ck, i64 %i.cw
  %i.cy = getelementptr i8, ptr %1, i64 %i.cw
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.cz = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.ck, i64 %i.cz ; 2 uses
  %next.gep152 = getelementptr i8, ptr %1, i64 %i.cz ; 4 uses
  %i.da = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <2 x i64>, ptr %next.gep152, align 8, !tbaa !387, !alias.scope !2856
  %wide.load154 = load <2 x i64>, ptr %i.da, align 8, !tbaa !387, !alias.scope !2856
  %i.db = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load153, ptr %next.gep151, align 8, !tbaa !387, !alias.scope !2857, !noalias !2856
  store <2 x i64> %wide.load154, ptr %i.db, align 8, !tbaa !387, !alias.scope !2857, !noalias !2856
  %i.dc = getelementptr i8, ptr %next.gep152, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep152, align 8, !tbaa !387, !alias.scope !2856
  store <2 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !387, !alias.scope !2856
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.dd, label %middle.block156, label %vector.body149, !llvm.loop !2837

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.co, %n.vec148
  br i1 %cmp.n157, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader252

.lr.ph.i.i.i.i.i49.preheader252:                  ; preds = %vector.memcheck143, %.lr.ph.i.i.i.i.i49.preheader, %middle.block156
  %.09.i.i.i.i.i50.ph = phi ptr [ %i.ck, %vector.memcheck143 ], [ %i.ck, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.cx, %middle.block156 ]
  %.sroa.04.08.i.i.i.i.i51.ph = phi ptr [ %1, %vector.memcheck143 ], [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.cy, %middle.block156 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader252, %.lr.ph.i.i.i.i.i49
  %.09.i.i.i.i.i50 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i49 ], [ %.09.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader252 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i51 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.08.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader252 ] ; 3 uses
  %i.de = load i64, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !387
  store i64 %i.de, ptr %.09.i.i.i.i.i50, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !387
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 8
  %.not.i.i.i.i.i52 = icmp eq ptr %i.df, %i.h
  br i1 %.not.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !2838

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block156, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !408
  %i.di = ashr exact i64 %i.m, 3                  ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i56:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62
  %.012.i.i.i.i.i57 = phi i64 [ %i.dr, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %i.di, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 2 uses
  %.0811.i.i.i.i.i58 = phi ptr [ %i.dq, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %1, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 3 uses
  %.0910.i.i.i.i.i59 = phi ptr [ %i.dp, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %2, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 3 uses
  %i.dk = load ptr, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !387
  store ptr null, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !387
  %i.dl = load ptr, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !387 ; 3 uses
  store ptr %i.dk, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !387
  %.not.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i60, label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !117
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(64) %i.dl) #26, !inline_history !2827
  br label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62

_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61, %.lr.ph.i.i.i.i.i56
  %i.dp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 8
  %i.dr = add nsw i64 %.012.i.i.i.i.i57, -1
  %i.ds = icmp sgt i64 %.012.i.i.i.i.i57, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, !llvm.loop !2828

bb.e:                                             ; preds = %bb.b
  %i.dt = load ptr, ptr %0, align 8, !tbaa !407   ; 9 uses
  %i.du = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.dv = sub i64 %i.j, %i.du
  %i.dw = ashr exact i64 %i.dv, 3                 ; 4 uses
  %i.dx = sub nsw i64 1152921504606846975, %i.dw
  %i.dy = icmp ult i64 %i.dx, %i.d
  br i1 %i.dy, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.424) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.d)
  %i.dz = add nsw i64 %.sroa.speculated.i, %i.dw  ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dw
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 1152921504606846975)
  %i.ec = select i1 %i.ea, i64 1152921504606846975, i64 %i.eb ; 3 uses
  %.not.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #27
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.ef = phi ptr [ %i.ee, %bb.g ], [ null, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not7.i.i.i.i.i64 = icmp eq ptr %i.dt, %1
  br i1 %.not7.i.i.i.i.i64, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65.preheader

.lr.ph.i.i.i.i.i65.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit
  %i.eg = add i64 %4, -8
  %i.eh = sub i64 %i.eg, %i.du                    ; 2 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check185 = icmp ult i64 %i.eh, 24
  br i1 %min.iters.check185, label %.lr.ph.i.i.i.i.i65.preheader249, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.i.i.i.i.i65.preheader
  %n.vec187 = and i64 %i.ej, 4611686018427387900  ; 3 uses
  %i.ek = shl i64 %n.vec187, 3                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.ef, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %i.dt, i64 %i.ek
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %i.en = shl i64 %index189, 3                    ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ef, i64 %i.en ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.dt, i64 %i.en ; 4 uses
  %i.eo = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <2 x i64>, ptr %next.gep191, align 8, !tbaa !387
  %wide.load193 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !387
  %i.ep = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %wide.load192, ptr %next.gep190, align 8, !tbaa !387
  store <2 x i64> %wide.load193, ptr %i.ep, align 8, !tbaa !387
  %i.eq = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep191, align 8, !tbaa !387
  store <2 x ptr> splat (ptr null), ptr %i.eq, align 8, !tbaa !387
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.er, label %middle.block195, label %vector.body188, !llvm.loop !2839

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %i.ej, %n.vec187
  br i1 %cmp.n196, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65.preheader249

.lr.ph.i.i.i.i.i65.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i65.preheader, %middle.block195
  %.09.i.i.i.i.i66.ph = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.el, %middle.block195 ]
  %.sroa.04.08.i.i.i.i.i67.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.em, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %.lr.ph.i.i.i.i.i65.preheader249, %.lr.ph.i.i.i.i.i65
  %.09.i.i.i.i.i66 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i65 ], [ %.09.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i65.preheader249 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i67 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i65 ], [ %.sroa.04.08.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i65.preheader249 ] ; 3 uses
  %i.es = load i64, ptr %.sroa.04.08.i.i.i.i.i67, align 8, !tbaa !387
  store i64 %i.es, ptr %.09.i.i.i.i.i66, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i67, align 8, !tbaa !387
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i67, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i66, i64 8 ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.et, %1
  br i1 %.not.i.i.i.i.i68, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65, !llvm.loop !2840

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i65, %middle.block195, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.ef, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit ], [ %i.el, %middle.block195 ], [ %i.eu, %.lr.ph.i.i.i.i.i65 ] ; 6 uses
  %i.ev = add i64 %i.a, -8
  %i.ew = sub i64 %i.ev, %i.b                     ; 3 uses
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.ew, 136
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i71.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.ez = and i64 %i.ew, -8
  %i.fa = add i64 %i.ez, 8                        ; 2 uses
  %i.fb = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fa
  %i.fc = getelementptr i8, ptr %2, i64 %i.fa
  %bound0207 = icmp ult ptr %.0.lcssa.i.i.i.i.i69, %i.fc
  %bound1208 = icmp ult ptr %2, %i.fb
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %.lr.ph.i.i.i.i71.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck206
  %n.vec211 = and i64 %i.ey, 4611686018427387900  ; 3 uses
  %i.fd = shl i64 %n.vec211, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fd ; 2 uses
  %i.ff = getelementptr i8, ptr %2, i64 %i.fd
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next218, %vector.body212 ] ; 2 uses
  %i.fg = shl i64 %index213, 3                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fg ; 2 uses
  %next.gep215 = getelementptr i8, ptr %2, i64 %i.fg ; 4 uses
  %i.fh = getelementptr i8, ptr %next.gep215, i64 16
  %wide.load216 = load <2 x i64>, ptr %next.gep215, align 8, !tbaa !387, !alias.scope !2858
  %wide.load217 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !387, !alias.scope !2858
  %i.fi = getelementptr i8, ptr %next.gep214, i64 16
  store <2 x i64> %wide.load216, ptr %next.gep214, align 8, !tbaa !387, !alias.scope !2859, !noalias !2858
  store <2 x i64> %wide.load217, ptr %i.fi, align 8, !tbaa !387, !alias.scope !2859, !noalias !2858
  %i.fj = getelementptr i8, ptr %next.gep215, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep215, align 8, !tbaa !387, !alias.scope !2858
  store <2 x ptr> splat (ptr null), ptr %i.fj, align 8, !tbaa !387, !alias.scope !2858
  %index.next218 = add nuw i64 %index213, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.fk, label %middle.block219, label %vector.body212, !llvm.loop !2844

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %i.ey, %n.vec211
  br i1 %cmp.n220, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76, label %.lr.ph.i.i.i.i71.preheader

.lr.ph.i.i.i.i71.preheader:                       ; preds = %vector.memcheck206, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %middle.block219
  %.08.i.i.i.i72.ph = phi ptr [ %.0.lcssa.i.i.i.i.i69, %vector.memcheck206 ], [ %.0.lcssa.i.i.i.i.i69, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.fe, %middle.block219 ]
  %.sroa.04.07.i.i.i.i73.ph = phi ptr [ %2, %vector.memcheck206 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.ff, %middle.block219 ]
  br label %.lr.ph.i.i.i.i71

.lr.ph.i.i.i.i71:                                 ; preds = %.lr.ph.i.i.i.i71.preheader, %.lr.ph.i.i.i.i71
  %.08.i.i.i.i72 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i71 ], [ %.08.i.i.i.i72.ph, %.lr.ph.i.i.i.i71.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i73 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i71 ], [ %.sroa.04.07.i.i.i.i73.ph, %.lr.ph.i.i.i.i71.preheader ] ; 3 uses
  %i.fl = load i64, ptr %.sroa.04.07.i.i.i.i73, align 8, !tbaa !387
  store i64 %i.fl, ptr %.08.i.i.i.i72, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.07.i.i.i.i73, align 8, !tbaa !387
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i73, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.fm, %3
  br i1 %.not.i.i.i.i74, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76, label %.lr.ph.i.i.i.i71, !llvm.loop !2845

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76: ; preds = %.lr.ph.i.i.i.i71, %middle.block219
  %.lcssa130 = phi ptr [ %i.fe, %middle.block219 ], [ %i.fn, %.lr.ph.i.i.i.i71 ] ; 7 uses
  %.not7.i.i.i.i.i77 = icmp eq ptr %1, %i.h
  br i1 %.not7.i.i.i.i.i77, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76
  %i.fo = add i64 %i.j, -8
  %i.fp = sub i64 %i.fo, %4                       ; 3 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fp, 136
  br i1 %min.iters.check229, label %.lr.ph.i.i.i.i.i78.preheader247, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader
  %i.fs = and i64 %i.fp, -8
  %i.ft = add i64 %i.fs, 8                        ; 2 uses
  %i.fu = getelementptr i8, ptr %.lcssa130, i64 %i.ft
  %i.fv = getelementptr i8, ptr %1, i64 %i.ft
  %bound0231 = icmp ult ptr %.lcssa130, %i.fv
  %bound1232 = icmp ult ptr %1, %i.fu
  %found.conflict233 = and i1 %bound0231, %bound1232
  br i1 %found.conflict233, label %.lr.ph.i.i.i.i.i78.preheader247, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck230
  %n.vec235 = and i64 %i.fr, 4611686018427387900  ; 3 uses
  %i.fw = shl i64 %n.vec235, 3                    ; 2 uses
  %i.fx = getelementptr i8, ptr %.lcssa130, i64 %i.fw ; 2 uses
  %i.fy = getelementptr i8, ptr %1, i64 %i.fw
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.fz = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %.lcssa130, i64 %i.fz ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.fz ; 4 uses
  %i.ga = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep239, align 8, !tbaa !387, !alias.scope !2860
  %wide.load241 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !387, !alias.scope !2860
  %i.gb = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !387, !alias.scope !2861, !noalias !2860
  store <2 x i64> %wide.load241, ptr %i.gb, align 8, !tbaa !387, !alias.scope !2861, !noalias !2860
  %i.gc = getelementptr i8, ptr %next.gep239, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !387, !alias.scope !2860
  store <2 x ptr> splat (ptr null), ptr %i.gc, align 8, !tbaa !387, !alias.scope !2860
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.gd, label %middle.block243, label %vector.body236, !llvm.loop !2849

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.fr, %n.vec235
  br i1 %cmp.n244, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78.preheader247

.lr.ph.i.i.i.i.i78.preheader247:                  ; preds = %vector.memcheck230, %.lr.ph.i.i.i.i.i78.preheader, %middle.block243
  %.09.i.i.i.i.i79.ph = phi ptr [ %.lcssa130, %vector.memcheck230 ], [ %.lcssa130, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.fx, %middle.block243 ]
  %.sroa.04.08.i.i.i.i.i80.ph = phi ptr [ %1, %vector.memcheck230 ], [ %1, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.fy, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader247, %.lr.ph.i.i.i.i.i78
  %.09.i.i.i.i.i79 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i78 ], [ %.09.i.i.i.i.i79.ph, %.lr.ph.i.i.i.i.i78.preheader247 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i80 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i78 ], [ %.sroa.04.08.i.i.i.i.i80.ph, %.lr.ph.i.i.i.i.i78.preheader247 ] ; 3 uses
  %i.ge = load i64, ptr %.sroa.04.08.i.i.i.i.i80, align 8, !tbaa !387
  store i64 %i.ge, ptr %.09.i.i.i.i.i79, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i80, align 8, !tbaa !387
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i80, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i79, i64 8 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.gf, %i.h
  br i1 %.not.i.i.i.i.i81, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78, !llvm.loop !2850

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83: ; preds = %.lr.ph.i.i.i.i.i78, %middle.block243, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76
  %.0.lcssa.i.i.i.i.i82 = phi ptr [ %.lcssa130, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76 ], [ %i.fx, %middle.block243 ], [ %i.gg, %.lr.ph.i.i.i.i.i78 ]
  %.not4.i.i = icmp eq ptr %i.dt, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.gl, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.dt, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83 ] ; 2 uses
  %i.gh = load ptr, ptr %.05.i.i, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i84, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !117
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(64) %i.gh) #26, !inline_history !2851
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gl, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83
  %.not.i85 = icmp eq ptr %i.dt, null
  br i1 %.not.i85, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit
  %i.gm = load ptr, ptr %i.e, align 8, !tbaa !406
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.gn, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.go) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit, %bb.h
  store ptr %i.ef, ptr %0, align 8, !tbaa !407
  store ptr %.0.lcssa.i.i.i.i.i82, ptr %i.g, align 8, !tbaa !408
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ec
  store ptr %i.gp, ptr %i.e, align 8, !tbaa !406
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKjS3_RKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %8 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.3206", align 16 ; 7 uses
  %12 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !256, !noundef !257
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !440
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !428
  store i64 250, ptr %i.h, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  %i.l = load i32, ptr %5, align 4, !tbaa !119, !noalias !2864
  store i32 %i.l, ptr %11, align 16, !tbaa !253, !alias.scope !2864
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.n = load i32, ptr %6, align 4, !tbaa !119, !noalias !2864
  store i32 %i.n, ptr %i.m, align 16, !tbaa !253, !alias.scope !2864
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.p = load i64, ptr %7, align 8, !tbaa !118, !noalias !2864
  store i64 %i.p, ptr %i.o, align 16, !tbaa !253, !alias.scope !2864
  %i.q = icmp eq i64 %4, 2
  br i1 %i.q, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load i16, ptr %3, align 1
  %i.s = icmp ne i16 %i.r, 32123
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %11, align 16, !tbaa !253 ; 2 uses
  %i.v = trunc i128 %.sroa.0.0.copyload.sink66.i to i32 ; 4 uses
  %i.w = or i32 %i.v, 1
  %i.x = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 31
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118
  %i.ac = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ah = ashr i64 %i.ae, 32                      ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 250
  br i1 %i.ai, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 375) ; 2 uses
  %i.aj = call noalias ptr @malloc(i64 noundef %spec.select.i) #31 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i30, label %bb.e, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %8, align 8, !tbaa !117
  %i.ak = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.ak) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.aj, ptr %10, align 8, !tbaa !428
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.d, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.al = phi ptr [ %i.aj, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.k, %bb.d ] ; 3 uses
  store i64 %i.ah, ptr %i.j, align 8, !tbaa !429
  %i.am = icmp ugt i32 %i.v, 99
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i14

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.an, %.lr.ph.i.i.i ], [ %i.ag, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i32 [ %i.av, %.lr.ph.i.i.i ], [ %i.v, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.an = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.ao = zext i32 %i.an to i64
end_hunk_1
