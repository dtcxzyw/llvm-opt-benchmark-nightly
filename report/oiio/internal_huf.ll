inline.NumInlined: 45
inline.NumDeleted: 24
begin_hunk_0_@internal_huf_compress:bb.a
  %i.yd = select i1 %i.yc, i64 16, i64 %n.mod.vf452
  %n.vec453 = sub nsw i64 %i.yb, %i.yd            ; 3 uses
  %i.ye = shl nsw i64 %n.vec453, 3
  %i.yf = sub nsw i64 %i.xu, %i.ye
  %i.yg = getelementptr i8, ptr %.11172.lcssa477.i, i64 %n.vec453
  %broadcast.splatinsert454 = insertelement <16 x i64> poison, i64 %i.xt, i64 0
  %broadcast.splat455 = shufflevector <16 x i64> %broadcast.splatinsert454, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert456 = insertelement <16 x i64> poison, i64 %i.xu, i64 0
  %broadcast.splat457 = shufflevector <16 x i64> %broadcast.splatinsert456, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction458 = add nsw <16 x i64> %broadcast.splat457, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph451
  %index460 = phi i64 [ 0, %vector.ph451 ], [ %index.next463, %vector.body459 ] ; 2 uses
  %vec.ind461 = phi <16 x i64> [ %induction458, %vector.ph451 ], [ %vec.ind.next464, %vector.body459 ] ; 2 uses
  %next.gep462 = getelementptr i8, ptr %.11172.lcssa477.i, i64 %index460
  %i.yh = add nsw <16 x i64> %vec.ind461, splat (i64 -8)
  %i.yi = lshr <16 x i64> %broadcast.splat455, %i.yh
  %i.yj = trunc <16 x i64> %i.yi to <16 x i8>
  store <16 x i8> %i.yj, ptr %next.gep462, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next463 = add nuw i64 %index460, 16      ; 2 uses
  %vec.ind.next464 = add nsw <16 x i64> %vec.ind461, splat (i64 -128)
  %i.yk = icmp eq i64 %index.next463, %n.vec453
  br i1 %i.yk, label %.lr.ph377.i.preheader, label %vector.body459, !llvm.loop !64

.lr.ph377.i.preheader:                            ; preds = %vector.body459, %.lr.ph377.preheader.i
  %indvars.iv428.i.ph = phi i64 [ %i.xu, %.lr.ph377.preheader.i ], [ %i.yf, %vector.body459 ]
  %.12173376.i.ph = phi ptr [ %.11172.lcssa477.i, %.lr.ph377.preheader.i ], [ %i.yg, %vector.body459 ]
  br label %.lr.ph377.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader, %bb.bc
  %indvars.iv428.i = phi i64 [ %i.yl, %bb.bc ], [ %indvars.iv428.i.ph, %.lr.ph377.i.preheader ] ; 2 uses
  %.12173376.i = phi ptr [ %i.yo, %bb.bc ], [ %.12173376.i.ph, %.lr.ph377.i.preheader ] ; 3 uses
  %.not231.i = icmp ult ptr %.12173376.i, %i.d
  br i1 %.not231.i, label %bb.bc, label %hufPackEncTable.exit.thread, !prof !29

bb.bc:                                            ; preds = %.lr.ph377.i
  %i.yl = add nsw i64 %indvars.iv428.i, -8        ; 3 uses
  %i.ym = lshr i64 %i.xt, %i.yl
  %i.yn = trunc i64 %i.ym to i8
  %i.yo = getelementptr inbounds nuw i8, ptr %.12173376.i, i64 1 ; 2 uses
  store i8 %i.yn, ptr %.12173376.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.yp = trunc nuw i64 %indvars.iv428.i to i32
  %i.yq = icmp slt i32 %i.yp, 16
  br i1 %i.yq, label %.critedge245.loopexit.i, label %.lr.ph377.i, !llvm.loop !65

.critedge247.loopexit.loopexit.i:                 ; preds = %bb.be
  %i.yr = trunc nuw nsw i64 %indvars.iv.next420.i to i32
  br label %.critedge247.loopexit.i

