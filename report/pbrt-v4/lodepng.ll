Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZL9writeBitsP16LodePNGBitWriterjm:bb.a
  %i.bg = zext nneg i8 %.pre-phi44 to i32
  %i.bh = shl nuw nsw i32 %i.bf, %i.bg
  %i.bi = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !57
  %i.bm = getelementptr i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1     ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = trunc nuw i32 %i.bh to i8
  %i.bq = or i8 %i.bo, %i.bp
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !29
  %i.br = load i8, ptr %i.a, align 8, !tbaa !75
  %i.bs = add i8 %i.br, 1                         ; 2 uses
  store i8 %i.bs, ptr %i.a, align 8, !tbaa !75
  %i.bt = add nuw nsw i64 %.036, 1                ; 2 uses
  %.not = icmp eq i64 %i.bt, %2
  br i1 %.not, label %_ZL15ucvector_resizeP8ucvectorm.exit.thread, label %bb.g, !llvm.loop !849

_ZL15ucvector_resizeP8ucvectorm.exit.thread:      ; preds = %bb.k, %bb.i, %bb.a, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 91) i32 @_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = icmp ugt i32 %5, 8191                    ; 2 uses
  %i.c = lshr i32 %5, 3
  %i.d = select i1 %i.b, i32 %5, i32 %i.c         ; 2 uses
  %i.e = select i1 %i.b, i32 258, i32 64
  %i.f = add i32 %5, -32769
  %or.cond = icmp ult i32 %i.f, -32768
  br i1 %or.cond, label %.thread284, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %5, -1
  %i.h = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %5)
  %.not = icmp samesign ult i32 %i.h, 2
  br i1 %.not, label %bb.c, label %.thread284

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %7, i32 258)
  %i.i = icmp ult i64 %3, %4
  br i1 %i.i, label %.lr.ph334, label %.thread284

.lr.ph334:                                        ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.not227299.not = icmp eq i32 %i.d, 0
  %i.q = zext nneg i32 %5 to i64
  %.not234 = icmp eq i32 %8, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph334, %.loopexit
  %.0188332 = phi i32 [ 0, %.lr.ph334 ], [ %.1189, %.loopexit ] ; 3 uses
  %.0190331 = phi i32 [ 0, %.lr.ph334 ], [ %.1191, %.loopexit ] ; 4 uses
  %.0192330 = phi i32 [ 0, %.lr.ph334 ], [ %.2, %.loopexit ] ; 2 uses
  %.0201329 = phi i32 [ 0, %.lr.ph334 ], [ %.5, %.loopexit ] ; 4 uses
  %.0209328 = phi i64 [ %3, %.lr.ph334 ], [ %i.nd, %.loopexit ] ; 19 uses
  %i.t = and i64 %.0209328, %i.j                  ; 8 uses
  %i.u = add i64 %.0209328, 2                     ; 2 uses
  %i.v = icmp ult i64 %i.u, %4
  br i1 %i.v, label %bb.e, label %iter.check440

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.0209328 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 4
  %i.ad = xor i32 %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.u
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = xor i32 %i.ad, %i.ah
  br label %_ZL7getHashPKhmm.exit

iter.check440:                                    ; preds = %bb.d
  %i.aj = sub nuw i64 %4, %.0209328               ; 8 uses
  %i.ak = getelementptr i8, ptr %2, i64 %.0209328 ; 3 uses
  %min.iters.check412 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check412, label %vec.epilog.scalar.ph441.preheader, label %vector.main.loop.iter.check413

vector.main.loop.iter.check413:                   ; preds = %iter.check440
  %min.iters.check414 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check414, label %vec.epilog.ph444, label %vector.ph415

vector.ph415:                                     ; preds = %vector.main.loop.iter.check413
  %i.al = and i64 %i.aj, 24
  %n.vec416 = and i64 %i.aj, -32                  ; 4 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next431, %vector.body417 ] ; 2 uses
  %vec.phi419 = phi <8 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.bc, %vector.body417 ]
  %vec.phi420 = phi <8 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.bd, %vector.body417 ]
  %vec.phi421 = phi <8 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.be, %vector.body417 ]
  %vec.phi422 = phi <8 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.bf, %vector.body417 ]
  %vec.ind423 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph415 ], [ %vec.ind.next432, %vector.body417 ] ; 5 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 %index418 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %i.ap = getelementptr i8, ptr %i.am, i64 24
  %wide.load427 = load <8 x i8>, ptr %i.am, align 1, !tbaa !29
  %wide.load428 = load <8 x i8>, ptr %i.an, align 1, !tbaa !29
  %wide.load429 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !29
  %wide.load430 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !29
  %i.aq = zext <8 x i8> %wide.load427 to <8 x i32>
  %i.ar = zext <8 x i8> %wide.load428 to <8 x i32>
  %i.as = zext <8 x i8> %wide.load429 to <8 x i32>
  %i.at = zext <8 x i8> %wide.load430 to <8 x i32>
  %i.au = shl <8 x i32> %vec.ind423, splat (i32 3)
  %step.add424 = shl <8 x i32> %vec.ind423, splat (i32 3)
  %i.av = add <8 x i32> %step.add424, splat (i32 64)
  %step.add.2425 = shl <8 x i32> %vec.ind423, splat (i32 3)
  %i.aw = add <8 x i32> %step.add.2425, splat (i32 128)
  %step.add.3426 = shl <8 x i32> %vec.ind423, splat (i32 3)
  %i.ax = add <8 x i32> %step.add.3426, splat (i32 192)
  %i.ay = shl <8 x i32> %i.aq, %i.au
  %i.az = shl <8 x i32> %i.ar, %i.av
  %i.ba = shl <8 x i32> %i.as, %i.aw
  %i.bb = shl <8 x i32> %i.at, %i.ax
  %i.bc = xor <8 x i32> %i.ay, %vec.phi419        ; 2 uses
  %i.bd = xor <8 x i32> %i.az, %vec.phi420        ; 2 uses
  %i.be = xor <8 x i32> %i.ba, %vec.phi421        ; 2 uses
  %i.bf = xor <8 x i32> %i.bb, %vec.phi422        ; 2 uses
  %index.next431 = add nuw i64 %index418, 32      ; 2 uses
  %vec.ind.next432 = add <8 x i32> %vec.ind423, splat (i32 32)
  %i.bg = icmp eq i64 %index.next431, %n.vec416
  br i1 %i.bg, label %middle.block433, label %vector.body417, !llvm.loop !850

