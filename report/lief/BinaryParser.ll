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
  %14 = load ptr, ptr %12, align 8, !tbaa !520    ; 4 uses
  %15 = ptrtoaddr ptr %i.dl to i64
  %i.dn = ptrtoaddr ptr %i.dm to i64              ; 2 uses
  %i.do = add i64 %15, -4
  %i.dp = sub i64 %i.do, %i.dn                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check1525 = icmp ult i64 %i.dp, 44
  %i.ds = ptrtoaddr ptr %14 to i64
  %i.dt = sub i64 %i.dn, %i.ds
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond1628 = select i1 %min.iters.check1525, i1 true, i1 %diff.check
  br i1 %or.cond1628, label %.lr.ph.i.i.preheader, label %vector.ph1526

vector.ph1526:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1527 = and i64 %i.dr, 9223372036854775800 ; 3 uses
  %i.du = shl i64 %n.vec1527, 2                   ; 2 uses
  %i.dv = getelementptr i8, ptr %14, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dm, i64 %i.du
  br label %vector.body1528

vector.body1528:                                  ; preds = %vector.body1528, %vector.ph1526
  %index1529 = phi i64 [ 0, %vector.ph1526 ], [ %index.next1533, %vector.body1528 ] ; 2 uses
  %i.dx = shl i64 %index1529, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %14, i64 %i.dx ; 2 uses
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
  %.08.i.i.ph = phi ptr [ %14, %.lr.ph.i.preheader.i ], [ %i.dv, %middle.block1534 ]
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
  %16 = load ptr, ptr %13, align 8, !tbaa !520    ; 7 uses
  %17 = ptrtoaddr ptr %i.ep to i64
  %i.er = ptrtoaddr ptr %i.eq to i64              ; 2 uses
  %i.es = add i64 %17, -4
  %i.et = sub i64 %i.es, %i.er                    ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check1541 = icmp ult i64 %i.et, 44
  %i.ew = ptrtoaddr ptr %16 to i64
  %i.ex = sub i64 %i.er, %i.ew
  %diff.check1539 = icmp ugt i64 %i.ex, -32
  %or.cond1630 = select i1 %min.iters.check1541, i1 true, i1 %diff.check1539
  br i1 %or.cond1630, label %.lr.ph.i.i144.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %.lr.ph.i.preheader.i143
  %n.vec1543 = and i64 %i.ev, 9223372036854775800 ; 3 uses
  %i.ey = shl i64 %n.vec1543, 2                   ; 2 uses
  %i.ez = getelementptr i8, ptr %16, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.eq, i64 %i.ey
  br label %vector.body1544

vector.body1544:                                  ; preds = %vector.body1544, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1550, %vector.body1544 ] ; 2 uses
  %i.fb = shl i64 %index1545, 2                   ; 2 uses
  %next.gep1546 = getelementptr i8, ptr %16, i64 %i.fb ; 2 uses
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
  %.08.i.i145.ph = phi ptr [ %16, %.lr.ph.i.preheader.i143 ], [ %i.ez, %middle.block1551 ]
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
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %index1560 ; 3 uses
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
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %.01418.i154 ; 2 uses
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
  %i.ge = phi ptr [ %16, %bb.p ], [ %.pre608, %bb.q ]
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
begin_hunk_1_@_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE:bb.a

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !427
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !440
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad) #26, !inline_history !22
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !429 ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !427
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !428 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.026.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <16 x i8>, ptr %i.ao, align 1, !tbaa !253
  %wide.load41 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !253
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !253
  store <16 x i8> %wide.load41, ptr %i.ar, align 1, !tbaa !253
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1447

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !451

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.at, align 1, !tbaa !253
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.au, align 1, !tbaa !253
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1448

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.025.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !253
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !253
  %i.az = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1449

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %i.ba = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.s, align 8, !tbaa !429
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bd = add i64 %i.bc, %.025.i.i                ; 2 uses
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !429
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !253
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !253
  %i.bi = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !253
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bi
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !253
  %i.bm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !253
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !253
  %i.bq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !253
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !253
  %i.bu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1450

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !485 ; 3 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bw = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not12 = icmp eq ptr %i.bv, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !1451

.loopexit:                                        ; preds = %bb.g, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bw, %bb.g ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !429 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !427
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

bb.h:                                             ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !440
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.bz) #26, !inline_history !15
  %.pre.i.i16 = load i64, ptr %i.bx, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