.critedge247.loopexit.i:                          ; preds = %bb.bd, %.critedge247.loopexit.loopexit.i
  %.14199.lcssa.i = phi i32 [ %i.yw, %bb.bd ], [ %i.yr, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %.14175.lcssa.i = phi ptr [ %.13174360.i, %bb.bd ], [ %i.zp, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %i.ys = icmp sgt i32 %.in380.i, 0
  br i1 %i.ys, label %bb.bd, label %.critedge245.i

bb.bd:                                            ; preds = %.critedge247.loopexit.i, %.lr.ph361.i
  %.in380.i = phi i32 [ %.0205.lcssa460474.i, %.lr.ph361.i ], [ %i.yt, %.critedge247.loopexit.i ] ; 2 uses
  %.13174360.i = phi ptr [ %.0161.lcssa465471.i, %.lr.ph361.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 5 uses
  %.6183359.i = phi i64 [ %.0177.lcssa464472.i, %.lr.ph361.i ], [ %i.yv, %.critedge247.loopexit.i ]
  %.13198358.i = phi i32 [ %.0185.lcssa462473.i, %.lr.ph361.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ]
  %i.yt = add nsw i32 %.in380.i, -1
  %i.yu = shl i64 %.6183359.i, %i.vg
  %i.yv = or i64 %i.yu, %i.vh                     ; 4 uses
  %i.yw = add nsw i32 %.13198358.i, %i.vf         ; 3 uses
  %i.yx = icmp slt i32 %i.yw, 8
  br i1 %i.yx, label %.critedge247.loopexit.i, label %.lr.ph355.preheader.i

.lr.ph355.preheader.i:                            ; preds = %bb.bd
  %.13174360.i469 = ptrtoint ptr %.13174360.i to i64
  %i.yy = zext nneg i32 %i.yw to i64              ; 5 uses
  %i.yz = add nuw nsw i64 %i.yy, 7
  %smin468 = tail call i64 @llvm.smin.i64(i64 %i.yy, i64 15)
  %i.za = sub nsw i64 %i.yz, %smin468
  %i.zb = lshr i64 %i.za, 3
  %i.zc = tail call i64 @llvm.usub.sat.i64(i64 %i.vi, i64 %.13174360.i469)
  %umin471 = tail call i64 @llvm.umin.i64(i64 %i.zb, i64 %i.zc) ; 2 uses
  %min.iters.check473 = icmp samesign ult i64 %umin471, 16
  br i1 %min.iters.check473, label %.lr.ph355.i.preheader, label %vector.ph474

vector.ph474:                                     ; preds = %.lr.ph355.preheader.i
  %i.zd = add nuw nsw i64 %umin471, 1             ; 2 uses
  %n.mod.vf475 = and i64 %i.zd, 15                ; 2 uses
  %i.ze = icmp eq i64 %n.mod.vf475, 0
  %i.zf = select i1 %i.ze, i64 16, i64 %n.mod.vf475
  %n.vec476 = sub nsw i64 %i.zd, %i.zf            ; 3 uses
  %i.zg = shl i64 %n.vec476, 3
  %i.zh = sub i64 %i.yy, %i.zg
  %i.zi = getelementptr i8, ptr %.13174360.i, i64 %n.vec476
  %broadcast.splatinsert477 = insertelement <16 x i64> poison, i64 %i.yv, i64 0
  %broadcast.splat478 = shufflevector <16 x i64> %broadcast.splatinsert477, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert479 = insertelement <16 x i64> poison, i64 %i.yy, i64 0
  %broadcast.splat480 = shufflevector <16 x i64> %broadcast.splatinsert479, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction481 = add nsw <16 x i64> %broadcast.splat480, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body482

vector.body482:                                   ; preds = %vector.body482, %vector.ph474
  %index483 = phi i64 [ 0, %vector.ph474 ], [ %index.next486, %vector.body482 ] ; 2 uses
  %vec.ind484 = phi <16 x i64> [ %induction481, %vector.ph474 ], [ %vec.ind.next487, %vector.body482 ] ; 2 uses
  %next.gep485 = getelementptr i8, ptr %.13174360.i, i64 %index483
  %i.zj = add nsw <16 x i64> %vec.ind484, splat (i64 -8)
  %i.zk = lshr <16 x i64> %broadcast.splat478, %i.zj
  %i.zl = trunc <16 x i64> %i.zk to <16 x i8>
  store <16 x i8> %i.zl, ptr %next.gep485, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next486 = add nuw i64 %index483, 16      ; 2 uses
  %vec.ind.next487 = add nsw <16 x i64> %vec.ind484, splat (i64 -128)
  %i.zm = icmp eq i64 %index.next486, %n.vec476
  br i1 %i.zm, label %.lr.ph355.i.preheader, label %vector.body482, !llvm.loop !66

.lr.ph355.i.preheader:                            ; preds = %vector.body482, %.lr.ph355.preheader.i
  %indvars.iv419.i.ph = phi i64 [ %i.yy, %.lr.ph355.preheader.i ], [ %i.zh, %vector.body482 ]
  %.14175354.i.ph = phi ptr [ %.13174360.i, %.lr.ph355.preheader.i ], [ %i.zi, %vector.body482 ]
  br label %.lr.ph355.i

.lr.ph355.i:                                      ; preds = %.lr.ph355.i.preheader, %bb.be
  %indvars.iv419.i = phi i64 [ %indvars.iv.next420.i, %bb.be ], [ %indvars.iv419.i.ph, %.lr.ph355.i.preheader ] ; 2 uses
  %.14175354.i = phi ptr [ %i.zp, %bb.be ], [ %.14175354.i.ph, %.lr.ph355.i.preheader ] ; 3 uses
  %.not228.i = icmp ult ptr %.14175354.i, %i.d
  br i1 %.not228.i, label %bb.be, label %hufPackEncTable.exit.thread, !prof !29, !llvm.loop !67

bb.be:                                            ; preds = %.lr.ph355.i
  %indvars.iv.next420.i = add nsw i64 %indvars.iv419.i, -8 ; 3 uses
  %i.zn = lshr i64 %i.yv, %indvars.iv.next420.i
  %i.zo = trunc i64 %i.zn to i8
  %i.zp = getelementptr inbounds nuw i8, ptr %.14175354.i, i64 1 ; 2 uses
  store i8 %i.zo, ptr %.14175354.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.zq = icmp slt i64 %indvars.iv419.i, 16
  br i1 %i.zq, label %.critedge247.loopexit.loopexit.i, label %.lr.ph355.i, !llvm.loop !68

.critedge245.loopexit.i:                          ; preds = %bb.bc
  %i.zr = trunc i64 %i.yl to i32
  br label %.critedge245.i

.critedge245.i:                                   ; preds = %.critedge247.loopexit.i, %.critedge245.loopexit.i, %.critedge243.i, %.critedge247.preheader.i
  %.15200.i = phi i32 [ %i.zr, %.critedge245.loopexit.i ], [ %i.xq, %.critedge243.i ], [ %.8193.i, %.critedge247.preheader.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.7184.i = phi i64 [ %i.xt, %.critedge245.loopexit.i ], [ %i.xp, %.critedge243.i ], [ %.4181.i, %.critedge247.preheader.i ], [ %i.yv, %.critedge247.loopexit.i ]
  %.15176.i = phi ptr [ %i.yo, %.critedge245.loopexit.i ], [ %.10171.lcssa.i, %.critedge243.i ], [ %.8169.i, %.critedge247.preheader.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.not232.i = icmp eq i32 %.15200.i, 0
  br i1 %.not232.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.critedge245.i
  %.not233.i = icmp ult ptr %.15176.i, %i.d
  br i1 %.not233.i, label %bb.bg, label %hufPackEncTable.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.zs = sub nsw i32 8, %.15200.i
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = shl i64 %.7184.i, %i.zt
  %i.zv = trunc i64 %i.zu to i8
  store i8 %i.zv, ptr %.15176.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.critedge245.i
  %i.zw = ptrtoint ptr %.15176.i to i64
  %i.zx = ptrtoint ptr %.070 to i64               ; 3 uses
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = shl i64 %i.zy, 3
  %i.aaa = sext i32 %.15200.i to i64
  %i.aab = add i64 %i.zz, %i.aaa                  ; 3 uses
  %i.aac = icmp ugt i64 %i.aab, 4294967295
  br i1 %i.aac, label %hufPackEncTable.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aad = trunc nuw i64 %i.aab to i32
  %i.aae = ptrtoint ptr %i.c to i64
  %i.aaf = sub i64 %i.zx, %i.aae
  %i.aag = trunc i64 %i.aaf to i32
  %i.aah = add nuw nsw i64 %i.aab, 7
  %i.aai = lshr i64 %i.aah, 3
  store i32 %storemerge.i, ptr %1, align 1
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.in, ptr %i.aaj, align 1
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aag, ptr %i.aak, align 1
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.aad, ptr %i.aal, align 1
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.aam, align 1
  %i.aan = and i64 %i.aai, 536870911
  %i.aao = ptrtoint ptr %1 to i64
  %i.aap = sub i64 %i.zx, %i.aao
  %i.aaq = add i64 %i.aap, %i.aan
  br label %hufPackEncTable.exit.thread.sink.split

hufPackEncTable.exit.thread.sink.split:           ; preds = %bb.a, %bb.bi
  %.sink = phi i64 [ %i.aaq, %bb.bi ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8, !tbaa !9
  br label %hufPackEncTable.exit.thread

hufPackEncTable.exit.thread:                      ; preds = %.lr.ph165.i, %.lr.ph176.i, %.lr.ph181.i, %.lr.ph191.i, %.lr.ph327.i, %.lr.ph332.i, %.lr.ph337.i, %.lr.ph.i57, %.lr.ph367.i, %.lr.ph372.i, %.lr.ph377.i, %.lr.ph355.i, %hufPackEncTable.exit.thread.sink.split, %bb.bh, %bb.bf, %bb.ao, %bb.b
  %.0 = phi i32 [ 4, %.lr.ph372.i ], [ 4, %.lr.ph327.i ], [ 3, %bb.b ], [ 4, %.lr.ph191.i ], [ 4, %.lr.ph355.i ], [ 4, %.lr.ph181.i ], [ 4, %.lr.ph377.i ], [ 4, %bb.ao ], [ 4, %.lr.ph176.i ], [ 4, %.lr.ph337.i ], [ 4, %bb.bf ], [ 4, %.lr.ph.i57 ], [ 4, %.lr.ph367.i ], [ 4, %bb.bh ], [ 4, %.lr.ph332.i ], [ 0, %hufPackEncTable.exit.thread.sink.split ], [ 4, %.lr.ph165.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 24) i32 @internal_huf_decompress(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(address) %3, i64 noundef %4, ptr noundef captures(none) %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [59 x i64], align 16              ; 11 uses
  %i.b = alloca [59 x i64], align 16              ; 7 uses
  %i.c = alloca [59 x i64], align 16              ; 26 uses
  %i.d = alloca [59 x i64], align 16              ; 23 uses
  %i.e = alloca [59 x i64], align 16              ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.063 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.h = icmp ult i64 %2, 20
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not74 = icmp eq i64 %4, 0
  %. = select i1 %.not74, i32 0, i32 3
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %.not72 = icmp eq i64 %6, 786440
  br i1 %.not72, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %1, align 1                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 1              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 1              ; 2 uses
  %i.n = icmp ugt i32 %i.i, 65536
  %i.o = icmp ugt i32 %i.k, 65536
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 11 uses
  %i.q = zext i32 %i.m to i64                     ; 4 uses
  %i.r = add nuw nsw i64 %i.q, 7
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 20
  %i.u = icmp ugt i64 %i.t, %2
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ugt i32 %i.m, 128
  br i1 %i.v, label %bb.i, label %bb.at

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 %i.k, ptr %5, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 -1, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 3 uses
  store i8 0, ptr %i.y, align 1, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.d, i8 0, i64 472, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.b, i8 -1, i64 472, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.c, i8 0, i64 472, i1 false), !tbaa !9
  %i.z = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.aa = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.k to i64               ; 3 uses
  %.not233.i = icmp samesign ugt i32 %i.i, %i.k   ; 2 uses
  br i1 %.not233.i, label %.critedge.preheader.i, label %.lr.ph.i

.critedge.preheader.loopexit.i:                   ; preds = %bb.y
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %.phi.trans.insert176 = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %.pre177 = load i64, ptr %.phi.trans.insert176, align 8, !tbaa !9
  %.phi.trans.insert178 = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %.pre179 = load i64, ptr %.phi.trans.insert178, align 16, !tbaa !9
  %i.ac = load <32 x i64>, ptr %.phi.trans.insert.i, align 8, !tbaa !9
  %i.ad = trunc <32 x i64> %i.ac to <32 x i32>    ; 2 uses
  %i.ae = load <16 x i64>, ptr %.phi.trans.insert144, align 8, !tbaa !9
  %i.af = trunc <16 x i64> %i.ae to <16 x i32>
  %i.ag = trunc i64 %.pre177 to i32
  %i.ah = trunc i64 %.pre179 to i32
  %i.ai = shufflevector <32 x i32> %i.ad, <32 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %rdx.op = add <16 x i32> %i.ai, %i.af
  %i.aj = shufflevector <16 x i32> %rdx.op, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <32 x i32> %i.aj, <32 x i32> %i.ad, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.al = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.ak)
  %op.rdx = add i32 %i.al, %i.ag
  %op.rdx290 = add i32 %op.rdx, %i.ah
  br label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.critedge.preheader.loopexit.i, %bb.i
  %i.am = phi i32 [ %op.rdx290, %.critedge.preheader.loopexit.i ], [ 0, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %7 = load i64, ptr %i.an, align 8, !tbaa !9
  %8 = trunc i64 %7 to i32
  %9 = add i32 %i.am, %8
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %11 = load i64, ptr %10, align 16, !tbaa !9
  %12 = trunc i64 %11 to i32
  %13 = add i32 %9, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %15 = load i64, ptr %14, align 8, !tbaa !9
  %16 = trunc i64 %15 to i32
  %17 = add i32 %13, %16
  %18 = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %19 = load i64, ptr %18, align 16, !tbaa !9
  %20 = trunc i64 %19 to i32
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %23 = load i64, ptr %22, align 8, !tbaa !9
  %24 = trunc i64 %23 to i32
  %25 = add i32 %21, %24
  %26 = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %27 = load i64, ptr %26, align 16, !tbaa !9
  %28 = trunc i64 %27 to i32
  %29 = add i32 %25, %28
  %30 = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %31 = load i64, ptr %30, align 8, !tbaa !9
  %i.ao = trunc i64 %31 to i32
  %op.rdx291 = add i32 %29, %i.ao                 ; 4 uses
  store i32 %op.rdx291, ptr %i.w, align 4, !tbaa !76
  %i.ap = icmp ugt i32 %op.rdx291, 65537
  br i1 %i.ap, label %bb.z, label %bb.aa

.lr.ph.i:                                         ; preds = %bb.i, %bb.y
  %i.aq = phi i8 [ %i.cr, %bb.y ], [ 0, %bb.i ]   ; 5 uses
  %i.ar = phi i8 [ %i.cs, %bb.y ], [ -1, %bb.i ]  ; 5 uses
  %.0133237.i = phi i64 [ %i.ct, %bb.y ], [ %i.aa, %bb.i ] ; 4 uses
  %.0193236.i = phi i32 [ %.2195.i, %bb.y ], [ 0, %bb.i ] ; 3 uses
  %.0196235.i = phi i64 [ %.2198.i, %bb.y ], [ 0, %bb.i ] ; 2 uses
  %.0201234.i = phi ptr [ %.2203.i, %bb.y ], [ %i.p, %bb.i ] ; 3 uses
  %.not149.i = icmp ult ptr %.0201234.i, %i.z
  br i1 %.not149.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %.not153.i = icmp eq ptr %.063, null
  br i1 %.not153.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp slt i32 %.0193236.i, 6
  br i1 %i.as, label %.lr.ph.i.i, label %fasthuf_read_bits.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.at = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.0201234.i, %bb.k ] ; 2 uses
  %i.au = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.0196235.i, %bb.k ]
  %i.av = phi i32 [ %i.bb, %.lr.ph.i.i ], [ %.0193236.i, %bb.k ] ; 2 uses
  %i.aw = shl i64 %i.au, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !25
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.aw, %i.az            ; 2 uses
  %i.bb = add nsw i32 %i.av, 8                    ; 2 uses
  %i.bc = icmp slt i32 %i.av, -2
  br i1 %i.bc, label %.lr.ph.i.i, label %fasthuf_read_bits.exit.i, !llvm.loop !79

fasthuf_read_bits.exit.i:                         ; preds = %.lr.ph.i.i, %bb.k
  %.6207.i = phi ptr [ %.0201234.i, %bb.k ], [ %i.ax, %.lr.ph.i.i ] ; 6 uses
  %.5.i = phi i64 [ %.0196235.i, %bb.k ], [ %i.ba, %.lr.ph.i.i ] ; 6 uses
  %.lcssa.i.i = phi i32 [ %.0193236.i, %bb.k ], [ %i.bb, %.lr.ph.i.i ] ; 2 uses
  %i.bd = add nsw i32 %.lcssa.i.i, -6             ; 6 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 %.5.i, %i.be
  %i.bg = and i64 %i.bf, 63                       ; 9 uses
  %i.bh = icmp samesign ult i64 %i.bg, 59
  br i1 %i.bh, label %bb.l, label %bb.r

bb.l:                                             ; preds = %fasthuf_read_bits.exit.i
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = zext i8 %i.ar to i64
  %i.bk = icmp samesign ult i64 %i.bg, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = trunc nuw nsw i64 %i.bg to i8           ; 2 uses
  store i8 %i.bl, ptr %i.x, align 8, !tbaa !77
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = phi i8 [ %i.bl, %bb.n ], [ %i.ar, %bb.m ]
  %i.bn = zext nneg i8 %i.aq to i64
  %i.bo = icmp samesign ugt i64 %i.bg, %i.bn
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = trunc nuw nsw i64 %i.bg to i8           ; 2 uses
  store i8 %i.bp, ptr %i.y, align 1, !tbaa !78
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = phi i8 [ %i.bp, %bb.p ], [ %i.aq, %bb.o ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !9
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !9
  br label %bb.w

bb.r:                                             ; preds = %fasthuf_read_bits.exit.i
  %i.bu = icmp eq i64 %i.bg, 63
  br i1 %i.bu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not150.i = icmp ult ptr %.6207.i, %i.z
  br i1 %.not150.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not151.i = icmp eq ptr %.063, null
  br i1 %.not151.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.u:                                             ; preds = %bb.s
  %i.bv = icmp samesign ult i32 %.lcssa.i.i, 14
  br i1 %i.bv, label %.lr.ph.i168.i, label %fasthuf_read_bits.exit170.i

.lr.ph.i168.i:                                    ; preds = %bb.u, %.lr.ph.i168.i
  %i.bw = phi ptr [ %i.ca, %.lr.ph.i168.i ], [ %.6207.i, %bb.u ] ; 2 uses
  %i.bx = phi i64 [ %i.cd, %.lr.ph.i168.i ], [ %.5.i, %bb.u ]
  %i.by = phi i32 [ %i.ce, %.lr.ph.i168.i ], [ %i.bd, %bb.u ] ; 2 uses
  %i.bz = shl i64 %i.bx, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !25
  %i.cc = zext i8 %i.cb to i64
  %i.cd = or disjoint i64 %i.bz, %i.cc            ; 2 uses
  %i.ce = add nsw i32 %i.by, 8                    ; 2 uses
  %i.cf = icmp slt i32 %i.by, 0
  br i1 %i.cf, label %.lr.ph.i168.i, label %fasthuf_read_bits.exit170.i, !llvm.loop !79

fasthuf_read_bits.exit170.i:                      ; preds = %.lr.ph.i168.i, %bb.u
  %.7208.i = phi ptr [ %.6207.i, %bb.u ], [ %i.ca, %.lr.ph.i168.i ]
  %.6.i = phi i64 [ %.5.i, %bb.u ], [ %i.cd, %.lr.ph.i168.i ] ; 2 uses
  %.lcssa.i167.i = phi i32 [ %i.bd, %bb.u ], [ %i.ce, %.lr.ph.i168.i ]
  %i.cg = add nsw i32 %.lcssa.i167.i, -8          ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i64 %.6.i, %i.ch
  %i.cj = and i64 %i.ci, 255
  %i.ck = add nuw nsw i64 %.0133237.i, 5
  %i.cl = add nuw nsw i64 %i.ck, %i.cj
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.cm = add i64 %.0133237.i, -58
  %i.cn = add i64 %i.cm, %i.bg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %fasthuf_read_bits.exit170.i, %bb.q
  %i.co = phi i8 [ %i.bq, %bb.q ], [ %i.aq, %fasthuf_read_bits.exit170.i ], [ %i.aq, %bb.v ]
  %i.cp = phi i8 [ %i.bm, %bb.q ], [ %i.ar, %fasthuf_read_bits.exit170.i ], [ %i.ar, %bb.v ]
  %.1202.i = phi ptr [ %.6207.i, %bb.q ], [ %.7208.i, %fasthuf_read_bits.exit170.i ], [ %.6207.i, %bb.v ]
  %.1197.i = phi i64 [ %.5.i, %bb.q ], [ %.6.i, %fasthuf_read_bits.exit170.i ], [ %.5.i, %bb.v ]
  %.1194.i = phi i32 [ %i.bd, %bb.q ], [ %i.cg, %fasthuf_read_bits.exit170.i ], [ %i.bd, %bb.v ]
  %.1134.i = phi i64 [ %.0133237.i, %bb.q ], [ %i.cl, %fasthuf_read_bits.exit170.i ], [ %i.cn, %bb.v ] ; 2 uses
  %i.cq = icmp samesign ugt i64 %.1134.i, %i.ab
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.not152.i = icmp eq ptr %.063, null
  br i1 %.not152.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.y:                                             ; preds = %bb.w, %bb.l
  %i.cr = phi i8 [ %i.aq, %bb.l ], [ %i.co, %bb.w ]
  %i.cs = phi i8 [ %i.ar, %bb.l ], [ %i.cp, %bb.w ]
  %.2203.i = phi ptr [ %.6207.i, %bb.l ], [ %.1202.i, %bb.w ]
  %.2198.i = phi i64 [ %.5.i, %bb.l ], [ %.1197.i, %bb.w ]
  %.2195.i = phi i32 [ %i.bd, %bb.l ], [ %.1194.i, %bb.w ]
  %.2135.i = phi i64 [ %.0133237.i, %bb.l ], [ %.1134.i, %bb.w ] ; 2 uses
  %i.ct = add nuw nsw i64 %.2135.i, 1
  %.not.not.i = icmp ult i64 %.2135.i, %i.ab
  br i1 %.not.not.i, label %.lr.ph.i, label %.critedge.preheader.loopexit.i, !llvm.loop !80

bb.z:                                             ; preds = %.critedge.preheader.i
  %.not162.i = icmp eq ptr %.063, null
  br i1 %.not162.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.aa:                                            ; preds = %.critedge.preheader.i
  %i.cu = load i8, ptr %i.x, align 8, !tbaa !77   ; 7 uses
  %i.cv = load i8, ptr %i.y, align 1, !tbaa !78   ; 4 uses
  %.not154240.i = icmp ugt i8 %i.cu, %i.cv        ; 3 uses
  %.pre180 = zext i8 %i.cv to i64                 ; 16 uses
  br i1 %.not154240.i, label %._crit_edge253.i, label %.lr.ph242.preheader.i

.lr.ph242.preheader.i:                            ; preds = %bb.aa
  %i.cw = zext i8 %i.cu to i64                    ; 8 uses
  %i.cx = add nuw nsw i64 %.pre180, 1
  %i.cy = sub nsw i64 %i.cx, %i.cw                ; 3 uses
  %min.iters.check257 = icmp ult i64 %i.cy, 2
  br i1 %min.iters.check257, label %.lr.ph242.i.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph242.preheader.i
  %n.vec260 = and i64 %i.cy, -2                   ; 3 uses
  %i.cz = add nsw i64 %n.vec260, %i.cw
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre180, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert261 = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %broadcast.splat262 = shufflevector <2 x i64> %broadcast.splatinsert261, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat262, <i64 0, i64 1>
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph258
  %index264 = phi i64 [ 0, %vector.ph258 ], [ %index.next265, %vector.body263 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph258 ], [ %vec.ind.next, %vector.body263 ] ; 2 uses
  %i.da = add i64 %index264, %i.cw                ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.da
  %wide.load = load <2 x i64>, ptr %i.db, align 8, !tbaa !9
  %i.dc = uitofp <2 x i64> %wide.load to <2 x double>
  %i.dd = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.de = shl <2 x i64> splat (i64 2), %i.dd
  %i.df = sitofp <2 x i64> %i.de to <2 x double>
  %i.dg = fmul nnan <2 x double> %i.dc, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.da
  store <2 x double> %i.dg, ptr %i.dh, align 8, !tbaa !81
  %index.next265 = add nuw i64 %index264, 2       ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.di = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.di, label %middle.block266, label %vector.body263, !llvm.loop !83

middle.block266:                                  ; preds = %vector.body263
  %cmp.n267 = icmp eq i64 %i.cy, %n.vec260
  br i1 %cmp.n267, label %.lr.ph252.i.preheader, label %.lr.ph242.i.preheader

end_hunk_0
begin_hunk_1_@hufDecode:bb.a
  %i.ee = sub nsw i32 14, %.14220409
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl i64 %.14200410, %i.ef
  %i.eh = and i64 %i.eg, 16383
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !148 ; 3 uses
  %.not252 = icmp eq i32 %i.ej, 0
  %i.ek = icmp sgt i32 %i.ej, %.14220409
  %or.cond = or i1 %.not252, %i.ek
  br i1 %or.cond, label %.thread314, label %bb.x

bb.x:                                             ; preds = %.lr.ph414
  %i.el = sub nsw i32 %.14220409, %i.ej           ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !149 ; 2 uses
  %i.eo = icmp eq i32 %i.en, %4
  br i1 %i.eo, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ep = icmp slt i32 %i.el, 8
  br i1 %i.ep, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not253 = icmp ult ptr %.14166412, %i.d
  br i1 %.not253, label %bb.aa, label %.thread314

bb.aa:                                            ; preds = %bb.z
  %i.eq = shl i64 %.14200410, 8
  %i.er = getelementptr inbounds nuw i8, ptr %.14166412, i64 1
  %i.es = load i8, ptr %.14166412, align 1, !tbaa !25
  %i.et = zext i8 %i.es to i64
  %i.eu = or disjoint i64 %i.eq, %i.et
  %i.ev = add nsw i32 %i.el, 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.15221 = phi i32 [ %i.ev, %bb.aa ], [ %i.el, %bb.y ]
  %.15201 = phi i64 [ %i.eu, %bb.aa ], [ %.14200410, %bb.y ] ; 5 uses
  %.15167 = phi ptr [ %i.er, %bb.aa ], [ %.14166412, %bb.y ] ; 4 uses
  %i.ew = add nsw i32 %.15221, -8                 ; 5 uses
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 %.15201, %i.ex                 ; 5 uses
  %i.ez = trunc i64 %i.ey to i8                   ; 4 uses
  %i.fa = and i64 %i.ey, 255                      ; 5 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %.13181411, i64 %i.fa
  %i.fc = icmp ugt ptr %i.fb, %i.a
  br i1 %i.fc, label %.thread314, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds i8, ptr %.13181411, i64 -2 ; 2 uses
  %i.fe = icmp ult ptr %i.fd, %6
  br i1 %i.fe, label %.thread314, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load i16, ptr %i.fd, align 2, !tbaa !7  ; 3 uses
  %.not254403 = icmp eq i8 %i.ez, 0
  br i1 %.not254403, label %.loopexit, label %iter.check562

iter.check562:                                    ; preds = %bb.ad
  %min.iters.check546 = icmp samesign ult i64 %i.fa, 4
  br i1 %min.iters.check546, label %.lr.ph407.preheader, label %vector.main.loop.iter.check547

vector.main.loop.iter.check547:                   ; preds = %iter.check562
  %min.iters.check548 = icmp samesign ult i64 %i.fa, 16
  br i1 %min.iters.check548, label %vec.epilog.ph566, label %vector.ph549

vector.ph549:                                     ; preds = %vector.main.loop.iter.check547
  %n.mod.vf550 = and i64 %i.ey, 12
  %n.vec551 = and i64 %i.ey, 240                  ; 5 uses
  %i.fg = trunc nuw i64 %n.vec551 to i8
  %i.fh = sub i8 %i.ez, %i.fg
  %i.fi = shl nuw nsw i64 %n.vec551, 1
  %i.fj = getelementptr i8, ptr %.13181411, i64 %i.fi ; 2 uses
  %broadcast.splatinsert552 = insertelement <8 x i16> poison, i16 %i.ff, i64 0
  %broadcast.splat553 = shufflevector <8 x i16> %broadcast.splatinsert552, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph549
  %index555 = phi i64 [ 0, %vector.ph549 ], [ %index.next557, %vector.body554 ] ; 2 uses
  %i.fk = shl i64 %index555, 1
  %next.gep556 = getelementptr i8, ptr %.13181411, i64 %i.fk ; 2 uses
  %i.fl = getelementptr i8, ptr %next.gep556, i64 16
  store <8 x i16> %broadcast.splat553, ptr %next.gep556, align 2, !tbaa !7
  store <8 x i16> %broadcast.splat553, ptr %i.fl, align 2, !tbaa !7
  %index.next557 = add nuw i64 %index555, 16      ; 2 uses
  %i.fm = icmp eq i64 %index.next557, %n.vec551
  br i1 %i.fm, label %middle.block558, label %vector.body554, !llvm.loop !163

middle.block558:                                  ; preds = %vector.body554
  %cmp.n559 = icmp eq i64 %i.fa, %n.vec551
  br i1 %cmp.n559, label %.loopexit, label %vec.epilog.iter.check564

vec.epilog.iter.check564:                         ; preds = %middle.block558
  %min.epilog.iters.check565 = icmp eq i64 %n.mod.vf550, 0
  br i1 %min.epilog.iters.check565, label %.lr.ph407.preheader, label %vec.epilog.ph566, !prof !136

vec.epilog.ph566:                                 ; preds = %vector.main.loop.iter.check547, %vec.epilog.iter.check564
  %vec.epilog.resume.val560 = phi i64 [ %n.vec551, %vec.epilog.iter.check564 ], [ 0, %vector.main.loop.iter.check547 ]
  %n.vec568 = and i64 %i.ey, 252                  ; 4 uses
  %i.fn = trunc nuw i64 %n.vec568 to i8
  %i.fo = sub i8 %i.ez, %i.fn
  %i.fp = shl nuw nsw i64 %n.vec568, 1
  %i.fq = getelementptr i8, ptr %.13181411, i64 %i.fp ; 2 uses
  %broadcast.splatinsert569 = insertelement <4 x i16> poison, i16 %i.ff, i64 0
  %broadcast.splat570 = shufflevector <4 x i16> %broadcast.splatinsert569, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body571

vec.epilog.vector.body571:                        ; preds = %vec.epilog.vector.body571, %vec.epilog.ph566
  %index572 = phi i64 [ %vec.epilog.resume.val560, %vec.epilog.ph566 ], [ %index.next574, %vec.epilog.vector.body571 ] ; 2 uses
  %i.fr = shl i64 %index572, 1
  %next.gep573 = getelementptr i8, ptr %.13181411, i64 %i.fr
  store <4 x i16> %broadcast.splat570, ptr %next.gep573, align 2, !tbaa !7
  %index.next574 = add nuw i64 %index572, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next574, %n.vec568
  br i1 %i.fs, label %vec.epilog.middle.block575, label %vec.epilog.vector.body571, !llvm.loop !164

vec.epilog.middle.block575:                       ; preds = %vec.epilog.vector.body571
  %cmp.n576 = icmp eq i64 %i.fa, %n.vec568
  br i1 %cmp.n576, label %.loopexit, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %iter.check562, %vec.epilog.iter.check564, %vec.epilog.middle.block575
  %.0151405.ph = phi i8 [ %i.ez, %iter.check562 ], [ %i.fh, %vec.epilog.iter.check564 ], [ %i.fo, %vec.epilog.middle.block575 ]
  %.14182404.ph = phi ptr [ %.13181411, %iter.check562 ], [ %i.fj, %vec.epilog.iter.check564 ], [ %i.fq, %vec.epilog.middle.block575 ]
  br label %.lr.ph407

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %.lr.ph407
  %.0151405 = phi i8 [ %i.ft, %.lr.ph407 ], [ %.0151405.ph, %.lr.ph407.preheader ]
  %.14182404 = phi ptr [ %i.fu, %.lr.ph407 ], [ %.14182404.ph, %.lr.ph407.preheader ] ; 2 uses
  %i.ft = add i8 %.0151405, -1                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.14182404, i64 2 ; 2 uses
  store i16 %i.ff, ptr %.14182404, align 2, !tbaa !7
  %.not254 = icmp eq i8 %i.ft, 0
  br i1 %.not254, label %.loopexit, label %.lr.ph407, !llvm.loop !165

bb.ae:                                            ; preds = %bb.x
  %i.fv = icmp ult ptr %.13181411, %i.a
  br i1 %i.fv, label %bb.af, label %.thread314

bb.af:                                            ; preds = %bb.ae
  %i.fw = trunc i32 %i.en to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %.13181411, i64 2
  store i16 %i.fw, ptr %.13181411, align 2, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph407, %middle.block558, %vec.epilog.middle.block575, %bb.ad, %bb.af
  %.18224 = phi i32 [ %i.el, %bb.af ], [ %i.ew, %bb.ad ], [ %i.ew, %middle.block558 ], [ %i.ew, %vec.epilog.middle.block575 ], [ %i.ew, %.lr.ph407 ] ; 2 uses
  %.18204 = phi i64 [ %.14200410, %bb.af ], [ %.15201, %bb.ad ], [ %.15201, %middle.block558 ], [ %.15201, %vec.epilog.middle.block575 ], [ %.15201, %.lr.ph407 ]
  %.17185 = phi ptr [ %i.fx, %bb.af ], [ %.13181411, %bb.ad ], [ %i.fj, %middle.block558 ], [ %i.fq, %vec.epilog.middle.block575 ], [ %i.fu, %.lr.ph407 ] ; 2 uses
  %.18 = phi ptr [ %.14166412, %bb.af ], [ %.15167, %bb.ad ], [ %.15167, %middle.block558 ], [ %.15167, %vec.epilog.middle.block575 ], [ %.15167, %.lr.ph407 ]
  %i.fy = icmp sgt i32 %.18224, 0
  br i1 %i.fy, label %.lr.ph414, label %._crit_edge415, !llvm.loop !166

._crit_edge415:                                   ; preds = %.loopexit, %._crit_edge398
  %.13181.lcssa = phi ptr [ %.0168.lcssa, %._crit_edge398 ], [ %.17185, %.loopexit ]
  %.not = icmp ne ptr %.13181.lcssa, %i.a
  %.262 = zext i1 %.not to i32
  br label %.thread314

.thread314:                                       ; preds = %.loopexit329, %bb.r, %bb.p, %bb.s, %bb.u, %bb.l, %bb.g, %bb.e, %bb.h, %bb.b, %bb.j, %bb.w, %bb.ab, %bb.z, %bb.ac, %.lr.ph414, %bb.ae, %._crit_edge415
  %.15 = phi i32 [ %.262, %._crit_edge415 ], [ 23, %bb.w ], [ 23, %bb.ab ], [ 23, %bb.ae ], [ 23, %.lr.ph414 ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 23, %.loopexit329 ], [ 1, %bb.p ], [ 23, %bb.r ], [ 23, %bb.u ], [ 23, %bb.l ], [ 1, %bb.s ], [ 1, %bb.e ], [ 23, %bb.g ], [ 23, %bb.j ], [ 1, %bb.h ], [ 23, %bb.b ]
  ret i32 %.15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

declare noalias ptr @internal_exr_alloc(i64 noundef) local_unnamed_addr #7

declare void @internal_exr_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 long", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!5, !5, i64 0}
!26 = distinct !{!26, !12, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = distinct !{!30, !12, !28, !27}
!31 = distinct !{!31, !12, !27, !28}
!32 = distinct !{!32, !12, !28, !27}
!33 = distinct !{!33, !12, !27, !28}
!34 = distinct !{!34, !12, !28, !27}
!35 = distinct !{!35, !12, !27, !28}
!36 = distinct !{!36, !12, !28, !27}
!37 = distinct !{!37, !12}
!38 = !{!39}
!39 = distinct !{!39, !40, !"hufEncode: argument 0"}
!40 = distinct !{!40, !"hufEncode"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"hufEncode: argument 1"}
!43 = !{!44}
!44 = distinct !{!44, !40, !"hufEncode: argument 2"}
!45 = !{!39, !44, !46, !47}
!46 = distinct !{!46, !40, !"hufEncode: argument 3"}
!47 = distinct !{!47, !40, !"hufEncode: argument 4"}
!48 = !{!42, !44, !46, !47}
!49 = !{!39, !42, !46, !47}
!50 = distinct !{!50, !12, !27, !28}
!51 = distinct !{!51, !12, !28, !27}
!52 = distinct !{!52, !12, !27, !28}
!53 = distinct !{!53, !12, !28, !27}
!54 = distinct !{!54, !12, !27, !28}
!55 = distinct !{!55, !12, !28, !27}
!56 = distinct !{!56, !12, !27, !28}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12, !28, !27}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12, !27, !28}
!61 = distinct !{!61, !12, !28, !27}
!62 = distinct !{!62, !12, !27, !28}
!63 = distinct !{!63, !12, !28, !27}
!64 = distinct !{!64, !12, !27, !28}
!65 = distinct !{!65, !12, !28, !27}
!66 = distinct !{!66, !12, !27, !28}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12, !28, !27}
!69 = !{!70, !71, i64 24}
!70 = !{!"_exr_decode_pipeline", !10, i64 0, !18, i64 8, !8, i64 16, !8, i64 18, !4, i64 20, !71, i64 24, !72, i64 32, !4, i64 96, !4, i64 100, !10, i64 104, !18, i64 112, !18, i64 120, !10, i64 128, !18, i64 136, !10, i64 144, !18, i64 152, !10, i64 160, !73, i64 168, !10, i64 176, !18, i64 184, !10, i64 192, !18, i64 200, !10, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !5, i64 264}
!71 = !{!"p1 _ZTS19_priv_exr_context_t", !18, i64 0}
!72 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!73 = !{!"p1 int", !18, i64 0}
!74 = !{!75, !4, i64 0}
!75 = !{!"FastHufDecoder", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 12, !5, i64 262160, !5, i64 262640, !5, i64 263112, !5, i64 279496, !10, i64 283592}
!76 = !{!75, !4, i64 4}
!77 = !{!75, !5, i64 8}
!78 = !{!75, !5, i64 9}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = !{!82, !82, i64 0}
!82 = !{!"double", !5, i64 0}
!83 = distinct !{!83, !12, !27, !28}
!84 = distinct !{!84, !12, !28, !27}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12, !27, !28}
!92 = distinct !{!92, !12, !27, !28}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = !{!96, !18, i64 72}
!96 = !{!"_priv_exr_context_t", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !97, i64 8, !97, i64 24, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !99, i64 124, !18, i64 128, !18, i64 136, !18, i64 144, !10, i64 152, !18, i64 160, !18, i64 168, !10, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !100, i64 200, !105, i64 464, !106, i64 472, !101, i64 480, !5, i64 504, !5, i64 544, !5, i64 545, !5, i64 546, !4, i64 548}
!97 = !{!"", !4, i64 0, !4, i64 4, !98, i64 8}
!98 = !{!"p1 omnipotent char", !18, i64 0}
!99 = !{!"float", !5, i64 0}
!100 = !{!"_priv_exr_part_t", !4, i64 0, !4, i64 4, !101, i64 8, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !103, i64 144, !103, i64 160, !4, i64 176, !4, i64 180, !4, i64 184, !99, i64 188, !4, i64 192, !4, i64 196, !73, i64 200, !73, i64 208, !73, i64 216, !73, i64 224, !10, i64 232, !8, i64 240, !8, i64 242, !4, i64 244, !10, i64 248, !5, i64 256}
!101 = !{!"exr_attribute_list", !4, i64 0, !4, i64 4, !102, i64 8, !102, i64 16}
!102 = !{!"any p2 pointer", !18, i64 0}
!103 = !{!"", !104, i64 0, !104, i64 8}
!104 = !{!"", !4, i64 0, !4, i64 4}
!105 = !{!"p1 _ZTS16_priv_exr_part_t", !18, i64 0}
!106 = !{!"p2 _ZTS16_priv_exr_part_t", !102, i64 0}
!107 = !{!75, !10, i64 283592}
!108 = distinct !{!108, !12, !27, !28}
!109 = distinct !{!109, !14}
!110 = distinct !{!110, !12, !27}
!111 = distinct !{!111, !12}
!112 = !{!96, !18, i64 96}
!113 = !{!114, !73, i64 8}
!114 = !{!"_HufDec", !4, i64 0, !4, i64 4, !73, i64 8}
!115 = distinct !{null}
!116 = distinct !{!116, !12}
!117 = !{!118, !120, !121, !122}
!118 = distinct !{!118, !119, !"FastHufDecoder_refill: argument 0"}
!119 = distinct !{!119, !"FastHufDecoder_refill"}
!120 = distinct !{!120, !119, !"FastHufDecoder_refill: argument 1"}
!121 = distinct !{!121, !119, !"FastHufDecoder_refill: argument 2"}
!122 = distinct !{!122, !119, !"FastHufDecoder_refill: argument 3"}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!128 = !{!129, !131, !132, !133}
!129 = distinct !{!129, !130, !"FastHufDecoder_refill: argument 0"}
!130 = distinct !{!130, !"FastHufDecoder_refill"}
!131 = distinct !{!131, !130, !"FastHufDecoder_refill: argument 1"}
!132 = distinct !{!132, !130, !"FastHufDecoder_refill: argument 2"}
!133 = distinct !{!133, !130, !"FastHufDecoder_refill: argument 3"}
!134 = distinct !{!134, !14}
!135 = distinct !{!135, !12, !27, !28}
!136 = !{!"branch_weights", i32 4, i32 12}
!137 = distinct !{!137, !12, !27, !28}
!138 = distinct !{!138, !12, !28, !27}
!139 = !{!140, !142, !143, !144}
!140 = distinct !{!140, !141, !"FastHufDecoder_refill: argument 0"}
!141 = distinct !{!141, !"FastHufDecoder_refill"}
!142 = distinct !{!142, !141, !"FastHufDecoder_refill: argument 1"}
!143 = distinct !{!143, !141, !"FastHufDecoder_refill: argument 2"}
!144 = distinct !{!144, !141, !"FastHufDecoder_refill: argument 3"}
!145 = distinct !{!145, !14}
!146 = distinct !{!146, !12}
!147 = !{!96, !18, i64 88}
!148 = !{!114, !4, i64 0}
!149 = !{!114, !4, i64 4}
!150 = distinct !{!150, !12}
!151 = distinct !{!151, !12}
!152 = distinct !{!152, !12}
!153 = distinct !{!153, !12}
!154 = distinct !{!154, !12, !27, !28}
!155 = distinct !{!155, !12, !27, !28}
!156 = distinct !{!156, !12, !28, !27}
!157 = distinct !{!157, !12}
!158 = distinct !{!158, !12, !27, !28}
!159 = distinct !{!159, !12, !27, !28}
!160 = distinct !{!160, !12, !28, !27}
!161 = distinct !{!161, !12}
!162 = distinct !{!162, !12}
!163 = distinct !{!163, !12, !27, !28}
!164 = distinct !{!164, !12, !27, !28}
!165 = distinct !{!165, !12, !28, !27}
!166 = distinct !{!166, !12}
end_hunk_1