middle.block433:                                  ; preds = %vector.body417
  %bin.rdx434 = xor <8 x i32> %i.bd, %i.bc
  %bin.rdx435 = xor <8 x i32> %i.be, %bin.rdx434
  %bin.rdx436 = xor <8 x i32> %i.bf, %bin.rdx435
  %i.bh = tail call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %bin.rdx436) ; 3 uses
  %cmp.n437 = icmp eq i64 %i.aj, %n.vec416
  br i1 %cmp.n437, label %_ZL7getHashPKhmm.exit, label %vec.epilog.iter.check442

vec.epilog.iter.check442:                         ; preds = %middle.block433
  %min.epilog.iters.check443 = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check443, label %vec.epilog.scalar.ph441.preheader, label %vec.epilog.ph444, !prof !92

vec.epilog.ph444:                                 ; preds = %vector.main.loop.iter.check413, %vec.epilog.iter.check442
  %vec.epilog.resume.val438 = phi i64 [ %n.vec416, %vec.epilog.iter.check442 ], [ 0, %vector.main.loop.iter.check413 ] ; 2 uses
  %bc.merge.rdx439 = phi i32 [ %i.bh, %vec.epilog.iter.check442 ], [ 0, %vector.main.loop.iter.check413 ]
  %n.vec445 = and i64 %i.aj, -8                   ; 3 uses
  %i.bi = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx439, i64 0
  %i.bj = trunc i64 %vec.epilog.resume.val438 to i32
  %broadcast.splatinsert446 = insertelement <8 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat447 = shufflevector <8 x i32> %broadcast.splatinsert446, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction448 = or disjoint <8 x i32> %broadcast.splat447, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body449

vec.epilog.vector.body449:                        ; preds = %vec.epilog.vector.body449, %vec.epilog.ph444
  %index450 = phi i64 [ %vec.epilog.resume.val438, %vec.epilog.ph444 ], [ %index.next454, %vec.epilog.vector.body449 ] ; 2 uses
  %vec.phi451 = phi <8 x i32> [ %i.bi, %vec.epilog.ph444 ], [ %i.bo, %vec.epilog.vector.body449 ]
  %vec.ind452 = phi <8 x i32> [ %induction448, %vec.epilog.ph444 ], [ %vec.ind.next455, %vec.epilog.vector.body449 ] ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ak, i64 %index450
  %wide.load453 = load <8 x i8>, ptr %i.bk, align 1, !tbaa !29
  %i.bl = zext <8 x i8> %wide.load453 to <8 x i32>
  %i.bm = shl <8 x i32> %vec.ind452, splat (i32 3)
  %i.bn = shl <8 x i32> %i.bl, %i.bm
  %i.bo = xor <8 x i32> %i.bn, %vec.phi451        ; 2 uses
  %index.next454 = add nuw i64 %index450, 8       ; 2 uses
  %vec.ind.next455 = add <8 x i32> %vec.ind452, splat (i32 8)
  %i.bp = icmp eq i64 %index.next454, %n.vec445
  br i1 %i.bp, label %vec.epilog.middle.block456, label %vec.epilog.vector.body449, !llvm.loop !851

vec.epilog.middle.block456:                       ; preds = %vec.epilog.vector.body449
  %i.bq = tail call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %i.bo) ; 2 uses
  %cmp.n457 = icmp eq i64 %i.aj, %n.vec445
  br i1 %cmp.n457, label %_ZL7getHashPKhmm.exit, label %vec.epilog.scalar.ph441.preheader