_ZN3fmt3v1214basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.h
  %.pre-phi.i.i15 = phi i64 [ %i.bz, %.loopexit ], [ %.pre2.i.i17, %bb.h ]
  %i.cf = phi i64 [ %i.by, %.loopexit ], [ %.pre.i.i16, %bb.h ]
  %i.cg = load ptr, ptr %.sroa.022.127, align 8, !tbaa !428
  store i64 %.pre-phi.i.i15, ptr %i.bx, align 8, !tbaa !429
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 34, ptr %i.ch, align 1, !tbaa !253
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %0, i64 %1, ptr noundef byval(%class.anon.869) align 8 %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %3 = alloca %class.anon.873, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !1459
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.024 = phi ptr [ %0, %bb.b ], [ %i.bp, %bb.d ] ; 8 uses
  %.not30 = icmp ult ptr %.024, %i.e
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %.024, align 1, !tbaa !253
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.85, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !253
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.024, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !119
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !253   ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !253 ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.024, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !253 ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !119
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !119
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
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !119
  %i.bk = lshr i32 %i.bh, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0                  ; 3 uses
  %i.bl = select i1 %.not.i, i32 %i.an, i32 -1
  %i.bm = add nsw i64 %i.o, %i.l
  %i.bn = select i1 %.not.i, i64 %i.bm, i64 1
  %i.bo = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.bl, ptr nonnull %.024, i64 %i.bn)
  %i.bp = select i1 %.not.i, ptr %i.p, ptr %i.u
  br i1 %i.bo, label %bb.c, label %.thread, !llvm.loop !1453

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.024, %bb.c ]   ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 8 uses
  %i.bu = icmp eq ptr %i.bq, %.2
  br i1 %i.bu, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bt, 8
  %4 = ptrtoaddr ptr %i.b to i64
  %i.bv = sub i64 %i.bs, %4
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond61 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond61, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.bt, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bt, 24
  %n.vec = and i64 %i.bt, -32                     ; 5 uses
  %i.bx = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.by = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !253
  %wide.load50 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !253
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !253
  store <16 x i8> %wide.load50, ptr %i.ca, align 1, !tbaa !253
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !569

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bt, -8                    ; 4 uses
  %i.cc = getelementptr i8, ptr %i.b, i64 %n.vec52
  %i.cd = getelementptr i8, ptr %.2, i64 %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.b, i64 %index53
  %next.gep55 = getelementptr i8, ptr %.2, i64 %index53
  %wide.load56 = load <8 x i8>, ptr %next.gep55, align 1, !tbaa !253
  store <8 x i8> %wide.load56, ptr %next.gep54, align 1, !tbaa !253
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1455

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.bt, %n.vec52
  br i1 %cmp.n58, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 3 uses
  %i.cf = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph63 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.cg = sub i64 %i.cf, %.057.i.ph63
  %xtraiter = and i64 %i.cg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ch, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.057.i.prol, align 1, !tbaa !253
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ci, ptr %.08.i.prol, align 1, !tbaa !253
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1456

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %i.ck = sub i64 %.057.i.ph63, %i.cf
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cn = load i8, ptr %.057.i, align 1, !tbaa !253
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cn, ptr %.08.i, align 1, !tbaa !253
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !253
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !253
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !253
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !253
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !253
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !253
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !253
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !253
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !253
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !253
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.df = load i8, ptr %i.db, align 1, !tbaa !253
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !253
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.di = load i8, ptr %i.de, align 1, !tbaa !253
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !253
  %.not.i33.7 = icmp eq ptr %i.dh, %i.bq
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1457

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 7 uses
  %i.dl = load i8, ptr %.0, align 1, !tbaa !253
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = lshr i32 %i.dm, 3                       ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @.str.85, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !253
  %i.dr = sext i8 %i.dq to i64                    ; 6 uses
  %i.ds = getelementptr inbounds i8, ptr %.0, i64 %i.dr
  %.not.i.i34 = lshr i32 -2130771968, %i.dn
  %i.dt = and i32 %.not.i.i34, 1
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dr
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !119
  %i.dy = and i32 %i.dx, %i.dm
  %i.dz = shl nuw nsw i32 %i.dy, 18
  %i.ea = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !253 ; 2 uses
  %i.ec = and i8 %i.eb, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 12
  %i.ef = or disjoint i32 %i.ee, %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !253 ; 2 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 6
  %i.el = or disjoint i32 %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !253 ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.el, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dr
  %i.es = load i32, ptr %i.er, align 4, !tbaa !119
  %i.et = lshr i32 %i.eq, %i.es                   ; 4 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dr
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !119
  %i.ew = icmp ult i32 %i.et, %i.ev
  %i.ex = select i1 %i.ew, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.et, 2147481600
  %i.ey = icmp eq i32 %.mask.i.i35, 55296
  %i.ez = select i1 %i.ey, i32 128, i32 0
  %i.fa = icmp samesign ugt i32 %i.et, 1114111
  %i.fb = select i1 %i.fa, i32 256, i32 0
  %i.fc = lshr i8 %i.eb, 2
  %i.fd = and i8 %i.fc, 48
  %i.fe = lshr i8 %i.eh, 4
  %i.ff = and i8 %i.fe, 12
  %i.fg = lshr i8 %i.en, 6
  %i.fh = or disjoint i8 %i.ff, %i.fd
  %i.fi = or disjoint i8 %i.fh, %i.fg
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.ex, %i.fj
  %i.fl = or disjoint i32 %i.fk, %i.fb
  %i.fm = or disjoint i32 %i.fl, %i.ez
  %i.fn = xor i32 %i.fm, 42
  %i.fo = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dr
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !119
  %i.fq = lshr i32 %i.fn, %i.fp
  %.not.i36 = icmp eq i32 %i.fq, 0                ; 3 uses
  %i.fr = select i1 %.not.i36, i32 %i.et, i32 -1
  %i.fs = add nsw i64 %i.du, %i.dr
  %i.ft = select i1 %.not.i36, i64 %i.fs, i64 1
  %i.fu = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fr, ptr %.3, i64 %i.ft) ; 3 uses
  %i.fv = select i1 %.not.i36, ptr %i.dv, ptr %i.ea ; 2 uses
  %i.fw = ptrtoint ptr %i.fv to i64
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_:bb.a
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !568
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !118
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !491 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !568 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !429
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.ca, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !427
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !440
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az) #26, !inline_history !1460
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !429 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !427
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !428 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.026.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !253
  %wide.load36 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !253
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load, ptr %i.bm, align 1, !tbaa !253
  store <16 x i8> %wide.load36, ptr %i.bn, align 1, !tbaa !253
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !451

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !253
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bq, align 1, !tbaa !253
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1462

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !253
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !253
  %i.bv = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1463

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.prol ]
  %i.bw = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !429
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.by = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bz = add i64 %i.by, %.025.i.i.i              ; 2 uses
  store i64 %i.bz, ptr %i.ao, align 8, !tbaa !429
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !17

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !253
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !253
  %i.ce = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !253
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !253
  %i.ci = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !253
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !253
  %i.cm = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !253
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !253
  %i.cq = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cq, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1464

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cr = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cr, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.f = load i8, ptr %.02455, align 1, !tbaa !253
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.85, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !253
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.02455, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !119
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !253   ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !253 ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !253 ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !119
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !119
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
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !119
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
  %i.bq = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bp
  store ptr %.02455, ptr %2, align 8, !tbaa !260
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !260
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !119
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.br = select i1 %.not.i, ptr %i.p, ptr %i.u   ; 3 uses
  %.not30 = icmp ult ptr %i.br, %i.e
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1465

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq ptr %i.bs, %.2
  br i1 %i.bw, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %3 = ptrtoaddr ptr %i.b to i64
  %i.bx = sub i64 %i.bu, %3
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !253
  %wide.load109 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !253
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !253
  store <16 x i8> %wide.load109, ptr %i.cc, align 1, !tbaa !253
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !569

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.bv, -8                   ; 4 uses
  %i.ce = getelementptr i8, ptr %i.b, i64 %n.vec111
  %i.cf = getelementptr i8, ptr %.2, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %next.gep113 = getelementptr i8, ptr %i.b, i64 %index112
  %next.gep114 = getelementptr i8, ptr %.2, i64 %index112
  %wide.load115 = load <8 x i8>, ptr %next.gep114, align 1, !tbaa !253
  store <8 x i8> %wide.load115, ptr %next.gep113, align 1, !tbaa !253
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.bv, %n.vec111
  br i1 %cmp.n117, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 3 uses
  %i.ch = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph136 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.ci = sub i64 %i.ch, %.057.i.ph136
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.057.i.prol, align 1, !tbaa !253
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.08.i.prol, align 1, !tbaa !253
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1468

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cm = sub i64 %.057.i.ph136, %i.ch
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cp = load i8, ptr %.057.i, align 1, !tbaa !253
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cp, ptr %.08.i, align 1, !tbaa !253
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !253
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !253
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !253
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !253
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !253
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !253
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !253
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !253
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !253
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !253
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !253
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !253
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !253
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !253
  %.not.i33.7 = icmp eq ptr %i.dj, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1469

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.fz, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %i.dn = load i8, ptr %.0, align 1, !tbaa !253
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @.str.85, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !253
  %i.dt = sext i8 %i.ds to i64                    ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %.0, i64 %i.dt
  %.not.i.i34 = lshr i32 -2130771968, %i.dp
  %i.dv = and i32 %.not.i.i34, 1
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !119
  %i.ea = and i32 %i.dz, %i.do
  %i.eb = shl nuw nsw i32 %i.ea, 18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !253 ; 2 uses
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !253 ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 6
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !253 ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.en, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dt
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !119
  %i.ev = lshr i32 %i.es, %i.eu                   ; 4 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dt
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !119
  %i.ey = icmp ult i32 %i.ev, %i.ex
  %i.ez = select i1 %i.ey, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ev, 2147481600
  %i.fa = icmp eq i32 %.mask.i.i35, 55296
  %i.fb = select i1 %i.fa, i32 128, i32 0
  %i.fc = icmp samesign ugt i32 %i.ev, 1114111
  %i.fd = select i1 %i.fc, i32 256, i32 0
  %i.fe = lshr i8 %i.ed, 2
  %i.ff = and i8 %i.fe, 48
  %i.fg = lshr i8 %i.ej, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.ep, 6
  %i.fj = or disjoint i8 %i.fh, %i.ff
  %i.fk = or disjoint i8 %i.fj, %i.fi
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.ez, %i.fl
  %i.fn = or disjoint i32 %i.fm, %i.fd
  %i.fo = or disjoint i32 %i.fn, %i.fb
  %i.fp = xor i32 %i.fo, 42
  %i.fq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dt
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !119
  %i.fs = lshr i32 %i.fp, %i.fr
  %.not.i36 = icmp eq i32 %i.fs, 0                ; 3 uses
  %i.ft = select i1 %.not.i36, i32 %i.ev, i32 -1  ; 4 uses
  %i.fu = icmp ult i32 %i.ft, 32
  br i1 %i.fu, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

