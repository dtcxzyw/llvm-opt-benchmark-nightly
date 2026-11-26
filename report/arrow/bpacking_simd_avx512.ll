Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bpacking_simd_avx512?download=true
inline.NumInlined: 11107
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 589
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 595
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.ar = alloca i64, align 8                     ; 5 uses
  %i.as = alloca i64, align 8                     ; 5 uses
  %i.at = alloca i64, align 8                     ; 5 uses
  %i.au = alloca i64, align 8                     ; 5 uses
  %i.av = alloca i64, align 8                     ; 5 uses
  %i.aw = alloca i64, align 8                     ; 5 uses
  %i.ax = alloca i64, align 8                     ; 5 uses
  %i.ay = alloca i64, align 8                     ; 5 uses
  %i.az = alloca i64, align 8                     ; 5 uses
  %i.ba = alloca i64, align 8                     ; 5 uses
  %i.bb = alloca i64, align 8                     ; 5 uses
  %i.bc = alloca i64, align 8                     ; 5 uses
  %i.bd = alloca i64, align 8                     ; 5 uses
  switch i32 %3, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.m
    i32 7, label %bb.o
    i32 8, label %bb.q
    i32 9, label %bb.s
    i32 10, label %bb.u
    i32 11, label %bb.w
    i32 12, label %bb.y
    i32 13, label %bb.aa
    i32 14, label %bb.ac
    i32 15, label %bb.ae
    i32 16, label %bb.ag
    i32 17, label %bb.ai
    i32 18, label %bb.ak
    i32 19, label %bb.am
    i32 20, label %bb.ao
    i32 21, label %bb.aq
    i32 22, label %bb.as
    i32 23, label %bb.au
    i32 24, label %bb.aw
    i32 25, label %bb.ay
    i32 26, label %bb.ba
    i32 27, label %bb.bc
    i32 28, label %bb.be
    i32 29, label %bb.bg
    i32 30, label %bb.bi
    i32 31, label %bb.bk
    i32 32, label %bb.bm
  ]

bb.b:                                             ; preds = %bb.a
  %i.be = sext i32 %2 to i64
  %i.bf = shl nsw i64 %i.be, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.bf, i1 false)
  br label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit

bb.c:                                             ; preds = %bb.a
  %i.bg = add nsw i32 %4, %2
  %i.bh = icmp sgt i32 %2, 0
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.026.i.i = phi ptr [ %i.br, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.bk, %bb.d ], [ %4, %bb.c ] ; 4 uses
  %i.bi = srem i32 %.02325.i.i, 8                 ; 2 uses
  %i.bj = sdiv i32 %.02325.i.i, 8
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bk = add nsw i32 %.02325.i.i, 1              ; 3 uses
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = lshr i32 %i.bo, %i.bi
  %i.bq = and i32 %i.bp, 1
  store i32 %i.bq, ptr %.026.i.i, align 4, !tbaa !6
  %i.br = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.bs = icmp slt i32 %i.bk, %i.bg
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !145

_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.d, %.lr.ph.i.i, %bb.c
  %.023.lcssa.i.i = phi i32 [ %4, %bb.c ], [ %i.bk, %bb.d ], [ %.02325.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bt = sub nsw i32 %.023.lcssa.i.i, %4         ; 2 uses
  %i.bu = sub nsw i32 %2, %i.bt                   ; 4 uses
  %i.bv = sdiv i32 %.023.lcssa.i.i, 8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw ; 2 uses
  %i.by = sext i32 %i.bt to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.by ; 2 uses
  %i.ca = sdiv i32 %i.bu, 32                      ; 2 uses
  %i.cb = icmp sgt i32 %i.bu, 31
  br i1 %i.cb, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i = phi ptr [ %i.bz, %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.eg, %.lr.ph.i ] ; 6 uses
  %.025.lcssa.i = phi ptr [ %i.bx, %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ef, %.lr.ph.i ] ; 4 uses
  %i.cc = shl nsw i32 %i.ca, 5                    ; 3 uses
  %i.cd = sub nsw i32 %i.bu, %i.cc                ; 2 uses
  %i.ce = icmp samesign ult i32 %i.cd, 32
  tail call void @llvm.assume(i1 %i.ce)
  %.not.i = icmp eq i32 %i.bu, %i.cc
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %._crit_edge.i
  %i.cf = add i32 %4, %2
  %i.cg = xor i32 %.023.lcssa.i.i, -1
  %i.ch = add i32 %i.cf, %i.cg
  %i.ci = sub i32 %i.ch, %i.cc                    ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check1381 = icmp ult i32 %i.ci, 15
  br i1 %min.iters.check1381, label %.lr.ph.i28.i.preheader1473, label %vector.memcheck1382

vector.memcheck1382:                              ; preds = %.lr.ph.i28.i.preheader
  %i.cl = shl nuw nsw i64 %i.cj, 2
  %i.cm = getelementptr i8, ptr %.026.lcssa.i, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  %i.co = lshr i64 %i.cj, 3
  %i.cp = getelementptr i8, ptr %.025.lcssa.i, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  %bound01383 = icmp ult ptr %.026.lcssa.i, %i.cq
  %bound11384 = icmp ult ptr %.025.lcssa.i, %i.cn
  %found.conflict1385 = and i1 %bound01383, %bound11384
  br i1 %found.conflict1385, label %.lr.ph.i28.i.preheader1473, label %vector.ph1386

vector.ph1386:                                    ; preds = %vector.memcheck1382
  %n.vec1387 = and i64 %i.ck, 8589934584          ; 4 uses
  %i.cr = shl nuw nsw i64 %n.vec1387, 2
  %i.cs = getelementptr i8, ptr %.026.lcssa.i, i64 %i.cr
  %i.ct = trunc i64 %n.vec1387 to i32
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %vector.ph1386
  %index1389 = phi i64 [ 0, %vector.ph1386 ], [ %index.next1394, %vector.body1388 ] ; 3 uses
  %vec.ind1390 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1386 ], [ %vec.ind.next1395, %vector.body1388 ] ; 2 uses
  %i.cu = shl i64 %index1389, 2
  %next.gep1391 = getelementptr i8, ptr %.026.lcssa.i, i64 %i.cu
  %i.cv = lshr exact i64 %index1389, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %.025.lcssa.i, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !265
  %broadcast.splatinsert1392 = insertelement <8 x i8> poison, i8 %i.cy, i64 0
  %broadcast.splat1393 = shufflevector <8 x i8> %broadcast.splatinsert1392, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cz = zext <8 x i8> %broadcast.splat1393 to <8 x i32>
  %i.da = and <8 x i32> %vec.ind1390, splat (i32 7)
  %i.db = lshr <8 x i32> %i.cz, %i.da
  %i.dc = and <8 x i32> %i.db, splat (i32 1)
  store <8 x i32> %i.dc, ptr %next.gep1391, align 4, !tbaa !6, !alias.scope !266, !noalias !265
  %index.next1394 = add nuw i64 %index1389, 8     ; 2 uses
  %vec.ind.next1395 = add nuw nsw <8 x i32> %vec.ind1390, splat (i32 8)
  %i.dd = icmp eq i64 %index.next1394, %n.vec1387
  br i1 %i.dd, label %middle.block1396, label %vector.body1388, !llvm.loop !149

middle.block1396:                                 ; preds = %vector.body1388
  %cmp.n1397 = icmp eq i64 %i.ck, %n.vec1387
  br i1 %cmp.n1397, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i.preheader1473

.lr.ph.i28.i.preheader1473:                       ; preds = %vector.memcheck1382, %.lr.ph.i28.i.preheader, %middle.block1396
  %.024.i.i.ph = phi ptr [ %.026.lcssa.i, %vector.memcheck1382 ], [ %.026.lcssa.i, %.lr.ph.i28.i.preheader ], [ %i.cs, %middle.block1396 ]
  %.02223.i.i.ph = phi i32 [ 0, %vector.memcheck1382 ], [ 0, %.lr.ph.i28.i.preheader ], [ %i.ct, %middle.block1396 ]
  br label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i.preheader1473, %.lr.ph.i28.i
  %.024.i.i = phi ptr [ %i.dn, %.lr.ph.i28.i ], [ %.024.i.i.ph, %.lr.ph.i28.i.preheader1473 ] ; 2 uses
  %.02223.i.i = phi i32 [ %i.df, %.lr.ph.i28.i ], [ %.02223.i.i.ph, %.lr.ph.i28.i.preheader1473 ] ; 3 uses
  %i.de = lshr i32 %.02223.i.i, 3
  %i.df = add nuw nsw i32 %.02223.i.i, 1          ; 2 uses
  %i.dg = zext nneg i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.025.lcssa.i, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = and i32 %.02223.i.i, 7
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = and i32 %i.dl, 1
  store i32 %i.dm, ptr %.024.i.i, align 4, !tbaa !6
  %i.dn = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  %exitcond34.not.i = icmp eq i32 %i.df, %i.cd
  br i1 %exitcond34.not.i, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i, !llvm.loop !150

.lr.ph.i:                                         ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i
  %.031.i = phi i32 [ %i.eh, %.lr.ph.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02530.i = phi ptr [ %i.ef, %.lr.ph.i ], [ %i.bx, %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %.02629.i = phi ptr [ %i.eg, %.lr.ph.i ], [ %i.bz, %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.do = load i32, ptr %.02530.i, align 1        ; 5 uses
  %i.dp = insertelement <16 x i32> poison, i32 %i.do, i64 0
  %i.dq = insertelement <8 x i32> poison, i32 %i.do, i64 0
  %i.dr = shufflevector <8 x i32> %i.dq, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = lshr <16 x i32> %i.dr, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0111.32.vec.insert.i.i1400 = shufflevector <16 x i32> %i.dp, <16 x i32> %i.ds, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = lshr <16 x i32> %i.du, <i32 9, i32 10, i32 11, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0111.48.vec.insert.i.i1401 = shufflevector <16 x i32> %.sroa.0111.32.vec.insert.i.i1400, <16 x i32> %i.dv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.dw = lshr i32 %i.do, 13
  %.sroa.0111.52.vec.insert.i.i = insertelement <16 x i32> %.sroa.0111.48.vec.insert.i.i1401, i32 %i.dw, i64 13
  %i.dx = insertelement <2 x i32> poison, i32 %i.do, i64 0
  %i.dy = shufflevector <2 x i32> %i.dx, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = lshr <16 x i32> %i.dy, <i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0111.60.vec.insert.i.i1402 = shufflevector <16 x i32> %.sroa.0111.52.vec.insert.i.i, <16 x i32> %i.dz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %5 = and <16 x i32> %.sroa.0111.60.vec.insert.i.i1402, splat (i32 1)
  store <16 x i32> %5, ptr %.02629.i, align 1, !tbaa !10
  %i.ea = load i32, ptr %.02530.i, align 1
  %i.eb = insertelement <16 x i32> poison, i32 %i.ea, i64 0
  %i.ec = shufflevector <16 x i32> %i.eb, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ed = lshr <16 x i32> %i.ec, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ee = getelementptr inbounds nuw i8, ptr %.02629.i, i64 64
  %6 = and <16 x i32> %i.ed, splat (i32 1)
  store <16 x i32> %6, ptr %i.ee, align 1, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %.02530.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02629.i, i64 128 ; 2 uses
  %i.eh = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.eh, %i.ca
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !151

bb.e:                                             ; preds = %bb.a
  %i.ei = shl nsw i32 %2, 1
  %i.ej = add nsw i32 %4, %i.ei
  %i.ek = icmp sgt i32 %2, 0
  br i1 %i.ek, label %.lr.ph.i.i174, label %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i174:                                    ; preds = %bb.e, %bb.f
  %.026.i.i175 = phi ptr [ %i.fa, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %.02325.i.i176 = phi i32 [ %i.en, %bb.f ], [ %4, %bb.e ] ; 5 uses
  %i.el = srem i32 %.02325.i.i176, 8              ; 2 uses
  %i.em = sdiv i32 %.02325.i.i176, 8              ; 2 uses
  %.not.i.i177 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i177, label %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i174
  %i.en = add nsw i32 %.02325.i.i176, 2           ; 3 uses
  %i.eo = add nsw i32 %.02325.i.i176, 1
  %i.ep = sdiv i32 %i.eo, 8
  %i.eq = sub nsw i32 %i.ep, %i.em                ; 2 uses
  %i.er = add nsw i32 %i.eq, 1
  %i.es = icmp slt i32 %i.eq, 2
  tail call void @llvm.assume(i1 %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 0, ptr %i.bd, align 8, !tbaa !12
  %i.et = sext i32 %i.em to i64
  %i.eu = getelementptr inbounds i8, ptr %0, i64 %i.et
  %i.ev = sext i32 %i.er to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr readonly align 1 %i.eu, i64 %i.ev, i1 false)
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.bd, align 8, !tbaa !12
  %i.ew = zext nneg i32 %i.el to i64
  %i.ex = lshr i64 %.0..0..0..0..0..0..0..0..i.i, %i.ew
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = and i32 %i.ey, 3
  store i32 %i.ez, ptr %.026.i.i175, align 4, !tbaa !6
  %i.fa = getelementptr inbounds nuw i8, ptr %.026.i.i175, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.fb = icmp slt i32 %i.en, %i.ej
  br i1 %i.fb, label %.lr.ph.i.i174, label %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !152

_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.f, %.lr.ph.i.i174, %bb.e
  %.023.lcssa.i.i132 = phi i32 [ %4, %bb.e ], [ %i.en, %bb.f ], [ %.02325.i.i176, %.lr.ph.i.i174 ]
  %i.fc = sub nsw i32 %.023.lcssa.i.i132, %4
  %i.fd = sdiv i32 %i.fc, 2                       ; 3 uses
  %i.fe = shl nsw i32 %i.fd, 1
  %i.ff = add nsw i32 %i.fe, %4
  %i.fg = sub nsw i32 %2, %i.fd                   ; 4 uses
  %i.fh = sdiv i32 %i.ff, 8
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %0, i64 %i.fi ; 2 uses
  %i.fk = sext i32 %i.fd to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fk ; 2 uses
  %i.fm = sdiv i32 %i.fg, 32                      ; 2 uses
  %i.fn = icmp sgt i32 %i.fg, 31
  br i1 %i.fn, label %.lr.ph.i140, label %._crit_edge.i133

._crit_edge.i133:                                 ; preds = %.lr.ph.i140, %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i134 = phi ptr [ %i.fl, %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.jy, %.lr.ph.i140 ] ; 8 uses
  %.025.lcssa.i135 = phi ptr [ %i.fj, %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.jx, %.lr.ph.i140 ] ; 8 uses
  %i.fo = shl nsw i32 %i.fm, 5                    ; 2 uses
  %i.fp = sub nsw i32 %i.fg, %i.fo                ; 2 uses
  %i.fq = icmp samesign ult i32 %i.fp, 32
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = shl nuw nsw i32 %i.fp, 1                ; 3 uses
  %.not.i136 = icmp eq i32 %i.fg, %i.fo
  br i1 %.not.i136, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check1353

iter.check1353:                                   ; preds = %._crit_edge.i133
  %i.fs = tail call i32 @llvm.usub.sat.i32(i32 %i.fr, i32 2) ; 3 uses
  %i.ft = lshr exact i32 %i.fs, 1
  %narrow = add nuw nsw i32 %i.ft, 1
  %i.fu = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check1330 = icmp samesign ult i32 %i.fs, 6
  br i1 %min.iters.check1330, label %.lr.ph.i28.i137.preheader, label %vector.memcheck1331

vector.memcheck1331:                              ; preds = %iter.check1353
  %i.fv = tail call i32 @llvm.usub.sat.i32(i32 %i.fr, i32 2)
  %i.fw = or disjoint i32 %i.fv, 1
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = shl nuw nsw i64 %i.fx, 1
  %i.fz = and i64 %i.fy, 4294967292
  %i.ga = getelementptr i8, ptr %.026.lcssa.i134, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 4
  %i.gc = lshr i64 %i.fx, 3
  %i.gd = getelementptr i8, ptr %.025.lcssa.i135, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 1
  %bound01332 = icmp ult ptr %.026.lcssa.i134, %i.ge
  %bound11333 = icmp ult ptr %.025.lcssa.i135, %i.gb
  %found.conflict1334 = and i1 %bound01332, %bound11333
  br i1 %found.conflict1334, label %.lr.ph.i28.i137.preheader, label %vector.main.loop.iter.check1335

vector.main.loop.iter.check1335:                  ; preds = %vector.memcheck1331
  %min.iters.check1336 = icmp samesign ult i32 %i.fs, 30
  br i1 %min.iters.check1336, label %vec.epilog.ph1357, label %vector.ph1337

vector.ph1337:                                    ; preds = %vector.main.loop.iter.check1335
  %i.gf = and i64 %i.fu, 12
  %n.vec1338 = and i64 %i.fu, 2147483632          ; 5 uses
  %i.gg = shl nuw nsw i64 %n.vec1338, 2
  %i.gh = getelementptr i8, ptr %.026.lcssa.i134, i64 %i.gg
  %i.gi = trunc nuw nsw i64 %n.vec1338 to i32
  %i.gj = shl nuw i32 %i.gi, 1                    ; 2 uses
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.ph1337, %vector.body1339
  %index1340 = phi i64 [ 0, %vector.ph1337 ], [ %index.next1349, %vector.body1339 ] ; 6 uses
  %vec.ind1341 = phi <4 x i32> [ <i32 0, i32 2, i32 4, i32 6>, %vector.ph1337 ], [ %vec.ind.next1350, %vector.body1339 ] ; 5 uses
  %i.gk = shl i64 %index1340, 2
  %next.gep1342 = getelementptr i8, ptr %.026.lcssa.i134, i64 %i.gk ; 4 uses
  %i.gl = lshr exact i64 %index1340, 2
  %i.gm = lshr exact i64 %index1340, 2
  %i.gn = lshr exact i64 %index1340, 2
  %i.go = lshr exact i64 %index1340, 2
  %i.gp = and i64 %i.gl, 1073741820
  %i.gq = and i64 %i.gm, 1073741820
  %i.gr = and i64 %i.gn, 1073741820
  %i.gs = and i64 %i.go, 1073741820
  %i.gt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i135, i64 %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i135, i64 %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i135, i64 %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.gy = getelementptr inbounds nuw i8, ptr %.025.lcssa.i135, i64 %i.gs
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.ha = load i8, ptr %i.gt, align 1, !alias.scope !267
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ha, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hb = load i8, ptr %i.gv, align 1, !alias.scope !267
  %broadcast.splatinsert1343 = insertelement <4 x i8> poison, i8 %i.hb, i64 0
  %broadcast.splat1344 = shufflevector <4 x i8> %broadcast.splatinsert1343, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hc = load i8, ptr %i.gx, align 1, !alias.scope !267
  %broadcast.splatinsert1345 = insertelement <4 x i8> poison, i8 %i.hc, i64 0
  %broadcast.splat1346 = shufflevector <4 x i8> %broadcast.splatinsert1345, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hd = load i8, ptr %i.gz, align 1, !alias.scope !267
  %broadcast.splatinsert1347 = insertelement <4 x i8> poison, i8 %i.hd, i64 0
  %broadcast.splat1348 = shufflevector <4 x i8> %broadcast.splatinsert1347, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.he = zext <4 x i8> %broadcast.splat to <4 x i32>
  %i.hf = zext <4 x i8> %broadcast.splat1344 to <4 x i32>
  %i.hg = zext <4 x i8> %broadcast.splat1346 to <4 x i32>
  %i.hh = zext <4 x i8> %broadcast.splat1348 to <4 x i32>
  %i.hi = and <4 x i32> %vec.ind1341, splat (i32 6)
  %i.hj = and <4 x i32> %vec.ind1341, splat (i32 6)
  %i.hk = and <4 x i32> %vec.ind1341, splat (i32 6)
  %i.hl = and <4 x i32> %vec.ind1341, splat (i32 6)
  %i.hm = lshr <4 x i32> %i.he, %i.hi
  %i.hn = lshr <4 x i32> %i.hf, %i.hj
  %i.ho = lshr <4 x i32> %i.hg, %i.hk
  %i.hp = lshr <4 x i32> %i.hh, %i.hl
  %i.hq = and <4 x i32> %i.hm, splat (i32 3)
  %i.hr = and <4 x i32> %i.hn, splat (i32 3)
  %i.hs = and <4 x i32> %i.ho, splat (i32 3)
  %i.ht = and <4 x i32> %i.hp, splat (i32 3)
  %i.hu = getelementptr i8, ptr %next.gep1342, i64 16
  %i.hv = getelementptr i8, ptr %next.gep1342, i64 32
  %i.hw = getelementptr i8, ptr %next.gep1342, i64 48
  store <4 x i32> %i.hq, ptr %next.gep1342, align 4, !tbaa !6, !alias.scope !268, !noalias !267
  store <4 x i32> %i.hr, ptr %i.hu, align 4, !tbaa !6, !alias.scope !268, !noalias !267
  store <4 x i32> %i.hs, ptr %i.hv, align 4, !tbaa !6, !alias.scope !268, !noalias !267
  store <4 x i32> %i.ht, ptr %i.hw, align 4, !tbaa !6, !alias.scope !268, !noalias !267
  %index.next1349 = add nuw i64 %index1340, 16    ; 2 uses
  %vec.ind.next1350 = add nuw nsw <4 x i32> %vec.ind1341, splat (i32 32)
  %i.hx = icmp eq i64 %index.next1349, %n.vec1338
  br i1 %i.hx, label %middle.block1351, label %vector.body1339, !llvm.loop !156

middle.block1351:                                 ; preds = %vector.body1339
  %cmp.n1352 = icmp eq i64 %n.vec1338, %i.fu
  br i1 %cmp.n1352, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %vec.epilog.iter.check1354

vec.epilog.iter.check1354:                        ; preds = %middle.block1351
  %min.epilog.iters.check1356 = icmp eq i64 %i.gf, 0
  br i1 %min.epilog.iters.check1356, label %.lr.ph.i28.i137.preheader, label %vec.epilog.ph1357, !prof !13

vec.epilog.ph1357:                                ; preds = %vector.main.loop.iter.check1335, %vec.epilog.iter.check1354
  %vec.epilog.resume.val1358 = phi i64 [ %n.vec1338, %vec.epilog.iter.check1354 ], [ 0, %vector.main.loop.iter.check1335 ]
  %bc.resume.val1359 = phi i32 [ %i.gj, %vec.epilog.iter.check1354 ], [ 0, %vector.main.loop.iter.check1335 ]
  %n.vec1360 = and i64 %i.fu, 2147483644          ; 4 uses
  %i.hy = shl nuw nsw i64 %n.vec1360, 2
  %i.hz = getelementptr i8, ptr %.026.lcssa.i134, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %n.vec1360 to i32
  %i.ib = shl nuw i32 %i.ia, 1
  %broadcast.splatinsert1361 = insertelement <4 x i32> poison, i32 %bc.resume.val1359, i64 0
  %broadcast.splat1362 = shufflevector <4 x i32> %broadcast.splatinsert1361, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat1362, <i32 0, i32 2, i32 4, i32 6>
  br label %vec.epilog.vector.body1363

vec.epilog.vector.body1363:                       ; preds = %vec.epilog.vector.body1363, %vec.epilog.ph1357
  %index1364 = phi i64 [ %vec.epilog.resume.val1358, %vec.epilog.ph1357 ], [ %index.next1369, %vec.epilog.vector.body1363 ] ; 3 uses
  %vec.ind1365 = phi <4 x i32> [ %induction, %vec.epilog.ph1357 ], [ %vec.ind.next1370, %vec.epilog.vector.body1363 ] ; 2 uses
  %i.ic = shl i64 %index1364, 2
  %next.gep1366 = getelementptr i8, ptr %.026.lcssa.i134, i64 %i.ic
  %i.id = lshr exact i64 %index1364, 2
  %i.ie = and i64 %i.id, 1073741823
  %i.if = getelementptr inbounds nuw i8, ptr %.025.lcssa.i135, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !267
  %broadcast.splatinsert1367 = insertelement <4 x i8> poison, i8 %i.ig, i64 0
  %broadcast.splat1368 = shufflevector <4 x i8> %broadcast.splatinsert1367, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ih = zext <4 x i8> %broadcast.splat1368 to <4 x i32>
  %i.ii = and <4 x i32> %vec.ind1365, splat (i32 6)
  %i.ij = lshr <4 x i32> %i.ih, %i.ii
  %i.ik = and <4 x i32> %i.ij, splat (i32 3)
  store <4 x i32> %i.ik, ptr %next.gep1366, align 4, !tbaa !6, !alias.scope !268, !noalias !267
  %index.next1369 = add nuw i64 %index1364, 4     ; 2 uses
  %vec.ind.next1370 = add nuw nsw <4 x i32> %vec.ind1365, splat (i32 8)
  %i.il = icmp eq i64 %index.next1369, %n.vec1360
  br i1 %i.il, label %vec.epilog.middle.block1371, label %vec.epilog.vector.body1363, !llvm.loop !157

vec.epilog.middle.block1371:                      ; preds = %vec.epilog.vector.body1363
  %cmp.n1372 = icmp eq i64 %n.vec1360, %i.fu
  br i1 %cmp.n1372, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i137.preheader

.lr.ph.i28.i137.preheader:                        ; preds = %iter.check1353, %vector.memcheck1331, %vec.epilog.iter.check1354, %vec.epilog.middle.block1371
  %.024.i.i138.ph = phi ptr [ %.026.lcssa.i134, %iter.check1353 ], [ %.026.lcssa.i134, %vector.memcheck1331 ], [ %i.gh, %vec.epilog.iter.check1354 ], [ %i.hz, %vec.epilog.middle.block1371 ]
  %.02223.i.i139.ph = phi i32 [ 0, %iter.check1353 ], [ 0, %vector.memcheck1331 ], [ %i.gj, %vec.epilog.iter.check1354 ], [ %i.ib, %vec.epilog.middle.block1371 ]
  br label %.lr.ph.i28.i137

.lr.ph.i28.i137:                                  ; preds = %.lr.ph.i28.i137.preheader, %.lr.ph.i28.i137
  %.024.i.i138 = phi ptr [ %i.iv, %.lr.ph.i28.i137 ], [ %.024.i.i138.ph, %.lr.ph.i28.i137.preheader ] ; 2 uses
  %.02223.i.i139 = phi i32 [ %i.in, %.lr.ph.i28.i137 ], [ %.02223.i.i139.ph, %.lr.ph.i28.i137.preheader ] ; 3 uses
  %i.im = lshr i32 %.02223.i.i139, 3
  %i.in = add nuw nsw i32 %.02223.i.i139, 2       ; 2 uses
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.025.lcssa.i135, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1
  %i.ir = zext i8 %i.iq to i32
  %i.is = and i32 %.02223.i.i139, 6
  %i.it = lshr i32 %i.ir, %i.is
  %i.iu = and i32 %i.it, 3
  store i32 %i.iu, ptr %.024.i.i138, align 4, !tbaa !6
  %i.iv = getelementptr inbounds nuw i8, ptr %.024.i.i138, i64 4
  %i.iw = icmp samesign ult i32 %i.in, %i.fr
  br i1 %i.iw, label %.lr.ph.i28.i137, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !158

.lr.ph.i140:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i140
  %.032.i = phi i32 [ %i.jz, %.lr.ph.i140 ], [ 0, %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i = phi ptr [ %i.jx, %.lr.ph.i140 ], [ %i.fj, %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %.02630.i = phi ptr [ %i.jy, %.lr.ph.i140 ], [ %i.fl, %_ZN5arrow8internal12unpack_exactILi2ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.ix = load i32, ptr %.02531.i, align 1        ; 5 uses
  %i.iy = insertelement <16 x i32> poison, i32 %i.ix, i64 0
  %i.iz = insertelement <8 x i32> poison, i32 %i.ix, i64 0
  %i.ja = shufflevector <8 x i32> %i.iz, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jb = lshr <16 x i32> %i.ja, <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0111.32.vec.insert.i.i1491403 = shufflevector <16 x i32> %i.iy, <16 x i32> %i.jb, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %i.jd = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.je = lshr <16 x i32> %i.jd, <i32 18, i32 20, i32 22, i32 24, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0111.48.vec.insert.i.i1531404 = shufflevector <16 x i32> %.sroa.0111.32.vec.insert.i.i1491403, <16 x i32> %i.je, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.jf = lshr i32 %i.ix, 26
  %.sroa.0111.52.vec.insert.i.i154 = insertelement <16 x i32> %.sroa.0111.48.vec.insert.i.i1531404, i32 %i.jf, i64 13
  %i.jg = insertelement <2 x i32> poison, i32 %i.ix, i64 0
  %i.jh = shufflevector <2 x i32> %i.jg, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ji = lshr <16 x i32> %i.jh, <i32 28, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0111.60.vec.insert.i.i1561405 = shufflevector <16 x i32> %.sroa.0111.52.vec.insert.i.i154, <16 x i32> %i.ji, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %7 = and <16 x i32> %.sroa.0111.60.vec.insert.i.i1561405, splat (i32 3)
  store <16 x i32> %7, ptr %.02630.i, align 1, !tbaa !10
  %i.jj = getelementptr inbounds nuw i8, ptr %.02531.i, i64 4
  %i.jk = load i32, ptr %i.jj, align 1            ; 5 uses
  %i.jl = insertelement <16 x i32> poison, i32 %i.jk, i64 0
  %i.jm = insertelement <8 x i32> poison, i32 %i.jk, i64 0
  %i.jn = shufflevector <8 x i32> %i.jm, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jo = lshr <16 x i32> %i.jn, <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0131.32.vec.insert.i.i1651406 = shufflevector <16 x i32> %i.jl, <16 x i32> %i.jo, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jp = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %i.jq = shufflevector <4 x i32> %i.jp, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jr = lshr <16 x i32> %i.jq, <i32 18, i32 20, i32 22, i32 24, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0131.48.vec.insert.i.i1691407 = shufflevector <16 x i32> %.sroa.0131.32.vec.insert.i.i1651406, <16 x i32> %i.jr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.js = lshr i32 %i.jk, 26
  %.sroa.0131.52.vec.insert.i.i170 = insertelement <16 x i32> %.sroa.0131.48.vec.insert.i.i1691407, i32 %i.js, i64 13
  %i.jt = insertelement <2 x i32> poison, i32 %i.jk, i64 0
  %i.ju = shufflevector <2 x i32> %i.jt, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jv = lshr <16 x i32> %i.ju, <i32 28, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0131.60.vec.insert.i.i1721408 = shufflevector <16 x i32> %.sroa.0131.52.vec.insert.i.i170, <16 x i32> %i.jv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.jw = getelementptr inbounds nuw i8, ptr %.02630.i, i64 64
  %8 = and <16 x i32> %.sroa.0131.60.vec.insert.i.i1721408, splat (i32 3)
  store <16 x i32> %8, ptr %i.jw, align 1, !tbaa !10
  %i.jx = getelementptr inbounds nuw i8, ptr %.02531.i, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.02630.i, i64 128 ; 2 uses
  %i.jz = add nuw nsw i32 %.032.i, 1              ; 2 uses
  %exitcond.not.i173 = icmp eq i32 %i.jz, %i.fm
  br i1 %exitcond.not.i173, label %._crit_edge.i133, label %.lr.ph.i140, !llvm.loop !159

bb.g:                                             ; preds = %bb.a
  %i.ka = mul nsw i32 %2, 3
  %i.kb = add nsw i32 %4, %i.ka
  %i.kc = icmp sgt i32 %2, 0
  br i1 %i.kc, label %.lr.ph.i.i191, label %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i191:                                    ; preds = %bb.g, %bb.h
  %.026.i.i192 = phi ptr [ %i.ks, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %.02325.i.i193 = phi i32 [ %i.kf, %bb.h ], [ %4, %bb.g ] ; 5 uses
  %i.kd = srem i32 %.02325.i.i193, 8              ; 2 uses
  %i.ke = sdiv i32 %.02325.i.i193, 8              ; 2 uses
  %.not.i.i194 = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i194, label %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i191
  %i.kf = add nsw i32 %.02325.i.i193, 3           ; 3 uses
  %i.kg = add nsw i32 %.02325.i.i193, 2
  %i.kh = sdiv i32 %i.kg, 8
  %i.ki = sub nsw i32 %i.kh, %i.ke                ; 2 uses
  %i.kj = add nsw i32 %i.ki, 1
  %i.kk = icmp slt i32 %i.ki, 2
  tail call void @llvm.assume(i1 %i.kk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 0, ptr %i.bc, align 8, !tbaa !12
  %i.kl = sext i32 %i.ke to i64
  %i.km = getelementptr inbounds i8, ptr %0, i64 %i.kl
  %i.kn = sext i32 %i.kj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr readonly align 1 %i.km, i64 %i.kn, i1 false)
  %.0..0..0..0..0..0..0..0..i.i195 = load i64, ptr %i.bc, align 8, !tbaa !12
  %i.ko = zext nneg i32 %i.kd to i64
  %i.kp = lshr i64 %.0..0..0..0..0..0..0..0..i.i195, %i.ko
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = and i32 %i.kq, 7
  store i32 %i.kr, ptr %.026.i.i192, align 4, !tbaa !6
  %i.ks = getelementptr inbounds nuw i8, ptr %.026.i.i192, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.kt = icmp slt i32 %i.kf, %i.kb
  br i1 %i.kt, label %.lr.ph.i.i191, label %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !160

_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.h, %.lr.ph.i.i191, %bb.g
  %.023.lcssa.i.i178 = phi i32 [ %4, %bb.g ], [ %i.kf, %bb.h ], [ %.02325.i.i193, %.lr.ph.i.i191 ]
  %i.ku = sub nsw i32 %.023.lcssa.i.i178, %4
  %i.kv = sdiv i32 %i.ku, 3                       ; 3 uses
  %i.kw = mul nsw i32 %i.kv, 3
  %i.kx = add nsw i32 %i.kw, %4
  %i.ky = sub nsw i32 %2, %i.kv                   ; 4 uses
  %i.kz = sdiv i32 %i.kx, 8
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds i8, ptr %0, i64 %i.la ; 2 uses
  %i.lc = sext i32 %i.kv to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lc ; 2 uses
  %i.le = sdiv i32 %i.ky, 32                      ; 2 uses
  %i.lf = icmp sgt i32 %i.ky, 31
  br i1 %i.lf, label %.lr.ph.i186, label %._crit_edge.i179

._crit_edge.i179:                                 ; preds = %.lr.ph.i186, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i180 = phi ptr [ %i.ld, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.mv, %.lr.ph.i186 ]
  %.025.lcssa.i181 = phi ptr [ %i.lb, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.mu, %.lr.ph.i186 ]
  %i.lg = shl nsw i32 %i.le, 5                    ; 2 uses
  %i.lh = sub nsw i32 %i.ky, %i.lg                ; 2 uses
  %i.li = icmp samesign ult i32 %i.lh, 32
  tail call void @llvm.assume(i1 %i.li)
  %i.lj = mul nuw nsw i32 %i.lh, 3
  %.not.i182 = icmp eq i32 %i.ky, %i.lg
  br i1 %.not.i182, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i183

.lr.ph.i28.i183:                                  ; preds = %._crit_edge.i179, %.lr.ph.i28.i183
  %.024.i.i184 = phi ptr [ %i.lz, %.lr.ph.i28.i183 ], [ %.026.lcssa.i180, %._crit_edge.i179 ] ; 2 uses
  %.02223.i.i185 = phi i32 [ %i.ll, %.lr.ph.i28.i183 ], [ 0, %._crit_edge.i179 ] ; 4 uses
  %i.lk = lshr i32 %.02223.i.i185, 3              ; 2 uses
  %i.ll = add nuw nsw i32 %.02223.i.i185, 3       ; 2 uses
  %i.lm = add nuw nsw i32 %.02223.i.i185, 2
  %i.ln = lshr i32 %i.lm, 3
  %i.lo = sub nsw i32 %i.ln, %i.lk                ; 2 uses
  %i.lp = add nsw i32 %i.lo, 1
  %i.lq = icmp slt i32 %i.lo, 2
  tail call void @llvm.assume(i1 %i.lq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8, !tbaa !12
  %i.lr = zext nneg i32 %i.lk to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %.025.lcssa.i181, i64 %i.lr
  %i.lt = sext i32 %i.lp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 1 %i.ls, i64 %i.lt, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i = load i64, ptr %i.bb, align 8, !tbaa !12
  %i.lu = and i32 %.02223.i.i185, 7
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = lshr i64 %.0..0..0..0..0..0..0..0..i29.i, %i.lv
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = and i32 %i.lx, 7
  store i32 %i.ly, ptr %.024.i.i184, align 4, !tbaa !6
  %i.lz = getelementptr inbounds nuw i8, ptr %.024.i.i184, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.ma = icmp samesign ult i32 %i.ll, %i.lj
  br i1 %i.ma, label %.lr.ph.i28.i183, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !161

.lr.ph.i186:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i186
  %.032.i187 = phi i32 [ %i.mw, %.lr.ph.i186 ], [ 0, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i188 = phi ptr [ %i.mu, %.lr.ph.i186 ], [ %i.lb, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i189 = phi ptr [ %i.mv, %.lr.ph.i186 ], [ %i.ld, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.02531.i188, i64 4 ; 3 uses
  %i.mc = load <2 x i32>, ptr %.02531.i188, align 1
  %i.md = load i32, ptr %i.mb, align 1
  %i.me = load i32, ptr %.02531.i188, align 1
  %i.mf = tail call i32 @llvm.fshl.i32(i32 %i.md, i32 %i.me, i32 2)
  %i.mg = shufflevector <2 x i32> %i.mc, <2 x i32> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.mh = insertelement <3 x i32> %i.mg, i32 %i.mf, i64 1
  %i.mi = shufflevector <3 x i32> %i.mh, <3 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.mj = lshr <16 x i32> %i.mi, <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 0, i32 1, i32 4, i32 7, i32 10, i32 13>
  %9 = and <16 x i32> %i.mj, splat (i32 7)
  store <16 x i32> %9, ptr %.02630.i189, align 1, !tbaa !10
  %i.mk = getelementptr inbounds nuw i8, ptr %.02531.i188, i64 8
  %i.ml = load <2 x i32>, ptr %i.mb, align 1
  %i.mm = load i32, ptr %i.mk, align 1
  %i.mn = load i32, ptr %i.mb, align 1
  %i.mo = tail call i32 @llvm.fshl.i32(i32 %i.mm, i32 %i.mn, i32 1)
  %i.mp = shufflevector <2 x i32> %i.ml, <2 x i32> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.mq = insertelement <3 x i32> %i.mp, i32 %i.mo, i64 1
  %i.mr = shufflevector <3 x i32> %i.mq, <3 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ms = lshr <16 x i32> %i.mr, <i32 16, i32 19, i32 22, i32 25, i32 28, i32 0, i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29>
  %i.mt = getelementptr inbounds nuw i8, ptr %.02630.i189, i64 64
  %10 = and <16 x i32> %i.ms, splat (i32 7)
  store <16 x i32> %10, ptr %i.mt, align 1, !tbaa !10
  %i.mu = getelementptr inbounds nuw i8, ptr %.02531.i188, i64 12 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.02630.i189, i64 128 ; 2 uses
  %i.mw = add nuw nsw i32 %.032.i187, 1           ; 2 uses
  %exitcond.not.i190 = icmp eq i32 %i.mw, %i.le
  br i1 %exitcond.not.i190, label %._crit_edge.i179, label %.lr.ph.i186, !llvm.loop !162

bb.i:                                             ; preds = %bb.a
  %i.mx = shl nsw i32 %2, 2
  %i.my = add nsw i32 %4, %i.mx
  %i.mz = icmp sgt i32 %2, 0
  br i1 %i.mz, label %.lr.ph.i.i211, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i211:                                    ; preds = %bb.i, %bb.j
  %.026.i.i212 = phi ptr [ %i.np, %bb.j ], [ %1, %bb.i ] ; 2 uses
  %.02325.i.i213 = phi i32 [ %i.nc, %bb.j ], [ %4, %bb.i ] ; 5 uses
  %i.na = srem i32 %.02325.i.i213, 8              ; 2 uses
  %i.nb = sdiv i32 %.02325.i.i213, 8              ; 2 uses
  %.not.i.i214 = icmp eq i32 %i.na, 0
  br i1 %.not.i.i214, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i211
  %i.nc = add nsw i32 %.02325.i.i213, 4           ; 3 uses
  %i.nd = add nsw i32 %.02325.i.i213, 3
  %i.ne = sdiv i32 %i.nd, 8
  %i.nf = sub nsw i32 %i.ne, %i.nb                ; 2 uses
  %i.ng = add nsw i32 %i.nf, 1
  %i.nh = icmp slt i32 %i.nf, 2
  tail call void @llvm.assume(i1 %i.nh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8, !tbaa !12
  %i.ni = sext i32 %i.nb to i64
  %i.nj = getelementptr inbounds i8, ptr %0, i64 %i.ni
  %i.nk = sext i32 %i.ng to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr readonly align 1 %i.nj, i64 %i.nk, i1 false)
  %.0..0..0..0..0..0..0..0..i.i215 = load i64, ptr %i.ba, align 8, !tbaa !12
  %i.nl = zext nneg i32 %i.na to i64
  %i.nm = lshr i64 %.0..0..0..0..0..0..0..0..i.i215, %i.nl
  %i.nn = trunc i64 %i.nm to i32
  %i.no = and i32 %i.nn, 15
  store i32 %i.no, ptr %.026.i.i212, align 4, !tbaa !6
  %i.np = getelementptr inbounds nuw i8, ptr %.026.i.i212, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.nq = icmp slt i32 %i.nc, %i.my
  br i1 %i.nq, label %.lr.ph.i.i211, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !163

_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.j, %.lr.ph.i.i211, %bb.i
  %.023.lcssa.i.i196 = phi i32 [ %4, %bb.i ], [ %i.nc, %bb.j ], [ %.02325.i.i213, %.lr.ph.i.i211 ]
  %i.nr = sub nsw i32 %.023.lcssa.i.i196, %4
  %i.ns = sdiv i32 %i.nr, 4                       ; 3 uses
  %i.nt = shl nsw i32 %i.ns, 2
  %i.nu = add nsw i32 %i.nt, %4
  %i.nv = sub nsw i32 %2, %i.ns                   ; 5 uses
  %i.nw = sdiv i32 %i.nu, 8
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds i8, ptr %0, i64 %i.nx ; 3 uses
  %i.nz = sext i32 %i.ns to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.nz ; 3 uses
  %i.ob = sdiv i32 %i.nv, 32                      ; 4 uses
  %i.oc = icmp sgt i32 %i.nv, 31
  br i1 %i.oc, label %.lr.ph.i204.preheader, label %._crit_edge.i197

.lr.ph.i204.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i
  %xtraiter1576 = and i32 %i.ob, 1
  %i.od = and i32 %i.nv, 2147483616
  %i.oe = icmp eq i32 %i.od, 32
  br i1 %i.oe, label %.lr.ph.i204.epil.preheader, label %.lr.ph.i204.preheader.new

.lr.ph.i204.preheader.new:                        ; preds = %.lr.ph.i204.preheader
  %unroll_iter1581 = and i32 %i.ob, 67108862
  br label %.lr.ph.i204

._crit_edge.i197.loopexit.unr-lcssa:              ; preds = %.lr.ph.i204
  %lcmp.mod1577.not = icmp eq i32 %xtraiter1576, 0
  br i1 %lcmp.mod1577.not, label %._crit_edge.i197, label %.lr.ph.i204.epil.preheader

.lr.ph.i204.epil.preheader:                       ; preds = %._crit_edge.i197.loopexit.unr-lcssa, %.lr.ph.i204.preheader
  %.02531.i206.epil.init = phi ptr [ %i.ny, %.lr.ph.i204.preheader ], [ %i.rz, %._crit_edge.i197.loopexit.unr-lcssa ] ; 3 uses
  %.02630.i207.epil.init = phi ptr [ %i.oa, %.lr.ph.i204.preheader ], [ %i.sa, %._crit_edge.i197.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1580 = trunc i32 %i.ob to i1
  tail call void @llvm.assume(i1 %lcmp.mod1580)
  %i.of = load <2 x i32>, ptr %.02531.i206.epil.init, align 1
  %i.og = shufflevector <2 x i32> %i.of, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.oh = lshr <16 x i32> %i.og, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %11 = and <16 x i32> %i.oh, splat (i32 15)
  store <16 x i32> %11, ptr %.02630.i207.epil.init, align 1, !tbaa !10
  %i.oi = getelementptr inbounds nuw i8, ptr %.02531.i206.epil.init, i64 8
  %i.oj = load <2 x i32>, ptr %i.oi, align 1
  %i.ok = shufflevector <2 x i32> %i.oj, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ol = lshr <16 x i32> %i.ok, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.om = getelementptr inbounds nuw i8, ptr %.02630.i207.epil.init, i64 64
  %12 = and <16 x i32> %i.ol, splat (i32 15)
  store <16 x i32> %12, ptr %i.om, align 1, !tbaa !10
  %i.on = getelementptr inbounds nuw i8, ptr %.02531.i206.epil.init, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %.02630.i207.epil.init, i64 128
  br label %._crit_edge.i197

._crit_edge.i197:                                 ; preds = %.lr.ph.i204.epil.preheader, %._crit_edge.i197.loopexit.unr-lcssa, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i198 = phi ptr [ %i.oa, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.sa, %._crit_edge.i197.loopexit.unr-lcssa ], [ %i.oo, %.lr.ph.i204.epil.preheader ] ; 6 uses
  %.025.lcssa.i199 = phi ptr [ %i.ny, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.rz, %._crit_edge.i197.loopexit.unr-lcssa ], [ %i.on, %.lr.ph.i204.epil.preheader ] ; 11 uses
  %i.op = shl nsw i32 %i.ob, 5                    ; 2 uses
  %i.oq = sub nsw i32 %i.nv, %i.op                ; 2 uses
  %i.or = icmp samesign ult i32 %i.oq, 32
  tail call void @llvm.assume(i1 %i.or)
  %i.os = shl nuw nsw i32 %i.oq, 2                ; 2 uses
  %.not.i200 = icmp eq i32 %i.nv, %i.op
  br i1 %.not.i200, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i201.preheader

.lr.ph.i28.i201.preheader:                        ; preds = %._crit_edge.i197
  %i.ot = tail call i32 @llvm.usub.sat.i32(i32 %i.os, i32 4) ; 2 uses
  %i.ou = or disjoint i32 %i.ot, 3
  %i.ov = zext nneg i32 %i.ou to i64              ; 3 uses
  %i.ow = lshr i64 %i.ov, 2
  %i.ox = add nuw nsw i64 %i.ow, 1                ; 2 uses
  %min.iters.check1307 = icmp samesign ult i32 %i.ot, 60
  br i1 %min.iters.check1307, label %.lr.ph.i28.i201.preheader1481, label %vector.memcheck1308

vector.memcheck1308:                              ; preds = %.lr.ph.i28.i201.preheader
  %i.oy = and i64 %i.ov, 124
  %i.oz = getelementptr i8, ptr %.026.lcssa.i198, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oz, i64 4
  %i.pb = lshr i64 %i.ov, 3
  %i.pc = getelementptr i8, ptr %.025.lcssa.i199, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 1
  %bound01309 = icmp ult ptr %.026.lcssa.i198, %i.pd
  %bound11310 = icmp ult ptr %.025.lcssa.i199, %i.pa
  %found.conflict1311 = and i1 %bound01309, %bound11310
  br i1 %found.conflict1311, label %.lr.ph.i28.i201.preheader1481, label %vector.ph1312

vector.ph1312:                                    ; preds = %vector.memcheck1308
  %n.vec1313 = and i64 %i.ox, 1073741816          ; 4 uses
  %i.pe = shl nuw nsw i64 %n.vec1313, 2
  %i.pf = getelementptr i8, ptr %.026.lcssa.i198, i64 %i.pe
  %i.pg = trunc nuw nsw i64 %n.vec1313 to i32
  %i.ph = shl nuw i32 %i.pg, 2
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1318, %vector.body1314 ] ; 2 uses
  %vec.ind1316 = phi <8 x i32> [ <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>, %vector.ph1312 ], [ %vec.ind.next1319, %vector.body1314 ] ; 3 uses
  %i.pi = shl i64 %index1315, 2
  %next.gep1317 = getelementptr i8, ptr %.026.lcssa.i198, i64 %i.pi
  %i.pj = lshr <8 x i32> %vec.ind1316, splat (i32 3)
  %i.pk = zext nneg <8 x i32> %i.pj to <8 x i64>  ; 8 uses
  %i.pl = extractelement <8 x i64> %i.pk, i64 0
  %i.pm = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.pl
  %i.pn = extractelement <8 x i64> %i.pk, i64 1
  %i.po = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.pn
  %i.pp = extractelement <8 x i64> %i.pk, i64 2
  %i.pq = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.pp
  %i.pr = extractelement <8 x i64> %i.pk, i64 3
  %i.ps = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.pr
  %i.pt = extractelement <8 x i64> %i.pk, i64 4
  %i.pu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.pt
  %i.pv = extractelement <8 x i64> %i.pk, i64 5
  %i.pw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.pv
  %i.px = extractelement <8 x i64> %i.pk, i64 6
  %i.py = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.px
  %i.pz = extractelement <8 x i64> %i.pk, i64 7
  %i.qa = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.pz
  %i.qb = load i8, ptr %i.pm, align 1, !alias.scope !269
  %i.qc = load i8, ptr %i.po, align 1, !alias.scope !269
  %i.qd = load i8, ptr %i.pq, align 1, !alias.scope !269
  %i.qe = load i8, ptr %i.ps, align 1, !alias.scope !269
  %i.qf = load i8, ptr %i.pu, align 1, !alias.scope !269
  %i.qg = load i8, ptr %i.pw, align 1, !alias.scope !269
  %i.qh = load i8, ptr %i.py, align 1, !alias.scope !269
  %i.qi = load i8, ptr %i.qa, align 1, !alias.scope !269
  %i.qj = insertelement <8 x i8> poison, i8 %i.qb, i64 0
  %i.qk = insertelement <8 x i8> %i.qj, i8 %i.qc, i64 1
  %i.ql = insertelement <8 x i8> %i.qk, i8 %i.qd, i64 2
  %i.qm = insertelement <8 x i8> %i.ql, i8 %i.qe, i64 3
  %i.qn = insertelement <8 x i8> %i.qm, i8 %i.qf, i64 4
  %i.qo = insertelement <8 x i8> %i.qn, i8 %i.qg, i64 5
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 6
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 7
  %i.qr = zext <8 x i8> %i.qq to <8 x i32>
  %i.qs = and <8 x i32> %vec.ind1316, splat (i32 4)
  %i.qt = lshr <8 x i32> %i.qr, %i.qs
  %i.qu = and <8 x i32> %i.qt, splat (i32 15)
  store <8 x i32> %i.qu, ptr %next.gep1317, align 4, !tbaa !6, !alias.scope !270, !noalias !269
  %index.next1318 = add nuw i64 %index1315, 8     ; 2 uses
  %vec.ind.next1319 = add nuw nsw <8 x i32> %vec.ind1316, splat (i32 32)
  %i.qv = icmp eq i64 %index.next1318, %n.vec1313
  br i1 %i.qv, label %middle.block1320, label %vector.body1314, !llvm.loop !167

middle.block1320:                                 ; preds = %vector.body1314
  %cmp.n1321 = icmp eq i64 %i.ox, %n.vec1313
  br i1 %cmp.n1321, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i201.preheader1481

.lr.ph.i28.i201.preheader1481:                    ; preds = %vector.memcheck1308, %.lr.ph.i28.i201.preheader, %middle.block1320
  %.024.i.i202.ph = phi ptr [ %.026.lcssa.i198, %vector.memcheck1308 ], [ %.026.lcssa.i198, %.lr.ph.i28.i201.preheader ], [ %i.pf, %middle.block1320 ]
  %.02223.i.i203.ph = phi i32 [ 0, %vector.memcheck1308 ], [ 0, %.lr.ph.i28.i201.preheader ], [ %i.ph, %middle.block1320 ]
  br label %.lr.ph.i28.i201

.lr.ph.i28.i201:                                  ; preds = %.lr.ph.i28.i201.preheader1481, %.lr.ph.i28.i201
  %.024.i.i202 = phi ptr [ %i.rf, %.lr.ph.i28.i201 ], [ %.024.i.i202.ph, %.lr.ph.i28.i201.preheader1481 ] ; 2 uses
  %.02223.i.i203 = phi i32 [ %i.qx, %.lr.ph.i28.i201 ], [ %.02223.i.i203.ph, %.lr.ph.i28.i201.preheader1481 ] ; 3 uses
  %i.qw = lshr i32 %.02223.i.i203, 3
  %i.qx = add nuw nsw i32 %.02223.i.i203, 4       ; 2 uses
  %i.qy = zext nneg i32 %i.qw to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1
  %i.rb = zext i8 %i.ra to i32
  %i.rc = and i32 %.02223.i.i203, 4
  %i.rd = lshr i32 %i.rb, %i.rc
  %i.re = and i32 %i.rd, 15
  store i32 %i.re, ptr %.024.i.i202, align 4, !tbaa !6
  %i.rf = getelementptr inbounds nuw i8, ptr %.024.i.i202, i64 4
  %i.rg = icmp samesign ult i32 %i.qx, %i.os
  br i1 %i.rg, label %.lr.ph.i28.i201, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !168

.lr.ph.i204:                                      ; preds = %.lr.ph.i204, %.lr.ph.i204.preheader.new
  %.02531.i206 = phi ptr [ %i.ny, %.lr.ph.i204.preheader.new ], [ %i.rz, %.lr.ph.i204 ] ; 5 uses
  %.02630.i207 = phi ptr [ %i.oa, %.lr.ph.i204.preheader.new ], [ %i.sa, %.lr.ph.i204 ] ; 5 uses
  %niter1582 = phi i32 [ 0, %.lr.ph.i204.preheader.new ], [ %niter1582.next.1, %.lr.ph.i204 ]
  %i.rh = load <2 x i32>, ptr %.02531.i206, align 1
  %i.ri = shufflevector <2 x i32> %i.rh, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.rj = lshr <16 x i32> %i.ri, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %13 = and <16 x i32> %i.rj, splat (i32 15)
  store <16 x i32> %13, ptr %.02630.i207, align 1, !tbaa !10
  %i.rk = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 8
  %i.rl = load <2 x i32>, ptr %i.rk, align 1
  %i.rm = shufflevector <2 x i32> %i.rl, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.rn = lshr <16 x i32> %i.rm, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ro = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 64
  %14 = and <16 x i32> %i.rn, splat (i32 15)
  store <16 x i32> %14, ptr %i.ro, align 1, !tbaa !10
  %i.rp = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 128
  %i.rr = load <2 x i32>, ptr %i.rp, align 1
  %i.rs = shufflevector <2 x i32> %i.rr, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.rt = lshr <16 x i32> %i.rs, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %15 = and <16 x i32> %i.rt, splat (i32 15)
  store <16 x i32> %15, ptr %i.rq, align 1, !tbaa !10
  %i.ru = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 24
  %i.rv = load <2 x i32>, ptr %i.ru, align 1
  %i.rw = shufflevector <2 x i32> %i.rv, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.rx = lshr <16 x i32> %i.rw, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ry = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 192
  %16 = and <16 x i32> %i.rx, splat (i32 15)
  store <16 x i32> %16, ptr %i.ry, align 1, !tbaa !10
  %i.rz = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 32 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 256 ; 3 uses
  %niter1582.next.1 = add i32 %niter1582, 2       ; 2 uses
  %niter1582.ncmp.1 = icmp eq i32 %niter1582.next.1, %unroll_iter1581
  br i1 %niter1582.ncmp.1, label %._crit_edge.i197.loopexit.unr-lcssa, label %.lr.ph.i204, !llvm.loop !169

bb.k:                                             ; preds = %bb.a
  %i.sb = mul nsw i32 %2, 5
  %i.sc = add nsw i32 %4, %i.sb
  %i.sd = icmp sgt i32 %2, 0
  br i1 %i.sd, label %.lr.ph.i.i230, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i230:                                    ; preds = %bb.k, %bb.l
  %.026.i.i231 = phi ptr [ %i.st, %bb.l ], [ %1, %bb.k ] ; 2 uses
  %.02325.i.i232 = phi i32 [ %i.sg, %bb.l ], [ %4, %bb.k ] ; 5 uses
  %i.se = srem i32 %.02325.i.i232, 8              ; 2 uses
  %i.sf = sdiv i32 %.02325.i.i232, 8              ; 2 uses
  %.not.i.i233 = icmp eq i32 %i.se, 0
  br i1 %.not.i.i233, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i230
  %i.sg = add nsw i32 %.02325.i.i232, 5           ; 3 uses
  %i.sh = add nsw i32 %.02325.i.i232, 4
  %i.si = sdiv i32 %i.sh, 8
  %i.sj = sub nsw i32 %i.si, %i.sf                ; 2 uses
  %i.sk = add nsw i32 %i.sj, 1
  %i.sl = icmp slt i32 %i.sj, 2
  tail call void @llvm.assume(i1 %i.sl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 0, ptr %i.az, align 8, !tbaa !12
  %i.sm = sext i32 %i.sf to i64
  %i.sn = getelementptr inbounds i8, ptr %0, i64 %i.sm
  %i.so = sext i32 %i.sk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr readonly align 1 %i.sn, i64 %i.so, i1 false)
  %.0..0..0..0..0..0..0..0..i.i234 = load i64, ptr %i.az, align 8, !tbaa !12
  %i.sp = zext nneg i32 %i.se to i64
  %i.sq = lshr i64 %.0..0..0..0..0..0..0..0..i.i234, %i.sp
  %i.sr = trunc i64 %i.sq to i32
  %i.ss = and i32 %i.sr, 31
  store i32 %i.ss, ptr %.026.i.i231, align 4, !tbaa !6
  %i.st = getelementptr inbounds nuw i8, ptr %.026.i.i231, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.su = icmp slt i32 %i.sg, %i.sc
  br i1 %i.su, label %.lr.ph.i.i230, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !170

_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.l, %.lr.ph.i.i230, %bb.k
  %.023.lcssa.i.i216 = phi i32 [ %4, %bb.k ], [ %i.sg, %bb.l ], [ %.02325.i.i232, %.lr.ph.i.i230 ]
  %i.sv = sub nsw i32 %.023.lcssa.i.i216, %4
  %i.sw = sdiv i32 %i.sv, 5                       ; 3 uses
  %i.sx = mul nsw i32 %i.sw, 5
  %i.sy = add nsw i32 %i.sx, %4
  %i.sz = sub nsw i32 %2, %i.sw                   ; 4 uses
  %i.ta = sdiv i32 %i.sy, 8
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %0, i64 %i.tb ; 2 uses
  %i.td = sext i32 %i.sw to i64
  %i.te = getelementptr inbounds [4 x i8], ptr %1, i64 %i.td ; 2 uses
  %i.tf = sdiv i32 %i.sz, 32                      ; 2 uses
  %i.tg = icmp sgt i32 %i.sz, 31
  br i1 %i.tg, label %.lr.ph.i225, label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %.lr.ph.i225, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i218 = phi ptr [ %i.te, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.uv, %.lr.ph.i225 ]
  %.025.lcssa.i219 = phi ptr [ %i.tc, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.uu, %.lr.ph.i225 ]
  %i.th = shl nsw i32 %i.tf, 5                    ; 2 uses
  %i.ti = sub nsw i32 %i.sz, %i.th                ; 2 uses
  %i.tj = icmp samesign ult i32 %i.ti, 32
  tail call void @llvm.assume(i1 %i.tj)
  %i.tk = mul nuw nsw i32 %i.ti, 5
  %.not.i220 = icmp eq i32 %i.sz, %i.th
  br i1 %.not.i220, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i221

.lr.ph.i28.i221:                                  ; preds = %._crit_edge.i217, %.lr.ph.i28.i221
  %.024.i.i222 = phi ptr [ %i.ua, %.lr.ph.i28.i221 ], [ %.026.lcssa.i218, %._crit_edge.i217 ] ; 2 uses
  %.02223.i.i223 = phi i32 [ %i.tm, %.lr.ph.i28.i221 ], [ 0, %._crit_edge.i217 ] ; 4 uses
  %i.tl = lshr i32 %.02223.i.i223, 3              ; 2 uses
  %i.tm = add nuw nsw i32 %.02223.i.i223, 5       ; 2 uses
  %i.tn = add nuw nsw i32 %.02223.i.i223, 4
  %i.to = lshr i32 %i.tn, 3
  %i.tp = sub nsw i32 %i.to, %i.tl                ; 2 uses
  %i.tq = add nsw i32 %i.tp, 1
  %i.tr = icmp slt i32 %i.tp, 2
  tail call void @llvm.assume(i1 %i.tr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 0, ptr %i.ay, align 8, !tbaa !12
  %i.ts = zext nneg i32 %i.tl to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i219, i64 %i.ts
  %i.tu = sext i32 %i.tq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 1 %i.tt, i64 %i.tu, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i224 = load i64, ptr %i.ay, align 8, !tbaa !12
  %i.tv = and i32 %.02223.i.i223, 7
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = lshr i64 %.0..0..0..0..0..0..0..0..i29.i224, %i.tw
  %i.ty = trunc i64 %i.tx to i32
  %i.tz = and i32 %i.ty, 31
  store i32 %i.tz, ptr %.024.i.i222, align 4, !tbaa !6
  %i.ua = getelementptr inbounds nuw i8, ptr %.024.i.i222, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.ub = icmp samesign ult i32 %i.tm, %i.tk
  br i1 %i.ub, label %.lr.ph.i28.i221, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !171

.lr.ph.i225:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i225
  %.032.i226 = phi i32 [ %i.uw, %.lr.ph.i225 ], [ 0, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i227 = phi ptr [ %i.uu, %.lr.ph.i225 ], [ %i.tc, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i228 = phi ptr [ %i.uv, %.lr.ph.i225 ], [ %i.te, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 4
  %i.ud = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 8
  %i.ue = load <2 x i32>, ptr %.02531.i227, align 1 ; 2 uses
  %i.uf = load <2 x i32>, ptr %i.uc, align 1      ; 2 uses
  %i.ug = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.uf, <2 x i32> %i.ue, <2 x i32> <i32 2, i32 4>)
  %i.uh = shufflevector <2 x i32> %i.ue, <2 x i32> %i.ug, <5 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison>
  %i.ui = shufflevector <2 x i32> %i.uf, <2 x i32> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.uj = shufflevector <5 x i32> %i.uh, <5 x i32> %i.ui, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6>
  %i.uk = lshr <16 x i32> %i.uj, <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 0, i32 3, i32 8, i32 13, i32 18, i32 23, i32 0, i32 1, i32 6, i32 11>
  %17 = and <16 x i32> %i.uk, splat (i32 31)
  store <16 x i32> %17, ptr %.02630.i228, align 1, !tbaa !10
  %i.ul = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 12
  %i.um = load <2 x i32>, ptr %i.ud, align 1      ; 2 uses
  %i.un = load <2 x i32>, ptr %i.ul, align 1      ; 2 uses
  %i.uo = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.un, <2 x i32> %i.um, <2 x i32> <i32 1, i32 3>)
  %i.up = shufflevector <2 x i32> %i.um, <2 x i32> %i.uo, <5 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison>
  %i.uq = shufflevector <2 x i32> %i.un, <2 x i32> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ur = shufflevector <5 x i32> %i.up, <5 x i32> %i.uq, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.us = lshr <16 x i32> %i.ur, <i32 16, i32 21, i32 26, i32 0, i32 4, i32 9, i32 14, i32 19, i32 24, i32 0, i32 2, i32 7, i32 12, i32 17, i32 22, i32 27>
  %i.ut = getelementptr inbounds nuw i8, ptr %.02630.i228, i64 64
  %18 = and <16 x i32> %i.us, splat (i32 31)
  store <16 x i32> %18, ptr %i.ut, align 1, !tbaa !10
  %i.uu = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 20 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.02630.i228, i64 128 ; 2 uses
  %i.uw = add nuw nsw i32 %.032.i226, 1           ; 2 uses
  %exitcond.not.i229 = icmp eq i32 %i.uw, %i.tf
  br i1 %exitcond.not.i229, label %._crit_edge.i217, label %.lr.ph.i225, !llvm.loop !172

bb.m:                                             ; preds = %bb.a
  %i.ux = mul nsw i32 %2, 6
  %i.uy = add nsw i32 %4, %i.ux
  %i.uz = icmp sgt i32 %2, 0
  br i1 %i.uz, label %.lr.ph.i.i251, label %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i251:                                    ; preds = %bb.m, %bb.n
  %.026.i.i252 = phi ptr [ %i.vp, %bb.n ], [ %1, %bb.m ] ; 2 uses
  %.02325.i.i253 = phi i32 [ %i.vc, %bb.n ], [ %4, %bb.m ] ; 5 uses
  %i.va = srem i32 %.02325.i.i253, 8              ; 2 uses
  %i.vb = sdiv i32 %.02325.i.i253, 8              ; 2 uses
  %.not.i.i254 = icmp eq i32 %i.va, 0
  br i1 %.not.i.i254, label %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i251
  %i.vc = add nsw i32 %.02325.i.i253, 6           ; 3 uses
  %i.vd = add nsw i32 %.02325.i.i253, 5
  %i.ve = sdiv i32 %i.vd, 8
  %i.vf = sub nsw i32 %i.ve, %i.vb                ; 2 uses
  %i.vg = add nsw i32 %i.vf, 1
  %i.vh = icmp slt i32 %i.vf, 2
  tail call void @llvm.assume(i1 %i.vh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 0, ptr %i.ax, align 8, !tbaa !12
  %i.vi = sext i32 %i.vb to i64
  %i.vj = getelementptr inbounds i8, ptr %0, i64 %i.vi
  %i.vk = sext i32 %i.vg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr readonly align 1 %i.vj, i64 %i.vk, i1 false)
  %.0..0..0..0..0..0..0..0..i.i255 = load i64, ptr %i.ax, align 8, !tbaa !12
  %i.vl = zext nneg i32 %i.va to i64
  %i.vm = lshr i64 %.0..0..0..0..0..0..0..0..i.i255, %i.vl
  %i.vn = trunc i64 %i.vm to i32
  %i.vo = and i32 %i.vn, 63
  store i32 %i.vo, ptr %.026.i.i252, align 4, !tbaa !6
  %i.vp = getelementptr inbounds nuw i8, ptr %.026.i.i252, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.vq = icmp slt i32 %i.vc, %i.uy
  br i1 %i.vq, label %.lr.ph.i.i251, label %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !173

_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.n, %.lr.ph.i.i251, %bb.m
  %.023.lcssa.i.i235 = phi i32 [ %4, %bb.m ], [ %i.vc, %bb.n ], [ %.02325.i.i253, %.lr.ph.i.i251 ]
  %i.vr = sub nsw i32 %.023.lcssa.i.i235, %4
  %i.vs = sdiv i32 %i.vr, 6                       ; 3 uses
  %i.vt = mul nsw i32 %i.vs, 6
  %i.vu = add nsw i32 %i.vt, %4
  %i.vv = sub nsw i32 %2, %i.vs                   ; 4 uses
  %i.vw = sdiv i32 %i.vu, 8
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds i8, ptr %0, i64 %i.vx ; 2 uses
  %i.vz = sext i32 %i.vs to i64
  %i.wa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vz ; 2 uses
  %i.wb = sdiv i32 %i.vv, 32                      ; 2 uses
  %i.wc = icmp sgt i32 %i.vv, 31
  br i1 %i.wc, label %.lr.ph.i244, label %._crit_edge.i236

._crit_edge.i236:                                 ; preds = %.lr.ph.i244, %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i237 = phi ptr [ %i.wa, %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.xr, %.lr.ph.i244 ]
  %.025.lcssa.i238 = phi ptr [ %i.vy, %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.xq, %.lr.ph.i244 ]
  %i.wd = shl nsw i32 %i.wb, 5                    ; 2 uses
  %i.we = sub nsw i32 %i.vv, %i.wd                ; 2 uses
  %i.wf = icmp samesign ult i32 %i.we, 32
  tail call void @llvm.assume(i1 %i.wf)
  %i.wg = mul nuw nsw i32 %i.we, 6
  %.not.i239 = icmp eq i32 %i.vv, %i.wd
  br i1 %.not.i239, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i240

.lr.ph.i28.i240:                                  ; preds = %._crit_edge.i236, %.lr.ph.i28.i240
  %.024.i.i241 = phi ptr [ %i.ww, %.lr.ph.i28.i240 ], [ %.026.lcssa.i237, %._crit_edge.i236 ] ; 2 uses
  %.02223.i.i242 = phi i32 [ %i.wi, %.lr.ph.i28.i240 ], [ 0, %._crit_edge.i236 ] ; 4 uses
  %i.wh = lshr i32 %.02223.i.i242, 3              ; 2 uses
  %i.wi = add nuw nsw i32 %.02223.i.i242, 6       ; 2 uses
  %i.wj = add nuw nsw i32 %.02223.i.i242, 4
  %i.wk = lshr i32 %i.wj, 3
  %i.wl = sub nsw i32 %i.wk, %i.wh                ; 2 uses
  %i.wm = add nsw i32 %i.wl, 1
  %i.wn = icmp slt i32 %i.wl, 2
  tail call void @llvm.assume(i1 %i.wn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 0, ptr %i.aw, align 8, !tbaa !12
  %i.wo = zext nneg i32 %i.wh to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i238, i64 %i.wo
  %i.wq = sext i32 %i.wm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 1 %i.wp, i64 %i.wq, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i243 = load i64, ptr %i.aw, align 8, !tbaa !12
  %i.wr = and i32 %.02223.i.i242, 6
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = lshr i64 %.0..0..0..0..0..0..0..0..i29.i243, %i.ws
  %i.wu = trunc i64 %i.wt to i32
  %i.wv = and i32 %i.wu, 63
  store i32 %i.wv, ptr %.024.i.i241, align 4, !tbaa !6
  %i.ww = getelementptr inbounds nuw i8, ptr %.024.i.i241, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.wx = icmp samesign ult i32 %i.wi, %i.wg
  br i1 %i.wx, label %.lr.ph.i28.i240, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !174

.lr.ph.i244:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i244
  %.032.i245 = phi i32 [ %i.xs, %.lr.ph.i244 ], [ 0, %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i246 = phi ptr [ %i.xq, %.lr.ph.i244 ], [ %i.vy, %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i247 = phi ptr [ %i.xr, %.lr.ph.i244 ], [ %i.wa, %_ZN5arrow8internal12unpack_exactILi6ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.02531.i246, i64 4
  %i.wz = load <2 x i32>, ptr %.02531.i246, align 1 ; 2 uses
  %i.xa = load <2 x i32>, ptr %i.wy, align 1      ; 2 uses
  %i.xb = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.xa, <2 x i32> %i.wz, <2 x i32> <i32 2, i32 4>)
  %i.xc = shufflevector <2 x i32> %i.wz, <2 x i32> %i.xb, <5 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison>
  %i.xd = shufflevector <2 x i32> %i.xa, <2 x i32> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.xe = shufflevector <5 x i32> %i.xc, <5 x i32> %i.xd, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.xf = lshr <16 x i32> %i.xe, <i32 0, i32 6, i32 12, i32 18, i32 24, i32 0, i32 4, i32 10, i32 16, i32 22, i32 0, i32 2, i32 8, i32 14, i32 20, i32 26>
  %19 = and <16 x i32> %i.xf, splat (i32 63)
  store <16 x i32> %19, ptr %.02630.i247, align 1, !tbaa !10
  %i.xg = getelementptr inbounds nuw i8, ptr %.02531.i246, i64 12
  %i.xh = getelementptr inbounds nuw i8, ptr %.02531.i246, i64 16
  %i.xi = load <2 x i32>, ptr %i.xg, align 1      ; 2 uses
  %i.xj = load <2 x i32>, ptr %i.xh, align 1      ; 2 uses
  %i.xk = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.xj, <2 x i32> %i.xi, <2 x i32> <i32 2, i32 4>)
  %i.xl = shufflevector <2 x i32> %i.xi, <2 x i32> %i.xk, <5 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison>
  %i.xm = shufflevector <2 x i32> %i.xj, <2 x i32> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.xn = shufflevector <5 x i32> %i.xl, <5 x i32> %i.xm, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.xo = lshr <16 x i32> %i.xn, <i32 0, i32 6, i32 12, i32 18, i32 24, i32 0, i32 4, i32 10, i32 16, i32 22, i32 0, i32 2, i32 8, i32 14, i32 20, i32 26>
  %i.xp = getelementptr inbounds nuw i8, ptr %.02630.i247, i64 64
  %20 = and <16 x i32> %i.xo, splat (i32 63)
  store <16 x i32> %20, ptr %i.xp, align 1, !tbaa !10
  %i.xq = getelementptr inbounds nuw i8, ptr %.02531.i246, i64 24 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.02630.i247, i64 128 ; 2 uses
  %i.xs = add nuw nsw i32 %.032.i245, 1           ; 2 uses
  %exitcond.not.i250 = icmp eq i32 %i.xs, %i.wb
  br i1 %exitcond.not.i250, label %._crit_edge.i236, label %.lr.ph.i244, !llvm.loop !175

bb.o:                                             ; preds = %bb.a
  %i.xt = mul nsw i32 %2, 7
  %i.xu = add nsw i32 %4, %i.xt
  %i.xv = icmp sgt i32 %2, 0
  br i1 %i.xv, label %.lr.ph.i.i270, label %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i270:                                    ; preds = %bb.o, %bb.p
  %.026.i.i271 = phi ptr [ %i.yl, %bb.p ], [ %1, %bb.o ] ; 2 uses
  %.02325.i.i272 = phi i32 [ %i.xy, %bb.p ], [ %4, %bb.o ] ; 5 uses
  %i.xw = srem i32 %.02325.i.i272, 8              ; 2 uses
  %i.xx = sdiv i32 %.02325.i.i272, 8              ; 2 uses
  %.not.i.i273 = icmp eq i32 %i.xw, 0
  br i1 %.not.i.i273, label %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i270
  %i.xy = add nsw i32 %.02325.i.i272, 7           ; 3 uses
  %i.xz = add nsw i32 %.02325.i.i272, 6
  %i.ya = sdiv i32 %i.xz, 8
  %i.yb = sub nsw i32 %i.ya, %i.xx                ; 2 uses
  %i.yc = add nsw i32 %i.yb, 1
  %i.yd = icmp slt i32 %i.yb, 2
  tail call void @llvm.assume(i1 %i.yd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 0, ptr %i.av, align 8, !tbaa !12
  %i.ye = sext i32 %i.xx to i64
  %i.yf = getelementptr inbounds i8, ptr %0, i64 %i.ye
  %i.yg = sext i32 %i.yc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr readonly align 1 %i.yf, i64 %i.yg, i1 false)
  %.0..0..0..0..0..0..0..0..i.i274 = load i64, ptr %i.av, align 8, !tbaa !12
  %i.yh = zext nneg i32 %i.xw to i64
  %i.yi = lshr i64 %.0..0..0..0..0..0..0..0..i.i274, %i.yh
  %i.yj = trunc i64 %i.yi to i32
  %i.yk = and i32 %i.yj, 127
  store i32 %i.yk, ptr %.026.i.i271, align 4, !tbaa !6
  %i.yl = getelementptr inbounds nuw i8, ptr %.026.i.i271, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.ym = icmp slt i32 %i.xy, %i.xu
  br i1 %i.ym, label %.lr.ph.i.i270, label %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !176

_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.p, %.lr.ph.i.i270, %bb.o
  %.023.lcssa.i.i256 = phi i32 [ %4, %bb.o ], [ %i.xy, %bb.p ], [ %.02325.i.i272, %.lr.ph.i.i270 ]
  %i.yn = sub nsw i32 %.023.lcssa.i.i256, %4
  %i.yo = sdiv i32 %i.yn, 7                       ; 3 uses
  %i.yp = mul nsw i32 %i.yo, 7
  %i.yq = add nsw i32 %i.yp, %4
  %i.yr = sub nsw i32 %2, %i.yo                   ; 4 uses
  %i.ys = sdiv i32 %i.yq, 8
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds i8, ptr %0, i64 %i.yt ; 2 uses
  %i.yv = sext i32 %i.yo to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yv ; 2 uses
  %i.yx = sdiv i32 %i.yr, 32                      ; 2 uses
  %i.yy = icmp sgt i32 %i.yr, 31
  br i1 %i.yy, label %.lr.ph.i265, label %._crit_edge.i257

._crit_edge.i257:                                 ; preds = %.lr.ph.i265, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i258 = phi ptr [ %i.yw, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aan, %.lr.ph.i265 ]
  %.025.lcssa.i259 = phi ptr [ %i.yu, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aam, %.lr.ph.i265 ]
  %i.yz = shl nsw i32 %i.yx, 5                    ; 2 uses
  %i.za = sub nsw i32 %i.yr, %i.yz                ; 2 uses
  %i.zb = icmp samesign ult i32 %i.za, 32
  tail call void @llvm.assume(i1 %i.zb)
  %i.zc = mul nuw nsw i32 %i.za, 7
  %.not.i260 = icmp eq i32 %i.yr, %i.yz
  br i1 %.not.i260, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i261

.lr.ph.i28.i261:                                  ; preds = %._crit_edge.i257, %.lr.ph.i28.i261
  %.024.i.i262 = phi ptr [ %i.zs, %.lr.ph.i28.i261 ], [ %.026.lcssa.i258, %._crit_edge.i257 ] ; 2 uses
  %.02223.i.i263 = phi i32 [ %i.ze, %.lr.ph.i28.i261 ], [ 0, %._crit_edge.i257 ] ; 4 uses
  %i.zd = lshr i32 %.02223.i.i263, 3              ; 2 uses
  %i.ze = add nuw nsw i32 %.02223.i.i263, 7       ; 2 uses
  %i.zf = add nuw nsw i32 %.02223.i.i263, 6
  %i.zg = lshr i32 %i.zf, 3
  %i.zh = sub nsw i32 %i.zg, %i.zd                ; 2 uses
  %i.zi = add nsw i32 %i.zh, 1
  %i.zj = icmp slt i32 %i.zh, 2
  tail call void @llvm.assume(i1 %i.zj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 0, ptr %i.au, align 8, !tbaa !12
  %i.zk = zext nneg i32 %i.zd to i64
  %i.zl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i259, i64 %i.zk
  %i.zm = sext i32 %i.zi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 1 %i.zl, i64 %i.zm, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i264 = load i64, ptr %i.au, align 8, !tbaa !12
  %i.zn = and i32 %.02223.i.i263, 7
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = lshr i64 %.0..0..0..0..0..0..0..0..i29.i264, %i.zo
  %i.zq = trunc i64 %i.zp to i32
  %i.zr = and i32 %i.zq, 127
  store i32 %i.zr, ptr %.024.i.i262, align 4, !tbaa !6
  %i.zs = getelementptr inbounds nuw i8, ptr %.024.i.i262, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.zt = icmp samesign ult i32 %i.ze, %i.zc
  br i1 %i.zt, label %.lr.ph.i28.i261, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !177

.lr.ph.i265:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i265
  %.032.i266 = phi i32 [ %i.aao, %.lr.ph.i265 ], [ 0, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i267 = phi ptr [ %i.aam, %.lr.ph.i265 ], [ %i.yu, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %.02630.i268 = phi ptr [ %i.aan, %.lr.ph.i265 ], [ %i.yw, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 12
  %i.zv = load <4 x i32>, ptr %.02531.i267, align 1 ; 3 uses
  %i.zw = shufflevector <4 x i32> %i.zv, <4 x i32> poison, <3 x i32> <i32 1, i32 2, i32 3>
  %i.zx = shufflevector <4 x i32> %i.zv, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.zy = tail call <3 x i32> @llvm.fshl.v3i32(<3 x i32> %i.zw, <3 x i32> %i.zx, <3 x i32> <i32 4, i32 1, i32 5>)
  %i.zz = shufflevector <4 x i32> %i.zv, <4 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.aaa = shufflevector <3 x i32> %i.zy, <3 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aab = shufflevector <7 x i32> %i.zz, <7 x i32> %i.aaa, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 7, i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 9, i32 3, i32 3>
  %i.aac = lshr <16 x i32> %i.aab, <i32 0, i32 7, i32 14, i32 21, i32 0, i32 3, i32 10, i32 17, i32 24, i32 0, i32 6, i32 13, i32 20, i32 0, i32 2, i32 9>
  %21 = and <16 x i32> %i.aac, splat (i32 127)
  store <16 x i32> %21, ptr %.02630.i268, align 1, !tbaa !10
  %i.aad = load <4 x i32>, ptr %i.zu, align 1     ; 3 uses
  %i.aae = shufflevector <4 x i32> %i.aad, <4 x i32> poison, <3 x i32> <i32 1, i32 2, i32 3>
  %i.aaf = shufflevector <4 x i32> %i.aad, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.aag = tail call <3 x i32> @llvm.fshl.v3i32(<3 x i32> %i.aae, <3 x i32> %i.aaf, <3 x i32> <i32 2, i32 6, i32 3>)
  %i.aah = shufflevector <4 x i32> %i.aad, <4 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.aai = shufflevector <3 x i32> %i.aag, <3 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaj = shufflevector <7 x i32> %i.aah, <7 x i32> %i.aai, <16 x i32> <i32 0, i32 0, i32 7, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 2, i32 9, i32 3, i32 3, i32 3, i32 3>
  %i.aak = lshr <16 x i32> %i.aaj, <i32 16, i32 23, i32 0, i32 5, i32 12, i32 19, i32 0, i32 1, i32 8, i32 15, i32 22, i32 0, i32 4, i32 11, i32 18, i32 25>
  %i.aal = getelementptr inbounds nuw i8, ptr %.02630.i268, i64 64
  %22 = and <16 x i32> %i.aak, splat (i32 127)
  store <16 x i32> %22, ptr %i.aal, align 1, !tbaa !10
  %i.aam = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 28 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.02630.i268, i64 128 ; 2 uses
  %i.aao = add nuw nsw i32 %.032.i266, 1          ; 2 uses
  %exitcond.not.i269 = icmp eq i32 %i.aao, %i.yx
  br i1 %exitcond.not.i269, label %._crit_edge.i257, label %.lr.ph.i265, !llvm.loop !178

bb.q:                                             ; preds = %bb.a
  %i.aap = shl nsw i32 %2, 3
  %i.aaq = add nsw i32 %4, %i.aap
  %i.aar = icmp sgt i32 %2, 0
  br i1 %i.aar, label %.lr.ph.i.i289, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i289:                                    ; preds = %bb.q, %bb.r
  %.026.i.i290 = phi ptr [ %i.abh, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i291 = phi i32 [ %i.aau, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.aas = srem i32 %.02325.i.i291, 8             ; 2 uses
  %i.aat = sdiv i32 %.02325.i.i291, 8             ; 2 uses
  %.not.i.i292 = icmp eq i32 %i.aas, 0
  br i1 %.not.i.i292, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i289
  %i.aau = add nsw i32 %.02325.i.i291, 8          ; 3 uses
  %i.aav = add nsw i32 %.02325.i.i291, 7
  %i.aaw = sdiv i32 %i.aav, 8
  %i.aax = sub nsw i32 %i.aaw, %i.aat             ; 2 uses
  %i.aay = add nsw i32 %i.aax, 1
  %i.aaz = icmp slt i32 %i.aax, 2
  tail call void @llvm.assume(i1 %i.aaz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8, !tbaa !12
  %i.aba = sext i32 %i.aat to i64
  %i.abb = getelementptr inbounds i8, ptr %0, i64 %i.aba
  %i.abc = sext i32 %i.aay to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr readonly align 1 %i.abb, i64 %i.abc, i1 false)
  %.0..0..0..0..0..0..0..0..i.i293 = load i64, ptr %i.at, align 8, !tbaa !12
  %i.abd = zext nneg i32 %i.aas to i64
  %i.abe = lshr i64 %.0..0..0..0..0..0..0..0..i.i293, %i.abd
  %i.abf = trunc i64 %i.abe to i32
  %i.abg = and i32 %i.abf, 255
  store i32 %i.abg, ptr %.026.i.i290, align 4, !tbaa !6
  %i.abh = getelementptr inbounds nuw i8, ptr %.026.i.i290, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.abi = icmp slt i32 %i.aau, %i.aaq
  br i1 %i.abi, label %.lr.ph.i.i289, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !179

_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.r, %.lr.ph.i.i289, %bb.q
  %.023.lcssa.i.i275 = phi i32 [ %4, %bb.q ], [ %i.aau, %bb.r ], [ %.02325.i.i291, %.lr.ph.i.i289 ]
  %i.abj = sub nsw i32 %.023.lcssa.i.i275, %4
  %i.abk = sdiv i32 %i.abj, 8                     ; 3 uses
  %i.abl = shl nsw i32 %i.abk, 3
  %i.abm = add nsw i32 %i.abl, %4
  %i.abn = sub nsw i32 %2, %i.abk                 ; 5 uses
  %i.abo = sdiv i32 %i.abm, 8
  %i.abp = sext i32 %i.abo to i64
  %i.abq = getelementptr inbounds i8, ptr %0, i64 %i.abp ; 3 uses
  %i.abr = sext i32 %i.abk to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.abr ; 3 uses
  %i.abt = sdiv i32 %i.abn, 32                    ; 4 uses
  %i.abu = icmp sgt i32 %i.abn, 31
  br i1 %i.abu, label %.lr.ph.i282.preheader, label %._crit_edge.i276

.lr.ph.i282.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i
  %xtraiter1569 = and i32 %i.abt, 1
  %i.abv = and i32 %i.abn, 2147483616
  %i.abw = icmp eq i32 %i.abv, 32
  br i1 %i.abw, label %.lr.ph.i282.epil.preheader, label %.lr.ph.i282.preheader.new

.lr.ph.i282.preheader.new:                        ; preds = %.lr.ph.i282.preheader
  %unroll_iter1574 = and i32 %i.abt, 67108862
  br label %.lr.ph.i282

._crit_edge.i276.loopexit.unr-lcssa:              ; preds = %.lr.ph.i282
  %lcmp.mod1570.not = icmp eq i32 %xtraiter1569, 0
  br i1 %lcmp.mod1570.not, label %._crit_edge.i276, label %.lr.ph.i282.epil.preheader

.lr.ph.i282.epil.preheader:                       ; preds = %._crit_edge.i276.loopexit.unr-lcssa, %.lr.ph.i282.preheader
  %.02531.i284.epil.init = phi ptr [ %i.abq, %.lr.ph.i282.preheader ], [ %i.aeb, %._crit_edge.i276.loopexit.unr-lcssa ] ; 3 uses
  %.02630.i285.epil.init = phi ptr [ %i.abs, %.lr.ph.i282.preheader ], [ %i.aec, %._crit_edge.i276.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1573 = trunc i32 %i.abt to i1
  tail call void @llvm.assume(i1 %lcmp.mod1573)
  %i.abx = load <4 x i32>, ptr %.02531.i284.epil.init, align 1
  %i.aby = shufflevector <4 x i32> %i.abx, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.abz = lshr <16 x i32> %i.aby, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %23 = and <16 x i32> %i.abz, splat (i32 255)
  store <16 x i32> %23, ptr %.02630.i285.epil.init, align 1, !tbaa !10
  %i.aca = getelementptr inbounds nuw i8, ptr %.02531.i284.epil.init, i64 16
  %i.acb = load <4 x i32>, ptr %i.aca, align 1
  %i.acc = shufflevector <4 x i32> %i.acb, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.acd = lshr <16 x i32> %i.acc, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.ace = getelementptr inbounds nuw i8, ptr %.02630.i285.epil.init, i64 64
  %24 = and <16 x i32> %i.acd, splat (i32 255)
  store <16 x i32> %24, ptr %i.ace, align 1, !tbaa !10
  %i.acf = getelementptr inbounds nuw i8, ptr %.02531.i284.epil.init, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %.02630.i285.epil.init, i64 128
  br label %._crit_edge.i276

._crit_edge.i276:                                 ; preds = %.lr.ph.i282.epil.preheader, %._crit_edge.i276.loopexit.unr-lcssa, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i277 = phi ptr [ %i.abs, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aec, %._crit_edge.i276.loopexit.unr-lcssa ], [ %i.acg, %.lr.ph.i282.epil.preheader ] ; 6 uses
  %.025.lcssa.i278 = phi ptr [ %i.abq, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aeb, %._crit_edge.i276.loopexit.unr-lcssa ], [ %i.acf, %.lr.ph.i282.epil.preheader ] ; 4 uses
  %i.ach = shl nsw i32 %i.abt, 5                  ; 2 uses
  %i.aci = sub nsw i32 %i.abn, %i.ach             ; 2 uses
  %i.acj = icmp samesign ult i32 %i.aci, 32
  tail call void @llvm.assume(i1 %i.acj)
  %.not.i279 = icmp eq i32 %i.abn, %i.ach
  br i1 %.not.i279, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check1285

iter.check1285:                                   ; preds = %._crit_edge.i276
  %i.ack = shl nuw nsw i32 %i.aci, 3
  %i.acl = zext nneg i32 %i.ack to i64            ; 3 uses
  %i.acm = tail call i64 @llvm.usub.sat.i64(i64 %i.acl, i64 8) ; 2 uses
  %i.acn = lshr exact i64 %i.acm, 3
  %i.aco = add nuw nsw i64 %i.acn, 1              ; 2 uses
  %min.iters.check1267 = icmp samesign ult i64 %i.acm, 56
  br i1 %min.iters.check1267, label %.lr.ph.i28.i280.preheader, label %vector.memcheck1268

vector.memcheck1268:                              ; preds = %iter.check1285
  %i.acp = tail call i64 @llvm.usub.sat.i64(i64 %i.acl, i64 8) ; 2 uses
  %i.acq = lshr exact i64 %i.acp, 3
  %i.acr = lshr exact i64 %i.acp, 1
  %i.acs = getelementptr i8, ptr %.026.lcssa.i277, i64 %i.acr
  %i.act = getelementptr i8, ptr %i.acs, i64 4
  %i.acu = getelementptr i8, ptr %.025.lcssa.i278, i64 %i.acq
  %i.acv = getelementptr i8, ptr %i.acu, i64 1
  %bound01269 = icmp ult ptr %.026.lcssa.i277, %i.acv
  %bound11270 = icmp ult ptr %.025.lcssa.i278, %i.act
  %found.conflict1271 = and i1 %bound01269, %bound11270
  br i1 %found.conflict1271, label %.lr.ph.i28.i280.preheader, label %vec.epilog.ph1289

vec.epilog.ph1289:                                ; preds = %vector.memcheck1268
  %n.vec1291 = and i64 %i.aco, 536870904          ; 4 uses
  %i.acw = shl nuw nsw i64 %n.vec1291, 3
  %i.acx = shl nuw nsw i64 %n.vec1291, 2
  %i.acy = getelementptr i8, ptr %.026.lcssa.i277, i64 %i.acx
  br label %vec.epilog.vector.body1292

vec.epilog.vector.body1292:                       ; preds = %vec.epilog.vector.body1292, %vec.epilog.ph1289
  %index1293 = phi i64 [ 0, %vec.epilog.ph1289 ], [ %index.next1296, %vec.epilog.vector.body1292 ] ; 3 uses
  %i.acz = shl i64 %index1293, 2
  %next.gep1294 = getelementptr i8, ptr %.026.lcssa.i277, i64 %i.acz
  %i.ada = getelementptr inbounds nuw i8, ptr %.025.lcssa.i278, i64 %index1293
  %wide.load1295 = load <8 x i8>, ptr %i.ada, align 1, !alias.scope !271
  %i.adb = zext <8 x i8> %wide.load1295 to <8 x i32>
  store <8 x i32> %i.adb, ptr %next.gep1294, align 4, !tbaa !6, !alias.scope !272, !noalias !271
  %index.next1296 = add nuw i64 %index1293, 8     ; 2 uses
  %i.adc = icmp eq i64 %index.next1296, %n.vec1291
  br i1 %i.adc, label %vec.epilog.middle.block1297, label %vec.epilog.vector.body1292, !llvm.loop !183

vec.epilog.middle.block1297:                      ; preds = %vec.epilog.vector.body1292
  %cmp.n1298 = icmp eq i64 %i.aco, %n.vec1291
  br i1 %cmp.n1298, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i280.preheader

.lr.ph.i28.i280.preheader:                        ; preds = %iter.check1285, %vector.memcheck1268, %vec.epilog.middle.block1297
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck1268 ], [ 0, %iter.check1285 ], [ %i.acw, %vec.epilog.middle.block1297 ]
  %.024.i.i281.ph = phi ptr [ %.026.lcssa.i277, %vector.memcheck1268 ], [ %.026.lcssa.i277, %iter.check1285 ], [ %i.acy, %vec.epilog.middle.block1297 ]
  br label %.lr.ph.i28.i280

.lr.ph.i28.i280:                                  ; preds = %.lr.ph.i28.i280.preheader, %.lr.ph.i28.i280
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i28.i280 ], [ %indvars.iv.i.ph, %.lr.ph.i28.i280.preheader ] ; 2 uses
  %.024.i.i281 = phi ptr [ %i.adh, %.lr.ph.i28.i280 ], [ %.024.i.i281.ph, %.lr.ph.i28.i280.preheader ] ; 2 uses
  %i.add = lshr exact i64 %indvars.iv.i, 3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.025.lcssa.i278, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1
  %i.adg = zext i8 %i.adf to i32
  store i32 %i.adg, ptr %.024.i.i281, align 4, !tbaa !6
  %i.adh = getelementptr inbounds nuw i8, ptr %.024.i.i281, i64 4
  %i.adi = icmp samesign ult i64 %indvars.iv.next.i, %i.acl
  br i1 %i.adi, label %.lr.ph.i28.i280, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !184

.lr.ph.i282:                                      ; preds = %.lr.ph.i282, %.lr.ph.i282.preheader.new
  %.02531.i284 = phi ptr [ %i.abq, %.lr.ph.i282.preheader.new ], [ %i.aeb, %.lr.ph.i282 ] ; 5 uses
  %.02630.i285 = phi ptr [ %i.abs, %.lr.ph.i282.preheader.new ], [ %i.aec, %.lr.ph.i282 ] ; 5 uses
  %niter1575 = phi i32 [ 0, %.lr.ph.i282.preheader.new ], [ %niter1575.next.1, %.lr.ph.i282 ]
  %i.adj = load <4 x i32>, ptr %.02531.i284, align 1
  %i.adk = shufflevector <4 x i32> %i.adj, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.adl = lshr <16 x i32> %i.adk, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %25 = and <16 x i32> %i.adl, splat (i32 255)
  store <16 x i32> %25, ptr %.02630.i285, align 1, !tbaa !10
  %i.adm = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 16
  %i.adn = load <4 x i32>, ptr %i.adm, align 1
  %i.ado = shufflevector <4 x i32> %i.adn, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.adp = lshr <16 x i32> %i.ado, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.adq = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 64
  %26 = and <16 x i32> %i.adp, splat (i32 255)
  store <16 x i32> %26, ptr %i.adq, align 1, !tbaa !10
  %i.adr = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 32
  %i.ads = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 128
  %i.adt = load <4 x i32>, ptr %i.adr, align 1
  %i.adu = shufflevector <4 x i32> %i.adt, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.adv = lshr <16 x i32> %i.adu, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %27 = and <16 x i32> %i.adv, splat (i32 255)
  store <16 x i32> %27, ptr %i.ads, align 1, !tbaa !10
  %i.adw = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 48
  %i.adx = load <4 x i32>, ptr %i.adw, align 1
  %i.ady = shufflevector <4 x i32> %i.adx, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.adz = lshr <16 x i32> %i.ady, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.aea = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 192
  %28 = and <16 x i32> %i.adz, splat (i32 255)
  store <16 x i32> %28, ptr %i.aea, align 1, !tbaa !10
  %i.aeb = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 64 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 256 ; 3 uses
  %niter1575.next.1 = add i32 %niter1575, 2       ; 2 uses
  %niter1575.ncmp.1 = icmp eq i32 %niter1575.next.1, %unroll_iter1574
  br i1 %niter1575.ncmp.1, label %._crit_edge.i276.loopexit.unr-lcssa, label %.lr.ph.i282, !llvm.loop !185

bb.s:                                             ; preds = %bb.a
  %i.aed = mul nsw i32 %2, 9
  %i.aee = add nsw i32 %4, %i.aed
  %i.aef = icmp sgt i32 %2, 0
  br i1 %i.aef, label %.lr.ph.i.i308, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i308:                                    ; preds = %bb.s, %bb.t
  %.026.i.i309 = phi ptr [ %i.aev, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.02325.i.i310 = phi i32 [ %i.aei, %bb.t ], [ %4, %bb.s ] ; 5 uses
  %i.aeg = srem i32 %.02325.i.i310, 8             ; 2 uses
  %i.aeh = sdiv i32 %.02325.i.i310, 8             ; 2 uses
  %.not.i.i311 = icmp eq i32 %i.aeg, 0
  br i1 %.not.i.i311, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i308
  %i.aei = add nsw i32 %.02325.i.i310, 9          ; 3 uses
  %i.aej = add nsw i32 %.02325.i.i310, 8
  %i.aek = sdiv i32 %i.aej, 8
  %i.ael = sub nsw i32 %i.aek, %i.aeh             ; 2 uses
  %i.aem = add nsw i32 %i.ael, 1
  %i.aen = icmp slt i32 %i.ael, 2
  tail call void @llvm.assume(i1 %i.aen)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8, !tbaa !12
  %i.aeo = sext i32 %i.aeh to i64
  %i.aep = getelementptr inbounds i8, ptr %0, i64 %i.aeo
  %i.aeq = sext i32 %i.aem to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr readonly align 1 %i.aep, i64 %i.aeq, i1 false)
  %.0..0..0..0..0..0..0..0..i.i312 = load i64, ptr %i.as, align 8, !tbaa !12
  %i.aer = zext nneg i32 %i.aeg to i64
  %i.aes = lshr i64 %.0..0..0..0..0..0..0..0..i.i312, %i.aer
  %i.aet = trunc i64 %i.aes to i32
  %i.aeu = and i32 %i.aet, 511
  store i32 %i.aeu, ptr %.026.i.i309, align 4, !tbaa !6
  %i.aev = getelementptr inbounds nuw i8, ptr %.026.i.i309, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.aew = icmp slt i32 %i.aei, %i.aee
  br i1 %i.aew, label %.lr.ph.i.i308, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !186

_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.t, %.lr.ph.i.i308, %bb.s
  %.023.lcssa.i.i294 = phi i32 [ %4, %bb.s ], [ %i.aei, %bb.t ], [ %.02325.i.i310, %.lr.ph.i.i308 ]
  %i.aex = sub nsw i32 %.023.lcssa.i.i294, %4
  %i.aey = sdiv i32 %i.aex, 9                     ; 3 uses
  %i.aez = mul nsw i32 %i.aey, 9
  %i.afa = add nsw i32 %i.aez, %4
  %i.afb = sub nsw i32 %2, %i.aey                 ; 4 uses
  %i.afc = sdiv i32 %i.afa, 8
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds i8, ptr %0, i64 %i.afd ; 2 uses
  %i.aff = sext i32 %i.aey to i64
  %i.afg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aff ; 2 uses
  %i.afh = sdiv i32 %i.afb, 32                    ; 2 uses
  %i.afi = icmp sgt i32 %i.afb, 31
  br i1 %i.afi, label %.lr.ph.i303, label %._crit_edge.i295

._crit_edge.i295:                                 ; preds = %.lr.ph.i303, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i296 = phi ptr [ %i.afg, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ahe, %.lr.ph.i303 ]
  %.025.lcssa.i297 = phi ptr [ %i.afe, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ahd, %.lr.ph.i303 ]
  %i.afj = shl nsw i32 %i.afh, 5                  ; 2 uses
  %i.afk = sub nsw i32 %i.afb, %i.afj             ; 2 uses
  %i.afl = icmp samesign ult i32 %i.afk, 32
  tail call void @llvm.assume(i1 %i.afl)
  %i.afm = mul nuw nsw i32 %i.afk, 9
  %.not.i298 = icmp eq i32 %i.afb, %i.afj
  br i1 %.not.i298, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i299

.lr.ph.i28.i299:                                  ; preds = %._crit_edge.i295, %.lr.ph.i28.i299
  %.024.i.i300 = phi ptr [ %i.agc, %.lr.ph.i28.i299 ], [ %.026.lcssa.i296, %._crit_edge.i295 ] ; 2 uses
  %.02223.i.i301 = phi i32 [ %i.afo, %.lr.ph.i28.i299 ], [ 0, %._crit_edge.i295 ] ; 4 uses
  %i.afn = lshr i32 %.02223.i.i301, 3             ; 2 uses
  %i.afo = add nuw nsw i32 %.02223.i.i301, 9      ; 2 uses
  %i.afp = add nuw nsw i32 %.02223.i.i301, 8
  %i.afq = lshr i32 %i.afp, 3
  %i.afr = sub nsw i32 %i.afq, %i.afn             ; 2 uses
  %i.afs = add nsw i32 %i.afr, 1
  %i.aft = icmp slt i32 %i.afr, 2
  tail call void @llvm.assume(i1 %i.aft)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 8, !tbaa !12
  %i.afu = zext nneg i32 %i.afn to i64
  %i.afv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i297, i64 %i.afu
  %i.afw = sext i32 %i.afs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 1 %i.afv, i64 %i.afw, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i302 = load i64, ptr %i.ar, align 8, !tbaa !12
  %i.afx = and i32 %.02223.i.i301, 7
  %i.afy = zext nneg i32 %i.afx to i64
  %i.afz = lshr i64 %.0..0..0..0..0..0..0..0..i29.i302, %i.afy
  %i.aga = trunc i64 %i.afz to i32
  %i.agb = and i32 %i.aga, 511
  store i32 %i.agb, ptr %.024.i.i300, align 4, !tbaa !6
  %i.agc = getelementptr inbounds nuw i8, ptr %.024.i.i300, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.agd = icmp samesign ult i32 %i.afo, %i.afm
  br i1 %i.agd, label %.lr.ph.i28.i299, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !187

.lr.ph.i303:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i303
  %.032.i304 = phi i32 [ %i.ahf, %.lr.ph.i303 ], [ 0, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i305 = phi ptr [ %i.ahd, %.lr.ph.i303 ], [ %i.afe, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ] ; 7 uses
  %.02630.i306 = phi ptr [ %i.ahe, %.lr.ph.i303 ], [ %i.afg, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 4
  %i.agf = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 12
  %i.agg = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 16
  %i.agh = load <3 x i32>, ptr %.02531.i305, align 1
  %i.agi = shufflevector <3 x i32> %i.agh, <3 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.agj = load <4 x i32>, ptr %.02531.i305, align 1
  %i.agk = load <2 x i32>, ptr %i.agf, align 1
  %i.agl = shufflevector <2 x i32> %i.agk, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.agm = load <4 x i32>, ptr %i.age, align 1
  %i.agn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.agm, <4 x i32> %i.agj, <4 x i32> <i32 5, i32 1, i32 6, i32 2>)
  %i.ago = shufflevector <4 x i32> %i.agl, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agp = shufflevector <8 x i32> %i.agi, <8 x i32> %i.ago, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agq = shufflevector <4 x i32> %i.agn, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agr = shufflevector <16 x i32> %i.agp, <16 x i32> %i.agq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.ags = lshr <16 x i32> %i.agr, <i32 0, i32 9, i32 18, i32 4, i32 13, i32 22, i32 8, i32 17, i32 3, i32 12, i32 21, i32 7, i32 0, i32 0, i32 0, i32 0>
  %i.agt = and <16 x i32> %i.ags, splat (i32 511)
  %.inner1427 = shufflevector <16 x i32> %i.agt, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 12, i32 3, i32 4, i32 5, i32 13, i32 6, i32 7, i32 14, i32 8, i32 9, i32 10, i32 15, i32 11>
  store <16 x i32> %.inner1427, ptr %.02630.i306, align 1, !tbaa !10
  %i.agu = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 20
  %i.agv = load <4 x i32>, ptr %i.agg, align 1    ; 3 uses
  %i.agw = load <4 x i32>, ptr %i.agu, align 1    ; 2 uses
  %i.agx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.agw, <4 x i32> %i.agv, <4 x i32> <i32 7, i32 3, i32 8, i32 4>)
  %i.agy = shufflevector <4 x i32> %i.agv, <4 x i32> %i.agw, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 7, i32 7, i32 7>
  %i.agz = shufflevector <4 x i32> %i.agv, <4 x i32> %i.agx, <16 x i32> <i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.aha = shufflevector <16 x i32> %i.agz, <16 x i32> %i.agy, <16 x i32> <i32 0, i32 12, i32 1, i32 2, i32 3, i32 13, i32 4, i32 5, i32 14, i32 6, i32 7, i32 27, i32 15, i32 29, i32 30, i32 31>
  %i.ahb = lshr <16 x i32> %i.aha, <i32 16, i32 0, i32 2, i32 11, i32 20, i32 0, i32 6, i32 15, i32 0, i32 1, i32 10, i32 19, i32 0, i32 5, i32 14, i32 23>
  %i.ahc = getelementptr inbounds nuw i8, ptr %.02630.i306, i64 64
  %29 = and <16 x i32> %i.ahb, splat (i32 511)
  store <16 x i32> %29, ptr %i.ahc, align 1, !tbaa !10
  %i.ahd = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 36 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.02630.i306, i64 128 ; 2 uses
  %i.ahf = add nuw nsw i32 %.032.i304, 1          ; 2 uses
  %exitcond.not.i307 = icmp eq i32 %i.ahf, %i.afh
  br i1 %exitcond.not.i307, label %._crit_edge.i295, label %.lr.ph.i303, !llvm.loop !188

bb.u:                                             ; preds = %bb.a
  %i.ahg = mul nsw i32 %2, 10
  %i.ahh = add nsw i32 %4, %i.ahg
  %i.ahi = icmp sgt i32 %2, 0
  br i1 %i.ahi, label %.lr.ph.i.i329, label %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i329:                                    ; preds = %bb.u, %bb.v
  %.026.i.i330 = phi ptr [ %i.ahy, %bb.v ], [ %1, %bb.u ] ; 2 uses
  %.02325.i.i331 = phi i32 [ %i.ahl, %bb.v ], [ %4, %bb.u ] ; 5 uses
  %i.ahj = srem i32 %.02325.i.i331, 8             ; 2 uses
  %i.ahk = sdiv i32 %.02325.i.i331, 8             ; 2 uses
  %.not.i.i332 = icmp eq i32 %i.ahj, 0
  br i1 %.not.i.i332, label %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i329
  %i.ahl = add nsw i32 %.02325.i.i331, 10         ; 3 uses
  %i.ahm = add nsw i32 %.02325.i.i331, 9
  %i.ahn = sdiv i32 %i.ahm, 8
  %i.aho = sub nsw i32 %i.ahn, %i.ahk             ; 2 uses
  %i.ahp = add nsw i32 %i.aho, 1
  %i.ahq = icmp slt i32 %i.aho, 3
  tail call void @llvm.assume(i1 %i.ahq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 0, ptr %i.aq, align 8, !tbaa !12
  %i.ahr = sext i32 %i.ahk to i64
  %i.ahs = getelementptr inbounds i8, ptr %0, i64 %i.ahr
  %i.aht = sext i32 %i.ahp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr readonly align 1 %i.ahs, i64 %i.aht, i1 false)
  %.0..0..0..0..0..0..0..0..i.i333 = load i64, ptr %i.aq, align 8, !tbaa !12
  %i.ahu = zext nneg i32 %i.ahj to i64
  %i.ahv = lshr i64 %.0..0..0..0..0..0..0..0..i.i333, %i.ahu
  %i.ahw = trunc i64 %i.ahv to i32
  %i.ahx = and i32 %i.ahw, 1023
  store i32 %i.ahx, ptr %.026.i.i330, align 4, !tbaa !6
  %i.ahy = getelementptr inbounds nuw i8, ptr %.026.i.i330, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.ahz = icmp slt i32 %i.ahl, %i.ahh
  br i1 %i.ahz, label %.lr.ph.i.i329, label %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !189

_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.v, %.lr.ph.i.i329, %bb.u
  %.023.lcssa.i.i313 = phi i32 [ %4, %bb.u ], [ %i.ahl, %bb.v ], [ %.02325.i.i331, %.lr.ph.i.i329 ]
  %i.aia = sub nsw i32 %.023.lcssa.i.i313, %4
  %i.aib = sdiv i32 %i.aia, 10                    ; 3 uses
  %i.aic = mul nsw i32 %i.aib, 10
  %i.aid = add nsw i32 %i.aic, %4
  %i.aie = sub nsw i32 %2, %i.aib                 ; 4 uses
  %i.aif = sdiv i32 %i.aid, 8
  %i.aig = sext i32 %i.aif to i64
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %i.aig ; 2 uses
  %i.aii = sext i32 %i.aib to i64
  %i.aij = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aii ; 2 uses
  %i.aik = sdiv i32 %i.aie, 32                    ; 2 uses
  %i.ail = icmp sgt i32 %i.aie, 31
  br i1 %i.ail, label %.lr.ph.i322, label %._crit_edge.i314

._crit_edge.i314:                                 ; preds = %.lr.ph.i322, %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i315 = phi ptr [ %i.aij, %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aka, %.lr.ph.i322 ]
  %.025.lcssa.i316 = phi ptr [ %i.aih, %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ajz, %.lr.ph.i322 ]
  %i.aim = shl nsw i32 %i.aik, 5                  ; 2 uses
  %i.ain = sub nsw i32 %i.aie, %i.aim             ; 2 uses
  %i.aio = icmp samesign ult i32 %i.ain, 32
  tail call void @llvm.assume(i1 %i.aio)
  %i.aip = mul nuw nsw i32 %i.ain, 10
  %.not.i317 = icmp eq i32 %i.aie, %i.aim
  br i1 %.not.i317, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i318

.lr.ph.i28.i318:                                  ; preds = %._crit_edge.i314, %.lr.ph.i28.i318
  %.024.i.i319 = phi ptr [ %i.ajf, %.lr.ph.i28.i318 ], [ %.026.lcssa.i315, %._crit_edge.i314 ] ; 2 uses
  %.02223.i.i320 = phi i32 [ %i.air, %.lr.ph.i28.i318 ], [ 0, %._crit_edge.i314 ] ; 4 uses
  %i.aiq = lshr i32 %.02223.i.i320, 3             ; 2 uses
  %i.air = add nuw nsw i32 %.02223.i.i320, 10     ; 2 uses
  %i.ais = add nuw nsw i32 %.02223.i.i320, 8
  %i.ait = lshr i32 %i.ais, 3
  %i.aiu = sub nsw i32 %i.ait, %i.aiq             ; 2 uses
  %i.aiv = add nsw i32 %i.aiu, 1
  %i.aiw = icmp slt i32 %i.aiu, 2
  tail call void @llvm.assume(i1 %i.aiw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8, !tbaa !12
  %i.aix = zext nneg i32 %i.aiq to i64
  %i.aiy = getelementptr inbounds nuw i8, ptr %.025.lcssa.i316, i64 %i.aix
  %i.aiz = sext i32 %i.aiv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 1 %i.aiy, i64 %i.aiz, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i321 = load i64, ptr %i.ap, align 8, !tbaa !12
  %i.aja = and i32 %.02223.i.i320, 6
  %i.ajb = zext nneg i32 %i.aja to i64
  %i.ajc = lshr i64 %.0..0..0..0..0..0..0..0..i29.i321, %i.ajb
  %i.ajd = trunc i64 %i.ajc to i32
  %i.aje = and i32 %i.ajd, 1023
  store i32 %i.aje, ptr %.024.i.i319, align 4, !tbaa !6
  %i.ajf = getelementptr inbounds nuw i8, ptr %.024.i.i319, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.ajg = icmp samesign ult i32 %i.air, %i.aip
  br i1 %i.ajg, label %.lr.ph.i28.i318, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !190

.lr.ph.i322:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i322
  %.032.i323 = phi i32 [ %i.akb, %.lr.ph.i322 ], [ 0, %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i324 = phi ptr [ %i.ajz, %.lr.ph.i322 ], [ %i.aih, %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i325 = phi ptr [ %i.aka, %.lr.ph.i322 ], [ %i.aij, %_ZN5arrow8internal12unpack_exactILi10ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.02531.i324, i64 4
  %i.aji = load <4 x i32>, ptr %.02531.i324, align 1 ; 3 uses
  %i.ajj = load <4 x i32>, ptr %i.ajh, align 1    ; 2 uses
  %i.ajk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ajj, <4 x i32> %i.aji, <4 x i32> <i32 2, i32 4, i32 6, i32 8>)
  %i.ajl = shufflevector <4 x i32> %i.aji, <4 x i32> %i.ajj, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 7, i32 7, i32 7>
  %i.ajm = shufflevector <4 x i32> %i.aji, <4 x i32> %i.ajk, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.ajn = shufflevector <16 x i32> %i.ajm, <16 x i32> %i.ajl, <16 x i32> <i32 0, i32 1, i32 2, i32 12, i32 3, i32 4, i32 13, i32 5, i32 6, i32 14, i32 7, i32 27, i32 15, i32 29, i32 30, i32 31>
  %i.ajo = lshr <16 x i32> %i.ajn, <i32 0, i32 10, i32 20, i32 0, i32 8, i32 18, i32 0, i32 6, i32 16, i32 0, i32 4, i32 14, i32 0, i32 2, i32 12, i32 22>
  %30 = and <16 x i32> %i.ajo, splat (i32 1023)
  store <16 x i32> %30, ptr %.02630.i325, align 1, !tbaa !10
  %i.ajp = getelementptr inbounds nuw i8, ptr %.02531.i324, i64 20
  %i.ajq = getelementptr inbounds nuw i8, ptr %.02531.i324, i64 24
  %i.ajr = load <4 x i32>, ptr %i.ajp, align 1    ; 3 uses
  %i.ajs = load <4 x i32>, ptr %i.ajq, align 1    ; 2 uses
  %i.ajt = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ajs, <4 x i32> %i.ajr, <4 x i32> <i32 2, i32 4, i32 6, i32 8>)
  %i.aju = shufflevector <4 x i32> %i.ajr, <4 x i32> %i.ajs, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 7, i32 7, i32 7>
  %i.ajv = shufflevector <4 x i32> %i.ajr, <4 x i32> %i.ajt, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.ajw = shufflevector <16 x i32> %i.ajv, <16 x i32> %i.aju, <16 x i32> <i32 0, i32 1, i32 2, i32 12, i32 3, i32 4, i32 13, i32 5, i32 6, i32 14, i32 7, i32 27, i32 15, i32 29, i32 30, i32 31>
  %i.ajx = lshr <16 x i32> %i.ajw, <i32 0, i32 10, i32 20, i32 0, i32 8, i32 18, i32 0, i32 6, i32 16, i32 0, i32 4, i32 14, i32 0, i32 2, i32 12, i32 22>
  %i.ajy = getelementptr inbounds nuw i8, ptr %.02630.i325, i64 64
  %31 = and <16 x i32> %i.ajx, splat (i32 1023)
  store <16 x i32> %31, ptr %i.ajy, align 1, !tbaa !10
  %i.ajz = getelementptr inbounds nuw i8, ptr %.02531.i324, i64 40 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.02630.i325, i64 128 ; 2 uses
  %i.akb = add nuw nsw i32 %.032.i323, 1          ; 2 uses
  %exitcond.not.i328 = icmp eq i32 %i.akb, %i.aik
  br i1 %exitcond.not.i328, label %._crit_edge.i314, label %.lr.ph.i322, !llvm.loop !191

bb.w:                                             ; preds = %bb.a
  %i.akc = mul nsw i32 %2, 11
  %i.akd = add nsw i32 %4, %i.akc
  %i.ake = icmp sgt i32 %2, 0
  br i1 %i.ake, label %.lr.ph.i.i348, label %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i348:                                    ; preds = %bb.w, %bb.x
  %.026.i.i349 = phi ptr [ %i.aku, %bb.x ], [ %1, %bb.w ] ; 2 uses
  %.02325.i.i350 = phi i32 [ %i.akh, %bb.x ], [ %4, %bb.w ] ; 5 uses
  %i.akf = srem i32 %.02325.i.i350, 8             ; 2 uses
  %i.akg = sdiv i32 %.02325.i.i350, 8             ; 2 uses
  %.not.i.i351 = icmp eq i32 %i.akf, 0
  br i1 %.not.i.i351, label %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i348
  %i.akh = add nsw i32 %.02325.i.i350, 11         ; 3 uses
  %i.aki = add nsw i32 %.02325.i.i350, 10
  %i.akj = sdiv i32 %i.aki, 8
  %i.akk = sub nsw i32 %i.akj, %i.akg             ; 2 uses
  %i.akl = add nsw i32 %i.akk, 1
  %i.akm = icmp slt i32 %i.akk, 3
  tail call void @llvm.assume(i1 %i.akm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 0, ptr %i.ao, align 8, !tbaa !12
  %i.akn = sext i32 %i.akg to i64
  %i.ako = getelementptr inbounds i8, ptr %0, i64 %i.akn
  %i.akp = sext i32 %i.akl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr readonly align 1 %i.ako, i64 %i.akp, i1 false)
  %.0..0..0..0..0..0..0..0..i.i352 = load i64, ptr %i.ao, align 8, !tbaa !12
  %i.akq = zext nneg i32 %i.akf to i64
  %i.akr = lshr i64 %.0..0..0..0..0..0..0..0..i.i352, %i.akq
  %i.aks = trunc i64 %i.akr to i32
  %i.akt = and i32 %i.aks, 2047
  store i32 %i.akt, ptr %.026.i.i349, align 4, !tbaa !6
  %i.aku = getelementptr inbounds nuw i8, ptr %.026.i.i349, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.akv = icmp slt i32 %i.akh, %i.akd
  br i1 %i.akv, label %.lr.ph.i.i348, label %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !192

_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.x, %.lr.ph.i.i348, %bb.w
  %.023.lcssa.i.i334 = phi i32 [ %4, %bb.w ], [ %i.akh, %bb.x ], [ %.02325.i.i350, %.lr.ph.i.i348 ]
  %i.akw = sub nsw i32 %.023.lcssa.i.i334, %4
  %i.akx = sdiv i32 %i.akw, 11                    ; 3 uses
  %i.aky = mul nsw i32 %i.akx, 11
  %i.akz = add nsw i32 %i.aky, %4
  %i.ala = sub nsw i32 %2, %i.akx                 ; 4 uses
  %i.alb = sdiv i32 %i.akz, 8
  %i.alc = sext i32 %i.alb to i64
  %i.ald = getelementptr inbounds i8, ptr %0, i64 %i.alc ; 2 uses
  %i.ale = sext i32 %i.akx to i64
  %i.alf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ale ; 2 uses
  %i.alg = sdiv i32 %i.ala, 32                    ; 2 uses
  %i.alh = icmp sgt i32 %i.ala, 31
  br i1 %i.alh, label %.lr.ph.i343, label %._crit_edge.i335

._crit_edge.i335:                                 ; preds = %.lr.ph.i343, %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i336 = phi ptr [ %i.alf, %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ank, %.lr.ph.i343 ]
  %.025.lcssa.i337 = phi ptr [ %i.ald, %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.anj, %.lr.ph.i343 ]
  %i.ali = shl nsw i32 %i.alg, 5                  ; 2 uses
  %i.alj = sub nsw i32 %i.ala, %i.ali             ; 2 uses
  %i.alk = icmp samesign ult i32 %i.alj, 32
  tail call void @llvm.assume(i1 %i.alk)
  %i.all = mul nuw nsw i32 %i.alj, 11
  %.not.i338 = icmp eq i32 %i.ala, %i.ali
  br i1 %.not.i338, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i339

.lr.ph.i28.i339:                                  ; preds = %._crit_edge.i335, %.lr.ph.i28.i339
  %.024.i.i340 = phi ptr [ %i.amb, %.lr.ph.i28.i339 ], [ %.026.lcssa.i336, %._crit_edge.i335 ] ; 2 uses
  %.02223.i.i341 = phi i32 [ %i.aln, %.lr.ph.i28.i339 ], [ 0, %._crit_edge.i335 ] ; 4 uses
  %i.alm = lshr i32 %.02223.i.i341, 3             ; 2 uses
  %i.aln = add nuw nsw i32 %.02223.i.i341, 11     ; 2 uses
  %i.alo = add nuw nsw i32 %.02223.i.i341, 10
  %i.alp = lshr i32 %i.alo, 3
  %i.alq = sub nsw i32 %i.alp, %i.alm             ; 2 uses
  %i.alr = add nsw i32 %i.alq, 1
  %i.als = icmp slt i32 %i.alq, 3
  tail call void @llvm.assume(i1 %i.als)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 0, ptr %i.an, align 8, !tbaa !12
  %i.alt = zext nneg i32 %i.alm to i64
  %i.alu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i337, i64 %i.alt
  %i.alv = sext i32 %i.alr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 1 %i.alu, i64 %i.alv, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i342 = load i64, ptr %i.an, align 8, !tbaa !12
  %i.alw = and i32 %.02223.i.i341, 7
  %i.alx = zext nneg i32 %i.alw to i64
  %i.aly = lshr i64 %.0..0..0..0..0..0..0..0..i29.i342, %i.alx
  %i.alz = trunc i64 %i.aly to i32
  %i.ama = and i32 %i.alz, 2047
  store i32 %i.ama, ptr %.024.i.i340, align 4, !tbaa !6
  %i.amb = getelementptr inbounds nuw i8, ptr %.024.i.i340, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.amc = icmp samesign ult i32 %i.aln, %i.all
  br i1 %i.amc, label %.lr.ph.i28.i339, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !193

.lr.ph.i343:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i343
  %.032.i344 = phi i32 [ %i.anl, %.lr.ph.i343 ], [ 0, %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i345 = phi ptr [ %i.anj, %.lr.ph.i343 ], [ %i.ald, %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i ] ; 6 uses
  %.02630.i346 = phi ptr [ %i.ank, %.lr.ph.i343 ], [ %i.alf, %_ZN5arrow8internal12unpack_exactILi11ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.02531.i345, i64 4
  %i.ame = getelementptr inbounds nuw i8, ptr %.02531.i345, i64 8
  %i.amf = getelementptr inbounds nuw i8, ptr %.02531.i345, i64 20
  %i.amg = load <4 x i32>, ptr %.02531.i345, align 1 ; 3 uses
  %i.amh = load <4 x i32>, ptr %i.amd, align 1
  %i.ami = extractelement <4 x i32> %i.amg, i64 0
  %i.amj = extractelement <4 x i32> %i.amg, i64 1
  %i.amk = tail call i32 @llvm.fshl.i32(i32 %i.amj, i32 %i.ami, i32 10)
  %i.aml = load <4 x i32>, ptr %i.ame, align 1    ; 2 uses
  %i.amm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aml, <4 x i32> %i.amh, <4 x i32> <i32 9, i32 8, i32 7, i32 6>)
  %i.amn = shufflevector <4 x i32> %i.aml, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 2, i32 poison, i32 3>
  %i.amo = insertelement <16 x i32> %i.amn, i32 %i.amk, i64 2
  %i.amp = shufflevector <4 x i32> %i.amg, <4 x i32> %i.amm, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.amq = shufflevector <16 x i32> %i.amp, <16 x i32> %i.amo, <16 x i32> <i32 0, i32 1, i32 18, i32 2, i32 3, i32 12, i32 4, i32 5, i32 13, i32 6, i32 7, i32 14, i32 28, i32 29, i32 15, i32 31>
  %i.amr = lshr <16 x i32> %i.amq, <i32 0, i32 11, i32 0, i32 1, i32 12, i32 0, i32 2, i32 13, i32 0, i32 3, i32 14, i32 0, i32 4, i32 15, i32 0, i32 5>
  %32 = and <16 x i32> %i.amr, splat (i32 2047)
  store <16 x i32> %32, ptr %.02630.i346, align 1, !tbaa !10
  %i.ams = getelementptr inbounds nuw i8, ptr %.02531.i345, i64 28
  %i.amt = load <5 x i32>, ptr %i.amf, align 1    ; 5 uses
  %i.amu = shufflevector <5 x i32> %i.amt, <5 x i32> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4>
  %i.amv = extractelement <5 x i32> %i.amt, i64 0
  %i.amw = extractelement <5 x i32> %i.amt, i64 1
  %i.amx = tail call i32 @llvm.fshl.i32(i32 %i.amw, i32 %i.amv, i32 5)
  %i.amy = load <4 x i32>, ptr %i.ams, align 1    ; 2 uses
  %i.amz = shufflevector <5 x i32> %i.amt, <5 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ana = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.amy, <4 x i32> %i.amz, <4 x i32> <i32 4, i32 3, i32 2, i32 1>)
  %i.anb = shufflevector <4 x i32> %i.amy, <4 x i32> poison, <5 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison>
  %i.anc = shufflevector <5 x i32> %i.amt, <5 x i32> %i.anb, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 8, i32 8>
  %i.and = insertelement <16 x i32> %i.anc, i32 %i.amx, i64 1
  %i.ane = shufflevector <4 x i32> %i.ana, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anf = shufflevector <8 x i32> %i.amu, <8 x i32> %i.ane, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.ang = shufflevector <16 x i32> %i.anf, <16 x i32> %i.and, <16 x i32> <i32 0, i32 17, i32 1, i32 2, i32 12, i32 3, i32 4, i32 13, i32 5, i32 6, i32 14, i32 7, i32 28, i32 15, i32 30, i32 31>
  %i.anh = lshr <16 x i32> %i.ang, <i32 16, i32 0, i32 6, i32 17, i32 0, i32 7, i32 18, i32 0, i32 8, i32 19, i32 0, i32 9, i32 20, i32 0, i32 10, i32 21>
  %i.ani = getelementptr inbounds nuw i8, ptr %.02630.i346, i64 64
  %33 = and <16 x i32> %i.anh, splat (i32 2047)
  store <16 x i32> %33, ptr %i.ani, align 1, !tbaa !10
  %i.anj = getelementptr inbounds nuw i8, ptr %.02531.i345, i64 44 ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.02630.i346, i64 128 ; 2 uses
  %i.anl = add nuw nsw i32 %.032.i344, 1          ; 2 uses
  %exitcond.not.i347 = icmp eq i32 %i.anl, %i.alg
  br i1 %exitcond.not.i347, label %._crit_edge.i335, label %.lr.ph.i343, !llvm.loop !194

bb.y:                                             ; preds = %bb.a
  %i.anm = mul nsw i32 %2, 12
  %i.ann = add nsw i32 %4, %i.anm
  %i.ano = icmp sgt i32 %2, 0
  br i1 %i.ano, label %.lr.ph.i.i369, label %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i369:                                    ; preds = %bb.y, %bb.z
  %.026.i.i370 = phi ptr [ %i.aoe, %bb.z ], [ %1, %bb.y ] ; 2 uses
  %.02325.i.i371 = phi i32 [ %i.anr, %bb.z ], [ %4, %bb.y ] ; 5 uses
  %i.anp = srem i32 %.02325.i.i371, 8             ; 2 uses
  %i.anq = sdiv i32 %.02325.i.i371, 8             ; 2 uses
  %.not.i.i372 = icmp eq i32 %i.anp, 0
  br i1 %.not.i.i372, label %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i369
  %i.anr = add nsw i32 %.02325.i.i371, 12         ; 3 uses
  %i.ans = add nsw i32 %.02325.i.i371, 11
  %i.ant = sdiv i32 %i.ans, 8
  %i.anu = sub nsw i32 %i.ant, %i.anq             ; 2 uses
  %i.anv = add nsw i32 %i.anu, 1
  %i.anw = icmp slt i32 %i.anu, 3
  tail call void @llvm.assume(i1 %i.anw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 0, ptr %i.am, align 8, !tbaa !12
  %i.anx = sext i32 %i.anq to i64
  %i.any = getelementptr inbounds i8, ptr %0, i64 %i.anx
  %i.anz = sext i32 %i.anv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr readonly align 1 %i.any, i64 %i.anz, i1 false)
  %.0..0..0..0..0..0..0..0..i.i373 = load i64, ptr %i.am, align 8, !tbaa !12
  %i.aoa = zext nneg i32 %i.anp to i64
  %i.aob = lshr i64 %.0..0..0..0..0..0..0..0..i.i373, %i.aoa
  %i.aoc = trunc i64 %i.aob to i32
  %i.aod = and i32 %i.aoc, 4095
  store i32 %i.aod, ptr %.026.i.i370, align 4, !tbaa !6
  %i.aoe = getelementptr inbounds nuw i8, ptr %.026.i.i370, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.aof = icmp slt i32 %i.anr, %i.ann
  br i1 %i.aof, label %.lr.ph.i.i369, label %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !195

_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.z, %.lr.ph.i.i369, %bb.y
  %.023.lcssa.i.i353 = phi i32 [ %4, %bb.y ], [ %i.anr, %bb.z ], [ %.02325.i.i371, %.lr.ph.i.i369 ]
  %i.aog = sub nsw i32 %.023.lcssa.i.i353, %4
  %i.aoh = sdiv i32 %i.aog, 12                    ; 3 uses
  %i.aoi = mul nsw i32 %i.aoh, 12
  %i.aoj = add nsw i32 %i.aoi, %4
  %i.aok = sub nsw i32 %2, %i.aoh                 ; 4 uses
  %i.aol = sdiv i32 %i.aoj, 8
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds i8, ptr %0, i64 %i.aom ; 2 uses
  %i.aoo = sext i32 %i.aoh to i64
  %i.aop = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aoo ; 2 uses
  %i.aoq = sdiv i32 %i.aok, 32                    ; 2 uses
  %i.aor = icmp sgt i32 %i.aok, 31
  br i1 %i.aor, label %.lr.ph.i362, label %._crit_edge.i354

._crit_edge.i354:                                 ; preds = %.lr.ph.i362, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i355 = phi ptr [ %i.aop, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aqu, %.lr.ph.i362 ]
  %.025.lcssa.i356 = phi ptr [ %i.aon, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aqt, %.lr.ph.i362 ]
  %i.aos = shl nsw i32 %i.aoq, 5                  ; 2 uses
  %i.aot = sub nsw i32 %i.aok, %i.aos             ; 2 uses
  %i.aou = icmp samesign ult i32 %i.aot, 32
  tail call void @llvm.assume(i1 %i.aou)
  %i.aov = mul nuw nsw i32 %i.aot, 12
  %.not.i357 = icmp eq i32 %i.aok, %i.aos
  br i1 %.not.i357, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i358

.lr.ph.i28.i358:                                  ; preds = %._crit_edge.i354, %.lr.ph.i28.i358
  %.024.i.i359 = phi ptr [ %i.apl, %.lr.ph.i28.i358 ], [ %.026.lcssa.i355, %._crit_edge.i354 ] ; 2 uses
  %.02223.i.i360 = phi i32 [ %i.aox, %.lr.ph.i28.i358 ], [ 0, %._crit_edge.i354 ] ; 4 uses
  %i.aow = lshr i32 %.02223.i.i360, 3             ; 2 uses
  %i.aox = add nuw nsw i32 %.02223.i.i360, 12     ; 2 uses
  %i.aoy = add nuw nsw i32 %.02223.i.i360, 8
  %i.aoz = lshr i32 %i.aoy, 3
  %i.apa = sub nsw i32 %i.aoz, %i.aow             ; 2 uses
  %i.apb = add nsw i32 %i.apa, 1
  %i.apc = icmp slt i32 %i.apa, 2
  tail call void @llvm.assume(i1 %i.apc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.al, align 8, !tbaa !12
  %i.apd = zext nneg i32 %i.aow to i64
  %i.ape = getelementptr inbounds nuw i8, ptr %.025.lcssa.i356, i64 %i.apd
  %i.apf = sext i32 %i.apb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 1 %i.ape, i64 %i.apf, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i361 = load i64, ptr %i.al, align 8, !tbaa !12
  %i.apg = and i32 %.02223.i.i360, 4
  %i.aph = zext nneg i32 %i.apg to i64
  %i.api = lshr i64 %.0..0..0..0..0..0..0..0..i29.i361, %i.aph
  %i.apj = trunc i64 %i.api to i32
  %i.apk = and i32 %i.apj, 4095
  store i32 %i.apk, ptr %.024.i.i359, align 4, !tbaa !6
  %i.apl = getelementptr inbounds nuw i8, ptr %.024.i.i359, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.apm = icmp samesign ult i32 %i.aox, %i.aov
  br i1 %i.apm, label %.lr.ph.i28.i358, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !196

.lr.ph.i362:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i362
  %.032.i363 = phi i32 [ %i.aqv, %.lr.ph.i362 ], [ 0, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i364 = phi ptr [ %i.aqt, %.lr.ph.i362 ], [ %i.aon, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ] ; 8 uses
  %.02630.i365 = phi ptr [ %i.aqu, %.lr.ph.i362 ], [ %i.aop, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.02531.i364, i64 4
  %i.apo = getelementptr inbounds nuw i8, ptr %.02531.i364, i64 16
  %i.app = load <4 x i32>, ptr %.02531.i364, align 1
  %i.apq = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %.02531.i364, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison)
  %i.apr = shufflevector <5 x i32> %i.apq, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.aps = load <2 x i32>, ptr %i.apo, align 1
  %i.apt = shufflevector <2 x i32> %i.aps, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.apu = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.apn, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison)
  %i.apv = shufflevector <5 x i32> %i.apu, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.apw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.apv, <4 x i32> %i.apr, <4 x i32> <i32 8, i32 4, i32 8, i32 4>)
  %i.apx = shufflevector <4 x i32> %i.app, <4 x i32> %i.apt, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apy = shufflevector <4 x i32> %i.apw, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apz = shufflevector <16 x i32> %i.apx, <16 x i32> %i.apy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.aqa = lshr <16 x i32> %i.apz, <i32 0, i32 12, i32 4, i32 16, i32 8, i32 20, i32 0, i32 12, i32 4, i32 16, i32 8, i32 20, i32 0, i32 0, i32 0, i32 0>
  %i.aqb = and <16 x i32> %i.aqa, splat (i32 4095)
  %.inner1433 = shufflevector <16 x i32> %i.aqb, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 12, i32 2, i32 3, i32 13, i32 4, i32 5, i32 6, i32 7, i32 14, i32 8, i32 9, i32 15, i32 10, i32 11>
  store <16 x i32> %.inner1433, ptr %.02630.i365, align 1, !tbaa !10
  %i.aqc = getelementptr inbounds nuw i8, ptr %.02531.i364, i64 24 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.02531.i364, i64 28
  %i.aqe = getelementptr inbounds nuw i8, ptr %.02531.i364, i64 40
  %i.aqf = load <4 x i32>, ptr %i.aqc, align 1
  %i.aqg = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.aqc, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison)
  %i.aqh = shufflevector <5 x i32> %i.aqg, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.aqi = load <2 x i32>, ptr %i.aqe, align 1
  %i.aqj = shufflevector <2 x i32> %i.aqi, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aqk = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.aqd, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison)
  %i.aql = shufflevector <5 x i32> %i.aqk, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.aqm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aql, <4 x i32> %i.aqh, <4 x i32> <i32 8, i32 4, i32 8, i32 4>)
  %i.aqn = shufflevector <4 x i32> %i.aqf, <4 x i32> %i.aqj, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqo = shufflevector <4 x i32> %i.aqm, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqp = shufflevector <16 x i32> %i.aqn, <16 x i32> %i.aqo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.aqq = lshr <16 x i32> %i.aqp, <i32 0, i32 12, i32 4, i32 16, i32 8, i32 20, i32 0, i32 12, i32 4, i32 16, i32 8, i32 20, i32 0, i32 0, i32 0, i32 0>
  %i.aqr = getelementptr inbounds nuw i8, ptr %.02630.i365, i64 64
  %i.aqs = and <16 x i32> %i.aqq, splat (i32 4095)
  %.inner1434 = shufflevector <16 x i32> %i.aqs, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 12, i32 2, i32 3, i32 13, i32 4, i32 5, i32 6, i32 7, i32 14, i32 8, i32 9, i32 15, i32 10, i32 11>
  store <16 x i32> %.inner1434, ptr %i.aqr, align 1, !tbaa !10
  %i.aqt = getelementptr inbounds nuw i8, ptr %.02531.i364, i64 48 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %.02630.i365, i64 128 ; 2 uses
  %i.aqv = add nuw nsw i32 %.032.i363, 1          ; 2 uses
  %exitcond.not.i368 = icmp eq i32 %i.aqv, %i.aoq
  br i1 %exitcond.not.i368, label %._crit_edge.i354, label %.lr.ph.i362, !llvm.loop !197

bb.aa:                                            ; preds = %bb.a
  %i.aqw = mul nsw i32 %2, 13
  %i.aqx = add nsw i32 %4, %i.aqw
  %i.aqy = icmp sgt i32 %2, 0
  br i1 %i.aqy, label %.lr.ph.i.i388, label %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i388:                                    ; preds = %bb.aa, %bb.ab
  %.026.i.i389 = phi ptr [ %i.aro, %bb.ab ], [ %1, %bb.aa ] ; 2 uses
  %.02325.i.i390 = phi i32 [ %i.arb, %bb.ab ], [ %4, %bb.aa ] ; 5 uses
  %i.aqz = srem i32 %.02325.i.i390, 8             ; 2 uses
  %i.ara = sdiv i32 %.02325.i.i390, 8             ; 2 uses
  %.not.i.i391 = icmp eq i32 %i.aqz, 0
  br i1 %.not.i.i391, label %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i388
  %i.arb = add nsw i32 %.02325.i.i390, 13         ; 3 uses
  %i.arc = add nsw i32 %.02325.i.i390, 12
  %i.ard = sdiv i32 %i.arc, 8
  %i.are = sub nsw i32 %i.ard, %i.ara             ; 2 uses
  %i.arf = add nsw i32 %i.are, 1
  %i.arg = icmp slt i32 %i.are, 3
  tail call void @llvm.assume(i1 %i.arg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8, !tbaa !12
  %i.arh = sext i32 %i.ara to i64
  %i.ari = getelementptr inbounds i8, ptr %0, i64 %i.arh
  %i.arj = sext i32 %i.arf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr readonly align 1 %i.ari, i64 %i.arj, i1 false)
  %.0..0..0..0..0..0..0..0..i.i392 = load i64, ptr %i.ak, align 8, !tbaa !12
  %i.ark = zext nneg i32 %i.aqz to i64
  %i.arl = lshr i64 %.0..0..0..0..0..0..0..0..i.i392, %i.ark
  %i.arm = trunc i64 %i.arl to i32
  %i.arn = and i32 %i.arm, 8191
  store i32 %i.arn, ptr %.026.i.i389, align 4, !tbaa !6
  %i.aro = getelementptr inbounds nuw i8, ptr %.026.i.i389, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.arp = icmp slt i32 %i.arb, %i.aqx
  br i1 %i.arp, label %.lr.ph.i.i388, label %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !198

_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ab, %.lr.ph.i.i388, %bb.aa
  %.023.lcssa.i.i374 = phi i32 [ %4, %bb.aa ], [ %i.arb, %bb.ab ], [ %.02325.i.i390, %.lr.ph.i.i388 ]
  %i.arq = sub nsw i32 %.023.lcssa.i.i374, %4
  %i.arr = sdiv i32 %i.arq, 13                    ; 3 uses
  %i.ars = mul nsw i32 %i.arr, 13
  %i.art = add nsw i32 %i.ars, %4
  %i.aru = sub nsw i32 %2, %i.arr                 ; 4 uses
  %i.arv = sdiv i32 %i.art, 8
  %i.arw = sext i32 %i.arv to i64
  %i.arx = getelementptr inbounds i8, ptr %0, i64 %i.arw ; 2 uses
  %i.ary = sext i32 %i.arr to i64
  %i.arz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ary ; 2 uses
  %i.asa = sdiv i32 %i.aru, 32                    ; 2 uses
  %i.asb = icmp sgt i32 %i.aru, 31
  br i1 %i.asb, label %.lr.ph.i383, label %._crit_edge.i375

._crit_edge.i375:                                 ; preds = %.lr.ph.i383, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i376 = phi ptr [ %i.arz, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aul, %.lr.ph.i383 ]
  %.025.lcssa.i377 = phi ptr [ %i.arx, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.auk, %.lr.ph.i383 ]
  %i.asc = shl nsw i32 %i.asa, 5                  ; 2 uses
  %i.asd = sub nsw i32 %i.aru, %i.asc             ; 2 uses
  %i.ase = icmp samesign ult i32 %i.asd, 32
  tail call void @llvm.assume(i1 %i.ase)
  %i.asf = mul nuw nsw i32 %i.asd, 13
  %.not.i378 = icmp eq i32 %i.aru, %i.asc
  br i1 %.not.i378, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i379

.lr.ph.i28.i379:                                  ; preds = %._crit_edge.i375, %.lr.ph.i28.i379
  %.024.i.i380 = phi ptr [ %i.asv, %.lr.ph.i28.i379 ], [ %.026.lcssa.i376, %._crit_edge.i375 ] ; 2 uses
  %.02223.i.i381 = phi i32 [ %i.ash, %.lr.ph.i28.i379 ], [ 0, %._crit_edge.i375 ] ; 4 uses
  %i.asg = lshr i32 %.02223.i.i381, 3             ; 2 uses
  %i.ash = add nuw nsw i32 %.02223.i.i381, 13     ; 2 uses
  %i.asi = add nuw nsw i32 %.02223.i.i381, 12
  %i.asj = lshr i32 %i.asi, 3
  %i.ask = sub nsw i32 %i.asj, %i.asg             ; 2 uses
  %i.asl = add nsw i32 %i.ask, 1
  %i.asm = icmp slt i32 %i.ask, 3
  tail call void @llvm.assume(i1 %i.asm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8, !tbaa !12
  %i.asn = zext nneg i32 %i.asg to i64
  %i.aso = getelementptr inbounds nuw i8, ptr %.025.lcssa.i377, i64 %i.asn
  %i.asp = sext i32 %i.asl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 1 %i.aso, i64 %i.asp, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i382 = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.asq = and i32 %.02223.i.i381, 7
  %i.asr = zext nneg i32 %i.asq to i64
  %i.ass = lshr i64 %.0..0..0..0..0..0..0..0..i29.i382, %i.asr
  %i.ast = trunc i64 %i.ass to i32
  %i.asu = and i32 %i.ast, 8191
  store i32 %i.asu, ptr %.024.i.i380, align 4, !tbaa !6
  %i.asv = getelementptr inbounds nuw i8, ptr %.024.i.i380, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.asw = icmp samesign ult i32 %i.ash, %i.asf
  br i1 %i.asw, label %.lr.ph.i28.i379, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !199

.lr.ph.i383:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i383
  %.032.i384 = phi i32 [ %i.aum, %.lr.ph.i383 ], [ 0, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i385 = phi ptr [ %i.auk, %.lr.ph.i383 ], [ %i.arx, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ] ; 7 uses
  %.02630.i386 = phi ptr [ %i.aul, %.lr.ph.i383 ], [ %i.arz, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 8
  %i.asy = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 12
  %i.asz = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 24 ; 2 uses
  %i.ata = load <5 x i32>, ptr %.02531.i385, align 1 ; 3 uses
  %i.atb = shufflevector <5 x i32> %i.ata, <5 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4>
  %i.atc = load i32, ptr %.02531.i385, align 1
  %i.atd = load <4 x i32>, ptr %i.asx, align 1
  %i.ate = shufflevector <5 x i32> %i.ata, <5 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.atf = shufflevector <5 x i32> %i.ata, <5 x i32> poison, <2 x i32> <i32 poison, i32 1>
  %i.atg = insertelement <2 x i32> %i.atf, i32 %i.atc, i64 0
  %i.ath = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ate, <2 x i32> %i.atg, <2 x i32> <i32 6, i32 12>)
  %i.ati = load <4 x i32>, ptr %i.asy, align 1    ; 2 uses
  %i.atj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ati, <4 x i32> %i.atd, <4 x i32> <i32 5, i32 11, i32 4, i32 10>)
  %i.atk = shufflevector <4 x i32> %i.ati, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 3>
  %i.atl = shufflevector <4 x i32> %i.atj, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atm = shufflevector <8 x i32> %i.atb, <8 x i32> %i.atl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.atn = shufflevector <2 x i32> %i.ath, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ato = shufflevector <16 x i32> %i.atm, <16 x i32> %i.atn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.atp = shufflevector <16 x i32> %i.ato, <16 x i32> %i.atk, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 4, i32 12, i32 5, i32 13, i32 6, i32 7, i32 14, i32 29, i32 15, i32 31>
  %i.atq = lshr <16 x i32> %i.atp, <i32 0, i32 13, i32 0, i32 7, i32 0, i32 1, i32 14, i32 0, i32 8, i32 0, i32 2, i32 15, i32 0, i32 9, i32 0, i32 3>
  %34 = and <16 x i32> %i.atq, splat (i32 8191)
  store <16 x i32> %34, ptr %.02630.i386, align 1, !tbaa !10
  %i.atr = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 36
  %i.ats = load <6 x i32>, ptr %i.asz, align 1    ; 4 uses
  %i.att = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4, i32 5>
  %i.atu = load i32, ptr %i.asz, align 1
  %i.atv = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.atw = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <2 x i32> <i32 poison, i32 1>
  %i.atx = insertelement <2 x i32> %i.atw, i32 %i.atu, i64 0
  %i.aty = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.atv, <2 x i32> %i.atx, <2 x i32> <i32 3, i32 9>)
  %i.atz = load <4 x i32>, ptr %i.atr, align 1    ; 2 uses
  %i.aua = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.aub = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.atz, <4 x i32> %i.aua, <4 x i32> <i32 2, i32 8, i32 1, i32 7>)
  %i.auc = shufflevector <4 x i32> %i.atz, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.aud = shufflevector <4 x i32> %i.aub, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aue = shufflevector <8 x i32> %i.att, <8 x i32> %i.aud, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.auf = shufflevector <2 x i32> %i.aty, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aug = shufflevector <16 x i32> %i.aue, <16 x i32> %i.auf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.auh = shufflevector <16 x i32> %i.aug, <16 x i32> %i.auc, <16 x i32> <i32 0, i32 10, i32 1, i32 11, i32 2, i32 3, i32 12, i32 4, i32 13, i32 5, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.aui = lshr <16 x i32> %i.auh, <i32 16, i32 0, i32 10, i32 0, i32 4, i32 17, i32 0, i32 11, i32 0, i32 5, i32 18, i32 0, i32 12, i32 0, i32 6, i32 19>
  %i.auj = getelementptr inbounds nuw i8, ptr %.02630.i386, i64 64
  %35 = and <16 x i32> %i.aui, splat (i32 8191)
  store <16 x i32> %35, ptr %i.auj, align 1, !tbaa !10
  %i.auk = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 52 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.02630.i386, i64 128 ; 2 uses
  %i.aum = add nuw nsw i32 %.032.i384, 1          ; 2 uses
  %exitcond.not.i387 = icmp eq i32 %i.aum, %i.asa
  br i1 %exitcond.not.i387, label %._crit_edge.i375, label %.lr.ph.i383, !llvm.loop !200

bb.ac:                                            ; preds = %bb.a
  %i.aun = mul nsw i32 %2, 14
  %i.auo = add nsw i32 %4, %i.aun
  %i.aup = icmp sgt i32 %2, 0
  br i1 %i.aup, label %.lr.ph.i.i409, label %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i409:                                    ; preds = %bb.ac, %bb.ad
  %.026.i.i410 = phi ptr [ %i.avf, %bb.ad ], [ %1, %bb.ac ] ; 2 uses
  %.02325.i.i411 = phi i32 [ %i.aus, %bb.ad ], [ %4, %bb.ac ] ; 5 uses
  %i.auq = srem i32 %.02325.i.i411, 8             ; 2 uses
  %i.aur = sdiv i32 %.02325.i.i411, 8             ; 2 uses
  %.not.i.i412 = icmp eq i32 %i.auq, 0
  br i1 %.not.i.i412, label %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i409
  %i.aus = add nsw i32 %.02325.i.i411, 14         ; 3 uses
  %i.aut = add nsw i32 %.02325.i.i411, 13
  %i.auu = sdiv i32 %i.aut, 8
  %i.auv = sub nsw i32 %i.auu, %i.aur             ; 2 uses
  %i.auw = add nsw i32 %i.auv, 1
  %i.aux = icmp slt i32 %i.auv, 3
  tail call void @llvm.assume(i1 %i.aux)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8, !tbaa !12
  %i.auy = sext i32 %i.aur to i64
  %i.auz = getelementptr inbounds i8, ptr %0, i64 %i.auy
  %i.ava = sext i32 %i.auw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr readonly align 1 %i.auz, i64 %i.ava, i1 false)
  %.0..0..0..0..0..0..0..0..i.i413 = load i64, ptr %i.ai, align 8, !tbaa !12
  %i.avb = zext nneg i32 %i.auq to i64
  %i.avc = lshr i64 %.0..0..0..0..0..0..0..0..i.i413, %i.avb
  %i.avd = trunc i64 %i.avc to i32
  %i.ave = and i32 %i.avd, 16383
  store i32 %i.ave, ptr %.026.i.i410, align 4, !tbaa !6
  %i.avf = getelementptr inbounds nuw i8, ptr %.026.i.i410, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.avg = icmp slt i32 %i.aus, %i.auo
  br i1 %i.avg, label %.lr.ph.i.i409, label %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !201

_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ad, %.lr.ph.i.i409, %bb.ac
  %.023.lcssa.i.i393 = phi i32 [ %4, %bb.ac ], [ %i.aus, %bb.ad ], [ %.02325.i.i411, %.lr.ph.i.i409 ]
  %i.avh = sub nsw i32 %.023.lcssa.i.i393, %4
  %i.avi = sdiv i32 %i.avh, 14                    ; 3 uses
  %i.avj = mul nsw i32 %i.avi, 14
  %i.avk = add nsw i32 %i.avj, %4
  %i.avl = sub nsw i32 %2, %i.avi                 ; 4 uses
  %i.avm = sdiv i32 %i.avk, 8
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds i8, ptr %0, i64 %i.avn ; 2 uses
  %i.avp = sext i32 %i.avi to i64
  %i.avq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.avp ; 2 uses
  %i.avr = sdiv i32 %i.avl, 32                    ; 2 uses
  %i.avs = icmp sgt i32 %i.avl, 31
  br i1 %i.avs, label %.lr.ph.i402, label %._crit_edge.i394

._crit_edge.i394:                                 ; preds = %.lr.ph.i402, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i395 = phi ptr [ %i.avq, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ayb, %.lr.ph.i402 ]
  %.025.lcssa.i396 = phi ptr [ %i.avo, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aya, %.lr.ph.i402 ]
  %i.avt = shl nsw i32 %i.avr, 5                  ; 2 uses
  %i.avu = sub nsw i32 %i.avl, %i.avt             ; 2 uses
  %i.avv = icmp samesign ult i32 %i.avu, 32
  tail call void @llvm.assume(i1 %i.avv)
  %i.avw = mul nuw nsw i32 %i.avu, 14
  %.not.i397 = icmp eq i32 %i.avl, %i.avt
  br i1 %.not.i397, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i398

.lr.ph.i28.i398:                                  ; preds = %._crit_edge.i394, %.lr.ph.i28.i398
  %.024.i.i399 = phi ptr [ %i.awm, %.lr.ph.i28.i398 ], [ %.026.lcssa.i395, %._crit_edge.i394 ] ; 2 uses
  %.02223.i.i400 = phi i32 [ %i.avy, %.lr.ph.i28.i398 ], [ 0, %._crit_edge.i394 ] ; 4 uses
  %i.avx = lshr i32 %.02223.i.i400, 3             ; 2 uses
  %i.avy = add nuw nsw i32 %.02223.i.i400, 14     ; 2 uses
  %i.avz = add nuw nsw i32 %.02223.i.i400, 12
  %i.awa = lshr i32 %i.avz, 3
  %i.awb = sub nsw i32 %i.awa, %i.avx             ; 2 uses
  %i.awc = add nsw i32 %i.awb, 1
  %i.awd = icmp slt i32 %i.awb, 3
  tail call void @llvm.assume(i1 %i.awd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8, !tbaa !12
  %i.awe = zext nneg i32 %i.avx to i64
  %i.awf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i396, i64 %i.awe
  %i.awg = sext i32 %i.awc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 1 %i.awf, i64 %i.awg, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i401 = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.awh = and i32 %.02223.i.i400, 6
  %i.awi = zext nneg i32 %i.awh to i64
  %i.awj = lshr i64 %.0..0..0..0..0..0..0..0..i29.i401, %i.awi
  %i.awk = trunc i64 %i.awj to i32
  %i.awl = and i32 %i.awk, 16383
  store i32 %i.awl, ptr %.024.i.i399, align 4, !tbaa !6
  %i.awm = getelementptr inbounds nuw i8, ptr %.024.i.i399, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.awn = icmp samesign ult i32 %i.avy, %i.avw
  br i1 %i.awn, label %.lr.ph.i28.i398, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !202

.lr.ph.i402:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i402
  %.032.i403 = phi i32 [ %i.ayc, %.lr.ph.i402 ], [ 0, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i404 = phi ptr [ %i.aya, %.lr.ph.i402 ], [ %i.avo, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ] ; 6 uses
  %.02630.i405 = phi ptr [ %i.ayb, %.lr.ph.i402 ], [ %i.avq, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 12
  %i.awp = load <6 x i32>, ptr %.02531.i404, align 1 ; 4 uses
  %i.awq = shufflevector <6 x i32> %i.awp, <6 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5>
  %i.awr = load i32, ptr %.02531.i404, align 1
  %i.aws = shufflevector <6 x i32> %i.awp, <6 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.awt = shufflevector <6 x i32> %i.awp, <6 x i32> poison, <2 x i32> <i32 poison, i32 1>
  %i.awu = insertelement <2 x i32> %i.awt, i32 %i.awr, i64 0
  %i.awv = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.aws, <2 x i32> %i.awu, <2 x i32> <i32 4, i32 8>)
  %i.aww = load <4 x i32>, ptr %i.awo, align 1    ; 2 uses
  %i.awx = shufflevector <6 x i32> %i.awp, <6 x i32> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.awy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aww, <4 x i32> %i.awx, <4 x i32> <i32 12, i32 2, i32 6, i32 10>)
  %i.awz = shufflevector <4 x i32> %i.aww, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.axa = shufflevector <4 x i32> %i.awy, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axb = shufflevector <8 x i32> %i.awq, <8 x i32> %i.axa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.axc = shufflevector <2 x i32> %i.awv, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axd = shufflevector <16 x i32> %i.axb, <16 x i32> %i.axc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.axe = shufflevector <16 x i32> %i.axd, <16 x i32> %i.awz, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.axf = lshr <16 x i32> %i.axe, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2, i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %36 = and <16 x i32> %i.axf, splat (i32 16383)
  store <16 x i32> %36, ptr %.02630.i405, align 1, !tbaa !10
  %i.axg = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 28 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 40
  %i.axi = load <6 x i32>, ptr %i.axg, align 1    ; 4 uses
  %i.axj = shufflevector <6 x i32> %i.axi, <6 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5>
  %i.axk = load i32, ptr %i.axg, align 1
  %i.axl = shufflevector <6 x i32> %i.axi, <6 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.axm = shufflevector <6 x i32> %i.axi, <6 x i32> poison, <2 x i32> <i32 poison, i32 1>
  %i.axn = insertelement <2 x i32> %i.axm, i32 %i.axk, i64 0
  %i.axo = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.axl, <2 x i32> %i.axn, <2 x i32> <i32 4, i32 8>)
  %i.axp = load <4 x i32>, ptr %i.axh, align 1    ; 2 uses
  %i.axq = shufflevector <6 x i32> %i.axi, <6 x i32> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.axr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.axp, <4 x i32> %i.axq, <4 x i32> <i32 12, i32 2, i32 6, i32 10>)
  %i.axs = shufflevector <4 x i32> %i.axp, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.axt = shufflevector <4 x i32> %i.axr, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axu = shufflevector <8 x i32> %i.axj, <8 x i32> %i.axt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.axv = shufflevector <2 x i32> %i.axo, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axw = shufflevector <16 x i32> %i.axu, <16 x i32> %i.axv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.axx = shufflevector <16 x i32> %i.axw, <16 x i32> %i.axs, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.axy = lshr <16 x i32> %i.axx, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2, i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %i.axz = getelementptr inbounds nuw i8, ptr %.02630.i405, i64 64
  %37 = and <16 x i32> %i.axy, splat (i32 16383)
  store <16 x i32> %37, ptr %i.axz, align 1, !tbaa !10
  %i.aya = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 56 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %.02630.i405, i64 128 ; 2 uses
  %i.ayc = add nuw nsw i32 %.032.i403, 1          ; 2 uses
  %exitcond.not.i408 = icmp eq i32 %i.ayc, %i.avr
  br i1 %exitcond.not.i408, label %._crit_edge.i394, label %.lr.ph.i402, !llvm.loop !203

bb.ae:                                            ; preds = %bb.a
  %i.ayd = mul nsw i32 %2, 15
  %i.aye = add nsw i32 %4, %i.ayd
  %i.ayf = icmp sgt i32 %2, 0
  br i1 %i.ayf, label %.lr.ph.i.i428, label %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i428:                                    ; preds = %bb.ae, %bb.af
  %.026.i.i429 = phi ptr [ %i.ayv, %bb.af ], [ %1, %bb.ae ] ; 2 uses
  %.02325.i.i430 = phi i32 [ %i.ayi, %bb.af ], [ %4, %bb.ae ] ; 5 uses
  %i.ayg = srem i32 %.02325.i.i430, 8             ; 2 uses
  %i.ayh = sdiv i32 %.02325.i.i430, 8             ; 2 uses
  %.not.i.i431 = icmp eq i32 %i.ayg, 0
  br i1 %.not.i.i431, label %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i428
  %i.ayi = add nsw i32 %.02325.i.i430, 15         ; 3 uses
  %i.ayj = add nsw i32 %.02325.i.i430, 14
  %i.ayk = sdiv i32 %i.ayj, 8
  %i.ayl = sub nsw i32 %i.ayk, %i.ayh             ; 2 uses
  %i.aym = add nsw i32 %i.ayl, 1
  %i.ayn = icmp slt i32 %i.ayl, 3
  tail call void @llvm.assume(i1 %i.ayn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.ag, align 8, !tbaa !12
  %i.ayo = sext i32 %i.ayh to i64
  %i.ayp = getelementptr inbounds i8, ptr %0, i64 %i.ayo
  %i.ayq = sext i32 %i.aym to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr readonly align 1 %i.ayp, i64 %i.ayq, i1 false)
  %.0..0..0..0..0..0..0..0..i.i432 = load i64, ptr %i.ag, align 8, !tbaa !12
  %i.ayr = zext nneg i32 %i.ayg to i64
  %i.ays = lshr i64 %.0..0..0..0..0..0..0..0..i.i432, %i.ayr
  %i.ayt = trunc i64 %i.ays to i32
  %i.ayu = and i32 %i.ayt, 32767
  store i32 %i.ayu, ptr %.026.i.i429, align 4, !tbaa !6
  %i.ayv = getelementptr inbounds nuw i8, ptr %.026.i.i429, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ayw = icmp slt i32 %i.ayi, %i.aye
  br i1 %i.ayw, label %.lr.ph.i.i428, label %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !204

_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.af, %.lr.ph.i.i428, %bb.ae
  %.023.lcssa.i.i414 = phi i32 [ %4, %bb.ae ], [ %i.ayi, %bb.af ], [ %.02325.i.i430, %.lr.ph.i.i428 ]
  %i.ayx = sub nsw i32 %.023.lcssa.i.i414, %4
  %i.ayy = sdiv i32 %i.ayx, 15                    ; 3 uses
  %i.ayz = mul nsw i32 %i.ayy, 15
  %i.aza = add nsw i32 %i.ayz, %4
  %i.azb = sub nsw i32 %2, %i.ayy                 ; 4 uses
  %i.azc = sdiv i32 %i.aza, 8
  %i.azd = sext i32 %i.azc to i64
  %i.aze = getelementptr inbounds i8, ptr %0, i64 %i.azd ; 2 uses
  %i.azf = sext i32 %i.ayy to i64
  %i.azg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.azf ; 2 uses
  %i.azh = sdiv i32 %i.azb, 32                    ; 2 uses
  %i.azi = icmp sgt i32 %i.azb, 31
  br i1 %i.azi, label %.lr.ph.i423, label %._crit_edge.i415

._crit_edge.i415:                                 ; preds = %.lr.ph.i423, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i416 = phi ptr [ %i.azg, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bcg, %.lr.ph.i423 ]
  %.025.lcssa.i417 = phi ptr [ %i.aze, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bcf, %.lr.ph.i423 ]
  %i.azj = shl nsw i32 %i.azh, 5                  ; 2 uses
  %i.azk = sub nsw i32 %i.azb, %i.azj             ; 2 uses
  %i.azl = icmp samesign ult i32 %i.azk, 32
  tail call void @llvm.assume(i1 %i.azl)
  %i.azm = mul nuw nsw i32 %i.azk, 15
  %.not.i418 = icmp eq i32 %i.azb, %i.azj
  br i1 %.not.i418, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i419

.lr.ph.i28.i419:                                  ; preds = %._crit_edge.i415, %.lr.ph.i28.i419
  %.024.i.i420 = phi ptr [ %i.bac, %.lr.ph.i28.i419 ], [ %.026.lcssa.i416, %._crit_edge.i415 ] ; 2 uses
  %.02223.i.i421 = phi i32 [ %i.azo, %.lr.ph.i28.i419 ], [ 0, %._crit_edge.i415 ] ; 4 uses
  %i.azn = lshr i32 %.02223.i.i421, 3             ; 2 uses
  %i.azo = add nuw nsw i32 %.02223.i.i421, 15     ; 2 uses
  %i.azp = add nuw nsw i32 %.02223.i.i421, 14
  %i.azq = lshr i32 %i.azp, 3
  %i.azr = sub nsw i32 %i.azq, %i.azn             ; 2 uses
  %i.azs = add nsw i32 %i.azr, 1
  %i.azt = icmp slt i32 %i.azr, 3
  tail call void @llvm.assume(i1 %i.azt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 0, ptr %i.af, align 8, !tbaa !12
  %i.azu = zext nneg i32 %i.azn to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i417, i64 %i.azu
  %i.azw = sext i32 %i.azs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 1 %i.azv, i64 %i.azw, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i422 = load i64, ptr %i.af, align 8, !tbaa !12
  %i.azx = and i32 %.02223.i.i421, 7
  %i.azy = zext nneg i32 %i.azx to i64
  %i.azz = lshr i64 %.0..0..0..0..0..0..0..0..i29.i422, %i.azy
  %i.baa = trunc i64 %i.azz to i32
  %i.bab = and i32 %i.baa, 32767
  store i32 %i.bab, ptr %.024.i.i420, align 4, !tbaa !6
  %i.bac = getelementptr inbounds nuw i8, ptr %.024.i.i420, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.bad = icmp samesign ult i32 %i.azo, %i.azm
  br i1 %i.bad, label %.lr.ph.i28.i419, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !205

.lr.ph.i423:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i423
  %.032.i424 = phi i32 [ %i.bch, %.lr.ph.i423 ], [ 0, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i425 = phi ptr [ %i.bcf, %.lr.ph.i423 ], [ %i.aze, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 6 uses
  %.02630.i426 = phi ptr [ %i.bcg, %.lr.ph.i423 ], [ %i.azg, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 4
  %i.baf = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 8
  %i.bag = load <4 x i32>, ptr %i.bae, align 1    ; 3 uses
  %i.bah = load <4 x i32>, ptr %i.baf, align 1    ; 3 uses
  %i.bai = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bah, <4 x i32> %i.bag, <4 x i32> <i32 4, i32 6, i32 8, i32 10>)
  %i.baj = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 24
  %i.bak = load i32, ptr %i.baj, align 1          ; 3 uses
  %i.bal = extractelement <4 x i32> %i.bah, i64 3 ; 2 uses
  %i.bam = tail call i32 @llvm.fshl.i32(i32 %i.bak, i32 %i.bal, i32 12)
  %i.ban = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 28 ; 2 uses
  %i.bao = load i32, ptr %i.ban, align 1          ; 2 uses
  %i.bap = tail call i32 @llvm.fshl.i32(i32 %i.bao, i32 %i.bak, i32 14)
  %i.baq = load i32, ptr %.02531.i425, align 1    ; 2 uses
  %i.bar = extractelement <4 x i32> %i.bag, i64 0
  %i.bas = tail call i32 @llvm.fshl.i32(i32 %i.bar, i32 %i.baq, i32 2)
  %i.bat = insertelement <2 x i32> poison, i32 %i.baq, i64 0
  %i.bau = shufflevector <2 x i32> %i.bat, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bav = lshr <16 x i32> %i.bau, <i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.baw = insertelement <16 x i32> %i.bav, i32 %i.bas, i64 2
  %i.bax = shufflevector <4 x i32> %i.bag, <4 x i32> %i.bah, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.bay = lshr <4 x i32> %i.bax, <i32 13, i32 11, i32 9, i32 7>
  %i.baz = shufflevector <4 x i32> %i.bay, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bba = shufflevector <16 x i32> %i.baw, <16 x i32> %i.baz, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbb = shufflevector <4 x i32> %i.bai, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbc = shufflevector <16 x i32> %i.bba, <16 x i32> %i.bbb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 17, i32 poison, i32 18, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbd = shufflevector <16 x i32> %i.bbc, <16 x i32> %i.baz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 17, i32 6, i32 18, i32 8, i32 19, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbe = lshr i32 %i.bal, 5
  %i.bbf = insertelement <16 x i32> %i.bbd, i32 %i.bbe, i64 11
  %i.bbg = insertelement <16 x i32> %i.bbf, i32 %i.bam, i64 12
  %i.bbh = lshr i32 %i.bak, 3
  %i.bbi = insertelement <16 x i32> %i.bbg, i32 %i.bbh, i64 13
  %i.bbj = insertelement <16 x i32> %i.bbi, i32 %i.bap, i64 14
  %i.bbk = lshr i32 %i.bao, 1
  %.sroa.0125.60.vec.insert.i.i = insertelement <16 x i32> %i.bbj, i32 %i.bbk, i64 15
  %38 = and <16 x i32> %.sroa.0125.60.vec.insert.i.i, splat (i32 32767)
  store <16 x i32> %38, ptr %.02630.i426, align 1, !tbaa !10
  %i.bbl = load <8 x i32>, ptr %i.ban, align 1    ; 8 uses
  %i.bbm = extractelement <8 x i32> %i.bbl, i64 0
  %i.bbn = extractelement <8 x i32> %i.bbl, i64 1
  %i.bbo = tail call i32 @llvm.fshl.i32(i32 %i.bbn, i32 %i.bbm, i32 1)
  %i.bbp = shufflevector <8 x i32> %i.bbl, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bbq = shufflevector <8 x i32> %i.bbl, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.bbr = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bbp, <2 x i32> %i.bbq, <2 x i32> <i32 3, i32 5>)
  %i.bbs = shufflevector <8 x i32> %i.bbl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bbt = shufflevector <8 x i32> %i.bbl, <8 x i32> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bbu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bbs, <4 x i32> %i.bbt, <4 x i32> <i32 7, i32 9, i32 11, i32 13>)
  %i.bbv = insertelement <16 x i32> poison, i32 %i.bbo, i64 1
  %i.bbw = shufflevector <8 x i32> %i.bbl, <8 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbx = shufflevector <16 x i32> %i.bbv, <16 x i32> %i.bbw, <16 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 23>
  %i.bby = shufflevector <4 x i32> %i.bbu, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbz = shufflevector <8 x i32> %i.bbl, <8 x i32> %i.bby, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.bca = shufflevector <2 x i32> %i.bbr, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcb = shufflevector <16 x i32> %i.bbz, <16 x i32> %i.bca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.bcc = shufflevector <16 x i32> %i.bcb, <16 x i32> %i.bbx, <16 x i32> <i32 0, i32 17, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7, i32 31>
  %i.bcd = lshr <16 x i32> %i.bcc, <i32 16, i32 0, i32 14, i32 0, i32 12, i32 0, i32 10, i32 0, i32 8, i32 0, i32 6, i32 0, i32 4, i32 0, i32 2, i32 17>
  %i.bce = getelementptr inbounds nuw i8, ptr %.02630.i426, i64 64
  %39 = and <16 x i32> %i.bcd, splat (i32 32767)
  store <16 x i32> %39, ptr %i.bce, align 1, !tbaa !10
  %i.bcf = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 60 ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %.02630.i426, i64 128 ; 2 uses
  %i.bch = add nuw nsw i32 %.032.i424, 1          ; 2 uses
  %exitcond.not.i427 = icmp eq i32 %i.bch, %i.azh
  br i1 %exitcond.not.i427, label %._crit_edge.i415, label %.lr.ph.i423, !llvm.loop !206

bb.ag:                                            ; preds = %bb.a
  %i.bci = shl nsw i32 %2, 4
  %i.bcj = add nsw i32 %4, %i.bci
  %i.bck = icmp sgt i32 %2, 0
  br i1 %i.bck, label %.lr.ph.i.i451, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i451:                                    ; preds = %bb.ag, %bb.ah
  %.026.i.i452 = phi ptr [ %i.bda, %bb.ah ], [ %1, %bb.ag ] ; 2 uses
  %.02325.i.i453 = phi i32 [ %i.bcn, %bb.ah ], [ %4, %bb.ag ] ; 5 uses
  %i.bcl = srem i32 %.02325.i.i453, 8             ; 2 uses
  %i.bcm = sdiv i32 %.02325.i.i453, 8             ; 2 uses
  %.not.i.i454 = icmp eq i32 %i.bcl, 0
  br i1 %.not.i.i454, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i451
  %i.bcn = add nsw i32 %.02325.i.i453, 16         ; 3 uses
  %i.bco = add nsw i32 %.02325.i.i453, 15
  %i.bcp = sdiv i32 %i.bco, 8
  %i.bcq = sub nsw i32 %i.bcp, %i.bcm             ; 2 uses
  %i.bcr = add nsw i32 %i.bcq, 1
  %i.bcs = icmp slt i32 %i.bcq, 3
  tail call void @llvm.assume(i1 %i.bcs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8, !tbaa !12
  %i.bct = sext i32 %i.bcm to i64
  %i.bcu = getelementptr inbounds i8, ptr %0, i64 %i.bct
  %i.bcv = sext i32 %i.bcr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %i.bcu, i64 %i.bcv, i1 false)
  %.0..0..0..0..0..0..0..0..i.i455 = load i64, ptr %i.ae, align 8, !tbaa !12
  %i.bcw = zext nneg i32 %i.bcl to i64
  %i.bcx = lshr i64 %.0..0..0..0..0..0..0..0..i.i455, %i.bcw
  %i.bcy = trunc i64 %i.bcx to i32
  %i.bcz = and i32 %i.bcy, 65535
  store i32 %i.bcz, ptr %.026.i.i452, align 4, !tbaa !6
  %i.bda = getelementptr inbounds nuw i8, ptr %.026.i.i452, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.bdb = icmp slt i32 %i.bcn, %i.bcj
  br i1 %i.bdb, label %.lr.ph.i.i451, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !207

_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ah, %.lr.ph.i.i451, %bb.ag
  %.023.lcssa.i.i433 = phi i32 [ %4, %bb.ag ], [ %i.bcn, %bb.ah ], [ %.02325.i.i453, %.lr.ph.i.i451 ]
  %i.bdc = sub nsw i32 %.023.lcssa.i.i433, %4
  %i.bdd = sdiv i32 %i.bdc, 16                    ; 3 uses
  %i.bde = shl nsw i32 %i.bdd, 4
  %i.bdf = add nsw i32 %i.bde, %4
  %i.bdg = sub nsw i32 %2, %i.bdd                 ; 5 uses
  %i.bdh = sdiv i32 %i.bdf, 8
  %i.bdi = sext i32 %i.bdh to i64
  %i.bdj = getelementptr inbounds i8, ptr %0, i64 %i.bdi ; 3 uses
  %i.bdk = sext i32 %i.bdd to i64
  %i.bdl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bdk ; 3 uses
  %i.bdm = sdiv i32 %i.bdg, 32                    ; 4 uses
  %i.bdn = icmp sgt i32 %i.bdg, 31
  br i1 %i.bdn, label %.lr.ph.i444.preheader, label %._crit_edge.i434

.lr.ph.i444.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i
  %xtraiter = and i32 %i.bdm, 1
  %i.bdo = and i32 %i.bdg, 2147483616
  %i.bdp = icmp eq i32 %i.bdo, 32
  br i1 %i.bdp, label %.lr.ph.i444.epil.preheader, label %.lr.ph.i444.preheader.new

.lr.ph.i444.preheader.new:                        ; preds = %.lr.ph.i444.preheader
  %unroll_iter = and i32 %i.bdm, 67108862
  br label %.lr.ph.i444

._crit_edge.i434.loopexit.unr-lcssa:              ; preds = %.lr.ph.i444
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i434, label %.lr.ph.i444.epil.preheader

.lr.ph.i444.epil.preheader:                       ; preds = %._crit_edge.i434.loopexit.unr-lcssa, %.lr.ph.i444.preheader
  %.02531.i446.epil.init = phi ptr [ %i.bdj, %.lr.ph.i444.preheader ], [ %i.bfv, %._crit_edge.i434.loopexit.unr-lcssa ] ; 3 uses
  %.02630.i447.epil.init = phi ptr [ %i.bdl, %.lr.ph.i444.preheader ], [ %i.bfw, %._crit_edge.i434.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1568 = trunc i32 %i.bdm to i1
  tail call void @llvm.assume(i1 %lcmp.mod1568)
  %i.bdq = load <8 x i32>, ptr %.02531.i446.epil.init, align 1
  %i.bdr = shufflevector <8 x i32> %i.bdq, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.bds = lshr <16 x i32> %i.bdr, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %40 = and <16 x i32> %i.bds, splat (i32 65535)
  store <16 x i32> %40, ptr %.02630.i447.epil.init, align 1, !tbaa !10
  %i.bdt = getelementptr inbounds nuw i8, ptr %.02531.i446.epil.init, i64 32
  %i.bdu = load <8 x i32>, ptr %i.bdt, align 1
  %i.bdv = shufflevector <8 x i32> %i.bdu, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.bdw = lshr <16 x i32> %i.bdv, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.bdx = getelementptr inbounds nuw i8, ptr %.02630.i447.epil.init, i64 64
  %41 = and <16 x i32> %i.bdw, splat (i32 65535)
  store <16 x i32> %41, ptr %i.bdx, align 1, !tbaa !10
  %i.bdy = getelementptr inbounds nuw i8, ptr %.02531.i446.epil.init, i64 64
  %i.bdz = getelementptr inbounds nuw i8, ptr %.02630.i447.epil.init, i64 128
  br label %._crit_edge.i434

._crit_edge.i434:                                 ; preds = %.lr.ph.i444.epil.preheader, %._crit_edge.i434.loopexit.unr-lcssa, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i435 = phi ptr [ %i.bdl, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bfw, %._crit_edge.i434.loopexit.unr-lcssa ], [ %i.bdz, %.lr.ph.i444.epil.preheader ] ; 6 uses
  %.025.lcssa.i436 = phi ptr [ %i.bdj, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bfv, %._crit_edge.i434.loopexit.unr-lcssa ], [ %i.bdy, %.lr.ph.i444.epil.preheader ] ; 4 uses
  %i.bea = shl nsw i32 %i.bdm, 5                  ; 2 uses
  %i.beb = sub nsw i32 %i.bdg, %i.bea             ; 2 uses
  %i.bec = icmp samesign ult i32 %i.beb, 32
  tail call void @llvm.assume(i1 %i.bec)
  %.not.i437 = icmp eq i32 %i.bdg, %i.bea
  br i1 %.not.i437, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i434
  %i.bed = shl nuw nsw i32 %i.beb, 4
  %i.bee = zext nneg i32 %i.bed to i64            ; 3 uses
  %i.bef = tail call i64 @llvm.usub.sat.i64(i64 %i.bee, i64 16) ; 2 uses
  %i.beg = lshr exact i64 %i.bef, 4
  %i.beh = add nuw nsw i64 %i.beg, 1              ; 2 uses
  %min.iters.check1235 = icmp samesign ult i64 %i.bef, 112
  br i1 %min.iters.check1235, label %.lr.ph.i28.i439.preheader, label %vector.memcheck1236

vector.memcheck1236:                              ; preds = %iter.check
  %i.bei = tail call i64 @llvm.usub.sat.i64(i64 %i.bee, i64 16) ; 2 uses
  %i.bej = lshr exact i64 %i.bei, 3
  %i.bek = lshr exact i64 %i.bei, 2
  %i.bel = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bek
  %i.bem = getelementptr i8, ptr %i.bel, i64 4
  %i.ben = getelementptr i8, ptr %.025.lcssa.i436, i64 %i.bej
  %i.beo = getelementptr i8, ptr %i.ben, i64 2
  %bound01237 = icmp ult ptr %.026.lcssa.i435, %i.beo
  %bound11238 = icmp ult ptr %.025.lcssa.i436, %i.bem
  %found.conflict1239 = and i1 %bound01237, %bound11238
  br i1 %found.conflict1239, label %.lr.ph.i28.i439.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck1236
  %n.vec1251 = and i64 %i.beh, 268435448          ; 4 uses
  %i.bep = shl nuw nsw i64 %n.vec1251, 4
  %i.beq = shl nuw nsw i64 %n.vec1251, 2
  %i.ber = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.beq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1252 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next1255, %vec.epilog.vector.body ] ; 3 uses
  %i.bes = shl i64 %index1252, 2
  %next.gep1253 = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bes
  %i.bet = shl nuw nsw i64 %index1252, 1
  %i.beu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bet
  %wide.load1254 = load <8 x i16>, ptr %i.beu, align 1, !alias.scope !273
  %i.bev = zext <8 x i16> %wide.load1254 to <8 x i32>
  store <8 x i32> %i.bev, ptr %next.gep1253, align 4, !tbaa !6, !alias.scope !274, !noalias !273
  %index.next1255 = add nuw i64 %index1252, 8     ; 2 uses
  %i.bew = icmp eq i64 %index.next1255, %n.vec1251
  br i1 %i.bew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1256 = icmp eq i64 %i.beh, %n.vec1251
  br i1 %cmp.n1256, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i439.preheader

.lr.ph.i28.i439.preheader:                        ; preds = %iter.check, %vector.memcheck1236, %vec.epilog.middle.block
  %indvars.iv.i440.ph = phi i64 [ 0, %vector.memcheck1236 ], [ 0, %iter.check ], [ %i.bep, %vec.epilog.middle.block ]
  %.024.i.i441.ph = phi ptr [ %.026.lcssa.i435, %vector.memcheck1236 ], [ %.026.lcssa.i435, %iter.check ], [ %i.ber, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i439

.lr.ph.i28.i439:                                  ; preds = %.lr.ph.i28.i439.preheader, %.lr.ph.i28.i439
  %indvars.iv.i440 = phi i64 [ %indvars.iv.next.i442, %.lr.ph.i28.i439 ], [ %indvars.iv.i440.ph, %.lr.ph.i28.i439.preheader ] ; 2 uses
  %.024.i.i441 = phi ptr [ %i.bfb, %.lr.ph.i28.i439 ], [ %.024.i.i441.ph, %.lr.ph.i28.i439.preheader ] ; 2 uses
  %i.bex = lshr exact i64 %indvars.iv.i440, 3
  %indvars.iv.next.i442 = add nuw nsw i64 %indvars.iv.i440, 16 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bex
  %i.bez = load i16, ptr %i.bey, align 1
  %i.bfa = zext i16 %i.bez to i32
  store i32 %i.bfa, ptr %.024.i.i441, align 4, !tbaa !6
  %i.bfb = getelementptr inbounds nuw i8, ptr %.024.i.i441, i64 4
  %i.bfc = icmp samesign ult i64 %indvars.iv.next.i442, %i.bee
  br i1 %i.bfc, label %.lr.ph.i28.i439, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !212

.lr.ph.i444:                                      ; preds = %.lr.ph.i444, %.lr.ph.i444.preheader.new
  %.02531.i446 = phi ptr [ %i.bdj, %.lr.ph.i444.preheader.new ], [ %i.bfv, %.lr.ph.i444 ] ; 5 uses
  %.02630.i447 = phi ptr [ %i.bdl, %.lr.ph.i444.preheader.new ], [ %i.bfw, %.lr.ph.i444 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i444.preheader.new ], [ %niter.next.1, %.lr.ph.i444 ]
  %i.bfd = load <8 x i32>, ptr %.02531.i446, align 1
  %i.bfe = shufflevector <8 x i32> %i.bfd, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.bff = lshr <16 x i32> %i.bfe, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %42 = and <16 x i32> %i.bff, splat (i32 65535)
  store <16 x i32> %42, ptr %.02630.i447, align 1, !tbaa !10
  %i.bfg = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 32
  %i.bfh = load <8 x i32>, ptr %i.bfg, align 1
  %i.bfi = shufflevector <8 x i32> %i.bfh, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.bfj = lshr <16 x i32> %i.bfi, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.bfk = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 64
  %43 = and <16 x i32> %i.bfj, splat (i32 65535)
  store <16 x i32> %43, ptr %i.bfk, align 1, !tbaa !10
  %i.bfl = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 64
  %i.bfm = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 128
  %i.bfn = load <8 x i32>, ptr %i.bfl, align 1
  %i.bfo = shufflevector <8 x i32> %i.bfn, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.bfp = lshr <16 x i32> %i.bfo, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %44 = and <16 x i32> %i.bfp, splat (i32 65535)
  store <16 x i32> %44, ptr %i.bfm, align 1, !tbaa !10
  %i.bfq = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 96
  %i.bfr = load <8 x i32>, ptr %i.bfq, align 1
  %i.bfs = shufflevector <8 x i32> %i.bfr, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.bft = lshr <16 x i32> %i.bfs, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.bfu = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 192
  %45 = and <16 x i32> %i.bft, splat (i32 65535)
  store <16 x i32> %45, ptr %i.bfu, align 1, !tbaa !10
  %i.bfv = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 128 ; 3 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 256 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i434.loopexit.unr-lcssa, label %.lr.ph.i444, !llvm.loop !213

bb.ai:                                            ; preds = %bb.a
  %i.bfx = mul nsw i32 %2, 17
  %i.bfy = add nsw i32 %4, %i.bfx
  %i.bfz = icmp sgt i32 %2, 0
  br i1 %i.bfz, label %.lr.ph.i.i470, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i470:                                    ; preds = %bb.ai, %bb.aj
  %.026.i.i471 = phi ptr [ %i.bgp, %bb.aj ], [ %1, %bb.ai ] ; 2 uses
  %.02325.i.i472 = phi i32 [ %i.bgc, %bb.aj ], [ %4, %bb.ai ] ; 5 uses
  %i.bga = srem i32 %.02325.i.i472, 8             ; 2 uses
  %i.bgb = sdiv i32 %.02325.i.i472, 8             ; 2 uses
  %.not.i.i473 = icmp eq i32 %i.bga, 0
  br i1 %.not.i.i473, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i470
  %i.bgc = add nsw i32 %.02325.i.i472, 17         ; 3 uses
  %i.bgd = add nsw i32 %.02325.i.i472, 16
  %i.bge = sdiv i32 %i.bgd, 8
  %i.bgf = sub nsw i32 %i.bge, %i.bgb             ; 2 uses
  %i.bgg = add nsw i32 %i.bgf, 1
  %i.bgh = icmp slt i32 %i.bgf, 3
  tail call void @llvm.assume(i1 %i.bgh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8, !tbaa !12
  %i.bgi = sext i32 %i.bgb to i64
  %i.bgj = getelementptr inbounds i8, ptr %0, i64 %i.bgi
  %i.bgk = sext i32 %i.bgg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr readonly align 1 %i.bgj, i64 %i.bgk, i1 false)
  %.0..0..0..0..0..0..0..0..i.i474 = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.bgl = zext nneg i32 %i.bga to i64
  %i.bgm = lshr i64 %.0..0..0..0..0..0..0..0..i.i474, %i.bgl
  %i.bgn = trunc i64 %i.bgm to i32
  %i.bgo = and i32 %i.bgn, 131071
  store i32 %i.bgo, ptr %.026.i.i471, align 4, !tbaa !6
  %i.bgp = getelementptr inbounds nuw i8, ptr %.026.i.i471, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.bgq = icmp slt i32 %i.bgc, %i.bfy
  br i1 %i.bgq, label %.lr.ph.i.i470, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !214

_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.aj, %.lr.ph.i.i470, %bb.ai
  %.023.lcssa.i.i456 = phi i32 [ %4, %bb.ai ], [ %i.bgc, %bb.aj ], [ %.02325.i.i472, %.lr.ph.i.i470 ]
  %i.bgr = sub nsw i32 %.023.lcssa.i.i456, %4
  %i.bgs = sdiv i32 %i.bgr, 17                    ; 3 uses
  %i.bgt = mul nsw i32 %i.bgs, 17
  %i.bgu = add nsw i32 %i.bgt, %4
  %i.bgv = sub nsw i32 %2, %i.bgs                 ; 4 uses
  %i.bgw = sdiv i32 %i.bgu, 8
  %i.bgx = sext i32 %i.bgw to i64
  %i.bgy = getelementptr inbounds i8, ptr %0, i64 %i.bgx ; 2 uses
  %i.bgz = sext i32 %i.bgs to i64
  %i.bha = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bgz ; 2 uses
  %i.bhb = sdiv i32 %i.bgv, 32                    ; 2 uses
  %i.bhc = icmp sgt i32 %i.bgv, 31
  br i1 %i.bhc, label %.lr.ph.i465, label %._crit_edge.i457

._crit_edge.i457:                                 ; preds = %.lr.ph.i465, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i458 = phi ptr [ %i.bha, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.biz, %.lr.ph.i465 ]
  %.025.lcssa.i459 = phi ptr [ %i.bgy, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.biy, %.lr.ph.i465 ]
  %i.bhd = shl nsw i32 %i.bhb, 5                  ; 2 uses
  %i.bhe = sub nsw i32 %i.bgv, %i.bhd             ; 2 uses
  %i.bhf = icmp samesign ult i32 %i.bhe, 32
  tail call void @llvm.assume(i1 %i.bhf)
  %i.bhg = mul nuw nsw i32 %i.bhe, 17
  %.not.i460 = icmp eq i32 %i.bgv, %i.bhd
  br i1 %.not.i460, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i461

.lr.ph.i28.i461:                                  ; preds = %._crit_edge.i457, %.lr.ph.i28.i461
  %.024.i.i462 = phi ptr [ %i.bhw, %.lr.ph.i28.i461 ], [ %.026.lcssa.i458, %._crit_edge.i457 ] ; 2 uses
  %.02223.i.i463 = phi i32 [ %i.bhi, %.lr.ph.i28.i461 ], [ 0, %._crit_edge.i457 ] ; 4 uses
  %i.bhh = lshr i32 %.02223.i.i463, 3             ; 2 uses
  %i.bhi = add nuw nsw i32 %.02223.i.i463, 17     ; 2 uses
  %i.bhj = add nuw nsw i32 %.02223.i.i463, 16
  %i.bhk = lshr i32 %i.bhj, 3
  %i.bhl = sub nsw i32 %i.bhk, %i.bhh             ; 2 uses
  %i.bhm = add nsw i32 %i.bhl, 1
  %i.bhn = icmp slt i32 %i.bhl, 3
  tail call void @llvm.assume(i1 %i.bhn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8, !tbaa !12
  %i.bho = zext nneg i32 %i.bhh to i64
  %i.bhp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i459, i64 %i.bho
  %i.bhq = sext i32 %i.bhm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 1 %i.bhp, i64 %i.bhq, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i464 = load i64, ptr %i.ac, align 8, !tbaa !12
  %i.bhr = and i32 %.02223.i.i463, 7
  %i.bhs = zext nneg i32 %i.bhr to i64
  %i.bht = lshr i64 %.0..0..0..0..0..0..0..0..i29.i464, %i.bhs
  %i.bhu = trunc i64 %i.bht to i32
  %i.bhv = and i32 %i.bhu, 131071
  store i32 %i.bhv, ptr %.024.i.i462, align 4, !tbaa !6
  %i.bhw = getelementptr inbounds nuw i8, ptr %.024.i.i462, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.bhx = icmp samesign ult i32 %i.bhi, %i.bhg
  br i1 %i.bhx, label %.lr.ph.i28.i461, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !215

.lr.ph.i465:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i465
  %.032.i466 = phi i32 [ %i.bja, %.lr.ph.i465 ], [ 0, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i467 = phi ptr [ %i.biy, %.lr.ph.i465 ], [ %i.bgy, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 6 uses
  %.02630.i468 = phi ptr [ %i.biz, %.lr.ph.i465 ], [ %i.bha, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 4 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 32
  %i.bia = load <8 x i32>, ptr %.02531.i467, align 1 ; 2 uses
  %i.bib = load <8 x i32>, ptr %i.bhy, align 1    ; 4 uses
  %i.bic = load <4 x i32>, ptr %.02531.i467, align 1
  %i.bid = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bib, <8 x i32> %i.bia, <8 x i32> <i32 15, i32 13, i32 11, i32 9, i32 7, i32 5, i32 3, i32 1>)
  %i.bie = load <4 x i32>, ptr %i.bhy, align 1
  %i.bif = shufflevector <4 x i32> %i.bic, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.big = shufflevector <8 x i32> %i.bib, <8 x i32> %i.bif, <4 x i32> <i32 poison, i32 poison, i32 10, i32 3>
  %i.bih = extractelement <8 x i32> %i.bib, i64 4
  %i.bii = lshr i32 %i.bih, 10
  %i.bij = shufflevector <8 x i32> %i.bid, <8 x i32> %i.bia, <16 x i32> <i32 8, i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 poison, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7>
  %i.bik = shufflevector <4 x i32> %i.big, <4 x i32> %i.bie, <16 x i32> <i32 4, i32 5, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bil = lshr <16 x i32> %i.bik, <i32 2, i32 4, i32 6, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bim = shufflevector <16 x i32> %i.bij, <16 x i32> %i.bil, <16 x i32> <i32 0, i32 1, i32 16, i32 3, i32 17, i32 5, i32 18, i32 7, i32 19, i32 9, i32 poison, i32 11, i32 poison, i32 13, i32 poison, i32 15>
  %i.bin = insertelement <16 x i32> %i.bim, i32 %i.bii, i64 10
  %i.bio = lshr <8 x i32> %i.bib, <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 14, i32 poison>
  %i.bip = shufflevector <8 x i32> %i.bio, <8 x i32> poison, <16 x i32> <i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.biq = shufflevector <16 x i32> %i.bin, <16 x i32> %i.bip, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 13, i32 17, i32 15>
  %46 = and <16 x i32> %i.biq, splat (i32 131071)
  store <16 x i32> %46, ptr %.02630.i468, align 1, !tbaa !10
  %i.bir = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 36
  %i.bis = load <8 x i32>, ptr %i.bhz, align 1
  %i.bit = load <8 x i32>, ptr %i.bir, align 1    ; 2 uses
  %i.biu = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bit, <8 x i32> %i.bis, <8 x i32> <i32 16, i32 14, i32 12, i32 10, i32 8, i32 6, i32 4, i32 2>)
  %i.biv = lshr <8 x i32> %i.bit, <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.biw = shufflevector <8 x i32> %i.biu, <8 x i32> %i.biv, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bix = getelementptr inbounds nuw i8, ptr %.02630.i468, i64 64
  %47 = and <16 x i32> %i.biw, splat (i32 131071)
  store <16 x i32> %47, ptr %i.bix, align 1, !tbaa !10
  %i.biy = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 68 ; 2 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %.02630.i468, i64 128 ; 2 uses
  %i.bja = add nuw nsw i32 %.032.i466, 1          ; 2 uses
  %exitcond.not.i469 = icmp eq i32 %i.bja, %i.bhb
  br i1 %exitcond.not.i469, label %._crit_edge.i457, label %.lr.ph.i465, !llvm.loop !216

bb.ak:                                            ; preds = %bb.a
  %i.bjb = mul nsw i32 %2, 18
  %i.bjc = add nsw i32 %4, %i.bjb
  %i.bjd = icmp sgt i32 %2, 0
  br i1 %i.bjd, label %.lr.ph.i.i491, label %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i491:                                    ; preds = %bb.ak, %bb.al
  %.026.i.i492 = phi ptr [ %i.bjt, %bb.al ], [ %1, %bb.ak ] ; 2 uses
  %.02325.i.i493 = phi i32 [ %i.bjg, %bb.al ], [ %4, %bb.ak ] ; 5 uses
  %i.bje = srem i32 %.02325.i.i493, 8             ; 2 uses
  %i.bjf = sdiv i32 %.02325.i.i493, 8             ; 2 uses
  %.not.i.i494 = icmp eq i32 %i.bje, 0
  br i1 %.not.i.i494, label %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i491
  %i.bjg = add nsw i32 %.02325.i.i493, 18         ; 3 uses
  %i.bjh = add nsw i32 %.02325.i.i493, 17
  %i.bji = sdiv i32 %i.bjh, 8
  %i.bjj = sub nsw i32 %i.bji, %i.bjf             ; 2 uses
  %i.bjk = add nsw i32 %i.bjj, 1
  %i.bjl = icmp slt i32 %i.bjj, 4
  tail call void @llvm.assume(i1 %i.bjl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.ab, align 8, !tbaa !12
  %i.bjm = sext i32 %i.bjf to i64
  %i.bjn = getelementptr inbounds i8, ptr %0, i64 %i.bjm
  %i.bjo = sext i32 %i.bjk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr readonly align 1 %i.bjn, i64 %i.bjo, i1 false)
  %.0..0..0..0..0..0..0..0..i.i495 = load i64, ptr %i.ab, align 8, !tbaa !12
  %i.bjp = zext nneg i32 %i.bje to i64
  %i.bjq = lshr i64 %.0..0..0..0..0..0..0..0..i.i495, %i.bjp
  %i.bjr = trunc i64 %i.bjq to i32
  %i.bjs = and i32 %i.bjr, 262143
  store i32 %i.bjs, ptr %.026.i.i492, align 4, !tbaa !6
  %i.bjt = getelementptr inbounds nuw i8, ptr %.026.i.i492, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.bju = icmp slt i32 %i.bjg, %i.bjc
  br i1 %i.bju, label %.lr.ph.i.i491, label %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !217

_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.al, %.lr.ph.i.i491, %bb.ak
  %.023.lcssa.i.i475 = phi i32 [ %4, %bb.ak ], [ %i.bjg, %bb.al ], [ %.02325.i.i493, %.lr.ph.i.i491 ]
  %i.bjv = sub nsw i32 %.023.lcssa.i.i475, %4
  %i.bjw = sdiv i32 %i.bjv, 18                    ; 3 uses
  %i.bjx = mul nsw i32 %i.bjw, 18
  %i.bjy = add nsw i32 %i.bjx, %4
  %i.bjz = sub nsw i32 %2, %i.bjw                 ; 4 uses
  %i.bka = sdiv i32 %i.bjy, 8
  %i.bkb = sext i32 %i.bka to i64
  %i.bkc = getelementptr inbounds i8, ptr %0, i64 %i.bkb ; 2 uses
  %i.bkd = sext i32 %i.bjw to i64
  %i.bke = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bkd ; 2 uses
  %i.bkf = sdiv i32 %i.bjz, 32                    ; 2 uses
  %i.bkg = icmp sgt i32 %i.bjz, 31
  br i1 %i.bkg, label %.lr.ph.i484, label %._crit_edge.i476

._crit_edge.i476:                                 ; preds = %.lr.ph.i484, %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i477 = phi ptr [ %i.bke, %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bms, %.lr.ph.i484 ]
  %.025.lcssa.i478 = phi ptr [ %i.bkc, %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bmr, %.lr.ph.i484 ]
  %i.bkh = shl nsw i32 %i.bkf, 5                  ; 2 uses
  %i.bki = sub nsw i32 %i.bjz, %i.bkh             ; 2 uses
  %i.bkj = icmp samesign ult i32 %i.bki, 32
  tail call void @llvm.assume(i1 %i.bkj)
  %i.bkk = mul nuw nsw i32 %i.bki, 18
  %.not.i479 = icmp eq i32 %i.bjz, %i.bkh
  br i1 %.not.i479, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i480

.lr.ph.i28.i480:                                  ; preds = %._crit_edge.i476, %.lr.ph.i28.i480
  %.024.i.i481 = phi ptr [ %i.bla, %.lr.ph.i28.i480 ], [ %.026.lcssa.i477, %._crit_edge.i476 ] ; 2 uses
  %.02223.i.i482 = phi i32 [ %i.bkm, %.lr.ph.i28.i480 ], [ 0, %._crit_edge.i476 ] ; 4 uses
  %i.bkl = lshr i32 %.02223.i.i482, 3             ; 2 uses
  %i.bkm = add nuw nsw i32 %.02223.i.i482, 18     ; 2 uses
  %i.bkn = add nuw nsw i32 %.02223.i.i482, 16
  %i.bko = lshr i32 %i.bkn, 3
  %i.bkp = sub nsw i32 %i.bko, %i.bkl             ; 2 uses
  %i.bkq = add nsw i32 %i.bkp, 1
  %i.bkr = icmp slt i32 %i.bkp, 3
  tail call void @llvm.assume(i1 %i.bkr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.aa, align 8, !tbaa !12
  %i.bks = zext nneg i32 %i.bkl to i64
  %i.bkt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i478, i64 %i.bks
  %i.bku = sext i32 %i.bkq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 1 %i.bkt, i64 %i.bku, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i483 = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.bkv = and i32 %.02223.i.i482, 6
  %i.bkw = zext nneg i32 %i.bkv to i64
  %i.bkx = lshr i64 %.0..0..0..0..0..0..0..0..i29.i483, %i.bkw
  %i.bky = trunc i64 %i.bkx to i32
  %i.bkz = and i32 %i.bky, 262143
  store i32 %i.bkz, ptr %.024.i.i481, align 4, !tbaa !6
  %i.bla = getelementptr inbounds nuw i8, ptr %.024.i.i481, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.blb = icmp samesign ult i32 %i.bkm, %i.bkk
  br i1 %i.blb, label %.lr.ph.i28.i480, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !218

.lr.ph.i484:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i484
  %.032.i485 = phi i32 [ %i.bmt, %.lr.ph.i484 ], [ 0, %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i486 = phi ptr [ %i.bmr, %.lr.ph.i484 ], [ %i.bkc, %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i ] ; 7 uses
  %.02630.i487 = phi ptr [ %i.bms, %.lr.ph.i484 ], [ %i.bke, %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %.02531.i486, i64 4 ; 2 uses
  %i.bld = load <8 x i32>, ptr %.02531.i486, align 1 ; 2 uses
  %i.ble = load <8 x i32>, ptr %i.blc, align 1    ; 5 uses
  %i.blf = load <4 x i32>, ptr %.02531.i486, align 1
  %i.blg = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ble, <8 x i32> %i.bld, <8 x i32> <i32 14, i32 10, i32 6, i32 2, i32 16, i32 12, i32 8, i32 4>)
  %i.blh = load <4 x i32>, ptr %i.blc, align 1
  %i.bli = shufflevector <8 x i32> %i.ble, <8 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 4>
  %i.blj = shufflevector <4 x i32> %i.blf, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.blk = shufflevector <4 x i32> %i.bli, <4 x i32> %i.blj, <4 x i32> <i32 poison, i32 poison, i32 6, i32 3>
  %i.bll = extractelement <8 x i32> %i.ble, i64 5
  %i.blm = lshr i32 %i.bll, 6
  %i.bln = extractelement <8 x i32> %i.ble, i64 6
  %i.blo = lshr i32 %i.bln, 10
  %i.blp = shufflevector <8 x i32> %i.blg, <8 x i32> %i.bld, <16 x i32> <i32 8, i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7, i32 poison>
  %i.blq = shufflevector <4 x i32> %i.blk, <4 x i32> %i.blh, <16 x i32> <i32 4, i32 5, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.blr = lshr <16 x i32> %i.blq, <i32 4, i32 8, i32 12, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bls = shufflevector <16 x i32> %i.blp, <16 x i32> %i.blr, <16 x i32> <i32 0, i32 1, i32 16, i32 3, i32 17, i32 5, i32 18, i32 7, i32 8, i32 19, i32 10, i32 poison, i32 12, i32 poison, i32 14, i32 poison>
  %i.blt = insertelement <16 x i32> %i.bls, i32 %i.blm, i64 11
  %i.blu = insertelement <16 x i32> %i.blt, i32 %i.blo, i64 13
  %i.blv = extractelement <8 x i32> %i.ble, i64 7
  %i.blw = lshr i32 %i.blv, 14
  %.sroa.0127.60.vec.insert.i.i488 = insertelement <16 x i32> %i.blu, i32 %i.blw, i64 15
  %48 = and <16 x i32> %.sroa.0127.60.vec.insert.i.i488, splat (i32 262143)
  store <16 x i32> %48, ptr %.02630.i487, align 1, !tbaa !10
  %i.blx = getelementptr inbounds nuw i8, ptr %.02531.i486, i64 36
  %i.bly = getelementptr inbounds nuw i8, ptr %.02531.i486, i64 40 ; 2 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %.02531.i486, i64 44
  %i.bma = load <8 x i32>, ptr %i.blx, align 1    ; 2 uses
  %i.bmb = load <8 x i32>, ptr %i.bly, align 1    ; 3 uses
  %i.bmc = load i32, ptr %i.bly, align 1
  %i.bmd = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bmb, <8 x i32> %i.bma, <8 x i32> <i32 14, i32 10, i32 6, i32 2, i32 16, i32 12, i32 8, i32 4>)
  %i.bme = lshr i32 %i.bmc, 4
  %i.bmf = load <2 x i32>, ptr %i.blz, align 1
  %i.bmg = shufflevector <8 x i32> %i.bmb, <8 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 4, i32 5>
  %i.bmh = shufflevector <2 x i32> %i.bmf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bmi = shufflevector <8 x i32> %i.bmd, <8 x i32> %i.bma, <16 x i32> <i32 8, i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7, i32 poison>
  %i.bmj = insertelement <16 x i32> %i.bmi, i32 %i.bme, i64 2
  %i.bmk = shufflevector <4 x i32> %i.bmg, <4 x i32> %i.bmh, <16 x i32> <i32 4, i32 5, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bml = lshr <16 x i32> %i.bmk, <i32 8, i32 12, i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bmm = shufflevector <16 x i32> %i.bmj, <16 x i32> %i.bml, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 5, i32 17, i32 7, i32 8, i32 18, i32 10, i32 19, i32 12, i32 poison, i32 14, i32 poison>
  %i.bmn = lshr <8 x i32> %i.bmb, <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 10, i32 14>
  %i.bmo = shufflevector <8 x i32> %i.bmn, <8 x i32> poison, <16 x i32> <i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bmp = shufflevector <16 x i32> %i.bmm, <16 x i32> %i.bmo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 14, i32 17>
  %i.bmq = getelementptr inbounds nuw i8, ptr %.02630.i487, i64 64
  %49 = and <16 x i32> %i.bmp, splat (i32 262143)
  store <16 x i32> %49, ptr %i.bmq, align 1, !tbaa !10
  %i.bmr = getelementptr inbounds nuw i8, ptr %.02531.i486, i64 72 ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %.02630.i487, i64 128 ; 2 uses
  %i.bmt = add nuw nsw i32 %.032.i485, 1          ; 2 uses
  %exitcond.not.i490 = icmp eq i32 %i.bmt, %i.bkf
  br i1 %exitcond.not.i490, label %._crit_edge.i476, label %.lr.ph.i484, !llvm.loop !219

bb.am:                                            ; preds = %bb.a
  %i.bmu = mul nsw i32 %2, 19
  %i.bmv = add nsw i32 %4, %i.bmu
  %i.bmw = icmp sgt i32 %2, 0
  br i1 %i.bmw, label %.lr.ph.i.i510, label %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i510:                                    ; preds = %bb.am, %bb.an
  %.026.i.i511 = phi ptr [ %i.bnm, %bb.an ], [ %1, %bb.am ] ; 2 uses
  %.02325.i.i512 = phi i32 [ %i.bmz, %bb.an ], [ %4, %bb.am ] ; 5 uses
  %i.bmx = srem i32 %.02325.i.i512, 8             ; 2 uses
  %i.bmy = sdiv i32 %.02325.i.i512, 8             ; 2 uses
  %.not.i.i513 = icmp eq i32 %i.bmx, 0
  br i1 %.not.i.i513, label %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i510
  %i.bmz = add nsw i32 %.02325.i.i512, 19         ; 3 uses
  %i.bna = add nsw i32 %.02325.i.i512, 18
  %i.bnb = sdiv i32 %i.bna, 8
  %i.bnc = sub nsw i32 %i.bnb, %i.bmy             ; 2 uses
  %i.bnd = add nsw i32 %i.bnc, 1
  %i.bne = icmp slt i32 %i.bnc, 4
  tail call void @llvm.assume(i1 %i.bne)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8, !tbaa !12
  %i.bnf = sext i32 %i.bmy to i64
  %i.bng = getelementptr inbounds i8, ptr %0, i64 %i.bnf
  %i.bnh = sext i32 %i.bnd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr readonly align 1 %i.bng, i64 %i.bnh, i1 false)
  %.0..0..0..0..0..0..0..0..i.i514 = load i64, ptr %i.z, align 8, !tbaa !12
  %i.bni = zext nneg i32 %i.bmx to i64
  %i.bnj = lshr i64 %.0..0..0..0..0..0..0..0..i.i514, %i.bni
  %i.bnk = trunc i64 %i.bnj to i32
  %i.bnl = and i32 %i.bnk, 524287
  store i32 %i.bnl, ptr %.026.i.i511, align 4, !tbaa !6
  %i.bnm = getelementptr inbounds nuw i8, ptr %.026.i.i511, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.bnn = icmp slt i32 %i.bmz, %i.bmv
  br i1 %i.bnn, label %.lr.ph.i.i510, label %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !220

_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.an, %.lr.ph.i.i510, %bb.am
  %.023.lcssa.i.i496 = phi i32 [ %4, %bb.am ], [ %i.bmz, %bb.an ], [ %.02325.i.i512, %.lr.ph.i.i510 ]
  %i.bno = sub nsw i32 %.023.lcssa.i.i496, %4
  %i.bnp = sdiv i32 %i.bno, 19                    ; 3 uses
  %i.bnq = mul nsw i32 %i.bnp, 19
  %i.bnr = add nsw i32 %i.bnq, %4
  %i.bns = sub nsw i32 %2, %i.bnp                 ; 4 uses
  %i.bnt = sdiv i32 %i.bnr, 8
  %i.bnu = sext i32 %i.bnt to i64
  %i.bnv = getelementptr inbounds i8, ptr %0, i64 %i.bnu ; 2 uses
  %i.bnw = sext i32 %i.bnp to i64
  %i.bnx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bnw ; 2 uses
  %i.bny = sdiv i32 %i.bns, 32                    ; 2 uses
  %i.bnz = icmp sgt i32 %i.bns, 31
  br i1 %i.bnz, label %.lr.ph.i505, label %._crit_edge.i497

._crit_edge.i497:                                 ; preds = %.lr.ph.i505, %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i498 = phi ptr [ %i.bnx, %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bsm, %.lr.ph.i505 ]
  %.025.lcssa.i499 = phi ptr [ %i.bnv, %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bsl, %.lr.ph.i505 ]
  %i.boa = shl nsw i32 %i.bny, 5                  ; 2 uses
  %i.bob = sub nsw i32 %i.bns, %i.boa             ; 2 uses
  %i.boc = icmp samesign ult i32 %i.bob, 32
  tail call void @llvm.assume(i1 %i.boc)
  %i.bod = mul nuw nsw i32 %i.bob, 19
  %.not.i500 = icmp eq i32 %i.bns, %i.boa
  br i1 %.not.i500, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i501

.lr.ph.i28.i501:                                  ; preds = %._crit_edge.i497, %.lr.ph.i28.i501
  %.024.i.i502 = phi ptr [ %i.bot, %.lr.ph.i28.i501 ], [ %.026.lcssa.i498, %._crit_edge.i497 ] ; 2 uses
  %.02223.i.i503 = phi i32 [ %i.bof, %.lr.ph.i28.i501 ], [ 0, %._crit_edge.i497 ] ; 4 uses
  %i.boe = lshr i32 %.02223.i.i503, 3             ; 2 uses
  %i.bof = add nuw nsw i32 %.02223.i.i503, 19     ; 2 uses
  %i.bog = add nuw nsw i32 %.02223.i.i503, 18
  %i.boh = lshr i32 %i.bog, 3
  %i.boi = sub nsw i32 %i.boh, %i.boe             ; 2 uses
  %i.boj = add nsw i32 %i.boi, 1
  %i.bok = icmp slt i32 %i.boi, 4
  tail call void @llvm.assume(i1 %i.bok)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8, !tbaa !12
  %i.bol = zext nneg i32 %i.boe to i64
  %i.bom = getelementptr inbounds nuw i8, ptr %.025.lcssa.i499, i64 %i.bol
  %i.bon = sext i32 %i.boj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 1 %i.bom, i64 %i.bon, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i504 = load i64, ptr %i.y, align 8, !tbaa !12
  %i.boo = and i32 %.02223.i.i503, 7
  %i.bop = zext nneg i32 %i.boo to i64
  %i.boq = lshr i64 %.0..0..0..0..0..0..0..0..i29.i504, %i.bop
  %i.bor = trunc i64 %i.boq to i32
  %i.bos = and i32 %i.bor, 524287
  store i32 %i.bos, ptr %.024.i.i502, align 4, !tbaa !6
  %i.bot = getelementptr inbounds nuw i8, ptr %.024.i.i502, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.bou = icmp samesign ult i32 %i.bof, %i.bod
  br i1 %i.bou, label %.lr.ph.i28.i501, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !221

.lr.ph.i505:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i505
  %.032.i506 = phi i32 [ %i.bsn, %.lr.ph.i505 ], [ 0, %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i507 = phi ptr [ %i.bsl, %.lr.ph.i505 ], [ %i.bnv, %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i ] ; 18 uses
  %.02630.i508 = phi ptr [ %i.bsm, %.lr.ph.i505 ], [ %i.bnx, %_ZN5arrow8internal12unpack_exactILi19ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 4
  %i.bow = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 8
  %i.box = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 12
  %i.boy = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 16
  %i.boz = load <2 x i32>, ptr %i.bow, align 1
  %i.bpa = load <2 x i32>, ptr %i.box, align 1
  %i.bpb = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bpa, <2 x i32> %i.boz, <2 x i32> <i32 1, i32 14>)
  %i.bpc = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 24
  %i.bpd = load i32, ptr %i.bpc, align 1          ; 2 uses
  %i.bpe = load <2 x i32>, ptr %.02531.i507, align 1 ; 3 uses
  %i.bpf = load <2 x i32>, ptr %i.boy, align 1    ; 2 uses
  %i.bpg = shufflevector <2 x i32> %i.bpe, <2 x i32> %i.bpf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bph = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 28
  %i.bpi = load i32, ptr %i.bph, align 1          ; 3 uses
  %i.bpj = tail call i32 @llvm.fshl.i32(i32 %i.bpi, i32 %i.bpd, i32 15)
  %i.bpk = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 32
  %i.bpl = load i32, ptr %i.bpk, align 1          ; 3 uses
  %i.bpm = tail call i32 @llvm.fshl.i32(i32 %i.bpl, i32 %i.bpi, i32 9)
  %i.bpn = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 36 ; 2 uses
  %i.bpo = load i32, ptr %i.bpn, align 1
  %i.bpp = tail call i32 @llvm.fshl.i32(i32 %i.bpo, i32 %i.bpl, i32 3)
  %i.bpq = shufflevector <2 x i32> %i.bpe, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bpr = shufflevector <2 x i32> %i.bpb, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bps = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.bov, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.bpt = shufflevector <5 x i32> %i.bps, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.bpu = shufflevector <2 x i32> %i.bpe, <2 x i32> %i.bpf, <5 x i32> <i32 1, i32 poison, i32 3, i32 poison, i32 poison>
  %i.bpv = shufflevector <5 x i32> %i.bpu, <5 x i32> %i.bps, <4 x i32> <i32 0, i32 6, i32 2, i32 poison>
  %i.bpw = insertelement <4 x i32> %i.bpv, i32 %i.bpd, i64 3
  %i.bpx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bpw, <4 x i32> %i.bpg, <4 x i32> <i32 13, i32 7, i32 8, i32 2>)
  %i.bpy = shufflevector <4 x i32> %i.bpx, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bpz = shufflevector <16 x i32> %i.bpy, <16 x i32> %i.bpq, <16 x i32> <i32 16, i32 0, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqa = lshr <4 x i32> %i.bpt, <i32 6, i32 12, i32 5, i32 11>
  %i.bqb = shufflevector <4 x i32> %i.bqa, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.bqc = shufflevector <16 x i32> %i.bpz, <16 x i32> %i.bqb, <16 x i32> <i32 0, i32 1, i32 16, i32 3, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqd = shufflevector <16 x i32> %i.bqc, <16 x i32> %i.bpr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqe = shufflevector <16 x i32> %i.bqd, <16 x i32> %i.bqb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 18, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqf = shufflevector <16 x i32> %i.bqe, <16 x i32> %i.bpy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 18, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqg = shufflevector <16 x i32> %i.bqf, <16 x i32> %i.bqb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 19, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bqh = insertelement <16 x i32> %i.bqg, i32 %i.bpj, i64 11
  %i.bqi = lshr i32 %i.bpi, 4
  %i.bqj = insertelement <16 x i32> %i.bqh, i32 %i.bqi, i64 12
  %i.bqk = insertelement <16 x i32> %i.bqj, i32 %i.bpm, i64 13
  %i.bql = lshr i32 %i.bpl, 10
  %i.bqm = insertelement <16 x i32> %i.bqk, i32 %i.bql, i64 14
  %.sroa.0129.60.vec.insert.i.i = insertelement <16 x i32> %i.bqm, i32 %i.bpp, i64 15
  %50 = and <16 x i32> %.sroa.0129.60.vec.insert.i.i, splat (i32 524287)
  store <16 x i32> %50, ptr %.02630.i508, align 1, !tbaa !10
  %i.bqn = load i32, ptr %i.bpn, align 1
  %i.bqo = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 40 ; 2 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 44 ; 2 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 48
  %i.bqr = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 52 ; 2 uses
  %i.bqs = load <2 x i32>, ptr %i.bqp, align 1
  %i.bqt = load <2 x i32>, ptr %i.bqq, align 1
  %i.bqu = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bqt, <2 x i32> %i.bqs, <2 x i32> <i32 4, i32 17>)
  %i.bqv = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 60
  %i.bqw = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 64 ; 2 uses
  %i.bqx = load <2 x i32>, ptr %i.bqo, align 1    ; 2 uses
  %i.bqy = load i32, ptr %i.bqp, align 1
  %i.bqz = load i32, ptr %i.bqo, align 1          ; 2 uses
  %i.bra = tail call i32 @llvm.fshl.i32(i32 %i.bqz, i32 %i.bqn, i32 16)
  %i.brb = load <2 x i32>, ptr %i.bqr, align 1    ; 2 uses
  %i.brc = load <2 x i32>, ptr %i.bqv, align 1
  %i.brd = shufflevector <2 x i32> %i.bqx, <2 x i32> %i.brb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bre = shufflevector <2 x i32> %i.brc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.brf = shufflevector <4 x i32> %i.brd, <4 x i32> %i.bre, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.brg = shufflevector <2 x i32> %i.bqx, <2 x i32> %i.brb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.brh = shufflevector <4 x i32> %i.brg, <4 x i32> %i.bre, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bri = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.brf, <4 x i32> %i.brh, <4 x i32> <i32 10, i32 11, i32 5, i32 18>)
  %i.brj = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 68
  %i.brk = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 72
  %i.brl = load i32, ptr %i.brk, align 1          ; 2 uses
  %i.brm = insertelement <16 x i32> poison, i32 %i.bra, i64 0
  %i.brn = lshr i32 %i.bqz, 3
  %i.bro = insertelement <16 x i32> %i.brm, i32 %i.brn, i64 1
  %i.brp = shufflevector <4 x i32> %i.bri, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.brq = shufflevector <16 x i32> %i.bro, <16 x i32> %i.brp, <16 x i32> <i32 0, i32 1, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brr = lshr i32 %i.bqy, 9
  %i.brs = insertelement <16 x i32> %i.brq, i32 %i.brr, i64 3
  %i.brt = shufflevector <2 x i32> %i.bqu, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bru = shufflevector <16 x i32> %i.brs, <16 x i32> %i.brt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brv = load <2 x i32>, ptr %i.bqr, align 1
  %i.brw = load <2 x i32>, ptr %i.bqw, align 1
  %i.brx = load i32, ptr %i.brj, align 1          ; 2 uses
  %i.bry = load i32, ptr %i.bqw, align 1
  %i.brz = tail call i32 @llvm.fshl.i32(i32 %i.brx, i32 %i.bry, i32 12)
  %i.bsa = tail call i32 @llvm.fshl.i32(i32 %i.brl, i32 %i.brx, i32 6)
  %i.bsb = shufflevector <2 x i32> %i.brw, <2 x i32> %i.brv, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bsc = lshr <4 x i32> %i.bsb, <i32 2, i32 8, i32 1, i32 7>
  %i.bsd = shufflevector <4 x i32> %i.bsc, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bse = shufflevector <16 x i32> %i.bru, <16 x i32> %i.bsd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bsf = shufflevector <16 x i32> %i.bse, <16 x i32> %i.brp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 17, i32 poison, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bsg = shufflevector <16 x i32> %i.bsf, <16 x i32> %i.bsd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 17, i32 9, i32 10, i32 18, i32 poison, i32 19, i32 poison, i32 poison>
  %i.bsh = insertelement <16 x i32> %i.bsg, i32 %i.brz, i64 12
  %i.bsi = insertelement <16 x i32> %i.bsh, i32 %i.bsa, i64 14
  %i.bsj = lshr i32 %i.brl, 13
  %.sroa.0149.60.vec.insert.i.i = insertelement <16 x i32> %i.bsi, i32 %i.bsj, i64 15
  %i.bsk = getelementptr inbounds nuw i8, ptr %.02630.i508, i64 64
  %51 = and <16 x i32> %.sroa.0149.60.vec.insert.i.i, splat (i32 524287)
  store <16 x i32> %51, ptr %i.bsk, align 1, !tbaa !10
  %i.bsl = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 76 ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %.02630.i508, i64 128 ; 2 uses
  %i.bsn = add nuw nsw i32 %.032.i506, 1          ; 2 uses
  %exitcond.not.i509 = icmp eq i32 %i.bsn, %i.bny
  br i1 %exitcond.not.i509, label %._crit_edge.i497, label %.lr.ph.i505, !llvm.loop !222

bb.ao:                                            ; preds = %bb.a
  %i.bso = mul nsw i32 %2, 20
  %i.bsp = add nsw i32 %4, %i.bso
  %i.bsq = icmp sgt i32 %2, 0
  br i1 %i.bsq, label %.lr.ph.i.i531, label %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i531:                                    ; preds = %bb.ao, %bb.ap
  %.026.i.i532 = phi ptr [ %i.btg, %bb.ap ], [ %1, %bb.ao ] ; 2 uses
  %.02325.i.i533 = phi i32 [ %i.bst, %bb.ap ], [ %4, %bb.ao ] ; 5 uses
  %i.bsr = srem i32 %.02325.i.i533, 8             ; 2 uses
  %i.bss = sdiv i32 %.02325.i.i533, 8             ; 2 uses
  %.not.i.i534 = icmp eq i32 %i.bsr, 0
  br i1 %.not.i.i534, label %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i531
  %i.bst = add nsw i32 %.02325.i.i533, 20         ; 3 uses
  %i.bsu = add nsw i32 %.02325.i.i533, 19
  %i.bsv = sdiv i32 %i.bsu, 8
  %i.bsw = sub nsw i32 %i.bsv, %i.bss             ; 2 uses
  %i.bsx = add nsw i32 %i.bsw, 1
  %i.bsy = icmp slt i32 %i.bsw, 4
  tail call void @llvm.assume(i1 %i.bsy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8, !tbaa !12
  %i.bsz = sext i32 %i.bss to i64
  %i.bta = getelementptr inbounds i8, ptr %0, i64 %i.bsz
  %i.btb = sext i32 %i.bsx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr readonly align 1 %i.bta, i64 %i.btb, i1 false)
  %.0..0..0..0..0..0..0..0..i.i535 = load i64, ptr %i.x, align 8, !tbaa !12
  %i.btc = zext nneg i32 %i.bsr to i64
  %i.btd = lshr i64 %.0..0..0..0..0..0..0..0..i.i535, %i.btc
  %i.bte = trunc i64 %i.btd to i32
  %i.btf = and i32 %i.bte, 1048575
  store i32 %i.btf, ptr %.026.i.i532, align 4, !tbaa !6
  %i.btg = getelementptr inbounds nuw i8, ptr %.026.i.i532, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.bth = icmp slt i32 %i.bst, %i.bsp
  br i1 %i.bth, label %.lr.ph.i.i531, label %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !223

_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ap, %.lr.ph.i.i531, %bb.ao
  %.023.lcssa.i.i515 = phi i32 [ %4, %bb.ao ], [ %i.bst, %bb.ap ], [ %.02325.i.i533, %.lr.ph.i.i531 ]
  %i.bti = sub nsw i32 %.023.lcssa.i.i515, %4
  %i.btj = sdiv i32 %i.bti, 20                    ; 3 uses
  %i.btk = mul nsw i32 %i.btj, 20
  %i.btl = add nsw i32 %i.btk, %4
  %i.btm = sub nsw i32 %2, %i.btj                 ; 4 uses
  %i.btn = sdiv i32 %i.btl, 8
  %i.bto = sext i32 %i.btn to i64
  %i.btp = getelementptr inbounds i8, ptr %0, i64 %i.bto ; 2 uses
  %i.btq = sext i32 %i.btj to i64
  %i.btr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.btq ; 2 uses
  %i.bts = sdiv i32 %i.btm, 32                    ; 2 uses
  %i.btt = icmp sgt i32 %i.btm, 31
  br i1 %i.btt, label %.lr.ph.i524, label %._crit_edge.i516

._crit_edge.i516:                                 ; preds = %.lr.ph.i524, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i517 = phi ptr [ %i.btr, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.byk, %.lr.ph.i524 ]
  %.025.lcssa.i518 = phi ptr [ %i.btp, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.byj, %.lr.ph.i524 ]
  %i.btu = shl nsw i32 %i.bts, 5                  ; 2 uses
  %i.btv = sub nsw i32 %i.btm, %i.btu             ; 2 uses
  %i.btw = icmp samesign ult i32 %i.btv, 32
  tail call void @llvm.assume(i1 %i.btw)
  %i.btx = mul nuw nsw i32 %i.btv, 20
  %.not.i519 = icmp eq i32 %i.btm, %i.btu
  br i1 %.not.i519, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i520

.lr.ph.i28.i520:                                  ; preds = %._crit_edge.i516, %.lr.ph.i28.i520
  %.024.i.i521 = phi ptr [ %i.bun, %.lr.ph.i28.i520 ], [ %.026.lcssa.i517, %._crit_edge.i516 ] ; 2 uses
  %.02223.i.i522 = phi i32 [ %i.btz, %.lr.ph.i28.i520 ], [ 0, %._crit_edge.i516 ] ; 4 uses
  %i.bty = lshr i32 %.02223.i.i522, 3             ; 2 uses
  %i.btz = add nuw nsw i32 %.02223.i.i522, 20     ; 2 uses
  %i.bua = add nuw nsw i32 %.02223.i.i522, 16
  %i.bub = lshr i32 %i.bua, 3
  %i.buc = sub nsw i32 %i.bub, %i.bty             ; 2 uses
  %i.bud = add nsw i32 %i.buc, 1
  %i.bue = icmp slt i32 %i.buc, 3
  tail call void @llvm.assume(i1 %i.bue)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8, !tbaa !12
  %i.buf = zext nneg i32 %i.bty to i64
  %i.bug = getelementptr inbounds nuw i8, ptr %.025.lcssa.i518, i64 %i.buf
  %i.buh = sext i32 %i.bud to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 1 %i.bug, i64 %i.buh, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i523 = load i64, ptr %i.w, align 8, !tbaa !12
  %i.bui = and i32 %.02223.i.i522, 4
  %i.buj = zext nneg i32 %i.bui to i64
  %i.buk = lshr i64 %.0..0..0..0..0..0..0..0..i29.i523, %i.buj
  %i.bul = trunc i64 %i.buk to i32
  %i.bum = and i32 %i.bul, 1048575
  store i32 %i.bum, ptr %.024.i.i521, align 4, !tbaa !6
  %i.bun = getelementptr inbounds nuw i8, ptr %.024.i.i521, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.buo = icmp samesign ult i32 %i.btz, %i.btx
  br i1 %i.buo, label %.lr.ph.i28.i520, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !224

.lr.ph.i524:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i524
  %.032.i525 = phi i32 [ %i.byl, %.lr.ph.i524 ], [ 0, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i526 = phi ptr [ %i.byj, %.lr.ph.i524 ], [ %i.btp, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ] ; 21 uses
  %.02630.i527 = phi ptr [ %i.byk, %.lr.ph.i524 ], [ %i.btr, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bup = load i32, ptr %.02531.i526, align 1    ; 2 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 4 ; 2 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 8
  %i.bus = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 12
  %i.but = load i32, ptr %i.buq, align 1          ; 2 uses
  %i.buu = load <2 x i32>, ptr %i.buq, align 1
  %i.buv = tail call i32 @llvm.fshl.i32(i32 %i.but, i32 %i.bup, i32 12)
  %i.buw = load i32, ptr %i.bus, align 1          ; 2 uses
  %i.bux = load <2 x i32>, ptr %i.bur, align 1
  %i.buy = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bux, <2 x i32> %i.buu, <2 x i32> <i32 4, i32 16>)
  %i.buz = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 16
  %i.bva = load i32, ptr %i.buz, align 1          ; 2 uses
  %i.bvb = tail call i32 @llvm.fshl.i32(i32 %i.bva, i32 %i.buw, i32 8)
  %i.bvc = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 20
  %i.bvd = load i32, ptr %i.bvc, align 1          ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 24 ; 2 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 28
  %i.bvg = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 32
  %i.bvh = load i32, ptr %i.bve, align 1          ; 2 uses
  %i.bvi = load <2 x i32>, ptr %i.bve, align 1
  %i.bvj = tail call i32 @llvm.fshl.i32(i32 %i.bvh, i32 %i.bvd, i32 12)
  %i.bvk = load i32, ptr %i.bvg, align 1          ; 2 uses
  %i.bvl = load <2 x i32>, ptr %i.bvf, align 1
  %i.bvm = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bvl, <2 x i32> %i.bvi, <2 x i32> <i32 4, i32 16>)
  %i.bvn = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 36
  %i.bvo = load i32, ptr %i.bvn, align 1          ; 2 uses
  %i.bvp = tail call i32 @llvm.fshl.i32(i32 %i.bvo, i32 %i.bvk, i32 8)
  %i.bvq = insertelement <16 x i32> poison, i32 %i.bup, i64 0
  %i.bvr = insertelement <16 x i32> %i.bvq, i32 %i.buv, i64 1
  %i.bvs = lshr i32 %i.but, 8
  %i.bvt = insertelement <16 x i32> %i.bvr, i32 %i.bvs, i64 2
  %i.bvu = shufflevector <2 x i32> %i.buy, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvv = shufflevector <16 x i32> %i.bvt, <16 x i32> %i.bvu, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvw = lshr i32 %i.buw, 4
  %i.bvx = insertelement <16 x i32> %i.bvv, i32 %i.bvw, i64 5
  %i.bvy = insertelement <16 x i32> %i.bvx, i32 %i.bvb, i64 6
  %i.bvz = lshr i32 %i.bva, 12
  %i.bwa = insertelement <16 x i32> %i.bvy, i32 %i.bvz, i64 7
  %i.bwb = insertelement <16 x i32> %i.bwa, i32 %i.bvd, i64 8
  %i.bwc = insertelement <16 x i32> %i.bwb, i32 %i.bvj, i64 9
  %i.bwd = lshr i32 %i.bvh, 8
  %i.bwe = insertelement <16 x i32> %i.bwc, i32 %i.bwd, i64 10
  %i.bwf = shufflevector <2 x i32> %i.bvm, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwg = shufflevector <16 x i32> %i.bwe, <16 x i32> %i.bwf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 poison, i32 poison, i32 poison>
  %i.bwh = lshr i32 %i.bvk, 4
  %i.bwi = insertelement <16 x i32> %i.bwg, i32 %i.bwh, i64 13
  %i.bwj = insertelement <16 x i32> %i.bwi, i32 %i.bvp, i64 14
  %i.bwk = lshr i32 %i.bvo, 12
  %.sroa.0127.60.vec.insert.i.i528 = insertelement <16 x i32> %i.bwj, i32 %i.bwk, i64 15
  %52 = and <16 x i32> %.sroa.0127.60.vec.insert.i.i528, splat (i32 1048575)
  store <16 x i32> %52, ptr %.02630.i527, align 1, !tbaa !10
  %i.bwl = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 40
  %i.bwm = load i32, ptr %i.bwl, align 1          ; 2 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 44 ; 2 uses
  %i.bwo = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 48
  %i.bwp = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 52
  %i.bwq = load i32, ptr %i.bwn, align 1          ; 2 uses
  %i.bwr = load <2 x i32>, ptr %i.bwn, align 1
  %i.bws = tail call i32 @llvm.fshl.i32(i32 %i.bwq, i32 %i.bwm, i32 12)
  %i.bwt = load i32, ptr %i.bwp, align 1          ; 2 uses
  %i.bwu = load <2 x i32>, ptr %i.bwo, align 1
  %i.bwv = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bwu, <2 x i32> %i.bwr, <2 x i32> <i32 4, i32 16>)
  %i.bww = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 56
  %i.bwx = load i32, ptr %i.bww, align 1          ; 2 uses
  %i.bwy = tail call i32 @llvm.fshl.i32(i32 %i.bwx, i32 %i.bwt, i32 8)
  %i.bwz = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 60
  %i.bxa = load i32, ptr %i.bwz, align 1          ; 2 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 64 ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 68
  %i.bxd = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 72
  %i.bxe = load i32, ptr %i.bxb, align 1          ; 2 uses
  %i.bxf = load <2 x i32>, ptr %i.bxb, align 1
  %i.bxg = tail call i32 @llvm.fshl.i32(i32 %i.bxe, i32 %i.bxa, i32 12)
  %i.bxh = load i32, ptr %i.bxd, align 1          ; 2 uses
  %i.bxi = load <2 x i32>, ptr %i.bxc, align 1
  %i.bxj = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bxi, <2 x i32> %i.bxf, <2 x i32> <i32 4, i32 16>)
  %i.bxk = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 76
  %i.bxl = load i32, ptr %i.bxk, align 1          ; 2 uses
  %i.bxm = tail call i32 @llvm.fshl.i32(i32 %i.bxl, i32 %i.bxh, i32 8)
  %i.bxn = insertelement <16 x i32> poison, i32 %i.bwm, i64 0
  %i.bxo = insertelement <16 x i32> %i.bxn, i32 %i.bws, i64 1
  %i.bxp = lshr i32 %i.bwq, 8
  %i.bxq = insertelement <16 x i32> %i.bxo, i32 %i.bxp, i64 2
  %i.bxr = shufflevector <2 x i32> %i.bwv, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxs = shufflevector <16 x i32> %i.bxq, <16 x i32> %i.bxr, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxt = lshr i32 %i.bwt, 4
  %i.bxu = insertelement <16 x i32> %i.bxs, i32 %i.bxt, i64 5
  %i.bxv = insertelement <16 x i32> %i.bxu, i32 %i.bwy, i64 6
  %i.bxw = lshr i32 %i.bwx, 12
  %i.bxx = insertelement <16 x i32> %i.bxv, i32 %i.bxw, i64 7
  %i.bxy = insertelement <16 x i32> %i.bxx, i32 %i.bxa, i64 8
  %i.bxz = insertelement <16 x i32> %i.bxy, i32 %i.bxg, i64 9
  %i.bya = lshr i32 %i.bxe, 8
  %i.byb = insertelement <16 x i32> %i.bxz, i32 %i.bya, i64 10
  %i.byc = shufflevector <2 x i32> %i.bxj, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.byd = shufflevector <16 x i32> %i.byb, <16 x i32> %i.byc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 poison, i32 poison, i32 poison>
  %i.bye = lshr i32 %i.bxh, 4
  %i.byf = insertelement <16 x i32> %i.byd, i32 %i.bye, i64 13
  %i.byg = insertelement <16 x i32> %i.byf, i32 %i.bxm, i64 14
  %i.byh = lshr i32 %i.bxl, 12
  %.sroa.0147.60.vec.insert.i.i529 = insertelement <16 x i32> %i.byg, i32 %i.byh, i64 15
  %i.byi = getelementptr inbounds nuw i8, ptr %.02630.i527, i64 64
  %53 = and <16 x i32> %.sroa.0147.60.vec.insert.i.i529, splat (i32 1048575)
  store <16 x i32> %53, ptr %i.byi, align 1, !tbaa !10
  %i.byj = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 80 ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %.02630.i527, i64 128 ; 2 uses
  %i.byl = add nuw nsw i32 %.032.i525, 1          ; 2 uses
  %exitcond.not.i530 = icmp eq i32 %i.byl, %i.bts
  br i1 %exitcond.not.i530, label %._crit_edge.i516, label %.lr.ph.i524, !llvm.loop !225

bb.aq:                                            ; preds = %bb.a
  %i.bym = mul nsw i32 %2, 21
  %i.byn = add nsw i32 %4, %i.bym
  %i.byo = icmp sgt i32 %2, 0
  br i1 %i.byo, label %.lr.ph.i.i551, label %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i551:                                    ; preds = %bb.aq, %bb.ar
  %.026.i.i552 = phi ptr [ %i.bze, %bb.ar ], [ %1, %bb.aq ] ; 2 uses
  %.02325.i.i553 = phi i32 [ %i.byr, %bb.ar ], [ %4, %bb.aq ] ; 5 uses
  %i.byp = srem i32 %.02325.i.i553, 8             ; 2 uses
  %i.byq = sdiv i32 %.02325.i.i553, 8             ; 2 uses
  %.not.i.i554 = icmp eq i32 %i.byp, 0
  br i1 %.not.i.i554, label %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i551
  %i.byr = add nsw i32 %.02325.i.i553, 21         ; 3 uses
  %i.bys = add nsw i32 %.02325.i.i553, 20
  %i.byt = sdiv i32 %i.bys, 8
  %i.byu = sub nsw i32 %i.byt, %i.byq             ; 2 uses
  %i.byv = add nsw i32 %i.byu, 1
  %i.byw = icmp slt i32 %i.byu, 4
  tail call void @llvm.assume(i1 %i.byw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8, !tbaa !12
  %i.byx = sext i32 %i.byq to i64
  %i.byy = getelementptr inbounds i8, ptr %0, i64 %i.byx
  %i.byz = sext i32 %i.byv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr readonly align 1 %i.byy, i64 %i.byz, i1 false)
  %.0..0..0..0..0..0..0..0..i.i555 = load i64, ptr %i.v, align 8, !tbaa !12
  %i.bza = zext nneg i32 %i.byp to i64
  %i.bzb = lshr i64 %.0..0..0..0..0..0..0..0..i.i555, %i.bza
  %i.bzc = trunc i64 %i.bzb to i32
  %i.bzd = and i32 %i.bzc, 2097151
  store i32 %i.bzd, ptr %.026.i.i552, align 4, !tbaa !6
  %i.bze = getelementptr inbounds nuw i8, ptr %.026.i.i552, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bzf = icmp slt i32 %i.byr, %i.byn
  br i1 %i.bzf, label %.lr.ph.i.i551, label %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !226

_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ar, %.lr.ph.i.i551, %bb.aq
  %.023.lcssa.i.i536 = phi i32 [ %4, %bb.aq ], [ %i.byr, %bb.ar ], [ %.02325.i.i553, %.lr.ph.i.i551 ]
  %i.bzg = sub nsw i32 %.023.lcssa.i.i536, %4
  %i.bzh = sdiv i32 %i.bzg, 21                    ; 3 uses
  %i.bzi = mul nsw i32 %i.bzh, 21
  %i.bzj = add nsw i32 %i.bzi, %4
  %i.bzk = sub nsw i32 %2, %i.bzh                 ; 4 uses
  %i.bzl = sdiv i32 %i.bzj, 8
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %0, i64 %i.bzm ; 2 uses
  %i.bzo = sext i32 %i.bzh to i64
  %i.bzp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bzo ; 2 uses
  %i.bzq = sdiv i32 %i.bzk, 32                    ; 2 uses
  %i.bzr = icmp sgt i32 %i.bzk, 31
  br i1 %i.bzr, label %.lr.ph.i545, label %._crit_edge.i537

._crit_edge.i537:                                 ; preds = %.lr.ph.i545, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i538 = phi ptr [ %i.bzp, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cel, %.lr.ph.i545 ]
  %.025.lcssa.i539 = phi ptr [ %i.bzn, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cek, %.lr.ph.i545 ]
  %i.bzs = shl nsw i32 %i.bzq, 5                  ; 2 uses
  %i.bzt = sub nsw i32 %i.bzk, %i.bzs             ; 2 uses
  %i.bzu = icmp samesign ult i32 %i.bzt, 32
  tail call void @llvm.assume(i1 %i.bzu)
  %i.bzv = mul nuw nsw i32 %i.bzt, 21
  %.not.i540 = icmp eq i32 %i.bzk, %i.bzs
  br i1 %.not.i540, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i541

.lr.ph.i28.i541:                                  ; preds = %._crit_edge.i537, %.lr.ph.i28.i541
  %.024.i.i542 = phi ptr [ %i.cal, %.lr.ph.i28.i541 ], [ %.026.lcssa.i538, %._crit_edge.i537 ] ; 2 uses
  %.02223.i.i543 = phi i32 [ %i.bzx, %.lr.ph.i28.i541 ], [ 0, %._crit_edge.i537 ] ; 4 uses
  %i.bzw = lshr i32 %.02223.i.i543, 3             ; 2 uses
  %i.bzx = add nuw nsw i32 %.02223.i.i543, 21     ; 2 uses
  %i.bzy = add nuw nsw i32 %.02223.i.i543, 20
  %i.bzz = lshr i32 %i.bzy, 3
  %i.caa = sub nsw i32 %i.bzz, %i.bzw             ; 2 uses
  %i.cab = add nsw i32 %i.caa, 1
  %i.cac = icmp slt i32 %i.caa, 4
  tail call void @llvm.assume(i1 %i.cac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8, !tbaa !12
  %i.cad = zext nneg i32 %i.bzw to i64
  %i.cae = getelementptr inbounds nuw i8, ptr %.025.lcssa.i539, i64 %i.cad
  %i.caf = sext i32 %i.cab to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 1 %i.cae, i64 %i.caf, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i544 = load i64, ptr %i.u, align 8, !tbaa !12
  %i.cag = and i32 %.02223.i.i543, 7
  %i.cah = zext nneg i32 %i.cag to i64
  %i.cai = lshr i64 %.0..0..0..0..0..0..0..0..i29.i544, %i.cah
  %i.caj = trunc i64 %i.cai to i32
  %i.cak = and i32 %i.caj, 2097151
  store i32 %i.cak, ptr %.024.i.i542, align 4, !tbaa !6
  %i.cal = getelementptr inbounds nuw i8, ptr %.024.i.i542, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cam = icmp samesign ult i32 %i.bzx, %i.bzv
  br i1 %i.cam, label %.lr.ph.i28.i541, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !227

.lr.ph.i545:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i545
  %.032.i546 = phi i32 [ %i.cem, %.lr.ph.i545 ], [ 0, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i547 = phi ptr [ %i.cek, %.lr.ph.i545 ], [ %i.bzn, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ] ; 20 uses
  %.02630.i548 = phi ptr [ %i.cel, %.lr.ph.i545 ], [ %i.bzp, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.can = load i32, ptr %.02531.i547, align 1    ; 2 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 4 ; 2 uses
  %i.cap = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 8
  %i.caq = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 12 ; 2 uses
  %i.car = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 16
  %i.cas = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 20
  %i.cat = load <2 x i32>, ptr %i.caq, align 1
  %i.cau = load i32, ptr %i.cao, align 1          ; 2 uses
  %i.cav = load <2 x i32>, ptr %i.cao, align 1
  %i.caw = tail call i32 @llvm.fshl.i32(i32 %i.cau, i32 %i.can, i32 11)
  %i.cax = load i32, ptr %i.caq, align 1
  %i.cay = load <2 x i32>, ptr %i.cap, align 1
  %i.caz = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cay, <2 x i32> %i.cav, <2 x i32> <i32 1, i32 12>)
  %i.cba = load i32, ptr %i.cas, align 1          ; 2 uses
  %i.cbb = load <2 x i32>, ptr %i.car, align 1
  %i.cbc = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cbb, <2 x i32> %i.cat, <2 x i32> <i32 2, i32 13>)
  %i.cbd = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 24
  %i.cbe = load i32, ptr %i.cbd, align 1          ; 2 uses
  %i.cbf = tail call i32 @llvm.fshl.i32(i32 %i.cbe, i32 %i.cba, i32 3)
  %i.cbg = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 28 ; 2 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 32
  %i.cbi = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 36
  %i.cbj = load i32, ptr %i.cbg, align 1          ; 2 uses
  %i.cbk = load <2 x i32>, ptr %i.cbg, align 1
  %i.cbl = tail call i32 @llvm.fshl.i32(i32 %i.cbj, i32 %i.cbe, i32 14)
  %i.cbm = load i32, ptr %i.cbi, align 1          ; 2 uses
  %i.cbn = load <2 x i32>, ptr %i.cbh, align 1
  %i.cbo = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cbn, <2 x i32> %i.cbk, <2 x i32> <i32 4, i32 15>)
  %i.cbp = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 40 ; 2 uses
  %i.cbq = load i32, ptr %i.cbp, align 1
  %i.cbr = tail call i32 @llvm.fshl.i32(i32 %i.cbq, i32 %i.cbm, i32 5)
  %i.cbs = insertelement <16 x i32> poison, i32 %i.can, i64 0
  %i.cbt = insertelement <16 x i32> %i.cbs, i32 %i.caw, i64 1
  %i.cbu = lshr i32 %i.cau, 10
  %i.cbv = insertelement <16 x i32> %i.cbt, i32 %i.cbu, i64 2
  %i.cbw = shufflevector <2 x i32> %i.caz, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cbx = shufflevector <16 x i32> %i.cbv, <16 x i32> %i.cbw, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cby = lshr i32 %i.cax, 9
  %i.cbz = insertelement <16 x i32> %i.cbx, i32 %i.cby, i64 5
  %i.cca = shufflevector <2 x i32> %i.cbc, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ccb = shufflevector <16 x i32> %i.cbz, <16 x i32> %i.cca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ccc = lshr i32 %i.cba, 8
  %i.ccd = insertelement <16 x i32> %i.ccb, i32 %i.ccc, i64 8
  %i.cce = insertelement <16 x i32> %i.ccd, i32 %i.cbf, i64 9
  %i.ccf = insertelement <16 x i32> %i.cce, i32 %i.cbl, i64 10
  %i.ccg = lshr i32 %i.cbj, 7
  %i.cch = insertelement <16 x i32> %i.ccf, i32 %i.ccg, i64 11
  %i.cci = shufflevector <2 x i32> %i.cbo, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ccj = shufflevector <16 x i32> %i.cch, <16 x i32> %i.cci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.cck = lshr i32 %i.cbm, 6
  %i.ccl = insertelement <16 x i32> %i.ccj, i32 %i.cck, i64 14
  %.sroa.0131.60.vec.insert.i.i549 = insertelement <16 x i32> %i.ccl, i32 %i.cbr, i64 15
  %54 = and <16 x i32> %.sroa.0131.60.vec.insert.i.i549, splat (i32 2097151)
  store <16 x i32> %54, ptr %.02630.i548, align 1, !tbaa !10
  %i.ccm = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 44
  %i.ccn = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 52 ; 2 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 56
  %i.ccp = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 60 ; 2 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 64
  %i.ccr = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 68 ; 2 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 72
  %i.cct = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 76 ; 2 uses
  %i.ccu = load <2 x i32>, ptr %i.ccr, align 1
  %i.ccv = load <2 x i32>, ptr %i.ccp, align 1
  %i.ccw = load <2 x i32>, ptr %i.ccn, align 1
  %i.ccx = load i32, ptr %i.ccp, align 1
  %i.ccy = load <2 x i32>, ptr %i.cco, align 1
  %i.ccz = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ccy, <2 x i32> %i.ccw, <2 x i32> <i32 7, i32 18>)
  %i.cda = load i32, ptr %i.ccr, align 1
  %i.cdb = load <2 x i32>, ptr %i.ccq, align 1
  %i.cdc = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cdb, <2 x i32> %i.ccv, <2 x i32> <i32 8, i32 19>)
  %i.cdd = load <2 x i32>, ptr %i.ccs, align 1
  %i.cde = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cdd, <2 x i32> %i.ccu, <2 x i32> <i32 9, i32 20>)
  %i.cdf = load <4 x i32>, ptr %i.cbp, align 1    ; 2 uses
  %i.cdg = load i32, ptr %i.ccn, align 1
  %i.cdh = load i32, ptr %i.ccm, align 1
  %i.cdi = load <2 x i32>, ptr %i.cct, align 1
  %i.cdj = shufflevector <2 x i32> %i.cdi, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cdk = shufflevector <4 x i32> %i.cdf, <4 x i32> %i.cdj, <4 x i32> <i32 1, i32 2, i32 3, i32 5>
  %i.cdl = shufflevector <4 x i32> %i.cdf, <4 x i32> %i.cdj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cdm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cdk, <4 x i32> %i.cdl, <4 x i32> <i32 16, i32 6, i32 17, i32 10>) ; 2 uses
  %i.cdn = lshr i32 %i.cdh, 5
  %i.cdo = shufflevector <4 x i32> %i.cdm, <4 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cdp = insertelement <16 x i32> %i.cdo, i32 %i.cdn, i64 1
  %i.cdq = lshr i32 %i.cdg, 4
  %i.cdr = insertelement <16 x i32> %i.cdp, i32 %i.cdq, i64 4
  %i.cds = shufflevector <2 x i32> %i.ccz, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cdt = shufflevector <16 x i32> %i.cdr, <16 x i32> %i.cds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cdu = lshr i32 %i.ccx, 3
  %i.cdv = insertelement <16 x i32> %i.cdt, i32 %i.cdu, i64 7
  %i.cdw = shufflevector <2 x i32> %i.cdc, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cdx = shufflevector <16 x i32> %i.cdv, <16 x i32> %i.cdw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cdy = lshr i32 %i.cda, 2
  %i.cdz = insertelement <16 x i32> %i.cdx, i32 %i.cdy, i64 10
  %i.cea = shufflevector <2 x i32> %i.cde, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ceb = shufflevector <16 x i32> %i.cdz, <16 x i32> %i.cea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 poison, i32 poison, i32 poison>
  %i.cec = shufflevector <4 x i32> %i.cdm, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ced = load <2 x i32>, ptr %i.cct, align 1
  %i.cee = lshr <2 x i32> %i.ced, <i32 1, i32 11>
  %i.cef = shufflevector <2 x i32> %i.cee, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ceg = shufflevector <16 x i32> %i.ceb, <16 x i32> %i.cef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 poison, i32 poison>
  %i.ceh = shufflevector <16 x i32> %i.ceg, <16 x i32> %i.cec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 19, i32 poison>
  %i.cei = shufflevector <16 x i32> %i.ceh, <16 x i32> %i.cef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 17>
  %i.cej = getelementptr inbounds nuw i8, ptr %.02630.i548, i64 64
  %55 = and <16 x i32> %i.cei, splat (i32 2097151)
  store <16 x i32> %55, ptr %i.cej, align 1, !tbaa !10
  %i.cek = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 84 ; 2 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %.02630.i548, i64 128 ; 2 uses
  %i.cem = add nuw nsw i32 %.032.i546, 1          ; 2 uses
  %exitcond.not.i550 = icmp eq i32 %i.cem, %i.bzq
  br i1 %exitcond.not.i550, label %._crit_edge.i537, label %.lr.ph.i545, !llvm.loop !228

bb.as:                                            ; preds = %bb.a
  %i.cen = mul nsw i32 %2, 22
  %i.ceo = add nsw i32 %4, %i.cen
  %i.cep = icmp sgt i32 %2, 0
  br i1 %i.cep, label %.lr.ph.i.i572, label %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i572:                                    ; preds = %bb.as, %bb.at
  %.026.i.i573 = phi ptr [ %i.cff, %bb.at ], [ %1, %bb.as ] ; 2 uses
  %.02325.i.i574 = phi i32 [ %i.ces, %bb.at ], [ %4, %bb.as ] ; 5 uses
  %i.ceq = srem i32 %.02325.i.i574, 8             ; 2 uses
  %i.cer = sdiv i32 %.02325.i.i574, 8             ; 2 uses
  %.not.i.i575 = icmp eq i32 %i.ceq, 0
  br i1 %.not.i.i575, label %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i572
  %i.ces = add nsw i32 %.02325.i.i574, 22         ; 3 uses
  %i.cet = add nsw i32 %.02325.i.i574, 21
  %i.ceu = sdiv i32 %i.cet, 8
  %i.cev = sub nsw i32 %i.ceu, %i.cer             ; 2 uses
  %i.cew = add nsw i32 %i.cev, 1
  %i.cex = icmp slt i32 %i.cev, 4
  tail call void @llvm.assume(i1 %i.cex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8, !tbaa !12
  %i.cey = sext i32 %i.cer to i64
  %i.cez = getelementptr inbounds i8, ptr %0, i64 %i.cey
  %i.cfa = sext i32 %i.cew to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr readonly align 1 %i.cez, i64 %i.cfa, i1 false)
  %.0..0..0..0..0..0..0..0..i.i576 = load i64, ptr %i.t, align 8, !tbaa !12
  %i.cfb = zext nneg i32 %i.ceq to i64
  %i.cfc = lshr i64 %.0..0..0..0..0..0..0..0..i.i576, %i.cfb
  %i.cfd = trunc i64 %i.cfc to i32
  %i.cfe = and i32 %i.cfd, 4194303
  store i32 %i.cfe, ptr %.026.i.i573, align 4, !tbaa !6
  %i.cff = getelementptr inbounds nuw i8, ptr %.026.i.i573, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.cfg = icmp slt i32 %i.ces, %i.ceo
  br i1 %i.cfg, label %.lr.ph.i.i572, label %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !229

_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.at, %.lr.ph.i.i572, %bb.as
  %.023.lcssa.i.i556 = phi i32 [ %4, %bb.as ], [ %i.ces, %bb.at ], [ %.02325.i.i574, %.lr.ph.i.i572 ]
  %i.cfh = sub nsw i32 %.023.lcssa.i.i556, %4
  %i.cfi = sdiv i32 %i.cfh, 22                    ; 3 uses
  %i.cfj = mul nsw i32 %i.cfi, 22
  %i.cfk = add nsw i32 %i.cfj, %4
  %i.cfl = sub nsw i32 %2, %i.cfi                 ; 4 uses
  %i.cfm = sdiv i32 %i.cfk, 8
  %i.cfn = sext i32 %i.cfm to i64
  %i.cfo = getelementptr inbounds i8, ptr %0, i64 %i.cfn ; 2 uses
  %i.cfp = sext i32 %i.cfi to i64
  %i.cfq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cfp ; 2 uses
  %i.cfr = sdiv i32 %i.cfl, 32                    ; 2 uses
  %i.cfs = icmp sgt i32 %i.cfl, 31
  br i1 %i.cfs, label %.lr.ph.i565, label %._crit_edge.i557

._crit_edge.i557:                                 ; preds = %.lr.ph.i565, %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i558 = phi ptr [ %i.cfq, %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cjr, %.lr.ph.i565 ]
  %.025.lcssa.i559 = phi ptr [ %i.cfo, %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cjq, %.lr.ph.i565 ]
  %i.cft = shl nsw i32 %i.cfr, 5                  ; 2 uses
  %i.cfu = sub nsw i32 %i.cfl, %i.cft             ; 2 uses
  %i.cfv = icmp samesign ult i32 %i.cfu, 32
  tail call void @llvm.assume(i1 %i.cfv)
  %i.cfw = mul nuw nsw i32 %i.cfu, 22
  %.not.i560 = icmp eq i32 %i.cfl, %i.cft
  br i1 %.not.i560, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i561

.lr.ph.i28.i561:                                  ; preds = %._crit_edge.i557, %.lr.ph.i28.i561
  %.024.i.i562 = phi ptr [ %i.cgm, %.lr.ph.i28.i561 ], [ %.026.lcssa.i558, %._crit_edge.i557 ] ; 2 uses
  %.02223.i.i563 = phi i32 [ %i.cfy, %.lr.ph.i28.i561 ], [ 0, %._crit_edge.i557 ] ; 4 uses
  %i.cfx = lshr i32 %.02223.i.i563, 3             ; 2 uses
  %i.cfy = add nuw nsw i32 %.02223.i.i563, 22     ; 2 uses
  %i.cfz = add nuw nsw i32 %.02223.i.i563, 20
  %i.cga = lshr i32 %i.cfz, 3
  %i.cgb = sub nsw i32 %i.cga, %i.cfx             ; 2 uses
  %i.cgc = add nsw i32 %i.cgb, 1
  %i.cgd = icmp slt i32 %i.cgb, 4
  tail call void @llvm.assume(i1 %i.cgd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8, !tbaa !12
  %i.cge = zext nneg i32 %i.cfx to i64
  %i.cgf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i559, i64 %i.cge
  %i.cgg = sext i32 %i.cgc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 1 %i.cgf, i64 %i.cgg, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i564 = load i64, ptr %i.s, align 8, !tbaa !12
  %i.cgh = and i32 %.02223.i.i563, 6
  %i.cgi = zext nneg i32 %i.cgh to i64
  %i.cgj = lshr i64 %.0..0..0..0..0..0..0..0..i29.i564, %i.cgi
  %i.cgk = trunc i64 %i.cgj to i32
  %i.cgl = and i32 %i.cgk, 4194303
  store i32 %i.cgl, ptr %.024.i.i562, align 4, !tbaa !6
  %i.cgm = getelementptr inbounds nuw i8, ptr %.024.i.i562, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cgn = icmp samesign ult i32 %i.cfy, %i.cfw
  br i1 %i.cgn, label %.lr.ph.i28.i561, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !230

.lr.ph.i565:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i565
  %.032.i566 = phi i32 [ %i.cjs, %.lr.ph.i565 ], [ 0, %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i567 = phi ptr [ %i.cjq, %.lr.ph.i565 ], [ %i.cfo, %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i ] ; 19 uses
  %.02630.i568 = phi ptr [ %i.cjr, %.lr.ph.i565 ], [ %i.cfq, %_ZN5arrow8internal12unpack_exactILi22ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.cgo = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 4
  %i.cgp = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 8 ; 2 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 12
  %i.cgr = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 16
  %i.cgs = load <2 x i32>, ptr %i.cgp, align 1
  %i.cgt = load <2 x i32>, ptr %.02531.i567, align 1 ; 2 uses
  %i.cgu = load i32, ptr %i.cgp, align 1
  %i.cgv = load <2 x i32>, ptr %i.cgo, align 1
  %i.cgw = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cgv, <2 x i32> %i.cgt, <2 x i32> <i32 10, i32 20>)
  %i.cgx = load <2 x i32>, ptr %i.cgq, align 1
  %i.cgy = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cgx, <2 x i32> %i.cgs, <2 x i32> <i32 8, i32 18>)
  %i.cgz = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 20
  %i.cha = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 32
  %i.chb = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 36
  %i.chc = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 40
  %i.chd = load <2 x i32>, ptr %i.cha, align 1
  %i.che = load <4 x i32>, ptr %i.cgr, align 1    ; 2 uses
  %i.chf = load <4 x i32>, ptr %i.cgz, align 1    ; 2 uses
  %i.chg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.chf, <4 x i32> %i.che, <4 x i32> <i32 6, i32 16, i32 4, i32 14>)
  %i.chh = load i32, ptr %i.chc, align 1
  %i.chi = load <2 x i32>, ptr %i.chb, align 1
  %i.chj = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.chi, <2 x i32> %i.chd, <2 x i32> <i32 2, i32 12>)
  %i.chk = shufflevector <2 x i32> %i.cgt, <2 x i32> %i.cgw, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chl = shufflevector <2 x i32> %i.cgy, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chm = shufflevector <4 x i32> %i.chg, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chn = shufflevector <4 x i32> %i.che, <4 x i32> %i.chf, <4 x i32> <i32 poison, i32 0, i32 5, i32 7>
  %i.cho = insertelement <4 x i32> %i.chn, i32 %i.cgu, i64 0
  %i.chp = lshr <4 x i32> %i.cho, <i32 2, i32 4, i32 6, i32 8>
  %i.chq = shufflevector <4 x i32> %i.chp, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.chr = shufflevector <16 x i32> %i.chk, <16 x i32> %i.chq, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chs = shufflevector <16 x i32> %i.chr, <16 x i32> %i.chl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cht = shufflevector <16 x i32> %i.chs, <16 x i32> %i.chq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chu = shufflevector <16 x i32> %i.cht, <16 x i32> %i.chm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 16, i32 17, i32 poison, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chv = shufflevector <16 x i32> %i.chu, <16 x i32> %i.chq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 18, i32 10, i32 11, i32 19, i32 poison, i32 poison, i32 poison>
  %i.chw = shufflevector <2 x i32> %i.chj, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chx = shufflevector <16 x i32> %i.chv, <16 x i32> %i.chw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.chy = lshr i32 %i.chh, 10
  %.sroa.0131.60.vec.insert.i.i569 = insertelement <16 x i32> %i.chx, i32 %i.chy, i64 15
  %56 = and <16 x i32> %.sroa.0131.60.vec.insert.i.i569, splat (i32 4194303)
  store <16 x i32> %56, ptr %.02630.i568, align 1, !tbaa !10
  %i.chz = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 44
  %i.cia = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 48
  %i.cib = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 52 ; 2 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 56
  %i.cid = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 60
  %i.cie = load <2 x i32>, ptr %i.cib, align 1
  %i.cif = load <2 x i32>, ptr %i.chz, align 1    ; 2 uses
  %i.cig = load i32, ptr %i.cib, align 1
  %i.cih = load <2 x i32>, ptr %i.cia, align 1
  %i.cii = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cih, <2 x i32> %i.cif, <2 x i32> <i32 10, i32 20>)
  %i.cij = load <2 x i32>, ptr %i.cic, align 1
  %i.cik = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cij, <2 x i32> %i.cie, <2 x i32> <i32 8, i32 18>)
  %i.cil = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 64
  %i.cim = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 76
  %i.cin = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 80
  %i.cio = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 84
  %i.cip = load <2 x i32>, ptr %i.cim, align 1
  %i.ciq = load <4 x i32>, ptr %i.cid, align 1    ; 2 uses
  %i.cir = load <4 x i32>, ptr %i.cil, align 1    ; 3 uses
  %i.cis = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cir, <4 x i32> %i.ciq, <4 x i32> <i32 6, i32 16, i32 4, i32 14>)
  %i.cit = load i32, ptr %i.cio, align 1
  %i.ciu = load <2 x i32>, ptr %i.cin, align 1
  %i.civ = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ciu, <2 x i32> %i.cip, <2 x i32> <i32 2, i32 12>)
  %i.ciw = shufflevector <2 x i32> %i.cif, <2 x i32> %i.cii, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cix = lshr i32 %i.cig, 2
  %i.ciy = insertelement <16 x i32> %i.ciw, i32 %i.cix, i64 3
  %i.ciz = shufflevector <2 x i32> %i.cik, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cja = shufflevector <16 x i32> %i.ciy, <16 x i32> %i.ciz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cjb = extractelement <4 x i32> %i.ciq, i64 0
  %i.cjc = lshr i32 %i.cjb, 4
  %i.cjd = insertelement <16 x i32> %i.cja, i32 %i.cjc, i64 6
  %i.cje = extractelement <4 x i32> %i.cir, i64 1
  %i.cjf = lshr i32 %i.cje, 6
  %i.cjg = shufflevector <4 x i32> %i.cis, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cjh = shufflevector <16 x i32> %i.cjd, <16 x i32> %i.cjg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 16, i32 17, i32 poison, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cji = insertelement <16 x i32> %i.cjh, i32 %i.cjf, i64 9
  %i.cjj = extractelement <4 x i32> %i.cir, i64 3
  %i.cjk = lshr i32 %i.cjj, 8
  %i.cjl = insertelement <16 x i32> %i.cji, i32 %i.cjk, i64 12
  %i.cjm = shufflevector <2 x i32> %i.civ, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cjn = shufflevector <16 x i32> %i.cjl, <16 x i32> %i.cjm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.cjo = lshr i32 %i.cit, 10
  %.sroa.0151.60.vec.insert.i.i570 = insertelement <16 x i32> %i.cjn, i32 %i.cjo, i64 15
  %i.cjp = getelementptr inbounds nuw i8, ptr %.02630.i568, i64 64
  %57 = and <16 x i32> %.sroa.0151.60.vec.insert.i.i570, splat (i32 4194303)
  store <16 x i32> %57, ptr %i.cjp, align 1, !tbaa !10
  %i.cjq = getelementptr inbounds nuw i8, ptr %.02531.i567, i64 88 ; 2 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %.02630.i568, i64 128 ; 2 uses
  %i.cjs = add nuw nsw i32 %.032.i566, 1          ; 2 uses
  %exitcond.not.i571 = icmp eq i32 %i.cjs, %i.cfr
  br i1 %exitcond.not.i571, label %._crit_edge.i557, label %.lr.ph.i565, !llvm.loop !231

bb.au:                                            ; preds = %bb.a
  %i.cjt = mul nsw i32 %2, 23
  %i.cju = add nsw i32 %4, %i.cjt
  %i.cjv = icmp sgt i32 %2, 0
  br i1 %i.cjv, label %.lr.ph.i.i592, label %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i592:                                    ; preds = %bb.au, %bb.av
  %.026.i.i593 = phi ptr [ %i.ckl, %bb.av ], [ %1, %bb.au ] ; 2 uses
  %.02325.i.i594 = phi i32 [ %i.cjy, %bb.av ], [ %4, %bb.au ] ; 5 uses
  %i.cjw = srem i32 %.02325.i.i594, 8             ; 2 uses
  %i.cjx = sdiv i32 %.02325.i.i594, 8             ; 2 uses
  %.not.i.i595 = icmp eq i32 %i.cjw, 0
  br i1 %.not.i.i595, label %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i592
  %i.cjy = add nsw i32 %.02325.i.i594, 23         ; 3 uses
  %i.cjz = add nsw i32 %.02325.i.i594, 22
  %i.cka = sdiv i32 %i.cjz, 8
  %i.ckb = sub nsw i32 %i.cka, %i.cjx             ; 2 uses
  %i.ckc = add nsw i32 %i.ckb, 1
  %i.ckd = icmp slt i32 %i.ckb, 4
  tail call void @llvm.assume(i1 %i.ckd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8, !tbaa !12
  %i.cke = sext i32 %i.cjx to i64
  %i.ckf = getelementptr inbounds i8, ptr %0, i64 %i.cke
  %i.ckg = sext i32 %i.ckc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr readonly align 1 %i.ckf, i64 %i.ckg, i1 false)
  %.0..0..0..0..0..0..0..0..i.i596 = load i64, ptr %i.r, align 8, !tbaa !12
  %i.ckh = zext nneg i32 %i.cjw to i64
  %i.cki = lshr i64 %.0..0..0..0..0..0..0..0..i.i596, %i.ckh
  %i.ckj = trunc i64 %i.cki to i32
  %i.ckk = and i32 %i.ckj, 8388607
  store i32 %i.ckk, ptr %.026.i.i593, align 4, !tbaa !6
  %i.ckl = getelementptr inbounds nuw i8, ptr %.026.i.i593, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ckm = icmp slt i32 %i.cjy, %i.cju
  br i1 %i.ckm, label %.lr.ph.i.i592, label %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !232

_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.av, %.lr.ph.i.i592, %bb.au
  %.023.lcssa.i.i577 = phi i32 [ %4, %bb.au ], [ %i.cjy, %bb.av ], [ %.02325.i.i594, %.lr.ph.i.i592 ]
  %i.ckn = sub nsw i32 %.023.lcssa.i.i577, %4
  %i.cko = sdiv i32 %i.ckn, 23                    ; 3 uses
  %i.ckp = mul nsw i32 %i.cko, 23
  %i.ckq = add nsw i32 %i.ckp, %4
  %i.ckr = sub nsw i32 %2, %i.cko                 ; 4 uses
  %i.cks = sdiv i32 %i.ckq, 8
  %i.ckt = sext i32 %i.cks to i64
  %i.cku = getelementptr inbounds i8, ptr %0, i64 %i.ckt ; 2 uses
  %i.ckv = sext i32 %i.cko to i64
  %i.ckw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ckv ; 2 uses
  %i.ckx = sdiv i32 %i.ckr, 32                    ; 2 uses
  %i.cky = icmp sgt i32 %i.ckr, 31
  br i1 %i.cky, label %.lr.ph.i586, label %._crit_edge.i578

._crit_edge.i578:                                 ; preds = %.lr.ph.i586, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i579 = phi ptr [ %i.ckw, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cpw, %.lr.ph.i586 ]
  %.025.lcssa.i580 = phi ptr [ %i.cku, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cpv, %.lr.ph.i586 ]
  %i.ckz = shl nsw i32 %i.ckx, 5                  ; 2 uses
  %i.cla = sub nsw i32 %i.ckr, %i.ckz             ; 2 uses
  %i.clb = icmp samesign ult i32 %i.cla, 32
  tail call void @llvm.assume(i1 %i.clb)
  %i.clc = mul nuw nsw i32 %i.cla, 23
  %.not.i581 = icmp eq i32 %i.ckr, %i.ckz
  br i1 %.not.i581, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i582

.lr.ph.i28.i582:                                  ; preds = %._crit_edge.i578, %.lr.ph.i28.i582
  %.024.i.i583 = phi ptr [ %i.cls, %.lr.ph.i28.i582 ], [ %.026.lcssa.i579, %._crit_edge.i578 ] ; 2 uses
  %.02223.i.i584 = phi i32 [ %i.cle, %.lr.ph.i28.i582 ], [ 0, %._crit_edge.i578 ] ; 4 uses
  %i.cld = lshr i32 %.02223.i.i584, 3             ; 2 uses
  %i.cle = add nuw nsw i32 %.02223.i.i584, 23     ; 2 uses
  %i.clf = add nuw nsw i32 %.02223.i.i584, 22
  %i.clg = lshr i32 %i.clf, 3
  %i.clh = sub nsw i32 %i.clg, %i.cld             ; 2 uses
  %i.cli = add nsw i32 %i.clh, 1
  %i.clj = icmp slt i32 %i.clh, 4
  tail call void @llvm.assume(i1 %i.clj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8, !tbaa !12
  %i.clk = zext nneg i32 %i.cld to i64
  %i.cll = getelementptr inbounds nuw i8, ptr %.025.lcssa.i580, i64 %i.clk
  %i.clm = sext i32 %i.cli to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %i.cll, i64 %i.clm, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i585 = load i64, ptr %i.q, align 8, !tbaa !12
  %i.cln = and i32 %.02223.i.i584, 7
  %i.clo = zext nneg i32 %i.cln to i64
  %i.clp = lshr i64 %.0..0..0..0..0..0..0..0..i29.i585, %i.clo
  %i.clq = trunc i64 %i.clp to i32
  %i.clr = and i32 %i.clq, 8388607
  store i32 %i.clr, ptr %.024.i.i583, align 4, !tbaa !6
  %i.cls = getelementptr inbounds nuw i8, ptr %.024.i.i583, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.clt = icmp samesign ult i32 %i.cle, %i.clc
  br i1 %i.clt, label %.lr.ph.i28.i582, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !233

.lr.ph.i586:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i586
  %.032.i587 = phi i32 [ %i.cpx, %.lr.ph.i586 ], [ 0, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i588 = phi ptr [ %i.cpv, %.lr.ph.i586 ], [ %i.cku, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ] ; 23 uses
  %.02630.i589 = phi ptr [ %i.cpw, %.lr.ph.i586 ], [ %i.ckw, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 4
  %i.clv = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 8
  %i.clw = load <2 x i32>, ptr %.02531.i588, align 1 ; 2 uses
  %i.clx = load i32, ptr %i.clv, align 1          ; 2 uses
  %i.cly = load <2 x i32>, ptr %i.clu, align 1
  %i.clz = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cly, <2 x i32> %i.clw, <2 x i32> <i32 9, i32 18>)
  %i.cma = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 12 ; 2 uses
  %i.cmb = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 16
  %i.cmc = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 20 ; 2 uses
  %i.cmd = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 24
  %i.cme = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 28
  %i.cmf = load <2 x i32>, ptr %i.cmc, align 1
  %i.cmg = load i32, ptr %i.cma, align 1
  %i.cmh = load <2 x i32>, ptr %i.cma, align 1
  %i.cmi = tail call i32 @llvm.fshl.i32(i32 %i.cmg, i32 %i.clx, i32 4)
  %i.cmj = load i32, ptr %i.cmc, align 1
  %i.cmk = load <2 x i32>, ptr %i.cmb, align 1
  %i.cml = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cmk, <2 x i32> %i.cmh, <2 x i32> <i32 13, i32 22>)
  %i.cmm = load i32, ptr %i.cme, align 1          ; 2 uses
  %i.cmn = load <2 x i32>, ptr %i.cmd, align 1
  %i.cmo = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cmn, <2 x i32> %i.cmf, <2 x i32> <i32 8, i32 17>)
  %i.cmp = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 32 ; 2 uses
  %i.cmq = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 36
  %i.cmr = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 40
  %i.cms = load i32, ptr %i.cmp, align 1
  %i.cmt = load <2 x i32>, ptr %i.cmp, align 1
  %i.cmu = tail call i32 @llvm.fshl.i32(i32 %i.cms, i32 %i.cmm, i32 3)
  %i.cmv = load i32, ptr %i.cmr, align 1          ; 2 uses
  %i.cmw = load <2 x i32>, ptr %i.cmq, align 1
  %i.cmx = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cmw, <2 x i32> %i.cmt, <2 x i32> <i32 12, i32 21>)
  %i.cmy = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 44 ; 2 uses
  %i.cmz = load i32, ptr %i.cmy, align 1
  %i.cna = tail call i32 @llvm.fshl.i32(i32 %i.cmz, i32 %i.cmv, i32 7)
  %i.cnb = shufflevector <2 x i32> %i.clw, <2 x i32> %i.clz, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnc = lshr i32 %i.clx, 5
  %i.cnd = insertelement <16 x i32> %i.cnb, i32 %i.cnc, i64 3
  %i.cne = insertelement <16 x i32> %i.cnd, i32 %i.cmi, i64 4
  %i.cnf = shufflevector <2 x i32> %i.cml, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cng = shufflevector <16 x i32> %i.cne, <16 x i32> %i.cnf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnh = lshr i32 %i.cmj, 1
  %i.cni = insertelement <16 x i32> %i.cng, i32 %i.cnh, i64 7
  %i.cnj = shufflevector <2 x i32> %i.cmo, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnk = shufflevector <16 x i32> %i.cni, <16 x i32> %i.cnj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnl = lshr i32 %i.cmm, 6
  %i.cnm = insertelement <16 x i32> %i.cnk, i32 %i.cnl, i64 10
  %i.cnn = insertelement <16 x i32> %i.cnm, i32 %i.cmu, i64 11
  %i.cno = shufflevector <2 x i32> %i.cmx, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnp = shufflevector <16 x i32> %i.cnn, <16 x i32> %i.cno, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.cnq = lshr i32 %i.cmv, 2
  %i.cnr = insertelement <16 x i32> %i.cnp, i32 %i.cnq, i64 14
  %.sroa.0133.60.vec.insert.i.i590 = insertelement <16 x i32> %i.cnr, i32 %i.cna, i64 15
  %58 = and <16 x i32> %.sroa.0133.60.vec.insert.i.i590, splat (i32 8388607)
  store <16 x i32> %58, ptr %.02630.i589, align 1, !tbaa !10
  %i.cns = load i32, ptr %i.cmy, align 1
  %i.cnt = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 48 ; 2 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 52
  %i.cnv = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 56
  %i.cnw = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 60 ; 2 uses
  %i.cnx = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 64
  %i.cny = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 68 ; 2 uses
  %i.cnz = load <2 x i32>, ptr %i.cnw, align 1
  %i.coa = load <2 x i32>, ptr %i.cnu, align 1
  %i.cob = load i32, ptr %i.cnw, align 1
  %i.coc = load <2 x i32>, ptr %i.cnv, align 1
  %i.cod = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.coc, <2 x i32> %i.coa, <2 x i32> <i32 11, i32 20>)
  %i.coe = load <2 x i32>, ptr %i.cnx, align 1
  %i.cof = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.coe, <2 x i32> %i.cnz, <2 x i32> <i32 6, i32 15>)
  %i.cog = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 76
  %i.coh = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 80 ; 2 uses
  %i.coi = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 84
  %i.coj = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 88
  %i.cok = load <2 x i32>, ptr %i.coh, align 1
  %i.col = load <2 x i32>, ptr %i.cnt, align 1    ; 2 uses
  %i.com = load i32, ptr %i.cnt, align 1          ; 2 uses
  %i.con = tail call i32 @llvm.fshl.i32(i32 %i.com, i32 %i.cns, i32 16)
  %i.coo = load <2 x i32>, ptr %i.cny, align 1    ; 2 uses
  %i.cop = load i32, ptr %i.cny, align 1
  %i.coq = load <2 x i32>, ptr %i.cog, align 1
  %i.cor = load i32, ptr %i.coh, align 1
  %i.cos = shufflevector <2 x i32> %i.col, <2 x i32> %i.coo, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cot = shufflevector <2 x i32> %i.coq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cou = shufflevector <4 x i32> %i.cos, <4 x i32> %i.cot, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cov = shufflevector <2 x i32> %i.col, <2 x i32> %i.coo, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cow = shufflevector <4 x i32> %i.cov, <4 x i32> %i.cot, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cox = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cou, <4 x i32> %i.cow, <4 x i32> <i32 2, i32 1, i32 10, i32 19>)
  %i.coy = load i32, ptr %i.coj, align 1
  %i.coz = load <2 x i32>, ptr %i.coi, align 1
  %i.cpa = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.coz, <2 x i32> %i.cok, <2 x i32> <i32 5, i32 14>)
  %i.cpb = insertelement <16 x i32> poison, i32 %i.con, i64 0
  %i.cpc = lshr i32 %i.com, 7
  %i.cpd = insertelement <16 x i32> %i.cpb, i32 %i.cpc, i64 1
  %i.cpe = shufflevector <4 x i32> %i.cox, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cpf = shufflevector <16 x i32> %i.cpd, <16 x i32> %i.cpe, <16 x i32> <i32 0, i32 1, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cpg = shufflevector <2 x i32> %i.cod, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cph = shufflevector <16 x i32> %i.cpf, <16 x i32> %i.cpg, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cpi = lshr i32 %i.cob, 3
  %i.cpj = insertelement <16 x i32> %i.cph, i32 %i.cpi, i64 5
  %i.cpk = shufflevector <2 x i32> %i.cof, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cpl = shufflevector <16 x i32> %i.cpj, <16 x i32> %i.cpk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cpm = lshr i32 %i.cop, 8
  %i.cpn = insertelement <16 x i32> %i.cpl, i32 %i.cpm, i64 8
  %i.cpo = shufflevector <16 x i32> %i.cpn, <16 x i32> %i.cpe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cpp = lshr i32 %i.cor, 4
  %i.cpq = insertelement <16 x i32> %i.cpo, i32 %i.cpp, i64 12
  %i.cpr = shufflevector <2 x i32> %i.cpa, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cps = shufflevector <16 x i32> %i.cpq, <16 x i32> %i.cpr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.cpt = lshr i32 %i.coy, 9
  %.sroa.0153.60.vec.insert.i.i = insertelement <16 x i32> %i.cps, i32 %i.cpt, i64 15
  %i.cpu = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 64
  %59 = and <16 x i32> %.sroa.0153.60.vec.insert.i.i, splat (i32 8388607)
  store <16 x i32> %59, ptr %i.cpu, align 1, !tbaa !10
  %i.cpv = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 92 ; 2 uses
  %i.cpw = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 128 ; 2 uses
  %i.cpx = add nuw nsw i32 %.032.i587, 1          ; 2 uses
  %exitcond.not.i591 = icmp eq i32 %i.cpx, %i.ckx
  br i1 %exitcond.not.i591, label %._crit_edge.i578, label %.lr.ph.i586, !llvm.loop !234

bb.aw:                                            ; preds = %bb.a
  %i.cpy = mul nsw i32 %2, 24
  %i.cpz = add nsw i32 %4, %i.cpy
  %i.cqa = icmp sgt i32 %2, 0
  br i1 %i.cqa, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i615:                                    ; preds = %bb.aw, %bb.ax
  %.026.i.i616 = phi ptr [ %i.cqq, %bb.ax ], [ %1, %bb.aw ] ; 2 uses
  %.02325.i.i617 = phi i32 [ %i.cqd, %bb.ax ], [ %4, %bb.aw ] ; 5 uses
  %i.cqb = srem i32 %.02325.i.i617, 8             ; 2 uses
  %i.cqc = sdiv i32 %.02325.i.i617, 8             ; 2 uses
  %.not.i.i618 = icmp eq i32 %i.cqb, 0
  br i1 %.not.i.i618, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i615
  %i.cqd = add nsw i32 %.02325.i.i617, 24         ; 3 uses
  %i.cqe = add nsw i32 %.02325.i.i617, 23
  %i.cqf = sdiv i32 %i.cqe, 8
  %i.cqg = sub nsw i32 %i.cqf, %i.cqc             ; 2 uses
  %i.cqh = add nsw i32 %i.cqg, 1
  %i.cqi = icmp slt i32 %i.cqg, 4
  tail call void @llvm.assume(i1 %i.cqi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !12
  %i.cqj = sext i32 %i.cqc to i64
  %i.cqk = getelementptr inbounds i8, ptr %0, i64 %i.cqj
  %i.cql = sext i32 %i.cqh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.cqk, i64 %i.cql, i1 false)
  %.0..0..0..0..0..0..0..0..i.i619 = load i64, ptr %i.p, align 8, !tbaa !12
  %i.cqm = zext nneg i32 %i.cqb to i64
  %i.cqn = lshr i64 %.0..0..0..0..0..0..0..0..i.i619, %i.cqm
  %i.cqo = trunc i64 %i.cqn to i32
  %i.cqp = and i32 %i.cqo, 16777215
  store i32 %i.cqp, ptr %.026.i.i616, align 4, !tbaa !6
  %i.cqq = getelementptr inbounds nuw i8, ptr %.026.i.i616, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cqr = icmp slt i32 %i.cqd, %i.cpz
  br i1 %i.cqr, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !235

_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ax, %.lr.ph.i.i615, %bb.aw
  %.023.lcssa.i.i597 = phi i32 [ %4, %bb.aw ], [ %i.cqd, %bb.ax ], [ %.02325.i.i617, %.lr.ph.i.i615 ]
  %i.cqs = sub nsw i32 %.023.lcssa.i.i597, %4
  %i.cqt = sdiv i32 %i.cqs, 24                    ; 3 uses
  %i.cqu = mul nsw i32 %i.cqt, 24
  %i.cqv = add nsw i32 %i.cqu, %4
  %i.cqw = sub nsw i32 %2, %i.cqt                 ; 4 uses
  %i.cqx = sdiv i32 %i.cqv, 8
  %i.cqy = sext i32 %i.cqx to i64
  %i.cqz = getelementptr inbounds i8, ptr %0, i64 %i.cqy ; 2 uses
  %i.cra = sext i32 %i.cqt to i64
  %i.crb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cra ; 2 uses
  %i.crc = sdiv i32 %i.cqw, 32                    ; 2 uses
  %i.crd = icmp sgt i32 %i.cqw, 31
  br i1 %i.crd, label %.lr.ph.i608, label %._crit_edge.i598

._crit_edge.i598:                                 ; preds = %.lr.ph.i608, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i599 = phi ptr [ %i.crb, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cxd, %.lr.ph.i608 ] ; 6 uses
  %.025.lcssa.i600 = phi ptr [ %i.cqz, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cxc, %.lr.ph.i608 ] ; 11 uses
  %i.cre = shl nsw i32 %i.crc, 5                  ; 2 uses
  %i.crf = sub nsw i32 %i.cqw, %i.cre             ; 2 uses
  %i.crg = icmp samesign ult i32 %i.crf, 32
  tail call void @llvm.assume(i1 %i.crg)
  %.not.i601 = icmp eq i32 %i.cqw, %i.cre
  br i1 %.not.i601, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i602

.lr.ph.i28.preheader.i602:                        ; preds = %._crit_edge.i598
  %i.crh = mul nuw nsw i32 %i.crf, 24
  %i.cri = zext nneg i32 %i.crh to i64            ; 2 uses
  %i.crj = add nsw i64 %i.cri, -8                 ; 2 uses
  %i.crk = udiv i64 %i.crj, 24                    ; 3 uses
  %i.crl = add nuw nsw i64 %i.crk, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.crj, 552
  br i1 %min.iters.check, label %.lr.ph.i28.i603.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader.i602
  %i.crm = shl nuw nsw i64 %i.crk, 2
  %i.crn = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.crm
  %i.cro = getelementptr i8, ptr %i.crn, i64 4
  %i.crp = mul nuw nsw i64 %i.crk, 3
  %i.crq = getelementptr i8, ptr %.025.lcssa.i600, i64 %i.crp
  %i.crr = getelementptr i8, ptr %i.crq, i64 3
  %bound0 = icmp ult ptr %.026.lcssa.i599, %i.crr
  %bound1 = icmp ult ptr %.025.lcssa.i600, %i.cro
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i603.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.crl, 2305843009213693944    ; 4 uses
  %i.crs = mul i64 %n.vec, 24
  %i.crt = shl nuw nsw i64 %n.vec, 2
  %i.cru = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.crt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 24, i64 48, i64 72, i64 96, i64 120, i64 144, i64 168>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.crv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.crv
  %i.crw = lshr exact <8 x i64> %vec.ind, splat (i64 3) ; 8 uses
  %i.crx = extractelement <8 x i64> %i.crw, i64 0
  %i.cry = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.crx
  %i.crz = extractelement <8 x i64> %i.crw, i64 1
  %i.csa = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.crz
  %i.csb = extractelement <8 x i64> %i.crw, i64 2
  %i.csc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.csb
  %i.csd = extractelement <8 x i64> %i.crw, i64 3
  %i.cse = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.csd
  %i.csf = extractelement <8 x i64> %i.crw, i64 4
  %i.csg = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.csf
  %i.csh = extractelement <8 x i64> %i.crw, i64 5
  %i.csi = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.csh
  %i.csj = extractelement <8 x i64> %i.crw, i64 6
  %i.csk = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.csj
  %i.csl = extractelement <8 x i64> %i.crw, i64 7
  %i.csm = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.csl
  %i.csn = load i24, ptr %i.cry, align 1, !alias.scope !275
  %i.cso = load i24, ptr %i.csa, align 1, !alias.scope !275
  %i.csp = load i24, ptr %i.csc, align 1, !alias.scope !275
  %i.csq = load i24, ptr %i.cse, align 1, !alias.scope !275
  %i.csr = load i24, ptr %i.csg, align 1, !alias.scope !275
  %i.css = load i24, ptr %i.csi, align 1, !alias.scope !275
  %i.cst = load i24, ptr %i.csk, align 1, !alias.scope !275
  %i.csu = load i24, ptr %i.csm, align 1, !alias.scope !275
  %i.csv = insertelement <8 x i24> poison, i24 %i.csn, i64 0
  %i.csw = insertelement <8 x i24> %i.csv, i24 %i.cso, i64 1
  %i.csx = insertelement <8 x i24> %i.csw, i24 %i.csp, i64 2
  %i.csy = insertelement <8 x i24> %i.csx, i24 %i.csq, i64 3
  %i.csz = insertelement <8 x i24> %i.csy, i24 %i.csr, i64 4
  %i.cta = insertelement <8 x i24> %i.csz, i24 %i.css, i64 5
  %i.ctb = insertelement <8 x i24> %i.cta, i24 %i.cst, i64 6
  %i.ctc = insertelement <8 x i24> %i.ctb, i24 %i.csu, i64 7
  %i.ctd = zext <8 x i24> %i.ctc to <8 x i32>
  store <8 x i32> %i.ctd, ptr %next.gep, align 4, !tbaa !6, !alias.scope !276, !noalias !275
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 192)
  %i.cte = icmp eq i64 %index.next, %n.vec
  br i1 %i.cte, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.crl, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i603.preheader

.lr.ph.i28.i603.preheader:                        ; preds = %vector.memcheck, %.lr.ph.i28.preheader.i602, %middle.block
  %indvars.iv.i604.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader.i602 ], [ %i.crs, %middle.block ]
  %.024.i.i605.ph = phi ptr [ %.026.lcssa.i599, %vector.memcheck ], [ %.026.lcssa.i599, %.lr.ph.i28.preheader.i602 ], [ %i.cru, %middle.block ]
  br label %.lr.ph.i28.i603

.lr.ph.i28.i603:                                  ; preds = %.lr.ph.i28.i603.preheader, %.lr.ph.i28.i603
  %indvars.iv.i604 = phi i64 [ %indvars.iv.next.i606, %.lr.ph.i28.i603 ], [ %indvars.iv.i604.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %.024.i.i605 = phi ptr [ %i.cti, %.lr.ph.i28.i603 ], [ %.024.i.i605.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %i.ctf = lshr exact i64 %indvars.iv.i604, 3
  %indvars.iv.next.i606 = add nuw nsw i64 %indvars.iv.i604, 24 ; 2 uses
  %i.ctg = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.ctf
  %.0.copyload = load i24, ptr %i.ctg, align 1
  %i.cth = zext i24 %.0.copyload to i32
  store i32 %i.cth, ptr %.024.i.i605, align 4, !tbaa !6
  %i.cti = getelementptr inbounds nuw i8, ptr %.024.i.i605, i64 4
  %i.ctj = icmp samesign ult i64 %indvars.iv.next.i606, %i.cri
  br i1 %i.ctj, label %.lr.ph.i28.i603, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !240

.lr.ph.i608:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i608
  %.032.i609 = phi i32 [ %i.cxe, %.lr.ph.i608 ], [ 0, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i610 = phi ptr [ %i.cxc, %.lr.ph.i608 ], [ %i.cqz, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 25 uses
  %.02630.i611 = phi ptr [ %i.cxd, %.lr.ph.i608 ], [ %i.crb, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 4
  %i.ctl = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 8
  %i.ctm = load <2 x i32>, ptr %.02531.i610, align 1 ; 2 uses
  %i.ctn = load i32, ptr %i.ctl, align 1
  %i.cto = load <2 x i32>, ptr %i.ctk, align 1
  %i.ctp = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cto, <2 x i32> %i.ctm, <2 x i32> <i32 8, i32 16>)
  %i.ctq = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 12
  %i.ctr = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 16
  %i.cts = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 20
  %i.ctt = load <2 x i32>, ptr %i.ctq, align 1    ; 2 uses
  %i.ctu = load i32, ptr %i.cts, align 1
  %i.ctv = load <2 x i32>, ptr %i.ctr, align 1
  %i.ctw = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ctv, <2 x i32> %i.ctt, <2 x i32> <i32 8, i32 16>)
  %i.ctx = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 24
  %i.cty = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 28
  %i.ctz = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 32
  %i.cua = load <2 x i32>, ptr %i.ctx, align 1    ; 2 uses
  %i.cub = load i32, ptr %i.ctz, align 1
  %i.cuc = load <2 x i32>, ptr %i.cty, align 1
  %i.cud = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cuc, <2 x i32> %i.cua, <2 x i32> <i32 8, i32 16>)
  %i.cue = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 36
  %i.cuf = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 40
  %i.cug = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 44
  %i.cuh = load <2 x i32>, ptr %i.cue, align 1    ; 2 uses
  %i.cui = load i32, ptr %i.cug, align 1
  %i.cuj = load <2 x i32>, ptr %i.cuf, align 1
  %i.cuk = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cuj, <2 x i32> %i.cuh, <2 x i32> <i32 8, i32 16>)
  %i.cul = shufflevector <2 x i32> %i.ctm, <2 x i32> %i.ctp, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cum = lshr i32 %i.ctn, 8
  %i.cun = insertelement <16 x i32> %i.cul, i32 %i.cum, i64 3
  %i.cuo = shufflevector <2 x i32> %i.ctt, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cup = shufflevector <16 x i32> %i.cun, <16 x i32> %i.cuo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cuq = shufflevector <2 x i32> %i.ctw, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cur = shufflevector <16 x i32> %i.cup, <16 x i32> %i.cuq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cus = lshr i32 %i.ctu, 8
  %i.cut = insertelement <16 x i32> %i.cur, i32 %i.cus, i64 7
  %i.cuu = shufflevector <2 x i32> %i.cua, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cuv = shufflevector <16 x i32> %i.cut, <16 x i32> %i.cuu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cuw = shufflevector <2 x i32> %i.cud, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cux = shufflevector <16 x i32> %i.cuv, <16 x i32> %i.cuw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cuy = lshr i32 %i.cub, 8
  %i.cuz = insertelement <16 x i32> %i.cux, i32 %i.cuy, i64 11
  %i.cva = shufflevector <2 x i32> %i.cuh, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvb = shufflevector <16 x i32> %i.cuz, <16 x i32> %i.cva, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %i.cvc = shufflevector <2 x i32> %i.cuk, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvd = shufflevector <16 x i32> %i.cvb, <16 x i32> %i.cvc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.cve = lshr i32 %i.cui, 8
  %.sroa.0127.60.vec.insert.i.i612 = insertelement <16 x i32> %i.cvd, i32 %i.cve, i64 15
  %60 = and <16 x i32> %.sroa.0127.60.vec.insert.i.i612, splat (i32 16777215)
  store <16 x i32> %60, ptr %.02630.i611, align 1, !tbaa !10
  %i.cvf = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 48
  %i.cvg = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 52
  %i.cvh = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 56
  %i.cvi = load <2 x i32>, ptr %i.cvf, align 1    ; 2 uses
  %i.cvj = load i32, ptr %i.cvh, align 1
  %i.cvk = load <2 x i32>, ptr %i.cvg, align 1
  %i.cvl = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cvk, <2 x i32> %i.cvi, <2 x i32> <i32 8, i32 16>)
  %i.cvm = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 60
  %i.cvn = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 64
  %i.cvo = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 68
  %i.cvp = load <2 x i32>, ptr %i.cvm, align 1    ; 2 uses
  %i.cvq = load i32, ptr %i.cvo, align 1
  %i.cvr = load <2 x i32>, ptr %i.cvn, align 1
  %i.cvs = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cvr, <2 x i32> %i.cvp, <2 x i32> <i32 8, i32 16>)
  %i.cvt = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 72
  %i.cvu = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 76
  %i.cvv = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 80
  %i.cvw = load <2 x i32>, ptr %i.cvt, align 1    ; 2 uses
  %i.cvx = load i32, ptr %i.cvv, align 1
  %i.cvy = load <2 x i32>, ptr %i.cvu, align 1
  %i.cvz = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cvy, <2 x i32> %i.cvw, <2 x i32> <i32 8, i32 16>)
  %i.cwa = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 84
  %i.cwb = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 88
  %i.cwc = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 92
  %i.cwd = load <2 x i32>, ptr %i.cwa, align 1    ; 2 uses
  %i.cwe = load i32, ptr %i.cwc, align 1
  %i.cwf = load <2 x i32>, ptr %i.cwb, align 1
  %i.cwg = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cwf, <2 x i32> %i.cwd, <2 x i32> <i32 8, i32 16>)
  %i.cwh = shufflevector <2 x i32> %i.cvi, <2 x i32> %i.cvl, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwi = lshr i32 %i.cvj, 8
  %i.cwj = insertelement <16 x i32> %i.cwh, i32 %i.cwi, i64 3
  %i.cwk = shufflevector <2 x i32> %i.cvp, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwl = shufflevector <16 x i32> %i.cwj, <16 x i32> %i.cwk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwm = shufflevector <2 x i32> %i.cvs, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwn = shufflevector <16 x i32> %i.cwl, <16 x i32> %i.cwm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwo = lshr i32 %i.cvq, 8
  %i.cwp = insertelement <16 x i32> %i.cwn, i32 %i.cwo, i64 7
  %i.cwq = shufflevector <2 x i32> %i.cvw, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwr = shufflevector <16 x i32> %i.cwp, <16 x i32> %i.cwq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cws = shufflevector <2 x i32> %i.cvz, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwt = shufflevector <16 x i32> %i.cwr, <16 x i32> %i.cws, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwu = lshr i32 %i.cvx, 8
  %i.cwv = insertelement <16 x i32> %i.cwt, i32 %i.cwu, i64 11
  %i.cww = shufflevector <2 x i32> %i.cwd, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwx = shufflevector <16 x i32> %i.cwv, <16 x i32> %i.cww, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %i.cwy = shufflevector <2 x i32> %i.cwg, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwz = shufflevector <16 x i32> %i.cwx, <16 x i32> %i.cwy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.cxa = lshr i32 %i.cwe, 8
  %.sroa.0147.60.vec.insert.i.i613 = insertelement <16 x i32> %i.cwz, i32 %i.cxa, i64 15
  %i.cxb = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 64
  %61 = and <16 x i32> %.sroa.0147.60.vec.insert.i.i613, splat (i32 16777215)
  store <16 x i32> %61, ptr %i.cxb, align 1, !tbaa !10
  %i.cxc = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 96 ; 2 uses
  %i.cxd = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 128 ; 2 uses
  %i.cxe = add nuw nsw i32 %.032.i609, 1          ; 2 uses
  %exitcond.not.i614 = icmp eq i32 %i.cxe, %i.crc
  br i1 %exitcond.not.i614, label %._crit_edge.i598, label %.lr.ph.i608, !llvm.loop !241

bb.ay:                                            ; preds = %bb.a
  %i.cxf = mul nsw i32 %2, 25
  %i.cxg = add nsw i32 %4, %i.cxf
  %i.cxh = icmp sgt i32 %2, 0
  br i1 %i.cxh, label %.lr.ph.i.i635, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i635:                                    ; preds = %bb.ay, %bb.az
  %.026.i.i636 = phi ptr [ %i.cxx, %bb.az ], [ %1, %bb.ay ] ; 2 uses
  %.02325.i.i637 = phi i32 [ %i.cxk, %bb.az ], [ %4, %bb.ay ] ; 5 uses
  %i.cxi = srem i32 %.02325.i.i637, 8             ; 2 uses
  %i.cxj = sdiv i32 %.02325.i.i637, 8             ; 2 uses
  %.not.i.i638 = icmp eq i32 %i.cxi, 0
  br i1 %.not.i.i638, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i635
  %i.cxk = add nsw i32 %.02325.i.i637, 25         ; 3 uses
  %i.cxl = add nsw i32 %.02325.i.i637, 24
  %i.cxm = sdiv i32 %i.cxl, 8
  %i.cxn = sub nsw i32 %i.cxm, %i.cxj             ; 2 uses
  %i.cxo = add nsw i32 %i.cxn, 1
  %i.cxp = icmp slt i32 %i.cxn, 4
  tail call void @llvm.assume(i1 %i.cxp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8, !tbaa !12
  %i.cxq = sext i32 %i.cxj to i64
  %i.cxr = getelementptr inbounds i8, ptr %0, i64 %i.cxq
  %i.cxs = sext i32 %i.cxo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %i.cxr, i64 %i.cxs, i1 false)
  %.0..0..0..0..0..0..0..0..i.i639 = load i64, ptr %i.o, align 8, !tbaa !12
  %i.cxt = zext nneg i32 %i.cxi to i64
  %i.cxu = lshr i64 %.0..0..0..0..0..0..0..0..i.i639, %i.cxt
  %i.cxv = trunc i64 %i.cxu to i32
  %i.cxw = and i32 %i.cxv, 33554431
  store i32 %i.cxw, ptr %.026.i.i636, align 4, !tbaa !6
  %i.cxx = getelementptr inbounds nuw i8, ptr %.026.i.i636, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cxy = icmp slt i32 %i.cxk, %i.cxg
  br i1 %i.cxy, label %.lr.ph.i.i635, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !242

_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.az, %.lr.ph.i.i635, %bb.ay
  %.023.lcssa.i.i620 = phi i32 [ %4, %bb.ay ], [ %i.cxk, %bb.az ], [ %.02325.i.i637, %.lr.ph.i.i635 ]
  %i.cxz = sub nsw i32 %.023.lcssa.i.i620, %4
  %i.cya = sdiv i32 %i.cxz, 25                    ; 3 uses
  %i.cyb = mul nsw i32 %i.cya, 25
  %i.cyc = add nsw i32 %i.cyb, %4
  %i.cyd = sub nsw i32 %2, %i.cya                 ; 4 uses
  %i.cye = sdiv i32 %i.cyc, 8
  %i.cyf = sext i32 %i.cye to i64
  %i.cyg = getelementptr inbounds i8, ptr %0, i64 %i.cyf ; 2 uses
  %i.cyh = sext i32 %i.cya to i64
  %i.cyi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cyh ; 2 uses
  %i.cyj = sdiv i32 %i.cyd, 32                    ; 2 uses
  %i.cyk = icmp sgt i32 %i.cyd, 31
  br i1 %i.cyk, label %.lr.ph.i629, label %._crit_edge.i621

._crit_edge.i621:                                 ; preds = %.lr.ph.i629, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i622 = phi ptr [ %i.cyi, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dct, %.lr.ph.i629 ]
  %.025.lcssa.i623 = phi ptr [ %i.cyg, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dcs, %.lr.ph.i629 ]
  %i.cyl = shl nsw i32 %i.cyj, 5                  ; 2 uses
  %i.cym = sub nsw i32 %i.cyd, %i.cyl             ; 2 uses
  %i.cyn = icmp samesign ult i32 %i.cym, 32
  tail call void @llvm.assume(i1 %i.cyn)
  %i.cyo = mul nuw nsw i32 %i.cym, 25
  %.not.i624 = icmp eq i32 %i.cyd, %i.cyl
  br i1 %.not.i624, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i625

.lr.ph.i28.i625:                                  ; preds = %._crit_edge.i621, %.lr.ph.i28.i625
  %.024.i.i626 = phi ptr [ %i.cze, %.lr.ph.i28.i625 ], [ %.026.lcssa.i622, %._crit_edge.i621 ] ; 2 uses
  %.02223.i.i627 = phi i32 [ %i.cyq, %.lr.ph.i28.i625 ], [ 0, %._crit_edge.i621 ] ; 4 uses
  %i.cyp = lshr i32 %.02223.i.i627, 3             ; 2 uses
  %i.cyq = add nuw nsw i32 %.02223.i.i627, 25     ; 2 uses
  %i.cyr = add nuw nsw i32 %.02223.i.i627, 24
  %i.cys = lshr i32 %i.cyr, 3
  %i.cyt = sub nsw i32 %i.cys, %i.cyp             ; 2 uses
  %i.cyu = add nsw i32 %i.cyt, 1
  %i.cyv = icmp slt i32 %i.cyt, 4
  tail call void @llvm.assume(i1 %i.cyv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8, !tbaa !12
  %i.cyw = zext nneg i32 %i.cyp to i64
  %i.cyx = getelementptr inbounds nuw i8, ptr %.025.lcssa.i623, i64 %i.cyw
  %i.cyy = sext i32 %i.cyu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %i.cyx, i64 %i.cyy, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i628 = load i64, ptr %i.n, align 8, !tbaa !12
  %i.cyz = and i32 %.02223.i.i627, 7
  %i.cza = zext nneg i32 %i.cyz to i64
  %i.czb = lshr i64 %.0..0..0..0..0..0..0..0..i29.i628, %i.cza
  %i.czc = trunc i64 %i.czb to i32
  %i.czd = and i32 %i.czc, 33554431
  store i32 %i.czd, ptr %.024.i.i626, align 4, !tbaa !6
  %i.cze = getelementptr inbounds nuw i8, ptr %.024.i.i626, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.czf = icmp samesign ult i32 %i.cyq, %i.cyo
  br i1 %i.czf, label %.lr.ph.i28.i625, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !243

.lr.ph.i629:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i629
  %.032.i630 = phi i32 [ %i.dcu, %.lr.ph.i629 ], [ 0, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i631 = phi ptr [ %i.dcs, %.lr.ph.i629 ], [ %i.cyg, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ] ; 22 uses
  %.02630.i632 = phi ptr [ %i.dct, %.lr.ph.i629 ], [ %i.cyi, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 4
  %i.czh = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 8
  %i.czi = load <2 x i32>, ptr %.02531.i631, align 1 ; 2 uses
  %i.czj = load i32, ptr %i.czh, align 1
  %i.czk = load <2 x i32>, ptr %i.czg, align 1
  %i.czl = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.czk, <2 x i32> %i.czi, <2 x i32> <i32 7, i32 14>)
  %i.czm = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 12 ; 2 uses
  %i.czn = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 16
  %i.czo = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 28
  %i.czp = load i32, ptr %i.czm, align 1          ; 2 uses
  %i.czq = load <4 x i32>, ptr %i.czm, align 1
  %i.czr = tail call i32 @llvm.fshl.i32(i32 %i.czp, i32 %i.czj, i32 21)
  %i.czs = load i32, ptr %i.czo, align 1          ; 2 uses
  %i.czt = load <4 x i32>, ptr %i.czn, align 1
  %i.czu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.czt, <4 x i32> %i.czq, <4 x i32> <i32 3, i32 10, i32 17, i32 24>)
  %i.czv = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 32 ; 2 uses
  %i.czw = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 36
  %i.czx = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 40 ; 2 uses
  %i.czy = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 44
  %i.czz = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 48
  %i.daa = load <2 x i32>, ptr %i.czx, align 1
  %i.dab = load i32, ptr %i.czv, align 1
  %i.dac = load <2 x i32>, ptr %i.czv, align 1
  %i.dad = tail call i32 @llvm.fshl.i32(i32 %i.dab, i32 %i.czs, i32 6)
  %i.dae = load i32, ptr %i.czx, align 1
  %i.daf = load <2 x i32>, ptr %i.czw, align 1
  %i.dag = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.daf, <2 x i32> %i.dac, <2 x i32> <i32 13, i32 20>)
  %i.dah = load <2 x i32>, ptr %i.czy, align 1
  %i.dai = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dah, <2 x i32> %i.daa, <2 x i32> <i32 2, i32 9>)
  %i.daj = shufflevector <2 x i32> %i.czi, <2 x i32> %i.czl, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dak = insertelement <16 x i32> %i.daj, i32 %i.czr, i64 3
  %i.dal = lshr i32 %i.czp, 4
  %i.dam = insertelement <16 x i32> %i.dak, i32 %i.dal, i64 4
  %i.dan = shufflevector <4 x i32> %i.czu, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dao = shufflevector <16 x i32> %i.dam, <16 x i32> %i.dan, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dap = lshr i32 %i.czs, 1
  %i.daq = insertelement <16 x i32> %i.dao, i32 %i.dap, i64 9
  %i.dar = insertelement <16 x i32> %i.daq, i32 %i.dad, i64 10
  %i.das = shufflevector <2 x i32> %i.dag, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dat = shufflevector <16 x i32> %i.dar, <16 x i32> %i.das, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 poison, i32 poison, i32 poison>
  %i.dau = lshr i32 %i.dae, 5
  %i.dav = insertelement <16 x i32> %i.dat, i32 %i.dau, i64 13
  %i.daw = shufflevector <2 x i32> %i.dai, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0135.60.vec.insert.i.i6331409 = shufflevector <16 x i32> %i.dav, <16 x i32> %i.daw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %62 = and <16 x i32> %.sroa.0135.60.vec.insert.i.i6331409, splat (i32 33554431)
  store <16 x i32> %62, ptr %.02630.i632, align 1, !tbaa !10
  %i.dax = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 52
  %i.day = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 56
  %i.daz = load <2 x i32>, ptr %i.czz, align 1
  %i.dba = load i32, ptr %i.day, align 1          ; 2 uses
  %i.dbb = load <2 x i32>, ptr %i.dax, align 1
  %i.dbc = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dbb, <2 x i32> %i.daz, <2 x i32> <i32 16, i32 23>)
  %i.dbd = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 60 ; 2 uses
  %i.dbe = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 64
  %i.dbf = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 68 ; 2 uses
  %i.dbg = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 72
  %i.dbh = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 84
  %i.dbi = load <4 x i32>, ptr %i.dbf, align 1
  %i.dbj = load i32, ptr %i.dbd, align 1
  %i.dbk = load <2 x i32>, ptr %i.dbd, align 1
  %i.dbl = tail call i32 @llvm.fshl.i32(i32 %i.dbj, i32 %i.dba, i32 5)
  %i.dbm = load i32, ptr %i.dbf, align 1
  %i.dbn = load <2 x i32>, ptr %i.dbe, align 1
  %i.dbo = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dbn, <2 x i32> %i.dbk, <2 x i32> <i32 12, i32 19>)
  %i.dbp = load i32, ptr %i.dbh, align 1          ; 2 uses
  %i.dbq = load <4 x i32>, ptr %i.dbg, align 1
  %i.dbr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dbq, <4 x i32> %i.dbi, <4 x i32> <i32 1, i32 8, i32 15, i32 22>)
  %i.dbs = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 88 ; 2 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 92
  %i.dbu = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 96
  %i.dbv = load i32, ptr %i.dbs, align 1
  %i.dbw = load <2 x i32>, ptr %i.dbs, align 1
  %i.dbx = tail call i32 @llvm.fshl.i32(i32 %i.dbv, i32 %i.dbp, i32 4)
  %i.dby = load i32, ptr %i.dbu, align 1
  %i.dbz = load <2 x i32>, ptr %i.dbt, align 1
  %i.dca = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dbz, <2 x i32> %i.dbw, <2 x i32> <i32 11, i32 18>)
  %i.dcb = shufflevector <2 x i32> %i.dbc, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcc = lshr i32 %i.dba, 2
  %i.dcd = insertelement <16 x i32> %i.dcb, i32 %i.dcc, i64 2
  %i.dce = insertelement <16 x i32> %i.dcd, i32 %i.dbl, i64 3
  %i.dcf = shufflevector <2 x i32> %i.dbo, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcg = shufflevector <16 x i32> %i.dce, <16 x i32> %i.dcf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dch = lshr i32 %i.dbm, 6
  %i.dci = insertelement <16 x i32> %i.dcg, i32 %i.dch, i64 6
  %i.dcj = shufflevector <4 x i32> %i.dbr, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dck = shufflevector <16 x i32> %i.dci, <16 x i32> %i.dcj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcl = lshr i32 %i.dbp, 3
  %i.dcm = insertelement <16 x i32> %i.dck, i32 %i.dcl, i64 11
  %i.dcn = insertelement <16 x i32> %i.dcm, i32 %i.dbx, i64 12
  %i.dco = shufflevector <2 x i32> %i.dca, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcp = shufflevector <16 x i32> %i.dcn, <16 x i32> %i.dco, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.dcq = lshr i32 %i.dby, 7
  %.sroa.0155.60.vec.insert.i.i = insertelement <16 x i32> %i.dcp, i32 %i.dcq, i64 15
  %i.dcr = getelementptr inbounds nuw i8, ptr %.02630.i632, i64 64
  %63 = and <16 x i32> %.sroa.0155.60.vec.insert.i.i, splat (i32 33554431)
  store <16 x i32> %63, ptr %i.dcr, align 1, !tbaa !10
  %i.dcs = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 100 ; 2 uses
  %i.dct = getelementptr inbounds nuw i8, ptr %.02630.i632, i64 128 ; 2 uses
  %i.dcu = add nuw nsw i32 %.032.i630, 1          ; 2 uses
  %exitcond.not.i634 = icmp eq i32 %i.dcu, %i.cyj
  br i1 %exitcond.not.i634, label %._crit_edge.i621, label %.lr.ph.i629, !llvm.loop !244

bb.ba:                                            ; preds = %bb.a
  %i.dcv = mul nsw i32 %2, 26
  %i.dcw = add nsw i32 %4, %i.dcv
  %i.dcx = icmp sgt i32 %2, 0
  br i1 %i.dcx, label %.lr.ph.i.i656, label %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i656:                                    ; preds = %bb.ba, %bb.bb
  %.026.i.i657 = phi ptr [ %i.ddn, %bb.bb ], [ %1, %bb.ba ] ; 2 uses
  %.02325.i.i658 = phi i32 [ %i.dda, %bb.bb ], [ %4, %bb.ba ] ; 5 uses
  %i.dcy = srem i32 %.02325.i.i658, 8             ; 2 uses
  %i.dcz = sdiv i32 %.02325.i.i658, 8             ; 2 uses
  %.not.i.i659 = icmp eq i32 %i.dcy, 0
  br i1 %.not.i.i659, label %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i656
  %i.dda = add nsw i32 %.02325.i.i658, 26         ; 3 uses
  %i.ddb = add nsw i32 %.02325.i.i658, 25
  %i.ddc = sdiv i32 %i.ddb, 8
  %i.ddd = sub nsw i32 %i.ddc, %i.dcz             ; 2 uses
  %i.dde = add nsw i32 %i.ddd, 1
  %i.ddf = icmp slt i32 %i.ddd, 5
  tail call void @llvm.assume(i1 %i.ddf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8, !tbaa !12
  %i.ddg = sext i32 %i.dcz to i64
  %i.ddh = getelementptr inbounds i8, ptr %0, i64 %i.ddg
  %i.ddi = sext i32 %i.dde to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr readonly align 1 %i.ddh, i64 %i.ddi, i1 false)
  %.0..0..0..0..0..0..0..0..i.i660 = load i64, ptr %i.m, align 8, !tbaa !12
  %i.ddj = zext nneg i32 %i.dcy to i64
  %i.ddk = lshr i64 %.0..0..0..0..0..0..0..0..i.i660, %i.ddj
  %i.ddl = trunc i64 %i.ddk to i32
  %i.ddm = and i32 %i.ddl, 67108863
  store i32 %i.ddm, ptr %.026.i.i657, align 4, !tbaa !6
  %i.ddn = getelementptr inbounds nuw i8, ptr %.026.i.i657, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ddo = icmp slt i32 %i.dda, %i.dcw
  br i1 %i.ddo, label %.lr.ph.i.i656, label %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !245

_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.bb, %.lr.ph.i.i656, %bb.ba
  %.023.lcssa.i.i640 = phi i32 [ %4, %bb.ba ], [ %i.dda, %bb.bb ], [ %.02325.i.i658, %.lr.ph.i.i656 ]
  %i.ddp = sub nsw i32 %.023.lcssa.i.i640, %4
  %i.ddq = sdiv i32 %i.ddp, 26                    ; 3 uses
  %i.ddr = mul nsw i32 %i.ddq, 26
  %i.dds = add nsw i32 %i.ddr, %4
  %i.ddt = sub nsw i32 %2, %i.ddq                 ; 4 uses
  %i.ddu = sdiv i32 %i.dds, 8
  %i.ddv = sext i32 %i.ddu to i64
  %i.ddw = getelementptr inbounds i8, ptr %0, i64 %i.ddv ; 2 uses
  %i.ddx = sext i32 %i.ddq to i64
  %i.ddy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ddx ; 2 uses
  %i.ddz = sdiv i32 %i.ddt, 32                    ; 2 uses
  %i.dea = icmp sgt i32 %i.ddt, 31
  br i1 %i.dea, label %.lr.ph.i649, label %._crit_edge.i641

._crit_edge.i641:                                 ; preds = %.lr.ph.i649, %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i642 = phi ptr [ %i.ddy, %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dhd, %.lr.ph.i649 ]
  %.025.lcssa.i643 = phi ptr [ %i.ddw, %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dhc, %.lr.ph.i649 ]
  %i.deb = shl nsw i32 %i.ddz, 5                  ; 2 uses
  %i.dec = sub nsw i32 %i.ddt, %i.deb             ; 2 uses
  %i.ded = icmp samesign ult i32 %i.dec, 32
  tail call void @llvm.assume(i1 %i.ded)
  %i.dee = mul nuw nsw i32 %i.dec, 26
  %.not.i644 = icmp eq i32 %i.ddt, %i.deb
  br i1 %.not.i644, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i645

.lr.ph.i28.i645:                                  ; preds = %._crit_edge.i641, %.lr.ph.i28.i645
  %.024.i.i646 = phi ptr [ %i.deu, %.lr.ph.i28.i645 ], [ %.026.lcssa.i642, %._crit_edge.i641 ] ; 2 uses
  %.02223.i.i647 = phi i32 [ %i.deg, %.lr.ph.i28.i645 ], [ 0, %._crit_edge.i641 ] ; 4 uses
  %i.def = lshr i32 %.02223.i.i647, 3             ; 2 uses
  %i.deg = add nuw nsw i32 %.02223.i.i647, 26     ; 2 uses
  %i.deh = add nuw nsw i32 %.02223.i.i647, 24
  %i.dei = lshr i32 %i.deh, 3
  %i.dej = sub nsw i32 %i.dei, %i.def             ; 2 uses
  %i.dek = add nsw i32 %i.dej, 1
  %i.del = icmp slt i32 %i.dej, 4
  tail call void @llvm.assume(i1 %i.del)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8, !tbaa !12
  %i.dem = zext nneg i32 %i.def to i64
  %i.den = getelementptr inbounds nuw i8, ptr %.025.lcssa.i643, i64 %i.dem
  %i.deo = sext i32 %i.dek to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 1 %i.den, i64 %i.deo, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i648 = load i64, ptr %i.l, align 8, !tbaa !12
  %i.dep = and i32 %.02223.i.i647, 6
  %i.deq = zext nneg i32 %i.dep to i64
  %i.der = lshr i64 %.0..0..0..0..0..0..0..0..i29.i648, %i.deq
  %i.des = trunc i64 %i.der to i32
  %i.det = and i32 %i.des, 67108863
  store i32 %i.det, ptr %.024.i.i646, align 4, !tbaa !6
  %i.deu = getelementptr inbounds nuw i8, ptr %.024.i.i646, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dev = icmp samesign ult i32 %i.deg, %i.dee
  br i1 %i.dev, label %.lr.ph.i28.i645, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !246

.lr.ph.i649:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i649
  %.032.i650 = phi i32 [ %i.dhe, %.lr.ph.i649 ], [ 0, %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i651 = phi ptr [ %i.dhc, %.lr.ph.i649 ], [ %i.ddw, %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i ] ; 15 uses
  %.02630.i652 = phi ptr [ %i.dhd, %.lr.ph.i649 ], [ %i.ddy, %_ZN5arrow8internal12unpack_exactILi26ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.dew = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 4
  %i.dex = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 16 ; 2 uses
  %i.dey = load <4 x i32>, ptr %.02531.i651, align 1 ; 2 uses
  %i.dez = load <4 x i32>, ptr %i.dew, align 1
  %i.dfa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dez, <4 x i32> %i.dey, <4 x i32> <i32 6, i32 12, i32 18, i32 24>)
  %i.dfb = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 20
  %i.dfc = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 32 ; 2 uses
  %i.dfd = load i32, ptr %i.dex, align 1
  %i.dfe = load <4 x i32>, ptr %i.dex, align 1
  %i.dff = load <4 x i32>, ptr %i.dfb, align 1
  %i.dfg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dff, <4 x i32> %i.dfe, <4 x i32> <i32 4, i32 10, i32 16, i32 22>)
  %i.dfh = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 36
  %i.dfi = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 48
  %i.dfj = load i32, ptr %i.dfc, align 1
  %i.dfk = load <4 x i32>, ptr %i.dfc, align 1
  %i.dfl = load i32, ptr %i.dfi, align 1
  %i.dfm = load <4 x i32>, ptr %i.dfh, align 1
  %i.dfn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dfm, <4 x i32> %i.dfk, <4 x i32> <i32 2, i32 8, i32 14, i32 20>)
  %i.dfo = shufflevector <4 x i32> %i.dey, <4 x i32> %i.dfa, <16 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfp = lshr i32 %i.dfd, 2
  %i.dfq = insertelement <16 x i32> %i.dfo, i32 %i.dfp, i64 5
  %i.dfr = shufflevector <4 x i32> %i.dfg, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfs = shufflevector <16 x i32> %i.dfq, <16 x i32> %i.dfr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dft = lshr i32 %i.dfj, 4
  %i.dfu = insertelement <16 x i32> %i.dfs, i32 %i.dft, i64 10
  %i.dfv = shufflevector <4 x i32> %i.dfn, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfw = shufflevector <16 x i32> %i.dfu, <16 x i32> %i.dfv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 18, i32 19, i32 poison>
  %i.dfx = lshr i32 %i.dfl, 6
  %.sroa.0135.60.vec.insert.i.i653 = insertelement <16 x i32> %i.dfw, i32 %i.dfx, i64 15
  %64 = and <16 x i32> %.sroa.0135.60.vec.insert.i.i653, splat (i32 67108863)
  store <16 x i32> %64, ptr %.02630.i652, align 1, !tbaa !10
  %i.dfy = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 52
  %i.dfz = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 56
  %i.dga = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 68 ; 2 uses
  %i.dgb = load <4 x i32>, ptr %i.dfy, align 1    ; 2 uses
  %i.dgc = load <4 x i32>, ptr %i.dfz, align 1
  %i.dgd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dgc, <4 x i32> %i.dgb, <4 x i32> <i32 6, i32 12, i32 18, i32 24>)
  %i.dge = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 72
  %i.dgf = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 84 ; 2 uses
  %i.dgg = load i32, ptr %i.dga, align 1
  %i.dgh = load <4 x i32>, ptr %i.dga, align 1
  %i.dgi = load <4 x i32>, ptr %i.dge, align 1
  %i.dgj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dgi, <4 x i32> %i.dgh, <4 x i32> <i32 4, i32 10, i32 16, i32 22>)
  %i.dgk = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 88
  %i.dgl = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 100
  %i.dgm = load i32, ptr %i.dgf, align 1
  %i.dgn = load <4 x i32>, ptr %i.dgf, align 1
  %i.dgo = load i32, ptr %i.dgl, align 1
  %i.dgp = load <4 x i32>, ptr %i.dgk, align 1
  %i.dgq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dgp, <4 x i32> %i.dgn, <4 x i32> <i32 2, i32 8, i32 14, i32 20>)
  %i.dgr = shufflevector <4 x i32> %i.dgb, <4 x i32> %i.dgd, <16 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgs = lshr i32 %i.dgg, 2
  %i.dgt = insertelement <16 x i32> %i.dgr, i32 %i.dgs, i64 5
  %i.dgu = shufflevector <4 x i32> %i.dgj, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgv = shufflevector <16 x i32> %i.dgt, <16 x i32> %i.dgu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgw = lshr i32 %i.dgm, 4
  %i.dgx = insertelement <16 x i32> %i.dgv, i32 %i.dgw, i64 10
  %i.dgy = shufflevector <4 x i32> %i.dgq, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgz = shufflevector <16 x i32> %i.dgx, <16 x i32> %i.dgy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 18, i32 19, i32 poison>
  %i.dha = lshr i32 %i.dgo, 6
  %.sroa.0155.60.vec.insert.i.i654 = insertelement <16 x i32> %i.dgz, i32 %i.dha, i64 15
  %i.dhb = getelementptr inbounds nuw i8, ptr %.02630.i652, i64 64
  %65 = and <16 x i32> %.sroa.0155.60.vec.insert.i.i654, splat (i32 67108863)
  store <16 x i32> %65, ptr %i.dhb, align 1, !tbaa !10
  %i.dhc = getelementptr inbounds nuw i8, ptr %.02531.i651, i64 104 ; 2 uses
  %i.dhd = getelementptr inbounds nuw i8, ptr %.02630.i652, i64 128 ; 2 uses
  %i.dhe = add nuw nsw i32 %.032.i650, 1          ; 2 uses
  %exitcond.not.i655 = icmp eq i32 %i.dhe, %i.ddz
  br i1 %exitcond.not.i655, label %._crit_edge.i641, label %.lr.ph.i649, !llvm.loop !247

bb.bc:                                            ; preds = %bb.a
  %i.dhf = mul nsw i32 %2, 27
  %i.dhg = add nsw i32 %4, %i.dhf
  %i.dhh = icmp sgt i32 %2, 0
  br i1 %i.dhh, label %.lr.ph.i.i676, label %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i676:                                    ; preds = %bb.bc, %bb.bd
  %.026.i.i677 = phi ptr [ %i.dhx, %bb.bd ], [ %1, %bb.bc ] ; 2 uses
  %.02325.i.i678 = phi i32 [ %i.dhk, %bb.bd ], [ %4, %bb.bc ] ; 5 uses
  %i.dhi = srem i32 %.02325.i.i678, 8             ; 2 uses
  %i.dhj = sdiv i32 %.02325.i.i678, 8             ; 2 uses
  %.not.i.i679 = icmp eq i32 %i.dhi, 0
  br i1 %.not.i.i679, label %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i676
  %i.dhk = add nsw i32 %.02325.i.i678, 27         ; 3 uses
  %i.dhl = add nsw i32 %.02325.i.i678, 26
  %i.dhm = sdiv i32 %i.dhl, 8
  %i.dhn = sub nsw i32 %i.dhm, %i.dhj             ; 2 uses
  %i.dho = add nsw i32 %i.dhn, 1
  %i.dhp = icmp slt i32 %i.dhn, 5
  tail call void @llvm.assume(i1 %i.dhp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8, !tbaa !12
  %i.dhq = sext i32 %i.dhj to i64
  %i.dhr = getelementptr inbounds i8, ptr %0, i64 %i.dhq
  %i.dhs = sext i32 %i.dho to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr readonly align 1 %i.dhr, i64 %i.dhs, i1 false)
  %.0..0..0..0..0..0..0..0..i.i680 = load i64, ptr %i.k, align 8, !tbaa !12
  %i.dht = zext nneg i32 %i.dhi to i64
  %i.dhu = lshr i64 %.0..0..0..0..0..0..0..0..i.i680, %i.dht
  %i.dhv = trunc i64 %i.dhu to i32
  %i.dhw = and i32 %i.dhv, 134217727
  store i32 %i.dhw, ptr %.026.i.i677, align 4, !tbaa !6
  %i.dhx = getelementptr inbounds nuw i8, ptr %.026.i.i677, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dhy = icmp slt i32 %i.dhk, %i.dhg
  br i1 %i.dhy, label %.lr.ph.i.i676, label %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !248

_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.bd, %.lr.ph.i.i676, %bb.bc
  %.023.lcssa.i.i661 = phi i32 [ %4, %bb.bc ], [ %i.dhk, %bb.bd ], [ %.02325.i.i678, %.lr.ph.i.i676 ]
  %i.dhz = sub nsw i32 %.023.lcssa.i.i661, %4
  %i.dia = sdiv i32 %i.dhz, 27                    ; 3 uses
  %i.dib = mul nsw i32 %i.dia, 27
  %i.dic = add nsw i32 %i.dib, %4
  %i.did = sub nsw i32 %2, %i.dia                 ; 4 uses
  %i.die = sdiv i32 %i.dic, 8
  %i.dif = sext i32 %i.die to i64
  %i.dig = getelementptr inbounds i8, ptr %0, i64 %i.dif ; 2 uses
  %i.dih = sext i32 %i.dia to i64
  %i.dii = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dih ; 2 uses
  %i.dij = sdiv i32 %i.did, 32                    ; 2 uses
  %i.dik = icmp sgt i32 %i.did, 31
  br i1 %i.dik, label %.lr.ph.i670, label %._crit_edge.i662

._crit_edge.i662:                                 ; preds = %.lr.ph.i670, %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i663 = phi ptr [ %i.dii, %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dmh, %.lr.ph.i670 ]
  %.025.lcssa.i664 = phi ptr [ %i.dig, %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dmg, %.lr.ph.i670 ]
  %i.dil = shl nsw i32 %i.dij, 5                  ; 2 uses
  %i.dim = sub nsw i32 %i.did, %i.dil             ; 2 uses
  %i.din = icmp samesign ult i32 %i.dim, 32
  tail call void @llvm.assume(i1 %i.din)
  %i.dio = mul nuw nsw i32 %i.dim, 27
  %.not.i665 = icmp eq i32 %i.did, %i.dil
  br i1 %.not.i665, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i666

.lr.ph.i28.i666:                                  ; preds = %._crit_edge.i662, %.lr.ph.i28.i666
  %.024.i.i667 = phi ptr [ %i.dje, %.lr.ph.i28.i666 ], [ %.026.lcssa.i663, %._crit_edge.i662 ] ; 2 uses
  %.02223.i.i668 = phi i32 [ %i.diq, %.lr.ph.i28.i666 ], [ 0, %._crit_edge.i662 ] ; 4 uses
  %i.dip = lshr i32 %.02223.i.i668, 3             ; 2 uses
  %i.diq = add nuw nsw i32 %.02223.i.i668, 27     ; 2 uses
  %i.dir = add nuw nsw i32 %.02223.i.i668, 26
  %i.dis = lshr i32 %i.dir, 3
  %i.dit = sub nsw i32 %i.dis, %i.dip             ; 2 uses
  %i.diu = add nsw i32 %i.dit, 1
  %i.div = icmp slt i32 %i.dit, 5
  tail call void @llvm.assume(i1 %i.div)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8, !tbaa !12
  %i.diw = zext nneg i32 %i.dip to i64
  %i.dix = getelementptr inbounds nuw i8, ptr %.025.lcssa.i664, i64 %i.diw
  %i.diy = sext i32 %i.diu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 1 %i.dix, i64 %i.diy, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i669 = load i64, ptr %i.j, align 8, !tbaa !12
  %i.diz = and i32 %.02223.i.i668, 7
  %i.dja = zext nneg i32 %i.diz to i64
  %i.djb = lshr i64 %.0..0..0..0..0..0..0..0..i29.i669, %i.dja
  %i.djc = trunc i64 %i.djb to i32
  %i.djd = and i32 %i.djc, 134217727
  store i32 %i.djd, ptr %.024.i.i667, align 4, !tbaa !6
  %i.dje = getelementptr inbounds nuw i8, ptr %.024.i.i667, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.djf = icmp samesign ult i32 %i.diq, %i.dio
  br i1 %i.djf, label %.lr.ph.i28.i666, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !249

.lr.ph.i670:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i670
  %.032.i671 = phi i32 [ %i.dmi, %.lr.ph.i670 ], [ 0, %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i672 = phi ptr [ %i.dmg, %.lr.ph.i670 ], [ %i.dig, %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i ] ; 20 uses
  %.02630.i673 = phi ptr [ %i.dmh, %.lr.ph.i670 ], [ %i.dii, %_ZN5arrow8internal12unpack_exactILi27ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 4
  %i.djh = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 16
  %i.dji = load <4 x i32>, ptr %.02531.i672, align 1 ; 2 uses
  %i.djj = load i32, ptr %i.djh, align 1
  %i.djk = load <4 x i32>, ptr %i.djg, align 1
  %i.djl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.djk, <4 x i32> %i.dji, <4 x i32> <i32 5, i32 10, i32 15, i32 20>)
  %i.djm = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 20 ; 2 uses
  %i.djn = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 24
  %i.djo = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 36
  %i.djp = load i32, ptr %i.djm, align 1          ; 2 uses
  %i.djq = load <4 x i32>, ptr %i.djm, align 1
  %i.djr = tail call i32 @llvm.fshl.i32(i32 %i.djp, i32 %i.djj, i32 25)
  %i.djs = load i32, ptr %i.djo, align 1
  %i.djt = load <4 x i32>, ptr %i.djn, align 1
  %i.dju = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.djt, <4 x i32> %i.djq, <4 x i32> <i32 3, i32 8, i32 13, i32 18>)
  %i.djv = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 40
  %i.djw = load i32, ptr %i.djv, align 1          ; 3 uses
  %i.djx = tail call i32 @llvm.fshl.i32(i32 %i.djw, i32 %i.djs, i32 23)
  %i.djy = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 44 ; 2 uses
  %i.djz = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 48
  %i.dka = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 52
  %i.dkb = load i32, ptr %i.djy, align 1
  %i.dkc = load <2 x i32>, ptr %i.djy, align 1
  %i.dkd = tail call i32 @llvm.fshl.i32(i32 %i.dkb, i32 %i.djw, i32 1)
  %i.dke = load <2 x i32>, ptr %i.djz, align 1
  %i.dkf = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dke, <2 x i32> %i.dkc, <2 x i32> <i32 6, i32 11>)
  %i.dkg = shufflevector <4 x i32> %i.dji, <4 x i32> %i.djl, <16 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dkh = insertelement <16 x i32> %i.dkg, i32 %i.djr, i64 5
  %i.dki = lshr i32 %i.djp, 2
  %i.dkj = insertelement <16 x i32> %i.dkh, i32 %i.dki, i64 6
  %i.dkk = shufflevector <4 x i32> %i.dju, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dkl = shufflevector <16 x i32> %i.dkj, <16 x i32> %i.dkk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dkm = insertelement <16 x i32> %i.dkl, i32 %i.djx, i64 11
  %i.dkn = lshr i32 %i.djw, 4
  %i.dko = insertelement <16 x i32> %i.dkm, i32 %i.dkn, i64 12
  %i.dkp = insertelement <16 x i32> %i.dko, i32 %i.dkd, i64 13
  %i.dkq = shufflevector <2 x i32> %i.dkf, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0137.60.vec.insert.i.i6741410 = shufflevector <16 x i32> %i.dkp, <16 x i32> %i.dkq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %66 = and <16 x i32> %.sroa.0137.60.vec.insert.i.i6741410, splat (i32 134217727)
  store <16 x i32> %66, ptr %.02630.i673, align 1, !tbaa !10
  %i.dkr = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 56
  %i.dks = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 60
  %i.dkt = load <2 x i32>, ptr %i.dka, align 1
  %i.dku = load i32, ptr %i.dks, align 1
  %i.dkv = load <2 x i32>, ptr %i.dkr, align 1
  %i.dkw = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dkv, <2 x i32> %i.dkt, <2 x i32> <i32 16, i32 21>)
  %i.dkx = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 64 ; 2 uses
  %i.dky = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 68
  %i.dkz = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 80
  %i.dla = load i32, ptr %i.dkx, align 1          ; 2 uses
  %i.dlb = load <4 x i32>, ptr %i.dkx, align 1
  %i.dlc = tail call i32 @llvm.fshl.i32(i32 %i.dla, i32 %i.dku, i32 26)
  %i.dld = load i32, ptr %i.dkz, align 1
  %i.dle = load <4 x i32>, ptr %i.dky, align 1
  %i.dlf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dle, <4 x i32> %i.dlb, <4 x i32> <i32 4, i32 9, i32 14, i32 19>)
  %i.dlg = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 84 ; 2 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 88
  %i.dli = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 100
  %i.dlj = load i32, ptr %i.dlg, align 1          ; 2 uses
  %i.dlk = load <4 x i32>, ptr %i.dlg, align 1
  %i.dll = tail call i32 @llvm.fshl.i32(i32 %i.dlj, i32 %i.dld, i32 24)
  %i.dlm = load i32, ptr %i.dli, align 1
  %i.dln = load <4 x i32>, ptr %i.dlh, align 1
  %i.dlo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dln, <4 x i32> %i.dlk, <4 x i32> <i32 2, i32 7, i32 12, i32 17>)
  %i.dlp = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 104
  %i.dlq = load i32, ptr %i.dlp, align 1          ; 2 uses
  %i.dlr = tail call i32 @llvm.fshl.i32(i32 %i.dlq, i32 %i.dlm, i32 22)
  %i.dls = shufflevector <2 x i32> %i.dkw, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dlt = insertelement <16 x i32> %i.dls, i32 %i.dlc, i64 2
  %i.dlu = lshr i32 %i.dla, 1
  %i.dlv = insertelement <16 x i32> %i.dlt, i32 %i.dlu, i64 3
  %i.dlw = shufflevector <4 x i32> %i.dlf, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dlx = shufflevector <16 x i32> %i.dlv, <16 x i32> %i.dlw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dly = insertelement <16 x i32> %i.dlx, i32 %i.dll, i64 8
  %i.dlz = lshr i32 %i.dlj, 3
  %i.dma = insertelement <16 x i32> %i.dly, i32 %i.dlz, i64 9
  %i.dmb = shufflevector <4 x i32> %i.dlo, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dmc = shufflevector <16 x i32> %i.dma, <16 x i32> %i.dmb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison>
  %i.dmd = insertelement <16 x i32> %i.dmc, i32 %i.dlr, i64 14
  %i.dme = lshr i32 %i.dlq, 5
  %.sroa.0157.60.vec.insert.i.i = insertelement <16 x i32> %i.dmd, i32 %i.dme, i64 15
  %i.dmf = getelementptr inbounds nuw i8, ptr %.02630.i673, i64 64
  %67 = and <16 x i32> %.sroa.0157.60.vec.insert.i.i, splat (i32 134217727)
  store <16 x i32> %67, ptr %i.dmf, align 1, !tbaa !10
  %i.dmg = getelementptr inbounds nuw i8, ptr %.02531.i672, i64 108 ; 2 uses
  %i.dmh = getelementptr inbounds nuw i8, ptr %.02630.i673, i64 128 ; 2 uses
  %i.dmi = add nuw nsw i32 %.032.i671, 1          ; 2 uses
  %exitcond.not.i675 = icmp eq i32 %i.dmi, %i.dij
  br i1 %exitcond.not.i675, label %._crit_edge.i662, label %.lr.ph.i670, !llvm.loop !250

bb.be:                                            ; preds = %bb.a
  %i.dmj = mul nsw i32 %2, 28
  %i.dmk = add nsw i32 %4, %i.dmj
  %i.dml = icmp sgt i32 %2, 0
  br i1 %i.dml, label %.lr.ph.i.i697, label %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i697:                                    ; preds = %bb.be, %bb.bf
  %.026.i.i698 = phi ptr [ %i.dnb, %bb.bf ], [ %1, %bb.be ] ; 2 uses
  %.02325.i.i699 = phi i32 [ %i.dmo, %bb.bf ], [ %4, %bb.be ] ; 5 uses
  %i.dmm = srem i32 %.02325.i.i699, 8             ; 2 uses
  %i.dmn = sdiv i32 %.02325.i.i699, 8             ; 2 uses
  %.not.i.i700 = icmp eq i32 %i.dmm, 0
  br i1 %.not.i.i700, label %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i697
  %i.dmo = add nsw i32 %.02325.i.i699, 28         ; 3 uses
  %i.dmp = add nsw i32 %.02325.i.i699, 27
  %i.dmq = sdiv i32 %i.dmp, 8
  %i.dmr = sub nsw i32 %i.dmq, %i.dmn             ; 2 uses
  %i.dms = add nsw i32 %i.dmr, 1
  %i.dmt = icmp slt i32 %i.dmr, 5
  tail call void @llvm.assume(i1 %i.dmt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8, !tbaa !12
  %i.dmu = sext i32 %i.dmn to i64
  %i.dmv = getelementptr inbounds i8, ptr %0, i64 %i.dmu
  %i.dmw = sext i32 %i.dms to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr readonly align 1 %i.dmv, i64 %i.dmw, i1 false)
  %.0..0..0..0..0..0..0..0..i.i701 = load i64, ptr %i.i, align 8, !tbaa !12
  %i.dmx = zext nneg i32 %i.dmm to i64
  %i.dmy = lshr i64 %.0..0..0..0..0..0..0..0..i.i701, %i.dmx
  %i.dmz = trunc i64 %i.dmy to i32
  %i.dna = and i32 %i.dmz, 268435455
  store i32 %i.dna, ptr %.026.i.i698, align 4, !tbaa !6
  %i.dnb = getelementptr inbounds nuw i8, ptr %.026.i.i698, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dnc = icmp slt i32 %i.dmo, %i.dmk
  br i1 %i.dnc, label %.lr.ph.i.i697, label %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !251

_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.bf, %.lr.ph.i.i697, %bb.be
  %.023.lcssa.i.i681 = phi i32 [ %4, %bb.be ], [ %i.dmo, %bb.bf ], [ %.02325.i.i699, %.lr.ph.i.i697 ]
  %i.dnd = sub nsw i32 %.023.lcssa.i.i681, %4
  %i.dne = sdiv i32 %i.dnd, 28                    ; 3 uses
  %i.dnf = mul nsw i32 %i.dne, 28
  %i.dng = add nsw i32 %i.dnf, %4
  %i.dnh = sub nsw i32 %2, %i.dne                 ; 4 uses
  %i.dni = sdiv i32 %i.dng, 8
  %i.dnj = sext i32 %i.dni to i64
  %i.dnk = getelementptr inbounds i8, ptr %0, i64 %i.dnj ; 2 uses
  %i.dnl = sext i32 %i.dne to i64
  %i.dnm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dnl ; 2 uses
  %i.dnn = sdiv i32 %i.dnh, 32                    ; 2 uses
  %i.dno = icmp sgt i32 %i.dnh, 31
  br i1 %i.dno, label %.lr.ph.i690, label %._crit_edge.i682

._crit_edge.i682:                                 ; preds = %.lr.ph.i690, %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i683 = phi ptr [ %i.dnm, %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.drf, %.lr.ph.i690 ]
  %.025.lcssa.i684 = phi ptr [ %i.dnk, %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dre, %.lr.ph.i690 ]
  %i.dnp = shl nsw i32 %i.dnn, 5                  ; 2 uses
  %i.dnq = sub nsw i32 %i.dnh, %i.dnp             ; 2 uses
  %i.dnr = icmp samesign ult i32 %i.dnq, 32
  tail call void @llvm.assume(i1 %i.dnr)
  %i.dns = mul nuw nsw i32 %i.dnq, 28
  %.not.i685 = icmp eq i32 %i.dnh, %i.dnp
  br i1 %.not.i685, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i686

.lr.ph.i28.i686:                                  ; preds = %._crit_edge.i682, %.lr.ph.i28.i686
  %.024.i.i687 = phi ptr [ %i.doi, %.lr.ph.i28.i686 ], [ %.026.lcssa.i683, %._crit_edge.i682 ] ; 2 uses
  %.02223.i.i688 = phi i32 [ %i.dnu, %.lr.ph.i28.i686 ], [ 0, %._crit_edge.i682 ] ; 4 uses
  %i.dnt = lshr i32 %.02223.i.i688, 3             ; 2 uses
  %i.dnu = add nuw nsw i32 %.02223.i.i688, 28     ; 2 uses
  %i.dnv = add nuw nsw i32 %.02223.i.i688, 24
  %i.dnw = lshr i32 %i.dnv, 3
  %i.dnx = sub nsw i32 %i.dnw, %i.dnt             ; 2 uses
  %i.dny = add nsw i32 %i.dnx, 1
  %i.dnz = icmp slt i32 %i.dnx, 4
  tail call void @llvm.assume(i1 %i.dnz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8, !tbaa !12
  %i.doa = zext nneg i32 %i.dnt to i64
  %i.dob = getelementptr inbounds nuw i8, ptr %.025.lcssa.i684, i64 %i.doa
  %i.doc = sext i32 %i.dny to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %i.dob, i64 %i.doc, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i689 = load i64, ptr %i.h, align 8, !tbaa !12
  %i.dod = and i32 %.02223.i.i688, 4
  %i.doe = zext nneg i32 %i.dod to i64
  %i.dof = lshr i64 %.0..0..0..0..0..0..0..0..i29.i689, %i.doe
  %i.dog = trunc i64 %i.dof to i32
  %i.doh = and i32 %i.dog, 268435455
  store i32 %i.doh, ptr %.024.i.i687, align 4, !tbaa !6
  %i.doi = getelementptr inbounds nuw i8, ptr %.024.i.i687, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.doj = icmp samesign ult i32 %i.dnu, %i.dns
  br i1 %i.doj, label %.lr.ph.i28.i686, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !252

.lr.ph.i690:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i690
  %.032.i691 = phi i32 [ %i.drg, %.lr.ph.i690 ], [ 0, %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i692 = phi ptr [ %i.dre, %.lr.ph.i690 ], [ %i.dnk, %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i ] ; 21 uses
  %.02630.i693 = phi ptr [ %i.drf, %.lr.ph.i690 ], [ %i.dnm, %_ZN5arrow8internal12unpack_exactILi28ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.dok = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 4
  %i.dol = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 16
  %i.dom = load <4 x i32>, ptr %.02531.i692, align 1 ; 2 uses
  %i.don = load <4 x i32>, ptr %i.dok, align 1
  %i.doo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.don, <4 x i32> %i.dom, <4 x i32> <i32 4, i32 8, i32 12, i32 16>)
  %i.dop = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 20
  %i.doq = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 24
  %i.dor = load <2 x i32>, ptr %i.dol, align 1
  %i.dos = load i32, ptr %i.doq, align 1
  %i.dot = load <2 x i32>, ptr %i.dop, align 1
  %i.dou = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dot, <2 x i32> %i.dor, <2 x i32> <i32 20, i32 24>)
  %i.dov = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 28
  %i.dow = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 32
  %i.dox = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 44
  %i.doy = load <4 x i32>, ptr %i.dov, align 1    ; 2 uses
  %i.doz = load <4 x i32>, ptr %i.dow, align 1
  %i.dpa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.doz, <4 x i32> %i.doy, <4 x i32> <i32 4, i32 8, i32 12, i32 16>)
  %i.dpb = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 48
  %i.dpc = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 52
  %i.dpd = load <2 x i32>, ptr %i.dox, align 1
  %i.dpe = load i32, ptr %i.dpc, align 1
  %i.dpf = load <2 x i32>, ptr %i.dpb, align 1
  %i.dpg = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dpf, <2 x i32> %i.dpd, <2 x i32> <i32 20, i32 24>)
  %i.dph = shufflevector <4 x i32> %i.dom, <4 x i32> %i.doo, <16 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpi = shufflevector <2 x i32> %i.dou, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpj = shufflevector <16 x i32> %i.dph, <16 x i32> %i.dpi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpk = lshr i32 %i.dos, 4
  %i.dpl = insertelement <16 x i32> %i.dpj, i32 %i.dpk, i64 7
  %i.dpm = shufflevector <4 x i32> %i.doy, <4 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpn = shufflevector <16 x i32> %i.dpl, <16 x i32> %i.dpm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpo = shufflevector <4 x i32> %i.dpa, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpp = shufflevector <16 x i32> %i.dpn, <16 x i32> %i.dpo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.dpq = shufflevector <2 x i32> %i.dpg, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpr = shufflevector <16 x i32> %i.dpp, <16 x i32> %i.dpq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.dps = lshr i32 %i.dpe, 4
  %.sroa.0135.60.vec.insert.i.i694 = insertelement <16 x i32> %i.dpr, i32 %i.dps, i64 15
  %68 = and <16 x i32> %.sroa.0135.60.vec.insert.i.i694, splat (i32 268435455)
  store <16 x i32> %68, ptr %.02630.i693, align 1, !tbaa !10
  %i.dpt = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 56
  %i.dpu = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 60
  %i.dpv = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 72
  %i.dpw = load <4 x i32>, ptr %i.dpt, align 1    ; 2 uses
  %i.dpx = load <4 x i32>, ptr %i.dpu, align 1
  %i.dpy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dpx, <4 x i32> %i.dpw, <4 x i32> <i32 4, i32 8, i32 12, i32 16>)
  %i.dpz = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 76
  %i.dqa = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 80
  %i.dqb = load <2 x i32>, ptr %i.dpv, align 1
  %i.dqc = load i32, ptr %i.dqa, align 1
  %i.dqd = load <2 x i32>, ptr %i.dpz, align 1
  %i.dqe = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dqd, <2 x i32> %i.dqb, <2 x i32> <i32 20, i32 24>)
  %i.dqf = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 84
  %i.dqg = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 88
  %i.dqh = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 100
  %i.dqi = load <4 x i32>, ptr %i.dqf, align 1    ; 2 uses
  %i.dqj = load <4 x i32>, ptr %i.dqg, align 1
  %i.dqk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dqj, <4 x i32> %i.dqi, <4 x i32> <i32 4, i32 8, i32 12, i32 16>)
  %i.dql = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 104
  %i.dqm = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 108
  %i.dqn = load <2 x i32>, ptr %i.dqh, align 1
  %i.dqo = load i32, ptr %i.dqm, align 1
  %i.dqp = load <2 x i32>, ptr %i.dql, align 1
  %i.dqq = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dqp, <2 x i32> %i.dqn, <2 x i32> <i32 20, i32 24>)
  %i.dqr = shufflevector <4 x i32> %i.dpw, <4 x i32> %i.dpy, <16 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqs = shufflevector <2 x i32> %i.dqe, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqt = shufflevector <16 x i32> %i.dqr, <16 x i32> %i.dqs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqu = lshr i32 %i.dqc, 4
  %i.dqv = insertelement <16 x i32> %i.dqt, i32 %i.dqu, i64 7
  %i.dqw = shufflevector <4 x i32> %i.dqi, <4 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqx = shufflevector <16 x i32> %i.dqv, <16 x i32> %i.dqw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqy = shufflevector <4 x i32> %i.dqk, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqz = shufflevector <16 x i32> %i.dqx, <16 x i32> %i.dqy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.dra = shufflevector <2 x i32> %i.dqq, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.drb = shufflevector <16 x i32> %i.dqz, <16 x i32> %i.dra, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.drc = lshr i32 %i.dqo, 4
  %.sroa.0155.60.vec.insert.i.i695 = insertelement <16 x i32> %i.drb, i32 %i.drc, i64 15
  %i.drd = getelementptr inbounds nuw i8, ptr %.02630.i693, i64 64
  %69 = and <16 x i32> %.sroa.0155.60.vec.insert.i.i695, splat (i32 268435455)
  store <16 x i32> %69, ptr %i.drd, align 1, !tbaa !10
  %i.dre = getelementptr inbounds nuw i8, ptr %.02531.i692, i64 112 ; 2 uses
  %i.drf = getelementptr inbounds nuw i8, ptr %.02630.i693, i64 128 ; 2 uses
  %i.drg = add nuw nsw i32 %.032.i691, 1          ; 2 uses
  %exitcond.not.i696 = icmp eq i32 %i.drg, %i.dnn
  br i1 %exitcond.not.i696, label %._crit_edge.i682, label %.lr.ph.i690, !llvm.loop !253

bb.bg:                                            ; preds = %bb.a
  %i.drh = mul nsw i32 %2, 29
  %i.dri = add nsw i32 %4, %i.drh
  %i.drj = icmp sgt i32 %2, 0
  br i1 %i.drj, label %.lr.ph.i.i717, label %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i717:                                    ; preds = %bb.bg, %bb.bh
  %.026.i.i718 = phi ptr [ %i.drz, %bb.bh ], [ %1, %bb.bg ] ; 2 uses
  %.02325.i.i719 = phi i32 [ %i.drm, %bb.bh ], [ %4, %bb.bg ] ; 5 uses
  %i.drk = srem i32 %.02325.i.i719, 8             ; 2 uses
  %i.drl = sdiv i32 %.02325.i.i719, 8             ; 2 uses
  %.not.i.i720 = icmp eq i32 %i.drk, 0
  br i1 %.not.i.i720, label %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i717
  %i.drm = add nsw i32 %.02325.i.i719, 29         ; 3 uses
  %i.drn = add nsw i32 %.02325.i.i719, 28
  %i.dro = sdiv i32 %i.drn, 8
  %i.drp = sub nsw i32 %i.dro, %i.drl             ; 2 uses
  %i.drq = add nsw i32 %i.drp, 1
  %i.drr = icmp slt i32 %i.drp, 5
  tail call void @llvm.assume(i1 %i.drr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8, !tbaa !12
  %i.drs = sext i32 %i.drl to i64
  %i.drt = getelementptr inbounds i8, ptr %0, i64 %i.drs
  %i.dru = sext i32 %i.drq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr readonly align 1 %i.drt, i64 %i.dru, i1 false)
  %.0..0..0..0..0..0..0..0..i.i721 = load i64, ptr %i.g, align 8, !tbaa !12
  %i.drv = zext nneg i32 %i.drk to i64
  %i.drw = lshr i64 %.0..0..0..0..0..0..0..0..i.i721, %i.drv
  %i.drx = trunc i64 %i.drw to i32
  %i.dry = and i32 %i.drx, 536870911
  store i32 %i.dry, ptr %.026.i.i718, align 4, !tbaa !6
  %i.drz = getelementptr inbounds nuw i8, ptr %.026.i.i718, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dsa = icmp slt i32 %i.drm, %i.dri
  br i1 %i.dsa, label %.lr.ph.i.i717, label %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !254

_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.bh, %.lr.ph.i.i717, %bb.bg
  %.023.lcssa.i.i702 = phi i32 [ %4, %bb.bg ], [ %i.drm, %bb.bh ], [ %.02325.i.i719, %.lr.ph.i.i717 ]
  %i.dsb = sub nsw i32 %.023.lcssa.i.i702, %4
  %i.dsc = sdiv i32 %i.dsb, 29                    ; 3 uses
  %i.dsd = mul nsw i32 %i.dsc, 29
  %i.dse = add nsw i32 %i.dsd, %4
  %i.dsf = sub nsw i32 %2, %i.dsc                 ; 4 uses
  %i.dsg = sdiv i32 %i.dse, 8
  %i.dsh = sext i32 %i.dsg to i64
  %i.dsi = getelementptr inbounds i8, ptr %0, i64 %i.dsh ; 2 uses
  %i.dsj = sext i32 %i.dsc to i64
  %i.dsk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dsj ; 2 uses
  %i.dsl = sdiv i32 %i.dsf, 32                    ; 2 uses
  %i.dsm = icmp sgt i32 %i.dsf, 31
  br i1 %i.dsm, label %.lr.ph.i711, label %._crit_edge.i703

._crit_edge.i703:                                 ; preds = %.lr.ph.i711, %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i704 = phi ptr [ %i.dsk, %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dvi, %.lr.ph.i711 ]
  %.025.lcssa.i705 = phi ptr [ %i.dsi, %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dvh, %.lr.ph.i711 ]
  %i.dsn = shl nsw i32 %i.dsl, 5                  ; 2 uses
  %i.dso = sub nsw i32 %i.dsf, %i.dsn             ; 2 uses
  %i.dsp = icmp samesign ult i32 %i.dso, 32
  tail call void @llvm.assume(i1 %i.dsp)
  %i.dsq = mul nuw nsw i32 %i.dso, 29
  %.not.i706 = icmp eq i32 %i.dsf, %i.dsn
  br i1 %.not.i706, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i707

.lr.ph.i28.i707:                                  ; preds = %._crit_edge.i703, %.lr.ph.i28.i707
  %.024.i.i708 = phi ptr [ %i.dtg, %.lr.ph.i28.i707 ], [ %.026.lcssa.i704, %._crit_edge.i703 ] ; 2 uses
  %.02223.i.i709 = phi i32 [ %i.dss, %.lr.ph.i28.i707 ], [ 0, %._crit_edge.i703 ] ; 4 uses
  %i.dsr = lshr i32 %.02223.i.i709, 3             ; 2 uses
  %i.dss = add nuw nsw i32 %.02223.i.i709, 29     ; 2 uses
  %i.dst = add nuw nsw i32 %.02223.i.i709, 28
  %i.dsu = lshr i32 %i.dst, 3
  %i.dsv = sub nsw i32 %i.dsu, %i.dsr             ; 2 uses
  %i.dsw = add nsw i32 %i.dsv, 1
  %i.dsx = icmp slt i32 %i.dsv, 5
  tail call void @llvm.assume(i1 %i.dsx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8, !tbaa !12
  %i.dsy = zext nneg i32 %i.dsr to i64
  %i.dsz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i705, i64 %i.dsy
  %i.dta = sext i32 %i.dsw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.dsz, i64 %i.dta, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i710 = load i64, ptr %i.f, align 8, !tbaa !12
  %i.dtb = and i32 %.02223.i.i709, 7
  %i.dtc = zext nneg i32 %i.dtb to i64
  %i.dtd = lshr i64 %.0..0..0..0..0..0..0..0..i29.i710, %i.dtc
  %i.dte = trunc i64 %i.dtd to i32
  %i.dtf = and i32 %i.dte, 536870911
  store i32 %i.dtf, ptr %.024.i.i708, align 4, !tbaa !6
  %i.dtg = getelementptr inbounds nuw i8, ptr %.024.i.i708, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dth = icmp samesign ult i32 %i.dss, %i.dsq
  br i1 %i.dth, label %.lr.ph.i28.i707, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !255

.lr.ph.i711:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i711
  %.032.i712 = phi i32 [ %i.dvj, %.lr.ph.i711 ], [ 0, %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i713 = phi ptr [ %i.dvh, %.lr.ph.i711 ], [ %i.dsi, %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i ] ; 14 uses
  %.02630.i714 = phi ptr [ %i.dvi, %.lr.ph.i711 ], [ %i.dsk, %_ZN5arrow8internal12unpack_exactILi29ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.dti = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 4
  %i.dtj = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 32
  %i.dtk = load <8 x i32>, ptr %.02531.i713, align 1 ; 2 uses
  %i.dtl = load i32, ptr %i.dtj, align 1
  %i.dtm = load <8 x i32>, ptr %i.dti, align 1
  %i.dtn = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dtm, <8 x i32> %i.dtk, <8 x i32> <i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24>)
  %i.dto = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 36 ; 2 uses
  %i.dtp = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 40
  %i.dtq = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 52
  %i.dtr = load i32, ptr %i.dto, align 1          ; 2 uses
  %i.dts = load <4 x i32>, ptr %i.dto, align 1
  %i.dtt = tail call i32 @llvm.fshl.i32(i32 %i.dtr, i32 %i.dtl, i32 27)
  %i.dtu = load i32, ptr %i.dtq, align 1
  %i.dtv = load <4 x i32>, ptr %i.dtp, align 1
  %i.dtw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dtv, <4 x i32> %i.dts, <4 x i32> <i32 1, i32 4, i32 7, i32 10>)
  %i.dtx = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 56 ; 2 uses
  %i.dty = load i32, ptr %i.dtx, align 1
  %i.dtz = tail call i32 @llvm.fshl.i32(i32 %i.dty, i32 %i.dtu, i32 13)
  %i.dua = shufflevector <8 x i32> %i.dtk, <8 x i32> %i.dtn, <16 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dub = insertelement <16 x i32> %i.dua, i32 %i.dtt, i64 9
  %i.duc = lshr i32 %i.dtr, 2
  %i.dud = insertelement <16 x i32> %i.dub, i32 %i.duc, i64 10
  %i.due = shufflevector <4 x i32> %i.dtw, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.duf = shufflevector <16 x i32> %i.dud, <16 x i32> %i.due, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 18, i32 19, i32 poison>
  %.sroa.0139.60.vec.insert.i.i715 = insertelement <16 x i32> %i.duf, i32 %i.dtz, i64 15
  %70 = and <16 x i32> %.sroa.0139.60.vec.insert.i.i715, splat (i32 536870911)
  store <16 x i32> %70, ptr %.02630.i714, align 1, !tbaa !10
  %i.dug = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 60
  %i.duh = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 72
  %i.dui = load <4 x i32>, ptr %i.dtx, align 1
  %i.duj = load i32, ptr %i.duh, align 1
  %i.duk = load <4 x i32>, ptr %i.dug, align 1
  %i.dul = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.duk, <4 x i32> %i.dui, <4 x i32> <i32 16, i32 19, i32 22, i32 25>)
  %i.dum = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 76 ; 2 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 80
  %i.duo = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 108
  %i.dup = load i32, ptr %i.dum, align 1          ; 2 uses
  %i.duq = load <8 x i32>, ptr %i.dum, align 1
  %i.dur = tail call i32 @llvm.fshl.i32(i32 %i.dup, i32 %i.duj, i32 28)
  %i.dus = load i32, ptr %i.duo, align 1
  %i.dut = load <8 x i32>, ptr %i.dun, align 1
  %i.duu = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dut, <8 x i32> %i.duq, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>)
  %i.duv = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 112
  %i.duw = load i32, ptr %i.duv, align 1          ; 2 uses
  %i.dux = tail call i32 @llvm.fshl.i32(i32 %i.duw, i32 %i.dus, i32 26)
  %i.duy = shufflevector <4 x i32> %i.dul, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.duz = insertelement <16 x i32> %i.duy, i32 %i.dur, i64 4
  %i.dva = lshr i32 %i.dup, 1
  %i.dvb = insertelement <16 x i32> %i.duz, i32 %i.dva, i64 5
  %i.dvc = shufflevector <8 x i32> %i.duu, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dvd = shufflevector <16 x i32> %i.dvb, <16 x i32> %i.dvc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison>
  %i.dve = insertelement <16 x i32> %i.dvd, i32 %i.dux, i64 14
  %i.dvf = lshr i32 %i.duw, 3
  %.sroa.0159.60.vec.insert.i.i = insertelement <16 x i32> %i.dve, i32 %i.dvf, i64 15
  %i.dvg = getelementptr inbounds nuw i8, ptr %.02630.i714, i64 64
  %71 = and <16 x i32> %.sroa.0159.60.vec.insert.i.i, splat (i32 536870911)
  store <16 x i32> %71, ptr %i.dvg, align 1, !tbaa !10
  %i.dvh = getelementptr inbounds nuw i8, ptr %.02531.i713, i64 116 ; 2 uses
  %i.dvi = getelementptr inbounds nuw i8, ptr %.02630.i714, i64 128 ; 2 uses
  %i.dvj = add nuw nsw i32 %.032.i712, 1          ; 2 uses
  %exitcond.not.i716 = icmp eq i32 %i.dvj, %i.dsl
  br i1 %exitcond.not.i716, label %._crit_edge.i703, label %.lr.ph.i711, !llvm.loop !256

bb.bi:                                            ; preds = %bb.a
  %i.dvk = mul nsw i32 %2, 30
  %i.dvl = add nsw i32 %4, %i.dvk
  %i.dvm = icmp sgt i32 %2, 0
  br i1 %i.dvm, label %.lr.ph.i.i738, label %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i738:                                    ; preds = %bb.bi, %bb.bj
  %.026.i.i739 = phi ptr [ %i.dwc, %bb.bj ], [ %1, %bb.bi ] ; 2 uses
  %.02325.i.i740 = phi i32 [ %i.dvp, %bb.bj ], [ %4, %bb.bi ] ; 5 uses
  %i.dvn = srem i32 %.02325.i.i740, 8             ; 2 uses
  %i.dvo = sdiv i32 %.02325.i.i740, 8             ; 2 uses
  %.not.i.i741 = icmp eq i32 %i.dvn, 0
  br i1 %.not.i.i741, label %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i738
  %i.dvp = add nsw i32 %.02325.i.i740, 30         ; 3 uses
  %i.dvq = add nsw i32 %.02325.i.i740, 29
  %i.dvr = sdiv i32 %i.dvq, 8
  %i.dvs = sub nsw i32 %i.dvr, %i.dvo             ; 2 uses
  %i.dvt = add nsw i32 %i.dvs, 1
  %i.dvu = icmp slt i32 %i.dvs, 5
  tail call void @llvm.assume(i1 %i.dvu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8, !tbaa !12
  %i.dvv = sext i32 %i.dvo to i64
  %i.dvw = getelementptr inbounds i8, ptr %0, i64 %i.dvv
  %i.dvx = sext i32 %i.dvt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr readonly align 1 %i.dvw, i64 %i.dvx, i1 false)
  %.0..0..0..0..0..0..0..0..i.i742 = load i64, ptr %i.e, align 8, !tbaa !12
  %i.dvy = zext nneg i32 %i.dvn to i64
  %i.dvz = lshr i64 %.0..0..0..0..0..0..0..0..i.i742, %i.dvy
  %i.dwa = trunc i64 %i.dvz to i32
  %i.dwb = and i32 %i.dwa, 1073741823
  store i32 %i.dwb, ptr %.026.i.i739, align 4, !tbaa !6
  %i.dwc = getelementptr inbounds nuw i8, ptr %.026.i.i739, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dwd = icmp slt i32 %i.dvp, %i.dvl
  br i1 %i.dwd, label %.lr.ph.i.i738, label %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !257

_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.bj, %.lr.ph.i.i738, %bb.bi
  %.023.lcssa.i.i722 = phi i32 [ %4, %bb.bi ], [ %i.dvp, %bb.bj ], [ %.02325.i.i740, %.lr.ph.i.i738 ]
  %i.dwe = sub nsw i32 %.023.lcssa.i.i722, %4
  %i.dwf = sdiv i32 %i.dwe, 30                    ; 3 uses
  %i.dwg = mul nsw i32 %i.dwf, 30
  %i.dwh = add nsw i32 %i.dwg, %4
  %i.dwi = sub nsw i32 %2, %i.dwf                 ; 4 uses
  %i.dwj = sdiv i32 %i.dwh, 8
  %i.dwk = sext i32 %i.dwj to i64
  %i.dwl = getelementptr inbounds i8, ptr %0, i64 %i.dwk ; 2 uses
  %i.dwm = sext i32 %i.dwf to i64
  %i.dwn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dwm ; 2 uses
  %i.dwo = sdiv i32 %i.dwi, 32                    ; 2 uses
  %i.dwp = icmp sgt i32 %i.dwi, 31
  br i1 %i.dwp, label %.lr.ph.i731, label %._crit_edge.i723

._crit_edge.i723:                                 ; preds = %.lr.ph.i731, %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i724 = phi ptr [ %i.dwn, %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dzg, %.lr.ph.i731 ]
  %.025.lcssa.i725 = phi ptr [ %i.dwl, %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dzf, %.lr.ph.i731 ]
  %i.dwq = shl nsw i32 %i.dwo, 5                  ; 2 uses
  %i.dwr = sub nsw i32 %i.dwi, %i.dwq             ; 2 uses
  %i.dws = icmp samesign ult i32 %i.dwr, 32
  tail call void @llvm.assume(i1 %i.dws)
  %i.dwt = mul nuw nsw i32 %i.dwr, 30
  %.not.i726 = icmp eq i32 %i.dwi, %i.dwq
  br i1 %.not.i726, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i727

.lr.ph.i28.i727:                                  ; preds = %._crit_edge.i723, %.lr.ph.i28.i727
  %.024.i.i728 = phi ptr [ %i.dxj, %.lr.ph.i28.i727 ], [ %.026.lcssa.i724, %._crit_edge.i723 ] ; 2 uses
  %.02223.i.i729 = phi i32 [ %i.dwv, %.lr.ph.i28.i727 ], [ 0, %._crit_edge.i723 ] ; 4 uses
  %i.dwu = lshr i32 %.02223.i.i729, 3             ; 2 uses
  %i.dwv = add nuw nsw i32 %.02223.i.i729, 30     ; 2 uses
  %i.dww = add nuw nsw i32 %.02223.i.i729, 28
  %i.dwx = lshr i32 %i.dww, 3
  %i.dwy = sub nsw i32 %i.dwx, %i.dwu             ; 2 uses
  %i.dwz = add nsw i32 %i.dwy, 1
  %i.dxa = icmp slt i32 %i.dwy, 5
  tail call void @llvm.assume(i1 %i.dxa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !12
  %i.dxb = zext nneg i32 %i.dwu to i64
  %i.dxc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i725, i64 %i.dxb
  %i.dxd = sext i32 %i.dwz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 1 %i.dxc, i64 %i.dxd, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i730 = load i64, ptr %i.d, align 8, !tbaa !12
  %i.dxe = and i32 %.02223.i.i729, 6
  %i.dxf = zext nneg i32 %i.dxe to i64
  %i.dxg = lshr i64 %.0..0..0..0..0..0..0..0..i29.i730, %i.dxf
  %i.dxh = trunc i64 %i.dxg to i32
  %i.dxi = and i32 %i.dxh, 1073741823
  store i32 %i.dxi, ptr %.024.i.i728, align 4, !tbaa !6
  %i.dxj = getelementptr inbounds nuw i8, ptr %.024.i.i728, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dxk = icmp samesign ult i32 %i.dwv, %i.dwt
  br i1 %i.dxk, label %.lr.ph.i28.i727, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !258

.lr.ph.i731:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i731
  %.032.i732 = phi i32 [ %i.dzh, %.lr.ph.i731 ], [ 0, %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i733 = phi ptr [ %i.dzf, %.lr.ph.i731 ], [ %i.dwl, %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i ] ; 15 uses
  %.02630.i734 = phi ptr [ %i.dzg, %.lr.ph.i731 ], [ %i.dwn, %_ZN5arrow8internal12unpack_exactILi30ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.dxl = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 4
  %i.dxm = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 32
  %i.dxn = load <8 x i32>, ptr %.02531.i733, align 1 ; 2 uses
  %i.dxo = load <8 x i32>, ptr %i.dxl, align 1
  %i.dxp = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dxo, <8 x i32> %i.dxn, <8 x i32> <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16>)
  %i.dxq = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 36
  %i.dxr = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 48
  %i.dxs = load <4 x i32>, ptr %i.dxm, align 1
  %i.dxt = load <4 x i32>, ptr %i.dxq, align 1
  %i.dxu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dxt, <4 x i32> %i.dxs, <4 x i32> <i32 18, i32 20, i32 22, i32 24>)
  %i.dxv = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 52
  %i.dxw = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 56
  %i.dxx = load <2 x i32>, ptr %i.dxr, align 1
  %i.dxy = load i32, ptr %i.dxw, align 1
  %i.dxz = load <2 x i32>, ptr %i.dxv, align 1
  %i.dya = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dxz, <2 x i32> %i.dxx, <2 x i32> <i32 26, i32 28>)
  %i.dyb = shufflevector <8 x i32> %i.dxn, <8 x i32> %i.dxp, <16 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyc = shufflevector <4 x i32> %i.dxu, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyd = shufflevector <16 x i32> %i.dyb, <16 x i32> %i.dyc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.dye = shufflevector <2 x i32> %i.dya, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyf = shufflevector <16 x i32> %i.dyd, <16 x i32> %i.dye, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.dyg = lshr i32 %i.dxy, 2
  %.sroa.0139.60.vec.insert.i.i735 = insertelement <16 x i32> %i.dyf, i32 %i.dyg, i64 15
  %72 = and <16 x i32> %.sroa.0139.60.vec.insert.i.i735, splat (i32 1073741823)
  store <16 x i32> %72, ptr %.02630.i734, align 1, !tbaa !10
  %i.dyh = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 60
  %i.dyi = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 64
  %i.dyj = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 92
  %i.dyk = load <8 x i32>, ptr %i.dyh, align 1    ; 2 uses
  %i.dyl = load <8 x i32>, ptr %i.dyi, align 1
  %i.dym = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dyl, <8 x i32> %i.dyk, <8 x i32> <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16>)
  %i.dyn = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 96
  %i.dyo = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 108
  %i.dyp = load <4 x i32>, ptr %i.dyj, align 1
  %i.dyq = load <4 x i32>, ptr %i.dyn, align 1
  %i.dyr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dyq, <4 x i32> %i.dyp, <4 x i32> <i32 18, i32 20, i32 22, i32 24>)
  %i.dys = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 112
  %i.dyt = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 116
  %i.dyu = load <2 x i32>, ptr %i.dyo, align 1
  %i.dyv = load i32, ptr %i.dyt, align 1
  %i.dyw = load <2 x i32>, ptr %i.dys, align 1
  %i.dyx = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dyw, <2 x i32> %i.dyu, <2 x i32> <i32 26, i32 28>)
  %i.dyy = shufflevector <8 x i32> %i.dyk, <8 x i32> %i.dym, <16 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyz = shufflevector <4 x i32> %i.dyr, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dza = shufflevector <16 x i32> %i.dyy, <16 x i32> %i.dyz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.dzb = shufflevector <2 x i32> %i.dyx, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzc = shufflevector <16 x i32> %i.dza, <16 x i32> %i.dzb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.dzd = lshr i32 %i.dyv, 2
  %.sroa.0159.60.vec.insert.i.i736 = insertelement <16 x i32> %i.dzc, i32 %i.dzd, i64 15
  %i.dze = getelementptr inbounds nuw i8, ptr %.02630.i734, i64 64
  %73 = and <16 x i32> %.sroa.0159.60.vec.insert.i.i736, splat (i32 1073741823)
  store <16 x i32> %73, ptr %i.dze, align 1, !tbaa !10
  %i.dzf = getelementptr inbounds nuw i8, ptr %.02531.i733, i64 120 ; 2 uses
  %i.dzg = getelementptr inbounds nuw i8, ptr %.02630.i734, i64 128 ; 2 uses
  %i.dzh = add nuw nsw i32 %.032.i732, 1          ; 2 uses
  %exitcond.not.i737 = icmp eq i32 %i.dzh, %i.dwo
  br i1 %exitcond.not.i737, label %._crit_edge.i723, label %.lr.ph.i731, !llvm.loop !259

bb.bk:                                            ; preds = %bb.a
  %i.dzi = mul nsw i32 %2, 31
  %i.dzj = add nsw i32 %4, %i.dzi
  %i.dzk = icmp sgt i32 %2, 0
  br i1 %i.dzk, label %.lr.ph.i.i758, label %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i758:                                    ; preds = %bb.bk, %bb.bl
  %.026.i.i759 = phi ptr [ %i.eaa, %bb.bl ], [ %1, %bb.bk ] ; 2 uses
  %.02325.i.i760 = phi i32 [ %i.dzn, %bb.bl ], [ %4, %bb.bk ] ; 5 uses
  %i.dzl = srem i32 %.02325.i.i760, 8             ; 2 uses
  %i.dzm = sdiv i32 %.02325.i.i760, 8             ; 2 uses
  %.not.i.i761 = icmp eq i32 %i.dzl, 0
  br i1 %.not.i.i761, label %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i758
  %i.dzn = add nsw i32 %.02325.i.i760, 31         ; 3 uses
  %i.dzo = add nsw i32 %.02325.i.i760, 30
  %i.dzp = sdiv i32 %i.dzo, 8
  %i.dzq = sub nsw i32 %i.dzp, %i.dzm             ; 2 uses
  %i.dzr = add nsw i32 %i.dzq, 1
  %i.dzs = icmp slt i32 %i.dzq, 5
  tail call void @llvm.assume(i1 %i.dzs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !12
  %i.dzt = sext i32 %i.dzm to i64
  %i.dzu = getelementptr inbounds i8, ptr %0, i64 %i.dzt
  %i.dzv = sext i32 %i.dzr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr readonly align 1 %i.dzu, i64 %i.dzv, i1 false)
  %.0..0..0..0..0..0..0..0..i.i762 = load i64, ptr %i.c, align 8, !tbaa !12
  %i.dzw = zext nneg i32 %i.dzl to i64
  %i.dzx = lshr i64 %.0..0..0..0..0..0..0..0..i.i762, %i.dzw
  %i.dzy = trunc i64 %i.dzx to i32
  %i.dzz = and i32 %i.dzy, 2147483647
  store i32 %i.dzz, ptr %.026.i.i759, align 4, !tbaa !6
  %i.eaa = getelementptr inbounds nuw i8, ptr %.026.i.i759, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eab = icmp slt i32 %i.dzn, %i.dzj
  br i1 %i.eab, label %.lr.ph.i.i758, label %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !260

_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.bl, %.lr.ph.i.i758, %bb.bk
  %.023.lcssa.i.i743 = phi i32 [ %4, %bb.bk ], [ %i.dzn, %bb.bl ], [ %.02325.i.i760, %.lr.ph.i.i758 ]
  %i.eac = sub nsw i32 %.023.lcssa.i.i743, %4
  %i.ead = sdiv i32 %i.eac, 31                    ; 3 uses
  %i.eae = mul nsw i32 %i.ead, 31
  %i.eaf = add nsw i32 %i.eae, %4
  %i.eag = sub nsw i32 %2, %i.ead                 ; 4 uses
  %i.eah = sdiv i32 %i.eaf, 8
  %i.eai = sext i32 %i.eah to i64
  %i.eaj = getelementptr inbounds i8, ptr %0, i64 %i.eai ; 2 uses
  %i.eak = sext i32 %i.ead to i64
  %i.eal = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eak ; 2 uses
  %i.eam = sdiv i32 %i.eag, 32                    ; 2 uses
  %i.ean = icmp sgt i32 %i.eag, 31
  br i1 %i.ean, label %.lr.ph.i752, label %._crit_edge.i744

._crit_edge.i744:                                 ; preds = %.lr.ph.i752, %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i745 = phi ptr [ %i.eal, %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.edk, %.lr.ph.i752 ]
  %.025.lcssa.i746 = phi ptr [ %i.eaj, %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.edj, %.lr.ph.i752 ]
  %i.eao = shl nsw i32 %i.eam, 5                  ; 2 uses
  %i.eap = sub nsw i32 %i.eag, %i.eao             ; 2 uses
  %i.eaq = icmp samesign ult i32 %i.eap, 32
  tail call void @llvm.assume(i1 %i.eaq)
  %i.ear = mul nuw nsw i32 %i.eap, 31
  %.not.i747 = icmp eq i32 %i.eag, %i.eao
  br i1 %.not.i747, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i748

.lr.ph.i28.i748:                                  ; preds = %._crit_edge.i744, %.lr.ph.i28.i748
  %.024.i.i749 = phi ptr [ %i.ebh, %.lr.ph.i28.i748 ], [ %.026.lcssa.i745, %._crit_edge.i744 ] ; 2 uses
  %.02223.i.i750 = phi i32 [ %i.eat, %.lr.ph.i28.i748 ], [ 0, %._crit_edge.i744 ] ; 4 uses
  %i.eas = lshr i32 %.02223.i.i750, 3             ; 2 uses
  %i.eat = add nuw nsw i32 %.02223.i.i750, 31     ; 2 uses
  %i.eau = add nuw nsw i32 %.02223.i.i750, 30
  %i.eav = lshr i32 %i.eau, 3
  %i.eaw = sub nsw i32 %i.eav, %i.eas             ; 2 uses
  %i.eax = add nsw i32 %i.eaw, 1
  %i.eay = icmp slt i32 %i.eaw, 5
  tail call void @llvm.assume(i1 %i.eay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !12
  %i.eaz = zext nneg i32 %i.eas to i64
  %i.eba = getelementptr inbounds nuw i8, ptr %.025.lcssa.i746, i64 %i.eaz
  %i.ebb = sext i32 %i.eax to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.eba, i64 %i.ebb, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i751 = load i64, ptr %i.b, align 8, !tbaa !12
  %i.ebc = and i32 %.02223.i.i750, 7
  %i.ebd = zext nneg i32 %i.ebc to i64
  %i.ebe = lshr i64 %.0..0..0..0..0..0..0..0..i29.i751, %i.ebd
  %i.ebf = trunc i64 %i.ebe to i32
  %i.ebg = and i32 %i.ebf, 2147483647
  store i32 %i.ebg, ptr %.024.i.i749, align 4, !tbaa !6
  %i.ebh = getelementptr inbounds nuw i8, ptr %.024.i.i749, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ebi = icmp samesign ult i32 %i.eat, %i.ear
  br i1 %i.ebi, label %.lr.ph.i28.i748, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !261

.lr.ph.i752:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i752
  %.032.i753 = phi i32 [ %i.edl, %.lr.ph.i752 ], [ 0, %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i754 = phi ptr [ %i.edj, %.lr.ph.i752 ], [ %i.eaj, %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i ] ; 16 uses
  %.02630.i755 = phi ptr [ %i.edk, %.lr.ph.i752 ], [ %i.eal, %_ZN5arrow8internal12unpack_exactILi31ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.ebj = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 4
  %i.ebk = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 32
  %i.ebl = load <8 x i32>, ptr %.02531.i754, align 1 ; 2 uses
  %i.ebm = load <8 x i32>, ptr %i.ebj, align 1
  %i.ebn = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ebm, <8 x i32> %i.ebl, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>)
  %i.ebo = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 36
  %i.ebp = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 48
  %i.ebq = load <4 x i32>, ptr %i.ebk, align 1
  %i.ebr = load i32, ptr %i.ebp, align 1
  %i.ebs = load <4 x i32>, ptr %i.ebo, align 1
  %i.ebt = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ebs, <4 x i32> %i.ebq, <4 x i32> <i32 9, i32 10, i32 11, i32 12>)
  %i.ebu = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 52 ; 2 uses
  %i.ebv = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 56
  %i.ebw = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 60
  %i.ebx = load i32, ptr %i.ebu, align 1
  %i.eby = load <2 x i32>, ptr %i.ebu, align 1
  %i.ebz = tail call i32 @llvm.fshl.i32(i32 %i.ebx, i32 %i.ebr, i32 13)
  %i.eca = load <2 x i32>, ptr %i.ebv, align 1
  %i.ecb = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.eca, <2 x i32> %i.eby, <2 x i32> <i32 14, i32 15>)
  %i.ecc = shufflevector <8 x i32> %i.ebl, <8 x i32> %i.ebn, <16 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ecd = shufflevector <4 x i32> %i.ebt, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ece = shufflevector <16 x i32> %i.ecc, <16 x i32> %i.ecd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.ecf = insertelement <16 x i32> %i.ece, i32 %i.ebz, i64 13
  %i.ecg = shufflevector <2 x i32> %i.ecb, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0141.60.vec.insert.i.i7561411 = shufflevector <16 x i32> %i.ecf, <16 x i32> %i.ecg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %74 = and <16 x i32> %.sroa.0141.60.vec.insert.i.i7561411, splat (i32 2147483647)
  store <16 x i32> %74, ptr %.02630.i755, align 1, !tbaa !10
  %i.ech = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 64
  %i.eci = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 92
  %i.ecj = load <8 x i32>, ptr %i.ebw, align 1
  %i.eck = load <8 x i32>, ptr %i.ech, align 1
  %i.ecl = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.eck, <8 x i32> %i.ecj, <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>)
  %i.ecm = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 96
  %i.ecn = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 108
  %i.eco = load <4 x i32>, ptr %i.eci, align 1
  %i.ecp = load i32, ptr %i.ecn, align 1
  %i.ecq = load <4 x i32>, ptr %i.ecm, align 1
  %i.ecr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ecq, <4 x i32> %i.eco, <4 x i32> <i32 24, i32 25, i32 26, i32 27>)
  %i.ecs = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 112 ; 2 uses
  %i.ect = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 116
  %i.ecu = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 120
  %i.ecv = load i32, ptr %i.ecs, align 1
  %i.ecw = load <2 x i32>, ptr %i.ecs, align 1
  %i.ecx = tail call i32 @llvm.fshl.i32(i32 %i.ecv, i32 %i.ecp, i32 28)
  %i.ecy = load i32, ptr %i.ecu, align 1
  %i.ecz = load <2 x i32>, ptr %i.ect, align 1
  %i.eda = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ecz, <2 x i32> %i.ecw, <2 x i32> <i32 29, i32 30>)
  %i.edb = shufflevector <8 x i32> %i.ecl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.edc = shufflevector <4 x i32> %i.ecr, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.edd = shufflevector <16 x i32> %i.edb, <16 x i32> %i.edc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ede = insertelement <16 x i32> %i.edd, i32 %i.ecx, i64 12
  %i.edf = shufflevector <2 x i32> %i.eda, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.edg = shufflevector <16 x i32> %i.ede, <16 x i32> %i.edf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.edh = lshr i32 %i.ecy, 1
  %.sroa.0161.60.vec.insert.i.i = insertelement <16 x i32> %i.edg, i32 %i.edh, i64 15
  %i.edi = getelementptr inbounds nuw i8, ptr %.02630.i755, i64 64
  %75 = and <16 x i32> %.sroa.0161.60.vec.insert.i.i, splat (i32 2147483647)
  store <16 x i32> %75, ptr %i.edi, align 1, !tbaa !10
  %i.edj = getelementptr inbounds nuw i8, ptr %.02531.i754, i64 124 ; 2 uses
  %i.edk = getelementptr inbounds nuw i8, ptr %.02630.i755, i64 128 ; 2 uses
  %i.edl = add nuw nsw i32 %.032.i753, 1          ; 2 uses
  %exitcond.not.i757 = icmp eq i32 %i.edl, %i.eam
  br i1 %exitcond.not.i757, label %._crit_edge.i744, label %.lr.ph.i752, !llvm.loop !262

bb.bm:                                            ; preds = %bb.a
  %i.edm = shl nsw i32 %2, 5
  %i.edn = add nsw i32 %4, %i.edm
  %i.edo = icmp sgt i32 %2, 0
  br i1 %i.edo, label %.lr.ph.i.i764, label %_ZN5arrow8internal12unpack_widthILi32ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit

.lr.ph.i.i764:                                    ; preds = %bb.bm, %bb.bn
  %.026.i.i765 = phi ptr [ %i.eed, %bb.bn ], [ %1, %bb.bm ] ; 2 uses
  %.02325.i.i766 = phi i32 [ %i.edr, %bb.bn ], [ %4, %bb.bm ] ; 5 uses
  %i.edp = srem i32 %.02325.i.i766, 8             ; 2 uses
  %i.edq = sdiv i32 %.02325.i.i766, 8             ; 2 uses
  %.not.i.i767 = icmp eq i32 %i.edp, 0
  br i1 %.not.i.i767, label %_ZN5arrow8internal12unpack_widthILi32ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i764
  %i.edr = add nsw i32 %.02325.i.i766, 32         ; 3 uses
  %i.eds = add nsw i32 %.02325.i.i766, 31
  %i.edt = sdiv i32 %i.eds, 8
  %i.edu = sub nsw i32 %i.edt, %i.edq             ; 2 uses
  %i.edv = add nsw i32 %i.edu, 1
  %i.edw = icmp slt i32 %i.edu, 5
  tail call void @llvm.assume(i1 %i.edw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !12
  %i.edx = sext i32 %i.edq to i64
  %i.edy = getelementptr inbounds i8, ptr %0, i64 %i.edx
  %i.edz = sext i32 %i.edv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr readonly align 1 %i.edy, i64 %i.edz, i1 false)
  %.0..0..0..0..0..0..0..0..i.i768 = load i64, ptr %i.a, align 8, !tbaa !12
  %i.eea = zext nneg i32 %i.edp to i64
  %i.eeb = lshr i64 %.0..0..0..0..0..0..0..0..i.i768, %i.eea
  %i.eec = trunc i64 %i.eeb to i32
  store i32 %i.eec, ptr %.026.i.i765, align 4, !tbaa !6
  %i.eed = getelementptr inbounds nuw i8, ptr %.026.i.i765, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eee = icmp slt i32 %i.edr, %i.edn
  br i1 %i.eee, label %.lr.ph.i.i764, label %_ZN5arrow8internal12unpack_widthILi32ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !263

_ZN5arrow8internal12unpack_widthILi32ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit: ; preds = %.lr.ph.i.i764, %bb.bn, %bb.bm
  %.023.lcssa.i.i763 = phi i32 [ %4, %bb.bm ], [ %i.edr, %bb.bn ], [ %.02325.i.i766, %.lr.ph.i.i764 ]
  %i.eef = sub nsw i32 %.023.lcssa.i.i763, %4
  %i.eeg = sdiv i32 %i.eef, 32                    ; 3 uses
  %i.eeh = shl nsw i32 %i.eeg, 5
  %i.eei = add nsw i32 %i.eeh, %4
  %i.eej = sub nsw i32 %2, %i.eeg
  %i.eek = sdiv i32 %i.eei, 8
  %i.eel = sext i32 %i.eek to i64
  %i.eem = getelementptr inbounds i8, ptr %0, i64 %i.eel
  %i.een = sext i32 %i.eeg to i64
  %i.eeo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.een
  %i.eep = sext i32 %i.eej to i64
  %i.eeq = shl nsw i64 %i.eep, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eeo, ptr readonly align 1 %i.eem, i64 %i.eeq, i1 false)
  br label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit

_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit: ; preds = %.lr.ph.i28.i748, %.lr.ph.i28.i727, %.lr.ph.i28.i707, %.lr.ph.i28.i686, %.lr.ph.i28.i666, %.lr.ph.i28.i645, %.lr.ph.i28.i625, %.lr.ph.i28.i603, %.lr.ph.i28.i582, %.lr.ph.i28.i561, %.lr.ph.i28.i541, %.lr.ph.i28.i520, %.lr.ph.i28.i501, %.lr.ph.i28.i480, %.lr.ph.i28.i461, %.lr.ph.i28.i439, %.lr.ph.i28.i419, %.lr.ph.i28.i398, %.lr.ph.i28.i379, %.lr.ph.i28.i358, %.lr.ph.i28.i339, %.lr.ph.i28.i318, %.lr.ph.i28.i299, %.lr.ph.i28.i280, %.lr.ph.i28.i261, %.lr.ph.i28.i240, %.lr.ph.i28.i221, %.lr.ph.i28.i201, %.lr.ph.i28.i183, %.lr.ph.i28.i137, %.lr.ph.i28.i, %middle.block, %vec.epilog.middle.block, %vec.epilog.middle.block1297, %middle.block1320, %middle.block1351, %vec.epilog.middle.block1371, %middle.block1396, %._crit_edge.i744, %._crit_edge.i723, %._crit_edge.i703, %._crit_edge.i682, %._crit_edge.i662, %._crit_edge.i641, %._crit_edge.i621, %._crit_edge.i598, %._crit_edge.i578, %._crit_edge.i557, %._crit_edge.i537, %._crit_edge.i516, %._crit_edge.i497, %._crit_edge.i476, %._crit_edge.i457, %._crit_edge.i434, %._crit_edge.i415, %._crit_edge.i394, %._crit_edge.i375, %._crit_edge.i354, %._crit_edge.i335, %._crit_edge.i314, %._crit_edge.i295, %._crit_edge.i276, %._crit_edge.i257, %._crit_edge.i236, %._crit_edge.i217, %._crit_edge.i197, %._crit_edge.i179, %._crit_edge.i133, %._crit_edge.i, %bb.a, %_ZN5arrow8internal12unpack_widthILi32ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal13unpack_avx512ImEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat !guid !277 {
bb.a:
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
    i32 21, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 27, label %bb.ac
    i32 28, label %bb.ad
    i32 29, label %bb.ae
    i32 30, label %bb.af
    i32 31, label %bb.ag
    i32 32, label %bb.ah
    i32 33, label %bb.ai
    i32 34, label %bb.aj
    i32 35, label %bb.ak
    i32 36, label %bb.al
    i32 37, label %bb.am
    i32 38, label %bb.an
    i32 39, label %bb.ao
    i32 40, label %bb.ap
    i32 41, label %bb.aq
    i32 42, label %bb.ar
    i32 43, label %bb.as
    i32 44, label %bb.at
    i32 45, label %bb.au
    i32 46, label %bb.av
    i32 47, label %bb.aw
    i32 48, label %bb.ax
    i32 49, label %bb.ay
    i32 50, label %bb.az
    i32 51, label %bb.ba
    i32 52, label %bb.bb
    i32 53, label %bb.bc
    i32 54, label %bb.bd
    i32 55, label %bb.be
    i32 56, label %bb.bf
    i32 57, label %bb.bg
    i32 58, label %bb.bh
    i32 59, label %bb.bi
    i32 60, label %bb.bj
    i32 61, label %bb.bk
    i32 62, label %bb.bl
    i32 63, label %bb.bm
    i32 64, label %bb.bn
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  %i.b = shl nsw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.b, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi2ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi3ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi4ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi5ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi6ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.i:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi7ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.j:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.k:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi9ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.l:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi10ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.m:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi11ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.n:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi12ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.o:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi13ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.p:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi14ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT0_iii.exit

bb.q:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12unpack_widthILi15ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
end_hunk_0