vec.epilog.scalar.ph441.preheader:                ; preds = %iter.check440, %vec.epilog.iter.check442, %vec.epilog.middle.block456
  %.02535.i.ph = phi i64 [ 0, %iter.check440 ], [ %n.vec416, %vec.epilog.iter.check442 ], [ %n.vec445, %vec.epilog.middle.block456 ]
  %.02634.i.ph = phi i32 [ 0, %iter.check440 ], [ %i.bh, %vec.epilog.iter.check442 ], [ %i.bq, %vec.epilog.middle.block456 ]
  br label %vec.epilog.scalar.ph441

vec.epilog.scalar.ph441:                          ; preds = %vec.epilog.scalar.ph441.preheader, %vec.epilog.scalar.ph441
  %.02535.i = phi i64 [ %i.bx, %vec.epilog.scalar.ph441 ], [ %.02535.i.ph, %vec.epilog.scalar.ph441.preheader ] ; 3 uses
  %.02634.i = phi i32 [ %i.bw, %vec.epilog.scalar.ph441 ], [ %.02634.i.ph, %vec.epilog.scalar.ph441.preheader ]
  %i.br = getelementptr i8, ptr %i.ak, i64 %.02535.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %i.bt = zext i8 %i.bs to i32
  %.025.tr.i = trunc i64 %.02535.i to i32
  %i.bu = shl i32 %.025.tr.i, 3
  %i.bv = shl i32 %i.bt, %i.bu
  %i.bw = xor i32 %i.bv, %.02634.i                ; 2 uses
  %i.bx = add nuw nsw i64 %.02535.i, 1            ; 2 uses
  %.not32.i = icmp eq i64 %i.bx, %i.aj
  br i1 %.not32.i, label %_ZL7getHashPKhmm.exit, label %vec.epilog.scalar.ph441, !llvm.loop !852

_ZL7getHashPKhmm.exit:                            ; preds = %vec.epilog.scalar.ph441, %middle.block433, %vec.epilog.middle.block456, %bb.e
  %.2.i = phi i32 [ %i.ai, %bb.e ], [ %i.bq, %vec.epilog.middle.block456 ], [ %i.bh, %middle.block433 ], [ %i.bw, %vec.epilog.scalar.ph441 ]
  %i.by = and i32 %.2.i, 65535                    ; 4 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZL7getHashPKhmm.exit
  %i.ca = icmp eq i32 %.0201329, 0
  br i1 %i.ca, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.0209328 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 258
  %i.cd = add nuw nsw i64 %.0209328, 258
  %i.ce = icmp samesign ugt i64 %i.cd, %4
  %spec.select.i = select i1 %i.ce, ptr %i.k, ptr %i.cc ; 3 uses
  %.not17.i = icmp eq ptr %i.cb, %spec.select.i
  br i1 %.not17.i, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %bb.g, %bb.h
  %.01418.i = phi ptr [ %i.ch, %bb.h ], [ %i.cb, %bb.g ] ; 3 uses
  %i.cf = load i8, ptr %.01418.i, align 1, !tbaa !29
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.h, label %_ZL10countZerosPKhmm.exit

bb.h:                                             ; preds = %.lr.ph.i242
  %i.ch = getelementptr inbounds nuw i8, ptr %.01418.i, i64 1 ; 2 uses
  %.not.i243 = icmp eq ptr %i.ch, %spec.select.i
  br i1 %.not.i243, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i242, !llvm.loop !853

_ZL10countZerosPKhmm.exit:                        ; preds = %.lr.ph.i242, %bb.h, %bb.g
  %.014.lcssa.i = phi ptr [ %i.cb, %bb.g ], [ %.01418.i, %.lr.ph.i242 ], [ %spec.select.i, %bb.h ]
  %i.ci = ptrtoint ptr %.014.lcssa.i to i64
  %i.cj = ptrtoint ptr %i.cb to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.cm = zext i32 %.0201329 to i64
  %i.cn = add i64 %.0209328, %i.cm                ; 2 uses
  %i.co = icmp ugt i64 %i.cn, %4
  br i1 %i.co, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr i8, ptr %2, i64 %i.cn
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
  %.not226 = icmp eq i8 %i.cr, 0
  br i1 %.not226, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cs = add i32 %.0201329, -1
  br label %bb.l

bb.l:                                             ; preds = %_ZL7getHashPKhmm.exit, %_ZL10countZerosPKhmm.exit, %bb.k, %bb.j
  %.1202 = phi i32 [ %i.cl, %_ZL10countZerosPKhmm.exit ], [ %i.cs, %bb.k ], [ %.0201329, %bb.j ], [ 0, %_ZL7getHashPKhmm.exit ] ; 10 uses
  %i.ct = trunc i32 %.1202 to i16
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !80  ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.t
  store i32 %i.by, ptr %i.cv, align 4, !tbaa !30
  %i.cw = load ptr, ptr %1, align 8, !tbaa !79
  %i.cx = zext nneg i32 %i.by to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !30 ; 2 uses
  %.not.i244 = icmp eq i32 %i.cz, -1
  br i1 %.not.i244, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = trunc i32 %i.cz to i16
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.t
  store i16 %i.da, ptr %i.dc, align 2, !tbaa !70
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dd = trunc nuw nsw i64 %i.t to i32           ; 2 uses
  store i32 %i.dd, ptr %i.cy, align 4, !tbaa !30
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !82  ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.t
  store i16 %i.ct, ptr %i.df, align 2, !tbaa !70
  %i.dg = load ptr, ptr %i.o, align 8, !tbaa !83  ; 2 uses
  %.mask = and i32 %.1202, 65535
  %i.dh = zext nneg i32 %.mask to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !30 ; 2 uses
  %.not24.i = icmp eq i32 %i.dj, -1
  br i1 %.not24.i, label %_ZL15updateHashChainP4Hashmjt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.t
  store i16 %i.dk, ptr %i.dm, align 2, !tbaa !70
  br label %_ZL15updateHashChainP4Hashmjt.exit