end_hunk_2
begin_hunk_3_@_ZN6spdlog7details10backtracer9push_backERKNS0_7log_msgE:bb.a
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !253
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bc
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !253
  %i.bg = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !253
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !253
  %i.bk = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bk, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1489

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit.i: ; preds = %._crit_edge.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.pre.i4.i = phi i64 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.at, %._crit_edge.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !491 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !492 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo ; 2 uses
  %.not31.i2.i = icmp samesign eq i64 %i.bo, 0
  br i1 %.not31.i2.i, label %_ZN6spdlog7details14log_msg_bufferC2ERKNS0_7log_msgE.exit, label %.lr.ph34.i3.i

.lr.ph34.i3.i:                                    ; preds = %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit.i
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i14.i, %.lr.ph34.i3.i
  %i.br = phi i64 [ %.pre.i4.i, %.lr.ph34.i3.i ], [ %i.cy, %._crit_edge.i14.i ] ; 3 uses
  %.02732.i5.i = phi ptr [ %i.bm, %.lr.ph34.i3.i ], [ %i.cz, %._crit_edge.i14.i ] ; 9 uses
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !427
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = ptrtoint ptr %.02732.i5.i to i64        ; 2 uses
  %i.bv = sub i64 %i.bq, %i.bu                    ; 4 uses
  %i.bw = icmp ult i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !440
  %i.by = add i64 %i.bv, %i.br
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.by) #26, !inline_history !1485
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !429 ; 2 uses
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !427
  %i.cb = sub i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.cb)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i6.i = phi i64 [ %i.bz, %bb.g ], [ %i.br, %bb.f ] ; 3 uses
  %.025.i7.i = phi i64 [ %i.cc, %bb.g ], [ %i.bv, %bb.f ] ; 13 uses
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !428 ; 2 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.026.i6.i ; 7 uses
  %.not36.i8.i = icmp eq i64 %.025.i7.i, 0
  br i1 %.not36.i8.i, label %._crit_edge.i14.i, label %iter.check31

