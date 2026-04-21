inline.NumInlined: 74
inline.NumDeleted: 35
begin_hunk_0_@binascii_b2a_uu:bb.a

.lr.ph11.split.us.i:                              ; preds = %.lr.ph11.i, %._crit_edge.split.us.us.i
  %i.ag = phi i1 [ %i.bb, %._crit_edge.split.us.us.i ], [ true, %.lr.ph11.i ]
  %.19.us.i = phi ptr [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0418.us.i = phi ptr [ %i.ba, %._crit_edge.split.us.us.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %.0427.us.i = phi i64 [ %i.az, %._crit_edge.split.us.us.i ], [ %.val33, %.lr.ph11.i ]
  %.0436.us.i = phi i32 [ %.144.lcssa.us.i, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph11.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@binascii_b2a_uu:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph11.split.us.i
  %.146.us.i = phi i32 [ %i.ak, %bb.l ], [ %i.ah, %.lr.ph11.split.us.i ] ; 4 uses
  %i.al = add nsw i32 %.0436.us.i, 8              ; 6 uses
  %i.am = icmp sgt i32 %.0436.us.i, -3
  br i1 %i.am, label %.lr.ph.us.i.preheader.a, label %._crit_edge.split.us.us.i

.lr.ph.us.i.preheader.a:                          ; preds = %bb.m
  %i.an = add i32 %.0436.us.i, 2                  ; 3 uses
  %i.ao = udiv i32 %i.an, 6
  %narrow73 = add nuw nsw i32 %i.ao, 1
  %i.ap = zext nneg i32 %narrow73 to i64          ; 5 uses
  %min.iters.check53 = icmp ult i32 %i.an, 18
  br i1 %min.iters.check53, label %.lr.ph.us.i.preheader, label %vector.main.loop.iter.check70

vector.main.loop.iter.check70:                    ; preds = %.lr.ph.us.i.preheader.a
  %min.iters.check71 = icmp ult i32 %i.an, 90
  br i1 %min.iters.check71, label %.lr.ph.us.i.preheader74, label %vector.ph54

vector.ph54:                                      ; preds = %vector.main.loop.iter.check70
  %n.mod.vf73 = and i64 %i.ap, 12
  %n.vec56 = and i64 %i.ap, 2147483632            ; 5 uses
  %i.aq = getelementptr i8, ptr %.19.us.i, i64 %n.vec56 ; 2 uses
  %.cast57 = trunc nuw nsw i64 %n.vec56 to i32
  %i.ar = mul i32 %.cast57, -6
  %i.as = add i32 %i.al, %i.ar                    ; 3 uses
  %broadcast.splatinsert58.a = insertelement <16 x i32> poison, i32 %.146.us.i, i64 0
  %broadcast.splat59.a = shufflevector <16 x i32> %broadcast.splatinsert58.a, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <16 x i32> poison, i32 %i.al, i64 0
end_hunk_1
begin_hunk_2_@binascii_b2a_uu:bb.a
  %index.next67 = add nuw i64 %index64, 16        ; 2 uses
  %vec.ind.next68 = add nsw <16 x i32> %vec.ind65, splat (i32 -96)
  %i.ay = icmp eq i64 %index.next67, %n.vec56
  br i1 %i.ay, label %middle.block87, label %vector.body63, !llvm.loop !30

middle.block87:                                   ; preds = %vector.body63
  %cmp.n88 = icmp eq i64 %n.vec56, %i.ap
  br i1 %cmp.n88, label %._crit_edge.split.us.us.i, label %middle.block69

middle.block69:                                   ; preds = %middle.block87
  %cmp.n70 = icmp eq i64 %n.mod.vf73, 0
  br i1 %cmp.n70, label %.lr.ph.us.i.preheader, label %.lr.ph.us.i.preheader74, !prof !33

.lr.ph.us.i.preheader74:                          ; preds = %vector.main.loop.iter.check70, %middle.block69
  %vec.epilog.resume.val89 = phi i64 [ %n.vec56, %middle.block69 ], [ 0, %vector.main.loop.iter.check70 ]
  %.1441.us.us.i.ph.a = phi i32 [ %i.as, %middle.block69 ], [ %i.al, %vector.main.loop.iter.check70 ]
  %n.vec97 = and i64 %i.ap, 2147483644            ; 4 uses
  %5 = getelementptr i8, ptr %.19.us.i, i64 %n.vec97 ; 2 uses
  %.cast98 = trunc nuw nsw i64 %n.vec97 to i32
  %6 = mul i32 %.cast98, -6
  %7 = add i32 %i.al, %6                          ; 2 uses
  %broadcast.splatinsert99 = insertelement <4 x i32> poison, i32 %.146.us.i, i64 0
  %broadcast.splat100 = shufflevector <4 x i32> %broadcast.splatinsert99, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <4 x i32> poison, i32 %.1441.us.us.i.ph.a, i64 0
  %broadcast.splat102 = shufflevector <4 x i32> %broadcast.splatinsert101, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction103 = add nsw <4 x i32> %broadcast.splat102, <i32 0, i32 -6, i32 -12, i32 -18>
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %.lr.ph.us.i.preheader74
  %index105 = phi i64 [ %vec.epilog.resume.val89, %.lr.ph.us.i.preheader74 ], [ %index.next108, %vec.epilog.vector.body104 ] ; 2 uses
  %vec.ind106 = phi <4 x i32> [ %induction103, %.lr.ph.us.i.preheader74 ], [ %vec.ind.next109, %vec.epilog.vector.body104 ] ; 2 uses
  %next.gep107 = getelementptr i8, ptr %.19.us.i, i64 %index105
  %8 = add nsw <4 x i32> %vec.ind106, splat (i32 -6)
  %9 = lshr <4 x i32> %broadcast.splat100, %8
  %10 = trunc <4 x i32> %9 to <4 x i8>
  %11 = and <4 x i8> %10, splat (i8 63)
  %12 = add nuw nsw <4 x i8> %11, splat (i8 32)
  store <4 x i8> %12, ptr %next.gep107, align 1, !tbaa !16
  %index.next108 = add nuw i64 %index105, 4       ; 2 uses
  %vec.ind.next109 = add nsw <4 x i32> %vec.ind106, splat (i32 -24)
  %13 = icmp eq i64 %index.next108, %n.vec97
  br i1 %13, label %vec.epilog.middle.block110, label %vec.epilog.vector.body104, !llvm.loop !34

vec.epilog.middle.block110:                       ; preds = %vec.epilog.vector.body104
  %cmp.n111 = icmp eq i64 %n.vec97, %i.ap
  br i1 %cmp.n111, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.i.preheader.a, %middle.block69, %vec.epilog.middle.block110
  %.22.us.us.i.ph = phi ptr [ %.19.us.i, %.lr.ph.us.i.preheader.a ], [ %i.aq, %middle.block69 ], [ %5, %vec.epilog.middle.block110 ]
  %.1441.us.us.i.ph = phi i32 [ %i.al, %.lr.ph.us.i.preheader.a ], [ %i.as, %middle.block69 ], [ %7, %vec.epilog.middle.block110 ]
  br label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %.lr.ph.us.i, %middle.block87, %vec.epilog.middle.block110, %bb.m
  %.144.lcssa.us.i = phi i32 [ %i.al, %bb.m ], [ %7, %vec.epilog.middle.block110 ], [ %i.as, %middle.block87 ], [ %i.be, %.lr.ph.us.i ] ; 2 uses
  %.2.lcssa.us.i = phi ptr [ %.19.us.i, %bb.m ], [ %5, %vec.epilog.middle.block110 ], [ %i.aq, %middle.block87 ], [ %.3.us.us.i, %.lr.ph.us.i ] ; 2 uses
  %i.az = add i64 %.0427.us.i, -1                 ; 2 uses
  %i.ba = getelementptr i8, ptr %.0418.us.i, i64 1
  %i.bb = icmp sgt i64 %i.az, 0                   ; 2 uses
  %i.bc = icmp ne i32 %.144.lcssa.us.i, 0
  %i.bd = or i1 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph11.split.us.i, label %._crit_edge12.i, !llvm.loop !35

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %.22.us.us.i = phi ptr [ %.3.us.us.i, %.lr.ph.us.i ], [ %.22.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.1441.us.us.i = phi i32 [ %i.be, %.lr.ph.us.i ], [ %.1441.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.be = add nsw i32 %.1441.us.us.i, -6          ; 3 uses
  %i.bf = lshr i32 %.146.us.i, %i.be
  %i.bg = trunc i32 %i.bf to i8
end_hunk_2
begin_hunk_3_@binascii_b2a_uu:bb.a
  %.3.us.us.i = getelementptr i8, ptr %.22.us.us.i, i64 1 ; 2 uses
  store i8 %i.bi, ptr %.22.us.us.i, align 1, !tbaa !16
  %i.bj = icmp samesign ugt i32 %.1441.us.us.i, 11
  br i1 %i.bj, label %.lr.ph.us.i, label %._crit_edge.split.us.us.i, !llvm.loop !36

.lr.ph11.split.i:                                 ; preds = %.lr.ph11.i, %._crit_edge.split.i
  %i.bk = phi i1 [ %i.cp, %._crit_edge.split.i ], [ true, %.lr.ph11.i ]
  %.19.i = phi ptr [ %.2.lcssa.i, %._crit_edge.split.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0418.i = phi ptr [ %i.co, %._crit_edge.split.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %.0427.i = phi i64 [ %i.cn, %._crit_edge.split.i ], [ %.val33, %.lr.ph11.i ]
  %.0436.i = phi i32 [ %.144.lcssa.i, %._crit_edge.split.i ], [ 0, %.lr.ph11.i ] ; 3 uses
end_hunk_3
begin_hunk_4_@binascii_b2a_uu:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph11.split.i
  %.146.i = phi i32 [ %i.bo, %bb.n ], [ %i.bl, %.lr.ph11.split.i ] ; 4 uses
  %i.bp = add nsw i32 %.0436.i, 8                 ; 6 uses
  %i.bq = icmp sgt i32 %.0436.i, -3
  br i1 %i.bq, label %.lr.ph.i.preheader.a, label %._crit_edge.split.i

.lr.ph.i.preheader.a:                             ; preds = %bb.o
  %i.br = add i32 %.0436.i, 2                     ; 3 uses
  %i.bs = udiv i32 %i.br, 6
  %narrow = add nuw nsw i32 %i.bs, 1
  %i.bt = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.br, 18
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph.i.preheader.a
  %min.iters.check49 = icmp ult i32 %i.br, 90
  br i1 %min.iters.check49, label %.lr.ph.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bt, 12
  %n.vec = and i64 %i.bt, 2147483632              ; 5 uses
  %i.bu = getelementptr i8, ptr %.19.i, i64 %n.vec ; 2 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.bv = mul i32 %.cast, -6
  %i.bw = add i32 %i.bp, %i.bv                    ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.146.i, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <16 x i32> poison, i32 %i.bp, i64 0
end_hunk_4
begin_hunk_5_@binascii_b2a_uu:bb.a
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -96)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  br i1 %cmp.n, label %._crit_edge.split.i, label %middle.block.a

middle.block.a:                                   ; preds = %middle.block
  %cmp.n.a = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n.a, label %.lr.ph.i.preheader, label %.lr.ph.i.preheader75, !prof !33

.lr.ph.i.preheader75:                             ; preds = %vector.main.loop.iter.check, %middle.block.a
  %vec.epilog.resume.val = phi i64 [ %n.vec, %middle.block.a ], [ 0, %vector.main.loop.iter.check ]
  %.1441.i.ph.a = phi i32 [ %i.bw, %middle.block.a ], [ %i.bp, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.bt, 2147483644            ; 4 uses
  %14 = getelementptr i8, ptr %.19.i, i64 %n.vec54 ; 2 uses
  %.cast55 = trunc nuw nsw i64 %n.vec54 to i32
  %15 = mul i32 %.cast55, -6
  %16 = add i32 %i.bp, %15                        ; 2 uses
  %broadcast.splatinsert56 = insertelement <4 x i32> poison, i32 %.146.i, i64 0
  %broadcast.splat57 = shufflevector <4 x i32> %broadcast.splatinsert56, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <4 x i32> poison, i32 %.1441.i.ph.a, i64 0
  %broadcast.splat59 = shufflevector <4 x i32> %broadcast.splatinsert58, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction60 = add nsw <4 x i32> %broadcast.splat59, <i32 0, i32 -6, i32 -12, i32 -18>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %.lr.ph.i.preheader75
  %index61 = phi i64 [ %vec.epilog.resume.val, %.lr.ph.i.preheader75 ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind62 = phi <4 x i32> [ %induction60, %.lr.ph.i.preheader75 ], [ %vec.ind.next65, %vec.epilog.vector.body ] ; 2 uses
  %next.gep63 = getelementptr i8, ptr %.19.i, i64 %index61
  %17 = add nsw <4 x i32> %vec.ind62, splat (i32 -6)
  %18 = lshr <4 x i32> %broadcast.splat57, %17    ; 2 uses
  %19 = and <4 x i32> %18, splat (i32 63)
  %20 = icmp eq <4 x i32> %19, zeroinitializer
  %21 = trunc <4 x i32> %18 to <4 x i8>
  %22 = and <4 x i8> %21, splat (i8 63)
  %23 = add nuw nsw <4 x i8> %22, splat (i8 32)
  %24 = select <4 x i1> %20, <4 x i8> splat (i8 96), <4 x i8> %23
  store <4 x i8> %24, ptr %next.gep63, align 1, !tbaa !16
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %vec.ind.next65 = add nsw <4 x i32> %vec.ind62, splat (i32 -24)
  %25 = icmp eq i64 %index.next64, %n.vec54
  br i1 %25, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %n.vec54, %i.bt
  br i1 %cmp.n66, label %._crit_edge.split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.a, %middle.block.a, %vec.epilog.middle.block
  %.22.i.ph = phi ptr [ %.19.i, %.lr.ph.i.preheader.a ], [ %i.bu, %middle.block.a ], [ %14, %vec.epilog.middle.block ]
  %.1441.i.ph = phi i32 [ %i.bp, %.lr.ph.i.preheader.a ], [ %i.bw, %middle.block.a ], [ %16, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.22.i = phi ptr [ %.3.i, %.lr.ph.i ], [ %.22.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1441.i = phi i32 [ %i.cg, %.lr.ph.i ], [ %.1441.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cg = add nsw i32 %.1441.i, -6                ; 3 uses
  %i.ch = lshr i32 %.146.i, %i.cg                 ; 2 uses
  %i.ci = and i32 %i.ch, 63
end_hunk_5
begin_hunk_6_@binascii_b2a_uu:bb.a
  %.3.i = getelementptr i8, ptr %.22.i, i64 1     ; 2 uses
  store i8 %spec.select.i, ptr %.22.i, align 1, !tbaa !16
  %i.cm = icmp samesign ugt i32 %.1441.i, 11
  br i1 %i.cm, label %.lr.ph.i, label %._crit_edge.split.i, !llvm.loop !39

._crit_edge.split.i:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.o
  %.144.lcssa.i = phi i32 [ %i.bp, %bb.o ], [ %16, %vec.epilog.middle.block ], [ %i.bw, %middle.block ], [ %i.cg, %.lr.ph.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.19.i, %bb.o ], [ %14, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %.3.i, %.lr.ph.i ] ; 2 uses
  %i.cn = add i64 %.0427.i, -1                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0418.i, i64 1
  %i.cp = icmp sgt i64 %i.cn, 0                   ; 2 uses
  %i.cq = icmp ne i32 %.144.lcssa.i, 0
  %i.cr = or i1 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph11.split.i, label %._crit_edge12.i, !llvm.loop !35

._crit_edge12.i:                                  ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.k
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.k ], [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge.split.i ] ; 2 uses
end_hunk_6
begin_hunk_7_@binascii_a2b_base64:bb.a
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !16
  %i.ck = add nuw nsw i64 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.ay
  br i1 %exitcond.not.i.i, label %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !40

.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i: ; preds = %bb.q
  %.pre.i = shl nuw nsw i64 %i.ay, 2
  br label %base64_decode_fast.exit.i, !llvm.loop !40

base64_decode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i
  %.0.lcssa.i.i = phi i64 [ %.pre.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i ], [ %i.ba, %.lr.ph.i.i ]
end_hunk_7
begin_hunk_8_@binascii_a2b_base64:bb.a
  %i.fh = getelementptr i8, ptr %.3108253.i, i64 1
  %i.fi = add i64 %.3121251.i, -1                 ; 2 uses
  %.not133.i = icmp eq i64 %i.fi, 0
  br i1 %.not133.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %bb.at
  switch i32 %.3104.ph.i, label %bb.av [
end_hunk_8
begin_hunk_9_@binascii_b2a_base64:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8, !tbaa !42
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
end_hunk_9
begin_hunk_10_@binascii_b2a_base64:bb.a

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ %i.s, %bb.i ], [ 1, %bb.h ], [ 1, %bb.e ]
  %i.u = load i64, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %.val40 = load ptr, ptr %4, align 8, !tbaa !17  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val41 = load i64, ptr %i.v, align 8, !tbaa !22 ; 4 uses
end_hunk_10
begin_hunk_11_@binascii_b2a_base64:bb.a
  %i.ca = getelementptr i8, ptr %.02.i.i, i64 3   ; 2 uses
  %i.cb = getelementptr i8, ptr %.0101.i.i, i64 4
  %i.cc = icmp ult ptr %i.ca, %i.ar
  br i1 %i.cc, label %.lr.ph.i.i, label %base64_encode_fast.exit.i, !llvm.loop !43

base64_encode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %bb.p
  %i.cd = shl i64 %i.ap, 2
end_hunk_11
begin_hunk_12_@binascii_b2a_base64:bb.a
  store i8 10, ptr %i.en, align 1, !tbaa !16
  %i.eo = getelementptr i8, ptr %i.ej, i64 %i.ef  ; 2 uses
  %.not31.i.i = icmp eq ptr %i.eo, %i.dt
  br i1 %.not31.i.i, label %wraplines.exit.i, label %bb.v, !llvm.loop !44

wraplines.exit.i:                                 ; preds = %bb.v, %.lr.ph.i69.i, %bb.u, %bb.t
  %.026.i.i = phi i64 [ %i.dw, %bb.t ], [ %i.ea, %bb.u ], [ %i.ea, %.lr.ph.i69.i ], [ %i.ea, %bb.v ]
end_hunk_12
begin_hunk_13_@binascii_b2a_ascii85:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8, !tbaa !42
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
end_hunk_13
begin_hunk_14_@binascii_b2a_ascii85:bb.a
  %.138 = phi i32 [ %.037, %bb.o ], [ %.037, %bb.n ], [ %.037, %bb.k ], [ %i.p, %bb.h ], [ 0, %bb.e ]
  %.1 = phi i32 [ %.036, %bb.o ], [ %i.y, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.ad, %bb.o ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %i.af = load i64, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %.val64 = load ptr, ptr %4, align 8, !tbaa !17  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val65 = load i64, ptr %i.ag, align 8, !tbaa !22 ; 5 uses
end_hunk_14
begin_hunk_15_@binascii_b2a_ascii85:bb.a
  %i.co = add nsw i64 %.01161.i, -4               ; 2 uses
  %i.cp = getelementptr i8, ptr %.01132.i, i64 4  ; 2 uses
  %i.cq = icmp sgt i64 %.01161.i, 7
  br i1 %i.cq, label %bb.ab, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %bb.ag, %bb.aa
  %.0116.lcssa.i = phi i64 [ %.val65, %bb.aa ], [ %i.co, %bb.ag ] ; 4 uses
end_hunk_15
begin_hunk_16_@binascii_b2a_ascii85:bb.a
  store i8 10, ptr %i.fn, align 1, !tbaa !16
  %i.fo = getelementptr i8, ptr %i.fj, i64 %i.ff  ; 2 uses
  %.not31.i.i = icmp eq ptr %i.fo, %i.et
  br i1 %.not31.i.i, label %wraplines.exit.i, label %bb.au, !llvm.loop !44

wraplines.exit.i:                                 ; preds = %bb.au, %.lr.ph.i.i, %bb.at, %bb.as
  %.026.i.i = phi i64 [ %i.ew, %bb.as ], [ %i.fa, %bb.at ], [ %i.fa, %.lr.ph.i.i ], [ %i.fa, %bb.au ]
end_hunk_16
begin_hunk_17_@binascii_a2b_ascii85:bb.a
  %i.bd = add <2 x i64> %vec.phi90, %i.bb         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bd, %i.bc
end_hunk_17
begin_hunk_18_@binascii_a2b_ascii85:bb.a
  %spec.select.i = add i64 %.010926.i, %i.br      ; 2 uses
  %i.bs = add nuw nsw i64 %.010827.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %.010654.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !48

bb.x:                                             ; preds = %._crit_edge.i
  %i.bt = call ptr @PyModule_GetState(ptr noundef %0) #7 ; 2 uses
end_hunk_18
begin_hunk_19_@binascii_a2b_ascii85:bb.a
  %i.el = icmp sgt i64 %i.ej, 0                   ; 2 uses
  %i.em = icmp ne i32 %.297.i, 0                  ; 2 uses
  %i.en = or i1 %i.el, %i.em
  br i1 %i.en, label %bb.ab, label %._crit_edge39.i, !llvm.loop !49

._crit_edge39.i:                                  ; preds = %.loopexit.i, %.preheader.i
  %.0101.lcssa.i = phi ptr [ %i.ca, %.preheader.i ], [ %.2103.i, %.loopexit.i ]
end_hunk_19
begin_hunk_20_@binascii_crc_hqx:bb.a
  %i.x = xor i32 %i.t, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.s, %i.ab                     ; 2 uses
  br label %.lr.ph.i.prol.loopexit
end_hunk_20
begin_hunk_21_@binascii_crc_hqx:bb.a
  %i.ak = xor i32 %i.ag, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !50
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = xor i32 %i.af, %i.ao
  %i.aq = add nsw i64 %.03.i, -2
end_hunk_21
begin_hunk_22_@binascii_crc_hqx:bb.a
  %i.ax = xor i32 %i.at, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !50
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.as, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %.03.i, 2
  br i1 %i.bd, label %.lr.ph.i, label %binascii_crc_hqx_impl.exit, !llvm.loop !52

binascii_crc_hqx_impl.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %.08.lcssa.i = phi i32 [ %i.o, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bc, %.lr.ph.i ]
end_hunk_22
begin_hunk_23_@binascii_crc32:bb.a
  %i.w = getelementptr i8, ptr %.0161.i, i64 1073741824 ; 2 uses
  %i.x = add nsw i64 %.0152.i, -1073741824        ; 3 uses
  %i.y = icmp ugt i64 %i.x, 1073741824
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.016.lcssa.i = phi ptr [ %.val, %bb.i ], [ %i.w, %.lr.ph.i ]
end_hunk_23
begin_hunk_24_@binascii_a2b_qp:bb.a
bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nsw i64 %.17.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %.val33
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !54

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i, %bb.k
  %.2.i = phi i64 [ %i.y, %bb.k ], [ %.17.i, %.lr.ph.i ], [ %.val33, %bb.l ] ; 2 uses
end_hunk_24
begin_hunk_25_@binascii_a2b_qp:bb.a
  %.186.i = phi i64 [ %i.bi, %bb.u ], [ %.08510.i, %.critedge.i ], [ %i.ag, %bb.m ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bd, %bb.t ] ; 2 uses
  %.3.i = phi i64 [ %i.bh, %bb.u ], [ %spec.select.i, %.critedge.i ], [ %i.ai, %bb.m ], [ %i.ax, %bb.q ], [ %i.y, %bb.r ], [ %i.bf, %bb.t ] ; 2 uses
  %i.bj = icmp slt i64 %.3.i, %.val33
  br i1 %i.bj, label %bb.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.v, %bb.j, %.preheader6.i
  %.085.lcssa.i = phi i64 [ 0, %.preheader6.i ], [ %.186.i, %bb.v ], [ %.08510.i, %bb.j ]
end_hunk_25
begin_hunk_26_@binascii_b2a_qp:bb.a
  %.7.i = phi i32 [ %i.dp, %.thread4.i ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ %i.fd, %bb.bw ], [ %i.fd, %bb.bx ]
  %.3225.i = phi i64 [ %i.do, %.thread4.i ], [ %i.er, %bb.bo ], [ %i.es, %bb.bp ], [ %.pre-phi.i, %bb.bw ], [ %.pre-phi.i, %bb.bx ] ; 2 uses
  %i.fh = icmp slt i64 %.3225.i, %.val56
  br i1 %i.fh, label %.preheader.i, label %._crit_edge14.i, !llvm.loop !56

._crit_edge14.i:                                  ; preds = %bb.by, %._crit_edge.thread.i
  %i.fi = phi ptr [ %i.cb, %._crit_edge.thread.i ], [ %i.bz, %bb.by ] ; 2 uses
end_hunk_26
begin_hunk_27_@ascii_buffer_converter:bb.a

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %.val15, i64 168
  %.val16 = load i64, ptr %i.c, align 8, !tbaa !58
  %i.d = and i64 %.val16, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.d
end_hunk_27
begin_hunk_28_@ascii_buffer_converter:bb.a
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  store ptr %.0.i, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !tbaa !63
  %i.k = getelementptr i8, ptr %1, i64 16
  store i64 %.val18, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr i8, ptr %1, i64 8
end_hunk_28
begin_hunk_29_@ascii_buffer_converter:bb.a

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !15
  %.val = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.21, ptr noundef %i.p) #7 ; 0 uses
  br label %bb.k

end_hunk_29
begin_hunk_30_@base85_decode_impl:bb.a
  %i.bb = icmp sgt i64 %i.az, 0                   ; 2 uses
  %i.bc = icmp ne i32 %.151, 0
  %i.bd = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %i.bd, label %.lr.ph86, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.054.lcssa = phi ptr [ %i.i, %bb.b ], [ %.2, %.loopexit ]
end_hunk_30
begin_hunk_31_@base85_encode_impl:bb.a
  %i.bh = add nsw i64 %.0751, -4                  ; 2 uses
  %i.bi = getelementptr i8, ptr %.0703, i64 4     ; 2 uses
  %i.bj = icmp samesign ugt i64 %.0751, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.075.lcssa = phi i64 [ %.16.val, %bb.h ], [ %i.bh, %.lr.ph ] ; 4 uses
end_hunk_31
begin_hunk_32_@binascii_a2b_hex_impl:bb.a
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !16
  %i.ac = add i64 %.0294, 2                       ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %.16.val
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.ae = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #7
end_hunk_32
begin_hunk_33_@llvm.vector.reduce.add.v2i64
!30 = distinct !{!30, !24, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !24, !31, !32}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24, !32, !31}
!37 = distinct !{!37, !24, !31, !32}
!38 = distinct !{!38, !24, !31, !32}
!39 = distinct !{!39, !24, !32, !31}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = !{!19, !19, i64 0}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24, !45}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24, !31, !32}
!48 = distinct !{!48, !24, !32, !31}
!49 = distinct !{!49, !24}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !8, i64 0}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = !{!28, !29, i64 8}
!58 = !{!59, !19, i64 168}
!59 = !{!"_typeobject", !27, i64 0, !20, i64 24, !19, i64 32, !19, i64 40, !13, i64 48, !19, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !19, i64 168, !20, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !19, i64 208, !13, i64 216, !13, i64 224, !60, i64 232, !61, i64 240, !62, i64 248, !29, i64 256, !12, i64 264, !13, i64 272, !13, i64 280, !19, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !13, i64 360, !12, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !51, i64 410}
!60 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!61 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!62 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!63 = !{!64, !19, i64 16}
!64 = !{!"", !28, i64 0, !19, i64 16, !19, i64 24, !65, i64 32}
!65 = !{!"_PyUnicodeObject_state", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!66 = !{!59, !20, i64 24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
end_hunk_33