_ZL15updateHashChainP4Hashmjt.exit:               ; preds = %bb.n, %bb.o
  store i32 %i.dd, ptr %i.di, align 4, !tbaa !30
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !81  ; 2 uses
  %i.do = add i64 %.0209328, 258
  %i.dp = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.do) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %i.dp ; 3 uses
  br i1 %.not227299.not, label %._crit_edge, label %.lr.ph304

.lr.ph304:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.t
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !70
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %.0209328 ; 3 uses
  %i.du = icmp ugt i32 %.1202, 2                  ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph304, %bb.aa
  %i.dw = phi i32 [ 1, %.lr.ph304 ], [ %i.fk, %bb.aa ] ; 2 uses
  %.0182.in303 = phi i16 [ %i.ds, %.lr.ph304 ], [ %.1.in, %bb.aa ] ; 2 uses
  %.0187302 = phi i32 [ 0, %.lr.ph304 ], [ %i.eb, %bb.aa ]
  %.0194301 = phi i32 [ 0, %.lr.ph304 ], [ %.1195, %bb.aa ] ; 4 uses
  %.0197300 = phi i32 [ 0, %.lr.ph304 ], [ %.1198, %bb.aa ] ; 3 uses
  %i.dx = zext i16 %.0182.in303 to i64            ; 5 uses
  %.not228 = icmp samesign ult i64 %i.t, %i.dx
  %i.dy = sub nsw i64 %i.t, %i.dx
  %i.dz = select i1 %.not228, i64 %i.q, i64 0
  %i.ea = add nsw i64 %i.dz, %i.dy                ; 3 uses
  %i.eb = trunc nsw i64 %i.ea to i32              ; 4 uses
  %i.ec = icmp ugt i32 %.0187302, %i.eb
  br i1 %i.ec, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not229 = icmp eq i64 %i.ea, 0
  br i1 %.not229, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = and i64 %i.ea, 4294967295
  %i.ee = sub i64 %.0209328, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.ee ; 2 uses
  br i1 %i.du, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dx
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !70
  %i.ei = zext i16 %i.eh to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.1202, i32 %i.ei)
  %i.ej = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ej
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0185 = phi ptr [ %i.el, %bb.s ], [ %i.dt, %bb.r ] ; 4 uses
  %.0183 = phi ptr [ %i.ek, %bb.s ], [ %i.ef, %bb.r ]
  %.not230294 = icmp eq ptr %.0185, %i.dq
  br i1 %.not230294, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %.0185348 = ptrtoaddr ptr %.0185 to i64
  %scevgep = getelementptr i8, ptr %.0185, i64 %i.a
  %scevgep347 = getelementptr i8, ptr %scevgep, i64 %i.dp
  %i.em = sub i64 0, %.0185348
  %scevgep349 = getelementptr i8, ptr %scevgep347, i64 %i.em
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.1184296 = phi ptr [ %i.eq, %bb.u ], [ %.0183, %.lr.ph.preheader ] ; 2 uses
  %.1186295 = phi ptr [ %i.er, %bb.u ], [ %.0185, %.lr.ph.preheader ] ; 3 uses
  %i.en = load i8, ptr %.1184296, align 1, !tbaa !29
  %i.eo = load i8, ptr %.1186295, align 1, !tbaa !29
  %i.ep = icmp eq i8 %i.en, %i.eo
  br i1 %i.ep, label %bb.u, label %.critedge

bb.u:                                             ; preds = %.lr.ph
  %i.eq = getelementptr inbounds nuw i8, ptr %.1184296, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %.1186295, i64 1 ; 2 uses
  %.not230 = icmp eq ptr %i.er, %i.dq
  br i1 %.not230, label %.critedge, label %.lr.ph, !llvm.loop !854