iter.check31:                                     ; preds = %bb.h
  %min.iters.check18 = icmp ult i64 %.025.i7.i, 4
  br i1 %min.iters.check18, label %.lr.ph.i9.i.preheader, label %vector.memcheck16

vector.memcheck16:                                ; preds = %iter.check31
  %i.cg = add i64 %.026.i6.i, %i.ce
  %i.ch = sub i64 %i.bu, %i.cg
  %diff.check17 = icmp ugt i64 %i.ch, -32
  br i1 %diff.check17, label %.lr.ph.i9.i.preheader, label %vector.main.loop.iter.check19

vector.main.loop.iter.check19:                    ; preds = %vector.memcheck16
  %min.iters.check20 = icmp ult i64 %.025.i7.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph35, label %vector.ph21

vector.ph21:                                      ; preds = %vector.main.loop.iter.check19
  %i.ci = and i64 %.025.i7.i, 28
  %n.vec22 = and i64 %.025.i7.i, -32              ; 4 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.ph21, %vector.body23
  %index24 = phi i64 [ 0, %vector.ph21 ], [ %index.next27, %vector.body23 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %index24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load25 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !253
  %wide.load26 = load <16 x i8>, ptr %i.ck, align 1, !tbaa !253
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <16 x i8> %wide.load25, ptr %i.cl, align 1, !tbaa !253
  store <16 x i8> %wide.load26, ptr %i.cm, align 1, !tbaa !253
  %index.next27 = add nuw i64 %index24, 32        ; 2 uses
  %i.cn = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.cn, label %middle.block28, label %vector.body23, !llvm.loop !1490

middle.block28:                                   ; preds = %vector.body23
  %cmp.n29 = icmp eq i64 %.025.i7.i, %n.vec22
  br i1 %cmp.n29, label %._crit_edge.loopexit.i12.i, label %vec.epilog.iter.check33

vec.epilog.iter.check33:                          ; preds = %middle.block28
  %min.epilog.iters.check34 = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check34, label %.lr.ph.i9.i.preheader, label %vec.epilog.ph35, !prof !451

vec.epilog.ph35:                                  ; preds = %vector.main.loop.iter.check19, %vec.epilog.iter.check33
  %vec.epilog.resume.val30 = phi i64 [ %n.vec22, %vec.epilog.iter.check33 ], [ 0, %vector.main.loop.iter.check19 ]
  %n.vec36 = and i64 %.025.i7.i, -4               ; 3 uses
  br label %vec.epilog.vector.body37

vec.epilog.vector.body37:                         ; preds = %vec.epilog.vector.body37, %vec.epilog.ph35
  %index38 = phi i64 [ %vec.epilog.resume.val30, %vec.epilog.ph35 ], [ %index.next40, %vec.epilog.vector.body37 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.co, align 1, !tbaa !253
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.cp, align 1, !tbaa !253
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.cq, label %vec.epilog.middle.block41, label %vec.epilog.vector.body37, !llvm.loop !1491

vec.epilog.middle.block41:                        ; preds = %vec.epilog.vector.body37
  %cmp.n42 = icmp eq i64 %.025.i7.i, %n.vec36
  br i1 %cmp.n42, label %._crit_edge.loopexit.i12.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %iter.check31, %vector.memcheck16, %vec.epilog.iter.check33, %vec.epilog.middle.block41
  %.030.i10.i.ph = phi i64 [ 0, %iter.check31 ], [ 0, %vector.memcheck16 ], [ %n.vec22, %vec.epilog.iter.check33 ], [ %n.vec36, %vec.epilog.middle.block41 ] ; 3 uses
  %xtraiter44 = and i64 %.025.i7.i, 3             ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol

.lr.ph.i9.i.prol:                                 ; preds = %.lr.ph.i9.i.preheader, %.lr.ph.i9.i.prol
  %.030.i10.i.prol = phi i64 [ %i.cu, %.lr.ph.i9.i.prol ], [ %.030.i10.i.ph, %.lr.ph.i9.i.preheader ] ; 3 uses
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i9.i.prol ], [ 0, %.lr.ph.i9.i.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %.030.i10.i.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !253
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.030.i10.i.prol
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !253
  %i.cu = add nuw i64 %.030.i10.i.prol, 1         ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol, !llvm.loop !1492

.lr.ph.i9.i.prol.loopexit:                        ; preds = %.lr.ph.i9.i.prol, %.lr.ph.i9.i.preheader
  %.030.i10.i.unr = phi i64 [ %.030.i10.i.ph, %.lr.ph.i9.i.preheader ], [ %i.cu, %.lr.ph.i9.i.prol ]
  %i.cv = sub i64 %.030.i10.i.ph, %.025.i7.i
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %._crit_edge.loopexit.i12.i, label %.lr.ph.i9.i

._crit_edge.loopexit.i12.i:                       ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i, %vec.epilog.middle.block41, %middle.block28
  %.pre37.i13.i = load i64, ptr %i.f, align 8, !tbaa !429
  br label %._crit_edge.i14.i

._crit_edge.i14.i:                                ; preds = %._crit_edge.loopexit.i12.i, %bb.h
  %i.cx = phi i64 [ %.pre37.i13.i, %._crit_edge.loopexit.i12.i ], [ %.026.i6.i, %bb.h ]
  %i.cy = add i64 %i.cx, %.025.i7.i               ; 2 uses
  store i64 %i.cy, ptr %i.f, align 8, !tbaa !429
  %i.cz = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %.025.i7.i ; 2 uses
  %.not.i15.i = icmp eq ptr %i.cz, %i.bp
  br i1 %.not.i15.i, label %_ZN6spdlog7details14log_msg_bufferC2ERKNS0_7log_msgE.exit, label %bb.f, !llvm.loop !17

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i
  %.030.i10.i = phi i64 [ %i.dp, %.lr.ph.i9.i ], [ %.030.i10.i.unr, %.lr.ph.i9.i.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %.030.i10.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !253
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.030.i10.i
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !253
  %i.dd = add nuw i64 %.030.i10.i, 1              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !253
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dd
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !253
  %i.dh = add nuw i64 %.030.i10.i, 2              ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !253
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dh
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !253
  %i.dl = add nuw i64 %.030.i10.i, 3              ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02732.i5.i, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !253
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dl
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !253
  %i.dp = add nuw i64 %.030.i10.i, 4              ; 2 uses
  %exitcond.not.i11.i.3 = icmp eq i64 %i.dp, %.025.i7.i
  br i1 %exitcond.not.i11.i.3, label %._crit_edge.loopexit.i12.i, label %.lr.ph.i9.i, !llvm.loop !1493

_ZN6spdlog7details14log_msg_bufferC2ERKNS0_7log_msgE.exit: ; preds = %._crit_edge.i14.i, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit.i
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !428 ; 2 uses
  %i.dr = load i64, ptr %i.i, align 8, !tbaa !492
  store ptr %i.dq, ptr %2, align 8, !tbaa !260
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store ptr %i.ds, ptr %i.bl, align 8, !tbaa !260
  call void @_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(384) %2)
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !428 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, %i.g
  br i1 %.not.i.i.i, label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6spdlog7details14log_msg_bufferC2ERKNS0_7log_msgE.exit
  call void @free(ptr noundef %i.dt) #26
  br label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit

_ZN6spdlog7details14log_msg_bufferD2Ev.exit:      ; preds = %_ZN6spdlog7details14log_msg_bufferC2ERKNS0_7log_msgE.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.du = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = load i64, ptr %0, align 8, !tbaa !1505
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1506 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1507 ; 2 uses
  %i.g = getelementptr inbounds nuw [384 x i8], ptr %i.f, i64 %i.e ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.g, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 96, i1 false), !tbaa.struct !587
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !428  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.j) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !428  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !429  ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !427  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.r = icmp eq ptr %i.l, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 4 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i
  store ptr %i.k, ptr %i.i, align 8, !tbaa !428
  store i64 %i.p, ptr %i.s, align 8, !tbaa !427
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %.not6.i.i.i.i = icmp samesign eq i64 %i.n, 0
  br i1 %.not6.i.i.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %2 = ptrtoaddr ptr %i.f to i64
  %i.u = mul nuw nsw i64 %i.e, 384
  %3 = ptrtoaddr ptr %1 to i64
  %i.v = add i64 %i.u, %2
  %i.w = sub i64 %3, %i.v
  %diff.check = icmp ugt i64 %i.w, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.n, 24
  %n.vec = and i64 %i.n, -32                      ; 5 uses
  %i.y = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.z = getelementptr i8, ptr %i.q, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.q, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep8, align 8, !tbaa !253
  %wide.load9 = load <16 x i8>, ptr %i.aa, align 8, !tbaa !253
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !253
  store <16 x i8> %wide.load9, ptr %i.ab, align 1, !tbaa !253
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !569

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.n, -8                     ; 4 uses
  %i.ad = getelementptr i8, ptr %i.k, i64 %n.vec11
  %i.ae = getelementptr i8, ptr %i.q, i64 %n.vec11
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %next.gep13 = getelementptr i8, ptr %i.k, i64 %index12
  %next.gep14 = getelementptr i8, ptr %i.q, i64 %index12
  %wide.load15 = load <8 x i8>, ptr %next.gep14, align 8, !tbaa !253
  store <8 x i8> %wide.load15, ptr %next.gep13, align 1, !tbaa !253
  %index.next16 = add nuw i64 %index12, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next16, %n.vec11
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1495

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.n, %n.vec11
  br i1 %cmp.n17, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.k, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.q, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 3 uses
  %i.ag = add i64 %i.n, %i.a
  %.057.i.i.i.i.ph20 = ptrtoaddr ptr %.057.i.i.i.i.ph to i64 ; 2 uses
  %i.ah = sub i64 %i.n, %.057.i.i.i.i.ph20
  %i.ai = add i64 %i.ag, 127
  %i.aj = sub i64 %i.ai, %.057.i.i.i.i.ph20
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.i.prol ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.prol ], [ %.057.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.prol, i64 1 ; 2 uses
  %i.al = load i8, ptr %.057.i.i.i.i.prol, align 1, !tbaa !253
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.al, ptr %.08.i.i.i.i.prol, align 1, !tbaa !253
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1496

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.08.i.i.i.i.unr = phi ptr [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi ptr [ %.057.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.prol ]
  %i.an = icmp ult i64 %i.aj, 7
  br i1 %i.an, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 1
  %i.ap = load i8, ptr %.057.i.i.i.i, align 1, !tbaa !253
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 1
  store i8 %i.ap, ptr %.08.i.i.i.i, align 1, !tbaa !253
  %i.ar = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 2
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !253
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 2
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !253
  %i.au = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 3
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !253
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 3
  store i8 %i.av, ptr %i.at, align 1, !tbaa !253
  %i.ax = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 4
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !253
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !253
  %i.ba = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 5
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !253
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 5
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !253
  %i.bd = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 6
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !253
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 6
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !253
  %i.bg = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 7
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !253
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 7
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !253
  %i.bj = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !253
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !253
  %.not.i.i.i.i.7 = icmp eq ptr %i.bj, %i.t
  br i1 %.not.i.i.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1497

bb.e:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !428
  store i64 %i.p, ptr %i.s, align 8, !tbaa !427
  store ptr %i.q, ptr %i.h, align 8, !tbaa !428
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !427 ; 2 uses
  %i.bn = icmp ugt i64 %i.n, %i.bm
  br i1 %i.bn, label %bb.f, label %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !440
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(283) %i.i, i64 noundef %i.n) #26, !inline_history !1498
  %.pre.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !427
  br label %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit

_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit:   ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, %bb.f
  %i.bq = phi i64 [ %i.bm, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i ], [ %.pre.i.i.i.i.i, %bb.f ]
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !429
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !428 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !492
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !260
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !260
  %i.by = load i64, ptr %i.d, align 8, !tbaa !1506
  %i.bz = add i64 %i.by, 1
  %i.ca = load i64, ptr %0, align 8, !tbaa !1505  ; 2 uses
  %i.cb = urem i64 %i.bz, %i.ca
  %.fr = freeze i64 %i.cb                         ; 3 uses
  store i64 %.fr, ptr %i.d, align 8, !tbaa !1506
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1508
  %i.ce = icmp eq i64 %.fr, %i.cd
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit
  %i.cf = add i64 %.fr, 1                         ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.ca
  %i.ch = select i1 %i.cg, i64 0, i64 %i.cf
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !1508
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1509
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !1509
  br label %bb.h

bb.h:                                             ; preds = %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.1455", align 16 ; 6 uses
  %9 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !256, !noundef !257
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
end_hunk_3