.critedge:                                        ; preds = %.lr.ph, %bb.u, %bb.t
  %.1186.lcssa = phi ptr [ %i.dq, %bb.t ], [ %scevgep349, %bb.u ], [ %.1186295, %.lr.ph ]
  %i.es = ptrtoint ptr %.1186.lcssa to i64
  %i.et = sub i64 %i.es, %i.dv
  %i.eu = trunc i64 %i.et to i32                  ; 4 uses
  %i.ev = icmp ult i32 %.0194301, %i.eu
  br i1 %i.ev, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge
  %.not231 = icmp ugt i32 %spec.store.select, %i.eu
  br i1 %.not231, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %.critedge, %bb.v, %bb.q
  %.1198 = phi i32 [ %i.eb, %bb.v ], [ %.0197300, %.critedge ], [ %.0197300, %bb.q ] ; 5 uses
  %.1195 = phi i32 [ %i.eu, %bb.v ], [ %.0194301, %.critedge ], [ %.0194301, %bb.q ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.dx
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !70 ; 3 uses
  %i.ey = icmp eq i16 %.0182.in303, %i.ex
  br i1 %i.ey, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = icmp ugt i32 %.1195, %.1202
end_hunk_0
begin_hunk_1_@_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj:bb.a
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !30
  %i.ij = icmp ult i32 %.3200, %i.ii
  br i1 %i.ij, label %bb.az, label %_ZL15searchCodeIndexPKjmm.exit29.i

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ik = add i64 %.117.i24.i, -1
  br label %_ZL15searchCodeIndexPKjmm.exit29.i

_ZL15searchCodeIndexPKjmm.exit29.i:               ; preds = %bb.az, %bb.ay
  %.2.i28.i = phi i64 [ %i.ik, %bb.az ], [ %.117.i24.i, %bb.ay ] ; 2 uses
  %i.il = and i64 %.2.i28.i, 4294967295
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !30
  %i.io = load i64, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %i.ip = add i64 %i.io, 4                        ; 2 uses
  %i.iq = shl i64 %i.ip, 2                        ; 2 uses
  %i.ir = load i64, ptr %i.s, align 8, !tbaa !91  ; 2 uses
  %i.is = icmp ugt i64 %i.iq, %i.ir
  %.pre.i253 = load ptr, ptr %0, align 8, !tbaa !89 ; 2 uses
  br i1 %i.is, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.it = lshr i64 %i.ir, 1
  %i.iu = add i64 %i.it, %i.iq                    ; 2 uses
  %i.iv = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i253, i64 noundef %i.iu) #33 ; 3 uses
  %.not.not.i.i254 = icmp eq ptr %i.iv, null
  br i1 %.not.not.i.i254, label %.lr.ph325, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.iu, ptr %i.s, align 8, !tbaa !91
  store ptr %i.iv, ptr %0, align 8, !tbaa !89
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.iw = phi ptr [ %i.iv, %bb.bb ], [ %.pre.i253, %_ZL15searchCodeIndexPKjmm.exit29.i ]
  store i64 %i.ip, ptr %i.r, align 8, !tbaa !90
  %i.ix = sub i32 %.3200, %i.in
  %i.iy = trunc i64 %.2.i28.i to i32
  %i.iz = sub i32 %.3, %i.ia
  %i.ja = trunc i64 %.2.i.i to i32
  %i.jb = add i32 %i.ja, 257
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.io ; 4 uses
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !30
  %i.jd = getelementptr i8, ptr %i.jc, i64 4
  store i32 %i.iz, ptr %i.jd, align 4, !tbaa !30
  %i.je = getelementptr i8, ptr %i.jc, i64 8
  store i32 %i.iy, ptr %i.je, align 4, !tbaa !30
  %i.jf = getelementptr i8, ptr %i.jc, i64 12
  store i32 %i.ix, ptr %i.jf, align 4, !tbaa !30
  br label %.lr.ph325

.lr.ph325:                                        ; preds = %bb.bc, %bb.ba
  %i.jg = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.jh = load ptr, ptr %1, align 8, !tbaa !79
  %i.ji = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.jj = load ptr, ptr %i.o, align 8, !tbaa !83
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph325, %_ZL15updateHashChainP4Hashmjt.exit274
  %.2203324 = phi i32 [ %.1202, %.lr.ph325 ], [ %.3204, %_ZL15updateHashChainP4Hashmjt.exit274 ] ; 4 uses
  %.0208323 = phi i32 [ 1, %.lr.ph325 ], [ %i.nb, %_ZL15updateHashChainP4Hashmjt.exit274 ]
  %.2211322 = phi i64 [ %.1210, %.lr.ph325 ], [ %i.jk, %_ZL15updateHashChainP4Hashmjt.exit274 ] ; 4 uses
  %i.jk = add i64 %.2211322, 1                    ; 9 uses
  %i.jl = and i64 %i.jk, %i.j                     ; 5 uses
  %i.jm = add i64 %.2211322, 3                    ; 2 uses
  %i.jn = icmp ult i64 %i.jm, %4
  br i1 %i.jn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 %i.jk ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !29
  %i.jq = zext i8 %i.jp to i32
  %i.jr = getelementptr i8, ptr %i.jo, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !29
  %i.jt = zext i8 %i.js to i32
  %i.ju = shl nuw nsw i32 %i.jt, 4
  %i.jv = xor i32 %i.ju, %i.jq
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 %i.jm
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !29
  %i.jy = zext i8 %i.jx to i32
  %i.jz = shl nuw nsw i32 %i.jy, 8
  %i.ka = xor i32 %i.jv, %i.jz
  br label %_ZL7getHashPKhmm.exit264

bb.bf:                                            ; preds = %bb.bd
  %.not.i255 = icmp ult i64 %i.jk, %4
  br i1 %.not.i255, label %iter.check, label %_ZL7getHashPKhmm.exit264.thread

iter.check:                                       ; preds = %bb.bf
  %i.kb = sub nuw i64 %4, %i.jk                   ; 8 uses
  %i.kc = getelementptr i8, ptr %2, i64 %i.jk     ; 3 uses
  %min.iters.check = icmp ult i64 %i.kb, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check394 = icmp ult i64 %i.kb, 32
  br i1 %min.iters.check394, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kd = and i64 %i.kb, 24
  %n.vec = and i64 %i.kb, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ku, %vector.body ]
  %vec.phi395 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.kv, %vector.body ]
  %vec.phi396 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.kw, %vector.body ]
  %vec.phi397 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.kx, %vector.body ]
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ke = getelementptr i8, ptr %i.kc, i64 %index ; 4 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %i.kg = getelementptr i8, ptr %i.ke, i64 16
  %i.kh = getelementptr i8, ptr %i.ke, i64 24
  %wide.load = load <8 x i8>, ptr %i.ke, align 1, !tbaa !29
  %wide.load398 = load <8 x i8>, ptr %i.kf, align 1, !tbaa !29
  %wide.load399 = load <8 x i8>, ptr %i.kg, align 1, !tbaa !29
  %wide.load400 = load <8 x i8>, ptr %i.kh, align 1, !tbaa !29
  %i.ki = zext <8 x i8> %wide.load to <8 x i32>
  %i.kj = zext <8 x i8> %wide.load398 to <8 x i32>
  %i.kk = zext <8 x i8> %wide.load399 to <8 x i32>
  %i.kl = zext <8 x i8> %wide.load400 to <8 x i32>
  %i.km = shl <8 x i32> %vec.ind, splat (i32 3)
  %step.add = shl <8 x i32> %vec.ind, splat (i32 3)
  %i.kn = add <8 x i32> %step.add, splat (i32 64)
  %step.add.2 = shl <8 x i32> %vec.ind, splat (i32 3)
  %i.ko = add <8 x i32> %step.add.2, splat (i32 128)
  %step.add.3 = shl <8 x i32> %vec.ind, splat (i32 3)
  %i.kp = add <8 x i32> %step.add.3, splat (i32 192)
  %i.kq = shl <8 x i32> %i.ki, %i.km
  %i.kr = shl <8 x i32> %i.kj, %i.kn
  %i.ks = shl <8 x i32> %i.kk, %i.ko
  %i.kt = shl <8 x i32> %i.kl, %i.kp
  %i.ku = xor <8 x i32> %i.kq, %vec.phi           ; 2 uses
  %i.kv = xor <8 x i32> %i.kr, %vec.phi395        ; 2 uses
  %i.kw = xor <8 x i32> %i.ks, %vec.phi396        ; 2 uses
  %i.kx = xor <8 x i32> %i.kt, %vec.phi397        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ky = icmp eq i64 %index.next, %n.vec
  br i1 %i.ky, label %middle.block, label %vector.body, !llvm.loop !857

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <8 x i32> %i.kv, %i.ku
  %bin.rdx401 = xor <8 x i32> %i.kw, %bin.rdx
  %bin.rdx402 = xor <8 x i32> %i.kx, %bin.rdx401
  %i.kz = tail call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %bin.rdx402) ; 3 uses
  %cmp.n = icmp eq i64 %i.kb, %n.vec
  br i1 %cmp.n, label %_ZL7getHashPKhmm.exit264, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.kz, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec403 = and i64 %i.kb, -8                   ; 3 uses
  %i.la = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.lb = trunc i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.lb, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index404 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next408, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi405 = phi <8 x i32> [ %i.la, %vec.epilog.ph ], [ %i.lg, %vec.epilog.vector.body ]
  %vec.ind406 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next409, %vec.epilog.vector.body ] ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kc, i64 %index404
  %wide.load407 = load <8 x i8>, ptr %i.lc, align 1, !tbaa !29
  %i.ld = zext <8 x i8> %wide.load407 to <8 x i32>
  %i.le = shl <8 x i32> %vec.ind406, splat (i32 3)
  %i.lf = shl <8 x i32> %i.ld, %i.le
  %i.lg = xor <8 x i32> %i.lf, %vec.phi405        ; 2 uses
  %index.next408 = add nuw i64 %index404, 8       ; 2 uses
  %vec.ind.next409 = add <8 x i32> %vec.ind406, splat (i32 8)
  %i.lh = icmp eq i64 %index.next408, %n.vec403
  br i1 %i.lh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !858

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.li = tail call i32 @llvm.vector.reduce.xor.v8i32(<8 x i32> %i.lg) ; 2 uses
  %cmp.n410 = icmp eq i64 %i.kb, %n.vec403
  br i1 %cmp.n410, label %_ZL7getHashPKhmm.exit264, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02535.i258.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec403, %vec.epilog.middle.block ]
  %.02634.i259.ph = phi i32 [ 0, %iter.check ], [ %i.kz, %vec.epilog.iter.check ], [ %i.li, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02535.i258 = phi i64 [ %i.lp, %vec.epilog.scalar.ph ], [ %.02535.i258.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.02634.i259 = phi i32 [ %i.lo, %vec.epilog.scalar.ph ], [ %.02634.i259.ph, %vec.epilog.scalar.ph.preheader ]
  %i.lj = getelementptr i8, ptr %i.kc, i64 %.02535.i258
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !29
  %i.ll = zext i8 %i.lk to i32
  %.025.tr.i260 = trunc i64 %.02535.i258 to i32
  %i.lm = shl i32 %.025.tr.i260, 3
  %i.ln = shl i32 %i.ll, %i.lm
  %i.lo = xor i32 %i.ln, %.02634.i259             ; 2 uses
  %i.lp = add nuw nsw i64 %.02535.i258, 1         ; 2 uses
  %.not32.i261 = icmp eq i64 %i.lp, %i.kb
  br i1 %.not32.i261, label %_ZL7getHashPKhmm.exit264, label %vec.epilog.scalar.ph, !llvm.loop !859

_ZL7getHashPKhmm.exit264:                         ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.be
  %.2.i263 = phi i32 [ %i.ka, %bb.be ], [ %i.li, %vec.epilog.middle.block ], [ %i.kz, %middle.block ], [ %i.lo, %vec.epilog.scalar.ph ]
  %i.lq = and i32 %.2.i263, 65535                 ; 2 uses
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %_ZL7getHashPKhmm.exit264.thread, label %bb.bl

_ZL7getHashPKhmm.exit264.thread:                  ; preds = %bb.bf, %_ZL7getHashPKhmm.exit264
  %i.ls = icmp eq i32 %.2203324, 0
  br i1 %i.ls, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %_ZL7getHashPKhmm.exit264.thread
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 %i.jk ; 5 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 258
  %i.lv = add i64 %.2211322, 259
  %i.lw = icmp samesign ugt i64 %i.lv, %4
  %spec.select.i265 = select i1 %i.lw, ptr %i.k, ptr %i.lu ; 3 uses
  %.not17.i266 = icmp eq ptr %i.lt, %spec.select.i265
  br i1 %.not17.i266, label %_ZL10countZerosPKhmm.exit271, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %bb.bg, %bb.bh
  %.01418.i268 = phi ptr [ %i.lz, %bb.bh ], [ %i.lt, %bb.bg ] ; 3 uses
  %i.lx = load i8, ptr %.01418.i268, align 1, !tbaa !29
  %i.ly = icmp eq i8 %i.lx, 0
  br i1 %i.ly, label %bb.bh, label %_ZL10countZerosPKhmm.exit271

bb.bh:                                            ; preds = %.lr.ph.i267
  %i.lz = getelementptr inbounds nuw i8, ptr %.01418.i268, i64 1 ; 2 uses
  %.not.i270 = icmp eq ptr %i.lz, %spec.select.i265
  br i1 %.not.i270, label %_ZL10countZerosPKhmm.exit271, label %.lr.ph.i267, !llvm.loop !853

_ZL10countZerosPKhmm.exit271:                     ; preds = %.lr.ph.i267, %bb.bh, %bb.bg
  %.014.lcssa.i269 = phi ptr [ %i.lt, %bb.bg ], [ %.01418.i268, %.lr.ph.i267 ], [ %spec.select.i265, %bb.bh ]
  %i.ma = ptrtoint ptr %.014.lcssa.i269 to i64
  %i.mb = ptrtoint ptr %i.lt to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = trunc i64 %i.mc to i32
  br label %bb.bl

bb.bi:                                            ; preds = %_ZL7getHashPKhmm.exit264.thread
  %i.me = zext i32 %.2203324 to i64               ; 2 uses
  %i.mf = add i64 %i.jk, %i.me
  %i.mg = icmp ugt i64 %i.mf, %4
  br i1 %i.mg, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mh = getelementptr i8, ptr %2, i64 %.2211322
  %i.mi = getelementptr i8, ptr %i.mh, i64 %i.me
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !29
  %.not237 = icmp eq i8 %i.mj, 0
  br i1 %.not237, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mk = add i32 %.2203324, -1
  br label %bb.bl

bb.bl:                                            ; preds = %_ZL7getHashPKhmm.exit264, %_ZL10countZerosPKhmm.exit271, %bb.bk, %bb.bj
  %.128.i256282 = phi i32 [ 0, %_ZL10countZerosPKhmm.exit271 ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ %i.lq, %_ZL7getHashPKhmm.exit264 ] ; 2 uses
  %.3204 = phi i32 [ %i.md, %_ZL10countZerosPKhmm.exit271 ], [ %i.mk, %bb.bk ], [ %.2203324, %bb.bj ], [ 0, %_ZL7getHashPKhmm.exit264 ] ; 4 uses
  %i.ml = trunc i32 %.3204 to i16
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jl
  store i32 %.128.i256282, ptr %i.mm, align 4, !tbaa !30
  %i.mn = zext nneg i32 %.128.i256282 to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !30 ; 2 uses
  %.not.i272 = icmp eq i32 %i.mp, -1
  br i1 %.not.i272, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mq = trunc i32 %i.mp to i16
  %i.mr = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mr, i64 %i.jl
  store i16 %i.mq, ptr %i.ms, align 2, !tbaa !70
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.mt = trunc nuw nsw i64 %i.jl to i32          ; 2 uses
  store i32 %i.mt, ptr %i.mo, align 4, !tbaa !30
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %i.jl
  store i16 %i.ml, ptr %i.mu, align 2, !tbaa !70
  %.mask292 = and i32 %.3204, 65535
  %i.mv = zext nneg i32 %.mask292 to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.mv ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !30 ; 2 uses
  %.not24.i273 = icmp eq i32 %i.mx, -1
  br i1 %.not24.i273, label %_ZL15updateHashChainP4Hashmjt.exit274, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.my = trunc i32 %i.mx to i16
  %i.mz = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mz, i64 %i.jl
  store i16 %i.my, ptr %i.na, align 2, !tbaa !70
  br label %_ZL15updateHashChainP4Hashmjt.exit274

_ZL15updateHashChainP4Hashmjt.exit274:            ; preds = %bb.bn, %bb.bo
  store i32 %i.mt, ptr %i.mw, align 4, !tbaa !30
  %i.nb = add nuw i32 %.0208323, 1                ; 2 uses
  %exitcond350.not = icmp eq i32 %i.nb, %.3
  br i1 %exitcond350.not, label %.loopexit, label %bb.bd, !llvm.loop !860

.loopexit.sink.split:                             ; preds = %_ZL18uivector_push_backP8uivectorj.exit248, %_ZL18uivector_push_backP8uivectorj.exit252
  %.sink391 = phi ptr [ %i.hn, %_ZL18uivector_push_backP8uivectorj.exit252 ], [ %i.gy, %_ZL18uivector_push_backP8uivectorj.exit248 ]
  %.sink.in = phi i8 [ %i.hd, %_ZL18uivector_push_backP8uivectorj.exit252 ], [ %i.go, %_ZL18uivector_push_backP8uivectorj.exit248 ]
  %.sink = zext i8 %.sink.in to i32
  %i.nc = getelementptr i8, ptr %.sink391, i64 -4
  store i32 %.sink, ptr %i.nc, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit274, %.loopexit.sink.split, %bb.ac
  %.4213 = phi i64 [ %.1210, %.loopexit.sink.split ], [ %.0209328, %bb.ac ], [ %i.jk, %_ZL15updateHashChainP4Hashmjt.exit274 ]
  %.5 = phi i32 [ %.1202, %.loopexit.sink.split ], [ %.1202, %bb.ac ], [ %.3204, %_ZL15updateHashChainP4Hashmjt.exit274 ]
  %.2 = phi i32 [ %.1193, %.loopexit.sink.split ], [ 1, %bb.ac ], [ %.1193, %_ZL15updateHashChainP4Hashmjt.exit274 ]
  %.1191 = phi i32 [ %.0190331, %.loopexit.sink.split ], [ %.2196, %bb.ac ], [ %.0190331, %_ZL15updateHashChainP4Hashmjt.exit274 ]
  %.1189 = phi i32 [ %.0188332, %.loopexit.sink.split ], [ %.2199, %bb.ac ], [ %.0188332, %_ZL15updateHashChainP4Hashmjt.exit274 ]
  %i.nd = add i64 %.4213, 1                       ; 2 uses
  %i.ne = icmp ult i64 %i.nd, %4
  br i1 %i.ne, label %bb.d, label %.thread284, !llvm.loop !861

.thread284:                                       ; preds = %.loopexit, %bb.ae, %.thread, %bb.ah, %bb.am, %bb.ar, %bb.c, %bb.b, %bb.a
  %.0214 = phi i32 [ 90, %bb.b ], [ 60, %bb.a ], [ 0, %bb.c ], [ 83, %bb.am ], [ 0, %.loopexit ], [ 83, %bb.ah ], [ 81, %bb.ae ], [ 86, %.thread ], [ 83, %bb.ar ]
  ret i32 %.0214
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL13writeLZ77dataP16LodePNGBitWriterPK8uivectorPK11HuffmanTreeS6_(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90
  %.not44 = icmp eq i64 %i.b, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.045 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.n ] ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.045
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !71
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30   ; 3 uses
  %i.p = zext i32 %i.o to i64
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %_ZL17writeBitsReversedP16LodePNGBitWriterjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i8, ptr %i.d, align 8, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.q = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.bb, %bb.g ]
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %bb.g ] ; 2 uses
  %i.r = and i8 %i.q, 7                           ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !74     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !57
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i64 %i.y, 1
  %i.ab = add i64 %i.aa, %i.w                     ; 2 uses
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.ad = tail call noalias noundef ptr @realloc(ptr noundef %i.ac, i64 noundef %i.ab) #33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZL17writeBitsReversedP16LodePNGBitWriterjm.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !58
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !56
  %.pre21.i = load ptr, ptr %0, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i, %bb.d
  %i.ae = phi ptr [ %.pre21.i, %.thread.i.i ], [ %i.t, %bb.d ] ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !57
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  store i8 0, ptr %i.aj, align 1, !tbaa !29
  %.pre22.i = load i8, ptr %i.d, align 8, !tbaa !75
end_hunk_1
